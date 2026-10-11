#include "parser.h"

bool Parser::parseVarDefOrExpr( Token & token, ET et, VarDef ** varDef, Expr ** expr )
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
	  if(token.isType())
      {
        TODO
	  }
	  else if(token.isId())
      {
	    first = std::move(token);
        state = idSeen;
      }
	  else
      {
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
        TODO
      }
	  else
      {
		lookahead = std::move(token);

	    if(!parseExpr( expr, et, first, 0, 0 ))
          TODO
		return true;
      }
      break;
	}
	}
  }

  return true;
}
