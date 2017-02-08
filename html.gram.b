%{

#include "nodes.h"
#include "htmlerror.h"
#include "htmllex.h"

int	htmlparse();

%}

%token	NAME			"name"

%token  CLASS			"class"
%token  FOR				"for"
%token  IF				"if"
%token  RETURN			"return"
%token  SWITCH			"switch"
%token  WHILE			"while"

%token	A_				"<a>"
%token	_A_				"</a>"
%token	ABBR			"<abbr>"
%token	_ABBR			"</abbr>"
%token	ADDRESS			"<address>"
%token	_ADDRESS		"</address>"
%token	AREA			"<area>"
%token	_AREA			"</area>"
%token	ARTICLE			"<article>"
%token	_ARTICLE		"</article>"
%token	ASIDE			"<aside>"
%token	_ASIDE			"</aside>"
%token	AUDIO			"<audio>"
%token	_AUDIO			"</audio>"

%token	B_				"<b>"
%token	_B_				"</b>"
%token	<node> BASE		"<base/>"
%token	BDI				"<bdi>"
%token	_BDI			"</bdi>"
%token	BDO				"<bdo>"
%token	_BDO			"</bdo>"
%token	BLOCKQUOTE		"<blockquote>"
%token	_BLOCKQUOTE		"</blockquote>"
%token	BODY			"<body>"
%token	_BODY			"</body>"
%token	<node> BR		"<br/>"
%token	BUTTON			"<button>"
%token	_BUTTON			"</button>"

%token	CANVAS			"<canvas>"
%token	_CANVAS			"</canvas>"
%token	CAPTION			"<caption>"
%token	_CAPTION		"</caption>"
%token	CITE			"<cite>"
%token	_CITE			"</cite>"
%token	CODE			"<code>"
%token	_CODE			"</code>"
%token	<node> COL		"<col/>"
%token	COLGROUP		"<colgroup>"
%token	_COLGROUP		"</colgroup>"

%token	DATA			"<data>"
%token	_DATA			"</data>"
%token	DATALIST		"<datalist>"
%token	_DATALIST		"</datalist>"
%token	DD				"<dd>"
%token	_DD				"</dd>"
%token	DEL				"<del>"
%token	_DEL			"</del>"
%token	DFN				"<dfn>"
%token	_DFN			"</dfn>"
%token	DIV				"<div>"
%token	_DIV			"</div>"
%token	DL				"<dl>"
%token	_DL				"</dl>"
%token	DOCTYPE			"<!doctype>"
%token	DT				"<dt>"
%token	_DT				"</dt>"

%token	EM				"<em>"
%token	_EM				"</em>"
%token	<node> EMBED	"<embed/>"

%token	FIELDSET		"<fieldset>"
%token	_FIELDSET		"</fieldset>"
%token	FIGCAPTION		"<figcaption>"
%token	_FIGCAPTION		"</figcaption>"
%token	FIGURE			"<figure>"
%token	_FIGURE			"</figure>"
%token	FOOTER			"<footer>"
%token	_FOOTER			"</footer>"
%token	FORM			"<form>"
%token	_FORM			"</form>"

%token	H1_				"<h1>"
%token	_H1_			"</h1>"
%token	H2_				"<h2>"
%token	_H2_			"</h2>"
%token	H3_				"<h3>"
%token	_H3_			"</h3>"
%token	H4_				"<h4>"
%token	_H4_			"</h4>"
%token	H5_				"<h5>"
%token	_H5_			"</h5>"
%token	H6_				"<h6>"
%token	_H6_			"</h6>"
%token	HEAD			"<head>"
%token	_HEAD			"</head>"
%token	HEADER			"<header>"
%token	_HEADER			"</header>"
%token	<node> HR		"<hr/>"
%token	HTML			"<html>"
%token	_HTML			"</html>"

%token	I_				"<i>"
%token	_I_				"</i>"
%token	IFRAME			"<iframe>"
%token	_IFRAME			"</iframe>"
%token	<node> IMG		"<img/>"
%token	<node> INPUT	"<input/>"
%token	INS				"<ins>"
%token	_INS			"</ins>"

%token	KBD				"<kbd>"
%token	_KBD			"</kbd>"
%token	<node> KEYGEN	"<keygen/>"

%token	LABEL			"<label>"
%token	_LABEL			"</label>"
%token	LEGEND			"<legend>"
%token	_LEGEND			"</legend>"
%token	LI				"<li>"
%token	_LI				"</li>"
%token	<node > LINK	"<link/>"

