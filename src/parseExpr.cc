
#include "parser.h"

/***
------------------------------------------------------------------------------
Operator       Arity    Assoc       Prec  Name
------------------------------------------------------------------------------
::             binary   left        0     namespace qualifier

alignof(.)     uniary   non_assoc   1     Align of a type.
( . )          uniary   non_assoc   1     parenthesis
. [ ... ]      vararg   non_assoc   1     array index
. ( ... )      vararg   non_assoc   1     ctor 
. ( ... )      vararg   non_assoc   1     function call
. !            uniary   non_assoc   1     factorial
. ++           uniary   non_assoc   1     post increment
. --           uniary   non_assoc   1     post decrement
.              binary   left        1     member access
->             binary   left        1     pointer member access

**             binary   right       2     exponent
[**]           binary   right       2     matrix exponent

!              uniary   non_assoc   3     logical not
~              uniary   non_assoc   3     binary not
+              uniary   non_assoc   3     no-op
-              uniary   non_assoc   3     negate
*              uniary   non_assoc   3     pointer dereference
++             uniary   non_assoc   3     pre increment
--             uniary   non_assoc   3     pre decrement
| . |          uniary   non_assoc   3     absolute value
new            uniary   non_assoc   3     create operator
delete         compl    non_assoc   3     delete operator
co_await       uniary   non_assoc   3     co-routine await
sizeof         uniary   non_assoc   3     size of operator
is_void        uniary   non_assoc   3     value in variable check

.*             binary   left        4     member access
->*            binary   left        4     pointer member access

*              binary   left        5     multiplication
/              binary   left        5     division
%              binary   left        5     modulus
[*]            binary   left        5     matrix cross product
[.]            binary   left        5     matrix dot product
[/]            binary   left        5     matrix division product

+              binary   left        6     plus
-              binary   left        6     subtract

<<             binary   left        7     shift left
>>             binary   left        7     shift right

<=>            binary   left        8     three way comparison 

<              binary   non_assoc   9     less than
<=             binary   non_assoc   9     less than or equal to
>              binary   non_assoc   9     greater than
>=             binary   non_assoc   9     greater than or equal to

==             binary   left        10    equal to
!=             binary   right       10    not equal to

&              binary   left        11    binary and

^              binary   left        12    binary xor

|              binary   left        13    binary or

in             binary   left        14    element of a collection

&&             binary   left        15    and

||             binary   left        16    or

? . : .        triary   right       17    conditional
=              binary   right       17    assign
%=             binary   right       17    modulus assign
*=             binary   right       17    multiply assign
&=             binary   right       17    and assign
+=             binary   right       17    plus assign
[*]=           binary   right       17    matrix cross product assign
/=             binary   right       17    divide assign
[.]=           binary   right       17    matrix dot product assign
**=            binary   right       17    exponent assign
[/]=           binary   right       17    matrix divide assign
[**]=          binary   right       17    matrix exponent assign
-=             binary   right       17    subtract assign
~=             binary   right       17    binary not assign
^=             binary   right       17    xor assign
<<=            binary   right       17    shift left assign
>>=            binary   right       17    shift right assign
|=             binary   right       17    or assign
co_yield       uniary   non_assoc   17    yield expression
throw          uniary   non_assoc   17    throw exception
apply          uniary   non_assoc   17    apply function to members of collection
async          uniary   non_assoc   17    execute function asynchronously
closure        uniary   non_assoc   17    compute closure of graph
eval           uniary   non_assoc   17    evaluate expression
filter         binary   non_assoc   17    filter elements from collection
reduce         binary   non_assoc   17    reduce collection using function
order          binary   non_assoc   17    order a collection

delete         compl    non_assoc   18    SQL
insert         compl    non_assoc   18    SQL
select         compl    left        18    SQL
update         compl    non_assoc   18    SQL

..             binary   non_assoc   19    index range operator
:=             binary   non_assoc   19    parameter assignment
------------------------------------------------------------------------------
*/

