#pragma once

#include <vector>
#include <string>
#include <cstdio>


enum Opcode
{
	ret,
	br,
	_switch,
	indirectbr,
	invoke, 
	resume, 
	catchswitch, 
	catchret,
	cleanupret,
	unreachable,

	add,
	fadd,
	sub,
	fsub,
	mul,
	fmul,
	udiv,
	sdiv,
	fdiv,
	urem,
	srem,
	frem,

	shl,
	lshr,
	ashr,
	_and,
	_or,
	_xor,

	extractelement,
	insertelement,
	shufflevector,

	extractvalue,
	insertvalue,

	_alloca,
	load,
	store,
	fence,
	cmpxchg,
	atomicrmw,
	getelementptr,

	trunc,
	zext,
	sext,
	fptrunc,
	fpext,
	fptoui,
	fptosi,
	uitofp,
	sitofp,
	ptrtoint,
	inttoptr,
	bitcast,
	addrspacecast,

	icmp,
	fcmp,
	phi,
	_select,
	call,
	va_arg,
	landingpad,
	catchpad,
	cleanuppad,

	Iva_start,
	Iva_end,
	Iva_copy,

	Igcroot,
	Igcread,
	Igcwrite,

	Ireturnaddress,
	Iframeaddress,
	Ilocalescape,
	Ilocalrecover,
	Iread_register,
	Iwrite_register,
	Istacksave,
	Istackrestore,
	Iget_dynamic_area_offset,
	Iprefetch,
	Ipcmarker,
	Ireadcyclecounter,
	Iclear_cache,
	Iinstrprof_increment,
	Iinstrprof_value_profile,

	Imemcpy,
	Imemmove,
	Imemset,
	Isqrt,
	Ipowi,
	Isin,
	Icos,
	Ipow,
	Iexp,
	Iexp2,
	Ilog,
	Ilog10,
	Ilog2,
	Ifma,
	Ifabs,
	Iminnum,
	Imaxnum,
	Icopysign,
	Ifloor,
	Iceil,
	Itrunc,
	Irint,
	Inearbyint,
	Iround,

	Ibitreverse,
	Ibswap,
	Ictpop,
	Ictlz,
	Icttz,

	Isadd_with_overflow,
	Iuadd_with_overflow,
	Issub_with_overflow,
	Iusub_with_overflow,
	Ismul_with_overflow,
	Iumul_with_overflow,

	Icanonicalize,
	Ifmuladd,

	Iconvert_to_fp16,
	Iconvert_from_fp16,

	Idbg_declare,	
	Idbg_value,

	Ieh_typeid,
	Ieh_begincatch,
	Ieh_endcatch,
	Ieh_exceptionpointer,
	Ieh_sjlj_setjmp,
	Ieh_sjlj_longjmp,
	Ieh_sjli_lsda,
	Ieh_sjli_callsite,

	Iinit_trampoline,
	Iadjust_trampoline,

	Imasked_load,
	Imasked_store,

	Imasked_gather,
	Imasked_scatter,

	Ilifetime_start,
	Ilifetime_end,
	Iinvariant_start,
	Iinvariant_end,
	Iinvariant_group_barrier,

	Ivar_annotation,
	Iptr_annotation,
	Iannotation,
	Itrap,
	Idebugtrap,
	Istackprotector,
	Istackprotectorcheck,
	Iobjectsize,
	Iexpect,
	Iassume,
	Ibitset_test,
	Idonothing
};

enum OpType
{
	Terminator 	= 1,
	Binary	   	= 2,
	BW_Binary  	= 4,
	_Vector    	= 8,
    Aggregate	= 16,
	Memory		= 32,
	Conversion	= 64,
	Other		= 128,
	VarArgIntrin= 256,
	GC			= 512,
	CodeGen		= 1024,
	StdLib		= 1024 * 2,
	BitMan		= 1024 * 4,
	ArithOverFlow=1024 * 8,
	SpecArith	=1024 * 16,
	HighPrec	= 1024* 32,
	Debug		= 1024* 64,
	Exception	= 1024* 128,
	Trampoline	= 1024* 256,
	MaskedVLS	= 1024* 512,
	MaskedVGS	= 1024* 1024,
	MemUse		= 1024* 1024 * 2,
	General		= 1024* 1024 * 4,
};

struct Instruction
{
	Opcode 	opcode;
	OpType	type;
	const char	* lexium;
};

class IL
{
public:

private:
	Instruction instruction_;
};

