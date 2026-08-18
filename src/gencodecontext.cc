#include "gencodecontext.h"
#include "type.h"
#include "statement.h"


// These instructions end basic blocks
void GenCodeContext::appendTerminator( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case br:
	case callbr:
	case catchret:
	case catchswitch: 
	case cleanupret:
	case indirectbr:
	case invoke: 
	case resume: 
	case ret:
	case _switch:
	case unreachable:
		TODO
		break;
	}
}

void GenCodeContext::appendUniary( Opcode opc, ... )
{
	if( opc == fneg )
		TODO
}

void GenCodeContext::appendBinary( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case add:
	case fadd:
	case fdiv:
	case fmul:
	case frem:
	case fsub:
	case mul:
	case sdiv:
	case srem:
	case sub:
	case udiv:
	case urem:
		TODO
		break;
	}
}


void GenCodeContext::appendBW_Binary( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case _and:
	case ashr:
	case lshr:
	case _or:
	case shl:
	case _xor:
		TODO
		break;
	}
}

void GenCodeContext::appendVector( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case extractelement:
	case insertelement:
	case shufflevector:
		TODO
		break;
	}
}

void GenCodeContext::appendAggregate( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case extractvalue:
	case insertvalue:
		TODO
		break;
	}
}

void GenCodeContext::appendMemory( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case _alloca:
	case atomicrmw:
	case cmpxchg:
	case fence:
	case getelementptr:
	case load:
	case store:
		TODO
		break;
	}
}

void GenCodeContext::appendConversion( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case addrspacecast:
	case bitcast:
	case fpext:
	case fptosi:
	case fptoui:
	case fptrunc:
	case inttoptr:
	case ptrtoint:
	case sext:
	case sitofp:
	case trunc:
	case uitofp:
	case zext:
		TODO
		break;
	}
}

void GenCodeContext::appendOther( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case call:
	case catchpad:
	case cleanuppad:
	case fcmp:
	case freeze:
	case icmp:
	case landingpad:
	case phi:
	case _select:
	case va_arg:
		TODO
		break;
	}
}

void GenCodeContext::appendVarArgIntrin(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Iva_start:
	case Iva_end:
	case Iva_copy:
		TODO
		break;
	}
}

void GenCodeContext::appendGC(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Igcread:
	case Igcroot:
	case Igcwrite:
		TODO
		break;
	}
}

void GenCodeContext::appendCodeGen(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Iclear_cache:
	case Iframeaddress:
	case Iget_dynamic_area_offset_STAR:
	case Iinstrprof_increment:
	case Iinstrprof_value_profile:
	case Ilocalescape:
	case Ilocalrecover:
	case Ipcmarker:
	case Iprefetch:
	case Ireadcyclecounter:
	case Iread_register_STAR:
	case Ireturnaddress:
	case Istackrestore:
	case Istacksave:
	case Iwrite_register:
		TODO
		break;
	}
}

void GenCodeContext::appendStdLib(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Iceil_STAR:
	case Icopysign_STAR:
	case Icos_STAR:
	case Iexp_STAR:
	case Iexp2_STAR:
	case Ilog_STAR:
	case Ilog10_STAR:
	case Ilog2_STAR:
	case Ifabs_STAR:
	case Ifloor_STAR:
	case Ifma_STAR:
	case Imaxnum_STAR:
	case Imemcpy:
	case Imemmove_STAR:
	case Imemset_STAR:
	case Iminnum_STAR:
	case Inearbyint_STAR:
	case Ipow_STAR:
	case Ipowi_STAR:
	case Irint_STAR:
	case Iround_STAR:
	case Isin_STAR:
	case Isqrt_STAR:
	case Itrunc_STAR:
		TODO
		break;
	}
}

void GenCodeContext::appendBitMan(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ibitreverse_STAR:
	case Ibswap_STAR:
	case Ictpop_STAR:
	case Ictlz_STAR:
	case Icttz_STAR:
		TODO
		break;
	}
}

void GenCodeContext::appendArithOverFlow(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Isadd_with_overflow_STAR:
	case Ismul_with_overflow_STAR:
	case Iuadd_with_overflow_STAR:
	case Iumul_with_overflow_STAR:
	case Issub_with_overflow_STAR:
	case Iusub_with_overflow_STAR:
		TODO
		break;
	}
}

void GenCodeContext::appendSpecArith(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Icanonicalize_STAR:
	case Ifmuladd_STAR:
		TODO
		break;
	}
}

void GenCodeContext::appendHighPrec(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Iconvert_to_fp16:
	case Iconvert_from_fp16:
		TODO
		break;
	}
}

void GenCodeContext::appendDebug(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Idbg_declare:	
	case Idbg_value:
		TODO
		break;
	}
}

void GenCodeContext::appendException(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ieh_typeid_for:
	case Ieh_begincatch:
	case Ieh_endcatch:
	case Ieh_exceptionpointer:
	case Ieh_sjlj_setjmp:
	case Ieh_sjlj_longjmp:
	case Ieh_sjli_lsda:
	case Ieh_sjli_callsite:
		TODO
		break;
	}
}

void GenCodeContext::appendTrampoline(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Iinit_trampoline:
	case Iadjust_trampoline:
		TODO
		break;
	}
}

void GenCodeContext::appendMaskedVLS(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Imasked_load_STAR:
	case Imasked_store_STAR:
		TODO
		break;
	}
}

void GenCodeContext::appendMaskedVGS(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Imasked_gather_STAR:
	case Imasked_scatter_STAR:
		TODO
		break;
	}
}

void GenCodeContext::appendMemUse(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ilifetime_end:
	case Ilifetime_start:
	case Iinvariant_end:
	case Iinvariant_group_barrier:
	case Iinvariant_start:
		TODO
		break;
	}
}

void GenCodeContext::appendGeneral(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Iannotation_STAR:
	case Iassume:
	case Idebugtrap:
	case Idonothing:
	case Iexpect:
	case Iobjectsize:
	case Iptr_annotation_STAR:
	case Istackprotector:
	case Itrap:
	case Ivar_annotation:
		TODO
		break;
	}
}
