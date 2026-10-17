
#include "parser.h"
#include "float.h"
#include "complex.h"
#include "string.h"
#include "char.h"
#include "bool.h"
#include "regex.h"

#include <unordered_set>
#include <vector>
#include <cassert>
#include <map>


enum class Assoc
{
  LEFT,
  RIGHT,
  NON
};

struct Operator
{
  Assoc  assoc;
  int   prec;
};

static std::map<ID, Operator> ops =
{
  { ID::NIL,      {Assoc::NON,  100 }},

  { ID::QUAL,     {Assoc::LEFT, 0 }}, // ::    Namespace qualifier

  { ID::ALIGNOF,     {Assoc::NON,   1 }}, // alignof   Align of a type.
  { ID::LPAREN,      {Assoc::NON,   1 }}, // (     Parenthesis / ctor / function call
  { ID::RPAREN,      {Assoc::NON,   1 }}, // )     Parenthesis
  { ID::LBRACK,      {Assoc::NON,   1 }}, // [     Array index
  { ID::RBRACK,      {Assoc::NON,   1 }}, // ]     Array index
  { ID::ABS,         {Assoc::NON,   1 }}, // |..|                                          //
  { ID::FACTORIAL,   {Assoc::NON,   1 }}, // . !     Factorial (post)
  { ID::POST_INC,    {Assoc::NON,   1 }}, // . ++    Post increment
  { ID::POST_DEC,    {Assoc::NON,   1 }}, // . --    Post decrement
  { ID::DOT,         {Assoc::LEFT,  1 }}, // .     Member access
  { ID::PTR,         {Assoc::LEFT,  1 }}, // ->    Pointer member access

  { ID::EXP,         {Assoc::RIGHT, 2 }}, // **    Exponent
  { ID::CRS_PROD,    {Assoc::RIGHT, 2 }}, // [**]    Matrix exponent

  { ID::NOT,         {Assoc::NON,   3 }}, // !     Logical not
  { ID::BNOT,        {Assoc::NON,   3 }}, // ~ .     Binary not
  { ID::UNIARY_PLUS, {Assoc::NON,   3 }}, // + .     No-op
  { ID::UNIARY_MINUS,{Assoc::NON,   3 }}, // - .     Negate
  { ID::DEREF,       {Assoc::NON,   3 }}, // * .     Pointer dereference
  { ID::INC,         {Assoc::NON,   3 }}, // ++ .    Pre increment
  { ID::DEC,         {Assoc::NON,   3 }}, // -- .    Pre decrement
  { ID::ABS,         {Assoc::NON,   3 }}, // |.|     Absolute value
  { ID::NEW,         {Assoc::NON,   3 }}, // new     Create operator
  { ID::DELETE,      {Assoc::NON,   3 }}, // delete  Delete operator
  { ID::CO_AWAIT,    {Assoc::NON,   3 }}, // co_await  Co-routine await
  { ID::SIZEOF,      {Assoc::NON,   3 }}, // sizeof  Size of operator
  { ID::IS_VOID,     {Assoc::NON,   3 }}, // is_void   Value in variable check
 
  { ID::DOT_ASK,     {Assoc::LEFT,  4 }}, // .*    Member access
  { ID::MPTR,        {Assoc::LEFT,  4 }}, // ->*     Pointer member access

  { ID::MUL,         {Assoc::LEFT,  5 }}, // *     Multiplication
  { ID::DIV,         {Assoc::LEFT,  5 }}, // /     Division
  { ID::MOD,         {Assoc::LEFT,  5 }}, // %     Modulus
  { ID::CRS_PROD,    {Assoc::LEFT,  5 }}, // [*]     Matrix cross product
  { ID::DOT_PROD,    {Assoc::LEFT,  5 }}, // [.]     Matrix dot product
  { ID::M_DIV,       {Assoc::LEFT,  5 }}, // [/]     Matrix division product

  { ID::ADD,         {Assoc::LEFT,  6 }}, // +     Plus
  { ID::SUB,         {Assoc::LEFT,  6 }}, // -     Subtract

  { ID::SLFT,        {Assoc::LEFT,  7 }}, // <<    Shift left
  { ID::SRGHT,       {Assoc::LEFT,  7 }}, // >>    Shift right

  { ID::SS,          {Assoc::LEFT,  8 }}, // <=>     Three way comparison 

  { ID::LT,          {Assoc::NON,   9 }}, // <     Less than
  { ID::LE,          {Assoc::NON,   9 }}, // <=    Less than or equal to
  { ID::GT,          {Assoc::NON,   9 }}, // >     Greater than
  { ID::GE,          {Assoc::NON,   9 }}, // >=    Greater than or equal to

  { ID::EQ,          {Assoc::LEFT,  10}}, // ==    Equal to
  { ID::NE,          {Assoc::RIGHT, 10}}, // !=    Not equal to

  { ID::BAND,        {Assoc::LEFT,  11}}, // &     Binary and

  { ID::BXOR,        {Assoc::LEFT,  12}}, // ^     Binary xor

  { ID::BOR,         {Assoc::LEFT,  13}}, // |     Binary or

  { ID::IN,          {Assoc::LEFT,  14}}, // <-    Element of a collection 

  { ID::AND,         {Assoc::LEFT,  15}}, // &&    And

  { ID::XOR,         {Assoc::LEFT,  16}}, // ^^    Xor

  { ID::OR,          {Assoc::LEFT,  17}}, // ||    Or

  { ID::QUEST,       {Assoc::RIGHT, 18}}, // ?     Conditional
  { ID::COLON,       {Assoc::RIGHT, 18}}, // :     Conditional

  { ID::ASSIGN,      {Assoc::RIGHT, 19}}, // =     Assign
  { ID::MOD_ASS,     {Assoc::RIGHT, 19}}, // %=    Modulus assign
  { ID::MUL_ASS,     {Assoc::RIGHT, 19}}, // *=    Multiply assign
  { ID::AND_ASS,     {Assoc::RIGHT, 19}}, // &&=     And assign
  { ID::BAND_ASS,    {Assoc::RIGHT, 19}}, // &=    And assign
  { ID::OR_ASS,      {Assoc::RIGHT, 19}}, // ||=     And assign
  { ID::BOR_ASS,     {Assoc::RIGHT, 19}}, // |=    And assign
  { ID::ADD_ASS,     {Assoc::RIGHT, 19}}, // +=    Plus assign
  { ID::DIV_ASS,     {Assoc::RIGHT, 19}}, // /=     Divide assign
  { ID::EXP_ASS,     {Assoc::RIGHT, 19}}, // **=    Exponent assign
  { ID::SUB_ASS,     {Assoc::RIGHT, 19}}, // -=     Subtract assign
  { ID::BNOT_ASS,    {Assoc::RIGHT, 19}}, // ~=     Binary not assign
  { ID::XOR_ASS,     {Assoc::RIGHT, 19}}, // ^^=     Xor assign
  { ID::BXOR_ASS,    {Assoc::RIGHT, 19}}, // ^=     BXor assign
  { ID::SLFT_ASS,    {Assoc::RIGHT, 19}}, // <<=    Shift left assign
  { ID::SRGHT_ASS,   {Assoc::RIGHT, 19}}, // >>=    Shift right assign
  { ID::OR_ASS,      {Assoc::RIGHT, 19}}, // ||=    Or assign
  { ID::BOR_ASS,     {Assoc::RIGHT, 19}}, // |=     Binary or assign
  { ID::CO_YIELD,    {Assoc::NON,   19}}, // co_yield Yield expression
  { ID::THROW,       {Assoc::NON,   19}}, // throw  Throw exception
  { ID::ASYNC,       {Assoc::NON,   19}}, // async  Execute function asynchronously

  { ID::S_DELETE,    {Assoc::NON,   20}}, // delete   SQL delete
  { ID::INSERT,      {Assoc::NON,   20}}, // insert   SQL insert
  { ID::SELECT,      {Assoc::LEFT,  20}}, // select   SQL select
  { ID::UPDATE,      {Assoc::NON,   20}}, // update   SQL update

  { ID::DOT_DOT,     {Assoc::NON,   21}}, // ..     Index range operator
  { ID::PARAM_ASS,   {Assoc::NON,   21}}, // :=     Parameter assignment
};

