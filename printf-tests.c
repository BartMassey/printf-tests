/* Copyright © 2013 Bart Massey */
/* This program is licensed under the GPL version 2 or later.
   Please see the file COPYING in this distribution for
   license terms. */

#include <stdio.h>
#include <stdarg.h>
#include <string.h>

static char buf[1024];

static void failmsg(int serial, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    fprintf(stderr, "test %d failed: ", serial);
    vfprintf(stderr, fmt, ap);
    va_end(ap);
}

static void test(int serial, char *expect, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int n = vsnprintf(buf, 1024, fmt, ap);
    va_end(ap);
    if (n >= 1024) {
        failmsg(serial, "buffer overflow");
        return;
    }
    if (n != strlen(expect)) {
        failmsg(serial, "expected %d characters, got %d\n", n, strlen(expect));
        return;
    }
    if (strcmp(buf, expect)) {
        failmsg(serial, "expected \"%s\", got \"%s\"\n", expect, buf);
        return;
    }
}
