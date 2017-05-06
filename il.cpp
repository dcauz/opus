#include "il.h"
#include "opus.h"


Instruction instructions[] =
{
	{ ret,		 		Terminator, 	"ret" },
	{ br,  		 		Terminator, 	"br" },
	{ _switch,	 		Terminator, 	"switch" },
    { indirectbr,		Terminator, 	"indirectbr" },
    { invoke,	 		Terminator, 	"invoke" },
	{ resume, 	 		Terminator, 	"resume" },
	{ catchswitch,		Terminator, 	"catchswitch" },
	{ catchret,			Terminator, 	"catchret" },
	{ cleanupret,		Terminator, 	"cleanupret" },
	{ unreachable,  	Terminator, 	"unreachable" },
	{ add,				Binary,			"add" },
	{ fadd,				Binary,			"fadd" },
	{ sub,				Binary,			"sub" },
	{ fsub,				Binary,			"fsub" },
	{ mul,				Binary,			"mul" },
	{ fmul,				Binary,			"fmul" },
	{ udiv,				Binary,			"udiv" },
	{ sdiv,				Binary,			"sdiv" },
	{ fdiv,				Binary,			"fdiv" },
	{ urem,				Binary,			"urem" },
	{ srem,				Binary,			"srem" },
	{ frem,				Binary,			"frem" },
	{ shl,				BW_Binary,		"shl" },
	{ lshr,				BW_Binary,		"lshr" },
	{ ashr,				BW_Binary,		"ashr" },
	{ _and,				BW_Binary,		"and" },
	{ _or,				BW_Binary,		"or" },
	{ _xor,				BW_Binary,		"xor" },
	{ extractelement,	_Vector,		"extractelement" },
	{ insertelement,	_Vector,		"insertelement" },
	{ shufflevector,	_Vector,		"shufflevector" },
	{ extractvalue,		Aggregate,		"extractvalue" },
	{ insertvalue,		Aggregate,		"insertvalue" },
	{ _alloca,			Memory,			"alloca" },
	{ load,				Memory,			"load" },
	{ store,			Memory,			"store" },
	{ fence,			Memory,			"fence" },
	{ cmpxchg,			Memory,			"cmpxchg" },
	{ atomicrmw,		Memory,			"atomicrmw" },
	{ getelementptr,	Memory,			"getelementptr" },
	{ trunc,			Conversion,		"trunc" },
	{ zext,				Conversion,		"zext" },
	{ sext,				Conversion,		"sext" },
	{ fptrunc,			Conversion,		"fptrunc" },
	{ fpext,			Conversion,		"fpext" },
	{ fptoui,			Conversion,		"fptoui" },
	{ fptosi,			Conversion,		"fptosi" },
	{ uitofp,			Conversion,		"uitofp" },
	{ sitofp,			Conversion,		"sitofp" },
	{ ptrtoint,			Conversion,		"ptrtoint" },
	{ inttoptr,			Conversion,		"inttoptr" },
	{ bitcast,			Conversion,		"bitcast" },
	{ addrspacecast,	Conversion,		"addrspacecast" },
	{ icmp,				Other,			"icmp" },
	{ fcmp,				Other,			"fcmp" },
	{ phi,				Other,			"phi" },
	{ _select,			Other,			"select" },
	{ call,				Other,			"call" },
	{ va_arg,			Other,			"va_arg" },
	{ landingpad,		Other,			"landingpad" },
	{ catchpad,			Other,			"catchpad" },
	{ cleanuppad,		Other,			"cleanuppad" },

	{ Iva_start, 		VarArgIntrin, 	"llvm.va_start" },
	{ Iva_end, 			VarArgIntrin, 	"llvm.va_end" },
	{ Iva_copy, 		VarArgIntrin, 	"llvm.va_copy" },
	{ Igcroot,			GC,				"llvm.gcroot" },
	{ Igcread,			GC,				"llvm.gcread" },
	{ Igcwrite,			GC,				"llvm.gcwrite" },
	{ Ireturnaddress,	CodeGen,		"llvm.returnaddress" },
	{ Iframeaddress,	CodeGen,		"llvm.frameaddress" },
	{ Ilocalescape,		CodeGen,		"llvm.localescape" },
	{ Ilocalrecover,	CodeGen,		"llvm.localrecover" },
	{ Iread_register,	CodeGen,		"llvm.read_register" },
	{ Iwrite_register,	CodeGen,		"llvm.write_register" },
	{ Istacksave,		CodeGen,		"llvm.stacksave" },
	{ Istackrestore,	CodeGen,		"llvm.stackrestore" },
	{ Iget_dynamic_area_offset,CodeGen,	"llvm.get.dynamic.area.offset" },
	{ Iprefetch,		CodeGen,		"llvm.prefetch" },
	{ Ipcmarker,		CodeGen,		"llvm.pcmarker" },
	{ Ireadcyclecounter,CodeGen,		"llvm.readcyclecounter" },
	{ Iclear_cache,		CodeGen,		"llvm.clear_cache" },
	{ Iinstrprof_increment,CodeGen,		"llvm.instrprof_increment" },
	{ Iinstrprof_value_profile,CodeGen,	"llvm.instrprof_value_profile" },
	{ Imemcpy,			StdLib,			"llvm.memcpy" },
	{ Imemmove,			StdLib,			"llvm.memmove" },
	{ Imemset,			StdLib,			"llvm.memset" },
	{ Isqrt,			StdLib,			"llvm.sqrt" },
	{ Ipowi,			StdLib,			"llvm.powi" },
	{ Isin,				StdLib,			"llvm.sin" },
	{ Icos,				StdLib,			"llvm.cos" },
	{ Ipow,				StdLib,			"llvm.pow" },
	{ Iexp,				StdLib,			"llvm.exp" },
	{ Iexp2,			StdLib,			"llvm.exp2" },
	{ Ilog,				StdLib,			"llvm.log" },
	{ Ilog10,			StdLib,			"llvm.log10" },
	{ Ilog2,			StdLib,			"llvm.log2" },
	{ Ifma,				StdLib,			"llvm.fma" },
	{ Ifabs,			StdLib,			"llvm.fabs" },
	{ Iminnum,			StdLib,			"llvm.minnum" },
	{ Imaxnum,			StdLib,			"llvm.maxnum" },
	{ Icopysign,		StdLib,			"llvm.copysign" },
	{ Ifloor,			StdLib,			"llvm.floor" },
	{ Iceil,			StdLib,			"llvm.ceil" },
	{ Itrunc,			StdLib,			"llvm.trunc" },
	{ Irint,			StdLib,			"llvm.rint" },
	{ Inearbyint,		StdLib,			"llvm.nearbyint" },
	{ Iround,			StdLib,			"llvm.round" },
	{ Ibitreverse,		BitMan,			"llvm.bitreverse" },
	{ Ibswap,			BitMan,			"llvm.bswap" },
	{ Ictpop,			BitMan,			"llvm.ctpop" },
	{ Ictlz,			BitMan,			"llvm.ctlz" },
	{ Icttz,			BitMan,			"llvm.cttz" },
	{ Isadd_with_overflow,ArithOverFlow,	"llvm.sadd.with.overflow" },
	{ Iuadd_with_overflow,ArithOverFlow,	"llvm.uadd.with.overflow" },
	{ Issub_with_overflow,ArithOverFlow,	"llvm.ssub.with.overflow" },
	{ Iusub_with_overflow,ArithOverFlow,	"llvm.usub.with.overflow" },
	{ Ismul_with_overflow,ArithOverFlow,	"llvm.smul.with.overflow" },
	{ Iumul_with_overflow,ArithOverFlow,	"llvm.umul.with.overflow" },
	{ Icanonicalize,	SpecArith,		"llvm.canonicalize" },
	{ Ifmuladd,			SpecArith,		"llvm.fmuladd" },
	{ Iconvert_to_fp16,	HighPrec,		"llvm.convert.to.fp16" },
	{ Iconvert_from_fp16,HighPrec,		"llvm.convert.from.fp16" },
	{ Idbg_declare,		Debug,			"llvm.dbg.declare" },
	{ Idbg_value,		Debug,			"llvm.dbg.value" },
	{ Ieh_typeid,		Exception,		"llvm.eh.typeid" },
	{ Ieh_begincatch,	Exception,		"llvm.eh.begincatch" },
	{ Ieh_endcatch,		Exception,		"llvm.eh.endcatch" },
	{ Ieh_exceptionpointer,Exception,	"llvm.eh.exceptionpointer" },
	{ Ieh_sjlj_setjmp,	Exception,		"llvm.eh.sjlj.setjmp" },
	{ Ieh_sjlj_longjmp,	Exception,		"llvm.eh.sjlj.longjmp" },
	{ Ieh_sjli_lsda,	Exception,		"llvm.eh.sjli.lsda" },
	{ Ieh_sjli_callsite,Exception,		"llvm.eh.sjli.callsite" },
	{ Iinit_trampoline,	Trampoline,		"llvm.init.trampoline" },
	{ Iadjust_trampoline,Trampoline,		"llvm.adjust.trampoline" },
	{ Imasked_load,		MaskedVLS,		"llvm.masked.load" },
	{ Imasked_store,	MaskedVLS,		"llvm.masked.store" },
	{ Imasked_gather,	MaskedVGS,		"llvm.masked.gather" },
	{ Imasked_scatter,	MaskedVGS,		"llvm.masked.scatter" },
	{ Ilifetime_start,	MemUse,			"llvm.lifetime.start" },
	{ Ilifetime_end,	MemUse,			"llvm.lifetime.end" },
	{ Iinvariant_start,	MemUse,			"llvm.invariant.start" },
	{ Iinvariant_end,	MemUse,			"llvm.invariant.end" },
	{ Iinvariant_group_barrier,	MemUse,	"llvm.invariant.group.barrier" },
	{ Ivar_annotation,	General,		"llvm.var.annotation" },
	{ Iptr_annotation,	General,		"llvm.ptr.annotation" },
	{ Iannotation,		General,		"llvm.annotation" },
	{ Itrap,			General,		"llvm.trap" },
	{ Idebugtrap,		General,		"llvm.debugtrap" },
	{ Istackprotector,	General,		"llvm.stackprotector" },
	{ Istackprotectorcheck, General,	"llvm.stackprotectorcheck" },
	{ Iobjectsize,		General,		"llvm.objectsize" },
	{ Iexpect,			General,		"llvm.expect" },
	{ Iassume,			General,		"llvm.assume" },
	{ Ibitset_test,		General,		"llvm.bitset.test" },
	{ Idonothing,		General,		"llvm.donothing" }
};

