%Maint AST
%Nodes
node(0, 5).
node(1, 5).
node(2, 4).
node(3, 4).
node(4, 1).
node(5, 1).
node(6, 4).
node(7, 1).
node(8, 3).
node(9, 1).
node(10, 3).
%Edges:
edge(0, 1, 0).
edge(1, 2, 0).
edge(2, 3, 0).
edge(3, 4, 0).
edge(3, 5, 1).
edge(2, 6, 1).
edge(6, 7, 0).
edge(6, 8, 1).
edge(1, 9, 1).
edge(0, 10, 1).

%Subtree 1
%Compression tree nodes
comp_root(11).
comp_node(11, 4).
comp_node(13, 1).
%Compression tree edges:
edge(11, 13, 1).

%Subtree 2
%Compression tree nodes
comp_root(14).
comp_node(14, 4).
comp_node(15, 5).
comp_node(16, 4).
comp_node(19, 1).
%Compression tree edges:
edge(14, 15, 0).
edge(15, 16, 0).
edge(15, 19, 1).

%Subtree 3
%Compression tree nodes
comp_root(21).
comp_node(21, 4).
comp_node(22, 5).
comp_node(23, 4).
comp_node(25, 5).
comp_node(26, 3).
comp_node(27, 3).
comp_node(28, 1).
%Compression tree edges:
edge(21, 22, 0).
edge(22, 23, 0).
edge(23, 25, 1).
edge(25, 26, 0).
edge(25, 27, 1).
edge(22, 28, 1).

%Subtree 4
%Compression tree nodes
comp_root(30).
comp_node(30, 4).
comp_node(31, 5).
comp_node(32, 4).
comp_node(34, 5).
comp_node(35, 3).
comp_node(37, 1).
%Compression tree edges:
edge(30, 31, 0).
edge(31, 32, 0).
edge(32, 34, 1).
edge(34, 35, 0).
edge(31, 37, 1).

%Subtree 5
%Compression tree nodes
comp_root(39).
comp_node(39, 4).
comp_node(40, 5).
comp_node(41, 4).
comp_node(43, 5).
comp_node(45, 3).
comp_node(46, 1).
%Compression tree edges:
edge(39, 40, 0).
edge(40, 41, 0).
edge(41, 43, 1).
edge(43, 45, 1).
edge(40, 46, 1).

%Subtree 6
%Compression tree nodes
comp_root(48).
comp_node(48, 4).
comp_node(49, 5).
comp_node(50, 4).
comp_node(52, 5).
comp_node(55, 1).
%Compression tree edges:
edge(48, 49, 0).
edge(49, 50, 0).
edge(50, 52, 1).
edge(49, 55, 1).

%Subtree 7
%Compression tree nodes
comp_root(57).
comp_node(57, 4).
comp_node(58, 5).
comp_node(59, 4).
comp_node(60, 1).
comp_node(62, 1).
%Compression tree edges:
edge(57, 58, 0).
edge(58, 59, 0).
edge(59, 60, 0).
edge(58, 62, 1).

%Subtree 8
%Compression tree nodes
comp_root(64).
comp_node(64, 4).
comp_node(65, 5).
comp_node(66, 4).
comp_node(67, 1).
comp_node(68, 5).
comp_node(69, 3).
comp_node(70, 3).
comp_node(71, 1).
%Compression tree edges:
edge(64, 65, 0).
edge(65, 66, 0).
edge(66, 67, 0).
edge(66, 68, 1).
edge(68, 69, 0).
edge(68, 70, 1).
edge(65, 71, 1).

%Subtree 9
%Compression tree nodes
comp_root(73).
comp_node(73, 4).
comp_node(74, 5).
comp_node(75, 4).
comp_node(76, 1).
comp_node(77, 5).
comp_node(78, 3).
comp_node(80, 1).
%Compression tree edges:
edge(73, 74, 0).
edge(74, 75, 0).
edge(75, 76, 0).
edge(75, 77, 1).
edge(77, 78, 0).
edge(74, 80, 1).

%Subtree 10
%Compression tree nodes
comp_root(82).
comp_node(82, 4).
comp_node(83, 5).
comp_node(84, 4).
comp_node(85, 1).
comp_node(86, 5).
comp_node(88, 3).
comp_node(89, 1).
%Compression tree edges:
edge(82, 83, 0).
edge(83, 84, 0).
edge(84, 85, 0).
edge(84, 86, 1).
edge(86, 88, 1).
edge(83, 89, 1).

%Subtree 11
%Compression tree nodes
comp_root(91).
comp_node(91, 4).
comp_node(92, 5).
comp_node(93, 4).
comp_node(94, 1).
comp_node(95, 5).
comp_node(98, 1).
%Compression tree edges:
edge(91, 92, 0).
edge(92, 93, 0).
edge(93, 94, 0).
edge(93, 95, 1).
edge(92, 98, 1).

%Subtree 12
%Compression tree nodes
comp_root(100).
comp_node(100, 4).
comp_node(101, 5).
comp_node(102, 4).
%Compression tree edges:
edge(100, 101, 0).
edge(101, 102, 0).

%Subtree 13
%Compression tree nodes
comp_root(107).
comp_node(107, 4).
comp_node(108, 5).
comp_node(109, 4).
comp_node(111, 5).
comp_node(112, 3).
comp_node(113, 3).
%Compression tree edges:
edge(107, 108, 0).
edge(108, 109, 0).
edge(109, 111, 1).
edge(111, 112, 0).
edge(111, 113, 1).

%Subtree 14
%Compression tree nodes
comp_root(116).
comp_node(116, 4).
comp_node(117, 5).
comp_node(118, 4).
comp_node(120, 5).
comp_node(121, 3).
%Compression tree edges:
edge(116, 117, 0).
edge(117, 118, 0).
edge(118, 120, 1).
edge(120, 121, 0).

%Subtree 15
%Compression tree nodes
comp_root(125).
comp_node(125, 4).
comp_node(126, 5).
comp_node(127, 4).
comp_node(129, 5).
comp_node(131, 3).
%Compression tree edges:
edge(125, 126, 0).
edge(126, 127, 0).
edge(127, 129, 1).
edge(129, 131, 1).

%Subtree 16
%Compression tree nodes
comp_root(134).
comp_node(134, 4).
comp_node(135, 5).
comp_node(136, 4).
comp_node(138, 5).
%Compression tree edges:
edge(134, 135, 0).
edge(135, 136, 0).
edge(136, 138, 1).

%Subtree 17
%Compression tree nodes
comp_root(143).
comp_node(143, 4).
comp_node(144, 5).
comp_node(145, 4).
comp_node(146, 1).
%Compression tree edges:
edge(143, 144, 0).
edge(144, 145, 0).
edge(145, 146, 0).

%Subtree 18
%Compression tree nodes
comp_root(150).
comp_node(150, 4).
comp_node(151, 5).
comp_node(152, 4).
comp_node(153, 1).
comp_node(154, 5).
comp_node(155, 3).
comp_node(156, 3).
%Compression tree edges:
edge(150, 151, 0).
edge(151, 152, 0).
edge(152, 153, 0).
edge(152, 154, 1).
edge(154, 155, 0).
edge(154, 156, 1).

%Subtree 19
%Compression tree nodes
comp_root(159).
comp_node(159, 4).
comp_node(160, 5).
comp_node(161, 4).
comp_node(162, 1).
comp_node(163, 5).
comp_node(164, 3).
%Compression tree edges:
edge(159, 160, 0).
edge(160, 161, 0).
edge(161, 162, 0).
edge(161, 163, 1).
edge(163, 164, 0).

%Subtree 20
%Compression tree nodes
comp_root(168).
comp_node(168, 4).
comp_node(169, 5).
comp_node(170, 4).
comp_node(171, 1).
comp_node(172, 5).
comp_node(174, 3).
%Compression tree edges:
edge(168, 169, 0).
edge(169, 170, 0).
edge(170, 171, 0).
edge(170, 172, 1).
edge(172, 174, 1).

%Subtree 21
%Compression tree nodes
comp_root(177).
comp_node(177, 4).
comp_node(178, 5).
comp_node(179, 4).
comp_node(180, 1).
comp_node(181, 5).
%Compression tree edges:
edge(177, 178, 0).
edge(178, 179, 0).
edge(179, 180, 0).
edge(179, 181, 1).

%Subtree 22
%Compression tree nodes
comp_root(186).
comp_node(186, 4).
comp_node(187, 5).
comp_node(189, 1).
%Compression tree edges:
edge(186, 187, 0).
edge(187, 189, 1).

%Subtree 23
%Compression tree nodes
comp_root(191).
comp_node(191, 4).
comp_node(192, 5).
%Compression tree edges:
edge(191, 192, 0).

%Subtree 24
%Compression tree nodes
comp_root(196).
comp_node(196, 4).
comp_node(197, 5).
comp_node(198, 4).
comp_node(201, 1).
comp_node(202, 1).
%Compression tree edges:
edge(196, 197, 0).
edge(197, 198, 0).
edge(197, 201, 1).
edge(196, 202, 1).

%Subtree 25
%Compression tree nodes
comp_root(203).
comp_node(203, 4).
comp_node(204, 5).
comp_node(205, 4).
comp_node(207, 5).
comp_node(208, 3).
comp_node(209, 3).
comp_node(210, 1).
comp_node(211, 1).
%Compression tree edges:
edge(203, 204, 0).
edge(204, 205, 0).
edge(205, 207, 1).
edge(207, 208, 0).
edge(207, 209, 1).
edge(204, 210, 1).
edge(203, 211, 1).

%Subtree 26
%Compression tree nodes
comp_root(212).
comp_node(212, 4).
comp_node(213, 5).
comp_node(214, 4).
comp_node(216, 5).
comp_node(217, 3).
comp_node(219, 1).
comp_node(220, 1).
%Compression tree edges:
edge(212, 213, 0).
edge(213, 214, 0).
edge(214, 216, 1).
edge(216, 217, 0).
edge(213, 219, 1).
edge(212, 220, 1).

%Subtree 27
%Compression tree nodes
comp_root(221).
comp_node(221, 4).
comp_node(222, 5).
comp_node(223, 4).
comp_node(225, 5).
comp_node(227, 3).
comp_node(228, 1).
comp_node(229, 1).
%Compression tree edges:
edge(221, 222, 0).
edge(222, 223, 0).
edge(223, 225, 1).
edge(225, 227, 1).
edge(222, 228, 1).
edge(221, 229, 1).

%Subtree 28
%Compression tree nodes
comp_root(230).
comp_node(230, 4).
comp_node(231, 5).
comp_node(232, 4).
comp_node(234, 5).
comp_node(237, 1).
comp_node(238, 1).
%Compression tree edges:
edge(230, 231, 0).
edge(231, 232, 0).
edge(232, 234, 1).
edge(231, 237, 1).
edge(230, 238, 1).

%Subtree 29
%Compression tree nodes
comp_root(239).
comp_node(239, 4).
comp_node(240, 5).
comp_node(241, 4).
comp_node(242, 1).
comp_node(244, 1).
comp_node(245, 1).
%Compression tree edges:
edge(239, 240, 0).
edge(240, 241, 0).
edge(241, 242, 0).
edge(240, 244, 1).
edge(239, 245, 1).

%Subtree 30
%Compression tree nodes
comp_root(246).
comp_node(246, 4).
comp_node(247, 5).
comp_node(248, 4).
comp_node(249, 1).
comp_node(250, 5).
comp_node(251, 3).
comp_node(252, 3).
comp_node(253, 1).
comp_node(254, 1).
%Compression tree edges:
edge(246, 247, 0).
edge(247, 248, 0).
edge(248, 249, 0).
edge(248, 250, 1).
edge(250, 251, 0).
edge(250, 252, 1).
edge(247, 253, 1).
edge(246, 254, 1).

%Subtree 31
%Compression tree nodes
comp_root(255).
comp_node(255, 4).
comp_node(256, 5).
comp_node(257, 4).
comp_node(258, 1).
comp_node(259, 5).
comp_node(260, 3).
comp_node(262, 1).
comp_node(263, 1).
%Compression tree edges:
edge(255, 256, 0).
edge(256, 257, 0).
edge(257, 258, 0).
edge(257, 259, 1).
edge(259, 260, 0).
edge(256, 262, 1).
edge(255, 263, 1).

%Subtree 32
%Compression tree nodes
comp_root(264).
comp_node(264, 4).
comp_node(265, 5).
comp_node(266, 4).
comp_node(267, 1).
comp_node(268, 5).
comp_node(270, 3).
comp_node(271, 1).
comp_node(272, 1).
%Compression tree edges:
edge(264, 265, 0).
edge(265, 266, 0).
edge(266, 267, 0).
edge(266, 268, 1).
edge(268, 270, 1).
edge(265, 271, 1).
edge(264, 272, 1).

%Subtree 33
%Compression tree nodes
comp_root(273).
comp_node(273, 4).
comp_node(274, 5).
comp_node(275, 4).
comp_node(276, 1).
comp_node(277, 5).
comp_node(280, 1).
comp_node(281, 1).
%Compression tree edges:
edge(273, 274, 0).
edge(274, 275, 0).
edge(275, 276, 0).
edge(275, 277, 1).
edge(274, 280, 1).
edge(273, 281, 1).

%Subtree 34
%Compression tree nodes
comp_root(282).
comp_node(282, 4).
comp_node(283, 5).
comp_node(284, 4).
comp_node(288, 1).
%Compression tree edges:
edge(282, 283, 0).
edge(283, 284, 0).
edge(282, 288, 1).

