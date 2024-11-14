MOLE = ../mole_C++
ARMA = /home/oneapi/arma/armadillo-14.0.2
OPENBLAS_PATH = /home/oneapi/openblas/lib
SUPERLU_PATH = /home/oneapi/superlu/superlu-master
CXX ?= g++

INCPATH = -I$(MOLE)
CXXFLAGS = -O3 -fopenmp -DARMA_DONT_USE_WRAPPER -DARMA_USE_SUPERLU
LIBS = -L$(MOLE) -lmole -L$(OPENBLAS_PATH) -lopenblas -L$(SUPERLU_PATH) -lsuperlu

ifdef ARMA
INCPATH += -I. -I$(ARMA)/include
else
ifeq (,$(filter clean,$(MAKECMDGOALS)))
$(warning The path to Armadillo's library was not provided. I will look for it in the standard system directories.)
endif
endif

ifdef EIGEN
CXXFLAGS += -DEIGEN
INCPATH += -I$(EIGEN)
endif

all: test1 test2 test3 test4 test5 run

test1: test1.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -o test1 test1.cpp $(LIBS)

test2: test2.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -o test2 test2.cpp $(LIBS)

test3: test3.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -o test3 test3.cpp $(LIBS)

test4: test4.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -o test4 test4.cpp $(LIBS)

test5: test5.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -o test5 test5.cpp $(LIBS)

run: test1 test2 test3 test4 test5
	LD_LIBRARY_PATH=../mole_C++ ./test1
	LD_LIBRARY_PATH=../mole_C++ ./test2
	LD_LIBRARY_PATH=../mole_C++ ./test3
	LD_LIBRARY_PATH=../mole_C++ ./test4
	LD_LIBRARY_PATH=../mole_C++ ./test5

clean:
	rm -f test1 test2 test3 test4 test5
