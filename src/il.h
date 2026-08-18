#pragma once

#include <vector>
#include <string>
#include <cstdio>


enum Opcode
{
	//////////////////////////
	// LLVM instructions
	//
	add,
	addrspacecast,
	_alloca,
	_and,
	ashr,
	atomicrmw,

	bitcast,
	br,

	call,
	callbr,
	catchpad,
	catchret,
	catchswitch,
	cleanuppad,
	cleanupret,
	cmpxchg,

	extractelement,
	extractvalue,

	fadd,
	fcmp,
	fdiv,
	fence,
	fmul,
	fneg,
	fpext,
	fptosi,
	fptoui,
	fptrunc,
	freeze,
	frem,
	fsub,

	getelementptr,

	icmp,
	indirectbr,
	insertelement,
	insertvalue,
	inttoptr,
	invoke,

	landingpad,
	load,
	lshr,

	mul,

	_or,

	phi,
	ptrtoint,

	resume,
	ret,

	sdiv,
	_select,
	sext,
	shl,
	shufflevector,
	sitofp,
	srem,
	store,
	sub,
	_switch,

	to,			// Part of other instructions such as zext
	trunc,

	udiv,
	uitofp,
	unreachable,
	urem,

	va_arg,

	_xor,

	zext,

	/////////////////////////////////
	// LLVM Intrinsics
	//
	Iabs_STAR,
	Iaccess_group,
	Iaddressofreturnaddress,
	Iadjust_trampoline,
	Iannotation_STAR,
	Iarithmetic_fence,
	Iassume,

	Ibitreverse_STAR,
	Ibswap_STAR,

	Icall_preallocated_arg,
	Icall_preallocated_setup,
	Icall_preallocated_teardown,
	Icanonicalize_STAR,
	Iceil_STAR,
	Iclear_cache,
	Icodeview_annotation,
	Icompiler_used,
	Iconvert_from_fp16,
	Iconvert_to_fp16,
	Icopysign_STAR,
	Icos_STAR,
	Ictlz_STAR,
	Ictpop_STAR,
	Icttz_STAR,

	Idbg_addr,
	Idbg_assign,
	Idbg_declare,
	Idbg_value,
	Idebugtrap,
	Ideoptimize,
	Idonothing,

	Ieh_begincatch,
	Ieh_endcatch,
	Ieh_exceptionpointer,
	Ieh_sjli_callsite,
	Ieh_sjlj_longjmp,
	Ieh_sjli_lsda,
	Ieh_sjlj_setjmp,
	Ieh_typeid_for,
	Iexp_STAR,
	Iexp2_STAR,
	Iexpect,
	Iexpect_with_probability,
	Iexperimental_constrained_ceil,
	Iexperimental_constrained_cos,
	Iexperimental_constrained_exp,
	Iexperimental_constrained_exp2,
	Iexperimental_constrained_fadd,
	Iexperimental_constrained_fcmp,
	Iexperimental_constrained_fcmps,
	Iexperimental_constrained_fdiv,
	Iexperimental_constrained_floor,
	Iexperimental_constrained_fma_STAR,
	Iexperimental_constrained_fmul,
	Iexperimental_constrained_fmuladd,
	Iexperimental_constrained_fpext,
	Iexperimental_constrained_fptosi,
	Iexperimental_constrained_fptoui,
	Iexperimental_constrained_fptrunc,
	Iexperimental_constrained_frem,
	Iexperimental_constrained_fsub,
	Iexperimental_constrained_llrint,
	Iexperimental_constrained_llround,
	Iexperimental_constrained_log,
	Iexperimental_constrained_log10,
	Iexperimental_constrained_log2,
	Iexperimental_constrained_lrint,
	Iexperimental_constrained_lround,
	Iexperimental_constrained_maximum,
	Iexperimental_constrained_maxnum,
	Iexperimental_constrained_minimum,
	Iexperimental_constrained_minnum,
	Iexperimental_constrained_nearbyint,
	Iexperimental_constrained_pow,
	Iexperimental_constrained_powi,
	Iexperimental_constrained_rint,
	Iexperimental_constrained_round,
	Iexperimental_constrained_roundeven,
	Iexperimental_constrained_sin,
	Iexperimental_constrained_sitofp,
	Iexperimental_constrained_sqrt,
	Iexperimental_constrained_trunc,
	Iexperimental_constrained_uitofp,
	Iexperimental_deoptimize,
	Iexperimental_gc_get_pointer_base,
	Iexperimental_gc_get_pointer_offset,
	Iexperimental_gc_relocate,
	Iexperimental_gc_result,
	Iexperimental_gc_statepoint,
	Iexperimental_guard,
	Iexperimental_noalias_scope_decl,
	Iexperimental_patchpoint,
	Iexperimental_stackmap,
	Iexperimental_stepvector,
	Iexperimental_vector_reverse_STAR,
	Iexperimental_vector_splice_STAR,
	Iexperimental_vp_splice_STAR,
	Iexperimental_vp_strided_load,
	Iexperimental_vp_strided_store,
	Iexperimental_widenable_condition,

