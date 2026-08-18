#include "il.h"
#include "opus.h"


// LLVM Instructions
//
Instruction instructions[] =
{
	{ add,				Binary,			"add" },
	{ addrspacecast,	Conversion,		"addrspacecast" },
	{ _alloca,			Memory,			"alloca" },
	{ _and,				BW_Binary,		"and" },
	{ ashr,				BW_Binary,		"ashr" },
	{ atomicrmw,		Memory,			"atomicrmw" },

	{ bitcast,			Conversion,		"bitcast" },
	{ br,  		 		Terminator, 	"br" },

	{ call,				Other,			"call" },
	{ callbr,			Terminator,			"callbr" },
	{ catchpad,			Other,			"catchpad" },
	{ catchret,			Terminator, 	"catchret" },
	{ catchswitch,		Terminator, 	"catchswitch" },
	{ cleanuppad,		Other,			"cleanuppad" },
	{ cleanupret,		Terminator, 	"cleanupret" },
	{ cmpxchg,			Memory,			"cmpxchg" },

	{ extractelement,	_Vector,		"extractelement" },
	{ extractvalue,		Aggregate,		"extractvalue" },

	{ fadd,				Binary,			"fadd" },
	{ fcmp,				Other,			"fcmp" },
	{ fdiv,				Binary,			"fdiv" },
	{ fence,			Memory,			"fence" },
	{ fmul,				Binary,			"fmul" },
	{ fneg,				Unary,			"fneg" },
	{ fpext,			Conversion,		"fpext" },
	{ fptosi,			Conversion,		"fptosi" },
	{ fptoui,			Conversion,		"fptoui" },
	{ fptrunc,			Conversion,		"fptrunc" },
	{ frem,				Binary,			"frem" },
	{ fsub,				Binary,			"fsub" },

	{ getelementptr,	Memory,			"getelementptr" },

	{ icmp,				Other,			"icmp" },
	{ indirectbr,		Terminator, 	"indirectbr" },
	{ insertelement,	_Vector,		"insertelement" },
	{ insertvalue,		Aggregate,		"insertvalue" },
	{ inttoptr,			Conversion,		"inttoptr" },
	{ invoke,	 		Terminator, 	"invoke" },

	{ landingpad,		Other,			"landingpad" },
	{ load,				Memory,			"load" },
	{ lshr,				BW_Binary,		"lshr" },

	{ mul,				Binary,			"mul" },

	{ _or,				BW_Binary,		"or" },

	{ phi,				Other,			"phi" },
	{ ptrtoint,			Conversion,		"ptrtoint" },

	{ resume, 	 		Terminator, 	"resume" },
	{ ret,		 		Terminator, 	"ret" },

	{ sdiv,				Binary,			"sdiv" },
	{ _select,			Other,			"select" },
	{ sext,				Conversion,		"sext" },
	{ shl,				BW_Binary,		"shl" },
	{ shufflevector,	_Vector,		"shufflevector" },
	{ sitofp,			Conversion,		"sitofp" },
	{ srem,				Binary,			"srem" },
	{ store,			Memory,			"store" },
	{ sub,				Binary,			"sub" },
	{ _switch,	 		Terminator, 	"switch" },

	{ trunc,			Conversion,		"trunc" },

	{ udiv,				Binary,			"udiv" },
	{ uitofp,			Conversion,		"uitofp" },
	{ unreachable,  	Terminator, 	"unreachable" },
	{ urem,				Binary,			"urem" },

	{ va_arg,			Other,			"va_arg" },

	{ _xor,				BW_Binary,		"xor" },

	{ zext,				Conversion,		"zext" }
};