class BasicBlock
{
public:

private:
	std::vector<IL *> instructions_;
};


// IL entities:
//
// ABC of all LLVM IL entities
//
class ILentity
{
public:
	virtual ~ILentity() {}

	virtual bool output( FILE * fh ) = 0;

};

class ModuleLevelInlineAsm : public ILentity
{
public:
	ModuleLevelInlineAsm( const std::string & code ):code_(code) {}

	bool output( FILE * fh ) final;

private:
	std::string code_;
};

class TargetDefinition : public ILentity
{
public:
	TargetDefinition( bool isTriple, const std::string & def ):
		isTriple_(isTriple), definition_(def) 
	{
	}

	bool output( FILE * fh ) final;

private:
	bool	isTriple_;
	std::string	definition_;
};

class DepLibrary : public ILentity
{
public:

	bool output( FILE * fh ) final;

	void addLib( const std::string & lib )
	{
		libs_.push_back(lib);
	}

private:
	std::vector<std::string>	libs_;
};

class FunctionDeclaration : public ILentity
{
public:
	enum Linkage
	{
		L_none,
		L_private,
		L_internal,
		L_available_externally,
		L_linkonce,
		L_weak,
		L_common,
		L_appending,
		L_extern_weak,
		L_linkonce_odr,
		L_weak_odr,
		L_external
	};
	enum Visibility 
	{
		V_none,
		V_default,
		V_hidden,
		V_protected
	};
	enum DLLStorageClass 
	{
		DSC_none,
		DSC_dllimport,
		DSC_dllexport
	};
	enum CallingConv 
	{
		CC_none,
		CC_ccc,
		CC_fastcc,
		CC_coldcc,
		CC_cc10,
		CC_cc11,
		CC_ccN,
		CC_webkit_jscc,
		CC_anyregcc,
		CC_preserve_mostcc,
	};
	enum ParamAttr
	{
		RA_none,
		RA_zeroext,
		RA_signext,
		RA_inreg,
		RA_byval,
		RA_inalloca,
		RA_sret,
		RA_align,
		RA_noalias,
		RA_nocapture,
		RA_nest,
		RA_returned,
		RA_nonnull,
		RA_dereferenceable
	};
	enum UnnamedAddr 
	{
		UA_none,
		UA_unnamed_addr
	};
	struct FuncAttrs
	{
		unsigned alignstack;
		unsigned ssp;

		unsigned alwaysinline:1;
		unsigned builtin:1;
		unsigned cold:1;
		unsigned inlinehint:1;
		unsigned jumptable:1;
		unsigned minsize:1;
		unsigned naked:1;
		unsigned nobuiltin:1;
		unsigned noduplicate:1;
		unsigned noimplicitfloat:1;
		unsigned noinline:1;
		unsigned nonlazybind:1;
		unsigned noredzone:1;
		unsigned noreturn:1;
		unsigned nounwind:1;
		unsigned optnone:1;
		unsigned optsize:1;
		unsigned readnone:1;
		unsigned readonly:1;
		unsigned returns_twice:1;
		unsigned sanitize_address:1;
		unsigned sanitize_memory:1;
		unsigned sanitize_thread:1;
		unsigned sspreq:1;
		unsigned sspstrong:1;
		unsigned uwtable:1;
	};

	FunctionDeclaration( const std::string & name ):name_(name)
	{
	}

	bool output( FILE * fh ) override;

	const FuncAttrs	& funcAttrs() const { return funcAttrs_; }

protected:
	           Linkage linkage_;
            Visibility visibility_;
       DLLStorageClass dllStorageClass_;
           CallingConv callingConv_;
std::vector<ParamAttr> retAttrs_;
           UnnamedAddr unnamedAddr_;
 			 FuncAttrs funcAttrs_;
                  int  funcAttrsOrdinal_;
	       std::string name_;
};

class FunctionDefinition : public FunctionDeclaration
{
public:
	FunctionDefinition( const std::string & name ):FunctionDeclaration(name)
	{
	}

	bool output( FILE * fh ) final;

	void addBasicBlock( BasicBlock * bb )	{ basicBlocks_.push_back(bb); }

private:
	std::vector<BasicBlock *> basicBlocks_;
};

class UnnamedType : public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};

class NamedType : public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};

class UnnamedGlobalVariable : public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};

class NamedGlobalVariable : public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};

class Comdat : public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};

class StandaloneMetadata : public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};

class NamedMetadata: public ILentity
{
public:

	bool output( FILE * fh ) final;

private:
};


extern Instruction instructions[];
