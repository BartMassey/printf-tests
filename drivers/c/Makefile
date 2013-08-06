# Copyright © 2013 Bart Massey
# This program is licensed under the GPL version 2 or later.
# Please see the file COPYING in this distribution for
# license terms.

printf-tests: printf-tests.c testcases.c
	gcc -Wall -g -o printf-tests printf-tests.c

testcases.c: gen-testcases ../../printf-tests.txt 
	./gen-testcases <../../printf-tests.txt >testcases.c

gen-testcases: gen-testcases.hs
	ghc -Wall --make gen-testcases.hs
