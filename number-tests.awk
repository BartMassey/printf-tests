#!/bin/awk -f
# Copyright © 2013 Bart Massey
# This program is licensed under the GPL version 2 or later.
# Please see the file COPYING in this distribution for
# license terms.

/^#/ {
    print $0
    next
}
/^ *$/ {
    print $0
    next
}
{
    printf "%4d %s\n", ++n, $0
}