bool ModuleLevelInlineAsm::output( FILE * fh )
{
	TODO // il
	return false;
}

bool TargetDefinition::output( FILE * fh )
{
	fprintf( fh, "target %s = \"%s\"\n",
		isTriple_?"triple":"datalayout", definition_.c_str() );

	return true;
}

bool DepLibrary::output( FILE * fh )
{
TODO // il
	return false;
}

bool FunctionDeclaration::output( FILE * fh )
{
TODO // il
	return false;
}

bool FunctionDefinition::output( FILE * fh )
{
	fprintf( fh, "\ndefine @%s() #%d\n{\n",
		name_.c_str(), funcAttrsOrdinal_ );

	fprintf( fh, "}\n" );

	return true;
}

bool UnnamedType::output( FILE * fh )
{
TODO // il
	return false;
}

bool NamedType::output( FILE * fh )
{
TODO // il
	return false;
}

bool UnnamedGlobalVariable::output( FILE * fh )
{
TODO // il
	return false;
}

bool NamedGlobalVariable::output( FILE * fh )
{
TODO // il
	return false;
}

bool Comdat::output( FILE * fh )
{
TODO // il
	return false;
}

bool StandaloneMetadata::output( FILE * fh )
{
TODO // il
	return false;
}

bool NamedMetadata::output( FILE * fh )
{
TODO // il
	return false;
}
