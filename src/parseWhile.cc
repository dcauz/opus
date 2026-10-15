#include "parser.h"

bool Parser::parseWhile( While ** wStat )
{
PENTER

  Token token;

  lex( token, this );
  if( token.id() == ID::LPAREN )
  {
    VarDef * vDef = nullptr;
    Expr  * expr = nullptr;

    lex( token, this );
    if( parseVarDefOrExpr( token, ET::RPAREN, &vDef, &expr ))
    {
	  Statement * stmt;
	  if(parseStatement( &stmt ))
      {
        if(expr )
          *wStat = new While( token.line(), token.column(), expr, stmt );
		else
          *wStat = new While( token.line(), token.column(), vDef, stmt );
      }
      else
        TODO
    }
    else
      TODO
  }
  else
    TODO

  return true;
}