%token	MAIN			"<main>"
%token	_MAIN			"</main>"
%token	MAP				"<map>"
%token	_MAP			"</map>"
%token	MARK			"<mark>"
%token	_MARK			"</mark>"
%token	MATH			"<math>"
%token	_MATH			"</math>"
%token	<node> META		"<meta/>"
%token	METER			"<meter>"
%token	_METER			"</meter>"

%token	NAV				"<nav>"
%token	_NAV			"</nav>"
%token	NOSCRIPT		"<noscript>"
%token	_NOSCRIPT		"</noscript>"

%token	OBJECT			"<object>"
%token	_OBJECT			"</object>"
%token	OL				"<ol>"
%token	_OL				"</ol>"
%token	OPTGROUP		"<optgroup>"
%token	_OPTGROUP		"</optgroup>"
%token	OPTION			"<option>"
%token	_OPTION			"</option>"
%token	OUTPUT			"<output>"
%token	_OUTPUT			"</output>"

%token	P_				"<p>"
%token	_P_				"</p>"
%token	<node> PARAM	"<param/>"
%token	PRE				"<pre>"
%token	_PRE			"</pre>"
%token	PROGRESS		"<progress>"
%token	_PROGRESS		"</progress>"

%token	Q_				"<q>"
%token	_Q_				"</q>"

%token	RB				"<rb>"
%token	_RB				"</rb>"
%token	RP				"<rp>"
%token	_RP				"</rp>"
%token	RT				"<rt>"
%token	_RT				"</rt>"
%token	RTC				"<rtc>"
%token	_RTC			"</rtc>"
%token	RUBY			"<ruby>"
%token	_RUBY			"</ruby>"

%token	S_				"<s>"
%token	_S_				"</s>"
%token	SAMP			"<samp>"
%token	_SAMP			"</samp>"
%token	SCRIPT			"<script>"
%token	_SCRIPT			"</script>"
%token	SECTION			"<section>"
%token	_SECTION		"</section>"
%token	SELECT			"<select>"
%token	_SELECT			"</select>"
%token	SMALL			"<small>"
%token	_SMALL			"</small>"
%token	<node> SOURCE	"<source/>"
%token	SPAN			"<span>"
%token	_SPAN			"</span>"
%token	STRONG			"<strong>"
%token	_STRONG			"</strong>"
%token	STYLE			"<style>"
%token	_STYLE			"</style>"
%token	SUB				"<sub>"
%token	_SUB			"</sub>"
%token	SUP				"<sup>"
%token	_SUP			"</sup>"
%token	SVG				"<svg>"
%token	_SVG			"</svg>"

%token	TABLE			"<table>"
%token	_TABLE			"<_table>"
%token	TBODY			"<tbody>"
%token	_TBODY			"<_tbody>"
%token	TD				"<td>"
%token	_TD				"<_td>"
%token	TEMPLATE		"<template>"
%token	_TEMPLATE		"<_template>"
%token	TEXT			"text"
%token	TEXTAREA		"<textarea>"
%token	_TEXTAREA		"<_textarea>"
%token	TFOOT			"<tfoot>"
%token	_TFOOT			"<_tfoot>"
%token	TH				"<th>"
%token	_TH				"<_th>"
%token	THREAD			"<thread>"
%token	_THREAD			"<_thread>"
%token	TIME			"<time>"
%token	_TIME			"<_time>"
%token	TITLE			"<title>"
%token	_TITLE			"<_title>"
%token	TR				"<tr>"
%token	_TR				"<_tr>"
%token	<node> TRACK	"<track/>"

%token	U_				"<u>"
%token	_U_				"</u>"
%token	UL				"<ul>"
%token	_UL				"</ul>"

%token	VAR				"<var>"
%token	_VAR			"</var>"
%token	VIDEO			"<video>"
%token	_VIDEO			"</video>"

%token	<node> WBR		"<wbr/>"