bool Parser::parseExpr( Expr ** expr, Token & token )
{
PENTER
	enum State
	{
		start,
		uniarySeen,
		valueSeen,
		binSeen
	} state = start;

	while(true)
	{
		switch(token.id() )
		{
		default:
			TODO
			break;

		///////////////////////////////////////////////
		// punctuators
		///////////////////////////////////////////////
		case ID::COMMA:
			TODO
			break;
		case ID::SCOLON:
			// *expr = new Literal();
			return true;
		case ID::LBRACE:// {
			TODO
			break;
		case ID::RBRACE:// }
			TODO
			break;

		///////////////////////////////////////////////
		// operators
		///////////////////////////////////////////////

		case ID::QUAL:			// ::
			TODO
			break;
		case ID::ALIGNOF:		// alignof
			TODO
			break;
		case ID::LPAREN:		// (
			TODO
			break;
		case ID::RPAREN:		// )
			TODO
			break;
		case ID::LBRACK:		// [
			TODO
			break;
		case ID::RBRACK:		// ]
			TODO
			break;
		case ID::NOT:			// !
			TODO
			break;
		case ID::INC:			// ++
			TODO
			break;
		case ID::DEC:			// --
			TODO
			break;
		case ID::DOT:			// .
			TODO
			break;
		case ID::PTR:			// ->
			TODO
			break;
		case ID::EXP:			// **
			TODO
			break;
		case ID::M_EXP:			// [**]
			TODO
			break;
		case ID::BNOT:			// ~
			TODO
			break;
		case ID::ADD:			// +
			TODO
			break;
		case ID::SUB:			// -
			TODO
			break;
		case ID::MUL:			// *
			TODO
			break;
		case ID::BOR:			// |
			TODO
			break;
		case ID::NEW:			// new
			TODO
			break;
		case ID::DELETE:		// delete	
			TODO
			break;
		case ID::CO_AWAIT:		// co_await
			TODO
			break;
		case ID::SIZEOF:		// sizeof
			TODO
			break;
		case ID::IS_VOID:		// is_void
			TODO
			break;
		case ID::DOT_ASK:		// .*
			TODO
			break;
		case ID::MPTR:			// ->*
			TODO
			break;
		case ID::DIV:			// /
			TODO
			break;
		case ID::MOD:			// %
			TODO
			break;
		case ID::CRS_PROD:		// [*]
			TODO
			break;
		case ID::DOT_PROD:		// [.]
			TODO
			break;
		case ID::M_DIV:			// [/]
			TODO
			break;
		case ID::SLFT:			// <<
			TODO
			break;
		case ID::SRGHT:			// >>
			TODO
			break;
		case ID::SS:			// <=>
			TODO
			break;
		case ID::LT:			// <
			TODO
			break;
		case ID::LE:			// <=
			TODO
			break;
		case ID::GT:			// >
			TODO
			break;
		case ID::GE:			// >=
			TODO
			break;
		case ID::EQ:			// ==
			TODO
			break;
		case ID::NE:			// !=
			TODO
			break;
		case ID::BAND:			// &
			TODO
			break;
		case ID::XOR:			// ^
			TODO
			break;
		case ID::IN:			// in
			TODO
			break;
		case ID::AND:			// &&
			TODO
			break;
		case ID::OR:			// ||
			TODO
			break;
		case ID::QUEST:			// ?
			TODO
			break;
		case ID::COLON:			// :
			TODO
			break;
		case ID::ASSIGN:		// =
			TODO
			break;
		case ID::MOD_ASS:		// %=
			TODO
			break;
		case ID::MUL_ASS:		// *=
			TODO
			break;
		case ID::AND_ASS:		// &=		
			TODO
			break;
		case ID::ADD_ASS:		// +=		
			TODO
			break;
		case ID::CP_ASS:		// [*]=	
			TODO
			break;
		case ID::DIV_ASS:		// /=
			TODO
			break;
		case ID::DP_ASS:		// [.]=
			TODO
			break;
		case ID::EXP_ASS:		// **=
			TODO
			break;
		case ID::MD_ASS:		// [/]=
			TODO
			break;
		case ID::ME_ASS:		// [**]=
			TODO
			break;
		case ID::SUB_ASS:		// -=
			TODO
			break;
		case ID::TIL_ASS:		// ~=
			TODO
			break;
		case ID::XOR_ASS:		// ^=
			TODO
			break;
		case ID::SLFT_ASS:		// <<=
			TODO
			break;
		case ID::SRGHT_ASS:		// >>=
			TODO
			break;
		case ID::OR_ASS:		// |=
			TODO
			break;
		case ID::CO_YIELD:		// co_yield
			TODO
			break;
		case ID::THROW:			// throw
			TODO
			break;
		case ID::APPLY:			// apply
			TODO
			break;
		case ID::ASYNC:			// async
			TODO
			break;
		case ID::CLOSURE:		// closure
			TODO
			break;
		case ID::EVAL:			// eval
			TODO
			break;
		case ID::FILTER:		// filter
			TODO
			break;
		case ID::REDUCE:		// reduce
			TODO
			break;
		case ID::ORDER:			// order
			TODO
			break;
		case ID::INSERT:		// insert		
			TODO
			break;
		case ID::SELECT:		// select		
			TODO
			break;
		case ID::UPDATE:		// update		
			TODO
			break;
		case ID::DOT_DOT:		// ..
			TODO
			break;
		case ID::PARAM_ASS:		// :=
			TODO
			break;

		/////////////////////////////////////////
		// Identifiers
		/////////////////////////////////////////
		case ID::FUN_NAME:
			TODO
			break;
		case ID::FUNCTION_NAME:
			TODO
			break;
		case ID::NAMESPACE_NAME:
			TODO
			break;
		case ID::VARIABLE_NAME:
			TODO
			break;
		case ID::ID:
			TODO
			break;
		case ID::SID:
			TODO
			break;

		/////////////////////////////////////////
		// literals
		/////////////////////////////////////////
		case ID::_E:			// .e
			TODO
			break;
		case ID::FALSE:
			TODO
			break;
		case ID::_GAMMA:		// .gamma
			TODO
			break;
		case ID::_I:			// .i
			TODO
			break;
		case ID::_INF:			// .inf
			TODO
			break;
		case ID::_NAN:			// .nan
			TODO
			break;
		case ID::_PHI:			// .phi
			TODO
			break;
		case ID::_PI:			// .pi
			TODO
			break;
		case ID::TRUE:		
			TODO
			break;
		case ID::THIS:
			TODO
			break;
		case ID::CHAR_LIT:		// 'x'
			TODO
			break;
		case ID::DATETIME_LIT:	// d"YYYY-MM-DD:HH:MM:SS[:sssssssss]"
			TODO
			break;
		case ID::DATE_LIT:		// d"YYYY-MM-DD"
			TODO
			break;
		case ID::DAYS_LIT:       // 111d
			TODO
			break;
		case ID::FLOAT32_LIT:	// 1.1e10
			TODO
			break;
		case ID::FLOAT64_LIT:	// 1.1e100
			TODO
			break;
		case ID::FLOAT80_LIT:	// 1.1e100
			TODO
			break;
		case ID::HOURS_LIT:     // 111h
			TODO
			break;
		case ID::INT8_LIT:      // 1111
			TODO
			break;
		case ID::INT16_LIT:     // 1111
			TODO
			break;
		case ID::INT32_LIT:     // 1111
			TODO
			break;
		case ID::INT64_LIT:     // 1111
			TODO
			break;
		case ID::INTEGER_LIT:   // 765 432 109 876 543 210
			TODO
			break;
		case ID::LSTRING_LIT:   // l"sss"
			TODO
			break;
		case ID::LTSTRING_LIT:  // t"aaa"
			TODO
			break;
		case ID::MINS_LIT:      // 111m
			TODO
			break;
		case ID::NAT_LIT:       // 1212u
			TODO
			break;
		case ID::Q_LIT:         // 111q
			TODO
			break;
		case ID::REAL_LIT:      // 123r
			TODO
			break;
		case ID::REGEXP_LIT:    // re"s*"
			TODO
			break;
		case ID::SECS_LIT:      // 111.123s
			TODO
			break;
		case ID::STRING_LIT:    // "ssss"
			TODO
			break;
		case ID::TIME_LIT:      // t"HH:MM:SS:sssssssss"
			TODO
			break;
		case ID::UINT8_LIT:     // 111u
			TODO
			break;
		case ID::UINT16_LIT:    // 111u
			TODO
			break;
		case ID::UINT32_LIT:    // 111u
			TODO
			break;
		case ID::UINT64_LIT:    // 111u
			TODO
			break;
    	case ID::YEARS_LIT:     // 111y
			TODO
			break;
		}
		lex(token, this );	
	}

	return false;
}