%Subtree 35
%Compression tree nodes
comp_root(289).
comp_node(289, 4).
comp_node(290, 5).
comp_node(291, 4).
comp_node(293, 5).
comp_node(294, 3).
comp_node(295, 3).
comp_node(297, 1).
%Compression tree edges:
edge(289, 290, 0).
edge(290, 291, 0).
edge(291, 293, 1).
edge(293, 294, 0).
edge(293, 295, 1).
edge(289, 297, 1).

%Subtree 36
%Compression tree nodes
comp_root(298).
comp_node(298, 4).
comp_node(299, 5).
comp_node(300, 4).
comp_node(302, 5).
comp_node(303, 3).
comp_node(306, 1).
%Compression tree edges:
edge(298, 299, 0).
edge(299, 300, 0).
edge(300, 302, 1).
edge(302, 303, 0).
edge(298, 306, 1).

%Subtree 37
%Compression tree nodes
comp_root(307).
comp_node(307, 4).
comp_node(308, 5).
comp_node(309, 4).
comp_node(311, 5).
comp_node(313, 3).
comp_node(315, 1).
%Compression tree edges:
edge(307, 308, 0).
edge(308, 309, 0).
edge(309, 311, 1).
edge(311, 313, 1).
edge(307, 315, 1).

%Subtree 38
%Compression tree nodes
comp_root(316).
comp_node(316, 4).
comp_node(317, 5).
comp_node(318, 4).
comp_node(320, 5).
comp_node(324, 1).
%Compression tree edges:
edge(316, 317, 0).
edge(317, 318, 0).
edge(318, 320, 1).
edge(316, 324, 1).

%Subtree 39
%Compression tree nodes
comp_root(325).
comp_node(325, 4).
comp_node(326, 5).
comp_node(327, 4).
comp_node(328, 1).
comp_node(331, 1).
%Compression tree edges:
edge(325, 326, 0).
edge(326, 327, 0).
edge(327, 328, 0).
edge(325, 331, 1).

%Subtree 40
%Compression tree nodes
comp_root(332).
comp_node(332, 4).
comp_node(333, 5).
comp_node(334, 4).
comp_node(335, 1).
comp_node(336, 5).
comp_node(337, 3).
comp_node(338, 3).
comp_node(340, 1).
%Compression tree edges:
edge(332, 333, 0).
edge(333, 334, 0).
edge(334, 335, 0).
edge(334, 336, 1).
edge(336, 337, 0).
edge(336, 338, 1).
edge(332, 340, 1).

%Subtree 41
%Compression tree nodes
comp_root(341).
comp_node(341, 4).
comp_node(342, 5).
comp_node(343, 4).
comp_node(344, 1).
comp_node(345, 5).
comp_node(346, 3).
comp_node(349, 1).
%Compression tree edges:
edge(341, 342, 0).
edge(342, 343, 0).
edge(343, 344, 0).
edge(343, 345, 1).
edge(345, 346, 0).
edge(341, 349, 1).

%Subtree 42
%Compression tree nodes
comp_root(350).
comp_node(350, 4).
comp_node(351, 5).
comp_node(352, 4).
comp_node(353, 1).
comp_node(354, 5).
comp_node(356, 3).
comp_node(358, 1).
%Compression tree edges:
edge(350, 351, 0).
edge(351, 352, 0).
edge(352, 353, 0).
edge(352, 354, 1).
edge(354, 356, 1).
edge(350, 358, 1).

%Subtree 43
%Compression tree nodes
comp_root(359).
comp_node(359, 4).
comp_node(360, 5).
comp_node(361, 4).
comp_node(362, 1).
comp_node(363, 5).
comp_node(367, 1).
%Compression tree edges:
edge(359, 360, 0).
edge(360, 361, 0).
edge(361, 362, 0).
edge(361, 363, 1).
edge(359, 367, 1).

%Subtree 44
%Compression tree nodes
comp_root(368).
comp_node(368, 4).
comp_node(369, 5).
comp_node(371, 1).
comp_node(372, 1).
%Compression tree edges:
edge(368, 369, 0).
edge(369, 371, 1).
edge(368, 372, 1).

%Subtree 45
%Compression tree nodes
comp_root(373).
comp_node(373, 4).
comp_node(374, 5).
comp_node(377, 1).
%Compression tree edges:
edge(373, 374, 0).
edge(373, 377, 1).

%Subtree 46
%Compression tree nodes
comp_root(378).
comp_node(378, 5).
comp_node(380, 1).
%Compression tree edges:
edge(378, 380, 1).

%Subtree 47
%Compression tree nodes
comp_root(381).
comp_node(381, 5).
comp_node(382, 4).
comp_node(383, 1).
comp_node(384, 5).
%Compression tree edges:
edge(381, 382, 0).
edge(382, 383, 0).
edge(382, 384, 1).

%Subtree 48
%Compression tree nodes
comp_root(388).
comp_node(388, 5).
comp_node(389, 4).
comp_node(390, 1).
comp_node(391, 5).
comp_node(393, 3).
%Compression tree edges:
edge(388, 389, 0).
edge(389, 390, 0).
edge(389, 391, 1).
edge(391, 393, 1).

%Subtree 49
%Compression tree nodes
comp_root(395).
comp_node(395, 5).
comp_node(396, 4).
comp_node(397, 1).
comp_node(398, 5).
comp_node(399, 3).
%Compression tree edges:
edge(395, 396, 0).
edge(396, 397, 0).
edge(396, 398, 1).
edge(398, 399, 0).

%Subtree 50
%Compression tree nodes
comp_root(402).
comp_node(402, 5).
comp_node(403, 4).
comp_node(404, 1).
comp_node(405, 5).
comp_node(406, 3).
comp_node(407, 3).
%Compression tree edges:
edge(402, 403, 0).
edge(403, 404, 0).
edge(403, 405, 1).
edge(405, 406, 0).
edge(405, 407, 1).

%Subtree 51
%Compression tree nodes
comp_root(409).
comp_node(409, 5).
comp_node(410, 4).
comp_node(411, 1).
%Compression tree edges:
edge(409, 410, 0).
edge(410, 411, 0).

%Subtree 52
%Compression tree nodes
comp_root(414).
comp_node(414, 5).
comp_node(415, 4).
comp_node(417, 5).
%Compression tree edges:
edge(414, 415, 0).
edge(415, 417, 1).

%Subtree 53
%Compression tree nodes
comp_root(421).
comp_node(421, 5).
comp_node(422, 4).
comp_node(424, 5).
comp_node(426, 3).
%Compression tree edges:
edge(421, 422, 0).
edge(422, 424, 1).
edge(424, 426, 1).

%Subtree 54
%Compression tree nodes
comp_root(428).
comp_node(428, 5).
comp_node(429, 4).
comp_node(431, 5).
comp_node(432, 3).
%Compression tree edges:
edge(428, 429, 0).
edge(429, 431, 1).
edge(431, 432, 0).

%Subtree 55
%Compression tree nodes
comp_root(435).
comp_node(435, 5).
comp_node(436, 4).
comp_node(438, 5).
comp_node(439, 3).
comp_node(440, 3).
%Compression tree edges:
edge(435, 436, 0).
edge(436, 438, 1).
edge(438, 439, 0).
edge(438, 440, 1).

%Subtree 56
%Compression tree nodes
comp_root(442).
comp_node(442, 5).
comp_node(443, 4).
%Compression tree edges:
edge(442, 443, 0).

%Subtree 57
%Compression tree nodes
comp_root(447).
comp_node(447, 5).
comp_node(448, 4).
comp_node(449, 1).
comp_node(450, 5).
comp_node(453, 1).
%Compression tree edges:
edge(447, 448, 0).
edge(448, 449, 0).
edge(448, 450, 1).
edge(447, 453, 1).

%Subtree 58
%Compression tree nodes
comp_root(454).
comp_node(454, 5).
comp_node(455, 4).
comp_node(456, 1).
comp_node(457, 5).
comp_node(459, 3).
comp_node(460, 1).
%Compression tree edges:
edge(454, 455, 0).
edge(455, 456, 0).
edge(455, 457, 1).
edge(457, 459, 1).
edge(454, 460, 1).

%Subtree 59
%Compression tree nodes
comp_root(461).
comp_node(461, 5).
comp_node(462, 4).
comp_node(463, 1).
comp_node(464, 5).
comp_node(465, 3).
comp_node(467, 1).
%Compression tree edges:
edge(461, 462, 0).
edge(462, 463, 0).
edge(462, 464, 1).
edge(464, 465, 0).
edge(461, 467, 1).

%Subtree 60
%Compression tree nodes
comp_root(468).
comp_node(468, 5).
comp_node(469, 4).
comp_node(470, 1).
comp_node(471, 5).
comp_node(472, 3).
comp_node(473, 3).
comp_node(474, 1).
%Compression tree edges:
edge(468, 469, 0).
edge(469, 470, 0).
edge(469, 471, 1).
edge(471, 472, 0).
edge(471, 473, 1).
edge(468, 474, 1).

%Subtree 61
%Compression tree nodes
comp_root(475).
comp_node(475, 5).
comp_node(476, 4).
comp_node(477, 1).
comp_node(479, 1).
%Compression tree edges:
edge(475, 476, 0).
edge(476, 477, 0).
edge(475, 479, 1).

%Subtree 62
%Compression tree nodes
comp_root(480).
comp_node(480, 5).
comp_node(481, 4).
comp_node(483, 5).
comp_node(486, 1).
%Compression tree edges:
edge(480, 481, 0).
edge(481, 483, 1).
edge(480, 486, 1).

%Subtree 63
%Compression tree nodes
comp_root(487).
comp_node(487, 5).
comp_node(488, 4).
comp_node(490, 5).
comp_node(492, 3).
comp_node(493, 1).
%Compression tree edges:
edge(487, 488, 0).
edge(488, 490, 1).
edge(490, 492, 1).
edge(487, 493, 1).

%Subtree 64
%Compression tree nodes
comp_root(494).
comp_node(494, 5).
comp_node(495, 4).
comp_node(497, 5).
comp_node(498, 3).
comp_node(500, 1).
%Compression tree edges:
edge(494, 495, 0).
edge(495, 497, 1).
edge(497, 498, 0).
edge(494, 500, 1).

%Subtree 65
%Compression tree nodes
comp_root(501).
comp_node(501, 5).
comp_node(502, 4).
comp_node(504, 5).
comp_node(505, 3).
comp_node(506, 3).
comp_node(507, 1).
%Compression tree edges:
edge(501, 502, 0).
edge(502, 504, 1).
edge(504, 505, 0).
edge(504, 506, 1).
edge(501, 507, 1).

%Subtree 66
%Compression tree nodes
comp_root(508).
comp_node(508, 5).
comp_node(509, 4).
comp_node(512, 1).
%Compression tree edges:
edge(508, 509, 0).
edge(508, 512, 1).

%Subtree 67
%Compression tree nodes
comp_root(513).
comp_node(513, 4).
comp_node(515, 5).
comp_node(516, 3).
comp_node(517, 3).
%Compression tree edges:
edge(513, 515, 1).
edge(515, 516, 0).
edge(515, 517, 1).

%Subtree 68
%Compression tree nodes
comp_root(518).
comp_node(518, 4).
comp_node(520, 5).
comp_node(521, 3).
%Compression tree edges:
edge(518, 520, 1).
edge(520, 521, 0).

%Subtree 69
%Compression tree nodes
comp_root(523).
comp_node(523, 4).
comp_node(525, 5).
comp_node(527, 3).
%Compression tree edges:
edge(523, 525, 1).
edge(525, 527, 1).

%Subtree 70
%Compression tree nodes
comp_root(528).
comp_node(528, 4).
comp_node(530, 5).
%Compression tree edges:
edge(528, 530, 1).

%Subtree 71
%Compression tree nodes
comp_root(533).
comp_node(533, 4).
comp_node(534, 1).
%Compression tree edges:
edge(533, 534, 0).

%Subtree 72
%Compression tree nodes
comp_root(536).
comp_node(536, 4).
comp_node(537, 1).
comp_node(538, 5).
comp_node(539, 3).
comp_node(540, 3).
%Compression tree edges:
edge(536, 537, 0).
edge(536, 538, 1).
edge(538, 539, 0).
edge(538, 540, 1).

%Subtree 73
%Compression tree nodes
comp_root(541).
comp_node(541, 4).
comp_node(542, 1).
comp_node(543, 5).
comp_node(544, 3).
%Compression tree edges:
edge(541, 542, 0).
edge(541, 543, 1).
edge(543, 544, 0).

%Subtree 74
%Compression tree nodes
comp_root(546).
comp_node(546, 4).
comp_node(547, 1).
comp_node(548, 5).
comp_node(550, 3).
%Compression tree edges:
edge(546, 547, 0).
edge(546, 548, 1).
edge(548, 550, 1).

%Subtree 75
%Compression tree nodes
comp_root(551).
comp_node(551, 4).
comp_node(552, 1).
comp_node(553, 5).
%Compression tree edges:
edge(551, 552, 0).
edge(551, 553, 1).

%Subtree 76
%Compression tree nodes
comp_root(556).
comp_node(556, 5).
comp_node(558, 3).
%Compression tree edges:
edge(556, 558, 1).

%Subtree 77
%Compression tree nodes
comp_root(559).
comp_node(559, 5).
comp_node(560, 3).
%Compression tree edges:
edge(559, 560, 0).

%Subtree 78
%Compression tree nodes
comp_root(562).
comp_node(562, 5).
comp_node(563, 3).
comp_node(564, 3).
%Compression tree edges:
edge(562, 563, 0).
edge(562, 564, 1).