%type <node> a
%type <node> abbr
%type <node> address
%type <node> area
%type <node> article
%type <node> aside
%type <node> audio
%type <node> b
%type <node> bdi
%type <node> bdo
%type <node> blockquote
%type <node> body
%type <node> button
%type <node> canvas
%type <node> caption
%type <node> cite
%type <node> code
%type <node> colgroup
%type <nodes> colgroups
%type <node> data
%type <node> datalist
%type <node> dd
%type <node> del
%type <node> dfn
%type <node> div
%type <node> dl
%type <nodes> dls
%type <node> dt
%type <node> element
%type <node> em
%type <node> fieldset
%type <node> figure
%type <node> figcaption
%type <node> footer
%type <node> form
%type <node> h1
%type <node> h2
%type <node> h3
%type <node> h4
%type <node> h5
%type <node> h6
%type <node> head
%type <node> header
%type <node> html
%type <node> i
%type <node> iframe
%type <node> ins
%type <node> kbd
%type <node> label
%type <node> legend
%type <node> li
%type <node> main
%type <node> map
%type <node> mark
%type <node> math
%type <nodes> metadata_content
%type <node> meter
%type <node> nav
%type <nodes> nodes
%type <node> noscript
%type <node> object
%type <node> ol
%type <node> optgroup
%type <nodes> optgroups
%type <node> option
%type <node> output
%type <node> p
%type <node> pre
%type <node> progress
%type <node> q
%type <node> rb
%type <node> rp
%type <node> rt
%type <node> rtc
%type <node> ruby
%type <node> s
%type <node> samp
%type <node> script
%type <node> script_supporting_elements
%type <node> section
%type <node> select
%type <node> small
%type <node> span
%type <node> strong
%type <node> style
%type <node> sub
%type <node> sup
%type <node> svg
%type <node> table
%type <nodes> tables
%type <node> tbody
%type <nodes> tbodys
%type <node> td
%type <nodes> temp
%type <node> template
%type <node> textarea
%type <node> tfoot
%type <nodes> tfoots
%type <node> time
%type <node> title
%type <node> th
%type <node> thread
%type <nodes> threads
%type <node> tr
%type <nodes> trs
%type <node> u
%type <node> ul
%type <nodes> uls
%type <node> var
%type <node> video
%type <node> TEXT

%define api.pure full
%define parse.error verbose
%define parse.lac full

%locations

%parse-param
{
	HtmlLexContext * context
}
%lex-param
{
	HtmlLexContext * context
}

%union
{
	Node * node;
	std::vector<std::unique_ptr<Node>> * nodes;
}

%%

program
	: document
	| statements
	;

document
	: doctype html
	;

doctype
	: DOCTYPE
	;

html
	: HTML head body _HTML
	{
		$$ = new Html(nullptr, nullptr );
	}
	| HTML body _HTML
	{
		$$ = new Html(nullptr, nullptr );
	}
	| HTML head _HTML
	{
		$$ = new Html(nullptr, nullptr );
	}
	| HTML _HTML
	{
		$$ = new Html(nullptr, nullptr );
	}
	;

head
	: HEAD metadata_content _HEAD
	{
		$$ = new Head( nullptr, $2 );
	}
	| HEAD _HEAD
	{
		$$ = new Head( nullptr, nullptr );
	}
	;

metadata_content
	: metadata_content BASE
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| metadata_content LINK
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| metadata_content META
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| metadata_content noscript
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| metadata_content style
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| metadata_content template
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| metadata_content title
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| BASE
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| LINK
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| META
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| noscript
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| style
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| template
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| title
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;
	
style
	: STYLE TEXT _STYLE
	{
		auto v = new std::vector<std::unique_ptr<Node>>();
		v->push_back(std::unique_ptr<Node>($2));
		$$ = new Style( nullptr, v );
	}
	| STYLE _STYLE
	{
		$$ = new Style( nullptr, nullptr  );
	}
	;

title
	: TITLE TEXT _TITLE
	{
		auto v = new std::vector<std::unique_ptr<Node>>();
		v->push_back(std::unique_ptr<Node>($2));
		$$ = new Title( nullptr, v );
	}
	| TITLE _TITLE
	{
		$$ = new Title(  nullptr, nullptr );
	}
	;

body
	: BODY nodes _BODY
	{
		$$ = new Body( nullptr, $2 );
	}
	| BODY _BODY
	{
		$$ = new Body( nullptr, nullptr  );
	}
	;

nodes
	: nodes element
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| element
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

element
	: a
	| abbr
	| address
	| area
	| article
	| aside
	| audio
	| b
	| bdi
	| bdo
	| blockquote
	| BR
	| button
	| canvas
	| caption
	| cite
	| code
	| data
	| datalist
	| del
	| dfn
	| div
	| dl
	| em
	| EMBED
	| fieldset
	| figure
	| figcaption
	| footer
	| form
	| h1
	| h2
	| h3
	| h4
	| h5
	| h6
	| header
	| HR
	| i
	| iframe
	| IMG
	| INPUT
	| ins
	| kbd
	| KEYGEN
	| label
	| legend
	| main
	| map
	| mark
	| math
	| meter
	| nav
	| noscript
	| object
	| ol
	| optgroup
	| option
	| output
	| p
	| PARAM
	| pre
	| progress
	| q
	| rb
	| rp
	| rt
	| rtc
	| ruby
	| s
	| samp
	| script
	| section
	| select
	| small
	| SOURCE
	| span
	| strong
	| sub
	| sup
	| svg
	| table
	| template
	| textarea
	| time
	| TRACK
	| u
	| ul
	| var
	| video
	| WBR
	| TEXT
	;

