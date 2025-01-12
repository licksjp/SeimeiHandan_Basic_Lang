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
770 'Year 2025年度                                    *
780 'Version2.45:Date:2025.01.05                      *
790 'Version2.46:Date:2025.01.12                      *
800 '*****************************************************
810 '設定ファイル　漢字文字データ                     　 *
820 'Version:Mojidata20200411.dat Date:20200411          *
830 'Version:Mojidata20200415.dat Date:20200415          *
840 'Version:Mojidata20200506.dat Date:20200506          *
850 'Version:Mojidata20200513.dat Date:20200513          *
860 'Version:Mojidata20200516.dat Date:20200516          *
870 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
880 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
890 '*****************************************************
900 '* 開発再開　2024.9.20　Ver2.33                      *
910 '* 開発再開 Date:2024.09.20                          *
920 '*************************************************
930 '新機能
940 'Date:2020.05.27
950 'Parsonal_data.datに個人データーを保存機能追加
960 '*****************************************************
970 'メモリー確保 文字領域,数値データー                  *
980 '*****************************************************
990 clear 4*4000,4*1000000
1000 '*****************************************************
1010 'Screen 定義                                         *
1020 '*****************************************************
1030 Screen 1,1,1,1
1040 '*****************************************************
1050 'Sprite 定義                                         *
1060 '****************************************************
1070 'フォルダを変数にまとめる
1080 '****************************************************
1090 Gazo$ = "config/gazo/"
1100 '****************************************************
1110 Select$ = "selection.png"
1120 '^&**************************************************
1130 gload Gazo$ + Select$,1,10,100
1140 gload Gazo$ + Select$,1,10,200
1150 gload Gazo$ + Select$,1,10,300
1160 gload Gazo$ + Select$,1,10,400
1170 gload Gazo$ + Select$,1,10,500
1180 sp_def 0,(10,100),32,32
1190 sp_def 1,(10,200),32,32
1200 sp_def 2,(10,300),32,32
1210 sp_def 3,(10,400),32,32
1220 sp_def 4,(10,500),32,32
1230 '****************************************************
1240 Parsonal_data$ = "Config/Parsonal_data/"
1250 '*****************************************************
1260 '改名チェック変数                                   *
1270 '****************************************************
1280 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1290 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1300 '*****************************************************
1310 'キーボードフラグ                                    *
1320 '0:キーボード非表示                                  *
1330 '1:キーボード表示                                    *
1340 '*****************************************************
1350 keyboard_flag = 0
1360 '*****************************************************
1370 '性別の選択用変数                                    *
1380 '*****************************************************
1390 dim sex_type$(2)
1400 '*****************************************************
1410 '相性占い　設定項目 ここから                         *
1420 '*****************************************************
1430 count=0:line_count=0
1440 dim buffer_Aisyou_type$(10,10)
1450 dim buffer_Kaimei_data_name$(10)
1460 '*****************************************************
1470 '改名チェックの選択肢の変数                          *
1480 '*****************************************************
1490 '1.フォルダ
1500 '******************************************************
1510 KANJI_DATA$ = "config/kanji_data"
1520 '*****************************************************
1530 '2.ファイル
1540 '*****************************************************
1550 MOJIDATA$ = "Mojidata_ReiIden20200911.png"
1560 '*****************************************************
1570 SELECT_LIST_FOLDER$="config/Selection/"
1580 '*****************************************************
1590 SELECT_LIST_FILE$ = "Selection.dat"
1600 '*****************************************************
1610 'FULL PASS:./config/Selection/Selection.dat
1620 '*****************************************************
1630 dim select$(3)
1640 open SELECT_LIST_FOLDER$ + SELECT_LIST_FILE$ for input as #2
1650 for i=0 to 2
1660 input #2,select$(i)
1670 next i
1680 close #2
1690 'select$(0)="改名リストに追加する"
1700 'select$(1)="改名リストに追加しない"
1710 'select$(2)="トップ画面に行く"
1720 '*****************************************************
1730 '総数を出す変数 改名チェック変数                     *
1740 'dim buffer_total$                                   *
1750 '1.理解し合える最良のカップル                        *
1760 '*****************************************************
1770 dim buf_good_couple1(20)
1780 dim buf_good_couple2(20)
1790 'dim buf_good_couple1$
1800 'Dim buf_good_couple2$
1810 '*****************************************************
1820 '2.互いに自然体でつきあえるカップル                  *
1830 '*****************************************************
1840 dim buf_natural_couple1(20)
1850 dim buf_natural_couple2(20)
1860 'dim buf_natural_couple1$
1870 'dim buf_natural_couple2$
1880 '**************************************************
1890 '3.男性にとって居心地の良いカップル               *
1900 '**************************************************
1910 dim buf_good_for_man1(20)
1920 dim buf_good_for_man2(20)
1930 'dim buf_good_for_man1$
1940 'dim buf_good_for_man2$
1950 '*****************************************************
1960 '4.女性にとって居心地の良い相性                      *
1970 '*****************************************************
1980 dim buf_good_for_woman1(20)
1990 dim buf_good_for_woman2(20)
2000 'dim buf_good_for_woman1$
2010 'dim buf_good_for_woman2$
2020 '*****************************************************
2030 '5.恋愛経験を重ねた後なら愛を育める                  *
2040 '*****************************************************
2050 dim buf_short_of_experience1(20)
2060 dim buf_short_of_experience2(20)
2070 'dim buf_short_of_experience1$
2080 'dim buf_short_of_experience2$
2090 '*****************************************************
2100 '6.結婚への発展が困難なカップル                      *
2110 '*****************************************************
2120 dim buf_difficult_for_couple1(20)
2130 dim buf_difficult_for_couple2(20)
2140 'dim buf_difficult_for_couple1$
2150 'dim buf_difficult_for_couple2$
2160 '*****************************************************
2170 '7.愛し方にズレが出てくる二人                        *
2180 '*****************************************************
2190 dim buf_difference_of_love1(20)
2200 dim buf_difference_of_love2(20)
2210 'dim buf_difference_of_love1$
2220 'dim buf_difference_of_love2$
2230 '*****************************************************
2240 '相性占い　設定項目　ここまで
2250 '*****************************************************
2260 '8.互いの価値観が噛み合わない相性 ここから           *
2270 '*****************************************************
2280 dim buf_difference_of_KachiKan1(20)
2290 dim buf_difference_of_KachiKan2(20)
2300 'dim buf_difference_of_KachiKan1$
2310 'dim buf_difference_of_KachiKan2$
2320 '*****************************************************
2330 '8.互いに価値観が噛み合わない相性 ここまで           *
2340 '*****************************************************
2350 '相性診断　相性パターン結果　ここから
2360 dim Result_Aisyou_type$(8)
2370 '*****************************************************
2380 '相性診断 相性パターン結果 ここまで                  *
2390 '*****************************************************
2400 '2019/04/07 姓名判断アプリ 作成開始                  *
2410 '姓名判断　 名前の総数での吉凶を調べる               *
2420 '*****************************************************
2430 buf_count=0:buffer_count=0:count=0:buffer=0
2440 '*****************************************************
2450 '合計文字数                                          *
2460 '*****************************************************
2470 totalmoji=0
2480 dim buf_Input_data$(10),buf_Input_data2$(10)
2490 dim bufer_name$(10),bufer_name2$(10)
2500 dim buf_Input_name$(10),buf_Input_name2$(10)
2510 '*****************************************************
2520 '定数文字1画〜27画                                   *
2530 'ファイルから各画数を読み込んで代入する。            *
2540 '*****************************************************
2550 '1行目だけ読み込む                                   *
2560 '*****************************************************
2570 KANJI_DATA$ = "config/Kanji_data/"
2580 '*****************************************************
2590 MOJIDATA$ = "Mojidata_ReiIden20200911.dat"
2600 '*****************************************************
2610 open KANJI_DATA$ + MOJIDATA$ for input as #2
2620 for i=0 to 26
2630 input #2,buf_lines$(i)
2640 next i
2650 close #2
2660 '*****************************************************
2670 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2680 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2690 '1画
2700 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2710 '2画
2720 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2730 '3画
2740 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2750 '4画
2760 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2770 '5画
2780 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2790 '6画
2800 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2810 '7画
2820 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2830 '8画
2840 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2850 '9画
2860 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2870 '10画
2880 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2890 '11画
2900 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2910 '12画
2920 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2930 '13画
2940 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2950 '14画
2960 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2970 '15画
2980 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2990 '16画
3000 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
3010 '17画
3020 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
3030 '18画
3040 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
3050 '19画
3060 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
3070 '20画
3080 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
3090 '21画
3100 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
3110 '22画
3120 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
3130 '23画
3140 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
3150 '24画
3160 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
3170 '25画
3180 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
3190 '26画
3200 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
3210 '27画
3220 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
3230 dim Moji_data$(Moji_total+27+27)
3240 '******************************************************
3250 'dim bufmoji$(10),Input_data$(10)                     *
3260 '１画の文字   サイズ:21+2(漢字)                       *
3270 '******************************************************
3280 dim buf_char_hiragana1$(Moji_1)
3290 '******************************************************
3300 '2画の文字  サイズ 58+14=72(漢字)                     *
3310 '******************************************************
3320 dim buf_char_hiragana2$(Moji_2)
3330 '******************************************************
3340 '3画の文字 サイズ:48+29=77(漢字)                      *
3350 '******************************************************
3360 dim buf_char_hiragana3$(Moji_3)
3370 '******************************************************
3380 '4画の文字 サイズ:29+51=80(漢字)                      *
3390 '******************************************************
3400 dim buf_char_hiragana4$(Moji_4)
3410 '******************************************************
3420 '５画の文字  サイズ:18+59=77(漢字)                    *
3430 '******************************************************
3440 dim buf_char_hiragana5$(Moji_5)
3450 '******************************************************
3460 '6画の文字  サイズ:79(漢字)                           *
3470 '******************************************************
3480 dim buf_char_hiragana6$(Moji_6)
3490 '******************************************************
3500 '7画の文字  サイズ:88(漢字)                           *
3510 '******************************************************
3520 dim buf_char_hiragana7$(Moji_7)
3530 '******************************************************
3540 '8画の文字                                            *
3550 '******************************************************
3560 dim buf_char_hiragana8$(Moji_8)
3570 '******************************************************
3580 '9画の文字                                            *
3590 '******************************************************
3600 dim buf_char_hiragana9$(Moji_9)
3610 '******************************************************
3620 '10画の文字 98文字                                    *
3630 '******************************************************
3640 dim buf_char_hiragana10$(Moji_10)
3650 '******************************************************
3660 '11画の文字                                           *
3670 '******************************************************
3680 dim buf_char_hiragana11$(Moji_11)
3690 '******************************************************
3700 '12画の文字                                           *
3710 '******************************************************
3720 dim buf_char_hiragana12$(Moji_12)
3730 '******************************************************
3740 '13画の文字 81文字                                    *
3750 '******************************************************
3760 dim buf_char_hiragana13$(Moji_13)
3770 '******************************************************
3780 '14画の文字                                           *
3790 '******************************************************
3800 dim buf_char_hiragana14$(Moji_14)
3810 '******************************************************
3820 '15画の文字                                           *
3830 '******************************************************
3840 dim buf_char_hiragana15$(Moji_15)
3850 '******************************************************
3860 '16画の文字                                           *
3870 '******************************************************
3880 dim buf_char_hiragana16$(Moji_16)
3890 '******************************************************
3900 '17画の文字                                           *
3910 '******************************************************
3920 dim buf_char_hiragana17$(Moji_17)
3930 '******************************************************
3940 '18画の文字                                           *
3950 '******************************************************
3960 dim buf_char_hiragana18$(Moji_18)
3970 '******************************************************
3980 '19画の文字
3990 '******************************************************
4000 dim buf_char_hiragana19$(Moji_19)
4010 '******************************************************
4020 '20画の文字
4030 '******************************************************
4040 dim buf_char_hiragana20$(Moji_20)
4050 '******************************************************
4060 '21画の文字
4070 '******************************************************
4080 dim buf_char_hiragana21$(Moji_21)
4090 '******************************************************
4100 '22画の文字
4110 '******************************************************
4120 dim buf_char_hiragana22$(Moji_22)
4130 '******************************************************
4140 '23画の文字
4150 '*******************************************************
4160 dim buf_char_hiragana23$(Moji_23)
4170 '*******************************************************
4180 '24画の文字
4190 '*******************************************************
4200 dim buf_char_hiragana24$(Moji_24)
4210 '*******************************************************
4220 '25画の文字
4230 '*******************************************************
4240 dim buf_char_hiragana25$(Moji_25)
4250 '*******************************************************
4260 '26画の文字
4270 '*******************************************************
4280 dim buf_char_hiragana26$(Moji_26)
4290 '*******************************************************
4300 '27画の文字
4310 '*******************************************************
4320 dim buf_char_hiragana27$(Moji_27)
4330 '********************************************************
4340 '結果表示1　吉凶データー 81パターン
4350 dim buf_Kikkyo$(81)
4360 '結果表示２
4370 '安斎流姓名判断 吉凶  1.地運
4380 dim buf_Kikkyo_Anzai_chiunn$(70)
4390 '安斎流姓名判断　　吉凶  2.人運
4400 dim buf_Kikkyo_Anzai_jinunn$(69)
4410 '安斎流姓名判断 吉凶 3.外運
4420 'dim buf_Kikkyo_Anzai_gaiunn$(70)
4430 '安斎流姓名判断 吉凶　　4.総運
4440 dim buf_Kikkyo_Anzai_total$(80)
4450 '霊遺伝姓名学　変数
4460 A=0
4470 B=0
4480 C=0
4490 D=0
4500 '1.先祖運
4510 buffer_senzo=0
4520 '2.性格運
4530 buffer_seikaku=0
4540 '3.愛情運
4550 buffer_Aijyou=0
4560 '4.行動運
4570 buffer_Kouzou=0
4580 '1-1.先祖運　和数
4590 Senzo_wasu=0
4600 '1-2.先祖運　生数
4610 Senzo_seisu=0
4620 '2-1.性格運 和数
4630 Seikaku_wasu=0
4640 '2-2.性格運 生数
4650 Seikaku_seisu=0
4660 '3-1.愛情運 和数
4670 Aijyou_wasu=0
4680 '3-2.愛情運 生数
4690 Aijyou_seisu=0
4700 '4-1 行動運 和数
4710 Koudo_wasu=0
4720 '4-2 行動運 生数
4730 Koudo_seisu=0
4740 'データー読み込み　ここから
4750 'データー読み込み　1.ひらがな
4760 '1画の文字   6文字 23文字
4770 open KANJI_DATA$ + MOJIDATA$ for input as #1
4780 '全ファイルを読み込む
4790 for i = 0 to 26+Moji_total+27
4800 input #1,Moji_data$(i)
4810 next i
4820 close #1
4830 '全ファイル読み込み　ここまで
4840 for i = 27+1 to (Moji_1)+27+1
4850 '1画の文字にデーターをコピーする
4860 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4870 next i
4880 '2画の文字    98文字
4890 for i = Moji_Min_2  to (Moji_Max_2)
4900 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4910 next i
4920 '3文字の文字    77文字
4930 for i = Moji_Min_3  to (Moji_Max_3)
4940 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4950 next i
4960 '4文字の文字   80文字
4970 for i = (Moji_Min_4)  to (Moji_Max_4)
4980 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4990 next i
5000 '5文字の文字 77文字
5010 for i = Moji_Min_5 to (Moji_Max_5)
5020 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
5030 next i
5040 '6文字の文字 79文字
5050 for i = Moji_Min_6  to Moji_Max_6
5060 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
5070 next i
5080 '7文字の文字 170文字
5090 for i = Moji_Min_7 to Moji_Max_7
5100 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
5110 next i
5120 '8画の文字 120文字
5130 for i = Moji_Min_8 to Moji_Max_8
5140 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
5150 next i
5160 '9画の文字  103文字
5170 for i = Moji_Min_9 to Moji_Max_9
5180 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
5190 next i
5200 '10画の文字 285文字
5210 for i = Moji_Min_10 to (Moji_Max_10)
5220 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
5230 next i
5240 '11画の文字
5250 for i = Moji_Min_11 to Moji_Max_11
5260 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
5270 next i
5280 '12画の文字
5290 for i = Moji_Min_12 to Moji_Max_12
5300 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
5310 next i
5320 '13画の文字 81
5330 for i = Moji_Min_13 to Moji_Max_13
5340 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
5350 next i
5360 '14画の文字 66
5370 for i = Moji_Min_14 to Moji_Max_14
5380 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
5390 next i
5400 '15画の文字 59
5410 'for i = Moji_Min_15 to (Moji_Max_15) - 1
5420 for i=Moji_Min_15 to  Moji_Max_15
5430 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
5440 next i
5450 '16画の文字 44
5460 for i=Moji_Min_16 to Moji_Max_16
5470 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
5480 next i
5490 '17画の文字
5500 for i = Moji_Min_17 to Moji_Max_17
5510 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
5520 next i
5530 '18画の文字
5540 for i = Moji_Min_18 to Moji_Max_18
5550 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
5560 next i
5570 '19画の文字 17文字
5580 for i = Moji_Min_19 to Moji_Max_19
5590 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
5600 next i
5610 '20 画の文字 13文字
5620 for  i = Moji_Min_20 to Moji_Max_20
5630 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
5640 NEXT i
5650 '21画の文字 6
5660 for i = Moji_Min_21 to (Moji_Max_21)
5670 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
5680 next i
5690 '22 画の文字 4
5700 for i = Moji_Min_22 to Moji_Max_22
5710 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
5720 next i
5730 '23画の文字  3文字
5740 for i = Moji_Min_23 to Moji_Max_23
5750 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5760 next i
5770 '24画の文字  3文字
5780 for i = Moji_Min_24 to Moji_Max_24
5790 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5800 next i
5810 '25 画の文字 4
5820 for i = Moji_Min_25 to Moji_Max_25
5830 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5840 next i
5850 '26画の文字  3文字
5860 for i = Moji_Min_26 to Moji_Max_26
5870 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5880 next i
5890 '27画の文字  3文字
5900 for i = Moji_Min_27 to Moji_Max_27
5910 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5920 next i
5930 '吉凶データー読み込み
5940 '*********************************************************
5950 'フォルダ
5960 '*********************************************************
5970 'ファイル
5980 '*********************************************************
5990 'FULL PATH:"./config/Kikkyo_data/Kikkyo_data.dat"
6000 '*********************************************************
6010 KIKKYO_DATA_FOLDER$ = "config/Kikkyo_data/"
6020 '*********************************************************
6030 KIKKYO_DATA_FILE$ = "Kikkyo_data.dat"
6040 '*********************************************************
6050 open KIKKYO_DATA_FOLDER$ + KIKKYO_DATA_FILE$ for input as #1
6060 for i=0 to 80
6070 input #1,buf_Kikkyo$(i+1)
6080 next i
6090 close #1
6100 '***********************************************************
6110 'FULL PATH:"config/Kikkyo_data/Kikkyo_data.data"
6120 '******************************************************
6130 ANZAI_KIKKYO_CHIUNN_FILE$ = "Anzai_Kikkyo_chiunn.dat"
6140 '******************************************************
6150 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_CHIUNN_FILE$ for input as #2
6160 for m=0 to 69
6170 input #2,buf_Kikkyo_Anzai_chiunn$(m)
6180 next m
6190 close #2
6200 '******************************************************
6210 'FULL PAT:"./config/Kikkyo_data/Kikkyo_jiunn.dat"
6220 '******************************************************
6230 KIKKYO_JINUNN$ = "Anzai_Kikkyo_Jinunn.dat"
6240 '******************************************************
6250 open KIKKYO_DATA_FOLDER$ + KIKKYO_JINUNN$ for input as #3
6260 for i=1 to 70
6270 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
6280 next i
6290 close #3
6300 '**************************************************************
6310 'FULL PATH="./config/Kikkyo_data/Anzai_Kikkyo_Total.dat"
6320 '      ====>   KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$
6330 '**************************************************************
6340 'KIKKYO_DATA_FOLDER$ = "./config/Kikkyo_data/" (共通フォルダ)
6350 '**************************************************************
6360 ANZAI_KIKKYO_FILE$ = "Anzai_Kikkyo_Total.dat"
6370 '**************************************************************
6380 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$ for input as #4
6390 for i=0 to 79
6400 input #4,buf_Kikkyo_Anzai_total$(i)
6410 next i
6420 close #4
6430 '****************************************************
6440 '1.理解し合える最良のカップル　ここから           　*
6450 '****************************************************
6460 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6470 'GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6480 'FULL PATH="config/Anzai_Aisyou/Good_Couple1.dat"
6490 '****************************************************
6500 ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6510 GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6520 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE1_FILE$ for input as #1
6530 for i=0 to 19
6540 input #1,buf_good_couple1$
6550 buf_good_couple1(i) = val(buf_good_couple1$)
6560 next i
6570 close #1
6580 '********************************************************
6590 'FULL PATH = "config/Anzai_Aisyou/Good_Couple2.dat"
6600 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6610 'GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6620 '********************************************************
6630 GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6640 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE2_FILE$ for input as #1
6650 for j=0 to 19
6660 input #1,buf_good_couple2$
6670 buf_good_couple2(j) = val(buf_good_couple2$)
6680 next j
6690 close #1
6700 '*****************************************************
6710 '1.理解し合える最良のカップル ここまで                                   *
6720 '*****************************************************
6730 '*****************************************************
6740 '2.互いに自然体でつきあえる二人　ここから                               *
6750 '*****************************************************
6760 '*****************************************************
6770 'FULL PATH = "config/Anzai_Aisyou/Natural_Couple1.dat"
6780 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6790 'NATURAL_COUPLE_FILE$ ="Natural_Couple1.dat"
6800 'NATURAL_COUPLE2_FILE$="Natural_Couple2.dat"
6810 '*****************************************************
6820 NATURAL_COUPLE_FILE$ = "Natural_Couple1.dat"
6830 NATURAL_COUPLE2_FILE$ = "Natural_Couple2.dat"
6840 '*****************************************************
6850 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE_FILE$ for input as #1
6860 for i=0 to 19
6870 input #1,buf_natural_couple1$
6880 buf_natural_couple1(i) = val(buf_natural_couple1$)
6890 next i
6900 close #1
6910 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE2_FILE$ for input as #1
6920 for j=0 to 19
6930 input #1,buf_natural_couple2$
6940 buf_natural_couple2(j) = val(buf_natural_couple2$)
6950 next j
6960 close #1
6970 '*****************************************************
6980 '2.互いに自然体でつきあえる二人　ここまで                               *
6990 '*****************************************************
7000 '3.男性にとって居心地の良い相性                                      *
7010 '*****************************************************
7020 '******************************************************
7030 'FULL PATH="config/Anzai_Aisyou/Good_for_man1.dat"
7040 'FULL PATH="config/Anzai_Aisyou/Good_for_man2.dat"
7050 'GOOD_FOR_MAN_FILE$="God_for_man1.dat"
7060 GOOD_FOR_MAN1_FILE$ = "Good_for_man1.dat"
7070 GOOD_FOR_MAN2_FILE$ = "Good_for_man2.dat"
7080 '******************************************************
7090 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN1_FILE$ for input as #1
7100 for i=0 to 19
7110 input #1,buf_good_for_man1$
7120 buf_good_for_man1(i) = val(buf_good_for_man1$)
7130 next i
7140 close #1
7150 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN2_FILE$ for input as #1
7160 for j=0 to 19
7170 input #1,buf_good_for_man2$
7180 buf_good_for_man2(j) = val(buf_good_for_man2$)
7190 next j
7200 close #1
7210 '******************************************************
7220 '3.男性にとって居心地の良いカップル             　　                   　*
7230 '******************************************************
7240 '4.女性にとって居心地の良いカップル                                   *
7250 '******************************************************
7260 'FULL PATH = "config/Anzai_Aisyou/Good_for_woman1.dat"
7270 'GOOD_FOR_WOMAN1_FILE$="Good_for_woman1.dat"
7280 'GOOD_FOR_WOMAN2_FILE$="Good_for_woman2.dat"
7290 GOOD_FOR_WOMAN1_FILE$ = "Good_for_woman1.dat"
7300 GOOD_FOR_WOMAN2_FILE$ = "Good_for_woman2.dat"
7310 '*******************************************************
7320 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN1_FILE$ for input as #1
7330 for i=0 to 19
7340 input #1,buf_good_for_woman1$
7350 buf_good_for_woman1(i) = val(buf_good_for_woman1$)
7360 next i
7370 close #1
7380 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN2_FILE$ for input as #1
7390 for j=0 to 19
7400 input #1,buf_good_for_woman2$
7410 buf_good_for_woman2(j) = val(buf_good_for_woman2$)
7420 next j
7430 close #1
7440 '******************************************************
7450 '4.女性にとって居心地の良い相性                   　  *
7460 '******************************************************
7470 '5.恋愛経験を重ねた後なら愛を育める                   *
7480 '******************************************************
7490 'SHORT_OF_EXPERIENCE1_FILE$ = "Short_of_experience1.dat"
7500 'SHORT_OF_EXPERIENCE2_FILE$ ="Short_of_experience2.dat"
7510 '******************************************************
7520 SHORT_OF_EXPERIENCE1_FILE$="Short_of_experience1.dat"
7530 SHORT_OF_EXPERIENCE2_FILE$="Short_of_experience2.dat"
7540 '*******************************************************
7550 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE1_FILE$ for input as #1
7560 for i=0 to 19
7570 input #1,buf_short_of_experience1$
7580 buf_short_of_experience1(i) = val(buf_short_of_experience1$)
7590 next i
7600 close #1
7610 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE2_FILE$ for input as #1
7620 for j=0 to 19
7630 input #1,buf_short_of_experience2$
7640 buf_short_of_experience2(j) = val(buf_short_of_experience2$)
7650 'buf_short_of_experience2(j)=val(buf_short_of_experience2$(j))
7660 next j
7670 close #1
7680 '******************************************************
7690 '5 恋愛経験を重ねた後なら愛を育める                   *
7700 '******************************************************
7710 '6.結婚への発展が困難なカップル  ここから             *
7720 '**********************************************************
7730 'DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7740 'DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7750 '**********************************************************
7760 DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7770 DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7780 '**********************************************************
7790 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE1_FILE$ for input as #1
7800 for i=0 to 19
7810 input #1,buf_difficult_for_couple1$
7820 buf_difficult_for_couple1(i) = val(buf_difficult_for_couple1$)
7830 next i
7840 close #1
7850 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE2_FILE$ for input as #1
7860 for j=0 to 19
7870 input #1,buf_difficult_for_couple2$
7880 buf_difficult_for_couple2(j) = val(buf_difficult_for_couple2$)
7890 next j
7900 close #1
7910 '******************************************************
7920 '6.結婚への発展が困難なカップル  ここまで             *
7930 '******************************************************
7940 '7.愛し方にズレが出る二人 ここから                    *
7950 '**********************************************************
7960 'FULL PATH = "config/Anzai_Aisyou/Differece_of_love1.dat"
7970 'DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7980 'DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7990 '***********************************************************
8000 DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
8010 DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
8020 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE1_FILE$ for input as #1
8030 for i=0 to 19
8040 input #1,buf_difference_of_love1$
8050 buf_difference_of_love1(i) = val(buf_difference_of_love1$)
8060 next i
8070 close #1
8080 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE2_FILE$ for input as #1
8090 for j=0 to 19
8100 input #1,buf_difference_of_love2$
8110 buf_difference_of_love2(j) = val(buf_difference_of_love2$)
8120 next j
8130 close #1
8140 '******************************************************
8150 '7.愛し方にズレが出る二人 ここまで                    *
8160 '******************************************************
8170 '8.互いの価値観が噛み合わない相性 ここから            *
8180 '**************************************************************
8190 'DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
8200 'DIFFRRENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
8210 '**************************************************************
8220 DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
8230 DIFFERENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
8240 '**************************************************************
8250 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN1_FILE$ for input as #1
8260 for i=0 to 19
8270 input #1,buf_difference_of_KachiKan1$
8280 buf_difference_of_KachiKan1(i) = val(buf_difference_of_KachiKan1$)
8290 next i
8300 close #1
8310 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN2_FILE$ for input as #1
8320 for j=0 to 19
8330 input #1,buf_difference_of_KachiKan2$
8340 buf_difference_of_KachiKan2(j) = val(buf_difference_of_KachiKan2$)
8350 next j
8360 close #1
8370 '******************************************************
8380 '8.互いの価値観が噛み合わない相性 ここまで            *
8390 '******************************************************
8400 '相性占いタイプ ここから                              *
8410 '******************************************************
8420 'RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8430 RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8440 '******************************************************
8450 open ANZAI_AISYOU_FOLDER$ + RESULT_AISYOU_TYPE_FILE$ for input as #1
8460 for i=0 to 7
8470 line input #1,Result_Aisyou_type$(i)
8480 next i
8490 close #1
8500 '****************************************************
8510 'Data文  ここから                                　 *
8520 '****************************************************
8530 '1.理解し合えるカップル　ここから                   *
8540 '****************************************************
8550 'data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
8560 'data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
8570 '****************************************************
8580 '1.理解し合えるカップル　ここまで                   *
8590 '****************************************************
8600 '2.互いに自然体でつきあえるカップル ここから        *
8610 '****************************************************
8620 'data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
8630 'data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
8640 '****************************************************
8650 '2.互いに自然体でつきあえるカップル　ここまで        *
8660 '****************************************************
8670 '3.男性にとって居心地の良いカップル  ここから       *
8680 '****************************************************
8690 'data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8700 'data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8710 '****************************************************
8720 '3.男性にとって居心地の良いカップル ここまで        *
8730 '****************************************************
8740 '4.女性にとって居心地の良いカップル  ここから       *
8750 '****************************************************
8760 'data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
8770 'data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
8780 '****************************************************
8790 '4.女性にとって居心地の良いカップル  ここまで       *
8800 '****************************************************
8810 '5.恋愛経験を重ねた後なら愛を育める ここから        *
8820 '****************************************************
8830 'data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8840 'data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8850 '****************************************************
8860 '5.恋愛経験を重ねた後なら愛を育める ここまで        *
8870 '****************************************************
8880 '6.結婚への発展が困難なカップル ここから            *
8890 '****************************************************
8900 'data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8910 'data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8920 '****************************************************
8930 '6.結婚への発展が困難なカップル ここまで            *
8940 '****************************************************
8950 '7.愛し方にズレが生じる二人  ここから               *
8960 '****************************************************
8970 'data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
8980 'data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
8990 '****************************************************
9000 '7.愛し方にずれが生じる二人  ここまで                               *
9010 '****************************************************
9020 '8.互いに価値観が噛み合わない相性　ここから                             *
9030 '****************************************************
9040 'data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
9050 'data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
9060 '****************************************************
9070 '8.互いに価値観が噛み合わない相性 ここまで         *
9080 '****************************************************
9090 '相性占い結果パターン ここから                    　*
9100 '****************************************************
9110 '0:理解し合える最良のカップル                        *
9120 '****************************************************
9130 'data "理解し合える最良のカップル"
9140 '****************************************************
9150 '1:互いに自然体で付き合えるカップル                 *
9160 '****************************************************
9170 'data "互いに自然体でつきあえるカップル"
9180 '****************************************************
9190 '2:男性にとって居心地の良い相性                   　*
9200 '****************************************************
9210 'data "男性にとって居心地の良い相性"
9220 '****************************************************
9230 '3:女性にとって居心地の良い相性                   　*
9240 '****************************************************
9250 'data "女性にとって居心地の良い相性"
9260 '****************************************************
9270 '4:恋愛経験を重ねた後なら愛を育める                 *
9280 '****************************************************
9290 'data "恋愛経験を重ねた後なら愛を育める"
9300 '****************************************************
9310 '5:結婚への発展が困難なカップル                     *
9320 '****************************************************
9330 'data "結婚への発展が困難なカップル"
9340 '****************************************************
9350 '6:愛し方にズレが生じる二人                         *
9360 '****************************************************
9370 'data "愛し方にずれが生じる二人"
9380 '****************************************************
9390 '7:互いに価値観が噛み合わない相性                   *
9400 '****************************************************
9410 'data "互いの価値観が噛み合わない相性"
9420 '************************************************
9430 'Data文   ここまで                              *
9440 '************************************************
9450 '相性占い結果パターン ここまで
9460 '*******************************
9470 '*****************************************************
9480 'メイン画面 Top画面1
9490 Main_Screen1:
9500 cls 3:talk "":font 48:color rgb(255,255,255)
9510 talk "メイン画面です。番号を選んでください"
9520 'グラフィック領域　ここから
9530 line (0,0)-(1080,60),rgb(0,0,255),bf
9540 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
9550 line (0,60)-(1080,560),rgb(127,255,212),bf
9560 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
9570 line (0,560)-(1080,740),rgb(0,255,0),bf
9580 'グラフィック領域 ここまで
9590 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
9600 Font 48
9610 '************************************************
9620 'Sprite                                         *
9630 '************************************************
9640 sp_on 0,1:sp_on 1,0:sp_on 2,0
9650 sp_put 0,(10,100),0,0
9660 '************************************************
9670 No=0:init"kb:4":y=0:key$="":bg=0
9680 print "◎姓名判断　メイン画面" + chr$(13)
9690 '************************************************
9700 '文字色:黒                                          *
9710 '************************************************
9720 color rgb(255,0,255)
9730 print " :1.姓名判断" + chr$(13)
9740 print " :2.姓名判断の設定" + chr$(13)
9750 print " :3.個人データーリスト" + chr$(13)
9760 print " :4.ヘルプ" + chr$(13)
9770 print " :5.プログラムの終了" + chr$(13)
9780 '*************************************************
9790 '文字:黒                                            *
9800 '*************************************************
9810 color rgb(0,0,0)
9820 locate 0,12
9830 print "1.姓名判断を選択" + chr$(13)
9840 Main_Screen2:
9850 y=0:key$="":bg=0
9860 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
9870 y=stick(1)
9880 key$=inkey$
9890 bg=strig(1)
9900 pause 2.55*100
9910 wend
9920 '**************************************************
9930 '1.下のキー  ここから
9940 '**************************************************
9950 if (y = 1 or key$ = chr$(31)) then
9960 select case No
9970 case 0:
9980 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9990 case 1:
10000 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
10010 case 2:
10020 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
10030 case 3:
10040 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
10050 case 4:
10060 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
10070 end select
10080 endif
10090 '***************************************************
10100 '1. 下のキー　ここまで
10110 '***************************************************
10120 '***************************************************
10130 '2.上のキー ここから
10140 '***************************************************
10150 if (key$ = chr$(30) or y = -1) then
10160 select case No
10170 case 0:
10180 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
10190 case 1:
10200 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
10210 case 2:
10220 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
10230 case 3:
10240 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
10250 case 4:
10260 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
10270 end select
10280 endif
10290 '***************************************************
10300 '3.決定ボタン ここから
10310 '***************************************************
10320 if (bg = 2 or key$ = chr$(13)) then
10330 select case No
10340 case 0:
10350 sp_on 0,0:goto seimeihandan_top:
10360 case 1:
10370 sp_on 1,0:goto seimeihandan_setting:
10380 case 2:
10390 sp_on 2,0:goto Parsonal_data_top:
10400 case 3:
10410 sp_on 3,0: goto help:
10420 case 4:
10430 sp_on 4,0:talk "プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
10440 end select
10450 endif
10460 '***************************************************
10470 '3.決定ボタン ここまで
10480 '***************************************************
10490 '1.姓名判断トップ画面
10500 seimeihandan_top:
10510 cls:talk ""
10520 No=0:y=0:key$="":bg=0:talk""
10530 'タイトル文字:白
10540 font 48:color rgb(255,255,255),,rgb(176,196,222)
10550 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
10560 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
10570 sp_put 0,(10,100),0,0
10580 'グラフィック 描画領域　ここから
10590 cls 3
10600 '1.Title:青
10610 'Line 1
10620 line (0,0)-(1080,60),rgb(0,0,255),bf
10630 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
10640 'Line 2
10650 line (0,60)-(1080,450),rgb(127,255,212),bf
10660 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
10670 'Line 3
10680 line (0,450)-(1080,600),rgb(0,255,0),bf
10690 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
10700 'グラフィック 描画領域 ここまで
10710 color rgb(255,255,255)
10720 print"◎姓名判断の種類トップメニュー"+chr$(13)
10730 color rgb(255,0,255):print" :1.霊遺伝姓名学(1種類の占い)"+chr$(13)
10740 color rgb(255,0,255):print" :2.安斎流姓名判断(3種類の占い)"+chr$(13)
10750 COLOR rgb(255,0,255):print" :3.九星姓名判断(3種類の占い)"+chr$(13)
10760 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10770 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
10780 seimeihandan_top2:
10790 y=0:key$="":bg=0
10800 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
10810 key$=inkey$
10820 y=stick(1)
10830 bg=strig(1)
10840 pause 2.55*100
10850 wend
10860 '*************************************************
10870 '下のキー  ここから
10880 '*************************************************
10890 if (key$ = chr$(31) or y = 1) then
10900 select case No
10910 case 0:
10920 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10930 case 1:
10940 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10950 case 2:
10960 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10970 case 3:
10980 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10990 end select
11000 endif
11010 '*************************************************
11020 '下のキー　ここまで
11030 '*************************************************
11040 if (key$ = chr$(30) or y = -1) then
11050 select case No
11060 case 0:
11070 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
11080 case 1:
11090 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
11100 case 2:
11110 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
11120 case 3:
11130 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
11140 end select
11150 endif
11160 '*************************************************
11170 '決定ボタン　ここから
11180 '*************************************************
11190 if (bg = 2 or key$ = chr$(13)) then
11200 select case No
11210 case 0:
11220 sp_on 0,0:goto Reiden_Top_Input_Sextype:
11230 case 1:
11240 sp_on 1,0:goto Anzai_Top:
11250 case 2:
11260 sp_on 2,0:goto Kyusei_Top:
11270 case 3:
11280 sp_on 3,0:goto Main_Screen1:
11290 end select
11300 endif
11310 '*************************************************
11320 '決定ボタン　ここまで
11330 '*************************************************
11340 '１．姓名判断(九星姓名判断トップ)
11350 'グラフィック領域　ここから
11360 Kyusei_Top:
11370 cls 3:No = 0:y = 0:bg = 0:key$ = "":talk""
11380 sp_on 0,1:sp_put 0,(10,100),0,0
11390 line (0,0)-(1080,60),rgb(0,0,250),bf
11400 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11410 line (0,60)-(1080,460),rgb(127,255,212),bf
11420 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
11430 line (0,460)-(1080,680),rgb(0,255,0),bf
11440 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
11450 'グラフィック領域　ここまで
11460 font 48:color rgb(255,255,255),,rgb(176,196,222)
11470 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
11480 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
11490 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
11500 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
11510 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
11520 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
11530 locate 0,10:color RGB(0,0,0)
11540 print "1.人名の吉凶を見るを選択"
11550 Kyusei_Top2:
11560 bg = 0:key$ = "":y = 0
11570 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
11580 key$ = inkey$
11590 y = stick(1)
11600 bg = strig(1)
11610 pause 2.50 * 100
11620 wend
11630 '****************************************************
11640 '下のキー　ここから
11650 '*****************************************************
11660 if (y = 1 or key$ = chr$(30)) then
11670 select case No
11680 case 0:
11690 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11700 case 1:
11710 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11720 case 2:
11730 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11740 case 3:
11750 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
11760 end select
11770 endif
11780 '*****************************************************
11790 '下のキー　ここまで
11800 '*****************************************************
11810 '*****************************************************
11820 '上のキー　ここから
11830 '*****************************************************
11840 if (y = -1 or key$ = chr$(31)) then
11850 select case No
11860 case 0:
11870 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11880 case 1:
11890 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
11900 case 2:
11910 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11920 case 3:
11930 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11940 end select
11950 endif
11960 '*****************************************************
11970 '上のキー　ここまで
11980 '*****************************************************
11990 '*****************************************************
12000 '決定ボタン　ここから
12010 '*****************************************************
12020 if (key$ = chr$(13) or bg = 2) then
12030 select case No
12040 case 0:
12050 sp_on 0,0:goto Parson_name_kikkyo:
12060 case 1:
12070 sp_on 1,0:goto nick_name_check:
12080 case 2:
12090 sp_on 2,0:goto name_inyo_check:
12100 case 3:
12110 sp_on 3,0:goto seimeihandan_top:
12120 end select
12130 endif
12140 '*****************************************************
12150 '決定ボタン　ここまで
12160 '*****************************************************
12170 '2.姓名判断 安斎流姓名判断　トップ画面
12180 '2-1名前の姓の部分を入力
12190 'グラフィック領域　ここから
12200 Anzai_Top_Screen:
12210 cls 3:LINE (0,0) - (1080,60),rgb(0,0,255),bf
12220 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
12230 line (0,60) - (1080,260),rgb(127,255,212),bf
12240 pen 5:line(0,57) - (1077,257),rgb(0,0,255),b
12250 line (0,260) - (1080,350),rgb(0,255,0),bf
12260 pen 5:line(0,257) - (1077,347),rgb(0,0,255),b
12270 font 48:talk "":init "KB:2"
12280 'グラフィック領域 ここまで
12290 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
12300 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
12310 COLOR rgb(255,0,255)
12320 print"名前を2回に分けて入力してください"+chr$(13)
12330 print"名前の姓の部分を入れてください"+chr$(13)
12340 color rgb(0,0,0)
12350 input"名前の姓:",bufname$
12360 buff1=len(bufname$)
12370 '2-2名前の名の部分を入力
12380 'グラフィック描画領域　ここから
12390 cls 3:init"kb:2"
12400 line (0,0) - (1080,60),rgb(0,0,255),bf
12410 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
12420 line (0,60) - (1080,200),rgb(127,255,212),bf
12430 pen 5:line(0,57) - (1077,197),rgb(0,0,255),b
12440 line (0,200) - (1080,260),rgb(0,255,0),bf
12450 pen 5:line(0,197) - (1077,257),rgb(0,0,255),b
12460 'グラフィック描画領域 ここまで
12470 COLOR rgb(255,255,255)
12480 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
12490 talk"つぎに、名前のめいの部分を入れてください"
12500 color rgb(255,0,255)
12510 print"名前の名の部分を入れてください"+chr$(13)
12520 color rgb(0,0,0)
12530 input"名前の名:",bufname2$
12540 buff2 = len(bufname2$)
12550 bufff = buff1 + buff2
12560 select case bufff
12570 '姓1文字,名1文字
12580 case 2:
12590 cls
12600 '天運:buf_tenunn
12610 buf_tenunn = char_count(bufname$)
12620 '地運:buf_chiunn
12630 buf_chiunn = char_count(bufname2$)
12640 '人運 = 天運 + 地運
12650 buf_jinunn = buf_tenunn + buf_chiunn
12660 '外運 = 天運 + 人運
12670 buf_gaiunn = buf_tenunn + buf_chiunn
12680 '総数=buf_gaiunn
12690 buf_total = buf_gaiunn
12700 goto Result_Anzai:
12710 '姓１，名:2
12720 case 3:
12730 cls:
12740 if buff1 = 1 and buff2 = 2 then
12750 '1.天運:buf_tenunn
12760 buf_tenunn = char_count(bufname$)
12770 '2文字目の文字
12780 bufer_name2$(0) = Mid$(bufname2$,1,1)
12790 '3文字目の文字
12800 bufer_name2$(1) = Mid$(bufname2$,2,1)
12810 '2.人運
12820 buf_jinunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
12830 '3.地運:buf_chiunn
12840 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
12850 '4外運:buf_gaiunn
12860 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
12870 '5.総数:buf_total
12880 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
12890 goto Result_Anzai:
12900 endif
12910 if buff1 = 2 and buff2 = 1 then
12920 bufer_name$(0) = Mid$(bufname$,1,1)
12930 bufer_name$(1) = Mid$(bufname$,2,1)
12940 bufer_name2$(0) = Mid$(bufname$,1,1)
12950 '1.天運
12960 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12970 '2.人運
12980 buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
12990 '3.地運
13000 buf_chiunn = char_count(bufer_name2$(0))
13010 '4.外運
13020 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(0))
13030 '5.総数
13040 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
13050 goto Result_Anzai:
13060 endif
13070 case 4:
13080 if buff1 = 2 and buff2 = 2 then
13090 bufer_name$(0) = Mid$(bufname$,1,1)
13100 bufer_name$(1) = Mid$(bufname$,2,1)
13110 bufer_name2$(0) = Mid$(bufname2$,1,1)
13120 bufer_name2$(1) = Mid$(bufname2$,2,1)
13130 '1.天運
13140 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
13150 '2.人運
13160 buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
13170 '3.地運
13180 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
13190 '4.外運
13200 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
13210 '5.総数
13220 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
13230 goto Result_Anzai:
13240 endif
13250 'パターン2 姓3文字 名1文字 total4文字
13260 if buff1 = 3 and buff2 = 1 then
13270 bufer_name$(0) = Mid$(bufname$,1,1)
13280 bufer_name$(1) = Mid$(bufname$,2,1)
13290 bufer_name$(2) = Mid$(bufname$,3,1)
13300 bufer_name2$(0) = Mid$(bufname2$,1,1)
13310 '1.天運
13320 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
13330 '2.人運
13340 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13350 '3.地運
13360 buf_chiunn=char_count(bufer_name2$(0))
13370 '4.外運
13380 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
13390 '5.総運
13400 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13410 goto Result_Anzai:
13420 endif
13430 'パターン３ 姓1,名３  合計４文字
13440 if buff1=1 and buff2=3 then
13450 bufer_name$(0) = Mid$(bufname$,1,1)
13460 bufer_name2$(0) = Mid$(bufname2$,1,1)
13470 bufer_name2$(1) = Mid$(bufname2$,2,1)
13480 bufer_name2$(2) = Mid$(bufname2$,3,1)
13490 '1.天運
13500 buf_tenunn = char_count(bufer_name$(0))
13510 '2.人運
13520 buf_jinunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(0))
13530 '3.地運
13540 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13550 '4.外運
13560 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13570 '5.総運
13580 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13590 goto Result_Anzai:
13600 endif
13610 case 5:
13620 '５文字の名前
13630 '1.  3文字姓 2字名
13640 if buff1 = 3 and buff2 = 2 then
13650 bufer_name$(0) = Mid$(bufname$,1,1)
13660 bufer_name$(1) = Mid$(bufname$,2,1)
13670 bufer_name$(2) = Mid$(bufname$,3,1)
13680 bufer_name2$(0) = Mid$(bufname2$,1,1)
13690 bufer_name2$(1) = Mid$(bufname2$,2,1)
13700 '1.天運
13710 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
13720 '2.人運
13730 buf_jinunn = char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
13740 '3.地運
13750 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
13760 '4.外運
13770 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1))
13780 '5.総運
13790 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
13800 goto Result_Anzai:
13810 endif
13820 if buff1 = 2 and buff2 = 3 then
13830 bufer_name$(0) = Mid$(bufname$,1,1)
13840 bufer_name$(1) = Mid$(bufname$,2,1)
13850 bufer_name2$(0) = Mid$(bufname2$,1,1)
13860 bufer_name2$(1) = Mid$(bufname2$,2,1)
13870 bufer_name2$(2) = Mid$(bufname2$,3,1)
13880 '1.天運
13890 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
13900 '2.人運
13910 buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
13920 '3.地運
13930 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13940 '4.外運
13950 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13960 '5.総運
13970 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
13980 goto Result_Anzai:
13990 endif
14000 if buff1 = 4 and buff2 = 1 then
14010 bufer_name$(0) = Mid$(bufname$,1,1)
14020 bufer_name$(1) = mid$(bufname$,2,1)
14030 bufer_name$(2) = mid$(bufname$,3,1)
14040 bufer_name$(3) = mid$(bufname$,4,1)
14050 bufer_name2$(0) = mid$(bufname2$,1,1)
14060 '1.天運
14070 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
14080 '2.人運
14090 buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
14100 '3.地運
14110 buf_chiunn = char_count(bufer_name2$(0))
14120 '4.外運
14130 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
14140 '5.総運
14150 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
14160 goto Result_Anzai:
14170 endif
14180 case 6:
14190 '3字姓 3字名
14200 if buff1 = 3 and buff2 = 3 then
14210 bufer_name$(0) = Mid$(bufname$,1,1)
14220 bufer_name$(1) = Mid$(bufname$,2,1)
14230 bufer_name$(2) = Mid$(bufname$,3,1)
14240 bufer_name2$(0) = Mid$(bufname2$,1,1)
14250 bufer_name2$(1) = Mid$(bufname2$,2,1)
14260 bufer_name2$(2) = Mid$(bufname2$,3,1)
14270 '1.天運
14280 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
14290 '2.人運
14300 buf_jinunn = char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
14310 '3.地運
14320 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14330 '4.外運
14340 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14350 '5.総運
14360 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14370 goto Result_Anzai:
14380 endif
14390 '4字姓 2字名
14400 if buff1 = 4 and buff2 = 2 then
14410 bufer_name$(0) = Mid$(bufname$,1,1)
14420 bufer_name$(1) = Mid$(bufname$,2,1)
14430 bufer_name$(2) = Mid$(bufname$,3,1)
14440 bufer_name$(3) = Mid$(bufname$,4,1)
14450 bufer_name2$(0) = Mid$(bufname2$,1,1)
14460 bufer_name2$(1) = Mid$(bufname2$,2,1)
14470 '1.天運
14480 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
14490 '2.人運
14500 buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
14510 '3.地運
14520 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
14530 '4.外運
14540 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1))
14550 '5.総運
14560 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
14570 goto Result_Anzai:
14580 endif
14590 '4字姓 3字名
14600 case 7:
14610 if buff1 = 4 and buff2 = 3 then
14620 bufer_name$(0) = Mid$(bufname$,1,1)
14630 bufer_name$(1) = Mid$(bufname$,2,1)
14640 bufer_name$(2) = Mid$(bufname$,3,1)
14650 bufer_name$(3) = Mid$(bufname$,4,1)
14660 bufer_name2$(0) = Mid$(bufname2$,1,1)
14670 bufer_name2$(1) = Mid$(bufname2$,2,1)
14680 bufer_name2$(2) = Mid$(bufname2$,3,1)
14690 '1.天運
14700 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
14710 '2.人運
14720 buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
14730 ' 3.地運
14740 buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2)) + char_count(bufer_name2$(3))
14750 '4.外運
14760 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14770 '5.総運
14780 buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
14790 goto Result_Anzai:
14800 endif
14810 case else:
14820 end select
14830 '2.設定
14840 seimeihandan_setting:
14850 font 46:color rgb(0,0,0),,rgb(176,196,222)
14860 No=0:y=0:key$="":bg=0:talk""
14870 sp_on 0,1:sp_put 0,(10,100),0,0
14880 talk"設定画面です。番号を選んでエンターキーを押してください"
14890 'グラフィック領域　ここから
14900 cls 3:
14910 line (0,0)-(1080,60),rgb(0,0,255),bf
14920 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
14930 line (0,60)-(1080,560),rgb(127,255,212),bf
14940 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
14950 line (0,560)-(1080,750),rgb(0,255,0),bf
14960 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14970 'グラフィック領域 ここまで
14980 '1行目　文字色　 白
14990 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
15000 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
15010 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
15020 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
15030 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
15040 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
15050 COLOR rgb(0,0,0):locate 0,12:
15060 print"1.登録文字の確認を選択"+chr$(13)
15070 seimeihandan_setting2:
15080 y=0:key$="":bg=0
15090 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
15100 key$ = inkey$
15110 y = stick(1)
15120 bg = strig(1)
15130 pause 2.50 * 100
15140 wend
15150 '****************************************************
15160 '1.下のカーソル　ここから
15170 '****************************************************
15180 if (key$ = chr$(31) or y = 1) then
15190 select case No
15200 case 0:
15210 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
15220 case 1:
15230 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15240 case 2:
15250 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15260 case 3:
15270 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15280 case 4:
15290 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15300 end select
15310 endif
15320 '*****************************************************
15330 '1.下のカーソル　ここまで
15340 '*****************************************************
15350 '*****************************************************
15360 '2.上のカーソル　ここから
15370 '*****************************************************
15380 if (key$ = chr$(30) or y = -1) then
15390 select case No
15400 case 0:
15410 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15420 case 1:
15430 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15440 case 2:
15450 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
15460 case 3:
15470 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15480 case 4:
15490 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15500 end select
15510 endif
15520 '******************************************************
15530 '2.上のカーソル　ここまで
15540 '******************************************************
15550 '******************************************************
15560 '3.決定ボタン　ここから
15570 '******************************************************
15580 if (key$ = chr$(13) or bg = 2) then
15590 select case No
15600 case 0:
15610 sp_on 0,0:goto Entry_moji_Top:
15620 case 1:
15630 sp_on 1,0:goto Entry_moji_check:
15640 case 2:
15650 sp_on 2,0:goto Moji_Kikkyo_Top:
15660 case 3:
15670 sp_on 3,0:goto Main_Screen1:
15680 case 4:
15690 sp_on 4,0:talk "プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
15700 end select
15710 endif
15720 '******************************************************
15730 '3.決定ボタン　ここまで
15740 '******************************************************
15750 '3 番号で吉凶を見る 入力
15760 Moji_Kikkyo_Top:
15770 font 46:color rgb(0,0,0),,rgb(176,196,222)
15780 init "kb:2"
15790 'グラフィック描画領域　ここから
15800 cls 3:talk""
15810 line (0,0)-(1080,60),rgb(0,0,255),bf
15820 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
15830 line (0,60)-(1080,255),rgb(127,255,212),bf
15840 PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
15850 line (0,255)-(1080,350),rgb(0,255,0),bf
15860 pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
15870 'グラフィック描画領域 ここまで
15880 color rgb(255,255,255)
15890 print"画数での吉凶判定"+chr$(13)
15900 color rgb(255,0,255)
15910 print"画数を入れてください"+chr$(13)
15920 print"(Max:81文字)"+chr$(13)
15930 color rgb(0,0,0)
15940 Input"文字の画数:",Number
15950 if Number > 81 then goto Moji_Kikkyo_Top:
15960 if Number <=81 then goto Moji_Kikkyo:
15970 '3.番号で吉凶を見る 結果表示
15980 'グラフィック描画領域　ここから
15990 Moji_Kikkyo:
16000 cls 3:init "kb:4":key$ = "":bg = 0
16010 line (0,0)-(700,60),rgb(0,0,255),bf
16020 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
16030 line (0,60)-(700,260),rgb(127,255,212),bf
16040 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
16050 line (0,260)-(700,350),rgb(0,255,0),bf
16060 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
16070 'グラフィック描画領域　ここまで
16080 color rgb(255,255,255)
16090 print "画数で吉凶を求める"+chr$(13)
16100 color rgb(255,0,255)
16110 talk str$(Number) + "画のきっきょうは、" + buf_Kikkyo$(Number+2) + "です"
16120 print"画数:";Number;chr$(13):print "吉凶:";buf_Kikkyo$(Number+2);chr$(13)
16130 while (key$<>chr$(13) and bg <> 2)
16140 key$ = inkey$
16150 bg = strig(1)
16160 pause 2.50 * 100
16170 wend
16180 If (key$ = chr$(13) or bg = 2) then goto seimeihandan_setting:
16190 '3.ヘルプ
16200 help:
16210 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
16220 No = 0:y = 0:key$ = "":bg = 0
16230 talk""
16240 '描画領域 ここから
16250 line (0,0) - (1080,60),rgb(0,0,255),bf
16260 sp_on 0,1:sp_put 0,(10,100),0,0
16270 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
16280 line (0,60) - (1080,570),rgb(127,255,212),bf
16290 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
16300 line (0,570) - (1080,650),rgb(0,255,0),bf
16310 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
16320 '描画領域　ここまで
16330 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
16340 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
16350 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
16360 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
16370 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
16380 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
16390 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
16400 color rgb(0,0,0)
16410 locate 0,12:print "1.バージョン情報を選択"
16420 help2:
16430 y = 0:key$ = "":bg = 0
16440 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
16450 key$ = inkey$
16460 y = stick(1)
16470 bg = strig(1)
16480 pause 2.50 * 100
16490 wend
16500 if (y = 1 or key$ = chr$(30)) then
16510 select case No
16520 case 0:
16530 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
16540 case 1:
16550 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
16560 case 2:
16570 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
16580 case 3:
16590 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
16600 case 4:
16610 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
16620 end select
16630 endif
16640 if (y = -1 or key$ = chr$(31)) then
16650 select case No
16660 case 0:
16670 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
16680 case 1:
16690 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
16700 case 2:
16710 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
16720 case 3:
16730 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
16740 case 4:
16750 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
16760 end select
16770 endif
16780 if (key$ = chr$(13) or bg = 2) then
16790 select case No
16800 case 0:
16810 sp_on 0,0:goto Version_info:
16820 case 1:
16830 sp_on 1,0:goto Document_info:
16840 case 2:
16850 sp_on 2,0:goto Config_Setting:
16860 case 4:
16870 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16880 case 3:
16890 sp_on 3,0:goto Main_Screen1:
16900 end select
16910 endif
16920 'Menu1　画面
16930 talk"調べたい名前のみよじをいれてください"
16940 'グラフィック描画領域　ここから
16950 Parson_name_kikkyo:
16960 cls 3:init "KB:2"
16970 line (0,0)-(1080,60),rgb(0,0,255),bf
16980 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16990 line (0,60)-(1080,180),rgb(127,255,212),bf
17000 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
17010 line (0,180)-(1080,250),rgb(0,255,0),bf
17020 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
17030 'グラフィック描画領域　ここまで
17040 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
17050 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
17060 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
17070 cls
17080 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
17090 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
17100 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
17110 goto complate_Kyusei:
17120 'メニュー6　バージョン表示
17130 'グラフィック　描画　領域　 ここから
17140 Version_info:
17150 cls 3:bg=0:talk ""
17160 line (0,0) - (1080,60),rgb(0,0,255),bf
17170 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
17180 line (0,60) - (1080,665),rgb(127,255,212),bf
17190 pen 5:line(0,57) - (1077,662),rgb(0,0,255),b
17200 line (0,665) - (1080,750),rgb(0,255,0),bf
17210 pen 5:line(0,662) - (1077,747),rgb(0,0,255),b
17220 'グラフィック　描画 領域　 ここまで
17230 color rgb(255,255,255):print"バージョン情報" + chr$(13)
17240 color rgb(255,0,255):print"姓名判断 3 in 1" + chr$(13)
17250 color rgb(255,0,255):PRINT"Ver:246.2024.01.12" + chr$(13)
17260 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字" + chr$(13)
17270 color rgb(255,0,255):print"アルファベット（大文字、小文字)" + chr$(13)
17280 color rgb(255,0,255):print"対応漢字画数：1画から24画まで" + chr$(13)
17290 color rgb(255,0,2550):print"制作開始:since 2019.04.07" + chr$(13)
17300 'ここを書き換える
17310 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.46です"
17320 color rgb(0,0,0):print"エンターキーを押してください"
17330 Version_info2:
17340 bg = 0
17350 while (bg <> 2)
17360 bg = strig(1)
17370 pause 2.50 * 100
17380 wend
17390 if bg = 2  then beep:goto Main_Screen1:
17400 complate_Kyusei:
17410 '文字数を求める変数
17420 buf_char_size=len(name$)
17430 buf_char_size2=len(name2$)
17440 '入力した文字を代入する変数
17450 '入力した文字を配列に代入する処理
17460 '姓名判断データー文字比較
17470 '画数を求める関数
17480 func char_count(buf_count$)
17490 count = 0:buffer = 0
17500 '1画の文字 23文字
17510 for j=0 to ((Moji_1)-1)
17520 if buf_count$=buf_char_hiragana1$(j) then
17530 count =1:
17540 endif
17550 next j
17560 '2画の文字
17570 for j=0 to ((Moji_2)-1)
17580 if buf_count$=buf_char_hiragana2$(j)  then
17590 count = 2:
17600 endif
17610 next j
17620 for j=0 to ((Moji_3)-1)
17630 if buf_count$=buf_char_hiragana3$(j) then
17640 count =3:
17650 endif
17660 next j
17670 for j=0 to ((Moji_4)-1)
17680 if buf_count$=buf_char_hiragana4$(j) then
17690 count = 4:
17700 endif
17710 next j
17720 for j=0 to ((Moji_5)-1)
17730 if buf_count$=buf_char_hiragana5$(j) then
17740 count = 5:
17750 endif
17760 next j
17770 for j=0 to ((Moji_6)-1)
17780 if buf_count$=buf_char_hiragana6$(j) then
17790 count= 6
17800 endif
17810 next j
17820 for  j=0 to ((Moji_7)-1)
17830 if buf_count$=buf_char_hiragana7$(j) then
17840 count=  7
17850 endif
17860 next j
17870 for j=0 to ((Moji_8)-1)
17880 if buf_count$=buf_char_hiragana8$(j) then
17890 count= 8
17900 endif
17910 next j
17920 for j=0 to ((Moji_9)-1)
17930 if buf_count$=buf_char_hiragana9$(j) then
17940 count=9
17950 endif
17960 next j
17970 for j=0 to ((Moji_10)-1)
17980 if buf_count$=buf_char_hiragana10$(j) then
17990 count=10
18000 endif
18010 next j
18020 for j=0 to ((Moji_11)-1)
18030 if buf_count$=buf_char_hiragana11$(j) then
18040 count=11
18050 endif
18060 next j
18070 for j=0 to  ((Moji_12)-1)
18080 if buf_count$=buf_char_hiragana12$(j) then
18090 count=12
18100 endif
18110 next j
18120 for j=0 to ((Moji_13)-1)
18130 if buf_count$=buf_char_hiragana13$(j) then
18140 count=13
18150 endif
18160 next j
18170 for j=0 to ((Moji_14)-1)
18180 if buf_count$=buf_char_hiragana14$(j) then
18190 count=14
18200 endif
18210 next j
18220 for j=0 to ((Moji_15)-1)
18230 if buf_count$=buf_char_hiragana15$(j) then
18240 count=15
18250 endif
18260 next j
18270 for j=0 to ((Moji_16)-1)
18280 if buf_count$=buf_char_hiragana16$(j) then
18290 count=16
18300 endif
18310 next j
18320 for j=0 to ((Moji_17)-1)
18330 if buf_count$=buf_char_hiragana17$(j) then
18340 count=17
18350 endif
18360 next j
18370 for j=0 to ((Moji_18)-1)
18380 if buf_count$=buf_char_hiragana18$(j) then
18390 count=18
18400 endif
18410 next j
18420 for j=0 to ((Moji_19)-1)
18430 if buf_count$=buf_char_hiragana19$(j) then
18440 count=19
18450 endif
18460 next j
18470 for j=0 to ((Moji_20)-1)
18480 if buf_count$=buf_char_hiragana20$(j) then
18490 count=20
18500 endif
18510 next i
18520 for j=0 to ((Moji_21)-1)
18530 if buf_count$=buf_char_hiragana21$(j) then
18540 count=21
18550 endif
18560 next j
18570 for j=0 to ((Moji_22)-1)
18580 if buf_count$=buf_char_hiragana22$(j) then
18590 count=22
18600 endif
18610 next j
18620 for j=0 to ((Moji_23)-1)
18630 if buf_count$=buf_char_hiragana23$(j) then
18640 count=23
18650 endif
18660 next j
18670 for j=0 to ((Moji_24)-1)
18680 if buf_count$=buf_char_hiragana24$(j) then
18690 count=24
18700 endif
18710 buffer = count
18720 next j
18730 endfunc buffer
18740 func show_sex_type$(sex$)
18750 buf_number=val(Mid$(sex$,4,1))
18760 if buf_number = 1 then
18770 buf_show_sex_type$="性別:女性"
18780 else
18790 if buf_number=2 then
18800 buf_show_sex_type$="性別:男性"
18810 endif
18820 endif
18830 endfunc buf_show_sex_type$
18840 '合計を求める関数
18850 func totalcounts(buffers$)
18860 buffers=0:
18870 for i=0 to len(buffers$)-1
18880 buffers=buffers+char_count(buffers$)
18890 next i
18900 endfunc buffers
18910 buf_count2=0:buf_count3=0
18920 '1.苗字の文字数
18930 for n=0 to (buf_char_size-1)
18940 buf_Input_data$(n)=mid$(name$,n+1,1)
18950 next n
18960 for i=0 to (buf_char_size-1)
18970 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18980 next i
18990 '2.名の文字数
19000 for n2=0 to (buf_char_size2-1)
19010 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
19020 next n2
19030 for i2=0 to (buf_char_size2-1)
19040 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
19050 next i2
19060 '総数を出す
19070 select case (buf_char_size + buf_char_size2)
19080 case 6:
19090 if ((buf_char_size=4) and (buf_char_size2=2)) then
19100 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19110 endif
19120 if ((buf_char_size=3) and (buf_char_size2=3)) then
19130 if buf_Input_data$(1)="々" then
19140 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19150 else
19160 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19170 endif
19180 endif
19190 case 5:
19200 if ((buf_char_size=4) and (buf_char_size2=1)) then
19210 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19220 endif
19230 if ((buf_char_size=2) and (buf_char_size2=3)) then
19240 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19250 endif
19260 if ((buf_char_size=3) and (buf_char_size2=2)) then
19270 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19280 endif
19290 case 4:
19300 if ((buf_char_size=1) and (buf_char_size2=3)) then
19310 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19320 endif
19330 if ((buf_char_size=2) and (buf_char_size2=2)) then
19340 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19350 endif
19360 if ((buf_char_size=3) and (buf_char_size2=1)) then
19370 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19380 endif
19390 case 3:
19400 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19410 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19420 endif
19430 if ((buf_char_size=2) and (buf_char_size2=1)) then
19440 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19450 endif
19460 case 2:
19470 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19480 case else:
19490 end select
19500 '文字の総数をだす
19510 total_name$ = name$ + name2$
19520 '1.姓星を求める
19530 select case buf_char_size
19540 '苗字1文字のとき
19550 case 1:
19560 buf_seisei = char_count(buf_Input_data$(0)) + 1
19570 '苗字2文字の時
19580 case 2:
19590 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
19600 '苗字3文字のとき
19610 case 3:
19620 if (buf_Input_data$(1)="々")  then
19630 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
19640 else
19650 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
19660 endif
19670 '苗字4文字のとき
19680 case 4:
19690 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
19700 case else:
19710 end select
19720 '2.主星をだす
19730 '2.主星
19740 select case (buf_char_size + buf_char_size2)
19750 '姓名5文字のとき
19760 case 6:
19770 if ((buf_char_size=4) and (buf_char_size2=2)) then
19780 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19790 endif
19800 if ((buf_char_size=3) and (buf_char_size2=3)) then
19810 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19820 endif
19830 case 5:
19840 if ((buf_char_size=4) and (buf_char_size2=1)) then
19850 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19860 endif
19870 if ((buf_char_size=2) and (buf_char_size2=3)) then
19880 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19890 endif
19900 if ((buf_char_size=3) and (buf_char_size2=2)) then
19910 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19920 endif
19930 '姓名4文字のとき
19940 case 4:
19950 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19960 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19970 endif
19980 if ((buf_char_size=1) and (buf_char_size2=3)) then
19990 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
20000 endif
20010 if ((buf_char_size=3) and (buf_char_size2=1)) then
20020 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
20030 endif
20040 '姓名3文字のとき
20050 case 3:
20060 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
20070 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
20080 else
20090 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
20100 endif
20110 case 2:
20120 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
20130 case else:
20140 end select
20150 '3.名星を求める
20160 select case (buf_char_size + buf_char_size2)
20170 case 6:
20180 if ((buf_char_size=3) and (buf_char_size2=3)) then
20190 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20200 endif
20210 if ((buf_char_size=4) and (buf_char_size2=2)) then
20220 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20230 endif
20240 case 5:
20250 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
20260 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20270 endif
20280 if ((buf_char_size=3) and (buf_char_size2=2)) then
20290 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20300 endif
20310 if ((buf_char_size=2) and (buf_char_size2=3))  then
20320 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20330 endif
20340 case 4:
20350 if ((buf_char_size=2) and (buf_char_size2=2)) then
20360 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
20370 endif
20380 if ((buf_char_size=1) and (buf_char_size2=3)) then
20390 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
20400 endif
20410 if ((buf_char_size=3) and (buf_char_size2=1)) then
20420 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20430 endif
20440 case 3:
20450 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20460 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20470 endif
20480 if ((buf_char_size=2) and (buf_char_size2=1)) then
20490 buf_meisei=char_count(buf_Input_data2$(0))+1
20500 endif
20510 case 2:
20520 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20530 case else:
20540 end select
20550 '4.外星を求める
20560 select case (buf_char_size + buf_char_size2)
20570 case 6:
20580 if buf_Input_data$(1)="々"  then
20590 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20600 else
20610 if ((buf_char_size=4) and (buf_char_size2=2)) then
20620 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20630 else
20640 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20650 endif
20660 endif
20670 case 5:
20680 if ((buf_char_size=4) and (buf_char_size2=1)) then
20690 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
20700 endif
20710 if ((buf_char_size=3) and (buf_char_size2=2)) then
20720 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20730 endif
20740 if ((buf_char_size=2) and (buf_char_size2=3)) then
20750 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20760 endif
20770 case 4:
20780 if ((buf_char_size=2) and (buf_char_size2=2)) then
20790 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20800 endif
20810 if ((buf_char_size=1) and (buf_char_size2=3)) then
20820 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20830 endif
20840 if ((buf_char_size=3) and (buf_char_size2=1)) then
20850 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20860 endif
20870 case 3:
20880 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20890 buf_gaisei=1+char_count(buf_Input_data2$(1))
20900 endif
20910 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20920 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20930 endif
20940 case 2:
20950 buf_gaisei = 2
20960 case else:
20970 end select
20980 '診断結果表示
20990 '1.姓星を出す
21000 'グラフィック描画領域　ここから
21010 Result_Kyusei_Kikkyo:
21020 cls 3:font 32:bg = 0:key$="":init "kb:4":talk ""
21030 '縦の画面
21040 '1行目
21050 line (0,0) - (1500,60),rgb(0,0,255),bf
21060 pen 5:line(0,0) - (1497,57),rgb(127,255,212),b
21070 '2行目
21080 line (0,60) - (1500,425),rgb(127,255,212),bf
21090 pen 5:line(0,57) - (1497,422),rgb(0,0,255),b
21100 '3行目
21110 line (0,485) - (1500,425),rgb(0,255,0),bf
21120 pen 5:line(0,482) - (1497,422),rgb(0,0,255),b
21130 '横の画面　吉凶のランク表
21140 'グラフィック描画領域　ここまで
21150 talk"診断結果です":font 32
21160 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
21170 color Rgb(255,0,255)
21180 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
21190 '2.主星を出す
21200 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
21210 '3.名星を求める
21220 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
21230 '4.外星を求める
21240 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
21250 '5.総数を出す
21260 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
21270 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
21280 color rgb(0,0,0)
21290 print"エンターキーを押してください"
21300 while (key$ <> chr$(13) and bg <> 2)
21310 key$=inkey$
21320 bg=strig(1)
21330 pause 2.50*100
21340 wend
21350 if (key$ = chr$(13) or bg = 2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
21360 '2.主星を出す
21370 'メニュー3 登録文字の確認 ここから
21380 'グラフィック領域　ここから
21390 'タイトル青 文字:白
21400 Entry_moji_Top:
21410 talk ""
21420 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
21430 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
21440 line (0,62)-(1080,155),rgb(0,255,255),bf
21450 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
21460 line (0,155)-(1080,260),rgb(0,255,0),bf
21470 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
21480 'グラフィック領域　ここまで
21490 talk"調べたい文字をひと文字入れてください。":init "kb:2"
21500 '文字:白
21510 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
21520 '文字:アクア
21530 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
21540 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
21550 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
21560 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
21570 '1画の文字
21580 for i=0 to ((Moji_1) - 1)
21590 if (name$=buf_char_hiragana1$(i)) then
21600 buffer_count=1:goto Moji_count_check:
21610 endif
21620 next i
21630 '2画の文字
21640 for i=0 to ((Moji_2) - 1)
21650 if (name$=buf_char_hiragana2$(i)) then
21660 buffer_count=2:goto Moji_count_check:
21670 endif
21680 next i
21690 '3画の文字
21700 for i=0 to ((Moji_3) - 1)
21710 if (name$=buf_char_hiragana3$(i)) then
21720 buffer_count=3:goto Moji_count_check:
21730 endif
21740 next i
21750 '4画の文字
21760 for i=0 to ((Moji_4)-1)
21770 if (name$=buf_char_hiragana4$(i)) then
21780 buffer_count=4:goto Moji_count_check:
21790 endif
21800 next i
21810 '5画の文字
21820 for i=0 to ((Moji_5)-1)
21830 if (name$=buf_char_hiragana5$(i)) then
21840 buffer_count=5:goto Moji_count_check:
21850 endif
21860 next i
21870 '6画の文字
21880 for i=0 to ((Moji_6)-1)
21890 if (name$=buf_char_hiragana6$(i)) then
21900 buffer_count=6:goto Moji_count_check:
21910 endif
21920 next i
21930 '7画の文字
21940 for i=0 to ((Moji_7)-1)
21950 if (name$=buf_char_hiragana7$(i)) then
21960 buffer_count=7:goto Moji_count_check:
21970 endif
21980 next i
21990 '8画の文字 120 文字
22000 for i=0 to ((Moji_8)-1)
22010 if (name$=buf_char_hiragana8$(i)) then
22020 buffer_count=8:goto Moji_count_check:
22030 endif
22040 next i
22050 '9画の文字  103文字
22060 for i=0 to ((Moji_9)-1)
22070 if (name$=buf_char_hiragana9$(i)) then
22080 buffer_count=9:goto Moji_count_check:
22090 endif
22100 next i
22110 '10画の文字 98文字
22120 for i=0 to ((Moji_10)-1)
22130 if (name$=buf_char_hiragana10$(i)) then
22140 buffer_count=10:goto Moji_count_check:
22150 endif
22160 next i
22170 '11画の文字 98文字
22180 for i=0 to ((Moji_11)-1)
22190 if (name$=buf_char_hiragana11$(i)) then
22200 buffer_count=11:goto Moji_count_check:
22210 endif
22220 next i
22230 '12画の文字
22240 for i=0 to ((Moji_12)-1)
22250 if (name$=buf_char_hiragana12$(i)) then
22260 buffer_count=12:goto Moji_count_check:
22270 endif
22280 next i
22290 '13画の文字
22300 for i=0 to ((Moji_13)-1)
22310 if (name$=buf_char_hiragana13$(i)) then
22320 buffer_count=13:goto Moji_count_check:
22330 endif
22340 next i
22350 '14画の文字
22360 for i=0 to ((Moji_14)-1)
22370 if (name$=buf_char_hiragana14$(i)) then
22380 buffer_count=14:goto Moji_count_check:
22390 endif
22400 next i
22410 '15画の文字
22420 for i=0 to ((Moji_15)-1)
22430 if (name$=buf_char_hiragana15$(i)) then
22440 buffer_count=15:goto Moji_count_check:
22450 endif
22460 next i
22470 '16画の文字
22480 for i=0 to ((Moji_16)-1)
22490 if (name$=buf_char_hiragana16$(i)) then
22500 buffer_count=16:goto Moji_count_check:
22510 endif
22520 next i
22530 '17画の文字
22540 for i=0 to ((Moji_17)-1)
22550 if (name$=buf_char_hiragana17$(i)) then
22560 buffer_count=17:goto Moji_count_check:
22570 endif
22580 next i
22590 '18画の文字 25
22600 for i=0 to ((Moji_18)-1)
22610 if (name$=buf_char_hiragana18$(i)) then
22620 buffer_count=18:goto Moji_count_check:
22630 endif
22640 next i
22650 '19画の文字 17
22660 for i=0 to ((Moji_19)-1)
22670 if (name$=buf_char_hiragana19$(i)) then
22680 buffer_count=19:goto Moji_count_check:
22690 endif
22700 next i
22710 '20画の文字 13
22720 for i=0 to ((Moji_20)-1)
22730 if (name$=buf_char_hiragana20$(i)) then
22740 buffer_count=20:goto Moji_count_check:
22750 endif
22760 next i
22770 '21画の文字 6
22780 for i=0 to ((Moji_21)-1)
22790 if (name$=buf_char_hiragana21$(i)) then
22800 buffer_count=21:goto Moji_count_check:
22810 endif
22820 next i
22830 '22画の文字 4
22840 for i=0 to ((Moji_22)-1)
22850 if (name$=buf_char_hiragana22$(i)) then
22860 buffer_count=22:goto Moji_count_check:
22870 endif
22880 next i
22890 '23画の文字 3
22900 for i=0 to ((Moji_23)-1)
22910 if (name$=buf_char_hiragana23$(i)) then
22920 buffer_count=23:goto Moji_count_check:
22930 endif
22940 next i
22950 '24画の文字
22960 for i=0 to ((Moji_24)-1)
22970 if (name$=buf_char_hiragana24$(i)) then
22980 buffer_count=24:goto Moji_count_check:
22990 endif
23000 next i
23010 'Menu3 結果表示 画数の登録確認
23020 Moji_count_check:
23030 bg=0:init"kb:4"
23040 if (buffer_count = 0) then
23050 '登録文字がない場合の処理
23060 'グラフィック領域　ここから
23070 'Moji_count_check:
23080 cls 3:talk ""
23090 '1行
23100 line (0,0)-(1080,60),rgb(0,0,255),bf
23110 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
23120 '2行目
23130 line (0,60)-(1080,165),rgb(127,255,212),bf
23140 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
23150 '3行目
23160 line (0,165)-(1080,370),rgb(0,0,255),bf
23170 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
23180 '4行目
23190 line (0,370)-(1080,450),rgb(0,255,0),bf
23200 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
23210 'グラフィック領域　ここまで
23220 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
23230 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
23240 talk "この文字は、登録されていません"
23250 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
23260 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
23270 color rgb(0,0,0):print"コマンド:"
23280 while (bg <> 2 and key$ <> chr$(13))
23290 key$=inkey$
23300 bg=strig(1)
23310 pause 2.50*100
23320 wend
23330 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
23340 else
23350 'グラフィック描画領域　ここから
23360 'Entry_moji_check:
23370 cls 3
23380 '1行目
23390 line (0,0)-(1080,58),rgb(0,0,255),bf
23400 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
23410 '2行目
23420 line (0,58)-(1080,100),rgb(127,255,212),bf
23430 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
23440 '3行目
23450 line (0,100)-(1080,280),rgb(0,0,255),bf
23460 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
23470 '4行目
23480 line (0,280)-(1080,340),rgb(0,255,0),bf
23490 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
23500 'グラフィック描画領域　ここまで
23510 color rgb(255,255,255):print "登録文字画数結果表示"
23520 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
23530 endif
23540 while (key$<>chr$(13) and bg <> 2)
23550 key$=inkey$
23560 bg=strig(1)
23570 pause 2.50*100
23580 wend
23590 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
23600 'Menu2 名前の陰陽を見る
23610 'グラフィック描画領域 ここから
23620 name_inyo_check:
23630 init "kb:2":talk ""
23640 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
23650 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
23660 LINE (0,60)-(1080,250),rgb(127,255,212),bf
23670 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
23680 line (0,250)-(1080,350),rgb(0,255,0),bf
23690 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
23700 'グラフィック描画領域　ここまで
23710 cls
23720 color rgb(255,255,255)
23730 print"Menu2 名前の陰陽を見る"+chr$(13)
23740 COLOR rgb(255,0,255)
23750 PRINT"(●:陽,○:陰)"+chr$(13)
23760 print"調べたい名前苗字を入れてください"+chr$(13)
23770 color rgb(0,0,0)
23780 Input"調べたい名前の苗字:",name$
23790 if name$="" then goto name_inyo_check:
23800 'Menu2 陰陽の吉凶を見る 名入力
23810 cls:color rgb(255,255,255)
23820 print"Menu2 名前の陰陽を見る"+chr$(13)
23830 color rgb(255,0,255)
23840 print"(●:陽,○:陰)"+chr$(13)
23850 print"調べたい名前の名を入れてください"+chr$(13)
23860 color rgb(0,0,0)
23870 Input"調べたい名前の名:",name2$
23880 if name2$="" then goto name_inyo_check:
23890 for i=0 to len(name$)-1
23900 name_array$(i)=Mid$(name$,i+1,1)
23910 if char_count(name_array$(i)) mod 2 = 1  then
23920 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23930 else
23940 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23950 endif
23960 next i
23970 for i=0 to len(name2$)-1
23980 name_array2$(i)=Mid$(name2$,i+1,1)
23990 if char_count(name_array2$(i)) mod 2 = 1 then
24000 name_array2$(i) = "○":buffer2$ = buffer2$ + name_array2$(i)
24010 else
24020 name_array2$(i)="●":buffer2$ = buffer2$ + name_array2$(i)
24030 endif
24040 next i
24050 bufname$ = buffer$ + buffer2$
24060 '陰陽のタイプ ここから
24070 select case (len(bufname$))
24080 '2文字
24090 case 2:
24100 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$ = "吉相:姓名2字の陰陽吉相"
24110 'endif
24120 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
24130 '  endif
24140 '3文字
24150 case 3:
24160 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
24170 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
24180 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
24190 '4文字
24200 case 4:
24210 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
24220 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
24230 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
24240 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
24250 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
24260 '5文字
24270 case 5:
24280 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
24290 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
24300 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
24310 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
24320 case 6:
24330 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
24340 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
24350 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
24360 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
24370 case else:
24380 buffer_name$="例外に入りました"
24390 end select
24400 '陰陽のタイプ　ここまで
24410 'グラフィック描画領域　ここから
24420 cls 2:key$="":bg=0:init "kb:4":talk ""
24430 line (0,0)-(1080,60),rgb(0,0,250),bf
24440 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24450 line (0,60)-(1080,285),rgb(127,255,212),bf
24460 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
24470 line (0,280)-(1080,380),rgb(0,255,0),bf
24480 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
24490 'グラフィック描画領域 ここまで
24500 color rgb(255,255,255)
24510 cls:print"名前:";name$ + name2$ + chr$(13)
24520 color rgb(255,0,255)
24530 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
24540 print buffer_name$;chr$(13)
24550 color rgb(0,0,0)
24560 print"エンターキーを押してください"
24570 while (bg <> 2 and key$ <> chr$(13))
24580 key$ = inkey$
24590 bg = strig(1)
24600 pause 2.50 * 100
24610 wend
24620 if (key$ = chr$(13) or bg = 2) then buffer$ = "":buffer2$ = "": goto Main_Screen1:
24630 'Menu3
24640 '登録文字数の確認
24650 Entry_moji_check:
24660 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24670 'グラフィック描画領域　ここから
24680 cls 3:init "kb:4":bg = 0:key$ = "":talk ""
24690 '1行目
24700 line (0,0)-(1080,60),rgb(0,0,255),bf
24710 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24720 '2行目
24730 line (0,60)-(1080,150),rgb(157,255,212),bf
24740 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24750 '3行目
24760 line (0,150)-(1080,250),rgb(0,255,0),bf
24770 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24780 'グラフィック描画領域 ここまで
24790 color rgb(255,255,255)
24800 PRINT"登録文字数の確認"+chr$(13)
24810 color rgb(255,0,255)
24820 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24830 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24840 while (key$ <> chr$(13) and bg <> 2)
24850 key$ = inkey$
24860 bg = strig(1)
24870 pause 2.50 * 100
24880 wend
24890 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24900 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24910 nick_name_check:
24920 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24930 'グラフィック描画領域　ここから
24940 cls 3:init "kb:2"
24950 line (0,0) - (1080,60),rgb(0,0,250),bf
24960 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
24970 line (0,60) - (1080,160),rgb(127,255,212),bf
24980 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
24990 line (0,160) - (1080,270),rgb(0,255,0),bf
25000 pen 5:line(0,157) - (1077,267),rgb(0,0,255),b
25010 'グラフィック描画領域　ここまで
25020 buf=0:cls
25030 locate 0,0
25040 color rgb(255,255,255)
25050 Print"名前(ニックネーム)の総数で吉凶を判断します"
25060 locate 0,2
25070 color rgb(255,0,255)
25080 PRINT"名前(ニックネーム)を入れてください"
25090 locate 0,4
25100 color rgb(0,0,0)
25110 Input"名前:",name$
25120 if name$="" then goto nick_name_check:
25130 for n=0 to (len(name$)-1)
25140 buf_Input_data$(n) = mid$(name$,n+1,1)
25150 buf = buf + char_count(buf_Input_data$(n))
25160 next n
25170 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
25180 '結果表示　グラフィック　ここから
25190 cls 3:init "kb:4":bg=0:key$=""
25200 line (0,0) - (1080,60),rgb(0,0,255),bf
25210 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
25220 line (0,60) - (1080,160),rgb(127,255,212),bf
25230 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
25240 line (0,160) - (1080,540),rgb(0,255,0),bf
25250 pen 5:line(0,157) - (1077,537),rgb(0,0,255),b
25260 '結果表示 グラフィック領域 ここまで
25270 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
25280 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
25290 while (key$ <> chr$(13) and bg <> 2)
25300 key$ = inkey$
25310 bg = strig(1)
25320 pause 2.50 * 100
25330 wend
25340 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
25350 '名前2文字
25360 'グラフィック描画領域　ここから
25370 Result_Anzai:
25380 CLS 3:font 32:bg = 0:ke$="":init "KB:4":talk ""
25390 line (0,0)-(1400,60),rgb(0,0,255),bf
25400 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
25410 line (0,60)-(1400,540-180),rgb(127,255,212),bf
25420 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
25430 line (0,540-180)-(1400,540),rgb(0,255,0),bf
25440 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25450 'グラフィック描画領域 ここまで
25460 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25470 color rgb(255,0,255)
25480 print"天運";buf_tenunn;chr$(13)
25490 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25500 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25510 print"外運";buf_gaiunn;chr$(13)
25520 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25530 COLOR rgb(0,0,0)
25540 PRINT"エンターキー:トップ画面"+chr$(13)
25550 while (key$ <> chr$(13) and bg <> 2)
25560 key$ = inkey$
25570 bg = strig(1)
25580 pause 2.50 * 100
25590 wend
25600 if key$ = chr$(13) or bg = 2 then goto Main_Screen1:
25610 '参考文献 表示 ここから
25620 'グラフィック描画領域　 ここから
25630 Document_info:
25640 cls 3:init "kb:4":bg = 0
25650 line (0,0) - (1080,60),rgb(0,0,255),bf
25660 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
25670 line (0,60) - (1080,650),rgb(127,255,212),bf
25680 pen 5:line(0,57) - (1077,647),rgb(0,0,255),b
25690 line (0,650) - (1080,730),rgb(0,255,0),bf
25700 pen 5:line(0,647) - (1077,727),rgb(0,0,255),b
25710 'グラフィック描画領域  ここまで
25720 '参考文献１
25730 cls
25740 color rgb(255,255,255)
25750 locate 0,0
25760 print"◎参考文献"
25770 color rgb(255,0,255)
25780 locate 0,2
25790 print "参考文献 １/4"
25800 locate 0,4
25810 print "Title:九星姓名判断"
25820 locate 0,6
25830 print "Author:高嶋　 美伶"
25840 locate 0,8
25850 print "出版社:日本文芸者"
25860 locate 0,10
25870 print "ISBN:4-537-20073-1"
25880 locate 0,12
25890 print "定価:1,200+税"
25900 color rgb(0,0,0)
25910 locate 0,14
25920 print "エンターキーを押してください"
25930 while (bg <> 2 and key$<>chr$(13))
25940 key$ = inkey$
25950 bg = strig(1)
25960 pause 2.50 * 100
25970 wend
25980 if (key$ = chr$(13) or bg = 2) then
25990 goto Document_info2:
26000 endif
26010 '参考文献２
26020 Document_info2:
26030 cls:bg = 0:key$ = ""
26040 color rgb(255,255,255)
26050 locate 0,0
26060 print "◎参考文献"
26070 color rgb(255,0,255)
26080 locate 0,2
26090 print "参考文献 ２/4"
26100 locate 0,4
26110 print "Title:究極の姓名判断"
26120 locate 0,6
26130 print "Author:安斎　勝洋"
26140 locate 0,8
26150 print "出版社:説話社"
26160 locate 0,10
26170 print "ISBN:978-4-916217-61-5"
26180 locate 0,12
26190 print "定価:1,800円+税"
26200 color rgb(0,0,0)
26210 locate 0,14
26220 print"エンターキーを押してください"
26230 while (key$ <> chr$(13) and bg <> 2)
26240 key$ = inkey$
26250 bg = strig(1)
26260 pause 2.50 * 100
26270 wend
26280 if (key$ = chr$(13) or bg = 2) then goto Document_info3:
26290 '参考文献３
26300 Document_info3:
26310 cls:bg = 0:key$ = ""
26320 color rgb(255,255,255)
26330 locate 0,0
26340 print"◎参考文献"
26350 color rgb(255,0,255)
26360 locate 0,2
26370 print "参考文献 3/4"
26380 locate 0,4
26390 print "Title:新明解現在漢和辞典"
26400 locate 0,6
26410 print "Author:影山輝國(編集主幹)他"
26420 locate 0,8
26430 print "出版社:三省堂"
26440 locate 0,10
26450 print "ISBN:978-4-385-13755-1"
26460 locate 0,12
26470 print "定価:2,800円 + 税"
26480 color rgb(0,0,0)
26490 locate 0,14
26500 print "エンターキーを押してください"
26510 while (key$ <> chr$(13) and bg <> 2)
26520 key$ = inkey$
26530 bg = strig(1)
26540 pause 2.50 * 100
26550 wend
26560 if (key$ = chr$(13) or bg = 2) then goto Document_info4:
26570 '参考文献４　
26580 '描画領域　ここから
26590 Document_info4:
26600 cls 3:key$ = "":bg = 0
26610 line (0,0) - (1080,60),rgb(0,0,255),bf
26620 line (0,0) - (1077,57),rgb(0,255,0),b
26630 line (0,60) - (1080,650),rgb(127,255,212),bf
26640 LINE (0,60) - (1077,647),rgb(0,0,255),b
26650 LINE (0,650) - (1080,830),rgb(0,255,0),bf
26660 line (0,650) - (1077,833),rgb(0,0,255),b
26670 '描画領域　ここまで
26680 color rgb(255,255,255)
26690 locate 0,0
26700 print "◎参考文献"
26710 COLOR rgb(255,0,255)
26720 locate 0,2
26730 print "参考文献 4/4"
26740 locate 0,4
26750 print "Title:姓名の暗号"
26760 locate 0,6
26770 print "Author:樹門　幸宰(じゅもん こうざい)"
26780 locate 0,8
26790 print "出版社:幻冬舎"
26800 locate 0,10
26810 print "定価:1400円 + 税"
26820 locate 0,12
26830 print "ISBN:4-344-00777-8"
26840 color rgb(0,0,0)
26850 locate 0,14
26860 print "参考文献トップに行く:エンターキー"
26870 locate 0,16
26880 print "スペース：トップメニューに行く"
26890 while (key$ <> chr$(13) and bg <> 2)
26900 key$ = inkey$
26910 bg = strig(1)
26920 pause 2.50 * 100
26930 wend
26940 if (key$ = chr$(13) or bg = 2) then goto help:
26950 '安斎流姓名判断　メニュー
26960 'グラフィック領域　ここから
26970 Anzai_Top:
26980 cls 3:talk ""
26990 No = 0:init "kb:4":y = 0:bg = 0:key$ = ""
27000 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
27010 sp_on 0,1:sp_put 0,(10,100),0,0
27020 line (0,0) - (1080,60),rgb(0,0,255),bf
27030 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
27040 line (0,60) - (1080,475),rgb(127,255,212),bf
27050 pen 5:line(0,57) - (1077,472),rgb(0,0,255),b
27060 line (0,475) - (1080,650),rgb(0,255,0),bf
27070 pen 5:line(0,472) - (1077,647),rgb(0,0,255),b
27080 'グラフィック描画領域　ここまで
27090 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
27100 color rgb(255,255,255)
27110 print "安斎流姓名判断　トップメニュー" + chr$(13)
27120 color rgb(255,0,255)
27130 print " :1.安斎流姓名判断 相性占い" + chr$(13)
27140 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
27150 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
27160 print " :4.前の画面に戻る" + chr$(13)
27170 locate 0,10
27180 color rgb(0,0,0)
27190 print"1．安斎流姓名判断　相性占いを選択" + chr$(13)
27200 Anzai_Top2:
27210 y = 0:bg = 0:key$ = ""
27220 while (y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and key$ <> chr$(13) and bg <> 2)
27230 key$=inkey$
27240 y = stick(1)
27250 bg = strig(1)
27260 pause 2.50 * 100
27270 wend
27280 '******************************************************
27290 '1.下のキー　ここから
27300 '******************************************************
27310 if (y = 1 or key$ = chr$(30)) then
27320 select case No
27330 case 0:
27340 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27350 case 1:
27360 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27370 case 2:
27380 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27390 case 3:
27400 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27410 end select
27420 endif
27430 '******************************************************
27440 '1.下のキー　ここまで
27450 '******************************************************
27460 '******************************************************
27470 '2.上のキー　ここから
27480 '******************************************************
27490 if (y = -1 or key$ = chr$(31)) then
27500 select case No
27510 case 0:
27520 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27530 case 1:
27540 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27550 case 2:
27560 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27570 case 3:
27580 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27590 end select
27600 endif
27610 '******************************************************
27620 '2.上のキー　ここまで
27630 '******************************************************
27640 '******************************************************
27650 '3.決定ボタン　ここから
27660 '******************************************************
27670 if (key$ = chr$(13) or bg = 2) then
27680 select case No
27690 case 0:
27700 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27710 case 1:
27720 sp_on 1,0:goto Anzai_Top_Screen:
27730 case 2:
27740 sp_on 2,0:goto Anzai_Kaimei_Check:
27750 case 3:
27760 sp_on 3,0:goto seimeihandan_top:
27770 end select
27780 endif
27790 '******************************************************
27800 '3.決定ボタン　ここまで
27810 '******************************************************
27820 '2.安斎流姓名判断　男女の相性占い　ここから
27830 'グラフィック描画領域 ここから
27840 cls 3
27850 '1行目
27860 line (0,0) - (1080,60),rgb(0,0,255),bf
27870 pen 5:line(0,0) - (1077,57),rgb(127,255,252),b
27880 '2行目
27890 line (0,60) - (1080,160),rgb(127,255,212),bf
27900 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
27910 '3行目
27920 line (0,160) - (1080,300),rgb(0,255,0),bf
27930 pen 5:line(0,157) - (1077,297),rgb(0,0,255),b
27940 'グラフィック描画領域　男女の相性占い ここまで
27950 '1.名前の姓を入力  男性
27960 Anzai_Aishou_Top1:
27970 cls 3
27980 '1行目
27990 line (0,0) - (1080,60),rgb(0,0,255),bf
28000 pen 5:line(0,0) - (1077,57),rgb(127,255,252),b
28010 '2行目
28020 line (0,60) - (1080,160),rgb(127,255,212),bf
28030 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
28040 '3行目
28050 line (0,160) - (1080,300),rgb(0,255,0),bf
28060 pen 5:line(0,157) - (1077,297),rgb(0,0,255),b
28070 color rgb(255,255,255)
28080 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
28090 color rgb(255,0,255)
28100 print "男性の名前(姓)を入れてください"+chr$(13)
28110 color rgb(0,0,0)
28120 Input "男性の名前(姓):",name$
28130 '2.名前の名を入力  男性
28140 cls 3:talk ""
28150 '1行目
28160 line (0,0) - (1080,60),rgb(0,0,255),bf
28170 pen 5:line(0,0) - (1077,57),rgb(127,255,252),b
28180 '2行目
28190 line (0,60) - (1080,160),rgb(127,255,212),bf
28200 pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
28210 '3行目
28220 line (0,160) - (1080,300),rgb(0,255,0),bf
28230 pen 5:line(0,157) - (1077,297),rgb(0,0,255),b
28240 color rgb(255,255,255)
28250 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28260 color rgb(255,0,255)
28270 print "男性の名前（名）をいれてください"+chr$(13)
28280 color rgb(0,0,0)
28290 Input "男性の名前(名):",name2$
28300 '3.名前(姓)入力 女性
28310 Anzai_Aishou_Top2:
28320 cls:init "kb:2":talk ""
28330 color rgb(255,255,255)
28340 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28350 color rgb(255,0,255)
28360 print "女性の名前(姓)を入れてください"+chr$(13)
28370 color rgb(0,0,0)
28380 Input"女性の名前:",name3$
28390 '4.名前（名)入力 女性
28400 cls:init "kb:2":talk ""
28410 color rgb(255,255,255)
28420 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28430 color rgb(255,0,255)
28440 print "女性の名前（名）を入れてください"+chr$(13)
28450 color rgb(0,0,0)
28460 Input "女性の名前(名):",name4$
28470 '男性　の地運 を求める
28480 '姓名の合計数
28490 '1.男性 名前の文字数を求める
28500 '地運を求める
28510 buf_male_name1 = len(name$)
28520 buf_male_name2 = len(name2$)
28530 buf_male_count = buf_male_name1 + buf_male_name2
28540 '2.女性 名前の文字数を求める
28550 buf_female_name1 = len(name3$)
28560 buf_female_name2 = len(name4$)
28570 buf_female_count = buf_female_name1 + buf_female_name2
28580 'goto Anzai_Aishou_Check:
28590 '1.男性の地運を求める
28600 select case buf_male_count
28610 case 2:
28620 '男性の地運を求める
28630 buf_chiunn = char_count(name2$)
28640 case 3:
28650 '姓が一文字 名が2文字
28660 if buf_male_name1 = 1 and buf_male_name2 = 2 then
28670 buf_Input_name$(0) = mid$(name2$,1,1)
28680 buf_Input_name$(1) = mid$(name2$,2,1)
28690 '地運を計算
28700 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28710 endif
28720 if buf_male_name1 = 2 and buf_male_name2 = 1 then
28730 buf_Input_name$(0) = Mid$(name2$,1,1)
28740 buf_chiunn = char_count(buf_Input_name$(0))
28750 endif
28760 case 4:
28770 '1.姓１，名３
28780 if bufmale_name1 = 1 and buf_male_name2 = 3 then
28790 buf_Input_name$(0) = Mid$(name2$,1,1)
28800 buf_Input_name$(1) = Mid$(name2$,2,1)
28810 buf_Input_name$(2) = Mid$(name2$,3,1)
28820 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1)) + char_count(buf_Input_name$(2))
28830 endif
28840 '2.姓２,名２
28850 if buf_male_name1 = 2 and buf_male_name2 = 2 then
28860 buf_Input_name$(0) = Mid$(name2$,1,1)
28870 buf_Input_name$(1) = Mid$(name2$,2,1)
28880 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28890 endif
28900 '3.姓３、名１
28910 if buf_male_name1 = 3 and buf_male_name2 = 1 then
28920 buf_Input_name$(0) = Mid$(name2$,1,1)
28930 '地運を求める
28940 buf_chiunn = char_count(buf_Input_name$(0))
28950 endif
28960 case 5:
28970 '1.姓２，名３
28980 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28990 buf_Input_name$(0) = Mid$(name2$,1,1)
29000 buf_Input_name$(1) = Mid$(name2$,2,1)
29010 buf_Input_name$(2) = Mid$(name2$,3,1)
29020 '地運を求める
29030 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1)) + char_count(buf_Input_name$(2))
29040 endif
29050 '2.姓３，名２
29060 if buf_male_name1 = 3 and buf_male_name2 = 2 then
29070 buf_Input_name$(0) = Mid$(name2$,1,1)
29080 buf_Input_name$(1) = Mid$(name2$,2,1)
29090 '地運を求める
29100 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29110 endif
29120 '3.姓４、名１
29130 buf_Input_name$(0) = Mid$(name2$,1,1)
29140 '地運を求める
29150 buf_chiunn = char_count(buf_Input_name$(0))
29160 case 6:
29170 '1.姓３，名３
29180 if buf_male_name1 = 3 and buf_male_name2 = 3 then
29190 buf_Input_name$(0) = Mid$(name2$,1,1)
29200 buf_Input_name$(1) = Mid$(name2$,2,1)
29210 buf_Input_name$(2) = Mid$(name2$,3,1)
29220 '地運を求める
29230 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
29240 endif
29250 '２.姓４，名２
29260 if buf_male_name1 = 4 and buf_male_name2 = 2 then
29270 buf_Input_name$(0) = Mid$(name2$,1,1)
29280 buf_Input_name$(1) = Mid$(name2$,2,1)
29290 '地運を求める
29300 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29310 endif
29320 case else:
29330 end select
29340 '2.女性　外運を求める
29350 select case buf_female_count
29360 '姓と名の合計数
29370 case 2:
29380 buf_Input_name2$(0) = Mid$(name3$,1,1)
29390 buf_Input_name2$(1) = Mid$(name4$,1,1)
29400 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29410 case 3:
29420 if buf_female_name1 = 2 and buf_female_name2 = 1 then
29430 buf_Input_name2$(0) = Mid$(name3$,1,1)
29440 buf_Input_name2$(1) = Mid$(name3$,2,1)
29450 buf_Input_name2$(2) = Mid$(name4$,1,1)
29460 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2))
29470 endif
29480 if buf_female_name1 = 1 and buf_female_name2 = 2 then
29490 buf_Input_name2$(0) = Mid$(name3$,1,1)
29500 buf_Input_name2$(1) = Mid$(name4$,1,1)
29510 buf_Input_name2$(2) = Mid$(name4$,2,1)
29520 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2))
29530 endif
29540 case 4:
29550 '姓１、名３
29560 if buf_female_name1 = 1 and buf_female_name2 = 3 then
29570 buf_Input_name2$(0) = Mid$(name3$,1,1)
29580 buf_Input_name2$(1) = Mid$(name4$,1,1)
29590 buf_Input_name2$(2) = Mid$(name4$,2,1)
29600 buf_Input_name2$(3) = Mid$(name4$,3,1)
29610 '外運を求める
29620 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2)) + char_count(buf_Input_name2$(3))
29630 endif
29640 '姓２,名２
29650 if buf_female_name1 = 2 and buf_female_name2 = 2 then
29660 buf_Input_name2$(0) = Mid$(name3$,1,1)
29670 buf_Input_name2$(1) = Mid$(name3$,2,1)
29680 buf_Input_name2$(2) = Mid$(name4$,1,1)
29690 buf_Input_name2$(3) = Mid$(name4$,2,1)
29700 '外運を求める
29710 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(3))
29720 endif
29730 '姓３，名１
29740 if buf_female_name1 = 3 and buf_female_name2 = 1 then
29750 buf_Input_name2$(0) = Mid$(name3$,1,1)
29760 buf_Input_name2$(1) = Mid$(name3$,2,1)
29770 buf_Input_name2$(2) = Mid$(name3$,3,1)
29780 buf_Input_name2$(3) = Mid$(name4$,1,1)
29790 '外運を求める
29800 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name2$(3))
29810 endif
29820 case 5:
29830 '姓 3,名2
29840 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29850 buf_Input_name2$(0) = Mid$(name3$,1,1)
29860 buf_Input_name2$(1) = Mid$(name3$,2,1)
29870 buf_Input_name2$(2) = Mid$(name3$,3,1)
29880 buf_Input_name2$(3) = Mid$(name4$,1,1)
29890 buf_Input_name2$(4) = Mid$(name4$,2,1)
29900 '外運を求める
29910 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name2$(4))
29920 endif
29930 '姓４、名１
29940 if buf_female_name1 = 4 and buf_female_name2 = 1 then
29950 buf_Input_name2$(0) = Mid$(name3$,1,1)
29960 buf_Input_name2$(1) = Mid$(name3$,2,1)
29970 buf_Input_name2$(2) = Mid$(name3$,3,1)
29980 buf_Input_name2$(3) = Mid$(name3$,4,1)
29990 buf_Input_name2$(4) = Mid$(name4$,1,1)
30000 '外運を求める
30010 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name$(4))
30020 endif
30030 '姓２、名３
30040 if buf_female_name1 = 2 and buf_female_name2 = 3 then
30050 buf_Input_name2$(0) = Mid$(name3$,1,1)
30060 buf_Input_name2$(1) = Mid$(name3$,2,1)
30070 buf_Input_name2$(2) = Mid$(name4$,1,1)
30080 buf_Input_name2$(3) = Mid$(name4$,2,1)
30090 buf_Input_name2$(4) = Mid$(name4$,3,1)
30100 '外運を求める
30110 buf_gaiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(3)) + char_count(buf_Input_name$(4))
30120 endif
30130 case 6:
30140 '1.姓３，名３
30150 if buf_female_name1=3 and buf_female_name2=3 then
30160 buf_Input_name2$(0)=Mid$(name3$,1,1)
30170 buf_Input_name2$(1)=Mid$(name3$,2,1)
30180 buf_Input_name2$(2)=Mid$(name3$,3,1)
30190 buf_Input_name2$(3)=Mid$(name4$,1,1)
30200 buf_Input_name2$(4)=Mid$(name4$,2,1)
30210 buf_Input_name2$(5)=Mid$(name4$,3,1)
30220 '外運を求める
30230 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name2$(4)) + char_count(buf_Input_name$(5))
30240 endif
30250 '2.姓４，名２
30260 if buf_female_name1 = 4 and buf_female_name2 = 2 then
30270 buf_Input_name2$(0) = Mid$(name3$,1,1)
30280 buf_Input_name2$(1) = Mid$(name3$,2,1)
30290 buf_Input_name2$(2) = Mid$(name3$,3,1)
30300 buf_Input_name2$(3) = Mid$(name3$,4,1)
30310 buf_Input_name2$(4) = Mid$(name4$,1,1)
30320 buf_Input_name2$(5) = Mid$(name4$,2,1)
30330 '外運を求める
30340 buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name$(5))
30350 endif
30360 case 7:
30370 '1姓４，名３
30380 '外運を求める
30390 end select
30400 func buf_number(a)
30410 if a < 10 then
30420 buf_tansu = a
30430 endif
30440 if a > 9 and a < 20 then
30450 buf_tansu = a - 10
30460 endif
30470 if a > 19 and a < 30 then
30480 buf_tansu = a - 20
30490 endif
30500 buffer = buf_tansu
30510 endfunc buffer
30520 check$ = "No Data"
30530 func Aisyou_type$(man,woman)
30540 Result$="No data"
30550 'check$="No data"
30560 '1.理解し合える最良のカップル
30570 '1のFor文
30580 for i=0 to 19
30590 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30600 Result$ = "1.理解し合える最良のカップル"
30610 check$="○"
30620 ResultNo = 0
30630 endif
30640 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30650 Result$="2.互いに自然体でつきあえるカップル"
30660 ResultNo=1
30670 check$="○"
30680 endif
30690 '3.男性にとって居心地の良いカップル
30700 if buf_good_for_man1(i) = man AND buf_good_for_man2(i) = woman then
30710 Result$ = "3.男性にとって居心地の良いカップル"
30720 ResultNo = 2
30730 check$ = "△"
30740 endif
30750 '4.女性にとって居心地の良いカップル
30760 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30770 Result$ = "4.女性にとって居心地の良いカップル"
30780 ResultNo = 3
30790 check$ = "△"
30800 endif
30810 '5.恋愛経験を重ねた後なら愛を育める
30820 if buf_short_of_experience1(i) = man AND buf_short_of_experience2(i) = woman then
30830 Result$ = "5.恋愛経験を重ねた後なら愛を育める"
30840 ResultNo = 4
30850 check$ = "×"
30860 endif
30870 '6
30880 if buf_difficult_for_couple1(i) = man AND  buf_difficult_for_couple2(i) = woman then
30890 Result$ = "6.結婚への発展が困難なカップル"
30900 check$ = "×"
30910 endif
30920 '7
30930 if buf_difference_of_love1(i) = man AND buf_difference_of_love2(i) = woman then
30940 Result$ = "7.愛し方にずれが出てくる二人"
30950 check$ = "×"
30960 endif
30970 '8
30980 if buf_difference_of_KachiKan1(i) = man AND buf_difference_of_KachiKan2(i) = woman  then
30990 Result$ = "8.互いに価値観が噛み合わない相性"
31000 check$ = "×"
31010 endif
31020 next i
31030 endfunc  Result$
31040 Anzai_Aishou_Check:
31050 cls 3:init "kb:2":bg = 0
31060 buf_t_chiunn = buf_number(buf_chiunn)
31070 buf_t_gaiunn = buf_number(buf_gaiunn)
31080 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
31090 'グラフィック描画領域　ここから
31100 'Title欄
31110 line(0,0) - (1080,60),rgb(0,0,255),bf
31120 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
31130 '結果表示欄
31140 line(0,60) - (1080,700-120-20),rgb(127,255,212),bf
31150 pen 5:line(0,57) - (1077,700-120-3-20),rgb(0,0,255),b
31160 'ボタン選択欄
31170 LINE(0,700-120-20) - (1080,640),rgb(0,255,0),bf
31180 pen 5:line(0,697-120-20) - (1077,637),rgb(0,0,255),b
31190 'グラフィック描画領域　ここまで
31200 'ここから削除　↓
31210 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
31220 'ここまで削除　↑
31230 color rgb(255,255,255):font 40:init"kb:4"
31240 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31250 color rgb(255,0,255)
31260 print "男性の名前:";name$+name2$;chr$(13)
31270 print "地運の単数";buf_t_chiunn;chr$(13)
31280 print "女性の名前:";name3$+name4$;chr$(13)
31290 print "外運の単数";buf_t_gaiunn;chr$(13)
31300 print"二人の相性:";bufferAisyou$;chr$(13)
31310 print"相性判定:";check$;chr$(13)
31320 color rgb(0,0,0)
31330 print "エンターキー:トップ" + chr$(13)
31340 while (bg <> 2)
31350 bg = strig(1)
31360 pause 2.50 * 100
31370 wend
31380 if (bg = 2) then goto Main_Screen1:
31390 '改名チェック
31400 'グラフィック描画領域 ここから
31410 Anzai_Kaimei_Check:
31420 cls 3:init "kb:2":talk ""
31430 line (0,0) - (1080,60),rgb(0,0,255),bf
31440 pen 5:line(0,0) - (1077,57),rgb(125,255,212),b
31450 line (0,60) - (1080,370+50),rgb(127,255,212),bf
31460 pen 5:line (0,57) - (1077,367+50),rgb(0,0,255),b
31470 line (0,370+50) - (1080,450+50),rgb(0,255,0),bf
31480 pen 5:line(0,367+50) - (1077,447+50),rgb(0,0,255),b
31490 'グラフィック描画領域 ここまで
31500 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31510 color rgb(255,255,255)
31520 print "安斎流姓名判断 改名チェッカー" + chr$(13)
31530 color rgb(255,0,255)
31540 print "総数で、改名が、必要か否かを調べます" + chr$(13)
31550 print "名前(ニックネーム or 会社名等)を入れてください" + chr$(13)
31560 print "10文字までで入れてください"
31570 locate 0,9
31580 color rgb(0,0,0)
31590 Input "名前:",name$
31600 '計算領域　ここから
31610 '名前から総運を計算
31620 '1.名前の文字数を出す
31630 n = len(name$)
31640 if n > 10 or n = 0 then
31650 '文字数が10個までという表示
31660 'トーストで表示
31670 if n > 10 then
31680 ui_msg "文字は10個までです"
31690 else
31700 ui_msg "文字が空っぽです"
31710 endif
31720 goto Anzai_Aishou_Check:
31730 endif
31740 'それ以外
31750 '総数を出す処理を出す
31760 '画面消去　データー初期化
31770 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31780 'グラフィック描画領域 ここから
31790 line(0,0)-(1080,60),rgb(0,0,255),bf
31800 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31810 line(0,60)-(1080,300),rgb(127,255,212),bf
31820 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
31830 line(0,300)-(1080,440),rgb(0,255,0),bf
31840 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
31850 'グラフィック描画領域 ここまで
31860 color rgb(255,255,255)
31870 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31880 for i=0 to len(name$)-1
31890 buf_Input_name$(i)=Mid$(name$,i+1,1)
31900 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31910 next i
31920 buf_Kikkyo$ = buf_Kikkyo_Anzai_total$(bufer_total-2)
31930 color rgb(255,0,255)
31940 print "名前:";name$
31950 print "この名前の総数:";bufer_total
31960 print "この名前の吉凶:";buf_Kikkyo$;"です"
31970 color rgb(255,0,255)
31980 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31990 print bufer_total$+chr$(13)
32000 color rgb(0,0,0)
32010 locate 0,7
32020 print"エンターキーを押してください"
32030 while (key$ <> chr$(13) and bg <> 2)
32040 key$ = inkey$
32050 bg = strig(1)
32060 pause 2.50 * 100
32070 wend
32080 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
32090 '改名チェック関数
32100 func Kaimei_check$(r$)
32110 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
32120 '改名の必要なし
32130 talk "この名前は改名の必要がございません。"
32140 print "この名前は、改名の必要はありません"+chr$(13)
32150 '改名の必要ナシの場合
32160 K=0
32170 buffer_K=K
32180 else
32190 '改名の必要あり
32200 Kaimei_check:
32210 talk"この名前は、改名の必要があります"
32220 print"この名前は、改名の必要があります"+chr$(13)
32230 color rgb(0,0,0)
32240 print"改名しますか？"
32250 K=1
32260 buffer_K=K
32270 '◎表示パターン
32280 'パターン１
32290 endif
32300 endfunc result$
32310 'ui_msg="1件追加しました,残り9件追加できます"
32320 'ファイルの存在確認 設定ファイル:mydata.dat
32330 'Config_Folder="config/Parsonal_data/"
32340 Config_Folder$ = "config/Parsonal_data/"
32350 'Config_File="mydata.dat"
32360 Config_File$ = "mydata.dat"
32370 cls
32380 '設定ファイルの確認
32390 if dir$(Config_Folder$ + Config_File$) = "" then
32400 '1.ファイルがない時
32410 goto Kaimei_check:
32420 else
32430 'ファイルがある時
32440 goto sex_type_female:
32450 endif
32460 '1-1.ファイルがない時の処理
32470 '1-1.自分の姓名判断を入力
32480 'グラフィック描画領域 ここから
32490 cls 3
32500 '1行目
32510 line(0,0) - (1080,60),rgb(0,0,250),bf
32520 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
32530 '2行目
32540 line(0,60) - (1080,80),rgb(127,255,212),bf
32550 pen 5:line(0,57) - (1077,77),rgb(0,0,255),b
32560 '3行目
32570 line(0,80) - (1080,120),rgb(0,255,0),bf
32580 pen 5:line(0,77) - (1077,117),rgb(0,0,255),b
32590 'グラフィック描画領域 ここまで
32600 '1.名前の姓の入力
32610 '1行目 Title
32620 color rgb(255,255,255)
32630 print"安斎流姓名判断　相性占い　自分のプロフィール入力" + chr$(13)
32640 '2行目 名前の姓を入力
32650 color rgb(255,0,255)
32660 print "自分の名前の姓を入れてください" + chr$(13)
32670 color rgb(0,0,0)
32680 'buf_name1$:自分の名前の姓
32690 Input"名前の姓:",buf_name1$
32700 '2.名前の名の入力
32710 '画面消去
32720 Anzai_myProfile2:
32730 cls
32740 '1行目 Title
32750 color rgb(255,255,255)
32760 print "安斎流姓名判断 相性占い 自分のプロフィール入力" + chr$(13)
32770 '2行目 名前の名の入力
32780 color rgb(255,0,255)
32790 print "自分の名前の名を入れてください" + chr$(13)
32800 color rgb(0,0,0)
32810 'buf_name2$:自分の名前の名
32820 input "名前の名:",buf_name2$
32830 '3.性別入力
32840 cls
32850 '1行目 Title
32860 color rgb(255,255,255)
32870 print "安斎流姓名判断 相性占い 自分のプロフィール入力" + chr$(13)
32880 '2行目 性別入力
32890 color rgb(255,0,255)
32900 print"自分の性別を入れてください(女性 or 男性)" + chr$(13)
32910 sex_type$(0) = "女性"
32920 sex_type$(1) = "男性"
32930 type = ui_select("sex_type$","性別を選んでください")
32940 '3行目
32950 '性別変数 sex_type$
32960 if type = 1 then
32970 print "自分の性別(女性 or 男性):";sex_type$(1) + chr$(13):sex_type$ = sex_type$(1):goto Anzai_myProfile2:
32980 else
32990 print "自分の性別(女性 or 男性):";sex_type$(0) + chr$(13):sex_type$ = sex_type$(0):goto Anzai_myProfile2:
33000 endif
33010 if sex_type$="男性" then
33020 name$ = buf_name1$
33030 name2$ = buf_name2$
33040 s=1
33050 goto Anzai_Aishou_Top1:
33060 endif
33070 sex_type_female:
33080 If sex_type$="女性" then
33090 name3$=buf_name1$
33100 name4$=buf_name2$
33110 s=2
33120 goto Anzai_Aishou_Top2:
33130 endif
33140 '登録プロフィール確認画面
33150 Entry_Profile:
33160 cls 3:talk ""
33170 'グラフィック描画領域　ここから
33180 '1行目
33190 line(0,0)-(1200,60),rgb(0,0,255),bf
33200 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33210 '2行目
33220 line(0,60)-(1200,360),rgb(127,255,212),bf
33230 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
33240 '3行目
33250 line(0,100)-(1200,420),rgb(0,255,0),bf
33260 pen 5:line(0,97)-(1197,417)
33270 if s2=2 then goto Entry_Profile:
33280 'グラフィック描画領域　ここまで
33290 '1行目 Title
33300 color rgb(255,255,255)
33310 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33320 color rgb(255,0,255)
33330 print"名前:";buf_name1$+buf_name2$;chr$(13)
33340 PRINT"性別:";sex_type$;chr$(13)
33350 if sex_type$="女性" then
33360 print"外運:";buf_gaiunn;chr$(13)
33370 buffer$="外運:"+str$(buf_gaiunn)
33380 endif
33390 if sex_type$="男性" then
33400 print"地運:";buf_chiunn;chr$(13)
33410 buffer$="地運:"+str$(buf_chiunn)
33420 endif
33430 color rgb(0,0,0)
33440 input"(登録する:Yes/登録しない:No):",key$
33450 if key$="Yes" or key$="yes" then
33460 open "config/Parsonal_data/mydata.dat" for output as #1
33470 print #1,"名前:";buf_name1$+buf_name2$
33480 print #1,"性別:";sex_type$
33490 print #1,buffer$
33500 close #1
33510 ui_msg"データーを保存しました"
33520 goto Main_Screen1:
33530 endif
33540 '２．設定ファイルが存在する場合
33550 'ファイル読み込み 自分のデーターを表示
33560 cls
33570 open "Config/Parsonal_data/mydata.dat" for input as #2
33580 line input #2,a$
33590 line input #2,b$
33600 line input #2,c$
33610 close #2
33620 buffername$=a$
33630 buffername2$=b$
33640 buffername3$=c$
33650 bufff$=Mid$(buffername$,1,3)
33660 buff2$=Mid$(buffername2$,1,3)
33670 buff3$=Mid$(buffername3$,1,3)
33680 n=len(a$)
33690 sextype$=Mid$(buffername2$,4,2)
33700 if sextype$="男性" then
33710 '男性:s2
33720 s2=1
33730 '女性のデーター入力
33740 goto Anzai_Top:
33750 endif
33760 if sextype$="女性" then
33770 s2=2
33780 '男性のデーター入力
33790 goto Anzai_Top:
33800 endif
33810 '女性のデーター結果表示
33820 '1.プロフィール性別男性の場合 ここから
33830 Result_Anzai_Aisyou:
33840 cls:talk ""
33850 color rgb(255,255,255)
33860 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
33870 name_length = len(bufername$)
33880 myname$ = Mid$(buffername$,4,4)
33890 chiunn = val(Mid$(buffername3$,4,2))
33900 tansuu1 = buf_number(chiunn)
33910 bufname$ = name3$ + name4$
33920 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33930 color rgb(255,0,255)
33940 print "自分の名前(男性):";myname$;chr$(13)
33950 print "地運の端数:";tansuu1;chr$(13)
33960 print "相手の名前(女性):";bufname$;chr$(13)
33970 print "外運の端数:";buf_t_gaiunn;chr$(13)
33980 print "二人の相性:";bufferAisyou$;chr$(13)
33990 talk "二人の相性は" + bufferAisyou$
34000 color rgb(0,0,0)
34010 print"エンターキーを押してください"
34020 key$=Input$(1)
34030 'トップ画面に行く
34040 if key$ = chr$(13) then goto Main_Screen1:
34050 '1.プロフィール性別男性の場合　ここまで
34060 '2.プロフィール性別女性の場合　ここから
34070 cls 3
34080 '描画領域　ここから
34090 line (0,0)-(1080,60),rgb(0,0,255),bf
34100 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34110 line (0,60)-(1080,460),rgb(127,255,212),bf
34120 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
34130 LINE (0,460)-(1080,520),rgb(0,255,0),bf
34140 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
34150 '描画領域 ここまで
34160 color rgb(255,255,255)
34170 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
34180 '計算領域　ここから
34190 myname$ = Mid$(buffername$,4,4)
34200 gaiunn = val(Mid$(buffername3$,4,2))
34210 buf_t_gaiunn = buf_number(buf_gaiunn)
34220 buf_t_chiunn = buf_number(buf_chiunn)
34230 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
34240 bufname$ = name$ + name2$
34250 '計算領域 ここまで
34260 color rgb(255,0,255)
34270 print "自分の名前(女性):";myname$;chr$(13)
34280 print "外運の端数";buf_t_gaiunn;chr$(13)
34290 print "相手の名前(男性):";bufname$;chr$(13)
34300 print "地運の端数:";buf_t_chiunn;chr$(13)
34310 print "二人の相性:";bufferAisyou$;chr$(13)
34320 color rgb(0,0,0)
34330 print "エンターキーを押してください"
34340 key$ = Input$(1)
34350 if key$=chr$(13) then goto Main_Screen1:
34360 '2.プロフィール性別女性の場合　ここまで
34370 '取扱説明書
34380 '相性占い　トップメニュー ここから
34390 'グラフィック ここから
34400 Anzai_Aishou_Top_Menu:
34410 cls 3:talk ""
34420 '1行目
34430 line(0,0)-(1080,60),rgb(0,0,255),bf
34440 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34450 '2行目
34460 line(0,60)-(1080,380),rgb(127,255,212),bf
34470 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34480 '3行目
34490 line(0,360)-(1080,540),rgb(0,255,0),bf
34500 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34510 'グラフィック　ここまで
34520 color rgb(255,255,255)
34530 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34540 color rgb(255,0,255)
34550 print"1.男女の相性"+chr$(13)
34560 print"2.前の画面に戻る"+chr$(13)
34570 print"3.トップ画面に戻る"+chr$(13)
34580 color rgb(0,0,0)
34590 print"番号を選んでください:"+chr$(13)
34600 Input"番号:",key
34610 if key = 1 then goto Anzai_Aishou_Top1:
34620 if key = 2 then goto Anzai_Top:
34630 if key = 3 then goto Main_Screen1:
34640 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34650 'グラフィック領域　ここから
34660 Life_Tenki:
34670 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34680 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34690 line(0,60)-(1150,180),rgb(127,255,212),bf
34700 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34710 line(0,120)-(1150,200),rgb(0,255,0),bf
34720 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34730 'グラフィック領域　ここまで
34740 '誕生日入力　生まれた年
34750 color rgb(255,255,255)
34760 print"誕生日入力　生まれた年" + chr$(13)
34770 COLOR rgb(255,0,255)
34780 print"生まれた年を入れてください" + chr$(13)
34790 color rgb(0,0,0)
34800 Input"生まれた年:",year
34810 '誕生日入力 生まれた月
34820 cls
34830 color rgb(255,255,255)
34840 print"誕生日入力 生まれた月" + chr$(13)
34850 color rgb(255,0,255)
34860 print"生まれた月を入力してください" + chr$(13)
34870 color rgb(0,0,0)
34880 Input"生まれた月:",month
34890 '誕生日入力 生まれた日を入力
34900 cls
34910 color rgb(255,255,255)
34920 print"誕生日入力 生まれた日入力" + chr$(13)
34930 color rgb(255,0,255)
34940 print"生まれた日を入力してください" + chr$(13)
34950 color rgb(0,0,0)
34960 Input"生まれた日:",day
34970 '人生の転機を見る
34980 'グラフィック領域　ここから
34990 cls 3:talk ""
35000 line(0,0)-(1150,60),rgb(0,0,255),bf
35010 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35020 line(0,60)-(1150,470),rgb(127,255,212),bf
35030 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35040 line(0,470)-(1150,520),rgb(0,255,0),bf
35050 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
35060 'グラフィック描画領域  ここまで
35070 cls
35080 buffername$ = bufname$ + bufname2$
35090 color rgb(255,255,255)
35100 print buffername$;"さんの人生の転機を見る1"+chr$(13)
35110 color rgb(255,0,255)
35120 buf_total2 = buf_total - (fix(buf_total/10)*10)
35130 tenki1_year = year + buf_total2
35140 tenki2_year = year + buf_total2+5
35150 tenki3_year = year + buf_total2+5+5
35160 tenki4_year = year + buf_total2+5+5+5
35170 tenki1 = buf_total2
35180 tenki2 = buf_total2 + 5
35190 tenki3 = buf_total2 + 5 + 5
35200 tenki4 = buf_total2 + 5 + 5 + 5
35210 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35220 print tenki1_year;"年";tenki1;"歳"+chr$(13)
35230 print tenki2_year;"年";tenki2;"歳"+chr$(13)
35240 print tenki3_year;"年";tenki3;"歳"+chr$(13)
35250 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35260 color rgb(0,0,0)
35270 print"エンターキーを押してください"
35280 key$=Input$(1)
35290 if key$=chr$(13) then goto Life_Tenki:
35300 '2ページ目
35310 cls
35320 color rgb(255,255,255)
35330 print buffername$;"さんの人生の転機2"+chr$(13)
35340 color rgb(255,0,255)
35350 tenki5_year = tenki4_year + 5
35360 tenki6_year = tenki4_year + 5 + 5
35370 tenki7_year = tenki4_year + 5 + 5 + 5
35380 tenki8_year = tenki4_year + 5 + 5 + 5+5
35390 tenki5 = tenki4 + 5
35400 tenki6 = tenki4 + 5 + 5
35410 tenki7 = tenki4 + 5 + 5 + 5
35420 tenki8 = tenki4 + 5 + 5 + 5 + 5
35430 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35440 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35450 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35460 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35470 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35480 color rgb(0,0,0)
35490 print"エンターキーを押してください",key$
35500 key$=Input$(1)
35510 if key$ = chr$(13) then goto Life_Tenki3:
35520 '3ページ目
35530 Life_Tenki3:
35540 cls
35550 color rgb(255,255,255)
35560 print buffername$;"さんの人生の転機3"+chr$(13)
35570 '計算部分
35580 tenki_year9 = tenki8_year + 5
35590 tenki_year10 = tenki8_year + 5 + 5
35600 tenki_year11 = tenki8_year + 5 + 5 + 5
35610 tenki_year12 = tenki8_year + 5 + 5 + 5 + 5
35620 tenki9 = tenki8 + 5
35630 tenki10 = tenki8 + 5 + 5
35640 tenki11 = tenki8 + 5  + 5 + 5
35650 tenki12 = tenki8 + 5 + 5 + 5 + 5
35660 color rgb(255,0,255)
35670 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35680 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35690 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35700 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35710 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35720 color rgb(0,0,0)
35730 print"エンターキーを押してください"
35740 key$=Input$(1)
35750 if key$=chr$(13) then goto Life_Tenki4:
35760 'グラフィック描画領域 ここから
35770 Life_Tenki4:
35780 cls 3
35790 line(0,0)-(1150,60),rgb(0,0,255),bf
35800 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35810 line(0,60)-(1150,470),rgb(127,255,212),bf
35820 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35830 line(0,470)-(1150,850),rgb(0,255,0),bf
35840 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35850 'グラフィック描画領域 ここまで
35860 '4回目
35870 cls
35880 color rgb(255,255,255)
35890 print buffername$;"さんの人生の転機４"+chr$(13)
35900 color rgb(255,0,255)
35910 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
35920 '計算部分
35930 tenki_year13 = tenki_year12 + 5
35940 tenki_year14 = tenki_year12 + 5 + 5
35950 tenki_year15 = tenki_year12 + 5 + 5 + 5
35960 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35970 tenki13 = tenki12 + 5
35980 tenki14 = tenki12 + 5 + 5
35990 tenki15 = tenki12 + 5 + 5 + 5
36000 tenki16 = tenki12 + 5 + 5 + 5 + 5
36010 color rgb(255,0,255)
36020 print tenki_year13;"年";tenki13;"歳"+chr$(13)
36030 print tenki_year14;"年";tenki14;"歳"+chr$(13)
36040 print tenki_year15;"年";tenki15;"歳"+chr$(13)
36050 print tenki_year16;"年";tenki16;"歳"+chr$(13)
36060 color rgb(0,0,0)
36070 print"コマンドを入れてください"+chr$(13)
36080 print"q+エンターキー:トップ画面"+chr$(13)
36090 Print"エンターキー:次へ行く"+chr$(13)
36100 print"コマンド:"
36110 key$=Input$(1)
36120 if key$=chr$(13) then goto Life_Tenki5:
36130 IF key$="q" then goto Main_Screen1:
36140 '
36150 Life_Tenki5:
36160 cls
36170 color rgb(255,255,255)
36180 print buffername$;"さんの人生の転機5" + chr$(13)
36190 color rgb(255,0,255)
36200 print"誕生日";year;"年";month;"月";day;"日" + chr$(13)
36210 tenki_year17=tenki_year16+5
36220 tenki_year18=tenki_year16+5+5
36230 tenki_year19=tenki_year16+5+5+5
36240 tenki_year20=tenki_year16+5+5+5+5
36250 tenki17=tenki16+5
36260 tenki18=tenki16+5+5
36270 tenki19=tenki16+5+5+5
36280 tenki20=tenki16+5+5+5+5
36290 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36300 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36310 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36320 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36330 color rgb(0,0,0)
36340 print"コマンドを入れてください"+chr$(13)
36350 print"トップに戻る:q+エンターキー"+chr$(13)
36360 print"最初から:エンターキー"+chr$(13)
36370 print"コマンド:"
36380 key$=Input$(1)
36390 if key$=chr$(13) then goto Life_Tenki:
36400 if key$="q" then goto Main_Screen1:
36410 '改名チェック 改名候補を入力
36420 'グラフィック　領域　ここから
36430 '左側 部分
36440 cls 3:talk ""
36450 line(0,0)-(1100,60),rgb(0,0,255),bf
36460 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36470 line(0,60)-(1100,380),rgb(127,255,212),bf
36480 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36490 line(0,380)-(790,470),rgb(0,255,0),bf
36500 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36510 '中央の縦の線 ここから
36520 'line(1100,0)-(1112,370),rgb(0,0,0),b
36530 '中央の縦の線 ここまで
36540 '右側 部分
36550 line(1103,0)-(1700,60),rgb(0,0,255),bf
36560 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36570 'グラフィック 領域　ここまで
36580 '吉凶判定
36590 if buffer_K=0 then
36600 buffer_check$="○"
36610 else
36620 buffer_check$="☓"
36630 endif
36640 'Title 左側の文字
36650 'rgb(255,255,255):白
36660 color rgb(255,255,255)
36670 locate 1,0
36680 print"安斎流姓名判断 改名チェッカー"
36690 'Title 右側の文字
36700 locate size(2)-16,0
36710 print"改名候補リスト(3件まで)"
36720 '候補リストの名前部分 (右側)
36730 '1行目
36740 'locate 22,2
36750 locate size(2)-18,2
36760 color rgb(0,0,0)
36770 print "番号"
36780 'locate 26,2
36790 locate size(2)-14,2
36800 print"名前"
36810 'locate 32,2
36820 locate size(2)-8,2
36830 print"吉凶"
36840 'locate 36,2
36850 locate size(2)-4,2
36860 print"判定"
36870 '2行目
36880 select case kaimei_count
36890 case 0:
36900 'データー1件 の時
36910 kaimei_count = kaimei_count + 1
36920 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
36930 buffer_Kaimei$(0,1,0,0)=name$
36940 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36950 buffer_Kaimei$(0,0,0,1)=buffer_check$
36960 'cls
36970 color rgb(255,0,255)
36980 'locate 23,3
36990 locate size(2)-17,3
37000 print buffer_Kaimei$(1,0,0,0)
37010 'locate 25,3
37020 locate size(2)-15,3
37030 print buffer_Kaimei$(0,1,0,0)
37040 'locate 32,3
37050 locate size(2)-8,3
37060 print buffer_Kaimei$(0,0,1,0)
37070 locate size(2)-3,3
37080 print buffer_Kaimei$(0,0,0,1)
37090 case 1:
37100 'データー2件の時
37110 color rgb(255,0,255)
37120 kaimei_count = kaimei_count + 1
37130 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
37140 buffer_Kaimei$(0,2,0,0)=name$
37150 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
37160 buffer_Kaimei$(0,0,0,2)=buffer_check$
37170 'cls
37180 '1行目
37190 'locate 23,3
37200 locate size(2)-17,3
37210 print buffer_Kaimei$(1,0,0,0)
37220 'locate 25,3
37230 locate size(2)-15,3
37240 print buffer_Kaimei$(0,1,0,0)
37250 'locate 32,3
37260 locate size(2)-8,3
37270 print buffer_Kaimei$(0,0,1,0)
37280 'locate 37,3
37290 locate size(2)-3,3
37300 print buffer_Kaimei$(0,0,0,1)
37310 '2行目
37320 'locate 23,4
37330 locate size(2)-17,4
37340 print buffer_Kaimei$(2,0,0,0)
37350 'locate 25,4
37360 locate size(2)-15,4
37370 print buffer_Kaimei$(0,2,0,0)
37380 'locate 32,4
37390 locate size(2)-8,4
37400 print buffer_Kaimei$(0,0,2,0)
37410 'locate 37,4
37420 locate size(2)-3,4
37430 print buffer_Kaimei$(0,0,0,2)
37440 case 2:
37450 'データー3件の時
37460 '1
37470 color rgb(255,0,255)
37480 kaimei_count = kaimei_count + 1
37490 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37500 buffer_Kaimei$(0,3,0,0)=name$
37510 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37520 buffer_Kaimei$(0,0,0,3)=buffer_check$
37530 '2  1行目
37540 'locate 23,3
37550 locate size(2) - 17 , 3
37560 print buffer_Kaimei$(1,0,0,0)
37570 'locate 25,3
37580 locate size(2) - 15 , 3
37590 print buffer_Kaimei$(0,1,0,0)
37600 'locate 32,3
37610 locate size(2) - 8 , 3
37620 print buffer_Kaimei$(0,0,1,0)
37630 'locate 37,3
37640 locate size(2) - 3 , 3
37650 print buffer_Kaimei$(0,0,0,1)
37660 '3  2行目
37670 'locate 23,4
37680 locate size(2) - 17 , 4
37690 print buffer_Kaimei$(2,0,0,0)
37700 'locate 25,4
37710 locate size(2) - 15 , 4
37720 print buffer_Kaimei$(0,2,0,0)
37730 'locate 32,4
37740 locate size(2) - 8 , 4
37750 print buffer_Kaimei$(0,0,2,0)
37760 'locate 37,4
37770 locate size(2) - 3 , 4
37780 print buffer_Kaimei$(0,0,0,2)
37790 '4  3行目
37800 'locate 23,5
37810 locate size(2) - 17 , 5
37820 print buffer_Kaimei$(3,0,0,0)
37830 'locate 25,5
37840 locate size(2) - 15 , 5
37850 print  buffer_Kaimei$(0,3,0,0)
37860 'locate 32,5
37870 locate size(2)-8,5
37880 print buffer_Kaimei$(0,0,3,0)
37890 'locate 37,5
37900 locate size(2)-3,5
37910 print buffer_Kaimei$(0,0,0,3)
37920 case 3:
37930 'データー4件の時
37940 '1
37950 '2
37960 '3
37970 '4
37980 '5
37990 end select
38000 '説明部分　左側
38010 locate 0,2
38020 color rgb(255,0,255)
38030 print"思いついた候補の名前"
38040 locate 0,4
38050 print"(ニックネーム　or 会社名)を"
38060 locate 0,6
38070 print"10文字以内で入力してください"
38080 color rgb(0,0,0)
38090 locate 0,8
38100 if kaimei_count = 1 or kaimei_count = 2 then
38110 Input"名前:",kouho_name$
38120 name$=kouho_name$
38130 n=len(name$)
38140 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 36810
38150 'else
38160 if n =< 10 then goto 31760
38170 endif
38180 if kaimei_count = 3 then
38190 Input"エンターキーを押してください",key$
38200 if key$ = "" then
38210 'データーを初期化して、トップ画面に行く
38220 '1.データーを初期化
38230 kaimei_count = 0
38240 for i=1 to 3
38250 buffer_Kaimei$(i,0,0,0) = ""
38260 buffer_Kaimei$(0,i,0,0) = ""
38270 buffer_Kaimei$(0,0,i,0) = ""
38280 buffer_Kaimei$(0,0,0,i) = ""
38290 next i
38300 '2.トップ画面に行く
38310 goto Main_Screen1:
38320 endif
38330 endif
38340 '霊遺伝姓名学 ここから
38350 'グラフィック領域　ここから
38360 '性別入力
38370 Reiden_Top_Input_Sextype:
38380 cls 3:talk ""
38390 No = 1:y = 0:key$ = "":bg = 0:init "kb:4"
38400 sp_on 1,1:sp_put 1,(10,200),1,0
38410 'Line1
38420 line (0,0)-(1080,60),rgb(0,0,255),bf
38430 line (0,0)-(1077,57),rgb(0,255,0),b
38440 'Line 2
38450 line (0,63)-(1080,537),rgb(127,255,212),bf
38460 line (0,60)-(1077,540),rgb(0,0,0),b
38470 'Line 3
38480 line (0,540)-(1080,630),rgb(0,255,0),bf
38490 line (0,543)-(1077,633),rgb(0,0,255),b
38500 'グラフィック領域　ここまで
38510 '音声表示
38520 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38530 '性別変数:sex_type=0
38540 '文字色： 白
38550 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38560 '文字色：赤
38570 color rgb(255,0,255)
38580 print"占う人の性別の番号を入れてください" + chr$(13)
38590 print" :1.女 性" + chr$(13)
38600 print" :2.男 性" + chr$(13)
38610 print" :3.前の画面に戻る" + chr$(13)
38620 locate 0,12
38630 color rgb(0,0,0)
38640 print "1.女性を選択しました"
38650 Reiden_Top_Input_Sextype2:
38660 y = 0:key$ = "":bg = 0
38670 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38680 key$=inkey$
38690 y=stick(1)
38700 bg=strig(1)
38710 pause 2.50*100
38720 wend
38730 if (key$=chr$(31) or y=1) then
38740 select case No
38750 case 1:
38760 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38770 case 2:
38780 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38790 case 3:
38800 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38810 end select
38820 endif
38830 if (key$ = chr$(30) or y = -1) then
38840 select case No
38850 case 1:
38860 No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38870 case 2:
38880 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
38890 case 3:
38900 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38910 end select
38920 endif
38930 if (bg=2 or key$=chr$(13)) then
38940 select case No
38950 case 1:
38960 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38970 case 2:
38980 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38990 case 3:
39000 sp_on 3,0:goto Main_Screen1:
39010 end select
39020 endif
39030 '描画領域　ここから
39040 ReiIden_Input_male:
39050 cls 3:init"kb:2":talk ""
39060 'Line 1 Title
39070 line (0,0)-(850,60),rgb(0,0,255),bf
39080 line (0,0)-(850,57),rgb(0,255,0),b
39090 'Line2 Input name
39100 line (0,60)-(850,300),rgb(0,255,0),bf
39110 line (0,60)-(850,303),rgb(0,0,255),b
39120 '描画領域 ここまで
39130 '文字色：白
39140 color rgb(255,255,255)
39150 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
39160 '文字色：黒
39170 color rgb(0,0,0)
39180 print "名前の姓の部分を入れてください" + chr$(13)
39190 Input"名前(姓の部分):",name1$
39200 '名の入力部分
39210 cls
39220 color rgb(255,255,255)
39230 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
39240 color rgb(0,0,0)
39250 print "名前の名の部分を入れてください"+chr$(13)
39260 Input"名前(名の部分):",name2$:goto check:
39270 '2.女性の場合　既婚か未婚か確認する
39280 '2-2-1女性の姓の入力
39290 'グラフィック領域　ここから
39300 ReiIden_Input_female:
39310 cls 3:init"kb:2":talk ""
39320 'Line1 Title
39330 line (0,0)-(850,60),rgb(0,0,255),bf
39340 line (0,0)-(850,57),rgb(0,255,0),b
39350 'Line 2 入力欄
39360 line (0,60)-(850,360),rgb(0,255,0),bf
39370 line (0,60)-(850,357),rgb(0,0,255),b
39380 'Line 2 入力欄(名前入力)
39390 'グラフィック領域 ここまで
39400 cls:init"kb:2"
39410 color rgb(255,255,255)
39420 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39430 color rgb(255,0,0)
39440 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39450 color rgb(0,0,0)
39460 print "名前の姓の部分を入れてください"+chr$(13)
39470 Input "名前(姓の部分):",name3$
39480 '2-2-2女性の名の入力
39490 cls:init"kb:2"
39500 color rgb(255,255,255)
39510 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39520 color rgb(0,0,0)
39530 print "名前の名の部分を入れてください"+chr$(13)
39540 Input "名前(名の部分):",name4$
39550 '計算領域　ここから
39560 check:
39570 '苗字の画数:buffer_name1_count
39580 'name1$,name2$:男性
39590 if sex_type = 1 then
39600 'sex_type=1 :女性のとき
39610 buf_male_female_name1$=name3$
39620 buf_male_female_name2$=name4$
39630 endif
39640 if sex_type = 2 then
39650 'sex_type=2 :男性のとき
39660 buf_male_female_name1$=name1$
39670 buf_male_female_name2$=name2$
39680 endif
39690 buffer_name1_count=len(buf_male_female_name1$)
39700 buffer_name2_count=len(buf_male_female_name2$)
39710 select case buffer_name1_count
39720 'AとBを求める
39730 case 1:
39740 '1.苗字の画数が1つのとき
39750 'A:霊数 1
39760 A=1
39770 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39780 B = char_count(buf_name1$)
39790 case 2:
39800 '2.苗字の画数が2つのとき
39810 '2-1:苗字の1文字目:buf_name1$
39820 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39830 '2-2:苗字の2文字目:buf_name2$
39840 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
39850 A=char_count(buf_name1$)
39860 B=char_count(buf_name2$)
39870 'B=char_count(buf_name2$)
39880 case 3:
39890 '3.苗字の画数が3つの時
39900 '3-1:苗字の1文字目:buf_name1$
39910 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39920 '3-2:苗字が3つのときの2つ目の文字をもとめる
39930 '3-2:苗字の2つ目:buf_name2$
39940 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39950 '3-3:苗字が3つのときの3文字目
39960 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39970 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39980 if buf_name2$="々" then
39990 A = char_count(buf_name1$) * 2
40000 B = char_count(buf_name3$)
40010 else
40020 A = char_count(buf_name1$) + char_count(buf_name2$)
40030 B = char_count(buf_name3$)
40040 endif
40050 '姓が4文字
40060 case 4:
40070 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40080 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40090 buf_name3$=Mid$(buf_male_female_name1$,3,1)
40100 buf_name4$=Mid$(buf_male_female_name1$,4,1)
40110 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
40120 B=char_count(buf_name4$)
40130 case else:
40140 end select
40150 '2.C,Dを求める
40160 select case buffer_name2_count
40170 case 1:
40180 '名が1文字の時
40190 'CとDを求める
40200 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40210 C = char_count(buff_name1$)
40220 'D=1:霊数
40230 D = 1
40240 case 2:
40250 '名が2文字の時
40260 'CとDを求める
40270 '名の1文字目:buff_name1$
40280 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40290 '名の2文字目:buff_name2$
40300 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40310 C = char_count(buff_name1$)
40320 D = char_count(buff_name2$)
40330 case 3:
40340 '名が3文字の時
40350 'CとDを求める
40360 '名の1文字目:buff_name1$
40370 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40380 '名の2文字目:buff_name2$
40390 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40400 if buff_name2$ = "々" then
40410 buff_name2$ = buff_name1$
40420 endif
40430 '名の3文字目:buff_name3$
40440 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40450 C = char_count(buff_name1$)
40460 D = char_count(buff_name2$) + char_count(buff_name3$)
40470 end select
40480 '1.先祖運を求める
40490 buffer_Senzo = A + B
40500 '2.性格運を求める
40510 buffer_Seikaku = B + C
40520 '3.愛情運を求める
40530 buffer_Aijyou = C + D
40540 '4.行動運を求める
40550 buffer_Kouzou = A + D
40560 '1.生数を求める
40570 func buf_Seisu(buffer)
40580 if buffer < 10 then
40590 seisu=buffer
40600 endif
40610 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40620 seisu = 0
40630 endif
40640 if buffer > 10 then
40650 if buffer=20 then
40660 seisu = 0
40670 else
40680 n = buffer - (fix(buffer / 10) * 10)
40690 seisu = n
40700 endif
40710 endif
40720 endfunc seisu
40730 func buf_Wasu(buffer)
40740 buf_wasu = 0:wasu = 0
40750 if buffer < 10 then
40760 '
40770 wasu = buffer:goto wasu:
40780 else
40790 if buffer = 10 then
40800 wasu = 1:goto wasu:
40810 else
40820 if buffer > 10  then
40830 if buffer=19 or buffer=28 or buffer=37 then
40840 wasu=1:goto wasu:
40850 else
40860 if buffer = 29 then
40870 wasu=2:goto wasu:
40880 'endif
40890 else
40900 a = fix(buffer / 10)
40910 b = buffer - a * 10
40920 c = a + b
40930 if c = 19 or c=28 then
40940 wasu=1
40950 '
40960 else
40970 wasu=c
40980 endif
40990 endif
41000 endif
41010 endif
41020 endif
41030 if c < 10 then
41040 wasu = c
41050 'endif
41060 endif
41070 else
41080 if buffer=19 or buffer=28 then
41090 wasu = 1
41100 endif
41110 endif
41120 wasu:
41130 buf_wasu=wasu
41140 endfunc buf_wasu
41150 func buf_kyoudai$(buf_sex_type,buf_Sa$)
41160 select case buf_sex_type
41170 '1.女性の場合
41180 case 1:
41190 if (buf_Sa$ = "連続") then
41200 buffer_kyoudai$="長女"
41210 endif
41220 if (buf_Sa$ = "1差") then
41230 buffer_kyoudai$="次女"
41240 endif
41250 if (buf_Sa$ = "2差") then
41260 buffer_kyoudai$="三女"
41270 endif
41280 if (buf_Sa$ = "3差") then
41290 buffer_kyoudai$="四女"
41300 endif
41310 if (buf_Sa$ = "4差") then
41320 buffer_kyoudai$="五女"
41330 endif
41340 '男性の場合
41350 case 2:
41360 if (buf_Sa$ = "連続") then
41370 buffer_kyoudai$="長男"
41380 endif
41390 if (buf_Sa$ = "1差") then
41400 buffer_kyoudai$="次男"
41410 endif
41420 if (buf_Sa$ = "2差") then
41430 buffer_kyoudai$="三男"
41440 endif
41450 if (buf_Sa$ = "3差") then
41460 buffer_kyoudai$="四男"
41470 endif
41480 if (buf_Sa$ = "4差") then
41490 buffer_kyoudai$="五男"
41500 endif
41510 case else:
41520 end select
41530 kyoudai$=buffer_kyoudai$
41540 endfunc kyoudai$
41550 '1.タテ型
41560 '1.同じ数字が2組ある場合
41570 func Tate_gata$()
41580 if Senzo_wasu = Seikaku_wasu  then
41590 if Aijyou_wasu - Seikaku_wasu > 1 then
41600 Spirit_type$="タテ型"
41610 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41620 Sa$ = str$(Sa_count) + "差"
41630 else
41640 Spirit_type$="タテ型"
41650 Sa$="連続"
41660 endif
41670 endif
41680 endfunc
41690 '2. ナナメ型
41700 '同じ数字が2組ある場合
41710 func Naname_gata$()
41720 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
41730 Spirit_type$="斜め型"
41740 endif
41750 if Seikaku_wasu - Senzo_wasu > 1 then
41760 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
41770 Sa$=str$(Sa_count)+" 差"
41780 else
41790 Sa$="連続"
41800 endif
41810 endfunc
41820 '3.表十字型
41830 '同じ数字が2組ある場合
41840 func Omote_jyuji_gata1$()
41850 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
41860 Spirit_type$ = "表十字型"
41870 endif
41880 if Senzo _wasu - Seikaku_wasu > 1 then
41890 Sa_count = Senzo_wasu - Seikaku_wasu - 1
41900 else
41910 if Senzo_wasu  -  Seikaku_wasu = 1  then
41920 Sa$="連続"
41930 endif
41940 endif
41950 endfunc
41960 '3-1.表十字型(ヨコ系)
41970 func Omote_jyuji_gata_yoko$()
41980 endfunc
41990 '3-2.表十字型(上下型)
42000 func Omote_jyuji_gata_jyouge()
42010 endfunc
42020 '4.ヨコ型
42030 func Yoko_gata$()
42040 endfunc
42050 '5.上下型
42060 func Jyouge_gata$()
42070 endfunc
42080 '6.1.中広型(タテ系)
42090 func Nakahiro_Tate$()
42100 endfunc
42110 '6.2中広型(ナナメ系)
42120 func Nakahiro_Naname$()
42130 endfunc
42140 '6.3中広型(表十字型)
42150 func Nakahiro_Omotejyuji$()
42160 endfunc
42170 '7.1.中一差(タテ系)
42180 func Chuissa_Tate$()
42190 endfunc
42200 '7.2中一差(ナナメ系)
42210 func Chuissa_Naname$()
42220 endfunc
42230 '8.1.中二差(タテ系)
42240 func Chunissa_Tate$()
42250 endfunc
42260 '8.2.中二差(ナナメ系)
42270 '9.1.順序型(タテ上下系)
42280 func Chunissa_Tate_jyouge$()
42290 endfunc
42300 '9.2.順序型(タテ、ヨコ系)
42310 func Jyunjyo_Tate_yoko$()
42320 endfunc
42330 '9.3.順序型(ナナメ、上下系)
42340 func Jyunjyo_Naname_jyouge$()
42350 endfunc
42360 '9.4.順序型(ナナメ、ヨコ系)
42370 '10.1.中順序型(ヨコ系)
42380 func Nakajyunjyo_yoko$()
42390 endfunc
42400 '10.2.中順序型(上下系)
42410 func Nakajyunjyo_jyouge$()
42420 endfunc
42430 '11.1.隔離型(タテ、上下系)
42440 func Kakuri_tate_jyouge$()
42450 endfunc
42460 '11.2.隔離型(タテ、ヨコ系)
42470 func Kakuri_tate_yoko$()
42480 endfunc
42490 '11.3.隔離型(ナナメ、上下系)
42500 func Kakuri_Naname_jyouge$()
42510 endfunc
42520 '11.4.隔離型(ナナメ、ヨコ系)
42530 func Kakuri_Naname_yoko$()
42540 endfunc
42550 '11.5.隔離型(タテ系)
42560 func Kakuri_tate$()
42570 endfunc
42580 '11.6.隔離型(ナナメ系)
42590 func Kakuri_naname$()
42600 endfunc
42610 '11.7.隔離型(上下、ヨコ系)
42620 func Kakuri_Jyouge_yoko$()
42630 endfunc
42640 Spirit_type$="No data"
42650 '1.先祖運　和数
42660 Senzo_wasu = buf_Wasu(buffer_Senzo)
42670 '2.先祖運 生数
42680 Senzo_seisu = buf_Seisu(buffer_Senzo)
42690 '3.性格運 和数
42700 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
42710 '4.性格運 生数
42720 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
42730 '5.愛情運 和数
42740 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
42750 '6.愛情運 生数
42760 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
42770 '7.行動運 和数
42780 Koudou_wasu = buf_Wasu(buffer_Kouzou)
42790 '8.行動運 生数
42800 Koudou_seisu = buf_Seisu(buffer_Kouzou)
42810 '計算領域 ここまで
42820 '描画領域　ここから
42830 Result_ReiIden1:
42840 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
42850 'Title
42860 line (0,0)-(1080,60),rgb(0,0,255),bf
42870 pen 3:line (0,0)-(1080,57),rgb(255,255,255),b
42880 'name
42890 line (0,60)-(1080,165),rgb(0,255,0),bf
42900 pen 5:line (0,63)-(1080,162),rgb(255,0,255),b
42910 '生数、和数
42920 line (0,165)-(1080,550),rgb(125,255,212),bf
42930 pen 3:line(0,168)-(1080,547),rgb(0,0,255),b
42940 'プッシュメッセージ
42950 line (0,550)-(1080,650),rgb(0,255,0),bf
42960 pen 5:line (0,553)-(1080,653),rgb(0,0,0),b
42970 '描画領域　ここまで
42980 color rgb(255,255,255)
42990 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
43000 color rgb(0,0,0)
43010 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
43020 color rgb(255,0,255)
43030 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
43040 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
43050 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
43060 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
43070 talk "診断結果１です、あなたのわすうとせいすうです。"
43080 color rgb(0,0,0)
43090 print"エンターキーを押してください"
43100 while (bg <> 2 and key$ <> chr$(13))
43110 key$=inkey$
43120 bg=strig(1)
43130 pause 2.50*100
43140 wend
43150 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
43160 '描画領域　ここから
43170 Result_ReiIden2:
43180 cls 3:init"kb:4"
43190 'Title Color:青
43200 line (0,0)-(860,60),rgb(0,0,255),bf
43210 'Title 枠
43220 line (0,0)-(860,57),rgb(255,0,255),b
43230 'Message
43240 line (0,60)-(860,650),rgb(127,255,212),bf
43250 'Message 枠
43260 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
43270 '
43280 '描画領域　ここまで
43290 color rgb(255,255,255)
43300 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43310 '十二運の基礎運
43320 '1.四大主流型
43330 'パターン１ 同じ数字の場合
43340 '1.オール同数化 全部同じ
43350 '1-if
43360 sa_count=0
43370 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43380 Spirit_type$ = "オール同数化"
43390 Sa$="3差"
43400 else
43410 'パターン１ 同じ数字2つの場合
43420 '2.タテ型
43430 '数字が２つ同じ
43440 '2-if
43450 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43460 Spirit_type$ = "タテ型"
43470 '2.タテ型　1
43480 if Koudou_wasu - Senzo_wasu = 1 then
43490 Sa$="連続"
43500 else
43510 '2.タテ型　2
43520 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43530 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43540 Sa$=str$(Sa_count) + "差"
43550 endif
43560 endif
43570 endif
43580 endif
43590 '2.タテ型　3
43600 '1.type
43610 'Spirit_type$ = "四大主流型 タテ型"
43620 '3.斜め型
43630 '数字が２つ同じ
43640 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
43650 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
43660 Sa$="連続"
43670 else
43680 '先祖＝行動　性格運=愛情運
43690 '3-if
43700 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
43710 Spirit_type$="斜め型"
43720 '3.斜め型 1
43730 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
43740 Sa$ = "連続"
43750 else
43760 if (Seikaku_wasu - Koudou_wasu) < 1 then
43770 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
43780 endif
43790 endif
43800 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
43810 Sa_count = 3
43820 Sa$ = str$(Sa_count - 1) + "差"
43830 else
43840 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
43850 Sa_count = Senzo_wasu - Seikaku_wasu
43860 Sa$ = str$(Sa_count-1) + "差"
43870 endif
43880 endif
43890 endif
43900 '3-if
43910 endif
43920 '3.斜め型 2
43930 '3.斜め型 3
43940 '数字が２つ同じ
43950 '表十字型
43960 '先祖運＝愛情運　　行動運＝性格運
43970 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43980 Spirit_type$="表十字型"
43990 Sa_coun = Senzo_wasu - Seikaku_wasu
44000 if Sa_count > 1 then
44010 Sa$ = str$(Sa_count) + "差"
44020 else
44030 if Sa_count = 1 then
44040 Sa$ = "連続"
44050 endif
44060 endif
44070 endif
44080 'endif
44090 '数字が２つ同じ
44100 '表十字型(横型)
44110 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
44120 Spirit_type$="表十字型(ヨコ型)"
44130 'Sa$を後で書く
44140 endif
44150 '数字が２つ同じ
44160 '表十字型(上下型)
44170 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
44180 Spirit_type$="表十字型(上下型)"
44190 'Sa$を後で書く
44200 endif
44210 'ヨコ型
44220 if Koudou_wasu = Seikaku_wasu then
44230 n=abs(Senzo_wasu - Seikaku_wasu)
44240 n2 = abs(Aijyou_wasu-Seikaku_wasu)
44250 Spirit_type$="ヨコ型"
44260 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
44270 Sa$="連続"
44280 endif
44290 if n = n2 then
44300 if n > 1 then
44310 Sa_count = n - 1
44320 Sa$=str$(Sa_count)+"差"
44330 else
44340 Sa_Count = abs(n - n2)
44350 if Sa_Count > 1 then
44360 Sa$ = str$(Sa_Count) + "差"
44370 endif
44380 endif
44390 endif
44400 endif
44410 '上下型
44420 '同じ数字が1組みある場合
44430 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44440 Spirit_type$ = "上下型"
44450 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44460 Sa$="連続"
44470 endif
44480 endif
44490 '連続した数字が2組みある場合
44500 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
44510 Spirit_type$="中広（なかこう)型(表十字型)"
44520 n=Min(Koudou_wasu , Seikaku_wasu)
44530 n2=Max(Aijyou_wasu , Senzo_wasu)
44540 Sa_count = n - n2
44550 if Sa_count > 1 then
44560 Sa$ = str$(Sa_count - 1) + "差"
44570 else
44580 if Sa_count = 1 then
44590 Sa$ = "連続"
44600 endif
44610 endif
44620 endif
44630 '中一差（タテ系)
44640 '連続した数字が2組みある場合
44650 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
44660 'Spirit_type$="中一差（タテ系)"
44670 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
44680 n = Max(Koudou_wasu,Aijyou_wasu)
44690 n2 = Max(Senzo_wasu,Seikaku_wasu)
44700 else
44710 n = Max(Koudou_wasu,Aijyou_wasu)
44720 n2 = Min(Senzo_wasu,Seikaku_wasu)
44730 endif
44740 Sa_count2 = abs(n2 - n) - 1
44750 if Sa_count2 >= 0 then
44760 select case Sa_count2
44770 case 1:
44780 '中一差（タテ系)
44790 Sa$ = "連続"
44800 Spirit_type$="中一差型（タテ系)*"
44810 case 2:
44820 '中二差型（タテ系)
44830 Sa$ = "1差"
44840 Spirit_type$="中二差型（タテ系)"
44850 case 3:
44860 '中広（なかこう)型(タテ系)
44870 Sa$ = "2差"
44880 Spirit_type$="中三差型（タテ系)"
44890 case 4:
44900 Sa$ = "3差"
44910 Spirit_type$="中広型(タテ系)"
44920 case  else:
44930 cls 3:print"例外に入りました"
44940 end select
44950 '
44960 else
44970 cls 3:print"例外に入りました"
44980 endif
44990 endif
45000 'endif
45010 '中一差（斜め系)
45020 '連続した数字が2組みある場合
45030 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
45040 n = Min(Koudou_wasu,Senzo_wasu)
45050 n2 = Max(Aijyou_wasu,Seikaku_wasu)
45060 Sa_count = n - n2 - 1
45070 select case Sa_count
45080 case 1:
45090 '中一差（斜め系)
45100 '連続した数字が2組みある場合
45110 Sa$="1差"
45120 Spirit_type$="中一差（斜め系)"
45130 case 2:
45140 '中二差（斜め系)
45150 '連続した数字が2組みある場合
45160 Sa$="2差"
45170 Spirit_type$="中二差（斜め系)"
45180 case 3:
45190 Sa$="3差"
45200 Spirit_type$="中広型（斜め系）"
45210 case else:
45220 end select
45230 endif
45240 '順序型(タテ、上下系)
45250 '数字が４つ連続してる場合
45260 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45270 Spirit_type$="順序型(タテ、上下系)"
45280 Sa$="連続"
45290 endif
45300 '中順序型(ヨコ系)
45310 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45320 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45330 Spirit_type$="中順序型(ヨコ系)"
45340 Sa$="1差"
45350 else
45360 '順序型(タテ、ヨコ系)
45370 '数字が４つ連続してる場合
45380 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45390 Spirit_type$="順序型(タテ、ヨコ系)"
45400 Sa$="連続"
45410 endif
45420 endif
45430 endif
45440 '中順序型(上下系)
45450 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
45460 n=Max(Senzo_wasu,Aijyou_wasu)
45470 n2=Min(Koudou_wasu,Seikaku_wasu)
45480 Sa_count = n2 - n
45490 if Sa_count > 1 then
45500 Spirit_type$="中順序型(上下系)"
45510 Sa$ = Str$(Sa_count) + "差"
45520 else
45530 '順序型(斜め、上下系)
45540 '数字が４つ連続してる場合
45550 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
45560 Spirit_type$ = "順序型(斜め、上下系)"
45570 Sa$="連続"
45580 endif
45590 endif
45600 endif
45610 '順序型(斜め、ヨコ系)
45620 '数字が４つ連続してる場合
45630 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
45640 Spirit_type$="順序型(斜め、ヨコ系)"
45650 Sa$="連続"
45660 endif
45670 '隔離型(タテ、上下系)
45680 '数字が1つおきに飛んでる場合
45690 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
45700 Spirit_type$="隔離型(タテ、上下系)"
45710 Sa$="1差"
45720 endif
45730 '隔離型(タテ、ヨコ系)
45740 '数字が1つおきに飛んでる場合
45750 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
45760 Spirit_type$="隔離型(タテ、ヨコ系)"
45770 Sa$="1差"
45780 endif
45790 '隔離型(斜め、上下系)
45800 '数字が1つおきに飛んでる場合
45810 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
45820 Spirit_type$="隔離型(斜め、上下系)"
45830 Sa$="1差"
45840 endif
45850 '隔離型(斜め、ヨコ系)
45860 '数字が1つおきに飛んでる場合
45870 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
45880 Spirit_type$="隔離型(斜め、ヨコ系)"
45890 Sa$="1差"
45900 endif
45910 '隔離型(タテ系)
45920 '数字が2つおきに飛んでる場合
45930 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
45940 Spirit_type$="隔離型(タテ系)"
45950 Sa$="1差"
45960 endif
45970 '隔離型(斜め系)
45980 '数字が2つおきに飛んでる場合
45990 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
46000 Spirit_type$="隔離型(斜め系)"
46010 Sa$="1差"
46020 endif
46030 '隔離型(上下、ヨコ系)
46040 '数字が2つおきに飛んでる場合
46050 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
46060 Spirit_type$="隔離型(上下、ヨコ系)"
46070 Sa$="1差"
46080 'endif
46090 endif
46100 'ここに移動
46110 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
46120 bg=0:bg2=0:key$="":init"kb:4":talk ""
46130 color rgb(255,0,255)
46140 print "●十二の基礎運" + chr$(13)
46150 print Spirit_type$ + Sa$;chr$(13)
46160 print "きょうだい：";Kyoudai$ + chr$(13)
46170 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46180 color rgb(0,0,0)
46190 print"前の画面:左の丸"+chr$(13)
46200 'print"保存して、もう一度やる：スペースキー"+chr$(13)
46210 print"トップ画面に戻る:右の丸"+chr$(13)
46220 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
46230 key$=inkey$
46240 bg=strig(1)
46250 bg2=strig(0)
46260 pause 2.50*100
46270 wend
46280 if (key$ = chr$(13) or bg=2) then
46290 goto Main_Screen1:
46300 else
46310 if (key$ = "b" or bg2 = 2) then
46320 goto Result_ReiIden1:
46330 endif
46340 endif
46350 'ファイル保存 占いデーターを一時保存
46360 Save_Data1:
46370 '********************************************************************
46380 '1.ファイル読み込みで登録件数                                       *
46390 '2.10件かどうかをチェックして10件以下なら保存する                   *
46400 '3.10件以上なら保存しない                                           *
46410 '********************************************************************
46420 '登録件数を求める
46430 '********************************************************************
46440 n=0
46450 open Parsonal_data$ + "Parsonal_data.dat" for append as #3
46460 while (eof(3) = -1)
46470 line input #3,a$
46480 n = n + 1
46490 wend
46500 close #3
46510 '********************************************************************
46520 '登録件数を求める
46530 '********************************************************************
46540 if (n < 10) then
46550 '********************************************************************
46560 '`ファイル読み込み件数をチェック　ここまで
46570 '*********************************************************************
46580 'print#3は末尾は、セミコロンはいらない
46590 '末尾にセミコロンをつけると改行しない
46600 print #3,"名前:" + buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:" + str$(Senzo_wasu);",先祖生数:" + str$(Senzo_seisu);",性格和数:" + str$(Seikaku_wasu);",性格生数:" + str$(Seikaku_seisu);",愛情生数:" + str$(Aijyou_wasu);",愛情和数:" + str$(Aijyou_seisu);",行動和数:" + str$(Koudou_wasu);",行動生数:" + str$(Koudou_seisu)
46610 ui_msg "保存しました"
46620 close #3
46630 else
46640 ui_msg "10件に到達しました。"
46650 endif
46660 goto Reiden_Top_Input_Sextype:
46670 '個人データーリスト  *parsonal_data
46680 Parsonal_data_top:
46690 cls 3:No=0:Key$="":bg=0:y=0
46700 sp_on 0,1:sp_put 0,(10,100),0,0
46710 line(0,0)-(800,60),rgb(0,0,255),bf
46720 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
46730 line (0,60)-(800,440),rgb(127,255,212),bf
46740 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
46750 line (0,440)-(800,670),rgb(0,255,0),bf
46760 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
46770 color rgb(255,255,255)
46780 print"◎個人データーリスト" + chr$(13)
46790 color rgb(255,0,255)
46800 print " :1.霊遺伝姓名学リスト" + chr$(13)
46810 print " :2.霊遺伝姓名学登録件数" + chr$(13)
46820 print " :3.霊遺伝姓名学データー検索"+chr$(13)
46830 print " :4.メインメニューへ行く"+chr$(13)
46840 color rgb(0,0,0):locate 0,10
46850 print "1.霊遺伝姓名学リストを選択"
46860 Parsonal_data_top2:
46870 key$="":bg=0:y=0
46880 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
46890 key$=inkey$
46900 bg=strig(1)
46910 y=stick(1)
46920 pause 2.50*100
46930 wend
46940 '*****************************************************
46950 '1.下のカーソル ここから 2024.10
46960 '*****************************************************
46970 if (key$=chr$(31) or y=1) then
46980 select case No
46990 case 0:
47000 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47010 case 1:
47020 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47030 case 2:
47040 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47050 case 3:
47060 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47070 end select
47080 endif
47090 '******************************************************
47100 '1.下のカーソル　 ここまで 2024.10
47110 '******************************************************
47120 '******************************************************
47130 '2.上のカーソル　 ここから 2024.10
47140 '******************************************************
47150 if (y=-1 or key$=chr$(30)) then
47160 select case No
47170 case 0:
47180 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47190 case 1:
47200 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47210 case 2:
47220 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47230 case 3:
47240 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47250 end select
47260 endif
47270 '******************************************************
47280 '2.上のカーソル　ここまで 2024.10
47290 '******************************************************
47300 '3.決定ボタン　ここから  2024.10
47310 '******************************************************
47320 if (bg=2 or key$=chr$(13)) then
47330 select case No
47340 case 0:
47350 sp_on 0,0:goto Parsonal_list1:
47360 case 1:
47370 sp_on 1,0:goto Entry_list_count:
47380 case 2:
47390 sp_on 2,0:goto Parsonal_list_Search:
47400 case 3:
47410 sp_on 3,0:goto Main_Screen1:
47420 end select
47430 endif
47440 '******************************************************
47450 '3.決定ボタン　ここまで 2024.10
47460 '******************************************************
47470 '登録件数
47480 Entry_list_count:
47490 N = 0:bg=0:key$="":init"kb:4":talk ""
47500 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
47510 'N=1
47520 while eof(5) = 0
47530 line input #5,line$:N = N + 1
47540 wend
47550 close #5
47560 c=N
47570 cls 3
47580 line (0,0)-(680,60),rgb(0,0,255),bf
47590 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
47600 line (0,60)-(680,180),rgb(127,255,212),bf
47610 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
47620 LINE (0,180)-(680,280),rgb(0,255,0),bf
47630 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
47640 color rgb(255,255,255)
47650 print "◎霊遺伝姓名学登録件数"+chr$(13)
47660 color rgb(255,0,255)
47670 print "登録件数は";c;"件です"+chr$(13)
47680 color rgb(0,0,0)
47690 print "エンターキーを押してください"+chr$(13)
47700 while (key$ <> chr$(13) and bg <> 2)
47710 key$=inkey$
47720 bg=strig(1)
47730 pause 2.50*100
47740 wend
47750 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
47760 'パーソナルリスト ここから
47770 Parsonal_list1:
47780 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
47790 'Title
47800 line (0,0)-(850,60),rgb(0,0,255),bf
47810 line (0,0)-(850,57),rgb(255,255,255),b
47820 '個人名
47830 line (0,60)-(850,165),rgb(0,255,0),bf
47840 line (0,63)-(850,162),rgb(255,0,255),b
47850 '数値リスト
47860 line (0,165)-(850,550),rgb(255,212,212),bf
47870 line (0,168)-(850,547),rgb(0,0,255),b
47880 'ボタンメッセージ
47890 line (0,550)-(850,730),rgb(0,255,0),bf:
47900 line (0,553)-(853,733),rgb(255,0,255),b
47910 'Parsonal_list2:
47920 open "config/Parsonal_data/parsonal_data.dat" for input as #7
47930 'bN=0
47940 while eof(7)=0
47950 line input #7,lines$:bN = bN + 1
47960 wend
47970 close #7
47980 'a=0
47990 open "config/Parsonal_data/parsonal_data.dat" for input as #8
48000 'while eof(8)=0
48010 for i=0 to (bN * 10) -1
48020 input #8,buflines$(i)
48030 'buflines$(i) = line$
48040 'a  =  a  +  1
48050 Next i
48060 'wend
48070 close #8
48080 Parsonal_list2:
48090 while n <= bN * 10
48100 'Parsonal_list2:
48110 cls
48120 color rgb(255,255,255)
48130 print "霊遺伝姓名学 リスト" + chr$(13)
48140 '性別を出す
48150 sex$ = show_sex_type$(buflines$((10*n) + 1))
48160 'n=0
48170 color rgb(0,0,0):
48180 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
48190 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
48200 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
48210 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
48220 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
48230 print "右の丸:次へ行く" + chr$(13)
48240 print "左の丸：トップへ戻る" + chr$(13)
48250 key$=input$(1)
48260 if key$= " " then n=((n+1) Mod bN)
48270 if key$=chr$(13) then goto Main_Screen1:
48280 wend
48290 Parsonal_list_Search:
48300 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
48310 while eof(1)=0
48320 line input #1,lines$:hit_count=hit_count + 1
48330 wend
48340 close #1
48350 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
48360 for i=0 to hit_count*10 - 1
48370 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
48380 next i
48390 close #2
48400 Search_find:
48410 cls 3:init "kb:2":talk ""
48420 'グラフィック領域　ここから
48430 line (0,0)-(770,60),rgb(0,0,255),bf
48440 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
48450 line (0,60)-(770,170),rgb(127,255,212),bf
48460 line(0,63)-(767,173),rgb(0,0,255),b
48470 line(0,170)-(770,440),rgb(0,255,0),bf
48480 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
48490 color rgb(255,255,255)
48500 print "霊遺伝姓名判断 データー検索"+chr$(13)
48510 color rgb(255,0,255)
48520 print "登録件数:";hit_count;"件です"+chr$(13)
48530 color rgb(0,0,0)
48540 print "調べたい人の名前を入れてください"+chr$(13)
48550 Input "名前:",name$
48560 cls
48570 for i = 0 to hit_count * 10 - 1
48580 if name$ = buffname$(i) then
48590 hcount = hcount + 1
48600 endif
48610 next i
48620 if hcount > 0 then
48630 init "kb:4":cls
48640 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48650 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
48660 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
48670 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
48680 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
48690 while (key$ <> chr$(13) and bg <> 2)
48700 key$=inkey$
48710 bg=strig(1)
48720 bg2=strig(0)
48730 pause 2.50*100
48740 wend
48750 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
48760 else
48770 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48780 color rgb(0,0,0):print"検索名:";name$+chr$(13)
48790 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
48800 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
48810 a$=input$(1)
48820 IF a$=chr$(13) then goto Main_Screen1:
48830 endif
48840 '相性のデーターを保存する機能
48850 '保存ファイル：bestAisyou.dat
48860 '保存フォルダ:config/Aisyou_dat/
48870 Save_Aisyou:
48880 open "config/Aisyou_data" for append as #1
48890 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
48900 close #1
48910 ui_msg "保存しました"
48920 key$ = input$(1)
48930 '設定変更項目
48940 Config_Setting:
48950 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
48960 sp_on 0,1:sp_put 0,(10,100),0,0
48970 'グラフィック領域　ここから
48980 'Line 1
48990 line (0,0)-(850,60),rgb(0,0,255),bf
49000 line (0,0)-(850,57),rgb(255,255,255),b
49010 'Line 2
49020 line (0,60)-(850,460),rgb(127,255,212),bf
49030 line (0,57)-(850,457),rgb(0,0,0),b
49040 'Line 3
49050 line (0,460)-(850,640),rgb(0,255,0),bf
49060 line (0,457)-(850,637),rgb(0,0,0),b
49070 'グラフィック領域　ここまで
49080 color rgb(255,255,255)
49090 print "設定　トップメニュー" + chr$(13)
49100 color rgb(255,0,255)
49110 print " :1.キーボードの設定" + chr$(13)
49120 print " :2.トップ画面に戻る"
49130 'print " :4.プログラムの終了"+chr$(13)
49140 color rgb(0,0,0):locate 0,10
49150 print "1.キーボードの設定を選択"
49160 Config_Setting2:
49170 y=0:bg=0:key$=""
49180 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
49190 key$=inkey$
49200 y=stick(1)
49210 bg=strig(1)
49220 pause 2.50*100
49230 wend
49240 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
49250 select case No
49260 case 0:
49270 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
49280 case 1:
49290 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
49300 end select
49310 endif
49320 if (key$=chr$(13) or bg=2) then
49330 select case No
49340 case 0:
49350 sp_on 0,0:goto Keyboard_Setting:
49360 case 1:
49370 sp_on 1,0:goto Main_Screen1:
49380 end select
49390 endif
49400 '1.キーボードの設定
49410 Keyboard_Setting:
49420 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
49430 sp_on 0,1:sp_put 0,(10,100),0,0
49440 'グラフィック領域　ここから
49450 'Line 1
49460 line (0,0)-(1050,60),rgb(0,0,255),bf
49470 line (0,0)-(1050-3,57),rgb(255,255,255),b
49480 'Line 2
49490 line (0,60)-(1050,460),rgb(127,255,212),bf
49500 line (0,57)-(1050-3,457),rgb(0,0,0),b
49510 'Line 3
49520 line (0,460)-(1050,640),rgb(0,255,0),bf
49530 line (0,457)-(1050-3,637),rgb(0,0,0),b
49540 'グラフィック領域　ここまで
49550 '文字色　白
49560 color rgb(255,255,255)
49570 print "設定1 キーボードの設定" + chr$(13)
49580 color rgb(255,0,255)
49590 print " :1.バーチャルキーボード表示する" + chr$(13)
49600 print " :2.バーチャルキーボードを表示しない" + chr$(13)
49610 print " :3.トップ画面に戻る" + chr$(13)
49620 print " :4.終了する" + chr$(13)
49630 color rgb(0,0,0)
49640 locate 0,10
49650 print "1.バーチャルキーボードを表示するを選択"
49660 Keyboard_Setting2:
49670 y=0:bg=0:key$=""
49680 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
49690 key$=inkey$
49700 y=stick(1)
49710 bg=strig(1)
49720 pause 2.50*100
49730 wend
49740 '****************************************************************************************************************
49750 '下のカーソル　ここから
49760 '****************************************************************************************************************
49770 if (y=1 or key$=chr$(31)) then
49780 select case No
49790 case 0:
49800 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
49810 case 1:
49820 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
49830 case 2:
49840 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
49850 case 3:
49860 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
49870 end Select
49880 endif
49890 '*******************************************************************************************************************
49900 '下のカーソル　ここまで
49910 '*******************************************************************************************************************
49920 '*******************************************************************************************************************
49930 '上のカーソル　ここから
49940 '********************************************************************************************************************
49950 '********************************************************************************************************************
49960 '上のカーソル　ここまで
49970 '********************************************************************************************************************
49980 '********************************************************************************************************************
49990 '決定ボタン　ここから
50000 '*********************************************************************************************************************
50010 if (key$=chr$(13) or bg=2) then
50020 select case No
50030 case 0:
50040 init "kb:2":
50050 case 1:
50060 sp_on 1,0:init "kb:0":
50070 case 2:
50080 sp_on 2,0:goto Main_Screen1:
50090 case 3:
50100 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
50110 end select
50120 endif
50130 '*********************************************************************************************************************
50140 '決定ボタン　ここまで
50150 '*********************************************************************************************************************
