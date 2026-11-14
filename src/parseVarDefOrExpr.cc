#include "parser.h"

bool Parser::parseVarDefOrExpr( Token & token, ETC et, VarDef ** varDef, Expr ** expr )
{
PENTER

  enum State
  {
    start,
	idSeen,
  } state = start;

  Token first;
  while(true)
  {
    switch(state)
    {
    case start:
    {
	  if(token.isType() || token.id() == ID::FINAL )
      {
	    VarDef * varDef;
	    if(!parseVariableDef( token, et, &varDef ))
		{
		  dumpToken( __FILE__, __LINE__, token );
          TODO
		}
		return true;
	  }
	  else if(token.isId())
      {
	    first = std::move(token);
        state = idSeen;
      }
	  else
      {
		dumpToken( __FILE__, __LINE__, token );
        TODO
      }
      break;
    }
	case idSeen:
	{
	  // This could be a variable definition if the type
	  // has not been added to the symbol table
	  if(token.isId())
      {
        dumpToken( __FILE__, __LINE__, token );
        TODO
      }
	  else
      {
		lookahead = std::move(token);

	    if(!parseExpr( expr, et, STR::NONE, first, 0, 0 ))
		{
          dumpToken( __FILE__, __LINE__, token );
          TODO
		}
		token = std::move(first);
		return true;
      }
      break;
	}
	}
  }

  return true;
}
