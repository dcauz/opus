#include "parser.h"
#include "lex.h"


bool Parser::parseVariableDef( Token & token, ET et, VarDef ** varDef )
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
		  TODO
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
		  TODO
	    break;
	  }
      case nameSeen:
	  {
	    if( token.id() == ID::ASSIGN )
        {
		  state = assignSeen;
		}
		else if( token.id() == ID::COLON )
		{
		   sp<Type> type;
		   *varDef = new VarDef( token.line(), token.column(), type, name.c_str(), 0 );
		   return true;
		}
		else
		  TODO
	    break;
	  }
	  case assignSeen:
	  {
	    Expr * expr;

		if(!parseExpr( &expr, et, token, 0, 0 ))
          TODO
		else
		{
		   sp<Type> type;
		   *varDef = new VarDef( token.line(), token.column(), type, name.c_str(), 0, expr );
		   return true;
		}
        TODO
	    break;
	  }
	  }

	  lex( token, this );
	}

	return false;
}