void printOpStack( const std::stack<Token> & ops )
{
    printf( "OPSTACK\n" );
    std::stack<Token> tmp = ops;
    while( tmp.size() > 0 )
    {
        Token t = tmp.top();
        tmp.pop();
        dumpToken( __FILE__, __LINE__, t );
    }
}
void printExprStack( const std::stack<Expr *> & exs )
{
    printf( "EXPR_STACK\n" );
    fflush(stdout);
    std::stack<Expr *> tmp = exs;
    while( tmp.size() > 0 )
    {
        Expr * e = tmp.top();
        printf( "%p\n", e );fflush(stdout);
        tmp.pop();
        printf( "%s\n", e->id() );fflush(stdout);
    }
}

// Returns true if the op and expressions on the stack should be evaluated.
//
// This is the case if op1 == op2 and op1 is not right associative or op1 precedence is greater
// than op2 precedence.
//
static bool shouldEval( ID op1, ID op2 )
{
  auto it1 = ops.find(op1);

  if( op1 == op2 )
  {
    bool rc = it1->second.assoc != Assoc::RIGHT;
    return rc;
  }
  else
  {
    auto it2 = ops.find(op2);
    bool rc = it1->second.prec < it2->second.prec;
    return rc;
  }
}

static bool isLiteral( ID id )
{
  static std::unordered_set<ID>  literalIds
  {
    ID::_E,
    ID::_GAMMA,
    ID::_I,
    ID::_INF,
    ID::_NAN,
    ID::_PHI,
    ID::_PI,

    ID::FALSE,
    ID::TRUE,

    ID::THIS,

    ID::CHAR_LIT,

    ID::DATETIME_LIT,
    ID::TIME_LIT,
    ID::DATE_LIT,

    ID::YEARS_LIT,
    ID::MONTHS_LIT,
    ID::DAYS_LIT,

    ID::HOURS_LIT,
    ID::MINS_LIT,
    ID::SECS_LIT,

    ID::F32_LIT,
    ID::F64_LIT,
    ID::F80_LIT,

    ID::I32_LIT,
    ID::I64_LIT,
    ID::I128_LIT,

    ID::U32_LIT,
    ID::U64_LIT,
    ID::U128_LIT,

    ID::N_LIT,

    ID::LSTRING_LIT,
    ID::LSSTRING_LIT,
    ID::LTSTRING_LIT,
    ID::LTSSTRING_LIT,
    ID::STRING_LIT,
    ID::SSTRING_LIT,

    ID::REGEXP_LIT,
    ID::SREGEXP_LIT,

    ID::SEQ_LIT,
    ID::MSET_LIT,
    ID::MMAP_LIT,
    ID::TUPLE_LIT,
  };

  return literalIds.find(id) != literalIds.end();
}

static Expr * createLiteral( const Token & t, std::vector<Expr *> & values, ID type )
{
  switch( type )
  {
  default:
    TODO
    break;

  case ID::SEQ_LIT:
    return new Literal<Vector>( t.line(), t.column(), Vector(std::move(values)) );

  case ID::MSET_LIT:
    return new Literal<MSet>( t.line(), t.column(), MSet(std::move(values)) );
  
  case ID::MMAP_LIT:
    TODO
    break;
  case ID::TUPLE_LIT:
    TODO
    break;
  }

  return nullptr;
}