%Subtree 79
%Compression tree nodes
comp_root(565).
comp_node(565, 5).
comp_node(567, 3).
%Compression tree edges:
edge(565, 567, 1).

%Subtree 80
%Compression tree nodes
comp_root(568).
comp_node(568, 5).
comp_node(569, 5).
comp_node(570, 4).
comp_node(573, 1).
%Compression tree edges:
edge(568, 569, 0).
edge(569, 570, 0).
edge(569, 573, 1).

%Subtree 81
%Compression tree nodes
comp_root(575).
comp_node(575, 5).
comp_node(576, 5).
comp_node(577, 4).
comp_node(579, 4).
comp_node(580, 1).
comp_node(581, 3).
comp_node(582, 1).
%Compression tree edges:
edge(575, 576, 0).
edge(576, 577, 0).
edge(577, 579, 1).
edge(579, 580, 0).
edge(579, 581, 1).
edge(576, 582, 1).

%Subtree 82
%Compression tree nodes
comp_root(584).
comp_node(584, 5).
comp_node(585, 5).
comp_node(586, 4).
comp_node(588, 4).
comp_node(589, 1).
comp_node(591, 1).
%Compression tree edges:
edge(584, 585, 0).
edge(585, 586, 0).
edge(586, 588, 1).
edge(588, 589, 0).
edge(585, 591, 1).

%Subtree 83
%Compression tree nodes
comp_root(593).
comp_node(593, 5).
comp_node(594, 5).
comp_node(595, 4).
comp_node(597, 4).
comp_node(599, 3).
comp_node(600, 1).
%Compression tree edges:
edge(593, 594, 0).
edge(594, 595, 0).
edge(595, 597, 1).
edge(597, 599, 1).
edge(594, 600, 1).

%Subtree 84
%Compression tree nodes
comp_root(602).
comp_node(602, 5).
comp_node(603, 5).
comp_node(604, 4).
comp_node(606, 4).
comp_node(609, 1).
%Compression tree edges:
edge(602, 603, 0).
edge(603, 604, 0).
edge(604, 606, 1).
edge(603, 609, 1).

%Subtree 85
%Compression tree nodes
comp_root(611).
comp_node(611, 5).
comp_node(612, 5).
comp_node(613, 4).
comp_node(614, 4).
comp_node(615, 1).
comp_node(616, 1).
comp_node(618, 1).
%Compression tree edges:
edge(611, 612, 0).
edge(612, 613, 0).
edge(613, 614, 0).
edge(614, 615, 0).
edge(614, 616, 1).
edge(612, 618, 1).

%Subtree 86
%Compression tree nodes
comp_root(620).
comp_node(620, 5).
comp_node(621, 5).
comp_node(622, 4).
comp_node(623, 4).
comp_node(624, 1).
comp_node(627, 1).
%Compression tree edges:
edge(620, 621, 0).
edge(621, 622, 0).
edge(622, 623, 0).
edge(623, 624, 0).
edge(621, 627, 1).

%Subtree 87
%Compression tree nodes
comp_root(629).
comp_node(629, 5).
comp_node(630, 5).
comp_node(631, 4).
comp_node(632, 4).
comp_node(634, 1).
comp_node(636, 1).
%Compression tree edges:
edge(629, 630, 0).
edge(630, 631, 0).
edge(631, 632, 0).
edge(632, 634, 1).
edge(630, 636, 1).

%Subtree 88
%Compression tree nodes
comp_root(638).
comp_node(638, 5).
comp_node(639, 5).
comp_node(640, 4).
comp_node(641, 4).
comp_node(645, 1).
%Compression tree edges:
edge(638, 639, 0).
edge(639, 640, 0).
edge(640, 641, 0).
edge(639, 645, 1).

%Subtree 89
%Compression tree nodes
comp_root(647).
comp_node(647, 5).
comp_node(648, 5).
comp_node(649, 4).
comp_node(650, 4).
comp_node(653, 4).
comp_node(654, 1).
comp_node(655, 3).
comp_node(656, 1).
%Compression tree edges:
edge(647, 648, 0).
edge(648, 649, 0).
edge(649, 650, 0).
edge(649, 653, 1).
edge(653, 654, 0).
edge(653, 655, 1).
edge(648, 656, 1).

%Subtree 90
%Compression tree nodes
comp_root(658).
comp_node(658, 5).
comp_node(659, 5).
comp_node(660, 4).
comp_node(661, 4).
comp_node(664, 4).
comp_node(665, 1).
comp_node(667, 1).
%Compression tree edges:
edge(658, 659, 0).
edge(659, 660, 0).
edge(660, 661, 0).
edge(660, 664, 1).
edge(664, 665, 0).
edge(659, 667, 1).

%Subtree 91
%Compression tree nodes
comp_root(669).
comp_node(669, 5).
comp_node(670, 5).
comp_node(671, 4).
comp_node(672, 4).
comp_node(675, 4).
comp_node(677, 3).
comp_node(678, 1).
%Compression tree edges:
edge(669, 670, 0).
edge(670, 671, 0).
edge(671, 672, 0).
edge(671, 675, 1).
edge(675, 677, 1).
edge(670, 678, 1).

%Subtree 92
%Compression tree nodes
comp_root(680).
comp_node(680, 5).
comp_node(681, 5).
comp_node(682, 4).
comp_node(683, 4).
comp_node(685, 1).
comp_node(686, 4).
comp_node(687, 1).
comp_node(688, 3).
comp_node(689, 1).
%Compression tree edges:
edge(680, 681, 0).
edge(681, 682, 0).
edge(682, 683, 0).
edge(683, 685, 1).
edge(682, 686, 1).
edge(686, 687, 0).
edge(686, 688, 1).
edge(681, 689, 1).

%Subtree 93
%Compression tree nodes
comp_root(691).
comp_node(691, 5).
comp_node(692, 5).
comp_node(693, 4).
comp_node(694, 4).
comp_node(696, 1).
comp_node(697, 4).
comp_node(698, 1).
comp_node(700, 1).
%Compression tree edges:
edge(691, 692, 0).
edge(692, 693, 0).
edge(693, 694, 0).
edge(694, 696, 1).
edge(693, 697, 1).
edge(697, 698, 0).
edge(692, 700, 1).

%Subtree 94
%Compression tree nodes
comp_root(702).
comp_node(702, 5).
comp_node(703, 5).
comp_node(704, 4).
comp_node(705, 4).
comp_node(707, 1).
comp_node(708, 4).
comp_node(710, 3).
comp_node(711, 1).
%Compression tree edges:
edge(702, 703, 0).
edge(703, 704, 0).
edge(704, 705, 0).
edge(705, 707, 1).
edge(704, 708, 1).
edge(708, 710, 1).
edge(703, 711, 1).

%Subtree 95
%Compression tree nodes
comp_root(713).
comp_node(713, 5).
comp_node(714, 5).
comp_node(715, 4).
comp_node(716, 4).
comp_node(717, 1).
comp_node(719, 4).
comp_node(720, 1).
comp_node(721, 3).
comp_node(722, 1).
%Compression tree edges:
edge(713, 714, 0).
edge(714, 715, 0).
edge(715, 716, 0).
edge(716, 717, 0).
edge(715, 719, 1).
edge(719, 720, 0).
edge(719, 721, 1).
edge(714, 722, 1).

%Subtree 96
%Compression tree nodes
comp_root(724).
comp_node(724, 5).
comp_node(725, 5).
comp_node(726, 4).
comp_node(727, 4).
comp_node(728, 1).
comp_node(730, 4).
comp_node(731, 1).
comp_node(733, 1).
%Compression tree edges:
edge(724, 725, 0).
edge(725, 726, 0).
edge(726, 727, 0).
edge(727, 728, 0).
edge(726, 730, 1).
edge(730, 731, 0).
edge(725, 733, 1).

%Subtree 97
%Compression tree nodes
comp_root(735).
comp_node(735, 5).
comp_node(736, 5).
comp_node(737, 4).
comp_node(738, 4).
comp_node(739, 1).
comp_node(741, 4).
comp_node(743, 3).
comp_node(744, 1).
%Compression tree edges:
edge(735, 736, 0).
edge(736, 737, 0).
edge(737, 738, 0).
edge(738, 739, 0).
edge(737, 741, 1).
edge(741, 743, 1).
edge(736, 744, 1).

%Subtree 98
%Compression tree nodes
comp_root(746).
comp_node(746, 5).
comp_node(747, 5).
comp_node(748, 4).
comp_node(749, 4).
comp_node(750, 1).
comp_node(751, 1).
comp_node(752, 4).
comp_node(753, 1).
comp_node(754, 3).
comp_node(755, 1).
%Compression tree edges:
edge(746, 747, 0).
edge(747, 748, 0).
edge(748, 749, 0).
edge(749, 750, 0).
edge(749, 751, 1).
edge(748, 752, 1).
edge(752, 753, 0).
edge(752, 754, 1).
edge(747, 755, 1).

%Subtree 99
%Compression tree nodes
comp_root(757).
comp_node(757, 5).
comp_node(758, 5).
comp_node(759, 4).
comp_node(760, 4).
comp_node(761, 1).
comp_node(762, 1).
comp_node(763, 4).
comp_node(764, 1).
comp_node(766, 1).
%Compression tree edges:
edge(757, 758, 0).
edge(758, 759, 0).
edge(759, 760, 0).
edge(760, 761, 0).
edge(760, 762, 1).
edge(759, 763, 1).
edge(763, 764, 0).
edge(758, 766, 1).

%Subtree 100
%Compression tree nodes
comp_root(768).
comp_node(768, 5).
comp_node(769, 5).
comp_node(770, 4).
comp_node(771, 4).
comp_node(772, 1).
comp_node(773, 1).
comp_node(774, 4).
comp_node(776, 3).
comp_node(777, 1).
%Compression tree edges:
edge(768, 769, 0).
edge(769, 770, 0).
edge(770, 771, 0).
edge(771, 772, 0).
edge(771, 773, 1).
edge(770, 774, 1).
edge(774, 776, 1).
edge(769, 777, 1).

%Subtree 101
%Compression tree nodes
comp_root(779).
comp_node(779, 5).
comp_node(780, 5).
comp_node(781, 4).
comp_node(782, 4).
comp_node(783, 1).
comp_node(784, 1).
comp_node(785, 4).
comp_node(788, 1).
%Compression tree edges:
edge(779, 780, 0).
edge(780, 781, 0).
edge(781, 782, 0).
edge(782, 783, 0).
edge(782, 784, 1).
edge(781, 785, 1).
edge(780, 788, 1).

%Subtree 102
%Compression tree nodes
comp_root(790).
comp_node(790, 5).
comp_node(791, 5).
comp_node(792, 4).
comp_node(793, 4).
comp_node(794, 1).
comp_node(796, 4).
comp_node(799, 1).
%Compression tree edges:
edge(790, 791, 0).
edge(791, 792, 0).
edge(792, 793, 0).
edge(793, 794, 0).
edge(792, 796, 1).
edge(791, 799, 1).

%Subtree 103
%Compression tree nodes
comp_root(801).
comp_node(801, 5).
comp_node(802, 5).
comp_node(803, 4).
comp_node(804, 4).
comp_node(806, 1).
comp_node(807, 4).
comp_node(810, 1).
%Compression tree edges:
edge(801, 802, 0).
edge(802, 803, 0).
edge(803, 804, 0).
edge(804, 806, 1).
edge(803, 807, 1).
edge(802, 810, 1).

%Subtree 104
%Compression tree nodes
comp_root(812).
comp_node(812, 5).
comp_node(813, 5).
comp_node(814, 4).
comp_node(815, 4).
comp_node(818, 4).
comp_node(821, 1).
%Compression tree edges:
edge(812, 813, 0).
edge(813, 814, 0).
edge(814, 815, 0).
edge(814, 818, 1).
edge(813, 821, 1).

%Subtree 105
%Compression tree nodes
comp_root(823).
comp_node(823, 5).
comp_node(824, 5).
comp_node(825, 4).
%Compression tree edges:
edge(823, 824, 0).
edge(824, 825, 0).

%Subtree 106
%Compression tree nodes
comp_root(830).
comp_node(830, 5).
comp_node(831, 5).
comp_node(832, 4).
comp_node(834, 4).
comp_node(835, 1).
comp_node(836, 3).
%Compression tree edges:
edge(830, 831, 0).
edge(831, 832, 0).
edge(832, 834, 1).
edge(834, 835, 0).
edge(834, 836, 1).

%Subtree 107
%Compression tree nodes
comp_root(839).
comp_node(839, 5).
comp_node(840, 5).
comp_node(841, 4).
comp_node(843, 4).
comp_node(844, 1).
%Compression tree edges:
edge(839, 840, 0).
edge(840, 841, 0).
edge(841, 843, 1).
edge(843, 844, 0).

%Subtree 108
%Compression tree nodes
comp_root(848).
comp_node(848, 5).
comp_node(849, 5).
comp_node(850, 4).
comp_node(852, 4).
comp_node(854, 3).
%Compression tree edges:
edge(848, 849, 0).
edge(849, 850, 0).
edge(850, 852, 1).
edge(852, 854, 1).

%Subtree 109
%Compression tree nodes
comp_root(857).
comp_node(857, 5).
comp_node(858, 5).
comp_node(859, 4).
comp_node(861, 4).
%Compression tree edges:
edge(857, 858, 0).
edge(858, 859, 0).
edge(859, 861, 1).

