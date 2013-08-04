/* Test for printf formats.  Formats using C90 features, including cases
   where C90 specifies some aspect of the format to be ignored or where
   the behavior is undefined.
*/
/* Origin: Joseph Myers <jsm28@cam.ac.uk> */
/* { dg-do compile } */
/* { dg-options "-std=iso9899:1990 -pedantic -Wformat" } */

/*

		    GNU GENERAL PUBLIC LICENSE
		       Version 2, June 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
     51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

			    Preamble

  The licenses for most software are designed to take away your
freedom to share and change it.  By contrast, the GNU General Public
License is intended to guarantee your freedom to share and change free
software--to make sure the software is free for all its users.  This
General Public License applies to most of the Free Software
Foundation's software and to any other program whose authors commit to
using it.  (Some other Free Software Foundation software is covered by
the GNU Library General Public License instead.)  You can apply it to
your programs, too.

  When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
this service if you wish), that you receive source code or can get it
if you want it, that you can change the software or use pieces of it
in new free programs; and that you know you can do these things.

  To protect your rights, we need to make restrictions that forbid
anyone to deny you these rights or to ask you to surrender the rights.
These restrictions translate to certain responsibilities for you if you
distribute copies of the software, or if you modify it.

  For example, if you distribute copies of such a program, whether
gratis or for a fee, you must give the recipients all the rights that
you have.  You must make sure that they, too, receive or can get the
source code.  And you must show them these terms so they know their
rights.

  We protect your rights with two steps: (1) copyright the software, and
(2) offer you this license which gives you legal permission to copy,
distribute and/or modify the software.

  Also, for each author's protection and ours, we want to make certain
that everyone understands that there is no warranty for this free
software.  If the software is modified by someone else and passed on, we
want its recipients to know that what they have is not the original, so
that any problems introduced by others will not reflect on the original
authors' reputations.

  Finally, any free program is threatened constantly by software
patents.  We wish to avoid the danger that redistributors of a free
program will individually obtain patent licenses, in effect making the
program proprietary.  To prevent this, we have made it clear that any
patent must be licensed for everyone's free use or not licensed at all.

  The precise terms and conditions for copying, distribution and
modification follow.

		    GNU GENERAL PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. This License applies to any program or other work which contains
a notice placed by the copyright holder saying it may be distributed
under the terms of this General Public License.  The "Program", below,
refers to any such program or work, and a "work based on the Program"
means either the Program or any derivative work under copyright law:
that is to say, a work containing the Program or a portion of it,
either verbatim or with modifications and/or translated into another
language.  (Hereinafter, translation is included without limitation in
the term "modification".)  Each licensee is addressed as "you".

Activities other than copying, distribution and modification are not
covered by this License; they are outside its scope.  The act of
running the Program is not restricted, and the output from the Program
is covered only if its contents constitute a work based on the
Program (independent of having been made by running the Program).
Whether that is true depends on what the Program does.

  1. You may copy and distribute verbatim copies of the Program's
source code as you receive it, in any medium, provided that you
conspicuously and appropriately publish on each copy an appropriate
copyright notice and disclaimer of warranty; keep intact all the
notices that refer to this License and to the absence of any warranty;
and give any other recipients of the Program a copy of this License
along with the Program.

You may charge a fee for the physical act of transferring a copy, and
you may at your option offer warranty protection in exchange for a fee.

  2. You may modify your copy or copies of the Program or any portion
of it, thus forming a work based on the Program, and copy and
distribute such modifications or work under the terms of Section 1
above, provided that you also meet all of these conditions:

    a) You must cause the modified files to carry prominent notices
    stating that you changed the files and the date of any change.

    b) You must cause any work that you distribute or publish, that in
    whole or in part contains or is derived from the Program or any
    part thereof, to be licensed as a whole at no charge to all third
    parties under the terms of this License.

    c) If the modified program normally reads commands interactively
    when run, you must cause it, when started running for such
    interactive use in the most ordinary way, to print or display an
    announcement including an appropriate copyright notice and a
    notice that there is no warranty (or else, saying that you provide
    a warranty) and that users may redistribute the program under
    these conditions, and telling the user how to view a copy of this
    License.  (Exception: if the Program itself is interactive but
    does not normally print such an announcement, your work based on
    the Program is not required to print an announcement.)

These requirements apply to the modified work as a whole.  If
identifiable sections of that work are not derived from the Program,
and can be reasonably considered independent and separate works in
themselves, then this License, and its terms, do not apply to those
sections when you distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a work based
on the Program, the distribution of the whole must be on the terms of
this License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of who wrote it.

Thus, it is not the intent of this section to claim rights or contest
your rights to work written entirely by you; rather, the intent is to
exercise the right to control the distribution of derivative or
collective works based on the Program.

In addition, mere aggregation of another work not based on the Program
with the Program (or with a work based on the Program) on a volume of
a storage or distribution medium does not bring the other work under
the scope of this License.

  3. You may copy and distribute the Program (or a work based on it,
under Section 2) in object code or executable form under the terms of
Sections 1 and 2 above provided that you also do one of the following:

    a) Accompany it with the complete corresponding machine-readable
    source code, which must be distributed under the terms of Sections
    1 and 2 above on a medium customarily used for software interchange; or,

    b) Accompany it with a written offer, valid for at least three
    years, to give any third party, for a charge no more than your
    cost of physically performing source distribution, a complete
    machine-readable copy of the corresponding source code, to be
    distributed under the terms of Sections 1 and 2 above on a medium
    customarily used for software interchange; or,

    c) Accompany it with the information you received as to the offer
    to distribute corresponding source code.  (This alternative is
    allowed only for noncommercial distribution and only if you
    received the program in object code or executable form with such
    an offer, in accord with Subsection b above.)

The source code for a work means the preferred form of the work for
making modifications to it.  For an executable work, complete source
code means all the source code for all modules it contains, plus any
associated interface definition files, plus the scripts used to
control compilation and installation of the executable.  However, as a
special exception, the source code distributed need not include
anything that is normally distributed (in either source or binary
form) with the major components (compiler, kernel, and so on) of the
operating system on which the executable runs, unless that component
itself accompanies the executable.

If distribution of executable or object code is made by offering
access to copy from a designated place, then offering equivalent
access to copy the source code from the same place counts as
distribution of the source code, even though third parties are not
compelled to copy the source along with the object code.

  4. You may not copy, modify, sublicense, or distribute the Program
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense or distribute the Program is
void, and will automatically terminate your rights under this License.
However, parties who have received copies, or rights, from you under
this License will not have their licenses terminated so long as such
parties remain in full compliance.

  5. You are not required to accept this License, since you have not
signed it.  However, nothing else grants you permission to modify or
distribute the Program or its derivative works.  These actions are
prohibited by law if you do not accept this License.  Therefore, by
modifying or distributing the Program (or any work based on the
Program), you indicate your acceptance of this License to do so, and
all its terms and conditions for copying, distributing or modifying
the Program or works based on it.

  6. Each time you redistribute the Program (or any work based on the
Program), the recipient automatically receives a license from the
original licensor to copy, distribute or modify the Program subject to
these terms and conditions.  You may not impose any further
restrictions on the recipients' exercise of the rights granted herein.
You are not responsible for enforcing compliance by third parties to
this License.

  7. If, as a consequence of a court judgment or allegation of patent
infringement or for any other reason (not limited to patent issues),
conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot
distribute so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not distribute the Program at all.  For example, if a patent
license would not permit royalty-free redistribution of the Program by
all those who receive copies directly or indirectly through you, then
the only way you could satisfy both it and this License would be to
refrain entirely from distribution of the Program.

If any portion of this section is held invalid or unenforceable under
any particular circumstance, the balance of the section is intended to
apply and the section as a whole is intended to apply in other
circumstances.

It is not the purpose of this section to induce you to infringe any
patents or other property right claims or to contest validity of any
such claims; this section has the sole purpose of protecting the
integrity of the free software distribution system, which is
implemented by public license practices.  Many people have made
generous contributions to the wide range of software distributed
through that system in reliance on consistent application of that
system; it is up to the author/donor to decide if he or she is willing
to distribute software through any other system and a licensee cannot
impose that choice.

This section is intended to make thoroughly clear what is believed to
be a consequence of the rest of this License.

  8. If the distribution and/or use of the Program is restricted in
certain countries either by patents or by copyrighted interfaces, the
original copyright holder who places the Program under this License
may add an explicit geographical distribution limitation excluding
those countries, so that distribution is permitted only in or among
countries not thus excluded.  In such case, this License incorporates
the limitation as if written in the body of this License.

  9. The Free Software Foundation may publish revised and/or new versions
of the General Public License from time to time.  Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number.  If the Program
specifies a version number of this License which applies to it and "any
later version", you have the option of following the terms and conditions
either of that version or of any later version published by the Free
Software Foundation.  If the Program does not specify a version number of
this License, you may choose any version ever published by the Free Software
Foundation.

  10. If you wish to incorporate parts of the Program into other free
programs whose distribution conditions are different, write to the author
to ask for permission.  For software which is copyrighted by the Free
Software Foundation, write to the Free Software Foundation; we sometimes
make exceptions for this.  Our decision will be guided by the two goals
of preserving the free status of all derivatives of our free software and
of promoting the sharing and reuse of software generally.

			    NO WARRANTY

  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION.

  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGES.

		     END OF TERMS AND CONDITIONS

	    How to Apply These Terms to Your New Programs

  If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these terms.

  To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
convey the exclusion of warranty; and each file should have at least
the "copyright" line and a pointer to where the full notice is found.

    <one line to give the program's name and a brief idea of what it does.>
    Copyright (C) <year>  <name of author>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA


Also add information on how to contact you by electronic and paper mail.

If the program is interactive, make it output a short notice like this
when it starts in an interactive mode:

    Gnomovision version 69, Copyright (C) year  name of author
    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.

The hypothetical commands `show w' and `show c' should show the appropriate
parts of the General Public License.  Of course, the commands you use may
be called something other than `show w' and `show c'; they could even be
mouse-clicks or menu items--whatever suits your program.

You should also get your employer (if you work as a programmer) or your
school, if any, to sign a "copyright disclaimer" for the program, if
necessary.  Here is a sample; alter the names:

  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
  `Gnomovision' (which makes passes at compilers) written by James Hacker.

  <signature of Ty Coon>, 1 April 1989
  Ty Coon, President of Vice

This General Public License does not permit incorporating your program into
proprietary programs.  If your program is a subroutine library, you may
consider it more useful to permit linking proprietary applications with the
library.  If this is what you want to do, use the GNU Library General
Public License instead of this License.

 */