static Expr * createLiteral( const Token & t )
{
  switch( t.id() )
  {
  default:
    TODO
    break;

  case ID::_E:
    return new Literal<E>(t.line(),t.column(), E() );
  case ID::_GAMMA:
    return new Literal<Gamma>(t.line(),t.column(), Gamma() );
  case ID::_I:
    return new Literal<Complex>(t.line(),t.column(), Complex( nullptr, new Int32(1)));
  case ID::_INF:
    return new Literal<Inf>(t.line(),t.column(), Inf() );
  case ID::_NAN:
    return new Literal<Nan>(t.line(),t.column(), Nan() );
  case ID::_PHI:
    return new Literal<Phi>(t.line(),t.column(), Phi() );
  case ID::_PI:
    return new Literal<Pi>(t.line(),t.column(), Pi() );

  case ID::FALSE:
    return new Literal<Bool>(t.line(),t.column(), Bool(false) );
  case ID::TRUE:
    return new Literal<Bool>(t.line(),t.column(), Bool(true) );
  case ID::THIS:
    TODO
    break;

  case ID::DATETIME_LIT:
    return new Literal<Datetime>(t.line(),t.column(), t.u128());
  case ID::DATE_LIT:
    return new Literal<Date>(t.line(),t.column(), t.u32());
  case ID::TIME_LIT:
    return new Literal<Time>(t.line(),t.column(), t.u64());

  case ID::YEARS_LIT:
    return new Literal<Year>(t.line(),t.column(), t.i32());
  case ID::MONTHS_LIT:
    return new Literal<Month>(t.line(),t.column(), t.i32());
  case ID::DAYS_LIT:
    return new Literal<Day>(t.line(),t.column(), t.i32());

  case ID::HOURS_LIT:
    return new Literal<Hour>(t.line(),t.column(), t.i32());
  case ID::MINS_LIT:
    return new Literal<Minute>(t.line(),t.column(), t.i32());
  case ID::SECS_LIT:
    return new Literal<Second>(t.line(),t.column(), t.f64());

  case ID::F32_LIT:
    return new Literal<Float32>(t.line(),t.column(), Float32(t.f32()));
  case ID::F64_LIT:
    return new Literal<Float64>(t.line(),t.column(), Float64(t.f64()));
  case ID::F80_LIT:
    return new Literal<Float80>(t.line(),t.column(), Float80(t.f80()));
  case ID::I32_LIT:
    return new Literal<Int32>(t.line(),t.column(), Int32(t.i32()));
  case ID::I64_LIT:
    return new Literal<Int64>(t.line(),t.column(), Int64(t.i64()));
  case ID::I128_LIT:
    return new Literal<Int128>(t.line(),t.column(), Int128(t.i128()));

  case ID::N_LIT:
    return new Literal<Integer *>(t.line(),t.column(), t.integer());

  case ID::STRING_LIT:
  case ID::SSTRING_LIT:
    return new Literal<String>(t.line(),t.column(), String(t.str()));
  case ID::LSTRING_LIT:
  case ID::LSSTRING_LIT:
    return new Literal<LString>(t.line(),t.column(), LString(t.str()));
  case ID::LTSTRING_LIT:
  case ID::LTSSTRING_LIT:
    return new Literal<LTString>(t.line(),t.column(), LTString(t.str()));

  case ID::CHAR_LIT:
    return new Literal<Char>(t.line(),t.column(), Char(t.str()[0]));

  case ID::SREGEXP_LIT:
  case ID::REGEXP_LIT:
    return new Literal<RegExp>(t.line(),t.column(), RegExp(t.str()));

  case ID::U32_LIT:
    return new Literal<Uint32>(t.line(),t.column(), Uint32(t.u32()));
  case ID::U64_LIT:
    return new Literal<Uint64>(t.line(),t.column(), Uint64(t.u64()));
  case ID::U128_LIT:
    return new Literal<Uint128>(t.line(),t.column(), Uint128(t.u128()));
  }

  return nullptr;
}

static Expr * createUniOpExpr( const Token & token, Expr * operand )
{
  switch(token.id())
  {
  default:         TODO return nullptr;
  case ID::DEC:         return new Dec(token.line(), token.column(), operand );
  case ID::INC:         return new Inc(token.line(), token.column(), operand );
  case ID::FACTORIAL:   return new Factorial(token.line(), token.column(), operand );
  case ID::POST_DEC:    return new PostDec(token.line(), token.column(), operand );
  case ID::POST_INC:    return new PostInc(token.line(), token.column(), operand );
  case ID::NOT:         return new Not(token.line(), token.column(), operand );
  case ID::BNOT:        return new BNot(token.line(), token.column(), operand );
  case ID::DEREF:       return new Deref(token.line(), token.column(), operand );
  case ID::UNIARY_MINUS:return new Minus(token.line(), token.column(), operand );
  case ID::UNIARY_PLUS: return new Plus(token.line(), token.column(), operand );
  case ID::ABS:         return new Abs(token.line(), token.column(), operand );
  case ID::IS_VOID:        return new IsVoid(token.line(), token.column(), operand );
  case ID::DELETE:        return new Delete(token.line(), token.column(), operand );
  case ID::SIZEOF:        return new Sizeof(token.line(), token.column(), operand );
  }
}

