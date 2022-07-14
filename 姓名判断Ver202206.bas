100 'Version221:Date2020.06.22:Ver20191227より改変
110 'Version223:Date2020.06.23:Ver20191227より改変
120 'Version224:Date2020.06.24:Ver20191227より改変
130 'Version225:Date2020.06.25:Ver20191227より改変
140 'Version226:Date2020.06.26:Ver20191227より改変
150 'Version227:Date2020.06.27:Ver20191227より改変
160 'Version228:Date2020.06.29:Ver20191227より改変
170 'Version229:Date2020.06.30:ver20191227より改変
180 'Version230:Date2020.07.02:Ver20191227より改変
190 'Version231:Date2020.07.03:Ver20191227より改変
200 'Version232:Date2020.07.04:Ver20191227より改変
210 'Version233:Date2020.07.12:Ver20191227より改変
220 'Version234:Date2020.07.13:Ver20191227より改変
230 'Version235:Date2020.07.15:Ver20191227より改変
240 'Version23502:Date.2020.11.28 Ver235を改変
250 'Version23503:Date.2022.06 入力方式改変開始
260 '初期設定項目
270 'メモリー定義 文字データー3倍 ,数値データー2倍
280 clear 3.0*4000,2.0*100000
290 counts=0
300 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),buf_lines$(3*10),buffLines$(20),count$(10),count1$(10),count2$(10)
310 '性別の選択用変数
320 dim sex_type$(2)
330 '相性占い　設定項目 ここから
340 count=0:N=0:n=0
350 dim buffer_Aisyou_type$(10,10)
360 dim buffer_Kaimei_data_name$(10)
370 '総数を出す変数 改名チェック変数
380 'dim buffer_total$
390 '1.理解し合える最良のカップル
400 dim buf_good_couple1(20)
410 dim buf_good_couple2(20)
420 '2.互いに自然体でつきあえるカップル
430 dim buf_natural_couple1(20)
440 dim buf_natural_couple2(20)
450 '3.男性にとって居心地の良い相性
460 dim buf_good_for_man1(20)
470 dim buf_good_for_man2(20)
480 '4.女性にとって居心地の良い相性
490 dim buf_good_for_woman1(20)
500 dim buf_good_for_woman2(20)
510 '5.恋愛経験を重ねた後なら愛を育める
520 dim short_of_experience1(20)
530 dim short_of_experience2(20)
540 '6.結婚への発展が困難なカップル
550 dim buf_difficult_for_couple1(20)
560 dim buf_difficult_for_couple2(20)
570 '7.愛し方にズレが出てくる二人
580 dim buf_difference_of_love1(20)
590 dim buf_difference_of_love2(20)
600 '相性占い　設定項目　ここまで
610 '8.互いの価値観が噛み合わない相性 ここから
620 dim buf_difference_of_KachiKan1(20)
630 dim buf_difference_of_KachiKan2(20)
640 '8.互いに価値観が噛み合わない相性 ここまで
650 '相性診断　相性パターン結果　ここから
660 dim Result_Aisyou_type$(8)
670 '相性診断 相性パターン結果 ここまで
680 '2019/04/07 姓名判断アプリ 作成開始
690 '姓名判断　 名前の総数での吉凶を調べる
700 buf_count=0:buffer_count=0:count=0:buffer=0
710 '合計文字数
720 totalmoji=0
730 dim buf_Input_data$(10),buf_Input_data2$(10)
740 dim bufer_name$(10),bufer_name2$(10)
750 dim buf_Input_name$(10),buf_Input_name2$(10)
760 '定数文字1画〜24画
770 Moji_1=26:Moji_2=77:Moji_3=89:Moji_4=113:Moji_5=135:Moji_6=177:Moji_7=191:Moji_8=287:Moji_9=275:Moji_10=291:Moji_11=297:Moji_12=196:Moji_13=230:Moji_14=156:Moji_15=151:Moji_16=107:Moji_17=63:Moji_18=25:Moji_19=17:Moji_20=13:Moji_21=6:Moji_22=4:Moji_23=3:Moji_24=3
780 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24
790 '1画
800 Moji_Min_1 = 0:Moji_Max_1 = Moji_Min_1 + Moji_1 + 1:
810 '2画
820 Moji_Min_2=(Moji_Max_1):Moji_Max_2 = Moji_Min_2 +Moji_2 + 1
830 '3画
840 Moji_Min_3 =Moji_Max_2 + 1:Moji_Max_3 =Moji_Min_3 + 1
850 '4画
860 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 4
870 '5画
880 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+5
890 '6画
900 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+6
910 '7画
920 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 7
930 '8画
940 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+8
950 '9画
960 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 9
970 '10画
980 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+10
990 '11画
1000 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+11
1010 '12画
1020 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+12
1030 '13画
1040 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+13
1050 '14画
1060 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14
1070 '15画
1080 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15
1090 '16画
1100 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16
1110 '17画
1120 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17
1130 '18画
1140 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18
1150 '19画
1160 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19
1170 '20画
1180 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20
1190 '21画
1200 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21
1210 '22画
1220 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22:Moji_Max_22=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+22
1230 '23画
1240 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)
1250 '24画
1260 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24
1270 dim Moji_data$(Moji_total+24)
1280 'dim bufmoji$(10),Input_data$(10)
1290 '１画の文字   サイズ:21+2(漢字)
1300 dim buf_char_hiragana1$(Moji_1)
1310 '2画の文字  サイズ 58+14=72(漢字)
1320 dim buf_char_hiragana2$(Moji_2)
1330 '3画の文字 サイズ:48+29=77(漢字)
1340 dim buf_char_hiragana3$(Moji_3)
1350 '4画の文字 サイズ:29+51=80(漢字)
1360 dim buf_char_hiragana4$(Moji_4)
1370 '５画の文字  サイズ:18+59=77(漢字)
1380 dim buf_char_hiragana5$(Moji_5)
1390 '6画の文字  サイズ:79(漢字)
1400 dim buf_char_hiragana6$(Moji_6)
1410 '7画の文字  サイズ:88(漢字)
1420 dim buf_char_hiragana7$(Moji_7)
1430 '8画の文字
1440 dim buf_char_hiragana8$(Moji_8)
1450 '9画の文字
1460 dim buf_char_hiragana9$(Moji_9)
1470 '10画の文字 98文字
1480 dim buf_char_hiragana10$(Moji_10)
1490 '11画の文字
1500 dim buf_char_hiragana11$(Moji_11)
1510 '12画の文字
1520 dim buf_char_hiragana12$(Moji_12)
1530 '13画の文字 81文字
1540 dim buf_char_hiragana13$(Moji_13)
1550 '14画の文字
1560 dim buf_char_hiragana14$(Moji_14)
1570 '15画の文字
1580 dim buf_char_hiragana15$(Moji_15)
1590 '16画の文字
1600 dim buf_char_hiragana16$(Moji_16)
1610 '17画の文字
1620 dim buf_char_hiragana17$(Moji_17)
1630 '18画の文字
1640 dim buf_char_hiragana18$(Moji_18)
1650 '19画の文字
1660 dim buf_char_hiragana19$(Moji_19)
1670 '20画の文字
1680 dim buf_char_hiragana20$(Moji_20)
1690 '21画の文字
1700 dim buf_char_hiragana21$(Moji_21)
1710 '22画の文字
1720 dim buf_char_hiragana22$(Moji_22)
1730 '23画の文字
1740 dim buf_char_hiragana23$(Moji_23)
1750 '24画の文字
1760 dim buf_char_hiragana24$(Moji_24)
1770 '結果表示1　吉凶データー 81パターン
1780 dim buf_Kikkyo$(81)
1790 '結果表示２
1800 '安斎流姓名判断 吉凶  1.地運
1810 dim buf_Kikkyo_Anzai_chiunn$(70)
1820 '安斎流姓名判断　　吉凶  2.人運
1830 dim buf_Kikkyo_Anzai_jinunn$(69)
1840 '安斎流姓名判断 吉凶 3.外運
1850 'dim buf_Kikkyo_Anzai_gaiunn$(70)
1860 '安斎流姓名判断 吉凶　　4.総運
1870 dim buf_Kikkyo_Anzai_total$(80)
1880 'データー読み込み　ここから
1890 'データー読み込み　1.ひらがな
1900 '1画の文字   6文字 23文字
1910 open "config/Kanji_data/Mojidata.dat" for input as #1
1920 '全ファイルを読み込む
1930 j=0:
1940 for i = 1 to ((Moji_total + 24)-1)
1950 input #1,Moji_data$(i-1)
1960 next i
1970 close #1
1980 '全ファイル読み込み　ここまで
1990 for n=1 to (Moji_1)-1
2000 '1画の文字にデーターをコピーする
2010 buf_char_hiragana1$(n-1) = Moji_data$(n+1)
2020 next n
2030 '2画の文字    73文字
2040 for i = Moji_Min_2  to (Moji_Max_2)-1
2050 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i+1)
2060 next i
2070 '3文字の文字    77文字
2080 for i = Moji_Min_3  to (Moji_Max_3)-1
2090 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i+1)
2100 next i
2110 '4文字の文字   80文字
2120 for i = (Moji_Min_4)  to (Moji_Max_4)-1
2130 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i+1)
2140 next i
2150 '5文字の文字 77文字
2160 for i = Moji_Min_5 to (Moji_Max_5) - 1
2170 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i+1)
2180 next i
2190 '6文字の文字 79文字
2200 for i = Moji_Min_6  to Moji_Max_6
2210 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i+1)
2220 next i
2230 '7文字の文字 170文字
2240 for i = Moji_Min_7 to Moji_Max_7
2250 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i+1)
2260 next i
2270 '8画の文字 120文字
2280 for i = Moji_Min_8 to Moji_Max_8
2290 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i+1)
2300 next i
2310 '9画の文字  103文字
2320 for i = Moji_Min_9 to Moji_Max_9
2330 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i+1)
2340 next i
2350 '10画の文字 285文字
2360 for i = Moji_Min_10 to (Moji_Max_10)
2370 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i+1)
2380 next i
2390 '11画の文字
2400 for i = Moji_Min_11 to Moji_Max_11
2410 buf_char_hiragana11$(i-Moji_Min_11)=Moji_data$(i+1)
2420 next i
2430 '12画の文字
2440 for i = Moji_Min_12 to (Moji_Max_12)
2450 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i+1)
2460 next i
2470 '13画の文字 81
2480 for i = Moji_Min_13 to (Moji_Max_13)
2490 buf_char_hiragana13$(i-Moji_Min_13)=Moji_data$(i+1)
2500 next i
2510 '14画の文字 66
2520 for i = Moji_Min_14 to Moji_Max_14
2530 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i+1)
2540 next i
2550 '15画の文字 59
2560 'for i = Moji_Min_15 to (Moji_Max_15) - 1
2570 for i=Moji_Min_15 to Moji_Max_15
2580 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i+1)
2590 next i
2600 '16画の文字 44
2610 for i=Moji_Min_16 to Moji_Max_16
2620 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i+1)
2630 next i
2640 '17画の文字
2650 for i = Moji_Min_17 to Moji_Max_17
2660 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i+1)
2670 next i
2680 '18画の文字
2690 for i = Moji_Min_18 to Moji_Max_18
2700 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i+1)
2710 next i
2720 '19画の文字 17文字
2730 for i = Moji_Min_19 to Moji_Max_19
2740 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i+1)
2750 next i
2760 '20 画の文字 13文字
2770 for  i = Moji_Min_20 to Moji_Max_20
2780 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i+1)
2790 NEXT i
2800 '21画の文字 6
2810 for i = Moji_Min_21 to Moji_Max_21
2820 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i+1)
2830 next i
2840 '22 画の文字 4
2850 for i = Moji_Min_22 to Moji_Max_22
2860 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i+1)
2870 next i
2880 '23画の文字  3文字
2890 for i = Moji_Min_23 to Moji_Max_23
2900 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i+1)
2910 next i
2920 '24画の文字  3文字
2930 for i = Moji_Min_24 to Moji_Max_24-1
2940 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i+1)
2950 next i
2960 '吉凶データー読み込み
2970 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
2980 for i=0 to 80
2990 input #1,buf_Kikkyo$(i)
3000 next i
3010 close #1
3020 open "config/Anzai_Kikkyo/Anzai_Kikkyo_chiunn.dat" for input as #1
3030 for m=0 to 69
3040 input #1,buf_Kikkyo_Anzai_chiunn$(m)
3050 next m
3060 close #1
3070 open "config/Anzai_Kikkyo/Anzai_Kikkyo_jinunn.dat" for input as #1
3080 for i=1 to 70
3090 input #1,buf_Kikkyo_Anzai_jinunn$(i-1)
3100 next i
3110 close #1
3120 open "config/Anzai_Kikkyo/Anzai_Kikkyo_Total.dat" for input as #1
3130 for i=0 to 79
3140 input #1,buf_Kikkyo_Anzai_total$(i)
3150 next i
3160 close #1
3170 restore 4030
3180 for i=0 to 19
3190 '  for j=0 to 11
3200 read buf_good_couple1(i)
3210 '  next j
3220 next i
3230 restore 4040
3240 for j=0 to 19
3250 read buf_good_couple2(j)
3260 next j
3270 '0.理解し合えるカップル ここまで
3280 '1.互いに自然体でつきあえる二人　ここから
3290 restore 4070
3300 for i=0 to 19
3310 read buf_natural_couple1(i)
3320 next i
3330 restore 4080
3340 for j=0 to 19
3350 read buf_natural_couple2(j)
3360 next j
3370 '1.互いに自然体でつきあえる二人　ここまで
3380 '2        ここから
3390 restore 4110
3400 for i=0 to 19
3410 read buf_good_for_man1(i)
3420 next i
3430 restore 4120
3440 for j=0 to 19
3450 read buf_good_for_man2(j)
3460 next j
3470 '2        ここまで
3480 '3        ここから
3490 restore 4150
3500 for i=0 to 19
3510 read buf_good_for_woman1(i)
3520 next i
3530 restore 4160
3540 for j=0 to 19
3550 read buf_good_for_woman2(j)
3560 next j
3570 '3        ここまで
3580 '4        ここから
3590 restore 4190
3600 for i=0 to 19
3610 read short_of_experience1(i)
3620 next i
3630 restore 4200
3640 for j=0 to 19
3650 read short_of_experience2(j)
3660 next j
3670 '4        ここまで
3680 '5.結婚への発展が困難なカップル  ここから
3690 restore 4230
3700 for i=0 to 19
3710 read buf_difficult_for_couple1(i)
3720 next i
3730 restore 4240
3740 for j=0 to 19
3750 read buf_difficult_for_couple2(j)
3760 next j
3770 '5.結婚への発展が困難なカップル  ここまで
3780 '6.愛し方にズレが出る二人 ここから
3790 restore 4270
3800 for i=0 to 19
3810 read buf_difference_of_love1(i)
3820 next i
3830 restore 4280
3840 for j=0 to 19
3850 read buf_difference_of_love2(j)
3860 next j
3870 '6.愛し方にズレが出る二人 ここまで
3880 '7.互いの価値観が噛み合わない相性 ここから
3890 restore 4310
3900 for i=0 to 19
3910 read buf_difference_of_KachiKan1(i)
3920 next i
3930 restore 4320
3940 for j=0 to 19
3950 read buf_difference_of_KachiKan2(j)
3960 next j
3970 '7.互いの価値観が噛み合わない相性 ここまで
3980 '相性占いタイプ ここから
3990 restore 4360
4000 for i=0 to 7
4010 read Result_Aisyou_type$(i)
4020 next i
4030 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
4040 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
4050 '0.理解し合えるカップル　ここまで
4060 '1.互いに自然体でつきあえるカップル ここから
4070 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
4080 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
4090 '1.互いに自然体でつきあえるカップル　ここまで
4100 '2.男性にとって居心地の良いカップル  ここから
4110 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
4120 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
4130 '2男性にとって居心地の良いカップル ここまで
4140 '3女性にとって居心地の良いカップル  ここから
4150 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
4160 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
4170 '3女性にとって居心地の良いカップル  ここまで
4180 '4恋愛経験を重ねた後なら愛を育める ここから
4190 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
4200 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
4210 '4恋愛経験を重ねた後なら愛を育める ここまで
4220 '5.結婚への発展が困難なカップル ここから
4230 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
4240 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
4250 '5.結婚への発展が困難なカップル ここまで
4260 '6.愛し方にズレが生じる二人  ここから
4270 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
4280 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
4290 '6.愛し方にずれが生じる二人  ここまで
4300 '7.互いに価値観が噛み合わない相性　ここから
4310 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
4320 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
4330 '7.互いに価値観が噛み合わない相性 ここまで
4340 '相性占い結果パターン ここから
4350 '0
4360 data "理解し合える最良のカップル"
4370 '1
4380 data "互いに自然体でつきあえるカップル"
4390 '2
4400 data "男性にとって居心地の良い相性"
4410 '3
4420 data "女性にとって居心地の良い相性"
4430 '4
4440 data "恋愛経験を重ねた後なら愛を育める"
4450 '5
4460 data "結婚への発展が困難なカップル"
4470 '6
4480 data "愛し方にずれが生じる二人"
4490 '7
4500 data "互いの価値観が噛み合わない相性"
4510 '相性占い結果パターン ここまで
4520 'メイン画面 Top画面1
4530 Main_Screen:
4540 cls 3:font 48:color rgb(255,255,255),,rgb(176,196,222):screen 1,1,1,1
4550 talk "番号を選んでエンターキーを押してください"
4560 'Text ,Grapgic clear:cls 3
4570 'グラフィック領域　ここから
4580 line (0,0)-(970,60),rgb(0,0,255),bf
4590 pen 5:line(0,0)-(967,57),rgb(255,255,255),b
4600 line (0,60)-(970,460),rgb(127,255,212),bf
4610 pen 5:line(0,63)-(973,462),rgb(0,0,0),b
4620 line (0,457)-(973,637),rgb(0,255,0),bf
4630 pen 5:line(0,463)-(974,640),rgb(255,0,255),b
4640 'グラフィック領域 ここまで
4650 'touch(0):x=touch(4)
4660 gload "img/Selection.png",1,10,110
4670 gload "img/Selection.png",1,10,200
4680 gload "img/Selection.png",1,10,300
4690 gload "img/Selection.png",1,10,400
4700 sp_def 0,(10,110),32,32
4710 sp_def 1,(10,200),32,32
4720 sp_def 2,(10,300),32,32
4730 sp_def 3,(10,400),32,32
4740 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,110),0,0:select_No=0
4750 print"◎姓名判断　メイン画面"+chr$(13)
4760 '文字色:黒
4770 color rgb(255,0,255)
4780 print" 1.姓名判断" + chr$(13)
4790 print" 2.姓名判断の設定" + chr$(13)
4800 print" 3.ヘルプ" + chr$(13)
4810 print" 4.プログラムの終了" + chr$(13)
4820 color rgb(0,0,0)
4830 print"番号を選んでエンターキーを押してください"
4840 'x=touch(4)
4850 'print"7.プログラム終了"+chr$(13)
4860 '文字:黒
4870 color rgb(0,0,0)
4880 if select_No=0 then
4890 locate 1,12:print"                                                         "
4900 locate 1,12:print "１．姓名判断を選択" + chr$(13)
4910 endif
4920 'else
4930 'if select_No=1 then
4940 'locate 1,12:print "                     ":
4950 'locate 1,12:print "2.姓名判断の設定" + chr$(13)
4960 'endif
4970 'endif
4980 select_key:
4990 key$ = input$(1)
5000 'chr$(31):カーソル下
5010 if key$ = chr$(31) then
5020 select case (select_No)
5030 case 0:
5040       select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(10,200),1,0:locate 1,12:print"                             ":locate 1,12:print"２．姓名判断の設定":goto select_key:
5050 case 1:
5060        select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(10,300),1,0:locate 1,12:print "                      ":locate 1,12:print"3.ヘルプを選択":goto select_key:
5070 case 2:
5080        select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(10,400),1,0:locate 1,12:print "                      ":locate 1,12:print"4.プログラムを終了を選択":goto select_key:
5090 case 3:
5100       select_No=0:sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),1,0:locate 1,12:print"                             ":locate 1,12:print"1.姓名判断を選択":goto select_key:
5110 end select
5120 else
5130 if key$=chr$(13) then
5140 select case  (select_No)
5150 case 1:
5160        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Menu2_Setting:
5170 case 2:
5180        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Menu2_Help:
5190 case 3:
5200        cls 3:cls 4:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:end
5210 case 0:
5220        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto SeimeiHandan_Top:
5230 end select
5240 else
5250 if key$=chr$(30) then
5260 select case (select_No)
5270 case 0:
5280        select_No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(10,400),0,0:LOCATE 1,12:print"                       ":locate 1,12:print"4.プログラムを終了を選択": goto select_key:
5290 case 3:
5300    select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(10,300),0,0:locate 1,12:print"                                    ":locate 1,12:print"3.ヘルプを選択":goto select_key:
5310 case 2:
5320    select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(10,200),0,0:locate 1,12:print "                                      ":locate 1,12:print "2.姓名判断の設定を選択":goto select_key:
5330 case 1:
5340    select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:locate 1,12:print "                                      ":locate 1,12:print"1.姓名判断を選択":goto select_key:
5350 end select
5360 else
5370 goto select_key:
5380 endif
5390 endif
5400 endif
5410 'input"番号:",selectNo
5420 'If selectNo = 1 then goto SeimeiHandan_Top:
5430 'if selectNo = 2 then goto Menu2_Setting:
5440 'if selectNo = 3  then goto Menu2_Help:
5450 'if selectNo = 4 then talk"終了します":cls 3:end
5460 'if  selectNo > 4 or selectNo=0  then goto Main_Screen:
5470 'if str$(selectNo)="" then goto Main_Screen:
5480 '1.姓名判断トップ画面
5490 screen 1,1
5500 'タイトル文字:白
5510 font 48:color rgb(255,255,255),,rgb(176,196,222)
5520 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
5530 'グラフィック 描画領域　ここから
5540 SeimeiHandan_Top:
5550 cls 3
5560 '1.Title:青
5570 line (0,0)-(870,60),rgb(0,0,255),bf
5580 pen 5:line (0,3)-(873,63),rgb(255,255,255),b
5590 line (0,60)-(870,360),rgb(127,255,212),bf
5600 pen 5:LINE (0,63)-(873,363),rgb(255,0,255),b
5610 line (0,360)-(870,520),rgb(0,255,0),bf
5620 pen 5:line (0,363)-(873,523),rgb(0,0,0),b
5630 'グラフィック 描画領域 ここまで
5640 color rgb(255,255,255)
5650 print"◎姓名判断の種類トップメニュー"+chr$(13)
5660 color rgb(255,0,255):print" 1.九星姓名判断"+chr$(13)
5670 color rgb(255,0,255):print" 2.安斎流姓名判断"+chr$(13)
5680 COLOR rgb(255,0,255):print" 3.前の画面に戻る"+chr$(13)
5690 locate 0,8:print "                                     ":locate 0,8
5700 color rgb(0,0,0):Print"番号を選んでエンターを押してください"
5710 locate 0,9:print "                                      ":locate 0,9:print "1.九星姓名判断を選択"
5720 sp_on 0,1:sp_put 0,(10,100),0,0
5730 key2:
5740 key$ = input$(1)
5750 if key$=chr$(31) then
5760 select case (Select_No)
5770 case 0:
5780       Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_put 1,(20,200),0,0:locate 0,9:print "                                      ":locate 0,9:print "2.安斉流姓名判断を選択":goto key2:
5790 case 1:
5800       Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_put 2,(20,300),0,0:locate 0,9:print "                                       ":locate 0,9:print"3.前の画面に戻るを選択":goto key2:
5810 case 2:
5820       Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_put 0,(20,100),0,0:locate 0,9:print "                                      ":locate 0,9:print "1.九星姓名判断を選択":goto key2:
5830 end select
5840 else
5850 if key$=chr$(13) then
5860 select case (Select_No)
5870     case 2:
5880     sp_on 0,0:sp_on 1,0:sp_on 2,0:Select_No=0:goto Main_Screen:
5890     case 1:
5900     sp_on 0,0:sp_on 1,0:sp_on 2,0:Select_No=0:goto Menu1_2_Anzai_Top:
5910     case 0:
5920     sp_on 0,0:sp_on 1,0:sp_on 2,0:Select_No=0:goto Menu1_kyusei:
5930 end select
5940 else
5950 if key$=chr$(30) then
5960 select case (Select_No)
5970 case 0:
5980        Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_put 2,(20,300),0,0:locate 0,9:print "                                       ":locate 0,9:print "3.前の画面に戻るを選択":goto key2:
5990 case 1:
6000        Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_put 0,(20,100),0,0:locate 0,9:print "                                      ":locate 0,9:print "1.九星姓名判断を選択":goto key2:
6010 case 2:
6020        Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_put 1,(20,200),0,0:locate 0,9:print "                                      ":locate 0,9:print "2.安斉流姓名判断を選択":goto key2:
6030 end select
6040 else
6050 goto key2:
6060 endif
6070 endif
6080 endif
6090 'if selectNo=2 then goto Menu1_2_Anzai_Top:
6100 'if selectNo=3 then goto Main_Screen:
6110 '１．姓名判断(九星姓名判断トップ)
6120 'グラフィック領域　ここから
6130 Menu1_kyusei:
6140 cls 3
6150 line (0,0)-(820,60),rgb(0,0,250),bf
6160 pen 5:line (0,0)-(823,63),rgb(255,255,255),b
6170 line (0,60)-(820,450),rgb(127,255,212),bf
6180 pen 5:line(0,63)-(823,453),rgb(0,0,0),b
6190 line (0,450)-(820,650),rgb(0,255,0),bf
6200 pen 5:line(0,453)-(823,653),rgb(255,0,255),b
6210 'グラフィック領域　ここまで
6220 font 48:color rgb(255,255,255),,rgb(176,196,222)
6230 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
6240 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)" + chr$(13)
6250 color rgb(255,0,255):print" 1.人名の吉凶を見る" + chr$(13)
6260 color rgb(255,0,255):print" 2.総数で名前の吉凶を見る" + chr$(13)
6270 color rgb(255,0,255):print" 3.名前の陰陽を見る" + chr$(13)
6280 color rgb(255,0,255):print" 4.前の画面に戻る" + chr$(13)
6290 color rgb(0,0,0):print"番号を選んでください" + chr$(13)
6300 locate 0,12:print "                                     ":locate 0,12:print "1.人名の吉凶を見るを選択"
6310 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:
6320 key3:
6330 key$=input$(1)
6340 if key$=chr$(31) then
6350 select case (Select_No)
6360 Case 0:
6370        Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(10,200),0,0:locate 0,12:print "                                      ":locate 0,12:print"2.総数で名前の吉凶を見るを選択":goto key3:
6380 case 1:
6390     Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(10,300),0,0:locate 0,12:print "                                     ":locate 0,12:print "3.名前の陰陽を見るを選択":goto key3:
6400 case 2:
6410     Select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(10,400),0,0:locate 0,12:print "                                      ":locate 0,12:print"4.前の画面に戻るを選択":goto key3:
6420 case 3:
6430    Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:locate 0,12:print "                                      ":locate 0,12:print"1.人名の吉凶を見るを選択":goto key3:
6440 end select
6450 else
6460 if key$=chr$(13) then
6470 select case (Select_No)
6480 case 0:
6490       Select_No=0:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Menu1_name_Kikkyo:
6500 case 1:
6510      Select_No=0:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Menu1_2_Total_name:
6520 case 2:
6530      Select_No=0:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Input_name_InYo:
6540 case 3:
6550      Select_No=0:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Main_Screen:
6560 end select
6570 else
6580 goto key3:
6590 endif
6600 endif
6610 'color rgb(0,0,0):Input"番号:",select5900 'if selectNo=1 then goto Menu1_name_Kikkyo:
6620 'if selectNo=1 then goto Menu1_name_Kikkyo:
6630 'if selectNo=2 then goto Menu1_2_Total_name:
6640 'if selectNo=3 then goto Input_name_InYo:
6650 'if selectNo=4 then goto Main_Screen:
6660 'if selectNo > 4 or selectNo=0 then goto Menu1_kyusei:
6670 '2.姓名判断 安斎流姓名判断　トップ画面
6680 '2-1名前の姓の部分を入力
6690 'グラフィック領域　ここから
6700 Menu2_Anzai_Kikkyo:
6710 cls 3:LINE (0,0)-(950,60),rgb(0,0,255),bf
6720 pen 5:line(0,0)-(953,63),rgb(255,255,255),b
6730 line (0,63)-(947,275),rgb(127,255,212),bf
6740 pen 5:line(0,63)-(950,278),rgb(0,255,0),b
6750 line (0,275)-(950,375),rgb(0,255,0),bf
6760 pen 5:line(0,272)-(947,372),rgb(0,0,0),b
6770 'グラフィック領域 ここまで
6780 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
6790 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
6800 COLOR rgb(255,0,255)
6810 print"名前を2回に分けて入力してください"+chr$(13)
6820 print"名前の姓の部分を入れてください"+chr$(13)
6830 color rgb(0,0,0)
6840 input"名前の姓:",bufname$
6850 buff1=len(bufname$)
6860 '2-2名前の名の部分を入力
6870 'グラフィック描画領域　ここから
6880 cls 3
6890 line (0,0)-(950,60),rgb(0,0,255),bf
6900 pen 5:line(0,0)-(950,60),rgb(255,255,255),b
6910 line (0,60)-(950,160),rgb(127,255,212),bf
6920 pen 5:line(0,63)-(953,163),rgb(255,0,255),b
6930 line (0,160)-(950,260),rgb(0,255,0),bf
6940 pen 5:line(0,163)-(953,263),rgb(0,0,0),b
6950 'グラフィック描画領域 ここまで
6960 COLOR rgb(255,255,255)
6970 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
6980 talk"つぎに、名前のめいの部分を入れてください"
6990 color rgb(255,0,255)
7000 print"名前の名の部分を入れてください"+chr$(13)
7010 color rgb(0,0,0)
7020 input"名前の名:",bufname2$
7030 buff2=len(bufname2$)
7040 bufff=buff1+buff2
7050 'goto 17960
7060 select case bufff
7070 '姓1文字,名1文字
7080 case 2:
7090 cls
7100 '天運:buf_tenunn
7110 buf_tenunn=char_count(bufname$)
7120 '地運:buf_chiunn
7130 buf_chiunn=char_count(bufname2$)
7140 '人運 = 天運 + 地運
7150 buf_jinunn=buf_tenunn + buf_chiunn
7160 '外運 = 天運 + 人運
7170 buf_gaiunn = buf_tenunn + buf_chiunn
7180 '総数=buf_gaiunn
7190 buf_total=buf_gaiunn
7200 goto Menu2_Result_Anzai_Kikkyo:
7210 '姓１，名:2
7220 case 3:
7230 cls:
7240 if buff1=1 and buff2=2 then
7250 '1.天運:buf_tenunn
7260 buf_tenunn=char_count(bufname$)
7270 '2文字目の文字
7280 bufer_name2$(0)=Mid$(bufname2$,1,1)
7290 '3文字目の文字
7300 bufer_name2$(1)=Mid$(bufname2$,2,1)
7310 '2.人運
7320 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7330 '3.地運:buf_chiunn
7340 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7350 '4外運:buf_gaiunn
7360 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7370 '5.総数:buf_total
7380 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7390 goto Menu2_Result_Anzai_Kikkyo:
7400 endif
7410 if buff1=2 and buff2=1 then
7420 bufer_name$(0)=Mid$(bufname$,1,1)
7430 bufer_name$(1)=Mid$(bufname$,2,1)
7440 bufer_name2$(0)=Mid$(bufname$,1,1)
7450 '1.天運
7460 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
7470 '2.人運
7480 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7490 '3.地運
7500 buf_chiunn=char_count(bufer_name2$(0))
7510 '4.外運
7520 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
7530 '5.総数
7540 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7550 goto Menu2_Result_Anzai_Kikkyo:
7560 endif
7570 case 4:
7580 if buff1=2 and buff2=2 then
7590 bufer_name$(0)=Mid$(bufname$,1,1)
7600 bufer_name$(1)=Mid$(bufname$,2,1)
7610 bufer_name2$(0)=Mid$(bufname2$,1,1)
7620 bufer_name2$(1)=Mid$(bufname2$,2,1)
7630 '1.天運
7640 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
7650 '2.人運
7660 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7670 '3.地運
7680 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7690 '4.外運
7700 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7710 '5.総数
7720 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7730 goto Menu2_Result_Anzai_Kikkyo:
7740 endif
7750 'パターン2 姓3文字 名1文字 total4文字
7760 if buff1=3 and buff2=1 then
7770 bufer_name$(0)=Mid$(bufname$,1,1)
7780 bufer_name$(1)=Mid$(bufname$,2,1)
7790 bufer_name$(2)=Mid$(bufname$,3,1)
7800 bufer_name2$(0)=Mid$(bufname2$,1,1)
7810 '1.天運
7820 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
7830 '2.人運
7840 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
7850 '3.地運
7860 buf_chiunn=char_count(bufer_name2$(0))
7870 '4.外運
7880 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
7890 '5.総運
7900 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
7910 goto Menu2_Result_Anzai_Kikkyo:
7920 endif
7930 'パターン３ 姓1,名３  合計４文字
7940 if buff1=1 and buff2=3 then
7950 bufer_name$(0)=Mid$(bufname$,1,1)
7960 bufer_name2$(0)=Mid$(bufname2$,1,1)
7970 bufer_name2$(1)=Mid$(bufname2$,2,1)
7980 bufer_name2$(2)=Mid$(bufname2$,3,1)
7990 '1.天運
8000 buf_tenunn = char_count(bufer_name$(0))
8010 '2.人運
8020 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
8030 '3.地運
8040 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8050 '4.外運
8060 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8070 '5.総運
8080 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8090 goto Menu2_Result_Anzai_Kikkyo:
8100 endif
8110 case 5:
8120 '５文字の名前
8130 '1.  3文字姓 2字名
8140 if buff1=3 and buff2=2 then
8150 bufer_name$(0)=Mid$(bufname$,1,1)
8160 bufer_name$(1)=Mid$(bufname$,2,1)
8170 bufer_name$(2)=Mid$(bufname$,3,1)
8180 bufer_name2$(0)=Mid$(bufname2$,1,1)
8190 bufer_name2$(1)=Mid$(bufname2$,2,1)
8200 '1.天運
8210 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
8220 '2.人運
8230 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8240 '3.地運
8250 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8260 '4.外運
8270 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
8280 '5.総運
8290 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8300 goto Menu2_Result_Anzai_Kikkyo:
8310 endif
8320 if buff1=2 and buff2=3 then
8330 bufer_name$(0)=Mid$(bufname$,1,1)
8340 bufer_name$(1)=Mid$(bufname$,2,1)
8350 bufer_name2$(0)=Mid$(bufname2$,1,1)
8360 bufer_name2$(1)=Mid$(bufname2$,2,1)
8370 bufer_name2$(2)=Mid$(bufname2$,3,1)
8380 '1.天運
8390 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
8400 '2.人運
8410 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
8420 '3.地運
8430 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8440 '4.外運
8450 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8460 '5.総運
8470 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8480 goto Menu2_Result_Anzai_Kikkyo:
8490 endif
8500 if buff1=4 and buff2=1 then
8510 bufer_name$(0)=Mid$(bufname$,1,1)
8520 bufer_name$(1)=mid$(bufname$,2,1)
8530 bufer_name$(2)=mid$(bufname$,3,1)
8540 bufer_name$(3)=mid$(bufname$,4,1)
8550 bufer_name2$(0)=mid$(bufname2$,1,1)
8560 '1.天運
8570 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
8580 '2.人運
8590 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
8600 '3.地運
8610 buf_chiunn=char_count(bufer_name2$(0))
8620 '4.外運
8630 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
8640 '5.総運
8650 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
8660 goto Menu2_Result_Anzai_Kikkyo:
8670 endif
8680 case 6:
8690 '3字姓 3字名
8700 if buff1=3 and buff2=3 then
8710 bufer_name$(0)=Mid$(bufname$,1,1)
8720 bufer_name$(1)=Mid$(bufname$,2,1)
8730 bufer_name$(2)=Mid$(bufname$,3,1)
8740 bufer_name2$(0)=Mid$(bufname2$,1,1)
8750 bufer_name2$(1)=Mid$(bufname2$,2,1)
8760 bufer_name2$(2)=Mid$(bufname2$,3,1)
8770 '1.天運
8780 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
8790 '2.人運
8800 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8810 '3.地運
8820 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8830 '4.外運
8840 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8850 '5.総運
8860 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8870 goto Menu2_Result_Anzai_Kikkyo:
8880 endif
8890 '4字姓 2字名
8900 if buff1=4 and buff2=2 then
8910 bufer_name$(0)=Mid$(bufname$,1,1)
8920 bufer_name$(1)=Mid$(bufname$,2,1)
8930 bufer_name$(2)=Mid$(bufname$,3,1)
8940 bufer_name$(3)=Mid$(bufname$,4,1)
8950 bufer_name2$(0)=Mid$(bufname2$,1,1)
8960 bufer_name2$(1)=Mid$(bufname2$,2,1)
8970 '1.天運
8980 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
8990 '2.人運
9000 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
9010 '3.地運
9020 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
9030 '4.外運
9040 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
9050 '5.総運
9060 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
9070 goto Menu2_Result_Anzai_Kikkyo:
9080 endif
9090 '4字姓 3字名
9100 case 7:
9110 if buff1=4 and buff2=3 then
9120 bufer_name$(0)=Mid$(bufname$,1,1)
9130 bufer_name$(1)=Mid$(bufname$,2,1)
9140 bufer_name$(2)=Mid$(bufname$,3,1)
9150 bufer_name$(3)=Mid$(bufname$,4,1)
9160 bufer_name2$(0)=Mid$(bufname2$,1,1)
9170 bufer_name2$(1)=Mid$(bufname2$,2,1)
9180 bufer_name2$(2)=Mid$(bufname2$,3,1)
9190 '1.天運
9200 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
9210 '2.人運
9220 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
9230 ' 3.地運
9240 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
9250 '4.外運
9260 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9270 '5.総運
9280 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9290 goto Menu2_Result_Anzai_Kikkyo:
9300 endif
9310 case else:
9320 end select
9330 '2.設定
9340 Menu2_Setting:
9350 font 48:color rgb(0,0,0),,rgb(176,196,222)
9360 talk"設定画面です。番号を選んでエンターキーを押してください"
9370 'グラフィック領域　ここから
9380 cls 3:
9390 line (0,0)-(750,60),rgb(0,0,255),bf
9400 pen 5:line(0,0)-(753,63),rgb(255,255,255),b
9410 line (0,60)-(750,570),rgb(127,255,212),bf
9420 pen 5:line(0,66)-(753,576),rgb(255,0,255),b
9430 line (0,570)-(750,740),rgb(0,255,0),bf
9440 pen 5:line(0,576)-(753,746),rgb(0,0,0),b
9450 'グラフィック領域 ここまで
9460 '1行目　文字色　 白
9470 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
9480 color rgb(255,0,255):print" 1.登録文字の確認"+chr$(13)
9490 color rgb(255,0,255):print" 2.登録文字数の表示"+chr$(13)
9500 color rgb(255,0,255):print" 3.メンバーリストの表示"+chr$(13)
9510 color rgb(255,0,255):print" 4.前の画面に戻る"+chr$(13)
9520 color rgb(255,0,255):PRINT" 5.プログラムの終了"+chr$(13)
9530 COLOR rgb(0,0,0)
9540 print"番号を選んでください"+chr$(13)
9550 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_put 0,(10,100),0,0:
9560 locate 0,14:print "                                      ":locate 0,14:print "1.登録文字の確認を選択"
9570 key7:
9580 key$=input$(1)
9590 if key$=chr$(31) then
9600 select case (Select_No)
9610  case 0:
9620        Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_put 1,(10,200),0,0:LOCATE 0,14:print "                                      ":locate 0,14:print "2.登録文字数の表示を選択":goto key7:
9630  case 1:
9640         Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_on 4,0:sp_put 2,(10,300),0,0:locate 0,14:print "                                      ":locate 0,14:print "3.メンバーリストの表示を選択":goto key7:
9650 case 2:
9660        Select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_on 4,0:sp_put 3,(10,400),0,0:locate 0,14:print "                                      ":locate 0,14:print "4.前の画面に戻るを選択":goto key7:
9670 case 3:
9680        Select_No=4:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,1:sp_put 4,(10,500),0,0:locate 0,14:print "                                     ":locate 0,14:print "5.プログラムを終了するを選択":goto key7:
9690 case 4:
9700        Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_put 0,(10,100),0,0:locate 0,14:print "                                      ":locate 0,14:print "1.登録文字の確認を選択":goto key7:
9710 end select
9720 else
9730 if key$=chr$(13) then
9740 select case (Select_No)
9750 case 0:
9760        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:goto Menu2_moji_check:
9770 case 1:
9780       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:goto Menu2_Entry_moji:
9790 case 2:
9800        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:goto Member_List_Top:
9810 case 3:
9820       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:goto Main_Screen:
9830 case 4:
9840       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:Interval 3*1000:cls 3:cls 4:end
9850 end select
9860 else
9870 goto key7:
9880 endif
9890 endif
9900 'Input"番号:",selectNo
9910 'if selectNo=1 then goto Menu2_moji_check:
9920 'if selectNo=2 then goto Menu2_Entry_moji:
9930 'if selectNo=3 then goto Member_List_Top:
9940 'if selectNo=4 then goto Main_Screen:
9950 'if selectNo=5 then talk"終了します":cls 3:end
9960 'if selectNo > 5 or selectNo = 0 then goto Menu2_Setting:
9970 '3 番号で吉凶を見る 入力
9980 Menu1_2_Total_name:
9990 font 48:color rgb(0,0,0),,rgb(176,196,222)
10000 'グラフィック描画領域　ここから
10010 cls 3
10020 line (0,0)-(700,60),rgb(0,0,255),bf
10030 pen 5:line (0,0)-(703,63),rgb(255,255,255),b
10040 line (0,60)-(700,250),rgb(127,255,212),bf
10050 pen 5:line(0,63)-(703,253),rgb(255,0,255),b
10060 line (0,247)-(697,357),rgb(0,255,0),bf
10070 pen 5:line(0,263)-(703,363),rgb(0,0,0),b
10080 'グラフィック描画領域 ここまで
10090 color rgb(255,255,255)
10100 print"画数での吉凶判定"+chr$(13)
10110 color rgb(255,0,255)
10120 print"画数を入れてください"+chr$(13)
10130 print"(Max:81文字)"+chr$(13)
10140 color rgb(0,0,0)
10150 Input"文字の画数:",Number
10160 if Number > 81 then goto Menu1_2_Total_name:
10170 if Number <=81 then goto Result_Total_name:
10180 '3.番号で吉凶を見る 結果表示
10190 'グラフィック描画領域　ここから
10200 Result_Total_name:
10210 cls 3
10220 line (0,0)-(700,60),rgb(0,0,255),bf
10230 pen 5:line(0,0)-(703,63),rgb(255,255,255),b
10240 line (0,60)-(700,253),rgb(127,255,212),bf
10250 pen 5:line(0,63)-(703,256),rgb(255,0,255),b
10260 line (0,253)-(700,357),rgb(0,255,0),bf
10270 pen 5:line(0,250)-(703,360),rgb(0,0,0),b
10280 'グラフィック描画領域　ここまで
10290 color rgb(255,255,255)
10300 print "画数で吉凶を求める"+chr$(13)
10310 color rgb(255,0,255)
10320 talk str$(Number-1)+"画のきっきょうは、"+buf_Kikkyo$(Number-1)+"です"
10330 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number-1);chr$(13)
10340 'endif
10350 color rgb(0,0,0)
10360 print "エンターキーを押してください"+chr$(13)
10370 key$=input$(1)
10380 If key$=chr$(13) then goto Menu1_kyusei:
10390 '3.ヘルプ
10400 Menu2_Help:
10410 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222)
10420 '描画領域 ここから
10430 line (0,0)-(750,60),rgb(0,0,255),bf
10440 pen 5:line(0,0)-(753,63),rgb(255,255,255),b
10450 line (0,60)-(750,560),rgb(127,255,212),bf
10460 pen 5:line(0,63)-(753,563),rgb(255,0,255),b
10470 line (0,560)-(750,660),rgb(0,255,0),bf
10480 pen 5:line(0,563)-(753,663),rgb(0,0,0),b
10490 '描画領域　ここまで
10500 talk"ヘルプ画面です番号を選んでエンターキーを押してください"
10510 color rgb(255,255,255):print "姓名判断　ヘルプ"+chr$(13)
10520 color rgb(255,0,255):print" 1.バージョン情報"+chr$(13)
10530 color rgb(255,0,255):print" 2.参考文献"+chr$(13)
10540 color rgb(255,0,255):print" 3.プログラムの終了"+chr$(13)
10550 color rgb(255,0,255):print" 4.メンバーリストの削除"+chr$(13)
10560 color rgb(255,0,255):PRINT" 5.前の画面に戻る"+chr$(13)
10570 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_put 0,(10,100),0,0
10580 locate 0,12:print "                                       ":color rgb(0,0,0):locate 0,12:print "1.バージョン情報を選択"
10590 key8:
10600 key$=input$(1)
10610 if key$=chr$(31) then
10620 select case (Select_No)
10630 case 0:
10640        Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_put 1,(10,200),0,0:locate 0,12:print "                                      ":color rgb(0,0,0):locate 0,12:print"2.参考文献を選択":goto key8:
10650 case 1:
10660       Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_on 4,0:sp_put 2,(10,300),0,0:locate 0,12:print "                                      ":locate 0,12:print"3.プログラムを終了を選択":goto key8:
10670 case 2:
10680       Select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_on 4,0:sp_put 3,(10,400),0,0:locate 0,12:print "                                      ":color rgb(0,0,0):locate 0,12:print "4.メンバーリストの削除を選択":goto key8:
10690 case 3:
10700       Select_No=4:sp_on 0,0:sp_on  1,0:sp_on 2,0:sp_on 3,0:sp_on 4,1:sp_put 4,(10,500),0,0:locate 0,12:print "                                      ":color rgb(0,0,0):locate 0,12:print "5.前の画面に戻るを選択":goto key8:
10710 case 4:
10720       Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_put 0,(10,100),0,0:locate 0,12:print "                                     ":color rgb(0,0,0):locate 0,12:print"1.バージョン情報を選択":goto key8:
10730 end select
10740 else
10750 if key$=chr$(13) then
10760 select case (Select_No)
10770 case 0:
10780        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:Select_No=0:goto Version_Info:
10790 case 1:
10800        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:Select_No=0:goto Reference_book:
10810 case 2:
10820        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:Select_No=0:cls 3:cls 4:talk"プログラムを終了します":Interval 3*1000:end
10830 case 3:
10840 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:Select_No=0:goto Remove_MemberList:
10850 case 4:
10860         sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:goto Main_Screen:
10870 end select
10880 else
10890 goto key8:
10900 endif
10910 endif
10920 'color rgb(0,0,0):Input"番号:",selectNo
10930 'if selectNo=1 then goto Version_Info:
10940 'if selectNo=2 then goto Reference_book:
10950 'if selectNo=3 then talk"終了いたします":cls 3:end
10960 'if selectNo=4 then goto Remove_MemberList:
10970 'if selectNo=5 then goto Main_Screen:
10980 'if selectNo > 5 or selectNo = 0 then goto Menu2_Help:
10990 Menu1_name_Kikkyo:
11000 'Menu1　画面
11010 talk"調べたい名前のみよじをいれてください"
11020 'グラフィック描画領域　ここから
11030 cls 3
11040 line (0,0)-(1000,60),rgb(0,0,255),bf
11050 pen 5:line(0,0)-(1003,63),rgb(255,255,255),b
11060 line (0,60)-(1000,170),rgb(127,255,212),bf
11070 pen 5:line(0,63)-(1003,173),rgb(255,0,255),b
11080 line (0,170)-(1000,300),rgb(0,255,0),bf
11090 pen 5:line(0,173)-(1003,303),rgb(0,0,0),b
11100 'グラフィック描画領域　ここまで
11110 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
11120 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
11130 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
11140 cls
11150 talk "調べたい名前の下の名を入れてください":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
11160 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
11170 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
11180 goto 11480
11190 'メニュー6　バージョン表示
11200 'グラフィック　描画　領域　 ここから
11210 Version_Info:
11220 cls 3
11230 line (0,0)-(1050,60),rgb(0,0,255),bf
11240 pen 5:line(0,0)-(1053,63),rgb(255,255,255),b
11250 line (0,60)-(1050,630),rgb(127,255,212),bf
11260 pen 5:line(0,0)-(1053,633),rgb(0,255,0),b
11270 line (0,630)-(1050,750),rgb(0,255,0),bf
11280 pen 5:line(0,633)-(1053,753),rgb(0,0,0),b
11290 'グラフィック　描画 領域　 ここまで
11300 color rgb(255,255,255):print"バージョン情報"+chr$(13)
11310 color rgb(255,0,255):print"姓名判断"+chr$(13)
11320 color rgb(255,0,255):PRINT"Ver:236.20220714"+chr$(13)
11330 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
11340 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
11350 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
11360 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
11370 'ここを書き換える
11380 talk "このプログラムは、姓名判断バージョン2.3502です"
11390 color rgb(0,0,0):print"エンターキーを押してください"+chr$(13)
11400 key_main:
11410 key$=INPUT$(1)
11420 if key$=chr$(13) then
11430 goto Main_Screen:
11440 else
11450 goto key_main:
11460 endif
11470 '文字数を求める変数
11480 buf_char_size=len(name$)
11490 buf_char_size2=len(name2$)
11500 '入力した文字を代入する変数
11510 '入力した文字を配列に代入する処理
11520 '姓名判断データー文字比較
11530 '画数を求める関数
11540 func char_count(buf_count$)
11550 count=0:buffer=0
11560 '1画の文字 23文字
11570 for j=0 to ((Moji_1)-1)
11580 if buf_count$=buf_char_hiragana1$(j) then
11590 count =1:
11600 endif
11610 next j
11620 '2画の文字
11630 for j=0 to ((Moji_2)-1)
11640 if buf_count$=buf_char_hiragana2$(j)  then
11650 count = 2:
11660 endif
11670 next j
11680 for j=0 to ((Moji_3)-1)
11690 if buf_count$=buf_char_hiragana3$(j) then
11700 count =3:
11710 endif
11720 next j
11730 for j=0 to ((Moji_4)-1)
11740 if buf_count$=buf_char_hiragana4$(j) then
11750 count = 4:
11760 endif
11770 next j
11780 for j=0 to ((Moji_5)-1)
11790 if buf_count$=buf_char_hiragana5$(j) then
11800 count = 5:
11810 endif
11820 next j
11830 for j=0 to ((Moji_6)-1)
11840 if buf_count$=buf_char_hiragana6$(j) then
11850 count= 6
11860 endif
11870 next j
11880 for  j=0 to ((Moji_7)-1)
11890 if buf_count$=buf_char_hiragana7$(j) then
11900 count=  7
11910 endif
11920 next j
11930 for j=0 to ((Moji_8)-1)
11940 if buf_count$=buf_char_hiragana8$(j) then
11950 count= 8
11960 endif
11970 next j
11980 for j=0 to ((Moji_9)-1)
11990 if buf_count$=buf_char_hiragana9$(j) then
12000 count=9
12010 endif
12020 next j
12030 for j=0 to ((Moji_10)-1)
12040 if buf_count$=buf_char_hiragana10$(j) then
12050 count=10
12060 endif
12070 next j
12080 for j=0 to ((Moji_11)-1)
12090 if buf_count$=buf_char_hiragana11$(j) then
12100 count=11
12110 endif
12120 next j
12130 for j=0 to  ((Moji_12)-1)
12140 if buf_count$=buf_char_hiragana12$(j) then
12150 count=12
12160 endif
12170 next j
12180 for j=0 to ((Moji_13)-1)
12190 if buf_count$=buf_char_hiragana13$(j) then
12200 count=13
12210 endif
12220 next j
12230 for j=0 to ((Moji_14)-1)
12240 if buf_count$=buf_char_hiragana14$(j) then
12250 count=14
12260 endif
12270 next j
12280 for j=0 to ((Moji_15)-1)
12290 if buf_count$=buf_char_hiragana15$(j) then
12300 count=15
12310 endif
12320 next j
12330 for j=0 to ((Moji_16)-1)
12340 if buf_count$=buf_char_hiragana16$(j) then
12350 count=16
12360 endif
12370 next j
12380 for j=0 to ((Moji_17)-1)
12390 if buf_count$=buf_char_hiragana17$(j) then
12400 count=17
12410 endif
12420 next j
12430 for j=0 to ((Moji_18)-1)
12440 if buf_count$=buf_char_hiragana18$(j) then
12450 count=18
12460 endif
12470 next j
12480 for j=0 to ((Moji_19)-1)
12490 if buf_count$=buf_char_hiragana19$(j) then
12500 count=19
12510 endif
12520 next j
12530 for j=0 to ((Moji_20)-1)
12540 if buf_count$=buf_char_hiragana20$(j) then
12550 count=20
12560 endif
12570 next i
12580 for j=0 to ((Moji_21)-1)
12590 if buf_count$=buf_char_hiragana21$(j) then
12600 count=21
12610 endif
12620 next j
12630 for j=0 to ((Moji_22)-1)
12640 if buf_count$=buf_char_hiragana22$(j) then
12650 count=22
12660 endif
12670 next j
12680 for j=0 to ((Moji_23)-1)
12690 if buf_count$=buf_char_hiragana23$(j) then
12700 count=23
12710 endif
12720 next j
12730 for j=0 to ((Moji_24)-1)
12740 if buf_count$=buf_char_hiragana24$(j) then
12750 count=24
12760 endif
12770 buffer = count
12780 next j
12790 endfunc buffer
12800 '合計を求める関数
12810 func totalcounts(buffers$)
12820 buffers=0:
12830 for i=0 to len(buffers$)-1
12840 buffers=buffers+char_count(buffers$)
12850 next i
12860 endfunc buffers
12870 buf_count2=0:buf_count3=0
12880 'dim buf_Input_data$(len(name$))
12890 '1.苗字の文字数
12900 for n=0 to (buf_char_size-1)
12910 buf_Input_data$(n)=mid$(name$,n+1,1)
12920 next n
12930 for i=0 to (buf_char_size-1)
12940 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
12950 next i
12960 '2.名の文字数
12970 for n2=0 to (buf_char_size2-1)
12980 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
12990 next n2
13000 for i2=0 to (buf_char_size2-1)
13010 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
13020 next i2
13030 '総数を出す
13040 select case (buf_char_size+buf_char_size2)
13050 case 5:
13060 if ((buf_char_size=2) and (buf_char_size2=3)) then
13070 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
13080 endif
13090 if ((buf_char_size=3) and (buf_char_size2=2)) then
13100 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13110 endif
13120 case 4:
13130 if ((char_count(buf_Input_data$(0))=0) or (char_count(buf_Input_data$(1))=0) or ((char_count(buf_Input_data2$(0))=0) or char_count(buf_Input_data2$(1))=0)) then
13140 color rgb(255,0,255)
13150 cls:print name$+name2$;"は、登録されていない文字があります"+chr$(13)
13160 color rgb(0,0,0)
13170 Input"エンターキーを押してください",key$
13180 if (key$="") then goto 4540
13190 else
13200 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13210 endif
13220 case 3:
13230 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
13240 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13250 endif
13260 if ((buf_char_size=2) and (buf_char_size2=1)) then
13270 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
13280 endif
13290 case 2:
13300 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
13310 case else:
13320 end select
13330 '文字の総数をだす
13340 total_name$=name$+name2$
13350 '1.姓星を求める
13360 select case buf_char_size
13370 '苗字1文字のとき
13380 case 1:
13390 buf_seisei=char_count(buf_Input_data$(0)) + 1
13400 '苗字2文字の時
13410 case 2:
13420 for i = 0 to 1
13430 buf_seisei = buf_seisei+char_count(buf_Input_data$(i))
13440 next i
13450 '苗字3文字のとき
13460 case 3:
13470 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1) + buf_Input_data$(2))
13480 case else:
13490 end select
13500 '2.主星をだす
13510 '2.主星
13520 select case (buf_char_size + buf_char_size2)
13530 '姓名4文字のとき
13540 case 4:
13550 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
13560 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13570 endif
13580 '姓名3文字のとき
13590 case 3:
13600 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
13610 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13620 else
13630 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13640 endif
13650 case 2:
13660 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13670 case else:
13680 end select
13690 '3.名星を求める
13700 select case (buf_char_size + buf_char_size2)
13710 case 4:
13720 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
13730 case 3:
13740 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
13750 buf_meisei=char_count(buf_Input_data2$(0)+buf_Input_data2$(1))
13760 endif
13770 if ((buf_char_size=2) and (buf_char_size2=1)) then
13780 buf_meisei=char_count(buf_Input_data2$(0))+1
13790 endif
13800 case 2:
13810 buf_meisei=char_count(buf_Input_data2$(0))+1
13820 case else:
13830 end select
13840 '4.外星を求める
13850 select case (buf_char_size+buf_char_size2)
13860 case 4:
13870 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))
13880 case 3:
13890 if ((buf_char_size=1) and (buf_char_size2=2)) then
13900 buf_gaisei=1+char_count(buf_Input_data2$(1))
13910 endif
13920 if ((buf_char_size=2) and (buf_char_size2=1)) then
13930 buf_gaisei=char_count(buf_Input_data$(0))+1
13940 endif
13950 case 2:
13960 buf_gaisei=2
13970 case else:
13980 end select
13990 '診断結果表示
14000 '1.姓星を出す
14010 'グラフィック描画領域　ここから
14020 Menu1_Result_Kyusei:
14030 cls 3:
14040 '縦の画面
14050 line (0,0)-(950,60),rgb(0,0,255),bf
14060 pen 5:line (0,0)-(953,63),rgb(255,255,255),b
14070 line (0,60)-(950,650),rgb(127,255,212),bf
14080 pen 5: line (0,63)-(953,653),rgb(0,255,0),b
14090 line (0,650)-(950,770),rgb(0,255,0),bf
14100 pen 5: line (0,653)-(953,773),rgb(0,0,0),b
14110 '横の画面　吉凶のランク表
14120 'グラフィック描画領域　ここまで
14130 talk"診断結果です"
14140 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
14150 color Rgb(255,0,255)
14160 print total_name$;"の姓星:";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
14170 '2.主星を出す
14180 print total_name$;"の主星:";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
14190 '3.名星を求める
14200 print total_name$;"の名星:";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei-1)+chr$(13)
14210 '4.外星を求める
14220 print total_name$;"の外星:";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei-1)+chr$(13)
14230 '5.総数を出す
14240 print total_name$;"の総数:";buf_total;"です"+chr$(13)
14250 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total-1)+chr$(13)
14260 color rgb(0,0,0)
14270 print "エンターキーを押してください"+chr$(13)
14280 key$=input$(1)
14290 if key$=chr$(13) then bufferCount=0:buf_count2=0:count=0:buffer=0:buf_seisei=0:buf_syusei=0:buf_meisei=0:buf_gaisei=0:goto Main_Screen:
14300 '2.主星を出す
14310 'メニュー3 登録文字の確認 ここから
14320 'グラフィック領域　ここから
14330 'タイトル青 文字:白
14340 Menu2_moji_check:
14350 cls 3:line (0,0)-(1100,60),rgb(0,0,255),bf
14360 pen 5:line(0,0)-(1097,57),rgb(255,255,255),b
14370 line (0,57)-(1100,180),rgb(0,255,255),bf
14380 pen 5:line(0,63)-(1103,183),rgb(0,0,255),b
14390 line (0,180)-(1100,300),rgb(0,255,0),bf
14400 pen 5:line(0,183)-(1103,303),rgb(0,0,0),b
14410 'グラフィック領域　ここまで
14420 '文字:白
14430 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
14440 '文字:アクア
14450 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
14460 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
14470 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Menu2_moji_check:
14480 '1画の文字
14490 for i=0 to ((Moji_1)-1)
14500 if (name$=buf_char_hiragana1$(i)) then
14510 buffer_count=1:goto Result_moji_check:
14520 endif
14530 next i
14540 '2画の文字
14550 for i=0 to ((Moji_2)-1)
14560 if (name$=buf_char_hiragana2$(i)) then
14570 buffer_count=2:goto Result_moji_check:
14580 endif
14590 next i
14600 '3画の文字
14610 for i=0 to ((Moji_3)-1)
14620 if (name$=buf_char_hiragana3$(i)) then
14630 buffer_count=3:goto Result_moji_check:
14640 endif
14650 next i
14660 '4画の文字
14670 for i=0 to ((Moji_4)-1)
14680 if (name$=buf_char_hiragana4$(i)) then
14690 buffer_count=4:goto Result_moji_check:
14700 endif
14710 next i
14720 '5画の文字
14730 for i=0 to ((Moji_5)-1)
14740 if (name$=buf_char_hiragana5$(i)) then
14750 buffer_count=5:goto Result_moji_check:
14760 endif
14770 next i
14780 '6画の文字
14790 for i=0 to ((Moji_6)-1)
14800 if (name$=buf_char_hiragana6$(i)) then
14810 buffer_count=6:goto Result_moji_check:
14820 endif
14830 next i
14840 '7画の文字
14850 for i=0 to ((Moji_7)-1)
14860 if (name$=buf_char_hiragana7$(i)) then
14870 buffer_count=7:goto Result_moji_check:
14880 endif
14890 next i
14900 '8画の文字 120 文字
14910 for i=0 to ((Moji_8)-1)
14920 if (name$=buf_char_hiragana8$(i)) then
14930 buffer_count=8:goto Result_moji_check:
14940 endif
14950 next i
14960 '9画の文字  103文字
14970 for i=0 to ((Moji_9)-1)
14980 if (name$=buf_char_hiragana9$(i)) then
14990 buffer_count=9:goto Result_moji_check:
15000 endif
15010 next i
15020 '10画の文字 98文字
15030 for i=0 to ((Moji_10)-1)
15040 if (name$=buf_char_hiragana10$(i)) then
15050 buffer_count=10:goto Result_moji_check:
15060 endif
15070 next i
15080 '11画の文字 98文字
15090 for i=0 to ((Moji_11)-1)
15100 if (name$=buf_char_hiragana11$(i)) then
15110 buffer_count=11:goto Result_moji_check:
15120 endif
15130 next i
15140 '12画の文字
15150 for i=0 to ((Moji_12)-1)
15160 if (name$=buf_char_hiragana12$(i)) then
15170 buffer_count=12:goto Result_moji_check:
15180 endif
15190 next i
15200 '13画の文字
15210 for i=0 to ((Moji_13)-1)
15220 if (name$=buf_char_hiragana13$(i)) then
15230 buffer_count=13:goto Result_moji_check:
15240 endif
15250 next i
15260 '14画の文字
15270 for i=0 to ((Moji_14)-1)
15280 if (name$=buf_char_hiragana14$(i)) then
15290 buffer_count=14:goto Result_moji_check:
15300 endif
15310 next i
15320 '15画の文字
15330 for i=0 to ((Moji_15)-1)
15340 if (name$=buf_char_hiragana15$(i)) then
15350 buffer_count=15:goto Result_moji_check:
15360 endif
15370 next i
15380 '16画の文字
15390 for i=0 to ((Moji_16)-1)
15400 if (name$=buf_char_hiragana16$(i)) then
15410 buffer_count=16:goto Result_moji_check:
15420 endif
15430 next i
15440 '17画の文字
15450 for i=0 to ((Moji_17)-1)
15460 if (name$=buf_char_hiragana17$(i)) then
15470 buffer_count=17:goto Result_moji_check:
15480 endif
15490 next i
15500 '18画の文字 25
15510 for i=0 to ((Moji_18)-1)
15520 if (name$=buf_char_hiragana18$(i)) then
15530 buffer_count=18:goto Result_moji_check:
15540 endif
15550 next i
15560 '19画の文字 17
15570 for i=0 to ((Moji_19)-1)
15580 if (name$=buf_char_hiragana19$(i)) then
15590 buffer_count=19:goto Result_moji_check:
15600 endif
15610 next i
15620 '20画の文字 13
15630 for i=0 to ((Moji_20)-1)
15640 if (name$=buf_char_hiragana20$(i)) then
15650 buffer_count=20:goto Result_moji_check:
15660 endif
15670 next i
15680 '21画の文字 6
15690 for i=0 to ((Moji_21)-1)
15700 if (name$=buf_char_hiragana21$(i)) then
15710 buffer_count=21:goto Result_moji_check:
15720 endif
15730 next i
15740 '22画の文字 4
15750 for i=0 to ((Moji_22)-1)
15760 if (name$=buf_char_hiragana22$(i)) then
15770 buffer_count=22:goto Result_moji_check:
15780 endif
15790 next i
15800 '23画の文字 3
15810 for i=0 to ((Moji_23)-1)
15820 if (name$=buf_char_hiragana23$(i)) then
15830 buffer_count=23:goto Result_moji_check:
15840 endif
15850 next i
15860 '24画の文字
15870 for i=0 to ((Moji_24)-1)
15880 if (name$=buf_char_hiragana24$(i)) then
15890 buffer_count=24:goto Result_moji_check:
15900 endif
15910 next i
15920 'Menu3 結果表示 画数の登録確認
15930 Result_moji_check:
15940 if (buffer_count=0) then
15950 '登録文字がない場合の処理
15960 'グラフィック領域　ここから
15970 cls 3
15980 line (0,0)-(850,40),rgb(0,0,255),bf
15990 line (0,40)-(850,200),rgb(127,255,212),bf
16000 line (0,203)-(853,323),rgb(0,0,255),bf
16010 line (0,320)-(850,520),rgb(0,255,0),bf
16020 'グラフィック領域　ここまで
16030 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
16040 color rgb(255,0,0):print name$;"は、登録されていません"+chr$(13)
16050 talk "この文字は、登録されていません"
16060 color rgb(255,255,255):print"q+エンターキー:トップ画面"+chr$(13)
16070 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
16080 color rgb(0,0,0):print"コマンド:"+chr$(13)
16090 key$=input$(1)
16100 if key$="q" then goto Main_Screen:
16110 if key$=chr$(13) then goto Menu2_moji_check:
16120 else
16130 'グラフィック描画領域　ここから
16140 cls 3
16150 line (0,0)-(850,52),rgb(0,0,255),bf
16160 pen 5:line (0,0)-(853,55),rgb(255,255,255),b
16170 line (0,52)-(850,102),rgb(127,255,212),bf
16180 pen 5:line (0,55)-(847,99),rgb(0,0,0),b
16190 line (0,102)-(850,260),rgb(0,0,255),bf
16200 pen 5:line(0,105)-(847,257),rgb(255,0,255),b
16210 line (0,260)-(850,360),rgb(0,255,0),bf
16220 pen 5:line (0,257)-(853,363),rgb(0,0,0),b
16230 'グラフィック描画領域　ここまで
16240 color rgb(255,255,255):print "登録文字画数結果表示"
16250 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;"は、";buffer_count;"画で登録されています":
16260 endif
16270 color rgb(255,255,255)
16280 print"q+エンターキー:トップ画面"+chr$(13)
16290 print"エンターキー:もう一度やる"+chr$(13)
16300 color rgb(0,0,0)
16310 print"コマンド:" + chr$(13)
16320 key$=input$(1)
16330 if key$=chr$(13)  then buffer_count=0:goto Menu2_moji_check:
16340 if key$="q" then buffer_count=0:goto Main_Screen:
16350 if not(key$="q") then goto Result_moji_check:
16360 'Menu2 名前の陰陽を見る
16370 'グラフィック描画領域 ここから
16380 Input_name_InYo:
16390 cls 3:line (0,0)-(820,60),rgb(0,0,255),bf
16400 pen 5:line(0,0)-(823,63),rgb(255,255,255),b
16410 LINE (0,60)-(820,250),rgb(127,255,212),bf
16420 pen 5:line(0,57)-(817,247),rgb(255,0,255),b
16430 line (0,250)-(820,350),rgb(0,255,0),bf
16440 pen 5:line(0,253)-(823,353),rgb(0,0,0),b
16450 'グラフィック描画領域　ここまで
16460 color rgb(255,255,255)
16470 print"Menu2 名前の陰陽を見る"+chr$(13)
16480 COLOR rgb(255,0,255)
16490 PRINT"(●:陽,○:陰)"+chr$(13)
16500 print"調べたい名前苗字を入れてください"+chr$(13)
16510 color rgb(0,0,0)
16520 Input"調べたい名前の苗字:",name$
16530 'Menu2 陰陽の吉凶を見る 名入力
16540 cls:color rgb(255,255,255)
16550 print"Menu2 名前の陰陽を見る"+chr$(13)
16560 color rgb(255,0,255)
16570 print"(●:陽,○:陰)"+chr$(13)
16580 print"調べたい名前の名を入れてください"+chr$(13)
16590 color rgb(0,0,0)
16600 Input"調べたい名前の名:",name2$
16610 for i=0 to len(name$)-1
16620 name_array$(i)=Mid$(name$,i+1,1)
16630 if char_count(name_array$(i)) mod 2 = 1  then
16640 name_array$(i)="○":buffer$=buffer$+name_array$(i)
16650 else
16660 name_array$(i)="●":buffer$=buffer$+name_array$(i)
16670 endif
16680 next i
16690 for i=0 to len(name2$)-1
16700 name_array2$(i)=Mid$(name2$,i+1,1)
16710 if char_count(name_array2$(i)) mod 2 = 1 then
16720 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
16730 else
16740 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
16750 endif
16760 next i
16770 bufname$=buffer$+buffer2$
16780 '陰陽のタイプ ここから
16790 select case (len(bufname$))
16800 '2文字
16810 case 2:
16820 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
16830 '
16840 '  endif
16850 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
16860 '  endif
16870 '3文字
16880 case 3:
16890 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
16900 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
16910 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
16920 '4文字
16930 case 4:
16940 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
16950 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
16960 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
16970 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
16980 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
16990 '5文字
17000 case 5:
17010 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
17020 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
17030 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
17040 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
17050 case 6:
17060 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
17070 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
17080 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
17090 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
17100 case else:
17110 buffer_name$="例外に入りました"
17120 end select
17130 '陰陽のタイプ　ここまで
17140 'グラフィック描画領域　ここから
17150 Result_Inyo:
17160 cls 3
17170 line (0,0)-(900,60),rgb(0,0,250),bf
17180 pen 5:line(0,0)-(903,63),rgb(255,255,255),b
17190 line (0,60)-(900,250),rgb(127,255,212),bf
17200 pen 5:line(0,57)-(897,297),rgb(255,0,255),b
17210 line (0,250)-(900,460),rgb(0,255,0),bf
17220 pen 5:line(0,247)-(897,457),rgb(0,0,0),b
17230 'グラフィック描画領域 ここまで
17240 color rgb(255,255,255)
17250 cls:print"名前:";name$ + name2$ + chr$(13)
17260 color rgb(255,0,255)
17270 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
17280 print buffer_name$;chr$(13)
17290 color rgb(0,0,0)
17300 print"エンターキー:トップ画面へ行く"+chr$(13)
17310 print"S or s:保存する"+chr$(13)
17320 key$=input$(1)
17330 '1.メイン画面に行く
17340 if key$=chr$(13) then buffer$="":buffer2$="": goto Main_Screen:
17350 '2.データーの保存
17360 if key$="S" or key$="s" then goto Save_Inyo_array:
17370 'Menu3
17380 Menu2_Entry_moji:
17390 '登録文字数の確認
17400 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+moji_18+Moji_19+Moji_20+Moji_21+Moji_21+moji_22+Moji_23+Moji_24:
17410 'グラフィック描画領域　ここから
17420 cls 3
17430 line (0,0)-(780,60),rgb(0,0,255),bf
17440 pen 5:line(0,0)-(777,57),rgb(255,255,255),b
17450 line (0,60)-(780,170),rgb(127,255,212),bf
17460 pen 5:line(0,64)-(783,173),rgb(0,0,255),b
17470 line (0,167)-(777,267),rgb(0,255,0),bf
17480 pen 5:line(0,173)-(783,273),rgb(0,0,0),b
17490 'グラフィック描画領域 ここまで
17500 color rgb(255,255,255)
17510 PRINT"登録文字数の確認"+chr$(13)
17520 color rgb(255,0,255)
17530 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
17540 TALK"登録文字数は"+str$(totalmoji)+"もじです"
17550 color rgb(0,0,0)
17560 print"エンターキーを押してください"+chr$(13)
17570 key$=input$(1)
17580 if key$=chr$(13) then goto Main_Screen:
17590 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
17600 Menu1_2_Total_name:
17610 talk"名前の総数で吉凶を判定します。名前を入れてください"
17620 'グラフィック描画領域　ここから
17630 cls 3
17640 line (0,0)-(650,60),rgb(0,0,250),bf
17650 line (0,60)-(650,140),rgb(127,255,212),bf
17660 line (0,140)-(650,220),rgb(0,255,0),bf
17670 'グラフィック描画領域　ここまで
17680 buf=0
17690 color rgb(255,255,255)
17700 Print"名前の総数で吉凶を判断します"+chr$(13)
17710 color rgb(255,0,255)
17720 PRINT"名前を入れてください"+chr$(13)
17730 color rgb(0,0,0)
17740 Input"名前:",name$
17750 for n=0 to (len(name$)-1)
17760 buf_Input_data$(n)=mid$(name$,n+1,1)
17770 buf=buf+char_count(buf_Input_data$(n))
17780 next n
17790 cls:color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
17800 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf-1);chr$(13)
17810 color rgb(0,0,0):Input"エンターキーを押してください",key$
17820 if key$="" then goto Main_Screen:
17830 '名前2文字
17840 'グラフィック描画領域　ここから
17850 Menu2_Result_Anzai_Kikkyo:
17860 CLS 3
17870 line (0,0)-(1350,60),rgb(0,0,255),bf
17880 pen 5:line(0,0)-(1347,57),rgb(255,255,255),b
17890 line (0,60)-(1350,560),rgb(127,255,212),bf
17900 pen 5:line(0,63)-(1353,563),rgb(255,0,255),b
17910 line (0,560)-(1350,680),rgb(0,255,0),bf
17920 pen 5:line(0,563)-(1353,683),rgb(0,0,0),b
17930 'グラフィック描画領域 ここまで
17940 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
17950 color rgb(255,0,255)
17960 print"天運";buf_tenunn;chr$(13)
17970 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
17980 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
17990 print"外運";buf_gaiunn;chr$(13)
18000 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
18010 COLOR rgb(0,0,0)
18020 print "エンターキーを押してください"+chr$(13)
18030 key$=input$(1)
18040 if key$=chr$(13) then goto Main_Screen:
18050 '参考文献 表示 ここから
18060 'グラフィック描画領域　 ここから
18070 Reference_book:
18080 cls 3
18090 line (0,0)-(1100,60),rgb(0,0,255),bf
18100 pen 5:line(0,0)-(1103,63),rgb(255,255,255),b
18110 line (0,60)-(1100,650),rgb(127,255,212),bf
18120 pen 5:line(0,63)-(1103,653),rgb(255,255,255),b
18130 line (0,650)-(1100,730),rgb(0,255,0),bf
18140 pen 5:line(0,653)-(1103,733),rgb(0,0,0),b
18150 'グラフィック描画領域  ここまで
18160 '参考文献１
18170 color rgb(255,255,255)
18180 print"◎参考文献"+chr$(13)
18190 color rgb(255,0,255)
18200 print "参考文献１"+chr$(13)
18210 print "Title:九星姓名判断"+chr$(13)
18220 print "Author:高嶋　 美伶"+chr$(13)
18230 print "出版社:日本文芸者"+chr$(13)
18240 print "ISBN:4-537-20073-1"+chr$(13)
18250 print "定価:1,200+税"+chr$(13)
18260 color rgb(0,0,0)
18270 print "エンターキーを押してください"+chr$(13)
18280 key_a:
18290 key$=input$(1)
18300 if key$=chr$(13) then
18310 goto Reference_book2:
18320 else
18330 goto key_a:
18340 endif
18350 '参考文献２
18360 Reference_book2:
18370 cls
18380 color rgb(255,255,255)
18390 print "◎参考文献"+chr$(13)
18400 color rgb(255,0,255)
18410 print "参考文献２"+chr$(13)
18420 print "Title:究極の姓名判断"+chr$(13)
18430 print "Author:安斎　勝洋"+chr$(13)
18440 print "出版社:説話社"+chr$(13)
18450 print "ISBN:978-4-916217-61-5"+chr$(13)
18460 print "定価:1,800円+税"+chr$(13)
18470 color rgb(0,0,0)
18480 print "エンターキーを押してください"+chr$(13)
18490 key_r2:
18500 key$=input$(1)
18510 if key$=chr$(13) then
18520 goto Reference_book3:
18530 else
18540 goto key_r2:
18550 endif
18560 '参考文献３
18570 Reference_book3:
18580 cls
18590 color rgb(255,255,255)
18600 print"◎参考文献"+chr$(13)
18610 color rgb(255,0,255)
18620 print "参考文献3"+chr$(13)
18630 print "Title:新明解現在漢和辞典"+chr$(13)
18640 print "Author:影山輝國(編集主幹)他"+chr$(13)
18650 print "出版社:三省堂"+chr$(13)
18660 print "ISBN:978-4-385-13755-1"+chr$(13)
18670 print "定価:2,800円 + 税"+chr$(13)
18680 color rgb(0,0,0)
18690 print "エンターキーを押してください"+chr$(13)
18700 'トップ画面に戻る
18710 key_r3:
18720 key$=input$(1)
18730 if key$=chr$(13) then
18740 goto Main_Screen:
18750 else
18760 goto key_r3:
18770 endif
18780 '安斎流姓名判断　メニュー
18790 'グラフィック領域　ここから
18800 Menu1_2_Anzai_Top:
18810 cls 3
18820 line (0,0)-(1000,60),rgb(0,0,255),bf
18830 pen 5:line(0,0)-(1003,63),rgb(255,255,255),b
18840 line (0,60)-(1000,450),rgb(127,255,212),bf
18850 pen 5:line(0,63)-(1003,453),rgb(255,0,255),b
18860 line (0,450)-(1000,630),rgb(0,255,0),bf
18870 pen 5:line(0,453)-(1003,633),rgb(0,0,0),b
18880 'グラフィック描画領域　ここまで
18890 color rgb(255,255,255)
18900 print "安斎流姓名判断　トップメニュー" + chr$(13)
18910 color rgb(255,0,255)
18920 print " 1.安斎流姓名判断 名前の吉凶判定" + chr$(13)
18930 print " 2.安斎流姓名判断 改名チェック" + chr$(13)
18940 print " 3.安斎流姓名判断 相性占い"+chr$(13)
18950 print " 4.前の画面に戻る"+chr$(13)
18960 color rgb(0,0,0)
18970 print"番号を選んでください"+chr$(13)
18980 If Select_No=0 then
18990 locate 0,12:print "                                     ":locate 0,12:print "1.安斉流姓名判断 名前の吉凶判定を選択"
19000 endif
19010 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:
19020 key4:
19030 key$=input$(1)
19040 if key$=chr$(31) then
19050 select case (Select_No)
19060 case 0:
19070       Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(10,200),0,0:locate 0,12:print "                                      ":locate 0,12:print "2.安斉流姓名判断 改名チェックを選択":goto key4:
19080 case 1:
19090       Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(10,300),0,0:locate 0,12:print "                                      ":locate 0,12:print"3.安斉流姓名判断 相性占いを選択":goto key4:
19100 case 2:
19110       Select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(10,400),0,0:locate 0,12:print "                                      ":locate 0,12:print "4.前の画面に戻るを選択":goto key4:
19120 case 3:
19130       Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:locate 0,12:print "                                      ":locate 0,12:print "1.安斉流姓名判断 名前の吉凶判定":goto key4:
19140 end select
19150 else
19160 if key$=chr$(13) then
19170 select case (Select_No)
19180 case 0:
19190       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Menu2_Anzai_Kikkyo:
19200 case 1:
19210        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Menu2_Anzai_name_check:
19220 case 2:
19230        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Anzai_Aisyou_Top:
19240 case 3:
19250       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto SeimeiHandan_Top:
19260 end select
19270 else
19280 goto key4:
19290 endif
19300 endif
19310 'Input "番号:",key
19320 'if key=1 then goto Menu2_Anzai_Kikkyo:
19330 'if key=2 then goto Menu2_Anzai_name_check:
19340 'if key=3 then goto Anzai_Aisyou_Top:
19350 'if key=4 then goto SeimeiHandan_Top:
19360 '2.安斎流姓名判断　男女の相性占い　ここから
19370 'グラフィック描画領域 ここから
19380 Anzai_Aisyou2:
19390 cls 3
19400 line (0,0)-(850,60),rgb(0,0,255),bf
19410 pen 5:line(0,0)-(853,63),rgb(255,255,255),b
19420 line (0,60)-(850,180),rgb(127,255,212),bf
19430 line (0,63)-(853,183),rgb(255,0,255),b
19440 line (0,180)-(850,270),rgb(0,255,0),bf
19450 pen 5:line(0,183)-(853,273),rgb(0,0,0),b
19460 'グラフィック描画領域　男女の相性占い ここまで
19470 's2=1:男
19480 if s2 = 1 then goto Input_female:
19490 's2=2:女
19500 if s2 = 2 then goto Input_male:
19510 '1.名前の姓を入力  男性
19520 Input_male:
19530 color rgb(255,255,255)
19540 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
19550 color rgb(255,0,255)
19560 print "男性の名前(姓)を入れてください"+chr$(13)
19570 color rgb(0,0,0)
19580 Input "男性の名前(姓):",name$
19590 '2.名前の名を入力  男性
19600 cls
19610 color rgb(255,255,255)
19620 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
19630 color rgb(255,0,255)
19640 print "男性の名前（名）をいれてください"+chr$(13)
19650 color rgb(0,0,0)
19660 Input "男性の名前(名):",name2$
19670 if s2=2 then goto male_complate:
19680 '3.名前(姓)入力 女性
19690 Input_female:
19700 cls
19710 color rgb(255,255,255)
19720 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
19730 color rgb(255,0,255)
19740 print "女性の名前(姓)を入れてください"+chr$(13)
19750 color rgb(0,0,0)
19760 Input"女性の名前:",name3$
19770 '4.名前（名)入力 女性
19780 cls
19790 color rgb(255,255,255)
19800 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
19810 color rgb(255,0,255)
19820 print "女性の名前（名）を入れてください"+chr$(13)
19830 color rgb(0,0,0)
19840 Input "女性の名前(名):",name4$
19850 '男性　の地運 を求める
19860 '姓名の合計数
19870 '1.男性
19880 male_complate:
19890 buff_name1 = len(name$)
19900 buff_name2 = len(name2$)
19910 buff_name = buff_name1 + buff_name2
19920 '2.女性
19930 Woman_Complate:
19940 buff_name3 = len(name3$)
19950 buff_name4 = len(name4$)
19960 buff_wname = buff_name3 + buff_name4
19970 '1.男性の地運を求める
19980 select case buff_name
19990 case 2:
20000 '男性の地運を求める
20010 buf_chiunn=char_count(name2$)
20020 case 3:
20030 '姓が一文字 名が2文字
20040 if buff_name1=1 and buff_name2=2 then
20050 buf_Input_name$(0)=mid$(name2$,1,1)
20060 buf_Input_name$(1)=mid$(name2$,2,1)
20070 '地運を計算
20080 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
20090 endif
20100 if buff_name1=2 and buff_name2=1 then
20110 buf_Input_name$(0)=Mid$(name2$,1,1)
20120 buf_chiunn=char_count(buf_Input_name$(0))
20130 endif
20140 case 4:
20150 '1.姓１，名３
20160 if buff_name1=1 and buff_name2=3 then
20170 buf_Input_name$(0)=Mid$(name2$,1,1)
20180 buf_Input_name$(1)=Mid$(name2$,2,1)
20190 buf_Input_name$(2)=Mid$(name2$,3,1)
20200 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
20210 endif
20220 '2.姓２,名２
20230 if buff_name1=2 and buff_name2=2 then
20240 buf_Input_name$(0)=Mid$(name2$,1,1)
20250 buf_Input_name$(1)=Mid$(name2$,2,1)
20260 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
20270 endif
20280 '3.姓３、名１
20290 if buff_name1=3 and buff_name2=1 then
20300 buf_Input_name$(0)=Mid$(name2$,1,1)
20310 '地運を求める
20320 buf_chiunn=char_count(buf_Input_name$(0))
20330 endif
20340 case 5:
20350 '1.姓２，名３
20360 if buff_name1=2 and buff_name2=3 then
20370 buf_Input_name$(0)=Mid$(name2$,1,1)
20380 buf_Input_name$(1)=Mid$(name2$,2,1)
20390 buf_Input_name$(2)=Mid$(name2$,3,1)
20400 '地運を求める
20410 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
20420 endif
20430 '2.姓３，名２
20440 if buff_name1=3 and buff_name2=2 then
20450 buf_Input_name$(0)=Mid$(name2$,1,1)
20460 buf_Input_name$(1)=Mid$(name2$,2,1)
20470 '地運を求める
20480 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
20490 endif
20500 '3.姓４、名１
20510 buf_Input_name$(0)=Mid$(name2$,1,1)
20520 '地運を求める
20530 buf_chiunn = char_count(buf_Input_name$(0))
20540 case 6:
20550 '1.姓３，名３
20560 if buff_name1=3 and buff_name2=3 then
20570 buf_Input_name$(0)=Mid$(name2$,1,1)
20580 buf_Input_name$(1)=Mid$(name2$,2,1)
20590 buf_Input_name$(2)=Mid$(name2$,3,1)
20600 '地運を求める
20610 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
20620 endif
20630 '２.姓４，名２
20640 if buff_name1=4 and buff_name2=2 then
20650 buf_Input_name$(0)=Mid$(name2$,1,1)
20660 buf_Input_name$(1)=Mid$(name2$,2,1)
20670 '地運を求める
20680 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
20690 endif
20700 case else:
20710 end select
20720 if s=1 then goto Profile_Check_Man:
20730 if s2=2 then goto Profile_Check_Woman:
20740 '2.女性　外運を求める
20750 select case buff_wname
20760 '姓と名の合計数
20770 case 2:
20780 buf_Input_name2$(0)=Mid$(name3$,1,1)
20790 buf_Input_name2$(1)=Mid$(name4$,1,1)
20800 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
20810 case 3:
20820 if buff_name3=2 and buff_name4=1 then
20830 buf_Input_name2$(0)=Mid$(name3$,1,1)
20840 buf_Input_name2$(1)=Mid$(name3$,2,1)
20850 buf_Input_name2$(2)=Mid$(name4$,1,1)
20860 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
20870 endif
20880 if buff_name3=1 and buff_name4=2 then
20890 buf_Input_name2$(0)=Mid$(name3$,1,1)
20900 buf_Input_name2$(1)=Mid$(name4$,1,1)
20910 buf_Input_name2$(2)=Mid$(name4$,2,1)
20920 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
20930 endif
20940 case 4:
20950 '姓１、名３
20960 if buff_name3=1 and buff_name4=3 then
20970 buf_Input_name2$(0)=Mid$(name3$,1,1)
20980 buf_Input_name2$(1)=Mid$(name4$,1,1)
20990 buf_Input_name2$(2)=Mid$(name4$,2,1)
21000 buf_Input_name2$(3)=Mid$(name4$,3,1)
21010 '外運を求める
21020 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
21030 endif
21040 '姓２,名２
21050 if buff_name3=2 and buff_name4=2 then
21060 buf_Input_name2$(0)=Mid$(name3$,1,1)
21070 buf_Input_name2$(1)=Mid$(name3$,2,1)
21080 buf_Input_name2$(2)=Mid$(name4$,1,1)
21090 buf_Input_name2$(3)=Mid$(name4$,2,1)
21100 '外運を求める
21110 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
21120 endif
21130 '姓３，名１
21140 if buff_name3=3 and buff_name4=1 then
21150 buf_Input_name2$(0)=Mid$(name3$,1,1)
21160 buf_Input_name2$(1)=Mid$(name3$,2,1)
21170 buf_Input_name2$(2)=Mid$(name3$,3,1)
21180 buf_Input_name2$(3)=Mid$(name4$,1,1)
21190 '外運を求める
21200 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
21210 endif
21220 case 5:
21230 '姓 3,名2
21240 if buff_name3=3 and buff_name=2 then
21250 buf_Input_name2$(0)=Mid$(name3$,1,1)
21260 buf_Input_name2$(1)=Mid$(name3$,2,1)
21270 buf_Input_name2$(2)=Mid$(name3$,3,1)
21280 buf_Input_name2$(3)=Mid$(name4$,1,1)
21290 buf_Input_name2$(4)=Mid$(name4$,2,1)
21300 '外運を求める
21310 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
21320 endif
21330 '姓４、名１
21340 if buff_name3=4 and buff_name4=1 then
21350 buf_Input_name2$(0)=Mid$(name3$,1,1)
21360 buf_Input_name2$(1)=Mid$(name3$,2,1)
21370 buf_Input_name2$(2)=Mid$(name3$,3,1)
21380 buf_Input_name2$(3)=Mid$(name3$,4,1)
21390 buf_Input_name2$(4)=Mid$(name4$,1,1)
21400 '外運を求める
21410 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
21420 endif
21430 '姓２、名３
21440 if buff_name3=2 and buff_name4=3 then
21450 buf_Input_name2$(0)=Mid$(name3$,1,1)
21460 buf_Input_name2$(1)=Mid$(name3$,2,1)
21470 buf_Input_name2$(2)=Mid$(name4$,1,1)
21480 buf_Input_name2$(3)=Mid$(name4$,2,1)
21490 buf_Input_name2$(4)=Mid$(name4$,3,1)
21500 '外運を求める
21510 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
21520 endif
21530 case 6:
21540 '1.姓３，名３
21550 if buff_name3=3 and buff_name4=3 then
21560 buf_Input_name2$(0)=Mid$(name3$,1,1)
21570 buf_Input_name2$(1)=Mid$(name3$,2,1)
21580 buf_Input_name2$(2)=Mid$(name3$,3,1)
21590 buf_Input_name2$(3)=Mid$(name4$,1,1)
21600 buf_Input_name2$(4)=Mid$(name4$,2,1)
21610 buf_Input_name2$(5)=Mid$(name4$,3,1)
21620 '外運を求める
21630 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
21640 endif
21650 '2.姓４，名２
21660 if buff_name3=4 and buff_name4=2 then
21670 buf_Input_name2$(0)=Mid$(name3$,1,1)
21680 buf_Input_name2$(1)=Mid$(name3$,2,1)
21690 buf_Input_name2$(2)=Mid$(name3$,3,1)
21700 buf_Input_name2$(3)=Mid$(name3$,4,1)
21710 buf_Input_name2$(4)=Mid$(name4$,1,1)
21720 buf_Input_name2$(5)=Mid$(name4$,2,1)
21730 '外運を求める
21740 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
21750 endif
21760 case 7:
21770 '1姓４，名３
21780 '外運を求める
21790 end select
21800 if s=2 then goto 24650
21810 if s2=2 then goto 25670
21820 func buf_number(a)
21830 if a < 10 then
21840 buf_tansu=a
21850 endif
21860 if a>9 and a < 20 then
21870 buf_tansu = a - 10
21880 endif
21890 if a>19 and a < 30 then
21900 buf_tansu = a - 20
21910 endif
21920 endfunc buf_tansu
21930 func Aisyou_type$(man,woman)
21940 Result$="No data"
21950 '1.理解し合える最良のカップル
21960 '1のFor文
21970 for i=0 to 19
21980 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
21990 Result$ = "1.理解し合える最良のカップル"
22000 ResultNo = 0
22010 endif
22020 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
22030 Result$="2.互いに自然体でつきあえるカップル"
22040 ResultNo=1
22050 endif
22060 '3.男性にとって居心地の良いカップル
22070 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
22080 Result$="3.男性にとって居心地の良いカップル"
22090 ResultNo=2
22100 endif
22110 '4.女性にとって居心地の良いカップル
22120 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
22130 Result$ = "4.女性にとって居心地の良いカップル"
22140 ResultNo=3
22150 endif
22160 '5.恋愛経験を重ねた後なら愛を育める
22170 'for i=0 to 9
22180 'for j=0 to 9
22190 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
22200 Result$="5.恋愛経験を重ねた後なら愛を育める"
22210 ResultNo=4
22220 endif
22230 'next j
22240 'next i
22250 '6
22260 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
22270 Result$="6.結婚への発展が困難なカップル"
22280 endif
22290 '7
22300 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
22310 Result$="7.愛し方にずれが出てくる二人"
22320 endif
22330 '8
22340 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
22350 Result$="8.互いに価値観が噛み合わない相性"
22360 endif
22370 next i
22380 'bufAisyou$ = Result$
22390 endfunc  Result$
22400 cls 3:
22410 buf_t_chiunn = buf_number(buf_chiunn)
22420 buf_t_gaiunn=buf_number(buf_gaiunn)
22430 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
22440 'グラフィック描画領域　ここから
22450 'Anzai_Result_Aisyou_male_female:
22460 line(0,0)-(1200,60),rgb(0,0,255),bf
22470 pen 5:line(0,0)-(1203,63),rgb(255,255,255),b
22480 line(0,60)-(1200,560),rgb(127,255,212),bf
22490 pen 5:line(0,63)-(1203,563),rgb(255,0,255),b
22500 LINE(0,560)-(1200,770),rgb(0,255,0),bf
22510 pen 5:line(0,563)-(1203,773),rgb(0,0,0),b
22520 if s2=1 then goto 25270
22530 'グラフィック描画領域　ここまで
22540 color rgb(255,255,255)
22550 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
22560 color rgb(255,0,255)
22570 print "男性の名前:";name$+name2$;chr$(13)
22580 print "地運の単数";buf_t_chiunn;chr$(13)
22590 print "女性の名前:";name3$+name4$;chr$(13)
22600 print "外運の単数";buf_t_gaiunn;chr$(13)
22610 print"二人の相性:";bufferAisyou$;chr$(13)
22620 color rgb(0,0,0)
22630 print "エンターキー:トップ画面へ行く"+chr$(13)
22640 print "S or s:保存する"+chr$(13)
22650 key$=input$(1)
22660 if key$=chr$(13) then goto Main_Screen:
22670 if key$="s" or key$="S" then goto Save_Good_fortune:
22680 '相性占い　データー保存
22690 'Save_Good_fortune:
22700 '1.ファイル：fortune_list.datが無い時
22710 '1-0.保存フォルダ:config/
22720 '1-1.ファイル:fortune_list.datを作る
22730 '1-2.異性の名前と自分との相性を保存
22740 '1-3.データーを保存したと表示する
22750 Save_Good_fortune:
22760 open "config/fortune_list.dat" for append as #1
22770 '
22780 close #1
22790 '改名チェック
22800 'グラフィック描画領域 ここから
22810 Menu2_Anzai_name_check:
22820 cls 3
22830 line (0,0)-(1300,60),rgb(0,0,255),bf
22840 pen 5:line(0,0)-(1297,57),rgb(255,255,255),b
22850 line (0,60)-(1300,340),rgb(127,255,212),bf
22860 pen 5:line(0,63)-(1303,343),rgb(255,0,255),b
22870 line (0,340)-(1300,440),rgb(0,255,0),bf
22880 pen 5:line(0,343)-(1303,443),rgb(0,0,0),b
22890 'グラフィック描画領域 ここまで
22900 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
22910 color rgb(255,255,255)
22920 print "安斎流姓名判断 改名チェッカー"+chr$(13)
22930 color rgb(255,0,255)
22940 print "総数で、改名が、必要か否かを調べます"+chr$(13)
22950 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
22960 print "10文字までで入れてください"+chr$(13)
22970 color rgb(0,0,0)
22980 Input "名前:",name$
22990 '計算領域　ここから
23000 '名前から総運を計算
23010 '1.名前の文字数を出す
23020 n=len(name$)
23030 if n > 10 then
23040 '文字数が10個までという表示
23050 'トーストで表示
23060 ui_msg "文字は10個までです"
23070 goto Menu2_Anzai_name_check:
23080 endif
23090 'それ以外
23100 '総数を出す処理を出す
23110 '画面消去　データー初期化
23120 Result_Anzai_Kaimei:
23130 cls 3:bufer_total=0
23140 'グラフィック描画領域 ここから
23150 line(0,0)-(960,60),rgb(0,0,255),bf
23160 pen 5:line(0,0)-(963,63),rgb(255,255,255),b
23170 line(0,60)-(960,320),rgb(127,255,212),bf
23180 pen 5:line(0,63)-(963,323),rgb(255,0,255),b
23190 line(0,320)-(960,600),rgb(0,255,0),bf
23200 pen 5:line(0,323)-(963,603),rgb(0,0,0),b
23210 'グラフィック描画領域 ここまで
23220 'cls 3
23230 color rgb(255,255,255)
23240 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
23250 for i=0 to len(name$)-1
23260 buf_Input_name$(i)=Mid$(name$,i+1,1)
23270 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
23280 next i
23290 color rgb(255,0,255)
23300 print "名前:";name$
23310 print "この名前の総数:";bufer_total
23320 print "この名前の吉凶:";buf_Kikkyo_Anzai_total$(bufer_total - 2);"です"
23330 color rgb(255,0,255)
23340 buffer_total$=Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
23350 print bufer_total$;chr$(13)
23360 color rgb(0,0,0)
23370 locate 0,7
23380 print"エンターキー:メイン画面"+chr$(13)
23390 print"スペース:もう一度やる"+chr$(13)
23400 print"s or S:保存する"+chr$(13)
23410 key$=input$(1)
23420 if key$=chr$(13) then goto Main_Screen:
23430 if key$=" "  then goto Menu2_Anzai_name_check:
23440 if key$="S" or key$="s" then
23450 count=0
23460 if dir$("config/Anzai_Kikkyo/Anzai_Kikkyo_name_list.dat")="" then
23470 count=0
23480 else
23490 open "config/Anzai_Kikkyo/Anzai_Kikkyo_name_list.dat" for input as #1
23500 while eof(1)=0
23510 line input #1,lines$:count=count+1
23520 wend
23530 close #1
23540 endif
23550 if count => 5 then
23560 ui_msg"登録できるのは5件までです。"
23570 goto Result_Anzai_Kaimei:
23580 else
23590 if count<6 then
23600 open "config/Anzai_Kikkyo_name_list.dat" for append as #1
23610 print #1,"名前:";name$;",総数:";str$(bufer_total);",名前の吉凶:";buf_Kikkyo_Anzai_total$(bufer_total-2)
23620 close #1
23630 ui_msg"保存しました"
23640 endif
23650 endif
23660 endif
23670 goto Result_Anzai_Kaimei:
23680 func Kaimei_check$(r$)
23690 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
23700 '改名の必要なし
23710 talk"この名前は改名の必要がございません エンターキーを押してください"
23720 print"この名前は、改名の必要はありません"+chr$(13)
23730 '改名の必要ナシの場合
23740 K=0
23750 else
23760 '改名の必要あり
23770 talk"この名前は、改名の必要があります"
23780 print"この名前は、改名の必要があります"+chr$(13)
23790 K=1
23800 '◎表示パターン
23810 'パターン１
23820 'color rgb(0,0,0)
23830 'Input"エンターキーを押してください",key$
23840 endif
23850 endfunc result$
23860 'ui_msg="1件追加しました,残り9件追加できます"
23870 'ファイルの存在確認 設定ファイル:mydata.dat
23880 Anzai_Result_Aisyou_male_female:
23890 cls 3
23900 '設定ファイルの確認
23910 if dir$("config/Mydata/mydata.dat")="" then
23920 'print "File not found"+chr$(13)
23930 '1.ファイルがない時
23940 goto Input_profile:
23950 else
23960 'ファイルがある時
23970 goto read_mydata:
23980 'goto 19390
23990 endif
24000 '1-1.ファイルがない時の処理
24010 '1-1.自分の姓名判断を入力
24020 'グラフィック描画領域 ここから
24030 Input_profile:
24040 cls 3
24050 line(0,0)-(1000,60),rgb(0,0,250),bf
24060 line(0,60)-(1000,150),rgb(127,255,212),bf
24070 line(0,150)-(1000,240),rgb(0,255,0),bf
24080 'グラフィック描画領域 ここまで
24090 '1.名前の姓の入力
24100 '1行目 Title
24110 color rgb(255,255,255)
24120 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
24130 '2行目 名前の姓を入力
24140 color rgb(255,0,255)
24150 print "自分の名前の姓を入れてください"+chr$(13)
24160 color rgb(0,0,0)
24170 'buf_name1$:自分の名前の姓
24180 Input"名前の姓:",buf_name1$
24190 '2.名前の名の入力
24200 '画面消去
24210 cls
24220 '1行目 Title
24230 color rgb(255,255,255)
24240 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
24250 '2行目 名前の名の入力
24260 color rgb(255,0,255)
24270 print "自分の名前の名を入れてください"+chr$(13)
24280 color rgb(0,0,0)
24290 'buf_name2$:自分の名前の名
24300 input "名前の名:",buf_name2$
24310 '3.性別入力
24320 cls
24330 '1行目 Title
24340 color rgb(255,255,255)
24350 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
24360 '2行目 性別入力
24370 color rgb(255,0,255)
24380 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
24390 sex_type$(0)="女性"
24400 sex_type$(1)="男性"
24410 type=ui_select("sex_type$","性別を選んでください")
24420 '3行目
24430 '性別変数 sex_type$
24440 if type=1 then
24450 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto Input_male_
24460 else
24470 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Input_female_:
24480 endif
24490 Input_male_:
24500 if sex_type$="男性" then
24510 name$=buf_name1$
24520 name2$=buf_name2$
24530 s=1
24540 goto 19890
24550 endif
24560 Input_female_:
24570 If sex_type$="女性" then
24580 name3$=buf_name1$
24590 name4$=buf_name2$
24600 s=2
24610 goto Woman_Complate:
24620 endif
24630 '登録プロフィール確認画面
24640 Profile_Check_Man:
24650 cls 3
24660 'グラフィック描画領域　ここから
24670 line(0,0)-(1000,60),rgb(0,0,255),bf
24680 line(0,60)-(1000,60*5),rgb(127,255,212),bf
24690 line(0,300)-(1000,460),rgb(0,255,0),bf
24700 if s2=2 then goto 25670
24710 'グラフィック描画領域　ここまで
24720 '1行目 Title
24730 color rgb(255,255,255)
24740 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
24750 color rgb(255,0,255)
24760 print"名前:";buf_name1$+buf_name2$;chr$(13)
24770 PRINT"性別:";sex_type$;chr$(13)
24780 if sex_type$="女性" then
24790 print"外運:";buf_gaiunn;chr$(13)
24800 buffer$="外運:"+str$(buf_gaiunn)
24810 endif
24820 if sex_type$="男性" then
24830 print"地運:";buf_chiunn;chr$(13)
24840 buffer$="地運:"+str$(buf_chiunn)
24850 endif
24860 color rgb(0,0,0)
24870 input"(登録する:Yes/登録しない:No):",key$
24880 if key$="Yes" or key$="yes" then
24890 open "config/Mydata/mydata.dat" for output as #1
24900 print #1,"名前:";buf_name1$+buf_name2$
24910 print #1,"性別:";sex_type$
24920 print #1,buffer$
24930 close #1
24940 ui_msg"データーを保存しました"
24950 goto Main_Screen:
24960 endif
24970 '２．設定ファイルが存在する場合
24980 'ファイル読み込み 自分のデーターを表示
24990 read_mydata:
25000 cls 3
25010 open "config/Mydata/mydata.dat" for input as #2
25020 line input #2,a$
25030 line input #2,b$
25040 line input #2,c$
25050 close #2
25060 buffername$=a$
25070 buffername2$=b$
25080 buffername3$=c$
25090 bufff$=Mid$(buffername$,1,3)
25100 buff2$=Mid$(buffername2$,1,3)
25110 buff3$=Mid$(buffername3$,1,3)
25120 n=len(a$)
25130 sextype$=Mid$(buffername2$,4,2)
25140 if sextype$="男性" then
25150 '男性:s2
25160 s2=1
25170 '女性のデーター入力
25180 goto 19390
25190 endif
25200 if sextype$="女性" then
25210 s2=2
25220 '男性のデーター入力
25230 goto 19390
25240 endif
25250 '女性のデーター結果表示
25260 '1.プロフィール性別男性の場合 ここから
25270 cls
25280 color rgb(255,255,255)
25290 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
25300 name_length = len(bufername$)
25310 myname$ = Mid$(buffername$,4,4)
25320 chiunn = val(Mid$(buffername3$,4,2))
25330 tansuu1 = buf_number(chiunn)
25340 bufname$ = name3$ + name4$
25350 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
25360 color rgb(255,0,255)
25370 print "自分の名前(男性):";myname$;chr$(13)
25380 print "地運の端数:";tansuu1;chr$(13)
25390 print "相手の名前(女性):";bufname$;chr$(13)
25400 print "外運の端数:";buf_t_gaiunn;chr$(13)
25410 print "二人の相性:";bufferAisyou$;chr$(13)
25420 talk "二人の相性は"+bufferAisyou$
25430 color rgb(0,0,0)
25440 print"エンターキー:トップ画面へ行く"+chr$(13)
25450 print"S or s:データーを保存"+chr$(13)
25460 key$=input$(1)
25470 'トップ画面に行く
25480 if key$ = chr$(13) then goto Main_Screen:
25490 if key$="s" or key$="S" then goto Save_my_fortune_list:
25500 'データー保存
25510 'ファイル名:my_fortune_list_male.dat
25520 'フォルダ:config/
25530 'Save_my_fortune_list:相性リストに保存
25540 Save_my_fortune_list:
25550 open "config/my_fortune_list_male.dat" for append as #1
25560 print #1,"相手の名前:";bufname$;",あなたとの相性:";bufferAisyou$
25570 close #1
25580 ui_msg "保存しました"
25590 goto Main_Screen:
25600 '1-1.データーを保存する
25610 '1-2.appendモードで保存
25620 '1-3.ui_msgで保存したと表示する
25630 '1-4.終了する
25640 '1.プロフィール性別男性の場合　ここまで
25650 '2.プロフィール性別女性の場合　ここから
25660 Profile_Check_Woman:
25670 cls 3
25680 '描画領域　ここから
25690 line (0,0)-(1200,60),rgb(0,0,255),bf
25700 line (0,60)-(1200,560),rgb(127,255,212),bf
25710 LINE (0,560)-(1200,780),rgb(0,255,0),bf
25720 '描画領域 ここまで
25730 color rgb(255,255,255)
25740 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
25750 '計算領域　ここから
25760 myname$=Mid$(buffername$,4,4)
25770 gaiunn=val(Mid$(buffername3$,4,2))
25780 buf_t_gaiunn=buf_number(gaiunn)
25790 buf_t_chiunn=buf_number(buf_chiunn)
25800 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
25810 bufname$ = name$ + name2$
25820 '計算領域 ここまで
25830 color rgb(255,0,255)
25840 print "自分の名前(女性):";myname$;chr$(13)
25850 print "外運の端数";buffer_t_gaiunn;chr$(13)
25860 print "相手の名前(男性):";bufname$;chr$(13)
25870 print "地運の端数:";buf_t_chiunn;chr$(13)
25880 print "二人の相性:";bufferAisyou$;chr$(13)
25890 color rgb(0,0,0)
25900 print "エンターキー:トップ画面へ行く"+chr$(13)
25910 print "S or s:データー保存"+chr$(13)
25920 key$=input$(1)
25930 if key$=chr$(13) then goto Main_Screen:
25940 '2.プロフィール性別女性の場合　ここまで
25950 'endfunc result$
25960 '取扱説明書
25970 '相性占い　トップメニュー ここから
25980 'グラフィック ここから
25990 Anzai_Aisyou_Top:
26000 cls 3:
26010 line(0,0)-(1100,60),rgb(0,0,255),bf
26020 pen 5:line(0,0)-(1103,63),rgb(255,255,255),b
26030 line(0,60)-(1100,450),rgb(127,255,212),bf
26040 pen 5:line(0,63)-(1103,453),rgb(255,0,255),b
26050 line(0,450)-(1100,650),rgb(0,255,0),bf
26060 pen 5:line(0,453)-(1103,653),rgb(0,0,0),b
26070 'グラフィック　ここまで
26080 color rgb(255,255,255)
26090 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
26100 color rgb(255,0,255)
26110 print" 1.自分と異性の相性"+chr$(13)
26120 print" 2.男女の相性"+chr$(13)
26130 print" 3.前の画面に戻る"+chr$(13)
26140 print" 4.トップ画面に戻る"+chr$(13)
26150 color rgb(0,0,0)
26160 print"番号を選んでください:"+chr$(13)
26170 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:
26180 locate 0,12:print "                                     ":locate 0,12:print "1.自分と異性の相性を選択"
26190 key6:
26200 key$=input$(1)
26210 if key$=chr$(31) then
26220 select case (Select_No)
26230  case 0:
26240        Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(10,200),0,0:locate 0,12:print "                                      ":locate 0,12:print"2.男女の相性を選択":goto key6:
26250  case 1:
26260        Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(10,300),0,0:locate 0,12:print "                                      ":locate 0,12:print "3.前の画面に戻るを選択":goto key6:
26270  case 2:
26280       Select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(10,400),0,0:locate 0,12:print "                                      ":locate 0,12:print"4.トップ画面に戻るを選択":goto key6:
26290  case 3:
26300       Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:locate 0,12:print "                                      ":locate 0,12:print "1.自分と異性の相性を選択":goto key6:
26310 end select
26320 else
26330 if key$=chr$(13) then
26340 select case (Select_No)
26350 case 0:
26360        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Anzai_Result_Aisyou_male_female:
26370 case 1:
26380       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Anzai_Aisyou2:
26390 case 2:
26400       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Menu1_2_Anzai_Top:
26410 case 3:
26420       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Select_No=0:goto Main_Screen:
26430 end select
26440 else
26450     goto key6:
26460 endif
26470 endif
26480 'Input"番号:",key
26490 'if key=1 then goto Anzai_Result_Aisyou_male_female:
26500 'if key=2 then s2=2:goto Anzai_Aisyou2:
26510 'if key=3 then goto Menu1_2_Anzai_Top:
26520 'if key=4 then goto Main_Screen:
26530 'if key>4 or key=0  then goto Anzai_Aisyou_Top:
26540 'グラフィック領域　ここから
26550 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
26560 line(0,60)-(1150,180),rgb(127,255,212),bf
26570 line(0,120)-(1150,200),rgb(0,255,0),bf
26580 'グラフィック領域　ここまで
26590 '誕生日入力　生まれた年
26600 color rgb(255,255,255)
26610 print"誕生日入力　生まれた年"+chr$(13)
26620 COLOR rgb(255,0,255)
26630 print"生まれた年を入れてください"+chr$(13)
26640 color rgb(0,0,0)
26650 Input"生まれた年:",year
26660 '誕生日入力 生まれた月
26670 cls
26680 color rgb(255,255,255)
26690 print"誕生日入力 生まれた月"+chr$(13)
26700 color rgb(255,0,255)
26710 print"生まれた月を入力してください"+chr$(13)
26720 color rgb(0,0,0)
26730 Input"生まれた月:",month
26740 '誕生日入力 生まれた日を入力
26750 cls
26760 color rgb(255,255,255)
26770 print"誕生日入力 生まれた日入力"+chr$(13)
26780 color rgb(255,0,255)
26790 print"生まれた日を入力してください"+chr$(13)
26800 color rgb(0,0,0)
26810 Input"生まれた日:",day
26820 '人生の転機を見る
26830 'グラフィック領域　ここから
26840 cls 3
26850 line(0,0)-(1150,60),rgb(0,0,255),bf
26860 line(0,60)-(1150,470),rgb(127,255,212),bf
26870 line(0,470)-(1150,520),rgb(0,255,0),bf
26880 'グラフィック描画領域  ここまで
26890 cls
26900 color rgb(255,255,255)
26910 print"人生の転機を見る"+chr$(13)
26920 color rgb(255,0,255)
26930 buf_total2=buf_total-(fix(buf_total/10)*10)
26940 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
26950 print year+buf_total2;"年";buf_total2;"歳"+chr$(13)
26960 print year+buf_total2+5;"年";buf_total2+5;"歳"+chr$(13)
26970 Member_List_Top:
26980 cls 3
26990 line (0,0)-(950,60),rgb(0,0,255),bf
27000 pen 5:line(0,0)-(947,57),rgb(255,255,255),b
27010 line (0,60)-(950,460),rgb(127,255,212),bf
27020 pen 5:LINE(0,63)-(953,463),rgb(255,0,255),b
27030 line (0,463)-(950,640),rgb(0,255,0),bf
27040 pen 5:line(0,457)-(953,643),rgb(0,0,0),b
27050 color rgb(255,255,255)
27060 print "●メンバーリスト トップ"+chr$(13)
27070 color rgb(255,0,255)
27080 print " 1.安斎流姓名判断　改名チェックリスト"+chr$(13)
27090 print " 2.安斎流姓名判断 相性メンバーリスト"+chr$(13)
27100 print " 3.九星姓名判断　陰陽配列"+chr$(13)
27110 print " 4.トップ画面に行く"+chr$(13)
27120 color rgb(0,0,0)
27130 print "番号を選んでください"+chr$(13)
27140 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:
27150 key_member_List:
27160 key$=input$(1)
27170 if key$=chr$(31) then
27180 select case (Select_No)
27190  case 0:
27200         Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(10,200),0,0:goto key_member_List:
27210 case 1:
27220         Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(10,300),0,0:goto key_member_List:
27230 case 2:
27240         Select_No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(10,400),0,0:goto key_member_List:
27250 case 3:
27260        Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(10,100),0,0:goto key_member_List:
27270 end select
27280 else
27290 if key$=chr$(13) then
27300 select case (Select_No)
27310 case 0:
27320       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Anzai_Rename_Entry_List:
27330 case 1:
27340      sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Anzai_Aisyou_Member_list_Top:
27350 case 2:
27360     sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kyusei_Inyou_Array_List:
27370 case 3:
27380     sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Main_Screen:
27390 end select
27400 else
27410 goto key_member_List:
27420 endif
27430 endif
27440 'if key=1 then goto Anzai_Rename_Entry_List:
27450 'if key=2 then goto Anzai_Aisyou_Member_list_Top:
27460 'if key=3 then goto Kyusei_Inyou_Array_List:
27470 'if key=4 then goto Main_Screen:
27480 'if key>4 or key=0 then goto Member_List_Top:
27490 '1.安斎流姓名判断改名リスト
27500 Anzai_Rename_Entry_List:
27510 if dir$("config/Anzai_Kikkyo/Anzai_Kikkyo_name_list.dat")="" then
27520 cls 3
27530 line (0,0)-(850,60),rgb(0,0,255),bf
27540 pen 5:line(0,0)-(853,63),rgb(255,255,255),b
27550 line (0,60)-(850,180),rgb(127,255,212),bf
27560 pen 5:line(0,63)-(853,183),rgb(255,0,255),b
27570 line (0,180)-(850,250),rgb(0,255,0),bf
27580 pen 5:line(0,183)-(853,253),rgb(0,0,0),b
27590 color rgb(255,255,255)
27600 cls :print"1.安斎流姓名判断改名リスト"+chr$(13)
27610 color rgb(255,0,255)
27620 print "登録データーは、ございません"+chr$(13)
27630 color rgb(0,0,0)
27640 print "エンターキーを押してください"+chr$(13)
27650 key$=Input$(1)
27660 if key$=chr$(13) then goto Main_Screen:
27670 else
27680 counts=0
27690 open "config/Anzai_Kikkyo_name_list.dat" for input as #2
27700 while eof(2) = 0
27710 line input #2,line$:counts = counts + 1
27720 wend
27730 close #2
27740 cls 3:
27750 line (0,0)-(900,60),rgb(0,0,255),bf
27760 pen 5:line(0,0)-(903,63),rgb(255,255,255),b
27770 line (0,60)-(900,180),rgb(127,255,212),bf
27780 pen 5:line(0,63)-(903,183),rgb(255,0,255),b
27790 line (0,180)-(900,250),rgb(0,255,0),bf
27800 pen 5:line(0,183)-(903,253),rgb(0,0,0),b
27810 color rgb(255,255,255)
27820 print "1.安斎流姓名判断改名リスト登録件数"+chr$(13)
27830 color rgb(255,0,255)
27840 print "登録件数:";counts;"件"+chr$(13)
27850 talk "登録件数は"+str$(counts)+"件です。"
27860 color rgb(0,0,0)
27870 print "エンターキーを押してください"+chr$(13)
27880 endif
27890 key$ = input$(1)
27900 if key$ = chr$(13) then goto Show_Entry_list:
27910 '
27920 '
27930 Show_Entry_list:
27940 open "config/Anzai_Kikkyo_name_list.dat" for input as #1
27950 for i=0 to 3 * counts - 1
27960 input #1,buf_lines$(i)
27970 next i
27980 close #1
27990 n=0:cls 3
28000 'グラフィック領域　ここから
28010 line (0,0)-(1300,60),rgb(0,0,255),bf
28020 pen 5:line(0,0)-(1303,63),rgb(255,255,255),b
28030 line (0,60)-(1300,100*counts+60),rgb(124,255,212),bf
28040 pen 5:line(0,63)-(1303,100*counts+60+3),rgb(255,0,255),b
28050 line (0,100*counts+60)-(1300,60+100*counts+120),rgb(0,255,0),bf
28060 pen 5:line(0,100*counts+60+3)-(1300,60+100*counts+120+3),rgb(0,0,0),b
28070 'グラフィック領域　ここまで
28080 color rgb(255,255,255)
28090 print "安斎流姓名判断　ネームリスト"+chr$(13)
28100 color rgb(255,0,255)
28110 'count:登録件数
28120 while n < counts
28130 print n+1;".";buf_lines$(3*n+0);",";buf_lines$(3*n+1);",";buf_lines$(3*n+2);chr$(13)
28140 n=n+1
28150 wend
28160 color rgb(0,0,0)
28170 print"エンターキーを押してください"+chr$(13)
28180 key$=INPUT$(1)
28190 if key$=chr$(13) then goto Main_Screen:
28200 Anzai_Aisyou_Member_list_Top:
28210 n=0
28220 if dir$("config/my_fortune_list_male.dat")="" then
28230 goto Empty_member_list:
28240 else
28250 goto show_Aisyou_member_List:
28260 endif
28270 '
28280 show_Aisyou_member_List:
28290 'ファイルを読み込む 1.登録件数、登録データーを読み込む
28300 '1.ファイルがない時　ファイルがありませんと表示する
28310 if dir$("config/Mydata/my_fortune_list_male.dat") = " " then
28320 '1.ファイルがない時、ファイルがありませんと表示させる
28330 'グラフィック描画領域 ここから
28340 line (0,0)-(1200,60),rgb(0,0,255),bf
28350 line (0,60)-(1200,273),rgb(127,255,212),bf
28360 line (0,270)-(1200,500),rgb(0,255,0),bf
28370 'グラフィック描画領域　ここまで
28380 print "ファイルがありません" + chr$(13)
28390 else
28400 'n:ファイルを開いて、登録件数の確認
28410 open "config/Mydata/my_fortune_list_male.dat" for input as #1
28420 while eof(1) = 0
28430 line input #1,lines$:n=n+1
28440 'input #1,buffLines$(n)
28450 'n = n + 1
28460 wend
28470 close #1
28480 'ファイルを開いて、配列にデーターを入力する
28490 open "config/Mydata/my_fortune_list_male.dat" for input as #2
28500 for i=0 to n*2-2
28510 input #2,buffLines$(i)
28520 next i
28530 close #2
28540 'ファイル読み込み　ここまで
28550 N=0
28560 'グラフィック領域　ここから
28570 cls 3
28580 line (0,0)-(1200,60),rgb(0,0,255),bf
28590 pen 5:line (0,0)-(1203,63),rgb(255,255,255),b
28600 line (0,60)-(1200,160),rgb(127,255,212),bf
28610 pen 5:line (0,63)-(1203,163),rgb(255,0,255),b
28620 line (0,160)-(1200,250),rgb(0,255,0),bf
28630 pen 5:line(0,163)-(1203,253),rgb(0,0,0),b
28640 'グラフィック領域　ここまで
28650 color rgb(255,255,255)
28660 print "安斎流姓名判断　相性メンバーリスト 登録件数"+chr$(13)
28670 color rgb(255,0,255)
28680 print "登録件数:";n;"件"+chr$(13)
28690 color rgb(0,0,0)
28700 print "エンターキーを押してください"+chr$(13)
28710 key$=input$(1)
28720 if key$ = chr$(13) then goto Aisyou_List:
28730 endif
28740 '安斎流姓名判断　相性リスト　メンバー表示
28750 Aisyou_List:
28760 cls 3:
28770 line (0,0)-(1300,60),rgb(0,0,255),bf
28780 pen 5:line (0,0)-(1303,63),rgb(255,255,255),b
28790 line (0,60)-(1300,260),rgb(127,255,212),bf
28800 pen 5:line(0,63)-(1303,263),rgb(255,0,255),b
28810 line (0,260)-(1300,470),rgb(0,255,0),bf
28820 line (0,263)-(1303,473),rgb(0,0,0),b
28830 color rgb(255,255,255)
28840 print "安斎流姓名判断 相性メンバーリスト 登録件数";count+1;"件目"+chr$(13)
28850 while n > count - 1
28860 color rgb(255,0,255)
28870 print buffLines$(2*count+0)+chr$(13)
28880 print buffLines$(2*count+1)+chr$(13)
28890 color rgb(0,0,0)
28900 print "エンターキー:前の画面"+chr$(13)
28910 print "スペースキー:次のリストへ行く"+chr$(13)
28920 key$=input$(1)
28930 if key$=chr$(13) then goto Member_List_Top:
28940 if key$=" " then
28950 count= ((count + 1) Mod n)
28960 if n = count then ui_msg"データーが一杯です.":count = ((count + 1) Mod n)
28970 goto Aisyou_List:
28980 endif
28990 wend
29000 '空っぽのときの表示
29010 Empty_member_list:
29020 cls 3
29030 line(0,0)-(850,60),rgb(0,0,255),bf
29040 pen 5:line(0,0)-(853,183),rgb(255,255,255),b
29050 line(0,60)-(850,180),rgb(127,255,212),bf
29060 pen 5:line(0,63)-(853,183),rgb(255,0,255),b
29070 line (0,180)-(850,250),rgb(0,255,0),bf
29080 pen 5:line(0,183)-(853,253),rgb(0,0,0),b
29090 color rgb(255,255,255)
29100 print "安斎流姓名判断　相性メンバーリスト" + chr$(13)
29110 color rgb(255,0,255)
29120 print "登録メンバーはいません" + chr$(13)
29130 color rgb(0,0,0)
29140 print"エンターキーを押してください" + chr$(13)
29150 key$ = input$(1)
29160 if key$=chr$(13) then goto Main_Screen:
29170 Remove_MemberList:
29180 cls 3:
29190 line (0,0)-(1200,60),rgb(0,0,255),bf
29200 line (0,3)-(1197,57),rgb(255,255,255),b
29210 line (0,60)-(1202,362),rgb(127,255,212),bf
29220 line (0,57)-(1197,357),rgb(255,0,255),b
29230 line (0,357)-(1197,557),rgb(0,255,0),bf
29240 line(0,360)-(1200,560),rgb(0,0,0),b
29250 color rgb(255,255,255)
29260 print"メンバーリストの編集(安斎流姓名判断)" + chr$(13)
29270 color rgb(255,0,255)
29280 print " 1.改名チェックリストの編集" + chr$(13)
29290 print " 2.相性メンバーリストの編集" + chr$(13)
29300 print " 3.トップ画面へ行く" + chr$(13)
29310 color rgb(0,0,0)
29320 print"番号を選んでください" + chr$(13)
29330 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_put 0,(10,100),0,0
29340 key10:
29350 key$ = input$(1)
29360 if key$=chr$(31) then
29370 select case (Select_No)
29380 case 0:
29390       Select_No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),0,0:goto key10:
29400 case 1:
29410       Select_No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_put 2,(10,300),0,0:goto key10:
29420 case 2:
29430       Select_No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_put 0,(10,100),0,0:goto key10:
29440 end select
29450  else
29460 if key$=chr$(13) then
29470 select case (Select_No)
29480   case 2:
29490          Select_No=0:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Main_Screen:
29500 end select
29510 endif
29520 endif
29530 'Input"番号:",No
29540 'if No = 0 or No > 3 then goto Remove_MemberList:ui_msg "番号をもう一度、入れ直してください "
29550 'if No=1 then
29560 If dir$("config/Anzai_Kikkyo/Anzai_Kikkyo_name_list.dat") = "" then
29570 ui_msg"そのファイルはありません":goto Remove_MemberList:
29580 else
29590 kill "config/Anzai_Kikkyo/Anzai_Kikkyo_name_list.dat":ui_msg"改名チェックリストを削除しました":goto Remove_MemberList:
29600 endif
29610 'endif
29620 if No=2 then
29630 if dir$("config/Mydata/my_fortune_list_male.dat")="" then
29640 ui_msg"そのファイルはありません":goto Remove_MemberList:
29650 else
29660 kill "config/my_fortune_list_male.dat":ui_msg"相性メンバーリストを削除しました":goto Remove_MemberList:
29670 endif
29680 endif
29690 'if No=3 then goto Main_Screen:
29700 '九星姓名判断 1.陰陽配列の保存
29710 Save_Inyo_array:
29720 open "config/Inyo_list/Inyo_array.dat" for append as #1
29730 print #1,"名前:";name$ + name2$;",陰陽配列:";buffer$ + buffer2$
29740 close #1
29750 ui_msg "保存しました"
29760 '九星姓名判断 陰陽配列 List
29770 Kyusei_Inyou_Array_List:
29780 cls 3
29790 'グラフィック領域　ここから
29800 Line (0,0)-(1200,60),rgb(0,0,255),bf
29810 line (0,0)-(1197,57),rgb(255,255,255),b
29820 line (0,60)-(1203,273),rgb(127,255,212),bf
29830 line (0,63)-(1200,270),rgb(255,0,255),b
29840 line (0,270)-(1200,500),rgb(0,255,0),bf
29850 line (0,273)-(1203,503),rgb(0,0,0),b
29860 'グラフィック描画領域　ここまで
29870 'ファイル読み込み  ここから
29880 if dir$("config/Inyo_list/Inyo_array.dat")="" then
29890 mode=0
29900 else
29910 mode=1
29920 '登録件数を求める
29930 open "config/Inyo_list/Inyo_array.dat" for input as #1
29940 bcount=0
29950 while eof(1)=0
29960 line input #1,bufLine$:bcount = bcount + 1
29970 wend
29980 close #1
29990 open "config/Inyo_list/Inyo_array.dat" for input as #2
30000 for i=0 to 2 * bcount - 1
30010 input #2,count1$(i)
30020 next i
30030 close #2
30040 endif
30050 'ファイル読み込み  ここまで
30060 '1行目　文字色　白
30070 '1.ファイルがない時
30080 color rgb(255,255,255)
30090 print "九星姓名判断 陰陽配列　リスト" + chr$(13)
30100 if mode=0 then
30110 color rgb(255,0,255)
30120 print "ファイルがありません"+chr$(13)
30130 else
30140 '2.ファイルが有る時
30150 color rgb(255,0,255)
30160 'bcount:登録件数
30170 select case bcount
30180 '登録件数が一件のとき
30190 case 1:
30200 print count1$(0) + chr$(13)
30210 print count1$(1) + chr$(13)
30220 color rgb(0,0,0)
30230 print "エンターキー:トップへ行く" + chr$(13)
30240 key$ = input$(1)
30250 if key$ = chr$(13) then goto Main_Screen:
30260 '登録件数が2件以上の時
30270 case else:
30280 n = 0
30290 while (1)
30300 l=n mod bcount
30310 if l => 0 then
30320 '登録件数がn件のときの
30330 cls
30340 color rgb(255,255,255)
30350 print"九星姓名判断 陰陽配列 リスト"+chr$(13)
30360 color rgb(255,0,255)
30370 print count1$(2*l + 0) + chr$(13)
30380 'l = l + 1
30390 print count1$(2*l + 1) + chr$(13)
30400 print"スペースキー:次へ行く" + chr$(13)
30410 print"エンターキー:トップへ行く" + chr$(13)
30420 key$ = input$(1)
30430 if key$ = " " then n = (n + 1) Mod bcount
30440 if key$ = Chr$(13) then goto Main_Screen:
30450 endif
30460 wend
30470 end Select
30480 endif