a
	: A_ nodes  _A_
	{
		$$ = new A( nullptr, $2 );
	}
	| A_ _A_
	{
		$$ = new A( nullptr, nullptr  );
	}
	;

abbr
	: ABBR nodes _ABBR
	{
		$$ = new Abbr( nullptr, $2 );
	}
	| ABBR _ABBR
	{
		$$ = new Abbr( nullptr, nullptr  );
	}
	;

address
	: ADDRESS nodes _ADDRESS
	{
		$$ = new Address( nullptr, $2 );
	}
	| ADDRESS _ADDRESS
	{
		$$ = new Address( nullptr, nullptr  );
	}
	;

article
	: ARTICLE nodes _ARTICLE
	{
		$$ = new Article( nullptr, $2 );
	}
	| ARTICLE _ARTICLE
	{
		$$ = new Article( nullptr, nullptr  );
	}
	;

aside
	: ASIDE nodes _ASIDE
	{
		$$ = new Aside( nullptr, $2 );
	}
	| ASIDE _ASIDE
	{
		$$ = new Aside( nullptr, nullptr  );
	}
	;

audio
	: AUDIO nodes _AUDIO
	{
		$$ = new Audio( nullptr, $2 );
	}
	| AUDIO _AUDIO
	{
		$$ = new Audio( nullptr, nullptr  );
	}
	;

b
	: B_ nodes _B_
	{
		$$ = new B( nullptr, $2 );
	}
	| B_ _B_
	{
		$$ = new B( nullptr, nullptr  );
	}
	;

bdi
	: BDI nodes _BDI
	{
		$$ = new Bdi( nullptr, $2 );
	}
	| BDI _BDI
	{
		$$ = new Bdi( nullptr, nullptr  );
	}
	;
	
bdo
	: BDO nodes _BDO
	{
		$$ = new Bdo( nullptr, $2 );
	}
	| BDO _BDO
	{
		$$ = new Bdo( nullptr, nullptr  );
	}
	;

blockquote
	: BLOCKQUOTE nodes _BLOCKQUOTE
	{
		$$ = new Blockquote( nullptr, $2 );
	}
	| BLOCKQUOTE _BLOCKQUOTE
	{
		$$ = new Blockquote(  nullptr, nullptr );
	}
	;

button
	: BUTTON nodes _BUTTON
	{
		$$ = new Button( nullptr, $2 );
	}
	| BUTTON _BUTTON
	{
		$$ = new Button(  nullptr, nullptr );
	}
	;

canvas
	: CANVAS nodes _CANVAS
	{
		$$ = new Canvas( nullptr, $2 );
	}
	| CANVAS _CANVAS
	{
		$$ = new Canvas( nullptr, nullptr  );
	}
	;

cite
	: CITE nodes _CITE
	{
		$$ = new Cite( nullptr, $2 );
	}
	| CITE _CITE
	{
		$$ = new Cite( nullptr, nullptr  );
	}
	;

code
	: CODE nodes _CODE
	{
		$$ = new Code( nullptr, $2 );
	}
	| CODE _CODE
	{
		$$ = new Code( nullptr, nullptr  );
	}
	;

data
	: DATA nodes _DATA
	{
		$$ = new Data( nullptr, $2 );
	}
	| DATA _DATA
	{
		$$ = new Data( nullptr, nullptr  );
	}
	;

datalist
	: DATALIST nodes _DATALIST
	{
		$$ = new Datalist( nullptr, $2 );
	}
	| DATALIST _DATALIST
	{
		$$ = new Datalist( nullptr, nullptr  );
	}
	;

option	
	: OPTION TEXT _OPTION
	{
		auto v = new std::vector<std::unique_ptr<Node>>();
		v->push_back(std::unique_ptr<Node>($2));
		$$ = new Option( nullptr, v );
	}
	| OPTION _OPTION
	{
		$$ = new Option( nullptr, nullptr  );
	}
	;

del
	: DEL nodes _DEL
	{
		$$ = new Del( nullptr, $2 );
	}
	| DEL _DEL
	{
		$$ = new Del( nullptr, nullptr  );
	}
	;