static Expr * createBinOpExpr( const Token & token, Expr * left, Expr * right )
{
  switch(token.id())
  {
  default:
    TODO
    return nullptr;

  case ID::ADD:       return new Add( token.line(), token.column(), left, right );
  case ID::ADD_ASS:   return new AddAssign( token.line(), token.column(), left, right );
  case ID::AND:       return new Land( token.line(), token.column(), left, right );
  case ID::AND_ASS:   return new AndAssign( token.line(), token.column(), left, right );
  case ID::ASSIGN:    return new Assign( token.line(), token.column(), left, right );

  case ID::BAND:      return new And( token.line(), token.column(), left, right );
  case ID::BAND_ASS:  return new BAndAssign( token.line(), token.column(), left, right );
  case ID::BOR:       return new Or( token.line(), token.column(), left, right );
  case ID::BOR_ASS:   return new BOrAssign( token.line(), token.column(), left, right );
  case ID::BXOR:      return new BXor( token.line(), token.column(), left, right );
  case ID::BXOR_ASS:  return new BXorAssign( token.line(), token.column(), left, right );

  case ID::CRS_PROD:  return new CrossProd( token.line(), token.column(), left, right );

  case ID::DIV:       return new Div( token.line(), token.column(), left, right );
  case ID::DIV_ASS:   return new DivAssign( token.line(), token.column(), left, right );
  case ID::DOT:       return new Dot( token.line(), token.column(), left, right );
  case ID::DOT_ASK:   return new DotMem( token.line(), token.column(), left, right );
  case ID::DOT_DOT:   return new Range( token.line(), token.column(), left, right );
  case ID::DOT_PROD:  return new DotProd( token.line(), token.column(), left, right );

  case ID::EQ:        return new Eq( token.line(), token.column(), left, right );
  case ID::EXP:       return new Exponent( token.line(), token.column(), left, right );
  case ID::EXP_ASS:   return new PowAssign( token.line(), token.column(), left, right );

  case ID::GE:        return new GreaterEq( token.line(), token.column(), left, right );
  case ID::GT:        return new Greater( token.line(), token.column(), left, right );

  case ID::IN:        return new In( token.line(), token.column(), left, right );

  case ID::LE:        return new LessEq( token.line(), token.column(), left, right );
  case ID::LT:        return new Less( token.line(), token.column(), left, right );

  case ID::M_DIV:     return new MDiv( token.line(), token.column(), left, right );
  case ID::M_EXP:     return new MPow( token.line(), token.column(), left, right );
  case ID::MOD:       return new Mod( token.line(), token.column(), left, right );
  case ID::MOD_ASS:   return new ModAssign( token.line(), token.column(), left, right );
  case ID::MPTR:      return new PtrMem( token.line(), token.column(), left, right );
  case ID::MUL:       return new Mul( token.line(), token.column(), left, right );
  case ID::MUL_ASS:   return new MulAssign( token.line(), token.column(), left, right );

  case ID::NE:        return new NotEq( token.line(), token.column(), left, right );

  case ID::OR:        return new Lor( token.line(), token.column(), left, right );
  case ID::OR_ASS:    return new OrAssign( token.line(), token.column(), left, right );

  case ID::PARAM_ASS: return new ParamAssign( token.line(), token.column(), left, right );
  case ID::PTR:       return new Ptr( token.line(), token.column(), left, right );

  case ID::SLFT:      return new ShiftL( token.line(), token.column(), left, right );
  case ID::SLFT_ASS:  return new SLftAssign( token.line(), token.column(), left, right );
  case ID::SRGHT:     return new ShiftR( token.line(), token.column(), left, right );
  case ID::SRGHT_ASS: return new SRghtAssign( token.line(), token.column(), left, right );
  case ID::SS:        return new SpaceShip( token.line(), token.column(), left, right );
  case ID::SUB:       return new Sub( token.line(), token.column(), left, right );
  case ID::SUB_ASS:   return new SubAssign( token.line(), token.column(), left, right );

  case ID::BNOT_ASS:  return new BNotAssign( token.line(), token.column(), left, right );

  case ID::XOR:       return new Xor( token.line(), token.column(), left, right );
  case ID::XOR_ASS:   return new XorAssign( token.line(), token.column(), left, right );
  }
}

/*
static bool isTypeName( ID id )
{
  static std::unordered_set<ID>  typeNameIds
  {
    ID::BOOL,
    ID::C,
    ID::CHAR,
    ID::DATE,
    ID::DATETIME,
    ID::DLIST,
    ID::DQUEUE,
    ID::DURATION,
    ID::F32,
    ID::F64,
    ID::F80,
    ID::GRAPH,
    ID::HEAP,
    ID::I0, ID::I1, ID::I2, ID::I3, ID::I4, ID::I5, ID::I6, ID::I7, ID::I8, ID::I9,
    ID::I10,ID::I11,ID::I12,ID::I13,ID::I14,ID::I15,ID::I16,ID::I17,ID::I18,ID::I19,
    ID::I20,ID::I21,ID::I22,ID::I23,ID::I24,ID::I25,ID::I26,ID::I27,ID::I28,ID::I29,
    ID::I30,ID::I31,ID::I32,ID::I64,ID::I128,
    ID::LIST,
    ID::LSTRING,
    ID::LTSTRING,
    ID::AUTO,
    ID::MAP,
    ID::MMAP,
    ID::MSET,
    ID::MUTEX,
    ID::N,
    ID::N0, ID::N1, ID::N2, ID::N3, ID::N4, ID::N5, ID::N6, ID::N7, ID::N8, ID::N9,
    ID::N10,ID::N11,ID::N12,ID::N13,ID::N14,ID::N15,ID::N16,ID::N17,ID::N18,ID::N19,
    ID::N20,ID::N21,ID::N22,ID::N23,ID::N24,ID::N25,ID::N26,ID::N27,ID::N28,ID::N29,
    ID::N30,ID::N31,ID::N32,ID::N64,ID::N128,
    ID::OBJECT,
    ID::Q,
    ID::QUEUE,
    ID::R,
    ID::REGEXP,
    ID::SEMAPHORE,
    ID::STACK,
    ID::STRING,
    ID::U0, ID::U1, ID::U2, ID::U3, ID::U4, ID::U5, ID::U6, ID::U7, ID::U8, ID::U9,
    ID::U10,ID::U11,ID::U12,ID::U13,ID::U14,ID::U15,ID::U16,ID::U17,ID::U18,ID::U19,
    ID::U20,ID::U21,ID::U22,ID::U23,ID::U24,ID::U25,ID::U26,ID::U27,ID::U28,ID::U29,
    ID::U30,ID::U31,ID::U32,ID::U64,ID::U128,
    ID::SET,
    ID::Z,
    ID::Z0, ID::Z1, ID::Z2, ID::Z3, ID::Z4, ID::Z5, ID::Z6, ID::Z7, ID::Z8, ID::Z9,
    ID::Z10,ID::Z11,ID::Z12,ID::Z13,ID::Z14,ID::Z15,ID::Z16,ID::Z17,ID::Z18,ID::Z19,
    ID::Z20,ID::Z21,ID::Z22,ID::Z23,ID::Z24,ID::Z25,ID::Z26,ID::Z27,ID::Z28,ID::Z29,
    ID::Z30,ID::Z31,ID::Z32,ID::Z64,ID::Z128,
    ID::TYPE_NAME,
    ID::CLASS_NAME,
    ID::ENUM_NAME,
    ID::INTERFACE_NAME,
    ID::RELATION_NAME,
    ID::NAMESPACE_NAME,
    ID::SNAMESPACE_NAME,
    ID::UNION_NAME,
  };

  return typeNameIds.find(id) != typeNameIds.end();
}
*/