	Ifabs_STAR,
	Ifloor_STAR,
	Iflt_rounds,
	Ifma_STAR,
	Ifmuladd_STAR,
	Ifptosi_sat_STAR,
	Ifptoui_sat_STAR,
	Ifptrunc_round,
	Iframeaddress,
	Ifshl_STAR,
	Ifshr_STAR,

	Igcread,
	Igcroot,
	Igcwrite,
	Iget_active_lane_mask_STAR,
	Iget_dynamic_area_offset_STAR,
	Iglobal_ctors,
	Iglobal_dtors,

	Iinit_trampoline,
	Iinstrprof_cover,
	Iinstrprof_increment,
	Iinstrprof_increment_step,
	Iinstrprof_value_profile,
	Iinvariant_end,
	Iinvariant_group_barrier,
	Iinvariant_start,
	Iis_constant_STAR,
	Iis_fpclass,

	Ilaunder_invariant_group,
	Ilicm_disable,
	Ilifetime_end,
	Ilifetime_start,
	Ilinker_options,
	Illrint_STAR,
	Illround_STAR,
	Iload_relative,
	Ilocaladdress,
	Ilocalescape,
	Ilocalrecover,
	Ilog_STAR,
	Ilog10_STAR,
	Ilog2_STAR,
	Iloop_decrement_STAR,
	Iloop_decrement_reg_STAR,
	Iloop_disable_nonforced,
	Iloop_distribute_enable,
	Iloop_distribute_followup_all,
	Iloop_distribute_followup_coincident,
	Iloop_distribute_followup_fallback,
	Iloop_distribute_followup_sequential,
	Iloop_interleave_count,
	Iloop_licm_versioning_disable,
	Iloop_mustprogress,
	Iloop_parallel_accesses,
	Iloop_unroll,
	Iloop_unroll_and_jam_count,
	Iloop_unroll_and_jam_disable,
	Iloop_unroll_and_jam_enable,
	Iloop_unroll_and_jam_followup_all,
	Iloop_unroll_and_jam_followup_inner,
	Iloop_unroll_and_jam_followup_outer,
	Iloop_unroll_and_jam_followup_remainder_inner,
	Iloop_unroll_and_jam_followup_remainder_outer,
	Iloop_unroll_and_jam_full,
	Iloop_unroll_count,
	Iloop_unroll_disable,
	Iloop_unroll_enable,
	Iloop_unroll_followup,
	Iloop_unroll_followup_remainder,
	Iloop_unroll_full,
	Iloop_unroll_runtime_disable,
	Iloop_vectorize,
	Iloop_vectorize_enable,
	Iloop_vectorize_followup_all,
	Iloop_vectorize_followup_epilogue,
	Iloop_vectorize_followup_vectorized,
	Iloop_vectorize_predicate_enable,
	Iloop_vectorize_scalable_enable,
	Iloop_vectorize_width,
	Ilrint_STAR,
	Ilround_STAR,

	Imasked_compressstore_STAR,
	Imasked_expandload_STAR,
	Imasked_gather_STAR,
	Imasked_load_STAR,
	Imasked_scatter_STAR,
	Imasked_store_STAR,
	Imatrix_column_major_load_STAR,
	Imatrix_column_major_store_STAR,
	Imatrix_multiply_STAR,
	Imatrix_transpose_STAR,
	Imaximum_STAR,
	Imaxnum_STAR,
	Imemcpy,
	Imemcpy_element_unordered_atomic_STAR,
	Imemcpy_inline_STAR,
	Imemmove_STAR,
	Imemmove_element_unordered_atomic_STAR,
	Imemset_STAR,
	Imemset_element_unordered_atomic_STAR,
	Imemset_inline_STAR,
	Iminimum_STAR,
	Iminnum_STAR,

	Inearbyint_STAR,
	Invvm_barrier0,

	Iobjc_autorelease,
	Iobjc_autoreleasePoolPop,
	Iobjc_autoreleasePoolPush,
	Iobjc_autoreleaseReturnValue,
	Iobjc_clang_arc_noop_use,
	Iobjc_copyWeak,
	Iobjc_destroyWeak,
	Iobjc_initWeak,
	Iobjc_loadWeak,
	Iobjc_loadWeakRetained,
	Iobjc_moveWeak,
	Iobjc_release,
	Iobjc_retain,
	Iobjc_retainAutorelease,
	Iobjc_retainAutoreleasedReturnValue,
	Iobjc_retainAutoreleaseReturnValue,
	Iobjc_retainBlock,
	Iobjc_storeStrong,
	Iobjc_storeWeak,
	Iobjectsize,
	