%Subtree 110
%Compression tree nodes
comp_root(866).
comp_node(866, 5).
comp_node(867, 5).
comp_node(868, 4).
comp_node(869, 4).
comp_node(870, 1).
comp_node(871, 1).
%Compression tree edges:
edge(866, 867, 0).
edge(867, 868, 0).
edge(868, 869, 0).
edge(869, 870, 0).
edge(869, 871, 1).

%Subtree 111
%Compression tree nodes
comp_root(875).
comp_node(875, 5).
comp_node(876, 5).
comp_node(877, 4).
comp_node(878, 4).
comp_node(879, 1).
%Compression tree edges:
edge(875, 876, 0).
edge(876, 877, 0).
edge(877, 878, 0).
edge(878, 879, 0).

%Subtree 112
%Compression tree nodes
comp_root(884).
comp_node(884, 5).
comp_node(885, 5).
comp_node(886, 4).
comp_node(887, 4).
comp_node(889, 1).
%Compression tree edges:
edge(884, 885, 0).
edge(885, 886, 0).
edge(886, 887, 0).
edge(887, 889, 1).

%Subtree 113
%Compression tree nodes
comp_root(893).
comp_node(893, 5).
comp_node(894, 5).
comp_node(895, 4).
comp_node(896, 4).
%Compression tree edges:
edge(893, 894, 0).
edge(894, 895, 0).
edge(895, 896, 0).

%Subtree 114
%Compression tree nodes
comp_root(902).
comp_node(902, 5).
comp_node(903, 5).
comp_node(904, 4).
comp_node(905, 4).
comp_node(908, 4).
comp_node(909, 1).
comp_node(910, 3).
%Compression tree edges:
edge(902, 903, 0).
edge(903, 904, 0).
edge(904, 905, 0).
edge(904, 908, 1).
edge(908, 909, 0).
edge(908, 910, 1).

%Subtree 115
%Compression tree nodes
comp_root(913).
comp_node(913, 5).
comp_node(914, 5).
comp_node(915, 4).
comp_node(916, 4).
comp_node(919, 4).
comp_node(920, 1).
%Compression tree edges:
edge(913, 914, 0).
edge(914, 915, 0).
edge(915, 916, 0).
edge(915, 919, 1).
edge(919, 920, 0).

%Subtree 116
%Compression tree nodes
comp_root(924).
comp_node(924, 5).
comp_node(925, 5).
comp_node(926, 4).
comp_node(927, 4).
comp_node(930, 4).
comp_node(932, 3).
%Compression tree edges:
edge(924, 925, 0).
edge(925, 926, 0).
edge(926, 927, 0).
edge(926, 930, 1).
edge(930, 932, 1).

%Subtree 117
%Compression tree nodes
comp_root(935).
comp_node(935, 5).
comp_node(936, 5).
comp_node(937, 4).
comp_node(938, 4).
comp_node(940, 1).
comp_node(941, 4).
comp_node(942, 1).
comp_node(943, 3).
%Compression tree edges:
edge(935, 936, 0).
edge(936, 937, 0).
edge(937, 938, 0).
edge(938, 940, 1).
edge(937, 941, 1).
edge(941, 942, 0).
edge(941, 943, 1).

%Subtree 118
%Compression tree nodes
comp_root(946).
comp_node(946, 5).
comp_node(947, 5).
comp_node(948, 4).
comp_node(949, 4).
comp_node(951, 1).
comp_node(952, 4).
comp_node(953, 1).
%Compression tree edges:
edge(946, 947, 0).
edge(947, 948, 0).
edge(948, 949, 0).
edge(949, 951, 1).
edge(948, 952, 1).
edge(952, 953, 0).

%Subtree 119
%Compression tree nodes
comp_root(957).
comp_node(957, 5).
comp_node(958, 5).
comp_node(959, 4).
comp_node(960, 4).
comp_node(962, 1).
comp_node(963, 4).
comp_node(965, 3).
%Compression tree edges:
edge(957, 958, 0).
edge(958, 959, 0).
edge(959, 960, 0).
edge(960, 962, 1).
edge(959, 963, 1).
edge(963, 965, 1).

%Subtree 120
%Compression tree nodes
comp_root(968).
comp_node(968, 5).
comp_node(969, 5).
comp_node(970, 4).
comp_node(971, 4).
comp_node(972, 1).
comp_node(974, 4).
comp_node(975, 1).
comp_node(976, 3).
%Compression tree edges:
edge(968, 969, 0).
edge(969, 970, 0).
edge(970, 971, 0).
edge(971, 972, 0).
edge(970, 974, 1).
edge(974, 975, 0).
edge(974, 976, 1).

%Subtree 121
%Compression tree nodes
comp_root(979).
comp_node(979, 5).
comp_node(980, 5).
comp_node(981, 4).
comp_node(982, 4).
comp_node(983, 1).
comp_node(985, 4).
comp_node(986, 1).
%Compression tree edges:
edge(979, 980, 0).
edge(980, 981, 0).
edge(981, 982, 0).
edge(982, 983, 0).
edge(981, 985, 1).
edge(985, 986, 0).

%Subtree 122
%Compression tree nodes
comp_root(990).
comp_node(990, 5).
comp_node(991, 5).
comp_node(992, 4).
comp_node(993, 4).
comp_node(994, 1).
comp_node(996, 4).
comp_node(998, 3).
%Compression tree edges:
edge(990, 991, 0).
edge(991, 992, 0).
edge(992, 993, 0).
edge(993, 994, 0).
edge(992, 996, 1).
edge(996, 998, 1).

%Subtree 123
%Compression tree nodes
comp_root(1001).
comp_node(1001, 5).
comp_node(1002, 5).
comp_node(1003, 4).
comp_node(1004, 4).
comp_node(1005, 1).
comp_node(1006, 1).
comp_node(1007, 4).
comp_node(1008, 1).
comp_node(1009, 3).
%Compression tree edges:
edge(1001, 1002, 0).
edge(1002, 1003, 0).
edge(1003, 1004, 0).
edge(1004, 1005, 0).
edge(1004, 1006, 1).
edge(1003, 1007, 1).
edge(1007, 1008, 0).
edge(1007, 1009, 1).

%Subtree 124
%Compression tree nodes
comp_root(1012).
comp_node(1012, 5).
comp_node(1013, 5).
comp_node(1014, 4).
comp_node(1015, 4).
comp_node(1016, 1).
comp_node(1017, 1).
comp_node(1018, 4).
comp_node(1019, 1).
%Compression tree edges:
edge(1012, 1013, 0).
edge(1013, 1014, 0).
edge(1014, 1015, 0).
edge(1015, 1016, 0).
edge(1015, 1017, 1).
edge(1014, 1018, 1).
edge(1018, 1019, 0).

%Subtree 125
%Compression tree nodes
comp_root(1023).
comp_node(1023, 5).
comp_node(1024, 5).
comp_node(1025, 4).
comp_node(1026, 4).
comp_node(1027, 1).
comp_node(1028, 1).
comp_node(1029, 4).
comp_node(1031, 3).
%Compression tree edges:
edge(1023, 1024, 0).
edge(1024, 1025, 0).
edge(1025, 1026, 0).
edge(1026, 1027, 0).
edge(1026, 1028, 1).
edge(1025, 1029, 1).
edge(1029, 1031, 1).

%Subtree 126
%Compression tree nodes
comp_root(1034).
comp_node(1034, 5).
comp_node(1035, 5).
comp_node(1036, 4).
comp_node(1037, 4).
comp_node(1038, 1).
comp_node(1039, 1).
comp_node(1040, 4).
%Compression tree edges:
edge(1034, 1035, 0).
edge(1035, 1036, 0).
edge(1036, 1037, 0).
edge(1037, 1038, 0).
edge(1037, 1039, 1).
edge(1036, 1040, 1).

%Subtree 127
%Compression tree nodes
comp_root(1045).
comp_node(1045, 5).
comp_node(1046, 5).
comp_node(1047, 4).
comp_node(1048, 4).
comp_node(1049, 1).
comp_node(1051, 4).
%Compression tree edges:
edge(1045, 1046, 0).
edge(1046, 1047, 0).
edge(1047, 1048, 0).
edge(1048, 1049, 0).
edge(1047, 1051, 1).

%Subtree 128
%Compression tree nodes
comp_root(1056).
comp_node(1056, 5).
comp_node(1057, 5).
comp_node(1058, 4).
comp_node(1059, 4).
comp_node(1061, 1).
comp_node(1062, 4).
%Compression tree edges:
edge(1056, 1057, 0).
edge(1057, 1058, 0).
edge(1058, 1059, 0).
edge(1059, 1061, 1).
edge(1058, 1062, 1).

%Subtree 129
%Compression tree nodes
comp_root(1067).
comp_node(1067, 5).
comp_node(1068, 5).
comp_node(1069, 4).
comp_node(1070, 4).
comp_node(1073, 4).
%Compression tree edges:
edge(1067, 1068, 0).
edge(1068, 1069, 0).
edge(1069, 1070, 0).
edge(1069, 1073, 1).

%Subtree 130
%Compression tree nodes
comp_root(1078).
comp_node(1078, 5).
comp_node(1079, 5).
comp_node(1081, 1).
%Compression tree edges:
edge(1078, 1079, 0).
edge(1079, 1081, 1).

%Subtree 131
%Compression tree nodes
comp_root(1083).
comp_node(1083, 5).
comp_node(1084, 5).
%Compression tree edges:
edge(1083, 1084, 0).

%Subtree 132
%Compression tree nodes
comp_root(1088).
comp_node(1088, 5).
comp_node(1089, 5).
comp_node(1090, 4).
comp_node(1093, 1).
comp_node(1094, 3).
%Compression tree edges:
edge(1088, 1089, 0).
edge(1089, 1090, 0).
edge(1089, 1093, 1).
edge(1088, 1094, 1).

%Subtree 133
%Compression tree nodes
comp_root(1095).
comp_node(1095, 5).
comp_node(1096, 5).
comp_node(1097, 4).
comp_node(1099, 4).
comp_node(1100, 1).
comp_node(1101, 3).
comp_node(1102, 1).
comp_node(1103, 3).
%Compression tree edges:
edge(1095, 1096, 0).
edge(1096, 1097, 0).
edge(1097, 1099, 1).
edge(1099, 1100, 0).
edge(1099, 1101, 1).
edge(1096, 1102, 1).
edge(1095, 1103, 1).

%Subtree 134
%Compression tree nodes
comp_root(1104).
comp_node(1104, 5).
comp_node(1105, 5).
comp_node(1106, 4).
comp_node(1108, 4).
comp_node(1109, 1).
comp_node(1111, 1).
comp_node(1112, 3).
%Compression tree edges:
edge(1104, 1105, 0).
edge(1105, 1106, 0).
edge(1106, 1108, 1).
edge(1108, 1109, 0).
edge(1105, 1111, 1).
edge(1104, 1112, 1).

%Subtree 135
%Compression tree nodes
comp_root(1113).
comp_node(1113, 5).
comp_node(1114, 5).
comp_node(1115, 4).
comp_node(1117, 4).
comp_node(1119, 3).
comp_node(1120, 1).
comp_node(1121, 3).
%Compression tree edges:
edge(1113, 1114, 0).
edge(1114, 1115, 0).
edge(1115, 1117, 1).
edge(1117, 1119, 1).
edge(1114, 1120, 1).
edge(1113, 1121, 1).

%Subtree 136
%Compression tree nodes
comp_root(1122).
comp_node(1122, 5).
comp_node(1123, 5).
comp_node(1124, 4).
comp_node(1126, 4).
comp_node(1129, 1).
comp_node(1130, 3).
%Compression tree edges:
edge(1122, 1123, 0).
edge(1123, 1124, 0).
edge(1124, 1126, 1).
edge(1123, 1129, 1).
edge(1122, 1130, 1).

%Subtree 137
%Compression tree nodes
comp_root(1131).
comp_node(1131, 5).
comp_node(1132, 5).
comp_node(1133, 4).
comp_node(1134, 4).
comp_node(1135, 1).
comp_node(1136, 1).
comp_node(1138, 1).
comp_node(1139, 3).
%Compression tree edges:
edge(1131, 1132, 0).
edge(1132, 1133, 0).
edge(1133, 1134, 0).
edge(1134, 1135, 0).
edge(1134, 1136, 1).
edge(1132, 1138, 1).
edge(1131, 1139, 1).

%Subtree 138
%Compression tree nodes
comp_root(1140).
comp_node(1140, 5).
comp_node(1141, 5).
comp_node(1142, 4).
comp_node(1143, 4).
comp_node(1144, 1).
comp_node(1147, 1).
comp_node(1148, 3).
%Compression tree edges:
edge(1140, 1141, 0).
edge(1141, 1142, 0).
edge(1142, 1143, 0).
edge(1143, 1144, 0).
edge(1141, 1147, 1).
edge(1140, 1148, 1).

%Subtree 139
%Compression tree nodes
comp_root(1149).
comp_node(1149, 5).
comp_node(1150, 5).
comp_node(1151, 4).
comp_node(1152, 4).
comp_node(1154, 1).
comp_node(1156, 1).
comp_node(1157, 3).
%Compression tree edges:
edge(1149, 1150, 0).
edge(1150, 1151, 0).
edge(1151, 1152, 0).
edge(1152, 1154, 1).
edge(1150, 1156, 1).
edge(1149, 1157, 1).

%Subtree 140
%Compression tree nodes
comp_root(1158).
comp_node(1158, 5).
comp_node(1159, 5).
comp_node(1160, 4).
comp_node(1161, 4).
comp_node(1165, 1).
comp_node(1166, 3).
%Compression tree edges:
edge(1158, 1159, 0).
edge(1159, 1160, 0).
edge(1160, 1161, 0).
edge(1159, 1165, 1).
edge(1158, 1166, 1).

