/*
 * Copyright (c) 2011 The tyndur Project. All rights reserved.
 *
 * This code is derived from software contributed to the tyndur Project
 * by Kevin Wolf.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "testlib.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define TEST(buf, ret, fmt, ...) do { \
        char lbuf[64] = { 0 }; \
        int lret = sprintf(lbuf, fmt, ## __VA_ARGS__); \
        if ((lret != ret) || (strcmp(lbuf, buf))) { \
            failed++; \
            printf("* FAIL %s: Zeile %5d; ret: %3d - %3d  |  " \
                   "buf '%s'\t- '%s'\n", \
                   test_name, __LINE__, \
                   ret, lret, buf, lbuf); \
        } \
    } while(0);

int test_sprintf(void)
{
    int failed = 0;

    /* Ein String ohne alles */
    TEST("Hallo heimur", 12, "Hallo heimur")

    /* Einfache Konvertierungen */
    TEST("Hallo heimur",   12, "%s",       "Hallo heimur")
    TEST("1024",            4, "%d",       1024)
    TEST("-1024",           5, "%d",       -1024)
    TEST("1024",            4, "%i",       1024)
    TEST("-1024",           5, "%i",       -1024)
    TEST("1024",            4, "%u",       1024u)
    TEST("4294966272",     10, "%u",       -1024u)
    TEST("777",             3, "%o",       0777u)
    TEST("37777777001",    11, "%o",       -0777u)
    TEST("1234abcd",        8, "%x",       0x1234abcdu)
    TEST("edcb5433",        8, "%x",       -0x1234abcdu)
    TEST("1234ABCD",        8, "%X",       0x1234abcdu)
    TEST("EDCB5433",        8, "%X",       -0x1234abcdu)
    TEST("x",               1, "%c",       'x')
    TEST("%",               1, "%%")

    /* Mit %c kann man auch Nullbytes ausgeben */
    TEST("\0",              1, "%c",       '\0')

    /* Vorzeichen erzwingen (Flag +) */
    TEST("Hallo heimur",   12, "%+s",      "Hallo heimur")
    TEST("+1024",           5, "%+d",      1024)
    TEST("-1024",           5, "%+d",      -1024)
    TEST("+1024",           5, "%+i",      1024)
    TEST("-1024",           5, "%+i",      -1024)
    TEST("1024",            4, "%+u",      1024u)
    TEST("4294966272",     10, "%+u",      -1024u)
    TEST("777",             3, "%+o",      0777u)
    TEST("37777777001",    11, "%+o",      -0777u)
    TEST("1234abcd",        8, "%+x",      0x1234abcdu)
    TEST("edcb5433",        8, "%+x",      -0x1234abcdu)
    TEST("1234ABCD",        8, "%+X",      0x1234abcdu)
    TEST("EDCB5433",        8, "%+X",      -0x1234abcdu)
    TEST("x",               1, "%+c",      'x')

    /* Vorzeichenplatzhalter erzwingen (Flag <space>) */
    TEST("Hallo heimur",   12, "% s",      "Hallo heimur")
    TEST(" 1024",           5, "% d",      1024)
    TEST("-1024",           5, "% d",      -1024)
    TEST(" 1024",           5, "% i",      1024)
    TEST("-1024",           5, "% i",      -1024)
    TEST("1024",            4, "% u",      1024u)
    TEST("4294966272",     10, "% u",      -1024u)
    TEST("777",             3, "% o",      0777u)
    TEST("37777777001",    11, "% o",      -0777u)
    TEST("1234abcd",        8, "% x",      0x1234abcdu)
    TEST("edcb5433",        8, "% x",      -0x1234abcdu)
    TEST("1234ABCD",        8, "% X",      0x1234abcdu)
    TEST("EDCB5433",        8, "% X",      -0x1234abcdu)
    TEST("x",               1, "% c",      'x')

    /* Flag + hat Vorrang über <space> */
    TEST("Hallo heimur",   12, "%+ s",      "Hallo heimur")
    TEST("+1024",           5, "%+ d",      1024)
    TEST("-1024",           5, "%+ d",      -1024)
    TEST("+1024",           5, "%+ i",      1024)
    TEST("-1024",           5, "%+ i",      -1024)
    TEST("1024",            4, "%+ u",      1024u)
    TEST("4294966272",     10, "%+ u",      -1024u)
    TEST("777",             3, "%+ o",      0777u)
    TEST("37777777001",    11, "%+ o",      -0777u)
    TEST("1234abcd",        8, "%+ x",      0x1234abcdu)
    TEST("edcb5433",        8, "%+ x",      -0x1234abcdu)
    TEST("1234ABCD",        8, "%+ X",      0x1234abcdu)
    TEST("EDCB5433",        8, "%+ X",      -0x1234abcdu)
    TEST("x",               1, "%+ c",      'x')

    /* Alternative Form */
    TEST("0777",            4, "%#o",      0777u)
    TEST("037777777001",   12, "%#o",      -0777u)
    TEST("0x1234abcd",     10, "%#x",      0x1234abcdu)
    TEST("0xedcb5433",     10, "%#x",      -0x1234abcdu)
    TEST("0X1234ABCD",     10, "%#X",      0x1234abcdu)
    TEST("0XEDCB5433",     10, "%#X",      -0x1234abcdu)
    TEST("0",               1, "%#o",      0u)
    TEST("0",               1, "%#x",      0u)
    TEST("0",               1, "%#X",      0u)

    /* Feldbreite: Kleiner als Ausgabe */
    TEST("Hallo heimur",   12, "%1s",      "Hallo heimur")
    TEST("1024",            4, "%1d",      1024)
    TEST("-1024",           5, "%1d",      -1024)
    TEST("1024",            4, "%1i",      1024)
    TEST("-1024",           5, "%1i",      -1024)
    TEST("1024",            4, "%1u",      1024u)
    TEST("4294966272",     10, "%1u",      -1024u)
    TEST("777",             3, "%1o",      0777u)
    TEST("37777777001",    11, "%1o",      -0777u)
    TEST("1234abcd",        8, "%1x",      0x1234abcdu)
    TEST("edcb5433",        8, "%1x",      -0x1234abcdu)
    TEST("1234ABCD",        8, "%1X",      0x1234abcdu)
    TEST("EDCB5433",        8, "%1X",      -0x1234abcdu)
    TEST("x",               1, "%1c",      'x')

    /* Feldbreite: Größer als Ausgabe */
    TEST("               Hallo",  20, "%20s",      "Hallo")
    TEST("                1024",  20, "%20d",      1024)
    TEST("               -1024",  20, "%20d",      -1024)
    TEST("                1024",  20, "%20i",      1024)
    TEST("               -1024",  20, "%20i",      -1024)
    TEST("                1024",  20, "%20u",      1024u)
    TEST("          4294966272",  20, "%20u",      -1024u)
    TEST("                 777",  20, "%20o",      0777u)
    TEST("         37777777001",  20, "%20o",      -0777u)
    TEST("            1234abcd",  20, "%20x",      0x1234abcdu)
    TEST("            edcb5433",  20, "%20x",      -0x1234abcdu)
    TEST("            1234ABCD",  20, "%20X",      0x1234abcdu)
    TEST("            EDCB5433",  20, "%20X",      -0x1234abcdu)
    TEST("                   x",  20, "%20c",      'x')

    /* Feldbreite: Linksbündig */
    TEST("Hallo               ",  20, "%-20s",      "Hallo")
    TEST("1024                ",  20, "%-20d",      1024)
    TEST("-1024               ",  20, "%-20d",      -1024)
    TEST("1024                ",  20, "%-20i",      1024)
    TEST("-1024               ",  20, "%-20i",      -1024)
    TEST("1024                ",  20, "%-20u",      1024u)
    TEST("4294966272          ",  20, "%-20u",      -1024u)
    TEST("777                 ",  20, "%-20o",      0777u)
    TEST("37777777001         ",  20, "%-20o",      -0777u)
    TEST("1234abcd            ",  20, "%-20x",      0x1234abcdu)
    TEST("edcb5433            ",  20, "%-20x",      -0x1234abcdu)
    TEST("1234ABCD            ",  20, "%-20X",      0x1234abcdu)
    TEST("EDCB5433            ",  20, "%-20X",      -0x1234abcdu)
    TEST("x                   ",  20, "%-20c",      'x')

    /* Feldbreite: Padding mit 0 */
    TEST("00000000000000001024",  20, "%020d",      1024)
    TEST("-0000000000000001024",  20, "%020d",      -1024)
    TEST("00000000000000001024",  20, "%020i",      1024)
    TEST("-0000000000000001024",  20, "%020i",      -1024)
    TEST("00000000000000001024",  20, "%020u",      1024u)
    TEST("00000000004294966272",  20, "%020u",      -1024u)
    TEST("00000000000000000777",  20, "%020o",      0777u)
    TEST("00000000037777777001",  20, "%020o",      -0777u)
    TEST("0000000000001234abcd",  20, "%020x",      0x1234abcdu)
    TEST("000000000000edcb5433",  20, "%020x",      -0x1234abcdu)
    TEST("0000000000001234ABCD",  20, "%020X",      0x1234abcdu)
    TEST("000000000000EDCB5433",  20, "%020X",      -0x1234abcdu)

    /* Feldbreite: Padding und alternative Form */
    TEST("                0777",  20, "%#20o",      0777u)
    TEST("        037777777001",  20, "%#20o",      -0777u)
    TEST("          0x1234abcd",  20, "%#20x",      0x1234abcdu)
    TEST("          0xedcb5433",  20, "%#20x",      -0x1234abcdu)
    TEST("          0X1234ABCD",  20, "%#20X",      0x1234abcdu)
    TEST("          0XEDCB5433",  20, "%#20X",      -0x1234abcdu)

    TEST("00000000000000000777",  20, "%#020o",     0777u)
    TEST("00000000037777777001",  20, "%#020o",     -0777u)
    TEST("0x00000000001234abcd",  20, "%#020x",     0x1234abcdu)
    TEST("0x0000000000edcb5433",  20, "%#020x",     -0x1234abcdu)
    TEST("0X00000000001234ABCD",  20, "%#020X",     0x1234abcdu)
    TEST("0X0000000000EDCB5433",  20, "%#020X",     -0x1234abcdu)

    /* Feldbreite: - hat Vorrang vor 0 */
    TEST("Hallo               ",  20, "%0-20s",      "Hallo")
    TEST("1024                ",  20, "%0-20d",      1024)
    TEST("-1024               ",  20, "%0-20d",      -1024)
    TEST("1024                ",  20, "%0-20i",      1024)
    TEST("-1024               ",  20, "%0-20i",      -1024)
    TEST("1024                ",  20, "%0-20u",      1024u)
    TEST("4294966272          ",  20, "%0-20u",      -1024u)
    TEST("777                 ",  20, "%-020o",      0777u)
    TEST("37777777001         ",  20, "%-020o",      -0777u)
    TEST("1234abcd            ",  20, "%-020x",      0x1234abcdu)
    TEST("edcb5433            ",  20, "%-020x",      -0x1234abcdu)
    TEST("1234ABCD            ",  20, "%-020X",      0x1234abcdu)
    TEST("EDCB5433            ",  20, "%-020X",      -0x1234abcdu)
    TEST("x                   ",  20, "%-020c",      'x')

    /* Feldbreite: Aus Parameter */
    TEST("               Hallo",  20, "%*s",      20, "Hallo")
    TEST("                1024",  20, "%*d",      20, 1024)
    TEST("               -1024",  20, "%*d",      20, -1024)
    TEST("                1024",  20, "%*i",      20, 1024)
    TEST("               -1024",  20, "%*i",      20, -1024)
    TEST("                1024",  20, "%*u",      20, 1024u)
    TEST("          4294966272",  20, "%*u",      20, -1024u)
    TEST("                 777",  20, "%*o",      20, 0777u)
    TEST("         37777777001",  20, "%*o",      20, -0777u)
    TEST("            1234abcd",  20, "%*x",      20, 0x1234abcdu)
    TEST("            edcb5433",  20, "%*x",      20, -0x1234abcdu)
    TEST("            1234ABCD",  20, "%*X",      20, 0x1234abcdu)
    TEST("            EDCB5433",  20, "%*X",      20, -0x1234abcdu)
    TEST("                   x",  20, "%*c",      20, 'x')

    /* Präzision / Mindestanzahl von Ziffern */
    TEST("Hallo heimur",           12, "%.20s",      "Hallo heimur")
    TEST("00000000000000001024",   20, "%.20d",      1024)
    TEST("-00000000000000001024",  21, "%.20d",      -1024)
    TEST("00000000000000001024",   20, "%.20i",      1024)
    TEST("-00000000000000001024",  21, "%.20i",      -1024)
    TEST("00000000000000001024",   20, "%.20u",      1024u)
    TEST("00000000004294966272",   20, "%.20u",      -1024u)
    TEST("00000000000000000777",   20, "%.20o",      0777u)
    TEST("00000000037777777001",   20, "%.20o",      -0777u)
    TEST("0000000000001234abcd",   20, "%.20x",      0x1234abcdu)
    TEST("000000000000edcb5433",   20, "%.20x",      -0x1234abcdu)
    TEST("0000000000001234ABCD",   20, "%.20X",      0x1234abcdu)
    TEST("000000000000EDCB5433",   20, "%.20X",      -0x1234abcdu)

    /* Feldbreite und Präzision */
    TEST("               Hallo",   20, "%20.5s",     "Hallo heimur")
    TEST("               01024",   20, "%20.5d",      1024)
    TEST("              -01024",   20, "%20.5d",      -1024)
    TEST("               01024",   20, "%20.5i",      1024)
    TEST("              -01024",   20, "%20.5i",      -1024)
    TEST("               01024",   20, "%20.5u",      1024u)
    TEST("          4294966272",   20, "%20.5u",      -1024u)
    TEST("               00777",   20, "%20.5o",      0777u)
    TEST("         37777777001",   20, "%20.5o",      -0777u)
    TEST("            1234abcd",   20, "%20.5x",      0x1234abcdu)
    TEST("          00edcb5433",   20, "%20.10x",     -0x1234abcdu)
    TEST("            1234ABCD",   20, "%20.5X",      0x1234abcdu)
    TEST("          00EDCB5433",   20, "%20.10X",     -0x1234abcdu)

    /* Präzision: 0 wird ignoriert */
    TEST("               Hallo",   20, "%020.5s",    "Hallo heimur")
    TEST("               01024",   20, "%020.5d",     1024)
    TEST("              -01024",   20, "%020.5d",     -1024)
    TEST("               01024",   20, "%020.5i",     1024)
    TEST("              -01024",   20, "%020.5i",     -1024)
    TEST("               01024",   20, "%020.5u",     1024u)
    TEST("          4294966272",   20, "%020.5u",     -1024u)
    TEST("               00777",   20, "%020.5o",     0777u)
    TEST("         37777777001",   20, "%020.5o",     -0777u)
    TEST("            1234abcd",   20, "%020.5x",     0x1234abcdu)
    TEST("          00edcb5433",   20, "%020.10x",    -0x1234abcdu)
    TEST("            1234ABCD",   20, "%020.5X",     0x1234abcdu)
    TEST("          00EDCB5433",   20, "%020.10X",    -0x1234abcdu)

    /* Präzision 0 */
    TEST("",                        0, "%.0s",        "Hallo heimur")
    TEST("                    ",   20, "%20.0s",      "Hallo heimur")
    TEST("",                        0, "%.s",         "Hallo heimur")
    TEST("                    ",   20, "%20.s",       "Hallo heimur")
    TEST("                1024",   20, "%20.0d",      1024)
    TEST("               -1024",   20, "%20.d",       -1024)
    TEST("                    ",   20, "%20.d",       0)
    TEST("                1024",   20, "%20.0i",      1024)
    TEST("               -1024",   20, "%20.i",       -1024)
    TEST("                    ",   20, "%20.i",       0)
    TEST("                1024",   20, "%20.u",       1024u)
    TEST("          4294966272",   20, "%20.0u",      -1024u)
    TEST("                    ",   20, "%20.u",       0u)
    TEST("                 777",   20, "%20.o",       0777u)
    TEST("         37777777001",   20, "%20.0o",      -0777u)
    TEST("                    ",   20, "%20.o",       0u)
    TEST("            1234abcd",   20, "%20.x",       0x1234abcdu)
    TEST("            edcb5433",   20, "%20.0x",      -0x1234abcdu)
    TEST("                    ",   20, "%20.x",       0u)
    TEST("            1234ABCD",   20, "%20.X",       0x1234abcdu)
    TEST("            EDCB5433",   20, "%20.0X",      -0x1234abcdu)
    TEST("                    ",   20, "%20.X",       0u)

    /* Negative Präzision wird ignoriert */
    /* XXX glibc tut nicht, was ich erwartet habe, vorerst deaktiviert... */
