#pragma once

#include <vector>
#include <string>
#include <memory>


class Node
{
public:
	typedef std::vector<std::pair<std::string, std::string> > Attributes;

	Node( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):attributes_(att), children_(children)
	{
	}
	
	virtual ~Node()
	{
	}

	virtual bool verify( Node * parent ) const = 0;

protected:
	
	std::unique_ptr<Attributes> attributes_;
	std::unique_ptr<std::vector<std::unique_ptr<Node>>> children_;
};

class TEXT: public Node
{
public:
	TEXT( ):Node(nullptr, nullptr)
	{
	}

	virtual bool verify( Node *  ) const { return true; }

private:
	std::string data_;
};

class A:public Node
{
public:
	A( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Abbr:public Node
{
public:
	Abbr( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Address:public Node
{
public:
	Address( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Area:public Node
{
public:
	Area( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Article:public Node
{
public:
	Article( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Aside:public Node
{
public:
	Aside( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Audio:public Node
{
public:
	Audio( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Base:public Node
{
public:
	Base( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class B:public Node
{
public:
	B( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Bdi:public Node
{
public:
	Bdi( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Bdo:public Node
{
public:
	Bdo( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Blockquote:public Node
{
public:
	Blockquote( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Body:public Node
{
public:
	Body( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Br:public Node
{
public:
	Br( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Button:public Node
{
public:
	Button( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Canvas:public Node
{
public:
	Canvas( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Caption:public Node
{
public:
	Caption( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Cite:public Node
{
public:
	Cite( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Code:public Node
{
public:
	Code( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Col:public Node
{
public:
	Col( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Colgroup:public Node
{
public:
	Colgroup( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Data:public Node
{
public:
	Data( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Datalist:public Node
{
public:
	Datalist( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Dd:public Node
{
public:
	Dd( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Del:public Node
{
public:
	Del( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Dfn:public Node
{
public:
	Dfn( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class divN:public Node
{
public:
	divN( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Dl:public Node
{
public:
	Dl( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Doctype:public Node
{
public:
	Doctype( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Dt:public Node
{
public:
	Dt( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Embed:public Node
{
public:
	Embed( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Em:public Node
{
public:
	Em( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Fieldset:public Node
{
public:
	Fieldset( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Figcaption:public Node
{
public:
	Figcaption( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Figure:public Node
{
public:
	Figure( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Footer:public Node
{
public:
	Footer( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Form:public Node
{
public:
	Form( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class H1:public Node
{
public:
	H1( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class H2:public Node
{
public:
	H2( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class H3:public Node
{
public:
	H3( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class H4:public Node
{
public:
	H4( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class H5:public Node
{
public:
	H5( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class H6:public Node
{
public:
	H6( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Header:public Node
{
public:
	Header( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Head:public Node
{
public:
	Head( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Hr:public Node
{
public:
	Hr( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Html:public Node
{
public:
	Html( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Iframe:public Node
{
public:
	Iframe( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class I:public Node
{
public:
	I( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Img:public Node
{
public:
	Img( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Input:public Node
{
public:
	Input( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Ins:public Node
{
public:
	Ins( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Kbd:public Node
{
public:
	Kbd( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Keygen:public Node
{
public:
	Keygen( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Label:public Node
{
public:
	Label( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Legend:public Node
{
public:
	Legend( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Li:public Node
{
public:
	Li( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Link:public Node
{
public:
	Link( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Main:public Node
{
public:
	Main( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Map:public Node
{
public:
	Map( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Mark:public Node
{
public:
	Mark( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Math:public Node
{
public:
	Math( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Meta:public Node
{
public:
	Meta( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Meter:public Node
{
public:
	Meter( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Nav:public Node
{
public:
	Nav( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Noscript:public Node
{
public:
	Noscript( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Object:public Node
{
public:
	Object( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Ol:public Node
{
public:
	Ol( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Optgroup:public Node
{
public:
	Optgroup( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Option:public Node
{
public:
	Option( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Output:public Node
{
public:
	Output( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Param:public Node
{
public:
	Param( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class P:public Node
{
public:
	P( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Pre:public Node
{
public:
	Pre( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Progress:public Node
{
public:
	Progress( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Q:public Node
{
public:
	Q( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Rb:public Node
{
public:
	Rb( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Rp:public Node
{
public:
	Rp( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Rtc:public Node
{
public:
	Rtc( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Rt:public Node
{
public:
	Rt( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Ruby:public Node
{
public:
	Ruby( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Samp:public Node
{
public:
	Samp( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Script:public Node
{
public:
	Script( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Section:public Node
{
public:
	Section( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Select:public Node
{
public:
	Select( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Small:public Node
{
public:
	Small( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Source:public Node
{
public:
	Source( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Span:public Node
{
public:
	Span( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class S:public Node
{
public:
	S( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Strong:public Node
{
public:
	Strong( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Style:public Node
{
public:
	Style( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class sub:public Node
{
public:
	sub( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Sup:public Node
{
public:
	Sup( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Svg:public Node
{
public:
	Svg( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Table:public Node
{
public:
	Table( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Tbody:public Node
{
public:
	Tbody( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Td:public Node
{
public:
	Td( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Template:public Node
{
public:
	Template( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Textarea:public Node
{
public:
	Textarea( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Text:public Node
{
public:
	Text( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Tfoot:public Node
{
public:
	Tfoot( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Thread:public Node
{
public:
	Thread( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Th:public Node
{
public:
	Th( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Time:public Node
{
public:
	Time( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Title:public Node
{
public:
	Title( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Track:public Node
{
public:
	Track( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Tr:public Node
{
public:
	Tr( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Ul:public Node
{
public:
	Ul( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class U:public Node
{
public:
	U( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Var:public Node
{
public:
	Var( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Video:public Node
{
public:
	Video( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

class Wbr:public Node
{
public:
	Wbr( Attributes * att, std::vector<std::unique_ptr<Node>> * children ):Node(att, children) {}

	virtual bool verify( Node * parent ) const;
};