	Ipcmarker,
	Ipow_STAR,
	Ipowi_STAR,
	Iprefetch,
	Ipreserve_access_index,
	Ipreserve_array_access_index,
	Ipreserve_struct_access_index,
	Ipreserve_union_access_index,
	Iptr_annotation_STAR,
	Iptrauth_sign,
	Iptrauth_sign_generic,
	Iptrauth_auth,
	Iptrauth_blend,
	Iptrauth_resign,
	Iptrauth_strip,
	Iptrmask,

	Ireadcyclecounter,
	Iread_register_STAR,
	Iread_volatile_register_STAR,
	Ireturnaddress,
	Irint_STAR,
	Iround_STAR,
	Iroundeven_STAR,
	Irtti_proxy,

	Isadd_sat_STAR,
	Isadd_with_overflow_STAR,
	Isdiv_fix_STAR,
	Isdiv_fix_sat_STAR,
	Iseh_scope_begin,
	Iseh_scope_end,
	Iseh_try_begin,
	Iseh_try_end,
	Iset_loop_iterations_STAR,
	Iset_rounding,
	Isideeffect,
	Isin_STAR,
	Ismax_STAR,
	Ismin_STAR,
	Ismul_fix_STAR,
	Ismul_fix_sat_STAR,
	Ismul_with_overflow_STAR,
	Isponentry,
	Isqrt_STAR,
	Issa_copy,
	Isshl_sat_STAR,
	Issub_sat_STAR,
	Issub_with_overflow_STAR,
	Istackguard,
	Istackprotector,
	Istackprotectorcheck,
	Istackrestore,
	Istacksave,
	Istart_loop_iterations_STAR,
	Istrip_invariant_group,
	Iswift_async_context_addr,

	Itest_set_loop_iterations_STAR,
	Itest_start_loop_iterations_STAR,
	Ithreadlocal_address,
	Ithread_pointer,
	Itrap,
	Itrunc_STAR,
	Itype_checked_load,
	Itype_test,

	Iuadd_sat_STAR,
	Iuadd_with_overflow_STAR,
	Iubsantrap,
	Iudiv_fix_STAR,
	Iudiv_fix_sat_STAR,
	Iumax_STAR,
	Iumin_STAR,
	Iumul_fix_STAR,
	Iumul_fix_sat_STAR,
	Iumul_with_overflow_STAR,
	Iused,
	Iushl_sat_STAR,
	Iusub_sat_STAR,
	Iusub_with_overflow_STAR,

	Iva_copy,
	Iva_end,
	Ivar_annotation,
	Iva_start,
	Ivector_extract_STAR,
	Ivector_insert_STAR,
	Ivector_reduce_add_STAR,
	Ivector_reduce_and_STAR,
	Ivector_reduce_fadd_STAR,
	Ivector_reduce_fmax_STAR,
	Ivector_reduce_fmin_STAR,
	Ivector_reduce_fmul_STAR,
	Ivector_reduce_mul_STAR,
	Ivector_reduce_or_STAR,
	Ivector_reduce_smax_STAR,
	Ivector_reduce_smin_STAR,
	Ivector_reduce_umax_STAR,
	Ivector_reduce_umin_STAR,
	Ivector_reduce_xor_STAR,
	Ivp_add_STAR,
	Ivp_and_STAR,
	Ivp_ashr_STAR,
	Ivp_bswap_STAR,
	Ivp_ceil_STAR,
	Ivp_copysign_STAR,
	Ivp_fabs_STAR,
	Ivp_fadd_STAR,
	Ivp_fcmp_STAR,
	Ivp_fdiv_STAR,
	Ivp_floor_STAR,
	Ivp_fma_STAR,
	Ivp_fmul_STAR,
	Ivp_fmuladd_STAR,
	Ivp_fneg_STAR,
	Ivp_fpext_STAR,
	Ivp_fptosi_STAR,
	Ivp_fptoui_STAR,
	Ivp_fptrunc_STAR,
	Ivp_frem_STAR,
	Ivp_fsub_STAR,
	Ivp_gather,
	Ivp_icmp_STAR,
	Ivp_inttoptr_STAR,
	Ivp_load,
	Ivp_lshr_STAR,
	Ivp_maxnum_STAR,
	Ivp_merge_STAR,
	Ivp_minnum_STAR,
	Ivp_mul_STAR,
	Ivp_nearbyint_STAR,
	Ivp_or_STAR,
	Ivp_ptrtoint_STAR,
	Ivp_reduce_add_STAR,
	Ivp_reduce_and_STAR,
	Ivp_reduce_fadd_STAR,
	Ivp_reduce_fmax_STAR,
	Ivp_reduce_fmin_STAR,
	Ivp_reduce_fmul_STAR,
	Ivp_reduce_mul_STAR,
	Ivp_reduce_or_STAR,
	Ivp_reduce_smax_STAR,
	Ivp_reduce_smin_STAR,
	Ivp_reduce_umax_STAR,
	Ivp_reduce_umin_STAR,
	Ivp_reduce_xor_STAR,
	Ivp_rint_STAR,
	Ivp_round_STAR,
	Ivp_roundeven_STAR,
	Ivp_roundtozero_STAR,
	Ivp_scatter,
	Ivp_sdiv_STAR,
	Ivp_select_STAR,
	Ivp_sext_STAR,
	Ivp_shl_STAR,
	Ivp_sitofp_STAR,
	Ivp_smax_STAR,
	Ivp_smin_STAR,
	Ivp_sqrt_STAR,
	Ivp_srem_STAR,
	Ivp_store,
	Ivp_sub_STAR,
	Ivp_trunc_STAR,
	Ivp_udiv_STAR,
	Ivp_uitofp_STAR,
	Ivp_umax_STAR,
	Ivp_umin_STAR,
	Ivp_urem_STAR,
	Ivp_xor_STAR,
	Ivp_zext_STAR,
	Ivscale,