static bool isPrefixOp( ID id )
{
  static std::unordered_set<ID>  prefixOpIds
  {
    ID::MUL,      // -> DEREF         *
    ID::ADD,      // -> UNIARY_PLUS     +
    ID::SUB,      // -> UNIARY_MINUS -
    ID::BNOT,     // -> BNOT ~
    ID::DEC,      // -> DEC --
    ID::INC,      // -> INC ++
    ID::NOT,      // -> NOT !
    ID::BOR,      // -> ABS |
    ID::IS_VOID,  // is_void
    ID::DELETE,   // delete
    ID::SIZEOF,   // sizeof
  };

  return prefixOpIds.find(id) != prefixOpIds.end();
}

static inline void mapPrefixOp( Token & in )
{
  switch(in.id())
  {
  default:          in.id(ID::ERROR);       break;

  case ID::MUL:     in.id(ID::DEREF);       break;
  case ID::ADD:     in.id(ID::UNIARY_PLUS); break;
  case ID::SUB:     in.id(ID::UNIARY_MINUS);break;
  case ID::BOR:     in.id(ID::ABS);         break;
  case ID::DEC:     break;
  case ID::INC:     break;
  case ID::NOT:     break;
  case ID::BNOT:    break;
  case ID::IS_VOID: break;
  case ID::DELETE:  break;
  case ID::SIZEOF:  break;
  }
}

static bool isPostOp( ID id )
{
  static std::unordered_set<ID>  postOpIds
  {
    ID::COLON,
    ID::BOR,
    ID::DEC,
    ID::INC,
    ID::NOT,
  };

  return postOpIds.find(id) != postOpIds.end();
}

static inline void mapPostOp( Token & in )
{
  switch(in.id())
  {
  default:       in.id(ID::ERROR);  break;
  case ID::COLON:in.id(ID::COLON);  break;
  case ID::BOR:  in.id(ID::POST_ABS);break;
  case ID::DEC:  in.id(ID::POST_DEC);break;
  case ID::INC:  in.id(ID::POST_INC);break;
  case ID::NOT:  in.id(ID::FACTORIAL);break;
  };
}

static bool isUniaryOp( ID id )
{
  static std::unordered_set<ID>  uniOpIds
  {
    ID::DEC,  
    ID::POST_DEC,
    ID::INC,  
    ID::POST_INC,
    ID::NOT,  
    ID::BNOT,  
    ID::FACTORIAL,
    ID::DEREF,       
    ID::UNIARY_MINUS,
    ID::UNIARY_PLUS,
    ID::ABS,
    ID::IS_VOID,
    ID::DELETE,
    ID::SIZEOF,
  };

  return uniOpIds.find(id) != uniOpIds.end();
}
  
static bool isBinaryOp( ID id )
{
  static std::unordered_set<ID>  binOpIds
  {
    ID::ADD,
    ID::SUB,
    ID::MOD,
    ID::MUL,
    ID::DIV,
    ID::DOT,
    ID::DOT_DOT,
    ID::LT,
    ID::GT,
    ID::BNOT,
    ID::XOR,
    ID::BXOR,
    ID::BAND,
    ID::ASSIGN,
    ID::PARAM_ASS,
    ID::ADD_ASS,
    ID::SUB_ASS,
    ID::BNOT_ASS,
    ID::MOD_ASS,
    ID::MUL_ASS,
    ID::DIV_ASS,
    ID::EXP_ASS,
    ID::AND_ASS,
    ID::BAND_ASS,
    ID::OR_ASS,
    ID::BOR_ASS,
    ID::XOR_ASS,
    ID::BXOR_ASS,
    ID::SLFT_ASS,
    ID::SRGHT_ASS,
    ID::EXP,
    ID::DOT_ASK,
    ID::PTR,
    ID::MPTR,
    ID::LE,
    ID::GE,
    ID::SS,
    ID::EQ,
    ID::NE,
    ID::SS,
    ID::AND,
    ID::OR,
    ID::BOR,
    ID::SLFT,
    ID::SRGHT,
    ID::DOT_PROD,
    ID::CRS_PROD,
    ID::M_DIV,
    ID::M_EXP,
    ID::IN,
    ID::QUAL,
  };

  return binOpIds.find(id) != binOpIds.end();
}
/*
static bool isStartToken( ID id )
{
  static std::unordered_set<ID>  startIds
  {
    ID::ALIGNOF,

    ID::QUAL,
    ID::LPAREN,
    ID::FUN_NAME,
    ID::FUNCTION_NAME,
    ID::VARIABLE_NAME,
    ID::ID,
    ID::SID,
    ID::SFUN_NAME,
    ID::SFUNCTION_NAME,
    ID::SVARIABLE_NAME,
    ID::UNKOWN_NAME,
    ID::NEW,
    ID::SELECT,
    ID::SIZEOF,
    ID::TYPEID,
    ID::TIME,
    ID::BSLASH,
    ID::LBRACE,
    ID::THROW,
    ID::ASYNC,
    ID::DELETE,
    ID::EVAL,
    ID::INVALID_NUMBER,
    ID::INVALID_STRING,
    ID::CO_AWAIT,
    ID::IS_VOID,
    ID::CO_YIELD,
  };

  return startIds.find(id) != startIds.end();
}
*/

