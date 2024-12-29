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
760 '*****************************************************
770 '設定ファイル　漢字文字データ                     　 *              *
780 'Version:Mojidata20200411.dat Date:20200411          *
790 'Version:Mojidata20200415.dat Date:20200415          *
800 'Version:Mojidata20200506.dat Date:20200506          *
810 'Version:Mojidata20200513.dat Date:20200513          *
820 'Version:Mojidata20200516.dat Date:20200516          *
830 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
840 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
850 '*****************************************************
860 '* 開発再開　2024.9.20　Ver2.33                        *
870 '* 開発再開 Date:2024.09.20                          *
880 '*************************************************
890 '新機能
900 'Date:2020.05.27
910 'Parsonal_data.datに個人データーを保存機能追加
920 '*****************************************************
930 'メモリー確保 文字領域,数値データー                  *
940 '*****************************************************
950 clear 4*4000,4*1000000
960 '*****************************************************
970 'Screen 定義                                         *
980 '*****************************************************
990 Screen 1,1,1,1
1000 '*****************************************************
1010 'Sprite 定義                                         *
1020 '****************************************************
1030 'フォルダを変数にまとめる
1040 '****************************************************
1050 Gazo$ = "./config/gazo/"
1060 '****************************************************
1070 Select$ = "selection.png"
1080 '^&**************************************************
1090 gload Gazo$ + Select$,1,10,100
1100 gload Gazo$ + Select$,1,10,200
1110 gload Gazo$ + Select$,1,10,300
1120 gload Gazo$ + Select$,1,10,400
1130 gload Gazo$ + Select$,1,10,500
1140 sp_def 0,(10,100),32,32
1150 sp_def 1,(10,200),32,32
1160 sp_def 2,(10,300),32,32
1170 sp_def 3,(10,400),32,32
1180 sp_def 4,(10,500),32,32
1190 '****************************************************
1200 Parsonal_data$ = "Config/Parsonal_data/"
1210 '*****************************************************
1220 '改名チェック変数                                   *
1230 '****************************************************
1240 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1250 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1260 '*****************************************************
1270 'キーボードフラグ                                    *
1280 '0:キーボード非表示                                  *
1290 '1:キーボード表示                                    *
1300 '*****************************************************
1310 keyboard_flag = 0
1320 '*****************************************************
1330 '性別の選択用変数                                    *
1340 '*****************************************************
1350 dim sex_type$(2)
1360 '*****************************************************
1370 '相性占い　設定項目 ここから                         *
1380 '*****************************************************
1390 count=0:line_count=0
1400 dim buffer_Aisyou_type$(10,10)
1410 dim buffer_Kaimei_data_name$(10)
1420 '*****************************************************
1430 '改名チェックの選択肢の変数                          *
1440 '*****************************************************
1450 '1.フォルダ
1460 '******************************************************
1470 KANJI_DATA$ = "config/kanji_data"
1480 '*****************************************************
1490 '2.ファイル
1500 '*****************************************************
1510 MOJIDATA$ = "Mojidata_ReiIden20200911.png"
1520 '*****************************************************
1530 SELECT_LIST_FOLDER$="config/Selection/"
1540 '*****************************************************
1550 SELECT_LIST_FILE$ = "Selection.dat"
1560 '*****************************************************
1570 'FULL PASS:./config/Selection/Selection.dat
1580 '*****************************************************
1590 dim select$(3)
1600 open SELECT_LIST_FOLDER$ + SELECT_LIST_FILE$ for input as #2
1610 for i=0 to 2
1620 input #2,select$(i)
1630 next i
1640 close #2
1650 'select$(0)="改名リストに追加する"
1660 'select$(1)="改名リストに追加しない"
1670 'select$(2)="トップ画面に行く"
1680 '*****************************************************
1690 '総数を出す変数 改名チェック変数                     *
1700 'dim buffer_total$                                   *
1710 '1.理解し合える最良のカップル                        *
1720 '*****************************************************
1730 dim buf_good_couple1(20)
1740 dim buf_good_couple2(20)
1750 'dim buf_good_couple1$
1760 'Dim buf_good_couple2$
1770 '*****************************************************
1780 '2.互いに自然体でつきあえるカップル                  *
1790 '*****************************************************
1800 dim buf_natural_couple1(20)
1810 dim buf_natural_couple2(20)
1820 'dim buf_natural_couple1$
1830 'dim buf_natural_couple2$
1840 '**************************************************
1850 '3.男性にとって居心地の良いカップル               *
1860 '**************************************************
1870 dim buf_good_for_man1(20)
1880 dim buf_good_for_man2(20)
1890 'dim buf_good_for_man1$
1900 'dim buf_good_for_man2$
1910 '*****************************************************
1920 '4.女性にとって居心地の良い相性                      *
1930 '*****************************************************
1940 dim buf_good_for_woman1(20)
1950 dim buf_good_for_woman2(20)
1960 'dim buf_good_for_woman1$
1970 'dim buf_good_for_woman2$
1980 '*****************************************************
1990 '5.恋愛経験を重ねた後なら愛を育める                  *
2000 '*****************************************************
2010 dim buf_short_of_experience1(20)
2020 dim buf_short_of_experience2(20)
2030 'dim buf_short_of_experience1$
2040 'dim buf_short_of_experience2$
2050 '*****************************************************
2060 '6.結婚への発展が困難なカップル                      *
2070 '*****************************************************
2080 dim buf_difficult_for_couple1(20)
2090 dim buf_difficult_for_couple2(20)
2100 'dim buf_difficult_for_couple1$
2110 'dim buf_difficult_for_couple2$
2120 '*****************************************************
2130 '7.愛し方にズレが出てくる二人                        *
2140 '*****************************************************
2150 dim buf_difference_of_love1(20)
2160 dim buf_difference_of_love2(20)
2170 'dim buf_difference_of_love1$
2180 'dim buf_difference_of_love2$
2190 '*****************************************************
2200 '相性占い　設定項目　ここまで
2210 '*****************************************************
2220 '8.互いの価値観が噛み合わない相性 ここから           *
2230 '*****************************************************
2240 dim buf_difference_of_KachiKan1(20)
2250 dim buf_difference_of_KachiKan2(20)
2260 'dim buf_difference_of_KachiKan1$
2270 'dim buf_difference_of_KachiKan2$
2280 '*****************************************************
2290 '8.互いに価値観が噛み合わない相性 ここまで           *
2300 '*****************************************************
2310 '相性診断　相性パターン結果　ここから
2320 dim Result_Aisyou_type$(8)
2330 '*****************************************************
2340 '相性診断 相性パターン結果 ここまで                  *
2350 '*****************************************************
2360 '2019/04/07 姓名判断アプリ 作成開始                  *
2370 '姓名判断　 名前の総数での吉凶を調べる               *
2380 '*****************************************************
2390 buf_count=0:buffer_count=0:count=0:buffer=0
2400 '*****************************************************
2410 '合計文字数                                          *
2420 '*****************************************************
2430 totalmoji=0
2440 dim buf_Input_data$(10),buf_Input_data2$(10)
2450 dim bufer_name$(10),bufer_name2$(10)
2460 dim buf_Input_name$(10),buf_Input_name2$(10)
2470 '*****************************************************
2480 '定数文字1画〜27画                                   *
2490 'ファイルから各画数を読み込んで代入する。            *
2500 '*****************************************************
2510 '1行目だけ読み込む                                   *
2520 '*****************************************************
2530 KANJI_DATA$ = "config/Kanji_data/"
2540 '*****************************************************
2550 MOJIDATA$ = "Mojidata_ReiIden20200911.dat"
2560 '*****************************************************
2570 open KANJI_DATA$ + MOJIDATA$ for input as #2
2580 for i=0 to 26
2590 input #2,buf_lines$(i)
2600 next i
2610 close #2
2620 '*****************************************************
2630 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2640 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2650 '1画
2660 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2670 '2画
2680 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2690 '3画
2700 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2710 '4画
2720 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2730 '5画
2740 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2750 '6画
2760 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2770 '7画
2780 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2790 '8画
2800 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2810 '9画
2820 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2830 '10画
2840 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2850 '11画
2860 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2870 '12画
2880 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2890 '13画
2900 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2910 '14画
2920 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2930 '15画
2940 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2950 '16画
2960 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2970 '17画
2980 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2990 '18画
3000 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
3010 '19画
3020 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
3030 '20画
3040 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
3050 '21画
3060 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
3070 '22画
3080 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
3090 '23画
3100 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
3110 '24画
3120 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
3130 '25画
3140 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
3150 '26画
3160 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
3170 '27画
3180 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
3190 dim Moji_data$(Moji_total+27+27)
3200 '******************************************************
3210 'dim bufmoji$(10),Input_data$(10)                     *
3220 '１画の文字   サイズ:21+2(漢字)                       *
3230 '******************************************************
3240 dim buf_char_hiragana1$(Moji_1)
3250 '******************************************************
3260 '2画の文字  サイズ 58+14=72(漢字)                     *
3270 '******************************************************
3280 dim buf_char_hiragana2$(Moji_2)
3290 '******************************************************
3300 '3画の文字 サイズ:48+29=77(漢字)                      *
3310 '******************************************************
3320 dim buf_char_hiragana3$(Moji_3)
3330 '******************************************************
3340 '4画の文字 サイズ:29+51=80(漢字)                      *
3350 '******************************************************
3360 dim buf_char_hiragana4$(Moji_4)
3370 '******************************************************
3380 '５画の文字  サイズ:18+59=77(漢字)                    *
3390 '******************************************************
3400 dim buf_char_hiragana5$(Moji_5)
3410 '******************************************************
3420 '6画の文字  サイズ:79(漢字)                           *
3430 '******************************************************
3440 dim buf_char_hiragana6$(Moji_6)
3450 '******************************************************
3460 '7画の文字  サイズ:88(漢字)                           *
3470 '******************************************************
3480 dim buf_char_hiragana7$(Moji_7)
3490 '******************************************************
3500 '8画の文字                                            *
3510 '******************************************************
3520 dim buf_char_hiragana8$(Moji_8)
3530 '******************************************************
3540 '9画の文字                                            *
3550 '******************************************************
3560 dim buf_char_hiragana9$(Moji_9)
3570 '******************************************************
3580 '10画の文字 98文字                                    *
3590 '******************************************************
3600 dim buf_char_hiragana10$(Moji_10)
3610 '******************************************************
3620 '11画の文字                                           *
3630 '******************************************************
3640 dim buf_char_hiragana11$(Moji_11)
3650 '******************************************************
3660 '12画の文字                                           *
3670 '******************************************************
3680 dim buf_char_hiragana12$(Moji_12)
3690 '******************************************************
3700 '13画の文字 81文字                                    *
3710 '******************************************************
3720 dim buf_char_hiragana13$(Moji_13)
3730 '******************************************************
3740 '14画の文字                                           *
3750 '******************************************************
3760 dim buf_char_hiragana14$(Moji_14)
3770 '******************************************************
3780 '15画の文字                                           *
3790 '******************************************************
3800 dim buf_char_hiragana15$(Moji_15)
3810 '******************************************************
3820 '16画の文字                                           *
3830 '******************************************************
3840 dim buf_char_hiragana16$(Moji_16)
3850 '******************************************************
3860 '17画の文字                                           *
3870 '******************************************************
3880 dim buf_char_hiragana17$(Moji_17)
3890 '******************************************************
3900 '18画の文字                                           *
3910 '******************************************************
3920 dim buf_char_hiragana18$(Moji_18)
3930 '19画の文字
3940 dim buf_char_hiragana19$(Moji_19)
3950 '20画の文字
3960 dim buf_char_hiragana20$(Moji_20)
3970 '21画の文字
3980 dim buf_char_hiragana21$(Moji_21)
3990 '22画の文字
4000 dim buf_char_hiragana22$(Moji_22)
4010 '23画の文字
4020 dim buf_char_hiragana23$(Moji_23)
4030 '24画の文字
4040 dim buf_char_hiragana24$(Moji_24)
4050 '25画の文字
4060 dim buf_char_hiragana25$(Moji_25)
4070 dim buf_char_hiragana26$(Moji_26)
4080 dim buf_char_hiragana27$(Moji_27)
4090 '結果表示1　吉凶データー 81パターン
4100 dim buf_Kikkyo$(81)
4110 '結果表示２
4120 '安斎流姓名判断 吉凶  1.地運
4130 dim buf_Kikkyo_Anzai_chiunn$(70)
4140 '安斎流姓名判断　　吉凶  2.人運
4150 dim buf_Kikkyo_Anzai_jinunn$(69)
4160 '安斎流姓名判断 吉凶 3.外運
4170 'dim buf_Kikkyo_Anzai_gaiunn$(70)
4180 '安斎流姓名判断 吉凶　　4.総運
4190 dim buf_Kikkyo_Anzai_total$(80)
4200 '霊遺伝姓名学　変数
4210 A=0
4220 B=0
4230 C=0
4240 D=0
4250 '1.先祖運
4260 buffer_senzo=0
4270 '2.性格運
4280 buffer_seikaku=0
4290 '3.愛情運
4300 buffer_Aijyou=0
4310 '4.行動運
4320 buffer_Kouzou=0
4330 '1-1.先祖運　和数
4340 Senzo_wasu=0
4350 '1-2.先祖運　生数
4360 Senzo_seisu=0
4370 '2-1.性格運 和数
4380 Seikaku_wasu=0
4390 '2-2.性格運 生数
4400 Seikaku_seisu=0
4410 '3-1.愛情運 和数
4420 Aijyou_wasu=0
4430 '3-2.愛情運 生数
4440 Aijyou_seisu=0
4450 '4-1 行動運 和数
4460 Koudo_wasu=0
4470 '4-2 行動運 生数
4480 Koudo_seisu=0
4490 'データー読み込み　ここから
4500 'データー読み込み　1.ひらがな
4510 '1画の文字   6文字 23文字
4520 open KANJI_DATA$ + MOJIDATA$ for input as #1
4530 '全ファイルを読み込む
4540 for i = 0 to 26+Moji_total+27
4550 input #1,Moji_data$(i)
4560 next i
4570 close #1
4580 '全ファイル読み込み　ここまで
4590 for i = 27+1 to (Moji_1)+27+1
4600 '1画の文字にデーターをコピーする
4610 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4620 next i
4630 '2画の文字    98文字
4640 for i = Moji_Min_2  to (Moji_Max_2)
4650 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4660 next i
4670 '3文字の文字    77文字
4680 for i = Moji_Min_3  to (Moji_Max_3)
4690 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4700 next i
4710 '4文字の文字   80文字
4720 for i = (Moji_Min_4)  to (Moji_Max_4)
4730 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4740 next i
4750 '5文字の文字 77文字
4760 for i = Moji_Min_5 to (Moji_Max_5)
4770 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4780 next i
4790 '6文字の文字 79文字
4800 for i = Moji_Min_6  to Moji_Max_6
4810 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4820 next i
4830 '7文字の文字 170文字
4840 for i = Moji_Min_7 to Moji_Max_7
4850 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4860 next i
4870 '8画の文字 120文字
4880 for i = Moji_Min_8 to Moji_Max_8
4890 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4900 next i
4910 '9画の文字  103文字
4920 for i = Moji_Min_9 to Moji_Max_9
4930 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4940 next i
4950 '10画の文字 285文字
4960 for i = Moji_Min_10 to (Moji_Max_10)
4970 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4980 next i
4990 '11画の文字
5000 for i = Moji_Min_11 to Moji_Max_11
5010 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
5020 next i
5030 '12画の文字
5040 for i = Moji_Min_12 to Moji_Max_12
5050 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
5060 next i
5070 '13画の文字 81
5080 for i = Moji_Min_13 to Moji_Max_13
5090 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
5100 next i
5110 '14画の文字 66
5120 for i = Moji_Min_14 to Moji_Max_14
5130 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
5140 next i
5150 '15画の文字 59
5160 'for i = Moji_Min_15 to (Moji_Max_15) - 1
5170 for i=Moji_Min_15 to  Moji_Max_15
5180 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
5190 next i
5200 '16画の文字 44
5210 for i=Moji_Min_16 to Moji_Max_16
5220 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
5230 next i
5240 '17画の文字
5250 for i = Moji_Min_17 to Moji_Max_17
5260 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
5270 next i
5280 '18画の文字
5290 for i = Moji_Min_18 to Moji_Max_18
5300 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
5310 next i
5320 '19画の文字 17文字
5330 for i = Moji_Min_19 to Moji_Max_19
5340 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
5350 next i
5360 '20 画の文字 13文字
5370 for  i = Moji_Min_20 to Moji_Max_20
5380 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
5390 NEXT i
5400 '21画の文字 6
5410 for i = Moji_Min_21 to (Moji_Max_21)
5420 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
5430 next i
5440 '22 画の文字 4
5450 for i = Moji_Min_22 to Moji_Max_22
5460 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
5470 next i
5480 '23画の文字  3文字
5490 for i = Moji_Min_23 to Moji_Max_23
5500 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5510 next i
5520 '24画の文字  3文字
5530 for i = Moji_Min_24 to Moji_Max_24
5540 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5550 next i
5560 '25 画の文字 4
5570 for i = Moji_Min_25 to Moji_Max_25
5580 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5590 next i
5600 '26画の文字  3文字
5610 for i = Moji_Min_26 to Moji_Max_26
5620 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5630 next i
5640 '27画の文字  3文字
5650 for i = Moji_Min_27 to Moji_Max_27
5660 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5670 next i
5680 '吉凶データー読み込み
5690 '*********************************************************
5700 'フォルダ
5710 '*********************************************************
5720 'ファイル
5730 '*********************************************************
5740 'FULL PATH:"./config/Kikkyo_data/Kikkyo_data.dat"
5750 '*********************************************************
5760 KIKKYO_DATA_FOLDER$ = "config/Kikkyo_data/"
5770 '*********************************************************
5780 KIKKYO_DATA_FILE$ = "Kikkyo_data.dat"
5790 '*********************************************************
5800 open KIKKYO_DATA_FOLDER$ + KIKKYO_DATA_FILE$ for input as #1
5810 for i=0 to 80
5820 input #1,buf_Kikkyo$(i+1)
5830 next i
5840 close #1
5850 '***********************************************************
5860 'FULL PATH:"config/Kikkyo_data/Kikkyo_data.data"
5870 '******************************************************
5880 ANZAI_KIKKYO_CHIUNN_FILE$ = "Anzai_Kikkyo_chiunn.dat"
5890 '******************************************************
5900 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_CHIUNN_FILE$ for input as #2
5910 for m=0 to 69
5920 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5930 next m
5940 close #2
5950 '******************************************************
5960 'FULL PAT:"./config/Kikkyo_data/Kikkyo_jiunn.dat"
5970 '******************************************************
5980 KIKKYO_JINUNN$ = "Anzai_Kikkyo_Jinunn.dat"
5990 '******************************************************
6000 open KIKKYO_DATA_FOLDER$ + KIKKYO_JINUNN$ for input as #3
6010 for i=1 to 70
6020 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
6030 next i
6040 close #3
6050 '**************************************************************
6060 'FULL PATH="./config/Kikkyo_data/Anzai_Kikkyo_Total.dat"
6070 '      ====>   KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$
6080 '**************************************************************
6090 'KIKKYO_DATA_FOLDER$ = "./config/Kikkyo_data/" (共通フォルダ)
6100 '**************************************************************
6110 ANZAI_KIKKYO_FILE$ = "Anzai_Kikkyo_Total.dat"
6120 '**************************************************************
6130 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$ for input as #4
6140 for i=0 to 79
6150 input #4,buf_Kikkyo_Anzai_total$(i)
6160 next i
6170 close #4
6180 '****************************************************
6190 '1.理解し合える最良のカップル　ここから           　*
6200 '****************************************************
6210 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6220 'GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6230 'FULL PATH="config/Anzai_Aisyou/Good_Couple1.dat"
6240 '****************************************************
6250 ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6260 GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
6270 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE1_FILE$ for input as #1
6280 for i=0 to 19
6290 input #1,buf_good_couple1$
6300 buf_good_couple1(i) = val(buf_good_couple1$)
6310 next i
6320 close #1
6330 '********************************************************
6340 'FULL PATH = "config/Anzai_Aisyou/Good_Couple2.dat"
6350 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6360 'GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6370 '********************************************************
6380 GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
6390 open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE2_FILE$ for input as #1
6400 for j=0 to 19
6410 input #1,buf_good_couple2$
6420 buf_good_couple2(j) = val(buf_good_couple2$)
6430 next j
6440 close #1
6450 '*****************************************************
6460 '1.理解し合える最良のカップル ここまで                                   *
6470 '*****************************************************
6480 '*****************************************************
6490 '2.互いに自然体でつきあえる二人　ここから                               *
6500 '*****************************************************
6510 '*****************************************************
6520 'FULL PATH = "config/Anzai_Aisyou/Natural_Couple1.dat"
6530 'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
6540 'NATURAL_COUPLE_FILE$ ="Natural_Couple1.dat"
6550 'NATURAL_COUPLE2_FILE$="Natural_Couple2.dat"
6560 '*****************************************************
6570 NATURAL_COUPLE_FILE$ = "Natural_Couple1.dat"
6580 NATURAL_COUPLE2_FILE$ = "Natural_Couple2.dat"
6590 '*****************************************************
6600 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE_FILE$ for input as #1
6610 for i=0 to 19
6620 input #1,buf_natural_couple1$
6630 buf_natural_couple1(i) = val(buf_natural_couple1$)
6640 next i
6650 close #1
6660 open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE2_FILE$ for input as #1
6670 for j=0 to 19
6680 input #1,buf_natural_couple2$
6690 buf_natural_couple2(j) = val(buf_natural_couple2$)
6700 next j
6710 close #1
6720 '*****************************************************
6730 '2.互いに自然体でつきあえる二人　ここまで                               *
6740 '*****************************************************
6750 '3.男性にとって居心地の良い相性                                      *
6760 '*****************************************************
6770 '******************************************************
6780 'FULL PATH="config/Anzai_Aisyou/Good_for_man1.dat"
6790 'FULL PATH="config/Anzai_Aisyou/Good_for_man2.dat"
6800 'GOOD_FOR_MAN_FILE$="God_for_man1.dat"
6810 GOOD_FOR_MAN1_FILE$ = "Good_for_man1.dat"
6820 GOOD_FOR_MAN2_FILE$ = "Good_for_man2.dat"
6830 '******************************************************
6840 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN1_FILE$ for input as #1
6850 for i=0 to 19
6860 input #1,buf_good_for_man1$
6870 buf_good_for_man1(i) = val(buf_good_for_man1$)
6880 next i
6890 close #1
6900 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN2_FILE$ for input as #1
6910 for j=0 to 19
6920 input #1,buf_good_for_man2$
6930 buf_good_for_man2(j) = val(buf_good_for_man2$)
6940 next j
6950 close #1
6960 '******************************************************
6970 '3.男性にとって居心地の良いカップル             　　                   　*
6980 '******************************************************
6990 '4.女性にとって居心地の良いカップル                                   *
7000 '******************************************************
7010 'FULL PATH = "config/Anzai_Aisyou/Good_for_woman1.dat"
7020 'GOOD_FOR_WOMAN1_FILE$="Good_for_woman1.dat"
7030 'GOOD_FOR_WOMAN2_FILE$="Good_for_woman2.dat"
7040 GOOD_FOR_WOMAN1_FILE$ = "Good_for_woman1.dat"
7050 GOOD_FOR_WOMAN2_FILE$ = "Good_for_woman2.dat"
7060 '*******************************************************
7070 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN1_FILE$ for input as #1
7080 for i=0 to 19
7090 input #1,buf_good_for_woman1$
7100 buf_good_for_woman1(i) = val(buf_good_for_woman1$)
7110 next i
7120 close #1
7130 open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN2_FILE$ for input as #1
7140 for j=0 to 19
7150 input #1,buf_good_for_woman2$
7160 buf_good_for_woman2(j) = val(buf_good_for_woman2$)
7170 next j
7180 close #1
7190 '******************************************************
7200 '4.女性にとって居心地の良い相性                   　                　*
7210 '******************************************************
7220 '5.恋愛経験を重ねた後なら愛を育める                                  　*
7230 '******************************************************
7240 'SHORT_OF_EXPERIENCE1_FILE$ = "Short_of_experience1.dat"
7250 'SHORT_OF_EXPERIENCE2_FILE$ ="Short_of_experience2.dat"
7260 '******************************************************
7270 SHORT_OF_EXPERIENCE1_FILE$="Short_of_experience1.dat"
7280 SHORT_OF_EXPERIENCE2_FILE$="Short_of_experience2.dat"
7290 '*******************************************************
7300 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE1_FILE$ for input as #1
7310 for i=0 to 19
7320 input #1,buf_short_of_experience1$
7330 buf_short_of_experience1(i) = val(buf_short_of_experience1$)
7340 next i
7350 close #1
7360 open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE2_FILE$ for input as #1
7370 for j=0 to 19
7380 input #1,buf_short_of_experience2$
7390 buf_short_of_experience2(j) = val(buf_short_of_experience2$)
7400 'buf_short_of_experience2(j)=val(buf_short_of_experience2$(j))
7410 next j
7420 close #1
7430 '******************************************************
7440 '5 恋愛経験を重ねた後なら愛を育める                   *
7450 '******************************************************
7460 '6.結婚への発展が困難なカップル  ここから             *
7470 '**********************************************************
7480 'DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7490 'DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7500 '**********************************************************
7510 DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
7520 DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
7530 '**********************************************************
7540 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE1_FILE$ for input as #1
7550 for i=0 to 19
7560 input #1,buf_difficult_for_couple1$
7570 buf_difficult_for_couple1(i) = val(buf_difficult_for_couple1$)
7580 next i
7590 close #1
7600 open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE2_FILE$ for input as #1
7610 for j=0 to 19
7620 input #1,buf_difficult_for_couple2$
7630 buf_difficult_for_couple2(j) = val(buf_difficult_for_couple2$)
7640 next j
7650 close #1
7660 '******************************************************
7670 '6.結婚への発展が困難なカップル  ここまで             *
7680 '******************************************************
7690 '7.愛し方にズレが出る二人 ここから                    *
7700 '**********************************************************
7710 'FULL PATH = "config/Anzai_Aisyou/Differece_of_love1.dat"
7720 'DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7730 'DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7740 '***********************************************************
7750 DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
7760 DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
7770 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE1_FILE$ for input as #1
7780 for i=0 to 19
7790 input #1,buf_difference_of_love1$
7800 buf_difference_of_love1(i) = val(buf_difference_of_love1$)
7810 next i
7820 close #1
7830 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE2_FILE$ for input as #1
7840 for j=0 to 19
7850 input #1,buf_difference_of_love2$
7860 buf_difference_of_love2(j) = val(buf_difference_of_love2$)
7870 next j
7880 close #1
7890 '******************************************************
7900 '7.愛し方にズレが出る二人 ここまで                    *
7910 '******************************************************
7920 '8.互いの価値観が噛み合わない相性 ここから            *
7930 '**************************************************************
7940 'DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
7950 'DIFFRRENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
7960 '**************************************************************
7970 DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
7980 DIFFERENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
7990 '**************************************************************
8000 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN1_FILE$ for input as #1
8010 for i=0 to 19
8020 input #1,buf_difference_of_KachiKan1$
8030 buf_difference_of_KachiKan1(i) = val(buf_difference_of_KachiKan1$)
8040 next i
8050 close #1
8060 open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN2_FILE$ for input as #1
8070 for j=0 to 19
8080 input #1,buf_difference_of_KachiKan2$
8090 buf_difference_of_KachiKan2(j) = val(buf_difference_of_KachiKan2$)
8100 next j
8110 close #1
8120 '******************************************************
8130 '8.互いの価値観が噛み合わない相性 ここまで            *
8140 '******************************************************
8150 '相性占いタイプ ここから                              *
8160 '******************************************************
8170 'RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8180 RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
8190 '******************************************************
8200 open ANZAI_AISYOU_FOLDER$ + RESULT_AISYOU_TYPE_FILE$ for input as #1
8210 for i=0 to 7
8220 line input #1,Result_Aisyou_type$(i)
8230 next i
8240 close #1
8250 '****************************************************
8260 'Data文  ここから                                　 *
8270 '****************************************************
8280 '1.理解し合えるカップル　ここから                   *
8290 '****************************************************
8300 'data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
8310 'data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
8320 '****************************************************
8330 '1.理解し合えるカップル　ここまで                   *
8340 '****************************************************
8350 '2.互いに自然体でつきあえるカップル ここから        *
8360 '****************************************************
8370 'data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
8380 'data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
8390 '****************************************************
8400 '2.互いに自然体でつきあえるカップル　ここまで        *
8410 '****************************************************
8420 '3.男性にとって居心地の良いカップル  ここから       *
8430 '****************************************************
8440 'data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8450 'data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8460 '****************************************************
8470 '3.男性にとって居心地の良いカップル ここまで        *
8480 '****************************************************
8490 '4.女性にとって居心地の良いカップル  ここから       *
8500 '****************************************************
8510 'data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
8520 'data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
8530 '****************************************************
8540 '4.女性にとって居心地の良いカップル  ここまで       *
8550 '****************************************************
8560 '5.恋愛経験を重ねた後なら愛を育める ここから        *
8570 '****************************************************
8580 'data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8590 'data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8600 '****************************************************
8610 '5.恋愛経験を重ねた後なら愛を育める ここまで        *
8620 '****************************************************
8630 '6.結婚への発展が困難なカップル ここから            *
8640 '****************************************************
8650 'data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8660 'data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8670 '****************************************************
8680 '6.結婚への発展が困難なカップル ここまで            *
8690 '****************************************************
8700 '7.愛し方にズレが生じる二人  ここから               *
8710 '****************************************************
8720 'data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
8730 'data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
8740 '****************************************************
8750 '7.愛し方にずれが生じる二人  ここまで                               *
8760 '****************************************************
8770 '8.互いに価値観が噛み合わない相性　ここから                             *
8780 '****************************************************
8790 'data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
8800 'data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
8810 '****************************************************
8820 '8.互いに価値観が噛み合わない相性 ここまで         *
8830 '****************************************************
8840 '相性占い結果パターン ここから                    　*
8850 '****************************************************
8860 '0:理解し合える最良のカップル                        *
8870 '****************************************************
8880 'data "理解し合える最良のカップル"
8890 '****************************************************
8900 '1:互いに自然体で付き合えるカップル                 *
8910 '****************************************************
8920 'data "互いに自然体でつきあえるカップル"
8930 '****************************************************
8940 '2:男性にとって居心地の良い相性                   　*
8950 '****************************************************
8960 'data "男性にとって居心地の良い相性"
8970 '****************************************************
8980 '3:女性にとって居心地の良い相性                   　*
8990 '****************************************************
9000 'data "女性にとって居心地の良い相性"
9010 '****************************************************
9020 '4:恋愛経験を重ねた後なら愛を育める                 *
9030 '****************************************************
9040 'data "恋愛経験を重ねた後なら愛を育める"
9050 '****************************************************
9060 '5:結婚への発展が困難なカップル                     *
9070 '****************************************************
9080 'data "結婚への発展が困難なカップル"
9090 '****************************************************
9100 '6:愛し方にズレが生じる二人                         *
9110 '****************************************************
9120 'data "愛し方にずれが生じる二人"
9130 '****************************************************
9140 '7:互いに価値観が噛み合わない相性                   *
9150 '****************************************************
9160 'data "互いの価値観が噛み合わない相性"
9170 '************************************************
9180 'Data文   ここまで                              *
9190 '************************************************
9200 '相性占い結果パターン ここまで
9210 '*******************************
9220 '*****************************************************
9230 'メイン画面 Top画面1
9240 Main_Screen1:
9250 cls 3:talk "":font 48:color rgb(255,255,255)
9260 talk "メイン画面です。番号を選んでください"
9270 'グラフィック領域　ここから
9280 line (0,0)-(1080,60),rgb(0,0,255),bf
9290 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
9300 line (0,60)-(1080,560),rgb(127,255,212),bf
9310 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
9320 line (0,560)-(1080,740),rgb(0,255,0),bf
9330 'グラフィック領域 ここまで
9340 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
9350 Font 48
9360 '************************************************
9370 'Sprite                                         *
9380 '************************************************
9390 sp_on 0,1:sp_on 1,0:sp_on 2,0
9400 sp_put 0,(10,100),0,0
9410 '************************************************
9420 No=0:init"kb:4":y=0:key$="":bg=0
9430 print "◎姓名判断　メイン画面" + chr$(13)
9440 '************************************************
9450 '文字色:黒                                          *
9460 '************************************************
9470 color rgb(255,0,255)
9480 print " :1.姓名判断" + chr$(13)
9490 print " :2.姓名判断の設定" + chr$(13)
9500 print " :3.個人データーリスト" + chr$(13)
9510 print " :4.ヘルプ" + chr$(13)
9520 print " :5.プログラムの終了" + chr$(13)
9530 '*************************************************
9540 '文字:黒                                            *
9550 '*************************************************
9560 color rgb(0,0,0)
9570 locate 0,12
9580 print "1.姓名判断を選択" + chr$(13)
9590 Main_Screen2:
9600 y=0:key$="":bg=0
9610 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
9620 y=stick(1)
9630 key$=inkey$
9640 bg=strig(1)
9650 pause 2.55*100
9660 wend
9670 '**************************************************
9680 '1.下のキー  ここから
9690 '**************************************************
9700 if (y = 1 or key$ = chr$(31)) then
9710 select case No
9720 case 0:
9730 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9740 case 1:
9750 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9760 case 2:
9770 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9780 case 3:
9790 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9800 case 4:
9810 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
9820 end select
9830 endif
9840 '***************************************************
9850 '1. 下のキー　ここまで
9860 '***************************************************
9870 '***************************************************
9880 '2.上のキー ここから
9890 '***************************************************
9900 if (key$=chr$(30) or y=-1) then
9910 select case No
9920 case 0:
9930 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9940 case 1:
9950 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9960 case 2:
9970 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9980 case 3:
9990 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
10000 case 4:
10010 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
10020 end select
10030 endif
10040 '***************************************************
10050 '3.決定ボタン ここから
10060 '***************************************************
10070 if (bg=2 or key$=chr$(13)) then
10080 select case No
10090 case 0:
10100 sp_on 0,0:goto seimeihandan_top:
10110 case 1:
10120 sp_on 1,0:goto seimeihandan_setting:
10130 case 2:
10140 sp_on 2,0:goto Parsonal_data_top:
10150 case 3:
10160 sp_on 3,0: goto help:
10170 case 4:
10180 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
10190 end select
10200 endif
10210 '***************************************************
10220 '3.決定ボタン ここまで
10230 '***************************************************
10240 '1.姓名判断トップ画面
10250 seimeihandan_top:
10260 cls:talk ""
10270 No=0:y=0:key$="":bg=0:talk""
10280 'タイトル文字:白
10290 font 48:color rgb(255,255,255),,rgb(176,196,222)
10300 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
10310 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
10320 sp_put 0,(10,100),0,0
10330 'グラフィック 描画領域　ここから
10340 cls 3
10350 '1.Title:青
10360 'Line 1
10370 line (0,0)-(1080,60),rgb(0,0,255),bf
10380 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
10390 'Line 2
10400 line (0,60)-(1080,450),rgb(127,255,212),bf
10410 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
10420 'Line 3
10430 line (0,450)-(1080,600),rgb(0,255,0),bf
10440 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
10450 'グラフィック 描画領域 ここまで
10460 color rgb(255,255,255)
10470 print"◎姓名判断の種類トップメニュー"+chr$(13)
10480 color rgb(255,0,255):print" :1.霊遺伝姓名学(1種類の占い)"+chr$(13)
10490 color rgb(255,0,255):print" :2.安斎流姓名判断(3種類の占い)"+chr$(13)
10500 COLOR rgb(255,0,255):print" :3.九星姓名判断(3種類の占い)"+chr$(13)
10510 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10520 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
10530 seimeihandan_top2:
10540 y=0:key$="":bg=0
10550 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
10560 key$=inkey$
10570 y=stick(1)
10580 bg=strig(1)
10590 pause 2.55*100
10600 wend
10610 '*************************************************
10620 '下のキー  ここから
10630 '*************************************************
10640 if (key$=chr$(31) or y=1) then
10650 select case No
10660 case 0:
10670 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10680 case 1:
10690 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10700 case 2:
10710 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10720 case 3:
10730 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10740 end select
10750 endif
10760 '*************************************************
10770 '下のキー　ここまで
10780 '*************************************************
10790 if (key$=chr$(30) or y=-1) then
10800 select case No
10810 case 0:
10820 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10830 case 1:
10840 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10850 case 2:
10860 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10870 case 3:
10880 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10890 end select
10900 endif
10910 '*************************************************
10920 '決定ボタン　ここから
10930 '*************************************************
10940 if (bg=2 or key$=chr$(13)) then
10950 select case No
10960 case 0:
10970 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10980 case 1:
10990 sp_on 1,0:goto Anzai_Top:
11000 case 2:
11010 sp_on 2,0:goto Kyusei_Top:
11020 case 3:
11030 sp_on 3,0:goto Main_Screen1:
11040 end select
11050 endif
11060 '*************************************************
11070 '決定ボタン　ここまで
11080 '*************************************************
11090 '１．姓名判断(九星姓名判断トップ)
11100 'グラフィック領域　ここから
11110 Kyusei_Top:
11120 cls 3:No=0:y=0:bg=0:key$="":talk""
11130 sp_on 0,1:sp_put 0,(10,100),0,0
11140 line (0,0)-(1080,60),rgb(0,0,250),bf
11150 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11160 line (0,60)-(1080,460),rgb(127,255,212),bf
11170 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
11180 line (0,460)-(1080,680),rgb(0,255,0),bf
11190 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
11200 'グラフィック領域　ここまで
11210 font 48:color rgb(255,255,255),,rgb(176,196,222)
11220 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
11230 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
11240 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
11250 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
11260 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
11270 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
11280 locate 0,10:color RGB(0,0,0)
11290 print "1.人名の吉凶を見るを選択"
11300 Kyusei_Top2:
11310 bg=0:key$="":y=0
11320 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
11330 key$=inkey$
11340 y=stick(1)
11350 bg=strig(1)
11360 pause 2.50*100
11370 wend
11380 '****************************************************
11390 '下のキー　ここから
11400 '*****************************************************
11410 if (y=1 or key$=chr$(30)) then
11420 select case No
11430 case 0:
11440 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11450 case 1:
11460 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11470 case 2:
11480 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11490 case 3:
11500 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
11510 end select
11520 endif
11530 '*****************************************************
11540 '下のキー　ここまで
11550 '*****************************************************
11560 '*****************************************************
11570 '上のキー　ここから
11580 '*****************************************************
11590 if (y=-1 or key$=chr$(31)) then
11600 select case No
11610 case 0:
11620 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11630 case 1:
11640 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
11650 case 2:
11660 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11670 case 3:
11680 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11690 end select
11700 endif
11710 '*****************************************************
11720 '上のキー　ここまで
11730 '*****************************************************
11740 '*****************************************************
11750 '決定ボタン　ここから
11760 '*****************************************************
11770 if (key$=chr$(13) or bg=2) then
11780 select case No
11790 case 0:
11800 sp_on 0,0:goto Parson_name_kikkyo:
11810 case 1:
11820 sp_on 1,0:goto nick_name_check:
11830 case 2:
11840 sp_on 2,0:goto name_inyo_check:
11850 case 3:
11860 sp_on 3,0:goto seimeihandan_top:
11870 end select
11880 endif
11890 '*****************************************************
11900 '決定ボタン　ここまで
11910 '*****************************************************
11920 '2.姓名判断 安斎流姓名判断　トップ画面
11930 '2-1名前の姓の部分を入力
11940 'グラフィック領域　ここから
11950 Anzai_Top_Screen:
11960 cls 3:LINE (0,0)-(1080,60),rgb(0,0,255),bf
11970 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11980 line (0,60)-(1080,260),rgb(127,255,212),bf
11990 pen 5:line(0,57)-(1077,257),rgb(0,0,255),b
12000 line (0,260)-(1080,350),rgb(0,255,0),bf
12010 pen 5:line(0,257)-(1077,347),rgb(0,0,255),b
12020 font 48:talk"":init"KB:2"
12030 'グラフィック領域 ここまで
12040 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
12050 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
12060 COLOR rgb(255,0,255)
12070 print"名前を2回に分けて入力してください"+chr$(13)
12080 print"名前の姓の部分を入れてください"+chr$(13)
12090 color rgb(0,0,0)
12100 input"名前の姓:",bufname$
12110 buff1=len(bufname$)
12120 '2-2名前の名の部分を入力
12130 'グラフィック描画領域　ここから
12140 cls 3:init"kb:2"
12150 line (0,0)-(1080,60),rgb(0,0,255),bf
12160 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
12170 line (0,60)-(1080,200),rgb(127,255,212),bf
12180 pen 5:line(0,57)-(1077,197),rgb(0,0,255),b
12190 line (0,200)-(1080,260),rgb(0,255,0),bf
12200 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
12210 'グラフィック描画領域 ここまで
12220 COLOR rgb(255,255,255)
12230 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
12240 talk"つぎに、名前のめいの部分を入れてください"
12250 color rgb(255,0,255)
12260 print"名前の名の部分を入れてください"+chr$(13)
12270 color rgb(0,0,0)
12280 input"名前の名:",bufname2$
12290 buff2=len(bufname2$)
12300 bufff=buff1+buff2
12310 select case bufff
12320 '姓1文字,名1文字
12330 case 2:
12340 cls
12350 '天運:buf_tenunn
12360 buf_tenunn=char_count(bufname$)
12370 '地運:buf_chiunn
12380 buf_chiunn=char_count(bufname2$)
12390 '人運 = 天運 + 地運
12400 buf_jinunn=buf_tenunn + buf_chiunn
12410 '外運 = 天運 + 人運
12420 buf_gaiunn = buf_tenunn + buf_chiunn
12430 '総数=buf_gaiunn
12440 buf_total=buf_gaiunn
12450 goto Result_Anzai:
12460 '姓１，名:2
12470 case 3:
12480 cls:
12490 if buff1=1 and buff2=2 then
12500 '1.天運:buf_tenunn
12510 buf_tenunn=char_count(bufname$)
12520 '2文字目の文字
12530 bufer_name2$(0)=Mid$(bufname2$,1,1)
12540 '3文字目の文字
12550 bufer_name2$(1)=Mid$(bufname2$,2,1)
12560 '2.人運
12570 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12580 '3.地運:buf_chiunn
12590 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12600 '4外運:buf_gaiunn
12610 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12620 '5.総数:buf_total
12630 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12640 goto Result_Anzai:
12650 endif
12660 if buff1=2 and buff2=1 then
12670 bufer_name$(0)=Mid$(bufname$,1,1)
12680 bufer_name$(1)=Mid$(bufname$,2,1)
12690 bufer_name2$(0)=Mid$(bufname$,1,1)
12700 '1.天運
12710 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12720 '2.人運
12730 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12740 '3.地運
12750 buf_chiunn=char_count(bufer_name2$(0))
12760 '4.外運
12770 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12780 '5.総数
12790 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12800 goto Result_Anzai:
12810 endif
12820 case 4:
12830 if buff1=2 and buff2=2 then
12840 bufer_name$(0)=Mid$(bufname$,1,1)
12850 bufer_name$(1)=Mid$(bufname$,2,1)
12860 bufer_name2$(0)=Mid$(bufname2$,1,1)
12870 bufer_name2$(1)=Mid$(bufname2$,2,1)
12880 '1.天運
12890 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12900 '2.人運
12910 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12920 '3.地運
12930 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12940 '4.外運
12950 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12960 '5.総数
12970 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12980 goto Result_Anzai:
12990 endif
13000 'パターン2 姓3文字 名1文字 total4文字
13010 if buff1=3 and buff2=1 then
13020 bufer_name$(0)=Mid$(bufname$,1,1)
13030 bufer_name$(1)=Mid$(bufname$,2,1)
13040 bufer_name$(2)=Mid$(bufname$,3,1)
13050 bufer_name2$(0)=Mid$(bufname2$,1,1)
13060 '1.天運
13070 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
13080 '2.人運
13090 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13100 '3.地運
13110 buf_chiunn=char_count(bufer_name2$(0))
13120 '4.外運
13130 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
13140 '5.総運
13150 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13160 goto Result_Anzai:
13170 endif
13180 'パターン３ 姓1,名３  合計４文字
13190 if buff1=1 and buff2=3 then
13200 bufer_name$(0)=Mid$(bufname$,1,1)
13210 bufer_name2$(0)=Mid$(bufname2$,1,1)
13220 bufer_name2$(1)=Mid$(bufname2$,2,1)
13230 bufer_name2$(2)=Mid$(bufname2$,3,1)
13240 '1.天運
13250 buf_tenunn = char_count(bufer_name$(0))
13260 '2.人運
13270 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
13280 '3.地運
13290 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13300 '4.外運
13310 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13320 '5.総運
13330 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13340 goto Result_Anzai:
13350 endif
13360 case 5:
13370 '５文字の名前
13380 '1.  3文字姓 2字名
13390 if buff1=3 and buff2=2 then
13400 bufer_name$(0)=Mid$(bufname$,1,1)
13410 bufer_name$(1)=Mid$(bufname$,2,1)
13420 bufer_name$(2)=Mid$(bufname$,3,1)
13430 bufer_name2$(0)=Mid$(bufname2$,1,1)
13440 bufer_name2$(1)=Mid$(bufname2$,2,1)
13450 '1.天運
13460 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13470 '2.人運
13480 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13490 '3.地運
13500 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13510 '4.外運
13520 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13530 '5.総運
13540 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13550 goto Result_Anzai:
13560 endif
13570 if buff1=2 and buff2=3 then
13580 bufer_name$(0)=Mid$(bufname$,1,1)
13590 bufer_name$(1)=Mid$(bufname$,2,1)
13600 bufer_name2$(0)=Mid$(bufname2$,1,1)
13610 bufer_name2$(1)=Mid$(bufname2$,2,1)
13620 bufer_name2$(2)=Mid$(bufname2$,3,1)
13630 '1.天運
13640 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
13650 '2.人運
13660 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13670 '3.地運
13680 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13690 '4.外運
13700 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13710 '5.総運
13720 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13730 goto Result_Anzai:
13740 endif
13750 if buff1=4 and buff2=1 then
13760 bufer_name$(0)=Mid$(bufname$,1,1)
13770 bufer_name$(1)=mid$(bufname$,2,1)
13780 bufer_name$(2)=mid$(bufname$,3,1)
13790 bufer_name$(3)=mid$(bufname$,4,1)
13800 bufer_name2$(0)=mid$(bufname2$,1,1)
13810 '1.天運
13820 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13830 '2.人運
13840 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13850 '3.地運
13860 buf_chiunn=char_count(bufer_name2$(0))
13870 '4.外運
13880 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13890 '5.総運
13900 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13910 goto Result_Anzai:
13920 endif
13930 case 6:
13940 '3字姓 3字名
13950 if buff1=3 and buff2=3 then
13960 bufer_name$(0)=Mid$(bufname$,1,1)
13970 bufer_name$(1)=Mid$(bufname$,2,1)
13980 bufer_name$(2)=Mid$(bufname$,3,1)
13990 bufer_name2$(0)=Mid$(bufname2$,1,1)
14000 bufer_name2$(1)=Mid$(bufname2$,2,1)
14010 bufer_name2$(2)=Mid$(bufname2$,3,1)
14020 '1.天運
14030 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
14040 '2.人運
14050 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
14060 '3.地運
14070 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14080 '4.外運
14090 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14100 '5.総運
14110 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14120 goto Result_Anzai:
14130 endif
14140 '4字姓 2字名
14150 if buff1=4 and buff2=2 then
14160 bufer_name$(0)=Mid$(bufname$,1,1)
14170 bufer_name$(1)=Mid$(bufname$,2,1)
14180 bufer_name$(2)=Mid$(bufname$,3,1)
14190 bufer_name$(3)=Mid$(bufname$,4,1)
14200 bufer_name2$(0)=Mid$(bufname2$,1,1)
14210 bufer_name2$(1)=Mid$(bufname2$,2,1)
14220 '1.天運
14230 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
14240 '2.人運
14250 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
14260 '3.地運
14270 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
14280 '4.外運
14290 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
14300 '5.総運
14310 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
14320 goto Result_Anzai:
14330 endif
14340 '4字姓 3字名
14350 case 7:
14360 if buff1=4 and buff2=3 then
14370 bufer_name$(0)=Mid$(bufname$,1,1)
14380 bufer_name$(1)=Mid$(bufname$,2,1)
14390 bufer_name$(2)=Mid$(bufname$,3,1)
14400 bufer_name$(3)=Mid$(bufname$,4,1)
14410 bufer_name2$(0)=Mid$(bufname2$,1,1)
14420 bufer_name2$(1)=Mid$(bufname2$,2,1)
14430 bufer_name2$(2)=Mid$(bufname2$,3,1)
14440 '1.天運
14450 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
14460 '2.人運
14470 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
14480 ' 3.地運
14490 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
14500 '4.外運
14510 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14520 '5.総運
14530 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
14540 goto Result_Anzai:
14550 endif
14560 case else:
14570 end select
14580 '2.設定
14590 seimeihandan_setting:
14600 font 46:color rgb(0,0,0),,rgb(176,196,222)
14610 No=0:y=0:key$="":bg=0:talk""
14620 sp_on 0,1:sp_put 0,(10,100),0,0
14630 talk"設定画面です。番号を選んでエンターキーを押してください"
14640 'グラフィック領域　ここから
14650 cls 3:
14660 line (0,0)-(1080,60),rgb(0,0,255),bf
14670 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
14680 line (0,60)-(1080,560),rgb(127,255,212),bf
14690 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
14700 line (0,560)-(1080,750),rgb(0,255,0),bf
14710 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14720 'グラフィック領域 ここまで
14730 '1行目　文字色　 白
14740 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14750 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14760 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14770 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14780 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14790 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14800 COLOR rgb(0,0,0):locate 0,12:
14810 print"1.登録文字の確認を選択"+chr$(13)
14820 seimeihandan_setting2:
14830 y=0:key$="":bg=0
14840 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14850 key$=inkey$
14860 y=stick(1)
14870 bg=strig(1)
14880 pause 2.50*100
14890 wend
14900 '****************************************************
14910 '1.下のカーソル　ここから
14920 '****************************************************
14930 if (key$=chr$(31) or y=1) then
14940 select case No
14950 case 0:
14960 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14970 case 1:
14980 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14990 case 2:
15000 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15010 case 3:
15020 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15030 case 4:
15040 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15050 end select
15060 endif
15070 '*****************************************************
15080 '1.下のカーソル　ここまで
15090 '*****************************************************
15100 '*****************************************************
15110 '2.上のカーソル　ここから
15120 '*****************************************************
15130 if (key$=chr$(30) or y=-1) then
15140 select case No
15150 case 0:
15160 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
15170 case 1:
15180 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
15190 case 2:
15200 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
15210 case 3:
15220 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
15230 case 4:
15240 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
15250 end select
15260 endif
15270 '******************************************************
15280 '2.上のカーソル　ここまで
15290 '******************************************************
15300 '******************************************************
15310 '3.決定ボタン　ここから
15320 '******************************************************
15330 if (key$=chr$(13) or bg=2) then
15340 select case No
15350 case 0:
15360 sp_on 0,0:goto Entry_moji_Top:
15370 case 1:
15380 sp_on 1,0:goto Entry_moji_check:
15390 case 2:
15400 sp_on 2,0:goto Moji_Kikkyo_Top:
15410 case 3:
15420 sp_on 3,0:goto Main_Screen1:
15430 case 4:
15440 sp_on 4,0:talk "プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
15450 end select
15460 endif
15470 '******************************************************
15480 '3.決定ボタン　ここまで
15490 '******************************************************
15500 '3 番号で吉凶を見る 入力
15510 Moji_Kikkyo_Top:
15520 font 46:color rgb(0,0,0),,rgb(176,196,222)
15530 init "kb:2"
15540 'グラフィック描画領域　ここから
15550 cls 3:talk""
15560 line (0,0)-(1080,60),rgb(0,0,255),bf
15570 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
15580 line (0,60)-(1080,255),rgb(127,255,212),bf
15590 PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
15600 line (0,255)-(1080,350),rgb(0,255,0),bf
15610 pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
15620 'グラフィック描画領域 ここまで
15630 color rgb(255,255,255)
15640 print"画数での吉凶判定"+chr$(13)
15650 color rgb(255,0,255)
15660 print"画数を入れてください"+chr$(13)
15670 print"(Max:81文字)"+chr$(13)
15680 color rgb(0,0,0)
15690 Input"文字の画数:",Number
15700 if Number > 81 then goto Moji_Kikkyo_Top:
15710 if Number <=81 then goto Moji_Kikkyo:
15720 '3.番号で吉凶を見る 結果表示
15730 'グラフィック描画領域　ここから
15740 Moji_Kikkyo:
15750 cls 3:init "kb:4":key$="":bg=0
15760 line (0,0)-(700,60),rgb(0,0,255),bf
15770 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15780 line (0,60)-(700,260),rgb(127,255,212),bf
15790 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15800 line (0,260)-(700,350),rgb(0,255,0),bf
15810 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15820 'グラフィック描画領域　ここまで
15830 color rgb(255,255,255)
15840 print "画数で吉凶を求める"+chr$(13)
15850 color rgb(255,0,255)
15860 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15870 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15880 while (key$<>chr$(13) and bg <> 2)
15890 key$=inkey$
15900 bg=strig(1)
15910 pause 2.50*100
15920 wend
15930 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15940 '3.ヘルプ
15950 help:
15960 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15970 No=0:y=0:key$="":bg=0
15980 talk""
15990 '描画領域 ここから
16000 line (0,0) - (1080,60),rgb(0,0,255),bf
16010 sp_on 0,1:sp_put 0,(10,100),0,0
16020 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
16030 line (0,60) - (1080,570),rgb(127,255,212),bf
16040 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
16050 line (0,570) - (1080,650),rgb(0,255,0),bf
16060 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
16070 '描画領域　ここまで
16080 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
16090 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
16100 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
16110 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
16120 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
16130 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
16140 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
16150 color rgb(0,0,0)
16160 locate 0,12:print "1.バージョン情報を選択"
16170 help2:
16180 y=0:key$="":bg=0
16190 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
16200 key$=inkey$
16210 y=stick(1)
16220 bg=strig(1)
16230 pause 2.50*100
16240 wend
16250 if (y=1 or key$=chr$(30)) then
16260 select case No
16270 case 0:
16280 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
16290 case 1:
16300 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
16310 case 2:
16320 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
16330 case 3:
16340 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
16350 case 4:
16360 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
16370 end select
16380 endif
16390 if (y=-1 or key$=chr$(31)) then
16400 select case No
16410 case 0:
16420 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
16430 case 1:
16440 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
16450 case 2:
16460 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
16470 case 3:
16480 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
16490 case 4:
16500 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
16510 end select
16520 endif
16530 if (key$=chr$(13) or bg=2) then
16540 select case No
16550 case 0:
16560 sp_on 0,0:goto Version_info:
16570 case 1:
16580 sp_on 1,0:goto Document_info:
16590 case 2:
16600 sp_on 2,0:goto Config_Setting:
16610 case 4:
16620 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16630 case 3:
16640 sp_on 3,0:goto Main_Screen1:
16650 end select
16660 endif
16670 'Menu1　画面
16680 talk"調べたい名前のみよじをいれてください"
16690 'グラフィック描画領域　ここから
16700 Parson_name_kikkyo:
16710 cls 3:init "KB:2"
16720 line (0,0)-(1080,60),rgb(0,0,255),bf
16730 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16740 line (0,60)-(1080,180),rgb(127,255,212),bf
16750 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
16760 line (0,180)-(1080,250),rgb(0,255,0),bf
16770 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
16780 'グラフィック描画領域　ここまで
16790 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16800 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16810 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16820 cls
16830 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16840 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16850 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16860 goto complate_Kyusei:
16870 'メニュー6　バージョン表示
16880 'グラフィック　描画　領域　 ここから
16890 Version_info:
16900 cls 3:bg=0:talk ""
16910 line (0,0) - (1080,60),rgb(0,0,255),bf
16920 pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
16930 line (0,60) - (1080,665),rgb(127,255,212),bf
16940 pen 5:line(0,57) - (1077,662),rgb(0,0,255),b
16950 line (0,665) - (1080,750),rgb(0,255,0),bf
16960 pen 5:line(0,662) - (1077,747),rgb(0,0,255),b
16970 'グラフィック　描画 領域　 ここまで
16980 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16990 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
17000 color rgb(255,0,255):PRINT"Ver:244.2024.12.29" + chr$(13)
17010 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字" + chr$(13)
17020 color rgb(255,0,255):print"アルファベット（大文字、小文字)" + chr$(13)
17030 color rgb(255,0,255):print"対応漢字画数：1画から24画まで" + chr$(13)
17040 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
17050 'ここを書き換える
17060 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.44です"
17070 color rgb(0,0,0):print"エンターキーを押してください"
17080 Version_info2:
17090 bg=0
17100 while (bg<>2)
17110 bg=strig(1)
17120 pause 2.50*100
17130 wend
17140 if bg = 2  then beep:goto Main_Screen1:
17150 complate_Kyusei:
17160 '文字数を求める変数
17170 buf_char_size=len(name$)
17180 buf_char_size2=len(name2$)
17190 '入力した文字を代入する変数
17200 '入力した文字を配列に代入する処理
17210 '姓名判断データー文字比較
17220 '画数を求める関数
17230 func char_count(buf_count$)
17240 count=0:buffer=0
17250 '1画の文字 23文字
17260 for j=0 to ((Moji_1)-1)
17270 if buf_count$=buf_char_hiragana1$(j) then
17280 count =1:
17290 endif
17300 next j
17310 '2画の文字
17320 for j=0 to ((Moji_2)-1)
17330 if buf_count$=buf_char_hiragana2$(j)  then
17340 count = 2:
17350 endif
17360 next j
17370 for j=0 to ((Moji_3)-1)
17380 if buf_count$=buf_char_hiragana3$(j) then
17390 count =3:
17400 endif
17410 next j
17420 for j=0 to ((Moji_4)-1)
17430 if buf_count$=buf_char_hiragana4$(j) then
17440 count = 4:
17450 endif
17460 next j
17470 for j=0 to ((Moji_5)-1)
17480 if buf_count$=buf_char_hiragana5$(j) then
17490 count = 5:
17500 endif
17510 next j
17520 for j=0 to ((Moji_6)-1)
17530 if buf_count$=buf_char_hiragana6$(j) then
17540 count= 6
17550 endif
17560 next j
17570 for  j=0 to ((Moji_7)-1)
17580 if buf_count$=buf_char_hiragana7$(j) then
17590 count=  7
17600 endif
17610 next j
17620 for j=0 to ((Moji_8)-1)
17630 if buf_count$=buf_char_hiragana8$(j) then
17640 count= 8
17650 endif
17660 next j
17670 for j=0 to ((Moji_9)-1)
17680 if buf_count$=buf_char_hiragana9$(j) then
17690 count=9
17700 endif
17710 next j
17720 for j=0 to ((Moji_10)-1)
17730 if buf_count$=buf_char_hiragana10$(j) then
17740 count=10
17750 endif
17760 next j
17770 for j=0 to ((Moji_11)-1)
17780 if buf_count$=buf_char_hiragana11$(j) then
17790 count=11
17800 endif
17810 next j
17820 for j=0 to  ((Moji_12)-1)
17830 if buf_count$=buf_char_hiragana12$(j) then
17840 count=12
17850 endif
17860 next j
17870 for j=0 to ((Moji_13)-1)
17880 if buf_count$=buf_char_hiragana13$(j) then
17890 count=13
17900 endif
17910 next j
17920 for j=0 to ((Moji_14)-1)
17930 if buf_count$=buf_char_hiragana14$(j) then
17940 count=14
17950 endif
17960 next j
17970 for j=0 to ((Moji_15)-1)
17980 if buf_count$=buf_char_hiragana15$(j) then
17990 count=15
18000 endif
18010 next j
18020 for j=0 to ((Moji_16)-1)
18030 if buf_count$=buf_char_hiragana16$(j) then
18040 count=16
18050 endif
18060 next j
18070 for j=0 to ((Moji_17)-1)
18080 if buf_count$=buf_char_hiragana17$(j) then
18090 count=17
18100 endif
18110 next j
18120 for j=0 to ((Moji_18)-1)
18130 if buf_count$=buf_char_hiragana18$(j) then
18140 count=18
18150 endif
18160 next j
18170 for j=0 to ((Moji_19)-1)
18180 if buf_count$=buf_char_hiragana19$(j) then
18190 count=19
18200 endif
18210 next j
18220 for j=0 to ((Moji_20)-1)
18230 if buf_count$=buf_char_hiragana20$(j) then
18240 count=20
18250 endif
18260 next i
18270 for j=0 to ((Moji_21)-1)
18280 if buf_count$=buf_char_hiragana21$(j) then
18290 count=21
18300 endif
18310 next j
18320 for j=0 to ((Moji_22)-1)
18330 if buf_count$=buf_char_hiragana22$(j) then
18340 count=22
18350 endif
18360 next j
18370 for j=0 to ((Moji_23)-1)
18380 if buf_count$=buf_char_hiragana23$(j) then
18390 count=23
18400 endif
18410 next j
18420 for j=0 to ((Moji_24)-1)
18430 if buf_count$=buf_char_hiragana24$(j) then
18440 count=24
18450 endif
18460 buffer = count
18470 next j
18480 endfunc buffer
18490 func show_sex_type$(sex$)
18500 buf_number=val(Mid$(sex$,4,1))
18510 if buf_number = 1 then
18520 buf_show_sex_type$="性別:女性"
18530 else
18540 if buf_number=2 then
18550 buf_show_sex_type$="性別:男性"
18560 endif
18570 endif
18580 endfunc buf_show_sex_type$
18590 '合計を求める関数
18600 func totalcounts(buffers$)
18610 buffers=0:
18620 for i=0 to len(buffers$)-1
18630 buffers=buffers+char_count(buffers$)
18640 next i
18650 endfunc buffers
18660 buf_count2=0:buf_count3=0
18670 '1.苗字の文字数
18680 for n=0 to (buf_char_size-1)
18690 buf_Input_data$(n)=mid$(name$,n+1,1)
18700 next n
18710 for i=0 to (buf_char_size-1)
18720 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18730 next i
18740 '2.名の文字数
18750 for n2=0 to (buf_char_size2-1)
18760 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18770 next n2
18780 for i2=0 to (buf_char_size2-1)
18790 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18800 next i2
18810 '総数を出す
18820 select case (buf_char_size + buf_char_size2)
18830 case 6:
18840 if ((buf_char_size=4) and (buf_char_size2=2)) then
18850 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18860 endif
18870 if ((buf_char_size=3) and (buf_char_size2=3)) then
18880 if buf_Input_data$(1)="々" then
18890 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18900 else
18910 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18920 endif
18930 endif
18940 case 5:
18950 if ((buf_char_size=4) and (buf_char_size2=1)) then
18960 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18970 endif
18980 if ((buf_char_size=2) and (buf_char_size2=3)) then
18990 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19000 endif
19010 if ((buf_char_size=3) and (buf_char_size2=2)) then
19020 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19030 endif
19040 case 4:
19050 if ((buf_char_size=1) and (buf_char_size2=3)) then
19060 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19070 endif
19080 if ((buf_char_size=2) and (buf_char_size2=2)) then
19090 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19100 endif
19110 if ((buf_char_size=3) and (buf_char_size2=1)) then
19120 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19130 endif
19140 case 3:
19150 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19160 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19170 endif
19180 if ((buf_char_size=2) and (buf_char_size2=1)) then
19190 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19200 endif
19210 case 2:
19220 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19230 case else:
19240 end select
19250 '文字の総数をだす
19260 total_name$ = name$ + name2$
19270 '1.姓星を求める
19280 select case buf_char_size
19290 '苗字1文字のとき
19300 case 1:
19310 buf_seisei = char_count(buf_Input_data$(0)) + 1
19320 '苗字2文字の時
19330 case 2:
19340 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
19350 '苗字3文字のとき
19360 case 3:
19370 if (buf_Input_data$(1)="々")  then
19380 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
19390 else
19400 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
19410 endif
19420 '苗字4文字のとき
19430 case 4:
19440 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
19450 case else:
19460 end select
19470 '2.主星をだす
19480 '2.主星
19490 select case (buf_char_size + buf_char_size2)
19500 '姓名5文字のとき
19510 case 6:
19520 if ((buf_char_size=4) and (buf_char_size2=2)) then
19530 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19540 endif
19550 if ((buf_char_size=3) and (buf_char_size2=3)) then
19560 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19570 endif
19580 case 5:
19590 if ((buf_char_size=4) and (buf_char_size2=1)) then
19600 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19610 endif
19620 if ((buf_char_size=2) and (buf_char_size2=3)) then
19630 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19640 endif
19650 if ((buf_char_size=3) and (buf_char_size2=2)) then
19660 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19670 endif
19680 '姓名4文字のとき
19690 case 4:
19700 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19710 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19720 endif
19730 if ((buf_char_size=1) and (buf_char_size2=3)) then
19740 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19750 endif
19760 if ((buf_char_size=3) and (buf_char_size2=1)) then
19770 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19780 endif
19790 '姓名3文字のとき
19800 case 3:
19810 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19820 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19830 else
19840 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19850 endif
19860 case 2:
19870 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19880 case else:
19890 end select
19900 '3.名星を求める
19910 select case (buf_char_size + buf_char_size2)
19920 case 6:
19930 if ((buf_char_size=3) and (buf_char_size2=3)) then
19940 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19950 endif
19960 if ((buf_char_size=4) and (buf_char_size2=2)) then
19970 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19980 endif
19990 case 5:
20000 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
20010 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20020 endif
20030 if ((buf_char_size=3) and (buf_char_size2=2)) then
20040 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20050 endif
20060 if ((buf_char_size=2) and (buf_char_size2=3))  then
20070 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20080 endif
20090 case 4:
20100 if ((buf_char_size=2) and (buf_char_size2=2)) then
20110 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
20120 endif
20130 if ((buf_char_size=1) and (buf_char_size2=3)) then
20140 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
20150 endif
20160 if ((buf_char_size=3) and (buf_char_size2=1)) then
20170 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20180 endif
20190 case 3:
20200 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20210 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
20220 endif
20230 if ((buf_char_size=2) and (buf_char_size2=1)) then
20240 buf_meisei=char_count(buf_Input_data2$(0))+1
20250 endif
20260 case 2:
20270 buf_meisei = char_count(buf_Input_data2$(0)) + 1
20280 case else:
20290 end select
20300 '4.外星を求める
20310 select case (buf_char_size + buf_char_size2)
20320 case 6:
20330 if buf_Input_data$(1)="々"  then
20340 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20350 else
20360 if ((buf_char_size=4) and (buf_char_size2=2)) then
20370 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20380 else
20390 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20400 endif
20410 endif
20420 case 5:
20430 if ((buf_char_size=4) and (buf_char_size2=1)) then
20440 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
20450 endif
20460 if ((buf_char_size=3) and (buf_char_size2=2)) then
20470 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20480 endif
20490 if ((buf_char_size=2) and (buf_char_size2=3)) then
20500 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20510 endif
20520 case 4:
20530 if ((buf_char_size=2) and (buf_char_size2=2)) then
20540 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20550 endif
20560 if ((buf_char_size=1) and (buf_char_size2=3)) then
20570 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20580 endif
20590 if ((buf_char_size=3) and (buf_char_size2=1)) then
20600 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20610 endif
20620 case 3:
20630 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20640 buf_gaisei=1+char_count(buf_Input_data2$(1))
20650 endif
20660 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20670 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20680 endif
20690 case 2:
20700 buf_gaisei = 2
20710 case else:
20720 end select
20730 '診断結果表示
20740 '1.姓星を出す
20750 'グラフィック描画領域　ここから
20760 Result_Kyusei_Kikkyo:
20770 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20780 '縦の画面
20790 '1行目
20800 line (0,0)-(1500,60),rgb(0,0,255),bf
20810 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20820 '2行目
20830 line (0,60)-(1500,425),rgb(127,255,212),bf
20840 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20850 '3行目
20860 line (0,485)-(1500,425),rgb(0,255,0),bf
20870 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20880 '横の画面　吉凶のランク表
20890 'グラフィック描画領域　ここまで
20900 talk"診断結果です":font 32
20910 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20920 color Rgb(255,0,255)
20930 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20940 '2.主星を出す
20950 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20960 '3.名星を求める
20970 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20980 '4.外星を求める
20990 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
21000 '5.総数を出す
21010 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
21020 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
21030 color rgb(0,0,0)
21040 print"エンターキーを押してください"
21050 while (key$ <> chr$(13) and bg <> 2)
21060 key$=inkey$
21070 bg=strig(1)
21080 pause 2.50*100
21090 wend
21100 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
21110 '2.主星を出す
21120 'メニュー3 登録文字の確認 ここから
21130 'グラフィック領域　ここから
21140 'タイトル青 文字:白
21150 Entry_moji_Top:
21160 talk ""
21170 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
21180 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
21190 line (0,62)-(1080,155),rgb(0,255,255),bf
21200 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
21210 line (0,155)-(1080,260),rgb(0,255,0),bf
21220 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
21230 'グラフィック領域　ここまで
21240 talk"調べたい文字をひと文字入れてください。":init "kb:2"
21250 '文字:白
21260 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
21270 '文字:アクア
21280 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
21290 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
21300 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
21310 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
21320 '1画の文字
21330 for i=0 to ((Moji_1)-1)
21340 if (name$=buf_char_hiragana1$(i)) then
21350 buffer_count=1:goto Moji_count_check:
21360 endif
21370 next i
21380 '2画の文字
21390 for i=0 to ((Moji_2)-1)
21400 if (name$=buf_char_hiragana2$(i)) then
21410 buffer_count=2:goto Moji_count_check:
21420 endif
21430 next i
21440 '3画の文字
21450 for i=0 to ((Moji_3)-1)
21460 if (name$=buf_char_hiragana3$(i)) then
21470 buffer_count=3:goto Moji_count_check:
21480 endif
21490 next i
21500 '4画の文字
21510 for i=0 to ((Moji_4)-1)
21520 if (name$=buf_char_hiragana4$(i)) then
21530 buffer_count=4:goto Moji_count_check:
21540 endif
21550 next i
21560 '5画の文字
21570 for i=0 to ((Moji_5)-1)
21580 if (name$=buf_char_hiragana5$(i)) then
21590 buffer_count=5:goto Moji_count_check:
21600 endif
21610 next i
21620 '6画の文字
21630 for i=0 to ((Moji_6)-1)
21640 if (name$=buf_char_hiragana6$(i)) then
21650 buffer_count=6:goto Moji_count_check:
21660 endif
21670 next i
21680 '7画の文字
21690 for i=0 to ((Moji_7)-1)
21700 if (name$=buf_char_hiragana7$(i)) then
21710 buffer_count=7:goto Moji_count_check:
21720 endif
21730 next i
21740 '8画の文字 120 文字
21750 for i=0 to ((Moji_8)-1)
21760 if (name$=buf_char_hiragana8$(i)) then
21770 buffer_count=8:goto Moji_count_check:
21780 endif
21790 next i
21800 '9画の文字  103文字
21810 for i=0 to ((Moji_9)-1)
21820 if (name$=buf_char_hiragana9$(i)) then
21830 buffer_count=9:goto Moji_count_check:
21840 endif
21850 next i
21860 '10画の文字 98文字
21870 for i=0 to ((Moji_10)-1)
21880 if (name$=buf_char_hiragana10$(i)) then
21890 buffer_count=10:goto Moji_count_check:
21900 endif
21910 next i
21920 '11画の文字 98文字
21930 for i=0 to ((Moji_11)-1)
21940 if (name$=buf_char_hiragana11$(i)) then
21950 buffer_count=11:goto Moji_count_check:
21960 endif
21970 next i
21980 '12画の文字
21990 for i=0 to ((Moji_12)-1)
22000 if (name$=buf_char_hiragana12$(i)) then
22010 buffer_count=12:goto Moji_count_check:
22020 endif
22030 next i
22040 '13画の文字
22050 for i=0 to ((Moji_13)-1)
22060 if (name$=buf_char_hiragana13$(i)) then
22070 buffer_count=13:goto Moji_count_check:
22080 endif
22090 next i
22100 '14画の文字
22110 for i=0 to ((Moji_14)-1)
22120 if (name$=buf_char_hiragana14$(i)) then
22130 buffer_count=14:goto Moji_count_check:
22140 endif
22150 next i
22160 '15画の文字
22170 for i=0 to ((Moji_15)-1)
22180 if (name$=buf_char_hiragana15$(i)) then
22190 buffer_count=15:goto Moji_count_check:
22200 endif
22210 next i
22220 '16画の文字
22230 for i=0 to ((Moji_16)-1)
22240 if (name$=buf_char_hiragana16$(i)) then
22250 buffer_count=16:goto Moji_count_check:
22260 endif
22270 next i
22280 '17画の文字
22290 for i=0 to ((Moji_17)-1)
22300 if (name$=buf_char_hiragana17$(i)) then
22310 buffer_count=17:goto Moji_count_check:
22320 endif
22330 next i
22340 '18画の文字 25
22350 for i=0 to ((Moji_18)-1)
22360 if (name$=buf_char_hiragana18$(i)) then
22370 buffer_count=18:goto Moji_count_check:
22380 endif
22390 next i
22400 '19画の文字 17
22410 for i=0 to ((Moji_19)-1)
22420 if (name$=buf_char_hiragana19$(i)) then
22430 buffer_count=19:goto Moji_count_check:
22440 endif
22450 next i
22460 '20画の文字 13
22470 for i=0 to ((Moji_20)-1)
22480 if (name$=buf_char_hiragana20$(i)) then
22490 buffer_count=20:goto Moji_count_check:
22500 endif
22510 next i
22520 '21画の文字 6
22530 for i=0 to ((Moji_21)-1)
22540 if (name$=buf_char_hiragana21$(i)) then
22550 buffer_count=21:goto Moji_count_check:
22560 endif
22570 next i
22580 '22画の文字 4
22590 for i=0 to ((Moji_22)-1)
22600 if (name$=buf_char_hiragana22$(i)) then
22610 buffer_count=22:goto Moji_count_check:
22620 endif
22630 next i
22640 '23画の文字 3
22650 for i=0 to ((Moji_23)-1)
22660 if (name$=buf_char_hiragana23$(i)) then
22670 buffer_count=23:goto Moji_count_check:
22680 endif
22690 next i
22700 '24画の文字
22710 for i=0 to ((Moji_24)-1)
22720 if (name$=buf_char_hiragana24$(i)) then
22730 buffer_count=24:goto Moji_count_check:
22740 endif
22750 next i
22760 'Menu3 結果表示 画数の登録確認
22770 Moji_count_check:
22780 bg=0:init"kb:4"
22790 if (buffer_count = 0) then
22800 '登録文字がない場合の処理
22810 'グラフィック領域　ここから
22820 'Moji_count_check:
22830 cls 3:talk ""
22840 '1行
22850 line (0,0)-(1080,60),rgb(0,0,255),bf
22860 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22870 '2行目
22880 line (0,60)-(1080,165),rgb(127,255,212),bf
22890 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22900 '3行目
22910 line (0,165)-(1080,370),rgb(0,0,255),bf
22920 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22930 '4行目
22940 line (0,370)-(1080,450),rgb(0,255,0),bf
22950 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22960 'グラフィック領域　ここまで
22970 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22980 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22990 talk "この文字は、登録されていません"
23000 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
23010 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
23020 color rgb(0,0,0):print"コマンド:"
23030 while (bg <> 2 and key$ <> chr$(13))
23040 key$=inkey$
23050 bg=strig(1)
23060 pause 2.50*100
23070 wend
23080 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
23090 else
23100 'グラフィック描画領域　ここから
23110 'Entry_moji_check:
23120 cls 3
23130 '1行目
23140 line (0,0)-(1080,58),rgb(0,0,255),bf
23150 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
23160 '2行目
23170 line (0,58)-(1080,100),rgb(127,255,212),bf
23180 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
23190 '3行目
23200 line (0,100)-(1080,280),rgb(0,0,255),bf
23210 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
23220 '4行目
23230 line (0,280)-(1080,340),rgb(0,255,0),bf
23240 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
23250 'グラフィック描画領域　ここまで
23260 color rgb(255,255,255):print "登録文字画数結果表示"
23270 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
23280 endif
23290 while (key$<>chr$(13) and bg <> 2)
23300 key$=inkey$
23310 bg=strig(1)
23320 pause 2.50*100
23330 wend
23340 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
23350 'Menu2 名前の陰陽を見る
23360 'グラフィック描画領域 ここから
23370 name_inyo_check:
23380 init "kb:2":talk ""
23390 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
23400 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
23410 LINE (0,60)-(1080,250),rgb(127,255,212),bf
23420 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
23430 line (0,250)-(1080,350),rgb(0,255,0),bf
23440 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
23450 'グラフィック描画領域　ここまで
23460 cls
23470 color rgb(255,255,255)
23480 print"Menu2 名前の陰陽を見る"+chr$(13)
23490 COLOR rgb(255,0,255)
23500 PRINT"(●:陽,○:陰)"+chr$(13)
23510 print"調べたい名前苗字を入れてください"+chr$(13)
23520 color rgb(0,0,0)
23530 Input"調べたい名前の苗字:",name$
23540 if name$="" then goto name_inyo_check:
23550 'Menu2 陰陽の吉凶を見る 名入力
23560 cls:color rgb(255,255,255)
23570 print"Menu2 名前の陰陽を見る"+chr$(13)
23580 color rgb(255,0,255)
23590 print"(●:陽,○:陰)"+chr$(13)
23600 print"調べたい名前の名を入れてください"+chr$(13)
23610 color rgb(0,0,0)
23620 Input"調べたい名前の名:",name2$
23630 if name2$="" then goto name_inyo_check:
23640 for i=0 to len(name$)-1
23650 name_array$(i)=Mid$(name$,i+1,1)
23660 if char_count(name_array$(i)) mod 2 = 1  then
23670 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23680 else
23690 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23700 endif
23710 next i
23720 for i=0 to len(name2$)-1
23730 name_array2$(i)=Mid$(name2$,i+1,1)
23740 if char_count(name_array2$(i)) mod 2 = 1 then
23750 name_array2$(i) = "○":buffer2$ = buffer2$ + name_array2$(i)
23760 else
23770 name_array2$(i)="●":buffer2$ = buffer2$ + name_array2$(i)
23780 endif
23790 next i
23800 bufname$ = buffer$ + buffer2$
23810 '陰陽のタイプ ここから
23820 select case (len(bufname$))
23830 '2文字
23840 case 2:
23850 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$ = "吉相:姓名2字の陰陽吉相"
23860 'endif
23870 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23880 '  endif
23890 '3文字
23900 case 3:
23910 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23920 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23930 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23940 '4文字
23950 case 4:
23960 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23970 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23980 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23990 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
24000 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
24010 '5文字
24020 case 5:
24030 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
24040 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
24050 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
24060 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
24070 case 6:
24080 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
24090 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
24100 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
24110 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
24120 case else:
24130 buffer_name$="例外に入りました"
24140 end select
24150 '陰陽のタイプ　ここまで
24160 'グラフィック描画領域　ここから
24170 cls 2:key$="":bg=0:init "kb:4":talk ""
24180 line (0,0)-(1080,60),rgb(0,0,250),bf
24190 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24200 line (0,60)-(1080,285),rgb(127,255,212),bf
24210 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
24220 line (0,280)-(1080,380),rgb(0,255,0),bf
24230 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
24240 'グラフィック描画領域 ここまで
24250 color rgb(255,255,255)
24260 cls:print"名前:";name$ + name2$ + chr$(13)
24270 color rgb(255,0,255)
24280 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
24290 print buffer_name$;chr$(13)
24300 color rgb(0,0,0)
24310 print"エンターキーを押してください"
24320 while (bg <> 2 and key$ <> chr$(13))
24330 key$=inkey$
24340 bg=strig(1)
24350 pause 2.50*100
24360 wend
24370 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24380 'Menu3
24390 '登録文字数の確認
24400 Entry_moji_check:
24410 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24420 'グラフィック描画領域　ここから
24430 cls 3:init"kb:4":bg=0:key$="":talk ""
24440 '1行目
24450 line (0,0)-(1080,60),rgb(0,0,255),bf
24460 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24470 '2行目
24480 line (0,60)-(1080,150),rgb(157,255,212),bf
24490 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24500 '3行目
24510 line (0,150)-(1080,250),rgb(0,255,0),bf
24520 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24530 'グラフィック描画領域 ここまで
24540 color rgb(255,255,255)
24550 PRINT"登録文字数の確認"+chr$(13)
24560 color rgb(255,0,255)
24570 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24580 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24590 while (key$ <> chr$(13) and bg <> 2)
24600 key$=inkey$
24610 bg=strig(1)
24620 pause 2.50*100
24630 wend
24640 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24650 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24660 nick_name_check:
24670 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24680 'グラフィック描画領域　ここから
24690 cls 3:init "kb:2"
24700 line (0,0)-(1080,60),rgb(0,0,250),bf
24710 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24720 line (0,60)-(1080,160),rgb(127,255,212),bf
24730 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24740 line (0,160)-(1080,270),rgb(0,255,0),bf
24750 pen 5:line(0,157)-(1077,267),rgb(0,0,255),b
24760 'グラフィック描画領域　ここまで
24770 buf=0:cls
24780 locate 0,0
24790 color rgb(255,255,255)
24800 Print"名前(ニックネーム)の総数で吉凶を判断します"
24810 locate 0,2
24820 color rgb(255,0,255)
24830 PRINT"名前(ニックネーム)を入れてください"
24840 locate 0,4
24850 color rgb(0,0,0)
24860 Input"名前:",name$
24870 if name$="" then goto nick_name_check:
24880 for n=0 to (len(name$)-1)
24890 buf_Input_data$(n)=mid$(name$,n+1,1)
24900 buf=buf+char_count(buf_Input_data$(n))
24910 next n
24920 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24930 '結果表示　グラフィック　ここから
24940 cls 3:init "kb:4":bg=0:key$=""
24950 line (0,0)-(1080,60),rgb(0,0,255),bf
24960 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24970 line (0,60)-(1080,160),rgb(127,255,212),bf
24980 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24990 line (0,160)-(1080,540),rgb(0,255,0),bf
25000 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
25010 '結果表示 グラフィック領域 ここまで
25020 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
25030 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
25040 while (key$ <> chr$(13) and bg <> 2)
25050 key$=inkey$
25060 bg=strig(1)
25070 pause 2.50*100
25080 wend
25090 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
25100 '名前2文字
25110 'グラフィック描画領域　ここから
25120 Result_Anzai:
25130 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
25140 line (0,0)-(1400,60),rgb(0,0,255),bf
25150 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
25160 line (0,60)-(1400,540-180),rgb(127,255,212),bf
25170 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
25180 line (0,540-180)-(1400,540),rgb(0,255,0),bf
25190 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25200 'グラフィック描画領域 ここまで
25210 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25220 color rgb(255,0,255)
25230 print"天運";buf_tenunn;chr$(13)
25240 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25250 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25260 print"外運";buf_gaiunn;chr$(13)
25270 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25280 COLOR rgb(0,0,0)
25290 PRINT"エンターキー:トップ画面"+chr$(13)
25300 while (key$<>chr$(13) and bg <> 2)
25310 key$=inkey$
25320 bg=strig(1)
25330 pause 2.50*100
25340 wend
25350 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25360 '参考文献 表示 ここから
25370 'グラフィック描画領域　 ここから
25380 Document_info:
25390 cls 3:init"kb:4":bg=0
25400 line (0,0)-(1080,60),rgb(0,0,255),bf
25410 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
25420 line (0,60)-(1080,650),rgb(127,255,212),bf
25430 pen 5:line(0,57)-(1077,647),rgb(0,0,255),b
25440 line (0,650)-(1080,730),rgb(0,255,0),bf
25450 pen 5:line(0,647)-(1077,727),rgb(0,0,255),b
25460 'グラフィック描画領域  ここまで
25470 '参考文献１
25480 cls
25490 color rgb(255,255,255)
25500 locate 0,0
25510 print"◎参考文献"
25520 color rgb(255,0,255)
25530 locate 0,2
25540 print "参考文献 １/4"
25550 locate 0,4
25560 print "Title:九星姓名判断"
25570 locate 0,6
25580 print "Author:高嶋　 美伶"
25590 locate 0,8
25600 print "出版社:日本文芸者"
25610 locate 0,10
25620 print "ISBN:4-537-20073-1"
25630 locate 0,12
25640 print "定価:1,200+税"
25650 color rgb(0,0,0)
25660 locate 0,14
25670 print "エンターキーを押してください"
25680 while (bg <> 2 and key$<>chr$(13))
25690 key$=inkey$
25700 bg=strig(1)
25710 pause 2.50*100
25720 wend
25730 if (key$=chr$(13) or bg=2) then
25740 goto Document_info2:
25750 endif
25760 '参考文献２
25770 Document_info2:
25780 cls:bg=0:key$=""
25790 color rgb(255,255,255)
25800 locate 0,0
25810 print "◎参考文献"
25820 color rgb(255,0,255)
25830 locate 0,2
25840 print "参考文献 ２/4"
25850 locate 0,4
25860 print "Title:究極の姓名判断"
25870 locate 0,6
25880 print "Author:安斎　勝洋"
25890 locate 0,8
25900 print "出版社:説話社"
25910 locate 0,10
25920 print "ISBN:978-4-916217-61-5"
25930 locate 0,12
25940 print "定価:1,800円+税"
25950 color rgb(0,0,0)
25960 locate 0,14
25970 print"エンターキーを押してください"
25980 while (key$<>chr$(13) and bg <> 2)
25990 key$=inkey$
26000 bg=strig(1)
26010 pause 2.50*100
26020 wend
26030 if (key$=chr$(13) or bg=2) then goto Document_info3:
26040 '参考文献３
26050 Document_info3:
26060 cls:bg=0:key$=""
26070 color rgb(255,255,255)
26080 locate 0,0
26090 print"◎参考文献"
26100 color rgb(255,0,255)
26110 locate 0,2
26120 print "参考文献 3/4"
26130 locate 0,4
26140 print "Title:新明解現在漢和辞典"
26150 locate 0,6
26160 print "Author:影山輝國(編集主幹)他"
26170 locate 0,8
26180 print "出版社:三省堂"
26190 locate 0,10
26200 print "ISBN:978-4-385-13755-1"
26210 locate 0,12
26220 print "定価:2,800円 + 税"
26230 color rgb(0,0,0)
26240 locate 0,14
26250 print "エンターキーを押してください"
26260 while (key$<>chr$(13) and bg<>2)
26270 key$=inkey$
26280 bg=strig(1)
26290 pause 2.50*100
26300 wend
26310 if (key$=chr$(13) or bg=2) then goto Document_info4:
26320 '参考文献４　
26330 '描画領域　ここから
26340 Document_info4:
26350 cls 3:key$="":bg=0
26360 line (0,0)-(1080,60),rgb(0,0,255),bf
26370 line (0,0)-(1077,57),rgb(0,255,0),b
26380 line (0,60)-(1080,650),rgb(127,255,212),bf
26390 LINE (0,60)-(1077,647),rgb(0,0,255),b
26400 LINE (0,650)-(1080,830),rgb(0,255,0),bf
26410 line (0,650)-(1077,833),rgb(0,0,255),b
26420 '描画領域　ここまで
26430 color rgb(255,255,255)
26440 locate 0,0
26450 print "◎参考文献"
26460 COLOR rgb(255,0,255)
26470 locate 0,2
26480 print "参考文献 4/4"
26490 locate 0,4
26500 print "Title:姓名の暗号"
26510 locate 0,6
26520 print "Author:樹門　幸宰(じゅもん こうざい)"
26530 locate 0,8
26540 print "出版社:幻冬舎"
26550 locate 0,10
26560 print "定価:1400円 + 税"
26570 locate 0,12
26580 print "ISBN:4-344-00777-8"
26590 color rgb(0,0,0)
26600 locate 0,14
26610 print "参考文献トップに行く:エンターキー"
26620 locate 0,16
26630 print "スペース：トップメニューに行く"
26640 while (key$<>chr$(13) and bg<>2)
26650 key$=inkey$
26660 bg=strig(1)
26670 pause 2.50*100
26680 wend
26690 if (key$=chr$(13) or bg=2) then goto help:
26700 '安斎流姓名判断　メニュー
26710 'グラフィック領域　ここから
26720 Anzai_Top:
26730 cls 3:talk ""
26740 No=0:init"kb:4":y=0:bg=0:key$=""
26750 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26760 sp_on 0,1:sp_put 0,(10,100),0,0
26770 line (0,0)-(1080,60),rgb(0,0,255),bf
26780 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26790 line (0,60)-(1080,475),rgb(127,255,212),bf
26800 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26810 line (0,475)-(1080,650),rgb(0,255,0),bf
26820 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26830 'グラフィック描画領域　ここまで
26840 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
26850 color rgb(255,255,255)
26860 print "安斎流姓名判断　トップメニュー" + chr$(13)
26870 color rgb(255,0,255)
26880 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26890 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26900 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26910 print " :4.前の画面に戻る"+chr$(13)
26920 locate 0,10
26930 color rgb(0,0,0)
26940 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26950 Anzai_Top2:
26960 y=0:bg=0:key$=""
26970 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26980 key$=inkey$
26990 y=stick(1)
27000 bg=strig(1)
27010 pause 2.50*100
27020 wend
27030 '******************************************************
27040 '1.下のキー　ここから
27050 '******************************************************
27060 if (y=1 or key$=chr$(30)) then
27070 select case No
27080 case 0:
27090 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27100 case 1:
27110 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27120 case 2:
27130 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27140 case 3:
27150 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27160 end select
27170 endif
27180 '******************************************************
27190 '1.下のキー　ここまで
27200 '******************************************************
27210 '******************************************************
27220 '2.上のキー　ここから
27230 '******************************************************
27240 if (y=-1 or key$=chr$(31)) then
27250 select case No
27260 case 0:
27270 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27280 case 1:
27290 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27300 case 2:
27310 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27320 case 3:
27330 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27340 end select
27350 endif
27360 '******************************************************
27370 '2.上のキー　ここまで
27380 '******************************************************
27390 '******************************************************
27400 '3.決定ボタン　ここから
27410 '******************************************************
27420 if (key$=chr$(13) or bg=2) then
27430 select case No
27440 case 0:
27450 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27460 case 1:
27470 sp_on 1,0:goto Anzai_Top_Screen:
27480 case 2:
27490 sp_on 2,0:goto Anzai_Kaimei_Check:
27500 case 3:
27510 sp_on 3,0:goto seimeihandan_top:
27520 end select
27530 endif
27540 '******************************************************
27550 '3.決定ボタン　ここまで
27560 '******************************************************
27570 '2.安斎流姓名判断　男女の相性占い　ここから
27580 'グラフィック描画領域 ここから
27590 cls 3
27600 '1行目
27610 line (0,0)-(1080,60),rgb(0,0,255),bf
27620 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27630 '2行目
27640 line (0,60)-(1080,160),rgb(127,255,212),bf
27650 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27660 '3行目
27670 line (0,160)-(1080,300),rgb(0,255,0),bf
27680 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27690 'グラフィック描画領域　男女の相性占い ここまで
27700 '1.名前の姓を入力  男性
27710 Anzai_Aishou_Top1:
27720 cls 3
27730 '1行目
27740 line (0,0)-(1080,60),rgb(0,0,255),bf
27750 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27760 '2行目
27770 line (0,60)-(1080,160),rgb(127,255,212),bf
27780 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27790 '3行目
27800 line (0,160)-(1080,300),rgb(0,255,0),bf
27810 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27820 color rgb(255,255,255)
27830 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27840 color rgb(255,0,255)
27850 print "男性の名前(姓)を入れてください"+chr$(13)
27860 color rgb(0,0,0)
27870 Input "男性の名前(姓):",name$
27880 '2.名前の名を入力  男性
27890 cls 3:talk ""
27900 '1行目
27910 line (0,0)-(1080,60),rgb(0,0,255),bf
27920 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27930 '2行目
27940 line (0,60)-(1080,160),rgb(127,255,212),bf
27950 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27960 '3行目
27970 line (0,160)-(1080,300),rgb(0,255,0),bf
27980 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27990 color rgb(255,255,255)
28000 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28010 color rgb(255,0,255)
28020 print "男性の名前（名）をいれてください"+chr$(13)
28030 color rgb(0,0,0)
28040 Input "男性の名前(名):",name2$
28050 '3.名前(姓)入力 女性
28060 Anzai_Aishou_Top2:
28070 cls:init "kb:2":talk ""
28080 color rgb(255,255,255)
28090 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28100 color rgb(255,0,255)
28110 print "女性の名前(姓)を入れてください"+chr$(13)
28120 color rgb(0,0,0)
28130 Input"女性の名前:",name3$
28140 '4.名前（名)入力 女性
28150 cls:init "kb:2":talk ""
28160 color rgb(255,255,255)
28170 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28180 color rgb(255,0,255)
28190 print "女性の名前（名）を入れてください"+chr$(13)
28200 color rgb(0,0,0)
28210 Input "女性の名前(名):",name4$
28220 '男性　の地運 を求める
28230 '姓名の合計数
28240 '1.男性 名前の文字数を求める
28250 '地運を求める
28260 buf_male_name1 = len(name$)
28270 buf_male_name2 = len(name2$)
28280 buf_male_count = buf_male_name1 + buf_male_name2
28290 '2.女性 名前の文字数を求める
28300 buf_female_name1 = len(name3$)
28310 buf_female_name2 = len(name4$)
28320 buf_female_count = buf_female_name1 + buf_female_name2
28330 'goto Anzai_Aishou_Check:
28340 '1.男性の地運を求める
28350 select case buf_male_count
28360 case 2:
28370 '男性の地運を求める
28380 buf_chiunn=char_count(name2$)
28390 case 3:
28400 '姓が一文字 名が2文字
28410 if buf_male_name1=1 and buf_male_name2=2 then
28420 buf_Input_name$(0)=mid$(name2$,1,1)
28430 buf_Input_name$(1)=mid$(name2$,2,1)
28440 '地運を計算
28450 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28460 endif
28470 if buf_male_name1=2 and buf_male_name2=1 then
28480 buf_Input_name$(0)=Mid$(name2$,1,1)
28490 buf_chiunn=char_count(buf_Input_name$(0))
28500 endif
28510 case 4:
28520 '1.姓１，名３
28530 if bufmale_name1=1 and buf_male_name2=3 then
28540 buf_Input_name$(0)=Mid$(name2$,1,1)
28550 buf_Input_name$(1)=Mid$(name2$,2,1)
28560 buf_Input_name$(2)=Mid$(name2$,3,1)
28570 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28580 endif
28590 '2.姓２,名２
28600 if buf_male_name1=2 and buf_male_name2=2 then
28610 buf_Input_name$(0)=Mid$(name2$,1,1)
28620 buf_Input_name$(1)=Mid$(name2$,2,1)
28630 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28640 endif
28650 '3.姓３、名１
28660 if buf_male_name1=3 and buf_male_name2=1 then
28670 buf_Input_name$(0)=Mid$(name2$,1,1)
28680 '地運を求める
28690 buf_chiunn=char_count(buf_Input_name$(0))
28700 endif
28710 case 5:
28720 '1.姓２，名３
28730 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28740 buf_Input_name$(0)=Mid$(name2$,1,1)
28750 buf_Input_name$(1)=Mid$(name2$,2,1)
28760 buf_Input_name$(2)=Mid$(name2$,3,1)
28770 '地運を求める
28780 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28790 endif
28800 '2.姓３，名２
28810 if buf_male_name1=3 and buf_male_name2=2 then
28820 buf_Input_name$(0)=Mid$(name2$,1,1)
28830 buf_Input_name$(1)=Mid$(name2$,2,1)
28840 '地運を求める
28850 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28860 endif
28870 '3.姓４、名１
28880 buf_Input_name$(0)=Mid$(name2$,1,1)
28890 '地運を求める
28900 buf_chiunn = char_count(buf_Input_name$(0))
28910 case 6:
28920 '1.姓３，名３
28930 if buf_male_name1=3 and buf_male_name2=3 then
28940 buf_Input_name$(0)=Mid$(name2$,1,1)
28950 buf_Input_name$(1)=Mid$(name2$,2,1)
28960 buf_Input_name$(2)=Mid$(name2$,3,1)
28970 '地運を求める
28980 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28990 endif
29000 '２.姓４，名２
29010 if buf_male_name1=4 and buf_male_name2=2 then
29020 buf_Input_name$(0)=Mid$(name2$,1,1)
29030 buf_Input_name$(1)=Mid$(name2$,2,1)
29040 '地運を求める
29050 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29060 endif
29070 case else:
29080 end select
29090 '2.女性　外運を求める
29100 select case buf_female_count
29110 '姓と名の合計数
29120 case 2:
29130 buf_Input_name2$(0)=Mid$(name3$,1,1)
29140 buf_Input_name2$(1)=Mid$(name4$,1,1)
29150 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29160 case 3:
29170 if buf_female_name1=2 and buf_female_name2=1 then
29180 buf_Input_name2$(0)=Mid$(name3$,1,1)
29190 buf_Input_name2$(1)=Mid$(name3$,2,1)
29200 buf_Input_name2$(2)=Mid$(name4$,1,1)
29210 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29220 endif
29230 if buf_female_name1=1 and buf_female_name2=2 then
29240 buf_Input_name2$(0)=Mid$(name3$,1,1)
29250 buf_Input_name2$(1)=Mid$(name4$,1,1)
29260 buf_Input_name2$(2)=Mid$(name4$,2,1)
29270 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29280 endif
29290 case 4:
29300 '姓１、名３
29310 if buf_female_name1=1 and buf_female_name2=3 then
29320 buf_Input_name2$(0)=Mid$(name3$,1,1)
29330 buf_Input_name2$(1)=Mid$(name4$,1,1)
29340 buf_Input_name2$(2)=Mid$(name4$,2,1)
29350 buf_Input_name2$(3)=Mid$(name4$,3,1)
29360 '外運を求める
29370 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29380 endif
29390 '姓２,名２
29400 if buf_female_name1=2 and buf_female_name2=2 then
29410 buf_Input_name2$(0)=Mid$(name3$,1,1)
29420 buf_Input_name2$(1)=Mid$(name3$,2,1)
29430 buf_Input_name2$(2)=Mid$(name4$,1,1)
29440 buf_Input_name2$(3)=Mid$(name4$,2,1)
29450 '外運を求める
29460 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29470 endif
29480 '姓３，名１
29490 if buf_female_name1=3 and buf_female_name2=1 then
29500 buf_Input_name2$(0)=Mid$(name3$,1,1)
29510 buf_Input_name2$(1)=Mid$(name3$,2,1)
29520 buf_Input_name2$(2)=Mid$(name3$,3,1)
29530 buf_Input_name2$(3)=Mid$(name4$,1,1)
29540 '外運を求める
29550 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29560 endif
29570 case 5:
29580 '姓 3,名2
29590 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29600 buf_Input_name2$(0)=Mid$(name3$,1,1)
29610 buf_Input_name2$(1)=Mid$(name3$,2,1)
29620 buf_Input_name2$(2)=Mid$(name3$,3,1)
29630 buf_Input_name2$(3)=Mid$(name4$,1,1)
29640 buf_Input_name2$(4)=Mid$(name4$,2,1)
29650 '外運を求める
29660 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29670 endif
29680 '姓４、名１
29690 if buf_female_name1=4 and buf_female_name2=1 then
29700 buf_Input_name2$(0)=Mid$(name3$,1,1)
29710 buf_Input_name2$(1)=Mid$(name3$,2,1)
29720 buf_Input_name2$(2)=Mid$(name3$,3,1)
29730 buf_Input_name2$(3)=Mid$(name3$,4,1)
29740 buf_Input_name2$(4)=Mid$(name4$,1,1)
29750 '外運を求める
29760 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29770 endif
29780 '姓２、名３
29790 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29800 buf_Input_name2$(0)=Mid$(name3$,1,1)
29810 buf_Input_name2$(1)=Mid$(name3$,2,1)
29820 buf_Input_name2$(2)=Mid$(name4$,1,1)
29830 buf_Input_name2$(3)=Mid$(name4$,2,1)
29840 buf_Input_name2$(4)=Mid$(name4$,3,1)
29850 '外運を求める
29860 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29870 endif
29880 case 6:
29890 '1.姓３，名３
29900 if buf_female_name1=3 and buf_female_name2=3 then
29910 buf_Input_name2$(0)=Mid$(name3$,1,1)
29920 buf_Input_name2$(1)=Mid$(name3$,2,1)
29930 buf_Input_name2$(2)=Mid$(name3$,3,1)
29940 buf_Input_name2$(3)=Mid$(name4$,1,1)
29950 buf_Input_name2$(4)=Mid$(name4$,2,1)
29960 buf_Input_name2$(5)=Mid$(name4$,3,1)
29970 '外運を求める
29980 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
29990 endif
30000 '2.姓４，名２
30010 if buf_female_name1=4 and buf_female_name2=2 then
30020 buf_Input_name2$(0)=Mid$(name3$,1,1)
30030 buf_Input_name2$(1)=Mid$(name3$,2,1)
30040 buf_Input_name2$(2)=Mid$(name3$,3,1)
30050 buf_Input_name2$(3)=Mid$(name3$,4,1)
30060 buf_Input_name2$(4)=Mid$(name4$,1,1)
30070 buf_Input_name2$(5)=Mid$(name4$,2,1)
30080 '外運を求める
30090 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
30100 endif
30110 case 7:
30120 '1姓４，名３
30130 '外運を求める
30140 end select
30150 func buf_number(a)
30160 if a < 10 then
30170 buf_tansu = a
30180 endif
30190 if a > 9 and a < 20 then
30200 buf_tansu = a - 10
30210 endif
30220 if a > 19 and a < 30 then
30230 buf_tansu = a - 20
30240 endif
30250 buffer = buf_tansu
30260 endfunc buffer
30270 check$="No Data"
30280 func Aisyou_type$(man,woman)
30290 Result$="No data"
30300 'check$="No data"
30310 '1.理解し合える最良のカップル
30320 '1のFor文
30330 for i=0 to 19
30340 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30350 Result$ = "1.理解し合える最良のカップル"
30360 check$="○"
30370 ResultNo = 0
30380 endif
30390 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30400 Result$="2.互いに自然体でつきあえるカップル"
30410 ResultNo=1
30420 check$="○"
30430 endif
30440 '3.男性にとって居心地の良いカップル
30450 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30460 Result$="3.男性にとって居心地の良いカップル"
30470 ResultNo=2
30480 check$="△"
30490 endif
30500 '4.女性にとって居心地の良いカップル
30510 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30520 Result$ = "4.女性にとって居心地の良いカップル"
30530 ResultNo=3
30540 check$="△"
30550 endif
30560 '5.恋愛経験を重ねた後なら愛を育める
30570 if buf_short_of_experience1(i) = man AND buf_short_of_experience2(i) = woman then
30580 Result$="5.恋愛経験を重ねた後なら愛を育める"
30590 ResultNo=4
30600 check$="×"
30610 endif
30620 '6
30630 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30640 Result$="6.結婚への発展が困難なカップル"
30650 check$="×"
30660 endif
30670 '7
30680 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30690 Result$="7.愛し方にずれが出てくる二人"
30700 check$="×"
30710 endif
30720 '8
30730 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30740 Result$="8.互いに価値観が噛み合わない相性"
30750 check$="×"
30760 endif
30770 next i
30780 endfunc  Result$
30790 Anzai_Aishou_Check:
30800 cls 3:init"kb:2":bg=0
30810 buf_t_chiunn = buf_number(buf_chiunn)
30820 buf_t_gaiunn=buf_number(buf_gaiunn)
30830 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30840 'グラフィック描画領域　ここから
30850 'Title欄
30860 line(0,0)-(1080,60),rgb(0,0,255),bf
30870 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
30880 '結果表示欄
30890 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
30900 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
30910 'ボタン選択欄
30920 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
30930 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
30940 'グラフィック描画領域　ここまで
30950 'ここから削除　↓
30960 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
30970 'ここまで削除　↑
30980 color rgb(255,255,255):font 40:init"kb:4"
30990 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31000 color rgb(255,0,255)
31010 print "男性の名前:";name$+name2$;chr$(13)
31020 print "地運の単数";buf_t_chiunn;chr$(13)
31030 print "女性の名前:";name3$+name4$;chr$(13)
31040 print "外運の単数";buf_t_gaiunn;chr$(13)
31050 print"二人の相性:";bufferAisyou$;chr$(13)
31060 print"相性判定:";check$;chr$(13)
31070 color rgb(0,0,0)
31080 print "エンターキー:トップ" + chr$(13)
31090 while (bg <> 2)
31100 bg=strig(1)
31110 pause 2.50*100
31120 wend
31130 if (bg=2) then goto Main_Screen1:
31140 '改名チェック
31150 'グラフィック描画領域 ここから
31160 Anzai_Kaimei_Check:
31170 cls 3:init "kb:2":talk ""
31180 line (0,0)-(1080,60),rgb(0,0,255),bf
31190 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
31200 line (0,60)-(1080,370+50),rgb(127,255,212),bf
31210 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
31220 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
31230 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
31240 'グラフィック描画領域 ここまで
31250 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31260 color rgb(255,255,255)
31270 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31280 color rgb(255,0,255)
31290 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31300 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31310 print "10文字までで入れてください"
31320 locate 0,9
31330 color rgb(0,0,0)
31340 Input "名前:",name$
31350 '計算領域　ここから
31360 '名前から総運を計算
31370 '1.名前の文字数を出す
31380 n=len(name$)
31390 if n > 10 or n=0 then
31400 '文字数が10個までという表示
31410 'トーストで表示
31420 if n > 10 then
31430 ui_msg "文字は10個までです"
31440 else
31450 ui_msg "文字が空っぽです"
31460 endif
31470 goto Anzai_Aishou_Check:
31480 endif
31490 'それ以外
31500 '総数を出す処理を出す
31510 '画面消去　データー初期化
31520 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31530 'グラフィック描画領域 ここから
31540 line(0,0)-(1080,60),rgb(0,0,255),bf
31550 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31560 line(0,60)-(1080,300),rgb(127,255,212),bf
31570 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
31580 line(0,300)-(1080,440),rgb(0,255,0),bf
31590 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
31600 'グラフィック描画領域 ここまで
31610 color rgb(255,255,255)
31620 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31630 for i=0 to len(name$)-1
31640 buf_Input_name$(i)=Mid$(name$,i+1,1)
31650 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31660 next i
31670 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31680 color rgb(255,0,255)
31690 print "名前:";name$
31700 print "この名前の総数:";bufer_total
31710 print "この名前の吉凶:";buf_Kikkyo$;"です"
31720 color rgb(255,0,255)
31730 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31740 print bufer_total$+chr$(13)
31750 color rgb(0,0,0)
31760 locate 0,7
31770 print"エンターキーを押してください"
31780 while (key$ <> chr$(13) and bg <> 2)
31790 key$=inkey$
31800 bg=strig(1)
31810 pause 2.50*100
31820 wend
31830 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
31840 '改名チェック関数
31850 func Kaimei_check$(r$)
31860 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
31870 '改名の必要なし
31880 talk"この名前は改名の必要がございません。"
31890 print"この名前は、改名の必要はありません"+chr$(13)
31900 '改名の必要ナシの場合
31910 K=0
31920 buffer_K=K
31930 else
31940 '改名の必要あり
31950 Kaimei_check:
31960 talk"この名前は、改名の必要があります"
31970 print"この名前は、改名の必要があります"+chr$(13)
31980 color rgb(0,0,0)
31990 print"改名しますか？"
32000 K=1
32010 buffer_K=K
32020 '◎表示パターン
32030 'パターン１
32040 endif
32050 endfunc result$
32060 'ui_msg="1件追加しました,残り9件追加できます"
32070 'ファイルの存在確認 設定ファイル:mydata.dat
32080 cls
32090 '設定ファイルの確認
32100 if dir$("config/Parsonal_data/mydata.dat")="" then
32110 '1.ファイルがない時
32120 goto Kaimei_check:
32130 else
32140 'ファイルがある時
32150 goto sex_type_female:
32160 endif
32170 '1-1.ファイルがない時の処理
32180 '1-1.自分の姓名判断を入力
32190 'グラフィック描画領域 ここから
32200 cls 3
32210 '1行目
32220 line(0,0)-(1080,60),rgb(0,0,250),bf
32230 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
32240 '2行目
32250 line(0,60)-(1080,80),rgb(127,255,212),bf
32260 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
32270 '3行目
32280 line(0,80)-(1080,120),rgb(0,255,0),bf
32290 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
32300 'グラフィック描画領域 ここまで
32310 '1.名前の姓の入力
32320 '1行目 Title
32330 color rgb(255,255,255)
32340 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32350 '2行目 名前の姓を入力
32360 color rgb(255,0,255)
32370 print "自分の名前の姓を入れてください"+chr$(13)
32380 color rgb(0,0,0)
32390 'buf_name1$:自分の名前の姓
32400 Input"名前の姓:",buf_name1$
32410 '2.名前の名の入力
32420 '画面消去
32430 Anzai_myProfile2:
32440 cls
32450 '1行目 Title
32460 color rgb(255,255,255)
32470 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32480 '2行目 名前の名の入力
32490 color rgb(255,0,255)
32500 print "自分の名前の名を入れてください"+chr$(13)
32510 color rgb(0,0,0)
32520 'buf_name2$:自分の名前の名
32530 input "名前の名:",buf_name2$
32540 '3.性別入力
32550 cls
32560 '1行目 Title
32570 color rgb(255,255,255)
32580 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32590 '2行目 性別入力
32600 color rgb(255,0,255)
32610 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
32620 sex_type$(0)="女性"
32630 sex_type$(1)="男性"
32640 type=ui_select("sex_type$","性別を選んでください")
32650 '3行目
32660 '性別変数 sex_type$
32670 if type = 1 then
32680 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 33440
32690 else
32700 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
32710 endif
32720 if sex_type$="男性" then
32730 name$=buf_name1$
32740 name2$=buf_name2$
32750 s=1
32760 goto Anzai_Aishou_Top1:
32770 endif
32780 sex_type_female:
32790 If sex_type$="女性" then
32800 name3$=buf_name1$
32810 name4$=buf_name2$
32820 s=2
32830 goto Anzai_Aishou_Top2:
32840 endif
32850 '登録プロフィール確認画面
32860 Entry_Profile:
32870 cls 3:talk ""
32880 'グラフィック描画領域　ここから
32890 '1行目
32900 line(0,0)-(1200,60),rgb(0,0,255),bf
32910 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
32920 '2行目
32930 line(0,60)-(1200,360),rgb(127,255,212),bf
32940 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
32950 '3行目
32960 line(0,100)-(1200,420),rgb(0,255,0),bf
32970 pen 5:line(0,97)-(1197,417)
32980 if s2=2 then goto Entry_Profile:
32990 'グラフィック描画領域　ここまで
33000 '1行目 Title
33010 color rgb(255,255,255)
33020 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33030 color rgb(255,0,255)
33040 print"名前:";buf_name1$+buf_name2$;chr$(13)
33050 PRINT"性別:";sex_type$;chr$(13)
33060 if sex_type$="女性" then
33070 print"外運:";buf_gaiunn;chr$(13)
33080 buffer$="外運:"+str$(buf_gaiunn)
33090 endif
33100 if sex_type$="男性" then
33110 print"地運:";buf_chiunn;chr$(13)
33120 buffer$="地運:"+str$(buf_chiunn)
33130 endif
33140 color rgb(0,0,0)
33150 input"(登録する:Yes/登録しない:No):",key$
33160 if key$="Yes" or key$="yes" then
33170 open "config/Parsonal_data/mydata.dat" for output as #1
33180 print #1,"名前:";buf_name1$+buf_name2$
33190 print #1,"性別:";sex_type$
33200 print #1,buffer$
33210 close #1
33220 ui_msg"データーを保存しました"
33230 goto Main_Screen1:
33240 endif
33250 '２．設定ファイルが存在する場合
33260 'ファイル読み込み 自分のデーターを表示
33270 cls
33280 open "Config/Parsonal_data/mydata.dat" for input as #2
33290 line input #2,a$
33300 line input #2,b$
33310 line input #2,c$
33320 close #2
33330 buffername$=a$
33340 buffername2$=b$
33350 buffername3$=c$
33360 bufff$=Mid$(buffername$,1,3)
33370 buff2$=Mid$(buffername2$,1,3)
33380 buff3$=Mid$(buffername3$,1,3)
33390 n=len(a$)
33400 sextype$=Mid$(buffername2$,4,2)
33410 if sextype$="男性" then
33420 '男性:s2
33430 s2=1
33440 '女性のデーター入力
33450 goto Anzai_Top:
33460 endif
33470 if sextype$="女性" then
33480 s2=2
33490 '男性のデーター入力
33500 goto Anzai_Top:
33510 endif
33520 '女性のデーター結果表示
33530 '1.プロフィール性別男性の場合 ここから
33540 Result_Anzai_Aisyou:
33550 cls:talk ""
33560 color rgb(255,255,255)
33570 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
33580 name_length = len(bufername$)
33590 myname$ = Mid$(buffername$,4,4)
33600 chiunn = val(Mid$(buffername3$,4,2))
33610 tansuu1 = buf_number(chiunn)
33620 bufname$ = name3$ + name4$
33630 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33640 color rgb(255,0,255)
33650 print "自分の名前(男性):";myname$;chr$(13)
33660 print "地運の端数:";tansuu1;chr$(13)
33670 print "相手の名前(女性):";bufname$;chr$(13)
33680 print "外運の端数:";buf_t_gaiunn;chr$(13)
33690 print "二人の相性:";bufferAisyou$;chr$(13)
33700 talk "二人の相性は" + bufferAisyou$
33710 color rgb(0,0,0)
33720 print"エンターキーを押してください"
33730 key$=Input$(1)
33740 'トップ画面に行く
33750 if key$ = chr$(13) then goto Main_Screen1:
33760 '1.プロフィール性別男性の場合　ここまで
33770 '2.プロフィール性別女性の場合　ここから
33780 cls 3
33790 '描画領域　ここから
33800 line (0,0)-(1080,60),rgb(0,0,255),bf
33810 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
33820 line (0,60)-(1080,460),rgb(127,255,212),bf
33830 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
33840 LINE (0,460)-(1080,520),rgb(0,255,0),bf
33850 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
33860 '描画領域 ここまで
33870 color rgb(255,255,255)
33880 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
33890 '計算領域　ここから
33900 myname$ = Mid$(buffername$,4,4)
33910 gaiunn = val(Mid$(buffername3$,4,2))
33920 buf_t_gaiunn = buf_number(buf_gaiunn)
33930 buf_t_chiunn = buf_number(buf_chiunn)
33940 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
33950 bufname$ = name$ + name2$
33960 '計算領域 ここまで
33970 color rgb(255,0,255)
33980 print "自分の名前(女性):";myname$;chr$(13)
33990 print "外運の端数";buf_t_gaiunn;chr$(13)
34000 print "相手の名前(男性):";bufname$;chr$(13)
34010 print "地運の端数:";buf_t_chiunn;chr$(13)
34020 print "二人の相性:";bufferAisyou$;chr$(13)
34030 color rgb(0,0,0)
34040 print "エンターキーを押してください"
34050 key$ = Input$(1)
34060 if key$=chr$(13) then goto Main_Screen1:
34070 '2.プロフィール性別女性の場合　ここまで
34080 '取扱説明書
34090 '相性占い　トップメニュー ここから
34100 'グラフィック ここから
34110 Anzai_Aishou_Top_Menu:
34120 cls 3:talk ""
34130 '1行目
34140 line(0,0)-(1080,60),rgb(0,0,255),bf
34150 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34160 '2行目
34170 line(0,60)-(1080,380),rgb(127,255,212),bf
34180 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34190 '3行目
34200 line(0,360)-(1080,540),rgb(0,255,0),bf
34210 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34220 'グラフィック　ここまで
34230 color rgb(255,255,255)
34240 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34250 color rgb(255,0,255)
34260 print"1.男女の相性"+chr$(13)
34270 print"2.前の画面に戻る"+chr$(13)
34280 print"3.トップ画面に戻る"+chr$(13)
34290 color rgb(0,0,0)
34300 print"番号を選んでください:"+chr$(13)
34310 Input"番号:",key
34320 if key = 1 then goto Anzai_Aishou_Top1:
34330 if key = 2 then goto Anzai_Top:
34340 if key = 3 then goto Main_Screen1:
34350 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34360 'グラフィック領域　ここから
34370 Life_Tenki:
34380 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34390 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34400 line(0,60)-(1150,180),rgb(127,255,212),bf
34410 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34420 line(0,120)-(1150,200),rgb(0,255,0),bf
34430 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34440 'グラフィック領域　ここまで
34450 '誕生日入力　生まれた年
34460 color rgb(255,255,255)
34470 print"誕生日入力　生まれた年" + chr$(13)
34480 COLOR rgb(255,0,255)
34490 print"生まれた年を入れてください" + chr$(13)
34500 color rgb(0,0,0)
34510 Input"生まれた年:",year
34520 '誕生日入力 生まれた月
34530 cls
34540 color rgb(255,255,255)
34550 print"誕生日入力 生まれた月" + chr$(13)
34560 color rgb(255,0,255)
34570 print"生まれた月を入力してください" + chr$(13)
34580 color rgb(0,0,0)
34590 Input"生まれた月:",month
34600 '誕生日入力 生まれた日を入力
34610 cls
34620 color rgb(255,255,255)
34630 print"誕生日入力 生まれた日入力" + chr$(13)
34640 color rgb(255,0,255)
34650 print"生まれた日を入力してください" + chr$(13)
34660 color rgb(0,0,0)
34670 Input"生まれた日:",day
34680 '人生の転機を見る
34690 'グラフィック領域　ここから
34700 cls 3:talk ""
34710 line(0,0)-(1150,60),rgb(0,0,255),bf
34720 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34730 line(0,60)-(1150,470),rgb(127,255,212),bf
34740 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34750 line(0,470)-(1150,520),rgb(0,255,0),bf
34760 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
34770 'グラフィック描画領域  ここまで
34780 cls
34790 buffername$=bufname$ + bufname2$
34800 color rgb(255,255,255)
34810 print buffername$;"さんの人生の転機を見る1"+chr$(13)
34820 color rgb(255,0,255)
34830 buf_total2=buf_total-(fix(buf_total/10)*10)
34840 tenki1_year=year+buf_total2
34850 tenki2_year=year+buf_total2+5
34860 tenki3_year=year+buf_total2+5+5
34870 tenki4_year=year+buf_total2+5+5+5
34880 tenki1=buf_total2
34890 tenki2=buf_total2+5
34900 tenki3=buf_total2+5+5
34910 tenki4=buf_total2+5+5+5
34920 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
34930 print tenki1_year;"年";tenki1;"歳"+chr$(13)
34940 print tenki2_year;"年";tenki2;"歳"+chr$(13)
34950 print tenki3_year;"年";tenki3;"歳"+chr$(13)
34960 print tenki4_year;"年";tenki4;"歳"+chr$(13)
34970 color rgb(0,0,0)
34980 print"エンターキーを押してください"
34990 key$=Input$(1)
35000 if key$=chr$(13) then goto Life_Tenki:
35010 '2ページ目
35020 cls
35030 color rgb(255,255,255)
35040 print buffername$;"さんの人生の転機2"+chr$(13)
35050 color rgb(255,0,255)
35060 tenki5_year = tenki4_year + 5
35070 tenki6_year = tenki4_year + 5 + 5
35080 tenki7_year = tenki4_year + 5 + 5 + 5
35090 tenki8_year = tenki4_year + 5 + 5 + 5+5
35100 tenki5 = tenki4 + 5
35110 tenki6 = tenki4 + 5 + 5
35120 tenki7 = tenki4 + 5 + 5 + 5
35130 tenki8 = tenki4 + 5 + 5 + 5 + 5
35140 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35150 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35160 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35170 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35180 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35190 color rgb(0,0,0)
35200 print"エンターキーを押してください",key$
35210 key$=Input$(1)
35220 if key$ = chr$(13) then goto 35870
35230 '3ページ目
35240 cls
35250 color rgb(255,255,255)
35260 print buffername$;"さんの人生の転機3"+chr$(13)
35270 '計算部分
35280 tenki_year9=tenki8_year + 5
35290 tenki_year10=tenki8_year + 5 + 5
35300 tenki_year11=tenki8_year+5+5+5
35310 tenki_year12=tenki8_year+5+5+5+5
35320 tenki9=tenki8+5
35330 tenki10=tenki8+5+5
35340 tenki11=tenki8+5+5+5
35350 tenki12=tenki8+5+5+5+5
35360 color rgb(255,0,255)
35370 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35380 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35390 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35400 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35410 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35420 color rgb(0,0,0)
35430 print"エンターキーを押してください"
35440 key$=Input$(1)
35450 if key$=chr$(13) then goto 36100
35460 'グラフィック描画領域 ここから
35470 cls 3
35480 line(0,0)-(1150,60),rgb(0,0,255),bf
35490 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35500 line(0,60)-(1150,470),rgb(127,255,212),bf
35510 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35520 line(0,470)-(1150,850),rgb(0,255,0),bf
35530 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35540 'グラフィック描画領域 ここまで
35550 '4回目
35560 cls
35570 color rgb(255,255,255)
35580 print buffername$;"さんの人生の転機４"+chr$(13)
35590 color rgb(255,0,255)
35600 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
35610 '計算部分
35620 tenki_year13 = tenki_year12 + 5
35630 tenki_year14 = tenki_year12 + 5 + 5
35640 tenki_year15 = tenki_year12 + 5 + 5 + 5
35650 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35660 tenki13 = tenki12 + 5
35670 tenki14 = tenki12 + 5 + 5
35680 tenki15 = tenki12 + 5 + 5 + 5
35690 tenki16 = tenki12 + 5 + 5 + 5 + 5
35700 color rgb(255,0,255)
35710 print tenki_year13;"年";tenki13;"歳"+chr$(13)
35720 print tenki_year14;"年";tenki14;"歳"+chr$(13)
35730 print tenki_year15;"年";tenki15;"歳"+chr$(13)
35740 print tenki_year16;"年";tenki16;"歳"+chr$(13)
35750 color rgb(0,0,0)
35760 print"コマンドを入れてください"+chr$(13)
35770 print"q+エンターキー:トップ画面"+chr$(13)
35780 Print"エンターキー:次へ行く"+chr$(13)
35790 print"コマンド:"
35800 key$=Input$(1)
35810 if key$=chr$(13) then goto 36470
35820 IF key$="q" then goto 7820
35830 '
35840 cls
35850 color rgb(255,255,255)
35860 print buffername$;"さんの人生の転機5"+chr$(13)
35870 color rgb(255,0,255)
35880 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35890 tenki_year17=tenki_year16+5
35900 tenki_year18=tenki_year16+5+5
35910 tenki_year19=tenki_year16+5+5+5
35920 tenki_year20=tenki_year16+5+5+5+5
35930 tenki17=tenki16+5
35940 tenki18=tenki16+5+5
35950 tenki19=tenki16+5+5+5
35960 tenki20=tenki16+5+5+5+5
35970 print tenki_year17;"年";tenki17;"歳"+chr$(13)
35980 print tenki_year18;"年";tenki18;"歳"+chr$(13)
35990 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36000 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36010 color rgb(0,0,0)
36020 print"コマンドを入れてください"+chr$(13)
36030 print"トップに戻る:q+エンターキー"+chr$(13)
36040 print"最初から:エンターキー"+chr$(13)
36050 print"コマンド:"
36060 key$=Input$(1)
36070 if key$=chr$(13) then goto 35330
36080 if key$="q" then goto Main_Screen1:
36090 '改名チェック 改名候補を入力
36100 'グラフィック　領域　ここから
36110 '左側 部分
36120 cls 3:talk ""
36130 line(0,0)-(1100,60),rgb(0,0,255),bf
36140 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36150 line(0,60)-(1100,380),rgb(127,255,212),bf
36160 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36170 line(0,380)-(790,470),rgb(0,255,0),bf
36180 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36190 '中央の縦の線 ここから
36200 'line(1100,0)-(1112,370),rgb(0,0,0),b
36210 '中央の縦の線 ここまで
36220 '右側 部分
36230 line(1103,0)-(1700,60),rgb(0,0,255),bf
36240 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36250 'グラフィック 領域　ここまで
36260 '吉凶判定
36270 if buffer_K=0 then
36280 buffer_check$="○"
36290 else
36300 buffer_check$="☓"
36310 endif
36320 'Title 左側の文字
36330 'rgb(255,255,255):白
36340 color rgb(255,255,255)
36350 locate 1,0
36360 print"安斎流姓名判断 改名チェッカー"
36370 'Title 右側の文字
36380 locate size(2)-16,0
36390 print"改名候補リスト(3件まで)"
36400 '候補リストの名前部分 (右側)
36410 '1行目
36420 'locate 22,2
36430 locate size(2)-18,2
36440 color rgb(0,0,0)
36450 print "番号"
36460 'locate 26,2
36470 locate size(2)-14,2
36480 print"名前"
36490 'locate 32,2
36500 locate size(2)-8,2
36510 print"吉凶"
36520 'locate 36,2
36530 locate size(2)-4,2
36540 print"判定"
36550 '2行目
36560 select case kaimei_count
36570 case 0:
36580 'データー1件 の時
36590 kaimei_count = kaimei_count + 1
36600 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
36610 buffer_Kaimei$(0,1,0,0)=name$
36620 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36630 buffer_Kaimei$(0,0,0,1)=buffer_check$
36640 'cls
36650 color rgb(255,0,255)
36660 'locate 23,3
36670 locate size(2)-17,3
36680 print buffer_Kaimei$(1,0,0,0)
36690 'locate 25,3
36700 locate size(2)-15,3
36710 print buffer_Kaimei$(0,1,0,0)
36720 'locate 32,3
36730 locate size(2)-8,3
36740 print buffer_Kaimei$(0,0,1,0)
36750 locate size(2)-3,3
36760 print buffer_Kaimei$(0,0,0,1)
36770 case 1:
36780 'データー2件の時
36790 color rgb(255,0,255)
36800 kaimei_count = kaimei_count + 1
36810 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
36820 buffer_Kaimei$(0,2,0,0)=name$
36830 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
36840 buffer_Kaimei$(0,0,0,2)=buffer_check$
36850 'cls
36860 '1行目
36870 'locate 23,3
36880 locate size(2)-17,3
36890 print buffer_Kaimei$(1,0,0,0)
36900 'locate 25,3
36910 locate size(2)-15,3
36920 print buffer_Kaimei$(0,1,0,0)
36930 'locate 32,3
36940 locate size(2)-8,3
36950 print buffer_Kaimei$(0,0,1,0)
36960 'locate 37,3
36970 locate size(2)-3,3
36980 print buffer_Kaimei$(0,0,0,1)
36990 '2行目
37000 'locate 23,4
37010 locate size(2)-17,4
37020 print buffer_Kaimei$(2,0,0,0)
37030 'locate 25,4
37040 locate size(2)-15,4
37050 print buffer_Kaimei$(0,2,0,0)
37060 'locate 32,4
37070 locate size(2)-8,4
37080 print buffer_Kaimei$(0,0,2,0)
37090 'locate 37,4
37100 locate size(2)-3,4
37110 print buffer_Kaimei$(0,0,0,2)
37120 case 2:
37130 'データー3件の時
37140 '1
37150 color rgb(255,0,255)
37160 kaimei_count=kaimei_count+1
37170 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37180 buffer_Kaimei$(0,3,0,0)=name$
37190 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37200 buffer_Kaimei$(0,0,0,3)=buffer_check$
37210 '2  1行目
37220 'locate 23,3
37230 locate size(2)-17,3
37240 print buffer_Kaimei$(1,0,0,0)
37250 'locate 25,3
37260 locate size(2)-15,3
37270 print buffer_Kaimei$(0,1,0,0)
37280 'locate 32,3
37290 locate size(2)-8,3
37300 print buffer_Kaimei$(0,0,1,0)
37310 'locate 37,3
37320 locate size(2)-3,3
37330 print buffer_Kaimei$(0,0,0,1)
37340 '3  2行目
37350 'locate 23,4
37360 locate size(2)-17,4
37370 print buffer_Kaimei$(2,0,0,0)
37380 'locate 25,4
37390 locate size(2)-15,4
37400 print buffer_Kaimei$(0,2,0,0)
37410 'locate 32,4
37420 locate size(2)-8,4
37430 print buffer_Kaimei$(0,0,2,0)
37440 'locate 37,4
37450 locate size(2)-3,4
37460 print buffer_Kaimei$(0,0,0,2)
37470 '4  3行目
37480 'locate 23,5
37490 locate size(2)-17,5
37500 print buffer_Kaimei$(3,0,0,0)
37510 'locate 25,5
37520 locate size(2)-15,5
37530 print  buffer_Kaimei$(0,3,0,0)
37540 'locate 32,5
37550 locate size(2)-8,5
37560 print buffer_Kaimei$(0,0,3,0)
37570 'locate 37,5
37580 locate size(2)-3,5
37590 print buffer_Kaimei$(0,0,0,3)
37600 case 3:
37610 'データー4件の時
37620 '1
37630 '2
37640 '3
37650 '4
37660 '5
37670 end select
37680 '説明部分　左側
37690 locate 0,2
37700 color rgb(255,0,255)
37710 print"思いついた候補の名前"
37720 locate 0,4
37730 print"(ニックネーム　or 会社名)を"
37740 locate 0,6
37750 print"10文字以内で入力してください"
37760 color rgb(0,0,0)
37770 locate 0,8
37780 if kaimei_count = 1 or kaimei_count = 2 then
37790 Input"名前:",kouho_name$
37800 name$=kouho_name$
37810 n=len(name$)
37820 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 36750
37830 'else
37840 if n =< 10 then goto 31730
37850 endif
37860 if kaimei_count = 3 then
37870 Input"エンターキーを押してください",key$
37880 if key$ = "" then
37890 'データーを初期化して、トップ画面に行く
37900 '1.データーを初期化
37910 kaimei_count = 0
37920 for i=1 to 3
37930 buffer_Kaimei$(i,0,0,0) = ""
37940 buffer_Kaimei$(0,i,0,0) = ""
37950 buffer_Kaimei$(0,0,i,0) = ""
37960 buffer_Kaimei$(0,0,0,i) = ""
37970 next i
37980 '2.トップ画面に行く
37990 goto 7820
38000 endif
38010 endif
38020 '霊遺伝姓名学 ここから
38030 'グラフィック領域　ここから
38040 '性別入力
38050 Reiden_Top_Input_Sextype:
38060 cls 3:talk ""
38070 No=1:y=0:key$="":bg=0:init "kb:4"
38080 sp_on 1,1:sp_put 1,(10,200),1,0
38090 'Line1
38100 line (0,0)-(850,60),rgb(0,0,255),bf
38110 line (0,0)-(847,57),rgb(0,255,0),b
38120 'Line 2
38130 line (0,63)-(853,537),rgb(127,255,212),bf
38140 line (0,60)-(850,540),rgb(0,0,0),b
38150 'Line 3
38160 line (0,540)-(850,630),rgb(0,255,0),bf
38170 line (0,543)-(853,633),rgb(0,0,255),b
38180 'グラフィック領域　ここまで
38190 '音声表示
38200 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38210 '性別変数:sex_type=0
38220 '文字色： 白
38230 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38240 '文字色：赤
38250 color rgb(255,0,255)
38260 print"占う人の性別の番号を入れてください" + chr$(13)
38270 print" :1.女 性" + chr$(13)
38280 print" :2.男 性" + chr$(13)
38290 print" :3.前の画面に戻る" + chr$(13)
38300 locate 0,12
38310 color rgb(0,0,0)
38320 print "1.女性を選択しました"
38330 Reiden_Top_Input_Sextype2:
38340 y = 0:key$ = "":bg = 0
38350 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38360 key$=inkey$
38370 y=stick(1)
38380 bg=strig(1)
38390 pause 2.50*100
38400 wend
38410 if (key$=chr$(31) or y=1) then
38420 select case No
38430 case 1:
38440 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38450 case 2:
38460 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38470 case 3:
38480 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38490 end select
38500 endif
38510 if (key$ = chr$(30) or y = -1) then
38520 select case No
38530 case 1:
38540 No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38550 case 2:
38560 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
38570 case 3:
38580 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38590 end select
38600 endif
38610 if (bg=2 or key$=chr$(13)) then
38620 select case No
38630 case 1:
38640 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38650 case 2:
38660 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38670 case 3:
38680 sp_on 3,0:goto Main_Screen1:
38690 end select
38700 endif
38710 '描画領域　ここから
38720 ReiIden_Input_male:
38730 cls 3:init"kb:2":talk ""
38740 'Line 1 Title
38750 line (0,0)-(850,60),rgb(0,0,255),bf
38760 line (0,0)-(850,57),rgb(0,255,0),b
38770 'Line2 Input name
38780 line (0,60)-(850,300),rgb(0,255,0),bf
38790 line (0,60)-(850,303),rgb(0,0,255),b
38800 '描画領域 ここまで
38810 '文字色：白
38820 color rgb(255,255,255)
38830 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
38840 '文字色：黒
38850 color rgb(0,0,0)
38860 print "名前の姓の部分を入れてください" + chr$(13)
38870 Input"名前(姓の部分):",name1$
38880 '名の入力部分
38890 cls
38900 color rgb(255,255,255)
38910 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
38920 color rgb(0,0,0)
38930 print "名前の名の部分を入れてください"+chr$(13)
38940 Input"名前(名の部分):",name2$:goto check:
38950 '2.女性の場合　既婚か未婚か確認する
38960 '2-2-1女性の姓の入力
38970 'グラフィック領域　ここから
38980 ReiIden_Input_female:
38990 cls 3:init"kb:2":talk ""
39000 'Line1 Title
39010 line (0,0)-(850,60),rgb(0,0,255),bf
39020 line (0,0)-(850,57),rgb(0,255,0),b
39030 'Line 2 入力欄
39040 line (0,60)-(850,360),rgb(0,255,0),bf
39050 line (0,60)-(850,357),rgb(0,0,255),b
39060 'Line 2 入力欄(名前入力)
39070 'グラフィック領域 ここまで
39080 cls:init"kb:2"
39090 color rgb(255,255,255)
39100 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39110 color rgb(255,0,0)
39120 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39130 color rgb(0,0,0)
39140 print "名前の姓の部分を入れてください"+chr$(13)
39150 Input "名前(姓の部分):",name3$
39160 '2-2-2女性の名の入力
39170 cls:init"kb:2"
39180 color rgb(255,255,255)
39190 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39200 color rgb(0,0,0)
39210 print "名前の名の部分を入れてください"+chr$(13)
39220 Input "名前(名の部分):",name4$
39230 '計算領域　ここから
39240 check:
39250 '苗字の画数:buffer_name1_count
39260 'name1$,name2$:男性
39270 if sex_type = 1 then
39280 'sex_type=1 :女性のとき
39290 buf_male_female_name1$=name3$
39300 buf_male_female_name2$=name4$
39310 endif
39320 if sex_type = 2 then
39330 'sex_type=2 :男性のとき
39340 buf_male_female_name1$=name1$
39350 buf_male_female_name2$=name2$
39360 endif
39370 buffer_name1_count=len(buf_male_female_name1$)
39380 buffer_name2_count=len(buf_male_female_name2$)
39390 select case buffer_name1_count
39400 'AとBを求める
39410 case 1:
39420 '1.苗字の画数が1つのとき
39430 'A:霊数 1
39440 A=1
39450 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39460 B = char_count(buf_name1$)
39470 case 2:
39480 '2.苗字の画数が2つのとき
39490 '2-1:苗字の1文字目:buf_name1$
39500 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39510 '2-2:苗字の2文字目:buf_name2$
39520 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
39530 A=char_count(buf_name1$)
39540 B=char_count(buf_name2$)
39550 'B=char_count(buf_name2$)
39560 case 3:
39570 '3.苗字の画数が3つの時
39580 '3-1:苗字の1文字目:buf_name1$
39590 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39600 '3-2:苗字が3つのときの2つ目の文字をもとめる
39610 '3-2:苗字の2つ目:buf_name2$
39620 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39630 '3-3:苗字が3つのときの3文字目
39640 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39650 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39660 if buf_name2$="々" then
39670 A = char_count(buf_name1$) * 2
39680 B = char_count(buf_name3$)
39690 else
39700 A = char_count(buf_name1$) + char_count(buf_name2$)
39710 B = char_count(buf_name3$)
39720 endif
39730 '姓が4文字
39740 case 4:
39750 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39760 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39770 buf_name3$=Mid$(buf_male_female_name1$,3,1)
39780 buf_name4$=Mid$(buf_male_female_name1$,4,1)
39790 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
39800 B=char_count(buf_name4$)
39810 case else:
39820 end select
39830 '2.C,Dを求める
39840 select case buffer_name2_count
39850 case 1:
39860 '名が1文字の時
39870 'CとDを求める
39880 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39890 C = char_count(buff_name1$)
39900 'D=1:霊数
39910 D = 1
39920 case 2:
39930 '名が2文字の時
39940 'CとDを求める
39950 '名の1文字目:buff_name1$
39960 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39970 '名の2文字目:buff_name2$
39980 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
39990 C = char_count(buff_name1$)
40000 D = char_count(buff_name2$)
40010 case 3:
40020 '名が3文字の時
40030 'CとDを求める
40040 '名の1文字目:buff_name1$
40050 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40060 '名の2文字目:buff_name2$
40070 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40080 if buff_name2$ = "々" then
40090 buff_name2$ = buff_name1$
40100 endif
40110 '名の3文字目:buff_name3$
40120 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40130 C = char_count(buff_name1$)
40140 D = char_count(buff_name2$) + char_count(buff_name3$)
40150 end select
40160 '1.先祖運を求める
40170 buffer_Senzo = A + B
40180 '2.性格運を求める
40190 buffer_Seikaku = B + C
40200 '3.愛情運を求める
40210 buffer_Aijyou = C + D
40220 '4.行動運を求める
40230 buffer_Kouzou = A + D
40240 '1.生数を求める
40250 func buf_Seisu(buffer)
40260 if buffer < 10 then
40270 seisu=buffer
40280 endif
40290 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40300 seisu = 0
40310 endif
40320 if buffer > 10 then
40330 if buffer=20 then
40340 seisu = 0
40350 else
40360 n = buffer - (fix(buffer / 10) * 10)
40370 seisu = n
40380 endif
40390 endif
40400 endfunc seisu
40410 func buf_Wasu(buffer)
40420 buf_wasu = 0:wasu = 0
40430 if buffer < 10 then
40440 '
40450 wasu = buffer:goto wasu:
40460 else
40470 if buffer = 10 then
40480 wasu = 1:goto wasu:
40490 else
40500 if buffer > 10  then
40510 if buffer=19 or buffer=28 or buffer=37 then
40520 wasu=1:goto wasu:
40530 else
40540 if buffer = 29 then
40550 wasu=2:goto wasu:
40560 'endif
40570 else
40580 a = fix(buffer / 10)
40590 b = buffer - a * 10
40600 c = a + b
40610 if c = 19 or c=28 then
40620 wasu=1
40630 '
40640 else
40650 wasu=c
40660 endif
40670 endif
40680 endif
40690 endif
40700 endif
40710 if c < 10 then
40720 wasu = c
40730 'endif
40740 endif
40750 else
40760 if buffer=19 or buffer=28 then
40770 wasu = 1
40780 endif
40790 endif
40800 wasu:
40810 buf_wasu=wasu
40820 endfunc buf_wasu
40830 func buf_kyoudai$(buf_sex_type,buf_Sa$)
40840 select case buf_sex_type
40850 '1.女性の場合
40860 case 1:
40870 if (buf_Sa$ = "連続") then
40880 buffer_kyoudai$="長女"
40890 endif
40900 if (buf_Sa$ = "1差") then
40910 buffer_kyoudai$="次女"
40920 endif
40930 if (buf_Sa$ = "2差") then
40940 buffer_kyoudai$="三女"
40950 endif
40960 if (buf_Sa$ = "3差") then
40970 buffer_kyoudai$="四女"
40980 endif
40990 if (buf_Sa$ = "4差") then
41000 buffer_kyoudai$="五女"
41010 endif
41020 '男性の場合
41030 case 2:
41040 if (buf_Sa$ = "連続") then
41050 buffer_kyoudai$="長男"
41060 endif
41070 if (buf_Sa$ = "1差") then
41080 buffer_kyoudai$="次男"
41090 endif
41100 if (buf_Sa$ = "2差") then
41110 buffer_kyoudai$="三男"
41120 endif
41130 if (buf_Sa$ = "3差") then
41140 buffer_kyoudai$="四男"
41150 endif
41160 if (buf_Sa$ = "4差") then
41170 buffer_kyoudai$="五男"
41180 endif
41190 case else:
41200 end select
41210 kyoudai$=buffer_kyoudai$
41220 endfunc kyoudai$
41230 '1.タテ型
41240 '1.同じ数字が2組ある場合
41250 func Tate_gata$()
41260 if Senzo_wasu = Seikaku_wasu  then
41270 if Aijyou_wasu - Seikaku_wasu > 1 then
41280 Spirit_type$="タテ型"
41290 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41300 Sa$ = str$(Sa_count) + "差"
41310 else
41320 Spirit_type$="タテ型"
41330 Sa$="連続"
41340 endif
41350 endif
41360 endfunc
41370 '2. ナナメ型
41380 '同じ数字が2組ある場合
41390 func Naname_gata$()
41400 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
41410 Spirit_type$="斜め型"
41420 endif
41430 if Seikaku_wasu - Senzo_wasu > 1 then
41440 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
41450 Sa$=str$(Sa_count)+" 差"
41460 else
41470 Sa$="連続"
41480 endif
41490 endfunc
41500 '3.表十字型
41510 '同じ数字が2組ある場合
41520 func Omote_jyuji_gata1$()
41530 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
41540 Spirit_type$ = "表十字型"
41550 endif
41560 if Senzo _wasu - Seikaku_wasu > 1 then
41570 Sa_count = Senzo_wasu - Seikaku_wasu - 1
41580 else
41590 if Senzo_wasu  -  Seikaku_wasu = 1  then
41600 Sa$="連続"
41610 endif
41620 endif
41630 endfunc
41640 '3-1.表十字型(ヨコ系)
41650 func Omote_jyuji_gata_yoko$()
41660 endfunc
41670 '3-2.表十字型(上下型)
41680 func Omote_jyuji_gata_jyouge()
41690 endfunc
41700 '4.ヨコ型
41710 func Yoko_gata$()
41720 endfunc
41730 '5.上下型
41740 func Jyouge_gata$()
41750 endfunc
41760 '6.1.中広型(タテ系)
41770 func Nakahiro_Tate$()
41780 endfunc
41790 '6.2中広型(ナナメ系)
41800 func Nakahiro_Naname$()
41810 endfunc
41820 '6.3中広型(表十字型)
41830 func Nakahiro_Omotejyuji$()
41840 endfunc
41850 '7.1.中一差(タテ系)
41860 func Chuissa_Tate$()
41870 endfunc
41880 '7.2中一差(ナナメ系)
41890 func Chuissa_Naname$()
41900 endfunc
41910 '8.1.中二差(タテ系)
41920 func Chunissa_Tate$()
41930 endfunc
41940 '8.2.中二差(ナナメ系)
41950 '9.1.順序型(タテ上下系)
41960 func Chunissa_Tate_jyouge$()
41970 endfunc
41980 '9.2.順序型(タテ、ヨコ系)
41990 func Jyunjyo_Tate_yoko$()
42000 endfunc
42010 '9.3.順序型(ナナメ、上下系)
42020 func Jyunjyo_Naname_jyouge$()
42030 endfunc
42040 '9.4.順序型(ナナメ、ヨコ系)
42050 '10.1.中順序型(ヨコ系)
42060 func Nakajyunjyo_yoko$()
42070 endfunc
42080 '10.2.中順序型(上下系)
42090 func Nakajyunjyo_jyouge$()
42100 endfunc
42110 '11.1.隔離型(タテ、上下系)
42120 func Kakuri_tate_jyouge$()
42130 endfunc
42140 '11.2.隔離型(タテ、ヨコ系)
42150 func Kakuri_tate_yoko$()
42160 endfunc
42170 '11.3.隔離型(ナナメ、上下系)
42180 func Kakuri_Naname_jyouge$()
42190 endfunc
42200 '11.4.隔離型(ナナメ、ヨコ系)
42210 func Kakuri_Naname_yoko$()
42220 endfunc
42230 '11.5.隔離型(タテ系)
42240 func Kakuri_tate$()
42250 endfunc
42260 '11.6.隔離型(ナナメ系)
42270 func Kakuri_naname$()
42280 endfunc
42290 '11.7.隔離型(上下、ヨコ系)
42300 func Kakuri_Jyouge_yoko$()
42310 endfunc
42320 Spirit_type$="No data"
42330 '1.先祖運　和数
42340 Senzo_wasu = buf_Wasu(buffer_Senzo)
42350 '2.先祖運 生数
42360 Senzo_seisu = buf_Seisu(buffer_Senzo)
42370 '3.性格運 和数
42380 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
42390 '4.性格運 生数
42400 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
42410 '5.愛情運 和数
42420 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
42430 '6.愛情運 生数
42440 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
42450 '7.行動運 和数
42460 Koudou_wasu = buf_Wasu(buffer_Kouzou)
42470 '8.行動運 生数
42480 Koudou_seisu = buf_Seisu(buffer_Kouzou)
42490 '計算領域 ここまで
42500 '描画領域　ここから
42510 Result_ReiIden1:
42520 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
42530 'Title
42540 line (0,0)-(850,60),rgb(0,0,255),bf
42550 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
42560 'name
42570 line (0,60)-(850,165),rgb(0,255,0),bf
42580 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
42590 '生数、和数
42600 line (0,165)-(850,550),rgb(125,255,212),bf
42610 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
42620 'プッシュメッセージ
42630 line (0,550)-(850,650),rgb(0,255,0),bf
42640 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
42650 '描画領域　ここまで
42660 color rgb(255,255,255)
42670 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
42680 color rgb(0,0,0)
42690 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
42700 color rgb(255,0,255)
42710 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
42720 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
42730 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
42740 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
42750 talk "診断結果１です、あなたのわすうとせいすうです。"
42760 color rgb(0,0,0)
42770 print"エンターキーを押してください"
42780 while (bg <> 2 and key$ <> chr$(13))
42790 key$=inkey$
42800 bg=strig(1)
42810 pause 2.50*100
42820 wend
42830 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
42840 '描画領域　ここから
42850 Result_ReiIden2:
42860 cls 3:init"kb:4"
42870 'Title Color:青
42880 line (0,0)-(860,60),rgb(0,0,255),bf
42890 'Title 枠
42900 line (0,0)-(860,57),rgb(255,0,255),b
42910 'Message
42920 line (0,60)-(860,650),rgb(127,255,212),bf
42930 'Message 枠
42940 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
42950 '
42960 '描画領域　ここまで
42970 color rgb(255,255,255)
42980 print "霊遺伝姓名 診断結果2/3" + chr$(13)
42990 '十二運の基礎運
43000 '1.四大主流型
43010 'パターン１ 同じ数字の場合
43020 '1.オール同数化 全部同じ
43030 '1-if
43040 sa_count=0
43050 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43060 Spirit_type$ = "オール同数化"
43070 Sa$="3差"
43080 else
43090 'パターン１ 同じ数字2つの場合
43100 '2.タテ型
43110 '数字が２つ同じ
43120 '2-if
43130 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43140 Spirit_type$ = "タテ型"
43150 '2.タテ型　1
43160 if Koudou_wasu - Senzo_wasu = 1 then
43170 Sa$="連続"
43180 else
43190 '2.タテ型　2
43200 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43210 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43220 Sa$=str$(Sa_count) + "差"
43230 endif
43240 endif
43250 endif
43260 endif
43270 '2.タテ型　3
43280 '1.type
43290 'Spirit_type$ = "四大主流型 タテ型"
43300 '3.斜め型
43310 '数字が２つ同じ
43320 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
43330 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
43340 Sa$="連続"
43350 else
43360 '先祖＝行動　性格運=愛情運
43370 '3-if
43380 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
43390 Spirit_type$="斜め型"
43400 '3.斜め型 1
43410 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
43420 Sa$ = "連続"
43430 else
43440 if (Seikaku_wasu - Koudou_wasu) < 1 then
43450 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
43460 endif
43470 endif
43480 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
43490 Sa_count = 3
43500 Sa$ = str$(Sa_count - 1) + "差"
43510 else
43520 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
43530 Sa_count = Senzo_wasu - Seikaku_wasu
43540 Sa$ = str$(Sa_count-1) + "差"
43550 endif
43560 endif
43570 endif
43580 '3-if
43590 endif
43600 '3.斜め型 2
43610 '3.斜め型 3
43620 '数字が２つ同じ
43630 '表十字型
43640 '先祖運＝愛情運　　行動運＝性格運
43650 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43660 Spirit_type$="表十字型"
43670 Sa_coun = Senzo_wasu - Seikaku_wasu
43680 if Sa_count > 1 then
43690 Sa$ = str$(Sa_count) + "差"
43700 else
43710 if Sa_count = 1 then
43720 Sa$ = "連続"
43730 endif
43740 endif
43750 endif
43760 'endif
43770 '数字が２つ同じ
43780 '表十字型(横型)
43790 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
43800 Spirit_type$="表十字型(ヨコ型)"
43810 'Sa$を後で書く
43820 endif
43830 '数字が２つ同じ
43840 '表十字型(上下型)
43850 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
43860 Spirit_type$="表十字型(上下型)"
43870 'Sa$を後で書く
43880 endif
43890 'ヨコ型
43900 if Koudou_wasu = Seikaku_wasu then
43910 n=abs(Senzo_wasu - Seikaku_wasu)
43920 n2 = abs(Aijyou_wasu-Seikaku_wasu)
43930 Spirit_type$="ヨコ型"
43940 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
43950 Sa$="連続"
43960 endif
43970 if n = n2 then
43980 if n > 1 then
43990 Sa_count = n - 1
44000 Sa$=str$(Sa_count)+"差"
44010 else
44020 Sa_Count = abs(n - n2)
44030 if Sa_Count > 1 then
44040 Sa$ = str$(Sa_Count) + "差"
44050 endif
44060 endif
44070 endif
44080 endif
44090 '上下型
44100 '同じ数字が1組みある場合
44110 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44120 Spirit_type$ = "上下型"
44130 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44140 Sa$="連続"
44150 endif
44160 endif
44170 '連続した数字が2組みある場合
44180 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
44190 Spirit_type$="中広（なかこう)型(表十字型)"
44200 n=Min(Koudou_wasu , Seikaku_wasu)
44210 n2=Max(Aijyou_wasu , Senzo_wasu)
44220 Sa_count = n - n2
44230 if Sa_count > 1 then
44240 Sa$ = str$(Sa_count - 1) + "差"
44250 else
44260 if Sa_count = 1 then
44270 Sa$ = "連続"
44280 endif
44290 endif
44300 endif
44310 '中一差（タテ系)
44320 '連続した数字が2組みある場合
44330 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
44340 'Spirit_type$="中一差（タテ系)"
44350 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
44360 n = Max(Koudou_wasu,Aijyou_wasu)
44370 n2 = Max(Senzo_wasu,Seikaku_wasu)
44380 else
44390 n = Max(Koudou_wasu,Aijyou_wasu)
44400 n2 = Min(Senzo_wasu,Seikaku_wasu)
44410 endif
44420 Sa_count2 = abs(n2 - n) - 1
44430 if Sa_count2 >= 0 then
44440 select case Sa_count2
44450 case 1:
44460 '中一差（タテ系)
44470 Sa$ = "連続"
44480 Spirit_type$="中一差型（タテ系)*"
44490 case 2:
44500 '中二差型（タテ系)
44510 Sa$ = "1差"
44520 Spirit_type$="中二差型（タテ系)"
44530 case 3:
44540 '中広（なかこう)型(タテ系)
44550 Sa$ = "2差"
44560 Spirit_type$="中三差型（タテ系)"
44570 case 4:
44580 Sa$ = "3差"
44590 Spirit_type$="中広型(タテ系)"
44600 case  else:
44610 cls 3:print"例外に入りました"
44620 end select
44630 '
44640 else
44650 cls 3:print"例外に入りました"
44660 endif
44670 endif
44680 'endif
44690 '中一差（斜め系)
44700 '連続した数字が2組みある場合
44710 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
44720 n = Min(Koudou_wasu,Senzo_wasu)
44730 n2 = Max(Aijyou_wasu,Seikaku_wasu)
44740 Sa_count = n - n2 - 1
44750 select case Sa_count
44760 case 1:
44770 '中一差（斜め系)
44780 '連続した数字が2組みある場合
44790 Sa$="1差"
44800 Spirit_type$="中一差（斜め系)"
44810 case 2:
44820 '中二差（斜め系)
44830 '連続した数字が2組みある場合
44840 Sa$="2差"
44850 Spirit_type$="中二差（斜め系)"
44860 case 3:
44870 Sa$="3差"
44880 Spirit_type$="中広型（斜め系）"
44890 case else:
44900 end select
44910 endif
44920 '順序型(タテ、上下系)
44930 '数字が４つ連続してる場合
44940 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
44950 Spirit_type$="順序型(タテ、上下系)"
44960 Sa$="連続"
44970 endif
44980 '中順序型(ヨコ系)
44990 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45000 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45010 Spirit_type$="中順序型(ヨコ系)"
45020 Sa$="1差"
45030 else
45040 '順序型(タテ、ヨコ系)
45050 '数字が４つ連続してる場合
45060 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45070 Spirit_type$="順序型(タテ、ヨコ系)"
45080 Sa$="連続"
45090 endif
45100 endif
45110 endif
45120 '中順序型(上下系)
45130 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
45140 n=Max(Senzo_wasu,Aijyou_wasu)
45150 n2=Min(Koudou_wasu,Seikaku_wasu)
45160 Sa_count = n2 - n
45170 if Sa_count > 1 then
45180 Spirit_type$="中順序型(上下系)"
45190 Sa$ = Str$(Sa_count) + "差"
45200 else
45210 '順序型(斜め、上下系)
45220 '数字が４つ連続してる場合
45230 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
45240 Spirit_type$ = "順序型(斜め、上下系)"
45250 Sa$="連続"
45260 endif
45270 endif
45280 endif
45290 '順序型(斜め、ヨコ系)
45300 '数字が４つ連続してる場合
45310 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
45320 Spirit_type$="順序型(斜め、ヨコ系)"
45330 Sa$="連続"
45340 endif
45350 '隔離型(タテ、上下系)
45360 '数字が1つおきに飛んでる場合
45370 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
45380 Spirit_type$="隔離型(タテ、上下系)"
45390 Sa$="1差"
45400 endif
45410 '隔離型(タテ、ヨコ系)
45420 '数字が1つおきに飛んでる場合
45430 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
45440 Spirit_type$="隔離型(タテ、ヨコ系)"
45450 Sa$="1差"
45460 endif
45470 '隔離型(斜め、上下系)
45480 '数字が1つおきに飛んでる場合
45490 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
45500 Spirit_type$="隔離型(斜め、上下系)"
45510 Sa$="1差"
45520 endif
45530 '隔離型(斜め、ヨコ系)
45540 '数字が1つおきに飛んでる場合
45550 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
45560 Spirit_type$="隔離型(斜め、ヨコ系)"
45570 Sa$="1差"
45580 endif
45590 '隔離型(タテ系)
45600 '数字が2つおきに飛んでる場合
45610 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
45620 Spirit_type$="隔離型(タテ系)"
45630 Sa$="1差"
45640 endif
45650 '隔離型(斜め系)
45660 '数字が2つおきに飛んでる場合
45670 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
45680 Spirit_type$="隔離型(斜め系)"
45690 Sa$="1差"
45700 endif
45710 '隔離型(上下、ヨコ系)
45720 '数字が2つおきに飛んでる場合
45730 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
45740 Spirit_type$="隔離型(上下、ヨコ系)"
45750 Sa$="1差"
45760 'endif
45770 endif
45780 'ここに移動
45790 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
45800 bg=0:bg2=0:key$="":init"kb:4":talk ""
45810 color rgb(255,0,255)
45820 print "●十二の基礎運" + chr$(13)
45830 print Spirit_type$ + Sa$;chr$(13)
45840 print "きょうだい：";Kyoudai$ + chr$(13)
45850 talk "あなたのきょうだいは、"+Kyoudai$+"です"
45860 color rgb(0,0,0)
45870 print"前の画面:左の丸"+chr$(13)
45880 'print"保存して、もう一度やる：スペースキー"+chr$(13)
45890 print"トップ画面に戻る:右の丸"+chr$(13)
45900 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
45910 key$=inkey$
45920 bg=strig(1)
45930 bg2=strig(0)
45940 pause 2.50*100
45950 wend
45960 if (key$ = chr$(13) or bg=2) then
45970 goto Main_Screen1:
45980 else
45990 if (key$ = "b" or bg2 = 2) then
46000 goto Result_ReiIden1:
46010 endif
46020 endif
46030 'ファイル保存 占いデーターを一時保存
46040 Save_Data1:
46050 '********************************************************************
46060 '1.ファイル読み込みで登録件数                                       *
46070 '2.10件かどうかをチェックして10件以下なら保存する                   *
46080 '3.10件以上なら保存しない                                           *
46090 '********************************************************************
46100 '登録件数を求める
46110 '********************************************************************
46120 n=0
46130 open Parsonal_data$ + "Parsonal_data.dat" for append as #3
46140 while (eof(3) = -1)
46150 line input #3,a$
46160 n = n + 1
46170 wend
46180 close #3
46190 '********************************************************************
46200 '登録件数を求める
46210 '********************************************************************
46220 if (n < 10) then
46230 '********************************************************************
46240 '`ファイル読み込み件数をチェック　ここまで
46250 '*********************************************************************
46260 'print#3は末尾は、セミコロンはいらない
46270 '末尾にセミコロンをつけると改行しない
46280 print #3,"名前:" + buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:" + str$(Senzo_wasu);",先祖生数:" + str$(Senzo_seisu);",性格和数:" + str$(Seikaku_wasu);",性格生数:" + str$(Seikaku_seisu);",愛情生数:" + str$(Aijyou_wasu);",愛情和数:" + str$(Aijyou_seisu);",行動和数:" + str$(Koudou_wasu);",行動生数:" + str$(Koudou_seisu)
46290 ui_msg "保存しました"
46300 close #3
46310 else
46320 ui_msg "10件に到達しました。"
46330 endif
46340 goto Reiden_Top_Input_Sextype:
46350 '個人データーリスト  *parsonal_data
46360 Parsonal_data_top:
46370 cls 3:No=0:Key$="":bg=0:y=0
46380 sp_on 0,1:sp_put 0,(10,100),0,0
46390 line(0,0)-(800,60),rgb(0,0,255),bf
46400 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
46410 line (0,60)-(800,440),rgb(127,255,212),bf
46420 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
46430 line (0,440)-(800,670),rgb(0,255,0),bf
46440 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
46450 color rgb(255,255,255)
46460 print"◎個人データーリスト" + chr$(13)
46470 color rgb(255,0,255)
46480 print " :1.霊遺伝姓名学リスト" + chr$(13)
46490 print " :2.霊遺伝姓名学登録件数" + chr$(13)
46500 print " :3.霊遺伝姓名学データー検索"+chr$(13)
46510 print " :4.メインメニューへ行く"+chr$(13)
46520 color rgb(0,0,0):locate 0,10
46530 print "1.霊遺伝姓名学リストを選択"
46540 Parsonal_data_top2:
46550 key$="":bg=0:y=0
46560 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
46570 key$=inkey$
46580 bg=strig(1)
46590 y=stick(1)
46600 pause 2.50*100
46610 wend
46620 '*****************************************************
46630 '1.下のカーソル ここから 2024.10
46640 '*****************************************************
46650 if (key$=chr$(31) or y=1) then
46660 select case No
46670 case 0:
46680 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46690 case 1:
46700 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46710 case 2:
46720 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46730 case 3:
46740 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46750 end select
46760 endif
46770 '******************************************************
46780 '1.下のカーソル　 ここまで 2024.10
46790 '******************************************************
46800 '******************************************************
46810 '2.上のカーソル　 ここから 2024.10
46820 '******************************************************
46830 if (y=-1 or key$=chr$(30)) then
46840 select case No
46850 case 0:
46860 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46870 case 1:
46880 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46890 case 2:
46900 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46910 case 3:
46920 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46930 end select
46940 endif
46950 '******************************************************
46960 '2.上のカーソル　ここまで 2024.10
46970 '******************************************************
46980 '3.決定ボタン　ここから  2024.10
46990 '******************************************************
47000 if (bg=2 or key$=chr$(13)) then
47010 select case No
47020 case 0:
47030 sp_on 0,0:goto Parsonal_list1:
47040 case 1:
47050 sp_on 1,0:goto Entry_list_count:
47060 case 2:
47070 sp_on 2,0:goto Parsonal_list_Search:
47080 case 3:
47090 sp_on 3,0:goto Main_Screen1:
47100 end select
47110 endif
47120 '******************************************************
47130 '3.決定ボタン　ここまで 2024.10
47140 '******************************************************
47150 '登録件数
47160 Entry_list_count:
47170 N = 0:bg=0:key$="":init"kb:4":talk ""
47180 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
47190 'N=1
47200 while eof(5) = 0
47210 line input #5,line$:N = N + 1
47220 wend
47230 close #5
47240 c=N
47250 cls 3
47260 line (0,0)-(680,60),rgb(0,0,255),bf
47270 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
47280 line (0,60)-(680,180),rgb(127,255,212),bf
47290 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
47300 LINE (0,180)-(680,280),rgb(0,255,0),bf
47310 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
47320 color rgb(255,255,255)
47330 print "◎霊遺伝姓名学登録件数"+chr$(13)
47340 color rgb(255,0,255)
47350 print "登録件数は";c;"件です"+chr$(13)
47360 color rgb(0,0,0)
47370 print "エンターキーを押してください"+chr$(13)
47380 while (key$ <> chr$(13) and bg <> 2)
47390 key$=inkey$
47400 bg=strig(1)
47410 pause 2.50*100
47420 wend
47430 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
47440 'パーソナルリスト ここから
47450 Parsonal_list1:
47460 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
47470 'Title
47480 line (0,0)-(850,60),rgb(0,0,255),bf
47490 line (0,0)-(850,57),rgb(255,255,255),b
47500 '個人名
47510 line (0,60)-(850,165),rgb(0,255,0),bf
47520 line (0,63)-(850,162),rgb(255,0,255),b
47530 '数値リスト
47540 line (0,165)-(850,550),rgb(255,212,212),bf
47550 line (0,168)-(850,547),rgb(0,0,255),b
47560 'ボタンメッセージ
47570 line (0,550)-(850,730),rgb(0,255,0),bf:
47580 line (0,553)-(853,733),rgb(255,0,255),b
47590 'Parsonal_list2:
47600 open "config/Parsonal_data/parsonal_data.dat" for input as #7
47610 'bN=0
47620 while eof(7)=0
47630 line input #7,lines$:bN = bN + 1
47640 wend
47650 close #7
47660 'a=0
47670 open "config/Parsonal_data/parsonal_data.dat" for input as #8
47680 'while eof(8)=0
47690 for i=0 to (bN * 10) -1
47700 input #8,buflines$(i)
47710 'buflines$(i) = line$
47720 'a  =  a  +  1
47730 Next i
47740 'wend
47750 close #8
47760 Parsonal_list2:
47770 while n <= bN * 10
47780 'Parsonal_list2:
47790 cls
47800 color rgb(255,255,255)
47810 print "霊遺伝姓名学 リスト" + chr$(13)
47820 '性別を出す
47830 sex$ = show_sex_type$(buflines$((10*n) + 1))
47840 'n=0
47850 color rgb(0,0,0):
47860 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
47870 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
47880 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
47890 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
47900 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
47910 print "右の丸:次へ行く" + chr$(13)
47920 print "左の丸：トップへ戻る" + chr$(13)
47930 key$=input$(1)
47940 if key$= " " then n=((n+1) Mod bN)
47950 if key$=chr$(13) then goto Main_Screen1:
47960 wend
47970 Parsonal_list_Search:
47980 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
47990 while eof(1)=0
48000 line input #1,lines$:hit_count=hit_count + 1
48010 wend
48020 close #1
48030 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
48040 for i=0 to hit_count*10 - 1
48050 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
48060 next i
48070 close #2
48080 Search_find:
48090 cls 3:init "kb:2":talk ""
48100 'グラフィック領域　ここから
48110 line (0,0)-(770,60),rgb(0,0,255),bf
48120 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
48130 line (0,60)-(770,170),rgb(127,255,212),bf
48140 line(0,63)-(767,173),rgb(0,0,255),b
48150 line(0,170)-(770,440),rgb(0,255,0),bf
48160 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
48170 color rgb(255,255,255)
48180 print "霊遺伝姓名判断 データー検索"+chr$(13)
48190 color rgb(255,0,255)
48200 print "登録件数:";hit_count;"件です"+chr$(13)
48210 color rgb(0,0,0)
48220 print "調べたい人の名前を入れてください"+chr$(13)
48230 Input "名前:",name$
48240 cls
48250 for i = 0 to hit_count * 10 - 1
48260 if name$ = buffname$(i) then
48270 hcount = hcount + 1
48280 endif
48290 next i
48300 if hcount > 0 then
48310 init "kb:4":cls
48320 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48330 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
48340 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
48350 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
48360 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
48370 while (key$ <> chr$(13) and bg <> 2)
48380 key$=inkey$
48390 bg=strig(1)
48400 bg2=strig(0)
48410 pause 2.50*100
48420 wend
48430 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
48440 else
48450 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48460 color rgb(0,0,0):print"検索名:";name$+chr$(13)
48470 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
48480 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
48490 a$=input$(1)
48500 IF a$=chr$(13) then goto Main_Screen1:
48510 endif
48520 '相性のデーターを保存する機能
48530 '保存ファイル：bestAisyou.dat
48540 '保存フォルダ:config/Aisyou_dat/
48550 Save_Aisyou:
48560 open "config/Aisyou_data" for append as #1
48570 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
48580 close #1
48590 ui_msg "保存しました"
48600 key$ = input$(1)
48610 '設定変更項目
48620 Config_Setting:
48630 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
48640 sp_on 0,1:sp_put 0,(10,100),0,0
48650 'グラフィック領域　ここから
48660 'Line 1
48670 line (0,0)-(850,60),rgb(0,0,255),bf
48680 line (0,0)-(850,57),rgb(255,255,255),b
48690 'Line 2
48700 line (0,60)-(850,460),rgb(127,255,212),bf
48710 line (0,57)-(850,457),rgb(0,0,0),b
48720 'Line 3
48730 line (0,460)-(850,640),rgb(0,255,0),bf
48740 line (0,457)-(850,637),rgb(0,0,0),b
48750 'グラフィック領域　ここまで
48760 color rgb(255,255,255)
48770 print "設定　トップメニュー" + chr$(13)
48780 color rgb(255,0,255)
48790 print " :1.キーボードの設定" + chr$(13)
48800 print " :2.トップ画面に戻る"
48810 'print " :4.プログラムの終了"+chr$(13)
48820 color rgb(0,0,0):locate 0,10
48830 print "1.キーボードの設定を選択"
48840 Config_Setting2:
48850 y=0:bg=0:key$=""
48860 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
48870 key$=inkey$
48880 y=stick(1)
48890 bg=strig(1)
48900 pause 2.50*100
48910 wend
48920 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
48930 select case No
48940 case 0:
48950 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
48960 case 1:
48970 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
48980 end select
48990 endif
49000 if (key$=chr$(13) or bg=2) then
49010 select case No
49020 case 0:
49030 sp_on 0,0:goto Keyboard_Setting:
49040 case 1:
49050 sp_on 1,0:goto Main_Screen1:
49060 end select
49070 endif
49080 '1.キーボードの設定
49090 Keyboard_Setting:
49100 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
49110 sp_on 0,1:sp_put 0,(10,100),0,0
49120 'グラフィック領域　ここから
49130 'Line 1
49140 line (0,0)-(1050,60),rgb(0,0,255),bf
49150 line (0,0)-(1050-3,57),rgb(255,255,255),b
49160 'Line 2
49170 line (0,60)-(1050,460),rgb(127,255,212),bf
49180 line (0,57)-(1050-3,457),rgb(0,0,0),b
49190 'Line 3
49200 line (0,460)-(1050,640),rgb(0,255,0),bf
49210 line (0,457)-(1050-3,637),rgb(0,0,0),b
49220 'グラフィック領域　ここまで
49230 '文字色　白
49240 color rgb(255,255,255)
49250 print "設定1 キーボードの設定" + chr$(13)
49260 color rgb(255,0,255)
49270 print " :1.バーチャルキーボード表示する" + chr$(13)
49280 print " :2.バーチャルキーボードを表示しない" + chr$(13)
49290 print " :3.トップ画面に戻る" + chr$(13)
49300 print " :4.終了する" + chr$(13)
49310 color rgb(0,0,0)
49320 locate 0,10
49330 print "1.バーチャルキーボードを表示するを選択"
49340 Keyboard_Setting2:
49350 y=0:bg=0:key$=""
49360 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
49370 key$=inkey$
49380 y=stick(1)
49390 bg=strig(1)
49400 pause 2.50*100
49410 wend
49420 '****************************************************************************************************************
49430 '下のカーソル　ここから
49440 '****************************************************************************************************************
49450 if (y=1 or key$=chr$(31)) then
49460 select case No
49470 case 0:
49480 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
49490 case 1:
49500 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
49510 case 2:
49520 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
49530 case 3:
49540 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
49550 end Select
49560 endif
49570 '*******************************************************************************************************************
49580 '下のカーソル　ここまで
49590 '*******************************************************************************************************************
49600 '*******************************************************************************************************************
49610 '上のカーソル　ここから
49620 '********************************************************************************************************************
49630 '********************************************************************************************************************
49640 '上のカーソル　ここまで
49650 '********************************************************************************************************************
49660 '********************************************************************************************************************
49670 '決定ボタン　ここから
49680 '*********************************************************************************************************************
49690 if (key$=chr$(13) or bg=2) then
49700 select case No
49710 case 0:
49720 init "kb:2":
49730 case 1:
49740 sp_on 1,0:init "kb:0":
49750 case 2:
49760 sp_on 2,0:goto Main_Screen1:
49770 case 3:
49780 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
49790 end select
49800 endif
49810 '*********************************************************************************************************************
49820 '決定ボタン　ここまで
49830 '*********************************************************************************************************************
