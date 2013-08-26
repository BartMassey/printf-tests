# `printf` Tests
Copyright © 2013 Bart Massey

This project is an attempt to pull together various
`printf`(3) tests from free and open source software
projects and compile them into a single language-independent
file that is at least nearly equal to the sum of its parts.


The principal source file here is `printf-tests.txt`.
The format of this file is

        exclusion serial result format-string arg1 arg2 ...

The exclusion is optional, and if present indicates a list
of languages that should ignore this test. The exclusions
are alphabetic and preceded by "!". Currently, one can
exclude C with "C" or H with "H".

The serial number is just that.  The result and format
strings are string literals in C syntax; the result may be
just the literal character ?, in which case `printf` is
expected to fail.  The arguments are string, character or
numeric literals in C syntax, or pointer literals with the
syntax <NUMBER>V for a 32-bit pointer or <NUMBER>VL for a
64-bit pointer. Fields are separated by space characters:
there are deliberately no tab characters in the file. Blank
lines and lines beginning with "#" are to be ignored.

String literals deliberately do not contain double-quote
characters or backslash escapes, to make them easier to deal
with. As a result, all strings can be collected by simply
reading from the starting quote to the ending
quote. Similarly, all numbers are in decimal.

There are two obvious ways to use these tests. The first way
is to simply build a program that reads in and executes each
test and checks the result, all at runtime. The second way
is to build a program that parses the tests and generates a
program in the target language that can be run to execute
the tests. The second way is sometimes easier.

Included in this distro is a Haskell program
(`gen-testcases.hs` in the `drivers` directory) that can be
used to generate testcase files for C and Haskell. In
`drivers/c` and `drivers/haskell` are test drivers that use
this infrastructure. The Haskell driver tests both standard
`Text.Printf` and my own `Text.Printf.Extensible`, available
in the GitHub repo `extensible-printf`. To run all this,
first "make" in the `drivers` subdirectory, and then again
in the subdirectory for each driver.

This work is licensed under the GPL version 2: please see
the file COPYING in this distribution for license terms. It
draws upon sources that are either GPL v2 or under licenses
compatible with GPL v2. Please see the `sources` directory
of this distribution for original sources and their
licenses, as the license history is too complicated to bear
repeating here.
