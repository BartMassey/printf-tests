/* XXX This code generated automatically by gen-testcases.hs
   from ../../printf-tests.txt . You probably do not want to
   manually edit this file. */
    test(1, "0.33", "%.*f", 2, 0.33333333);
    test(2, "foo", "%.3s", "foobar");
    test(3, "     00004", "%10.5d", 4);
    test(4, " 42", "% d", 42);
    test(5, "-42", "% d", -42);
    test(6, "   42", "% 5d", 42);
    test(7, "  -42", "% 5d", -42);
    test(8, "             42", "% 15d", 42);
    test(9, "            -42", "% 15d", -42);
    test(10, "+42", "%+d", 42);
    test(11, "-42", "%+d", -42);
    test(12, "  +42", "%+5d", 42);
    test(13, "  -42", "%+5d", -42);
    test(14, "            +42", "%+15d", 42);
    test(15, "            -42", "%+15d", -42);
    test(16, "42", "%0d", 42);
    test(17, "-42", "%0d", -42);
    test(18, "00042", "%05d", 42);
    test(19, "-0042", "%05d", -42);
    test(20, "000000000000042", "%015d", 42);
    test(21, "-00000000000042", "%015d", -42);
    test(22, "42", "%-d", 42);
    test(23, "-42", "%-d", -42);
    test(24, "42   ", "%-5d", 42);
    test(25, "-42  ", "%-5d", -42);
    test(26, "42             ", "%-15d", 42);
    test(27, "-42            ", "%-15d", -42);
    test(28, "42", "%-0d", 42);
    test(29, "-42", "%-0d", -42);
    test(30, "42   ", "%-05d", 42);
    test(31, "-42  ", "%-05d", -42);
    test(32, "42             ", "%-015d", 42);
    test(33, "-42            ", "%-015d", -42);
    test(34, "42", "%0-d", 42);
    test(35, "-42", "%0-d", -42);
    test(36, "42   ", "%0-5d", 42);
    test(37, "-42  ", "%0-5d", -42);
    test(38, "42             ", "%0-15d", 42);
    test(39, "-42            ", "%0-15d", -42);
    test(43, "42.90", "%.2f", 42.8952);
    test(44, "42.90", "%.2F", 42.8952);
    test(45, "42.8952000000", "%.10f", 42.8952);
    test(46, "42.90", "%1.2f", 42.8952);
    test(47, " 42.90", "%6.2f", 42.8952);
    test(48, "042.90", "%06.2f", 42.8952);
    test(49, "+42.90", "%+6.2f", 42.8952);
    test(50, "42.8952000000", "%5.10f", 42.8952);
    /* 51: anti-test */
    /* 52: anti-test */
    test(54, "%0$s", "%0$s");
    test(55, "Hot Pocket", "%1$s %2$s", "Hot", "Pocket");
    test(56, "12.0 Hot Pockets", "%1$.1f %2$s %3$ss", 12.0, "Hot", "Pocket");
    /* 58: anti-test */
    test(59, "%(foo", "%(foo");
    test(60, " foo", "%*s", 4, "foo");
    test(61, "      3.14", "%*.*f", 10, 2, 3.14159265);
    test(62, "0000003.14", "%0*.*f", 10, 2, 3.14159265);
    test(63, "3.14      ", "%-*.*f", 10, 2, 3.14159265);
    /* 64: anti-test */
    /* 65: anti-test */
    test(66, "+hello+", "+%s+", "hello");
    test(67, "+10+", "+%d+", 10);
    test(68, "a", "%c", 'a');
    test(69, " ", "%c", 32);
    test(70, "$", "%c", 36);
    test(71, "10", "%d", 10);
    /* 72: anti-test */
    /* 73: anti-test */
    test(76, "+7.894561230000000e+08", "%+#22.15e", 7.89456123e8);
    test(77, "7.894561230000000e+08 ", "%-#22.15e", 7.89456123e8);
    test(78, " 7.894561230000000e+08", "%#22.15e", 7.89456123e8);
    test(79, "8.e+08", "%#1.1g", 7.89456123e8);
    test(81, "    +100", "%+8lld", 100LL);
    test(82, "+00000100", "%+.8lld", 100LL);
    test(83, " +00000100", "%+10.8lld", 100LL);
    test(84, "%_1lld", "%_1lld", 100LL);
    test(85, "-00100", "%-1.5lld", -100LL);
    test(86, "  100", "%5lld", 100LL);
    test(87, " -100", "%5lld", -100LL);
    test(88, "100  ", "%-5lld", 100LL);
    test(89, "-100 ", "%-5lld", -100LL);
    test(90, "00100", "%-.5lld", 100LL);
    test(91, "-00100", "%-.5lld", -100LL);
    test(92, "00100   ", "%-8.5lld", 100LL);
    test(93, "-00100  ", "%-8.5lld", -100LL);
    test(94, "00100", "%05lld", 100LL);
    test(95, "-0100", "%05lld", -100LL);
    test(96, " 100", "% lld", 100LL);
    test(97, "-100", "% lld", -100LL);
    test(98, "  100", "% 5lld", 100LL);
    test(99, " -100", "% 5lld", -100LL);
    test(100, " 00100", "% .5lld", 100LL);
    test(101, "-00100", "% .5lld", -100LL);
    test(102, "   00100", "% 8.5lld", 100LL);
    test(103, "  -00100", "% 8.5lld", -100LL);
    test(104, "", "%.0lld", 0LL);
    test(105, " 0x00ffffffffffffff9c", "%#+21.18llx", -100LL);
    test(106, "0001777777777777777777634", "%#.25llo", -100LL);
    test(107, " 01777777777777777777634", "%#+24.20llo", -100LL);
    test(108, "0X00000FFFFFFFFFFFFFF9C", "%#+18.21llX", -100LL);
    test(109, "001777777777777777777634", "%#+20.24llo", -100LL);
    test(110, "   0018446744073709551615", "%#+25.22llu", -1LL);
    test(111, "   0018446744073709551615", "%#+25.22llu", -1LL);
    test(112, "     0000018446744073709551615", "%#+30.25llu", -1LL);
    test(113, "  -0000000000000000000001", "%+#25.22lld", -1LL);
    test(114, "00144   ", "%#-8.5llo", 100LL);
    test(115, "+00100  ", "%#-+ 08.5lld", 100LL);
    test(116, "+00100  ", "%#-+ 08.5lld", 100LL);
    test(117, "0000000000000000000000000000000000000001", "%.40lld", 1LL);
    test(118, " 0000000000000000000000000000000000000001", "% .40lld", 1LL);
    test(119, " 0000000000000000000000000000000000000001", "% .40d", 1);
    test(122, "1", "%I0d", 1);
    test(123, "                               1", "%I32d", 1);
    test(125, " 1", "% d", 1);
    test(126, "+1", "%+ d", 1);
    test(129, "0x0000000001", "%#012x", 1);
    test(130, "0x00000001", "%#04.8x", 1);
    test(131, "0x01    ", "%#-08.2x", 1);
    test(132, "00000001", "%#08o", 1);
    test(133, "0x39", "%p", (void *)57ULL);
    test(137, "0x39", "%p", (void *)57U);
    test(142, "f", "%.1s", "foo");
    test(143, "f", "%.*s", 1, "foo");
    test(144, "foo  ", "%*s", -5, "foo");
    test(145, "hello", "hello");
    test(147, "%b", "%b");
    test(148, "  a", "%3c", 'a');
    test(149, "1234", "%3d", 1234);
    test(152, "2", "%-1d", 2);
    test(153, "8.6000", "%2.4f", 8.6);
    test(154, "0.600000", "%0f", 0.6);
    test(155, "1", "%.0f", 0.6);
    test(156, "8.6000e+00", "%2.4e", 8.6);
    test(157, " 8.6000e+00", "% 2.4e", 8.6);
    test(158, " 0008.6000e+00", "% 014.4e", 8.6);
    test(159, "-8.6000e+00", "% 2.4e", -8.6);
    test(160, "+8.6000e+00", "%+2.4e", 8.6);
    test(161, "8.6", "%2.4g", 8.6);
    test(162, "-1", "%-i", -1);
    test(163, "1", "%-i", 1);
    test(164, "+1", "%+i", 1);
    test(165, "12", "%o", 10);
    test(169, "%%%%", "%s", "%%%%");
    test(170, "4294967295", "%u", -1);
    test(171, "%w", "%w", -1);
    test(176, "%H", "%H", -1);
    test(177, "%0", "%%0");
    test(178, "2345", "%hx", 74565);
    test(179, "61", "%hhx", 'a');
    test(181, "Hallo heimur", "Hallo heimur");
    test(182, "Hallo heimur", "%s", "Hallo heimur");
    test(183, "1024", "%d", 1024);
    test(184, "-1024", "%d", -1024);
    test(185, "1024", "%i", 1024);
    test(186, "-1024", "%i", -1024);
    test(187, "1024", "%u", 1024);
    test(188, "4294966272", "%u", 4294966272U);
    test(189, "777", "%o", 511);
    test(190, "37777777001", "%o", 4294966785U);
    test(191, "1234abcd", "%x", 305441741);
    test(192, "edcb5433", "%x", 3989525555U);
    test(193, "1234ABCD", "%X", 305441741);
    test(194, "EDCB5433", "%X", 3989525555U);
    test(195, "x", "%c", 'x');
    test(196, "%", "%%");
    test(197, "Hallo heimur", "%+s", "Hallo heimur");
    test(198, "+1024", "%+d", 1024);
    test(199, "-1024", "%+d", -1024);
    test(200, "+1024", "%+i", 1024);
    test(201, "-1024", "%+i", -1024);
    test(202, "1024", "%+u", 1024);
    test(203, "4294966272", "%+u", 4294966272U);
    test(204, "777", "%+o", 511);
    test(205, "37777777001", "%+o", 4294966785U);
    test(206, "1234abcd", "%+x", 305441741);
    test(207, "edcb5433", "%+x", 3989525555U);
    test(208, "1234ABCD", "%+X", 305441741);
    test(209, "EDCB5433", "%+X", 3989525555U);
    test(210, "x", "%+c", 'x');
    test(211, "Hallo heimur", "% s", "Hallo heimur");
    test(212, " 1024", "% d", 1024);
    test(213, "-1024", "% d", -1024);
    test(214, " 1024", "% i", 1024);
    test(215, "-1024", "% i", -1024);
    test(216, "1024", "% u", 1024);
    test(217, "4294966272", "% u", 4294966272U);
    test(218, "777", "% o", 511);
    test(219, "37777777001", "% o", 4294966785U);
    test(220, "1234abcd", "% x", 305441741);
    test(221, "edcb5433", "% x", 3989525555U);
    test(222, "1234ABCD", "% X", 305441741);
    test(223, "EDCB5433", "% X", 3989525555U);
    test(224, "x", "% c", 'x');
    test(225, "Hallo heimur", "%+ s", "Hallo heimur");
    test(226, "+1024", "%+ d", 1024);
    test(227, "-1024", "%+ d", -1024);
    test(228, "+1024", "%+ i", 1024);
    test(229, "-1024", "%+ i", -1024);
    test(230, "1024", "%+ u", 1024);
    test(231, "4294966272", "%+ u", 4294966272U);
    test(232, "777", "%+ o", 511);
    test(233, "37777777001", "%+ o", 4294966785U);
    test(234, "1234abcd", "%+ x", 305441741);
    test(235, "edcb5433", "%+ x", 3989525555U);
    test(236, "1234ABCD", "%+ X", 305441741);
    test(237, "EDCB5433", "%+ X", 3989525555U);
    test(238, "x", "%+ c", 'x');
    test(239, "0777", "%#o", 511);
    test(240, "037777777001", "%#o", 4294966785U);
    test(241, "0x1234abcd", "%#x", 305441741);
    test(242, "0xedcb5433", "%#x", 3989525555U);
    test(243, "0X1234ABCD", "%#X", 305441741);
    test(244, "0XEDCB5433", "%#X", 3989525555U);
    test(245, "0", "%#o", 0U);
    test(246, "0", "%#x", 0U);
    test(247, "0", "%#X", 0U);
    test(248, "Hallo heimur", "%1s", "Hallo heimur");
    test(249, "1024", "%1d", 1024);
    test(250, "-1024", "%1d", -1024);
    test(251, "1024", "%1i", 1024);
    test(252, "-1024", "%1i", -1024);
    test(253, "1024", "%1u", 1024);
    test(254, "4294966272", "%1u", 4294966272U);
    test(255, "777", "%1o", 511);
    test(256, "37777777001", "%1o", 4294966785U);
    test(257, "1234abcd", "%1x", 305441741);
    test(258, "edcb5433", "%1x", 3989525555U);
    test(259, "1234ABCD", "%1X", 305441741);
    test(260, "EDCB5433", "%1X", 3989525555U);
    test(261, "x", "%1c", 'x');
    test(262, "               Hallo", "%20s", "Hallo");
    test(263, "                1024", "%20d", 1024);
    test(264, "               -1024", "%20d", -1024);
    test(265, "                1024", "%20i", 1024);
    test(266, "               -1024", "%20i", -1024);
    test(267, "                1024", "%20u", 1024);
    test(268, "          4294966272", "%20u", 4294966272U);
    test(269, "                 777", "%20o", 511);
    test(270, "         37777777001", "%20o", 4294966785U);
    test(271, "            1234abcd", "%20x", 305441741);
    test(272, "            edcb5433", "%20x", 3989525555U);
    test(273, "            1234ABCD", "%20X", 305441741);
    test(274, "            EDCB5433", "%20X", 3989525555U);
    test(275, "                   x", "%20c", 'x');
    test(276, "Hallo               ", "%-20s", "Hallo");
    test(277, "1024                ", "%-20d", 1024);
    test(278, "-1024               ", "%-20d", -1024);
    test(279, "1024                ", "%-20i", 1024);
    test(280, "-1024               ", "%-20i", -1024);
    test(281, "1024                ", "%-20u", 1024);
    test(282, "4294966272          ", "%-20u", 4294966272U);
    test(283, "777                 ", "%-20o", 511);
    test(284, "37777777001         ", "%-20o", 4294966785U);
    test(285, "1234abcd            ", "%-20x", 305441741);
    test(286, "edcb5433            ", "%-20x", 3989525555U);
    test(287, "1234ABCD            ", "%-20X", 305441741);
    test(288, "EDCB5433            ", "%-20X", 3989525555U);
    test(289, "x                   ", "%-20c", 'x');
    test(290, "00000000000000001024", "%020d", 1024);
    test(291, "-0000000000000001024", "%020d", -1024);
    test(292, "00000000000000001024", "%020i", 1024);
    test(293, "-0000000000000001024", "%020i", -1024);
    test(294, "00000000000000001024", "%020u", 1024);
    test(295, "00000000004294966272", "%020u", 4294966272U);
    test(296, "00000000000000000777", "%020o", 511);
    test(297, "00000000037777777001", "%020o", 4294966785U);
    test(298, "0000000000001234abcd", "%020x", 305441741);
    test(299, "000000000000edcb5433", "%020x", 3989525555U);
    test(300, "0000000000001234ABCD", "%020X", 305441741);
    test(301, "000000000000EDCB5433", "%020X", 3989525555U);
    test(302, "                0777", "%#20o", 511);
    test(303, "        037777777001", "%#20o", 4294966785U);
    test(304, "          0x1234abcd", "%#20x", 305441741);
    test(305, "          0xedcb5433", "%#20x", 3989525555U);
    test(306, "          0X1234ABCD", "%#20X", 305441741);
    test(307, "          0XEDCB5433", "%#20X", 3989525555U);
    test(308, "00000000000000000777", "%#020o", 511);
    test(309, "00000000037777777001", "%#020o", 4294966785U);
    test(310, "0x00000000001234abcd", "%#020x", 305441741);
    test(311, "0x0000000000edcb5433", "%#020x", 3989525555U);
    test(312, "0X00000000001234ABCD", "%#020X", 305441741);
    test(313, "0X0000000000EDCB5433", "%#020X", 3989525555U);
    test(314, "Hallo               ", "%0-20s", "Hallo");
    test(315, "1024                ", "%0-20d", 1024);
    test(316, "-1024               ", "%0-20d", -1024);
    test(317, "1024                ", "%0-20i", 1024);
    test(318, "-1024               ", "%0-20i", -1024);
    test(319, "1024                ", "%0-20u", 1024);
    test(320, "4294966272          ", "%0-20u", 4294966272U);
    test(321, "777                 ", "%-020o", 511);
    test(322, "37777777001         ", "%-020o", 4294966785U);
    test(323, "1234abcd            ", "%-020x", 305441741);
    test(324, "edcb5433            ", "%-020x", 3989525555U);
    test(325, "1234ABCD            ", "%-020X", 305441741);
    test(326, "EDCB5433            ", "%-020X", 3989525555U);
    test(327, "x                   ", "%-020c", 'x');
    test(328, "               Hallo", "%*s", 20, "Hallo");
    test(329, "                1024", "%*d", 20, 1024);
    test(330, "               -1024", "%*d", 20, -1024);
    test(331, "                1024", "%*i", 20, 1024);
    test(332, "               -1024", "%*i", 20, -1024);
    test(333, "                1024", "%*u", 20, 1024);
    test(334, "          4294966272", "%*u", 20, 4294966272U);
    test(335, "                 777", "%*o", 20, 511);
    test(336, "         37777777001", "%*o", 20, 4294966785U);
    test(337, "            1234abcd", "%*x", 20, 305441741);
    test(338, "            edcb5433", "%*x", 20, 3989525555U);
    test(339, "            1234ABCD", "%*X", 20, 305441741);
    test(340, "            EDCB5433", "%*X", 20, 3989525555U);
    test(341, "                   x", "%*c", 20, 'x');
    test(342, "Hallo heimur", "%.20s", "Hallo heimur");
    test(343, "00000000000000001024", "%.20d", 1024);
    test(344, "-00000000000000001024", "%.20d", -1024);
    test(345, "00000000000000001024", "%.20i", 1024);
    test(346, "-00000000000000001024", "%.20i", -1024);
    test(347, "00000000000000001024", "%.20u", 1024);
    test(348, "00000000004294966272", "%.20u", 4294966272U);
    test(349, "00000000000000000777", "%.20o", 511);
    test(350, "00000000037777777001", "%.20o", 4294966785U);
    test(351, "0000000000001234abcd", "%.20x", 305441741);
    test(352, "000000000000edcb5433", "%.20x", 3989525555U);
    test(353, "0000000000001234ABCD", "%.20X", 305441741);
    test(354, "000000000000EDCB5433", "%.20X", 3989525555U);
    test(355, "               Hallo", "%20.5s", "Hallo heimur");
    test(356, "               01024", "%20.5d", 1024);
    test(357, "              -01024", "%20.5d", -1024);
    test(358, "               01024", "%20.5i", 1024);
    test(359, "              -01024", "%20.5i", -1024);
    test(360, "               01024", "%20.5u", 1024);
    test(361, "          4294966272", "%20.5u", 4294966272U);
    test(362, "               00777", "%20.5o", 511);
    test(363, "         37777777001", "%20.5o", 4294966785U);
    test(364, "            1234abcd", "%20.5x", 305441741);
    test(365, "          00edcb5433", "%20.10x", 3989525555U);
    test(366, "            1234ABCD", "%20.5X", 305441741);
    test(367, "          00EDCB5433", "%20.10X", 3989525555U);
    test(368, "               Hallo", "%020.5s", "Hallo heimur");
    test(369, "               01024", "%020.5d", 1024);
    test(370, "              -01024", "%020.5d", -1024);
    test(371, "               01024", "%020.5i", 1024);
    test(372, "              -01024", "%020.5i", -1024);
    test(373, "               01024", "%020.5u", 1024);
    test(374, "          4294966272", "%020.5u", 4294966272U);
    test(375, "               00777", "%020.5o", 511);
    test(376, "         37777777001", "%020.5o", 4294966785U);
    test(377, "            1234abcd", "%020.5x", 305441741);
    test(378, "          00edcb5433", "%020.10x", 3989525555U);
    test(379, "            1234ABCD", "%020.5X", 305441741);
    test(380, "          00EDCB5433", "%020.10X", 3989525555U);
    test(381, "", "%.0s", "Hallo heimur");
    test(382, "                    ", "%20.0s", "Hallo heimur");
    test(383, "", "%.s", "Hallo heimur");
    test(384, "                    ", "%20.s", "Hallo heimur");
    test(385, "                1024", "%20.0d", 1024);
    test(386, "               -1024", "%20.d", -1024);
    test(387, "                    ", "%20.d", 0);
    test(388, "                1024", "%20.0i", 1024);
    test(389, "               -1024", "%20.i", -1024);
    test(390, "                    ", "%20.i", 0);
    test(391, "                1024", "%20.u", 1024);
    test(392, "          4294966272", "%20.0u", 4294966272U);
    test(393, "                    ", "%20.u", 0U);
    test(394, "                 777", "%20.o", 511);
    test(395, "         37777777001", "%20.0o", 4294966785U);
    test(396, "                    ", "%20.o", 0U);
    test(397, "            1234abcd", "%20.x", 305441741);
    test(398, "            edcb5433", "%20.0x", 3989525555U);
    test(399, "                    ", "%20.x", 0U);
    test(400, "            1234ABCD", "%20.X", 305441741);
    test(401, "            EDCB5433", "%20.0X", 3989525555U);
    test(402, "                    ", "%20.X", 0U);
    test(403, "Hallo               ", "% -0+*.*s", 20, 5, "Hallo heimur");
    test(404, "+01024              ", "% -0+*.*d", 20, 5, 1024);
    test(405, "-01024              ", "% -0+*.*d", 20, 5, -1024);
    test(406, "+01024              ", "% -0+*.*i", 20, 5, 1024);
    test(407, "-01024              ", "% 0-+*.*i", 20, 5, -1024);
    test(408, "01024               ", "% 0-+*.*u", 20, 5, 1024);
    test(409, "4294966272          ", "% 0-+*.*u", 20, 5, 4294966272U);
    test(410, "00777               ", "%+ -0*.*o", 20, 5, 511);
    test(411, "37777777001         ", "%+ -0*.*o", 20, 5, 4294966785U);
    test(412, "1234abcd            ", "%+ -0*.*x", 20, 5, 305441741);
    test(413, "00edcb5433          ", "%+ -0*.*x", 20, 10, 3989525555U);
    test(414, "1234ABCD            ", "% -+0*.*X", 20, 5, 305441741);
    test(415, "00EDCB5433          ", "% -+0*.*X", 20, 10, 3989525555U);
