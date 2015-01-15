# Compiler
FC=ftn
CC=mpicc
# Fortran to C interface
F2C_DEF   = -DF2C_UNDERSCORE

# General flags
REAL_SIZE   = -fdefault-real-8
INT_SIZE    = 
FORM        = -ffree-form -std=f2003
#BIG_ENDIAN  = -fconvert=big-endian
#AUTO_ARRAYS = -fmax-stack-var-size=32768
IEEE        =
# Open MP
ifeq ($(NO_OMP),)
  OPENMP    = -fopenmp
else
  OPENMP    =
endif
# Debug flags
ifeq ($(LEV),MEMDEBUG)
  DBG     = -g -O -Wunused -Wuninitialized -fbacktrace
  CDBG    = -g -O -Wunused -Wuninitialized 
  CHECK   = -fbounds-check
  FLTTRAP = -ffpe-trap=invalid,zero
endif
ifeq ($(LEV),DEBUG)
  DBG     = -g -O -Wunused -Wuninitialized -fbacktrace
  CDBG    = -g -O -Wunused -Wuninitialized
  FLTTRAP = -ffpe-trap=invalid,zero
endif
ifeq ($(LEV),TV)
  DBG     = -g -O -fbacktrace
  CDBG    = -g -O
endif
ifeq ($(LEV),MEMTV)
  DBG     = -g -O -fbacktrace
  CDBG    = -g -O
  CHECK   = -fbounds-check
endif
ifeq ($(LEV),OPTDEBUG)
  DBG     = -g -fbacktrace
  CDBG    = -g 
endif
# Optimisation flags
ifeq ($(LEV),OPTDEBUG)
  OPT     = -O2
  COPT    = -O2
endif
ifeq ($(LEV),RELEASE)
  OPT     = #-O2 -funroll-loops -ftree-vectorize
  COPT    = #-O2 -ftree-vectorize
endif

FFLAGS = -c $(REALSIZE) $(INTSIZE) $(FORM) $(BIG_ENDIAN) $(AUTO_ARRAYS) \
	 $(SHARED_INTEL) $(IEEE) $(DBG) $(CHECK) $(OPT) $(FLTTRAP)

CFLAGS = -c $(CDBG) $(COPT)

LFLAGS = $(DBG) $(OPT) $(OPENMP) -o