inline bool reduceAndPop( Parser * context, Expr ** expr, int initOpStack, int initExprStack )
{
    bool rc = context->reduce( initOpStack, initExprStack, ID::NIL );
    if( rc )
    {
        *expr = context->exprStack.top();
        context->exprStack.pop();
    }

    return rc;
}

bool Parser::reduce( int initOpStack, int initExprStack, ID next )
{
//PENTER
//printOpStack( opStack );
//printExprStack( exprStack );
  while((int)opStack.size() > initOpStack )
  {
    const Token op = opStack.top();
    if( !shouldEval( op.id(), next ))
      return true;

    opStack.pop();
    if( (int)opStack.size() == initOpStack && op.id() == ID::COLON )
    {
      Expr * right = exprStack.top();
      exprStack.pop();
      Expr * left = exprStack.top();
      exprStack.pop();

      Expr * kv = new KeyValue( op.line(), op.column(), left, right );
      exprStack.push(kv);
    }
    else
    {
      if(isUniaryOp(op.id()))
      {
        Expr * operand = exprStack.top();
        exprStack.pop();

        Expr * uni = createUniOpExpr( op, operand );
        exprStack.push( uni );
      }
      else if( isBinaryOp(op.id()) )
      {
        Expr * right = exprStack.top();
        exprStack.pop();
        Expr * left = exprStack.top();
        exprStack.pop();

        Expr * bin = createBinOpExpr( op, left, right );
        exprStack.push( bin );
      }
      else if( op.id() == ID::LBRACK )
      {
        Expr * right = exprStack.top();
        exprStack.pop();
        Expr * left = exprStack.top();
        exprStack.pop();
        Expr * ind = new Index( op.line(), op.column(), right, left );
        exprStack.push( ind );
      }
      else if( op.id() == ID::QUEST )
      {
        Expr * e2 = exprStack.top();
        exprStack.pop();

        Expr * e1 = exprStack.top();
        exprStack.pop();

        Expr * c = exprStack.top();
        exprStack.pop();

        Expr * cond = new Conditional( op.line(), op.column(), c, e1, e2 );
        exprStack.push( cond );
      }
      else
      {
        TODO    
      }
    }
  }

  assert( (int)opStack.size() == initOpStack );

  return true;
}

enum State
{
  start,
  prefixSeen,
  postfixSeen,
  binarySeen,
  valueSeen,
  arrayIndexSeen,
  vecBeginSeen,
  assocBeginSeen,
  lparenSeen,
  absSeen,
  newSeen,
  ctorSeen,
  inCallSeen,
  questSeen,
  colonSeen,
  funcNameSeen,
};

static const char * st2str( State s )
{
  switch(s)
  {
  case start:         return "start";
  case prefixSeen:    return "prefixSeen";
  case postfixSeen:   return "postfixSeen";
  case binarySeen:    return "binarySeen";
  case valueSeen:     return "valueSeen";
  case arrayIndexSeen:return "arrayIndexSeen";
  case vecBeginSeen:  return "vecBeginSeen";
  case assocBeginSeen:return "assocBeginSeen";
  case lparenSeen:    return "lparenSeen";
  case absSeen:       return "absSeen";
  case newSeen:       return "newSeen";
  case ctorSeen:      return "ctorSeen";
  case inCallSeen:    return "inCallSeen";
  case questSeen:     return "questSeen";
  case colonSeen:     return "colonSeen";
  case funcNameSeen:  return "funcNameSeen";
  }
}