dfn
	: DFN nodes _DFN
	{
		$$ = new Dfn( nullptr, $2 );
	}
	| DFN _DFN
	{
		$$ = new Dfn( nullptr, nullptr  );
	}
	;

div
	: DIV nodes _DIV
	{
		$$ = new divN( nullptr, $2 );
	}
	| DIV _DIV
	{
		$$ = new divN( nullptr, nullptr  );
	}
	;

em
	: EM nodes _EM
	{
		$$ = new Em( nullptr, $2 );
	}
	| EM _EM
	{
		$$ = new Em( nullptr, nullptr  );
	}
	;

footer
	: FOOTER nodes _FOOTER
	{
		$$ = new Footer( nullptr, $2 );
	}
	| FOOTER _FOOTER
	{
		$$ = new Footer( nullptr, nullptr  );
	}
	;

form
	: FORM nodes _FORM
	{
		$$ = new Form( nullptr, $2 );
	}
	| FORM _FORM
	{
		$$ = new Form( nullptr, nullptr  );
	}
	;

h1
	: H1_ nodes _H1_
	{
		$$ = new H1( nullptr, $2 );
	}
	| H1_ _H1_
	{
		$$ = new H1( nullptr, nullptr  );
	}
	;

h2
	: H2_ nodes _H2_
	{
		$$ = new H2( nullptr, $2 );
	}
	| H2_ _H2_
	{
		$$ = new H2( nullptr, nullptr  );
	}
	;

h3
	: H3_ nodes _H3_
	{
		$$ = new H3( nullptr, $2 );
	}
	| H3_ _H3_
	{
		$$ = new H3( nullptr, nullptr  );
	}
	;

h4
	: H4_ nodes _H4_
	{
		$$ = new H4( nullptr, $2 );
	}
	| H4_ _H4_
	{
		$$ = new H4( nullptr, nullptr  );
	}
	;

h5
	: H5_ nodes _H5_
	{
		$$ = new H5( nullptr, $2 );
	}
	| H5_ _H5_
	{
		$$ = new H5( nullptr, nullptr  );
	}
	;

h6
	: H6_ nodes _H6_
	{
		$$ = new H6( nullptr, $2 );
	}
	| H6_ _H6_
	{
		$$ = new H6( nullptr, nullptr  );
	}
	;

header
	: HEADER nodes _HEADER
	{
		$$ = new Header( nullptr, $2 );
	}
	| HEADER _HEADER
	{
		$$ = new Header( nullptr, nullptr  );
	}
	;

i
	: I_ nodes _I_
	{
		$$ = new I( nullptr, $2 );
	}
	| I_ _I_
	{
		$$ = new I( nullptr, nullptr );
	}
	;

iframe
	: IFRAME TEXT _IFRAME
	{
		auto v = new std::vector<std::unique_ptr<Node>>();
		v->push_back(std::unique_ptr<Node>($2));
		$$ = new Iframe( nullptr, v );
	}
	| IFRAME _IFRAME
	{
		$$ = new Iframe( nullptr, nullptr );
	}
	;

ins
	: INS nodes _INS
	{
		$$ = new Ins( nullptr, $2 );
	}
	| INS _INS
	{
		$$ = new Ins( nullptr, nullptr );
	}
	;

kbd
	: KBD nodes _KBD
	{
		$$ = new Kbd( nullptr, $2 );
	}
	| KBD _KBD
	{
		$$ = new Kbd( nullptr, nullptr );
	}
	;

label
	: LABEL nodes _LABEL
	{
		$$ = new Label( nullptr, $2 );
	}
	| LABEL _LABEL
	{
		$$ = new Label( nullptr, nullptr );
	}
	;

main
	: MAIN nodes _MAIN
	{
		$$ = new Main( nullptr, $2 );
	}
	| MAIN _MAIN
	{
		$$ = new Main( nullptr, nullptr );
	}
	;

dd
	: DD nodes _DD
	{
		$$ = new Dd( nullptr, $2 );
	}
	| DD _DD
	{
		$$ = new Dd( nullptr, nullptr );
	}
	;

dt
	: DT nodes _DT
	{
		$$ = new Dt( nullptr, $2 );
	}
	| DT _DT
	{
		$$ = new Dt( nullptr, nullptr );
	}
	;

mark
	: MARK nodes _MARK
	{
		$$ = new Mark( nullptr, $2 );
	}
	| MARK _MARK
	{
		$$ = new Mark( nullptr, nullptr );
	}
	;

math
	: MATH nodes _MATH
	{
		$$ = new Math( nullptr, $2 );
	}
	| MATH _MATH
	{
		$$ = new Math( nullptr, nullptr );
	}
	;