#if 0
    TEST("Hallo heimur",   12, "%.-42s",       "Hallo heimur")
    TEST("1024",            4, "%.-42d",       1024)
    TEST("-1024",           5, "%.-42d",       -1024)
    TEST("1024",            4, "%.-42i",       1024)
    TEST("-1024",           5, "%.-42i",       -1024)
    TEST("1024",            4, "%.-42u",       1024u)
    TEST("4294966272",     10, "%.-42u",       -1024u)
    TEST("777",             3, "%.-42o",       0777u)
    TEST("37777777001",    11, "%.-42o",       -0777u)
    TEST("1234abcd",        8, "%.-42x",       0x1234abcdu)
    TEST("edcb5433",        8, "%.-42x",       -0x1234abcdu)
    TEST("1234ABCD",        8, "%.-42X",       0x1234abcdu)
    TEST("EDCB5433",        8, "%.-42X",       -0x1234abcdu)
#endif

    /*
     * Präzision und Feldbreite aus Parameter.
     * + hat Vorrang vor <space>, - hat Vorrang vor 0 (das eh ignoriert wird,
     * weil eine Präzision angegeben ist)
     */
    TEST("Hallo               ",   20, "% -0+*.*s",    20,  5, "Hallo heimur")
    TEST("+01024              ",   20, "% -0+*.*d",    20,  5,  1024)
    TEST("-01024              ",   20, "% -0+*.*d",    20,  5,  -1024)
    TEST("+01024              ",   20, "% -0+*.*i",    20,  5,  1024)
    TEST("-01024              ",   20, "% 0-+*.*i",    20,  5,  -1024)
    TEST("01024               ",   20, "% 0-+*.*u",    20,  5,  1024u)
    TEST("4294966272          ",   20, "% 0-+*.*u",    20,  5,  -1024u)
    TEST("00777               ",   20, "%+ -0*.*o",    20,  5,  0777u)
    TEST("37777777001         ",   20, "%+ -0*.*o",    20,  5,  -0777u)
    TEST("1234abcd            ",   20, "%+ -0*.*x",    20,  5,  0x1234abcdu)
    TEST("00edcb5433          ",   20, "%+ -0*.*x",    20, 10,  -0x1234abcdu)
    TEST("1234ABCD            ",   20, "% -+0*.*X",    20,  5,  0x1234abcdu)
    TEST("00EDCB5433          ",   20, "% -+0*.*X",    20, 10,  -0x1234abcdu)

    if (failed == 0) {
        printf("* PASS sprintf\n");
    } else {
        printf("* %d Testfaelle fehlgeschlagen\n", failed);
    }

    return 0;
}