	Iwrite_register
};

enum InstructionType
{
	Aggregate 	= 1 << 0,
	Binary		= 1 << 1,
	BW_Binary	= 1 << 2,
	Conversion	= 1 << 3,
	Memory		= 1 << 4,
	Other		= 1 << 5,
	Terminator	= 1 << 6,	
	Unary		= 1 << 7,
	_Vector		= 1 << 8,
};

enum IntrinsicType
{
	AccGC					= 1 <<  0, // Accurate Garbage Collection Intrinsics
	ArithOverflow			= 1 <<  1, // Arithmetic with Overflow Intrinsics
	BitMan					= 1 <<  2, // Bit Manipulation Intrinsics
	CodeGen					= 1 <<  3, // Code Generator Intrinsics
	ConstFltPt				= 1 <<  4, // Constrained Floating-Point Intrinsics
	Constlibm				= 1 <<  5, // Constrained libm-equivalent Intrinsics
	Debugger				= 1 <<  6, // Debugger Intrinsics
	ElementAtomic			= 1 <<  7, // Element Wise Atomic Memory Intrinsics
	ExceptHdl				= 1 <<  8, // Exception Handling Intrinsics
	FxPtArith				= 1 <<  9, // Fixed Point Arithmetic Intrinsics
	FltPtEnvMan				= 1 << 10, // Floating Point Environment Manipulation Intrinsics
	FltPtTest				= 1 << 11, // Floating-Point Test Intrinsics
	General					= 1 << 12, // General Intrinsics
	HlfPrecFltPt			= 1 << 13, // Half Precision Floating-Point Intrinsics
	HardwareLoop			= 1 << 14, // Hardware-Loop Intrinsics
	MaskedVecExpLdCmp		= 1 << 15, // Masked Vector Expanding Load and Compressing Store Intrinsics
	MaskedVecGathScat		= 1 << 16, // Masked Vector Gather and Scatter Intrinsics
	MaskedVecLdSt			= 1 << 17, // Masked Vector Load and Store Intrinsics
	Matrix					= 1 << 18, // Matrix Intrinsics
	MemoryUse				= 1 << 19, // Memory Use Markers
	Objective_C				= 1 << 20, // Objective-C ARC Runtime Intrinsics
	PtrAuth					= 1 << 21, // Pointer Authentication Intrinsics
	PresDebugInfo			= 1 << 22, // Preserving Debug Information Intrinsics
	SatArith				= 1 << 23, // Saturation Arithmetic Intrinsics
	SatFltPtIntCon			= 1 << 24, // Saturating floating-point to integer conversions
	SpecArith				= 1 << 25, // Specialised Arithmetic Intrinsics
	StackMap				= 1 << 26, // Stack Map Intrinsics
	StdCLib					= 1 << 27, // Standard C/C++ Library Intrinsics
	Trampoline				= 1 << 28, // Trampoline Intrinsics
	VarArg					= 1 << 29, // Variable Argument Handling Intrinsics
	VecPred					= 1 << 30, // Vector Predication Intrinsics
	VecRed					= 1 << 31  // Vector Reduction Intrinsics
};

struct Instruction
{
	Opcode			opcode;
	InstructionType	type;
	const char		* lexium;
};

struct Intrinsic
{
	Opcode 			opcode;
	IntrinsicType	type;
	const char		* lexium;
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
