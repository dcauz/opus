#pragma once

#include "il.h"
#include "program.h"


class GenCodeContext
{
public:
	GenCodeContext( Program * p ):program_(p)
	{
	}

	Program * program()	{ return program_; }

	void appendTerminator( Opcode opc, ... );
	void appendBinary( Opcode opc, ... );
	void appendBW_Binary( Opcode opc, ... );
	void appendVector( Opcode opc, ... );
    void appendAggregate( Opcode opc, ... );
	void appendMemory( Opcode opc, ... );
	void appendConversion( Opcode opc, ... );
	void appendOther( Opcode opc, ... );
	void appendVarArgIntrin(Opcode opc, ... );
	void appendGC(Opcode opc, ... );
	void appendCodeGen(Opcode opc, ... );
	void appendStdLib(Opcode opc, ... );
	void appendBitMan(Opcode opc, ... );
	void appendArithOverFlow(Opcode opc, ... );
	void appendSpecArith(Opcode opc, ... );
	void appendHighPrec(Opcode opc, ... );
	void appendDebug(Opcode opc, ... );
	void appendException(Opcode opc, ... );
	void appendTrampoline(Opcode opc, ... );
	void appendMaskedVLS(Opcode opc, ... );
	void appendMaskedVGS(Opcode opc, ... );
	void appendMemUse(Opcode opc, ... );
	void appendGeneral(Opcode opc, ... );

	int addFuncAttrs( const FunctionDeclaration::FuncAttrs & fa )	
	{ 
		program_->funcAttrs().push_back(fa);
		return program_->funcAttrs().size()-1;
	}
	FunctionDeclaration::FuncAttrs &	funcAttr( int n )	
	{ 
		return program_->funcAttrs()[n]; 
	}

private:

	Program * program_;
};
