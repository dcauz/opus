#include "parser.h"
#include "lex.h"


bool Parser::parseVariableDef( Token & token, ETC et, VarDef ** varDef )
{
PENTER
	enum State
	{
	  start,
	  typeSeen,
	  nameSeen,
	  assignSeen,
	} state = start;

    std::string name;
	bool finalSeen = false;
	bool refSeen = false;

	while(true)
	{
	  switch(state)
	  {
	  case start:
	  {
	    if(token.isType())
		{
		  state = typeSeen;
		}
		else if( token.id() == ID::FINAL )
		{
		  finalSeen = true;
		}
		else
		{
		  dumpToken( __FILE__, __LINE__, token );
		  TODO
		}
	    break;
	  }
	  case typeSeen:
	  {
        if( token.isId())
		{
		  name = token.idLexium();
		  state = nameSeen;
		}
		else if( token.id() == ID::BAND )
		{
		  refSeen = true;
		}
		else
		{
		  dumpToken( __FILE__, __LINE__, token );
		  TODO
		}
	    break;
	  }
      case nameSeen:
	  {
	    if( token.id() == ID::ASSIGN )
        {
		  state = assignSeen;
		}
		else if( token.id() == ID::COLON || token.id() == ID::RPAREN )
		{
		   Type * type;
		   *varDef = new VarDef( token.line(), token.column(), type, name.c_str(), 0 );
		   return true;
		}
		else
		{
		  dumpToken( __FILE__, __LINE__, token );
		  TODO
		}
	    break;
	  }
	  case assignSeen:
	  {
	    Expr * expr;

		if(!parseExpr( &expr, et, STR::NOT_IN_SELECT, token, 0, 0 ))
          TODO
		else
		{
		   Type * type;
		   *varDef = new VarDef( token.line(), token.column(), type, name.c_str(), 0, expr );
		   return true;
		}
        dumpToken( __FILE__, __LINE__, token );
        TODO
	    break;
	  }
	  }

	  lex( token, this );
	}

	return false;
}