meter
	: METER nodes _METER
	{
		$$ = new Meter( nullptr, $2 );
	}
	| METER _METER
	{
		$$ = new Meter( nullptr, nullptr );
	}
	;

nav
	: NAV nodes _NAV
	{
		$$ = new Nav( nullptr, $2 );
	}
	| NAV _NAV
	{
		$$ = new Nav( nullptr, nullptr );
	}
	;

noscript
	: NOSCRIPT nodes _NOSCRIPT
	{
		$$ = new Noscript( nullptr, $2 );
	}
	| NOSCRIPT _NOSCRIPT
	{
		$$ = new Noscript( nullptr, nullptr );
	}
	;

output
	: OUTPUT nodes _OUTPUT
	{
		$$ = new Output( nullptr, $2 );
	}
	| OUTPUT _OUTPUT
	{
		$$ = new Output( nullptr, nullptr );
	}
	;

p
	: P_ nodes _P_
	{
		$$ = new P( nullptr, $2 );
	}
	| P_ _P_
	{
		$$ = new P( nullptr, nullptr );
	}
	;

pre
	: PRE nodes _PRE
	{
		$$ = new Pre( nullptr, $2 );
	}
	| PRE _PRE
	{
		$$ = new Pre( nullptr, nullptr );
	}
	;

progress
	: PROGRESS nodes _PROGRESS
	{
		$$ = new Progress( nullptr, $2 );
	}
	| PROGRESS _PROGRESS
	{
		$$ = new Progress( nullptr, nullptr );
	}
	;

q
	: Q_ nodes _Q_
	{
		$$ = new Q( nullptr, $2 );
	}
	| Q_ _Q_
	{
		$$ = new Q( nullptr, nullptr );
	}
	;

li
	: LI nodes _LI
	{
		$$ = new Li( nullptr, $2 );
	}
	| LI _LI
	{
		$$ = new Li( nullptr, nullptr );
	}
	;

map
	: MAP nodes _MAP
	{
		$$ = new Map( nullptr, $2 );
	}
	| MAP _MAP
	{
		$$ = new Map( nullptr, nullptr );
	}
	;

area
	: AREA TEXT _AREA
	{
		auto v = new std::vector<std::unique_ptr<Node>>();
		v->push_back(std::unique_ptr<Node>($2));
		$$ = new Area( nullptr, v );
	}
	| AREA _AREA
	{
		$$ = new Area( nullptr, nullptr);
	}
	;

dl
	: DL dls _DL
	{
		$$ = new Dl( nullptr, $2 );
	}
	| DL _DL
	{
		$$ = new Dl( nullptr, nullptr);
	}
	;