#include "format.h"

void
foo (int i, int i1, int i2, unsigned int u, double d, char *s, void *p,
     int *n, short int *hn, long int l, unsigned long int ul,
     long int *ln, long double ld, wint_t lc, wchar_t *ls, llong ll,
     ullong ull, unsigned int *un, const int *cn, signed char *ss,
     unsigned char *us, const signed char *css, unsigned int u1,
     unsigned int u2)
{
  /* See ISO/IEC 9899:1990 (E) subclause 7.9.6.1 (pages 131-134).  */
  /* Basic sanity checks for the different components of a format.  */
  printf ("%d\n", i);
  printf ("%+d\n", i);
  printf ("%3d\n", i);
  printf ("%-3d\n", i);
  printf ("%.7d\n", i);
  printf ("%+9.4d\n", i);
  printf ("%.3ld\n", l);
  printf ("%*d\n", i1, i);
  printf ("%.*d\n", i2, i);
  printf ("%*.*ld\n", i1, i2, l);
  printf ("%d %lu\n", i, ul);
  /* GCC has objected to the next one in the past, but it is a valid way
     of specifying zero precision.
  */
  printf ("%.e\n", d); /* { dg-bogus "precision" "bogus precision warning" } */
  /* Bogus use of width.  */
  printf ("%5n\n", n); /* { dg-warning "width" "width with %n" } */
  /* Erroneous, ignored or pointless constructs with precision.  */
  /* Whether negative values for precision may be included in the format
     string is not entirely clear; presume not, following Clive Feather's
     proposed resolution to DR#220 against C99.  In any case, such a
     construct should be warned about.
  */
  printf ("%.-5d\n", i); /* { dg-warning "format|precision" "negative precision warning" } */
  printf ("%.-*d\n", i); /* { dg-warning "format" "broken %.-*d format" } */
  printf ("%.3c\n", i); /* { dg-warning "precision" "precision with %c" } */
  printf ("%.3p\n", p); /* { dg-warning "precision" "precision with %p" } */
  printf ("%.3n\n", n); /* { dg-warning "precision" "precision with %n" } */
  /* Valid and invalid %% constructions.  Some of the warning messages
     are non-optimal, but they do detect the errorneous nature of the
     format string.
  */
  printf ("%%");
  printf ("%.3%"); /* { dg-warning "format" "bogus %%" } */
  printf ("%-%"); /* { dg-warning "format" "bogus %%" } */
  printf ("%-%\n"); /* { dg-warning "format" "bogus %%" } */
  printf ("%5%\n"); /* { dg-warning "format" "bogus %%" } */
  printf ("%h%\n"); /* { dg-warning "format" "bogus %%" } */
  /* Valid and invalid %h, %l, %L constructions.  */
  printf ("%hd", i);
  printf ("%hi", i);
  /* Strictly, these parameters should be int or unsigned int according to
     what unsigned short promotes to.  However, GCC ignores sign
     differences in format checking here, and this is relied on to get the
     correct checking without print_char_table needing to know whether
     int and short are the same size.
  */
  printf ("%ho%hu%hx%hX", u, u, u, u);
  printf ("%hn", hn);
  printf ("%hf", d); /* { dg-warning "length" "bad use of %h" } */
  printf ("%he", d); /* { dg-warning "length" "bad use of %h" } */
  printf ("%hE", d); /* { dg-warning "length" "bad use of %h" } */
  printf ("%hg", d); /* { dg-warning "length" "bad use of %h" } */
  printf ("%hG", d); /* { dg-warning "length" "bad use of %h" } */
  printf ("%hc", i); /* { dg-warning "length" "bad use of %h" } */
  printf ("%hs", s); /* { dg-warning "length" "bad use of %h" } */
  printf ("%hp", p); /* { dg-warning "length" "bad use of %h" } */
  printf ("%h"); /* { dg-warning "conversion lacks type" "bare %h" } */
  printf ("%h."); /* { dg-warning "conversion" "bogus %h." } */
  printf ("%ld%li%lo%lu%lx%lX", l, l, ul, ul, ul, ul);
  printf ("%ln", ln);
  printf ("%lf", d); /* { dg-warning "length|C" "bad use of %l" } */
  printf ("%le", d); /* { dg-warning "length|C" "bad use of %l" } */
  printf ("%lE", d); /* { dg-warning "length|C" "bad use of %l" } */
  printf ("%lg", d); /* { dg-warning "length|C" "bad use of %l" } */
  printf ("%lG", d); /* { dg-warning "length|C" "bad use of %l" } */
  printf ("%lp", p); /* { dg-warning "length|C" "bad use of %l" } */
  /* These next two were added in C94, but should be objected to in C90.
     For the first one, GCC has wanted wchar_t instead of the correct C94
     and C99 wint_t.
  */
  printf ("%lc", lc); /* { dg-warning "length|C" "C90 bad use of %l" } */
  printf ("%ls", ls); /* { dg-warning "length|C" "C90 bad use of %l" } */
  /* These uses of %L are legitimate, though GCC has wrongly warned for
     them in the past.
  */
  printf ("%Le%LE%Lf%Lg%LG", ld, ld, ld, ld, ld);
  /* These next six are accepted by GCC as referring to long long,
     but -pedantic correctly warns.
  */
  printf ("%Ld", ll); /* { dg-warning "does not support" "bad use of %L" } */
  printf ("%Li", ll); /* { dg-warning "does not support" "bad use of %L" } */
  printf ("%Lo", ull); /* { dg-warning "does not support" "bad use of %L" } */
  printf ("%Lu", ull); /* { dg-warning "does not support" "bad use of %L" } */
  printf ("%Lx", ull); /* { dg-warning "does not support" "bad use of %L" } */
  printf ("%LX", ull); /* { dg-warning "does not support" "bad use of %L" } */
  printf ("%Lc", i); /* { dg-warning "length" "bad use of %L" } */
  printf ("%Ls", s); /* { dg-warning "length" "bad use of %L" } */
  printf ("%Lp", p); /* { dg-warning "length" "bad use of %L" } */
  printf ("%Ln", n); /* { dg-warning "length" "bad use of %L" } */
  /* Valid uses of each bare conversion.  */
  printf ("%d%i%o%u%x%X%f%e%E%g%G%c%s%p%n%%", i, i, u, u, u, u, d, d, d, d, d,
	  i, s, p, n);
  /* Uses of the - flag (valid on all non-%, non-n conversions).  */
  printf ("%-d%-i%-o%-u%-x%-X%-f%-e%-E%-g%-G%-c%-s%-p", i, i, u, u, u, u,
	  d, d, d, d, d, i, s, p);
  printf ("%-n", n); /* { dg-warning "flag" "bad use of %-n" } */
  /* Uses of the + flag (valid on signed conversions only).  */
  printf ("%+d%+i%+f%+e%+E%+g%+G\n", i, i, d, d, d, d, d);
  printf ("%+o", u); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+u", u); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+x", u); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+X", u); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+c", i); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+s", s); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+p", p); /* { dg-warning "flag" "bad use of + flag" } */
  printf ("%+n", n); /* { dg-warning "flag" "bad use of + flag" } */
  /* Uses of the space flag (valid on signed conversions only, and ignored
     with +).
  */
  printf ("% +d", i); /* { dg-warning "use of both|ignored" "use of space and + flags" } */
  printf ("%+ d", i); /* { dg-warning "use of both|ignored" "use of space and + flags" } */
  printf ("% d% i% f% e% E% g% G\n", i, i, d, d, d, d, d);
  printf ("% o", u); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% u", u); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% x", u); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% X", u); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% c", i); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% s", s); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% p", p); /* { dg-warning "flag" "bad use of space flag" } */
  printf ("% n", n); /* { dg-warning "flag" "bad use of space flag" } */
  /* Uses of the # flag.  */
  printf ("%#o%#x%#X%#e%#E%#f%#g%#G", u, u, u, d, d, d, d, d);
  printf ("%#d", i); /* { dg-warning "flag" "bad use of # flag" } */
  printf ("%#i", i); /* { dg-warning "flag" "bad use of # flag" } */
  printf ("%#u", u); /* { dg-warning "flag" "bad use of # flag" } */
  printf ("%#c", i); /* { dg-warning "flag" "bad use of # flag" } */
  printf ("%#s", s); /* { dg-warning "flag" "bad use of # flag" } */
  printf ("%#p", p); /* { dg-warning "flag" "bad use of # flag" } */
  printf ("%#n", n); /* { dg-warning "flag" "bad use of # flag" } */
  /* Uses of the 0 flag.  */
  printf ("%08d%08i%08o%08u%08x%08X%08e%08E%08f%08g%08G", i, i, u, u, u, u,
	  d, d, d, d, d);
  printf ("%0c", i); /* { dg-warning "flag" "bad use of 0 flag" } */
  printf ("%0s", s); /* { dg-warning "flag" "bad use of 0 flag" } */
  printf ("%0p", p); /* { dg-warning "flag" "bad use of 0 flag" } */
  printf ("%0n", n); /* { dg-warning "flag" "bad use of 0 flag" } */
  /* 0 flag ignored with precision for certain types, not others.  */
  printf ("%08.5d", i); /* { dg-warning "ignored" "0 flag ignored with precision" } */
  printf ("%08.5i", i); /* { dg-warning "ignored" "0 flag ignored with precision" } */
  printf ("%08.5o", u); /* { dg-warning "ignored" "0 flag ignored with precision" } */
  printf ("%08.5u", u); /* { dg-warning "ignored" "0 flag ignored with precision" } */
  printf ("%08.5x", u); /* { dg-warning "ignored" "0 flag ignored with precision" } */
  printf ("%08.5X", u); /* { dg-warning "ignored" "0 flag ignored with precision" } */
  printf ("%08.5f%08.5e%08.5E%08.5g%08.5G", d, d, d, d, d);
  /* 0 flag ignored with - flag.  */
  printf ("%-08d", i); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08i", i); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08o", u); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08u", u); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08x", u); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08X", u); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08e", d); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08E", d); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08f", d); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08g", d); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  printf ("%-08G", d); /* { dg-warning "flags|ignored" "0 flag ignored with - flag" } */
  /* Various tests of bad argument types.  */
  printf ("%d", l); /* { dg-warning "format" "bad argument types" } */
  printf ("%*.*d", l, i2, i); /* { dg-warning "field" "bad * argument types" } */
  printf ("%*.*d", i1, l, i); /* { dg-warning "field" "bad * argument types" } */
  printf ("%ld", i); /* { dg-warning "format" "bad argument types" } */
  printf ("%s", n); /* { dg-warning "format" "bad argument types" } */
  printf ("%p", i); /* { dg-warning "format" "bad argument types" } */
  printf ("%n", p); /* { dg-warning "format" "bad argument types" } */
  /* With -pedantic, we want some further checks for pointer targets:
     %p should allow only pointers to void (possibly qualified) and
     to character types (possibly qualified), but not function pointers
     or pointers to other types.  (Whether, in fact, character types are
     allowed here is unclear; see thread on comp.std.c, July 2000 for
     discussion of the requirements of rules on identical representation,
     and of the application of the as if rule with the new va_arg
     allowances in C99 to printf.)  Likewise, we should warn if
     pointer targets differ in signedness, except in some circumstances
     for character pointers.  (In C99 we should consider warning for
     char * or unsigned char * being passed to %hhn, even if strictly
     legitimate by the standard.)
  */
  printf ("%p", foo); /* { dg-warning "format" "bad argument types" } */
  printf ("%n", un); /* { dg-warning "format" "bad argument types" } */
  printf ("%p", n); /* { dg-warning "format" "bad argument types" } */
  /* Allow character pointers with %p.  */
  printf ("%p%p%p%p", s, ss, us, css);
  /* %s allows any character type.  */
  printf ("%s%s%s%s", s, ss, us, css);
  /* Warning for void * arguments for %s is GCC's historical behavior,
     and seems useful to keep, even if some standard versions might be
     read to permit it.
  */
  printf ("%s", p); /* { dg-warning "format" "bad argument types" } */
  /* The historical behavior is to allow signed / unsigned types
     interchangeably as arguments.  For values representable in both types,
     such usage may be correct.  For now preserve the behavior of GCC
     in such cases.
  */
  printf ("%d", u);
  /* Also allow the same for width and precision arguments.  In the past,
     GCC has been inconsistent and allowed unsigned for width but not
     precision.
  */
  printf ("%*.*d", u1, u2, i);
  /* Wrong number of arguments.  */
  printf ("%d%d", i); /* { dg-warning "matching" "wrong number of args" } */
  printf ("%d", i, i); /* { dg-warning "arguments" "wrong number of args" } */
  /* Miscellaneous bogus constructions.  */
  printf (""); /* { dg-warning "zero-length" "warning for empty format" } */
  printf ("\0"); /* { dg-warning "embedded" "warning for embedded NUL" } */
  printf ("%d\0", i); /* { dg-warning "embedded" "warning for embedded NUL" } */
  printf ("%d\0%d", i, i); /* { dg-warning "embedded|too many" "warning for embedded NUL" } */
  printf (NULL); /* { dg-warning "null" "null format string warning" } */
  printf ("%"); /* { dg-warning "trailing" "trailing % warning" } */
  printf ("%++d", i); /* { dg-warning "repeated" "repeated flag warning" } */
  printf ("%n", cn); /* { dg-warning "constant" "%n with const" } */
  printf ((const char *)L"foo"); /* { dg-warning "wide" "wide string" } */
  printf ("%n", (int *)0); /* { dg-warning "null" "%n with NULL" } */
  printf ("%s", (char *)0); /* { dg-warning "null" "%s with NULL" } */
}