// LLVM Intrinsics
//
Intrinsic intrinsic [] =
{
	{ Iabs_STAR,							StdCLib,		"llvm.abs.*" },
	{ Iaddressofreturnaddress,				CodeGen,		"llvm.addressofreturnaddress" },
	{ Iadjust_trampoline,					Trampoline,		"llvm.adjust.trampoline" },
	{ Iannotation_STAR,						General,		"llvm.annotation.*" },
	{ Iarithmetic_fence,					General,		"llvm.arithemic.fence" },
	{ Iassume,								General,		"llvm.assume" },

	{ Ibitreverse_STAR,						BitMan,			"llvm.bitreverse.*" },
	{ Ibswap_STAR,							BitMan,			"llvm.bswap.*" },

	{ Icall_preallocated_arg,				CodeGen,		"llvm.call.preallocated.arg" },
	{ Icall_preallocated_setup,				CodeGen,		"llvm.call.preallocated.setup" },
	{ Icall_preallocated_teardown,			CodeGen,		"llvm.call.preallocated.teardown" },
	{ Icanonicalize_STAR,					SpecArith,		"llvm.canonicalize.*" },
	{ Iceil_STAR,							StdCLib,		"llvm.ceil.*" },
	{ Iclear_cache,							CodeGen,		"llvm.clear_cache" },
	{ Icodeview_annotation,					General,		"llvm.codeview.annotation" },
	{ Iconvert_from_fp16,					HlfPrecFltPt,	"llvm.convert.from.fp16" },
	{ Iconvert_to_fp16,						HlfPrecFltPt,	"llvm.convert.to.fp16" },
	{ Icopysign_STAR,						StdCLib,		"llvm.copysign.*" },
	{ Icos_STAR,							StdCLib,		"llvm.cos.*" },
	{ Ictlz_STAR,							BitMan,			"llvm.ctlz.*" },
	{ Ictpop_STAR,							BitMan,			"llvm.ctpop.*" },
	{ Icttz_STAR,							BitMan,			"llvm.cttz.*" },
	{ Iconvert_to_fp16,						HlfPrecFltPt,	"llvm.convert.to.fp16" },
	{ Iconvert_from_fp16,					HlfPrecFltPt,	"llvm.convert.from.fp16" },

	{ Idbg_addr,							Debugger,		"llvm.dbg.addr" },
	{ Idbg_assign,							Debugger,		"llvm.dbg.assign" },
	{ Idbg_declare,							Debugger,		"llvm.dbg.declare" },
	{ Idbg_value,							Debugger,		"llvm.dbg.value" },
	{ Idebugtrap,							General,		"llvm.debugtrap" },
	{ Idonothing,							General,		"llvm.donothing" },

	{ Ieh_begincatch,						ExceptHdl,		"llvm.eh.begincatch" },
	{ Ieh_endcatch,							ExceptHdl,		"llvm.eh.endcatch" },
	{ Ieh_exceptionpointer,					ExceptHdl,		"llvm.eh.exceptionpointer" },
	{ Ieh_sjli_callsite,					ExceptHdl,		"llvm.eh.sjli.callsite" },
	{ Ieh_sjlj_longjmp,						ExceptHdl,		"llvm.eh.sjlj.longjmp" },
	{ Ieh_sjli_lsda,						ExceptHdl,		"llvm.eh.sjli.lsda" },
	{ Ieh_sjlj_setjmp,						ExceptHdl,		"llvm.eh.sjlj.setjmp" },
	{ Ieh_typeid_for,						ExceptHdl,		"llvm.eh.typeid.for" },
	{ Iexp_STAR,							StdCLib,		"llvm.exp.*" },
	{ Iexp2_STAR,							StdCLib,		"llvm.exp2.*" },
	{ Iexpect,								General,		"llvm.expect" },
	{ Iexpect_with_probability,				General,		"llvm.expect.with.probability" },
	{ Iexperimental_constrained_ceil,		Constlibm,		"llvm.experimental.constrained.ceil" },
	{ Iexperimental_constrained_cos,		Constlibm,		"llvm.experimental.constrained.cos" },
	{ Iexperimental_constrained_exp,		Constlibm,		"llvm.experimental.constrained.exp" },
	{ Iexperimental_constrained_exp2,		Constlibm,		"llvm.experimental.constrained.exp2" },
	{ Iexperimental_constrained_fadd,		ConstFltPt,		"llvm.experimental.constrained.fadd" },
	{ Iexperimental_constrained_fcmp,		ConstFltPt,		"llvm.experimental.constrained.fcmp" },
	{ Iexperimental_constrained_fcmps,		ConstFltPt,		"llvm.experimental.constrained.fcmps" },
	{ Iexperimental_constrained_fdiv,		ConstFltPt,		"llvm.experimental.constrained.fdiv" },
	{ Iexperimental_constrained_floor,		Constlibm,		"llvm.experimental.constrained.floor" },
	{ Iexperimental_constrained_fma_STAR,	ConstFltPt,		"llvm.experimental.constrained.fma.*" },
	{ Iexperimental_constrained_fmul,		ConstFltPt,		"llvm.experimental.constrained.fmul" },
	{ Iexperimental_constrained_fmuladd,	ConstFltPt,		"llvm.experimental.constrained.fmuladd" },
	{ Iexperimental_constrained_fpext,		ConstFltPt,		"llvm.experimental.constrained.fpext" },
	{ Iexperimental_constrained_fptosi,		ConstFltPt,		"llvm.experimental.constrained.fptosi" },
	{ Iexperimental_constrained_fptoui,		ConstFltPt,		"llvm.experimental.constrained.fptoui" },
	{ Iexperimental_constrained_fptrunc,	ConstFltPt,		"llvm.experimental.constrained.fptrunc" },
	{ Iexperimental_constrained_frem,		ConstFltPt,		"llvm.experimental.constrained.frem" },
	{ Iexperimental_constrained_fsub,		ConstFltPt,		"llvm.experimental.constrained.fsub" },
	{ Iexperimental_constrained_llrint,		Constlibm,		"llvm.experimental.constrained.llrint" },
	{ Iexperimental_constrained_llround,	Constlibm,		"llvm.experimental.constrained.llround" },
	{ Iexperimental_constrained_log,		Constlibm,		"llvm.experimental.constrained.log" },
	{ Iexperimental_constrained_log10,		Constlibm,		"llvm.experimental.constrained.log10" },
	{ Iexperimental_constrained_log2,		Constlibm,		"llvm.experimental.constrained.log2" },
	{ Iexperimental_constrained_lrint,		Constlibm,		"llvm.experimental.constrained.lrint" },
	{ Iexperimental_constrained_lround,		Constlibm,		"llvm.experimental.constrained.lround" },
	{ Iexperimental_constrained_maximum,	Constlibm,		"llvm.experimental.constrained.maximum" },
	{ Iexperimental_constrained_maxnum,		Constlibm,		"llvm.experimental.constrained.maxnum" },
	{ Iexperimental_constrained_minimum,	Constlibm,		"llvm.experimental.constrained.minimum" },
	{ Iexperimental_constrained_minnum,		Constlibm,		"llvm.experimental.constrained.minnum" },
	{ Iexperimental_constrained_nearbyint,	Constlibm,		"llvm.experimental.constrained.nearbyint" },
	{ Iexperimental_constrained_pow,		Constlibm,		"llvm.experimental.constrained.pow" },
	{ Iexperimental_constrained_powi,		Constlibm,		"llvm.experimental.constrained.powi" },
	{ Iexperimental_constrained_rint,		Constlibm,		"llvm.experimental.constrained.rint" },
	{ Iexperimental_constrained_round,		Constlibm,		"llvm.experimental.constrained.round" },
	{ Iexperimental_constrained_roundeven,	Constlibm,		"llvm.experimental.constrained.roundeven" },
	{ Iexperimental_constrained_sin,		Constlibm,		"llvm.experimental.constrained.sin" },
	{ Iexperimental_constrained_sitofp,		ConstFltPt,		"llvm.experimental.constrained.sitofp" },
	{ Iexperimental_constrained_sqrt,		Constlibm,		"llvm.experimental.constrained.sqrt" },
	{ Iexperimental_constrained_trunc,		Constlibm,		"llvm.experimental.constrained.trunc" },
	{ Iexperimental_constrained_uitofp,		ConstFltPt,		"llvm.experimental.constrained.uitofp" },
	{ Iexperimental_deoptimize,				General,		"llvm.experimental.deoptimize" },
	{ Iexperimental_gc_get_pointer_base,	AccGC,			"llvm.experimental.gc.get.pointer.base" },
	{ Iexperimental_gc_get_pointer_offset,	AccGC,			"llvm.experimental.gc.get.pointer.offset" },
	{ Iexperimental_gc_relocate,			AccGC,			"llvm.experimental.gc.relocate" },
	{ Iexperimental_gc_result,				AccGC,			"llvm.experimental.gc.result" },
	{ Iexperimental_gc_statepoint,			AccGC,			"llvm.experimental.gc.statepoint" },
	{ Iexperimental_guard,					General,		"llvm.experimental.guard" },
	{ Iexperimental_noalias_scope_decl,		Constlibm,		"llvm.experimental.noalias.scope.decl" },
	{ Iexperimental_patchpoint,				StackMap,		"llvm.experimental.patchpoint" },
	{ Iexperimental_stackmap,				StackMap,		"llvm.experimental.stackmap" },
	{ Iexperimental_stepvector,				VecRed,			"llvm.experimental.stepvector" },
	{ Iexperimental_vector_reverse_STAR,	VecRed,			"llvm.experimental.vector." },
	{ Iexperimental_vector_splice_STAR,		VecRed,			"llvm.experimental.vector." },
	{ Iexperimental_vp_splice_STAR,			VecPred,		"llvm.experimental.vp.splice.*" },
	{ Iexperimental_vp_strided_load,		VecPred,		"llvm.experimental.vp.strided.load" },
	{ Iexperimental_vp_strided_store,		VecPred,		"llvm.experimental.vp.strided.store" },
	{ Iexperimental_widenable_condition,	General,		"llvm.experimental.widenable.condition" },

	{ Ifabs_STAR,							StdCLib,		"llvm.fabs.*" },
	{ Ifloor_STAR,							StdCLib,		"llvm.floor.*" },
	{ Iflt_rounds,							FltPtEnvMan,	"llvm.flt_rounds" },
	{ Ifma_STAR,							StdCLib,		"llvm.fma.*" },
	{ Iframeaddress,						CodeGen,		"llvm.frameaddress" },
	{ Ifmuladd_STAR,						SpecArith,		"llvm.fmuladd.*" },
	{ Ifptosi_sat_STAR,						SatFltPtIntCon,	"llvm.fptosi.sat.*" },
	{ Ifptoui_sat_STAR,						SatFltPtIntCon,	"llvm.fptoui.sat.*" },
	{ Ifptrunc_round,						PresDebugInfo,	"llvm.fptrunc_round" },
	{ Iframeaddress,						AccGC,			"llvm.frameaddress" },
	{ Ifshl_STAR,							StdCLib,		"llvm.fshl.*" },
	{ Ifshr_STAR,							StdCLib,		"llvm.fshr.*" },

	{ Igcread,								AccGC,			"llvm.gcread" },
	{ Igcroot,								AccGC,			"llvm.gcroot" },
	{ Igcwrite,								AccGC,			"llvm.gcwrite" },
	{ Iget_active_lane_mask_STAR,			VecPred,		"llvm.get.active.lane.mask.*" },
	{ Iget_dynamic_area_offset_STAR,		CodeGen,		"llvm.get.dynamic.area.offset.*" },

	{ Iinit_trampoline,						Trampoline,		"llvm.init.trampoline" },
	{ Iinstrprof_cover,						CodeGen,		"llvm.instrprof.cover" },
	{ Iinstrprof_increment,					CodeGen,		"llvm.instrprof.increment" },
	{ Iinstrprof_increment_step,			CodeGen,		"llvm.instrprof.increment.step" },
	{ Iinstrprof_value_profile,				CodeGen,		"llvm.instrprof.value.profile" },
	{ Iinvariant_start,						MemoryUse,		"llvm.invariant.start" },
	{ Iinvariant_end,						MemoryUse,		"llvm.invariant.end" },
	{ Iis_constant_STAR,					General,		"llvm.constant.*" },
	{ Iis_fpclass,							FltPtTest,		"llvm.is.fpclass" },


	{ Ilaunder_invariant_group,				MemoryUse,		"llvm.launder.invariant.group" },
	{ Ilifetime_end,						MemoryUse,		"llvm.lifetime.end" },
	{ Ilifetime_start,						MemoryUse,		"llvm.lifetime.start" },
	{ Illrint_STAR,							StdCLib,		"llvm.llrint.*" },
	{ Illround_STAR,						StdCLib,		"llvm.llround.*" },
	{ Iload_relative,						General,		"llvm.load.relative" },
	{ Ilocaladdress,						CodeGen,		"llvm.localaddress" },
	{ Ilocalescape,							CodeGen,		"llvm.localescape" },
	{ Ilocalrecover,						CodeGen,		"llvm.localrecover" },
	{ Ilog_STAR,							StdCLib,		"llvm.log.*" },
	{ Ilog10_STAR,							StdCLib,		"llvm.log10.*" },
	{ Ilog2_STAR,							StdCLib,		"llvm.log2.*" },
	{ Iloop_decrement_STAR,					HardwareLoop,	"llvm.loop.decrement.*" },
	{ Iloop_decrement_reg_STAR,				HardwareLoop,	"llvm.loop.decrement.reg.*" },
	{ Ilrint_STAR,							StdCLib,			"llvm.lrint.*" },
	{ Ilround_STAR,							StdCLib,			"llvm.lround.*" },

	{ Imasked_compressstore_STAR,			MaskedVecExpLdCmp,	"llvm.masked.compressstore.*" },
	{ Imasked_expandload_STAR,				MaskedVecExpLdCmp,	"llvm.masked.expandload.*" },
	{ Imasked_gather_STAR,					MaskedVecGathScat,	"llvm.masked.gather.*" },
	{ Imasked_load_STAR,					MaskedVecLdSt,		"llvm.masked.load.*" },
	{ Imasked_scatter_STAR,					MaskedVecGathScat,	"llvm.masked.scatter.*" },
	{ Imasked_store_STAR,					MaskedVecLdSt,		"llvm.masked.store.*" },
	{ Imatrix_column_major_load_STAR,		Matrix,				"llvm.matrix.column.major.load.*" },
	{ Imatrix_column_major_store_STAR,		Matrix,				"llvm.matrix.column.major.store.*" },
	{ Imatrix_multiply_STAR,				Matrix,				"llvm.matrix.column.multiply.*" },
	{ Imatrix_transpose_STAR,				Matrix,				"llvm.matrix.column.transpose.*" },
	{ Imaximum_STAR,						StdCLib,			"llvm.maximum.*" },
	{ Imaxnum_STAR,							StdCLib,			"llvm.maxnum.*" },
	{ Imemcpy,								StdCLib,			"llvm.memcpy" },
	{ Imemcpy_element_unordered_atomic_STAR,ElementAtomic,		"llvm.memcpy.element.unordered.atomic.*" },
	{ Imemcpy_inline_STAR,					StdCLib,			"llvm.memcpy.inline.*" },
	{ Imemmove_STAR,						StdCLib,			"llvm.memmove.*" },
	{ Imemmove_element_unordered_atomic_STAR,ElementAtomic,		"llvm.memmove.element.unordered.atomic.*" },
	{ Imemset_STAR,							StdCLib,			"llvm.memset.*" },
	{ Imemset_element_unordered_atomic_STAR,ElementAtomic,		"llvm.memset.element.unordered.atomic.*" },
	{ Imemset_inline_STAR,					StdCLib,			"llvm.memset.inline.*" },
	{ Iminimum_STAR,						StdCLib,			"llvm.minimum.*" },
	{ Iminnum_STAR,							StdCLib,			"llvm.minnum.*" },

	{ Inearbyint_STAR,						StdCLib,			"llvm.nearbyint.*" },
	{ Invvm_barrier0,						General,			"llvm.nvvm.barrier0" },

	{ Iobjc_autorelease,					Objective_C,		"llvm.objc.autorelease" },
	{ Iobjc_autoreleasePoolPop,				Objective_C,		"llvm.objc.autoreleasePoolPop" },
	{ Iobjc_autoreleasePoolPush,			Objective_C,		"llvm.objc.autoreleasePoolPush" },
	{ Iobjc_autoreleaseReturnValue,			Objective_C,		"llvm.objc.autoreleaseReturnValue" },
	{ Iobjc_copyWeak,						Objective_C,		"llvm.copyWeak" },
	{ Iobjc_destroyWeak,					Objective_C,		"llvm.destroyWeak" },
	{ Iobjc_initWeak,						Objective_C,		"llvm.initWeak" },
	{ Iobjc_loadWeak,						Objective_C,		"llvm.loadWeak" },
	{ Iobjc_loadWeakRetained,				Objective_C,		"llvm.loadWeakRetained" },
	{ Iobjc_moveWeak,						Objective_C,		"llvm.moveWeak" },
	{ Iobjc_release,						Objective_C,		"llvm.release" },
	{ Iobjc_retain,							Objective_C,		"llvm.retain" },
	{ Iobjc_retainAutorelease,				Objective_C,		"llvm.retainAutorelease" },
	{ Iobjc_retainAutoreleasedReturnValue,	Objective_C,		"llvm.retainAutoreleasedReturnValue" },
	{ Iobjc_retainAutoreleaseReturnValue,	Objective_C,		"llvm.retainAutoreleaseReturnValue" },
	{ Iobjc_retainBlock,					Objective_C,		"llvm.objc.retainBlock" },
	{ Iobjc_storeStrong,					Objective_C,		"llvm.objc.storeStrong" },
	{ Iobjc_storeWeak,						Objective_C,		"llvm.objc.storeWeak" },

	{ Iobjectsize,							General,			"llvm.objectsize" },

	{ Ipcmarker,							CodeGen,			"llvm.pcmarker" },
	{ Ipow_STAR,							StdCLib,			"llvm.pow.*" },
	{ Ipowi_STAR,							StdCLib,			"llvm.powi.*" },
	{ Iprefetch,							CodeGen,			"llvm.prefetch" },
	{ Ipreserve_access_index,				PresDebugInfo,		"llvm.preserve.access.index" },
	{ Ipreserve_array_access_index,			PresDebugInfo,		"llvm.preserve.array.access.index"},
	{ Ipreserve_struct_access_index,		PresDebugInfo,		"llvm.preserve.struct.access.index"},
	{ Ipreserve_union_access_index,			PresDebugInfo,		"llvm.preserve.union.access.index"},
	{ Iptr_annotation_STAR,					General,			"llvm.ptr.annotation.*" },
	{ Iptrauth_sign,						PtrAuth,			"llvm.ptrauth.sign" },
	{ Iptrauth_sign_generic,				PtrAuth,			"llvm.ptrauth.sign_generic" },
	{ Iptrauth_auth,						PtrAuth,			"llvm.ptrauth.auth" },
	{ Iptrauth_blend,						PtrAuth,			"llvm.ptrauth.blend" },
	{ Iptrauth_resign,						PtrAuth,			"llvm.ptrauth.resign" },
	{ Iptrauth_strip,						PtrAuth,			"llvm.ptrauth.strip" },
	{ Iptrmask,								General,			"llvm.ptrmask" },

	{ Ireadcyclecounter,					CodeGen,			"llvm.readcyclecounter" },
	{ Iread_register_STAR,					CodeGen,			"llvm.read.register.*" },
	{ Iread_volatile_register_STAR,			CodeGen,			"llvm.read.volatile.register.*" },
	{ Ireturnaddress,						CodeGen,			"llvm.returnaddress" },
	{ Irint_STAR,							StdCLib,			"llvm.rint.*" },
	{ Iround_STAR,							StdCLib,			"llvm.round.*" },
	{ Iroundeven_STAR,						StdCLib,			"llvm.roundeven.*" },

	{ Isadd_sat_STAR,						SatArith,			"llvm.sadd.sat.*" },
	{ Isadd_with_overflow_STAR,				ArithOverflow,		"llvm.sadd.with.overflow.*" },
	{ Isdiv_fix_STAR,						FxPtArith,			"llvm.sdiv.fix.*" },
	{ Isdiv_fix_sat_STAR,					FxPtArith,			"llvm.sdiv.fix.sat.*" },
	{ Iseh_scope_begin,						CodeGen,			"llvm.seh.scope.begin" },
	{ Iseh_scope_end,						CodeGen,			"llvm.seh.scope.end" },
	{ Iseh_try_begin,						CodeGen,			"llvm.seh.try.begin" },
	{ Iseh_try_end,							CodeGen,			"llvm.seh.try.end" },
	{ Iset_loop_iterations_STAR,			HardwareLoop,		"llvm.set.loop.iterations.*" },
	{ Iset_rounding,						FltPtEnvMan,		"llvm.set.rounding" },
	{ Isideeffect,							General,			"llvm.sideeffect" },
	{ Isin_STAR,							StdCLib,			"llvm.sin.*" },
	{ Ismax_STAR,							StdCLib,			"llvm.max.*" },
	{ Ismin_STAR,							StdCLib,			"llvm.min.*" },
	{ Ismul_fix_STAR,						FxPtArith,			"llvm.smul.fix.*" },
	{ Ismul_fix_sat_STAR,					FxPtArith,			"llvm.smul.with.overflow.*" },
	{ Ismul_with_overflow_STAR,				ArithOverflow,		"llvm.smul.with.overflow.*" },
	{ Isponentry,							CodeGen,			"llvm.sponentry" },
	{ Isqrt_STAR,							StdCLib,			"llvm.sqrt.*" },
	{ Issa_copy,							General,			"llvm.ssa.copy" },
	{ Isshl_sat_STAR,						SatArith,			"llvm.sshl.sat.*" },
	{ Issub_sat_STAR,						SatArith,			"llvm.ssub.sat.*" },
	{ Issub_with_overflow_STAR,				ArithOverflow,		"llvm.ssub.with.overflow.*" },
	{ Istackguard,							General,			"llvm.stackguard" },
	{ Istackprotector,						General,			"llvm.stackprotector" },
	{ Istackprotectorcheck,					General,			"llvm.stackprotectorcheck" },
	{ Istackrestore,						CodeGen,			"llvm.stackrestore" },
	{ Istacksave,							CodeGen,			"llvm.stacksave" },
	{ Istart_loop_iterations_STAR,			HardwareLoop,		"llvm.start.loop.iterations.*" },
	{ Istrip_invariant_group,				MemoryUse,			"llvm.strip.invariant.group" },
	{ Iswift_async_context_addr,			CodeGen,			"llvm.swift.async.context.addr" },

	{ Itest_set_loop_iterations_STAR,		HardwareLoop,		"llvm.test.set.loop.iterations.*" },
	{ Itest_start_loop_iterations_STAR,		HardwareLoop,		"llvm.test.start.loop.iterations.*" },
	{ Ithreadlocal_address,					General,			"llvm.threadlocal_address" },
	{ Ithread_pointer,						CodeGen,			"llvm.thread_pointer" },
	{ Itrap,								General,			"llvm.trap" },
	{ Itrunc_STAR,							StdCLib,			"llvm.trunc.*" },
	{ Itype_checked_load,					General,			"llvm.type.checked.load" },
	{ Itype_test,							General,			"llvm.type.test" },

	{ Iuadd_sat_STAR,						SatArith,			"llvm.uadd.sat.*" },
	{ Iuadd_with_overflow_STAR,				ArithOverflow,		"llvm.uadd.with.overflow.*" },
	{ Iubsantrap,							General,			"llvm.ubsantrap" },
	{ Iudiv_fix_STAR,						FxPtArith,			"llvm.udiv.div.*" },
	{ Iudiv_fix_sat_STAR,					FxPtArith,			"llvm.udiv.div.sat.*" },
	{ Iumax_STAR,							StdCLib,			"llvm.umax.*" },
	{ Iumin_STAR,							StdCLib,			"llvm.umin.*" },
	{ Iumul_fix_STAR,						FxPtArith,			"llvm.umul.fix.*" },
	{ Iumul_fix_sat_STAR,					FxPtArith,			"llvm.umul.fix.sat.*" },
	{ Iumul_with_overflow_STAR,				ArithOverflow,		"llvm.umul.with.overflow.*" },
	{ Iushl_sat_STAR,						SatArith,			"llvm.ushl.sat.*" },
	{ Iusub_sat_STAR,						SatArith,			"llvm.usub.sat.*" },
	{ Iusub_with_overflow_STAR,				ArithOverflow,		"llvm.usub.with.overflow.*" },

	{ Iva_copy, 							VarArg,		 		"llvm.va_copy" },
	{ Iva_end, 								VarArg, 			"llvm.va_end" },
	{ Ivar_annotation,						General,			"llvm.var.annotation" },
	{ Iva_start, 							VarArg, 			"llvm.va_start" },
	{ Ivector_extract_STAR,					VecRed,				"llvm.vector.extract.*" },
	{ Ivector_insert_STAR,					VecRed,				"llvm.vector.insert.*" },
	{ Ivector_reduce_add_STAR,				VecRed,				"llvm.vector.reduce.add.*" },
	{ Ivector_reduce_and_STAR,				VecRed,				"llvm.vector.reduce.and.*" },
	{ Ivector_reduce_fadd_STAR,				VecRed,				"llvm.vector.reduce.fadd.*" },
	{ Ivector_reduce_fmax_STAR,				VecRed,				"llvm.vector.reduce.fmax.*" },
	{ Ivector_reduce_fmin_STAR,				VecRed,				"llvm.vector.reduce.fmin.*" },
	{ Ivector_reduce_fmul_STAR,				VecRed,				"llvm.vector.reduce.fmul.*" },
	{ Ivector_reduce_mul_STAR,				VecRed,				"llvm.vector.reduce.mul.*" },
	{ Ivector_reduce_or_STAR,				VecRed,				"llvm.vector.reduce.or.*" },
	{ Ivector_reduce_smax_STAR,				VecRed,				"llvm.vector.reduce.smax.*" },
	{ Ivector_reduce_smin_STAR,				VecRed,				"llvm.vector.reduce.smin.*" },
	{ Ivector_reduce_umax_STAR,				VecRed,				"llvm.vector.reduce.umax.*" },
	{ Ivector_reduce_umin_STAR,				VecRed,				"llvm.vector.reduce.umin.*" },
	{ Ivector_reduce_xor_STAR,				VecRed,				"llvm.vector.reduce.xor.*" },
	{ Ivp_add_STAR,							VecPred,			"llvm.vp.add.*" },
	{ Ivp_and_STAR,							VecPred,			"llvm.vp.and.*" },
	{ Ivp_ashr_STAR,						VecPred,			"llvm.vp.ashr.*" },
	{ Ivp_bswap_STAR,						VecPred,			"llvm.vp.bswap.*" },
	{ Ivp_ceil_STAR,						VecPred,			"llvm.vp.ceil.*" },
	{ Ivp_copysign_STAR,					VecPred,			"llvm.vp.copysign.*" },
	{ Ivp_fabs_STAR,						VecPred,			"llvm.vp.fabs.*" },
	{ Ivp_fadd_STAR,						VecPred,			"llvm.vp.fadd.*" },
	{ Ivp_fcmp_STAR,						VecPred,			"llvm.vp.fcmp.*" },
	{ Ivp_fdiv_STAR,						VecPred,			"llvm.vp.fdiv.*" },
	{ Ivp_floor_STAR,						VecPred,			"llvm.vp.floor.*" },
	{ Ivp_fma_STAR,							VecPred,			"llvm.vp.fma.*" },
	{ Ivp_fmul_STAR,						VecPred,			"llvm.vp.fmul.*" },
	{ Ivp_fmuladd_STAR,						VecPred,			"llvm.vp.fmuladd.*" },
	{ Ivp_fneg_STAR,						VecPred,			"llvm.vp.fneg.*" },
	{ Ivp_fpext_STAR,						VecPred,			"llvm.vp.fpext.*" },
	{ Ivp_fptosi_STAR,						VecPred,			"llvm.vp.fptosi.*" },
	{ Ivp_fptoui_STAR,						VecPred,			"llvm.vp.fptoui.*" },
	{ Ivp_fptrunc_STAR,						VecPred,			"llvm.vp.fptrunc.*" },
	{ Ivp_frem_STAR,						VecPred,			"llvm.vp.frem.*" },
	{ Ivp_fsub_STAR,						VecPred,			"llvm.vp.fsub.*" },
	{ Ivp_gather,							VecPred,			"llvm.vp.gather" },
	{ Ivp_icmp_STAR,						VecPred,			"llvm.vp.icmp.*" },
	{ Ivp_inttoptr_STAR,					VecPred,			"llvm.vp.inttoptr.*" },
	{ Ivp_load,								VecPred,			"llvm.vp.load" },
	{ Ivp_lshr_STAR,						VecPred,			"llvm.vp.lshr.*" },
	{ Ivp_maxnum_STAR,						VecPred,			"llvm.vp.maxnum.*" },
	{ Ivp_merge_STAR,						VecPred,			"llvm.vp.merge.*" },
	{ Ivp_minnum_STAR,						VecPred,			"llvm.vp.minnum.*" },
	{ Ivp_mul_STAR,							VecPred,			"llvm.vp.mul.*" },
	{ Ivp_nearbyint_STAR,					VecPred,			"llvm.vp.nearbyint.*" },
	{ Ivp_or_STAR,							VecPred,			"llvm.vp.or.*" },
	{ Ivp_ptrtoint_STAR,					VecPred,			"llvm.vp.ptrtoint.*" },
	{ Ivp_reduce_add_STAR,					VecPred,			"llvm.vp.reduce.add.*" },
	{ Ivp_reduce_and_STAR,					VecPred,			"llvm.vp.reduce.and.*" },
	{ Ivp_reduce_fadd_STAR,					VecPred,			"llvm.vp.reduce.fadd.*" },
	{ Ivp_reduce_fmax_STAR,					VecPred,			"llvm.vp.reduce.fmax.*" },
	{ Ivp_reduce_fmin_STAR,					VecPred,			"llvm.vp.reduce.fmin.*" },
	{ Ivp_reduce_fmul_STAR,					VecPred,			"llvm.vp.reduce.fmul.*" },
	{ Ivp_reduce_mul_STAR,					VecPred,			"llvm.vp.reduce.mul.*" },
	{ Ivp_reduce_or_STAR,					VecPred,			"llvm.vp.reduce.or.*" },
	{ Ivp_reduce_smax_STAR,					VecPred,			"llvm.vp.reduce.smax.*" },
	{ Ivp_reduce_smin_STAR,					VecPred,			"llvm.vp.reduce.smin.*" },
	{ Ivp_reduce_umax_STAR,					VecPred,			"llvm.vp.reduce.umax.*" },
	{ Ivp_reduce_umin_STAR,					VecPred,			"llvm.vp.reduce.umin.*" },
	{ Ivp_reduce_xor_STAR,					VecPred,			"llvm.vp.reduce.xor*" },
	{ Ivp_rint_STAR,						VecPred,			"llvm.vp.rint.*" },
	{ Ivp_round_STAR,						VecPred,			"llvm.vp.round.*" },
	{ Ivp_roundeven_STAR,					VecPred,			"llvm.vp.roundeven.*" },
	{ Ivp_roundtozero_STAR,					VecPred,			"llvm.vp.roundtozero.*" },
	{ Ivp_scatter,							VecPred,			"llvm.vp.scatter" },
	{ Ivp_sdiv_STAR,						VecPred,			"llvm.vp.sdiv.*" },
	{ Ivp_select_STAR,						VecPred,			"llvm.vp.select.*" },
	{ Ivp_sext_STAR,						VecPred,			"llvm.vp.sext.*" },
	{ Ivp_shl_STAR,							VecPred,			"llvm.vp.shl.*" },
	{ Ivp_sitofp_STAR,						VecPred,			"llvm.vp.sitofp.*" },
	{ Ivp_smax_STAR,						VecPred,			"llvm.vp.smax.*" },
	{ Ivp_smin_STAR,						VecPred,			"llvm.vp.smin.*" },
	{ Ivp_sqrt_STAR,						VecPred,			"llvm.vp.sqrt.*" },
	{ Ivp_srem_STAR,						VecPred,			"llvm.vp.srem.*" },
	{ Ivp_store,							VecPred,			"llvm.vp.store" },
	{ Ivp_sub_STAR,							VecPred,			"llvm.vp.sub.*" },
	{ Ivp_trunc_STAR,						VecPred,			"llvm.vp.trunc.*" },
	{ Ivp_udiv_STAR,						VecPred,			"llvm.vp.udiv.*" },
	{ Ivp_uitofp_STAR,						VecPred,			"llvm.vp.uitofp.*" },
	{ Ivp_umax_STAR,						VecPred,			"llvm.vp.umax.*" },
	{ Ivp_umin_STAR,						VecPred,			"llvm.vp.umin.*" },
	{ Ivp_urem_STAR,						VecPred,			"llvm.vp.urem.*" },
	{ Ivp_xor_STAR,							VecPred,			"llvm.vp.xor.*" },
	{ Ivp_zext_STAR,						VecPred,			"llvm.vp.zext.*" },
	{ Ivscale,								General,			"llvm.vscale" },

	{ Iwrite_register,						CodeGen,			"llvm.write_register" },
};

// Metadata
// { Iaccess_group,						General,		"llvm.access.group" },

// Bundle
//	{ Iobjc_clang_arc_noop_use,				General,		"llvm.clang.arc.noop.use" },

// Global Variables
// { Icompiler_used,						General,		"llvm.compiler.used" },
// { Iused,								General,		"llvm.used" },
// { Iglobal_ctors,						General,		"llvm.global.ctors" },
// { Iglobal_dtors,						General,		"llvm.global.dtors" },

bool ModuleLevelInlineAsm::output( FILE * )
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

bool DepLibrary::output( FILE * )
{
TODO // il
	return false;
}

bool FunctionDeclaration::output( FILE * )
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

bool UnnamedType::output( FILE * )
{
TODO // il
	return false;
}

bool NamedType::output( FILE * )
{
TODO // il
	return false;
}

bool UnnamedGlobalVariable::output( FILE * )
{
TODO // il
	return false;
}

bool NamedGlobalVariable::output( FILE * )
{
TODO // il
	return false;
}

bool Comdat::output( FILE * )
{
TODO // il
	return false;
}

bool StandaloneMetadata::output( FILE * )
{
TODO // il
	return false;
}

bool NamedMetadata::output( FILE * )
{
TODO // il
	return false;
}
