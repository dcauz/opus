#include "parser.h"
#include "statement.h"

static bool notRelKeyWord( const std::string & lex )
{
		switch( lex[0] )
		{
		default:	return true;
		case 'p': return lex != "primary";
		case 'f': return lex != "foreign";
		case 'u':	return lex != "unique";
		case 's': return lex != "save" && lex != "source";
		}
}

std::vector<std::string>	getNameList( Parser * context )
{
PENTER
		std::vector<std::string>	names;

		Token token;
		context->lex( token );

		while( token.isId() && notRelKeyWord( token.idLexium()))
		{
			names.emplace_back( token.idLexium());
			context->lex( token );
			if( token.id() != ID::COMMA )
			{
				context->pushLookahead(token);
				break;
			}
		}

		return names;
}

/*
 * relation name attributes
 * attributes
 *   header type_name
 *   primary key header_name_list
 *   foreign key name = name . name
 *   unique  header_name_list
 *   save [by] [row|column]
 *   source string
 */
bool Parser::parseRelation( Relation ** /* relation */ )
{
PENTER
		Token token;
		lex( token );

		if( token.isId() )
		{
			std::string name =  token.idLexium();
			std::string hname;
			
			lex( token );
			if( token.id() == ID::ASSIGN )
			{
				while(true)
				{
					lex( token );

					if( token.id() == ID::SCOLON )
					{
						return true;
					}

					if(token.is_header())
					{
						lex( token );
						if( token.isType())
						{
							hname = token.idLexium();
						}
						else
						{
							dumpToken( __FILE__, __LINE__, token );	
							TODO
						}
					}
					else if( token.is_primary() )
					{
						lex( token );
						if( token.is_key())
						{
								std::vector<std::string>	names = getNameList( this );

						}
						else
						{
							dumpToken( __FILE__, __LINE__, token );	
							TODO
						}
					}
					else if( token.is_foreign())
					{
						lex( token );
						if( token.is_key() )
						{
							std::vector<std::string>	names = getNameList( this );
						}
						else
						{
							dumpToken( __FILE__, __LINE__, token );	
							TODO
						}
					}
					else if( token.is_unique() )
					{
						std::vector<std::string>	names = getNameList( this );
					}
					else if( token.is_save() )
					{
						lex( token );
						if( token.is_by())
							lex( token );

						if( token.is_row() )
						{
						}
						else if( token.is_column())
						{
						}
						else
						{
							dumpToken( __FILE__, __LINE__, token );	
							TODO
						}
					}
					else if( token.is_source() )
					{
						std::string source;
						lex( token );
						if( token.isString() )
							source = token.str();
						else	
						{
							dumpToken( __FILE__, __LINE__, token );	
							TODO
						}
					}
				}
			}

			return true;
		}

		dumpToken( __FILE__, __LINE__, token );
		TODO
		return false;
}