%Subtree 141
%Compression tree nodes
comp_root(1167).
comp_node(1167, 5).
comp_node(1168, 5).
comp_node(1169, 4).
comp_node(1170, 4).
comp_node(1173, 4).
comp_node(1174, 1).
comp_node(1175, 3).
comp_node(1176, 1).
comp_node(1177, 3).
%Compression tree edges:
edge(1167, 1168, 0).
edge(1168, 1169, 0).
edge(1169, 1170, 0).
edge(1169, 1173, 1).
edge(1173, 1174, 0).
edge(1173, 1175, 1).
edge(1168, 1176, 1).
edge(1167, 1177, 1).

%Subtree 142
%Compression tree nodes
comp_root(1178).
comp_node(1178, 5).
comp_node(1179, 5).
comp_node(1180, 4).
comp_node(1181, 4).
comp_node(1184, 4).
comp_node(1185, 1).
comp_node(1187, 1).
comp_node(1188, 3).
%Compression tree edges:
edge(1178, 1179, 0).
edge(1179, 1180, 0).
edge(1180, 1181, 0).
edge(1180, 1184, 1).
edge(1184, 1185, 0).
edge(1179, 1187, 1).
edge(1178, 1188, 1).

%Subtree 143
%Compression tree nodes
comp_root(1189).
comp_node(1189, 5).
comp_node(1190, 5).
comp_node(1191, 4).
comp_node(1192, 4).
comp_node(1195, 4).
comp_node(1197, 3).
comp_node(1198, 1).
comp_node(1199, 3).
%Compression tree edges:
edge(1189, 1190, 0).
edge(1190, 1191, 0).
edge(1191, 1192, 0).
edge(1191, 1195, 1).
edge(1195, 1197, 1).
edge(1190, 1198, 1).
edge(1189, 1199, 1).

%Subtree 144
%Compression tree nodes
comp_root(1200).
comp_node(1200, 5).
comp_node(1201, 5).
comp_node(1202, 4).
comp_node(1203, 4).
comp_node(1205, 1).
comp_node(1206, 4).
comp_node(1207, 1).
comp_node(1208, 3).
comp_node(1209, 1).
comp_node(1210, 3).
%Compression tree edges:
edge(1200, 1201, 0).
edge(1201, 1202, 0).
edge(1202, 1203, 0).
edge(1203, 1205, 1).
edge(1202, 1206, 1).
edge(1206, 1207, 0).
edge(1206, 1208, 1).
edge(1201, 1209, 1).
edge(1200, 1210, 1).

%Subtree 145
%Compression tree nodes
comp_root(1211).
comp_node(1211, 5).
comp_node(1212, 5).
comp_node(1213, 4).
comp_node(1214, 4).
comp_node(1216, 1).
comp_node(1217, 4).
comp_node(1218, 1).
comp_node(1220, 1).
comp_node(1221, 3).
%Compression tree edges:
edge(1211, 1212, 0).
edge(1212, 1213, 0).
edge(1213, 1214, 0).
edge(1214, 1216, 1).
edge(1213, 1217, 1).
edge(1217, 1218, 0).
edge(1212, 1220, 1).
edge(1211, 1221, 1).

%Subtree 146
%Compression tree nodes
comp_root(1222).
comp_node(1222, 5).
comp_node(1223, 5).
comp_node(1224, 4).
comp_node(1225, 4).
comp_node(1227, 1).
comp_node(1228, 4).
comp_node(1230, 3).
comp_node(1231, 1).
comp_node(1232, 3).
%Compression tree edges:
edge(1222, 1223, 0).
edge(1223, 1224, 0).
edge(1224, 1225, 0).
edge(1225, 1227, 1).
edge(1224, 1228, 1).
edge(1228, 1230, 1).
edge(1223, 1231, 1).
edge(1222, 1232, 1).

%Subtree 147
%Compression tree nodes
comp_root(1233).
comp_node(1233, 5).
comp_node(1234, 5).
comp_node(1235, 4).
comp_node(1236, 4).
comp_node(1237, 1).
comp_node(1239, 4).
comp_node(1240, 1).
comp_node(1241, 3).
comp_node(1242, 1).
comp_node(1243, 3).
%Compression tree edges:
edge(1233, 1234, 0).
edge(1234, 1235, 0).
edge(1235, 1236, 0).
edge(1236, 1237, 0).
edge(1235, 1239, 1).
edge(1239, 1240, 0).
edge(1239, 1241, 1).
edge(1234, 1242, 1).
edge(1233, 1243, 1).

%Subtree 148
%Compression tree nodes
comp_root(1244).
comp_node(1244, 5).
comp_node(1245, 5).
comp_node(1246, 4).
comp_node(1247, 4).
comp_node(1248, 1).
comp_node(1250, 4).
comp_node(1251, 1).
comp_node(1253, 1).
comp_node(1254, 3).
%Compression tree edges:
edge(1244, 1245, 0).
edge(1245, 1246, 0).
edge(1246, 1247, 0).
edge(1247, 1248, 0).
edge(1246, 1250, 1).
edge(1250, 1251, 0).
edge(1245, 1253, 1).
edge(1244, 1254, 1).

%Subtree 149
%Compression tree nodes
comp_root(1255).
comp_node(1255, 5).
comp_node(1256, 5).
comp_node(1257, 4).
comp_node(1258, 4).
comp_node(1259, 1).
comp_node(1261, 4).
comp_node(1263, 3).
comp_node(1264, 1).
comp_node(1265, 3).
%Compression tree edges:
edge(1255, 1256, 0).
edge(1256, 1257, 0).
edge(1257, 1258, 0).
edge(1258, 1259, 0).
edge(1257, 1261, 1).
edge(1261, 1263, 1).
edge(1256, 1264, 1).
edge(1255, 1265, 1).

%Subtree 150
%Compression tree nodes
comp_root(1266).
comp_node(1266, 5).
comp_node(1267, 5).
comp_node(1268, 4).
comp_node(1269, 4).
comp_node(1270, 1).
comp_node(1271, 1).
comp_node(1272, 4).
comp_node(1273, 1).
comp_node(1274, 3).
comp_node(1275, 1).
comp_node(1276, 3).
%Compression tree edges:
edge(1266, 1267, 0).
edge(1267, 1268, 0).
edge(1268, 1269, 0).
edge(1269, 1270, 0).
edge(1269, 1271, 1).
edge(1268, 1272, 1).
edge(1272, 1273, 0).
edge(1272, 1274, 1).
edge(1267, 1275, 1).
edge(1266, 1276, 1).

%Subtree 151
%Compression tree nodes
comp_root(1277).
comp_node(1277, 5).
comp_node(1278, 5).
comp_node(1279, 4).
comp_node(1280, 4).
comp_node(1281, 1).
comp_node(1282, 1).
comp_node(1283, 4).
comp_node(1284, 1).
comp_node(1286, 1).
comp_node(1287, 3).
%Compression tree edges:
edge(1277, 1278, 0).
edge(1278, 1279, 0).
edge(1279, 1280, 0).
edge(1280, 1281, 0).
edge(1280, 1282, 1).
edge(1279, 1283, 1).
edge(1283, 1284, 0).
edge(1278, 1286, 1).
edge(1277, 1287, 1).

%Subtree 152
%Compression tree nodes
comp_root(1288).
comp_node(1288, 5).
comp_node(1289, 5).
comp_node(1290, 4).
comp_node(1291, 4).
comp_node(1292, 1).
comp_node(1293, 1).
comp_node(1294, 4).
comp_node(1296, 3).
comp_node(1297, 1).
comp_node(1298, 3).
%Compression tree edges:
edge(1288, 1289, 0).
edge(1289, 1290, 0).
edge(1290, 1291, 0).
edge(1291, 1292, 0).
edge(1291, 1293, 1).
edge(1290, 1294, 1).
edge(1294, 1296, 1).
edge(1289, 1297, 1).
edge(1288, 1298, 1).

%Subtree 153
%Compression tree nodes
comp_root(1299).
comp_node(1299, 5).
comp_node(1300, 5).
comp_node(1301, 4).
comp_node(1302, 4).
comp_node(1303, 1).
comp_node(1304, 1).
comp_node(1305, 4).
comp_node(1308, 1).
comp_node(1309, 3).
%Compression tree edges:
edge(1299, 1300, 0).
edge(1300, 1301, 0).
edge(1301, 1302, 0).
edge(1302, 1303, 0).
edge(1302, 1304, 1).
edge(1301, 1305, 1).
edge(1300, 1308, 1).
edge(1299, 1309, 1).

%Subtree 154
%Compression tree nodes
comp_root(1310).
comp_node(1310, 5).
comp_node(1311, 5).
comp_node(1312, 4).
comp_node(1313, 4).
comp_node(1314, 1).
comp_node(1316, 4).
comp_node(1319, 1).
comp_node(1320, 3).
%Compression tree edges:
edge(1310, 1311, 0).
edge(1311, 1312, 0).
edge(1312, 1313, 0).
edge(1313, 1314, 0).
edge(1312, 1316, 1).
edge(1311, 1319, 1).
edge(1310, 1320, 1).

%Subtree 155
%Compression tree nodes
comp_root(1321).
comp_node(1321, 5).
comp_node(1322, 5).
comp_node(1323, 4).
comp_node(1324, 4).
comp_node(1326, 1).
comp_node(1327, 4).
comp_node(1330, 1).
comp_node(1331, 3).
%Compression tree edges:
edge(1321, 1322, 0).
edge(1322, 1323, 0).
edge(1323, 1324, 0).
edge(1324, 1326, 1).
edge(1323, 1327, 1).
edge(1322, 1330, 1).
edge(1321, 1331, 1).

%Subtree 156
%Compression tree nodes
comp_root(1332).
comp_node(1332, 5).
comp_node(1333, 5).
comp_node(1334, 4).
comp_node(1335, 4).
comp_node(1338, 4).
comp_node(1341, 1).
comp_node(1342, 3).
%Compression tree edges:
edge(1332, 1333, 0).
edge(1333, 1334, 0).
edge(1334, 1335, 0).
edge(1334, 1338, 1).
edge(1333, 1341, 1).
edge(1332, 1342, 1).

%Subtree 157
%Compression tree nodes
comp_root(1343).
comp_node(1343, 5).
comp_node(1344, 5).
comp_node(1345, 4).
comp_node(1349, 3).
%Compression tree edges:
edge(1343, 1344, 0).
edge(1344, 1345, 0).
edge(1343, 1349, 1).

%Subtree 158
%Compression tree nodes
comp_root(1350).
comp_node(1350, 5).
comp_node(1351, 5).
comp_node(1352, 4).
comp_node(1354, 4).
comp_node(1355, 1).
comp_node(1356, 3).
comp_node(1358, 3).
%Compression tree edges:
edge(1350, 1351, 0).
edge(1351, 1352, 0).
edge(1352, 1354, 1).
edge(1354, 1355, 0).
edge(1354, 1356, 1).
edge(1350, 1358, 1).

%Subtree 159
%Compression tree nodes
comp_root(1359).
comp_node(1359, 5).
comp_node(1360, 5).
comp_node(1361, 4).
comp_node(1363, 4).
comp_node(1364, 1).
comp_node(1367, 3).
%Compression tree edges:
edge(1359, 1360, 0).
edge(1360, 1361, 0).
edge(1361, 1363, 1).
edge(1363, 1364, 0).
edge(1359, 1367, 1).

%Subtree 160
%Compression tree nodes
comp_root(1368).
comp_node(1368, 5).
comp_node(1369, 5).
comp_node(1370, 4).
comp_node(1372, 4).
comp_node(1374, 3).
comp_node(1376, 3).
%Compression tree edges:
edge(1368, 1369, 0).
edge(1369, 1370, 0).
edge(1370, 1372, 1).
edge(1372, 1374, 1).
edge(1368, 1376, 1).

%Subtree 161
%Compression tree nodes
comp_root(1377).
comp_node(1377, 5).
comp_node(1378, 5).
comp_node(1379, 4).
comp_node(1381, 4).
comp_node(1385, 3).
%Compression tree edges:
edge(1377, 1378, 0).
edge(1378, 1379, 0).
edge(1379, 1381, 1).
edge(1377, 1385, 1).

%Subtree 162
%Compression tree nodes
comp_root(1386).
comp_node(1386, 5).
comp_node(1387, 5).
comp_node(1388, 4).
comp_node(1389, 4).
comp_node(1390, 1).
comp_node(1391, 1).
comp_node(1394, 3).
%Compression tree edges:
edge(1386, 1387, 0).
edge(1387, 1388, 0).
edge(1388, 1389, 0).
edge(1389, 1390, 0).
edge(1389, 1391, 1).
edge(1386, 1394, 1).

%Subtree 163
%Compression tree nodes
comp_root(1395).
comp_node(1395, 5).
comp_node(1396, 5).
comp_node(1397, 4).
comp_node(1398, 4).
comp_node(1399, 1).
comp_node(1403, 3).
%Compression tree edges:
edge(1395, 1396, 0).
edge(1396, 1397, 0).
edge(1397, 1398, 0).
edge(1398, 1399, 0).
edge(1395, 1403, 1).

%Subtree 164
%Compression tree nodes
comp_root(1404).
comp_node(1404, 5).
comp_node(1405, 5).
comp_node(1406, 4).
comp_node(1407, 4).
comp_node(1409, 1).
comp_node(1412, 3).
%Compression tree edges:
edge(1404, 1405, 0).
edge(1405, 1406, 0).
edge(1406, 1407, 0).
edge(1407, 1409, 1).
edge(1404, 1412, 1).

