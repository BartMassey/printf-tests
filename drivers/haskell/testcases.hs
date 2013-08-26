-- XXX This code generated automatically by gen-testcases.hs
-- from ../../printf-tests.txt . You probably do not want to
-- manually edit this file.
  (checkResult 1 "0.33" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.*f" (2 :: Int32) (0.33333333 :: Double)
  (checkResult 2 "foo" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.3s" "foobar"
  (checkResult 3 "     00004" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%10.5d" (4 :: Int32)
  (checkResult 4 " 42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% d" (42 :: Int32)
  (checkResult 5 "-42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% d" (-42 :: Int32)
  (checkResult 6 "   42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 5d" (42 :: Int32)
  (checkResult 7 "  -42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 5d" (-42 :: Int32)
  (checkResult 8 "             42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 15d" (42 :: Int32)
  (checkResult 9 "            -42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 15d" (-42 :: Int32)
  (checkResult 10 "+42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+d" (42 :: Int32)
  (checkResult 11 "-42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+d" (-42 :: Int32)
  (checkResult 12 "  +42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+5d" (42 :: Int32)
  (checkResult 13 "  -42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+5d" (-42 :: Int32)
  (checkResult 14 "            +42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+15d" (42 :: Int32)
  (checkResult 15 "            -42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+15d" (-42 :: Int32)
  (checkResult 16 "42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0d" (42 :: Int32)
  (checkResult 17 "-42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0d" (-42 :: Int32)
  (checkResult 18 "00042" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%05d" (42 :: Int32)
  (checkResult 19 "-0042" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%05d" (-42 :: Int32)
  (checkResult 20 "000000000000042" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%015d" (42 :: Int32)
  (checkResult 21 "-00000000000042" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%015d" (-42 :: Int32)
  (checkResult 22 "42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-d" (42 :: Int32)
  (checkResult 23 "-42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-d" (-42 :: Int32)
  (checkResult 24 "42   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-5d" (42 :: Int32)
  (checkResult 25 "-42  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-5d" (-42 :: Int32)
  (checkResult 26 "42             " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-15d" (42 :: Int32)
  (checkResult 27 "-42            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-15d" (-42 :: Int32)
  (checkResult 28 "42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-0d" (42 :: Int32)
  (checkResult 29 "-42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-0d" (-42 :: Int32)
  (checkResult 30 "42   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-05d" (42 :: Int32)
  (checkResult 31 "-42  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-05d" (-42 :: Int32)
  (checkResult 32 "42             " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-015d" (42 :: Int32)
  (checkResult 33 "-42            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-015d" (-42 :: Int32)
  (checkResult 34 "42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-d" (42 :: Int32)
  (checkResult 35 "-42" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-d" (-42 :: Int32)
  (checkResult 36 "42   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-5d" (42 :: Int32)
  (checkResult 37 "-42  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-5d" (-42 :: Int32)
  (checkResult 38 "42             " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-15d" (42 :: Int32)
  (checkResult 39 "-42            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-15d" (-42 :: Int32)
  (checkResult 43 "42.90" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.2f" (42.8952 :: Double)
  (checkResult 44 "42.90" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.2F" (42.8952 :: Double)
  (checkResult 45 "42.8952000000" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.10f" (42.8952 :: Double)
  (checkResult 46 "42.90" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1.2f" (42.8952 :: Double)
  (checkResult 47 " 42.90" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%6.2f" (42.8952 :: Double)
  (checkResult 49 "+42.90" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+6.2f" (42.8952 :: Double)
  (checkResult 50 "42.8952000000" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%5.10f" (42.8952 :: Double)
  -- 51: anti-test
  -- 52: anti-test
  -- 53: excluded for Haskell
  -- 55: excluded for Haskell
  -- 56: excluded for Haskell
  -- 58: excluded for Haskell
  -- 59: excluded for Haskell
  (checkResult 60 " foo" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*s" (4 :: Int32) "foo"
  (checkResult 61 "      3.14" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*.*f" (10 :: Int32) (2 :: Int32) (3.14159265 :: Double)
  (checkResult 63 "3.14      " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-*.*f" (10 :: Int32) (2 :: Int32) (3.14159265 :: Double)
  -- 64: anti-test
  -- 65: anti-test
  (checkResult 66 "+hello+" =<<) $ flip E.catch handler $ return $! Right $!
    printf "+%s+" "hello"
  (checkResult 67 "+10+" =<<) $ flip E.catch handler $ return $! Right $!
    printf "+%d+" (10 :: Int32)
  (checkResult 68 "a" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%c" 'a'
  (checkResult 69 " " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%c" (32 :: Int32)
  (checkResult 70 "$" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%c" (36 :: Int32)
  (checkResult 71 "10" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%d" (10 :: Int32)
  -- 72: anti-test
  -- 73: anti-test
  -- 74: excluded for Haskell
  -- 75: excluded for Haskell
  -- 76: excluded for Haskell
  -- 77: excluded for Haskell
  -- 78: excluded for Haskell
  -- 79: excluded for Haskell
  (checkResult 81 "    +100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+8lld" (100 :: Int64)
  (checkResult 82 "+00000100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+.8lld" (100 :: Int64)
  (checkResult 83 " +00000100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+10.8lld" (100 :: Int64)
  -- 84: excluded for Haskell
  (checkResult 85 "-00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-1.5lld" (-100 :: Int64)
  (checkResult 86 "  100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%5lld" (100 :: Int64)
  (checkResult 87 " -100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%5lld" (-100 :: Int64)
  (checkResult 88 "100  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-5lld" (100 :: Int64)
  (checkResult 89 "-100 " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-5lld" (-100 :: Int64)
  (checkResult 90 "00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-.5lld" (100 :: Int64)
  (checkResult 91 "-00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-.5lld" (-100 :: Int64)
  (checkResult 92 "00100   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-8.5lld" (100 :: Int64)
  (checkResult 93 "-00100  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-8.5lld" (-100 :: Int64)
  (checkResult 94 "00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%05lld" (100 :: Int64)
  (checkResult 95 "-0100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%05lld" (-100 :: Int64)
  (checkResult 96 " 100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% lld" (100 :: Int64)
  (checkResult 97 "-100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% lld" (-100 :: Int64)
  (checkResult 98 "  100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 5lld" (100 :: Int64)
  (checkResult 99 " -100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 5lld" (-100 :: Int64)
  (checkResult 100 " 00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% .5lld" (100 :: Int64)
  (checkResult 101 "-00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% .5lld" (-100 :: Int64)
  (checkResult 102 "   00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 8.5lld" (100 :: Int64)
  (checkResult 103 "  -00100" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 8.5lld" (-100 :: Int64)
  (checkResult 104 "" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.0lld" (0 :: Int64)
  (checkResult 105 " 0x00ffffffffffffff9c" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+21.18llx" (-100 :: Int64)
  (checkResult 106 "0001777777777777777777634" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#.25llo" (-100 :: Int64)
  (checkResult 107 " 01777777777777777777634" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+24.20llo" (-100 :: Int64)
  (checkResult 108 "0X00000FFFFFFFFFFFFFF9C" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+18.21llX" (-100 :: Int64)
  (checkResult 109 "001777777777777777777634" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+20.24llo" (-100 :: Int64)
  (checkResult 110 "   0018446744073709551615" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+25.22llu" (-1 :: Int64)
  (checkResult 111 "   0018446744073709551615" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+25.22llu" (-1 :: Int64)
  (checkResult 112 "     0000018446744073709551615" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#+30.25llu" (-1 :: Int64)
  (checkResult 113 "  -0000000000000000000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+#25.22lld" (-1 :: Int64)
  (checkResult 114 "00144   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#-8.5llo" (100 :: Int64)
  (checkResult 115 "+00100  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#-+ 08.5lld" (100 :: Int64)
  (checkResult 116 "+00100  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#-+ 08.5lld" (100 :: Int64)
  (checkResult 117 "0000000000000000000000000000000000000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.40lld" (1 :: Int64)
  (checkResult 118 " 0000000000000000000000000000000000000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% .40lld" (1 :: Int64)
  (checkResult 119 " 0000000000000000000000000000000000000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% .40d" (1 :: Int32)
  -- 121: excluded for Haskell
  -- 124: excluded for Haskell
  (checkResult 125 " 1" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% d" (1 :: Int32)
  (checkResult 126 "+1" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ d" (1 :: Int32)
  (checkResult 129 "0x0000000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#012x" (1 :: Int32)
  (checkResult 130 "0x00000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#04.8x" (1 :: Int32)
  (checkResult 131 "0x01    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#-08.2x" (1 :: Int32)
  (checkResult 132 "00000001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#08o" (1 :: Int32)
  -- 133: excluded for Haskell
  -- 137: excluded for Haskell
  (checkResult 142 "f" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.1s" "foo"
  (checkResult 143 "f" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.*s" (1 :: Int32) "foo"
  (checkResult 144 "foo  " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*s" (-5 :: Int32) "foo"
  (checkResult 145 "hello" =<<) $ flip E.catch handler $ return $! Right $!
    printf "hello"
  -- 147: excluded for Haskell
  (checkResult 148 "  a" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%3c" 'a'
  (checkResult 149 "1234" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%3d" (1234 :: Int32)
  -- 150: excluded for Haskell
  (checkResult 152 "2" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-1d" (2 :: Int32)
  (checkResult 153 "8.6000" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%2.4f" (8.6 :: Double)
  -- 154: excluded for Haskell
  (checkResult 155 "1" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.0f" (0.6 :: Double)
  -- 156: excluded for Haskell
  -- 157: excluded for Haskell
  -- 159: excluded for Haskell
  -- 160: excluded for Haskell
  -- 161: excluded for Haskell
  (checkResult 162 "-1" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-i" (-1 :: Int32)
  (checkResult 163 "1" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-i" (1 :: Int32)
  (checkResult 164 "+1" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+i" (1 :: Int32)
  (checkResult 165 "12" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%o" (10 :: Int32)
  -- 166: excluded for Haskell
  -- 167: excluded for Haskell
  (checkResult 169 "%%%%" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%s" "%%%%"
  (checkResult 170 "4294967295" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%u" (-1 :: Int32)
  -- 171: excluded for Haskell
  -- 172: excluded for Haskell
  -- 173: excluded for Haskell
  -- 174: excluded for Haskell
  -- 176: excluded for Haskell
  (checkResult 177 "%0" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%%0"
  -- 178: excluded for Haskell
  (checkResult 179 "61" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%hhx" 'a'
  (checkResult 181 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "Hallo heimur"
  (checkResult 182 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%s" "Hallo heimur"
  (checkResult 183 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%d" (1024 :: Int32)
  (checkResult 184 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%d" (-1024 :: Int32)
  (checkResult 185 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%i" (1024 :: Int32)
  (checkResult 186 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%i" (-1024 :: Int32)
  (checkResult 187 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%u" (1024 :: Int32)
  (checkResult 188 "4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%u" (4294966272 :: Word32)
  (checkResult 189 "777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%o" (511 :: Int32)
  (checkResult 190 "37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%o" (4294966785 :: Word32)
  (checkResult 191 "1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%x" (305441741 :: Int32)
  (checkResult 192 "edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%x" (3989525555 :: Word32)
  (checkResult 193 "1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%X" (305441741 :: Int32)
  (checkResult 194 "EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%X" (3989525555 :: Word32)
  (checkResult 195 "x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%c" 'x'
  (checkResult 196 "%" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%%"
  (checkResult 197 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+s" "Hallo heimur"
  (checkResult 198 "+1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+d" (1024 :: Int32)
  (checkResult 199 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+d" (-1024 :: Int32)
  (checkResult 200 "+1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+i" (1024 :: Int32)
  (checkResult 201 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+i" (-1024 :: Int32)
  (checkResult 202 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+u" (1024 :: Int32)
  (checkResult 203 "4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+u" (4294966272 :: Word32)
  (checkResult 204 "777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+o" (511 :: Int32)
  (checkResult 205 "37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+o" (4294966785 :: Word32)
  (checkResult 206 "1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+x" (305441741 :: Int32)
  (checkResult 207 "edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+x" (3989525555 :: Word32)
  (checkResult 208 "1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+X" (305441741 :: Int32)
  (checkResult 209 "EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+X" (3989525555 :: Word32)
  (checkResult 210 "x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+c" 'x'
  (checkResult 211 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% s" "Hallo heimur"
  (checkResult 212 " 1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% d" (1024 :: Int32)
  (checkResult 213 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% d" (-1024 :: Int32)
  (checkResult 214 " 1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% i" (1024 :: Int32)
  (checkResult 215 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% i" (-1024 :: Int32)
  (checkResult 216 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% u" (1024 :: Int32)
  (checkResult 217 "4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% u" (4294966272 :: Word32)
  (checkResult 218 "777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% o" (511 :: Int32)
  (checkResult 219 "37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% o" (4294966785 :: Word32)
  (checkResult 220 "1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% x" (305441741 :: Int32)
  (checkResult 221 "edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% x" (3989525555 :: Word32)
  (checkResult 222 "1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% X" (305441741 :: Int32)
  (checkResult 223 "EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% X" (3989525555 :: Word32)
  (checkResult 224 "x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "% c" 'x'
  (checkResult 225 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ s" "Hallo heimur"
  (checkResult 226 "+1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ d" (1024 :: Int32)
  (checkResult 227 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ d" (-1024 :: Int32)
  (checkResult 228 "+1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ i" (1024 :: Int32)
  (checkResult 229 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ i" (-1024 :: Int32)
  (checkResult 230 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ u" (1024 :: Int32)
  (checkResult 231 "4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ u" (4294966272 :: Word32)
  (checkResult 232 "777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ o" (511 :: Int32)
  (checkResult 233 "37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ o" (4294966785 :: Word32)
  (checkResult 234 "1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ x" (305441741 :: Int32)
  (checkResult 235 "edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ x" (3989525555 :: Word32)
  (checkResult 236 "1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ X" (305441741 :: Int32)
  (checkResult 237 "EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ X" (3989525555 :: Word32)
  (checkResult 238 "x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ c" 'x'
  (checkResult 239 "0777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#o" (511 :: Int32)
  (checkResult 240 "037777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#o" (4294966785 :: Word32)
  (checkResult 241 "0x1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#x" (305441741 :: Int32)
  (checkResult 242 "0xedcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#x" (3989525555 :: Word32)
  (checkResult 243 "0X1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#X" (305441741 :: Int32)
  (checkResult 244 "0XEDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#X" (3989525555 :: Word32)
  (checkResult 245 "0" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#o" (0 :: Word32)
  (checkResult 246 "0" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#x" (0 :: Word32)
  (checkResult 247 "0" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#X" (0 :: Word32)
  (checkResult 248 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1s" "Hallo heimur"
  (checkResult 249 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1d" (1024 :: Int32)
  (checkResult 250 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1d" (-1024 :: Int32)
  (checkResult 251 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1i" (1024 :: Int32)
  (checkResult 252 "-1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1i" (-1024 :: Int32)
  (checkResult 253 "1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1u" (1024 :: Int32)
  (checkResult 254 "4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1u" (4294966272 :: Word32)
  (checkResult 255 "777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1o" (511 :: Int32)
  (checkResult 256 "37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1o" (4294966785 :: Word32)
  (checkResult 257 "1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1x" (305441741 :: Int32)
  (checkResult 258 "edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1x" (3989525555 :: Word32)
  (checkResult 259 "1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1X" (305441741 :: Int32)
  (checkResult 260 "EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1X" (3989525555 :: Word32)
  (checkResult 261 "x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%1c" 'x'
  (checkResult 262 "               Hallo" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20s" "Hallo"
  (checkResult 263 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20d" (1024 :: Int32)
  (checkResult 264 "               -1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20d" (-1024 :: Int32)
  (checkResult 265 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20i" (1024 :: Int32)
  (checkResult 266 "               -1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20i" (-1024 :: Int32)
  (checkResult 267 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20u" (1024 :: Int32)
  (checkResult 268 "          4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20u" (4294966272 :: Word32)
  (checkResult 269 "                 777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20o" (511 :: Int32)
  (checkResult 270 "         37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20o" (4294966785 :: Word32)
  (checkResult 271 "            1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20x" (305441741 :: Int32)
  (checkResult 272 "            edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20x" (3989525555 :: Word32)
  (checkResult 273 "            1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20X" (305441741 :: Int32)
  (checkResult 274 "            EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20X" (3989525555 :: Word32)
  (checkResult 275 "                   x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20c" 'x'
  (checkResult 276 "Hallo               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20s" "Hallo"
  (checkResult 277 "1024                " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20d" (1024 :: Int32)
  (checkResult 278 "-1024               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20d" (-1024 :: Int32)
  (checkResult 279 "1024                " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20i" (1024 :: Int32)
  (checkResult 280 "-1024               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20i" (-1024 :: Int32)
  (checkResult 281 "1024                " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20u" (1024 :: Int32)
  (checkResult 282 "4294966272          " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20u" (4294966272 :: Word32)
  (checkResult 283 "777                 " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20o" (511 :: Int32)
  (checkResult 284 "37777777001         " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20o" (4294966785 :: Word32)
  (checkResult 285 "1234abcd            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20x" (305441741 :: Int32)
  (checkResult 286 "edcb5433            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20x" (3989525555 :: Word32)
  (checkResult 287 "1234ABCD            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20X" (305441741 :: Int32)
  (checkResult 288 "EDCB5433            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20X" (3989525555 :: Word32)
  (checkResult 289 "x                   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-20c" 'x'
  (checkResult 290 "00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020d" (1024 :: Int32)
  (checkResult 291 "-0000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020d" (-1024 :: Int32)
  (checkResult 292 "00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020i" (1024 :: Int32)
  (checkResult 293 "-0000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020i" (-1024 :: Int32)
  (checkResult 294 "00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020u" (1024 :: Int32)
  (checkResult 295 "00000000004294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020u" (4294966272 :: Word32)
  (checkResult 296 "00000000000000000777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020o" (511 :: Int32)
  (checkResult 297 "00000000037777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020o" (4294966785 :: Word32)
  (checkResult 298 "0000000000001234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020x" (305441741 :: Int32)
  (checkResult 299 "000000000000edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020x" (3989525555 :: Word32)
  (checkResult 300 "0000000000001234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020X" (305441741 :: Int32)
  (checkResult 301 "000000000000EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020X" (3989525555 :: Word32)
  (checkResult 302 "                0777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#20o" (511 :: Int32)
  (checkResult 303 "        037777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#20o" (4294966785 :: Word32)
  (checkResult 304 "          0x1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#20x" (305441741 :: Int32)
  (checkResult 305 "          0xedcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#20x" (3989525555 :: Word32)
  (checkResult 306 "          0X1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#20X" (305441741 :: Int32)
  (checkResult 307 "          0XEDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#20X" (3989525555 :: Word32)
  (checkResult 308 "00000000000000000777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#020o" (511 :: Int32)
  (checkResult 309 "00000000037777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#020o" (4294966785 :: Word32)
  (checkResult 310 "0x00000000001234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#020x" (305441741 :: Int32)
  (checkResult 311 "0x0000000000edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#020x" (3989525555 :: Word32)
  (checkResult 312 "0X00000000001234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#020X" (305441741 :: Int32)
  (checkResult 313 "0X0000000000EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%#020X" (3989525555 :: Word32)
  (checkResult 314 "Hallo               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20s" "Hallo"
  (checkResult 315 "1024                " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20d" (1024 :: Int32)
  (checkResult 316 "-1024               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20d" (-1024 :: Int32)
  (checkResult 317 "1024                " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20i" (1024 :: Int32)
  (checkResult 318 "-1024               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20i" (-1024 :: Int32)
  (checkResult 319 "1024                " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20u" (1024 :: Int32)
  (checkResult 320 "4294966272          " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%0-20u" (4294966272 :: Word32)
  (checkResult 321 "777                 " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020o" (511 :: Int32)
  (checkResult 322 "37777777001         " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020o" (4294966785 :: Word32)
  (checkResult 323 "1234abcd            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020x" (305441741 :: Int32)
  (checkResult 324 "edcb5433            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020x" (3989525555 :: Word32)
  (checkResult 325 "1234ABCD            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020X" (305441741 :: Int32)
  (checkResult 326 "EDCB5433            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020X" (3989525555 :: Word32)
  (checkResult 327 "x                   " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%-020c" 'x'
  (checkResult 328 "               Hallo" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*s" (20 :: Int32) "Hallo"
  (checkResult 329 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*d" (20 :: Int32) (1024 :: Int32)
  (checkResult 330 "               -1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*d" (20 :: Int32) (-1024 :: Int32)
  (checkResult 331 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*i" (20 :: Int32) (1024 :: Int32)
  (checkResult 332 "               -1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*i" (20 :: Int32) (-1024 :: Int32)
  (checkResult 333 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*u" (20 :: Int32) (1024 :: Int32)
  (checkResult 334 "          4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*u" (20 :: Int32) (4294966272 :: Word32)
  (checkResult 335 "                 777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*o" (20 :: Int32) (511 :: Int32)
  (checkResult 336 "         37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*o" (20 :: Int32) (4294966785 :: Word32)
  (checkResult 337 "            1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*x" (20 :: Int32) (305441741 :: Int32)
  (checkResult 338 "            edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*x" (20 :: Int32) (3989525555 :: Word32)
  (checkResult 339 "            1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*X" (20 :: Int32) (305441741 :: Int32)
  (checkResult 340 "            EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*X" (20 :: Int32) (3989525555 :: Word32)
  (checkResult 341 "                   x" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%*c" (20 :: Int32) 'x'
  (checkResult 342 "Hallo heimur" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20s" "Hallo heimur"
  (checkResult 343 "00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20d" (1024 :: Int32)
  (checkResult 344 "-00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20d" (-1024 :: Int32)
  (checkResult 345 "00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20i" (1024 :: Int32)
  (checkResult 346 "-00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20i" (-1024 :: Int32)
  (checkResult 347 "00000000000000001024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20u" (1024 :: Int32)
  (checkResult 348 "00000000004294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20u" (4294966272 :: Word32)
  (checkResult 349 "00000000000000000777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20o" (511 :: Int32)
  (checkResult 350 "00000000037777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20o" (4294966785 :: Word32)
  (checkResult 351 "0000000000001234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20x" (305441741 :: Int32)
  (checkResult 352 "000000000000edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20x" (3989525555 :: Word32)
  (checkResult 353 "0000000000001234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20X" (305441741 :: Int32)
  (checkResult 354 "000000000000EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.20X" (3989525555 :: Word32)
  (checkResult 355 "               Hallo" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5s" "Hallo heimur"
  (checkResult 356 "               01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5d" (1024 :: Int32)
  (checkResult 357 "              -01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5d" (-1024 :: Int32)
  (checkResult 358 "               01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5i" (1024 :: Int32)
  (checkResult 359 "              -01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5i" (-1024 :: Int32)
  (checkResult 360 "               01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5u" (1024 :: Int32)
  (checkResult 361 "          4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5u" (4294966272 :: Word32)
  (checkResult 362 "               00777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5o" (511 :: Int32)
  (checkResult 363 "         37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5o" (4294966785 :: Word32)
  (checkResult 364 "            1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5x" (305441741 :: Int32)
  (checkResult 365 "          00edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.10x" (3989525555 :: Word32)
  (checkResult 366 "            1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.5X" (305441741 :: Int32)
  (checkResult 367 "          00EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.10X" (3989525555 :: Word32)
  (checkResult 368 "               Hallo" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5s" "Hallo heimur"
  (checkResult 369 "               01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5d" (1024 :: Int32)
  (checkResult 370 "              -01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5d" (-1024 :: Int32)
  (checkResult 371 "               01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5i" (1024 :: Int32)
  (checkResult 372 "              -01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5i" (-1024 :: Int32)
  (checkResult 373 "               01024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5u" (1024 :: Int32)
  (checkResult 374 "          4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5u" (4294966272 :: Word32)
  (checkResult 375 "               00777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5o" (511 :: Int32)
  (checkResult 376 "         37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5o" (4294966785 :: Word32)
  (checkResult 377 "            1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5x" (305441741 :: Int32)
  (checkResult 378 "          00edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.10x" (3989525555 :: Word32)
  (checkResult 379 "            1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.5X" (305441741 :: Int32)
  (checkResult 380 "          00EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%020.10X" (3989525555 :: Word32)
  (checkResult 381 "" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.0s" "Hallo heimur"
  (checkResult 382 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0s" "Hallo heimur"
  (checkResult 383 "" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%.s" "Hallo heimur"
  (checkResult 384 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.s" "Hallo heimur"
  (checkResult 385 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0d" (1024 :: Int32)
  (checkResult 386 "               -1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.d" (-1024 :: Int32)
  (checkResult 387 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.d" (0 :: Int32)
  (checkResult 388 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0i" (1024 :: Int32)
  (checkResult 389 "               -1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.i" (-1024 :: Int32)
  (checkResult 390 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.i" (0 :: Int32)
  (checkResult 391 "                1024" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.u" (1024 :: Int32)
  (checkResult 392 "          4294966272" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0u" (4294966272 :: Word32)
  (checkResult 393 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.u" (0 :: Word32)
  (checkResult 394 "                 777" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.o" (511 :: Int32)
  (checkResult 395 "         37777777001" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0o" (4294966785 :: Word32)
  (checkResult 396 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.o" (0 :: Word32)
  (checkResult 397 "            1234abcd" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.x" (305441741 :: Int32)
  (checkResult 398 "            edcb5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0x" (3989525555 :: Word32)
  (checkResult 399 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.x" (0 :: Word32)
  (checkResult 400 "            1234ABCD" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.X" (305441741 :: Int32)
  (checkResult 401 "            EDCB5433" =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.0X" (3989525555 :: Word32)
  (checkResult 402 "                    " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%20.X" (0 :: Word32)
  (checkResult 403 "Hallo               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% -0+*.*s" (20 :: Int32) (5 :: Int32) "Hallo heimur"
  (checkResult 404 "+01024              " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% -0+*.*d" (20 :: Int32) (5 :: Int32) (1024 :: Int32)
  (checkResult 405 "-01024              " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% -0+*.*d" (20 :: Int32) (5 :: Int32) (-1024 :: Int32)
  (checkResult 406 "+01024              " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% -0+*.*i" (20 :: Int32) (5 :: Int32) (1024 :: Int32)
  (checkResult 407 "-01024              " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 0-+*.*i" (20 :: Int32) (5 :: Int32) (-1024 :: Int32)
  (checkResult 408 "01024               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 0-+*.*u" (20 :: Int32) (5 :: Int32) (1024 :: Int32)
  (checkResult 409 "4294966272          " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% 0-+*.*u" (20 :: Int32) (5 :: Int32) (4294966272 :: Word32)
  (checkResult 410 "00777               " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ -0*.*o" (20 :: Int32) (5 :: Int32) (511 :: Int32)
  (checkResult 411 "37777777001         " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ -0*.*o" (20 :: Int32) (5 :: Int32) (4294966785 :: Word32)
  (checkResult 412 "1234abcd            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ -0*.*x" (20 :: Int32) (5 :: Int32) (305441741 :: Int32)
  (checkResult 413 "00edcb5433          " =<<) $ flip E.catch handler $ return $! Right $!
    printf "%+ -0*.*x" (20 :: Int32) (10 :: Int32) (3989525555 :: Word32)
  (checkResult 414 "1234ABCD            " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% -+0*.*X" (20 :: Int32) (5 :: Int32) (305441741 :: Int32)
  (checkResult 415 "00EDCB5433          " =<<) $ flip E.catch handler $ return $! Right $!
    printf "% -+0*.*X" (20 :: Int32) (10 :: Int32) (3989525555 :: Word32)
