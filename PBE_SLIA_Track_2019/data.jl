module Problems
using HerbSpecification
problem_11604909 = Problem("problem_11604909", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "AIX 5.1"), "5.1"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "VMware ESX Server 3.5.0 build-110268"), "3.5"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Linux Linux 2.6 Linux"), "2.6"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Red Hat Enterprise AS 4 <2.6-78.0.13.ELl_arg_esmp>"), "2.6"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Microsoft <R> Windows <R> 2000 Advanced Server 1.0"), "1.0"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Microsoft Windows XP Win2008R2 6.1.7601"), "6.1")])
problem_12948338 = Problem("problem_12948338", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "An example string with _username in it RT _AwesomeUser says _username is awesome", :_arg_2 => "username"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "An example string with _username in it RT _AwesomeUser says _username is awesome", :_arg_2 => "AwesomeUser"), 1), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "An _example string with _example in it is awesome _example", :_arg_2 => "example"), 3)])
problem_17212077 = Problem("problem_17212077", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "01/15/2013"), "01/2013"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "03/07/2011"), "03/2011"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "05/09/2009"), "05/2009")])
problem_19274448 = Problem("problem_19274448", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "dhfjd9999999dfda"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ddsss999dfdfsfd"), false)])
problem_19558979 = Problem("problem_19558979", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "spreadsheet", :_arg_2 => 1), "s"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "spreadsheet", :_arg_2 => 2), "p"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "spreadsheet", :_arg_2 => 3), "r"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "spreadsheet", :_arg_2 => 4), "e"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "spreadsheet", :_arg_2 => 5), "a")])
problem_2171308 = Problem("problem_2171308", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "John Doe"), "J Doe"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Mayur Naik"), "M Naik"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Nimit Singh"), "N Singh")])
problem_23435880 = Problem("problem_23435880", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "apple apples", :_arg_2 => "apple"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "an orange among the oranges is a spoiled orange", :_arg_2 => "orange"), 3)])
problem_25239569 = Problem("problem_25239569", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Adf_ROCLeader_BAN_728x90_CPM_STD _BRD _NRT_DCK"), "Adf_ROCLeader_BAN_728x90_CPM_STD _Branding _NRT_DCK"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "MMC_ContextualLarRec_BAN_336x280_CPM_STD _LDS _RTG_DCK"), "MMC_ContextualLarRec_BAN_336x280_CPM_STD _Leads _RTG_DCK"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Adf_ROC_DLBD_728x90_CPM_STD_DRS_NRT_NOR_DCK"), "Adf_ROC_DLBD_728x90_CPM_STD_Direct Response_NRT_NOR_DCK")])
problem_28627624_1 = Problem("problem_28627624_1", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Dec 2, 2014, 11=23 PM - +91 90000 80000= loren ipsum"), "Dec 2, 2014, 11=23 PM"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Dec 2, 2014, 11=24 PM - +91 90000 80000= loren"), "Dec 2, 2014, 11=24 PM")])
problem_30732554 = Problem("problem_30732554", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "TL-18273982| 10MM"), "TL-18273982"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "TL-288762| 76DK"), "TL-288762"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "CT-576"), "CT-576"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "N/A"), "N/A")])
problem_31753108 = Problem("problem_31753108", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Tire Pressure ABC123873 Monitor"), "ABC123873"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => " Oil Life ABC849999999021 gauge"), "ABC849999999021"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => " Air conditioner GHF211 maintenance"), "GHF211")])
problem_33619752 = Problem("problem_33619752", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "General Electric"), "General Electric"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "General Electric Inc"), "General Electric"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "General Electric Company"), "General Electric"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Microsoft"), "Microsoft"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Microsoft Corporation"), "Microsoft"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Nintendo"), "Nintendo"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Nintendo Enterprises"), "Nintendo")])
problem_34801680 = Problem("problem_34801680", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Name= ABC Retailers"), "ABC Retailers"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => " ame= XYZ Suppliers"), "XYZ Suppliers")])
problem_35016216 = Problem("problem_35016216", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "C0abc", :_arg_2 => "def"), "C0abc"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "aabc", :_arg_2 => "def"), "def"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "C0dd", :_arg_2 => "qwe"), "C0dd"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "dd", :_arg_2 => "qwe"), "qwe")])
problem_35744094 = Problem("problem_35744094", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "http=//www.apple.com/uk/mac"), "mac"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "https=//www.microsoft.com/en-gb/windows"), "windows"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "https=//www.microsoft.com/"), "microsoft")])
problem_36462127 = Problem("problem_36462127", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ABCDE/FGHI/JKL/MNOPQR"), "MNOPQR"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "A/ABCDE/FGHI/JKL"), "JKL")])
problem_37281007 = Problem("problem_37281007", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ABC", :_arg_2 => "D"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ABC", :_arg_2 => "BC"), true)])
problem_37534494 = Problem("problem_37534494", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "I love apples", :_arg_3 => "banana", :_arg_2 => "I hate bananas"), "I hate bananas"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "I love apples", :_arg_3 => "apple", :_arg_2 => "I hate bananas"), "I love apples")])
problem_38664547 = Problem("problem_38664547", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "thatensures"), "ensures"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "thatwill"), "will"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "thathave"), "have"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "knowthat"), "know"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "that"), "that"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "mouse"), "mouse"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "knowthat"), "know")])
problem_38871714 = Problem("problem_38871714", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "This is a <string>, It should be <changed> to <a> number."), "This is a string, It should be changed to a number."), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "a < 4 and a > 0"), "a  4 and a  0")])
problem_39060015 = Problem("problem_39060015", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "This is a line. /delete words in the area /keep this part"), "This is a line. keep this part"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "/delete words in the area /"), "")])
problem_40498040 = Problem("problem_40498040", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "some project,other project"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "some project"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "overhead"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "some project, overhead"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "some project, other, boo"), true)])
problem_41503046 = Problem("problem_41503046", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Polygonum amphibium"), "Polygonum"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Hippuris vulgaris"), "Hippuris"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Lysimachia vulgaris"), "Lysimachia"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Juncus bulbosus ssp. bulbosus"), "Juncus bulbosus"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Lycopus europaeus ssp. europaeus"), "Lycopus europaeus"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Nymphaea alba"), "Nymphaea")])
problem_43120683 = Problem("problem_43120683", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "one, 1"), "one apple"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "two, 2"), "two bananas"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "three, 3"), "three strawberries"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "four, 4"), "four oranges")])
problem_43606446 = Problem("problem_43606446", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "USD.EUR<IDEALPRO,CASH,EUR>"), "EUR"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "USD.EUR<IDEALPRO,CASH,USD>"), "USD"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "KOR.JPN<IDEALPRO,CASH,WON>"), "WON"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "KOR.JPN<IDEALPRO,CASH,YEN>"), "YEN")])
problem_44789427 = Problem("problem_44789427", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "1/17/16-1/18/17", :_arg_2 => 1), "1/17/16"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "1/17/16-1/18/17", :_arg_2 => 2), "1/18/17"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "01/17/2016-01/18/2017", :_arg_2 => 1), "01/17/2016"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "01/17/2016-01/18/2017", :_arg_2 => 2), "01/18/2017")])
problem_add_a_line_break_with_a_formula = Problem("problem_add_a_line_break_with_a_formula", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Traci Brown", :_arg_3 => "Saginaw, MI 48607", :_arg_2 => "1301 Robinson Court"), "Traci Brown/n1301 Robinson Court/nSaginaw, MI 48607"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Mary Hannan", :_arg_3 => "Lansing, MI 48933", :_arg_2 => "1195 Amethyst Drive"), "Mary Hannan/n1195 Amethyst Drive/nLansing, MI 48933"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Linda Thomas", :_arg_3 => "Allen, KY 41601", :_arg_2 => "2479 North Bend Road"), "Linda Thomas/n2479 North Bend Road/nAllen, KY 41601")])
problem_cell_contains_all_of_many_things = Problem("problem_cell_contains_all_of_many_things", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "yellow dog on green grass", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Lone dog with a green frisbie on yellow sand", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "A yellow sun in a green field", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "yellow neon sign with a green background", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), false)])
problem_cell_contains_number = Problem("problem_cell_contains_number", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "A bird in the hand is worth 2 in the bush."), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "A bird in the hand is worth two in the bush."), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The 15 shortcuts you simply must know"), true)])
problem_cell_contains_one_of_many_things = Problem("problem_cell_contains_one_of_many_things", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "yellow dog on green grass", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "warm gray sweater", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "A yellow sun in a green field", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "yellow neon sign with a green background", :_arg_3 => "green", :_arg_4 => "dog", :_arg_2 => "yellow"), true)])
problem_cell_contains_one_of_many_with_exclusions = Problem("problem_cell_contains_one_of_many_with_exclusions", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "yellow dog on green grass", :_arg_3 => "green", :_arg_4 => "cat", :_arg_2 => "yellow"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "warm gray sweater", :_arg_3 => "green", :_arg_4 => "cat", :_arg_2 => "yellow"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "blue neon signs", :_arg_3 => "green", :_arg_4 => "neon", :_arg_2 => "blue"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "hot pink socks", :_arg_3 => "pink", :_arg_4 => "neon", :_arg_2 => "blue"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "deep black eyes", :_arg_3 => "green", :_arg_4 => "neon", :_arg_2 => "yellow"), false)])
problem_cell_contains_some_words_but_not_others = Problem("problem_cell_contains_some_words_but_not_others", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "red ball, green sweater", :_arg_3 => "green", :_arg_4 => "pink", :_arg_2 => "red"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "pink ball, green sweater", :_arg_3 => "green", :_arg_4 => "pink", :_arg_2 => "red"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "blue sea, pink ribbon", :_arg_3 => "blue", :_arg_4 => "pink", :_arg_2 => "red"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "black sea, white ribbon", :_arg_3 => "blue", :_arg_4 => "pink", :_arg_2 => "red"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "red green blue", :_arg_3 => "blue", :_arg_4 => "pink", :_arg_2 => "red"), true)])
problem_cell_contains_specific_text = Problem("problem_cell_contains_specific_text", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "An apple a day keeps the doctor away", :_arg_2 => "apple"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "An apple a day keeps the doctor away", :_arg_2 => "orange"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Better the devil you know", :_arg_2 => "you know"), true)])
problem_cell_equals_one_of_many_things = Problem("problem_cell_equals_one_of_many_things", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "yellow"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "gray"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "black"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "blue"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "pink"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "orange"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "turkey"), false)])
problem_change_negative_numbers_to_positive = Problem("problem_change_negative_numbers_to_positive", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "-%134"), "%134"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "500"), "500"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "5.125"), "5.125"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "-%43.00"), "%43.00")])
problem_clean_and_reformat_telephone_numbers = Problem("problem_clean_and_reformat_telephone_numbers", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "801-456-8765"), "8014568765"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "<978> 654-0299"), "9786540299"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "978.654.0299"), "9786540299")])
problem_compare_two_strings = Problem("problem_compare_two_strings", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "apple", :_arg_2 => "apple"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "orange", :_arg_2 => "Orange"), false), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "peach", :_arg_2 => "peach"), true), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "cherry", :_arg_2 => "cherrY"), false)])
problem_convert_numbers_to_text = Problem("problem_convert_numbers_to_text", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => 101), "101"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => 1002), "1002"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => 743), "743")])
problem_convert_text_to_numbers = Problem("problem_convert_text_to_numbers", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "101"), 101), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "1002"), 1002), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "743"), 743)])
problem_count_consecutive_monthly_orders = Problem("problem_count_consecutive_monthly_orders", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "7 0 0 5 4 4"), 3), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "0 0 2 3 3 0"), 3), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "5 6 4 6 0 7"), 4), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "0 4 5 0 0 2"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "3 0 3 0 1 2"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "5 3 2 5 6 1"), 6)])
problem_count_line_breaks_in_cell = Problem("problem_count_line_breaks_in_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "one"), 1), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "one/ntwo"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "one/ntwo/nthree"), 3)])
problem_count_specific_characters_in_a_cell = Problem("problem_count_specific_characters_in_a_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Hannah", :_arg_2 => "n"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Hannah", :_arg_2 => "x"), 0), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Hannah", :_arg_2 => "N"), 0), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Hannah", :_arg_2 => "a"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Hannah", :_arg_2 => "h"), 1)])
problem_count_specific_words_in_a_cell = Problem("problem_count_specific_words_in_a_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The fox jumped over the fox", :_arg_2 => "fox"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The fox jumped over the fox", :_arg_2 => "ox"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The fox jumped over the fox", :_arg_2 => "Fox"), 0)])
problem_count_total_characters_in_a_cell = Problem("problem_count_total_characters_in_a_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The"), 3), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The quick fox"), 13), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The quick  fox"), 14)])
problem_count_total_words_in_a_cell = Problem("problem_count_total_words_in_a_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "humpty dumpty"), 2), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "humpty dumpty sat on a wall,"), 6), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "couldnt put humpty together again."), 5)])
problem_create_email_address_from_name = Problem("problem_create_email_address_from_name", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "brown", :_arg_2 => "traci"), "tbrown_acme.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "thomas", :_arg_2 => "linda"), "lthomas_acme.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ward", :_arg_2 => "jack"), "jward_acme.com")])
problem_create_email_address_with_name_and_domain = Problem("problem_create_email_address_with_name_and_domain", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ayako", :_arg_3 => "acme.com", :_arg_2 => "ogawa"), "aogawa_acme.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "amy", :_arg_3 => "google.com", :_arg_2 => "johnson"), "ajohnson_google.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "tom", :_arg_3 => "upenn.edu", :_arg_2 => "chang"), "tchang_upenn.edu")])
problem_exceljet1 = Problem("problem_exceljet1", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ann chang", :_arg_2 => "achang_maaker.com"), "maaker.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "bobby smith", :_arg_2 => "bobt_sphynx.uk.co"), "sphynx.uk.co"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "art lennox", :_arg_2 => "art.lennox_svxn.com"), "svxn.com")])
problem_exceljet2 = Problem("problem_exceljet2", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "www.domain.com"), "com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "mail.net"), "net"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "www.amaon.co.uk"), "uk")])
problem_exceljet3 = Problem("problem_exceljet3", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "year= 2016"), "2016"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "make= subaru"), "subaru"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "model= outback wagon"), "outback wagon"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "fuel economy= 25/33"), "25/33")])
problem_exceljet4 = Problem("problem_exceljet4", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "https=//exceljet.net/catalog"), "exceljet.net/catalog"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "https=//microsoft.com"), "microsoft.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ftp=//someserver.com"), "someserver.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "sftp=//127.0.0.1"), "127.0.0.1")])
problem_extract_nth_word_from_text_string = Problem("problem_extract_nth_word_from_text_string", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "you can do anything but you cant do everything.", :_arg_2 => 4), "anything"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "you can do anything but you cant do everything.", :_arg_2 => 1), "you"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "you can do anything but you cant do everything.", :_arg_2 => 2), "can"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "you can do anything but you cant do everything.", :_arg_2 => 3), "do")])
problem_extract_text_between_parentheses = Problem("problem_extract_text_between_parentheses", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Jones <60>"), 60), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Jones <57>"), 57), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Jones <55>"), 55)])
problem_extract_word_containing_specific_text = Problem("problem_extract_word_containing_specific_text", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "send email to json_acme.com"), "json_acme.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "contact help_robot.com for all support requests"), "help_robot.com")])
problem_extract_word_that_begins_with_specific_character = Problem("problem_extract_word_that_begins_with_specific_character", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "this is a _username in the middle"), "_username"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "twitter names look like= _name"), "_name"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "with two _name1 and _name2"), "_name1")])
problem_find_nth_occurrence_of_character = Problem("problem_find_nth_occurrence_of_character", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "replies to _aya, _tasisuke, and _chan", :_arg_2 => 1), 12), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "replies to _aya, _tasisuke, and _chan", :_arg_2 => 2), 18), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "replies to _aya, _tasisuke, and _chan", :_arg_2 => 3), 33)])
problem_get_domain_from_email_address_2 = Problem("problem_get_domain_from_email_address_2", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ann chang", :_arg_2 => "achang_maaker.com"), "achang"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "bobby smith", :_arg_2 => "bobt_sphynx.uk.co"), "bobt"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "art lennox", :_arg_2 => "art.lennox_svxn.com"), "art.lennox")])
problem_get_domain_name_from_url = Problem("problem_get_domain_name_from_url", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "https=//abc.com/def"), "https=//abc.com/"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "http=//www.abc.com/def/cef"), "http=//www.abc.com"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "http=//chandoo.org/wp/def-def"), "http=//chandoo.org/")])
problem_get_first_name_from_name_with_comma = Problem("problem_get_first_name_from_name_with_comma", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Chang,Amy", :_arg_2 => 1), "Amy"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Chang,Amy", :_arg_2 => 2), "Chang"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "smith,bobby", :_arg_2 => 2), "smith"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "smith,bobby", :_arg_2 => 1), "bobby")])
problem_get_first_name_from_name = Problem("problem_get_first_name_from_name", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Susan Ann Chang"), "Susan"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Ayako Tanaka"), "Ayako"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Bobby T. smth"), "Bobby")])
problem_get_first_word = Problem("problem_get_first_word", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The quick brown fox."), "The"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "quick brown fox."), "quick"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "fox"), "")])
problem_get_last_line_in_cell = Problem("problem_get_last_line_in_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "11/1/2015 - First call/n12/3/2015-order placed/n11/15/2015-follow-up,interested"), "11/15/2015-follow-up,interested"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "11/1/2015 - First call/n12/3/2015-order placed"), "12/3/2015-order placed"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "11/1/2015 - First call"), "11/1/2015 - First call")])
problem_get_last_name_from_name_with_comma = Problem("problem_get_last_name_from_name_with_comma", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "chang,amy"), "amy,chang"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "smith,bobby"), "bobby,smith"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "lennox,aaron"), "aaron,lennox")])
problem_get_last_name_from_name = Problem("problem_get_last_name_from_name", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Park Kim"), "Kim"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Lee Kim"), "Kim"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Kim Lee"), "Lee")])
problem_get_last_word = Problem("problem_get_last_word", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "focus on one thing at a time"), "time"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "premature opt is the root of all evil"), "evil"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "where is life"), "life")])
problem_get_middle_name_from_full_name = Problem("problem_get_middle_name_from_full_name", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "susan ann chang"), "ann"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ayako tanaka"), ""), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "bobby t. smith"), "t."), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "anthory r. tom brown"), "r. tom")])
problem_join_cells_with_comma = Problem("problem_join_cells_with_comma", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "figs", :_arg_3 => "apples", :_arg_2 => ""), "figs, apples"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "mangos", :_arg_3 => "grapes", :_arg_2 => "kiwis"), "mangos, kiwis, grapes")])
problem_join_first_and_last_name = Problem("problem_join_first_and_last_name", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "susan", :_arg_2 => "chang"), "susan chang"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "aaron", :_arg_2 => "kim"), "aaron kim")])
problem_most_frequently_occurring_text = Problem("problem_most_frequently_occurring_text", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "cat", :_arg_3 => "cat", :_arg_2 => "dog"), "cat"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "blue", :_arg_3 => "red", :_arg_2 => "red"), "red"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "firm", :_arg_3 => "soft", :_arg_2 => "firm"), "firm"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "soft", :_arg_3 => "soft", :_arg_2 => "soft"), "soft")])
problem_phone_5_short = Problem("problem_phone_5_short", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+106 769-858-438"), "106"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+83 973-757-831"), "83"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+62 647-787-775"), "62"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+172 027-507-632"), "172"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+72 001-050-856"), "72"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+95 310-537-401"), "95"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+6 775-969-238"), "6")])
problem_phone_6_short = Problem("problem_phone_6_short", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+106 769-858-438"), "769"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+83 973-757-831"), "973"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+62 647-787-775"), "647"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+172 027-507-632"), "027"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+72 001-050-856"), "001"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+95 310-537-401"), "310"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+6 775-969-238"), "775")])
problem_phone_7_short = Problem("problem_phone_7_short", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+106 769-858-438"), "858"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+83 973-757-831"), "757"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+62 647-787-775"), "787"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+172 027-507-632"), "507"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+72 001-050-856"), "050"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+95 310-537-401"), "537"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+6 775-969-238"), "969")])
problem_phone_9_short = Problem("problem_phone_9_short", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+106 769-858-438"), "106.769.858.438"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+83 973-757-831"), "83.973.757.831"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+62 647-787-775"), "62.647.787.775"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+172 027-507-632"), "172.027.507.632"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+72 001-050-856"), "72.001.050.856"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+95 310-537-401"), "95.310.537.401"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "+6 775-969-238"), "6.775.969.238")])
problem_position_of_2nd_3rd_etc_instance_of_character = Problem("problem_position_of_2nd_3rd_etc_instance_of_character", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "100x15x50", :_arg_3 => 2, :_arg_2 => "x"), 7), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "cat-in-the-hat", :_arg_3 => 3, :_arg_2 => "-"), 11)])
problem_remove_characters_from_left = Problem("problem_remove_characters_from_left", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "1234", :_arg_2 => 1), "234"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "**512A", :_arg_2 => 2), "512A"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "343DMX", :_arg_2 => 3), "DMX")])
problem_remove_characters_from_right = Problem("problem_remove_characters_from_right", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "736 miles"), 736), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "1255 miles"), 1255), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "1221 miles"), 1221), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "790 miles"), 790)])
problem_remove_file_extension_from_filename = Problem("problem_remove_file_extension_from_filename", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "happy.jpg"), "happy"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "pivot table.xls"), "pivot table"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "sales data.csv"), "sales data"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "invoice3001.xls.pdf"), "invoice3001")])
problem_remove_leading_and_trailing_spaces_from_text = Problem("problem_remove_leading_and_trailing_spaces_from_text", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "  The shawshank"), "The shawshank"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "The    godfather"), "The godfather"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "    pulp   fiction"), "pulp fiction")])
problem_remove_text_by_matching = Problem("problem_remove_text_by_matching", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "801-345-1987"), "8013451987"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "612-554-2000"), "6125542000")])
problem_remove_text_by_position = Problem("problem_remove_text_by_position", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "c=/users/dave/shotcut.xls"), "shotcut.xls"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "c=/users/dave/formulas.xls"), "formulas.xls"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "c=/users/dave/pivot table.xls"), "pivot table.xls")])
problem_remove_unwanted_characters = Problem("problem_remove_unwanted_characters", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "zx66448", :_arg_2 => "z"), "x66448"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "zx66448", :_arg_2 => "x"), "z66448"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "zx66448", :_arg_2 => "6"), "zx448"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "zx66448", :_arg_2 => "4"), "zx668"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "zx66448", :_arg_2 => "8"), "zx6644")])
problem_replace_one_character_with_another = Problem("problem_replace_one_character_with_another", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "801 456 8756"), "801-456-8756"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "978 456 8756"), "978-456-8756")])
problem_split_numbers_from_units_of_measure_1 = Problem("problem_split_numbers_from_units_of_measure_1", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "80v", :_arg_2 => 3), "80"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "10hrs", :_arg_2 => 3), "10"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "7h", :_arg_2 => 2), "7"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "500m", :_arg_2 => 4), "500")])
problem_split_numbers_from_units_of_measure_2 = Problem("problem_split_numbers_from_units_of_measure_2", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "80v", :_arg_2 => 3), "v"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "10hrs", :_arg_2 => 3), "hrs"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "7h", :_arg_2 => 2), "h"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "500m", :_arg_2 => 4), "m")])
problem_split_text_and_numbers = Problem("problem_split_text_and_numbers", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "apples30", :_arg_2 => 7), "apples"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "peaches24", :_arg_2 => 8), "peaches"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "peaches0", :_arg_2 => 8), "peaches"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "pears", :_arg_2 => 6), "pears")])
problem_split_text_string_at_specific_character = Problem("problem_split_text_string_at_specific_character", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "011016_assignment.xlsx", :_arg_2 => 1), "011016"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "011016_assignment.xlsx", :_arg_2 => 2), "assignment.xlsx"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "030116_cost.xlsx", :_arg_2 => 1), "030116"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "030116_cost.xlsx", :_arg_2 => 2), "cost.xlsx")])
problem_stackoverflow1 = Problem("problem_stackoverflow1", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Trucking Inc."), "Trucking"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "New Truck Inc"), "New Truck"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "ABV Trucking Inc, LLC"), "ABV Trucking")])
problem_stackoverflow10 = Problem("problem_stackoverflow10", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "April 1 1799"), "1799"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "April 11 1867"), "1867"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "February 12 1806"), "1806"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "February 21 1798"), "1798"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "February 28 1844 as Delaware Township"), "1844"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "February 5 1798"), "1798"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "February 7 1892 Verona Township"), "1892"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "February 9 1797"), "1797"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "January 19 1748"), "1748"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "July 10 1721 as Upper Penns Neck Township"), "1721"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "March 15 1860"), "1860"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "March 17 1870 <as Raritan Township>"), "1870"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "March 17 1874"), "1874"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "March 23 1864"), "1864"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "March 5 1867"), "1867"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "April 28th 1828"), "1828")])
problem_stackoverflow11 = Problem("problem_stackoverflow11", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "2283-332-44543 CAP DDT PPL445_ HEEN PAX 77820"), "HEEN PAX 77820"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "44372-33-3223 TYYTE CAP BOX 1550 244 BOX PPSSA223_ PAX"), "PAX"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "PRECISE 77 CLEAR BLUE 99WIE_ BOX 4403 PAX SSKA"), "BOX 4403 PAX SSKA")])
problem_stackoverflow2 = Problem("problem_stackoverflow2", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "india china japan"), "india china"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "indonesia korea"), "indonesia")])
problem_stackoverflow3 = Problem("problem_stackoverflow3", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "geb. 14 oct 1956 Westerkerk HRL"), "Westerkerk HRL"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "geb. 14 oct 1956 "), ""), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "geb. 15 feb 1987 Westerkerk HRL"), "Westerkerk HRL")])
problem_stackoverflow4 = Problem("problem_stackoverflow4", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "R/V<208,0,32>"), "R/V 208 0 32"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "R/S<184,28,16>"), "R/S 184 28 16"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "R/B<255,88,80>"), "R/B 255 88 80")])
problem_stackoverflow5 = Problem("problem_stackoverflow5", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "valentine day=1915=50==7.1=45"), "valentine day"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "movie blah=2blahblah, The=1914=54==7.9=17"), "movie blah=2blahblah, The")])
problem_stackoverflow6 = Problem("problem_stackoverflow6", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Dec 2, 2014, 11=23 PM - +91 90000 80000= loren ipsum"), "loren ipsum"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Dec 2, 2014, 11=24 PM - +91 90000 80000= loren"), "loren")])
problem_stackoverflow7 = Problem("problem_stackoverflow7", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Item 1 AQ-S810W-2AVDF", :_arg_2 => "AQ-S810W-2AVDF"), "Item 1"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Item 2 AQ-230A-1DUQ", :_arg_2 => "AQ-230A"), "Item 2 -1DUQ")])
problem_stackoverflow8 = Problem("problem_stackoverflow8", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "home/Excel/Sheet1.xls"), "Sheet1.xls"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "home/user/Sheet1.xls"), "Sheet1.xls")])
problem_stackoverflow9 = Problem("problem_stackoverflow9", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Sarah Jane Jones"), "Jones"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "Bob Jane Smithfield"), "Smithfield")])
problem_strip_html_from_text_or_numbers = Problem("problem_strip_html_from_text_or_numbers", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "<b>0.66<b>"), "0.66"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "<b>0.409<b>"), "0.409"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "<b>0.7268<b>"), "0.7268")])
problem_strip_non_numeric_characters = Problem("problem_strip_non_numeric_characters", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "100 apples"), "100"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "the price is %500 dollars"), "500"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "serial number %003399"), "003399")])
problem_strip_numeric_characters_from_cell = Problem("problem_strip_numeric_characters_from_cell", [
	IOExample(Dict{Symbol, Any}(:_arg_1 => "34653 jim mcdonald"), " jim mcdonald"), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "price is 500"), " price is "), 
	IOExample(Dict{Symbol, Any}(:_arg_1 => "100 apples"), " apples")])
end