%Subtree 165
%Compression tree nodes
comp_root(1413).
comp_node(1413, 5).
comp_node(1414, 5).
comp_node(1415, 4).
comp_node(1416, 4).
comp_node(1421, 3).
%Compression tree edges:
edge(1413, 1414, 0).
edge(1414, 1415, 0).
edge(1415, 1416, 0).
edge(1413, 1421, 1).

%Subtree 166
%Compression tree nodes
comp_root(1422).
comp_node(1422, 5).
comp_node(1423, 5).
comp_node(1424, 4).
comp_node(1425, 4).
comp_node(1428, 4).
comp_node(1429, 1).
comp_node(1430, 3).
comp_node(1432, 3).
%Compression tree edges:
edge(1422, 1423, 0).
edge(1423, 1424, 0).
edge(1424, 1425, 0).
edge(1424, 1428, 1).
edge(1428, 1429, 0).
edge(1428, 1430, 1).
edge(1422, 1432, 1).

%Subtree 167
%Compression tree nodes
comp_root(1433).
comp_node(1433, 5).
comp_node(1434, 5).
comp_node(1435, 4).
comp_node(1436, 4).
comp_node(1439, 4).
comp_node(1440, 1).
comp_node(1443, 3).
%Compression tree edges:
edge(1433, 1434, 0).
edge(1434, 1435, 0).
edge(1435, 1436, 0).
edge(1435, 1439, 1).
edge(1439, 1440, 0).
edge(1433, 1443, 1).

%Subtree 168
%Compression tree nodes
comp_root(1444).
comp_node(1444, 5).
comp_node(1445, 5).
comp_node(1446, 4).
comp_node(1447, 4).
comp_node(1450, 4).
comp_node(1452, 3).
comp_node(1454, 3).
%Compression tree edges:
edge(1444, 1445, 0).
edge(1445, 1446, 0).
edge(1446, 1447, 0).
edge(1446, 1450, 1).
edge(1450, 1452, 1).
edge(1444, 1454, 1).

%Subtree 169
%Compression tree nodes
comp_root(1455).
comp_node(1455, 5).
comp_node(1456, 5).
comp_node(1457, 4).
comp_node(1458, 4).
comp_node(1460, 1).
comp_node(1461, 4).
comp_node(1462, 1).
comp_node(1463, 3).
comp_node(1465, 3).
%Compression tree edges:
edge(1455, 1456, 0).
edge(1456, 1457, 0).
edge(1457, 1458, 0).
edge(1458, 1460, 1).
edge(1457, 1461, 1).
edge(1461, 1462, 0).
edge(1461, 1463, 1).
edge(1455, 1465, 1).

%Subtree 170
%Compression tree nodes
comp_root(1466).
comp_node(1466, 5).
comp_node(1467, 5).
comp_node(1468, 4).
comp_node(1469, 4).
comp_node(1471, 1).
comp_node(1472, 4).
comp_node(1473, 1).
comp_node(1476, 3).
%Compression tree edges:
edge(1466, 1467, 0).
edge(1467, 1468, 0).
edge(1468, 1469, 0).
edge(1469, 1471, 1).
edge(1468, 1472, 1).
edge(1472, 1473, 0).
edge(1466, 1476, 1).

%Subtree 171
%Compression tree nodes
comp_root(1477).
comp_node(1477, 5).
comp_node(1478, 5).
comp_node(1479, 4).
comp_node(1480, 4).
comp_node(1482, 1).
comp_node(1483, 4).
comp_node(1485, 3).
comp_node(1487, 3).
%Compression tree edges:
edge(1477, 1478, 0).
edge(1478, 1479, 0).
edge(1479, 1480, 0).
edge(1480, 1482, 1).
edge(1479, 1483, 1).
edge(1483, 1485, 1).
edge(1477, 1487, 1).

%Subtree 172
%Compression tree nodes
comp_root(1488).
comp_node(1488, 5).
comp_node(1489, 5).
comp_node(1490, 4).
comp_node(1491, 4).
comp_node(1492, 1).
comp_node(1494, 4).
comp_node(1495, 1).
comp_node(1496, 3).
comp_node(1498, 3).
%Compression tree edges:
edge(1488, 1489, 0).
edge(1489, 1490, 0).
edge(1490, 1491, 0).
edge(1491, 1492, 0).
edge(1490, 1494, 1).
edge(1494, 1495, 0).
edge(1494, 1496, 1).
edge(1488, 1498, 1).

%Subtree 173
%Compression tree nodes
comp_root(1499).
comp_node(1499, 5).
comp_node(1500, 5).
comp_node(1501, 4).
comp_node(1502, 4).
comp_node(1503, 1).
comp_node(1505, 4).
comp_node(1506, 1).
comp_node(1509, 3).
%Compression tree edges:
edge(1499, 1500, 0).
edge(1500, 1501, 0).
edge(1501, 1502, 0).
edge(1502, 1503, 0).
edge(1501, 1505, 1).
edge(1505, 1506, 0).
edge(1499, 1509, 1).

%Subtree 174
%Compression tree nodes
comp_root(1510).
comp_node(1510, 5).
comp_node(1511, 5).
comp_node(1512, 4).
comp_node(1513, 4).
comp_node(1514, 1).
comp_node(1516, 4).
comp_node(1518, 3).
comp_node(1520, 3).
%Compression tree edges:
edge(1510, 1511, 0).
edge(1511, 1512, 0).
edge(1512, 1513, 0).
edge(1513, 1514, 0).
edge(1512, 1516, 1).
edge(1516, 1518, 1).
edge(1510, 1520, 1).

%Subtree 175
%Compression tree nodes
comp_root(1521).
comp_node(1521, 5).
comp_node(1522, 5).
comp_node(1523, 4).
comp_node(1524, 4).
comp_node(1525, 1).
comp_node(1526, 1).
comp_node(1527, 4).
comp_node(1528, 1).
comp_node(1529, 3).
comp_node(1531, 3).
%Compression tree edges:
edge(1521, 1522, 0).
edge(1522, 1523, 0).
edge(1523, 1524, 0).
edge(1524, 1525, 0).
edge(1524, 1526, 1).
edge(1523, 1527, 1).
edge(1527, 1528, 0).
edge(1527, 1529, 1).
edge(1521, 1531, 1).

%Subtree 176
%Compression tree nodes
comp_root(1532).
comp_node(1532, 5).
comp_node(1533, 5).
comp_node(1534, 4).
comp_node(1535, 4).
comp_node(1536, 1).
comp_node(1537, 1).
comp_node(1538, 4).
comp_node(1539, 1).
comp_node(1542, 3).
%Compression tree edges:
edge(1532, 1533, 0).
edge(1533, 1534, 0).
edge(1534, 1535, 0).
edge(1535, 1536, 0).
edge(1535, 1537, 1).
edge(1534, 1538, 1).
edge(1538, 1539, 0).
edge(1532, 1542, 1).

%Subtree 177
%Compression tree nodes
comp_root(1543).
comp_node(1543, 5).
comp_node(1544, 5).
comp_node(1545, 4).
comp_node(1546, 4).
comp_node(1547, 1).
comp_node(1548, 1).
comp_node(1549, 4).
comp_node(1551, 3).
comp_node(1553, 3).
%Compression tree edges:
edge(1543, 1544, 0).
edge(1544, 1545, 0).
edge(1545, 1546, 0).
edge(1546, 1547, 0).
edge(1546, 1548, 1).
edge(1545, 1549, 1).
edge(1549, 1551, 1).
edge(1543, 1553, 1).

%Subtree 178
%Compression tree nodes
comp_root(1554).
comp_node(1554, 5).
comp_node(1555, 5).
comp_node(1556, 4).
comp_node(1557, 4).
comp_node(1558, 1).
comp_node(1559, 1).
comp_node(1560, 4).
comp_node(1564, 3).
%Compression tree edges:
edge(1554, 1555, 0).
edge(1555, 1556, 0).
edge(1556, 1557, 0).
edge(1557, 1558, 0).
edge(1557, 1559, 1).
edge(1556, 1560, 1).
edge(1554, 1564, 1).

%Subtree 179
%Compression tree nodes
comp_root(1565).
comp_node(1565, 5).
comp_node(1566, 5).
comp_node(1567, 4).
comp_node(1568, 4).
comp_node(1569, 1).
comp_node(1571, 4).
comp_node(1575, 3).
%Compression tree edges:
edge(1565, 1566, 0).
edge(1566, 1567, 0).
edge(1567, 1568, 0).
edge(1568, 1569, 0).
edge(1567, 1571, 1).
edge(1565, 1575, 1).

%Subtree 180
%Compression tree nodes
comp_root(1576).
comp_node(1576, 5).
comp_node(1577, 5).
comp_node(1578, 4).
comp_node(1579, 4).
comp_node(1581, 1).
comp_node(1582, 4).
comp_node(1586, 3).
%Compression tree edges:
edge(1576, 1577, 0).
edge(1577, 1578, 0).
edge(1578, 1579, 0).
edge(1579, 1581, 1).
edge(1578, 1582, 1).
edge(1576, 1586, 1).

%Subtree 181
%Compression tree nodes
comp_root(1587).
comp_node(1587, 5).
comp_node(1588, 5).
comp_node(1589, 4).
comp_node(1590, 4).
comp_node(1593, 4).
comp_node(1597, 3).
%Compression tree edges:
edge(1587, 1588, 0).
edge(1588, 1589, 0).
edge(1589, 1590, 0).
edge(1589, 1593, 1).
edge(1587, 1597, 1).

%Subtree 182
%Compression tree nodes
comp_root(1598).
comp_node(1598, 5).
comp_node(1599, 5).
comp_node(1601, 1).
comp_node(1602, 3).
%Compression tree edges:
edge(1598, 1599, 0).
edge(1599, 1601, 1).
edge(1598, 1602, 1).

%Subtree 183
%Compression tree nodes
comp_root(1603).
comp_node(1603, 5).
comp_node(1604, 5).
comp_node(1607, 3).
%Compression tree edges:
edge(1603, 1604, 0).
edge(1603, 1607, 1).

%Subtree 184
%Compression tree nodes
comp_root(1608).
comp_node(1608, 5).
comp_node(1610, 1).
%Compression tree edges:
edge(1608, 1610, 1).

%Subtree 185
%Compression tree nodes
comp_root(1611).
comp_node(1611, 5).
comp_node(1612, 4).
comp_node(1613, 4).
comp_node(1616, 4).
%Compression tree edges:
edge(1611, 1612, 0).
edge(1612, 1613, 0).
edge(1612, 1616, 1).

%Subtree 186
%Compression tree nodes
comp_root(1620).
comp_node(1620, 5).
comp_node(1621, 4).
comp_node(1622, 4).
comp_node(1624, 1).
comp_node(1625, 4).
%Compression tree edges:
edge(1620, 1621, 0).
edge(1621, 1622, 0).
edge(1622, 1624, 1).
edge(1621, 1625, 1).

%Subtree 187
%Compression tree nodes
comp_root(1629).
comp_node(1629, 5).
comp_node(1630, 4).
comp_node(1631, 4).
comp_node(1632, 1).
comp_node(1634, 4).
%Compression tree edges:
edge(1629, 1630, 0).
edge(1630, 1631, 0).
edge(1631, 1632, 0).
edge(1630, 1634, 1).

%Subtree 188
%Compression tree nodes
comp_root(1638).
comp_node(1638, 5).
comp_node(1639, 4).
comp_node(1640, 4).
comp_node(1641, 1).
comp_node(1642, 1).
comp_node(1643, 4).
%Compression tree edges:
edge(1638, 1639, 0).
edge(1639, 1640, 0).
edge(1640, 1641, 0).
edge(1640, 1642, 1).
edge(1639, 1643, 1).

%Subtree 189
%Compression tree nodes
comp_root(1647).
comp_node(1647, 5).
comp_node(1648, 4).
comp_node(1649, 4).
comp_node(1650, 1).
comp_node(1651, 1).
comp_node(1652, 4).
comp_node(1654, 3).
%Compression tree edges:
edge(1647, 1648, 0).
edge(1648, 1649, 0).
edge(1649, 1650, 0).
edge(1649, 1651, 1).
edge(1648, 1652, 1).
edge(1652, 1654, 1).

%Subtree 190
%Compression tree nodes
comp_root(1656).
comp_node(1656, 5).
comp_node(1657, 4).
comp_node(1658, 4).
comp_node(1659, 1).
comp_node(1660, 1).
comp_node(1661, 4).
comp_node(1662, 1).
%Compression tree edges:
edge(1656, 1657, 0).
edge(1657, 1658, 0).
edge(1658, 1659, 0).
edge(1658, 1660, 1).
edge(1657, 1661, 1).
edge(1661, 1662, 0).

%Subtree 191
%Compression tree nodes
comp_root(1665).
comp_node(1665, 5).
comp_node(1666, 4).
comp_node(1667, 4).
comp_node(1668, 1).
comp_node(1669, 1).
comp_node(1670, 4).
comp_node(1671, 1).
comp_node(1672, 3).
%Compression tree edges:
edge(1665, 1666, 0).
edge(1666, 1667, 0).
edge(1667, 1668, 0).
edge(1667, 1669, 1).
edge(1666, 1670, 1).
edge(1670, 1671, 0).
edge(1670, 1672, 1).

