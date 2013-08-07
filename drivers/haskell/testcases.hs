-- XXX This code generated automatically by gen-testcases.hs
-- from ../../printf-tests.txt . You probably do not want to
-- manually edit this file.
  checkResult 1 "0.33" =<< (flip catch (handler 1) $ return $ Just $
    printf "%.*f" (2 :: Int32) (0.33333333 :: Double))
  checkResult 2 "foo" =<< (flip catch (handler 2) $ return $ Just $
    printf "%.3s" "foobar")
  checkResult 3 "     00004" =<< (flip catch (handler 3) $ return $ Just $
    printf "%10.5d" (4 :: Int32))
  checkResult 4 " 42" =<< (flip catch (handler 4) $ return $ Just $
    printf "% d" (42 :: Int32))
  checkResult 5 "-42" =<< (flip catch (handler 5) $ return $ Just $
    printf "% d" (-42 :: Int32))
  checkResult 6 "   42" =<< (flip catch (handler 6) $ return $ Just $
    printf "% 5d" (42 :: Int32))
  checkResult 7 "  -42" =<< (flip catch (handler 7) $ return $ Just $
    printf "% 5d" (-42 :: Int32))
  checkResult 8 "             42" =<< (flip catch (handler 8) $ return $ Just $
    printf "% 15d" (42 :: Int32))
  checkResult 9 "            -42" =<< (flip catch (handler 9) $ return $ Just $
    printf "% 15d" (-42 :: Int32))
  checkResult 10 "+42" =<< (flip catch (handler 10) $ return $ Just $
    printf "%+d" (42 :: Int32))
  checkResult 11 "-42" =<< (flip catch (handler 11) $ return $ Just $
    printf "%+d" (-42 :: Int32))
  checkResult 12 "  +42" =<< (flip catch (handler 12) $ return $ Just $
    printf "%+5d" (42 :: Int32))
  checkResult 13 "  -42" =<< (flip catch (handler 13) $ return $ Just $
    printf "%+5d" (-42 :: Int32))
  checkResult 14 "            +42" =<< (flip catch (handler 14) $ return $ Just $
    printf "%+15d" (42 :: Int32))
  checkResult 15 "            -42" =<< (flip catch (handler 15) $ return $ Just $
    printf "%+15d" (-42 :: Int32))
  checkResult 16 "42" =<< (flip catch (handler 16) $ return $ Just $
    printf "%0d" (42 :: Int32))
  checkResult 17 "-42" =<< (flip catch (handler 17) $ return $ Just $
    printf "%0d" (-42 :: Int32))
  checkResult 18 "00042" =<< (flip catch (handler 18) $ return $ Just $
    printf "%05d" (42 :: Int32))
  checkResult 19 "-0042" =<< (flip catch (handler 19) $ return $ Just $
    printf "%05d" (-42 :: Int32))
  checkResult 20 "000000000000042" =<< (flip catch (handler 20) $ return $ Just $
    printf "%015d" (42 :: Int32))
  checkResult 21 "-00000000000042" =<< (flip catch (handler 21) $ return $ Just $
    printf "%015d" (-42 :: Int32))
  checkResult 22 "42" =<< (flip catch (handler 22) $ return $ Just $
    printf "%-d" (42 :: Int32))
  checkResult 23 "-42" =<< (flip catch (handler 23) $ return $ Just $
    printf "%-d" (-42 :: Int32))
  checkResult 24 "42   " =<< (flip catch (handler 24) $ return $ Just $
    printf "%-5d" (42 :: Int32))
  checkResult 25 "-42  " =<< (flip catch (handler 25) $ return $ Just $
    printf "%-5d" (-42 :: Int32))
  checkResult 26 "42             " =<< (flip catch (handler 26) $ return $ Just $
    printf "%-15d" (42 :: Int32))
  checkResult 27 "-42            " =<< (flip catch (handler 27) $ return $ Just $
    printf "%-15d" (-42 :: Int32))
  checkResult 28 "42" =<< (flip catch (handler 28) $ return $ Just $
    printf "%-0d" (42 :: Int32))
  checkResult 29 "-42" =<< (flip catch (handler 29) $ return $ Just $
    printf "%-0d" (-42 :: Int32))
  checkResult 30 "42   " =<< (flip catch (handler 30) $ return $ Just $
    printf "%-05d" (42 :: Int32))
  checkResult 31 "-42  " =<< (flip catch (handler 31) $ return $ Just $
    printf "%-05d" (-42 :: Int32))
  checkResult 32 "42             " =<< (flip catch (handler 32) $ return $ Just $
    printf "%-015d" (42 :: Int32))
  checkResult 33 "-42            " =<< (flip catch (handler 33) $ return $ Just $
    printf "%-015d" (-42 :: Int32))
  checkResult 34 "42" =<< (flip catch (handler 34) $ return $ Just $
    printf "%0-d" (42 :: Int32))
  checkResult 35 "-42" =<< (flip catch (handler 35) $ return $ Just $
    printf "%0-d" (-42 :: Int32))
  checkResult 36 "42   " =<< (flip catch (handler 36) $ return $ Just $
    printf "%0-5d" (42 :: Int32))
  checkResult 37 "-42  " =<< (flip catch (handler 37) $ return $ Just $
    printf "%0-5d" (-42 :: Int32))
  checkResult 38 "42             " =<< (flip catch (handler 38) $ return $ Just $
    printf "%0-15d" (42 :: Int32))
  checkResult 39 "-42            " =<< (flip catch (handler 39) $ return $ Just $
    printf "%0-15d" (-42 :: Int32))
  checkResult 43 "42.90" =<< (flip catch (handler 43) $ return $ Just $
    printf "%.2f" (42.8952 :: Double))
  checkResult 44 "42.90" =<< (flip catch (handler 44) $ return $ Just $
    printf "%.2F" (42.8952 :: Double))
  checkResult 45 "42.8952000000" =<< (flip catch (handler 45) $ return $ Just $
    printf "%.10f" (42.8952 :: Double))
  checkResult 46 "42.90" =<< (flip catch (handler 46) $ return $ Just $
    printf "%1.2f" (42.8952 :: Double))
  checkResult 47 " 42.90" =<< (flip catch (handler 47) $ return $ Just $
    printf "%6.2f" (42.8952 :: Double))
  checkResult 48 "042.90" =<< (flip catch (handler 48) $ return $ Just $
    printf "%06.2f" (42.8952 :: Double))
  checkResult 49 "+42.90" =<< (flip catch (handler 49) $ return $ Just $
    printf "%+6.2f" (42.8952 :: Double))
  checkResult 50 "42.8952000000" =<< (flip catch (handler 50) $ return $ Just $
    printf "%5.10f" (42.8952 :: Double))
  -- 51: anti-test
  -- 52: anti-test
  checkResult 54 "%0$s" =<< (flip catch (handler 54) $ return $ Just $
    printf "%0$s")
  checkResult 55 "Hot Pocket" =<< (flip catch (handler 55) $ return $ Just $
    printf "%1$s %2$s" "Hot" "Pocket")
  checkResult 56 "12.0 Hot Pockets" =<< (flip catch (handler 56) $ return $ Just $
    printf "%1$.1f %2$s %3$ss" (12.0 :: Double) "Hot" "Pocket")
  -- 58: anti-test
  checkResult 59 "%(foo" =<< (flip catch (handler 59) $ return $ Just $
    printf "%(foo")
  checkResult 60 " foo" =<< (flip catch (handler 60) $ return $ Just $
    printf "%*s" (4 :: Int32) "foo")
  checkResult 61 "      3.14" =<< (flip catch (handler 61) $ return $ Just $
    printf "%*.*f" (10 :: Int32) (2 :: Int32) (3.14159265 :: Double))
  checkResult 62 "0000003.14" =<< (flip catch (handler 62) $ return $ Just $
    printf "%0*.*f" (10 :: Int32) (2 :: Int32) (3.14159265 :: Double))
  checkResult 63 "3.14      " =<< (flip catch (handler 63) $ return $ Just $
    printf "%-*.*f" (10 :: Int32) (2 :: Int32) (3.14159265 :: Double))
  -- 64: anti-test
  -- 65: anti-test
  checkResult 66 "+hello+" =<< (flip catch (handler 66) $ return $ Just $
    printf "+%s+" "hello")
  checkResult 67 "+10+" =<< (flip catch (handler 67) $ return $ Just $
    printf "+%d+" (10 :: Int32))
  checkResult 68 "a" =<< (flip catch (handler 68) $ return $ Just $
    printf "%c" 'a')
  checkResult 69 " " =<< (flip catch (handler 69) $ return $ Just $
    printf "%c" (32 :: Int32))
  checkResult 70 "$" =<< (flip catch (handler 70) $ return $ Just $
    printf "%c" (36 :: Int32))
  checkResult 71 "10" =<< (flip catch (handler 71) $ return $ Just $
    printf "%d" (10 :: Int32))
  -- 72: anti-test
  -- 73: anti-test
  checkResult 76 "+7.894561230000000e+08" =<< (flip catch (handler 76) $ return $ Just $
    printf "%+#22.15e" (7.89456123e8 :: Double))
  checkResult 77 "7.894561230000000e+08 " =<< (flip catch (handler 77) $ return $ Just $
    printf "%-#22.15e" (7.89456123e8 :: Double))
  checkResult 78 " 7.894561230000000e+08" =<< (flip catch (handler 78) $ return $ Just $
    printf "%#22.15e" (7.89456123e8 :: Double))
  checkResult 79 "8.e+08" =<< (flip catch (handler 79) $ return $ Just $
    printf "%#1.1g" (7.89456123e8 :: Double))
  checkResult 81 "    +100" =<< (flip catch (handler 81) $ return $ Just $
    printf "%+8lld" (100 :: Int64))
  checkResult 82 "+00000100" =<< (flip catch (handler 82) $ return $ Just $
    printf "%+.8lld" (100 :: Int64))
  checkResult 83 " +00000100" =<< (flip catch (handler 83) $ return $ Just $
    printf "%+10.8lld" (100 :: Int64))
  checkResult 84 "%_1lld" =<< (flip catch (handler 84) $ return $ Just $
    printf "%_1lld" (100 :: Int64))
  checkResult 85 "-00100" =<< (flip catch (handler 85) $ return $ Just $
    printf "%-1.5lld" (-100 :: Int64))
  checkResult 86 "  100" =<< (flip catch (handler 86) $ return $ Just $
    printf "%5lld" (100 :: Int64))
  checkResult 87 " -100" =<< (flip catch (handler 87) $ return $ Just $
    printf "%5lld" (-100 :: Int64))
  checkResult 88 "100  " =<< (flip catch (handler 88) $ return $ Just $
    printf "%-5lld" (100 :: Int64))
  checkResult 89 "-100 " =<< (flip catch (handler 89) $ return $ Just $
    printf "%-5lld" (-100 :: Int64))
  checkResult 90 "00100" =<< (flip catch (handler 90) $ return $ Just $
    printf "%-.5lld" (100 :: Int64))
  checkResult 91 "-00100" =<< (flip catch (handler 91) $ return $ Just $
    printf "%-.5lld" (-100 :: Int64))
  checkResult 92 "00100   " =<< (flip catch (handler 92) $ return $ Just $
    printf "%-8.5lld" (100 :: Int64))
  checkResult 93 "-00100  " =<< (flip catch (handler 93) $ return $ Just $
    printf "%-8.5lld" (-100 :: Int64))
  checkResult 94 "00100" =<< (flip catch (handler 94) $ return $ Just $
    printf "%05lld" (100 :: Int64))
  checkResult 95 "-0100" =<< (flip catch (handler 95) $ return $ Just $
    printf "%05lld" (-100 :: Int64))
  checkResult 96 " 100" =<< (flip catch (handler 96) $ return $ Just $
    printf "% lld" (100 :: Int64))
  checkResult 97 "-100" =<< (flip catch (handler 97) $ return $ Just $
    printf "% lld" (-100 :: Int64))
  checkResult 98 "  100" =<< (flip catch (handler 98) $ return $ Just $
    printf "% 5lld" (100 :: Int64))
  checkResult 99 " -100" =<< (flip catch (handler 99) $ return $ Just $
    printf "% 5lld" (-100 :: Int64))
  checkResult 100 " 00100" =<< (flip catch (handler 100) $ return $ Just $
    printf "% .5lld" (100 :: Int64))
  checkResult 101 "-00100" =<< (flip catch (handler 101) $ return $ Just $
    printf "% .5lld" (-100 :: Int64))
  checkResult 102 "   00100" =<< (flip catch (handler 102) $ return $ Just $
    printf "% 8.5lld" (100 :: Int64))
  checkResult 103 "  -00100" =<< (flip catch (handler 103) $ return $ Just $
    printf "% 8.5lld" (-100 :: Int64))
  checkResult 104 "" =<< (flip catch (handler 104) $ return $ Just $
    printf "%.0lld" (0 :: Int64))
  checkResult 105 " 0x00ffffffffffffff9c" =<< (flip catch (handler 105) $ return $ Just $
    printf "%#+21.18llx" (-100 :: Int64))
  checkResult 106 "0001777777777777777777634" =<< (flip catch (handler 106) $ return $ Just $
    printf "%#.25llo" (-100 :: Int64))
  checkResult 107 " 01777777777777777777634" =<< (flip catch (handler 107) $ return $ Just $
    printf "%#+24.20llo" (-100 :: Int64))
  checkResult 108 "0X00000FFFFFFFFFFFFFF9C" =<< (flip catch (handler 108) $ return $ Just $
    printf "%#+18.21llX" (-100 :: Int64))
  checkResult 109 "001777777777777777777634" =<< (flip catch (handler 109) $ return $ Just $
    printf "%#+20.24llo" (-100 :: Int64))
  checkResult 110 "   0018446744073709551615" =<< (flip catch (handler 110) $ return $ Just $
    printf "%#+25.22llu" (-1 :: Int64))
  checkResult 111 "   0018446744073709551615" =<< (flip catch (handler 111) $ return $ Just $
    printf "%#+25.22llu" (-1 :: Int64))
  checkResult 112 "     0000018446744073709551615" =<< (flip catch (handler 112) $ return $ Just $
    printf "%#+30.25llu" (-1 :: Int64))
  checkResult 113 "  -0000000000000000000001" =<< (flip catch (handler 113) $ return $ Just $
    printf "%+#25.22lld" (-1 :: Int64))
  checkResult 114 "00144   " =<< (flip catch (handler 114) $ return $ Just $
    printf "%#-8.5llo" (100 :: Int64))
  checkResult 115 "+00100  " =<< (flip catch (handler 115) $ return $ Just $
    printf "%#-+ 08.5lld" (100 :: Int64))
  checkResult 116 "+00100  " =<< (flip catch (handler 116) $ return $ Just $
    printf "%#-+ 08.5lld" (100 :: Int64))
  checkResult 117 "0000000000000000000000000000000000000001" =<< (flip catch (handler 117) $ return $ Just $
    printf "%.40lld" (1 :: Int64))
  checkResult 118 " 0000000000000000000000000000000000000001" =<< (flip catch (handler 118) $ return $ Just $
    printf "% .40lld" (1 :: Int64))
  checkResult 119 " 0000000000000000000000000000000000000001" =<< (flip catch (handler 119) $ return $ Just $
    printf "% .40d" (1 :: Int32))
  checkResult 122 "1" =<< (flip catch (handler 122) $ return $ Just $
    printf "%I0d" (1 :: Int32))
  checkResult 123 "                               1" =<< (flip catch (handler 123) $ return $ Just $
    printf "%I32d" (1 :: Int32))
  checkResult 125 " 1" =<< (flip catch (handler 125) $ return $ Just $
    printf "% d" (1 :: Int32))
  checkResult 126 "+1" =<< (flip catch (handler 126) $ return $ Just $
    printf "%+ d" (1 :: Int32))
  checkResult 129 "0x0000000001" =<< (flip catch (handler 129) $ return $ Just $
    printf "%#012x" (1 :: Int32))
  checkResult 130 "0x00000001" =<< (flip catch (handler 130) $ return $ Just $
    printf "%#04.8x" (1 :: Int32))
  checkResult 131 "0x01    " =<< (flip catch (handler 131) $ return $ Just $
    printf "%#-08.2x" (1 :: Int32))
  checkResult 132 "00000001" =<< (flip catch (handler 132) $ return $ Just $
    printf "%#08o" (1 :: Int32))
  checkResult 142 "f" =<< (flip catch (handler 142) $ return $ Just $
    printf "%.1s" "foo")
  checkResult 143 "f" =<< (flip catch (handler 143) $ return $ Just $
    printf "%.*s" (1 :: Int32) "foo")
  checkResult 144 "foo  " =<< (flip catch (handler 144) $ return $ Just $
    printf "%*s" (-5 :: Int32) "foo")
  checkResult 145 "hello" =<< (flip catch (handler 145) $ return $ Just $
    printf "hello")
  checkResult 147 "%b" =<< (flip catch (handler 147) $ return $ Just $
    printf "%b")
  checkResult 148 "  a" =<< (flip catch (handler 148) $ return $ Just $
    printf "%3c" 'a')
  checkResult 149 "1234" =<< (flip catch (handler 149) $ return $ Just $
    printf "%3d" (1234 :: Int32))
  checkResult 152 "2" =<< (flip catch (handler 152) $ return $ Just $
    printf "%-1d" (2 :: Int32))
  checkResult 153 "8.6000" =<< (flip catch (handler 153) $ return $ Just $
    printf "%2.4f" (8.6 :: Double))
  checkResult 154 "0.600000" =<< (flip catch (handler 154) $ return $ Just $
    printf "%0f" (0.6 :: Double))
  checkResult 155 "1" =<< (flip catch (handler 155) $ return $ Just $
    printf "%.0f" (0.6 :: Double))
  checkResult 156 "8.6000e+00" =<< (flip catch (handler 156) $ return $ Just $
    printf "%2.4e" (8.6 :: Double))
  checkResult 157 " 8.6000e+00" =<< (flip catch (handler 157) $ return $ Just $
    printf "% 2.4e" (8.6 :: Double))
  checkResult 158 " 0008.6000e+00" =<< (flip catch (handler 158) $ return $ Just $
    printf "% 014.4e" (8.6 :: Double))
  checkResult 159 "-8.6000e+00" =<< (flip catch (handler 159) $ return $ Just $
    printf "% 2.4e" (-8.6 :: Double))
  checkResult 160 "+8.6000e+00" =<< (flip catch (handler 160) $ return $ Just $
    printf "%+2.4e" (8.6 :: Double))
  checkResult 161 "8.6" =<< (flip catch (handler 161) $ return $ Just $
    printf "%2.4g" (8.6 :: Double))
  checkResult 162 "-1" =<< (flip catch (handler 162) $ return $ Just $
    printf "%-i" (-1 :: Int32))
  checkResult 163 "1" =<< (flip catch (handler 163) $ return $ Just $
    printf "%-i" (1 :: Int32))
  checkResult 164 "+1" =<< (flip catch (handler 164) $ return $ Just $
    printf "%+i" (1 :: Int32))
  checkResult 165 "12" =<< (flip catch (handler 165) $ return $ Just $
    printf "%o" (10 :: Int32))
  checkResult 169 "%%%%" =<< (flip catch (handler 169) $ return $ Just $
    printf "%s" "%%%%")
  checkResult 170 "4294967295" =<< (flip catch (handler 170) $ return $ Just $
    printf "%u" (-1 :: Int32))
  checkResult 171 "%w" =<< (flip catch (handler 171) $ return $ Just $
    printf "%w" (-1 :: Int32))
  checkResult 176 "%H" =<< (flip catch (handler 176) $ return $ Just $
    printf "%H" (-1 :: Int32))
  checkResult 177 "%0" =<< (flip catch (handler 177) $ return $ Just $
    printf "%%0")
  checkResult 178 "2345" =<< (flip catch (handler 178) $ return $ Just $
    printf "%hx" (74565 :: Int32))
  checkResult 179 "61" =<< (flip catch (handler 179) $ return $ Just $
    printf "%hhx" 'a')
  checkResult 181 "Hallo heimur" =<< (flip catch (handler 181) $ return $ Just $
    printf "Hallo heimur")
  checkResult 182 "Hallo heimur" =<< (flip catch (handler 182) $ return $ Just $
    printf "%s" "Hallo heimur")
  checkResult 183 "1024" =<< (flip catch (handler 183) $ return $ Just $
    printf "%d" (1024 :: Int32))
  checkResult 184 "-1024" =<< (flip catch (handler 184) $ return $ Just $
    printf "%d" (-1024 :: Int32))
  checkResult 185 "1024" =<< (flip catch (handler 185) $ return $ Just $
    printf "%i" (1024 :: Int32))
  checkResult 186 "-1024" =<< (flip catch (handler 186) $ return $ Just $
    printf "%i" (-1024 :: Int32))
  checkResult 187 "1024" =<< (flip catch (handler 187) $ return $ Just $
    printf "%u" (1024 :: Int32))
  checkResult 188 "4294966272" =<< (flip catch (handler 188) $ return $ Just $
    printf "%u" (4294966272 :: Word32))
  checkResult 189 "777" =<< (flip catch (handler 189) $ return $ Just $
    printf "%o" (511 :: Int32))
  checkResult 190 "37777777001" =<< (flip catch (handler 190) $ return $ Just $
    printf "%o" (4294966785 :: Word32))
  checkResult 191 "1234abcd" =<< (flip catch (handler 191) $ return $ Just $
    printf "%x" (305441741 :: Int32))
  checkResult 192 "edcb5433" =<< (flip catch (handler 192) $ return $ Just $
    printf "%x" (3989525555 :: Word32))
  checkResult 193 "1234ABCD" =<< (flip catch (handler 193) $ return $ Just $
    printf "%X" (305441741 :: Int32))
  checkResult 194 "EDCB5433" =<< (flip catch (handler 194) $ return $ Just $
    printf "%X" (3989525555 :: Word32))
  checkResult 195 "x" =<< (flip catch (handler 195) $ return $ Just $
    printf "%c" 'x')
  checkResult 196 "%" =<< (flip catch (handler 196) $ return $ Just $
    printf "%%")
  checkResult 197 "Hallo heimur" =<< (flip catch (handler 197) $ return $ Just $
    printf "%+s" "Hallo heimur")
  checkResult 198 "+1024" =<< (flip catch (handler 198) $ return $ Just $
    printf "%+d" (1024 :: Int32))
  checkResult 199 "-1024" =<< (flip catch (handler 199) $ return $ Just $
    printf "%+d" (-1024 :: Int32))
  checkResult 200 "+1024" =<< (flip catch (handler 200) $ return $ Just $
    printf "%+i" (1024 :: Int32))
  checkResult 201 "-1024" =<< (flip catch (handler 201) $ return $ Just $
    printf "%+i" (-1024 :: Int32))
  checkResult 202 "1024" =<< (flip catch (handler 202) $ return $ Just $
    printf "%+u" (1024 :: Int32))
  checkResult 203 "4294966272" =<< (flip catch (handler 203) $ return $ Just $
    printf "%+u" (4294966272 :: Word32))
  checkResult 204 "777" =<< (flip catch (handler 204) $ return $ Just $
    printf "%+o" (511 :: Int32))
  checkResult 205 "37777777001" =<< (flip catch (handler 205) $ return $ Just $
    printf "%+o" (4294966785 :: Word32))
  checkResult 206 "1234abcd" =<< (flip catch (handler 206) $ return $ Just $
    printf "%+x" (305441741 :: Int32))
  checkResult 207 "edcb5433" =<< (flip catch (handler 207) $ return $ Just $
    printf "%+x" (3989525555 :: Word32))
  checkResult 208 "1234ABCD" =<< (flip catch (handler 208) $ return $ Just $
    printf "%+X" (305441741 :: Int32))
  checkResult 209 "EDCB5433" =<< (flip catch (handler 209) $ return $ Just $
    printf "%+X" (3989525555 :: Word32))
  checkResult 210 "x" =<< (flip catch (handler 210) $ return $ Just $
    printf "%+c" 'x')
  checkResult 211 "Hallo heimur" =<< (flip catch (handler 211) $ return $ Just $
    printf "% s" "Hallo heimur")
  checkResult 212 " 1024" =<< (flip catch (handler 212) $ return $ Just $
    printf "% d" (1024 :: Int32))
  checkResult 213 "-1024" =<< (flip catch (handler 213) $ return $ Just $
    printf "% d" (-1024 :: Int32))
  checkResult 214 " 1024" =<< (flip catch (handler 214) $ return $ Just $
    printf "% i" (1024 :: Int32))
  checkResult 215 "-1024" =<< (flip catch (handler 215) $ return $ Just $
    printf "% i" (-1024 :: Int32))
  checkResult 216 "1024" =<< (flip catch (handler 216) $ return $ Just $
    printf "% u" (1024 :: Int32))
  checkResult 217 "4294966272" =<< (flip catch (handler 217) $ return $ Just $
    printf "% u" (4294966272 :: Word32))
  checkResult 218 "777" =<< (flip catch (handler 218) $ return $ Just $
    printf "% o" (511 :: Int32))
  checkResult 219 "37777777001" =<< (flip catch (handler 219) $ return $ Just $
    printf "% o" (4294966785 :: Word32))
  checkResult 220 "1234abcd" =<< (flip catch (handler 220) $ return $ Just $
    printf "% x" (305441741 :: Int32))
  checkResult 221 "edcb5433" =<< (flip catch (handler 221) $ return $ Just $
    printf "% x" (3989525555 :: Word32))
  checkResult 222 "1234ABCD" =<< (flip catch (handler 222) $ return $ Just $
    printf "% X" (305441741 :: Int32))
  checkResult 223 "EDCB5433" =<< (flip catch (handler 223) $ return $ Just $
    printf "% X" (3989525555 :: Word32))
  checkResult 224 "x" =<< (flip catch (handler 224) $ return $ Just $
    printf "% c" 'x')
  checkResult 225 "Hallo heimur" =<< (flip catch (handler 225) $ return $ Just $
    printf "%+ s" "Hallo heimur")
  checkResult 226 "+1024" =<< (flip catch (handler 226) $ return $ Just $
    printf "%+ d" (1024 :: Int32))
  checkResult 227 "-1024" =<< (flip catch (handler 227) $ return $ Just $
    printf "%+ d" (-1024 :: Int32))
  checkResult 228 "+1024" =<< (flip catch (handler 228) $ return $ Just $
    printf "%+ i" (1024 :: Int32))
  checkResult 229 "-1024" =<< (flip catch (handler 229) $ return $ Just $
    printf "%+ i" (-1024 :: Int32))
  checkResult 230 "1024" =<< (flip catch (handler 230) $ return $ Just $
    printf "%+ u" (1024 :: Int32))
  checkResult 231 "4294966272" =<< (flip catch (handler 231) $ return $ Just $
    printf "%+ u" (4294966272 :: Word32))
  checkResult 232 "777" =<< (flip catch (handler 232) $ return $ Just $
    printf "%+ o" (511 :: Int32))
  checkResult 233 "37777777001" =<< (flip catch (handler 233) $ return $ Just $
    printf "%+ o" (4294966785 :: Word32))
  checkResult 234 "1234abcd" =<< (flip catch (handler 234) $ return $ Just $
    printf "%+ x" (305441741 :: Int32))
  checkResult 235 "edcb5433" =<< (flip catch (handler 235) $ return $ Just $
    printf "%+ x" (3989525555 :: Word32))
  checkResult 236 "1234ABCD" =<< (flip catch (handler 236) $ return $ Just $
    printf "%+ X" (305441741 :: Int32))
  checkResult 237 "EDCB5433" =<< (flip catch (handler 237) $ return $ Just $
    printf "%+ X" (3989525555 :: Word32))
  checkResult 238 "x" =<< (flip catch (handler 238) $ return $ Just $
    printf "%+ c" 'x')
  checkResult 239 "0777" =<< (flip catch (handler 239) $ return $ Just $
    printf "%#o" (511 :: Int32))
  checkResult 240 "037777777001" =<< (flip catch (handler 240) $ return $ Just $
    printf "%#o" (4294966785 :: Word32))
  checkResult 241 "0x1234abcd" =<< (flip catch (handler 241) $ return $ Just $
    printf "%#x" (305441741 :: Int32))
  checkResult 242 "0xedcb5433" =<< (flip catch (handler 242) $ return $ Just $
    printf "%#x" (3989525555 :: Word32))
  checkResult 243 "0X1234ABCD" =<< (flip catch (handler 243) $ return $ Just $
    printf "%#X" (305441741 :: Int32))
  checkResult 244 "0XEDCB5433" =<< (flip catch (handler 244) $ return $ Just $
    printf "%#X" (3989525555 :: Word32))
  checkResult 245 "0" =<< (flip catch (handler 245) $ return $ Just $
    printf "%#o" (0 :: Word32))
  checkResult 246 "0" =<< (flip catch (handler 246) $ return $ Just $
    printf "%#x" (0 :: Word32))
  checkResult 247 "0" =<< (flip catch (handler 247) $ return $ Just $
    printf "%#X" (0 :: Word32))
  checkResult 248 "Hallo heimur" =<< (flip catch (handler 248) $ return $ Just $
    printf "%1s" "Hallo heimur")
  checkResult 249 "1024" =<< (flip catch (handler 249) $ return $ Just $
    printf "%1d" (1024 :: Int32))
  checkResult 250 "-1024" =<< (flip catch (handler 250) $ return $ Just $
    printf "%1d" (-1024 :: Int32))
  checkResult 251 "1024" =<< (flip catch (handler 251) $ return $ Just $
    printf "%1i" (1024 :: Int32))
  checkResult 252 "-1024" =<< (flip catch (handler 252) $ return $ Just $
    printf "%1i" (-1024 :: Int32))
  checkResult 253 "1024" =<< (flip catch (handler 253) $ return $ Just $
    printf "%1u" (1024 :: Int32))
  checkResult 254 "4294966272" =<< (flip catch (handler 254) $ return $ Just $
    printf "%1u" (4294966272 :: Word32))
  checkResult 255 "777" =<< (flip catch (handler 255) $ return $ Just $
    printf "%1o" (511 :: Int32))
  checkResult 256 "37777777001" =<< (flip catch (handler 256) $ return $ Just $
    printf "%1o" (4294966785 :: Word32))
  checkResult 257 "1234abcd" =<< (flip catch (handler 257) $ return $ Just $
    printf "%1x" (305441741 :: Int32))
  checkResult 258 "edcb5433" =<< (flip catch (handler 258) $ return $ Just $
    printf "%1x" (3989525555 :: Word32))
  checkResult 259 "1234ABCD" =<< (flip catch (handler 259) $ return $ Just $
    printf "%1X" (305441741 :: Int32))
  checkResult 260 "EDCB5433" =<< (flip catch (handler 260) $ return $ Just $
    printf "%1X" (3989525555 :: Word32))
  checkResult 261 "x" =<< (flip catch (handler 261) $ return $ Just $
    printf "%1c" 'x')
  checkResult 262 "               Hallo" =<< (flip catch (handler 262) $ return $ Just $
    printf "%20s" "Hallo")
  checkResult 263 "                1024" =<< (flip catch (handler 263) $ return $ Just $
    printf "%20d" (1024 :: Int32))
  checkResult 264 "               -1024" =<< (flip catch (handler 264) $ return $ Just $
    printf "%20d" (-1024 :: Int32))
  checkResult 265 "                1024" =<< (flip catch (handler 265) $ return $ Just $
    printf "%20i" (1024 :: Int32))
  checkResult 266 "               -1024" =<< (flip catch (handler 266) $ return $ Just $
    printf "%20i" (-1024 :: Int32))
  checkResult 267 "                1024" =<< (flip catch (handler 267) $ return $ Just $
    printf "%20u" (1024 :: Int32))
  checkResult 268 "          4294966272" =<< (flip catch (handler 268) $ return $ Just $
    printf "%20u" (4294966272 :: Word32))
  checkResult 269 "                 777" =<< (flip catch (handler 269) $ return $ Just $
    printf "%20o" (511 :: Int32))
  checkResult 270 "         37777777001" =<< (flip catch (handler 270) $ return $ Just $
    printf "%20o" (4294966785 :: Word32))
  checkResult 271 "            1234abcd" =<< (flip catch (handler 271) $ return $ Just $
    printf "%20x" (305441741 :: Int32))
  checkResult 272 "            edcb5433" =<< (flip catch (handler 272) $ return $ Just $
    printf "%20x" (3989525555 :: Word32))
  checkResult 273 "            1234ABCD" =<< (flip catch (handler 273) $ return $ Just $
    printf "%20X" (305441741 :: Int32))
  checkResult 274 "            EDCB5433" =<< (flip catch (handler 274) $ return $ Just $
    printf "%20X" (3989525555 :: Word32))
  checkResult 275 "                   x" =<< (flip catch (handler 275) $ return $ Just $
    printf "%20c" 'x')
  checkResult 276 "Hallo               " =<< (flip catch (handler 276) $ return $ Just $
    printf "%-20s" "Hallo")
  checkResult 277 "1024                " =<< (flip catch (handler 277) $ return $ Just $
    printf "%-20d" (1024 :: Int32))
  checkResult 278 "-1024               " =<< (flip catch (handler 278) $ return $ Just $
    printf "%-20d" (-1024 :: Int32))
  checkResult 279 "1024                " =<< (flip catch (handler 279) $ return $ Just $
    printf "%-20i" (1024 :: Int32))
  checkResult 280 "-1024               " =<< (flip catch (handler 280) $ return $ Just $
    printf "%-20i" (-1024 :: Int32))
  checkResult 281 "1024                " =<< (flip catch (handler 281) $ return $ Just $
    printf "%-20u" (1024 :: Int32))
  checkResult 282 "4294966272          " =<< (flip catch (handler 282) $ return $ Just $
    printf "%-20u" (4294966272 :: Word32))
  checkResult 283 "777                 " =<< (flip catch (handler 283) $ return $ Just $
    printf "%-20o" (511 :: Int32))
  checkResult 284 "37777777001         " =<< (flip catch (handler 284) $ return $ Just $
    printf "%-20o" (4294966785 :: Word32))
  checkResult 285 "1234abcd            " =<< (flip catch (handler 285) $ return $ Just $
    printf "%-20x" (305441741 :: Int32))
  checkResult 286 "edcb5433            " =<< (flip catch (handler 286) $ return $ Just $
    printf "%-20x" (3989525555 :: Word32))
  checkResult 287 "1234ABCD            " =<< (flip catch (handler 287) $ return $ Just $
    printf "%-20X" (305441741 :: Int32))
  checkResult 288 "EDCB5433            " =<< (flip catch (handler 288) $ return $ Just $
    printf "%-20X" (3989525555 :: Word32))
  checkResult 289 "x                   " =<< (flip catch (handler 289) $ return $ Just $
    printf "%-20c" 'x')
  checkResult 290 "00000000000000001024" =<< (flip catch (handler 290) $ return $ Just $
    printf "%020d" (1024 :: Int32))
  checkResult 291 "-0000000000000001024" =<< (flip catch (handler 291) $ return $ Just $
    printf "%020d" (-1024 :: Int32))
  checkResult 292 "00000000000000001024" =<< (flip catch (handler 292) $ return $ Just $
    printf "%020i" (1024 :: Int32))
  checkResult 293 "-0000000000000001024" =<< (flip catch (handler 293) $ return $ Just $
    printf "%020i" (-1024 :: Int32))
  checkResult 294 "00000000000000001024" =<< (flip catch (handler 294) $ return $ Just $
    printf "%020u" (1024 :: Int32))
  checkResult 295 "00000000004294966272" =<< (flip catch (handler 295) $ return $ Just $
    printf "%020u" (4294966272 :: Word32))
  checkResult 296 "00000000000000000777" =<< (flip catch (handler 296) $ return $ Just $
    printf "%020o" (511 :: Int32))
  checkResult 297 "00000000037777777001" =<< (flip catch (handler 297) $ return $ Just $
    printf "%020o" (4294966785 :: Word32))
  checkResult 298 "0000000000001234abcd" =<< (flip catch (handler 298) $ return $ Just $
    printf "%020x" (305441741 :: Int32))
  checkResult 299 "000000000000edcb5433" =<< (flip catch (handler 299) $ return $ Just $
    printf "%020x" (3989525555 :: Word32))
  checkResult 300 "0000000000001234ABCD" =<< (flip catch (handler 300) $ return $ Just $
    printf "%020X" (305441741 :: Int32))
  checkResult 301 "000000000000EDCB5433" =<< (flip catch (handler 301) $ return $ Just $
    printf "%020X" (3989525555 :: Word32))
  checkResult 302 "                0777" =<< (flip catch (handler 302) $ return $ Just $
    printf "%#20o" (511 :: Int32))
  checkResult 303 "        037777777001" =<< (flip catch (handler 303) $ return $ Just $
    printf "%#20o" (4294966785 :: Word32))
  checkResult 304 "          0x1234abcd" =<< (flip catch (handler 304) $ return $ Just $
    printf "%#20x" (305441741 :: Int32))
  checkResult 305 "          0xedcb5433" =<< (flip catch (handler 305) $ return $ Just $
    printf "%#20x" (3989525555 :: Word32))
  checkResult 306 "          0X1234ABCD" =<< (flip catch (handler 306) $ return $ Just $
    printf "%#20X" (305441741 :: Int32))
  checkResult 307 "          0XEDCB5433" =<< (flip catch (handler 307) $ return $ Just $
    printf "%#20X" (3989525555 :: Word32))
  checkResult 308 "00000000000000000777" =<< (flip catch (handler 308) $ return $ Just $
    printf "%#020o" (511 :: Int32))
  checkResult 309 "00000000037777777001" =<< (flip catch (handler 309) $ return $ Just $
    printf "%#020o" (4294966785 :: Word32))
  checkResult 310 "0x00000000001234abcd" =<< (flip catch (handler 310) $ return $ Just $
    printf "%#020x" (305441741 :: Int32))
  checkResult 311 "0x0000000000edcb5433" =<< (flip catch (handler 311) $ return $ Just $
    printf "%#020x" (3989525555 :: Word32))
  checkResult 312 "0X00000000001234ABCD" =<< (flip catch (handler 312) $ return $ Just $
    printf "%#020X" (305441741 :: Int32))
  checkResult 313 "0X0000000000EDCB5433" =<< (flip catch (handler 313) $ return $ Just $
    printf "%#020X" (3989525555 :: Word32))
  checkResult 314 "Hallo               " =<< (flip catch (handler 314) $ return $ Just $
    printf "%0-20s" "Hallo")
  checkResult 315 "1024                " =<< (flip catch (handler 315) $ return $ Just $
    printf "%0-20d" (1024 :: Int32))
  checkResult 316 "-1024               " =<< (flip catch (handler 316) $ return $ Just $
    printf "%0-20d" (-1024 :: Int32))
  checkResult 317 "1024                " =<< (flip catch (handler 317) $ return $ Just $
    printf "%0-20i" (1024 :: Int32))
  checkResult 318 "-1024               " =<< (flip catch (handler 318) $ return $ Just $
    printf "%0-20i" (-1024 :: Int32))
  checkResult 319 "1024                " =<< (flip catch (handler 319) $ return $ Just $
    printf "%0-20u" (1024 :: Int32))
  checkResult 320 "4294966272          " =<< (flip catch (handler 320) $ return $ Just $
    printf "%0-20u" (4294966272 :: Word32))
  checkResult 321 "777                 " =<< (flip catch (handler 321) $ return $ Just $
    printf "%-020o" (511 :: Int32))
  checkResult 322 "37777777001         " =<< (flip catch (handler 322) $ return $ Just $
    printf "%-020o" (4294966785 :: Word32))
  checkResult 323 "1234abcd            " =<< (flip catch (handler 323) $ return $ Just $
    printf "%-020x" (305441741 :: Int32))
  checkResult 324 "edcb5433            " =<< (flip catch (handler 324) $ return $ Just $
    printf "%-020x" (3989525555 :: Word32))
  checkResult 325 "1234ABCD            " =<< (flip catch (handler 325) $ return $ Just $
    printf "%-020X" (305441741 :: Int32))
  checkResult 326 "EDCB5433            " =<< (flip catch (handler 326) $ return $ Just $
    printf "%-020X" (3989525555 :: Word32))
  checkResult 327 "x                   " =<< (flip catch (handler 327) $ return $ Just $
    printf "%-020c" 'x')
  checkResult 328 "               Hallo" =<< (flip catch (handler 328) $ return $ Just $
    printf "%*s" (20 :: Int32) "Hallo")
  checkResult 329 "                1024" =<< (flip catch (handler 329) $ return $ Just $
    printf "%*d" (20 :: Int32) (1024 :: Int32))
  checkResult 330 "               -1024" =<< (flip catch (handler 330) $ return $ Just $
    printf "%*d" (20 :: Int32) (-1024 :: Int32))
  checkResult 331 "                1024" =<< (flip catch (handler 331) $ return $ Just $
    printf "%*i" (20 :: Int32) (1024 :: Int32))
  checkResult 332 "               -1024" =<< (flip catch (handler 332) $ return $ Just $
    printf "%*i" (20 :: Int32) (-1024 :: Int32))
  checkResult 333 "                1024" =<< (flip catch (handler 333) $ return $ Just $
    printf "%*u" (20 :: Int32) (1024 :: Int32))
  checkResult 334 "          4294966272" =<< (flip catch (handler 334) $ return $ Just $
    printf "%*u" (20 :: Int32) (4294966272 :: Word32))
  checkResult 335 "                 777" =<< (flip catch (handler 335) $ return $ Just $
    printf "%*o" (20 :: Int32) (511 :: Int32))
  checkResult 336 "         37777777001" =<< (flip catch (handler 336) $ return $ Just $
    printf "%*o" (20 :: Int32) (4294966785 :: Word32))
  checkResult 337 "            1234abcd" =<< (flip catch (handler 337) $ return $ Just $
    printf "%*x" (20 :: Int32) (305441741 :: Int32))
  checkResult 338 "            edcb5433" =<< (flip catch (handler 338) $ return $ Just $
    printf "%*x" (20 :: Int32) (3989525555 :: Word32))
  checkResult 339 "            1234ABCD" =<< (flip catch (handler 339) $ return $ Just $
    printf "%*X" (20 :: Int32) (305441741 :: Int32))
  checkResult 340 "            EDCB5433" =<< (flip catch (handler 340) $ return $ Just $
    printf "%*X" (20 :: Int32) (3989525555 :: Word32))
  checkResult 341 "                   x" =<< (flip catch (handler 341) $ return $ Just $
    printf "%*c" (20 :: Int32) 'x')
  checkResult 342 "Hallo heimur" =<< (flip catch (handler 342) $ return $ Just $
    printf "%.20s" "Hallo heimur")
  checkResult 343 "00000000000000001024" =<< (flip catch (handler 343) $ return $ Just $
    printf "%.20d" (1024 :: Int32))
  checkResult 344 "-00000000000000001024" =<< (flip catch (handler 344) $ return $ Just $
    printf "%.20d" (-1024 :: Int32))
  checkResult 345 "00000000000000001024" =<< (flip catch (handler 345) $ return $ Just $
    printf "%.20i" (1024 :: Int32))
  checkResult 346 "-00000000000000001024" =<< (flip catch (handler 346) $ return $ Just $
    printf "%.20i" (-1024 :: Int32))
  checkResult 347 "00000000000000001024" =<< (flip catch (handler 347) $ return $ Just $
    printf "%.20u" (1024 :: Int32))
  checkResult 348 "00000000004294966272" =<< (flip catch (handler 348) $ return $ Just $
    printf "%.20u" (4294966272 :: Word32))
  checkResult 349 "00000000000000000777" =<< (flip catch (handler 349) $ return $ Just $
    printf "%.20o" (511 :: Int32))
  checkResult 350 "00000000037777777001" =<< (flip catch (handler 350) $ return $ Just $
    printf "%.20o" (4294966785 :: Word32))
  checkResult 351 "0000000000001234abcd" =<< (flip catch (handler 351) $ return $ Just $
    printf "%.20x" (305441741 :: Int32))
  checkResult 352 "000000000000edcb5433" =<< (flip catch (handler 352) $ return $ Just $
    printf "%.20x" (3989525555 :: Word32))
  checkResult 353 "0000000000001234ABCD" =<< (flip catch (handler 353) $ return $ Just $
    printf "%.20X" (305441741 :: Int32))
  checkResult 354 "000000000000EDCB5433" =<< (flip catch (handler 354) $ return $ Just $
    printf "%.20X" (3989525555 :: Word32))
  checkResult 355 "               Hallo" =<< (flip catch (handler 355) $ return $ Just $
    printf "%20.5s" "Hallo heimur")
  checkResult 356 "               01024" =<< (flip catch (handler 356) $ return $ Just $
    printf "%20.5d" (1024 :: Int32))
  checkResult 357 "              -01024" =<< (flip catch (handler 357) $ return $ Just $
    printf "%20.5d" (-1024 :: Int32))
  checkResult 358 "               01024" =<< (flip catch (handler 358) $ return $ Just $
    printf "%20.5i" (1024 :: Int32))
  checkResult 359 "              -01024" =<< (flip catch (handler 359) $ return $ Just $
    printf "%20.5i" (-1024 :: Int32))
  checkResult 360 "               01024" =<< (flip catch (handler 360) $ return $ Just $
    printf "%20.5u" (1024 :: Int32))
  checkResult 361 "          4294966272" =<< (flip catch (handler 361) $ return $ Just $
    printf "%20.5u" (4294966272 :: Word32))
  checkResult 362 "               00777" =<< (flip catch (handler 362) $ return $ Just $
    printf "%20.5o" (511 :: Int32))
  checkResult 363 "         37777777001" =<< (flip catch (handler 363) $ return $ Just $
    printf "%20.5o" (4294966785 :: Word32))
  checkResult 364 "            1234abcd" =<< (flip catch (handler 364) $ return $ Just $
    printf "%20.5x" (305441741 :: Int32))
  checkResult 365 "          00edcb5433" =<< (flip catch (handler 365) $ return $ Just $
    printf "%20.10x" (3989525555 :: Word32))
  checkResult 366 "            1234ABCD" =<< (flip catch (handler 366) $ return $ Just $
    printf "%20.5X" (305441741 :: Int32))
  checkResult 367 "          00EDCB5433" =<< (flip catch (handler 367) $ return $ Just $
    printf "%20.10X" (3989525555 :: Word32))
  checkResult 368 "               Hallo" =<< (flip catch (handler 368) $ return $ Just $
    printf "%020.5s" "Hallo heimur")
  checkResult 369 "               01024" =<< (flip catch (handler 369) $ return $ Just $
    printf "%020.5d" (1024 :: Int32))
  checkResult 370 "              -01024" =<< (flip catch (handler 370) $ return $ Just $
    printf "%020.5d" (-1024 :: Int32))
  checkResult 371 "               01024" =<< (flip catch (handler 371) $ return $ Just $
    printf "%020.5i" (1024 :: Int32))
  checkResult 372 "              -01024" =<< (flip catch (handler 372) $ return $ Just $
    printf "%020.5i" (-1024 :: Int32))
  checkResult 373 "               01024" =<< (flip catch (handler 373) $ return $ Just $
    printf "%020.5u" (1024 :: Int32))
  checkResult 374 "          4294966272" =<< (flip catch (handler 374) $ return $ Just $
    printf "%020.5u" (4294966272 :: Word32))
  checkResult 375 "               00777" =<< (flip catch (handler 375) $ return $ Just $
    printf "%020.5o" (511 :: Int32))
  checkResult 376 "         37777777001" =<< (flip catch (handler 376) $ return $ Just $
    printf "%020.5o" (4294966785 :: Word32))
  checkResult 377 "            1234abcd" =<< (flip catch (handler 377) $ return $ Just $
    printf "%020.5x" (305441741 :: Int32))
  checkResult 378 "          00edcb5433" =<< (flip catch (handler 378) $ return $ Just $
    printf "%020.10x" (3989525555 :: Word32))
  checkResult 379 "            1234ABCD" =<< (flip catch (handler 379) $ return $ Just $
    printf "%020.5X" (305441741 :: Int32))
  checkResult 380 "          00EDCB5433" =<< (flip catch (handler 380) $ return $ Just $
    printf "%020.10X" (3989525555 :: Word32))
  checkResult 381 "" =<< (flip catch (handler 381) $ return $ Just $
    printf "%.0s" "Hallo heimur")
  checkResult 382 "                    " =<< (flip catch (handler 382) $ return $ Just $
    printf "%20.0s" "Hallo heimur")
  checkResult 383 "" =<< (flip catch (handler 383) $ return $ Just $
    printf "%.s" "Hallo heimur")
  checkResult 384 "                    " =<< (flip catch (handler 384) $ return $ Just $
    printf "%20.s" "Hallo heimur")
  checkResult 385 "                1024" =<< (flip catch (handler 385) $ return $ Just $
    printf "%20.0d" (1024 :: Int32))
  checkResult 386 "               -1024" =<< (flip catch (handler 386) $ return $ Just $
    printf "%20.d" (-1024 :: Int32))
  checkResult 387 "                    " =<< (flip catch (handler 387) $ return $ Just $
    printf "%20.d" (0 :: Int32))
  checkResult 388 "                1024" =<< (flip catch (handler 388) $ return $ Just $
    printf "%20.0i" (1024 :: Int32))
  checkResult 389 "               -1024" =<< (flip catch (handler 389) $ return $ Just $
    printf "%20.i" (-1024 :: Int32))
  checkResult 390 "                    " =<< (flip catch (handler 390) $ return $ Just $
    printf "%20.i" (0 :: Int32))
  checkResult 391 "                1024" =<< (flip catch (handler 391) $ return $ Just $
    printf "%20.u" (1024 :: Int32))
  checkResult 392 "          4294966272" =<< (flip catch (handler 392) $ return $ Just $
    printf "%20.0u" (4294966272 :: Word32))
  checkResult 393 "                    " =<< (flip catch (handler 393) $ return $ Just $
    printf "%20.u" (0 :: Word32))
  checkResult 394 "                 777" =<< (flip catch (handler 394) $ return $ Just $
    printf "%20.o" (511 :: Int32))
  checkResult 395 "         37777777001" =<< (flip catch (handler 395) $ return $ Just $
    printf "%20.0o" (4294966785 :: Word32))
  checkResult 396 "                    " =<< (flip catch (handler 396) $ return $ Just $
    printf "%20.o" (0 :: Word32))
  checkResult 397 "            1234abcd" =<< (flip catch (handler 397) $ return $ Just $
    printf "%20.x" (305441741 :: Int32))
  checkResult 398 "            edcb5433" =<< (flip catch (handler 398) $ return $ Just $
    printf "%20.0x" (3989525555 :: Word32))
  checkResult 399 "                    " =<< (flip catch (handler 399) $ return $ Just $
    printf "%20.x" (0 :: Word32))
  checkResult 400 "            1234ABCD" =<< (flip catch (handler 400) $ return $ Just $
    printf "%20.X" (305441741 :: Int32))
  checkResult 401 "            EDCB5433" =<< (flip catch (handler 401) $ return $ Just $
    printf "%20.0X" (3989525555 :: Word32))
  checkResult 402 "                    " =<< (flip catch (handler 402) $ return $ Just $
    printf "%20.X" (0 :: Word32))
  checkResult 403 "Hallo               " =<< (flip catch (handler 403) $ return $ Just $
    printf "% -0+*.*s" (20 :: Int32) (5 :: Int32) "Hallo heimur")
  checkResult 404 "+01024              " =<< (flip catch (handler 404) $ return $ Just $
    printf "% -0+*.*d" (20 :: Int32) (5 :: Int32) (1024 :: Int32))
  checkResult 405 "-01024              " =<< (flip catch (handler 405) $ return $ Just $
    printf "% -0+*.*d" (20 :: Int32) (5 :: Int32) (-1024 :: Int32))
  checkResult 406 "+01024              " =<< (flip catch (handler 406) $ return $ Just $
    printf "% -0+*.*i" (20 :: Int32) (5 :: Int32) (1024 :: Int32))
  checkResult 407 "-01024              " =<< (flip catch (handler 407) $ return $ Just $
    printf "% 0-+*.*i" (20 :: Int32) (5 :: Int32) (-1024 :: Int32))
  checkResult 408 "01024               " =<< (flip catch (handler 408) $ return $ Just $
    printf "% 0-+*.*u" (20 :: Int32) (5 :: Int32) (1024 :: Int32))
  checkResult 409 "4294966272          " =<< (flip catch (handler 409) $ return $ Just $
    printf "% 0-+*.*u" (20 :: Int32) (5 :: Int32) (4294966272 :: Word32))
  checkResult 410 "00777               " =<< (flip catch (handler 410) $ return $ Just $
    printf "%+ -0*.*o" (20 :: Int32) (5 :: Int32) (511 :: Int32))
  checkResult 411 "37777777001         " =<< (flip catch (handler 411) $ return $ Just $
    printf "%+ -0*.*o" (20 :: Int32) (5 :: Int32) (4294966785 :: Word32))
  checkResult 412 "1234abcd            " =<< (flip catch (handler 412) $ return $ Just $
    printf "%+ -0*.*x" (20 :: Int32) (5 :: Int32) (305441741 :: Int32))
  checkResult 413 "00edcb5433          " =<< (flip catch (handler 413) $ return $ Just $
    printf "%+ -0*.*x" (20 :: Int32) (10 :: Int32) (3989525555 :: Word32))
  checkResult 414 "1234ABCD            " =<< (flip catch (handler 414) $ return $ Just $
    printf "% -+0*.*X" (20 :: Int32) (5 :: Int32) (305441741 :: Int32))
  checkResult 415 "00EDCB5433          " =<< (flip catch (handler 415) $ return $ Just $
    printf "% -+0*.*X" (20 :: Int32) (10 :: Int32) (3989525555 :: Word32))
