# Copyright © 2013 Bart Massey
# This program is licensed under the GPL version 2 or later.
# Please see the file COPYING in this distribution for
# license terms.

printf-tests.log: printf-tests
	./printf-tests >printf-tests.log

printf-tests: printf-tests.hs testcases.hs
	ghc -Wall --make printf-tests.hs

testcases.hs: ../gen-testcases ../../printf-tests.txt 
	../gen-testcases Haskell <../../printf-tests.txt >testcases.hs

clean:
	-rm -f printf-tests printf-tests.hi printf-tests.o

realclean: clean
	-rm -f testcases.hs