dls
	: dls dd
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| dls dt
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| dls script_supporting_elements
	{
		$$ = $1;
		$$->push_back(std::unique_ptr<Node>($2));
	}
	| dd
	{
		$$ = new std::vector<std::unique_ptr<Node>> ();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| dt
	{
		$$ = new std::vector<std::unique_ptr<Node>> ();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>> ();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

fieldset
	: FIELDSET nodes _FIELDSET
	{
		$$ = new Fieldset( nullptr, nullptr);
	}
	| FIELDSET _FIELDSET
	{
		$$ = new Fieldset( nullptr, nullptr);
	}
	;

legend
	: LEGEND TEXT _LEGEND
	{
		$$ = new Legend( nullptr, nullptr);
	}
	| LEGEND _LEGEND
	{
		$$ = new Legend( nullptr, nullptr);
	}
	;

figure
	: FIGURE nodes _FIGURE
	{
		$$ = new Figure( nullptr, nullptr);
	}
	| FIGURE _FIGURE
	{
		$$ = new Figure( nullptr, nullptr);
	}
	;

figcaption
	: FIGCAPTION nodes _FIGCAPTION
	{
		$$ = new Figcaption( nullptr, nullptr);
	}
	| FIGCAPTION _FIGCAPTION
	{
		$$ = new Figcaption( nullptr, nullptr);
	}
	;

object
	: OBJECT nodes _OBJECT
	{
		$$ = new Object( nullptr, nullptr);
	}
	| OBJECT _OBJECT
	{
		$$ = new Object( nullptr, nullptr);
	}
	;

ol
	: OL ols _OL
	{
		$$ = new Ol( nullptr, nullptr);
	}
	| OL _OL
	{
		$$ = new Ol( nullptr, nullptr);
	}
	;

ols
	: ols li
	| ols script_supporting_elements
	| li
	| script_supporting_elements
	;

ruby
	: RUBY nodes _RUBY
	{
		$$ = new Ruby( nullptr, nullptr);
	}
	| RUBY _RUBY
	{
		$$ = new Ruby( nullptr, nullptr);
	}
	;

table
	: TABLE tables _TABLE
	{
		$$ = new Table( nullptr, nullptr);
	}
	| TABLE _TABLE
	{
		$$ = new Table( nullptr, nullptr);
	}
	;

tables
	: tables caption
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tables colgroup
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tables thread
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tables tbody
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tables tfoot
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tables tr
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tables script_supporting_elements
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| caption
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| colgroup
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| thread
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| tbody
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| tfoot
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| tr
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

colgroup
	: COLGROUP colgroups _COLGROUP
	{
		$$ = new Colgroup( nullptr, $2 );
	}
	| COLGROUP _COLGROUP
	{
		$$ = new Colgroup( nullptr, nullptr );
	}
	;

colgroups
	: colgroups COL
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| colgroups script_supporting_elements
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| COL
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

thread
	: THREAD threads _THREAD
	{
		$$ = new Thread( nullptr, nullptr);
	}
	| THREAD _THREAD
	{
		$$ = new Thread( nullptr, nullptr);
	}
	;

threads
	: threads tr
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| threads script_supporting_elements
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| tr
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

select
	: SELECT nodes _SELECT
	{
		$$ = new Select( nullptr, $2 );
	}
	| SELECT _SELECT
	{
		$$ = new Select( nullptr, nullptr);
	}
	;


optgroup
	: OPTGROUP optgroups _OPTGROUP
	{
		$$ = new Optgroup( nullptr, nullptr);
	}
	| OPTGROUP _OPTGROUP
	{
		$$ = new Optgroup( nullptr, nullptr);
	}
	;

optgroups
	: optgroups option
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| optgroups script_supporting_elements
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| option
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

tr
	: TR trs _TR
	{
		$$ = new Tr( nullptr, nullptr);
	}
	| TR _TR
	{
		$$ = new Tr( nullptr, nullptr);
	}
	;

trs
	: trs td
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| trs th
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| trs script_supporting_elements
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| td
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| th
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

template
	: TEMPLATE temp _TEMPLATE
	{
		$$ = new Template( nullptr, nullptr);
	}
	| TEMPLATE _TEMPLATE
	{
		$$ = new Template( nullptr, nullptr);
	}
	;

temp
	: temp PARAM
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| temp TRACK
	{
		$$ = $1;
		$1->push_back(std::unique_ptr<Node>($2));
	}
	| PARAM
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| TRACK
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

tbody
	: TBODY tbodys _TBODY
	{
		$$ = new Tbody( nullptr, nullptr);
	}
	| TBODY _TBODY
	{
		$$ = new Tbody( nullptr, nullptr);
	}
	;

tbodys
	: tbodys tr
	| tbodys script_supporting_elements
	| tr
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

tfoot
	: TFOOT tfoots _TFOOT
	{
		$$ = new Tfoot( nullptr, nullptr);
	}
	| TFOOT _TFOOT
	{
		$$ = new Tfoot( nullptr, nullptr);
	}
	;

tfoots
	: tfoots tr
	| tfoots script_supporting_elements
	| tr
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

ul
	: UL uls _UL
	{
		$$ = new Ul( nullptr, nullptr);
	}
	| UL _UL
	{
		$$ = new Ul( nullptr, nullptr);
	}
	;

uls
	: uls li
	| uls script_supporting_elements
	| li
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	| script_supporting_elements
	{
		$$ = new std::vector<std::unique_ptr<Node>>();
		$$->push_back(std::unique_ptr<Node>($1));
	}
	;

video
	: VIDEO nodes _VIDEO
	{
		$$ = new Video( nullptr, nullptr);
	}
	| VIDEO _VIDEO
	{
		$$ = new Video( nullptr, nullptr);
	}
	;

caption
	: CAPTION nodes _CAPTION
	{
		$$ = new Caption( nullptr, nullptr);
	}
	| CAPTION _CAPTION
	{
		$$ = new Caption( nullptr, nullptr);
	}
	;

svg
	: SVG nodes _SVG
	{
		$$ = new Svg( nullptr, nullptr);
	}
	| SVG _SVG
	{
		$$ = new Svg( nullptr, nullptr);
	}
	;

rp
	: RP nodes _RP
	{
		$$ = new Rp( nullptr, nullptr);
	}
	| RP _RP
	{
		$$ = new Rp( nullptr, nullptr);
	}
	;

rt
	: RT nodes _RT
	{
		$$ = new Rt( nullptr, nullptr);
	}
	| RT _RT
	{
		$$ = new Rt( nullptr, nullptr);
	}
	;

rb
	: RB nodes _RB
	{
		$$ = new Rb( nullptr, nullptr);
	}
	| RB _RB
	{
		$$ = new Rb( nullptr, nullptr);
	}
	;

rtc
	: RTC nodes _RTC
	{
		$$ = new Rtc( nullptr, nullptr);
	}
	| RTC _RTC
	{
		$$ = new Rtc( nullptr, nullptr);
	}
	;

td
	: TD nodes _TD
	{
		$$ = new Td( nullptr, nullptr);
	}
	| TD _TD
	{
		$$ = new Td( nullptr, nullptr);
	}
	;

th
	: TH nodes _TH
	{
		$$ = new Th( nullptr, nullptr);
	}
	| TH _TH
	{
		$$ = new Th( nullptr, nullptr);
	}
	;

textarea
	: TEXTAREA TEXT _TEXTAREA
	{
		$$ = new Textarea( nullptr, nullptr);
	}
	| TEXTAREA _TEXTAREA
	{
		$$ = new Textarea( nullptr, nullptr);
	}
	;

time
	: TIME nodes _TIME
	{
		$$ = new Time( nullptr, nullptr);
	}
	| TIME _TIME
	{
		$$ = new Time( nullptr, nullptr);
	}
	;

u
	: U_ nodes _U_
	{
		$$ = new U( nullptr, nullptr);
	}
	| U_ _U_
	{
		$$ = new U( nullptr, nullptr);
	}
	;

s
	: S_ nodes _S_
	{
		$$ = new S( nullptr, nullptr);
	}
	| S_ _S_
	{
		$$ = new S( nullptr, nullptr);
	}
	;

samp
	: SAMP nodes _SAMP
	{
		$$ = new Samp( nullptr, nullptr);
	}
	| SAMP _SAMP
	{
		$$ = new Samp( nullptr, nullptr);
	}
	;

script
	: SCRIPT TEXT _SCRIPT
	{
		$$ = new Script( nullptr, nullptr);
	}
	| SCRIPT _SCRIPT
	{
		$$ = new Script( nullptr, nullptr);
	}
	;

section
	: SECTION nodes _SECTION
	{
		$$ = new Section( nullptr, nullptr);
	}
	| SECTION _SECTION
	{
		$$ = new Section( nullptr, nullptr);
	}
	;

small
	: SMALL nodes _SMALL
	{
		$$ = new Small( nullptr, nullptr);
	}
	| SMALL _SMALL
	{
		$$ = new Small( nullptr, nullptr);
	}
	;

span
	: SPAN nodes _SPAN
	{
		$$ = new Span( nullptr, nullptr);
	}
	| SPAN _SPAN
	{
		$$ = new Span( nullptr, nullptr);
	}
	;

strong
	: STRONG nodes _STRONG
	{
		$$ = new Strong( nullptr, nullptr);
	}
	| STRONG _STRONG
	{
		$$ = new Strong( nullptr, nullptr);
	}
	;

sub
	: SUB nodes _SUB
	{
		$$ = new sub( nullptr, nullptr);
	}
	| SUB _SUB
	{
		$$ = new sub( nullptr, nullptr);
	}
	;

sup
	: SUP nodes _SUP
	{
		$$ = new Sup( nullptr, nullptr);
	}
	| SUP _SUP
	{
		$$ = new Sup( nullptr, nullptr);
	}
	;

var
	: VAR nodes _VAR
	{
		$$ = new Var( nullptr, nullptr);
	}
	| VAR _VAR
	{
		$$ = new Var( nullptr, nullptr);
	}
	;

script_supporting_elements
	: script
	| template
	;

statements
	: statements statement
	| statement
	;

statement
	: declaration
	| definition
	| expression
	| for
	| while
	| if
	| return
	| switch
	;

declaration
	: NAME NAME ';'
	;

definition
	: CLASS NAME '{' '}'
	;

expression
	: NAME '=' expr ';'
	;

for
	: FOR '(' ';' ')' statement
	| FOR '(' ';' ')' '{' statements '}'
	;

while
	: WHILE '(' expr ')' statement
	| WHILE '(' expr ')' '{' statements '}'
	;

if
	: IF '(' expr ')' statement
	| IF '(' expr ')' '{' statements '}'
	;

return
	: RETURN expr ';'
	| RETURN ';'
	;

switch
	: SWITCH '(' expr ')' '{' '}'
	;

expr
	: document
	;

%%
