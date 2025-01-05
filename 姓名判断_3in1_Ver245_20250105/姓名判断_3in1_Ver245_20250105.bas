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
650 'Year 2024年度
660 'Version2.34:Date:2024.10.20                      *
670 'Version2.35:Date:2024.10.27                      *
680 'Version2.36:Date:2024.11.03                      *
690 'Version2.37:Date:2024.11.10                      *
700 'Version2.38:Date:2024.11.17                      *
710 'Version2.39:Date:2024.11.24                      *
720 'Version2.40:Date:2024.12.01                      *
730 'Version2.41:Date:2024.12.08                      *
740 'Version2.42:Date:2024.12.15                      *
750 'Version2.43:Date:2024.12.22                      *
760 'Version2.44:Date:2024.12.29                      *
770 'Year 2025年度                                        *
780 'Version2.45:Date:2025.01.05                      *
790 '*****************************************************
800 '設定ファイル　漢字文字データ                     　 *              *
810 'Version:Mojidata20200411.dat Date:20200411          *
820 'Version:Mojidata20200415.dat Date:20200415          *
830 'Version:Mojidata20200506.dat Date:20200506          *
840 'Version:Mojidata20200513.dat Date:20200513          *
850 'Version:Mojidata20200516.dat Date:20200516          *
860 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
870 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
880 '*****************************************************
890 '* 開発再開　2024.9.20　Ver2.33                        *
900 '* 開発再開 Date:2024.09.20                          *
910 '*************************************************
920 '新機能
930 'Date:2020.05.27
940 'Parsonal_data.datに個人データーを保存機能追加
950 '*****************************************************
960 'メモリー確保 文字領域,数値データー                  *
970 '*****************************************************
980 clear 4*4000,4*1000000
990 '*****************************************************
1000 'Screen 定義                                         *
1010 '*****************************************************
1020 Screen 1,1,1,1
1030 '*****************************************************
1040 'Sprite 定義                                         *
1050 '****************************************************
1060 'フォルダを変数にまとめる
1070 '****************************************************
1080 Gazo$ = "./config/gazo/"
1090 '****************************************************
1100 Select$ = "selection.png"
1110 '^&**************************************************
1120 gload Gazo$ + Select$,1,10,100
1130 gload Gazo$ + Select$,1,10,200
1140 gload Gazo$ + Select$,1,10,300
1150 gload Gazo$ + Select$,1,10,400
1160 gload Gazo$ + Select$,1,10,500
1170 sp_def 0,(10,100),32,32
1180 sp_def 1,(10,200),32,32
1190 sp_def 2,(10,300),32,32
1200 sp_def 3,(10,400),32,32
1210 sp_def 4,(10,500),32,32
1220 '****************************************************
1230 Parsonal_data$ = "Config/Parsonal_data/"
1240 '*****************************************************
1250 '改名チェック変数                                   *
1260 '****************************************************
1270 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1280 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1290 '*****************************************************
1300 'キーボードフラグ                                    *
1310 '0:キーボード非表示                                  *
1320 '1:キーボード表示                                    *
1330 '*****************************************************
1340 keyboard_flag = 0
1350 '*****************************************************
1360 '性別の選択用変数                                    *
1370 '*****************************************************
1380 dim sex_type$(2)
1390 '*****************************************************
1400 '相性占い　設定項目 ここから                         *
1410 '*****************************************************
1420 count=0:line_count=0
1430 dim buffer_Aisyou_type$(10,10)
1440 dim buffer_Kaimei_data_name$(10)
1450 '*****************************************************
1460 '改名チェックの選択肢の変数                          *
1470 '*****************************************************
1480 '1.フォルダ
1490 '******************************************************
1500 KANJI_DATA$ = "config/kanji_data"
1510 '*****************************************************
1520 '2.ファイル
1530 '*****************************************************
1540 MOJIDATA$ = "Mojidata_ReiIden20200911.png"
1550 '*****************************************************
1560 SELECT_LIST_FOLDER$="config/Selection/"
1570 '*****************************************************
1580 SELECT_LIST_FILE$ = "Selection.dat"
1590 '*****************************************************
1600 'FULL PASS:./config/Selection/Selection.dat
1610 '*****************************************************
1620 dim select$(3)
1630 open SELECT_LIST_FOLDER$ + SELECT_LIST_FILE$ for input as #2
1640 for i=0 to 2
1650 input #2,select$(i)
1660 next i
1670 close #2
1680 'select$(0)="改名リストに追加する"
1690 'select$(1)="改名リストに追加しない"
1700 'select$(2)="トップ画面に行く"
1710 '*****************************************************
1720 '総数を出す変数 改名チェック変数                     *
1730 'dim buffer_total$                                   *
1740 '1.理解し合える最良のカップル                        *
1750 '*****************************************************
1760 dim buf_good_couple1(20)
1770 dim buf_good_couple2(20)
1780 'dim buf_good_couple1$
1790 'Dim buf_good_couple2$
1800 '*****************************************************
1810 '2.互いに自然体でつきあえるカップル                  *
1820 '*****************************************************
1830 dim buf_natural_couple1(20)
1840 dim buf_natural_couple2(20)
1850 'dim buf_natural_couple1$
1860 'dim buf_natural_couple2$
1870 '**************************************************
1880 '3.男性にとって居心地の良いカップル               *
1890 '**************************************************
1900 dim buf_good_for_man1(20)
1910 dim buf_good_for_man2(20)
1920 'dim buf_good_for_man1$
1930 'dim buf_good_for_man2$
1940 '*****************************************************
1950 '4.女性にとって居心地の良い相性                      *
1960 '*****************************************************
1970 dim buf_good_for_woman1(20)
1980 dim buf_good_for_woman2(20)
1990 'dim buf_good_for_woman1$
2000 'dim buf_good_for_woman2$
2010 '*****************************************************
2020 '5.恋愛経験を重ねた後なら愛を育める                  *
2030 '*****************************************************
2040 dim buf_short_of_experience1(20)
2050 dim buf_short_of_experience2(20)
2060 'dim buf_short_of_experience1$
2070 'dim buf_short_of_experience2$
2080 '*****************************************************
2090 '6.結婚への発展が困難なカップル                      *
2100 '*****************************************************
2110 dim buf_difficult_for_couple1(20)
2120 dim buf_difficult_for_couple2(20)
2130 'dim buf_difficult_for_couple1$
2140 'dim buf_difficult_for_couple2$
2150 '*****************************************************
2160 '7.愛し方にズレが出てくる二人                        *
2170 '*****************************************************
2180 dim buf_difference_of_love1(20)
2190 dim buf_difference_of_love2(20)
2200 'dim buf_difference_of_love1$
2210 'dim buf_difference_of_love2$
2220 '*****************************************************
2230 '相性占い　設定項目　ここまで
2240 '*****************************************************
2250 '8.互いの価値観が噛み合わない相性 ここから           *
2260 '*****************************************************
2270 dim buf_difference_of_KachiKan1(20)
2280 dim buf_difference_of_KachiKan2(20)
2290 'dim buf_difference_of_KachiKan1$
2300 'dim buf_difference_of_KachiKan2$
2310 '*****************************************************
2320 '8.互いに価値観が噛み合わない相性 ここまで           *
2330 '*****************************************************
2340 '相性診断　相性パターン結果　ここから
2350 dim Result_Aisyou_type$(8)
2360 '*****************************************************
2370 '相性診断 相性パターン結果 ここまで                  *
2380 '*****************************************************
2390 '2019/04/07 姓名判断アプリ 作成開始                  *
2400 '姓名判断　 名前の総数での吉凶を調べる               *
2410 '*****************************************************
2420 buf_count=0:buffer_count=0:count=0:buffer=0
2430 '*****************************************************
2440 '合計文字数                                          *
2450 '*****************************************************
2460 totalmoji=0
2470 dim buf_Input_data$(10),buf_Input_data2$(10)
2480 dim bufer_name$(10),bufer_name2$(10)
2490 dim buf_Input_name$(10),buf_Input_name2$(10)
2500 '*****************************************************
2510 '定数文字1画〜27画                                   *
2520 'ファイルから各画数を読み込んで代入する。            *
2530 '*****************************************************
2540 '1行目だけ読み込む                                   *
2550 '*****************************************************
2560 KANJI_DATA$ = "config/Kanji_data/"
2570 '*****************************************************
2580 MOJIDATA$ = "Mojidata_ReiIden20200911.dat"
2590 '*****************************************************
2600 open KANJI_DATA$ + MOJIDATA$ for input as #2
2610 for i=0 to 26
2620 input #2,buf_lines$(i)
2630 next i
2640 close #2
2650 '*****************************************************
2660 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2670 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2680 '1画
2690 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2700 '2画
2710 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2720 '3画
2730 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2740 '4画
2750 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2760 '5画
2770 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2780 '6画
2790 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2800 '7画
2810 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2820 '8画
2830 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2840 '9画
2850 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2860 '10画
2870 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2880 '11画
2890 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2900 '12画
2910 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2920 '13画
2930 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2940 '14画
2950 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2960 '15画
2970 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2980 '16画
2990 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
3000 '17画
3010 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
3020 '18画
3030 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
3040 '19画
3050 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
3060 '20画
3070 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
3080 '21画
3090 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
3100 '22画
3110 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
3120 '23画
3130 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
3140 '24画
3150 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
3160 '25画
3170 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
3180 '26画
3190 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
3200 '27画
3210 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
3220 dim Moji_data$(Moji_total+27+27)
3230 '******************************************************
3240 'dim bufmoji$(10),Input_data$(10)                     *
3250 '１画の文字   サイズ:21+2(漢字)                       *
3260 '******************************************************
3270 dim buf_char_hiragana1$(Moji_1)
3280 '******************************************************
3290 '2画の文字  サイズ 58+14=72(漢字)                     *
3300 '******************************************************
3310 dim buf_char_hiragana2$(Moji_2)
3320 '******************************************************
3330 '3画の文字 サイズ:48+29=77(漢字)                      *
3340 '******************************************************
3350 dim buf_char_hiragana3$(Moji_3)
3360 '******************************************************
3370 '4画の文字 サイズ:29+51=80(漢字)                      *
3380 '******************************************************
3390 dim buf_char_hiragana4$(Moji_4)
3400 '******************************************************
3410 '５画の文字  サイズ:18+59=77(漢字)                    *
3420 '******************************************************
3430 dim buf_char_hiragana5$(Moji_5)
3440 '******************************************************
3450 '6画の文字  サイズ:79(漢字)                           *
3460 '******************************************************
3470 dim buf_char_hiragana6$(Moji_6)
3480 '******************************************************
3490 '7画の文字  サイズ:88(漢字)                           *
3500 '******************************************************
3510 dim buf_char_hiragana7$(Moji_7)
3520 '******************************************************
3530 '8画の文字                                            *
3540 '******************************************************
3550 dim buf_char_hiragana8$(Moji_8)
3560 '******************************************************
3570 '9画の文字                                            *
3580 '******************************************************
3590 dim buf_char_hiragana9$(Moji_9)
3600 '******************************************************
3610 '10画の文字 98文字                                    *
3620 '******************************************************
3630 dim buf_char_hiragana10$(Moji_10)
3640 '******************************************************
3650 '11画の文字                                           *
3660 '******************************************************
3670 dim buf_char_hiragana11$(Moji_11)
3680 '******************************************************
3690 '12画の文字                                           *
3700 '******************************************************
3710 dim buf_char_hiragana12$(Moji_12)
3720 '******************************************************
3730 '13画の文字 81文字                                    *
3740 '******************************************************
3750 dim buf_char_hiragana13$(Moji_13)
3760 '******************************************************
3770 '14画の文字                                           *
3780 '******************************************************
3790 dim buf_char_hiragana14$(Moji_14)
3800 '******************************************************
3810 '15画の文字                                           *
3820 '******************************************************
3830 dim buf_char_hiragana15$(Moji_15)
3840 '******************************************************
3850 '16画の文字                                           *
3860 '******************************************************
3870 dim buf_char_hiragana16$(Moji_16)
3880 '******************************************************
3890 '17画の文字                                           *
3900 '******************************************************
3910 dim buf_char_hiragana17$(Moji_17)
3920 '******************************************************
3930 '18画の文字                                           *
3940 '******************************************************
3950 dim buf_char_hiragana18$(Moji_18)
3960 '19画の文字
3970 dim buf_char_hiragana19$(Moji_19)
3980 '20画の文字
3990 dim buf_char_hiragana20$(Moji_20)
4000 '21画の文字
4010 dim buf_char_hiragana21$(Moji_21)
4020 '22画の文字
4030 dim buf_char_hiragana22$(Moji_22)
4040 '23画の文字
4050 dim buf_char_hiragana23$(Moji_23)
4060 '24画の文字
4070 dim buf_char_hiragana24$(Moji_24)
4080 '25画の文字
4090 dim buf_char_hiragana25$(Moji_25)
4100 dim buf_char_hiragana26$(Moji_26)
4110 dim buf_char_hiragana27$(Moji_27)
4120 '結果表示1　吉凶データー 81パターン
4130 dim buf_Kikkyo$(81)
4140 '結果表示２
4150 '安斎流姓名判断 吉凶  1.地運
4160 dim buf_Kikkyo_Anzai_chiunn$(70)
4170 '安斎流姓名判断　　吉凶  2.人運
4180 dim buf_Kikkyo_Anzai_jinunn$(69)
4190 '安斎流姓名判断 吉凶 3.外運
4200 'dim buf_Kikkyo_Anzai_gaiunn$(70)
4210 '安斎流姓名判断 吉凶　　4.総運
4220 dim buf_Kikkyo_Anzai_total$(80)
4230 '霊遺伝姓名学　変数
4240 A=0
4250 B=0
4260 C=0
4270 D=0
4280 '1.先祖運
4290 buffer_senzo=0
4300 '2.性格運
4310 buffer_seikaku=0
4320 '3.愛情運
4330 buffer_Aijyou=0
4340 '4.行動運
4350 buffer_Kouzou=0
4360 '1-1.先祖運　和数
4370 Senzo_wasu=0
4380 '1-2.先祖運　生数
4390 Senzo_seisu=0
4400 '2-1.性格運 和数
4410 Seikaku_wasu=0
4420 '2-2.性格運 生数
4430 Seikaku_seisu=0
4440 '3-1.愛情運 和数
4450 Aijyou_wasu=0
4460 '3-2.愛情運 生数
4470 Aijyou_seisu=0
4480 '4-1 行動運 和数
4490 Koudo_wasu=0
4500 '4-2 行動運 生数
4510 Koudo_seisu=0
4520 'データー読み込み　ここから
4530 'データー読み込み　1.ひらがな
4540 '1画の文字   6文字 23文字
4550 open KANJI_DATA$ + MOJIDATA$ for input as #1
4560 '全ファイルを読み込む
4570 for i = 0 to 26+Moji_total+27
4580 input #1,Moji_data$(i)
4590 next i
4600 close #1
4610 '全ファイル読み込み　ここまで
4620 for i = 27+1 to (Moji_1)+27+1
4630 '1画の文字にデーターをコピーする
4640 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4650 next i
4660 '2画の文字    98文字
4670 for i = Moji_Min_2  to (Moji_Max_2)
4680 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4690 next i
4700 '3文字の文字    77文字
4710 for i = Moji_Min_3  to (Moji_Max_3)
4720 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4730 next i
4740 '4文字の文字   80文字
4750 for i = (Moji_Min_4)  to (Moji_Max_4)
4760 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4770 next i
4780 '5文字の文字 77文字
4790 for i = Moji_Min_5 to (Moji_Max_5)
4800 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4810 next i
4820 '6文字の文字 79文字
4830 for i = Moji_Min_6  to Moji_Max_6
4840 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4850 next i
4860 '7文字の文字 170文字
4870 for i = Moji_Min_7 to Moji_Max_7
4880 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4890 next i
4900 '8画の文字 120文字
4910 for i = Moji_Min_8 to Moji_Max_8
4920 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4930 next i
4940 '9画の文字  103文字
4950 for i = Moji_Min_9 to Moji_Max_9
4960 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4970 next i
4980 '10画の文字 285文字
4990 for i = Moji_Min_10 to (Moji_Max_10)
5000 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
5010 next i
5020 '11画の文字
5030 for i = Moji_Min_11 to Moji_Max_11
5040 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
5050 next i
5060 '12画の文字
5070 for i = Moji_Min_12 to Moji_Max_12
5080 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
5090 next i
5100 '13画の文字 81
5110 for i = Moji_Min_13 to Moji_Max_13
5120 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
5130 next i
5140 '14画の文字 66
5150 for i = Moji_Min_14 to Moji_Max_14
5160 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
5170 next i
5180 '15画の文字 59
5190 'for i = Moji_Min_15 to (Moji_Max_15) - 1
5200 for i=Moji_Min_15 to  Moji_Max_15
5210 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
5220 next i
5230 '16画の文字 44
5240 for i=Moji_Min_16 to Moji_Max_16
5250 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
5260 next i
5270 '17画の文字
5280 for i = Moji_Min_17 to Moji_Max_17
5290 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
5300 next i
5310 '18画の文字
5320 for i = Moji_Min_18 to Moji_Max_18
5330 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
5340 next i
5350 '19画の文字 17文字
5360 for i = Moji_Min_19 to Moji_Max_19
5370 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
5380 next i
5390 '20 画の文字 13文字
5400 for  i = Moji_Min_20 to Moji_Max_20
5410 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
5420 NEXT i
5430 '21画の文字 6
5440 for i = Moji_Min_21 to (Moji_Max_21)
5450 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
5460 next i
5470 '22 画の文字 4
5480 for i = Moji_Min_22 to Moji_Max_22
5490 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
5500 next i
5510 '23画の文字  3文字
5520 for i = Moji_Min_23 to Moji_Max_23
5530 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5540 next i
5550 '24画の文字  3文字
5560 for i = Moji_Min_24 to Moji_Max_24
5570 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5580 next i
5590 '25 画の文字 4
5600 for i = Moji_Min_25 to Moji_Max_25
5610 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5620 next i
5630 '26画の文字  3文字
5640 for i = Moji_Min_26 to Moji_Max_26
5650 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5660 next i
5670 '27画の文字  3文字
5680 for i = Moji_Min_27 to Moji_Max_27
5690 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5700 next i
5710 '吉凶データー読み込み
5720 '*********************************************************
5730 'フォルダ
5740 '*********************************************************
5750 'ファイル
5760 '*********************************************************
5770 'FULL PATH:"./config/Kikkyo_data/Kikkyo_data.dat"
5780 '*********************************************************
5790 KIKKYO_DATA_FOLDER$ = "config/Kikkyo_data/"
5800 '*********************************************************
5810 KIKKYO_DATA_FILE$ = "Kikkyo_data.dat"
5820 '*********************************************************
5830 open KIKKYO_DATA_FOLDER$ + KIKKYO_DATA_FILE$ for input as #1
5840 for i=0 to 80
5850 input #1,buf_Kikkyo$(i+1)
5860 next i
5870 close #1
5880 '***********************************************************
5890 'FULL PATH:"config/Kikkyo_data/Kikkyo_data.data"
5900 '******************************************************
5910 ANZAI_KIKKYO_CHIUNN_FILE$ = "Anzai_Kikkyo_chiunn.dat"
5920 '******************************************************
5930 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_CHIUNN_FILE$ for input as #2
5940 for m=0 to 69
5950 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5960 next m
5970 close #2
5980 '******************************************************
5990 'FULL PAT:"./config/Kikkyo_data/Kikkyo_jiunn.dat"
6000 '******************************************************
6010 KIKKYO_JINUNN$ = "Anzai_Kikkyo_Jinunn.dat"
6020 '******************************************************
6030 open KIKKYO_DATA_FOLDER$ + KIKKYO_JINUNN$ for input as #3
6040 for i=1 to 70
6050 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
6060 next i
6070 close #3
6080 '**************************************************************
6090 'FULL PATH="./config/Kikkyo_data/Anzai_Kikkyo_Total.dat"
6100 '      ====>   KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$
6110 '**************************************************************
6120 'KIKKYO_DATA_FOLDER$ = "./config/Kikkyo_data/" (共通フォルダ)
6130 '**************************************************************
6140 ANZAI_KIKKYO_FILE$ = "Anzai_Kikkyo_Total.dat"
6150 '**************************************************************
6160 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$ for input as #4
6170 for i=0 to 79
6180 input #4,buf_Kikkyo_Anzai_total$(i)
6190 next i
6200 close #4
6210 '****************************************************
6220 '1.理解し合える最良のカップル　ここから           　*
6230 '****************************************************
6240 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6250 'GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6260 'FULL PATH="config/Anzai_Aisyou/Good_Couple1.dat"
6270 '****************************************************
6280 ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6290 GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6300 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE1_FILE$ for input as #1
6310 for i=0 to 19
6320 input #1,buf_good_couple1$
6330 buf_good_couple1(i) = val(buf_good_couple1$)
6340 next i
6350 close #1
6360 '********************************************************
6370 'FULL PATH = "config/Anzai_Aisyou/Good_Couple2.dat"
6380 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6390 'GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6400 '********************************************************
6410 GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6420 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE2_FILE$ for input as #1
6430 for j=0 to 19
6440 input #1,buf_good_couple2$
6450 buf_good_couple2(j) = val(buf_good_couple2$)
6460 next j
6470 close #1
6480 '*****************************************************
6490 '1.理解し合える最良のカップル ここまで                                   *
6500 '*****************************************************
6510 '*****************************************************
6520 '2.互いに自然体でつきあえる二人　ここから                               *
6530 '*****************************************************
6540 '*****************************************************
6550 'FULL PATH = "config/Anzai_Aisyou/Natural_Couple1.dat"
6560 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6570 'NATURAL_COUPLE_FILE$ ="Natural_Couple1.dat"
6580 'NATURAL_COUPLE2_FILE$="Natural_Couple2.dat"
6590 '*****************************************************
6600 NATURAL_COUPLE_FILE$ = "Natural_Couple1.dat"
6610 NATURAL_COUPLE2_FILE$ = "Natural_Couple2.dat"
6620 '*****************************************************
6630 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE_FILE$ for input as #1
6640 for i=0 to 19
6650 input #1,buf_natural_couple1$
6660 buf_natural_couple1(i) = val(buf_natural_couple1$)
6670 next i
6680 close #1
6690 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE2_FILE$ for input as #1
6700 for j=0 to 19
6710 input #1,buf_natural_couple2$
6720 buf_natural_couple2(j) = val(buf_natural_couple2$)
6730 next j
6740 close #1
6750 '*****************************************************
6760 '2.互いに自然体でつきあえる二人　ここまで                               *
6770 '*****************************************************
6780 '3.男性にとって居心地の良い相性                                      *
6790 '*****************************************************
6800 '******************************************************
6810 'FULL PATH="config/Anzai_Aisyou/Good_for_man1.dat"
6820 'FULL PATH="config/Anzai_Aisyou/Good_for_man2.dat"
6830 'GOOD_FOR_MAN_FILE$="God_for_man1.dat"
6840 GOOD_FOR_MAN1_FILE$ = "Good_for_man1.dat"
6850 GOOD_FOR_MAN2_FILE$ = "Good_for_man2.dat"
6860 '******************************************************
6870 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN1_FILE$ for input as #1
6880 for i=0 to 19
6890 input #1,buf_good_for_man1$
6900 buf_good_for_man1(i) = val(buf_good_for_man1$)
6910 next i
6920 close #1
6930 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN2_FILE$ for input as #1
6940 for j=0 to 19
6950 input #1,buf_good_for_man2$
6960 buf_good_for_man2(j) = val(buf_good_for_man2$)
6970 next j
6980 close #1
6990 '******************************************************
7000 '3.男性にとって居心地の良いカップル             　　                   　*
7010 '******************************************************
7020 '4.女性にとって居心地の良いカップル                                   *
7030 '******************************************************
7040 'FULL PATH = "config/Anzai_Aisyou/Good_for_woman1.dat"
7050 'GOOD_FOR_WOMAN1_FILE$="Good_for_woman1.dat"
7060 'GOOD_FOR_WOMAN2_FILE$="Good_for_woman2.dat"
7070 GOOD_FOR_WOMAN1_FILE$ = "Good_for_woman1.dat"
7080 GOOD_FOR_WOMAN2_FILE$ = "Good_for_woman2.dat"
7090 '*******************************************************
7100 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN1_FILE$ for input as #1
7110 for i=0 to 19
7120 input #1,buf_good_for_woman1$
7130 buf_good_for_woman1(i) = val(buf_good_for_woman1$)
7140 next i
7150 close #1
7160 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN2_FILE$ for input as #1
7170 for j=0 to 19
7180 input #1,buf_good_for_woman2$
7190 buf_good_for_woman2(j) = val(buf_good_for_woman2$)
7200 next j
7210 close #1
7220 '******************************************************
7230 '4.女性にとって居心地の良い相性                   　                　*
7240 '******************************************************
7250 '5.恋愛経験を重ねた後なら愛を育める                                  　*
7260 '******************************************************
7270 'SHORT_OF_EXPERIENCE1_FILE$ = "Short_of_experience1.dat"
7280 'SHORT_OF_EXPERIENCE2_FILE$ ="Short_of_experience2.dat"
7290 '******************************************************
7300 SHORT_OF_EXPERIENCE1_FILE$="Short_of_experience1.dat"
7310 SHORT_OF_EXPERIENCE2_FILE$="Short_of_experience2.dat"
7320 '*******************************************************
7330 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE1_FILE$ for input as #1
7340 for i=0 to 19
7350 input #1,buf_short_of_experience1$
7360 buf_short_of_experience1(i) = val(buf_short_of_experience1$)
7370 next i
7380 close #1
7390 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE2_FILE$ for input as #1
7400 for j=0 to 19
7410 input #1,buf_short_of_experience2$
7420 buf_short_of_experience2(j) = val(buf_short_of_experience2$)
7430 'buf_short_of_experience2(j)=val(buf_short_of_experience2$(j))
7440 next j
7450 close #1
7460 '******************************************************
7470 '5 恋愛経験を重ねた後なら愛を育める                   *
7480 '******************************************************
7490 '6.結婚への発展が困難なカップル  ここから             *
7500 '**********************************************************
7510 'DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7520 'DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7530 '**********************************************************
7540 DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7550 DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7560 '**********************************************************
7570 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE1_FILE$ for input as #1
7580 for i=0 to 19
7590 input #1,buf_difficult_for_couple1$
7600 buf_difficult_for_couple1(i) = val(buf_difficult_for_couple1$)
7610 next i
7620 close #1
7630 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE2_FILE$ for input as #1
7640 for j=0 to 19
7650 input #1,buf_difficult_for_couple2$
7660 buf_difficult_for_couple2(j) = val(buf_difficult_for_couple2$)
7670 next j
7680 close #1
7690 '******************************************************
7700 '6.結婚への発展が困難なカップル  ここまで             *
7710 '******************************************************
7720 '7.愛し方にズレが出る二人 ここから                    *
7730 '**********************************************************
7740 'FULL PATH = "config/Anzai_Aisyou/Differece_of_love1.dat"
7750 'DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7760 'DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7770 '***********************************************************
7780 DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7790 DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7800 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE1_FILE$ for input as #1
7810 for i=0 to 19
7820 input #1,buf_difference_of_love1$
7830 buf_difference_of_love1(i) = val(buf_difference_of_love1$)
7840 next i
7850 close #1
7860 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE2_FILE$ for input as #1
7870 for j=0 to 19
7880 input #1,buf_difference_of_love2$
7890 buf_difference_of_love2(j) = val(buf_difference_of_love2$)
7900 next j
7910 close #1
7920 '******************************************************
7930 '7.愛し方にズレが出る二人 ここまで                    *
7940 '******************************************************
7950 '8.互いの価値観が噛み合わない相性 ここから            *
7960 '**************************************************************
7970 'DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
7980 'DIFFRRENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
7990 '**************************************************************
8000 DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
8010 DIFFERENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
8020 '**************************************************************
8030 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN1_FILE$ for input as #1
8040 for i=0 to 19
8050 input #1,buf_difference_of_KachiKan1$
8060 buf_difference_of_KachiKan1(i) = val(buf_difference_of_KachiKan1$)
8070 next i
8080 close #1
8090 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN2_FILE$ for input as #1
8100 for j=0 to 19
8110 input #1,buf_difference_of_KachiKan2$
8120 buf_difference_of_KachiKan2(j) = val(buf_difference_of_KachiKan2$)
8130 next j
8140 close #1
8150 '******************************************************
8160 '8.互いの価値観が噛み合わない相性 ここまで            *
8170 '******************************************************
8180 '相性占いタイプ ここから                              *
8190 '******************************************************
8200 'RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8210 RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8220 '******************************************************
8230 open ANZAI_AISYOU_FOLDER$ + RESULT_AISYOU_TYPE_FILE$ for input as #1
8240 for i=0 to 7
8250 line input #1,Result_Aisyou_type$(i)
8260 next i
8270 close #1
8280 '****************************************************
8290 'Data文  ここから                                　 *
8300 '****************************************************
8310 '1.理解し合えるカップル　ここから                   *
8320 '****************************************************
8330 'data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
8340 'data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
8350 '****************************************************
8360 '1.理解し合えるカップル　ここまで                   *
8370 '****************************************************
8380 '2.互いに自然体でつきあえるカップル ここから        *
8390 '****************************************************
8400 'data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
8410 'data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
8420 '****************************************************
8430 '2.互いに自然体でつきあえるカップル　ここまで        *
8440 '****************************************************
8450 '3.男性にとって居心地の良いカップル  ここから       *
8460 '****************************************************
8470 'data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8480 'data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8490 '****************************************************
8500 '3.男性にとって居心地の良いカップル ここまで        *
8510 '****************************************************
8520 '4.女性にとって居心地の良いカップル  ここから       *
8530 '****************************************************
8540 'data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
8550 'data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
8560 '****************************************************
8570 '4.女性にとって居心地の良いカップル  ここまで       *
8580 '****************************************************
8590 '5.恋愛経験を重ねた後なら愛を育める ここから        *
8600 '****************************************************
8610 'data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8620 'data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8630 '****************************************************
8640 '5.恋愛経験を重ねた後なら愛を育める ここまで        *
8650 '****************************************************
8660 '6.結婚への発展が困難なカップル ここから            *
8670 '****************************************************
8680 'data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8690 'data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8700 '****************************************************
8710 '6.結婚への発展が困難なカップル ここまで            *
8720 '****************************************************
8730 '7.愛し方にズレが生じる二人  ここから               *
8740 '****************************************************
8750 'data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
8760 'data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
8770 '****************************************************
8780 '7.愛し方にずれが生じる二人  ここまで                               *
8790 '****************************************************
8800 '8.互いに価値観が噛み合わない相性　ここから                             *
8810 '****************************************************
8820 'data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
8830 'data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
8840 '****************************************************
8850 '8.互いに価値観が噛み合わない相性 ここまで         *
8860 '****************************************************
8870 '相性占い結果パターン ここから                    　*
8880 '****************************************************
8890 '0:理解し合える最良のカップル                        *
8900 '****************************************************
8910 'data "理解し合える最良のカップル"
8920 '****************************************************
8930 '1:互いに自然体で付き合えるカップル                 *
8940 '****************************************************
8950 'data "互いに自然体でつきあえるカップル"
8960 '****************************************************
8970 '2:男性にとって居心地の良い相性                   　*
8980 '****************************************************
8990 'data "男性にとって居心地の良い相性"
9000 '****************************************************
9010 '3:女性にとって居心地の良い相性                   　*
9020 '****************************************************
9030 'data "女性にとって居心地の良い相性"
9040 '****************************************************
9050 '4:恋愛経験を重ねた後なら愛を育める                 *
9060 '****************************************************
9070 'data "恋愛経験を重ねた後なら愛を育める"
9080 '****************************************************
9090 '5:結婚への発展が困難なカップル                     *
9100 '****************************************************
9110 'data "結婚への発展が困難なカップル"
9120 '****************************************************
9130 '6:愛し方にズレが生じる二人                         *
9140 '****************************************************
9150 'data "愛し方にずれが生じる二人"
9160 '****************************************************
9170 '7:互いに価値観が噛み合わない相性                   *
9180 '****************************************************
9190 'data "互いの価値観が噛み合わない相性"
9200 '************************************************
9210 'Data文   ここまで                              *
9220 '************************************************
9230 '相性占い結果パターン ここまで
9240 '*******************************
9250 '*****************************************************
9260 'メイン画面 Top画面1
9270 Main_Screen1:
9280 cls 3:talk "":font 48:color rgb(255,255,255)
9290 talk "メイン画面です。番号を選んでください"
9300 'グラフィック領域　ここから
9310 line (0,0)-(1080,60),rgb(0,0,255),bf
9320 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
9330 line (0,60)-(1080,560),rgb(127,255,212),bf
9340 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
9350 line (0,560)-(1080,740),rgb(0,255,0),bf
9360 'グラフィック領域 ここまで
9370 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
9380 Font 48
9390 '************************************************
9400 'Sprite                                         *
9410 '************************************************
9420 sp_on 0,1:sp_on 1,0:sp_on 2,0
9430 sp_put 0,(10,100),0,0
9440 '************************************************
9450 No=0:init"kb:4":y=0:key$="":bg=0
9460 print "◎姓名判断　メイン画面" + chr$(13)
9470 '************************************************
9480 '文字色:黒                                          *
9490 '************************************************
9500 color rgb(255,0,255)
9510 print " :1.姓名判断" + chr$(13)
9520 print " :2.姓名判断の設定" + chr$(13)
9530 print " :3.個人データーリスト" + chr$(13)
9540 print " :4.ヘルプ" + chr$(13)
9550 print " :5.プログラムの終了" + chr$(13)
9560 '*************************************************
9570 '文字:黒                                            *
9580 '*************************************************
9590 color rgb(0,0,0)
9600 locate 0,12
9610 print "1.姓名判断を選択" + chr$(13)
9620 Main_Screen2:
9630 y=0:key$="":bg=0
9640 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
9650 y=stick(1)
9660 key$=inkey$
9670 bg=strig(1)
9680 pause 2.55*100
9690 wend
9700 '**************************************************
9710 '1.下のキー  ここから
9720 '**************************************************
9730 if (y = 1 or key$ = chr$(31)) then
9740 select case No
9750 case 0:
9760 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9770 case 1:
9780 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9790 case 2:
9800 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9810 case 3:
9820 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9830 case 4:
9840 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
9850 end select
9860 endif
9870 '***************************************************
9880 '1. 下のキー　ここまで
9890 '***************************************************
9900 '***************************************************
9910 '2.上のキー ここから
9920 '***************************************************
9930 if (key$=chr$(30) or y=-1) then
9940 select case No
9950 case 0:
9960 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9970 case 1:
9980 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9990 case 2:
10000 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
10010 case 3:
10020 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
10030 case 4:
10040 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
10050 end select
10060 endif
10070 '***************************************************
10080 '3.決定ボタン ここから
10090 '***************************************************
10100 if (bg=2 or key$=chr$(13)) then
10110 select case No
10120 case 0:
10130 sp_on 0,0:goto seimeihandan_top:
10140 case 1:
10150 sp_on 1,0:goto seimeihandan_setting:
10160 case 2:
10170 sp_on 2,0:goto Parsonal_data_top:
10180 case 3:
10190 sp_on 3,0: goto help:
10200 case 4:
10210 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
10220 end select
10230 endif
10240 '***************************************************
10250 '3.決定ボタン ここまで
10260 '***************************************************
10270 '1.姓名判断トップ画面
10280 seimeihandan_top:
10290 cls:talk ""
10300 No=0:y=0:key$="":bg=0:talk""
10310 'タイトル文字:白
10320 font 48:color rgb(255,255,255),,rgb(176,196,222)
10330 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
10340 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
10350 sp_put 0,(10,100),0,0
10360 'グラフィック 描画領域　ここから
10370 cls 3
10380 '1.Title:青
10390 'Line 1
10400 line (0,0)-(1080,60),rgb(0,0,255),bf
10410 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
10420 'Line 2
10430 line (0,60)-(1080,450),rgb(127,255,212),bf
10440 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
10450 'Line 3
10460 line (0,450)-(1080,600),rgb(0,255,0),bf
10470 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
10480 'グラフィック 描画領域 ここまで
10490 color rgb(255,255,255)
10500 print"◎姓名判断の種類トップメニュー"+chr$(13)
10510 color rgb(255,0,255):print" :1.霊遺伝姓名学(1種類の占い)"+chr$(13)
10520 color rgb(255,0,255):print" :2.安斎流姓名判断(3種類の占い)"+chr$(13)
10530 COLOR rgb(255,0,255):print" :3.九星姓名判断(3種類の占い)"+chr$(13)
10540 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10550 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
10560 seimeihandan_top2:
10570 y=0:key$="":bg=0
10580 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
10590 key$=inkey$
10600 y=stick(1)
10610 bg=strig(1)
10620 pause 2.55*100
10630 wend
10640 '*************************************************
10650 '下のキー  ここから
10660 '*************************************************
10670 if (key$=chr$(31) or y=1) then
10680 select case No
10690 case 0:
10700 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10710 case 1:
10720 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10730 case 2:
10740 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10750 case 3:
10760 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10770 end select
10780 endif
10790 '*************************************************
10800 '下のキー　ここまで
10810 '*************************************************
10820 if (key$=chr$(30) or y=-1) then
10830 select case No
10840 case 0:
10850 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10860 case 1:
10870 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10880 case 2:
10890 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10900 case 3:
10910 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10920 end select
10930 endif
10940 '*************************************************
10950 '決定ボタン　ここから
10960 '*************************************************
10970 if (bg=2 or key$=chr$(13)) then
10980 select case No
10990 case 0:
11000 sp_on 0,0:goto Reiden_Top_Input_Sextype:
11010 case 1:
11020 sp_on 1,0:goto Anzai_Top:
11030 case 2:
11040 sp_on 2,0:goto Kyusei_Top:
11050 case 3:
11060 sp_on 3,0:goto Main_Screen1:
11070 end select
11080 endif
11090 '*************************************************
11100 '決定ボタン　ここまで
11110 '*************************************************
11120 '１．姓名判断(九星姓名判断トップ)
11130 'グラフィック領域　ここから
11140 Kyusei_Top:
11150 cls 3:No=0:y=0:bg=0:key$="":talk""
11160 sp_on 0,1:sp_put 0,(10,100),0,0
11170 line (0,0)-(1080,60),rgb(0,0,250),bf
11180 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11190 line (0,60)-(1080,460),rgb(127,255,212),bf
11200 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
11210 line (0,460)-(1080,680),rgb(0,255,0),bf
11220 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
11230 'グラフィック領域　ここまで
11240 font 48:color rgb(255,255,255),,rgb(176,196,222)
11250 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
11260 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
11270 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
11280 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
11290 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
11300 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
11310 locate 0,10:color RGB(0,0,0)
11320 print "1.人名の吉凶を見るを選択"
11330 Kyusei_Top2:
11340 bg=0:key$="":y=0
11350 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
11360 key$=inkey$
11370 y=stick(1)
11380 bg=strig(1)
11390 pause 2.50*100
11400 wend
11410 '****************************************************
11420 '下のキー　ここから
11430 '*****************************************************
11440 if (y=1 or key$=chr$(30)) then
11450 select case No
11460 case 0:
11470 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11480 case 1:
11490 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11500 case 2:
11510 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11520 case 3:
11530 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
11540 end select
11550 endif
11560 '*****************************************************
11570 '下のキー　ここまで
11580 '*****************************************************
11590 '*****************************************************
11600 '上のキー　ここから
11610 '*****************************************************
11620 if (y=-1 or key$=chr$(31)) then
11630 select case No
11640 case 0:
11650 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11660 case 1:
11670 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
11680 case 2:
11690 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11700 case 3:
11710 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11720 end select
11730 endif
11740 '*****************************************************
11750 '上のキー　ここまで
11760 '*****************************************************
11770 '*****************************************************
11780 '決定ボタン　ここから
11790 '*****************************************************
11800 if (key$=chr$(13) or bg=2) then
11810 select case No
11820 case 0:
11830 sp_on 0,0:goto Parson_name_kikkyo:
11840 case 1:
11850 sp_on 1,0:goto nick_name_check:
11860 case 2:
11870 sp_on 2,0:goto name_inyo_check:
11880 case 3:
11890 sp_on 3,0:goto seimeihandan_top:
11900 end select
11910 endif
11920 '*****************************************************
11930 '決定ボタン　ここまで
11940 '*****************************************************
11950 '2.姓名判断 安斎流姓名判断　トップ画面
11960 '2-1名前の姓の部分を入力
11970 'グラフィック領域　ここから
11980 Anzai_Top_Screen:
11990 cls 3:LINE (0,0)-(1080,60),rgb(0,0,255),bf
12000 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
12010 line (0,60)-(1080,260),rgb(127,255,212),bf
12020 pen 5:line(0,57)-(1077,257),rgb(0,0,255),b
12030 line (0,260)-(1080,350),rgb(0,255,0),bf
12040 pen 5:line(0,257)-(1077,347),rgb(0,0,255),b
12050 font 48:talk"":init"KB:2"
12060 'グラフィック領域 ここまで
12070 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
12080 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
12090 COLOR rgb(255,0,255)
12100 print"名前を2回に分けて入力してください"+chr$(13)
12110 print"名前の姓の部分を入れてください"+chr$(13)
12120 color rgb(0,0,0)
12130 input"名前の姓:",bufname$
12140 buff1=len(bufname$)
12150 '2-2名前の名の部分を入力
12160 'グラフィック描画領域　ここから
12170 cls 3:init"kb:2"
12180 line (0,0)-(1080,60),rgb(0,0,255),bf
12190 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
12200 line (0,60)-(1080,200),rgb(127,255,212),bf
12210 pen 5:line(0,57)-(1077,197),rgb(0,0,255),b
12220 line (0,200)-(1080,260),rgb(0,255,0),bf
12230 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
12240 'グラフィック描画領域 ここまで
12250 COLOR rgb(255,255,255)
12260 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
12270 talk"つぎに、名前のめいの部分を入れてください"
12280 color rgb(255,0,255)
12290 print"名前の名の部分を入れてください"+chr$(13)
12300 color rgb(0,0,0)
12310 input"名前の名:",bufname2$
12320 buff2=len(bufname2$)
12330 bufff=buff1+buff2
12340 select case bufff
12350 '姓1文字,名1文字
12360 case 2:
12370 cls
12380 '天運:buf_tenunn
12390 buf_tenunn=char_count(bufname$)
12400 '地運:buf_chiunn
12410 buf_chiunn=char_count(bufname2$)
12420 '人運 = 天運 + 地運
12430 buf_jinunn=buf_tenunn + buf_chiunn
12440 '外運 = 天運 + 人運
12450 buf_gaiunn = buf_tenunn + buf_chiunn
12460 '総数=buf_gaiunn
12470 buf_total=buf_gaiunn
12480 goto Result_Anzai:
12490 '姓１，名:2
12500 case 3:
12510 cls:
12520 if buff1=1 and buff2=2 then
12530 '1.天運:buf_tenunn
12540 buf_tenunn=char_count(bufname$)
12550 '2文字目の文字
12560 bufer_name2$(0)=Mid$(bufname2$,1,1)
12570 '3文字目の文字
12580 bufer_name2$(1)=Mid$(bufname2$,2,1)
12590 '2.人運
12600 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12610 '3.地運:buf_chiunn
12620 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12630 '4外運:buf_gaiunn
12640 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12650 '5.総数:buf_total
12660 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12670 goto Result_Anzai:
12680 endif
12690 if buff1=2 and buff2=1 then
12700 bufer_name$(0)=Mid$(bufname$,1,1)
12710 bufer_name$(1)=Mid$(bufname$,2,1)
12720 bufer_name2$(0)=Mid$(bufname$,1,1)
12730 '1.天運
12740 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12750 '2.人運
12760 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12770 '3.地運
12780 buf_chiunn=char_count(bufer_name2$(0))
12790 '4.外運
12800 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12810 '5.総数
12820 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12830 goto Result_Anzai:
12840 endif
12850 case 4:
12860 if buff1=2 and buff2=2 then
12870 bufer_name$(0)=Mid$(bufname$,1,1)
12880 bufer_name$(1)=Mid$(bufname$,2,1)
12890 bufer_name2$(0)=Mid$(bufname2$,1,1)
12900 bufer_name2$(1)=Mid$(bufname2$,2,1)
12910 '1.天運
12920 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12930 '2.人運
12940 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12950 '3.地運
12960 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12970 '4.外運
12980 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12990 '5.総数
13000 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13010 goto Result_Anzai:
13020 endif
13030 'パターン2 姓3文字 名1文字 total4文字
13040 if buff1=3 and buff2=1 then
13050 bufer_name$(0)=Mid$(bufname$,1,1)
13060 bufer_name$(1)=Mid$(bufname$,2,1)
13070 bufer_name$(2)=Mid$(bufname$,3,1)
13080 bufer_name2$(0)=Mid$(bufname2$,1,1)
13090 '1.天運
13100 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
13110 '2.人運
13120 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13130 '3.地運
13140 buf_chiunn=char_count(bufer_name2$(0))
13150 '4.外運
13160 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
13170 '5.総運
13180 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13190 goto Result_Anzai:
13200 endif
13210 'パターン３ 姓1,名３  合計４文字
13220 if buff1=1 and buff2=3 then
13230 bufer_name$(0)=Mid$(bufname$,1,1)
13240 bufer_name2$(0)=Mid$(bufname2$,1,1)
13250 bufer_name2$(1)=Mid$(bufname2$,2,1)
13260 bufer_name2$(2)=Mid$(bufname2$,3,1)
13270 '1.天運
13280 buf_tenunn = char_count(bufer_name$(0))
13290 '2.人運
13300 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
13310 '3.地運
13320 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13330 '4.外運
13340 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13350 '5.総運
13360 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13370 goto Result_Anzai:
13380 endif
13390 case 5:
13400 '５文字の名前
13410 '1.  3文字姓 2字名
13420 if buff1=3 and buff2=2 then
13430 bufer_name$(0)=Mid$(bufname$,1,1)
13440 bufer_name$(1)=Mid$(bufname$,2,1)
13450 bufer_name$(2)=Mid$(bufname$,3,1)
13460 bufer_name2$(0)=Mid$(bufname2$,1,1)
13470 bufer_name2$(1)=Mid$(bufname2$,2,1)
13480 '1.天運
13490 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13500 '2.人運
13510 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13520 '3.地運
13530 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13540 '4.外運
13550 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13560 '5.総運
13570 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13580 goto Result_Anzai:
13590 endif
13600 if buff1=2 and buff2=3 then
13610 bufer_name$(0)=Mid$(bufname$,1,1)
13620 bufer_name$(1)=Mid$(bufname$,2,1)
13630 bufer_name2$(0)=Mid$(bufname2$,1,1)
13640 bufer_name2$(1)=Mid$(bufname2$,2,1)
13650 bufer_name2$(2)=Mid$(bufname2$,3,1)
13660 '1.天運
13670 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
13680 '2.人運
13690 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13700 '3.地運
13710 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13720 '4.外運
13730 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13740 '5.総運
13750 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13760 goto Result_Anzai:
13770 endif
13780 if buff1=4 and buff2=1 then
13790 bufer_name$(0)=Mid$(bufname$,1,1)
13800 bufer_name$(1)=mid$(bufname$,2,1)
13810 bufer_name$(2)=mid$(bufname$,3,1)
13820 bufer_name$(3)=mid$(bufname$,4,1)
13830 bufer_name2$(0)=mid$(bufname2$,1,1)
13840 '1.天運
13850 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13860 '2.人運
13870 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13880 '3.地運
13890 buf_chiunn=char_count(bufer_name2$(0))
13900 '4.外運
13910 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13920 '5.総運
13930 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13940 goto Result_Anzai:
13950 endif
13960 case 6:
13970 '3字姓 3字名
13980 if buff1=3 and buff2=3 then
13990 bufer_name$(0)=Mid$(bufname$,1,1)
14000 bufer_name$(1)=Mid$(bufname$,2,1)
14010 bufer_name$(2)=Mid$(bufname$,3,1)
14020 bufer_name2$(0)=Mid$(bufname2$,1,1)
14030 bufer_name2$(1)=Mid$(bufname2$,2,1)
14040 bufer_name2$(2)=Mid$(bufname2$,3,1)
14050 '1.天運
14060 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
14070 '2.人運
14080 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
14090 '3.地運
14100 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14110 '4.外運
14120 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14130 '5.総運
14140 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14150 goto Result_Anzai:
14160 endif
14170 '4字姓 2字名
14180 if buff1=4 and buff2=2 then
14190 bufer_name$(0)=Mid$(bufname$,1,1)
14200 bufer_name$(1)=Mid$(bufname$,2,1)
14210 bufer_name$(2)=Mid$(bufname$,3,1)
14220 bufer_name$(3)=Mid$(bufname$,4,1)
14230 bufer_name2$(0)=Mid$(bufname2$,1,1)
14240 bufer_name2$(1)=Mid$(bufname2$,2,1)
14250 '1.天運
14260 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
14270 '2.人運
14280 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
14290 '3.地運
14300 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
14310 '4.外運
14320 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
14330 '5.総運
14340 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
14350 goto Result_Anzai:
14360 endif
14370 '4字姓 3字名
14380 case 7:
14390 if buff1=4 and buff2=3 then
14400 bufer_name$(0)=Mid$(bufname$,1,1)
14410 bufer_name$(1)=Mid$(bufname$,2,1)
14420 bufer_name$(2)=Mid$(bufname$,3,1)
14430 bufer_name$(3)=Mid$(bufname$,4,1)
14440 bufer_name2$(0)=Mid$(bufname2$,1,1)
14450 bufer_name2$(1)=Mid$(bufname2$,2,1)
14460 bufer_name2$(2)=Mid$(bufname2$,3,1)
14470 '1.天運
14480 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
14490 '2.人運
14500 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
14510 ' 3.地運
14520 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
14530 '4.外運
14540 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14550 '5.総運
14560 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14570 goto Result_Anzai:
14580 endif
14590 case else:
14600 end select
14610 '2.設定
14620 seimeihandan_setting:
14630 font 46:color rgb(0,0,0),,rgb(176,196,222)
14640 No=0:y=0:key$="":bg=0:talk""
14650 sp_on 0,1:sp_put 0,(10,100),0,0
14660 talk"設定画面です。番号を選んでエンターキーを押してください"
14670 'グラフィック領域　ここから
14680 cls 3:
14690 line (0,0)-(1080,60),rgb(0,0,255),bf
14700 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
14710 line (0,60)-(1080,560),rgb(127,255,212),bf
14720 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
14730 line (0,560)-(1080,750),rgb(0,255,0),bf
14740 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14750 'グラフィック領域 ここまで
14760 '1行目　文字色　 白
14770 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14780 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14790 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14800 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14810 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14820 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14830 COLOR rgb(0,0,0):locate 0,12:
14840 print"1.登録文字の確認を選択"+chr$(13)
14850 seimeihandan_setting2:
14860 y=0:key$="":bg=0
14870 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14880 key$=inkey$
14890 y=stick(1)
14900 bg=strig(1)
14910 pause 2.50*100
14920 wend
14930 '****************************************************
14940 '1.下のカーソル　ここから
14950 '****************************************************
14960 if (key$=chr$(31) or y=1) then
14970 select case No
14980 case 0:
14990 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
15000 case 1:
15010 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15020 case 2:
15030 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15040 case 3:
15050 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15060 case 4:
15070 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15080 end select
15090 endif
15100 '*****************************************************
15110 '1.下のカーソル　ここまで
15120 '*****************************************************
15130 '*****************************************************
15140 '2.上のカーソル　ここから
15150 '*****************************************************
15160 if (key$=chr$(30) or y=-1) then
15170 select case No
15180 case 0:
15190 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15200 case 1:
15210 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15220 case 2:
15230 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
15240 case 3:
15250 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15260 case 4:
15270 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15280 end select
15290 endif
15300 '******************************************************
15310 '2.上のカーソル　ここまで
15320 '******************************************************
15330 '******************************************************
15340 '3.決定ボタン　ここから
15350 '******************************************************
15360 if (key$=chr$(13) or bg=2) then
15370 select case No
15380 case 0:
15390 sp_on 0,0:goto Entry_moji_Top:
15400 case 1:
15410 sp_on 1,0:goto Entry_moji_check:
15420 case 2:
15430 sp_on 2,0:goto Moji_Kikkyo_Top:
15440 case 3:
15450 sp_on 3,0:goto Main_Screen1:
15460 case 4:
15470 sp_on 4,0:talk "プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
15480 end select
15490 endif
15500 '******************************************************
15510 '3.決定ボタン　ここまで
15520 '******************************************************
15530 '3 番号で吉凶を見る 入力
15540 Moji_Kikkyo_Top:
15550 font 46:color rgb(0,0,0),,rgb(176,196,222)
15560 init "kb:2"
15570 'グラフィック描画領域　ここから
15580 cls 3:talk""
15590 line (0,0)-(1080,60),rgb(0,0,255),bf
15600 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
15610 line (0,60)-(1080,255),rgb(127,255,212),bf
15620 PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
15630 line (0,255)-(1080,350),rgb(0,255,0),bf
15640 pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
15650 'グラフィック描画領域 ここまで
15660 color rgb(255,255,255)
15670 print"画数での吉凶判定"+chr$(13)
15680 color rgb(255,0,255)
15690 print"画数を入れてください"+chr$(13)
15700 print"(Max:81文字)"+chr$(13)
15710 color rgb(0,0,0)
15720 Input"文字の画数:",Number
15730 if Number > 81 then goto Moji_Kikkyo_Top:
15740 if Number <=81 then goto Moji_Kikkyo:
15750 '3.番号で吉凶を見る 結果表示
15760 'グラフィック描画領域　ここから
15770 Moji_Kikkyo:
15780 cls 3:init "kb:4":key$="":bg=0
15790 line (0,0)-(700,60),rgb(0,0,255),bf
15800 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15810 line (0,60)-(700,260),rgb(127,255,212),bf
15820 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15830 line (0,260)-(700,350),rgb(0,255,0),bf
15840 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15850 'グラフィック描画領域　ここまで
15860 color rgb(255,255,255)
15870 print "画数で吉凶を求める"+chr$(13)
15880 color rgb(255,0,255)
15890 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15900 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15910 while (key$<>chr$(13) and bg <> 2)
15920 key$=inkey$
15930 bg=strig(1)
15940 pause 2.50*100
15950 wend
15960 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15970 '3.ヘルプ
15980 help:
15990 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
16000 No=0:y=0:key$="":bg=0
16010 talk""
16020 '描画領域 ここから
16030 line (0,0) - (1080,60),rgb(0,0,255),bf
16040 sp_on 0,1:sp_put 0,(10,100),0,0
16050 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
16060 line (0,60) - (1080,570),rgb(127,255,212),bf
16070 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
16080 line (0,570) - (1080,650),rgb(0,255,0),bf
16090 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
16100 '描画領域　ここまで
16110 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
16120 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
16130 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
16140 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
16150 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
16160 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
16170 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
16180 color rgb(0,0,0)
16190 locate 0,12:print "1.バージョン情報を選択"
16200 help2:
16210 y=0:key$="":bg=0
16220 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
16230 key$=inkey$
16240 y=stick(1)
16250 bg=strig(1)
16260 pause 2.50*100
16270 wend
16280 if (y=1 or key$=chr$(30)) then
16290 select case No
16300 case 0:
16310 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
16320 case 1:
16330 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
16340 case 2:
16350 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
16360 case 3:
16370 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
16380 case 4:
16390 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
16400 end select
16410 endif
16420 if (y=-1 or key$=chr$(31)) then
16430 select case No
16440 case 0:
16450 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
16460 case 1:
16470 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
16480 case 2:
16490 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
16500 case 3:
16510 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
16520 case 4:
16530 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
16540 end select
16550 endif
16560 if (key$=chr$(13) or bg=2) then
16570 select case No
16580 case 0:
16590 sp_on 0,0:goto Version_info:
16600 case 1:
16610 sp_on 1,0:goto Document_info:
16620 case 2:
16630 sp_on 2,0:goto Config_Setting:
16640 case 4:
16650 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16660 case 3:
16670 sp_on 3,0:goto Main_Screen1:
16680 end select
16690 endif
16700 'Menu1　画面
16710 talk"調べたい名前のみよじをいれてください"
16720 'グラフィック描画領域　ここから
16730 Parson_name_kikkyo:
16740 cls 3:init "KB:2"
16750 line (0,0)-(1080,60),rgb(0,0,255),bf
16760 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16770 line (0,60)-(1080,180),rgb(127,255,212),bf
16780 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
16790 line (0,180)-(1080,250),rgb(0,255,0),bf
16800 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
16810 'グラフィック描画領域　ここまで
16820 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16830 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16840 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16850 cls
16860 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16870 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16880 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16890 goto complate_Kyusei:
16900 'メニュー6　バージョン表示
16910 'グラフィック　描画　領域　 ここから
16920 Version_info:
16930 cls 3:bg=0:talk ""
16940 line (0,0) - (1080,60),rgb(0,0,255),bf
16950 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
16960 line (0,60) - (1080,665),rgb(127,255,212),bf
16970 pen 5:line(0,57) - (1077,662),rgb(0,0,255),b
16980 line (0,665) - (1080,750),rgb(0,255,0),bf
16990 pen 5:line(0,662) - (1077,747),rgb(0,0,255),b
17000 'グラフィック　描画 領域　 ここまで
17010 color rgb(255,255,255):print"バージョン情報"+chr$(13)
17020 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
17030 color rgb(255,0,255):PRINT"Ver:245.2024.01.05" + chr$(13)
17040 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字" + chr$(13)
17050 color rgb(255,0,255):print"アルファベット（大文字、小文字)" + chr$(13)
17060 color rgb(255,0,255):print"対応漢字画数：1画から24画まで" + chr$(13)
17070 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
17080 'ここを書き換える
17090 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.45です"
17100 color rgb(0,0,0):print"エンターキーを押してください"
17110 Version_info2:
17120 bg=0
17130 while (bg<>2)
17140 bg=strig(1)
17150 pause 2.50*100
17160 wend
17170 if bg = 2  then beep:goto Main_Screen1:
17180 complate_Kyusei:
17190 '文字数を求める変数
17200 buf_char_size=len(name$)
17210 buf_char_size2=len(name2$)
17220 '入力した文字を代入する変数
17230 '入力した文字を配列に代入する処理
17240 '姓名判断データー文字比較
17250 '画数を求める関数
17260 func char_count(buf_count$)
17270 count=0:buffer=0
17280 '1画の文字 23文字
17290 for j=0 to ((Moji_1)-1)
17300 if buf_count$=buf_char_hiragana1$(j) then
17310 count =1:
17320 endif
17330 next j
17340 '2画の文字
17350 for j=0 to ((Moji_2)-1)
17360 if buf_count$=buf_char_hiragana2$(j)  then
17370 count = 2:
17380 endif
17390 next j
17400 for j=0 to ((Moji_3)-1)
17410 if buf_count$=buf_char_hiragana3$(j) then
17420 count =3:
17430 endif
17440 next j
17450 for j=0 to ((Moji_4)-1)
17460 if buf_count$=buf_char_hiragana4$(j) then
17470 count = 4:
17480 endif
17490 next j
17500 for j=0 to ((Moji_5)-1)
17510 if buf_count$=buf_char_hiragana5$(j) then
17520 count = 5:
17530 endif
17540 next j
17550 for j=0 to ((Moji_6)-1)
17560 if buf_count$=buf_char_hiragana6$(j) then
17570 count= 6
17580 endif
17590 next j
17600 for  j=0 to ((Moji_7)-1)
17610 if buf_count$=buf_char_hiragana7$(j) then
17620 count=  7
17630 endif
17640 next j
17650 for j=0 to ((Moji_8)-1)
17660 if buf_count$=buf_char_hiragana8$(j) then
17670 count= 8
17680 endif
17690 next j
17700 for j=0 to ((Moji_9)-1)
17710 if buf_count$=buf_char_hiragana9$(j) then
17720 count=9
17730 endif
17740 next j
17750 for j=0 to ((Moji_10)-1)
17760 if buf_count$=buf_char_hiragana10$(j) then
17770 count=10
17780 endif
17790 next j
17800 for j=0 to ((Moji_11)-1)
17810 if buf_count$=buf_char_hiragana11$(j) then
17820 count=11
17830 endif
17840 next j
17850 for j=0 to  ((Moji_12)-1)
17860 if buf_count$=buf_char_hiragana12$(j) then
17870 count=12
17880 endif
17890 next j
17900 for j=0 to ((Moji_13)-1)
17910 if buf_count$=buf_char_hiragana13$(j) then
17920 count=13
17930 endif
17940 next j
17950 for j=0 to ((Moji_14)-1)
17960 if buf_count$=buf_char_hiragana14$(j) then
17970 count=14
17980 endif
17990 next j
18000 for j=0 to ((Moji_15)-1)
18010 if buf_count$=buf_char_hiragana15$(j) then
18020 count=15
18030 endif
18040 next j
18050 for j=0 to ((Moji_16)-1)
18060 if buf_count$=buf_char_hiragana16$(j) then
18070 count=16
18080 endif
18090 next j
18100 for j=0 to ((Moji_17)-1)
18110 if buf_count$=buf_char_hiragana17$(j) then
18120 count=17
18130 endif
18140 next j
18150 for j=0 to ((Moji_18)-1)
18160 if buf_count$=buf_char_hiragana18$(j) then
18170 count=18
18180 endif
18190 next j
18200 for j=0 to ((Moji_19)-1)
18210 if buf_count$=buf_char_hiragana19$(j) then
18220 count=19
18230 endif
18240 next j
18250 for j=0 to ((Moji_20)-1)
18260 if buf_count$=buf_char_hiragana20$(j) then
18270 count=20
18280 endif
18290 next i
18300 for j=0 to ((Moji_21)-1)
18310 if buf_count$=buf_char_hiragana21$(j) then
18320 count=21
18330 endif
18340 next j
18350 for j=0 to ((Moji_22)-1)
18360 if buf_count$=buf_char_hiragana22$(j) then
18370 count=22
18380 endif
18390 next j
18400 for j=0 to ((Moji_23)-1)
18410 if buf_count$=buf_char_hiragana23$(j) then
18420 count=23
18430 endif
18440 next j
18450 for j=0 to ((Moji_24)-1)
18460 if buf_count$=buf_char_hiragana24$(j) then
18470 count=24
18480 endif
18490 buffer = count
18500 next j
18510 endfunc buffer
18520 func show_sex_type$(sex$)
18530 buf_number=val(Mid$(sex$,4,1))
18540 if buf_number = 1 then
18550 buf_show_sex_type$="性別:女性"
18560 else
18570 if buf_number=2 then
18580 buf_show_sex_type$="性別:男性"
18590 endif
18600 endif
18610 endfunc buf_show_sex_type$
18620 '合計を求める関数
18630 func totalcounts(buffers$)
18640 buffers=0:
18650 for i=0 to len(buffers$)-1
18660 buffers=buffers+char_count(buffers$)
18670 next i
18680 endfunc buffers
18690 buf_count2=0:buf_count3=0
18700 '1.苗字の文字数
18710 for n=0 to (buf_char_size-1)
18720 buf_Input_data$(n)=mid$(name$,n+1,1)
18730 next n
18740 for i=0 to (buf_char_size-1)
18750 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18760 next i
18770 '2.名の文字数
18780 for n2=0 to (buf_char_size2-1)
18790 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18800 next n2
18810 for i2=0 to (buf_char_size2-1)
18820 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18830 next i2
18840 '総数を出す
18850 select case (buf_char_size + buf_char_size2)
18860 case 6:
18870 if ((buf_char_size=4) and (buf_char_size2=2)) then
18880 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18890 endif
18900 if ((buf_char_size=3) and (buf_char_size2=3)) then
18910 if buf_Input_data$(1)="々" then
18920 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18930 else
18940 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18950 endif
18960 endif
18970 case 5:
18980 if ((buf_char_size=4) and (buf_char_size2=1)) then
18990 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19000 endif
19010 if ((buf_char_size=2) and (buf_char_size2=3)) then
19020 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19030 endif
19040 if ((buf_char_size=3) and (buf_char_size2=2)) then
19050 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19060 endif
19070 case 4:
19080 if ((buf_char_size=1) and (buf_char_size2=3)) then
19090 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19100 endif
19110 if ((buf_char_size=2) and (buf_char_size2=2)) then
19120 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19130 endif
19140 if ((buf_char_size=3) and (buf_char_size2=1)) then
19150 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19160 endif
19170 case 3:
19180 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19190 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19200 endif
19210 if ((buf_char_size=2) and (buf_char_size2=1)) then
19220 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19230 endif
19240 case 2:
19250 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19260 case else:
19270 end select
19280 '文字の総数をだす
19290 total_name$ = name$ + name2$
19300 '1.姓星を求める
19310 select case buf_char_size
19320 '苗字1文字のとき
19330 case 1:
19340 buf_seisei = char_count(buf_Input_data$(0)) + 1
19350 '苗字2文字の時
19360 case 2:
19370 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
19380 '苗字3文字のとき
19390 case 3:
19400 if (buf_Input_data$(1)="々")  then
19410 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
19420 else
19430 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
19440 endif
19450 '苗字4文字のとき
19460 case 4:
19470 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
19480 case else:
19490 end select
19500 '2.主星をだす
19510 '2.主星
19520 select case (buf_char_size + buf_char_size2)
19530 '姓名5文字のとき
19540 case 6:
19550 if ((buf_char_size=4) and (buf_char_size2=2)) then
19560 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19570 endif
19580 if ((buf_char_size=3) and (buf_char_size2=3)) then
19590 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19600 endif
19610 case 5:
19620 if ((buf_char_size=4) and (buf_char_size2=1)) then
19630 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19640 endif
19650 if ((buf_char_size=2) and (buf_char_size2=3)) then
19660 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19670 endif
19680 if ((buf_char_size=3) and (buf_char_size2=2)) then
19690 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19700 endif
19710 '姓名4文字のとき
19720 case 4:
19730 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19740 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19750 endif
19760 if ((buf_char_size=1) and (buf_char_size2=3)) then
19770 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19780 endif
19790 if ((buf_char_size=3) and (buf_char_size2=1)) then
19800 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19810 endif
19820 '姓名3文字のとき
19830 case 3:
19840 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19850 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19860 else
19870 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19880 endif
19890 case 2:
19900 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19910 case else:
19920 end select
19930 '3.名星を求める
19940 select case (buf_char_size + buf_char_size2)
19950 case 6:
19960 if ((buf_char_size=3) and (buf_char_size2=3)) then
19970 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19980 endif
19990 if ((buf_char_size=4) and (buf_char_size2=2)) then
20000 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20010 endif
20020 case 5:
20030 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
20040 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20050 endif
20060 if ((buf_char_size=3) and (buf_char_size2=2)) then
20070 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20080 endif
20090 if ((buf_char_size=2) and (buf_char_size2=3))  then
20100 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20110 endif
20120 case 4:
20130 if ((buf_char_size=2) and (buf_char_size2=2)) then
20140 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
20150 endif
20160 if ((buf_char_size=1) and (buf_char_size2=3)) then
20170 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
20180 endif
20190 if ((buf_char_size=3) and (buf_char_size2=1)) then
20200 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20210 endif
20220 case 3:
20230 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20240 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20250 endif
20260 if ((buf_char_size=2) and (buf_char_size2=1)) then
20270 buf_meisei=char_count(buf_Input_data2$(0))+1
20280 endif
20290 case 2:
20300 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20310 case else:
20320 end select
20330 '4.外星を求める
20340 select case (buf_char_size + buf_char_size2)
20350 case 6:
20360 if buf_Input_data$(1)="々"  then
20370 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20380 else
20390 if ((buf_char_size=4) and (buf_char_size2=2)) then
20400 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20410 else
20420 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20430 endif
20440 endif
20450 case 5:
20460 if ((buf_char_size=4) and (buf_char_size2=1)) then
20470 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
20480 endif
20490 if ((buf_char_size=3) and (buf_char_size2=2)) then
20500 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20510 endif
20520 if ((buf_char_size=2) and (buf_char_size2=3)) then
20530 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20540 endif
20550 case 4:
20560 if ((buf_char_size=2) and (buf_char_size2=2)) then
20570 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20580 endif
20590 if ((buf_char_size=1) and (buf_char_size2=3)) then
20600 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20610 endif
20620 if ((buf_char_size=3) and (buf_char_size2=1)) then
20630 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20640 endif
20650 case 3:
20660 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20670 buf_gaisei=1+char_count(buf_Input_data2$(1))
20680 endif
20690 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20700 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20710 endif
20720 case 2:
20730 buf_gaisei = 2
20740 case else:
20750 end select
20760 '診断結果表示
20770 '1.姓星を出す
20780 'グラフィック描画領域　ここから
20790 Result_Kyusei_Kikkyo:
20800 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20810 '縦の画面
20820 '1行目
20830 line (0,0)-(1500,60),rgb(0,0,255),bf
20840 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20850 '2行目
20860 line (0,60)-(1500,425),rgb(127,255,212),bf
20870 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20880 '3行目
20890 line (0,485)-(1500,425),rgb(0,255,0),bf
20900 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20910 '横の画面　吉凶のランク表
20920 'グラフィック描画領域　ここまで
20930 talk"診断結果です":font 32
20940 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20950 color Rgb(255,0,255)
20960 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20970 '2.主星を出す
20980 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20990 '3.名星を求める
21000 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
21010 '4.外星を求める
21020 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
21030 '5.総数を出す
21040 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
21050 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
21060 color rgb(0,0,0)
21070 print"エンターキーを押してください"
21080 while (key$ <> chr$(13) and bg <> 2)
21090 key$=inkey$
21100 bg=strig(1)
21110 pause 2.50*100
21120 wend
21130 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
21140 '2.主星を出す
21150 'メニュー3 登録文字の確認 ここから
21160 'グラフィック領域　ここから
21170 'タイトル青 文字:白
21180 Entry_moji_Top:
21190 talk ""
21200 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
21210 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
21220 line (0,62)-(1080,155),rgb(0,255,255),bf
21230 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
21240 line (0,155)-(1080,260),rgb(0,255,0),bf
21250 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
21260 'グラフィック領域　ここまで
21270 talk"調べたい文字をひと文字入れてください。":init "kb:2"
21280 '文字:白
21290 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
21300 '文字:アクア
21310 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
21320 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
21330 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
21340 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
21350 '1画の文字
21360 for i=0 to ((Moji_1)-1)
21370 if (name$=buf_char_hiragana1$(i)) then
21380 buffer_count=1:goto Moji_count_check:
21390 endif
21400 next i
21410 '2画の文字
21420 for i=0 to ((Moji_2)-1)
21430 if (name$=buf_char_hiragana2$(i)) then
21440 buffer_count=2:goto Moji_count_check:
21450 endif
21460 next i
21470 '3画の文字
21480 for i=0 to ((Moji_3)-1)
21490 if (name$=buf_char_hiragana3$(i)) then
21500 buffer_count=3:goto Moji_count_check:
21510 endif
21520 next i
21530 '4画の文字
21540 for i=0 to ((Moji_4)-1)
21550 if (name$=buf_char_hiragana4$(i)) then
21560 buffer_count=4:goto Moji_count_check:
21570 endif
21580 next i
21590 '5画の文字
21600 for i=0 to ((Moji_5)-1)
21610 if (name$=buf_char_hiragana5$(i)) then
21620 buffer_count=5:goto Moji_count_check:
21630 endif
21640 next i
21650 '6画の文字
21660 for i=0 to ((Moji_6)-1)
21670 if (name$=buf_char_hiragana6$(i)) then
21680 buffer_count=6:goto Moji_count_check:
21690 endif
21700 next i
21710 '7画の文字
21720 for i=0 to ((Moji_7)-1)
21730 if (name$=buf_char_hiragana7$(i)) then
21740 buffer_count=7:goto Moji_count_check:
21750 endif
21760 next i
21770 '8画の文字 120 文字
21780 for i=0 to ((Moji_8)-1)
21790 if (name$=buf_char_hiragana8$(i)) then
21800 buffer_count=8:goto Moji_count_check:
21810 endif
21820 next i
21830 '9画の文字  103文字
21840 for i=0 to ((Moji_9)-1)
21850 if (name$=buf_char_hiragana9$(i)) then
21860 buffer_count=9:goto Moji_count_check:
21870 endif
21880 next i
21890 '10画の文字 98文字
21900 for i=0 to ((Moji_10)-1)
21910 if (name$=buf_char_hiragana10$(i)) then
21920 buffer_count=10:goto Moji_count_check:
21930 endif
21940 next i
21950 '11画の文字 98文字
21960 for i=0 to ((Moji_11)-1)
21970 if (name$=buf_char_hiragana11$(i)) then
21980 buffer_count=11:goto Moji_count_check:
21990 endif
22000 next i
22010 '12画の文字
22020 for i=0 to ((Moji_12)-1)
22030 if (name$=buf_char_hiragana12$(i)) then
22040 buffer_count=12:goto Moji_count_check:
22050 endif
22060 next i
22070 '13画の文字
22080 for i=0 to ((Moji_13)-1)
22090 if (name$=buf_char_hiragana13$(i)) then
22100 buffer_count=13:goto Moji_count_check:
22110 endif
22120 next i
22130 '14画の文字
22140 for i=0 to ((Moji_14)-1)
22150 if (name$=buf_char_hiragana14$(i)) then
22160 buffer_count=14:goto Moji_count_check:
22170 endif
22180 next i
22190 '15画の文字
22200 for i=0 to ((Moji_15)-1)
22210 if (name$=buf_char_hiragana15$(i)) then
22220 buffer_count=15:goto Moji_count_check:
22230 endif
22240 next i
22250 '16画の文字
22260 for i=0 to ((Moji_16)-1)
22270 if (name$=buf_char_hiragana16$(i)) then
22280 buffer_count=16:goto Moji_count_check:
22290 endif
22300 next i
22310 '17画の文字
22320 for i=0 to ((Moji_17)-1)
22330 if (name$=buf_char_hiragana17$(i)) then
22340 buffer_count=17:goto Moji_count_check:
22350 endif
22360 next i
22370 '18画の文字 25
22380 for i=0 to ((Moji_18)-1)
22390 if (name$=buf_char_hiragana18$(i)) then
22400 buffer_count=18:goto Moji_count_check:
22410 endif
22420 next i
22430 '19画の文字 17
22440 for i=0 to ((Moji_19)-1)
22450 if (name$=buf_char_hiragana19$(i)) then
22460 buffer_count=19:goto Moji_count_check:
22470 endif
22480 next i
22490 '20画の文字 13
22500 for i=0 to ((Moji_20)-1)
22510 if (name$=buf_char_hiragana20$(i)) then
22520 buffer_count=20:goto Moji_count_check:
22530 endif
22540 next i
22550 '21画の文字 6
22560 for i=0 to ((Moji_21)-1)
22570 if (name$=buf_char_hiragana21$(i)) then
22580 buffer_count=21:goto Moji_count_check:
22590 endif
22600 next i
22610 '22画の文字 4
22620 for i=0 to ((Moji_22)-1)
22630 if (name$=buf_char_hiragana22$(i)) then
22640 buffer_count=22:goto Moji_count_check:
22650 endif
22660 next i
22670 '23画の文字 3
22680 for i=0 to ((Moji_23)-1)
22690 if (name$=buf_char_hiragana23$(i)) then
22700 buffer_count=23:goto Moji_count_check:
22710 endif
22720 next i
22730 '24画の文字
22740 for i=0 to ((Moji_24)-1)
22750 if (name$=buf_char_hiragana24$(i)) then
22760 buffer_count=24:goto Moji_count_check:
22770 endif
22780 next i
22790 'Menu3 結果表示 画数の登録確認
22800 Moji_count_check:
22810 bg=0:init"kb:4"
22820 if (buffer_count = 0) then
22830 '登録文字がない場合の処理
22840 'グラフィック領域　ここから
22850 'Moji_count_check:
22860 cls 3:talk ""
22870 '1行
22880 line (0,0)-(1080,60),rgb(0,0,255),bf
22890 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22900 '2行目
22910 line (0,60)-(1080,165),rgb(127,255,212),bf
22920 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22930 '3行目
22940 line (0,165)-(1080,370),rgb(0,0,255),bf
22950 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22960 '4行目
22970 line (0,370)-(1080,450),rgb(0,255,0),bf
22980 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22990 'グラフィック領域　ここまで
23000 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
23010 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
23020 talk "この文字は、登録されていません"
23030 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
23040 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
23050 color rgb(0,0,0):print"コマンド:"
23060 while (bg <> 2 and key$ <> chr$(13))
23070 key$=inkey$
23080 bg=strig(1)
23090 pause 2.50*100
23100 wend
23110 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
23120 else
23130 'グラフィック描画領域　ここから
23140 'Entry_moji_check:
23150 cls 3
23160 '1行目
23170 line (0,0)-(1080,58),rgb(0,0,255),bf
23180 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
23190 '2行目
23200 line (0,58)-(1080,100),rgb(127,255,212),bf
23210 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
23220 '3行目
23230 line (0,100)-(1080,280),rgb(0,0,255),bf
23240 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
23250 '4行目
23260 line (0,280)-(1080,340),rgb(0,255,0),bf
23270 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
23280 'グラフィック描画領域　ここまで
23290 color rgb(255,255,255):print "登録文字画数結果表示"
23300 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
23310 endif
23320 while (key$<>chr$(13) and bg <> 2)
23330 key$=inkey$
23340 bg=strig(1)
23350 pause 2.50*100
23360 wend
23370 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
23380 'Menu2 名前の陰陽を見る
23390 'グラフィック描画領域 ここから
23400 name_inyo_check:
23410 init "kb:2":talk ""
23420 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
23430 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
23440 LINE (0,60)-(1080,250),rgb(127,255,212),bf
23450 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
23460 line (0,250)-(1080,350),rgb(0,255,0),bf
23470 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
23480 'グラフィック描画領域　ここまで
23490 cls
23500 color rgb(255,255,255)
23510 print"Menu2 名前の陰陽を見る"+chr$(13)
23520 COLOR rgb(255,0,255)
23530 PRINT"(●:陽,○:陰)"+chr$(13)
23540 print"調べたい名前苗字を入れてください"+chr$(13)
23550 color rgb(0,0,0)
23560 Input"調べたい名前の苗字:",name$
23570 if name$="" then goto name_inyo_check:
23580 'Menu2 陰陽の吉凶を見る 名入力
23590 cls:color rgb(255,255,255)
23600 print"Menu2 名前の陰陽を見る"+chr$(13)
23610 color rgb(255,0,255)
23620 print"(●:陽,○:陰)"+chr$(13)
23630 print"調べたい名前の名を入れてください"+chr$(13)
23640 color rgb(0,0,0)
23650 Input"調べたい名前の名:",name2$
23660 if name2$="" then goto name_inyo_check:
23670 for i=0 to len(name$)-1
23680 name_array$(i)=Mid$(name$,i+1,1)
23690 if char_count(name_array$(i)) mod 2 = 1  then
23700 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23710 else
23720 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23730 endif
23740 next i
23750 for i=0 to len(name2$)-1
23760 name_array2$(i)=Mid$(name2$,i+1,1)
23770 if char_count(name_array2$(i)) mod 2 = 1 then
23780 name_array2$(i) = "○":buffer2$ = buffer2$ + name_array2$(i)
23790 else
23800 name_array2$(i)="●":buffer2$ = buffer2$ + name_array2$(i)
23810 endif
23820 next i
23830 bufname$ = buffer$ + buffer2$
23840 '陰陽のタイプ ここから
23850 select case (len(bufname$))
23860 '2文字
23870 case 2:
23880 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$ = "吉相:姓名2字の陰陽吉相"
23890 'endif
23900 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23910 '  endif
23920 '3文字
23930 case 3:
23940 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23950 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23960 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23970 '4文字
23980 case 4:
23990 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
24000 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
24010 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
24020 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
24030 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
24040 '5文字
24050 case 5:
24060 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
24070 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
24080 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
24090 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
24100 case 6:
24110 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
24120 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
24130 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
24140 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
24150 case else:
24160 buffer_name$="例外に入りました"
24170 end select
24180 '陰陽のタイプ　ここまで
24190 'グラフィック描画領域　ここから
24200 cls 2:key$="":bg=0:init "kb:4":talk ""
24210 line (0,0)-(1080,60),rgb(0,0,250),bf
24220 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24230 line (0,60)-(1080,285),rgb(127,255,212),bf
24240 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
24250 line (0,280)-(1080,380),rgb(0,255,0),bf
24260 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
24270 'グラフィック描画領域 ここまで
24280 color rgb(255,255,255)
24290 cls:print"名前:";name$ + name2$ + chr$(13)
24300 color rgb(255,0,255)
24310 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
24320 print buffer_name$;chr$(13)
24330 color rgb(0,0,0)
24340 print"エンターキーを押してください"
24350 while (bg <> 2 and key$ <> chr$(13))
24360 key$=inkey$
24370 bg=strig(1)
24380 pause 2.50*100
24390 wend
24400 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24410 'Menu3
24420 '登録文字数の確認
24430 Entry_moji_check:
24440 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24450 'グラフィック描画領域　ここから
24460 cls 3:init"kb:4":bg=0:key$="":talk ""
24470 '1行目
24480 line (0,0)-(1080,60),rgb(0,0,255),bf
24490 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24500 '2行目
24510 line (0,60)-(1080,150),rgb(157,255,212),bf
24520 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24530 '3行目
24540 line (0,150)-(1080,250),rgb(0,255,0),bf
24550 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24560 'グラフィック描画領域 ここまで
24570 color rgb(255,255,255)
24580 PRINT"登録文字数の確認"+chr$(13)
24590 color rgb(255,0,255)
24600 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24610 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24620 while (key$ <> chr$(13) and bg <> 2)
24630 key$=inkey$
24640 bg=strig(1)
24650 pause 2.50*100
24660 wend
24670 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24680 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24690 nick_name_check:
24700 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24710 'グラフィック描画領域　ここから
24720 cls 3:init "kb:2"
24730 line (0,0)-(1080,60),rgb(0,0,250),bf
24740 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24750 line (0,60)-(1080,160),rgb(127,255,212),bf
24760 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24770 line (0,160)-(1080,270),rgb(0,255,0),bf
24780 pen 5:line(0,157)-(1077,267),rgb(0,0,255),b
24790 'グラフィック描画領域　ここまで
24800 buf=0:cls
24810 locate 0,0
24820 color rgb(255,255,255)
24830 Print"名前(ニックネーム)の総数で吉凶を判断します"
24840 locate 0,2
24850 color rgb(255,0,255)
24860 PRINT"名前(ニックネーム)を入れてください"
24870 locate 0,4
24880 color rgb(0,0,0)
24890 Input"名前:",name$
24900 if name$="" then goto nick_name_check:
24910 for n=0 to (len(name$)-1)
24920 buf_Input_data$(n)=mid$(name$,n+1,1)
24930 buf=buf+char_count(buf_Input_data$(n))
24940 next n
24950 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24960 '結果表示　グラフィック　ここから
24970 cls 3:init "kb:4":bg=0:key$=""
24980 line (0,0)-(1080,60),rgb(0,0,255),bf
24990 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
25000 line (0,60)-(1080,160),rgb(127,255,212),bf
25010 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
25020 line (0,160)-(1080,540),rgb(0,255,0),bf
25030 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
25040 '結果表示 グラフィック領域 ここまで
25050 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
25060 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
25070 while (key$ <> chr$(13) and bg <> 2)
25080 key$=inkey$
25090 bg=strig(1)
25100 pause 2.50*100
25110 wend
25120 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
25130 '名前2文字
25140 'グラフィック描画領域　ここから
25150 Result_Anzai:
25160 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
25170 line (0,0)-(1400,60),rgb(0,0,255),bf
25180 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
25190 line (0,60)-(1400,540-180),rgb(127,255,212),bf
25200 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
25210 line (0,540-180)-(1400,540),rgb(0,255,0),bf
25220 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25230 'グラフィック描画領域 ここまで
25240 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25250 color rgb(255,0,255)
25260 print"天運";buf_tenunn;chr$(13)
25270 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25280 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25290 print"外運";buf_gaiunn;chr$(13)
25300 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25310 COLOR rgb(0,0,0)
25320 PRINT"エンターキー:トップ画面"+chr$(13)
25330 while (key$<>chr$(13) and bg <> 2)
25340 key$=inkey$
25350 bg=strig(1)
25360 pause 2.50*100
25370 wend
25380 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25390 '参考文献 表示 ここから
25400 'グラフィック描画領域　 ここから
25410 Document_info:
25420 cls 3:init"kb:4":bg=0
25430 line (0,0)-(1080,60),rgb(0,0,255),bf
25440 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
25450 line (0,60)-(1080,650),rgb(127,255,212),bf
25460 pen 5:line(0,57)-(1077,647),rgb(0,0,255),b
25470 line (0,650)-(1080,730),rgb(0,255,0),bf
25480 pen 5:line(0,647)-(1077,727),rgb(0,0,255),b
25490 'グラフィック描画領域  ここまで
25500 '参考文献１
25510 cls
25520 color rgb(255,255,255)
25530 locate 0,0
25540 print"◎参考文献"
25550 color rgb(255,0,255)
25560 locate 0,2
25570 print "参考文献 １/4"
25580 locate 0,4
25590 print "Title:九星姓名判断"
25600 locate 0,6
25610 print "Author:高嶋　 美伶"
25620 locate 0,8
25630 print "出版社:日本文芸者"
25640 locate 0,10
25650 print "ISBN:4-537-20073-1"
25660 locate 0,12
25670 print "定価:1,200+税"
25680 color rgb(0,0,0)
25690 locate 0,14
25700 print "エンターキーを押してください"
25710 while (bg <> 2 and key$<>chr$(13))
25720 key$=inkey$
25730 bg=strig(1)
25740 pause 2.50*100
25750 wend
25760 if (key$=chr$(13) or bg=2) then
25770 goto Document_info2:
25780 endif
25790 '参考文献２
25800 Document_info2:
25810 cls:bg=0:key$=""
25820 color rgb(255,255,255)
25830 locate 0,0
25840 print "◎参考文献"
25850 color rgb(255,0,255)
25860 locate 0,2
25870 print "参考文献 ２/4"
25880 locate 0,4
25890 print "Title:究極の姓名判断"
25900 locate 0,6
25910 print "Author:安斎　勝洋"
25920 locate 0,8
25930 print "出版社:説話社"
25940 locate 0,10
25950 print "ISBN:978-4-916217-61-5"
25960 locate 0,12
25970 print "定価:1,800円+税"
25980 color rgb(0,0,0)
25990 locate 0,14
26000 print"エンターキーを押してください"
26010 while (key$<>chr$(13) and bg <> 2)
26020 key$=inkey$
26030 bg=strig(1)
26040 pause 2.50*100
26050 wend
26060 if (key$=chr$(13) or bg=2) then goto Document_info3:
26070 '参考文献３
26080 Document_info3:
26090 cls:bg=0:key$=""
26100 color rgb(255,255,255)
26110 locate 0,0
26120 print"◎参考文献"
26130 color rgb(255,0,255)
26140 locate 0,2
26150 print "参考文献 3/4"
26160 locate 0,4
26170 print "Title:新明解現在漢和辞典"
26180 locate 0,6
26190 print "Author:影山輝國(編集主幹)他"
26200 locate 0,8
26210 print "出版社:三省堂"
26220 locate 0,10
26230 print "ISBN:978-4-385-13755-1"
26240 locate 0,12
26250 print "定価:2,800円 + 税"
26260 color rgb(0,0,0)
26270 locate 0,14
26280 print "エンターキーを押してください"
26290 while (key$<>chr$(13) and bg<>2)
26300 key$=inkey$
26310 bg=strig(1)
26320 pause 2.50*100
26330 wend
26340 if (key$=chr$(13) or bg=2) then goto Document_info4:
26350 '参考文献４　
26360 '描画領域　ここから
26370 Document_info4:
26380 cls 3:key$="":bg=0
26390 line (0,0)-(1080,60),rgb(0,0,255),bf
26400 line (0,0)-(1077,57),rgb(0,255,0),b
26410 line (0,60)-(1080,650),rgb(127,255,212),bf
26420 LINE (0,60)-(1077,647),rgb(0,0,255),b
26430 LINE (0,650)-(1080,830),rgb(0,255,0),bf
26440 line (0,650)-(1077,833),rgb(0,0,255),b
26450 '描画領域　ここまで
26460 color rgb(255,255,255)
26470 locate 0,0
26480 print "◎参考文献"
26490 COLOR rgb(255,0,255)
26500 locate 0,2
26510 print "参考文献 4/4"
26520 locate 0,4
26530 print "Title:姓名の暗号"
26540 locate 0,6
26550 print "Author:樹門　幸宰(じゅもん こうざい)"
26560 locate 0,8
26570 print "出版社:幻冬舎"
26580 locate 0,10
26590 print "定価:1400円 + 税"
26600 locate 0,12
26610 print "ISBN:4-344-00777-8"
26620 color rgb(0,0,0)
26630 locate 0,14
26640 print "参考文献トップに行く:エンターキー"
26650 locate 0,16
26660 print "スペース：トップメニューに行く"
26670 while (key$<>chr$(13) and bg<>2)
26680 key$=inkey$
26690 bg=strig(1)
26700 pause 2.50*100
26710 wend
26720 if (key$=chr$(13) or bg=2) then goto help:
26730 '安斎流姓名判断　メニュー
26740 'グラフィック領域　ここから
26750 Anzai_Top:
26760 cls 3:talk ""
26770 No=0:init"kb:4":y=0:bg=0:key$=""
26780 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26790 sp_on 0,1:sp_put 0,(10,100),0,0
26800 line (0,0)-(1080,60),rgb(0,0,255),bf
26810 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26820 line (0,60)-(1080,475),rgb(127,255,212),bf
26830 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26840 line (0,475)-(1080,650),rgb(0,255,0),bf
26850 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26860 'グラフィック描画領域　ここまで
26870 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
26880 color rgb(255,255,255)
26890 print "安斎流姓名判断　トップメニュー" + chr$(13)
26900 color rgb(255,0,255)
26910 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26920 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26930 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26940 print " :4.前の画面に戻る"+chr$(13)
26950 locate 0,10
26960 color rgb(0,0,0)
26970 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26980 Anzai_Top2:
26990 y=0:bg=0:key$=""
27000 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
27010 key$=inkey$
27020 y=stick(1)
27030 bg=strig(1)
27040 pause 2.50*100
27050 wend
27060 '******************************************************
27070 '1.下のキー　ここから
27080 '******************************************************
27090 if (y=1 or key$=chr$(30)) then
27100 select case No
27110 case 0:
27120 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27130 case 1:
27140 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27150 case 2:
27160 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27170 case 3:
27180 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27190 end select
27200 endif
27210 '******************************************************
27220 '1.下のキー　ここまで
27230 '******************************************************
27240 '******************************************************
27250 '2.上のキー　ここから
27260 '******************************************************
27270 if (y=-1 or key$=chr$(31)) then
27280 select case No
27290 case 0:
27300 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27310 case 1:
27320 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27330 case 2:
27340 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27350 case 3:
27360 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27370 end select
27380 endif
27390 '******************************************************
27400 '2.上のキー　ここまで
27410 '******************************************************
27420 '******************************************************
27430 '3.決定ボタン　ここから
27440 '******************************************************
27450 if (key$=chr$(13) or bg=2) then
27460 select case No
27470 case 0:
27480 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27490 case 1:
27500 sp_on 1,0:goto Anzai_Top_Screen:
27510 case 2:
27520 sp_on 2,0:goto Anzai_Kaimei_Check:
27530 case 3:
27540 sp_on 3,0:goto seimeihandan_top:
27550 end select
27560 endif
27570 '******************************************************
27580 '3.決定ボタン　ここまで
27590 '******************************************************
27600 '2.安斎流姓名判断　男女の相性占い　ここから
27610 'グラフィック描画領域 ここから
27620 cls 3
27630 '1行目
27640 line (0,0)-(1080,60),rgb(0,0,255),bf
27650 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27660 '2行目
27670 line (0,60)-(1080,160),rgb(127,255,212),bf
27680 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27690 '3行目
27700 line (0,160)-(1080,300),rgb(0,255,0),bf
27710 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27720 'グラフィック描画領域　男女の相性占い ここまで
27730 '1.名前の姓を入力  男性
27740 Anzai_Aishou_Top1:
27750 cls 3
27760 '1行目
27770 line (0,0)-(1080,60),rgb(0,0,255),bf
27780 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27790 '2行目
27800 line (0,60)-(1080,160),rgb(127,255,212),bf
27810 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27820 '3行目
27830 line (0,160)-(1080,300),rgb(0,255,0),bf
27840 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27850 color rgb(255,255,255)
27860 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27870 color rgb(255,0,255)
27880 print "男性の名前(姓)を入れてください"+chr$(13)
27890 color rgb(0,0,0)
27900 Input "男性の名前(姓):",name$
27910 '2.名前の名を入力  男性
27920 cls 3:talk ""
27930 '1行目
27940 line (0,0)-(1080,60),rgb(0,0,255),bf
27950 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27960 '2行目
27970 line (0,60)-(1080,160),rgb(127,255,212),bf
27980 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27990 '3行目
28000 line (0,160)-(1080,300),rgb(0,255,0),bf
28010 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
28020 color rgb(255,255,255)
28030 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28040 color rgb(255,0,255)
28050 print "男性の名前（名）をいれてください"+chr$(13)
28060 color rgb(0,0,0)
28070 Input "男性の名前(名):",name2$
28080 '3.名前(姓)入力 女性
28090 Anzai_Aishou_Top2:
28100 cls:init "kb:2":talk ""
28110 color rgb(255,255,255)
28120 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28130 color rgb(255,0,255)
28140 print "女性の名前(姓)を入れてください"+chr$(13)
28150 color rgb(0,0,0)
28160 Input"女性の名前:",name3$
28170 '4.名前（名)入力 女性
28180 cls:init "kb:2":talk ""
28190 color rgb(255,255,255)
28200 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28210 color rgb(255,0,255)
28220 print "女性の名前（名）を入れてください"+chr$(13)
28230 color rgb(0,0,0)
28240 Input "女性の名前(名):",name4$
28250 '男性　の地運 を求める
28260 '姓名の合計数
28270 '1.男性 名前の文字数を求める
28280 '地運を求める
28290 buf_male_name1 = len(name$)
28300 buf_male_name2 = len(name2$)
28310 buf_male_count = buf_male_name1 + buf_male_name2
28320 '2.女性 名前の文字数を求める
28330 buf_female_name1 = len(name3$)
28340 buf_female_name2 = len(name4$)
28350 buf_female_count = buf_female_name1 + buf_female_name2
28360 'goto Anzai_Aishou_Check:
28370 '1.男性の地運を求める
28380 select case buf_male_count
28390 case 2:
28400 '男性の地運を求める
28410 buf_chiunn=char_count(name2$)
28420 case 3:
28430 '姓が一文字 名が2文字
28440 if buf_male_name1=1 and buf_male_name2=2 then
28450 buf_Input_name$(0)=mid$(name2$,1,1)
28460 buf_Input_name$(1)=mid$(name2$,2,1)
28470 '地運を計算
28480 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28490 endif
28500 if buf_male_name1=2 and buf_male_name2=1 then
28510 buf_Input_name$(0)=Mid$(name2$,1,1)
28520 buf_chiunn=char_count(buf_Input_name$(0))
28530 endif
28540 case 4:
28550 '1.姓１，名３
28560 if bufmale_name1=1 and buf_male_name2=3 then
28570 buf_Input_name$(0)=Mid$(name2$,1,1)
28580 buf_Input_name$(1)=Mid$(name2$,2,1)
28590 buf_Input_name$(2)=Mid$(name2$,3,1)
28600 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28610 endif
28620 '2.姓２,名２
28630 if buf_male_name1=2 and buf_male_name2=2 then
28640 buf_Input_name$(0)=Mid$(name2$,1,1)
28650 buf_Input_name$(1)=Mid$(name2$,2,1)
28660 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28670 endif
28680 '3.姓３、名１
28690 if buf_male_name1=3 and buf_male_name2=1 then
28700 buf_Input_name$(0)=Mid$(name2$,1,1)
28710 '地運を求める
28720 buf_chiunn=char_count(buf_Input_name$(0))
28730 endif
28740 case 5:
28750 '1.姓２，名３
28760 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28770 buf_Input_name$(0)=Mid$(name2$,1,1)
28780 buf_Input_name$(1)=Mid$(name2$,2,1)
28790 buf_Input_name$(2)=Mid$(name2$,3,1)
28800 '地運を求める
28810 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28820 endif
28830 '2.姓３，名２
28840 if buf_male_name1=3 and buf_male_name2=2 then
28850 buf_Input_name$(0)=Mid$(name2$,1,1)
28860 buf_Input_name$(1)=Mid$(name2$,2,1)
28870 '地運を求める
28880 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28890 endif
28900 '3.姓４、名１
28910 buf_Input_name$(0)=Mid$(name2$,1,1)
28920 '地運を求める
28930 buf_chiunn = char_count(buf_Input_name$(0))
28940 case 6:
28950 '1.姓３，名３
28960 if buf_male_name1=3 and buf_male_name2=3 then
28970 buf_Input_name$(0)=Mid$(name2$,1,1)
28980 buf_Input_name$(1)=Mid$(name2$,2,1)
28990 buf_Input_name$(2)=Mid$(name2$,3,1)
29000 '地運を求める
29010 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
29020 endif
29030 '２.姓４，名２
29040 if buf_male_name1=4 and buf_male_name2=2 then
29050 buf_Input_name$(0)=Mid$(name2$,1,1)
29060 buf_Input_name$(1)=Mid$(name2$,2,1)
29070 '地運を求める
29080 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29090 endif
29100 case else:
29110 end select
29120 '2.女性　外運を求める
29130 select case buf_female_count
29140 '姓と名の合計数
29150 case 2:
29160 buf_Input_name2$(0)=Mid$(name3$,1,1)
29170 buf_Input_name2$(1)=Mid$(name4$,1,1)
29180 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29190 case 3:
29200 if buf_female_name1=2 and buf_female_name2=1 then
29210 buf_Input_name2$(0)=Mid$(name3$,1,1)
29220 buf_Input_name2$(1)=Mid$(name3$,2,1)
29230 buf_Input_name2$(2)=Mid$(name4$,1,1)
29240 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29250 endif
29260 if buf_female_name1=1 and buf_female_name2=2 then
29270 buf_Input_name2$(0)=Mid$(name3$,1,1)
29280 buf_Input_name2$(1)=Mid$(name4$,1,1)
29290 buf_Input_name2$(2)=Mid$(name4$,2,1)
29300 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29310 endif
29320 case 4:
29330 '姓１、名３
29340 if buf_female_name1=1 and buf_female_name2=3 then
29350 buf_Input_name2$(0)=Mid$(name3$,1,1)
29360 buf_Input_name2$(1)=Mid$(name4$,1,1)
29370 buf_Input_name2$(2)=Mid$(name4$,2,1)
29380 buf_Input_name2$(3)=Mid$(name4$,3,1)
29390 '外運を求める
29400 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29410 endif
29420 '姓２,名２
29430 if buf_female_name1=2 and buf_female_name2=2 then
29440 buf_Input_name2$(0)=Mid$(name3$,1,1)
29450 buf_Input_name2$(1)=Mid$(name3$,2,1)
29460 buf_Input_name2$(2)=Mid$(name4$,1,1)
29470 buf_Input_name2$(3)=Mid$(name4$,2,1)
29480 '外運を求める
29490 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29500 endif
29510 '姓３，名１
29520 if buf_female_name1=3 and buf_female_name2=1 then
29530 buf_Input_name2$(0)=Mid$(name3$,1,1)
29540 buf_Input_name2$(1)=Mid$(name3$,2,1)
29550 buf_Input_name2$(2)=Mid$(name3$,3,1)
29560 buf_Input_name2$(3)=Mid$(name4$,1,1)
29570 '外運を求める
29580 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29590 endif
29600 case 5:
29610 '姓 3,名2
29620 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29630 buf_Input_name2$(0)=Mid$(name3$,1,1)
29640 buf_Input_name2$(1)=Mid$(name3$,2,1)
29650 buf_Input_name2$(2)=Mid$(name3$,3,1)
29660 buf_Input_name2$(3)=Mid$(name4$,1,1)
29670 buf_Input_name2$(4)=Mid$(name4$,2,1)
29680 '外運を求める
29690 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29700 endif
29710 '姓４、名１
29720 if buf_female_name1=4 and buf_female_name2=1 then
29730 buf_Input_name2$(0)=Mid$(name3$,1,1)
29740 buf_Input_name2$(1)=Mid$(name3$,2,1)
29750 buf_Input_name2$(2)=Mid$(name3$,3,1)
29760 buf_Input_name2$(3)=Mid$(name3$,4,1)
29770 buf_Input_name2$(4)=Mid$(name4$,1,1)
29780 '外運を求める
29790 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29800 endif
29810 '姓２、名３
29820 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29830 buf_Input_name2$(0)=Mid$(name3$,1,1)
29840 buf_Input_name2$(1)=Mid$(name3$,2,1)
29850 buf_Input_name2$(2)=Mid$(name4$,1,1)
29860 buf_Input_name2$(3)=Mid$(name4$,2,1)
29870 buf_Input_name2$(4)=Mid$(name4$,3,1)
29880 '外運を求める
29890 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29900 endif
29910 case 6:
29920 '1.姓３，名３
29930 if buf_female_name1=3 and buf_female_name2=3 then
29940 buf_Input_name2$(0)=Mid$(name3$,1,1)
29950 buf_Input_name2$(1)=Mid$(name3$,2,1)
29960 buf_Input_name2$(2)=Mid$(name3$,3,1)
29970 buf_Input_name2$(3)=Mid$(name4$,1,1)
29980 buf_Input_name2$(4)=Mid$(name4$,2,1)
29990 buf_Input_name2$(5)=Mid$(name4$,3,1)
30000 '外運を求める
30010 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
30020 endif
30030 '2.姓４，名２
30040 if buf_female_name1=4 and buf_female_name2=2 then
30050 buf_Input_name2$(0)=Mid$(name3$,1,1)
30060 buf_Input_name2$(1)=Mid$(name3$,2,1)
30070 buf_Input_name2$(2)=Mid$(name3$,3,1)
30080 buf_Input_name2$(3)=Mid$(name3$,4,1)
30090 buf_Input_name2$(4)=Mid$(name4$,1,1)
30100 buf_Input_name2$(5)=Mid$(name4$,2,1)
30110 '外運を求める
30120 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
30130 endif
30140 case 7:
30150 '1姓４，名３
30160 '外運を求める
30170 end select
30180 func buf_number(a)
30190 if a < 10 then
30200 buf_tansu = a
30210 endif
30220 if a > 9 and a < 20 then
30230 buf_tansu = a - 10
30240 endif
30250 if a > 19 and a < 30 then
30260 buf_tansu = a - 20
30270 endif
30280 buffer = buf_tansu
30290 endfunc buffer
30300 check$="No Data"
30310 func Aisyou_type$(man,woman)
30320 Result$="No data"
30330 'check$="No data"
30340 '1.理解し合える最良のカップル
30350 '1のFor文
30360 for i=0 to 19
30370 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30380 Result$ = "1.理解し合える最良のカップル"
30390 check$="○"
30400 ResultNo = 0
30410 endif
30420 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30430 Result$="2.互いに自然体でつきあえるカップル"
30440 ResultNo=1
30450 check$="○"
30460 endif
30470 '3.男性にとって居心地の良いカップル
30480 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30490 Result$="3.男性にとって居心地の良いカップル"
30500 ResultNo=2
30510 check$="△"
30520 endif
30530 '4.女性にとって居心地の良いカップル
30540 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30550 Result$ = "4.女性にとって居心地の良いカップル"
30560 ResultNo=3
30570 check$="△"
30580 endif
30590 '5.恋愛経験を重ねた後なら愛を育める
30600 if buf_short_of_experience1(i) = man AND buf_short_of_experience2(i) = woman then
30610 Result$="5.恋愛経験を重ねた後なら愛を育める"
30620 ResultNo=4
30630 check$="×"
30640 endif
30650 '6
30660 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30670 Result$="6.結婚への発展が困難なカップル"
30680 check$="×"
30690 endif
30700 '7
30710 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30720 Result$="7.愛し方にずれが出てくる二人"
30730 check$="×"
30740 endif
30750 '8
30760 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30770 Result$="8.互いに価値観が噛み合わない相性"
30780 check$="×"
30790 endif
30800 next i
30810 endfunc  Result$
30820 Anzai_Aishou_Check:
30830 cls 3:init"kb:2":bg=0
30840 buf_t_chiunn = buf_number(buf_chiunn)
30850 buf_t_gaiunn=buf_number(buf_gaiunn)
30860 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30870 'グラフィック描画領域　ここから
30880 'Title欄
30890 line(0,0)-(1080,60),rgb(0,0,255),bf
30900 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
30910 '結果表示欄
30920 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
30930 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
30940 'ボタン選択欄
30950 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
30960 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
30970 'グラフィック描画領域　ここまで
30980 'ここから削除　↓
30990 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
31000 'ここまで削除　↑
31010 color rgb(255,255,255):font 40:init"kb:4"
31020 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31030 color rgb(255,0,255)
31040 print "男性の名前:";name$+name2$;chr$(13)
31050 print "地運の単数";buf_t_chiunn;chr$(13)
31060 print "女性の名前:";name3$+name4$;chr$(13)
31070 print "外運の単数";buf_t_gaiunn;chr$(13)
31080 print"二人の相性:";bufferAisyou$;chr$(13)
31090 print"相性判定:";check$;chr$(13)
31100 color rgb(0,0,0)
31110 print "エンターキー:トップ" + chr$(13)
31120 while (bg <> 2)
31130 bg=strig(1)
31140 pause 2.50*100
31150 wend
31160 if (bg=2) then goto Main_Screen1:
31170 '改名チェック
31180 'グラフィック描画領域 ここから
31190 Anzai_Kaimei_Check:
31200 cls 3:init "kb:2":talk ""
31210 line (0,0)-(1080,60),rgb(0,0,255),bf
31220 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
31230 line (0,60)-(1080,370+50),rgb(127,255,212),bf
31240 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
31250 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
31260 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
31270 'グラフィック描画領域 ここまで
31280 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31290 color rgb(255,255,255)
31300 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31310 color rgb(255,0,255)
31320 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31330 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31340 print "10文字までで入れてください"
31350 locate 0,9
31360 color rgb(0,0,0)
31370 Input "名前:",name$
31380 '計算領域　ここから
31390 '名前から総運を計算
31400 '1.名前の文字数を出す
31410 n=len(name$)
31420 if n > 10 or n=0 then
31430 '文字数が10個までという表示
31440 'トーストで表示
31450 if n > 10 then
31460 ui_msg "文字は10個までです"
31470 else
31480 ui_msg "文字が空っぽです"
31490 endif
31500 goto Anzai_Aishou_Check:
31510 endif
31520 'それ以外
31530 '総数を出す処理を出す
31540 '画面消去　データー初期化
31550 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31560 'グラフィック描画領域 ここから
31570 line(0,0)-(1080,60),rgb(0,0,255),bf
31580 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31590 line(0,60)-(1080,300),rgb(127,255,212),bf
31600 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
31610 line(0,300)-(1080,440),rgb(0,255,0),bf
31620 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
31630 'グラフィック描画領域 ここまで
31640 color rgb(255,255,255)
31650 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31660 for i=0 to len(name$)-1
31670 buf_Input_name$(i)=Mid$(name$,i+1,1)
31680 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31690 next i
31700 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31710 color rgb(255,0,255)
31720 print "名前:";name$
31730 print "この名前の総数:";bufer_total
31740 print "この名前の吉凶:";buf_Kikkyo$;"です"
31750 color rgb(255,0,255)
31760 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31770 print bufer_total$+chr$(13)
31780 color rgb(0,0,0)
31790 locate 0,7
31800 print"エンターキーを押してください"
31810 while (key$ <> chr$(13) and bg <> 2)
31820 key$=inkey$
31830 bg=strig(1)
31840 pause 2.50*100
31850 wend
31860 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
31870 '改名チェック関数
31880 func Kaimei_check$(r$)
31890 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
31900 '改名の必要なし
31910 talk"この名前は改名の必要がございません。"
31920 print"この名前は、改名の必要はありません"+chr$(13)
31930 '改名の必要ナシの場合
31940 K=0
31950 buffer_K=K
31960 else
31970 '改名の必要あり
31980 Kaimei_check:
31990 talk"この名前は、改名の必要があります"
32000 print"この名前は、改名の必要があります"+chr$(13)
32010 color rgb(0,0,0)
32020 print"改名しますか？"
32030 K=1
32040 buffer_K=K
32050 '◎表示パターン
32060 'パターン１
32070 endif
32080 endfunc result$
32090 'ui_msg="1件追加しました,残り9件追加できます"
32100 'ファイルの存在確認 設定ファイル:mydata.dat
32110 cls
32120 '設定ファイルの確認
32130 if dir$("config/Parsonal_data/mydata.dat")="" then
32140 '1.ファイルがない時
32150 goto Kaimei_check:
32160 else
32170 'ファイルがある時
32180 goto sex_type_female:
32190 endif
32200 '1-1.ファイルがない時の処理
32210 '1-1.自分の姓名判断を入力
32220 'グラフィック描画領域 ここから
32230 cls 3
32240 '1行目
32250 line(0,0)-(1080,60),rgb(0,0,250),bf
32260 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
32270 '2行目
32280 line(0,60)-(1080,80),rgb(127,255,212),bf
32290 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
32300 '3行目
32310 line(0,80)-(1080,120),rgb(0,255,0),bf
32320 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
32330 'グラフィック描画領域 ここまで
32340 '1.名前の姓の入力
32350 '1行目 Title
32360 color rgb(255,255,255)
32370 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32380 '2行目 名前の姓を入力
32390 color rgb(255,0,255)
32400 print "自分の名前の姓を入れてください"+chr$(13)
32410 color rgb(0,0,0)
32420 'buf_name1$:自分の名前の姓
32430 Input"名前の姓:",buf_name1$
32440 '2.名前の名の入力
32450 '画面消去
32460 Anzai_myProfile2:
32470 cls
32480 '1行目 Title
32490 color rgb(255,255,255)
32500 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32510 '2行目 名前の名の入力
32520 color rgb(255,0,255)
32530 print "自分の名前の名を入れてください"+chr$(13)
32540 color rgb(0,0,0)
32550 'buf_name2$:自分の名前の名
32560 input "名前の名:",buf_name2$
32570 '3.性別入力
32580 cls
32590 '1行目 Title
32600 color rgb(255,255,255)
32610 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32620 '2行目 性別入力
32630 color rgb(255,0,255)
32640 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
32650 sex_type$(0)="女性"
32660 sex_type$(1)="男性"
32670 type=ui_select("sex_type$","性別を選んでください")
32680 '3行目
32690 '性別変数 sex_type$
32700 if type = 1 then
32710 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 33470
32720 else
32730 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
32740 endif
32750 if sex_type$="男性" then
32760 name$=buf_name1$
32770 name2$=buf_name2$
32780 s=1
32790 goto Anzai_Aishou_Top1:
32800 endif
32810 sex_type_female:
32820 If sex_type$="女性" then
32830 name3$=buf_name1$
32840 name4$=buf_name2$
32850 s=2
32860 goto Anzai_Aishou_Top2:
32870 endif
32880 '登録プロフィール確認画面
32890 Entry_Profile:
32900 cls 3:talk ""
32910 'グラフィック描画領域　ここから
32920 '1行目
32930 line(0,0)-(1200,60),rgb(0,0,255),bf
32940 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
32950 '2行目
32960 line(0,60)-(1200,360),rgb(127,255,212),bf
32970 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
32980 '3行目
32990 line(0,100)-(1200,420),rgb(0,255,0),bf
33000 pen 5:line(0,97)-(1197,417)
33010 if s2=2 then goto Entry_Profile:
33020 'グラフィック描画領域　ここまで
33030 '1行目 Title
33040 color rgb(255,255,255)
33050 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33060 color rgb(255,0,255)
33070 print"名前:";buf_name1$+buf_name2$;chr$(13)
33080 PRINT"性別:";sex_type$;chr$(13)
33090 if sex_type$="女性" then
33100 print"外運:";buf_gaiunn;chr$(13)
33110 buffer$="外運:"+str$(buf_gaiunn)
33120 endif
33130 if sex_type$="男性" then
33140 print"地運:";buf_chiunn;chr$(13)
33150 buffer$="地運:"+str$(buf_chiunn)
33160 endif
33170 color rgb(0,0,0)
33180 input"(登録する:Yes/登録しない:No):",key$
33190 if key$="Yes" or key$="yes" then
33200 open "config/Parsonal_data/mydata.dat" for output as #1
33210 print #1,"名前:";buf_name1$+buf_name2$
33220 print #1,"性別:";sex_type$
33230 print #1,buffer$
33240 close #1
33250 ui_msg"データーを保存しました"
33260 goto Main_Screen1:
33270 endif
33280 '２．設定ファイルが存在する場合
33290 'ファイル読み込み 自分のデーターを表示
33300 cls
33310 open "Config/Parsonal_data/mydata.dat" for input as #2
33320 line input #2,a$
33330 line input #2,b$
33340 line input #2,c$
33350 close #2
33360 buffername$=a$
33370 buffername2$=b$
33380 buffername3$=c$
33390 bufff$=Mid$(buffername$,1,3)
33400 buff2$=Mid$(buffername2$,1,3)
33410 buff3$=Mid$(buffername3$,1,3)
33420 n=len(a$)
33430 sextype$=Mid$(buffername2$,4,2)
33440 if sextype$="男性" then
33450 '男性:s2
33460 s2=1
33470 '女性のデーター入力
33480 goto Anzai_Top:
33490 endif
33500 if sextype$="女性" then
33510 s2=2
33520 '男性のデーター入力
33530 goto Anzai_Top:
33540 endif
33550 '女性のデーター結果表示
33560 '1.プロフィール性別男性の場合 ここから
33570 Result_Anzai_Aisyou:
33580 cls:talk ""
33590 color rgb(255,255,255)
33600 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
33610 name_length = len(bufername$)
33620 myname$ = Mid$(buffername$,4,4)
33630 chiunn = val(Mid$(buffername3$,4,2))
33640 tansuu1 = buf_number(chiunn)
33650 bufname$ = name3$ + name4$
33660 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33670 color rgb(255,0,255)
33680 print "自分の名前(男性):";myname$;chr$(13)
33690 print "地運の端数:";tansuu1;chr$(13)
33700 print "相手の名前(女性):";bufname$;chr$(13)
33710 print "外運の端数:";buf_t_gaiunn;chr$(13)
33720 print "二人の相性:";bufferAisyou$;chr$(13)
33730 talk "二人の相性は" + bufferAisyou$
33740 color rgb(0,0,0)
33750 print"エンターキーを押してください"
33760 key$=Input$(1)
33770 'トップ画面に行く
33780 if key$ = chr$(13) then goto Main_Screen1:
33790 '1.プロフィール性別男性の場合　ここまで
33800 '2.プロフィール性別女性の場合　ここから
33810 cls 3
33820 '描画領域　ここから
33830 line (0,0)-(1080,60),rgb(0,0,255),bf
33840 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
33850 line (0,60)-(1080,460),rgb(127,255,212),bf
33860 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
33870 LINE (0,460)-(1080,520),rgb(0,255,0),bf
33880 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
33890 '描画領域 ここまで
33900 color rgb(255,255,255)
33910 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
33920 '計算領域　ここから
33930 myname$ = Mid$(buffername$,4,4)
33940 gaiunn = val(Mid$(buffername3$,4,2))
33950 buf_t_gaiunn = buf_number(buf_gaiunn)
33960 buf_t_chiunn = buf_number(buf_chiunn)
33970 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
33980 bufname$ = name$ + name2$
33990 '計算領域 ここまで
34000 color rgb(255,0,255)
34010 print "自分の名前(女性):";myname$;chr$(13)
34020 print "外運の端数";buf_t_gaiunn;chr$(13)
34030 print "相手の名前(男性):";bufname$;chr$(13)
34040 print "地運の端数:";buf_t_chiunn;chr$(13)
34050 print "二人の相性:";bufferAisyou$;chr$(13)
34060 color rgb(0,0,0)
34070 print "エンターキーを押してください"
34080 key$ = Input$(1)
34090 if key$=chr$(13) then goto Main_Screen1:
34100 '2.プロフィール性別女性の場合　ここまで
34110 '取扱説明書
34120 '相性占い　トップメニュー ここから
34130 'グラフィック ここから
34140 Anzai_Aishou_Top_Menu:
34150 cls 3:talk ""
34160 '1行目
34170 line(0,0)-(1080,60),rgb(0,0,255),bf
34180 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34190 '2行目
34200 line(0,60)-(1080,380),rgb(127,255,212),bf
34210 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34220 '3行目
34230 line(0,360)-(1080,540),rgb(0,255,0),bf
34240 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34250 'グラフィック　ここまで
34260 color rgb(255,255,255)
34270 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34280 color rgb(255,0,255)
34290 print"1.男女の相性"+chr$(13)
34300 print"2.前の画面に戻る"+chr$(13)
34310 print"3.トップ画面に戻る"+chr$(13)
34320 color rgb(0,0,0)
34330 print"番号を選んでください:"+chr$(13)
34340 Input"番号:",key
34350 if key = 1 then goto Anzai_Aishou_Top1:
34360 if key = 2 then goto Anzai_Top:
34370 if key = 3 then goto Main_Screen1:
34380 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34390 'グラフィック領域　ここから
34400 Life_Tenki:
34410 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34420 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34430 line(0,60)-(1150,180),rgb(127,255,212),bf
34440 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34450 line(0,120)-(1150,200),rgb(0,255,0),bf
34460 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34470 'グラフィック領域　ここまで
34480 '誕生日入力　生まれた年
34490 color rgb(255,255,255)
34500 print"誕生日入力　生まれた年" + chr$(13)
34510 COLOR rgb(255,0,255)
34520 print"生まれた年を入れてください" + chr$(13)
34530 color rgb(0,0,0)
34540 Input"生まれた年:",year
34550 '誕生日入力 生まれた月
34560 cls
34570 color rgb(255,255,255)
34580 print"誕生日入力 生まれた月" + chr$(13)
34590 color rgb(255,0,255)
34600 print"生まれた月を入力してください" + chr$(13)
34610 color rgb(0,0,0)
34620 Input"生まれた月:",month
34630 '誕生日入力 生まれた日を入力
34640 cls
34650 color rgb(255,255,255)
34660 print"誕生日入力 生まれた日入力" + chr$(13)
34670 color rgb(255,0,255)
34680 print"生まれた日を入力してください" + chr$(13)
34690 color rgb(0,0,0)
34700 Input"生まれた日:",day
34710 '人生の転機を見る
34720 'グラフィック領域　ここから
34730 cls 3:talk ""
34740 line(0,0)-(1150,60),rgb(0,0,255),bf
34750 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34760 line(0,60)-(1150,470),rgb(127,255,212),bf
34770 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34780 line(0,470)-(1150,520),rgb(0,255,0),bf
34790 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
34800 'グラフィック描画領域  ここまで
34810 cls
34820 buffername$=bufname$ + bufname2$
34830 color rgb(255,255,255)
34840 print buffername$;"さんの人生の転機を見る1"+chr$(13)
34850 color rgb(255,0,255)
34860 buf_total2=buf_total-(fix(buf_total/10)*10)
34870 tenki1_year=year+buf_total2
34880 tenki2_year=year+buf_total2+5
34890 tenki3_year=year+buf_total2+5+5
34900 tenki4_year=year+buf_total2+5+5+5
34910 tenki1=buf_total2
34920 tenki2=buf_total2+5
34930 tenki3=buf_total2+5+5
34940 tenki4=buf_total2+5+5+5
34950 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
34960 print tenki1_year;"年";tenki1;"歳"+chr$(13)
34970 print tenki2_year;"年";tenki2;"歳"+chr$(13)
34980 print tenki3_year;"年";tenki3;"歳"+chr$(13)
34990 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35000 color rgb(0,0,0)
35010 print"エンターキーを押してください"
35020 key$=Input$(1)
35030 if key$=chr$(13) then goto Life_Tenki:
35040 '2ページ目
35050 cls
35060 color rgb(255,255,255)
35070 print buffername$;"さんの人生の転機2"+chr$(13)
35080 color rgb(255,0,255)
35090 tenki5_year = tenki4_year + 5
35100 tenki6_year = tenki4_year + 5 + 5
35110 tenki7_year = tenki4_year + 5 + 5 + 5
35120 tenki8_year = tenki4_year + 5 + 5 + 5+5
35130 tenki5 = tenki4 + 5
35140 tenki6 = tenki4 + 5 + 5
35150 tenki7 = tenki4 + 5 + 5 + 5
35160 tenki8 = tenki4 + 5 + 5 + 5 + 5
35170 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35180 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35190 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35200 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35210 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35220 color rgb(0,0,0)
35230 print"エンターキーを押してください",key$
35240 key$=Input$(1)
35250 if key$ = chr$(13) then goto 35900
35260 '3ページ目
35270 cls
35280 color rgb(255,255,255)
35290 print buffername$;"さんの人生の転機3"+chr$(13)
35300 '計算部分
35310 tenki_year9=tenki8_year + 5
35320 tenki_year10=tenki8_year + 5 + 5
35330 tenki_year11=tenki8_year+5+5+5
35340 tenki_year12=tenki8_year+5+5+5+5
35350 tenki9=tenki8+5
35360 tenki10=tenki8+5+5
35370 tenki11=tenki8+5+5+5
35380 tenki12=tenki8+5+5+5+5
35390 color rgb(255,0,255)
35400 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35410 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35420 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35430 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35440 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35450 color rgb(0,0,0)
35460 print"エンターキーを押してください"
35470 key$=Input$(1)
35480 if key$=chr$(13) then goto 36130
35490 'グラフィック描画領域 ここから
35500 cls 3
35510 line(0,0)-(1150,60),rgb(0,0,255),bf
35520 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35530 line(0,60)-(1150,470),rgb(127,255,212),bf
35540 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35550 line(0,470)-(1150,850),rgb(0,255,0),bf
35560 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35570 'グラフィック描画領域 ここまで
35580 '4回目
35590 cls
35600 color rgb(255,255,255)
35610 print buffername$;"さんの人生の転機４"+chr$(13)
35620 color rgb(255,0,255)
35630 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
35640 '計算部分
35650 tenki_year13 = tenki_year12 + 5
35660 tenki_year14 = tenki_year12 + 5 + 5
35670 tenki_year15 = tenki_year12 + 5 + 5 + 5
35680 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35690 tenki13 = tenki12 + 5
35700 tenki14 = tenki12 + 5 + 5
35710 tenki15 = tenki12 + 5 + 5 + 5
35720 tenki16 = tenki12 + 5 + 5 + 5 + 5
35730 color rgb(255,0,255)
35740 print tenki_year13;"年";tenki13;"歳"+chr$(13)
35750 print tenki_year14;"年";tenki14;"歳"+chr$(13)
35760 print tenki_year15;"年";tenki15;"歳"+chr$(13)
35770 print tenki_year16;"年";tenki16;"歳"+chr$(13)
35780 color rgb(0,0,0)
35790 print"コマンドを入れてください"+chr$(13)
35800 print"q+エンターキー:トップ画面"+chr$(13)
35810 Print"エンターキー:次へ行く"+chr$(13)
35820 print"コマンド:"
35830 key$=Input$(1)
35840 if key$=chr$(13) then goto 36500
35850 IF key$="q" then goto 7850
35860 '
35870 cls
35880 color rgb(255,255,255)
35890 print buffername$;"さんの人生の転機5"+chr$(13)
35900 color rgb(255,0,255)
35910 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35920 tenki_year17=tenki_year16+5
35930 tenki_year18=tenki_year16+5+5
35940 tenki_year19=tenki_year16+5+5+5
35950 tenki_year20=tenki_year16+5+5+5+5
35960 tenki17=tenki16+5
35970 tenki18=tenki16+5+5
35980 tenki19=tenki16+5+5+5
35990 tenki20=tenki16+5+5+5+5
36000 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36010 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36020 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36030 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36040 color rgb(0,0,0)
36050 print"コマンドを入れてください"+chr$(13)
36060 print"トップに戻る:q+エンターキー"+chr$(13)
36070 print"最初から:エンターキー"+chr$(13)
36080 print"コマンド:"
36090 key$=Input$(1)
36100 if key$=chr$(13) then goto 35360
36110 if key$="q" then goto Main_Screen1:
36120 '改名チェック 改名候補を入力
36130 'グラフィック　領域　ここから
36140 '左側 部分
36150 cls 3:talk ""
36160 line(0,0)-(1100,60),rgb(0,0,255),bf
36170 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36180 line(0,60)-(1100,380),rgb(127,255,212),bf
36190 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36200 line(0,380)-(790,470),rgb(0,255,0),bf
36210 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36220 '中央の縦の線 ここから
36230 'line(1100,0)-(1112,370),rgb(0,0,0),b
36240 '中央の縦の線 ここまで
36250 '右側 部分
36260 line(1103,0)-(1700,60),rgb(0,0,255),bf
36270 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36280 'グラフィック 領域　ここまで
36290 '吉凶判定
36300 if buffer_K=0 then
36310 buffer_check$="○"
36320 else
36330 buffer_check$="☓"
36340 endif
36350 'Title 左側の文字
36360 'rgb(255,255,255):白
36370 color rgb(255,255,255)
36380 locate 1,0
36390 print"安斎流姓名判断 改名チェッカー"
36400 'Title 右側の文字
36410 locate size(2)-16,0
36420 print"改名候補リスト(3件まで)"
36430 '候補リストの名前部分 (右側)
36440 '1行目
36450 'locate 22,2
36460 locate size(2)-18,2
36470 color rgb(0,0,0)
36480 print "番号"
36490 'locate 26,2
36500 locate size(2)-14,2
36510 print"名前"
36520 'locate 32,2
36530 locate size(2)-8,2
36540 print"吉凶"
36550 'locate 36,2
36560 locate size(2)-4,2
36570 print"判定"
36580 '2行目
36590 select case kaimei_count
36600 case 0:
36610 'データー1件 の時
36620 kaimei_count = kaimei_count + 1
36630 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
36640 buffer_Kaimei$(0,1,0,0)=name$
36650 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36660 buffer_Kaimei$(0,0,0,1)=buffer_check$
36670 'cls
36680 color rgb(255,0,255)
36690 'locate 23,3
36700 locate size(2)-17,3
36710 print buffer_Kaimei$(1,0,0,0)
36720 'locate 25,3
36730 locate size(2)-15,3
36740 print buffer_Kaimei$(0,1,0,0)
36750 'locate 32,3
36760 locate size(2)-8,3
36770 print buffer_Kaimei$(0,0,1,0)
36780 locate size(2)-3,3
36790 print buffer_Kaimei$(0,0,0,1)
36800 case 1:
36810 'データー2件の時
36820 color rgb(255,0,255)
36830 kaimei_count = kaimei_count + 1
36840 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
36850 buffer_Kaimei$(0,2,0,0)=name$
36860 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
36870 buffer_Kaimei$(0,0,0,2)=buffer_check$
36880 'cls
36890 '1行目
36900 'locate 23,3
36910 locate size(2)-17,3
36920 print buffer_Kaimei$(1,0,0,0)
36930 'locate 25,3
36940 locate size(2)-15,3
36950 print buffer_Kaimei$(0,1,0,0)
36960 'locate 32,3
36970 locate size(2)-8,3
36980 print buffer_Kaimei$(0,0,1,0)
36990 'locate 37,3
37000 locate size(2)-3,3
37010 print buffer_Kaimei$(0,0,0,1)
37020 '2行目
37030 'locate 23,4
37040 locate size(2)-17,4
37050 print buffer_Kaimei$(2,0,0,0)
37060 'locate 25,4
37070 locate size(2)-15,4
37080 print buffer_Kaimei$(0,2,0,0)
37090 'locate 32,4
37100 locate size(2)-8,4
37110 print buffer_Kaimei$(0,0,2,0)
37120 'locate 37,4
37130 locate size(2)-3,4
37140 print buffer_Kaimei$(0,0,0,2)
37150 case 2:
37160 'データー3件の時
37170 '1
37180 color rgb(255,0,255)
37190 kaimei_count=kaimei_count+1
37200 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37210 buffer_Kaimei$(0,3,0,0)=name$
37220 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37230 buffer_Kaimei$(0,0,0,3)=buffer_check$
37240 '2  1行目
37250 'locate 23,3
37260 locate size(2)-17,3
37270 print buffer_Kaimei$(1,0,0,0)
37280 'locate 25,3
37290 locate size(2)-15,3
37300 print buffer_Kaimei$(0,1,0,0)
37310 'locate 32,3
37320 locate size(2)-8,3
37330 print buffer_Kaimei$(0,0,1,0)
37340 'locate 37,3
37350 locate size(2)-3,3
37360 print buffer_Kaimei$(0,0,0,1)
37370 '3  2行目
37380 'locate 23,4
37390 locate size(2)-17,4
37400 print buffer_Kaimei$(2,0,0,0)
37410 'locate 25,4
37420 locate size(2)-15,4
37430 print buffer_Kaimei$(0,2,0,0)
37440 'locate 32,4
37450 locate size(2)-8,4
37460 print buffer_Kaimei$(0,0,2,0)
37470 'locate 37,4
37480 locate size(2)-3,4
37490 print buffer_Kaimei$(0,0,0,2)
37500 '4  3行目
37510 'locate 23,5
37520 locate size(2)-17,5
37530 print buffer_Kaimei$(3,0,0,0)
37540 'locate 25,5
37550 locate size(2)-15,5
37560 print  buffer_Kaimei$(0,3,0,0)
37570 'locate 32,5
37580 locate size(2)-8,5
37590 print buffer_Kaimei$(0,0,3,0)
37600 'locate 37,5
37610 locate size(2)-3,5
37620 print buffer_Kaimei$(0,0,0,3)
37630 case 3:
37640 'データー4件の時
37650 '1
37660 '2
37670 '3
37680 '4
37690 '5
37700 end select
37710 '説明部分　左側
37720 locate 0,2
37730 color rgb(255,0,255)
37740 print"思いついた候補の名前"
37750 locate 0,4
37760 print"(ニックネーム　or 会社名)を"
37770 locate 0,6
37780 print"10文字以内で入力してください"
37790 color rgb(0,0,0)
37800 locate 0,8
37810 if kaimei_count = 1 or kaimei_count = 2 then
37820 Input"名前:",kouho_name$
37830 name$=kouho_name$
37840 n=len(name$)
37850 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 36780
37860 'else
37870 if n =< 10 then goto 31760
37880 endif
37890 if kaimei_count = 3 then
37900 Input"エンターキーを押してください",key$
37910 if key$ = "" then
37920 'データーを初期化して、トップ画面に行く
37930 '1.データーを初期化
37940 kaimei_count = 0
37950 for i=1 to 3
37960 buffer_Kaimei$(i,0,0,0) = ""
37970 buffer_Kaimei$(0,i,0,0) = ""
37980 buffer_Kaimei$(0,0,i,0) = ""
37990 buffer_Kaimei$(0,0,0,i) = ""
38000 next i
38010 '2.トップ画面に行く
38020 goto Main_Screen1:
38030 endif
38040 endif
38050 '霊遺伝姓名学 ここから
38060 'グラフィック領域　ここから
38070 '性別入力
38080 Reiden_Top_Input_Sextype:
38090 cls 3:talk ""
38100 No = 1:y = 0:key$ = "":bg = 0:init "kb:4"
38110 sp_on 1,1:sp_put 1,(10,200),1,0
38120 'Line1
38130 line (0,0)-(1080,60),rgb(0,0,255),bf
38140 line (0,0)-(1077,57),rgb(0,255,0),b
38150 'Line 2
38160 line (0,63)-(1080,537),rgb(127,255,212),bf
38170 line (0,60)-(1077,540),rgb(0,0,0),b
38180 'Line 3
38190 line (0,540)-(1080,630),rgb(0,255,0),bf
38200 line (0,543)-(1077,633),rgb(0,0,255),b
38210 'グラフィック領域　ここまで
38220 '音声表示
38230 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38240 '性別変数:sex_type=0
38250 '文字色： 白
38260 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38270 '文字色：赤
38280 color rgb(255,0,255)
38290 print"占う人の性別の番号を入れてください" + chr$(13)
38300 print" :1.女 性" + chr$(13)
38310 print" :2.男 性" + chr$(13)
38320 print" :3.前の画面に戻る" + chr$(13)
38330 locate 0,12
38340 color rgb(0,0,0)
38350 print "1.女性を選択しました"
38360 Reiden_Top_Input_Sextype2:
38370 y = 0:key$ = "":bg = 0
38380 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38390 key$=inkey$
38400 y=stick(1)
38410 bg=strig(1)
38420 pause 2.50*100
38430 wend
38440 if (key$=chr$(31) or y=1) then
38450 select case No
38460 case 1:
38470 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38480 case 2:
38490 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38500 case 3:
38510 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38520 end select
38530 endif
38540 if (key$ = chr$(30) or y = -1) then
38550 select case No
38560 case 1:
38570 No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38580 case 2:
38590 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
38600 case 3:
38610 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38620 end select
38630 endif
38640 if (bg=2 or key$=chr$(13)) then
38650 select case No
38660 case 1:
38670 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38680 case 2:
38690 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38700 case 3:
38710 sp_on 3,0:goto Main_Screen1:
38720 end select
38730 endif
38740 '描画領域　ここから
38750 ReiIden_Input_male:
38760 cls 3:init"kb:2":talk ""
38770 'Line 1 Title
38780 line (0,0)-(850,60),rgb(0,0,255),bf
38790 line (0,0)-(850,57),rgb(0,255,0),b
38800 'Line2 Input name
38810 line (0,60)-(850,300),rgb(0,255,0),bf
38820 line (0,60)-(850,303),rgb(0,0,255),b
38830 '描画領域 ここまで
38840 '文字色：白
38850 color rgb(255,255,255)
38860 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
38870 '文字色：黒
38880 color rgb(0,0,0)
38890 print "名前の姓の部分を入れてください" + chr$(13)
38900 Input"名前(姓の部分):",name1$
38910 '名の入力部分
38920 cls
38930 color rgb(255,255,255)
38940 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
38950 color rgb(0,0,0)
38960 print "名前の名の部分を入れてください"+chr$(13)
38970 Input"名前(名の部分):",name2$:goto check:
38980 '2.女性の場合　既婚か未婚か確認する
38990 '2-2-1女性の姓の入力
39000 'グラフィック領域　ここから
39010 ReiIden_Input_female:
39020 cls 3:init"kb:2":talk ""
39030 'Line1 Title
39040 line (0,0)-(850,60),rgb(0,0,255),bf
39050 line (0,0)-(850,57),rgb(0,255,0),b
39060 'Line 2 入力欄
39070 line (0,60)-(850,360),rgb(0,255,0),bf
39080 line (0,60)-(850,357),rgb(0,0,255),b
39090 'Line 2 入力欄(名前入力)
39100 'グラフィック領域 ここまで
39110 cls:init"kb:2"
39120 color rgb(255,255,255)
39130 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39140 color rgb(255,0,0)
39150 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39160 color rgb(0,0,0)
39170 print "名前の姓の部分を入れてください"+chr$(13)
39180 Input "名前(姓の部分):",name3$
39190 '2-2-2女性の名の入力
39200 cls:init"kb:2"
39210 color rgb(255,255,255)
39220 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39230 color rgb(0,0,0)
39240 print "名前の名の部分を入れてください"+chr$(13)
39250 Input "名前(名の部分):",name4$
39260 '計算領域　ここから
39270 check:
39280 '苗字の画数:buffer_name1_count
39290 'name1$,name2$:男性
39300 if sex_type = 1 then
39310 'sex_type=1 :女性のとき
39320 buf_male_female_name1$=name3$
39330 buf_male_female_name2$=name4$
39340 endif
39350 if sex_type = 2 then
39360 'sex_type=2 :男性のとき
39370 buf_male_female_name1$=name1$
39380 buf_male_female_name2$=name2$
39390 endif
39400 buffer_name1_count=len(buf_male_female_name1$)
39410 buffer_name2_count=len(buf_male_female_name2$)
39420 select case buffer_name1_count
39430 'AとBを求める
39440 case 1:
39450 '1.苗字の画数が1つのとき
39460 'A:霊数 1
39470 A=1
39480 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39490 B = char_count(buf_name1$)
39500 case 2:
39510 '2.苗字の画数が2つのとき
39520 '2-1:苗字の1文字目:buf_name1$
39530 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39540 '2-2:苗字の2文字目:buf_name2$
39550 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
39560 A=char_count(buf_name1$)
39570 B=char_count(buf_name2$)
39580 'B=char_count(buf_name2$)
39590 case 3:
39600 '3.苗字の画数が3つの時
39610 '3-1:苗字の1文字目:buf_name1$
39620 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39630 '3-2:苗字が3つのときの2つ目の文字をもとめる
39640 '3-2:苗字の2つ目:buf_name2$
39650 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39660 '3-3:苗字が3つのときの3文字目
39670 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39680 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39690 if buf_name2$="々" then
39700 A = char_count(buf_name1$) * 2
39710 B = char_count(buf_name3$)
39720 else
39730 A = char_count(buf_name1$) + char_count(buf_name2$)
39740 B = char_count(buf_name3$)
39750 endif
39760 '姓が4文字
39770 case 4:
39780 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39790 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39800 buf_name3$=Mid$(buf_male_female_name1$,3,1)
39810 buf_name4$=Mid$(buf_male_female_name1$,4,1)
39820 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
39830 B=char_count(buf_name4$)
39840 case else:
39850 end select
39860 '2.C,Dを求める
39870 select case buffer_name2_count
39880 case 1:
39890 '名が1文字の時
39900 'CとDを求める
39910 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39920 C = char_count(buff_name1$)
39930 'D=1:霊数
39940 D = 1
39950 case 2:
39960 '名が2文字の時
39970 'CとDを求める
39980 '名の1文字目:buff_name1$
39990 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40000 '名の2文字目:buff_name2$
40010 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40020 C = char_count(buff_name1$)
40030 D = char_count(buff_name2$)
40040 case 3:
40050 '名が3文字の時
40060 'CとDを求める
40070 '名の1文字目:buff_name1$
40080 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40090 '名の2文字目:buff_name2$
40100 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40110 if buff_name2$ = "々" then
40120 buff_name2$ = buff_name1$
40130 endif
40140 '名の3文字目:buff_name3$
40150 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40160 C = char_count(buff_name1$)
40170 D = char_count(buff_name2$) + char_count(buff_name3$)
40180 end select
40190 '1.先祖運を求める
40200 buffer_Senzo = A + B
40210 '2.性格運を求める
40220 buffer_Seikaku = B + C
40230 '3.愛情運を求める
40240 buffer_Aijyou = C + D
40250 '4.行動運を求める
40260 buffer_Kouzou = A + D
40270 '1.生数を求める
40280 func buf_Seisu(buffer)
40290 if buffer < 10 then
40300 seisu=buffer
40310 endif
40320 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40330 seisu = 0
40340 endif
40350 if buffer > 10 then
40360 if buffer=20 then
40370 seisu = 0
40380 else
40390 n = buffer - (fix(buffer / 10) * 10)
40400 seisu = n
40410 endif
40420 endif
40430 endfunc seisu
40440 func buf_Wasu(buffer)
40450 buf_wasu = 0:wasu = 0
40460 if buffer < 10 then
40470 '
40480 wasu = buffer:goto wasu:
40490 else
40500 if buffer = 10 then
40510 wasu = 1:goto wasu:
40520 else
40530 if buffer > 10  then
40540 if buffer=19 or buffer=28 or buffer=37 then
40550 wasu=1:goto wasu:
40560 else
40570 if buffer = 29 then
40580 wasu=2:goto wasu:
40590 'endif
40600 else
40610 a = fix(buffer / 10)
40620 b = buffer - a * 10
40630 c = a + b
40640 if c = 19 or c=28 then
40650 wasu=1
40660 '
40670 else
40680 wasu=c
40690 endif
40700 endif
40710 endif
40720 endif
40730 endif
40740 if c < 10 then
40750 wasu = c
40760 'endif
40770 endif
40780 else
40790 if buffer=19 or buffer=28 then
40800 wasu = 1
40810 endif
40820 endif
40830 wasu:
40840 buf_wasu=wasu
40850 endfunc buf_wasu
40860 func buf_kyoudai$(buf_sex_type,buf_Sa$)
40870 select case buf_sex_type
40880 '1.女性の場合
40890 case 1:
40900 if (buf_Sa$ = "連続") then
40910 buffer_kyoudai$="長女"
40920 endif
40930 if (buf_Sa$ = "1差") then
40940 buffer_kyoudai$="次女"
40950 endif
40960 if (buf_Sa$ = "2差") then
40970 buffer_kyoudai$="三女"
40980 endif
40990 if (buf_Sa$ = "3差") then
41000 buffer_kyoudai$="四女"
41010 endif
41020 if (buf_Sa$ = "4差") then
41030 buffer_kyoudai$="五女"
41040 endif
41050 '男性の場合
41060 case 2:
41070 if (buf_Sa$ = "連続") then
41080 buffer_kyoudai$="長男"
41090 endif
41100 if (buf_Sa$ = "1差") then
41110 buffer_kyoudai$="次男"
41120 endif
41130 if (buf_Sa$ = "2差") then
41140 buffer_kyoudai$="三男"
41150 endif
41160 if (buf_Sa$ = "3差") then
41170 buffer_kyoudai$="四男"
41180 endif
41190 if (buf_Sa$ = "4差") then
41200 buffer_kyoudai$="五男"
41210 endif
41220 case else:
41230 end select
41240 kyoudai$=buffer_kyoudai$
41250 endfunc kyoudai$
41260 '1.タテ型
41270 '1.同じ数字が2組ある場合
41280 func Tate_gata$()
41290 if Senzo_wasu = Seikaku_wasu  then
41300 if Aijyou_wasu - Seikaku_wasu > 1 then
41310 Spirit_type$="タテ型"
41320 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41330 Sa$ = str$(Sa_count) + "差"
41340 else
41350 Spirit_type$="タテ型"
41360 Sa$="連続"
41370 endif
41380 endif
41390 endfunc
41400 '2. ナナメ型
41410 '同じ数字が2組ある場合
41420 func Naname_gata$()
41430 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
41440 Spirit_type$="斜め型"
41450 endif
41460 if Seikaku_wasu - Senzo_wasu > 1 then
41470 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
41480 Sa$=str$(Sa_count)+" 差"
41490 else
41500 Sa$="連続"
41510 endif
41520 endfunc
41530 '3.表十字型
41540 '同じ数字が2組ある場合
41550 func Omote_jyuji_gata1$()
41560 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
41570 Spirit_type$ = "表十字型"
41580 endif
41590 if Senzo _wasu - Seikaku_wasu > 1 then
41600 Sa_count = Senzo_wasu - Seikaku_wasu - 1
41610 else
41620 if Senzo_wasu  -  Seikaku_wasu = 1  then
41630 Sa$="連続"
41640 endif
41650 endif
41660 endfunc
41670 '3-1.表十字型(ヨコ系)
41680 func Omote_jyuji_gata_yoko$()
41690 endfunc
41700 '3-2.表十字型(上下型)
41710 func Omote_jyuji_gata_jyouge()
41720 endfunc
41730 '4.ヨコ型
41740 func Yoko_gata$()
41750 endfunc
41760 '5.上下型
41770 func Jyouge_gata$()
41780 endfunc
41790 '6.1.中広型(タテ系)
41800 func Nakahiro_Tate$()
41810 endfunc
41820 '6.2中広型(ナナメ系)
41830 func Nakahiro_Naname$()
41840 endfunc
41850 '6.3中広型(表十字型)
41860 func Nakahiro_Omotejyuji$()
41870 endfunc
41880 '7.1.中一差(タテ系)
41890 func Chuissa_Tate$()
41900 endfunc
41910 '7.2中一差(ナナメ系)
41920 func Chuissa_Naname$()
41930 endfunc
41940 '8.1.中二差(タテ系)
41950 func Chunissa_Tate$()
41960 endfunc
41970 '8.2.中二差(ナナメ系)
41980 '9.1.順序型(タテ上下系)
41990 func Chunissa_Tate_jyouge$()
42000 endfunc
42010 '9.2.順序型(タテ、ヨコ系)
42020 func Jyunjyo_Tate_yoko$()
42030 endfunc
42040 '9.3.順序型(ナナメ、上下系)
42050 func Jyunjyo_Naname_jyouge$()
42060 endfunc
42070 '9.4.順序型(ナナメ、ヨコ系)
42080 '10.1.中順序型(ヨコ系)
42090 func Nakajyunjyo_yoko$()
42100 endfunc
42110 '10.2.中順序型(上下系)
42120 func Nakajyunjyo_jyouge$()
42130 endfunc
42140 '11.1.隔離型(タテ、上下系)
42150 func Kakuri_tate_jyouge$()
42160 endfunc
42170 '11.2.隔離型(タテ、ヨコ系)
42180 func Kakuri_tate_yoko$()
42190 endfunc
42200 '11.3.隔離型(ナナメ、上下系)
42210 func Kakuri_Naname_jyouge$()
42220 endfunc
42230 '11.4.隔離型(ナナメ、ヨコ系)
42240 func Kakuri_Naname_yoko$()
42250 endfunc
42260 '11.5.隔離型(タテ系)
42270 func Kakuri_tate$()
42280 endfunc
42290 '11.6.隔離型(ナナメ系)
42300 func Kakuri_naname$()
42310 endfunc
42320 '11.7.隔離型(上下、ヨコ系)
42330 func Kakuri_Jyouge_yoko$()
42340 endfunc
42350 Spirit_type$="No data"
42360 '1.先祖運　和数
42370 Senzo_wasu = buf_Wasu(buffer_Senzo)
42380 '2.先祖運 生数
42390 Senzo_seisu = buf_Seisu(buffer_Senzo)
42400 '3.性格運 和数
42410 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
42420 '4.性格運 生数
42430 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
42440 '5.愛情運 和数
42450 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
42460 '6.愛情運 生数
42470 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
42480 '7.行動運 和数
42490 Koudou_wasu = buf_Wasu(buffer_Kouzou)
42500 '8.行動運 生数
42510 Koudou_seisu = buf_Seisu(buffer_Kouzou)
42520 '計算領域 ここまで
42530 '描画領域　ここから
42540 Result_ReiIden1:
42550 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
42560 'Title
42570 line (0,0)-(850,60),rgb(0,0,255),bf
42580 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
42590 'name
42600 line (0,60)-(850,165),rgb(0,255,0),bf
42610 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
42620 '生数、和数
42630 line (0,165)-(850,550),rgb(125,255,212),bf
42640 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
42650 'プッシュメッセージ
42660 line (0,550)-(850,650),rgb(0,255,0),bf
42670 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
42680 '描画領域　ここまで
42690 color rgb(255,255,255)
42700 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
42710 color rgb(0,0,0)
42720 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
42730 color rgb(255,0,255)
42740 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
42750 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
42760 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
42770 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
42780 talk "診断結果１です、あなたのわすうとせいすうです。"
42790 color rgb(0,0,0)
42800 print"エンターキーを押してください"
42810 while (bg <> 2 and key$ <> chr$(13))
42820 key$=inkey$
42830 bg=strig(1)
42840 pause 2.50*100
42850 wend
42860 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
42870 '描画領域　ここから
42880 Result_ReiIden2:
42890 cls 3:init"kb:4"
42900 'Title Color:青
42910 line (0,0)-(860,60),rgb(0,0,255),bf
42920 'Title 枠
42930 line (0,0)-(860,57),rgb(255,0,255),b
42940 'Message
42950 line (0,60)-(860,650),rgb(127,255,212),bf
42960 'Message 枠
42970 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
42980 '
42990 '描画領域　ここまで
43000 color rgb(255,255,255)
43010 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43020 '十二運の基礎運
43030 '1.四大主流型
43040 'パターン１ 同じ数字の場合
43050 '1.オール同数化 全部同じ
43060 '1-if
43070 sa_count=0
43080 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43090 Spirit_type$ = "オール同数化"
43100 Sa$="3差"
43110 else
43120 'パターン１ 同じ数字2つの場合
43130 '2.タテ型
43140 '数字が２つ同じ
43150 '2-if
43160 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43170 Spirit_type$ = "タテ型"
43180 '2.タテ型　1
43190 if Koudou_wasu - Senzo_wasu = 1 then
43200 Sa$="連続"
43210 else
43220 '2.タテ型　2
43230 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43240 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43250 Sa$=str$(Sa_count) + "差"
43260 endif
43270 endif
43280 endif
43290 endif
43300 '2.タテ型　3
43310 '1.type
43320 'Spirit_type$ = "四大主流型 タテ型"
43330 '3.斜め型
43340 '数字が２つ同じ
43350 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
43360 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
43370 Sa$="連続"
43380 else
43390 '先祖＝行動　性格運=愛情運
43400 '3-if
43410 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
43420 Spirit_type$="斜め型"
43430 '3.斜め型 1
43440 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
43450 Sa$ = "連続"
43460 else
43470 if (Seikaku_wasu - Koudou_wasu) < 1 then
43480 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
43490 endif
43500 endif
43510 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
43520 Sa_count = 3
43530 Sa$ = str$(Sa_count - 1) + "差"
43540 else
43550 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
43560 Sa_count = Senzo_wasu - Seikaku_wasu
43570 Sa$ = str$(Sa_count-1) + "差"
43580 endif
43590 endif
43600 endif
43610 '3-if
43620 endif
43630 '3.斜め型 2
43640 '3.斜め型 3
43650 '数字が２つ同じ
43660 '表十字型
43670 '先祖運＝愛情運　　行動運＝性格運
43680 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43690 Spirit_type$="表十字型"
43700 Sa_coun = Senzo_wasu - Seikaku_wasu
43710 if Sa_count > 1 then
43720 Sa$ = str$(Sa_count) + "差"
43730 else
43740 if Sa_count = 1 then
43750 Sa$ = "連続"
43760 endif
43770 endif
43780 endif
43790 'endif
43800 '数字が２つ同じ
43810 '表十字型(横型)
43820 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
43830 Spirit_type$="表十字型(ヨコ型)"
43840 'Sa$を後で書く
43850 endif
43860 '数字が２つ同じ
43870 '表十字型(上下型)
43880 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
43890 Spirit_type$="表十字型(上下型)"
43900 'Sa$を後で書く
43910 endif
43920 'ヨコ型
43930 if Koudou_wasu = Seikaku_wasu then
43940 n=abs(Senzo_wasu - Seikaku_wasu)
43950 n2 = abs(Aijyou_wasu-Seikaku_wasu)
43960 Spirit_type$="ヨコ型"
43970 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
43980 Sa$="連続"
43990 endif
44000 if n = n2 then
44010 if n > 1 then
44020 Sa_count = n - 1
44030 Sa$=str$(Sa_count)+"差"
44040 else
44050 Sa_Count = abs(n - n2)
44060 if Sa_Count > 1 then
44070 Sa$ = str$(Sa_Count) + "差"
44080 endif
44090 endif
44100 endif
44110 endif
44120 '上下型
44130 '同じ数字が1組みある場合
44140 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44150 Spirit_type$ = "上下型"
44160 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44170 Sa$="連続"
44180 endif
44190 endif
44200 '連続した数字が2組みある場合
44210 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
44220 Spirit_type$="中広（なかこう)型(表十字型)"
44230 n=Min(Koudou_wasu , Seikaku_wasu)
44240 n2=Max(Aijyou_wasu , Senzo_wasu)
44250 Sa_count = n - n2
44260 if Sa_count > 1 then
44270 Sa$ = str$(Sa_count - 1) + "差"
44280 else
44290 if Sa_count = 1 then
44300 Sa$ = "連続"
44310 endif
44320 endif
44330 endif
44340 '中一差（タテ系)
44350 '連続した数字が2組みある場合
44360 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
44370 'Spirit_type$="中一差（タテ系)"
44380 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
44390 n = Max(Koudou_wasu,Aijyou_wasu)
44400 n2 = Max(Senzo_wasu,Seikaku_wasu)
44410 else
44420 n = Max(Koudou_wasu,Aijyou_wasu)
44430 n2 = Min(Senzo_wasu,Seikaku_wasu)
44440 endif
44450 Sa_count2 = abs(n2 - n) - 1
44460 if Sa_count2 >= 0 then
44470 select case Sa_count2
44480 case 1:
44490 '中一差（タテ系)
44500 Sa$ = "連続"
44510 Spirit_type$="中一差型（タテ系)*"
44520 case 2:
44530 '中二差型（タテ系)
44540 Sa$ = "1差"
44550 Spirit_type$="中二差型（タテ系)"
44560 case 3:
44570 '中広（なかこう)型(タテ系)
44580 Sa$ = "2差"
44590 Spirit_type$="中三差型（タテ系)"
44600 case 4:
44610 Sa$ = "3差"
44620 Spirit_type$="中広型(タテ系)"
44630 case  else:
44640 cls 3:print"例外に入りました"
44650 end select
44660 '
44670 else
44680 cls 3:print"例外に入りました"
44690 endif
44700 endif
44710 'endif
44720 '中一差（斜め系)
44730 '連続した数字が2組みある場合
44740 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
44750 n = Min(Koudou_wasu,Senzo_wasu)
44760 n2 = Max(Aijyou_wasu,Seikaku_wasu)
44770 Sa_count = n - n2 - 1
44780 select case Sa_count
44790 case 1:
44800 '中一差（斜め系)
44810 '連続した数字が2組みある場合
44820 Sa$="1差"
44830 Spirit_type$="中一差（斜め系)"
44840 case 2:
44850 '中二差（斜め系)
44860 '連続した数字が2組みある場合
44870 Sa$="2差"
44880 Spirit_type$="中二差（斜め系)"
44890 case 3:
44900 Sa$="3差"
44910 Spirit_type$="中広型（斜め系）"
44920 case else:
44930 end select
44940 endif
44950 '順序型(タテ、上下系)
44960 '数字が４つ連続してる場合
44970 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
44980 Spirit_type$="順序型(タテ、上下系)"
44990 Sa$="連続"
45000 endif
45010 '中順序型(ヨコ系)
45020 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45030 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45040 Spirit_type$="中順序型(ヨコ系)"
45050 Sa$="1差"
45060 else
45070 '順序型(タテ、ヨコ系)
45080 '数字が４つ連続してる場合
45090 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45100 Spirit_type$="順序型(タテ、ヨコ系)"
45110 Sa$="連続"
45120 endif
45130 endif
45140 endif
45150 '中順序型(上下系)
45160 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
45170 n=Max(Senzo_wasu,Aijyou_wasu)
45180 n2=Min(Koudou_wasu,Seikaku_wasu)
45190 Sa_count = n2 - n
45200 if Sa_count > 1 then
45210 Spirit_type$="中順序型(上下系)"
45220 Sa$ = Str$(Sa_count) + "差"
45230 else
45240 '順序型(斜め、上下系)
45250 '数字が４つ連続してる場合
45260 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
45270 Spirit_type$ = "順序型(斜め、上下系)"
45280 Sa$="連続"
45290 endif
45300 endif
45310 endif
45320 '順序型(斜め、ヨコ系)
45330 '数字が４つ連続してる場合
45340 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
45350 Spirit_type$="順序型(斜め、ヨコ系)"
45360 Sa$="連続"
45370 endif
45380 '隔離型(タテ、上下系)
45390 '数字が1つおきに飛んでる場合
45400 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
45410 Spirit_type$="隔離型(タテ、上下系)"
45420 Sa$="1差"
45430 endif
45440 '隔離型(タテ、ヨコ系)
45450 '数字が1つおきに飛んでる場合
45460 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
45470 Spirit_type$="隔離型(タテ、ヨコ系)"
45480 Sa$="1差"
45490 endif
45500 '隔離型(斜め、上下系)
45510 '数字が1つおきに飛んでる場合
45520 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
45530 Spirit_type$="隔離型(斜め、上下系)"
45540 Sa$="1差"
45550 endif
45560 '隔離型(斜め、ヨコ系)
45570 '数字が1つおきに飛んでる場合
45580 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
45590 Spirit_type$="隔離型(斜め、ヨコ系)"
45600 Sa$="1差"
45610 endif
45620 '隔離型(タテ系)
45630 '数字が2つおきに飛んでる場合
45640 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
45650 Spirit_type$="隔離型(タテ系)"
45660 Sa$="1差"
45670 endif
45680 '隔離型(斜め系)
45690 '数字が2つおきに飛んでる場合
45700 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
45710 Spirit_type$="隔離型(斜め系)"
45720 Sa$="1差"
45730 endif
45740 '隔離型(上下、ヨコ系)
45750 '数字が2つおきに飛んでる場合
45760 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
45770 Spirit_type$="隔離型(上下、ヨコ系)"
45780 Sa$="1差"
45790 'endif
45800 endif
45810 'ここに移動
45820 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
45830 bg=0:bg2=0:key$="":init"kb:4":talk ""
45840 color rgb(255,0,255)
45850 print "●十二の基礎運" + chr$(13)
45860 print Spirit_type$ + Sa$;chr$(13)
45870 print "きょうだい：";Kyoudai$ + chr$(13)
45880 talk "あなたのきょうだいは、"+Kyoudai$+"です"
45890 color rgb(0,0,0)
45900 print"前の画面:左の丸"+chr$(13)
45910 'print"保存して、もう一度やる：スペースキー"+chr$(13)
45920 print"トップ画面に戻る:右の丸"+chr$(13)
45930 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
45940 key$=inkey$
45950 bg=strig(1)
45960 bg2=strig(0)
45970 pause 2.50*100
45980 wend
45990 if (key$ = chr$(13) or bg=2) then
46000 goto Main_Screen1:
46010 else
46020 if (key$ = "b" or bg2 = 2) then
46030 goto Result_ReiIden1:
46040 endif
46050 endif
46060 'ファイル保存 占いデーターを一時保存
46070 Save_Data1:
46080 '********************************************************************
46090 '1.ファイル読み込みで登録件数                                       *
46100 '2.10件かどうかをチェックして10件以下なら保存する                   *
46110 '3.10件以上なら保存しない                                           *
46120 '********************************************************************
46130 '登録件数を求める
46140 '********************************************************************
46150 n=0
46160 open Parsonal_data$ + "Parsonal_data.dat" for append as #3
46170 while (eof(3) = -1)
46180 line input #3,a$
46190 n = n + 1
46200 wend
46210 close #3
46220 '********************************************************************
46230 '登録件数を求める
46240 '********************************************************************
46250 if (n < 10) then
46260 '********************************************************************
46270 '`ファイル読み込み件数をチェック　ここまで
46280 '*********************************************************************
46290 'print#3は末尾は、セミコロンはいらない
46300 '末尾にセミコロンをつけると改行しない
46310 print #3,"名前:" + buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:" + str$(Senzo_wasu);",先祖生数:" + str$(Senzo_seisu);",性格和数:" + str$(Seikaku_wasu);",性格生数:" + str$(Seikaku_seisu);",愛情生数:" + str$(Aijyou_wasu);",愛情和数:" + str$(Aijyou_seisu);",行動和数:" + str$(Koudou_wasu);",行動生数:" + str$(Koudou_seisu)
46320 ui_msg "保存しました"
46330 close #3
46340 else
46350 ui_msg "10件に到達しました。"
46360 endif
46370 goto Reiden_Top_Input_Sextype:
46380 '個人データーリスト  *parsonal_data
46390 Parsonal_data_top:
46400 cls 3:No=0:Key$="":bg=0:y=0
46410 sp_on 0,1:sp_put 0,(10,100),0,0
46420 line(0,0)-(800,60),rgb(0,0,255),bf
46430 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
46440 line (0,60)-(800,440),rgb(127,255,212),bf
46450 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
46460 line (0,440)-(800,670),rgb(0,255,0),bf
46470 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
46480 color rgb(255,255,255)
46490 print"◎個人データーリスト" + chr$(13)
46500 color rgb(255,0,255)
46510 print " :1.霊遺伝姓名学リスト" + chr$(13)
46520 print " :2.霊遺伝姓名学登録件数" + chr$(13)
46530 print " :3.霊遺伝姓名学データー検索"+chr$(13)
46540 print " :4.メインメニューへ行く"+chr$(13)
46550 color rgb(0,0,0):locate 0,10
46560 print "1.霊遺伝姓名学リストを選択"
46570 Parsonal_data_top2:
46580 key$="":bg=0:y=0
46590 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
46600 key$=inkey$
46610 bg=strig(1)
46620 y=stick(1)
46630 pause 2.50*100
46640 wend
46650 '*****************************************************
46660 '1.下のカーソル ここから 2024.10
46670 '*****************************************************
46680 if (key$=chr$(31) or y=1) then
46690 select case No
46700 case 0:
46710 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46720 case 1:
46730 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46740 case 2:
46750 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46760 case 3:
46770 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46780 end select
46790 endif
46800 '******************************************************
46810 '1.下のカーソル　 ここまで 2024.10
46820 '******************************************************
46830 '******************************************************
46840 '2.上のカーソル　 ここから 2024.10
46850 '******************************************************
46860 if (y=-1 or key$=chr$(30)) then
46870 select case No
46880 case 0:
46890 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46900 case 1:
46910 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46920 case 2:
46930 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46940 case 3:
46950 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46960 end select
46970 endif
46980 '******************************************************
46990 '2.上のカーソル　ここまで 2024.10
47000 '******************************************************
47010 '3.決定ボタン　ここから  2024.10
47020 '******************************************************
47030 if (bg=2 or key$=chr$(13)) then
47040 select case No
47050 case 0:
47060 sp_on 0,0:goto Parsonal_list1:
47070 case 1:
47080 sp_on 1,0:goto Entry_list_count:
47090 case 2:
47100 sp_on 2,0:goto Parsonal_list_Search:
47110 case 3:
47120 sp_on 3,0:goto Main_Screen1:
47130 end select
47140 endif
47150 '******************************************************
47160 '3.決定ボタン　ここまで 2024.10
47170 '******************************************************
47180 '登録件数
47190 Entry_list_count:
47200 N = 0:bg=0:key$="":init"kb:4":talk ""
47210 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
47220 'N=1
47230 while eof(5) = 0
47240 line input #5,line$:N = N + 1
47250 wend
47260 close #5
47270 c=N
47280 cls 3
47290 line (0,0)-(680,60),rgb(0,0,255),bf
47300 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
47310 line (0,60)-(680,180),rgb(127,255,212),bf
47320 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
47330 LINE (0,180)-(680,280),rgb(0,255,0),bf
47340 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
47350 color rgb(255,255,255)
47360 print "◎霊遺伝姓名学登録件数"+chr$(13)
47370 color rgb(255,0,255)
47380 print "登録件数は";c;"件です"+chr$(13)
47390 color rgb(0,0,0)
47400 print "エンターキーを押してください"+chr$(13)
47410 while (key$ <> chr$(13) and bg <> 2)
47420 key$=inkey$
47430 bg=strig(1)
47440 pause 2.50*100
47450 wend
47460 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
47470 'パーソナルリスト ここから
47480 Parsonal_list1:
47490 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
47500 'Title
47510 line (0,0)-(850,60),rgb(0,0,255),bf
47520 line (0,0)-(850,57),rgb(255,255,255),b
47530 '個人名
47540 line (0,60)-(850,165),rgb(0,255,0),bf
47550 line (0,63)-(850,162),rgb(255,0,255),b
47560 '数値リスト
47570 line (0,165)-(850,550),rgb(255,212,212),bf
47580 line (0,168)-(850,547),rgb(0,0,255),b
47590 'ボタンメッセージ
47600 line (0,550)-(850,730),rgb(0,255,0),bf:
47610 line (0,553)-(853,733),rgb(255,0,255),b
47620 'Parsonal_list2:
47630 open "config/Parsonal_data/parsonal_data.dat" for input as #7
47640 'bN=0
47650 while eof(7)=0
47660 line input #7,lines$:bN = bN + 1
47670 wend
47680 close #7
47690 'a=0
47700 open "config/Parsonal_data/parsonal_data.dat" for input as #8
47710 'while eof(8)=0
47720 for i=0 to (bN * 10) -1
47730 input #8,buflines$(i)
47740 'buflines$(i) = line$
47750 'a  =  a  +  1
47760 Next i
47770 'wend
47780 close #8
47790 Parsonal_list2:
47800 while n <= bN * 10
47810 'Parsonal_list2:
47820 cls
47830 color rgb(255,255,255)
47840 print "霊遺伝姓名学 リスト" + chr$(13)
47850 '性別を出す
47860 sex$ = show_sex_type$(buflines$((10*n) + 1))
47870 'n=0
47880 color rgb(0,0,0):
47890 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
47900 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
47910 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
47920 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
47930 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
47940 print "右の丸:次へ行く" + chr$(13)
47950 print "左の丸：トップへ戻る" + chr$(13)
47960 key$=input$(1)
47970 if key$= " " then n=((n+1) Mod bN)
47980 if key$=chr$(13) then goto Main_Screen1:
47990 wend
48000 Parsonal_list_Search:
48010 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
48020 while eof(1)=0
48030 line input #1,lines$:hit_count=hit_count + 1
48040 wend
48050 close #1
48060 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
48070 for i=0 to hit_count*10 - 1
48080 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
48090 next i
48100 close #2
48110 Search_find:
48120 cls 3:init "kb:2":talk ""
48130 'グラフィック領域　ここから
48140 line (0,0)-(770,60),rgb(0,0,255),bf
48150 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
48160 line (0,60)-(770,170),rgb(127,255,212),bf
48170 line(0,63)-(767,173),rgb(0,0,255),b
48180 line(0,170)-(770,440),rgb(0,255,0),bf
48190 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
48200 color rgb(255,255,255)
48210 print "霊遺伝姓名判断 データー検索"+chr$(13)
48220 color rgb(255,0,255)
48230 print "登録件数:";hit_count;"件です"+chr$(13)
48240 color rgb(0,0,0)
48250 print "調べたい人の名前を入れてください"+chr$(13)
48260 Input "名前:",name$
48270 cls
48280 for i = 0 to hit_count * 10 - 1
48290 if name$ = buffname$(i) then
48300 hcount = hcount + 1
48310 endif
48320 next i
48330 if hcount > 0 then
48340 init "kb:4":cls
48350 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48360 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
48370 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
48380 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
48390 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
48400 while (key$ <> chr$(13) and bg <> 2)
48410 key$=inkey$
48420 bg=strig(1)
48430 bg2=strig(0)
48440 pause 2.50*100
48450 wend
48460 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
48470 else
48480 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48490 color rgb(0,0,0):print"検索名:";name$+chr$(13)
48500 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
48510 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
48520 a$=input$(1)
48530 IF a$=chr$(13) then goto Main_Screen1:
48540 endif
48550 '相性のデーターを保存する機能
48560 '保存ファイル：bestAisyou.dat
48570 '保存フォルダ:config/Aisyou_dat/
48580 Save_Aisyou:
48590 open "config/Aisyou_data" for append as #1
48600 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
48610 close #1
48620 ui_msg "保存しました"
48630 key$ = input$(1)
48640 '設定変更項目
48650 Config_Setting:
48660 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
48670 sp_on 0,1:sp_put 0,(10,100),0,0
48680 'グラフィック領域　ここから
48690 'Line 1
48700 line (0,0)-(850,60),rgb(0,0,255),bf
48710 line (0,0)-(850,57),rgb(255,255,255),b
48720 'Line 2
48730 line (0,60)-(850,460),rgb(127,255,212),bf
48740 line (0,57)-(850,457),rgb(0,0,0),b
48750 'Line 3
48760 line (0,460)-(850,640),rgb(0,255,0),bf
48770 line (0,457)-(850,637),rgb(0,0,0),b
48780 'グラフィック領域　ここまで
48790 color rgb(255,255,255)
48800 print "設定　トップメニュー" + chr$(13)
48810 color rgb(255,0,255)
48820 print " :1.キーボードの設定" + chr$(13)
48830 print " :2.トップ画面に戻る"
48840 'print " :4.プログラムの終了"+chr$(13)
48850 color rgb(0,0,0):locate 0,10
48860 print "1.キーボードの設定を選択"
48870 Config_Setting2:
48880 y=0:bg=0:key$=""
48890 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
48900 key$=inkey$
48910 y=stick(1)
48920 bg=strig(1)
48930 pause 2.50*100
48940 wend
48950 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
48960 select case No
48970 case 0:
48980 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
48990 case 1:
49000 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
49010 end select
49020 endif
49030 if (key$=chr$(13) or bg=2) then
49040 select case No
49050 case 0:
49060 sp_on 0,0:goto Keyboard_Setting:
49070 case 1:
49080 sp_on 1,0:goto Main_Screen1:
49090 end select
49100 endif
49110 '1.キーボードの設定
49120 Keyboard_Setting:
49130 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
49140 sp_on 0,1:sp_put 0,(10,100),0,0
49150 'グラフィック領域　ここから
49160 'Line 1
49170 line (0,0)-(1050,60),rgb(0,0,255),bf
49180 line (0,0)-(1050-3,57),rgb(255,255,255),b
49190 'Line 2
49200 line (0,60)-(1050,460),rgb(127,255,212),bf
49210 line (0,57)-(1050-3,457),rgb(0,0,0),b
49220 'Line 3
49230 line (0,460)-(1050,640),rgb(0,255,0),bf
49240 line (0,457)-(1050-3,637),rgb(0,0,0),b
49250 'グラフィック領域　ここまで
49260 '文字色　白
49270 color rgb(255,255,255)
49280 print "設定1 キーボードの設定" + chr$(13)
49290 color rgb(255,0,255)
49300 print " :1.バーチャルキーボード表示する" + chr$(13)
49310 print " :2.バーチャルキーボードを表示しない" + chr$(13)
49320 print " :3.トップ画面に戻る" + chr$(13)
49330 print " :4.終了する" + chr$(13)
49340 color rgb(0,0,0)
49350 locate 0,10
49360 print "1.バーチャルキーボードを表示するを選択"
49370 Keyboard_Setting2:
49380 y=0:bg=0:key$=""
49390 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
49400 key$=inkey$
49410 y=stick(1)
49420 bg=strig(1)
49430 pause 2.50*100
49440 wend
49450 '****************************************************************************************************************
49460 '下のカーソル　ここから
49470 '****************************************************************************************************************
49480 if (y=1 or key$=chr$(31)) then
49490 select case No
49500 case 0:
49510 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
49520 case 1:
49530 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
49540 case 2:
49550 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
49560 case 3:
49570 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
49580 end Select
49590 endif
49600 '*******************************************************************************************************************
49610 '下のカーソル　ここまで
49620 '*******************************************************************************************************************
49630 '*******************************************************************************************************************
49640 '上のカーソル　ここから
49650 '********************************************************************************************************************
49660 '********************************************************************************************************************
49670 '上のカーソル　ここまで
49680 '********************************************************************************************************************
49690 '********************************************************************************************************************
49700 '決定ボタン　ここから
49710 '*********************************************************************************************************************
49720 if (key$=chr$(13) or bg=2) then
49730 select case No
49740 case 0:
49750 init "kb:2":
49760 case 1:
49770 sp_on 1,0:init "kb:0":
49780 case 2:
49790 sp_on 2,0:goto Main_Screen1:
49800 case 3:
49810 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
49820 end select
49830 endif
49840 '*********************************************************************************************************************
49850 '決定ボタン　ここまで
49860 '*********************************************************************************************************************