%Subtree 192
%Compression tree nodes
comp_root(1674).
comp_node(1674, 5).
comp_node(1675, 4).
comp_node(1676, 4).
comp_node(1677, 1).
comp_node(1679, 4).
comp_node(1681, 3).
%Compression tree edges:
edge(1674, 1675, 0).
edge(1675, 1676, 0).
edge(1676, 1677, 0).
edge(1675, 1679, 1).
edge(1679, 1681, 1).

%Subtree 193
%Compression tree nodes
comp_root(1683).
comp_node(1683, 5).
comp_node(1684, 4).
comp_node(1685, 4).
comp_node(1686, 1).
comp_node(1688, 4).
comp_node(1689, 1).
%Compression tree edges:
edge(1683, 1684, 0).
edge(1684, 1685, 0).
edge(1685, 1686, 0).
edge(1684, 1688, 1).
edge(1688, 1689, 0).

%Subtree 194
%Compression tree nodes
comp_root(1692).
comp_node(1692, 5).
comp_node(1693, 4).
comp_node(1694, 4).
comp_node(1695, 1).
comp_node(1697, 4).
comp_node(1698, 1).
comp_node(1699, 3).
%Compression tree edges:
edge(1692, 1693, 0).
edge(1693, 1694, 0).
edge(1694, 1695, 0).
edge(1693, 1697, 1).
edge(1697, 1698, 0).
edge(1697, 1699, 1).

%Subtree 195
%Compression tree nodes
comp_root(1701).
comp_node(1701, 5).
comp_node(1702, 4).
comp_node(1703, 4).
comp_node(1705, 1).
comp_node(1706, 4).
comp_node(1708, 3).
%Compression tree edges:
edge(1701, 1702, 0).
edge(1702, 1703, 0).
edge(1703, 1705, 1).
edge(1702, 1706, 1).
edge(1706, 1708, 1).

%Subtree 196
%Compression tree nodes
comp_root(1710).
comp_node(1710, 5).
comp_node(1711, 4).
comp_node(1712, 4).
comp_node(1714, 1).
comp_node(1715, 4).
comp_node(1716, 1).
%Compression tree edges:
edge(1710, 1711, 0).
edge(1711, 1712, 0).
edge(1712, 1714, 1).
edge(1711, 1715, 1).
edge(1715, 1716, 0).

%Subtree 197
%Compression tree nodes
comp_root(1719).
comp_node(1719, 5).
comp_node(1720, 4).
comp_node(1721, 4).
comp_node(1723, 1).
comp_node(1724, 4).
comp_node(1725, 1).
comp_node(1726, 3).
%Compression tree edges:
edge(1719, 1720, 0).
edge(1720, 1721, 0).
edge(1721, 1723, 1).
edge(1720, 1724, 1).
edge(1724, 1725, 0).
edge(1724, 1726, 1).

%Subtree 198
%Compression tree nodes
comp_root(1728).
comp_node(1728, 5).
comp_node(1729, 4).
comp_node(1730, 4).
comp_node(1733, 4).
comp_node(1735, 3).
%Compression tree edges:
edge(1728, 1729, 0).
edge(1729, 1730, 0).
edge(1729, 1733, 1).
edge(1733, 1735, 1).

%Subtree 199
%Compression tree nodes
comp_root(1737).
comp_node(1737, 5).
comp_node(1738, 4).
comp_node(1739, 4).
comp_node(1742, 4).
comp_node(1743, 1).
%Compression tree edges:
edge(1737, 1738, 0).
edge(1738, 1739, 0).
edge(1738, 1742, 1).
edge(1742, 1743, 0).

%Subtree 200
%Compression tree nodes
comp_root(1746).
comp_node(1746, 5).
comp_node(1747, 4).
comp_node(1748, 4).
comp_node(1751, 4).
comp_node(1752, 1).
comp_node(1753, 3).
%Compression tree edges:
edge(1746, 1747, 0).
edge(1747, 1748, 0).
edge(1747, 1751, 1).
edge(1751, 1752, 0).
edge(1751, 1753, 1).

%Subtree 201
%Compression tree nodes
comp_root(1755).
comp_node(1755, 5).
comp_node(1756, 4).
comp_node(1757, 4).
%Compression tree edges:
edge(1755, 1756, 0).
edge(1756, 1757, 0).

%Subtree 202
%Compression tree nodes
comp_root(1762).
comp_node(1762, 5).
comp_node(1763, 4).
comp_node(1764, 4).
comp_node(1766, 1).
%Compression tree edges:
edge(1762, 1763, 0).
edge(1763, 1764, 0).
edge(1764, 1766, 1).

%Subtree 203
%Compression tree nodes
comp_root(1769).
comp_node(1769, 5).
comp_node(1770, 4).
comp_node(1771, 4).
comp_node(1772, 1).
%Compression tree edges:
edge(1769, 1770, 0).
edge(1770, 1771, 0).
edge(1771, 1772, 0).

%Subtree 204
%Compression tree nodes
comp_root(1776).
comp_node(1776, 5).
comp_node(1777, 4).
comp_node(1778, 4).
comp_node(1779, 1).
comp_node(1780, 1).
%Compression tree edges:
edge(1776, 1777, 0).
edge(1777, 1778, 0).
edge(1778, 1779, 0).
edge(1778, 1780, 1).

%Subtree 205
%Compression tree nodes
comp_root(1783).
comp_node(1783, 5).
comp_node(1784, 4).
comp_node(1786, 4).
%Compression tree edges:
edge(1783, 1784, 0).
edge(1784, 1786, 1).

%Subtree 206
%Compression tree nodes
comp_root(1790).
comp_node(1790, 5).
comp_node(1791, 4).
comp_node(1793, 4).
comp_node(1795, 3).
%Compression tree edges:
edge(1790, 1791, 0).
edge(1791, 1793, 1).
edge(1793, 1795, 1).

%Subtree 207
%Compression tree nodes
comp_root(1797).
comp_node(1797, 5).
comp_node(1798, 4).
comp_node(1800, 4).
comp_node(1801, 1).
%Compression tree edges:
edge(1797, 1798, 0).
edge(1798, 1800, 1).
edge(1800, 1801, 0).

%Subtree 208
%Compression tree nodes
comp_root(1804).
comp_node(1804, 5).
comp_node(1805, 4).
comp_node(1807, 4).
comp_node(1808, 1).
comp_node(1809, 3).
%Compression tree edges:
edge(1804, 1805, 0).
edge(1805, 1807, 1).
edge(1807, 1808, 0).
edge(1807, 1809, 1).

%Subtree 209
%Compression tree nodes
comp_root(1811).
comp_node(1811, 5).
comp_node(1812, 4).
%Compression tree edges:
edge(1811, 1812, 0).

%Subtree 210
%Compression tree nodes
comp_root(1816).
comp_node(1816, 5).
comp_node(1817, 4).
comp_node(1818, 4).
comp_node(1821, 4).
comp_node(1824, 1).
%Compression tree edges:
edge(1816, 1817, 0).
edge(1817, 1818, 0).
edge(1817, 1821, 1).
edge(1816, 1824, 1).

%Subtree 211
%Compression tree nodes
comp_root(1825).
comp_node(1825, 5).
comp_node(1826, 4).
comp_node(1827, 4).
comp_node(1829, 1).
comp_node(1830, 4).
comp_node(1833, 1).
%Compression tree edges:
edge(1825, 1826, 0).
edge(1826, 1827, 0).
edge(1827, 1829, 1).
edge(1826, 1830, 1).
edge(1825, 1833, 1).

%Subtree 212
%Compression tree nodes
comp_root(1834).
comp_node(1834, 5).
comp_node(1835, 4).
comp_node(1836, 4).
comp_node(1837, 1).
comp_node(1839, 4).
comp_node(1842, 1).
%Compression tree edges:
edge(1834, 1835, 0).
edge(1835, 1836, 0).
edge(1836, 1837, 0).
edge(1835, 1839, 1).
edge(1834, 1842, 1).

%Subtree 213
%Compression tree nodes
comp_root(1843).
comp_node(1843, 5).
comp_node(1844, 4).
comp_node(1845, 4).
comp_node(1846, 1).
comp_node(1847, 1).
comp_node(1848, 4).
comp_node(1851, 1).
%Compression tree edges:
edge(1843, 1844, 0).
edge(1844, 1845, 0).
edge(1845, 1846, 0).
edge(1845, 1847, 1).
edge(1844, 1848, 1).
edge(1843, 1851, 1).

%Subtree 214
%Compression tree nodes
comp_root(1852).
comp_node(1852, 5).
comp_node(1853, 4).
comp_node(1854, 4).
comp_node(1855, 1).
comp_node(1856, 1).
comp_node(1857, 4).
comp_node(1859, 3).
comp_node(1860, 1).
%Compression tree edges:
edge(1852, 1853, 0).
edge(1853, 1854, 0).
edge(1854, 1855, 0).
edge(1854, 1856, 1).
edge(1853, 1857, 1).
edge(1857, 1859, 1).
edge(1852, 1860, 1).

%Subtree 215
%Compression tree nodes
comp_root(1861).
comp_node(1861, 5).
comp_node(1862, 4).
comp_node(1863, 4).
comp_node(1864, 1).
comp_node(1865, 1).
comp_node(1866, 4).
comp_node(1867, 1).
comp_node(1869, 1).
%Compression tree edges:
edge(1861, 1862, 0).
edge(1862, 1863, 0).
edge(1863, 1864, 0).
edge(1863, 1865, 1).
edge(1862, 1866, 1).
edge(1866, 1867, 0).
edge(1861, 1869, 1).

%Subtree 216
%Compression tree nodes
comp_root(1870).
comp_node(1870, 5).
comp_node(1871, 4).
comp_node(1872, 4).
comp_node(1873, 1).
comp_node(1874, 1).
comp_node(1875, 4).
comp_node(1876, 1).
comp_node(1877, 3).
comp_node(1878, 1).
%Compression tree edges:
edge(1870, 1871, 0).
edge(1871, 1872, 0).
edge(1872, 1873, 0).
edge(1872, 1874, 1).
edge(1871, 1875, 1).
edge(1875, 1876, 0).
edge(1875, 1877, 1).
edge(1870, 1878, 1).

%Subtree 217
%Compression tree nodes
comp_root(1879).
comp_node(1879, 5).
comp_node(1880, 4).
comp_node(1881, 4).
comp_node(1882, 1).
comp_node(1884, 4).
comp_node(1886, 3).
comp_node(1887, 1).
%Compression tree edges:
edge(1879, 1880, 0).
edge(1880, 1881, 0).
edge(1881, 1882, 0).
edge(1880, 1884, 1).
edge(1884, 1886, 1).
edge(1879, 1887, 1).

%Subtree 218
%Compression tree nodes
comp_root(1888).
comp_node(1888, 5).
comp_node(1889, 4).
comp_node(1890, 4).
comp_node(1891, 1).
comp_node(1893, 4).
comp_node(1894, 1).
comp_node(1896, 1).
%Compression tree edges:
edge(1888, 1889, 0).
edge(1889, 1890, 0).
edge(1890, 1891, 0).
edge(1889, 1893, 1).
edge(1893, 1894, 0).
edge(1888, 1896, 1).

%Subtree 219
%Compression tree nodes
comp_root(1897).
comp_node(1897, 5).
comp_node(1898, 4).
comp_node(1899, 4).
comp_node(1900, 1).
comp_node(1902, 4).
comp_node(1903, 1).
comp_node(1904, 3).
comp_node(1905, 1).
%Compression tree edges:
edge(1897, 1898, 0).
edge(1898, 1899, 0).
edge(1899, 1900, 0).
edge(1898, 1902, 1).
edge(1902, 1903, 0).
edge(1902, 1904, 1).
edge(1897, 1905, 1).

%Subtree 220
%Compression tree nodes
comp_root(1906).
comp_node(1906, 5).
comp_node(1907, 4).
comp_node(1908, 4).
comp_node(1910, 1).
comp_node(1911, 4).
comp_node(1913, 3).
comp_node(1914, 1).
%Compression tree edges:
edge(1906, 1907, 0).
edge(1907, 1908, 0).
edge(1908, 1910, 1).
edge(1907, 1911, 1).
edge(1911, 1913, 1).
edge(1906, 1914, 1).

%Subtree 221
%Compression tree nodes
comp_root(1915).
comp_node(1915, 5).
comp_node(1916, 4).
comp_node(1917, 4).
comp_node(1919, 1).
comp_node(1920, 4).
comp_node(1921, 1).
comp_node(1923, 1).
%Compression tree edges:
edge(1915, 1916, 0).
edge(1916, 1917, 0).
edge(1917, 1919, 1).
edge(1916, 1920, 1).
edge(1920, 1921, 0).
edge(1915, 1923, 1).

%Subtree 222
%Compression tree nodes
comp_root(1924).
comp_node(1924, 5).
comp_node(1925, 4).
comp_node(1926, 4).
comp_node(1928, 1).
comp_node(1929, 4).
comp_node(1930, 1).
comp_node(1931, 3).
comp_node(1932, 1).
%Compression tree edges:
edge(1924, 1925, 0).
edge(1925, 1926, 0).
edge(1926, 1928, 1).
edge(1925, 1929, 1).
edge(1929, 1930, 0).
edge(1929, 1931, 1).
edge(1924, 1932, 1).

%Subtree 223
%Compression tree nodes
comp_root(1933).
comp_node(1933, 5).
comp_node(1934, 4).
comp_node(1935, 4).
comp_node(1938, 4).
comp_node(1940, 3).
comp_node(1941, 1).
%Compression tree edges:
edge(1933, 1934, 0).
edge(1934, 1935, 0).
edge(1934, 1938, 1).
edge(1938, 1940, 1).
edge(1933, 1941, 1).