// Expression terminators:
//
// { => , }
// ( => , )
// [ => , ]
// | => |
// otherwise  ;
// 
bool Parser::parseExpr( Expr ** expr, ET et, Token & token, int initOpStack, int initExprStack )
{
PENTER
  std::vector<Expr *>  seq;

  State state = start;

  while(true)
  {
printf( "\n%s:%d START state %s opS size %d exS size %d et %d\n", __FILE__, __LINE__, st2str(state), (int)opStack.size(), (int)exprStack.size(), (int)et );
dumpToken( __FILE__, __LINE__, token );
    switch( state )
    {
    default:
    {
      TODO
      break;

    case start:
      // 1212 or true, etc
      if( isLiteral( token.id() ))
      {
        Expr * lit = createLiteral( token );
        exprStack.push(lit);
        state = valueSeen;
      }
      // id
      else if( token.isId() )
      {
        Expr * name = new Name( token.line(), token.column(),  token.str() );
        exprStack.push(name);
        state = valueSeen;
      }
      else if( token.id() == ID::FUNCTION_NAME )
      {
        Expr * name = new Name( token.line(), token.column(),  token.str() );
        exprStack.push(name);
        state = funcNameSeen;
      }
      // ++ . or -- . , etc
      else if( isPrefixOp( token.id() ))
      {
        mapPrefixOp( token );
        opStack.push(token);
        state = prefixSeen;
      }
      // [ ... ]
      else if( token.id() == ID::LBRACK )
      {
        // Vector literal
        state = vecBeginSeen;
      }
      // { ... }
      else if( token.id() == ID::LBRACE )
      {
        // Associative collection literal
        state = assocBeginSeen;
      }
      // ( ... )
      else if (token.id() == ID::LPAREN )
      {
        state = lparenSeen;
      }
      // | ... |
      else if( token.id() == ID::BNOT )
      {
        state = absSeen;
      }
      else if( token.id() == ID::NEW )
      {
        state = newSeen;
      }
      else if( token.id() == ID::RPAREN )
      {
		if( et != ET::RPAREN && et != ET::COMMA_OR_RPAREN )
		  TODO
        *expr = nullptr;
		return true;
      }
      else
      {
        dumpToken( __FILE__, __LINE__, token);
        TODO
      }
      break;
    }
    case funcNameSeen:
    {
      if( token.id() == ID::LPAREN )
      {
	    while(true)
		{
          Expr * ex;
          lex(token, this );  
          if(!parseExpr( &ex, ET::COMMA_OR_RPAREN, token, opStack.size(), exprStack.size() ))
            TODO

          if( token.id() == ID::COMMA )
  		  {
            seq.push_back(ex);
          }
          else if( token.id() == ID::RPAREN )
          {
            Expr * name = exprStack.top();
		    exprStack.pop();

            exprStack.push(new FuncCall( token.line(), token.column(), name, seq ));

		    state = valueSeen;
			break;
          }
          else
            TODO
		}
      }
      else
        TODO
      break;
    }
    case vecBeginSeen:
    {
      // .. , ... ]
      Expr * ex;
      if(!parseExpr( &ex, ET::COMMA_OR_RBRACK, token, opStack.size(), exprStack.size() ))
        TODO

      if( token.id() == ID::COMMA )
        seq.push_back(ex);
      // ]
      else if( token.id() == ID::RBRACK )
      {
        state = valueSeen;
        Expr * vec = createLiteral(token, seq, ID::SEQ_LIT );
        exprStack.push(vec);
      }
      else
        TODO
      break;
    }
    case assocBeginSeen:
    {
      // .. , ... }
      Expr * ex;
      if( !parseExpr( &ex, ET::COMMA_OR_COLON_OR_RBRACE, token, opStack.size(), exprStack.size() ) )
      {
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return false;
      }

      if( token.id() == ID::COMMA )
      {
        seq.push_back(ex);
      }
      // }
      else if( token.id() == ID::RBRACE )
      {
        seq.push_back(ex);

        state = valueSeen;
        Expr * vec = createLiteral(token, seq, ID::MSET_LIT );
        exprStack.push(vec);
      }
      else
        TODO
      break;
    }
    case prefixSeen:
    {
      if( isLiteral( token.id() ))
      {
        Expr * lit = createLiteral( token );
        exprStack.push(lit);
        state = valueSeen;
      }
      else if( token.isId() )
      {
        Expr * name = new Name( token.line(), token.column(),  token.str() );
        exprStack.push(name);
        state = valueSeen;
      }
      else if( token.id() == ID::LPAREN )
      {
        state = lparenSeen;
      }
      else
        TODO
      break;
    }
    case binarySeen:
    {
      if( isLiteral( token.id() ))
      {
        Expr * lit = createLiteral( token );
        exprStack.push(lit);
        state = valueSeen;
      }
      else if( token.isId() )
      {
        Expr * name = new Name( token.line(), token.column(),  token.str() );
        exprStack.push(name);
        state = valueSeen;
      }
      else if( isPrefixOp( token.id() ))
      {
        mapPrefixOp( token );
        opStack.push(token);
        if( token.id() == ID::ABS )
          state = absSeen;
        else
          state = prefixSeen;
      }
      // [ ... ]
      else if( token.id() == ID::LBRACK )
      {
        // Vector literal
        state = vecBeginSeen;
      }
      // { ... }
      else if( token.id() == ID::LBRACE )
      {
        // Associative collection literal
        state = assocBeginSeen;
      }
      // ( ... )
      else if (token.id() == ID::LPAREN )
      {
        state = lparenSeen;
      }
      // | ... |
      else if( token.id() == ID::BNOT )
      {
        state = absSeen;
      }
      else
        TODO
      break;
    }
    case valueSeen:
    {
      if( token.id() == ID::SCOLON)
      {
        if( et != ET::SCOLON && et != ET::SCOLON_OR_RPAREN )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::COMMA)
      {
        if( et != ET::COMMA_OR_RBRACE && 
          ( et != ET::COMMA_OR_RBRACK ) && 
          ( et != ET::COMMA_OR_RPAREN ) && 
          ( et != ET::COMMA_OR_COLON_OR_RBRACE ) )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );

        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::RBRACK)
      {
        if( et != ET::COMMA_OR_RBRACK )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::RPAREN)
      {
        if( et != ET::COMMA_OR_RPAREN && et != ET::RPAREN )
          TODO

        return reduceAndPop( this, expr, initOpStack, initExprStack );
      }
      else if( token.id() == ID::RBRACE)
      {
        if( et != ET::COMMA_OR_RBRACE && et != ET::COMMA_OR_COLON_OR_RBRACE )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::COLON )
      {
        if( et != ET::COLON && et != ET::COMMA_OR_COLON_OR_RBRACE )
          TODO

        if( et == ET::COLON )
        {
          bool rc = reduce( initOpStack, initExprStack, ID::COLON );
          *expr = exprStack.top();
          exprStack.pop();
          assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        }
        else
        {
            Expr * value;
            lex(token, this );  
            if(!parseExpr( &value, ET::COMMA_OR_RBRACE, token, opStack.size(), exprStack.size() ))
                TODO
            Expr * key = exprStack.top();
            exprStack.pop();
            *expr = new KeyValue( token.line(), token.column(), key, value );
        }
        return true; 
      }
      else if( token.id() == ID::LPAREN )
      {
	    while(true)
		{
          Expr * ex;
          lex(token, this );  
          if(!parseExpr( &ex, ET::COMMA_OR_RPAREN, token, opStack.size(), exprStack.size() ))
            TODO

          if( token.id() == ID::COMMA )
  		  {
            seq.push_back(ex);
          }
          else if( token.id() == ID::RPAREN )
          {
            Expr * name = exprStack.top();
		    exprStack.pop();

            exprStack.push(new FuncCall( token.line(), token.column(), name, seq ));

		    state = valueSeen;
			break;
          }
          else
            TODO
		}
      }
      else if( token.id() == ID::BNOT )
      {
        TODO
      }
      else if( token.id() == ID::LBRACK)
      {
        opStack.push(token);
        state = arrayIndexSeen;
      }
      else if( token.id() == ID::BOR && et == ET::ABS )
      {
        return reduceAndPop( this, expr, initOpStack, initExprStack );
      }
      else if( isBinaryOp( token.id() ) )
      {
        if( static_cast<int>(opStack.size()) > initOpStack )
        {
            // decide if current stack state should be evaluated or 
            // not based on operator precedence and associativity
            if( shouldEval( opStack.top().id(), token.id() ))
            {
              if(!reduce( initOpStack, initExprStack, token.id() ))
                TODO
            }
        }

        opStack.push(token);
        state = binarySeen;
      }
      else if( isPostOp( token.id() ))
      {
        mapPostOp( token );
        
        if(!reduce( initOpStack, initExprStack, token.id()))
          TODO
      }
      else if( token.id() == ID::QUEST )
      {
        if(!reduce( initOpStack, initExprStack, ID::QUEST ))
          TODO
        opStack.push(token);
        state = questSeen;
      }
      else
      {
        TODO
      }
      break;
    }
    case postfixSeen:
    {
      if( token.id() == ID::SCOLON)
      {
        if( et != ET::SCOLON )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::COMMA)
      {
        if( et != ET::COMMA_OR_RBRACE && ( et != ET::COMMA_OR_RBRACK ) && ( et != ET::COMMA_OR_RPAREN ) )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::RBRACK)
      {
        if( et != ET::COMMA_OR_RBRACE && ( et != ET::COMMA_OR_RBRACK ) && ( et != ET::COMMA_OR_RPAREN ) )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::RBRACE)
      {
        if( et != ET::COMMA_OR_RBRACE && ( et != ET::COMMA_OR_RBRACK ) && ( et != ET::COMMA_OR_RPAREN ) )
          TODO

        bool rc = reduceAndPop( this, expr, initOpStack, initExprStack );
        assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );
        return rc;
      }
      else if( token.id() == ID::RPAREN)
      {
         TODO     
      }
      else if( token.id() == ID::BNOT)
      {
         TODO     
      }
      else if( token.id() == ID::COLON)
      {
         TODO     
      }
      else if( isBinaryOp( token.id() ) )
      {
        bool rc = reduce( initOpStack, initExprStack, token.id() );
        if(!rc)
          TODO
        *expr = exprStack.top();
        exprStack.pop();

        exprStack.push( *expr );
        opStack.push( token );
        state = binarySeen;
      }
      else
      {
        TODO
      }
      break;
    }
    case arrayIndexSeen:
    {
      Expr * dim;
      if(!parseExpr( &dim, ET::COMMA_OR_RBRACK, token, opStack.size(), exprStack.size() ))
        TODO;
      if( token.id() == ID::COMMA )
      {
        seq.push_back(dim);
      }
      else if( token.id() == ID::RBRACK )
      {

        Expr * arr = exprStack.top();
        exprStack.pop();
        opStack.pop();

        Expr * vec = new Index( token.line(), token.column(), arr, seq );
        exprStack.push(vec);

        state = valueSeen;
      }
      else
        TODO
      break;
    }
    case lparenSeen:
    {
      if(!parseExpr( expr, ET::COMMA_OR_RPAREN, token, opStack.size(), exprStack.size() ))
        TODO;

      exprStack.push(*expr);

      if( token.id() == ID::COMMA )
      {
        TODO
      }
	  else if( token.id() == ID::RPAREN )
	  {
	    state = valueSeen;
	  }
      else 
      {
        TODO
      }
      break;
    }
    case absSeen:
    {
      if(!parseExpr( expr, ET::ABS, token, opStack.size(), exprStack.size() ))
        TODO;
      exprStack.push(*expr);
      state = valueSeen;
      break;
    }

    case newSeen:
    {
      if( token.isId() )
      {
        Expr * ctorCall = new CtorCall( token.line(), token.column(), token.idLexium(), false ); 
        exprStack.push(ctorCall);
        state = ctorSeen;
      }
      else if(token.isType() )
      {
        Expr * ctorCall = new CtorCall( token.line(), token.column(), token.idLexium(), true ); 
        exprStack.push(ctorCall);
        state = ctorSeen;
      }
      break;
    }
    case ctorSeen:
    {
        if( token.id() == ID::LPAREN )
        {
            state = inCallSeen;
        }
        else
            TODO
        break;
    }
    case inCallSeen:
    {
      if( token.id() == ID::RPAREN )
      {
        TODO
      }
      else if(!parseExpr( expr, ET::COMMA_OR_RPAREN, token, opStack.size(), exprStack.size() ))
        TODO;

      if( token.id() == ID::COMMA )
      {
        TODO
      }
      else if( token.id() == ID::RPAREN )
      {
        Expr * fun = exprStack.top();

        state = valueSeen;
      }
      break;
    }
    case questSeen:
    {
        // c ? e1 : e2
        // Parse e1
        if(!parseExpr( expr, ET::COLON, token, opStack.size(), exprStack.size() ))
          TODO;
        if( token.id() == ID::COLON )
        {
          // Push e1 onto stack
          exprStack.push(*expr);

         // Parse e2
          lex(token, this );  
          if(!parseExpr( expr, et, token, opStack.size(), exprStack.size() ))
            TODO;

          // Push e2 onto stack
          exprStack.push( *expr );

          // Push back terminating token. It will be retrieved below and
          // be the first token of the valueSeen state
          lookahead = std::move(token);

          // Create c ? e1 : e2 expression
          bool rc = reduce( initOpStack, initExprStack, ID::NIL );
          if( !rc )
            TODO
          state = valueSeen;
        }
        else
          TODO
        break;
    }
    }

    lex(token, this );  
  }

  assert( (int)opStack.size() == initOpStack && (int)exprStack.size() == initExprStack );

  return false;
}
