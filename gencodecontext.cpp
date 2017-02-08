#include "gencodecontext.h"


void GenCodeContext::appendTerminator( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case ret:
	case br:
	case _switch:
	case indirectbr:
	case invoke: 
	case resume: 
	case catchswitch: 
	case catchret:
	case cleanupret:
	case unreachable:
		break;
	}
}

void GenCodeContext::appendBinary( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case add:
	case fadd:
	case sub:
	case fsub:
	case mul:
	case fmul:
	case udiv:
	case sdiv:
	case fdiv:
	case urem:
	case srem:
	case frem:
		break;
	}
}


void GenCodeContext::appendBW_Binary( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case shl:
	case lshr:
	case ashr:
	case _and:
	case _or:
	case _xor:
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
		break;
	}
}

void GenCodeContext::appendMemory( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case _alloca:
	case load:
	case store:
	case fence:
	case cmpxchg:
	case atomicrmw:
	case getelementptr:
		break;
	}
}

void GenCodeContext::appendConversion( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case trunc:
	case zext:
	case sext:
	case fptrunc:
	case fpext:
	case fptoui:
	case fptosi:
	case uitofp:
	case sitofp:
	case ptrtoint:
	case inttoptr:
	case bitcast:
	case addrspacecast:
		break;
	}
}

void GenCodeContext::appendOther( Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case icmp:
	case fcmp:
	case phi:
	case _select:
	case call:
	case va_arg:
	case landingpad:
	case catchpad:
	case cleanuppad:
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
		break;
	}
}

void GenCodeContext::appendGC(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Igcroot:
	case Igcread:
	case Igcwrite:
		break;
	}
}

void GenCodeContext::appendCodeGen(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ireturnaddress:
	case Iframeaddress:
	case Ilocalescape:
	case Ilocalrecover:
	case Iread_register:
	case Iwrite_register:
	case Istacksave:
	case Istackrestore:
	case Iget_dynamic_area_offset:
	case Iprefetch:
	case Ipcmarker:
	case Ireadcyclecounter:
	case Iclear_cache:
	case Iinstrprof_increment:
	case Iinstrprof_value_profile:
		break;
	}
}

void GenCodeContext::appendStdLib(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Imemcpy:
	case Imemmove:
	case Imemset:
	case Isqrt:
	case Ipowi:
	case Isin:
	case Icos:
	case Ipow:
	case Iexp:
	case Iexp2:
	case Ilog:
	case Ilog10:
	case Ilog2:
	case Ifma:
	case Ifabs:
	case Iminnum:
	case Imaxnum:
	case Icopysign:
	case Ifloor:
	case Iceil:
	case Itrunc:
	case Irint:
	case Inearbyint:
	case Iround:
		break;
	}
}

void GenCodeContext::appendBitMan(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ibitreverse:
	case Ibswap:
	case Ictpop:
	case Ictlz:
	case Icttz:
		break;
	}
}

void GenCodeContext::appendArithOverFlow(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Isadd_with_overflow:
	case Iuadd_with_overflow:
	case Issub_with_overflow:
	case Iusub_with_overflow:
	case Ismul_with_overflow:
	case Iumul_with_overflow:
		break;
	}
}

void GenCodeContext::appendSpecArith(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Icanonicalize:
	case Ifmuladd:
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
		break;
	}
}

void GenCodeContext::appendException(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ieh_typeid:
	case Ieh_begincatch:
	case Ieh_endcatch:
	case Ieh_exceptionpointer:
	case Ieh_sjlj_setjmp:
	case Ieh_sjlj_longjmp:
	case Ieh_sjli_lsda:
	case Ieh_sjli_callsite:
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
		break;
	}
}

void GenCodeContext::appendMaskedVLS(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Imasked_load:
	case Imasked_store:
		break;
	}
}

void GenCodeContext::appendMaskedVGS(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Imasked_gather:
	case Imasked_scatter:
		break;
	}
}

void GenCodeContext::appendMemUse(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ilifetime_start:
	case Ilifetime_end:
	case Iinvariant_start:
	case Iinvariant_end:
	case Iinvariant_group_barrier:
		break;
	}
}

void GenCodeContext::appendGeneral(Opcode opc, ... )
{
	switch( opc )
	{
	default:

	case Ivar_annotation:
	case Iptr_annotation:
	case Iannotation:
	case Itrap:
	case Idebugtrap:
	case Istackprotector:
	case Istackprotectorcheck:
	case Iobjectsize:
	case Iexpect:
	case Iassume:
	case Ibitset_test:
	case Idonothing:
		break;
	}
}