%Subtree 224
%Compression tree nodes
comp_root(1942).
comp_node(1942, 5).
comp_node(1943, 4).
comp_node(1944, 4).
comp_node(1947, 4).
comp_node(1948, 1).
comp_node(1950, 1).
%Compression tree edges:
edge(1942, 1943, 0).
edge(1943, 1944, 0).
edge(1943, 1947, 1).
edge(1947, 1948, 0).
edge(1942, 1950, 1).

%Subtree 225
%Compression tree nodes
comp_root(1951).
comp_node(1951, 5).
comp_node(1952, 4).
comp_node(1953, 4).
comp_node(1956, 4).
comp_node(1957, 1).
comp_node(1958, 3).
comp_node(1959, 1).
%Compression tree edges:
edge(1951, 1952, 0).
edge(1952, 1953, 0).
edge(1952, 1956, 1).
edge(1956, 1957, 0).
edge(1956, 1958, 1).
edge(1951, 1959, 1).

%Subtree 226
%Compression tree nodes
comp_root(1960).
comp_node(1960, 5).
comp_node(1961, 4).
comp_node(1962, 4).
comp_node(1966, 1).
%Compression tree edges:
edge(1960, 1961, 0).
edge(1961, 1962, 0).
edge(1960, 1966, 1).

%Subtree 227
%Compression tree nodes
comp_root(1967).
comp_node(1967, 5).
comp_node(1968, 4).
comp_node(1969, 4).
comp_node(1971, 1).
comp_node(1973, 1).
%Compression tree edges:
edge(1967, 1968, 0).
edge(1968, 1969, 0).
edge(1969, 1971, 1).
edge(1967, 1973, 1).

%Subtree 228
%Compression tree nodes
comp_root(1974).
comp_node(1974, 5).
comp_node(1975, 4).
comp_node(1976, 4).
comp_node(1977, 1).
comp_node(1980, 1).
%Compression tree edges:
edge(1974, 1975, 0).
edge(1975, 1976, 0).
edge(1976, 1977, 0).
edge(1974, 1980, 1).

%Subtree 229
%Compression tree nodes
comp_root(1981).
comp_node(1981, 5).
comp_node(1982, 4).
comp_node(1983, 4).
comp_node(1984, 1).
comp_node(1985, 1).
comp_node(1987, 1).
%Compression tree edges:
edge(1981, 1982, 0).
edge(1982, 1983, 0).
edge(1983, 1984, 0).
edge(1983, 1985, 1).
edge(1981, 1987, 1).

%Subtree 230
%Compression tree nodes
comp_root(1988).
comp_node(1988, 5).
comp_node(1989, 4).
comp_node(1991, 4).
comp_node(1994, 1).
%Compression tree edges:
edge(1988, 1989, 0).
edge(1989, 1991, 1).
edge(1988, 1994, 1).

%Subtree 231
%Compression tree nodes
comp_root(1995).
comp_node(1995, 5).
comp_node(1996, 4).
comp_node(1998, 4).
comp_node(2000, 3).
comp_node(2001, 1).
%Compression tree edges:
edge(1995, 1996, 0).
edge(1996, 1998, 1).
edge(1998, 2000, 1).
edge(1995, 2001, 1).

%Subtree 232
%Compression tree nodes
comp_root(2002).
comp_node(2002, 5).
comp_node(2003, 4).
comp_node(2005, 4).
comp_node(2006, 1).
comp_node(2008, 1).
%Compression tree edges:
edge(2002, 2003, 0).
edge(2003, 2005, 1).
edge(2005, 2006, 0).
edge(2002, 2008, 1).

%Subtree 233
%Compression tree nodes
comp_root(2009).
comp_node(2009, 5).
comp_node(2010, 4).
comp_node(2012, 4).
comp_node(2013, 1).
comp_node(2014, 3).
comp_node(2015, 1).
%Compression tree edges:
edge(2009, 2010, 0).
edge(2010, 2012, 1).
edge(2012, 2013, 0).
edge(2012, 2014, 1).
edge(2009, 2015, 1).

%Subtree 234
%Compression tree nodes
comp_root(2016).
comp_node(2016, 5).
comp_node(2017, 4).
comp_node(2020, 1).
%Compression tree edges:
edge(2016, 2017, 0).
edge(2016, 2020, 1).

%Subtree 235
%Compression tree nodes
comp_root(2021).
comp_node(2021, 4).
comp_node(2023, 4).
comp_node(2024, 1).
comp_node(2025, 3).
%Compression tree edges:
edge(2021, 2023, 1).
edge(2023, 2024, 0).
edge(2023, 2025, 1).

%Subtree 236
%Compression tree nodes
comp_root(2026).
comp_node(2026, 4).
comp_node(2028, 4).
comp_node(2029, 1).
%Compression tree edges:
edge(2026, 2028, 1).
edge(2028, 2029, 0).

%Subtree 237
%Compression tree nodes
comp_root(2031).
comp_node(2031, 4).
comp_node(2033, 4).
comp_node(2035, 3).
%Compression tree edges:
edge(2031, 2033, 1).
edge(2033, 2035, 1).

%Subtree 238
%Compression tree nodes
comp_root(2036).
comp_node(2036, 4).
comp_node(2038, 4).
%Compression tree edges:
edge(2036, 2038, 1).

%Subtree 239
%Compression tree nodes
comp_root(2041).
comp_node(2041, 4).
comp_node(2042, 4).
comp_node(2043, 1).
comp_node(2044, 1).
%Compression tree edges:
edge(2041, 2042, 0).
edge(2042, 2043, 0).
edge(2042, 2044, 1).

%Subtree 240
%Compression tree nodes
comp_root(2046).
comp_node(2046, 4).
comp_node(2047, 4).
comp_node(2048, 1).
%Compression tree edges:
edge(2046, 2047, 0).
edge(2047, 2048, 0).

%Subtree 241
%Compression tree nodes
comp_root(2051).
comp_node(2051, 4).
comp_node(2052, 4).
comp_node(2054, 1).
%Compression tree edges:
edge(2051, 2052, 0).
edge(2052, 2054, 1).

%Subtree 242
%Compression tree nodes
comp_root(2056).
comp_node(2056, 4).
comp_node(2057, 4).
%Compression tree edges:
edge(2056, 2057, 0).

%Subtree 243
%Compression tree nodes
comp_root(2061).
comp_node(2061, 4).
comp_node(2062, 4).
comp_node(2065, 4).
comp_node(2066, 1).
comp_node(2067, 3).
%Compression tree edges:
edge(2061, 2062, 0).
edge(2061, 2065, 1).
edge(2065, 2066, 0).
edge(2065, 2067, 1).

%Subtree 244
%Compression tree nodes
comp_root(2068).
comp_node(2068, 4).
comp_node(2069, 4).
comp_node(2072, 4).
comp_node(2073, 1).
%Compression tree edges:
edge(2068, 2069, 0).
edge(2068, 2072, 1).
edge(2072, 2073, 0).

%Subtree 245
%Compression tree nodes
comp_root(2075).
comp_node(2075, 4).
comp_node(2076, 4).
comp_node(2079, 4).
comp_node(2081, 3).
%Compression tree edges:
edge(2075, 2076, 0).
edge(2075, 2079, 1).
edge(2079, 2081, 1).

%Subtree 246
%Compression tree nodes
comp_root(2082).
comp_node(2082, 4).
comp_node(2083, 4).
comp_node(2085, 1).
comp_node(2086, 4).
comp_node(2087, 1).
comp_node(2088, 3).
%Compression tree edges:
edge(2082, 2083, 0).
edge(2083, 2085, 1).
edge(2082, 2086, 1).
edge(2086, 2087, 0).
edge(2086, 2088, 1).

%Subtree 247
%Compression tree nodes
comp_root(2089).
comp_node(2089, 4).
comp_node(2090, 4).
comp_node(2092, 1).
comp_node(2093, 4).
comp_node(2094, 1).
%Compression tree edges:
edge(2089, 2090, 0).
edge(2090, 2092, 1).
edge(2089, 2093, 1).
edge(2093, 2094, 0).

%Subtree 248
%Compression tree nodes
comp_root(2096).
comp_node(2096, 4).
comp_node(2097, 4).
comp_node(2099, 1).
comp_node(2100, 4).
comp_node(2102, 3).
%Compression tree edges:
edge(2096, 2097, 0).
edge(2097, 2099, 1).
edge(2096, 2100, 1).
edge(2100, 2102, 1).

%Subtree 249
%Compression tree nodes
comp_root(2103).
comp_node(2103, 4).
comp_node(2104, 4).
comp_node(2105, 1).
comp_node(2107, 4).
comp_node(2108, 1).
comp_node(2109, 3).
%Compression tree edges:
edge(2103, 2104, 0).
edge(2104, 2105, 0).
edge(2103, 2107, 1).
edge(2107, 2108, 0).
edge(2107, 2109, 1).

%Subtree 250
%Compression tree nodes
comp_root(2110).
comp_node(2110, 4).
comp_node(2111, 4).
comp_node(2112, 1).
comp_node(2114, 4).
comp_node(2115, 1).
%Compression tree edges:
edge(2110, 2111, 0).
edge(2111, 2112, 0).
edge(2110, 2114, 1).
edge(2114, 2115, 0).

%Subtree 251
%Compression tree nodes
comp_root(2117).
comp_node(2117, 4).
comp_node(2118, 4).
comp_node(2119, 1).
comp_node(2121, 4).
comp_node(2123, 3).
%Compression tree edges:
edge(2117, 2118, 0).
edge(2118, 2119, 0).
edge(2117, 2121, 1).
edge(2121, 2123, 1).

%Subtree 252
%Compression tree nodes
comp_root(2124).
comp_node(2124, 4).
comp_node(2125, 4).
comp_node(2126, 1).
comp_node(2127, 1).
comp_node(2128, 4).
comp_node(2129, 1).
comp_node(2130, 3).
%Compression tree edges:
edge(2124, 2125, 0).
edge(2125, 2126, 0).
edge(2125, 2127, 1).
edge(2124, 2128, 1).
edge(2128, 2129, 0).
edge(2128, 2130, 1).

%Subtree 253
%Compression tree nodes
comp_root(2131).
comp_node(2131, 4).
comp_node(2132, 4).
comp_node(2133, 1).
comp_node(2134, 1).
comp_node(2135, 4).
comp_node(2136, 1).
%Compression tree edges:
edge(2131, 2132, 0).
edge(2132, 2133, 0).
edge(2132, 2134, 1).
edge(2131, 2135, 1).
edge(2135, 2136, 0).

%Subtree 254
%Compression tree nodes
comp_root(2138).
comp_node(2138, 4).
comp_node(2139, 4).
comp_node(2140, 1).
comp_node(2141, 1).
comp_node(2142, 4).
comp_node(2144, 3).
%Compression tree edges:
edge(2138, 2139, 0).
edge(2139, 2140, 0).
edge(2139, 2141, 1).
edge(2138, 2142, 1).
edge(2142, 2144, 1).

%Subtree 255
%Compression tree nodes
comp_root(2145).
comp_node(2145, 4).
comp_node(2146, 4).
comp_node(2147, 1).
comp_node(2148, 1).
comp_node(2149, 4).
%Compression tree edges:
edge(2145, 2146, 0).
edge(2146, 2147, 0).
edge(2146, 2148, 1).
edge(2145, 2149, 1).

%Subtree 256
%Compression tree nodes
comp_root(2152).
comp_node(2152, 4).
comp_node(2153, 4).
comp_node(2154, 1).
comp_node(2156, 4).
%Compression tree edges:
edge(2152, 2153, 0).
edge(2153, 2154, 0).
edge(2152, 2156, 1).

%Subtree 257
%Compression tree nodes
comp_root(2159).
comp_node(2159, 4).
comp_node(2160, 4).
comp_node(2162, 1).
comp_node(2163, 4).
%Compression tree edges:
edge(2159, 2160, 0).
edge(2160, 2162, 1).
edge(2159, 2163, 1).

%Subtree 258
%Compression tree nodes
comp_root(2166).
comp_node(2166, 4).
comp_node(2167, 4).
comp_node(2170, 4).
%Compression tree edges:
edge(2166, 2167, 0).
edge(2166, 2170, 1).

%Subtree 259
%Compression tree nodes
comp_root(2173).
comp_node(2173, 4).
comp_node(2175, 1).
%Compression tree edges:
edge(2173, 2175, 1).

%Subtree 260
%Compression tree nodes
comp_root(2176).
comp_node(2176, 4).
comp_node(2177, 1).
%Compression tree edges:
edge(2176, 2177, 0).

%Subtree 261
%Compression tree nodes
comp_root(2179).
comp_node(2179, 4).
comp_node(2180, 1).
comp_node(2181, 1).
%Compression tree edges:
edge(2179, 2180, 0).
edge(2179, 2181, 1).

%Subtree 262
%Compression tree nodes
comp_root(2182).
comp_node(2182, 4).
comp_node(2184, 3).
%Compression tree edges:
edge(2182, 2184, 1).

%Subtree 263
%Compression tree nodes
comp_root(2185).
comp_node(2185, 4).
comp_node(2186, 1).
%Compression tree edges:
edge(2185, 2186, 0).

%Subtree 264
%Compression tree nodes
comp_root(2188).
comp_node(2188, 4).
comp_node(2189, 1).
comp_node(2190, 3).
%Compression tree edges:
edge(2188, 2189, 0).
edge(2188, 2190, 1).