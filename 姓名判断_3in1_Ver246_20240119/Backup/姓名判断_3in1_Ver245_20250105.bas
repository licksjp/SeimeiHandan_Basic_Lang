100 '**************************************************
110 '初期設定項目                                     *
120 'メモリー定義                                     *
130 '2020.04.02開発再開 Ver176--Ver2.31:2021.10.1 一旦開発終了  *
140 '**************************************************
150 '**************************************************
160 'バージョン履歴                                   *
170 'Version1.77:Date 2020.04.0801                    *
180 'Version1.77:Date:2020.04.08.05                   *
190 'Version1.78:Date:2020.04.09.01                   *
200 'Version1.81:Date:2020.04.12.01                   *
210 'Version1.82:Date:2020.04.13.01                   *
220 'Version1.83:Date:2020.04.14.01                   *
230 'Version1.84:Date:2020.04.15.01                   *
240 'Version1.85:Date:2020.04.16.01                   *
250 'Version1.86:Date:2020.04.17.01                   *
260 'Version1.87:Date:2020.04.21.01                   *
270 'Version1.88:Date:2020.04.25.01                   *
280 'Version1.89:Date:2020.04.26.01                   *
290 'Version1.90:Date:2020.04.27.01(2 in 1開発終了)   *
300 '**************************************************
310 'Version1.91:(新しい流派を追加 3 in １ 開発開始):Date2020.05.01*
320 'Version1.92:Date:2020.05.02:霊遺伝姓名学追加   　*
330 'Version1.93:Date:2020.05.03                      *
340 'Version1.94:Date:2020.05.05                      *
350 'Version1.95:Date:2020.05.07                      *
360 'Version1.96:Date:2020.05.09                      *
370 'Version1.97:Date:2020.05.12                      *
380 'Version1.98:Date:2020.05.13                      *
390 'Version1.99:Date:2020.05.17                      *
400 'Version2.00:Date:2020.05.19                      *
410 'Version2.01:Date:2020.05.20                      *
420 'Version2.02:Date:2020.05.21                      *
430 'Version2.03:Date:2020.05.22                      *
440 'Version2.04:Date:2020.05.23                      *
450 'Version2.05:Date:2020.05.24                      *
460 'Version2.06:Date:2020.05.26                      *
470 'Version2.07:Date:2020.05.27                      *
480 'Version2.08:Date:2020.05.28                      *
490 'Version2.09:Date:2020.05.30                      *
500 'Version2.11:Date:2020.06.02                      *
510 'Version2.12:Date:2020.06.03                      *
520 'Version2.13:Date:2020.06.07                      *
530 'Version2.14:Date:2020.06.08                      *
540 'Version2.15:Date:2020.06.09                      *
550 'Version2.16:Date:2020.06.10                      *
560 'Version2.17:Date:2020.06.12                      *
570 'Version2.18:Date:2020.06.15                      *
580 'Version2.19:Date:2020.06.16                      *
590 'Version2.20:Date:2020.06.17                      *
600 'Version2.27:Date:2020.08.29                      *
610 'Version2.28:Date:2020.08.30                      *
620 'Version2.29:Date:2020.08.31                      *
630 'Version2.30:Date:2020.09.02                      *
640 'Version2.31:Date:2021.10.01                      *
650 'Version2.34:Date:2024.10.20                      *
660 'Version2.35:Date:2024.10.27                      *
670 'Version2.36:Date:2024.11.03                      *
680 'Version2.37:Date:2024.11.10                      *
690 'Version2.38:Date:2024.11.17                      *
700 'Version2.39:Date:2024.11.24                      *
710 'Version2.40:Date:2024.12.01                      *
720 'Version2.41:Date:2024.12.08                      *
730 'Version2.42:Date:2024.12.15                      *
740 'Version2.43:Date:2024.12.22                      *
750 'Version2.44:Date:2024.12.29                      *
760 'Version2.45:Date:2025.01.05                      *
770 '*****************************************************
780 '設定ファイル　漢字文字データ                     　 *              *
790 'Version:Mojidata20200411.dat Date:20200411          *
800 'Version:Mojidata20200415.dat Date:20200415          *
810 'Version:Mojidata20200506.dat Date:20200506          *
820 'Version:Mojidata20200513.dat Date:20200513          *
830 'Version:Mojidata20200516.dat Date:20200516          *
840 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
850 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
860 '*****************************************************
870 '* 開発再開　2024.9.20　Ver2.33                      *
880 '* 開発再開 Date:2024.09.20                          *
890 '*************************************************
900 '新機能
910 'Date:2020.05.27
920 'Parsonal_data.datに個人データーを保存機能追加
930 '*****************************************************
940 'メモリー確保 文字領域,数値データー                  *
950 '*****************************************************
960 clear 4*4000,4*1000000
970 '*****************************************************
980 'Screen 定義                                         *
990 '*****************************************************
1000 Screen 1,1,1,1
1010 '*****************************************************
1020 'Sprite 定義                                         *
1030 '****************************************************
1040 'フォルダを変数にまとめる
1050 '****************************************************
1060 Gazo$ = "config/gazo/"
1070 '****************************************************
1080 Select$ = "selection.png"
1090 '^&**************************************************
1100 gload Gazo$ + Select$,1,10,100
1110 gload Gazo$ + Select$,1,10,200
1120 gload Gazo$ + Select$,1,10,300
1130 gload Gazo$ + Select$,1,10,400
1140 gload Gazo$ + Select$,1,10,500
1150 sp_def 0,(10,100),32,32
1160 sp_def 1,(10,200),32,32
1170 sp_def 2,(10,300),32,32
1180 sp_def 3,(10,400),32,32
1190 sp_def 4,(10,500),32,32
1200 '****************************************************
1210 Parsonal_data$ = "Config/Parsonal_data/"
1220 '*****************************************************
1230 '改名チェック変数                                   *
1240 '****************************************************
1250 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1260 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1270 '*****************************************************
1280 'キーボードフラグ                                    *
1290 '0:キーボード非表示                                  *
1300 '1:キーボード表示                                    *
1310 '*****************************************************
1320 keyboard_flag = 0
1330 '*****************************************************
1340 '性別の選択用変数                                    *
1350 '*****************************************************
1360 dim sex_type$(2)
1370 '*****************************************************
1380 '相性占い　設定項目 ここから                         *
1390 '*****************************************************
1400 count=0:line_count=0
1410 dim buffer_Aisyou_type$(10,10)
1420 dim buffer_Kaimei_data_name$(10)
1430 '*****************************************************
1440 '改名チェックの選択肢の変数                          *
1450 '*****************************************************
1460 '1.フォルダ
1470 '******************************************************
1480 KANJI_DATA$ = "config/kanji_data"
1490 '*****************************************************
1500 '2.ファイル
1510 '*****************************************************
1520 MOJIDATA$ = "Mojidata_ReiIden20200911.png"
1530 '*****************************************************
1540 SELECT_LIST_FOLDER$="config/Selection/"
1550 '*****************************************************
1560 SELECT_LIST_FILE$ = "Selection.dat"
1570 '*****************************************************
1580 'FULL PASS:./config/Selection/Selection.dat
1590 '*****************************************************
1600 dim select$(3)
1610 open SELECT_LIST_FOLDER$ + SELECT_LIST_FILE$ for input as #2
1620 for i=0 to 2
1630 input #2,select$(i)
1640 next i
1650 close #2
1660 'select$(0)="改名リストに追加する"
1670 'select$(1)="改名リストに追加しない"
1680 'select$(2)="トップ画面に行く"
1690 '*****************************************************
1700 '総数を出す変数 改名チェック変数                     *
1710 'dim buffer_total$                                   *
1720 '1.理解し合える最良のカップル                        *
1730 '*****************************************************
1740 dim buf_good_couple1(20)
1750 dim buf_good_couple2(20)
1760 'dim buf_good_couple1$
1770 'Dim buf_good_couple2$
1780 '*****************************************************
1790 '2.互いに自然体でつきあえるカップル                  *
1800 '*****************************************************
1810 dim buf_natural_couple1(20)
1820 dim buf_natural_couple2(20)
1830 'dim buf_natural_couple1$
1840 'dim buf_natural_couple2$
1850 '**************************************************
1860 '3.男性にとって居心地の良いカップル               *
1870 '**************************************************
1880 dim buf_good_for_man1(20)
1890 dim buf_good_for_man2(20)
1900 'dim buf_good_for_man1$
1910 'dim buf_good_for_man2$
1920 '*****************************************************
1930 '4.女性にとって居心地の良い相性                      *
1940 '*****************************************************
1950 dim buf_good_for_woman1(20)
1960 dim buf_good_for_woman2(20)
1970 'dim buf_good_for_woman1$
1980 'dim buf_good_for_woman2$
1990 '*****************************************************
2000 '5.恋愛経験を重ねた後なら愛を育める                  *
2010 '*****************************************************
2020 dim buf_short_of_experience1(20)
2030 dim buf_short_of_experience2(20)
2040 'dim buf_short_of_experience1$
2050 'dim buf_short_of_experience2$
2060 '*****************************************************
2070 '6.結婚への発展が困難なカップル                      *
2080 '*****************************************************
2090 dim buf_difficult_for_couple1(20)
2100 dim buf_difficult_for_couple2(20)
2110 'dim buf_difficult_for_couple1$
2120 'dim buf_difficult_for_couple2$
2130 '*****************************************************
2140 '7.愛し方にズレが出てくる二人                        *
2150 '*****************************************************
2160 dim buf_difference_of_love1(20)
2170 dim buf_difference_of_love2(20)
2180 'dim buf_difference_of_love1$
2190 'dim buf_difference_of_love2$
2200 '*****************************************************
2210 '相性占い　設定項目　ここまで
2220 '*****************************************************
2230 '8.互いの価値観が噛み合わない相性 ここから           *
2240 '*****************************************************
2250 dim buf_difference_of_KachiKan1(20)
2260 dim buf_difference_of_KachiKan2(20)
2270 'dim buf_difference_of_KachiKan1$
2280 'dim buf_difference_of_KachiKan2$
2290 '*****************************************************
2300 '8.互いに価値観が噛み合わない相性 ここまで           *
2310 '*****************************************************
2320 '相性診断　相性パターン結果　ここから
2330 dim Result_Aisyou_type$(8)
2340 '*****************************************************
2350 '相性診断 相性パターン結果 ここまで                  *
2360 '*****************************************************
2370 '2019/04/07 姓名判断アプリ 作成開始                  *
2380 '姓名判断　 名前の総数での吉凶を調べる               *
2390 '*****************************************************
2400 buf_count=0:buffer_count=0:count=0:buffer=0
2410 '*****************************************************
2420 '合計文字数                                          *
2430 '*****************************************************
2440 totalmoji = 0
2450 dim buf_Input_data$(10),buf_Input_data2$(10)
2460 dim bufer_name$(10),bufer_name2$(10)
2470 dim buf_Input_name$(10),buf_Input_name2$(10)
2480 '*****************************************************
2490 '定数文字1画〜27画                                   *
2500 'ファイルから各画数を読み込んで代入する。            *
2510 '*****************************************************
2520 '1行目だけ読み込む                                   *
2530 '*****************************************************
2540 KANJI_DATA$ = "config/Kanji_data/"
2550 '*****************************************************
2560 MOJIDATA$ = "Mojidata_ReiIden20200911.dat"
2570 '*****************************************************
2580 open KANJI_DATA$ + MOJIDATA$ for input as #2
2590 for i=0 to 26
2600 input #2,buf_lines$(i)
2610 next i
2620 close #2
2630 '*****************************************************
2640 Moji_1 = val(buf_lines$(0)):Moji_2 = val(buf_lines$(1)):Moji_3 = val(buf_lines$(2)):Moji_4 = val(buf_lines$(3)):Moji_5 = val(buf_lines$(4)):Moji_6 = val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2650 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2660 '1画
2670 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2680 '2画
2690 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2700 '3画
2710 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2720 '4画
2730 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2740 '5画
2750 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2760 '6画
2770 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2780 '7画
2790 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2800 '8画
2810 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2820 '9画
2830 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2840 '10画
2850 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2860 '11画
2870 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2880 '12画
2890 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2900 '13画
2910 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2920 '14画
2930 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2940 '15画
2950 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2960 '16画
2970 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2980 '17画
2990 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
3000 '18画
3010 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
3020 '19画
3030 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
3040 '20画
3050 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
3060 '21画
3070 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
3080 '22画
3090 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
3100 '23画
3110 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
3120 '24画
3130 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
3140 '25画
3150 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
3160 '26画
3170 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
3180 '27画
3190 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
3200 dim Moji_data$(Moji_total+27+27)
3210 '******************************************************
3220 'dim bufmoji$(10),Input_data$(10)                     *
3230 '１画の文字   サイズ:21+2(漢字)                       *
3240 '******************************************************
3250 dim buf_char_hiragana1$(Moji_1)
3260 '******************************************************
3270 '2画の文字  サイズ 58+14=72(漢字)                     *
3280 '******************************************************
3290 dim buf_char_hiragana2$(Moji_2)
3300 '******************************************************
3310 '3画の文字 サイズ:48+29=77(漢字)                      *
3320 '******************************************************
3330 dim buf_char_hiragana3$(Moji_3)
3340 '******************************************************
3350 '4画の文字 サイズ:29+51=80(漢字)                      *
3360 '******************************************************
3370 dim buf_char_hiragana4$(Moji_4)
3380 '******************************************************
3390 '５画の文字  サイズ:18+59=77(漢字)                    *
3400 '******************************************************
3410 dim buf_char_hiragana5$(Moji_5)
3420 '******************************************************
3430 '6画の文字  サイズ:79(漢字)                           *
3440 '******************************************************
3450 dim buf_char_hiragana6$(Moji_6)
3460 '******************************************************
3470 '7画の文字  サイズ:88(漢字)                           *
3480 '******************************************************
3490 dim buf_char_hiragana7$(Moji_7)
3500 '******************************************************
3510 '8画の文字                                            *
3520 '******************************************************
3530 dim buf_char_hiragana8$(Moji_8)
3540 '******************************************************
3550 '9画の文字                                            *
3560 '******************************************************
3570 dim buf_char_hiragana9$(Moji_9)
3580 '******************************************************
3590 '10画の文字 98文字                                    *
3600 '******************************************************
3610 dim buf_char_hiragana10$(Moji_10)
3620 '******************************************************
3630 '11画の文字                                           *
3640 '******************************************************
3650 dim buf_char_hiragana11$(Moji_11)
3660 '******************************************************
3670 '12画の文字                                           *
3680 '******************************************************
3690 dim buf_char_hiragana12$(Moji_12)
3700 '******************************************************
3710 '13画の文字 81文字                                    *
3720 '******************************************************
3730 dim buf_char_hiragana13$(Moji_13)
3740 '******************************************************
3750 '14画の文字                                           *
3760 '******************************************************
3770 dim buf_char_hiragana14$(Moji_14)
3780 '******************************************************
3790 '15画の文字                                           *
3800 '******************************************************
3810 dim buf_char_hiragana15$(Moji_15)
3820 '******************************************************
3830 '16画の文字                                           *
3840 '******************************************************
3850 dim buf_char_hiragana16$(Moji_16)
3860 '******************************************************
3870 '17画の文字                                           *
3880 '******************************************************
3890 dim buf_char_hiragana17$(Moji_17)
3900 '******************************************************
3910 '18画の文字                                           *
3920 '******************************************************
3930 dim buf_char_hiragana18$(Moji_18)
3940 '19画の文字
3950 dim buf_char_hiragana19$(Moji_19)
3960 '20画の文字
3970 dim buf_char_hiragana20$(Moji_20)
3980 '21画の文字
3990 dim buf_char_hiragana21$(Moji_21)
4000 '22画の文字
4010 dim buf_char_hiragana22$(Moji_22)
4020 '23画の文字
4030 dim buf_char_hiragana23$(Moji_23)
4040 '24画の文字
4050 dim buf_char_hiragana24$(Moji_24)
4060 '25画の文字
4070 dim buf_char_hiragana25$(Moji_25)
4080 dim buf_char_hiragana26$(Moji_26)
4090 dim buf_char_hiragana27$(Moji_27)
4100 '結果表示1　吉凶データー 81パターン
4110 dim buf_Kikkyo$(81)
4120 '結果表示２
4130 '安斎流姓名判断 吉凶  1.地運
4140 dim buf_Kikkyo_Anzai_chiunn$(70)
4150 '安斎流姓名判断　　吉凶  2.人運
4160 dim buf_Kikkyo_Anzai_jinunn$(69)
4170 '安斎流姓名判断 吉凶 3.外運
4180 'dim buf_Kikkyo_Anzai_gaiunn$(70)
4190 '安斎流姓名判断 吉凶　　4.総運
4200 dim buf_Kikkyo_Anzai_total$(80)
4210 '霊遺伝姓名学　変数
4220 A=0
4230 B=0
4240 C=0
4250 D=0
4260 '1.先祖運
4270 buffer_senzo=0
4280 '2.性格運
4290 buffer_seikaku=0
4300 '3.愛情運
4310 buffer_Aijyou=0
4320 '4.行動運
4330 buffer_Kouzou=0
4340 '1-1.先祖運　和数
4350 Senzo_wasu=0
4360 '1-2.先祖運　生数
4370 Senzo_seisu=0
4380 '2-1.性格運 和数
4390 Seikaku_wasu=0
4400 '2-2.性格運 生数
4410 Seikaku_seisu=0
4420 '3-1.愛情運 和数
4430 Aijyou_wasu=0
4440 '3-2.愛情運 生数
4450 Aijyou_seisu=0
4460 '4-1 行動運 和数
4470 Koudo_wasu=0
4480 '4-2 行動運 生数
4490 Koudo_seisu=0
4500 'データー読み込み　ここから
4510 'データー読み込み　1.ひらがな
4520 '1画の文字   6文字 23文字
4530 open KANJI_DATA$ + MOJIDATA$ for input as #1
4540 '全ファイルを読み込む
4550 for i = 0 to 26 + Moji_total + 27
4560 input #1,Moji_data$(i)
4570 next i
4580 close #1
4590 '全ファイル読み込み　ここまで
4600 for i = 27+1 to (Moji_1)+27+1
4610 '1画の文字にデーターをコピーする
4620 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4630 next i
4640 '2画の文字    98文字
4650 for i = Moji_Min_2  to (Moji_Max_2)
4660 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4670 next i
4680 '3文字の文字    77文字
4690 for i = Moji_Min_3  to (Moji_Max_3)
4700 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4710 next i
4720 '4文字の文字   80文字
4730 for i = (Moji_Min_4)  to (Moji_Max_4)
4740 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4750 next i
4760 '5文字の文字 77文字
4770 for i = Moji_Min_5 to (Moji_Max_5)
4780 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4790 next i
4800 '6文字の文字 79文字
4810 for i = Moji_Min_6  to Moji_Max_6
4820 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4830 next i
4840 '7文字の文字 170文字
4850 for i = Moji_Min_7 to Moji_Max_7
4860 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4870 next i
4880 '8画の文字 120文字
4890 for i = Moji_Min_8 to Moji_Max_8
4900 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4910 next i
4920 '9画の文字  103文字
4930 for i = Moji_Min_9 to Moji_Max_9
4940 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4950 next i
4960 '10画の文字 285文字
4970 for i = Moji_Min_10 to (Moji_Max_10)
4980 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4990 next i
5000 '11画の文字
5010 for i = Moji_Min_11 to Moji_Max_11
5020 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
5030 next i
5040 '12画の文字
5050 for i = Moji_Min_12 to Moji_Max_12
5060 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
5070 next i
5080 '13画の文字 81
5090 for i = Moji_Min_13 to Moji_Max_13
5100 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
5110 next i
5120 '14画の文字 66
5130 for i = Moji_Min_14 to Moji_Max_14
5140 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
5150 next i
5160 '15画の文字 59
5170 'for i = Moji_Min_15 to (Moji_Max_15) - 1
5180 for i=Moji_Min_15 to  Moji_Max_15
5190 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
5200 next i
5210 '16画の文字 44
5220 for i=Moji_Min_16 to Moji_Max_16
5230 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
5240 next i
5250 '17画の文字
5260 for i = Moji_Min_17 to Moji_Max_17
5270 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
5280 next i
5290 '18画の文字
5300 for i = Moji_Min_18 to Moji_Max_18
5310 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
5320 next i
5330 '19画の文字 17文字
5340 for i = Moji_Min_19 to Moji_Max_19
5350 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
5360 next i
5370 '20 画の文字 13文字
5380 for  i = Moji_Min_20 to Moji_Max_20
5390 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
5400 NEXT i
5410 '21画の文字 6
5420 for i = Moji_Min_21 to (Moji_Max_21)
5430 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
5440 next i
5450 '22 画の文字 4
5460 for i = Moji_Min_22 to Moji_Max_22
5470 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
5480 next i
5490 '23画の文字  3文字
5500 for i = Moji_Min_23 to Moji_Max_23
5510 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5520 next i
5530 '24画の文字  3文字
5540 for i = Moji_Min_24 to Moji_Max_24
5550 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5560 next i
5570 '25 画の文字 4
5580 for i = Moji_Min_25 to Moji_Max_25
5590 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5600 next i
5610 '26画の文字  3文字
5620 for i = Moji_Min_26 to Moji_Max_26
5630 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5640 next i
5650 '27画の文字  3文字
5660 for i = Moji_Min_27 to Moji_Max_27
5670 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5680 next i
5690 '吉凶データー読み込み
5700 '*********************************************************
5710 'フォルダ
5720 '*********************************************************
5730 'ファイル
5740 '*********************************************************
5750 'FULL PATH:"./config/Kikkyo_data/Kikkyo_data.dat"
5760 '*********************************************************
5770 KIKKYO_DATA_FOLDER$ = "config/Kikkyo_data/"
5780 '*********************************************************
5790 KIKKYO_DATA_FILE$ = "Kikkyo_data.dat"
5800 '*********************************************************
5810 open KIKKYO_DATA_FOLDER$ + KIKKYO_DATA_FILE$ for input as #1
5820 for i=0 to 80
5830 input #1,buf_Kikkyo$(i+1)
5840 next i
5850 close #1
5860 '***********************************************************
5870 'FULL PATH:"config/Kikkyo_data/Kikkyo_data.data"
5880 '******************************************************
5890 ANZAI_KIKKYO_CHIUNN_FILE$ = "Anzai_Kikkyo_chiunn.dat"
5900 '******************************************************
5910 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_CHIUNN_FILE$ for input as #2
5920 for m=0 to 69
5930 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5940 next m
5950 close #2
5960 '******************************************************
5970 'FULL PAT:"./config/Kikkyo_data/Kikkyo_jiunn.dat"
5980 '******************************************************
5990 KIKKYO_JINUNN$ = "Anzai_Kikkyo_Jinunn.dat"
6000 '******************************************************
6010 open KIKKYO_DATA_FOLDER$ + KIKKYO_JINUNN$ for input as #3
6020 for i=1 to 70
6030 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
6040 next i
6050 close #3
6060 '**************************************************************
6070 'FULL PATH="./config/Kikkyo_data/Anzai_Kikkyo_Total.dat"
6080 '      ====>   KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$
6090 '**************************************************************
6100 'KIKKYO_DATA_FOLDER$ = "./config/Kikkyo_data/" (共通フォルダ)
6110 '**************************************************************
6120 ANZAI_KIKKYO_FILE$ = "Anzai_Kikkyo_Total.dat"
6130 '**************************************************************
6140 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$ for input as #4
6150 for i=0 to 79
6160 input #4,buf_Kikkyo_Anzai_total$(i)
6170 next i
6180 close #4
6190 '****************************************************
6200 '1.理解し合える最良のカップル　ここから           　*
6210 '****************************************************
6220 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6230 'GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6240 'FULL PATH="config/Anzai_Aisyou/Good_Couple1.dat"
6250 '****************************************************
6260 ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6270 GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6280 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE1_FILE$ for input as #1
6290 for i=0 to 19
6300 input #1,buf_good_couple1$
6310 buf_good_couple1(i) = val(buf_good_couple1$)
6320 next i
6330 close #1
6340 '********************************************************
6350 'FULL PATH = "config/Anzai_Aisyou/Good_Couple2.dat"
6360 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6370 'GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6380 '********************************************************
6390 GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6400 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE2_FILE$ for input as #1
6410 for j=0 to 19
6420 input #1,buf_good_couple2$
6430 buf_good_couple2(j) = val(buf_good_couple2$)
6440 next j
6450 close #1
6460 '*****************************************************
6470 '1.理解し合える最良のカップル ここまで                                   *
6480 '*****************************************************
6490 '*****************************************************
6500 '2.互いに自然体でつきあえる二人　ここから                               *
6510 '*****************************************************
6520 '*****************************************************
6530 'FULL PATH = "config/Anzai_Aisyou/Natural_Couple1.dat"
6540 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6550 'NATURAL_COUPLE_FILE$ ="Natural_Couple1.dat"
6560 'NATURAL_COUPLE2_FILE$="Natural_Couple2.dat"
6570 '*****************************************************
6580 NATURAL_COUPLE_FILE$ = "Natural_Couple1.dat"
6590 NATURAL_COUPLE2_FILE$ = "Natural_Couple2.dat"
6600 '*****************************************************
6610 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE_FILE$ for input as #1
6620 for i=0 to 19
6630 input #1,buf_natural_couple1$
6640 buf_natural_couple1(i) = val(buf_natural_couple1$)
6650 next i
6660 close #1
6670 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE2_FILE$ for input as #1
6680 for j=0 to 19
6690 input #1,buf_natural_couple2$
6700 buf_natural_couple2(j) = val(buf_natural_couple2$)
6710 next j
6720 close #1
6730 '*****************************************************
6740 '2.互いに自然体でつきあえる二人　ここまで                               *
6750 '*****************************************************
6760 '3.男性にとって居心地の良い相性                                      *
6770 '*****************************************************
6780 '******************************************************
6790 'FULL PATH="config/Anzai_Aisyou/Good_for_man1.dat"
6800 'FULL PATH="config/Anzai_Aisyou/Good_for_man2.dat"
6810 'GOOD_FOR_MAN_FILE$="God_for_man1.dat"
6820 GOOD_FOR_MAN1_FILE$ = "Good_for_man1.dat"
6830 GOOD_FOR_MAN2_FILE$ = "Good_for_man2.dat"
6840 '******************************************************
6850 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN1_FILE$ for input as #1
6860 for i=0 to 19
6870 input #1,buf_good_for_man1$
6880 buf_good_for_man1(i) = val(buf_good_for_man1$)
6890 next i
6900 close #1
6910 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN2_FILE$ for input as #1
6920 for j=0 to 19
6930 input #1,buf_good_for_man2$
6940 buf_good_for_man2(j) = val(buf_good_for_man2$)
6950 next j
6960 close #1
6970 '******************************************************
6980 '3.男性にとって居心地の良いカップル             　　                   　*
6990 '******************************************************
7000 '4.女性にとって居心地の良いカップル                                   *
7010 '******************************************************
7020 'FULL PATH = "config/Anzai_Aisyou/Good_for_woman1.dat"
7030 'GOOD_FOR_WOMAN1_FILE$="Good_for_woman1.dat"
7040 'GOOD_FOR_WOMAN2_FILE$="Good_for_woman2.dat"
7050 GOOD_FOR_WOMAN1_FILE$ = "Good_for_woman1.dat"
7060 GOOD_FOR_WOMAN2_FILE$ = "Good_for_woman2.dat"
7070 '*******************************************************
7080 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN1_FILE$ for input as #1
7090 for i=0 to 19
7100 input #1,buf_good_for_woman1$
7110 buf_good_for_woman1(i) = val(buf_good_for_woman1$)
7120 next i
7130 close #1
7140 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN2_FILE$ for input as #1
7150 for j=0 to 19
7160 input #1,buf_good_for_woman2$
7170 buf_good_for_woman2(j) = val(buf_good_for_woman2$)
7180 next j
7190 close #1
7200 '******************************************************
7210 '4.女性にとって居心地の良い相性                   　                　*
7220 '******************************************************
7230 '5.恋愛経験を重ねた後なら愛を育める                                  　*
7240 '******************************************************
7250 'SHORT_OF_EXPERIENCE1_FILE$ = "Short_of_experience1.dat"
7260 'SHORT_OF_EXPERIENCE2_FILE$ ="Short_of_experience2.dat"
7270 '******************************************************
7280 SHORT_OF_EXPERIENCE1_FILE$ = "Short_of_experience1.dat"
7290 SHORT_OF_EXPERIENCE2_FILE$ = "Short_of_experience2.dat"
7300 '*******************************************************
7310 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE1_FILE$ for input as #1
7320 for i=0 to 19
7330 input #1,buf_short_of_experience1$
7340 buf_short_of_experience1(i) = val(buf_short_of_experience1$)
7350 next i
7360 close #1
7370 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE2_FILE$ for input as #1
7380 for j=0 to 19
7390 input #1,buf_short_of_experience2$
7400 buf_short_of_experience2(j) = val(buf_short_of_experience2$)
7410 'buf_short_of_experience2(j)=val(buf_short_of_experience2$(j))
7420 next j
7430 close #1
7440 '******************************************************
7450 '5 恋愛経験を重ねた後なら愛を育める                   *
7460 '******************************************************
7470 '6.結婚への発展が困難なカップル  ここから             *
7480 '**********************************************************
7490 'DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7500 'DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7510 '**********************************************************
7520 DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7530 DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7540 '**********************************************************
7550 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE1_FILE$ for input as #1
7560 for i=0 to 19
7570 input #1,buf_difficult_for_couple1$
7580 buf_difficult_for_couple1(i) = val(buf_difficult_for_couple1$)
7590 next i
7600 close #1
7610 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE2_FILE$ for input as #1
7620 for j=0 to 19
7630 input #1,buf_difficult_for_couple2$
7640 buf_difficult_for_couple2(j) = val(buf_difficult_for_couple2$)
7650 next j
7660 close #1
7670 '******************************************************
7680 '6.結婚への発展が困難なカップル  ここまで             *
7690 '******************************************************
7700 '7.愛し方にズレが出る二人 ここから                    *
7710 '**********************************************************
7720 'FULL PATH = "config/Anzai_Aisyou/Differece_of_love1.dat"
7730 'DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7740 'DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7750 '***********************************************************
7760 DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7770 DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7780 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE1_FILE$ for input as #1
7790 for i=0 to 19
7800 input #1,buf_difference_of_love1$
7810 buf_difference_of_love1(i) = val(buf_difference_of_love1$)
7820 next i
7830 close #1
7840 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE2_FILE$ for input as #1
7850 for j=0 to 19
7860 input #1,buf_difference_of_love2$
7870 buf_difference_of_love2(j) = val(buf_difference_of_love2$)
7880 next j
7890 close #1
7900 '******************************************************
7910 '7.愛し方にズレが出る二人 ここまで                    *
7920 '******************************************************
7930 '8.互いの価値観が噛み合わない相性 ここから            *
7940 '**************************************************************
7950 'DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
7960 'DIFFRRENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
7970 '**************************************************************
7980 DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
7990 DIFFERENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
8000 '**************************************************************
8010 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN1_FILE$ for input as #1
8020 for i=0 to 19
8030 input #1,buf_difference_of_KachiKan1$
8040 buf_difference_of_KachiKan1(i) = val(buf_difference_of_KachiKan1$)
8050 next i
8060 close #1
8070 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN2_FILE$ for input as #1
8080 for j=0 to 19
8090 input #1,buf_difference_of_KachiKan2$
8100 buf_difference_of_KachiKan2(j) = val(buf_difference_of_KachiKan2$)
8110 next j
8120 close #1
8130 '******************************************************
8140 '8.互いの価値観が噛み合わない相性 ここまで            *
8150 '******************************************************
8160 '相性占いタイプ ここから                              *
8170 '******************************************************
8180 'RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8190 RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8200 '******************************************************
8210 open ANZAI_AISYOU_FOLDER$ + RESULT_AISYOU_TYPE_FILE$ for input as #1
8220 for i=0 to 7
8230 line input #1,Result_Aisyou_type$(i)
8240 next i
8250 close #1
8260 '****************************************************
8270 'Data文  ここから                                　 *
8280 '****************************************************
8290 '1.理解し合えるカップル　ここから                   *
8300 '****************************************************
8310 'data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
8320 'data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
8330 '****************************************************
8340 '1.理解し合えるカップル　ここまで                   *
8350 '****************************************************
8360 '2.互いに自然体でつきあえるカップル ここから        *
8370 '****************************************************
8380 'data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
8390 'data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
8400 '****************************************************
8410 '2.互いに自然体でつきあえるカップル　ここまで        *
8420 '****************************************************
8430 '3.男性にとって居心地の良いカップル  ここから       *
8440 '****************************************************
8450 'data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8460 'data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8470 '****************************************************
8480 '3.男性にとって居心地の良いカップル ここまで        *
8490 '****************************************************
8500 '4.女性にとって居心地の良いカップル  ここから       *
8510 '****************************************************
8520 'data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
8530 'data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
8540 '****************************************************
8550 '4.女性にとって居心地の良いカップル  ここまで       *
8560 '****************************************************
8570 '5.恋愛経験を重ねた後なら愛を育める ここから        *
8580 '****************************************************
8590 'data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8600 'data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8610 '****************************************************
8620 '5.恋愛経験を重ねた後なら愛を育める ここまで        *
8630 '****************************************************
8640 '6.結婚への発展が困難なカップル ここから            *
8650 '****************************************************
8660 'data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8670 'data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8680 '****************************************************
8690 '6.結婚への発展が困難なカップル ここまで            *
8700 '****************************************************
8710 '7.愛し方にズレが生じる二人  ここから               *
8720 '****************************************************
8730 'data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
8740 'data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
8750 '****************************************************
8760 '7.愛し方にずれが生じる二人  ここまで               *
8770 '****************************************************
8780 '8.互いに価値観が噛み合わない相性　ここから          *
8790 '****************************************************
8800 'data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
8810 'data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
8820 '****************************************************
8830 '8.互いに価値観が噛み合わない相性 ここまで         *
8840 '****************************************************
8850 '相性占い結果パターン ここから                    　*
8860 '****************************************************
8870 '0:理解し合える最良のカップル                        *
8880 '****************************************************
8890 'data "理解し合える最良のカップル"
8900 '****************************************************
8910 '1:互いに自然体で付き合えるカップル                 *
8920 '****************************************************
8930 'data "互いに自然体でつきあえるカップル"
8940 '****************************************************
8950 '2:男性にとって居心地の良い相性                   　*
8960 '****************************************************
8970 'data "男性にとって居心地の良い相性"
8980 '****************************************************
8990 '3:女性にとって居心地の良い相性                   　*
9000 '****************************************************
9010 'data "女性にとって居心地の良い相性"
9020 '****************************************************
9030 '4:恋愛経験を重ねた後なら愛を育める                 *
9040 '****************************************************
9050 'data "恋愛経験を重ねた後なら愛を育める"
9060 '****************************************************
9070 '5:結婚への発展が困難なカップル                     *
9080 '****************************************************
9090 'data "結婚への発展が困難なカップル"
9100 '****************************************************
9110 '6:愛し方にズレが生じる二人                         *
9120 '****************************************************
9130 'data "愛し方にずれが生じる二人"
9140 '****************************************************
9150 '7:互いに価値観が噛み合わない相性                   *
9160 '****************************************************
9170 'data "互いの価値観が噛み合わない相性"
9180 '************************************************
9190 'Data文   ここまで                              *
9200 '************************************************
9210 '相性占い結果パターン ここまで
9220 '*******************************
9230 '*****************************************************
9240 'メイン画面 Top画面1
9250 Main_Screen1:
9260 cls 3:talk "":font 48:color rgb(255,255,255)
9270 talk "メイン画面です。番号を選んでください"
9280 'グラフィック領域　ここから
9290 line (0,0)-(1080,60),rgb(0,0,255),bf
9300 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
9310 line (0,60)-(1080,560),rgb(127,255,212),bf
9320 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
9330 line (0,560)-(1080,740),rgb(0,255,0),bf
9340 'グラフィック領域 ここまで
9350 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
9360 Font 48
9370 '************************************************
9380 'Sprite                                         *
9390 '************************************************
9400 sp_on 0,1:sp_on 1,0:sp_on 2,0
9410 sp_put 0,(10,100),0,0
9420 '************************************************
9430 No=0:init"kb:4":y=0:key$="":bg=0
9440 print "◎姓名判断　メイン画面" + chr$(13)
9450 '************************************************
9460 '文字色:黒                                          *
9470 '************************************************
9480 color rgb(255,0,255)
9490 print " :1.姓名判断" + chr$(13)
9500 print " :2.姓名判断の設定" + chr$(13)
9510 print " :3.個人データーリスト" + chr$(13)
9520 print " :4.ヘルプ" + chr$(13)
9530 print " :5.プログラムの終了" + chr$(13)
9540 '*************************************************
9550 '文字:黒                                         *
9560 '*************************************************
9570 color rgb(0,0,0)
9580 locate 0,12
9590 print "1.姓名判断を選択" + chr$(13)
9600 Main_Screen2:
9610 y=0:key$="":bg=0
9620 while (key$ <> chr$(13) and key$ <> chr$(31) and key$ <> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
9630 y=stick(1)
9640 key$=inkey$
9650 bg=strig(1)
9660 pause 2.55 * 100
9670 wend
9680 '**************************************************
9690 '1.下のキー  ここから
9700 '**************************************************
9710 if (y = 1 or key$ = chr$(31)) then
9720 select case No
9730 case 0:
9740 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9750 case 1:
9760 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9770 case 2:
9780 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9790 case 3:
9800 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9810 case 4:
9820 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
9830 end select
9840 endif
9850 '***************************************************
9860 '1. 下のキー　ここまで
9870 '***************************************************
9880 '***************************************************
9890 '2.上のキー ここから
9900 '***************************************************
9910 if (key$ = chr$(30) or y = -1) then
9920 select case No
9930 case 0:
9940 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9950 case 1:
9960 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9970 case 2:
9980 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9990 case 3:
10000 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
10010 case 4:
10020 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
10030 end select
10040 endif
10050 '***************************************************
10060 '3.決定ボタン ここから
10070 '***************************************************
10080 if (bg = 2 or key$ = chr$(13)) then
10090 select case No
10100 case 0:
10110 sp_on 0,0:goto seimeihandan_top:
10120 case 1:
10130 sp_on 1,0:goto seimeihandan_setting:
10140 case 2:
10150 sp_on 2,0:goto Parsonal_data_top:
10160 case 3:
10170 sp_on 3,0: goto help:
10180 case 4:
10190 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
10200 end select
10210 endif
10220 '***************************************************
10230 '3.決定ボタン ここまで
10240 '***************************************************
10250 '1.姓名判断トップ画面
10260 seimeihandan_top:
10270 cls:talk ""
10280 No = 0:y = 0:key$ = "":bg = 0:
10290 'タイトル文字:白
10300 font 48:color rgb(255,255,255)
10310 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
10320 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
10330 sp_put 0,(10,100),0,0
10340 'グラフィック 描画領域　ここから
10350 cls 3
10360 '1.Title:青
10370 'Line 1
10380 line (0,0) - (1080,60),rgb(0,0,255),bf
10390 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
10400 'Line 2
10410 line (0,60) - (1080,450),rgb(127,255,212),bf
10420 PEN 5:line(0,57) - (1077,447),rgb(0,0,255),b
10430 'Line 3
10440 line (0,450) - (1080,600),rgb(0,255,0),bf
10450 pen 5:line (0,447) - (1077,597),rgb(0,0,255),b
10460 'グラフィック 描画領域 ここまで
10470 color rgb(255,255,255)
10480 print"◎姓名判断の種類トップメニュー" + chr$(13)
10490 color rgb(255,0,255):print" :1.霊遺伝姓名学(1種類の占い)"+chr$(13)
10500 color rgb(255,0,255):print" :2.安斎流姓名判断(3種類の占い)"+chr$(13)
10510 COLOR rgb(255,0,255):print" :3.九星姓名判断(3種類の占い)"+chr$(13)
10520 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10530 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
10540 seimeihandan_top2:
10550 y = 0:key$ = "":bg = 0
10560 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
10570 key$ = inkey$
10580 y = stick(1)
10590 bg = strig(1)
10600 pause 2.55 * 100
10610 wend
10620 '*************************************************
10630 '下のキー  ここから
10640 '*************************************************
10650 if (key$ = chr$(31) or y = 1) then
10660 select case No
10670 case 0:
10680 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10690 case 1:
10700 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10710 case 2:
10720 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10730 case 3:
10740 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10750 end select
10760 endif
10770 '*************************************************
10780 '下のキー　ここまで
10790 '*************************************************
10800 if (key$ = chr$(30) or y = -1) then
10810 select case No
10820 case 0:
10830 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10840 case 1:
10850 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10860 case 2:
10870 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10880 case 3:
10890 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10900 end select
10910 endif
10920 '*************************************************
10930 '決定ボタン　ここから
10940 '*************************************************
10950 if (bg = 2 or key$ = chr$(13)) then
10960 select case No
10970 case 0:
10980 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10990 case 1:
11000 sp_on 1,0:goto Anzai_Top:
11010 case 2:
11020 sp_on 2,0:goto Kyusei_Top:
11030 case 3:
11040 sp_on 3,0:goto Main_Screen1:
11050 end select
11060 endif
11070 '*************************************************
11080 '決定ボタン　ここまで
11090 '*************************************************
11100 '１．姓名判断(九星姓名判断トップ)
11110 'グラフィック領域　ここから
11120 Kyusei_Top:
11130 cls 3:No=0:y=0:bg=0:key$="":talk""
11140 sp_on 0,1:sp_put 0,(10,100),0,0
11150 line (0,0)-(1080,60),rgb(0,0,250),bf
11160 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11170 line (0,60)-(1080,460),rgb(127,255,212),bf
11180 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
11190 line (0,460)-(1080,680),rgb(0,255,0),bf
11200 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
11210 'グラフィック領域　ここまで
11220 font 48:color rgb(255,255,255),,rgb(176,196,222)
11230 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
11240 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
11250 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
11260 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
11270 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
11280 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
11290 locate 0,10:color RGB(0,0,0)
11300 print "1.人名の吉凶を見るを選択"
11310 Kyusei_Top2:
11320 bg=0:key$="":y=0
11330 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
11340 key$ = inkey$
11350 y = stick(1)
11360 bg = strig(1)
11370 pause 2.50 * 100
11380 wend
11390 '****************************************************
11400 '下のキー　ここから
11410 '*****************************************************
11420 if (y = 1 or key$ = chr$(30)) then
11430 select case No
11440 case 0:
11450 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11460 case 1:
11470 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11480 case 2:
11490 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11500 case 3:
11510 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
11520 end select
11530 endif
11540 '*****************************************************
11550 '下のキー　ここまで
11560 '*****************************************************
11570 '*****************************************************
11580 '上のキー　ここから
11590 '*****************************************************
11600 if (y = -1 or key$ = chr$(31)) then
11610 select case No
11620 case 0:
11630 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11640 case 1:
11650 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
11660 case 2:
11670 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11680 case 3:
11690 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11700 end select
11710 endif
11720 '*****************************************************
11730 '上のキー　ここまで
11740 '*****************************************************
11750 '*****************************************************
11760 '決定ボタン　ここから
11770 '*****************************************************
11780 if (key$ = chr$(13) or bg = 2) then
11790 select case No
11800 case 0:
11810 sp_on 0,0:goto Parson_name_kikkyo:
11820 case 1:
11830 sp_on 1,0:goto nick_name_check:
11840 case 2:
11850 sp_on 2,0:goto name_inyo_check:
11860 case 3:
11870 sp_on 3,0:goto seimeihandan_top:
11880 end select
11890 endif
11900 '*****************************************************
11910 '決定ボタン　ここまで
11920 '*****************************************************
11930 '2.姓名判断 安斎流姓名判断　トップ画面
11940 '2-1名前の姓の部分を入力
11950 'グラフィック領域　ここから
11960 Anzai_Top_Screen:
11970 cls 3:LINE (0,0) - (1080,60),rgb(0,0,255),bf
11980 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
11990 line (0,60) - (1080,260),rgb(127,255,212),bf
12000 pen 5:line(0,57) - (1077,257),rgb(0,0,255),b
12010 line (0,260) - (1080,350),rgb(0,255,0),bf
12020 pen 5:line(0,257) - (1077,347),rgb(0,0,255),b
12030 font 48:talk"":init"KB:2"
12040 'グラフィック領域 ここまで
12050 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー" + chr$(13)
12060 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
12070 COLOR rgb(255,0,255)
12080 print"名前を2回に分けて入力してください" + chr$(13)
12090 print"名前の姓の部分を入れてください" + chr$(13)
12100 color rgb(0,0,0)
12110 input"名前の姓:",bufname$
12120 buff1=len(bufname$)
12130 '2-2名前の名の部分を入力
12140 'グラフィック描画領域　ここから
12150 cls 3:init"kb:2"
12160 line (0,0) - (1080,60),rgb(0,0,255),bf
12170 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
12180 line (0,60) - (1080,200),rgb(127,255,212),bf
12190 pen 5:line(0,57) - (1077,197),rgb(0,0,255),b
12200 line (0,200) - (1080,260),rgb(0,255,0),bf
12210 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
12220 'グラフィック描画領域 ここまで
12230 COLOR rgb(255,255,255)
12240 cls:print"安斎流姓名判断トップメニュー" + chr$(13)
12250 talk"つぎに、名前のめいの部分を入れてください"
12260 color rgb(255,0,255)
12270 print"名前の名の部分を入れてください" + chr$(13)
12280 color rgb(0,0,0)
12290 input"名前の名:",bufname2$
12300 buff2=len(bufname2$)
12310 bufff = buff1 + buff2
12320 select case bufff
12330 '姓1文字,名1文字
12340 case 2:
12350 cls
12360 '天運:buf_tenunn
12370 buf_tenunn = char_count(bufname$)
12380 '地運:buf_chiunn
12390 buf_chiunn = char_count(bufname2$)
12400 '人運 = 天運 + 地運
12410 buf_jinunn = buf_tenunn + buf_chiunn
12420 '外運 = 天運 + 人運
12430 buf_gaiunn = buf_tenunn + buf_chiunn
12440 '総数=buf_gaiunn
12450 buf_total = buf_gaiunn
12460 goto Result_Anzai:
12470 '姓１，名:2
12480 case 3:
12490 cls:
12500 if buff1 = 1 and buff2 = 2 then
12510 '1.天運:buf_tenunn
12520 buf_tenunn = char_count(bufname$)
12530 '2文字目の文字
12540 bufer_name2$(0) = Mid$(bufname2$,1,1)
12550 '3文字目の文字
12560 bufer_name2$(1) = Mid$(bufname2$,2,1)
12570 '2.人運
12580 buf_jinunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
12590 '3.地運:buf_chiunn
12600 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
12610 '4外運:buf_gaiunn
12620 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
12630 '5.総数:buf_total
12640 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
12650 goto Result_Anzai:
12660 endif
12670 if buff1=2 and buff2=1 then
12680 bufer_name$(0) = Mid$(bufname$,1,1)
12690 bufer_name$(1) = Mid$(bufname$,2,1)
12700 bufer_name2$(0) = Mid$(bufname$,1,1)
12710 '1.天運
12720 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12730 '2.人運
12740 buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
12750 '3.地運
12760 buf_chiunn = char_count(bufer_name2$(0))
12770 '4.外運
12780 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(0))
12790 '5.総数
12800 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
12810 goto Result_Anzai:
12820 endif
12830 case 4:
12840 if buff1 = 2 and buff2 = 2 then
12850 bufer_name$(0) = Mid$(bufname$,1,1)
12860 bufer_name$(1) = Mid$(bufname$,2,1)
12870 bufer_name2$(0) = Mid$(bufname2$,1,1)
12880 bufer_name2$(1) = Mid$(bufname2$,2,1)
12890 '1.天運
12900 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12910 '2.人運
12920 buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
12930 '3.地運
12940 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
12950 '4.外運
12960 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
12970 '5.総数
12980 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
12990 goto Result_Anzai:
13000 endif
13010 'パターン2 姓3文字 名1文字 total4文字
13020 if buff1 = 3 and buff2 = 1 then
13030 bufer_name$(0) = Mid$(bufname$,1,1)
13040 bufer_name$(1) = Mid$(bufname$,2,1)
13050 bufer_name$(2) = Mid$(bufname$,3,1)
13060 bufer_name2$(0) = Mid$(bufname2$,1,1)
13070 '1.天運
13080 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
13090 '2.人運
13100 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13110 '3.地運
13120 buf_chiunn = char_count(bufer_name2$(0))
13130 '4.外運
13140 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
13150 '5.総運
13160 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
13170 goto Result_Anzai:
13180 endif
13190 'パターン３ 姓1,名３  合計４文字
13200 if buff1=1 and buff2=3 then
13210 bufer_name$(0) = Mid$(bufname$,1,1)
13220 bufer_name2$(0) = Mid$(bufname2$,1,1)
13230 bufer_name2$(1) = Mid$(bufname2$,2,1)
13240 bufer_name2$(2) = Mid$(bufname2$,3,1)
13250 '1.天運
13260 buf_tenunn = char_count(bufer_name$(0))
13270 '2.人運
13280 buf_jinunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(0))
13290 '3.地運
13300 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13310 '4.外運
13320 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13330 '5.総運
13340 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13350 goto Result_Anzai:
13360 endif
13370 case 5:
13380 '５文字の名前
13390 '1.  3文字姓 2字名
13400 if buff1 = 3 and buff2 = 2 then
13410 bufer_name$(0) = Mid$(bufname$,1,1)
13420 bufer_name$(1) = Mid$(bufname$,2,1)
13430 bufer_name$(2) = Mid$(bufname$,3,1)
13440 bufer_name2$(0) = Mid$(bufname2$,1,1)
13450 bufer_name2$(1) = Mid$(bufname2$,2,1)
13460 '1.天運
13470 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
13480 '2.人運
13490 buf_jinunn = char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
13500 '3.地運
13510 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
13520 '4.外運
13530 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1))
13540 '5.総運
13550 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
13560 goto Result_Anzai:
13570 endif
13580 if buff1 = 2 and buff2 = 3 then
13590 bufer_name$(0) = Mid$(bufname$,1,1)
13600 bufer_name$(1) = Mid$(bufname$,2,1)
13610 bufer_name2$(0) = Mid$(bufname2$,1,1)
13620 bufer_name2$(1) = Mid$(bufname2$,2,1)
13630 bufer_name2$(2) = Mid$(bufname2$,3,1)
13640 '1.天運
13650 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
13660 '2.人運
13670 buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
13680 '3.地運
13690 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13700 '4.外運
13710 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13720 '5.総運
13730 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13740 goto Result_Anzai:
13750 endif
13760 if buff1 = 4 and buff2 = 1 then
13770 bufer_name$(0) = Mid$(bufname$,1,1)
13780 bufer_name$(1) = mid$(bufname$,2,1)
13790 bufer_name$(2) = mid$(bufname$,3,1)
13800 bufer_name$(3) = mid$(bufname$,4,1)
13810 bufer_name2$(0) = mid$(bufname2$,1,1)
13820 '1.天運
13830 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
13840 '2.人運
13850 buf_jinunn =  char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
13860 '3.地運
13870 buf_chiunn = char_count(bufer_name2$(0))
13880 '4.外運
13890 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
13900 '5.総運
13910 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
13920 goto Result_Anzai:
13930 endif
13940 case 6:
13950 '3字姓 3字名
13960 if buff1 = 3 and buff2 = 3 then
13970 bufer_name$(0) = Mid$(bufname$,1,1)
13980 bufer_name$(1) = Mid$(bufname$,2,1)
13990 bufer_name$(2) = Mid$(bufname$,3,1)
14000 bufer_name2$(0) = Mid$(bufname2$,1,1)
14010 bufer_name2$(1) = Mid$(bufname2$,2,1)
14020 bufer_name2$(2) = Mid$(bufname2$,3,1)
14030 '1.天運
14040 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
14050 '2.人運
14060 buf_jinunn = char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
14070 '3.地運
14080 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14090 '4.外運
14100 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14110 '5.総運
14120 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14130 goto Result_Anzai:
14140 endif
14150 '4字姓 2字名
14160 if buff1 = 4 and buff2 = 2 then
14170 bufer_name$(0) = Mid$(bufname$,1,1)
14180 bufer_name$(1) = Mid$(bufname$,2,1)
14190 bufer_name$(2) = Mid$(bufname$,3,1)
14200 bufer_name$(3) = Mid$(bufname$,4,1)
14210 bufer_name2$(0) = Mid$(bufname2$,1,1)
14220 bufer_name2$(1) = Mid$(bufname2$,2,1)
14230 '1.天運
14240 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
14250 '2.人運
14260 buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
14270 '3.地運
14280 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
14290 '4.外運
14300 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1))
14310 '5.総運
14320 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
14330 goto Result_Anzai:
14340 endif
14350 '4字姓 3字名
14360 case 7:
14370 if buff1 = 4 and buff2 = 3 then
14380 bufer_name$(0) = Mid$(bufname$,1,1)
14390 bufer_name$(1) = Mid$(bufname$,2,1)
14400 bufer_name$(2) = Mid$(bufname$,3,1)
14410 bufer_name$(3) = Mid$(bufname$,4,1)
14420 bufer_name2$(0) = Mid$(bufname2$,1,1)
14430 bufer_name2$(1) = Mid$(bufname2$,2,1)
14440 bufer_name2$(2) = Mid$(bufname2$,3,1)
14450 '1.天運
14460 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
14470 '2.人運
14480 buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
14490 ' 3.地運
14500 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2)) + char_count(bufer_name2$(3))
14510 '4.外運
14520 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14530 '5.総運
14540 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14550 goto Result_Anzai:
14560 endif
14570 case else:
14580 end select
14590 '2.設定
14600 seimeihandan_setting:
14610 font 46:color rgb(0,0,0),,rgb(176,196,222)
14620 No=0:y=0:key$="":bg=0:talk""
14630 sp_on 0,1:sp_put 0,(10,100),0,0
14640 talk"設定画面です。番号を選んでエンターキーを押してください"
14650 'グラフィック領域　ここから
14660 cls 3:
14670 line (0,0) - (1080,60),rgb(0,0,255),bf
14680 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
14690 line (0,60) - (1080,560),rgb(127,255,212),bf
14700 pen 5:line (0,57) - (1077,557),rgb(0,0,255),b
14710 line (0,560) - (1080,750),rgb(0,255,0),bf
14720 pen 5:line(0,557) - (1077,747),rgb(0,0,255),b
14730 'グラフィック領域 ここまで
14740 '1行目　文字色　 白
14750 color rgb(255,255,255):print"姓名判断　設定画面トップ画面" + chr$(13)
14760 color rgb(255,0,255):print" :1.登録文字の確認" + chr$(13)
14770 color rgb(255,0,255):print" :2.登録文字数の表示" + chr$(13)
14780 color rgb(255,0,255):print" :3.画数で吉凶を見る" + chr$(13)
14790 color rgb(255,0,255):print" :4.前の画面に戻る" + chr$(13)
14800 color rgb(255,0,255):PRINT" :5.プログラムの終了" + chr$(13)
14810 COLOR rgb(0,0,0):locate 0,12:
14820 print"1.登録文字の確認を選択" + chr$(13)
14830 seimeihandan_setting2:
14840 y = 0:key$ = "":bg = 0
14850 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14860 key$ = inkey$
14870 y = stick(1)
14880 bg = strig(1)
14890 pause 2.50 * 100
14900 wend
14910 '****************************************************
14920 '1.下のカーソル　ここから
14930 '****************************************************
14940 if (key$ = chr$(31) or y = 1) then
14950 select case No
14960 case 0:
14970 No = 1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14980 case 1:
14990 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15000 case 2:
15010 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15020 case 3:
15030 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15040 case 4:
15050 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15060 end select
15070 endif
15080 '*****************************************************
15090 '1.下のカーソル　ここまで
15100 '*****************************************************
15110 '*****************************************************
15120 '2.上のカーソル　ここから
15130 '*****************************************************
15140 if (key$ = chr$(30) or y = -1) then
15150 select case No
15160 case 0:
15170 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15180 case 1:
15190 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15200 case 2:
15210 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
15220 case 3:
15230 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15240 case 4:
15250 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15260 end select
15270 endif
15280 '******************************************************
15290 '2.上のカーソル　ここまで
15300 '******************************************************
15310 '******************************************************
15320 '3.決定ボタン　ここから
15330 '******************************************************
15340 if (key$ = chr$(13) or bg = 2) then
15350 select case No
15360 case 0:
15370 sp_on 0,0:goto Entry_moji_Top:
15380 case 1:
15390 sp_on 1,0:goto Entry_moji_check:
15400 case 2:
15410 sp_on 2,0:goto Moji_Kikkyo_Top:
15420 case 3:
15430 sp_on 3,0:goto Main_Screen1:
15440 case 4:
15450 sp_on 4,0:talk "プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
15460 end select
15470 endif
15480 '******************************************************
15490 '3.決定ボタン　ここまで
15500 '******************************************************
15510 '3 番号で吉凶を見る 入力
15520 Moji_Kikkyo_Top:
15530 font 46:color rgb(0,0,0),,rgb(176,196,222)
15540 init "kb:2"
15550 'グラフィック描画領域　ここから
15560 cls 3:talk""
15570 line (0,0) - (1080,60),rgb(0,0,255),bf
15580 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
15590 line (0,60) - (1080,255),rgb(127,255,212),bf
15600 PEN 5:line(0,57) - (1077,252),rgb(0,0,255),b
15610 line (0,255) - (1080,350),rgb(0,255,0),bf
15620 pen 5:line(0,252) - (1077,347),rgb(0,0,255),b
15630 'グラフィック描画領域 ここまで
15640 color rgb(255,255,255)
15650 print "画数での吉凶判定" + chr$(13)
15660 color rgb(255,0,255)
15670 print "画数を入れてください" + chr$(13)
15680 print "(Max:81文字)" + chr$(13)
15690 color rgb(0,0,0)
15700 Input"文字の画数:",Number
15710 if Number > 81 then goto Moji_Kikkyo_Top:
15720 if Number <= 81 then goto Moji_Kikkyo:
15730 '3.番号で吉凶を見る 結果表示
15740 'グラフィック描画領域　ここから
15750 Moji_Kikkyo:
15760 cls 3:init "kb:4":key$ = "":bg = 0
15770 line (0,0) - (700,60),rgb(0,0,255),bf
15780 PEN 5:line(0,0) - (697,57),rgb(127,255,212),b
15790 line (0,60) - (700,260),rgb(127,255,212),bf
15800 pen 5:line(0,57) - (697,257),rgb(0,0,255),b
15810 line (0,260) - (700,350),rgb(0,255,0),bf
15820 pen 5:line(0,257) - (697,347),rgb(0,0,255),b
15830 'グラフィック描画領域　ここまで
15840 color rgb(255,255,255)
15850 print "画数で吉凶を求める"+chr$(13)
15860 color rgb(255,0,255)
15870 talk str$(Number) + "画のきっきょうは、" + buf_Kikkyo$(Number+2) + "です"
15880 print "画数:";Number;chr$(13):print "吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15890 while (key$ <> chr$(13) and bg <> 2)
15900 key$ = inkey$
15910 bg = strig(1)
15920 pause 2.50 * 100
15930 wend
15940 If (key$ = chr$(13) or bg = 2) then goto seimeihandan_setting:
15950 '3.ヘルプ
15960 help:
15970 cls 3:font 48:color rgb(0,0,0)
15980 No = 0:y = 0:key$ = "":bg = 0
15990 talk ""
16000 '描画領域 ここから
16010 line (0,0) - (1080,60),rgb(0,0,255),bf
16020 sp_on 0,1:sp_put 0,(10,100),0,0
16030 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
16040 line (0,60) - (1080,570),rgb(127,255,212),bf
16050 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
16060 line (0,570) - (1080,650),rgb(0,255,0),bf
16070 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
16080 '描画領域　ここまで
16090 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
16100 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
16110 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
16120 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
16130 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
16140 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
16150 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
16160 color rgb(0,0,0)
16170 locate 0,12:print "1.バージョン情報を選択"
16180 help2:
16190 y = 0:key$ = "":bg = 0
16200 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
16210 key$ = inkey$
16220 y = stick(1)
16230 bg = strig(1)
16240 pause 2.50 * 100
16250 wend
16260 if (y = 1 or key$ = chr$(30)) then
16270 select case No
16280 case 0:
16290 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
16300 case 1:
16310 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
16320 case 2:
16330 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
16340 case 3:
16350 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
16360 case 4:
16370 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
16380 end select
16390 endif
16400 if (y = -1 or key$ = chr$(31)) then
16410 select case No
16420 case 0:
16430 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
16440 case 1:
16450 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
16460 case 2:
16470 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
16480 case 3:
16490 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
16500 case 4:
16510 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
16520 end select
16530 endif
16540 if (key$ = chr$(13) or bg=2) then
16550 select case No
16560 case 0:
16570 sp_on 0,0:goto Version_info:
16580 case 1:
16590 sp_on 1,0:goto Document_info:
16600 case 2:
16610 sp_on 2,0:goto Config_Setting:
16620 case 4:
16630 sp_on 4,0:talk "プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16640 case 3:
16650 sp_on 3,0:goto Main_Screen1:
16660 end select
16670 endif
16680 'Menu1　画面
16690 talk"調べたい名前のみよじをいれてください"
16700 'グラフィック描画領域　ここから
16710 Parson_name_kikkyo:
16720 cls 3:init "KB:2"
16730 line (0,0) - (1080,60),rgb(0,0,255),bf
16740 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
16750 line (0,60) - (1080,180),rgb(127,255,212),bf
16760 pen 5:line(0,57) - (1077,177),rgb(0,0,255),b
16770 line (0,180) - (1080,250),rgb(0,255,0),bf
16780 pen 5:line(0,177) - (1077,247),rgb(0,0,255),b
16790 'グラフィック描画領域　ここまで
16800 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16810 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16820 color rgb(0,0,0):input "調べたい名前の苗字(上の文字):",name$
16830 cls
16840 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16850 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください" + chr$(13)
16860 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16870 goto complate_Kyusei:
16880 'メニュー6　バージョン表示
16890 'グラフィック　描画　領域　 ここから
16900 Version_info:
16910 cls 3:bg = 0:talk ""
16920 line (0,0) - (1080,60),rgb(0,0,255),bf
16930 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
16940 line (0,60) - (1080,665),rgb(127,255,212),bf
16950 pen 5:line(0,57) - (1077,662),rgb(0,0,255),b
16960 line (0,665) - (1080,750),rgb(0,255,0),bf
16970 pen 5:line(0,662) - (1077,747),rgb(0,0,255),b
16980 'グラフィック　描画 領域　 ここまで
16990 color rgb(255,255,255):print"バージョン情報" + chr$(13)
17000 color rgb(255,0,255):print"姓名判断 3 in 1" + chr$(13)
17010 color rgb(255,0,255):PRINT"Ver:245.2024.01.05" + chr$(13)
17020 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字" + chr$(13)
17030 color rgb(255,0,255):print "アルファベット（大文字、小文字)" + chr$(13)
17040 color rgb(255,0,255):print "対応漢字画数：1画から24画まで" + chr$(13)
17050 color rgb(255,0,2550):print "制作開始:since 2019.04.07"+chr$(13)
17060 'ここを書き換える
17070 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.45です"
17080 color rgb(0,0,0):print "エンターキーを押してください"
17090 Version_info2:
17100 bg=0
17110 while (bg <> 2)
17120 bg=strig(1)
17130 pause 2.50 * 100
17140 wend
17150 if bg = 2  then beep:goto Main_Screen1:
17160 complate_Kyusei:
17170 '文字数を求める変数
17180 buf_char_size=len(name$)
17190 buf_char_size2=len(name2$)
17200 '入力した文字を代入する変数
17210 '入力した文字を配列に代入する処理
17220 '姓名判断データー文字比較
17230 '画数を求める関数
17240 func char_count(buf_count$)
17250 count=0:buffer=0
17260 '1画の文字 23文字
17270 for j=0 to ((Moji_1)-1)
17280 if buf_count$=buf_char_hiragana1$(j) then
17290 count =1:
17300 endif
17310 next j
17320 '2画の文字
17330 for j=0 to ((Moji_2)-1)
17340 if buf_count$=buf_char_hiragana2$(j)  then
17350 count = 2:
17360 endif
17370 next j
17380 for j=0 to ((Moji_3)-1)
17390 if buf_count$=buf_char_hiragana3$(j) then
17400 count =3:
17410 endif
17420 next j
17430 for j=0 to ((Moji_4)-1)
17440 if buf_count$=buf_char_hiragana4$(j) then
17450 count = 4:
17460 endif
17470 next j
17480 for j=0 to ((Moji_5)-1)
17490 if buf_count$=buf_char_hiragana5$(j) then
17500 count = 5:
17510 endif
17520 next j
17530 for j=0 to ((Moji_6)-1)
17540 if buf_count$=buf_char_hiragana6$(j) then
17550 count= 6
17560 endif
17570 next j
17580 for  j=0 to ((Moji_7)-1)
17590 if buf_count$=buf_char_hiragana7$(j) then
17600 count=  7
17610 endif
17620 next j
17630 for j=0 to ((Moji_8)-1)
17640 if buf_count$=buf_char_hiragana8$(j) then
17650 count= 8
17660 endif
17670 next j
17680 for j=0 to ((Moji_9)-1)
17690 if buf_count$=buf_char_hiragana9$(j) then
17700 count=9
17710 endif
17720 next j
17730 for j=0 to ((Moji_10)-1)
17740 if buf_count$=buf_char_hiragana10$(j) then
17750 count=10
17760 endif
17770 next j
17780 for j=0 to ((Moji_11)-1)
17790 if buf_count$=buf_char_hiragana11$(j) then
17800 count=11
17810 endif
17820 next j
17830 for j=0 to  ((Moji_12)-1)
17840 if buf_count$ = buf_char_hiragana12$(j) then
17850 count=12
17860 endif
17870 next j
17880 for j=0 to ((Moji_13)-1)
17890 if buf_count$=buf_char_hiragana13$(j) then
17900 count=13
17910 endif
17920 next j
17930 for j=0 to ((Moji_14)-1)
17940 if buf_count$=buf_char_hiragana14$(j) then
17950 count=14
17960 endif
17970 next j
17980 for j=0 to ((Moji_15)-1)
17990 if buf_count$=buf_char_hiragana15$(j) then
18000 count=15
18010 endif
18020 next j
18030 for j=0 to ((Moji_16)-1)
18040 if buf_count$=buf_char_hiragana16$(j) then
18050 count=16
18060 endif
18070 next j
18080 for j=0 to ((Moji_17)-1)
18090 if buf_count$=buf_char_hiragana17$(j) then
18100 count=17
18110 endif
18120 next j
18130 for j=0 to ((Moji_18)-1)
18140 if buf_count$=buf_char_hiragana18$(j) then
18150 count=18
18160 endif
18170 next j
18180 for j=0 to ((Moji_19)-1)
18190 if buf_count$=buf_char_hiragana19$(j) then
18200 count=19
18210 endif
18220 next j
18230 for j=0 to ((Moji_20)-1)
18240 if buf_count$=buf_char_hiragana20$(j) then
18250 count=20
18260 endif
18270 next i
18280 for j=0 to ((Moji_21)-1)
18290 if buf_count$=buf_char_hiragana21$(j) then
18300 count=21
18310 endif
18320 next j
18330 for j=0 to ((Moji_22)-1)
18340 if buf_count$=buf_char_hiragana22$(j) then
18350 count=22
18360 endif
18370 next j
18380 for j=0 to ((Moji_23)-1)
18390 if buf_count$=buf_char_hiragana23$(j) then
18400 count=23
18410 endif
18420 next j
18430 for j=0 to ((Moji_24)-1)
18440 if buf_count$=buf_char_hiragana24$(j) then
18450 count=24
18460 endif
18470 buffer = count
18480 next j
18490 endfunc buffer
18500 func show_sex_type$(sex$)
18510 buf_number=val(Mid$(sex$,4,1))
18520 if buf_number = 1 then
18530 buf_show_sex_type$="性別:女性"
18540 else
18550 if buf_number = 2 then
18560 buf_show_sex_type$="性別:男性"
18570 endif
18580 endif
18590 endfunc buf_show_sex_type$
18600 '合計を求める関数
18610 func totalcounts(buffers$)
18620 buffers=0:
18630 for i = 0 to len(buffers$) - 1
18640 buffers = buffers+char_count(buffers$)
18650 next i
18660 endfunc buffers
18670 buf_count2 = 0:buf_count3 = 0
18680 '1.苗字の文字数
18690 for n=0 to (buf_char_size-1)
18700 buf_Input_data$(n) = mid$(name$,n+1,1)
18710 next n
18720 for i=0 to (buf_char_size-1)
18730 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18740 next i
18750 '2.名の文字数
18760 for n2 = 0 to (buf_char_size2-1)
18770 buf_Input_data2$(n2) = mid$(name2$,n2+1,1)
18780 next n2
18790 for i2 = 0 to (buf_char_size2-1)
18800 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18810 next i2
18820 '総数を出す
18830 select case (buf_char_size + buf_char_size2)
18840 case 6:
18850 if ((buf_char_size = 4) and (buf_char_size2 = 2)) then
18860 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2)) + char_count(buf_Input_data$(3)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
18870 endif
18880 if ((buf_char_size = 3) and (buf_char_size2 = 3)) then
18890 if buf_Input_data$(1) = "々" then
18900 buf_total = char_count(buf_Input_data$(0))*2 + char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
18910 else
18920 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
18930 endif
18940 endif
18950 case 5:
18960 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
18970 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2)) + char_count(buf_Input_data$(3)) + char_count(buf_Input_data2$(0))
18980 endif
18990 if ((buf_char_size = 2) and (buf_char_size2 = 3)) then
19000 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
19010 endif
19020 if ((buf_char_size = 3) and (buf_char_size2 = 2)) then
19030 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19040 endif
19050 case 4:
19060 if ((buf_char_size = 1) and (buf_char_size2 = 3)) then
19070 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
19080 endif
19090 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19100 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19110 endif
19120 if ((buf_char_size = 3) and (buf_char_size2 = 1)) then
19130 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0))
19140 endif
19150 case 3:
19160 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19170 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19180 endif
19190 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
19200 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19210 endif
19220 case 2:
19230 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19240 case else:
19250 end select
19260 '文字の総数をだす
19270 total_name$ = name$ + name2$
19280 '1.姓星を求める
19290 select case buf_char_size
19300 '苗字1文字のとき
19310 case 1:
19320 buf_seisei = char_count(buf_Input_data$(0)) + 1
19330 '苗字2文字の時
19340 case 2:
19350 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
19360 '苗字3文字のとき
19370 case 3:
19380 if (buf_Input_data$(1)="々")  then
19390 buf_seisei = char_count(buf_Input_data$(0)) * 2 + char_count(buf_Input_data$(2))
19400 else
19410 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
19420 endif
19430 '苗字4文字のとき
19440 case 4:
19450 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2)) + char_count(buf_Input_data$(3))
19460 case else:
19470 end select
19480 '2.主星をだす
19490 '2.主星
19500 select case (buf_char_size + buf_char_size2)
19510 '姓名5文字のとき
19520 case 6:
19530 if ((buf_char_size =  4) and (buf_char_size2 = 2)) then
19540 buf_syusei = char_count(buf_Input_data$(3)) + char_count(buf_Input_data2$(0))
19550 endif
19560 if ((buf_char_size = 3) and (buf_char_size2 = 3)) then
19570 buf_syusei = char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0))
19580 endif
19590 case 5:
19600 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19610 buf_syusei = char_count(buf_Input_data$(3)) + char_count(buf_Input_data2$(0))
19620 endif
19630 if ((buf_char_size = 2) and (buf_char_size2 = 3)) then
19640 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19650 endif
19660 if ((buf_char_size = 3) and (buf_char_size2 = 2)) then
19670 buf_syusei = char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0))
19680 endif
19690 '姓名4文字のとき
19700 case 4:
19710 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19720 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19730 endif
19740 if ((buf_char_size = 1) and (buf_char_size2 = 3)) then
19750 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19760 endif
19770 if ((buf_char_size = 3) and (buf_char_size2 = 1)) then
19780 buf_syusei = char_count(buf_Input_data$(2)) + char_count(buf_Input_data2$(0))
19790 endif
19800 '姓名3文字のとき
19810 case 3:
19820 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19830 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19840 else
19850 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19860 endif
19870 case 2:
19880 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19890 case else:
19900 end select
19910 '3.名星を求める
19920 select case (buf_char_size + buf_char_size2)
19930 case 6:
19940 if ((buf_char_size = 3) and (buf_char_size2 = 3)) then
19950 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
19960 endif
19970 if ((buf_char_size = 4) and (buf_char_size2 = 2)) then
19980 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19990 endif
20000 case 5:
20010 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
20020 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20030 endif
20040 if ((buf_char_size = 3) and (buf_char_size2 = 2)) then
20050 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
20060 endif
20070 if ((buf_char_size = 2) and (buf_char_size2 = 3))  then
20080 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
20090 endif
20100 case 4:
20110 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
20120 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
20130 endif
20140 if ((buf_char_size = 1) and (buf_char_size2 = 3)) then
20150 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
20160 endif
20170 if ((buf_char_size=3) and (buf_char_size2=1)) then
20180 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20190 endif
20200 case 3:
20210 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20220 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20230 endif
20240 if ((buf_char_size=2) and (buf_char_size2=1)) then
20250 buf_meisei=char_count(buf_Input_data2$(0))+1
20260 endif
20270 case 2:
20280 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20290 case else:
20300 end select
20310 '4.外星を求める
20320 select case (buf_char_size + buf_char_size2)
20330 case 6:
20340 if buf_Input_data$(1) = "々"  then
20350 buf_gaisei = char_count(buf_Input_data$(0)) * 2 + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
20360 else
20370 if ((buf_char_size = 4) and (buf_char_size2 = 2)) then
20380 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(1))
20390 else
20400 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
20410 endif
20420 endif
20430 case 5:
20440 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
20450 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
20460 endif
20470 if ((buf_char_size = 3) and (buf_char_size2 = 2)) then
20480 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(1))
20490 endif
20500 if ((buf_char_size = 2) and (buf_char_size2 = 3)) then
20510 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
20520 endif
20530 case 4:
20540 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
20550 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20560 endif
20570 if ((buf_char_size=1) and (buf_char_size2=3)) then
20580 buf_gaisei = 1 + char_count(buf_Input_data2$(1)) + char_count(buf_Input_data2$(2))
20590 endif
20600 if ((buf_char_size = 3) and (buf_char_size2 = 1)) then
20610 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20620 endif
20630 case 3:
20640 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20650 buf_gaisei = 1 + char_count(buf_Input_data2$(1))
20660 endif
20670 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20680 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20690 endif
20700 case 2:
20710 buf_gaisei = 2
20720 case else:
20730 end select
20740 '診断結果表示
20750 '1.姓星を出す
20760 'グラフィック描画領域　ここから
20770 Result_Kyusei_Kikkyo:
20780 cls 3:font 32:bg = 0:key$ = "":init "kb:4":talk ""
20790 '縦の画面
20800 '1行目
20810 line (0,0) - (1500,60),rgb(0,0,255),bf
20820 pen 5:line(0,0) - (1497,57),rgb(127,255,212),b
20830 '2行目
20840 line (0,60) - (1500,425),rgb(127,255,212),bf
20850 pen 5:line(0,57) - (1497,422),rgb(0,0,255),b
20860 '3行目
20870 line (0,485) - (1500,425),rgb(0,255,0),bf
20880 pen 5:line(0,482) - (1497,422),rgb(0,0,255),b
20890 '横の画面　吉凶のランク表
20900 'グラフィック描画領域　ここまで
20910 talk"診断結果です":font 32
20920 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20930 color Rgb(255,0,255)
20940 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20950 '2.主星を出す
20960 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20970 '3.名星を求める
20980 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20990 '4.外星を求める
21000 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
21010 '5.総数を出す
21020 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
21030 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
21040 color rgb(0,0,0)
21050 print"エンターキーを押してください"
21060 while (key$ <> chr$(13) and bg <> 2)
21070 key$ = inkey$
21080 bg = strig(1)
21090 pause 2.50 * 100
21100 wend
21110 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
21120 '2.主星を出す
21130 'メニュー3 登録文字の確認 ここから
21140 'グラフィック領域　ここから
21150 'タイトル青 文字:白
21160 Entry_moji_Top:
21170 talk ""
21180 cls 3:line (0,0) - (1080,65),rgb(0,0,255),bf
21190 pen 5:line(0,0) - (1077,62),rgb(127,255,212),b
21200 line (0,62) - (1080,155),rgb(0,255,255),bf
21210 pen 5:line(0,59) - (1077,152),rgb(0,0,255),b
21220 line (0,155) - (1080,260),rgb(0,255,0),bf
21230 pen 5:line(0,152) - (1077,257),rgb(0,0,255),b
21240 'グラフィック領域　ここまで
21250 talk "調べたい文字をひと文字入れてください。":init "kb:2"
21260 '文字:白
21270 color rgb(255,255,255):print"登録文字の確認" + chr$(13)
21280 '文字:アクア
21290 color rgb(255,0,0):print"文字を入力してエンターキーを押してください" + chr$(13)
21300 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
21310 if name$ = "" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
21320 if (len(name$) > 1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
21330 '1画の文字
21340 for i=0 to ((Moji_1)-1)
21350 if (name$ = buf_char_hiragana1$(i)) then
21360 buffer_count = 1:goto Moji_count_check:
21370 endif
21380 next i
21390 '2画の文字
21400 for i=0 to ((Moji_2)-1)
21410 if (name$=buf_char_hiragana2$(i)) then
21420 buffer_count=2:goto Moji_count_check:
21430 endif
21440 next i
21450 '3画の文字
21460 for i=0 to ((Moji_3)-1)
21470 if (name$=buf_char_hiragana3$(i)) then
21480 buffer_count = 3:goto Moji_count_check:
21490 endif
21500 next i
21510 '4画の文字
21520 for i=0 to ((Moji_4)-1)
21530 if (name$ = buf_char_hiragana4$(i)) then
21540 buffer_count = 4:goto Moji_count_check:
21550 endif
21560 next i
21570 '5画の文字
21580 for i = 0 to ((Moji_5)-1)
21590 if (name$ = buf_char_hiragana5$(i)) then
21600 buffer_count = 5:goto Moji_count_check:
21610 endif
21620 next i
21630 '6画の文字
21640 for i=0 to ((Moji_6)-1)
21650 if (name$ = buf_char_hiragana6$(i)) then
21660 buffer_count = 6:goto Moji_count_check:
21670 endif
21680 next i
21690 '7画の文字
21700 for i = 0 to ((Moji_7)-1)
21710 if (name$ = buf_char_hiragana7$(i)) then
21720 buffer_count = 7:goto Moji_count_check:
21730 endif
21740 next i
21750 '8画の文字 120 文字
21760 for i = 0 to ((Moji_8)-1)
21770 if (name$ = buf_char_hiragana8$(i)) then
21780 buffer_count = 8:goto Moji_count_check:
21790 endif
21800 next i
21810 '9画の文字  103文字
21820 for i = 0 to ((Moji_9)-1)
21830 if (name$ = buf_char_hiragana9$(i)) then
21840 buffer_count = 9:goto Moji_count_check:
21850 endif
21860 next i
21870 '10画の文字 98文字
21880 for i = 0 to ((Moji_10)-1)
21890 if (name$ = buf_char_hiragana10$(i)) then
21900 buffer_count = 10:goto Moji_count_check:
21910 endif
21920 next i
21930 '11画の文字 98文字
21940 for i = 0 to ((Moji_11)-1)
21950 if (name$ = buf_char_hiragana11$(i)) then
21960 buffer_count = 11:goto Moji_count_check:
21970 endif
21980 next i
21990 '12画の文字
22000 for i = 0 to ((Moji_12)-1)
22010 if (name$ = buf_char_hiragana12$(i)) then
22020 buffer_count = 12:goto Moji_count_check:
22030 endif
22040 next i
22050 '13画の文字
22060 for i = 0 to ((Moji_13)-1)
22070 if (name$ = buf_char_hiragana13$(i)) then
22080 buffer_count = 13:goto Moji_count_check:
22090 endif
22100 next i
22110 '14画の文字
22120 for i = 0 to ((Moji_14)-1)
22130 if (name$ = buf_char_hiragana14$(i)) then
22140 buffer_count = 14:goto Moji_count_check:
22150 endif
22160 next i
22170 '15画の文字
22180 for i = 0 to ((Moji_15)-1)
22190 if (name$ = buf_char_hiragana15$(i)) then
22200 buffer_count = 15:goto Moji_count_check:
22210 endif
22220 next i
22230 '16画の文字
22240 for i = 0 to ((Moji_16)-1)
22250 if (name$ = buf_char_hiragana16$(i)) then
22260 buffer_count = 16:goto Moji_count_check:
22270 endif
22280 next i
22290 '17画の文字
22300 for i = 0 to ((Moji_17)-1)
22310 if (name$ = buf_char_hiragana17$(i)) then
22320 buffer_count = 17:goto Moji_count_check:
22330 endif
22340 next i
22350 '18画の文字 25
22360 for i = 0 to ((Moji_18)-1)
22370 if (name$ = buf_char_hiragana18$(i)) then
22380 buffer_count = 18:goto Moji_count_check:
22390 endif
22400 next i
22410 '19画の文字 17
22420 for i = 0 to ((Moji_19)-1)
22430 if (name$ = buf_char_hiragana19$(i)) then
22440 buffer_count = 19:goto Moji_count_check:
22450 endif
22460 next i
22470 '20画の文字 13
22480 for i = 0 to ((Moji_20)-1)
22490 if (name$ = buf_char_hiragana20$(i)) then
22500 buffer_count = 20:goto Moji_count_check:
22510 endif
22520 next i
22530 '21画の文字 6
22540 for i = 0 to ((Moji_21)-1)
22550 if (name$ = buf_char_hiragana21$(i)) then
22560 buffer_count = 21:goto Moji_count_check:
22570 endif
22580 next i
22590 '22画の文字 4
22600 for i = 0 to ((Moji_22)-1)
22610 if (name$ = buf_char_hiragana22$(i)) then
22620 buffer_count = 22:goto Moji_count_check:
22630 endif
22640 next i
22650 '23画の文字 3
22660 for i = 0 to ((Moji_23)-1)
22670 if (name$ = buf_char_hiragana23$(i)) then
22680 buffer_count = 23:goto Moji_count_check:
22690 endif
22700 next i
22710 '24画の文字
22720 for i = 0 to ((Moji_24)-1)
22730 if (name$ = buf_char_hiragana24$(i)) then
22740 buffer_count = 24:goto Moji_count_check:
22750 endif
22760 next i
22770 'Menu3 結果表示 画数の登録確認
22780 Moji_count_check:
22790 bg=0:init"kb:4"
22800 if (buffer_count = 0) then
22810 '登録文字がない場合の処理
22820 'グラフィック領域　ここから
22830 'Moji_count_check:
22840 cls 3:talk ""
22850 '1行
22860 line (0,0)-(1080,60),rgb(0,0,255),bf
22870 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22880 '2行目
22890 line (0,60)-(1080,165),rgb(127,255,212),bf
22900 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22910 '3行目
22920 line (0,165)-(1080,370),rgb(0,0,255),bf
22930 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22940 '4行目
22950 line (0,370)-(1080,450),rgb(0,255,0),bf
22960 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22970 'グラフィック領域　ここまで
22980 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22990 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
23000 talk "この文字は、登録されていません"
23010 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
23020 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
23030 color rgb(0,0,0):print"コマンド:"
23040 while (bg <> 2 and key$ <> chr$(13))
23050 key$ = inkey$
23060 bg = strig(1)
23070 pause 2.50 * 100
23080 wend
23090 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
23100 else
23110 'グラフィック描画領域　ここから
23120 'Entry_moji_check:
23130 cls 3
23140 '1行目
23150 line (0,0)-(1080,58),rgb(0,0,255),bf
23160 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
23170 '2行目
23180 line (0,58)-(1080,100),rgb(127,255,212),bf
23190 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
23200 '3行目
23210 line (0,100)-(1080,280),rgb(0,0,255),bf
23220 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
23230 '4行目
23240 line (0,280)-(1080,340),rgb(0,255,0),bf
23250 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
23260 'グラフィック描画領域　ここまで
23270 color rgb(255,255,255):print "登録文字画数結果表示"
23280 talk "この文字は" + str$(buffer_count) + "かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
23290 endif
23300 while (key$ <> chr$(13) and bg <> 2)
23310 key$ = inkey$
23320 bg = strig(1)
23330 pause 2.50 * 100
23340 wend
23350 if (key$ = chr$(13) or bg = 2) then buffer_count = 0:goto Main_Screen1:
23360 'Menu2 名前の陰陽を見る
23370 'グラフィック描画領域 ここから
23380 name_inyo_check:
23390 init "kb:2":talk ""
23400 cls 3:line (0,0) - (1080,60),rgb(0,0,255),bf
23410 PEN 5:line(0,0) - (1077,57),rgb(127,255,212),b
23420 LINE (0,60) - (1080,250),rgb(127,255,212),bf
23430 pen 5:line (0,57) - (1077,247),rgb(0,0,255),b
23440 line (0,250) - (1080,350),rgb(0,255,0),bf
23450 pen 5:line(0,247) - (1077,347),rgb(0,0,255),b
23460 'グラフィック描画領域　ここまで
23470 cls
23480 color rgb(255,255,255)
23490 print"Menu2 名前の陰陽を見る"+chr$(13)
23500 COLOR rgb(255,0,255)
23510 PRINT"(●:陽,○:陰)"+chr$(13)
23520 print"調べたい名前苗字を入れてください"+chr$(13)
23530 color rgb(0,0,0)
23540 Input"調べたい名前の苗字:",name$
23550 if name$ = "" then goto name_inyo_check:
23560 'Menu2 陰陽の吉凶を見る 名入力
23570 cls:color rgb(255,255,255)
23580 print"Menu2 名前の陰陽を見る"+chr$(13)
23590 color rgb(255,0,255)
23600 print"(●:陽,○:陰)" +  chr$(13)
23610 print"調べたい名前の名を入れてください"+chr$(13)
23620 color rgb(0,0,0)
23630 Input"調べたい名前の名:",name2$
23640 if name2$ = "" then goto name_inyo_check:
23650 for i = 0 to len(name$)-1
23660 name_array$(i) = Mid$(name$,i+1,1)
23670 if char_count(name_array$(i)) mod 2 = 1  then
23680 name_array$(i) = "○":buffer$ = buffer$+name_array$(i)
23690 else
23700 name_array$(i) = "●":buffer$ = buffer$ + name_array$(i)
23710 endif
23720 next i
23730 for i = 0 to len(name2$) - 1
23740 name_array2$(i) = Mid$(name2$,i+1,1)
23750 if char_count(name_array2$(i)) mod 2 = 1 then
23760 name_array2$(i) = "○":buffer2$ = buffer2$ + name_array2$(i)
23770 else
23780 name_array2$(i) = "●":buffer2$ = buffer2$ + name_array2$(i)
23790 endif
23800 next i
23810 bufname$ = buffer$ + buffer2$
23820 '陰陽のタイプ ここから
23830 select case (len(bufname$))
23840 '2文字
23850 case 2:
23860 if ((bufname$ = "○●") or (bufname$ = ●○")) then buffer_name$ = "吉相:姓名2字の陰陽吉相"
23870 'endif
23880 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23890 '  endif
23900 '3文字
23910 case 3:
23920 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23930 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23940 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23950 '4文字
23960 case 4:
23970 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23980 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23990 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
24000 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
24010 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
24020 '5文字
24030 case 5:
24040 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
24050 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
24060 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
24070 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
24080 case 6:
24090 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
24100 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
24110 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
24120 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
24130 case else:
24140 buffer_name$="例外に入りました"
24150 end select
24160 '陰陽のタイプ　ここまで
24170 'グラフィック描画領域　ここから
24180 cls 2:key$="":bg=0:init "kb:4":talk ""
24190 line (0,0)-(1080,60),rgb(0,0,250),bf
24200 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24210 line (0,60)-(1080,285),rgb(127,255,212),bf
24220 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
24230 line (0,280)-(1080,380),rgb(0,255,0),bf
24240 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
24250 'グラフィック描画領域 ここまで
24260 color rgb(255,255,255)
24270 cls:print"名前:";name$ + name2$ + chr$(13)
24280 color rgb(255,0,255)
24290 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
24300 print buffer_name$;chr$(13)
24310 color rgb(0,0,0)
24320 print"エンターキーを押してください"
24330 while (bg <> 2 and key$ <> chr$(13))
24340 key$ = inkey$
24350 bg = strig(1)
24360 pause 2.50 * 100
24370 wend
24380 if (key$ = chr$(13) or bg=2) then buffer$ = "":buffer2$ = "": goto Main_Screen1:
24390 'Menu3
24400 '登録文字数の確認
24410 Entry_moji_check:
24420 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24430 'グラフィック描画領域　ここから
24440 cls 3:init"kb:4":bg=0:key$="":talk ""
24450 '1行目
24460 line (0,0)-(1080,60),rgb(0,0,255),bf
24470 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24480 '2行目
24490 line (0,60)-(1080,150),rgb(157,255,212),bf
24500 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24510 '3行目
24520 line (0,150)-(1080,250),rgb(0,255,0),bf
24530 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24540 'グラフィック描画領域 ここまで
24550 color rgb(255,255,255)
24560 PRINT"登録文字数の確認" + chr$(13)
24570 color rgb(255,0,255)
24580 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24590 TALK"登録文字数は" + str$(totalmoji) + "もじです"
24600 while (key$ <> chr$(13) and bg <> 2)
24610 key$ = inkey$
24620 bg = strig(1)
24630 pause 2.50 * 100
24640 wend
24650 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24660 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24670 nick_name_check:
24680 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24690 'グラフィック描画領域　ここから
24700 cls 3:init "kb:2"
24710 line (0,0) - (1080,60),rgb(0,0,250),bf
24720 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
24730 line (0,60) - (1080,160),rgb(127,255,212),bf
24740 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
24750 line (0,160) - (1080,270),rgb(0,255,0),bf
24760 pen 5:line(0,157) - (1077,267),rgb(0,0,255),b
24770 'グラフィック描画領域　ここまで
24780 buf=0:cls
24790 locate 0,0
24800 color rgb(255,255,255)
24810 Print"名前(ニックネーム)の総数で吉凶を判断します"
24820 locate 0,2
24830 color rgb(255,0,255)
24840 PRINT"名前(ニックネーム)を入れてください"
24850 locate 0,4
24860 color rgb(0,0,0)
24870 Input"名前:",name$
24880 if name$ = "" then goto nick_name_check:
24890 for n = 0 to (len(name$) - 1)
24900 buf_Input_data$(n) = mid$(name$,n + 1,1)
24910 buf = buf + char_count(buf_Input_data$(n))
24920 next n
24930 if buf = 0 then ui_msg "登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24940 '結果表示　グラフィック　ここから
24950 cls 3:init "kb:4":bg = 0:key$ = ""
24960 line (0,0) - (1080,60),rgb(0,0,255),bf
24970 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
24980 line (0,60) - (1080,160),rgb(127,255,212),bf
24990 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
25000 line (0,160) - (1080,540),rgb(0,255,0),bf
25010 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
25020 '結果表示 グラフィック領域 ここまで
25030 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
25040 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
25050 while (key$ <> chr$(13) and bg <> 2)
25060 key$ = inkey$
25070 bg = strig(1)
25080 pause 2.50 * 100
25090 wend
25100 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
25110 '名前2文字
25120 'グラフィック描画領域　ここから
25130 Result_Anzai:
25140 CLS 3:font 32:bg = 0:ke$ = "":init "KB:4":talk ""
25150 line (0,0) - (1400,60),rgb(0,0,255),bf
25160 pen 5:line(0,0) - (1397,57),rgb(127,255,212),b
25170 line (0,60) - (1400,540-180),rgb(127,255,212),bf
25180 pen 5:line(0,57) - (1397,537),rgb(0,0,255),b
25190 line (0,540-180) - (1400,540),rgb(0,255,0),bf
25200 pen 5:line(0,537-180) - (1397,537),rgb(0,0,255),b
25210 'グラフィック描画領域 ここまで
25220 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25230 color rgb(255,0,255)
25240 print"天運";buf_tenunn;chr$(13)
25250 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25260 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25270 print"外運";buf_gaiunn;chr$(13)
25280 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25290 COLOR rgb(0,0,0)
25300 PRINT"エンターキー:トップ画面" + chr$(13)
25310 while (key$<>chr$(13) and bg <> 2)
25320 key$ = inkey$
25330 bg = strig(1)
25340 pause 2.50 * 100
25350 wend
25360 if key$ = chr$(13) or bg = 2 then goto Main_Screen1:
25370 '参考文献 表示 ここから
25380 'グラフィック描画領域　 ここから
25390 Document_info:
25400 cls 3:init"kb:4":bg = 0
25410 line (0,0) - (1080,60),rgb(0,0,255),bf
25420 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
25430 line (0,60) - (1080,650),rgb(127,255,212),bf
25440 pen 5:line(0,57) - (1077,647),rgb(0,0,255),b
25450 line (0,650) - (1080,730),rgb(0,255,0),bf
25460 pen 5:line(0,647) - (1077,727),rgb(0,0,255),b
25470 'グラフィック描画領域  ここまで
25480 '参考文献１
25490 cls
25500 color rgb(255,255,255)
25510 locate 0,0
25520 print"◎参考文献"
25530 color rgb(255,0,255)
25540 locate 0,2
25550 print "参考文献 １/4"
25560 locate 0,4
25570 print "Title:九星姓名判断"
25580 locate 0,6
25590 print "Author:高嶋　 美伶"
25600 locate 0,8
25610 print "出版社:日本文芸者"
25620 locate 0,10
25630 print "ISBN:4-537-20073-1"
25640 locate 0,12
25650 print "定価:1,200+税"
25660 color rgb(0,0,0)
25670 locate 0,14
25680 print "エンターキーを押してください"
25690 while (bg <> 2 and key$<>chr$(13))
25700 key$ = inkey$
25710 bg = strig(1)
25720 pause 2.50 * 100
25730 wend
25740 if (key$ = chr$(13) or bg = 2) then
25750 goto Document_info2:
25760 endif
25770 '参考文献２
25780 Document_info2:
25790 cls:bg = 0:key$ = ""
25800 color rgb(255,255,255)
25810 locate 0,0
25820 print "◎参考文献"
25830 color rgb(255,0,255)
25840 locate 0,2
25850 print "参考文献 ２/4"
25860 locate 0,4
25870 print "Title:究極の姓名判断"
25880 locate 0,6
25890 print "Author:安斎　勝洋"
25900 locate 0,8
25910 print "出版社:説話社"
25920 locate 0,10
25930 print "ISBN:978-4-916217-61-5"
25940 locate 0,12
25950 print "定価:1,800円+税"
25960 color rgb(0,0,0)
25970 locate 0,14
25980 print"エンターキーを押してください"
25990 while (key$ <> chr$(13) and bg <> 2)
26000 key$ = inkey$
26010 bg = strig(1)
26020 pause 2.50 * 100
26030 wend
26040 if (key$ = chr$(13) or bg = 2) then goto Document_info3:
26050 '参考文献３
26060 Document_info3:
26070 cls:bg = 0:key$ = ""
26080 color rgb(255,255,255)
26090 locate 0,0
26100 print"◎参考文献"
26110 color rgb(255,0,255)
26120 locate 0,2
26130 print "参考文献 3/4"
26140 locate 0,4
26150 print "Title:新明解現在漢和辞典"
26160 locate 0,6
26170 print "Author:影山輝國(編集主幹)他"
26180 locate 0,8
26190 print "出版社:三省堂"
26200 locate 0,10
26210 print "ISBN:978-4-385-13755-1"
26220 locate 0,12
26230 print "定価:2,800円 + 税"
26240 color rgb(0,0,0)
26250 locate 0,14
26260 print "エンターキーを押してください"
26270 while (key$ <> chr$(13) and bg <> 2)
26280 key$ = inkey$
26290 bg = strig(1)
26300 pause 2.50 * 100
26310 wend
26320 if (key$ = chr$(13) or bg = 2) then goto Document_info4:
26330 '参考文献４　
26340 '描画領域　ここから
26350 Document_info4:
26360 cls 3:key$ = "":bg = 0
26370 line (0,0)-(1080,60),rgb(0,0,255),bf
26380 line (0,0)-(1077,57),rgb(0,255,0),b
26390 line (0,60)-(1080,650),rgb(127,255,212),bf
26400 LINE (0,60)-(1077,647),rgb(0,0,255),b
26410 LINE (0,650)-(1080,830),rgb(0,255,0),bf
26420 line (0,650)-(1077,833),rgb(0,0,255),b
26430 '描画領域　ここまで
26440 color rgb(255,255,255)
26450 locate 0,0
26460 print "◎参考文献"
26470 COLOR rgb(255,0,255)
26480 locate 0,2
26490 print "参考文献 4/4"
26500 locate 0,4
26510 print "Title:姓名の暗号"
26520 locate 0,6
26530 print "Author:樹門　幸宰(じゅもん こうざい)"
26540 locate 0,8
26550 print "出版社:幻冬舎"
26560 locate 0,10
26570 print "定価:1400円 + 税"
26580 locate 0,12
26590 print "ISBN:4-344-00777-8"
26600 color rgb(0,0,0)
26610 locate 0,14
26620 print "参考文献トップに行く:エンターキー"
26630 locate 0,16
26640 print "スペース：トップメニューに行く"
26650 while (key$ <> chr$(13) and bg <> 2)
26660 key$ = inkey$
26670 bg = strig(1)
26680 pause 2.50 * 100
26690 wend
26700 if (key$ = chr$(13) or bg = 2) then goto help:
26710 '安斎流姓名判断　メニュー
26720 'グラフィック領域　ここから
26730 Anzai_Top:
26740 cls 3:talk ""
26750 No = 0:init "kb:4":y = 0:bg = 0:key$ = ""
26760 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26770 sp_on 0,1:sp_put 0,(10,100),0,0
26780 line (0,0)-(1080,60),rgb(0,0,255),bf
26790 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26800 line (0,60)-(1080,475),rgb(127,255,212),bf
26810 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26820 line (0,475)-(1080,650),rgb(0,255,0),bf
26830 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26840 'グラフィック描画領域　ここまで
26850 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
26860 color rgb(255,255,255)
26870 print "安斎流姓名判断　トップメニュー" + chr$(13)
26880 color rgb(255,0,255)
26890 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26900 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26910 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26920 print " :4.前の画面に戻る"+chr$(13)
26930 locate 0,10
26940 color rgb(0,0,0)
26950 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26960 Anzai_Top2:
26970 y=0:bg=0:key$=""
26980 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26990 key$ = inkey$
27000 y = stick(1)
27010 bg = strig(1)
27020 pause 2.50 * 100
27030 wend
27040 '******************************************************
27050 '1.下のキー　ここから
27060 '******************************************************
27070 if (y = 1 or key$ = chr$(30)) then
27080 select case No
27090 case 0:
27100 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27110 case 1:
27120 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27130 case 2:
27140 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27150 case 3:
27160 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27170 end select
27180 endif
27190 '******************************************************
27200 '1.下のキー　ここまで
27210 '******************************************************
27220 '******************************************************
27230 '2.上のキー　ここから
27240 '******************************************************
27250 if (y=-1 or key$=chr$(31)) then
27260 select case No
27270 case 0:
27280 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27290 case 1:
27300 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27310 case 2:
27320 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27330 case 3:
27340 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27350 end select
27360 endif
27370 '******************************************************
27380 '2.上のキー　ここまで
27390 '******************************************************
27400 '******************************************************
27410 '3.決定ボタン　ここから
27420 '******************************************************
27430 if (key$ = chr$(13) or bg = 2) then
27440 select case No
27450 case 0:
27460 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27470 case 1:
27480 sp_on 1,0:goto Anzai_Top_Screen:
27490 case 2:
27500 sp_on 2,0:goto Anzai_Kaimei_Check:
27510 case 3:
27520 sp_on 3,0:goto seimeihandan_top:
27530 end select
27540 endif
27550 '******************************************************
27560 '3.決定ボタン　ここまで
27570 '******************************************************
27580 '2.安斎流姓名判断　男女の相性占い　ここから
27590 'グラフィック描画領域 ここから
27600 cls 3
27610 '1行目
27620 line (0,0)-(1080,60),rgb(0,0,255),bf
27630 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27640 '2行目
27650 line (0,60)-(1080,160),rgb(127,255,212),bf
27660 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27670 '3行目
27680 line (0,160)-(1080,300),rgb(0,255,0),bf
27690 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27700 'グラフィック描画領域　男女の相性占い ここまで
27710 '1.名前の姓を入力  男性
27720 Anzai_Aishou_Top1:
27730 cls 3
27740 '1行目
27750 line (0,0)-(1080,60),rgb(0,0,255),bf
27760 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27770 '2行目
27780 line (0,60)-(1080,160),rgb(127,255,212),bf
27790 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27800 '3行目
27810 line (0,160)-(1080,300),rgb(0,255,0),bf
27820 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27830 color rgb(255,255,255)
27840 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27850 color rgb(255,0,255)
27860 print "男性の名前(姓)を入れてください"+chr$(13)
27870 color rgb(0,0,0)
27880 Input "男性の名前(姓):",name$
27890 '2.名前の名を入力  男性
27900 cls 3:talk ""
27910 '1行目
27920 line (0,0)-(1080,60),rgb(0,0,255),bf
27930 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27940 '2行目
27950 line (0,60)-(1080,160),rgb(127,255,212),bf
27960 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27970 '3行目
27980 line (0,160)-(1080,300),rgb(0,255,0),bf
27990 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
28000 color rgb(255,255,255)
28010 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28020 color rgb(255,0,255)
28030 print "男性の名前（名）をいれてください"+chr$(13)
28040 color rgb(0,0,0)
28050 Input "男性の名前(名):",name2$
28060 '3.名前(姓)入力 女性
28070 Anzai_Aishou_Top2:
28080 cls:init "kb:2":talk ""
28090 color rgb(255,255,255)
28100 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28110 color rgb(255,0,255)
28120 print "女性の名前(姓)を入れてください"+chr$(13)
28130 color rgb(0,0,0)
28140 Input"女性の名前:",name3$
28150 '4.名前（名)入力 女性
28160 cls:init "kb:2":talk ""
28170 color rgb(255,255,255)
28180 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28190 color rgb(255,0,255)
28200 print "女性の名前（名）を入れてください"+chr$(13)
28210 color rgb(0,0,0)
28220 Input "女性の名前(名):",name4$
28230 '男性　の地運 を求める
28240 '姓名の合計数
28250 '1.男性 名前の文字数を求める
28260 '地運を求める
28270 buf_male_name1 = len(name$)
28280 buf_male_name2 = len(name2$)
28290 buf_male_count = buf_male_name1 + buf_male_name2
28300 '2.女性 名前の文字数を求める
28310 buf_female_name1 = len(name3$)
28320 buf_female_name2 = len(name4$)
28330 buf_female_count = buf_female_name1 + buf_female_name2
28340 'goto Anzai_Aishou_Check:
28350 '1.男性の地運を求める
28360 select case buf_male_count
28370 case 2:
28380 '男性の地運を求める
28390 buf_chiunn = char_count(name2$)
28400 case 3:
28410 '姓が一文字 名が2文字
28420 if buf_male_name1 = 1 and buf_male_name2 = 2 then
28430 buf_Input_name$(0)=mid$(name2$,1,1)
28440 buf_Input_name$(1)=mid$(name2$,2,1)
28450 '地運を計算
28460 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28470 endif
28480 if buf_male_name1=2 and buf_male_name2=1 then
28490 buf_Input_name$(0)=Mid$(name2$,1,1)
28500 buf_chiunn=char_count(buf_Input_name$(0))
28510 endif
28520 case 4:
28530 '1.姓１，名３
28540 if bufmale_name1=1 and buf_male_name2=3 then
28550 buf_Input_name$(0)=Mid$(name2$,1,1)
28560 buf_Input_name$(1)=Mid$(name2$,2,1)
28570 buf_Input_name$(2)=Mid$(name2$,3,1)
28580 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1)) + char_count(buf_Input_name$(2))
28590 endif
28600 '2.姓２,名２
28610 if buf_male_name1 = 2 and buf_male_name2 = 2 then
28620 buf_Input_name$(0)=Mid$(name2$,1,1)
28630 buf_Input_name$(1)=Mid$(name2$,2,1)
28640 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28650 endif
28660 '3.姓３、名１
28670 if buf_male_name1 = 3 and buf_male_name2 = 1 then
28680 buf_Input_name$(0) = Mid$(name2$,1,1)
28690 '地運を求める
28700 buf_chiunn = char_count(buf_Input_name$(0))
28710 endif
28720 case 5:
28730 '1.姓２，名３
28740 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28750 buf_Input_name$(0)=Mid$(name2$,1,1)
28760 buf_Input_name$(1)=Mid$(name2$,2,1)
28770 buf_Input_name$(2)=Mid$(name2$,3,1)
28780 '地運を求める
28790 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28800 endif
28810 '2.姓３，名２
28820 if buf_male_name1=3 and buf_male_name2=2 then
28830 buf_Input_name$(0)=Mid$(name2$,1,1)
28840 buf_Input_name$(1)=Mid$(name2$,2,1)
28850 '地運を求める
28860 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28870 endif
28880 '3.姓４、名１
28890 buf_Input_name$(0) = Mid$(name2$,1,1)
28900 '地運を求める
28910 buf_chiunn = char_count(buf_Input_name$(0))
28920 case 6:
28930 '1.姓３，名３
28940 if buf_male_name1 = 3 and buf_male_name2 = 3 then
28950 buf_Input_name$(0)=Mid$(name2$,1,1)
28960 buf_Input_name$(1)=Mid$(name2$,2,1)
28970 buf_Input_name$(2)=Mid$(name2$,3,1)
28980 '地運を求める
28990 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
29000 endif
29010 '２.姓４，名２
29020 if buf_male_name1 = 4 and buf_male_name2 = 2 then
29030 buf_Input_name$(0)=Mid$(name2$,1,1)
29040 buf_Input_name$(1)=Mid$(name2$,2,1)
29050 '地運を求める
29060 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29070 endif
29080 case else:
29090 end select
29100 '2.女性　外運を求める
29110 select case buf_female_count
29120 '姓と名の合計数
29130 case 2:
29140 buf_Input_name2$(0)=Mid$(name3$,1,1)
29150 buf_Input_name2$(1)=Mid$(name4$,1,1)
29160 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29170 case 3:
29180 if buf_female_name1=2 and buf_female_name2=1 then
29190 buf_Input_name2$(0)=Mid$(name3$,1,1)
29200 buf_Input_name2$(1)=Mid$(name3$,2,1)
29210 buf_Input_name2$(2)=Mid$(name4$,1,1)
29220 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2))
29230 endif
29240 if buf_female_name1 = 1 and buf_female_name2 = 2 then
29250 buf_Input_name2$(0) = Mid$(name3$,1,1)
29260 buf_Input_name2$(1) = Mid$(name4$,1,1)
29270 buf_Input_name2$(2) = Mid$(name4$,2,1)
29280 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2))
29290 endif
29300 case 4:
29310 '姓１、名３
29320 if buf_female_name1 = 1 and buf_female_name2 = 3 then
29330 buf_Input_name2$(0)=Mid$(name3$,1,1)
29340 buf_Input_name2$(1)=Mid$(name4$,1,1)
29350 buf_Input_name2$(2)=Mid$(name4$,2,1)
29360 buf_Input_name2$(3)=Mid$(name4$,3,1)
29370 '外運を求める
29380 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29390 endif
29400 '姓２,名２
29410 if buf_female_name1=2 and buf_female_name2=2 then
29420 buf_Input_name2$(0)=Mid$(name3$,1,1)
29430 buf_Input_name2$(1)=Mid$(name3$,2,1)
29440 buf_Input_name2$(2)=Mid$(name4$,1,1)
29450 buf_Input_name2$(3)=Mid$(name4$,2,1)
29460 '外運を求める
29470 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29480 endif
29490 '姓３，名１
29500 if buf_female_name1=3 and buf_female_name2=1 then
29510 buf_Input_name2$(0)=Mid$(name3$,1,1)
29520 buf_Input_name2$(1)=Mid$(name3$,2,1)
29530 buf_Input_name2$(2)=Mid$(name3$,3,1)
29540 buf_Input_name2$(3)=Mid$(name4$,1,1)
29550 '外運を求める
29560 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29570 endif
29580 case 5:
29590 '姓 3,名2
29600 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29610 buf_Input_name2$(0)=Mid$(name3$,1,1)
29620 buf_Input_name2$(1)=Mid$(name3$,2,1)
29630 buf_Input_name2$(2)=Mid$(name3$,3,1)
29640 buf_Input_name2$(3)=Mid$(name4$,1,1)
29650 buf_Input_name2$(4)=Mid$(name4$,2,1)
29660 '外運を求める
29670 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29680 endif
29690 '姓４、名１
29700 if buf_female_name1=4 and buf_female_name2=1 then
29710 buf_Input_name2$(0)=Mid$(name3$,1,1)
29720 buf_Input_name2$(1)=Mid$(name3$,2,1)
29730 buf_Input_name2$(2)=Mid$(name3$,3,1)
29740 buf_Input_name2$(3)=Mid$(name3$,4,1)
29750 buf_Input_name2$(4)=Mid$(name4$,1,1)
29760 '外運を求める
29770 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29780 endif
29790 '姓２、名３
29800 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29810 buf_Input_name2$(0)=Mid$(name3$,1,1)
29820 buf_Input_name2$(1)=Mid$(name3$,2,1)
29830 buf_Input_name2$(2)=Mid$(name4$,1,1)
29840 buf_Input_name2$(3)=Mid$(name4$,2,1)
29850 buf_Input_name2$(4)=Mid$(name4$,3,1)
29860 '外運を求める
29870 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29880 endif
29890 case 6:
29900 '1.姓３，名３
29910 if buf_female_name1=3 and buf_female_name2=3 then
29920 buf_Input_name2$(0)=Mid$(name3$,1,1)
29930 buf_Input_name2$(1)=Mid$(name3$,2,1)
29940 buf_Input_name2$(2)=Mid$(name3$,3,1)
29950 buf_Input_name2$(3)=Mid$(name4$,1,1)
29960 buf_Input_name2$(4)=Mid$(name4$,2,1)
29970 buf_Input_name2$(5)=Mid$(name4$,3,1)
29980 '外運を求める
29990 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
30000 endif
30010 '2.姓４，名２
30020 if buf_female_name1=4 and buf_female_name2=2 then
30030 buf_Input_name2$(0)=Mid$(name3$,1,1)
30040 buf_Input_name2$(1)=Mid$(name3$,2,1)
30050 buf_Input_name2$(2)=Mid$(name3$,3,1)
30060 buf_Input_name2$(3)=Mid$(name3$,4,1)
30070 buf_Input_name2$(4)=Mid$(name4$,1,1)
30080 buf_Input_name2$(5)=Mid$(name4$,2,1)
30090 '外運を求める
30100 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name$(5))
30110 endif
30120 case 7:
30130 '1姓４，名３
30140 '外運を求める
30150 end select
30160 func buf_number(a)
30170 if a < 10 then
30180 buf_tansu = a
30190 endif
30200 if a > 9 and a < 20 then
30210 buf_tansu = a - 10
30220 endif
30230 if a > 19 and a < 30 then
30240 buf_tansu = a - 20
30250 endif
30260 buffer = buf_tansu
30270 endfunc buffer
30280 check$="No Data"
30290 func Aisyou_type$(man,woman)
30300 Result$="No data"
30310 'check$="No data"
30320 '1.理解し合える最良のカップル
30330 '1のFor文
30340 for i=0 to 19
30350 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30360 Result$ = "1.理解し合える最良のカップル"
30370 check$="○"
30380 ResultNo = 0
30390 endif
30400 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30410 Result$="2.互いに自然体でつきあえるカップル"
30420 ResultNo=1
30430 check$="○"
30440 endif
30450 '3.男性にとって居心地の良いカップル
30460 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30470 Result$="3.男性にとって居心地の良いカップル"
30480 ResultNo=2
30490 check$="△"
30500 endif
30510 '4.女性にとって居心地の良いカップル
30520 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30530 Result$ = "4.女性にとって居心地の良いカップル"
30540 ResultNo=3
30550 check$="△"
30560 endif
30570 '5.恋愛経験を重ねた後なら愛を育める
30580 if buf_short_of_experience1(i) = man AND buf_short_of_experience2(i) = woman then
30590 Result$="5.恋愛経験を重ねた後なら愛を育める"
30600 ResultNo=4
30610 check$="×"
30620 endif
30630 '6
30640 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30650 Result$="6.結婚への発展が困難なカップル"
30660 check$="×"
30670 endif
30680 '7
30690 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30700 Result$="7.愛し方にずれが出てくる二人"
30710 check$="×"
30720 endif
30730 '8
30740 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30750 Result$="8.互いに価値観が噛み合わない相性"
30760 check$="×"
30770 endif
30780 next i
30790 endfunc  Result$
30800 Anzai_Aishou_Check:
30810 cls 3:init"kb:2":bg=0
30820 buf_t_chiunn = buf_number(buf_chiunn)
30830 buf_t_gaiunn=buf_number(buf_gaiunn)
30840 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30850 'グラフィック描画領域　ここから
30860 'Title欄
30870 line(0,0)-(1080,60),rgb(0,0,255),bf
30880 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
30890 '結果表示欄
30900 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
30910 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
30920 'ボタン選択欄
30930 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
30940 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
30950 'グラフィック描画領域　ここまで
30960 'ここから削除　↓
30970 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
30980 'ここまで削除　↑
30990 color rgb(255,255,255):font 40:init"kb:4"
31000 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31010 color rgb(255,0,255)
31020 print "男性の名前:";name$+name2$;chr$(13)
31030 print "地運の単数";buf_t_chiunn;chr$(13)
31040 print "女性の名前:";name3$+name4$;chr$(13)
31050 print "外運の単数";buf_t_gaiunn;chr$(13)
31060 print "二人の相性:";bufferAisyou$;chr$(13)
31070 print "相性判定:";check$;chr$(13)
31080 color rgb(0,0,0)
31090 print "エンターキー:トップ" + chr$(13)
31100 while (bg <> 2)
31110 bg=strig(1)
31120 pause 2.50 * 100
31130 wend
31140 if (bg = 2) then goto Main_Screen1:
31150 '改名チェック
31160 'グラフィック描画領域 ここから
31170 Anzai_Kaimei_Check:
31180 cls 3:init "kb:2":talk ""
31190 line (0,0)-(1080,60),rgb(0,0,255),bf
31200 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
31210 line (0,60)-(1080,370+50),rgb(127,255,212),bf
31220 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
31230 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
31240 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
31250 'グラフィック描画領域 ここまで
31260 talk "ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31270 color rgb(255,255,255)
31280 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31290 color rgb(255,0,255)
31300 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31310 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31320 print "10文字までで入れてください"
31330 locate 0,9
31340 color rgb(0,0,0)
31350 Input "名前:",name$
31360 '計算領域　ここから
31370 '名前から総運を計算
31380 '1.名前の文字数を出す
31390 n = len(name$)
31400 if n > 10 or n = 0 then
31410 '文字数が10個までという表示
31420 'トーストで表示
31430 if n > 10 then
31440 ui_msg "文字は10個までです"
31450 else
31460 ui_msg "文字が空っぽです"
31470 endif
31480 goto Anzai_Aishou_Check:
31490 endif
31500 'それ以外
31510 '総数を出す処理を出す
31520 '画面消去　データー初期化
31530 cls 3:bufer_total = 0:init "kb:4":bg = 0:key$ = ""
31540 'グラフィック描画領域 ここから
31550 line(0,0) - (1080,60),rgb(0,0,255),bf
31560 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
31570 line(0,60) - (1080,300),rgb(127,255,212),bf
31580 pen 5:line(0,57) - (1077,297),rgb(0,0,255),b
31590 line(0,300) - (1080,440),rgb(0,255,0),bf
31600 pen 5:line(0,297) - (1077,437),rgb(0,0,255),b
31610 'グラフィック描画領域 ここまで
31620 color rgb(255,255,255)
31630 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31640 for i=0 to len(name$)-1
31650 buf_Input_name$(i) = Mid$(name$,i+1,1)
31660 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31670 next i
31680 buf_Kikkyo$ = buf_Kikkyo_Anzai_total$(bufer_total - 2)
31690 color rgb(255,0,255)
31700 print "名前:";name$
31710 print "この名前の総数:";bufer_total
31720 print "この名前の吉凶:";buf_Kikkyo$;"です"
31730 color rgb(255,0,255)
31740 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31750 print bufer_total$+chr$(13)
31760 color rgb(0,0,0)
31770 locate 0,7
31780 print"エンターキーを押してください"
31790 while (key$ <> chr$(13) and bg <> 2)
31800 key$ = inkey$
31810 bg = strig(1)
31820 pause 2.50 * 100
31830 wend
31840 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
31850 '改名チェック関数
31860 func Kaimei_check$(r$)
31870 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
31880 '改名の必要なし
31890 talk"この名前は改名の必要がございません。"
31900 print"この名前は、改名の必要はありません"+chr$(13)
31910 '改名の必要ナシの場合
31920 K=0
31930 buffer_K = K
31940 else
31950 '改名の必要あり
31960 Kaimei_check:
31970 talk "この名前は、改名の必要があります"
31980 print "この名前は、改名の必要があります" + chr$(13)
31990 color rgb(0,0,0)
32000 print "改名しますか？"
32010 K=1
32020 buffer_K = K
32030 '◎表示パターン
32040 'パターン１
32050 endif
32060 endfunc result$
32070 'ui_msg = "1件追加しました,残り9件追加できます"
32080 'ファイルの存在確認 設定ファイル:mydata.dat
32090 cls
32100 '設定ファイルの確認
32110 if dir$("config/Parsonal_data/mydata.dat") = "" then
32120 '1.ファイルがない時
32130 goto Kaimei_check:
32140 else
32150 'ファイルがある時
32160 goto sex_type_female:
32170 endif
32180 '1-1.ファイルがない時の処理
32190 '1-1.自分の姓名判断を入力
32200 'グラフィック描画領域 ここから
32210 cls 3
32220 '1行目
32230 line(0,0)-(1080,60),rgb(0,0,250),bf
32240 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
32250 '2行目
32260 line(0,60)-(1080,80),rgb(127,255,212),bf
32270 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
32280 '3行目
32290 line(0,80)-(1080,120),rgb(0,255,0),bf
32300 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
32310 'グラフィック描画領域 ここまで
32320 '1.名前の姓の入力
32330 '1行目 Title
32340 color rgb(255,255,255)
32350 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32360 '2行目 名前の姓を入力
32370 color rgb(255,0,255)
32380 print "自分の名前の姓を入れてください"+chr$(13)
32390 color rgb(0,0,0)
32400 'buf_name1$:自分の名前の姓
32410 Input"名前の姓:",buf_name1$
32420 '2.名前の名の入力
32430 '画面消去
32440 Anzai_myProfile2:
32450 cls
32460 '1行目 Title
32470 color rgb(255,255,255)
32480 print "安斎流姓名判断 相性占い 自分のプロフィール入力" + chr$(13)
32490 '2行目 名前の名の入力
32500 color rgb(255,0,255)
32510 print "自分の名前の名を入れてください" + chr$(13)
32520 color rgb(0,0,0)
32530 'buf_name2$:自分の名前の名
32540 input "名前の名:",buf_name2$
32550 '3.性別入力
32560 cls
32570 '1行目 Title
32580 color rgb(255,255,255)
32590 print "安斎流姓名判断 相性占い 自分のプロフィール入力" + chr$(13)
32600 '2行目 性別入力
32610 color rgb(255,0,255)
32620 print"自分の性別を入れてください(女性 or 男性)" + chr$(13)
32630 sex_type$(0)="女性"
32640 sex_type$(1)="男性"
32650 type=ui_select("sex_type$","性別を選んでください")
32660 '3行目
32670 '性別変数 sex_type$
32680 if type = 1 then
32690 print"自分の性別(女性 or 男性):";sex_type$(1) + chr$(13):sex_type$ = sex_type$(1):goto 33450
32700 else
32710 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
32720 endif
32730 if sex_type$="男性" then
32740 name$=buf_name1$
32750 name2$=buf_name2$
32760 s=1
32770 goto Anzai_Aishou_Top1:
32780 endif
32790 sex_type_female:
32800 If sex_type$="女性" then
32810 name3$=buf_name1$
32820 name4$=buf_name2$
32830 s=2
32840 goto Anzai_Aishou_Top2:
32850 endif
32860 '登録プロフィール確認画面
32870 Entry_Profile:
32880 cls 3:talk ""
32890 'グラフィック描画領域　ここから
32900 '1行目
32910 line(0,0)-(1200,60),rgb(0,0,255),bf
32920 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
32930 '2行目
32940 line(0,60)-(1200,360),rgb(127,255,212),bf
32950 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
32960 '3行目
32970 line(0,100)-(1200,420),rgb(0,255,0),bf
32980 pen 5:line(0,97)-(1197,417)
32990 if s2=2 then goto Entry_Profile:
33000 'グラフィック描画領域　ここまで
33010 '1行目 Title
33020 color rgb(255,255,255)
33030 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33040 color rgb(255,0,255)
33050 print"名前:";buf_name1$+buf_name2$;chr$(13)
33060 PRINT"性別:";sex_type$;chr$(13)
33070 if sex_type$="女性" then
33080 print"外運:";buf_gaiunn;chr$(13)
33090 buffer$="外運:"+str$(buf_gaiunn)
33100 endif
33110 if sex_type$="男性" then
33120 print"地運:";buf_chiunn;chr$(13)
33130 buffer$="地運:"+str$(buf_chiunn)
33140 endif
33150 color rgb(0,0,0)
33160 input"(登録する:Yes/登録しない:No):",key$
33170 if key$="Yes" or key$="yes" then
33180 open "config/Parsonal_data/mydata.dat" for output as #1
33190 print #1,"名前:";buf_name1$+buf_name2$
33200 print #1,"性別:";sex_type$
33210 print #1,buffer$
33220 close #1
33230 ui_msg"データーを保存しました"
33240 goto Main_Screen1:
33250 endif
33260 '２．設定ファイルが存在する場合
33270 'ファイル読み込み 自分のデーターを表示
33280 cls
33290 open "Config/Parsonal_data/mydata.dat" for input as #2
33300 line input #2,a$
33310 line input #2,b$
33320 line input #2,c$
33330 close #2
33340 buffername$=a$
33350 buffername2$=b$
33360 buffername3$=c$
33370 bufff$=Mid$(buffername$,1,3)
33380 buff2$=Mid$(buffername2$,1,3)
33390 buff3$=Mid$(buffername3$,1,3)
33400 n=len(a$)
33410 sextype$=Mid$(buffername2$,4,2)
33420 if sextype$="男性" then
33430 '男性:s2
33440 s2=1
33450 '女性のデーター入力
33460 goto Anzai_Top:
33470 endif
33480 if sextype$="女性" then
33490 s2=2
33500 '男性のデーター入力
33510 goto Anzai_Top:
33520 endif
33530 '女性のデーター結果表示
33540 '1.プロフィール性別男性の場合 ここから
33550 Result_Anzai_Aisyou:
33560 cls:talk ""
33570 color rgb(255,255,255)
33580 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
33590 name_length = len(bufername$)
33600 myname$ = Mid$(buffername$,4,4)
33610 chiunn = val(Mid$(buffername3$,4,2))
33620 tansuu1 = buf_number(chiunn)
33630 bufname$ = name3$ + name4$
33640 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33650 color rgb(255,0,255)
33660 print "自分の名前(男性):";myname$;chr$(13)
33670 print "地運の端数:";tansuu1;chr$(13)
33680 print "相手の名前(女性):";bufname$;chr$(13)
33690 print "外運の端数:";buf_t_gaiunn;chr$(13)
33700 print "二人の相性:";bufferAisyou$;chr$(13)
33710 talk "二人の相性は" + bufferAisyou$
33720 color rgb(0,0,0)
33730 print"エンターキーを押してください"
33740 key$=Input$(1)
33750 'トップ画面に行く
33760 if key$ = chr$(13) then goto Main_Screen1:
33770 '1.プロフィール性別男性の場合　ここまで
33780 '2.プロフィール性別女性の場合　ここから
33790 cls 3
33800 '描画領域　ここから
33810 line (0,0)-(1080,60),rgb(0,0,255),bf
33820 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
33830 line (0,60)-(1080,460),rgb(127,255,212),bf
33840 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
33850 LINE (0,460)-(1080,520),rgb(0,255,0),bf
33860 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
33870 '描画領域 ここまで
33880 color rgb(255,255,255)
33890 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
33900 '計算領域　ここから
33910 myname$ = Mid$(buffername$,4,4)
33920 gaiunn = val(Mid$(buffername3$,4,2))
33930 buf_t_gaiunn = buf_number(buf_gaiunn)
33940 buf_t_chiunn = buf_number(buf_chiunn)
33950 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
33960 bufname$ = name$ + name2$
33970 '計算領域 ここまで
33980 color rgb(255,0,255)
33990 print "自分の名前(女性):";myname$;chr$(13)
34000 print "外運の端数";buf_t_gaiunn;chr$(13)
34010 print "相手の名前(男性):";bufname$;chr$(13)
34020 print "地運の端数:";buf_t_chiunn;chr$(13)
34030 print "二人の相性:";bufferAisyou$;chr$(13)
34040 color rgb(0,0,0)
34050 print "エンターキーを押してください"
34060 key$ = Input$(1)
34070 if key$=chr$(13) then goto Main_Screen1:
34080 '2.プロフィール性別女性の場合　ここまで
34090 '取扱説明書
34100 '相性占い　トップメニュー ここから
34110 'グラフィック ここから
34120 Anzai_Aishou_Top_Menu:
34130 cls 3:talk ""
34140 '1行目
34150 line(0,0)-(1080,60),rgb(0,0,255),bf
34160 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34170 '2行目
34180 line(0,60)-(1080,380),rgb(127,255,212),bf
34190 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34200 '3行目
34210 line(0,360)-(1080,540),rgb(0,255,0),bf
34220 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34230 'グラフィック　ここまで
34240 color rgb(255,255,255)
34250 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34260 color rgb(255,0,255)
34270 print"1.男女の相性"+chr$(13)
34280 print"2.前の画面に戻る"+chr$(13)
34290 print"3.トップ画面に戻る"+chr$(13)
34300 color rgb(0,0,0)
34310 print"番号を選んでください:"+chr$(13)
34320 Input"番号:",key
34330 if key = 1 then goto Anzai_Aishou_Top1:
34340 if key = 2 then goto Anzai_Top:
34350 if key = 3 then goto Main_Screen1:
34360 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34370 'グラフィック領域　ここから
34380 Life_Tenki:
34390 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34400 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34410 line(0,60)-(1150,180),rgb(127,255,212),bf
34420 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34430 line(0,120)-(1150,200),rgb(0,255,0),bf
34440 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34450 'グラフィック領域　ここまで
34460 '誕生日入力　生まれた年
34470 color rgb(255,255,255)
34480 print"誕生日入力　生まれた年" + chr$(13)
34490 COLOR rgb(255,0,255)
34500 print"生まれた年を入れてください" + chr$(13)
34510 color rgb(0,0,0)
34520 Input"生まれた年:",year
34530 '誕生日入力 生まれた月
34540 cls
34550 color rgb(255,255,255)
34560 print"誕生日入力 生まれた月" + chr$(13)
34570 color rgb(255,0,255)
34580 print"生まれた月を入力してください" + chr$(13)
34590 color rgb(0,0,0)
34600 Input"生まれた月:",month
34610 '誕生日入力 生まれた日を入力
34620 cls
34630 color rgb(255,255,255)
34640 print"誕生日入力 生まれた日入力" + chr$(13)
34650 color rgb(255,0,255)
34660 print"生まれた日を入力してください" + chr$(13)
34670 color rgb(0,0,0)
34680 Input"生まれた日:",day
34690 '人生の転機を見る
34700 'グラフィック領域　ここから
34710 cls 3:talk ""
34720 line(0,0)-(1150,60),rgb(0,0,255),bf
34730 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34740 line(0,60)-(1150,470),rgb(127,255,212),bf
34750 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34760 line(0,470)-(1150,520),rgb(0,255,0),bf
34770 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
34780 'グラフィック描画領域  ここまで
34790 cls
34800 buffername$=bufname$ + bufname2$
34810 color rgb(255,255,255)
34820 print buffername$;"さんの人生の転機を見る1"+chr$(13)
34830 color rgb(255,0,255)
34840 buf_total2=buf_total-(fix(buf_total/10)*10)
34850 tenki1_year=year+buf_total2
34860 tenki2_year=year+buf_total2+5
34870 tenki3_year=year+buf_total2+5+5
34880 tenki4_year=year+buf_total2+5+5+5
34890 tenki1=buf_total2
34900 tenki2=buf_total2+5
34910 tenki3=buf_total2+5+5
34920 tenki4=buf_total2+5+5+5
34930 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
34940 print tenki1_year;"年";tenki1;"歳"+chr$(13)
34950 print tenki2_year;"年";tenki2;"歳"+chr$(13)
34960 print tenki3_year;"年";tenki3;"歳"+chr$(13)
34970 print tenki4_year;"年";tenki4;"歳"+chr$(13)
34980 color rgb(0,0,0)
34990 print"エンターキーを押してください"
35000 key$=Input$(1)
35010 if key$=chr$(13) then goto Life_Tenki:
35020 '2ページ目
35030 cls
35040 color rgb(255,255,255)
35050 print buffername$;"さんの人生の転機2"+chr$(13)
35060 color rgb(255,0,255)
35070 tenki5_year = tenki4_year + 5
35080 tenki6_year = tenki4_year + 5 + 5
35090 tenki7_year = tenki4_year + 5 + 5 + 5
35100 tenki8_year = tenki4_year + 5 + 5 + 5+5
35110 tenki5 = tenki4 + 5
35120 tenki6 = tenki4 + 5 + 5
35130 tenki7 = tenki4 + 5 + 5 + 5
35140 tenki8 = tenki4 + 5 + 5 + 5 + 5
35150 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35160 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35170 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35180 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35190 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35200 color rgb(0,0,0)
35210 print"エンターキーを押してください",key$
35220 key$=Input$(1)
35230 if key$ = chr$(13) then goto 35880
35240 '3ページ目
35250 cls
35260 color rgb(255,255,255)
35270 print buffername$;"さんの人生の転機3"+chr$(13)
35280 '計算部分
35290 tenki_year9=tenki8_year + 5
35300 tenki_year10=tenki8_year + 5 + 5
35310 tenki_year11=tenki8_year+5+5+5
35320 tenki_year12=tenki8_year+5+5+5+5
35330 tenki9=tenki8+5
35340 tenki10=tenki8+5+5
35350 tenki11=tenki8+5+5+5
35360 tenki12=tenki8+5+5+5+5
35370 color rgb(255,0,255)
35380 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35390 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35400 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35410 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35420 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35430 color rgb(0,0,0)
35440 print"エンターキーを押してください"
35450 key$=Input$(1)
35460 if key$=chr$(13) then goto 36110
35470 'グラフィック描画領域 ここから
35480 cls 3
35490 line(0,0)-(1150,60),rgb(0,0,255),bf
35500 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35510 line(0,60)-(1150,470),rgb(127,255,212),bf
35520 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35530 line(0,470)-(1150,850),rgb(0,255,0),bf
35540 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35550 'グラフィック描画領域 ここまで
35560 '4回目
35570 cls
35580 color rgb(255,255,255)
35590 print buffername$;"さんの人生の転機４"+chr$(13)
35600 color rgb(255,0,255)
35610 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
35620 '計算部分
35630 tenki_year13 = tenki_year12 + 5
35640 tenki_year14 = tenki_year12 + 5 + 5
35650 tenki_year15 = tenki_year12 + 5 + 5 + 5
35660 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35670 tenki13 = tenki12 + 5
35680 tenki14 = tenki12 + 5 + 5
35690 tenki15 = tenki12 + 5 + 5 + 5
35700 tenki16 = tenki12 + 5 + 5 + 5 + 5
35710 color rgb(255,0,255)
35720 print tenki_year13;"年";tenki13;"歳"+chr$(13)
35730 print tenki_year14;"年";tenki14;"歳"+chr$(13)
35740 print tenki_year15;"年";tenki15;"歳"+chr$(13)
35750 print tenki_year16;"年";tenki16;"歳"+chr$(13)
35760 color rgb(0,0,0)
35770 print"コマンドを入れてください"+chr$(13)
35780 print"q+エンターキー:トップ画面"+chr$(13)
35790 Print"エンターキー:次へ行く"+chr$(13)
35800 print"コマンド:"
35810 key$=Input$(1)
35820 if key$=chr$(13) then goto 36480
35830 IF key$="q" then goto 7830
35840 '
35850 cls
35860 color rgb(255,255,255)
35870 print buffername$;"さんの人生の転機5"+chr$(13)
35880 color rgb(255,0,255)
35890 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35900 tenki_year17=tenki_year16+5
35910 tenki_year18=tenki_year16+5+5
35920 tenki_year19=tenki_year16+5+5+5
35930 tenki_year20=tenki_year16+5+5+5+5
35940 tenki17=tenki16+5
35950 tenki18=tenki16+5+5
35960 tenki19=tenki16+5+5+5
35970 tenki20=tenki16+5+5+5+5
35980 print tenki_year17;"年";tenki17;"歳"+chr$(13)
35990 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36000 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36010 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36020 color rgb(0,0,0)
36030 print"コマンドを入れてください"+chr$(13)
36040 print"トップに戻る:q+エンターキー"+chr$(13)
36050 print"最初から:エンターキー"+chr$(13)
36060 print"コマンド:"
36070 key$=Input$(1)
36080 if key$=chr$(13) then goto 35340
36090 if key$="q" then goto Main_Screen1:
36100 '改名チェック 改名候補を入力
36110 'グラフィック　領域　ここから
36120 '左側 部分
36130 cls 3:talk ""
36140 line(0,0)-(1100,60),rgb(0,0,255),bf
36150 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36160 line(0,60)-(1100,380),rgb(127,255,212),bf
36170 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36180 line(0,380)-(790,470),rgb(0,255,0),bf
36190 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36200 '中央の縦の線 ここから
36210 'line(1100,0)-(1112,370),rgb(0,0,0),b
36220 '中央の縦の線 ここまで
36230 '右側 部分
36240 line(1103,0)-(1700,60),rgb(0,0,255),bf
36250 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36260 'グラフィック 領域　ここまで
36270 '吉凶判定
36280 if buffer_K=0 then
36290 buffer_check$="○"
36300 else
36310 buffer_check$="☓"
36320 endif
36330 'Title 左側の文字
36340 'rgb(255,255,255):白
36350 color rgb(255,255,255)
36360 locate 1,0
36370 print"安斎流姓名判断 改名チェッカー"
36380 'Title 右側の文字
36390 locate size(2)-16,0
36400 print"改名候補リスト(3件まで)"
36410 '候補リストの名前部分 (右側)
36420 '1行目
36430 'locate 22,2
36440 locate size(2)-18,2
36450 color rgb(0,0,0)
36460 print "番号"
36470 'locate 26,2
36480 locate size(2)-14,2
36490 print"名前"
36500 'locate 32,2
36510 locate size(2)-8,2
36520 print"吉凶"
36530 'locate 36,2
36540 locate size(2)-4,2
36550 print"判定"
36560 '2行目
36570 select case kaimei_count
36580 case 0:
36590 'データー1件 の時
36600 kaimei_count = kaimei_count + 1
36610 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
36620 buffer_Kaimei$(0,1,0,0)=name$
36630 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36640 buffer_Kaimei$(0,0,0,1)=buffer_check$
36650 'cls
36660 color rgb(255,0,255)
36670 'locate 23,3
36680 locate size(2)-17,3
36690 print buffer_Kaimei$(1,0,0,0)
36700 'locate 25,3
36710 locate size(2)-15,3
36720 print buffer_Kaimei$(0,1,0,0)
36730 'locate 32,3
36740 locate size(2)-8,3
36750 print buffer_Kaimei$(0,0,1,0)
36760 locate size(2)-3,3
36770 print buffer_Kaimei$(0,0,0,1)
36780 case 1:
36790 'データー2件の時
36800 color rgb(255,0,255)
36810 kaimei_count = kaimei_count + 1
36820 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
36830 buffer_Kaimei$(0,2,0,0)=name$
36840 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
36850 buffer_Kaimei$(0,0,0,2)=buffer_check$
36860 'cls
36870 '1行目
36880 'locate 23,3
36890 locate size(2)-17,3
36900 print buffer_Kaimei$(1,0,0,0)
36910 'locate 25,3
36920 locate size(2)-15,3
36930 print buffer_Kaimei$(0,1,0,0)
36940 'locate 32,3
36950 locate size(2)-8,3
36960 print buffer_Kaimei$(0,0,1,0)
36970 'locate 37,3
36980 locate size(2)-3,3
36990 print buffer_Kaimei$(0,0,0,1)
37000 '2行目
37010 'locate 23,4
37020 locate size(2)-17,4
37030 print buffer_Kaimei$(2,0,0,0)
37040 'locate 25,4
37050 locate size(2)-15,4
37060 print buffer_Kaimei$(0,2,0,0)
37070 'locate 32,4
37080 locate size(2)-8,4
37090 print buffer_Kaimei$(0,0,2,0)
37100 'locate 37,4
37110 locate size(2)-3,4
37120 print buffer_Kaimei$(0,0,0,2)
37130 case 2:
37140 'データー3件の時
37150 '1
37160 color rgb(255,0,255)
37170 kaimei_count=kaimei_count+1
37180 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37190 buffer_Kaimei$(0,3,0,0)=name$
37200 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37210 buffer_Kaimei$(0,0,0,3)=buffer_check$
37220 '2  1行目
37230 'locate 23,3
37240 locate size(2)-17,3
37250 print buffer_Kaimei$(1,0,0,0)
37260 'locate 25,3
37270 locate size(2)-15,3
37280 print buffer_Kaimei$(0,1,0,0)
37290 'locate 32,3
37300 locate size(2)-8,3
37310 print buffer_Kaimei$(0,0,1,0)
37320 'locate 37,3
37330 locate size(2)-3,3
37340 print buffer_Kaimei$(0,0,0,1)
37350 '3  2行目
37360 'locate 23,4
37370 locate size(2)-17,4
37380 print buffer_Kaimei$(2,0,0,0)
37390 'locate 25,4
37400 locate size(2)-15,4
37410 print buffer_Kaimei$(0,2,0,0)
37420 'locate 32,4
37430 locate size(2)-8,4
37440 print buffer_Kaimei$(0,0,2,0)
37450 'locate 37,4
37460 locate size(2)-3,4
37470 print buffer_Kaimei$(0,0,0,2)
37480 '4  3行目
37490 'locate 23,5
37500 locate size(2)-17,5
37510 print buffer_Kaimei$(3,0,0,0)
37520 'locate 25,5
37530 locate size(2)-15,5
37540 print  buffer_Kaimei$(0,3,0,0)
37550 'locate 32,5
37560 locate size(2)-8,5
37570 print buffer_Kaimei$(0,0,3,0)
37580 'locate 37,5
37590 locate size(2)-3,5
37600 print buffer_Kaimei$(0,0,0,3)
37610 case 3:
37620 'データー4件の時
37630 '1
37640 '2
37650 '3
37660 '4
37670 '5
37680 end select
37690 '説明部分　左側
37700 locate 0,2
37710 color rgb(255,0,255)
37720 print"思いついた候補の名前"
37730 locate 0,4
37740 print"(ニックネーム　or 会社名)を"
37750 locate 0,6
37760 print"10文字以内で入力してください"
37770 color rgb(0,0,0)
37780 locate 0,8
37790 if kaimei_count = 1 or kaimei_count = 2 then
37800 Input"名前:",kouho_name$
37810 name$=kouho_name$
37820 n=len(name$)
37830 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 36760
37840 'else
37850 if n =< 10 then goto 31740
37860 endif
37870 if kaimei_count = 3 then
37880 Input"エンターキーを押してください",key$
37890 if key$ = "" then
37900 'データーを初期化して、トップ画面に行く
37910 '1.データーを初期化
37920 kaimei_count = 0
37930 for i=1 to 3
37940 buffer_Kaimei$(i,0,0,0) = ""
37950 buffer_Kaimei$(0,i,0,0) = ""
37960 buffer_Kaimei$(0,0,i,0) = ""
37970 buffer_Kaimei$(0,0,0,i) = ""
37980 next i
37990 '2.トップ画面に行く
38000 goto 7830
38010 endif
38020 endif
38030 '霊遺伝姓名学 ここから
38040 'グラフィック領域　ここから
38050 '性別入力
38060 Reiden_Top_Input_Sextype:
38070 cls 3:talk ""
38080 No = 1:y = 0:key$ = "":bg = 0:init "kb:4"
38090 sp_on 1,1:sp_put 1,(10,200),1,0
38100 'Line1
38110 line (0,0)-(1080,60),rgb(0,0,255),bf
38120 line (0,0)-(1080,57),rgb(0,255,0),b
38130 'Line 2
38140 line (0,63)-(1080,537),rgb(127,255,212),bf
38150 line (0,60)-(1080,540),rgb(0,0,0),b
38160 'Line 3
38170 line (0,540)-(1080,630),rgb(0,255,0),bf
38180 line (0,543)-(1080,633),rgb(0,0,255),b
38190 'グラフィック領域　ここまで
38200 '音声表示
38210 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38220 '性別変数:sex_type=0
38230 '文字色： 白
38240 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38250 '文字色：赤
38260 color rgb(255,0,255)
38270 print"占う人の性別の番号を入れてください" + chr$(13)
38280 print" :1.女 性" + chr$(13)
38290 print" :2.男 性" + chr$(13)
38300 print" :3.前の画面に戻る" + chr$(13)
38310 locate 0,12
38320 color rgb(0,0,0)
38330 print "1.女性を選択しました"
38340 Reiden_Top_Input_Sextype2:
38350 y = 0:key$ = "":bg = 0
38360 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38370 key$=inkey$
38380 y=stick(1)
38390 bg=strig(1)
38400 pause 2.50*100
38410 wend
38420 if (key$=chr$(31) or y=1) then
38430 select case No
38440 case 1:
38450 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38460 case 2:
38470 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38480 case 3:
38490 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38500 end select
38510 endif
38520 if (key$ = chr$(30) or y = -1) then
38530 select case No
38540 case 1:
38550 No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38560 case 2:
38570 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
38580 case 3:
38590 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38600 end select
38610 endif
38620 if (bg=2 or key$=chr$(13)) then
38630 select case No
38640 case 1:
38650 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38660 case 2:
38670 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38680 case 3:
38690 sp_on 3,0:goto Main_Screen1:
38700 end select
38710 endif
38720 '描画領域　ここから
38730 ReiIden_Input_male:
38740 cls 3:init"kb:2":talk ""
38750 'Line 1 Title
38760 line (0,0)-(850,60),rgb(0,0,255),bf
38770 line (0,0)-(850,57),rgb(0,255,0),b
38780 'Line2 Input name
38790 line (0,60)-(850,300),rgb(0,255,0),bf
38800 line (0,60)-(850,303),rgb(0,0,255),b
38810 '描画領域 ここまで
38820 '文字色：白
38830 color rgb(255,255,255)
38840 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
38850 '文字色：黒
38860 color rgb(0,0,0)
38870 print "名前の姓の部分を入れてください" + chr$(13)
38880 Input"名前(姓の部分):",name1$
38890 '名の入力部分
38900 cls
38910 color rgb(255,255,255)
38920 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
38930 color rgb(0,0,0)
38940 print "名前の名の部分を入れてください"+chr$(13)
38950 Input"名前(名の部分):",name2$:goto check:
38960 '2.女性の場合　既婚か未婚か確認する
38970 '2-2-1女性の姓の入力
38980 'グラフィック領域　ここから
38990 ReiIden_Input_female:
39000 cls 3:init"kb:2":talk ""
39010 'Line1 Title
39020 line (0,0)-(850,60),rgb(0,0,255),bf
39030 line (0,0)-(850,57),rgb(0,255,0),b
39040 'Line 2 入力欄
39050 line (0,60)-(850,360),rgb(0,255,0),bf
39060 line (0,60)-(850,357),rgb(0,0,255),b
39070 'Line 2 入力欄(名前入力)
39080 'グラフィック領域 ここまで
39090 cls:init"kb:2"
39100 color rgb(255,255,255)
39110 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39120 color rgb(255,0,0)
39130 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39140 color rgb(0,0,0)
39150 print "名前の姓の部分を入れてください"+chr$(13)
39160 Input "名前(姓の部分):",name3$
39170 '2-2-2女性の名の入力
39180 cls:init"kb:2"
39190 color rgb(255,255,255)
39200 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39210 color rgb(0,0,0)
39220 print "名前の名の部分を入れてください"+chr$(13)
39230 Input "名前(名の部分):",name4$
39240 '計算領域　ここから
39250 check:
39260 '苗字の画数:buffer_name1_count
39270 'name1$,name2$:男性
39280 if sex_type = 1 then
39290 'sex_type=1 :女性のとき
39300 buf_male_female_name1$=name3$
39310 buf_male_female_name2$=name4$
39320 endif
39330 if sex_type = 2 then
39340 'sex_type=2 :男性のとき
39350 buf_male_female_name1$=name1$
39360 buf_male_female_name2$=name2$
39370 endif
39380 buffer_name1_count=len(buf_male_female_name1$)
39390 buffer_name2_count=len(buf_male_female_name2$)
39400 select case buffer_name1_count
39410 'AとBを求める
39420 case 1:
39430 '1.苗字の画数が1つのとき
39440 'A:霊数 1
39450 A=1
39460 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39470 B = char_count(buf_name1$)
39480 case 2:
39490 '2.苗字の画数が2つのとき
39500 '2-1:苗字の1文字目:buf_name1$
39510 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39520 '2-2:苗字の2文字目:buf_name2$
39530 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
39540 A=char_count(buf_name1$)
39550 B=char_count(buf_name2$)
39560 'B=char_count(buf_name2$)
39570 case 3:
39580 '3.苗字の画数が3つの時
39590 '3-1:苗字の1文字目:buf_name1$
39600 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39610 '3-2:苗字が3つのときの2つ目の文字をもとめる
39620 '3-2:苗字の2つ目:buf_name2$
39630 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39640 '3-3:苗字が3つのときの3文字目
39650 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39660 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39670 if buf_name2$="々" then
39680 A = char_count(buf_name1$) * 2
39690 B = char_count(buf_name3$)
39700 else
39710 A = char_count(buf_name1$) + char_count(buf_name2$)
39720 B = char_count(buf_name3$)
39730 endif
39740 '姓が4文字
39750 case 4:
39760 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39770 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39780 buf_name3$=Mid$(buf_male_female_name1$,3,1)
39790 buf_name4$=Mid$(buf_male_female_name1$,4,1)
39800 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
39810 B=char_count(buf_name4$)
39820 case else:
39830 end select
39840 '2.C,Dを求める
39850 select case buffer_name2_count
39860 case 1:
39870 '名が1文字の時
39880 'CとDを求める
39890 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39900 C = char_count(buff_name1$)
39910 'D=1:霊数
39920 D = 1
39930 case 2:
39940 '名が2文字の時
39950 'CとDを求める
39960 '名の1文字目:buff_name1$
39970 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39980 '名の2文字目:buff_name2$
39990 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40000 C = char_count(buff_name1$)
40010 D = char_count(buff_name2$)
40020 case 3:
40030 '名が3文字の時
40040 'CとDを求める
40050 '名の1文字目:buff_name1$
40060 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40070 '名の2文字目:buff_name2$
40080 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40090 if buff_name2$ = "々" then
40100 buff_name2$ = buff_name1$
40110 endif
40120 '名の3文字目:buff_name3$
40130 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40140 C = char_count(buff_name1$)
40150 D = char_count(buff_name2$) + char_count(buff_name3$)
40160 end select
40170 '1.先祖運を求める
40180 buffer_Senzo = A + B
40190 '2.性格運を求める
40200 buffer_Seikaku = B + C
40210 '3.愛情運を求める
40220 buffer_Aijyou = C + D
40230 '4.行動運を求める
40240 buffer_Kouzou = A + D
40250 '1.生数を求める
40260 func buf_Seisu(buffer)
40270 if buffer < 10 then
40280 seisu=buffer
40290 endif
40300 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40310 seisu = 0
40320 endif
40330 if buffer > 10 then
40340 if buffer=20 then
40350 seisu = 0
40360 else
40370 n = buffer - (fix(buffer / 10) * 10)
40380 seisu = n
40390 endif
40400 endif
40410 endfunc seisu
40420 func buf_Wasu(buffer)
40430 buf_wasu = 0:wasu = 0
40440 if buffer < 10 then
40450 '
40460 wasu = buffer:goto wasu:
40470 else
40480 if buffer = 10 then
40490 wasu = 1:goto wasu:
40500 else
40510 if buffer > 10  then
40520 if buffer=19 or buffer=28 or buffer=37 then
40530 wasu=1:goto wasu:
40540 else
40550 if buffer = 29 then
40560 wasu=2:goto wasu:
40570 'endif
40580 else
40590 a = fix(buffer / 10)
40600 b = buffer - a * 10
40610 c = a + b
40620 if c = 19 or c=28 then
40630 wasu=1
40640 '
40650 else
40660 wasu=c
40670 endif
40680 endif
40690 endif
40700 endif
40710 endif
40720 if c < 10 then
40730 wasu = c
40740 'endif
40750 endif
40760 else
40770 if buffer=19 or buffer=28 then
40780 wasu = 1
40790 endif
40800 endif
40810 wasu:
40820 buf_wasu=wasu
40830 endfunc buf_wasu
40840 func buf_kyoudai$(buf_sex_type,buf_Sa$)
40850 select case buf_sex_type
40860 '1.女性の場合
40870 case 1:
40880 if (buf_Sa$ = "連続") then
40890 buffer_kyoudai$="長女"
40900 endif
40910 if (buf_Sa$ = "1差") then
40920 buffer_kyoudai$="次女"
40930 endif
40940 if (buf_Sa$ = "2差") then
40950 buffer_kyoudai$="三女"
40960 endif
40970 if (buf_Sa$ = "3差") then
40980 buffer_kyoudai$="四女"
40990 endif
41000 if (buf_Sa$ = "4差") then
41010 buffer_kyoudai$="五女"
41020 endif
41030 '男性の場合
41040 case 2:
41050 if (buf_Sa$ = "連続") then
41060 buffer_kyoudai$="長男"
41070 endif
41080 if (buf_Sa$ = "1差") then
41090 buffer_kyoudai$="次男"
41100 endif
41110 if (buf_Sa$ = "2差") then
41120 buffer_kyoudai$="三男"
41130 endif
41140 if (buf_Sa$ = "3差") then
41150 buffer_kyoudai$="四男"
41160 endif
41170 if (buf_Sa$ = "4差") then
41180 buffer_kyoudai$="五男"
41190 endif
41200 case else:
41210 end select
41220 kyoudai$=buffer_kyoudai$
41230 endfunc kyoudai$
41240 '1.タテ型
41250 '1.同じ数字が2組ある場合
41260 func Tate_gata$()
41270 if Senzo_wasu = Seikaku_wasu  then
41280 if Aijyou_wasu - Seikaku_wasu > 1 then
41290 Spirit_type$="タテ型"
41300 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41310 Sa$ = str$(Sa_count) + "差"
41320 else
41330 Spirit_type$="タテ型"
41340 Sa$="連続"
41350 endif
41360 endif
41370 endfunc
41380 '2. ナナメ型
41390 '同じ数字が2組ある場合
41400 func Naname_gata$()
41410 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
41420 Spirit_type$="斜め型"
41430 endif
41440 if Seikaku_wasu - Senzo_wasu > 1 then
41450 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
41460 Sa$=str$(Sa_count)+" 差"
41470 else
41480 Sa$="連続"
41490 endif
41500 endfunc
41510 '3.表十字型
41520 '同じ数字が2組ある場合
41530 func Omote_jyuji_gata1$()
41540 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
41550 Spirit_type$ = "表十字型"
41560 endif
41570 if Senzo _wasu - Seikaku_wasu > 1 then
41580 Sa_count = Senzo_wasu - Seikaku_wasu - 1
41590 else
41600 if Senzo_wasu  -  Seikaku_wasu = 1  then
41610 Sa$="連続"
41620 endif
41630 endif
41640 endfunc
41650 '3-1.表十字型(ヨコ系)
41660 func Omote_jyuji_gata_yoko$()
41670 endfunc
41680 '3-2.表十字型(上下型)
41690 func Omote_jyuji_gata_jyouge()
41700 endfunc
41710 '4.ヨコ型
41720 func Yoko_gata$()
41730 endfunc
41740 '5.上下型
41750 func Jyouge_gata$()
41760 endfunc
41770 '6.1.中広型(タテ系)
41780 func Nakahiro_Tate$()
41790 endfunc
41800 '6.2中広型(ナナメ系)
41810 func Nakahiro_Naname$()
41820 endfunc
41830 '6.3中広型(表十字型)
41840 func Nakahiro_Omotejyuji$()
41850 endfunc
41860 '7.1.中一差(タテ系)
41870 func Chuissa_Tate$()
41880 endfunc
41890 '7.2中一差(ナナメ系)
41900 func Chuissa_Naname$()
41910 endfunc
41920 '8.1.中二差(タテ系)
41930 func Chunissa_Tate$()
41940 endfunc
41950 '8.2.中二差(ナナメ系)
41960 '9.1.順序型(タテ上下系)
41970 func Chunissa_Tate_jyouge$()
41980 endfunc
41990 '9.2.順序型(タテ、ヨコ系)
42000 func Jyunjyo_Tate_yoko$()
42010 endfunc
42020 '9.3.順序型(ナナメ、上下系)
42030 func Jyunjyo_Naname_jyouge$()
42040 endfunc
42050 '9.4.順序型(ナナメ、ヨコ系)
42060 '10.1.中順序型(ヨコ系)
42070 func Nakajyunjyo_yoko$()
42080 endfunc
42090 '10.2.中順序型(上下系)
42100 func Nakajyunjyo_jyouge$()
42110 endfunc
42120 '11.1.隔離型(タテ、上下系)
42130 func Kakuri_tate_jyouge$()
42140 endfunc
42150 '11.2.隔離型(タテ、ヨコ系)
42160 func Kakuri_tate_yoko$()
42170 endfunc
42180 '11.3.隔離型(ナナメ、上下系)
42190 func Kakuri_Naname_jyouge$()
42200 endfunc
42210 '11.4.隔離型(ナナメ、ヨコ系)
42220 func Kakuri_Naname_yoko$()
42230 endfunc
42240 '11.5.隔離型(タテ系)
42250 func Kakuri_tate$()
42260 endfunc
42270 '11.6.隔離型(ナナメ系)
42280 func Kakuri_naname$()
42290 endfunc
42300 '11.7.隔離型(上下、ヨコ系)
42310 func Kakuri_Jyouge_yoko$()
42320 endfunc
42330 Spirit_type$="No data"
42340 '1.先祖運　和数
42350 Senzo_wasu = buf_Wasu(buffer_Senzo)
42360 '2.先祖運 生数
42370 Senzo_seisu = buf_Seisu(buffer_Senzo)
42380 '3.性格運 和数
42390 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
42400 '4.性格運 生数
42410 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
42420 '5.愛情運 和数
42430 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
42440 '6.愛情運 生数
42450 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
42460 '7.行動運 和数
42470 Koudou_wasu = buf_Wasu(buffer_Kouzou)
42480 '8.行動運 生数
42490 Koudou_seisu = buf_Seisu(buffer_Kouzou)
42500 '計算領域 ここまで
42510 '描画領域　ここから
42520 Result_ReiIden1:
42530 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
42540 'Title
42550 line (0,0)-(850,60),rgb(0,0,255),bf
42560 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
42570 'name
42580 line (0,60)-(850,165),rgb(0,255,0),bf
42590 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
42600 '生数、和数
42610 line (0,165)-(850,550),rgb(125,255,212),bf
42620 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
42630 'プッシュメッセージ
42640 line (0,550)-(850,650),rgb(0,255,0),bf
42650 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
42660 '描画領域　ここまで
42670 color rgb(255,255,255)
42680 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
42690 color rgb(0,0,0)
42700 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
42710 color rgb(255,0,255)
42720 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
42730 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
42740 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
42750 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
42760 talk "診断結果１です、あなたのわすうとせいすうです。"
42770 color rgb(0,0,0)
42780 print"エンターキーを押してください"
42790 while (bg <> 2 and key$ <> chr$(13))
42800 key$=inkey$
42810 bg=strig(1)
42820 pause 2.50*100
42830 wend
42840 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
42850 '描画領域　ここから
42860 Result_ReiIden2:
42870 cls 3:init"kb:4"
42880 'Title Color:青
42890 line (0,0)-(860,60),rgb(0,0,255),bf
42900 'Title 枠
42910 line (0,0)-(860,57),rgb(255,0,255),b
42920 'Message
42930 line (0,60)-(860,650),rgb(127,255,212),bf
42940 'Message 枠
42950 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
42960 '
42970 '描画領域　ここまで
42980 color rgb(255,255,255)
42990 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43000 '十二運の基礎運
43010 '1.四大主流型
43020 'パターン１ 同じ数字の場合
43030 '1.オール同数化 全部同じ
43040 '1-if
43050 sa_count=0
43060 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43070 Spirit_type$ = "オール同数化"
43080 Sa$="3差"
43090 else
43100 'パターン１ 同じ数字2つの場合
43110 '2.タテ型
43120 '数字が２つ同じ
43130 '2-if
43140 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43150 Spirit_type$ = "タテ型"
43160 '2.タテ型　1
43170 if Koudou_wasu - Senzo_wasu = 1 then
43180 Sa$="連続"
43190 else
43200 '2.タテ型　2
43210 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43220 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43230 Sa$=str$(Sa_count) + "差"
43240 endif
43250 endif
43260 endif
43270 endif
43280 '2.タテ型　3
43290 '1.type
43300 'Spirit_type$ = "四大主流型 タテ型"
43310 '3.斜め型
43320 '数字が２つ同じ
43330 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
43340 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
43350 Sa$="連続"
43360 else
43370 '先祖＝行動　性格運=愛情運
43380 '3-if
43390 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
43400 Spirit_type$="斜め型"
43410 '3.斜め型 1
43420 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
43430 Sa$ = "連続"
43440 else
43450 if (Seikaku_wasu - Koudou_wasu) < 1 then
43460 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
43470 endif
43480 endif
43490 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
43500 Sa_count = 3
43510 Sa$ = str$(Sa_count - 1) + "差"
43520 else
43530 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
43540 Sa_count = Senzo_wasu - Seikaku_wasu
43550 Sa$ = str$(Sa_count-1) + "差"
43560 endif
43570 endif
43580 endif
43590 '3-if
43600 endif
43610 '3.斜め型 2
43620 '3.斜め型 3
43630 '数字が２つ同じ
43640 '表十字型
43650 '先祖運＝愛情運　　行動運＝性格運
43660 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43670 Spirit_type$="表十字型"
43680 Sa_coun = Senzo_wasu - Seikaku_wasu
43690 if Sa_count > 1 then
43700 Sa$ = str$(Sa_count) + "差"
43710 else
43720 if Sa_count = 1 then
43730 Sa$ = "連続"
43740 endif
43750 endif
43760 endif
43770 'endif
43780 '数字が２つ同じ
43790 '表十字型(横型)
43800 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
43810 Spirit_type$="表十字型(ヨコ型)"
43820 'Sa$を後で書く
43830 endif
43840 '数字が２つ同じ
43850 '表十字型(上下型)
43860 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
43870 Spirit_type$="表十字型(上下型)"
43880 'Sa$を後で書く
43890 endif
43900 'ヨコ型
43910 if Koudou_wasu = Seikaku_wasu then
43920 n=abs(Senzo_wasu - Seikaku_wasu)
43930 n2 = abs(Aijyou_wasu-Seikaku_wasu)
43940 Spirit_type$="ヨコ型"
43950 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
43960 Sa$="連続"
43970 endif
43980 if n = n2 then
43990 if n > 1 then
44000 Sa_count = n - 1
44010 Sa$=str$(Sa_count)+"差"
44020 else
44030 Sa_Count = abs(n - n2)
44040 if Sa_Count > 1 then
44050 Sa$ = str$(Sa_Count) + "差"
44060 endif
44070 endif
44080 endif
44090 endif
44100 '上下型
44110 '同じ数字が1組みある場合
44120 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44130 Spirit_type$ = "上下型"
44140 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44150 Sa$="連続"
44160 endif
44170 endif
44180 '連続した数字が2組みある場合
44190 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
44200 Spirit_type$="中広（なかこう)型(表十字型)"
44210 n=Min(Koudou_wasu , Seikaku_wasu)
44220 n2=Max(Aijyou_wasu , Senzo_wasu)
44230 Sa_count = n - n2
44240 if Sa_count > 1 then
44250 Sa$ = str$(Sa_count - 1) + "差"
44260 else
44270 if Sa_count = 1 then
44280 Sa$ = "連続"
44290 endif
44300 endif
44310 endif
44320 '中一差（タテ系)
44330 '連続した数字が2組みある場合
44340 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
44350 'Spirit_type$="中一差（タテ系)"
44360 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
44370 n = Max(Koudou_wasu,Aijyou_wasu)
44380 n2 = Max(Senzo_wasu,Seikaku_wasu)
44390 else
44400 n = Max(Koudou_wasu,Aijyou_wasu)
44410 n2 = Min(Senzo_wasu,Seikaku_wasu)
44420 endif
44430 Sa_count2 = abs(n2 - n) - 1
44440 if Sa_count2 >= 0 then
44450 select case Sa_count2
44460 case 1:
44470 '中一差（タテ系)
44480 Sa$ = "連続"
44490 Spirit_type$="中一差型（タテ系)*"
44500 case 2:
44510 '中二差型（タテ系)
44520 Sa$ = "1差"
44530 Spirit_type$="中二差型（タテ系)"
44540 case 3:
44550 '中広（なかこう)型(タテ系)
44560 Sa$ = "2差"
44570 Spirit_type$="中三差型（タテ系)"
44580 case 4:
44590 Sa$ = "3差"
44600 Spirit_type$="中広型(タテ系)"
44610 case  else:
44620 cls 3:print"例外に入りました"
44630 end select
44640 '
44650 else
44660 cls 3:print"例外に入りました"
44670 endif
44680 endif
44690 'endif
44700 '中一差（斜め系)
44710 '連続した数字が2組みある場合
44720 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
44730 n = Min(Koudou_wasu,Senzo_wasu)
44740 n2 = Max(Aijyou_wasu,Seikaku_wasu)
44750 Sa_count = n - n2 - 1
44760 select case Sa_count
44770 case 1:
44780 '中一差（斜め系)
44790 '連続した数字が2組みある場合
44800 Sa$="1差"
44810 Spirit_type$="中一差（斜め系)"
44820 case 2:
44830 '中二差（斜め系)
44840 '連続した数字が2組みある場合
44850 Sa$="2差"
44860 Spirit_type$="中二差（斜め系)"
44870 case 3:
44880 Sa$="3差"
44890 Spirit_type$="中広型（斜め系）"
44900 case else:
44910 end select
44920 endif
44930 '順序型(タテ、上下系)
44940 '数字が４つ連続してる場合
44950 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
44960 Spirit_type$="順序型(タテ、上下系)"
44970 Sa$="連続"
44980 endif
44990 '中順序型(ヨコ系)
45000 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45010 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45020 Spirit_type$="中順序型(ヨコ系)"
45030 Sa$="1差"
45040 else
45050 '順序型(タテ、ヨコ系)
45060 '数字が４つ連続してる場合
45070 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45080 Spirit_type$="順序型(タテ、ヨコ系)"
45090 Sa$="連続"
45100 endif
45110 endif
45120 endif
45130 '中順序型(上下系)
45140 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
45150 n=Max(Senzo_wasu,Aijyou_wasu)
45160 n2=Min(Koudou_wasu,Seikaku_wasu)
45170 Sa_count = n2 - n
45180 if Sa_count > 1 then
45190 Spirit_type$="中順序型(上下系)"
45200 Sa$ = Str$(Sa_count) + "差"
45210 else
45220 '順序型(斜め、上下系)
45230 '数字が４つ連続してる場合
45240 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
45250 Spirit_type$ = "順序型(斜め、上下系)"
45260 Sa$="連続"
45270 endif
45280 endif
45290 endif
45300 '順序型(斜め、ヨコ系)
45310 '数字が４つ連続してる場合
45320 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
45330 Spirit_type$="順序型(斜め、ヨコ系)"
45340 Sa$="連続"
45350 endif
45360 '隔離型(タテ、上下系)
45370 '数字が1つおきに飛んでる場合
45380 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
45390 Spirit_type$="隔離型(タテ、上下系)"
45400 Sa$="1差"
45410 endif
45420 '隔離型(タテ、ヨコ系)
45430 '数字が1つおきに飛んでる場合
45440 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
45450 Spirit_type$="隔離型(タテ、ヨコ系)"
45460 Sa$="1差"
45470 endif
45480 '隔離型(斜め、上下系)
45490 '数字が1つおきに飛んでる場合
45500 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
45510 Spirit_type$="隔離型(斜め、上下系)"
45520 Sa$="1差"
45530 endif
45540 '隔離型(斜め、ヨコ系)
45550 '数字が1つおきに飛んでる場合
45560 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
45570 Spirit_type$="隔離型(斜め、ヨコ系)"
45580 Sa$="1差"
45590 endif
45600 '隔離型(タテ系)
45610 '数字が2つおきに飛んでる場合
45620 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
45630 Spirit_type$="隔離型(タテ系)"
45640 Sa$="1差"
45650 endif
45660 '隔離型(斜め系)
45670 '数字が2つおきに飛んでる場合
45680 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
45690 Spirit_type$="隔離型(斜め系)"
45700 Sa$="1差"
45710 endif
45720 '隔離型(上下、ヨコ系)
45730 '数字が2つおきに飛んでる場合
45740 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
45750 Spirit_type$="隔離型(上下、ヨコ系)"
45760 Sa$="1差"
45770 'endif
45780 endif
45790 'ここに移動
45800 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
45810 bg=0:bg2=0:key$="":init"kb:4":talk ""
45820 color rgb(255,0,255)
45830 print "●十二の基礎運" + chr$(13)
45840 print Spirit_type$ + Sa$;chr$(13)
45850 print "きょうだい：";Kyoudai$ + chr$(13)
45860 talk "あなたのきょうだいは、"+Kyoudai$+"です"
45870 color rgb(0,0,0)
45880 print"前の画面:左の丸"+chr$(13)
45890 'print"保存して、もう一度やる：スペースキー"+chr$(13)
45900 print"トップ画面に戻る:右の丸"+chr$(13)
45910 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
45920 key$=inkey$
45930 bg=strig(1)
45940 bg2=strig(0)
45950 pause 2.50*100
45960 wend
45970 if (key$ = chr$(13) or bg=2) then
45980 goto Main_Screen1:
45990 else
46000 if (key$ = "b" or bg2 = 2) then
46010 goto Result_ReiIden1:
46020 endif
46030 endif
46040 'ファイル保存 占いデーターを一時保存
46050 Save_Data1:
46060 '********************************************************************
46070 '1.ファイル読み込みで登録件数                                       *
46080 '2.10件かどうかをチェックして10件以下なら保存する                   *
46090 '3.10件以上なら保存しない                                           *
46100 '********************************************************************
46110 '登録件数を求める
46120 '********************************************************************
46130 n=0
46140 open Parsonal_data$ + "Parsonal_data.dat" for append as #3
46150 while (eof(3) = -1)
46160 line input #3,a$
46170 n = n + 1
46180 wend
46190 close #3
46200 '********************************************************************
46210 '登録件数を求める
46220 '********************************************************************
46230 if (n < 10) then
46240 '********************************************************************
46250 '`ファイル読み込み件数をチェック　ここまで
46260 '*********************************************************************
46270 'print#3は末尾は、セミコロンはいらない
46280 '末尾にセミコロンをつけると改行しない
46290 print #3,"名前:" + buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:" + str$(Senzo_wasu);",先祖生数:" + str$(Senzo_seisu);",性格和数:" + str$(Seikaku_wasu);",性格生数:" + str$(Seikaku_seisu);",愛情生数:" + str$(Aijyou_wasu);",愛情和数:" + str$(Aijyou_seisu);",行動和数:" + str$(Koudou_wasu);",行動生数:" + str$(Koudou_seisu)
46300 ui_msg "保存しました"
46310 close #3
46320 else
46330 ui_msg "10件に到達しました。"
46340 endif
46350 goto Reiden_Top_Input_Sextype:
46360 '個人データーリスト  *parsonal_data
46370 Parsonal_data_top:
46380 cls 3:No=0:Key$="":bg=0:y=0
46390 sp_on 0,1:sp_put 0,(10,100),0,0
46400 line(0,0)-(800,60),rgb(0,0,255),bf
46410 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
46420 line (0,60)-(800,440),rgb(127,255,212),bf
46430 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
46440 line (0,440)-(800,670),rgb(0,255,0),bf
46450 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
46460 color rgb(255,255,255)
46470 print"◎個人データーリスト" + chr$(13)
46480 color rgb(255,0,255)
46490 print " :1.霊遺伝姓名学リスト" + chr$(13)
46500 print " :2.霊遺伝姓名学登録件数" + chr$(13)
46510 print " :3.霊遺伝姓名学データー検索"+chr$(13)
46520 print " :4.メインメニューへ行く"+chr$(13)
46530 color rgb(0,0,0):locate 0,10
46540 print "1.霊遺伝姓名学リストを選択"
46550 Parsonal_data_top2:
46560 key$="":bg=0:y=0
46570 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
46580 key$=inkey$
46590 bg=strig(1)
46600 y=stick(1)
46610 pause 2.50*100
46620 wend
46630 '*****************************************************
46640 '1.下のカーソル ここから 2024.10
46650 '*****************************************************
46660 if (key$=chr$(31) or y=1) then
46670 select case No
46680 case 0:
46690 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46700 case 1:
46710 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46720 case 2:
46730 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46740 case 3:
46750 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46760 end select
46770 endif
46780 '******************************************************
46790 '1.下のカーソル　 ここまで 2024.10
46800 '******************************************************
46810 '******************************************************
46820 '2.上のカーソル　 ここから 2024.10
46830 '******************************************************
46840 if (y=-1 or key$=chr$(30)) then
46850 select case No
46860 case 0:
46870 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46880 case 1:
46890 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46900 case 2:
46910 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46920 case 3:
46930 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46940 end select
46950 endif
46960 '******************************************************
46970 '2.上のカーソル　ここまで 2024.10
46980 '******************************************************
46990 '3.決定ボタン　ここから  2024.10
47000 '******************************************************
47010 if (bg=2 or key$=chr$(13)) then
47020 select case No
47030 case 0:
47040 sp_on 0,0:goto Parsonal_list1:
47050 case 1:
47060 sp_on 1,0:goto Entry_list_count:
47070 case 2:
47080 sp_on 2,0:goto Parsonal_list_Search:
47090 case 3:
47100 sp_on 3,0:goto Main_Screen1:
47110 end select
47120 endif
47130 '******************************************************
47140 '3.決定ボタン　ここまで 2024.10
47150 '******************************************************
47160 '登録件数
47170 Entry_list_count:
47180 N = 0:bg=0:key$="":init"kb:4":talk ""
47190 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
47200 'N=1
47210 while eof(5) = 0
47220 line input #5,line$:N = N + 1
47230 wend
47240 close #5
47250 c=N
47260 cls 3
47270 line (0,0)-(680,60),rgb(0,0,255),bf
47280 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
47290 line (0,60)-(680,180),rgb(127,255,212),bf
47300 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
47310 LINE (0,180)-(680,280),rgb(0,255,0),bf
47320 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
47330 color rgb(255,255,255)
47340 print "◎霊遺伝姓名学登録件数"+chr$(13)
47350 color rgb(255,0,255)
47360 print "登録件数は";c;"件です"+chr$(13)
47370 color rgb(0,0,0)
47380 print "エンターキーを押してください"+chr$(13)
47390 while (key$ <> chr$(13) and bg <> 2)
47400 key$=inkey$
47410 bg=strig(1)
47420 pause 2.50*100
47430 wend
47440 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
47450 'パーソナルリスト ここから
47460 Parsonal_list1:
47470 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
47480 'Title
47490 line (0,0)-(850,60),rgb(0,0,255),bf
47500 line (0,0)-(850,57),rgb(255,255,255),b
47510 '個人名
47520 line (0,60)-(850,165),rgb(0,255,0),bf
47530 line (0,63)-(850,162),rgb(255,0,255),b
47540 '数値リスト
47550 line (0,165)-(850,550),rgb(255,212,212),bf
47560 line (0,168)-(850,547),rgb(0,0,255),b
47570 'ボタンメッセージ
47580 line (0,550)-(850,730),rgb(0,255,0),bf:
47590 line (0,553)-(853,733),rgb(255,0,255),b
47600 'Parsonal_list2:
47610 open "config/Parsonal_data/parsonal_data.dat" for input as #7
47620 'bN=0
47630 while eof(7)=0
47640 line input #7,lines$:bN = bN + 1
47650 wend
47660 close #7
47670 'a=0
47680 open "config/Parsonal_data/parsonal_data.dat" for input as #8
47690 'while eof(8)=0
47700 for i=0 to (bN * 10) -1
47710 input #8,buflines$(i)
47720 'buflines$(i) = line$
47730 'a  =  a  +  1
47740 Next i
47750 'wend
47760 close #8
47770 Parsonal_list2:
47780 while n <= bN * 10
47790 'Parsonal_list2:
47800 cls
47810 color rgb(255,255,255)
47820 print "霊遺伝姓名学 リスト" + chr$(13)
47830 '性別を出す
47840 sex$ = show_sex_type$(buflines$((10*n) + 1))
47850 'n=0
47860 color rgb(0,0,0):
47870 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
47880 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
47890 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
47900 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
47910 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
47920 print "右の丸:次へ行く" + chr$(13)
47930 print "左の丸：トップへ戻る" + chr$(13)
47940 key$=input$(1)
47950 if key$= " " then n=((n+1) Mod bN)
47960 if key$=chr$(13) then goto Main_Screen1:
47970 wend
47980 Parsonal_list_Search:
47990 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
48000 while eof(1)=0
48010 line input #1,lines$:hit_count=hit_count + 1
48020 wend
48030 close #1
48040 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
48050 for i=0 to hit_count*10 - 1
48060 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
48070 next i
48080 close #2
48090 Search_find:
48100 cls 3:init "kb:2":talk ""
48110 'グラフィック領域　ここから
48120 line (0,0)-(770,60),rgb(0,0,255),bf
48130 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
48140 line (0,60)-(770,170),rgb(127,255,212),bf
48150 line(0,63)-(767,173),rgb(0,0,255),b
48160 line(0,170)-(770,440),rgb(0,255,0),bf
48170 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
48180 color rgb(255,255,255)
48190 print "霊遺伝姓名判断 データー検索"+chr$(13)
48200 color rgb(255,0,255)
48210 print "登録件数:";hit_count;"件です"+chr$(13)
48220 color rgb(0,0,0)
48230 print "調べたい人の名前を入れてください"+chr$(13)
48240 Input "名前:",name$
48250 cls
48260 for i = 0 to hit_count * 10 - 1
48270 if name$ = buffname$(i) then
48280 hcount = hcount + 1
48290 endif
48300 next i
48310 if hcount > 0 then
48320 init "kb:4":cls
48330 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48340 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
48350 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
48360 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
48370 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
48380 while (key$ <> chr$(13) and bg <> 2)
48390 key$=inkey$
48400 bg=strig(1)
48410 bg2=strig(0)
48420 pause 2.50*100
48430 wend
48440 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
48450 else
48460 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48470 color rgb(0,0,0):print"検索名:";name$+chr$(13)
48480 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
48490 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
48500 a$=input$(1)
48510 IF a$=chr$(13) then goto Main_Screen1:
48520 endif
48530 '相性のデーターを保存する機能
48540 '保存ファイル：bestAisyou.dat
48550 '保存フォルダ:config/Aisyou_dat/
48560 Save_Aisyou:
48570 open "config/Aisyou_data" for append as #1
48580 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
48590 close #1
48600 ui_msg "保存しました"
48610 key$ = input$(1)
48620 '設定変更項目
48630 Config_Setting:
48640 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
48650 sp_on 0,1:sp_put 0,(10,100),0,0
48660 'グラフィック領域　ここから
48670 'Line 1
48680 line (0,0)-(850,60),rgb(0,0,255),bf
48690 line (0,0)-(850,57),rgb(255,255,255),b
48700 'Line 2
48710 line (0,60)-(850,460),rgb(127,255,212),bf
48720 line (0,57)-(850,457),rgb(0,0,0),b
48730 'Line 3
48740 line (0,460)-(850,640),rgb(0,255,0),bf
48750 line (0,457)-(850,637),rgb(0,0,0),b
48760 'グラフィック領域　ここまで
48770 color rgb(255,255,255)
48780 print "設定　トップメニュー" + chr$(13)
48790 color rgb(255,0,255)
48800 print " :1.キーボードの設定" + chr$(13)
48810 print " :2.トップ画面に戻る"
48820 'print " :4.プログラムの終了"+chr$(13)
48830 color rgb(0,0,0):locate 0,10
48840 print "1.キーボードの設定を選択"
48850 Config_Setting2:
48860 y=0:bg=0:key$=""
48870 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
48880 key$=inkey$
48890 y=stick(1)
48900 bg=strig(1)
48910 pause 2.50*100
48920 wend
48930 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
48940 select case No
48950 case 0:
48960 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
48970 case 1:
48980 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
48990 end select
49000 endif
49010 if (key$=chr$(13) or bg=2) then
49020 select case No
49030 case 0:
49040 sp_on 0,0:goto Keyboard_Setting:
49050 case 1:
49060 sp_on 1,0:goto Main_Screen1:
49070 end select
49080 endif
49090 '1.キーボードの設定
49100 Keyboard_Setting:
49110 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
49120 sp_on 0,1:sp_put 0,(10,100),0,0
49130 'グラフィック領域　ここから
49140 'Line 1
49150 line (0,0)-(1050,60),rgb(0,0,255),bf
49160 line (0,0)-(1050-3,57),rgb(255,255,255),b
49170 'Line 2
49180 line (0,60)-(1050,460),rgb(127,255,212),bf
49190 line (0,57)-(1050-3,457),rgb(0,0,0),b
49200 'Line 3
49210 line (0,460)-(1050,640),rgb(0,255,0),bf
49220 line (0,457)-(1050-3,637),rgb(0,0,0),b
49230 'グラフィック領域　ここまで
49240 '文字色　白
49250 color rgb(255,255,255)
49260 print "設定1 キーボードの設定" + chr$(13)
49270 color rgb(255,0,255)
49280 print " :1.バーチャルキーボード表示する" + chr$(13)
49290 print " :2.バーチャルキーボードを表示しない" + chr$(13)
49300 print " :3.トップ画面に戻る" + chr$(13)
49310 print " :4.終了する" + chr$(13)
49320 color rgb(0,0,0)
49330 locate 0,10
49340 print "1.バーチャルキーボードを表示するを選択"
49350 Keyboard_Setting2:
49360 y=0:bg=0:key$=""
49370 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
49380 key$=inkey$
49390 y=stick(1)
49400 bg=strig(1)
49410 pause 2.50*100
49420 wend
49430 '****************************************************************************************************************
49440 '下のカーソル　ここから
49450 '****************************************************************************************************************
49460 if (y=1 or key$=chr$(31)) then
49470 select case No
49480 case 0:
49490 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
49500 case 1:
49510 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
49520 case 2:
49530 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
49540 case 3:
49550 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
49560 end Select
49570 endif
49580 '*******************************************************************************************************************
49590 '下のカーソル　ここまで
49600 '*******************************************************************************************************************
49610 '*******************************************************************************************************************
49620 '上のカーソル　ここから
49630 '********************************************************************************************************************
49640 '********************************************************************************************************************
49650 '上のカーソル　ここまで
49660 '********************************************************************************************************************
49670 '********************************************************************************************************************
49680 '決定ボタン　ここから
49690 '*********************************************************************************************************************
49700 if (key$=chr$(13) or bg=2) then
49710 select case No
49720 case 0:
49730 init "kb:2":
49740 case 1:
49750 sp_on 1,0:init "kb:0":
49760 case 2:
49770 sp_on 2,0:goto Main_Screen1:
49780 case 3:
49790 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
49800 end select
49810 endif
49820 '*********************************************************************************************************************
49830 '決定ボタン　ここまで
49840 '*********************************************************************************************************************
