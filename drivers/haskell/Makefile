# Copyright © 2013 Bart Massey
# This program is licensed under the GPL version 2 or later.
# Please see the file COPYING in this distribution for
# license terms.

HC = ghc
HCFLAGS = -Wall

all: printf-tests.log printf-extensible-tests.log

printf-tests.log: printf-tests
	-./printf-tests >printf-tests.log

printf-extensible-tests.log: printf-extensible-tests
	-./printf-extensible-tests >printf-extensible-tests.log

printf-tests: printf-tests.hs testcases.hs
	-rm -f printf-tests.hi printf-tests.o
	$(HC) $(HCFLAGS) -o printf-tests printf-tests.hs

printf-extensible-tests: printf-tests.hs testcases.hs
	-rm -f printf-tests.hi printf-tests.o
	$(HC) $(HCFLAGS) -Wall -DEXTENSIBLE \
	  -o printf-extensible-tests printf-tests.hs

testcases.hs: ../gen-testcases ../../printf-tests.txt 
	../gen-testcases Haskell <../../printf-tests.txt >testcases.hs

clean:
	-rm -f printf-tests printf-extensible-tests \
         printf-tests.hi printf-tests.o

realclean: clean
	-rm -f testcases.hs
