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
700 'Version2.39:DAte:2024.11.24                      *
710 'Version2.40:Date:2024.12.01                      *
720 'Version2.41:Date:2024.12.08                      *
730 'Version2.42:Date:2024.12.15                      *
740 'Version2.43:Date:2024.12.22                      *
750 '*****************************************************
760 '設定ファイル　漢字文字データ                     　 *
770 'Version:Mojidata20200411.dat Date:20200411          *
780 'Version:Mojidata20200415.dat Date:20200415          *
790 'Version:Mojidata20200506.dat Date:20200506          *
800 'Version:Mojidata20200513.dat Date:20200513          *
810 'Version:Mojidata20200516.dat Date:20200516          *
820 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
830 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
840 '*****************************************************
850 '* 開発再開　2024.9.20　Ver2.33                      *
860 '* 開発再開 Date:2024.09.20                          *
870 '*************************************************
880 '新機能
890 'Date:2020.05.27
900 'Parsonal_data.datに個人データーを保存機能追加
910 '*****************************************************
920 'メモリー確保 文字領域,数値データー                  *
930 '*****************************************************
940 clear 4*4000,4*1000000
950 '*****************************************************
960 'Screen 定義                                         *
970 '*****************************************************
980 Screen 1,1,1,1
990 '*****************************************************
1000 'Sprite 定義                                         *
1010 '****************************************************
1020 'フォルダを変数にまとめる
1030 '****************************************************
1040 Gazo$ = "./config/gazo/"
1050 '****************************************************
1060 Select$ = "selection.png"
1070 '^&**************************************************
1080 gload Gazo$ + Select$,1,10,100
1090 gload Gazo$ + Select$,1,10,200
1100 gload Gazo$ + Select$,1,10,300
1110 gload Gazo$ + Select$,1,10,400
1120 gload Gazo$ + Select$,1,10,500
1130 sp_def 0,(10,100),32,32
1140 sp_def 1,(10,200),32,32
1150 sp_def 2,(10,300),32,32
1160 sp_def 3,(10,400),32,32
1170 sp_def 4,(10,500),32,32
1180 '****************************************************
1190 Parsonal_data$ = "Config/Parsonal_data/"
1200 '*****************************************************
1210 '改名チェック変数                                   *
1220 '****************************************************
1230 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1240 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1250 '*****************************************************
1260 'キーボードフラグ                                    *
1270 '0:キーボード非表示                                  *
1280 '1:キーボード表示                                    *
1290 '*****************************************************
1300 keyboard_flag = 0
1310 '*****************************************************
1320 '性別の選択用変数                                    *
1330 '*****************************************************
1340 dim sex_type$(2)
1350 '*****************************************************
1360 '相性占い　設定項目 ここから                         *
1370 '*****************************************************
1380 count=0:line_count=0
1390 dim buffer_Aisyou_type$(10,10)
1400 dim buffer_Kaimei_data_name$(10)
1410 '*****************************************************
1420 '改名チェックの選択肢の変数                          *
1430 '*****************************************************
1440 '1.フォルダ
1450 '******************************************************
1460 KANJI_DATA$ = "config/kanji_data"
1470 '*****************************************************
1480 '2.ファイル
1490 '*****************************************************
1500 MOJIDATA$ = "Mojidata_ReiIden20200911.png"
1510 '*****************************************************
1520 SELECT_LIST_FOLDER$="config/Selection/"
1530 '*****************************************************
1540 SELECT_LIST_FILE$ = "Selection.dat"
1550 '*****************************************************
1560 'FULL PASS:./config/Selection/Selection.dat
1570 '*****************************************************
1580 dim select$(3)
1590 open SELECT_LIST_FOLDER$ + SELECT_LIST_FILE$ for input as #2
1600 for i=0 to 2
1610 input #2,select$(i)
1620 next i
1630 close #2
1640 'select$(0)="改名リストに追加する"
1650 'select$(1)="改名リストに追加しない"
1660 'select$(2)="トップ画面に行く"
1670 '*****************************************************
1680 '総数を出す変数 改名チェック変数                     *
1690 'dim buffer_total$                                   *
1700 '1.理解し合える最良のカップル                        *
1710 '*****************************************************
1720 dim buf_good_couple1(20)
1730 dim buf_good_couple2(20)
1740 'dim buf_good_couple1$
1750 'Dim buf_good_couple2$
1760 '*****************************************************
1770 '2.互いに自然体でつきあえるカップル                  *
1780 '*****************************************************
1790 dim buf_natural_couple1(20)
1800 dim buf_natural_couple2(20)
1810 'dim buf_natural_couple1$
1820 'dim buf_natural_couple2$
1830 '**************************************************
1840 '3.男性にとって居心地の良いカップル               *
1850 '**************************************************
1860 dim buf_good_for_man1(20)
1870 dim buf_good_for_man2(20)
1880 'dim buf_good_for_man1$
1890 'dim buf_good_for_man2$
1900 '*****************************************************
1910 '4.女性にとって居心地の良い相性                      *
1920 '*****************************************************
1930 dim buf_good_for_woman1(20)
1940 dim buf_good_for_woman2(20)
1950 'dim buf_good_for_woman1$
1960 'dim buf_good_for_woman2$
1970 '*****************************************************
1980 '5.恋愛経験を重ねた後なら愛を育める                  *
1990 '*****************************************************
2000 dim buf_short_of_experience1(20)
2010 dim buf_short_of_experience2(20)
2020 'dim buf_short_of_experience1$
2030 'dim buf_short_of_experience2$
2040 '*****************************************************
2050 '6.結婚への発展が困難なカップル                      *
2060 '*****************************************************
2070 dim buf_difficult_for_couple1(20)
2080 dim buf_difficult_for_couple2(20)
2090 'dim buf_difficult_for_couple1$
2100 'dim buf_difficult_for_couple2$
2110 '*****************************************************
2120 '7.愛し方にズレが出てくる二人                        *
2130 '*****************************************************
2140 dim buf_difference_of_love1(20)
2150 dim buf_difference_of_love2(20)
2160 'dim buf_difference_of_love1$
2170 'dim buf_difference_of_love2$
2180 '*****************************************************
2190 '相性占い　設定項目　ここまで
2200 '*****************************************************
2210 '8.互いの価値観が噛み合わない相性 ここから           *
2220 '*****************************************************
2230 dim buf_difference_of_KachiKan1(20)
2240 dim buf_difference_of_KachiKan2(20)
2250 'dim buf_difference_of_KachiKan1$
2260 'dim buf_difference_of_KachiKan2$
2270 '*****************************************************
2280 '8.互いに価値観が噛み合わない相性 ここまで           *
2290 '*****************************************************
2300 '相性診断　相性パターン結果　ここから
2310 dim Result_Aisyou_type$(8)
2320 '*****************************************************
2330 '相性診断 相性パターン結果 ここまで                  *
2340 '*****************************************************
2350 '2019/04/07 姓名判断アプリ 作成開始                  *
2360 '姓名判断　 名前の総数での吉凶を調べる               *
2370 '*****************************************************
2380 buf_count=0:buffer_count=0:count=0:buffer=0
2390 '*****************************************************
2400 '合計文字数                                          *
2410 '*****************************************************
2420 totalmoji=0
2430 dim buf_Input_data$(10),buf_Input_data2$(10)
2440 dim bufer_name$(10),bufer_name2$(10)
2450 dim buf_Input_name$(10),buf_Input_name2$(10)
2460 '*****************************************************
2470 '定数文字1画〜27画                                   *
2480 'ファイルから各画数を読み込んで代入する。            *
2490 '*****************************************************
2500 '1行目だけ読み込む                                   *
2510 '*****************************************************
2520 KANJI_DATA$ = "config/Kanji_data/"
2530 '*****************************************************
2540 MOJIDATA$ = "Mojidata_ReiIden20200911.dat"
2550 '*****************************************************
2560 open KANJI_DATA$ + MOJIDATA$ for input as #2
2570 for i=0 to 26
2580 input #2,buf_lines$(i)
2590 next i
2600 close #2
2610 '*****************************************************
2620 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2630 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2640 '1画
2650 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2660 '2画
2670 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2680 '3画
2690 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2700 '4画
2710 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2720 '5画
2730 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2740 '6画
2750 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2760 '7画
2770 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2780 '8画
2790 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2800 '9画
2810 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2820 '10画
2830 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2840 '11画
2850 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2860 '12画
2870 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2880 '13画
2890 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2900 '14画
2910 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2920 '15画
2930 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2940 '16画
2950 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2960 '17画
2970 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2980 '18画
2990 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
3000 '19画
3010 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
3020 '20画
3030 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
3040 '21画
3050 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
3060 '22画
3070 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
3080 '23画
3090 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
3100 '24画
3110 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
3120 '25画
3130 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
3140 '26画
3150 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
3160 '27画
3170 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
3180 dim Moji_data$(Moji_total+27+27)
3190 '******************************************************
3200 'dim bufmoji$(10),Input_data$(10)                     *
3210 '１画の文字   サイズ:21+2(漢字)                       *
3220 '******************************************************
3230 dim buf_char_hiragana1$(Moji_1)
3240 '******************************************************
3250 '2画の文字  サイズ 58+14=72(漢字)                     *
3260 '******************************************************
3270 dim buf_char_hiragana2$(Moji_2)
3280 '******************************************************
3290 '3画の文字 サイズ:48+29=77(漢字)                      *
3300 '******************************************************
3310 dim buf_char_hiragana3$(Moji_3)
3320 '******************************************************
3330 '4画の文字 サイズ:29+51=80(漢字)                      *
3340 '******************************************************
3350 dim buf_char_hiragana4$(Moji_4)
3360 '******************************************************
3370 '５画の文字  サイズ:18+59=77(漢字)                    *
3380 '******************************************************
3390 dim buf_char_hiragana5$(Moji_5)
3400 '******************************************************
3410 '6画の文字  サイズ:79(漢字)                           *
3420 '******************************************************
3430 dim buf_char_hiragana6$(Moji_6)
3440 '******************************************************
3450 '7画の文字  サイズ:88(漢字)                           *
3460 '******************************************************
3470 dim buf_char_hiragana7$(Moji_7)
3480 '******************************************************
3490 '8画の文字                                            *
3500 '******************************************************
3510 dim buf_char_hiragana8$(Moji_8)
3520 '******************************************************
3530 '9画の文字                                            *
3540 '******************************************************
3550 dim buf_char_hiragana9$(Moji_9)
3560 '******************************************************
3570 '10画の文字 98文字                                    *
3580 '******************************************************
3590 dim buf_char_hiragana10$(Moji_10)
3600 '******************************************************
3610 '11画の文字                                           *
3620 '******************************************************
3630 dim buf_char_hiragana11$(Moji_11)
3640 '******************************************************
3650 '12画の文字                                           *
3660 '******************************************************
3670 dim buf_char_hiragana12$(Moji_12)
3680 '******************************************************
3690 '13画の文字 81文字                                    *
3700 '******************************************************
3710 dim buf_char_hiragana13$(Moji_13)
3720 '******************************************************
3730 '14画の文字                                           *
3740 '******************************************************
3750 dim buf_char_hiragana14$(Moji_14)
3760 '******************************************************
3770 '15画の文字                                           *
3780 '******************************************************
3790 dim buf_char_hiragana15$(Moji_15)
3800 '******************************************************
3810 '16画の文字                                           *
3820 '******************************************************
3830 dim buf_char_hiragana16$(Moji_16)
3840 '******************************************************
3850 '17画の文字                                           *
3860 '******************************************************
3870 dim buf_char_hiragana17$(Moji_17)
3880 '******************************************************
3890 '18画の文字                                           *
3900 '******************************************************
3910 dim buf_char_hiragana18$(Moji_18)
3920 '19画の文字
3930 dim buf_char_hiragana19$(Moji_19)
3940 '20画の文字
3950 dim buf_char_hiragana20$(Moji_20)
3960 '21画の文字
3970 dim buf_char_hiragana21$(Moji_21)
3980 '22画の文字
3990 dim buf_char_hiragana22$(Moji_22)
4000 '23画の文字
4010 dim buf_char_hiragana23$(Moji_23)
4020 '24画の文字
4030 dim buf_char_hiragana24$(Moji_24)
4040 '25画の文字
4050 dim buf_char_hiragana25$(Moji_25)
4060 dim buf_char_hiragana26$(Moji_26)
4070 dim buf_char_hiragana27$(Moji_27)
4080 '結果表示1　吉凶データー 81パターン
4090 dim buf_Kikkyo$(81)
4100 '結果表示２
4110 '安斎流姓名判断 吉凶  1.地運
4120 dim buf_Kikkyo_Anzai_chiunn$(70)
4130 '安斎流姓名判断　　吉凶  2.人運
4140 dim buf_Kikkyo_Anzai_jinunn$(69)
4150 '安斎流姓名判断 吉凶 3.外運
4160 'dim buf_Kikkyo_Anzai_gaiunn$(70)
4170 '安斎流姓名判断 吉凶　　4.総運
4180 dim buf_Kikkyo_Anzai_total$(80)
4190 '霊遺伝姓名学　変数
4200 A=0
4210 B=0
4220 C=0
4230 D=0
4240 '1.先祖運
4250 buffer_senzo=0
4260 '2.性格運
4270 buffer_seikaku=0
4280 '3.愛情運
4290 buffer_Aijyou=0
4300 '4.行動運
4310 buffer_Kouzou=0
4320 '1-1.先祖運　和数
4330 Senzo_wasu=0
4340 '1-2.先祖運　生数
4350 Senzo_seisu=0
4360 '2-1.性格運 和数
4370 Seikaku_wasu=0
4380 '2-2.性格運 生数
4390 Seikaku_seisu=0
4400 '3-1.愛情運 和数
4410 Aijyou_wasu=0
4420 '3-2.愛情運 生数
4430 Aijyou_seisu=0
4440 '4-1 行動運 和数
4450 Koudo_wasu=0
4460 '4-2 行動運 生数
4470 Koudo_seisu=0
4480 'データー読み込み　ここから
4490 'データー読み込み　1.ひらがな
4500 '1画の文字   6文字 23文字
4510 open KANJI_DATA$ + MOJIDATA$ for input as #1
4520 '全ファイルを読み込む
4530 for i = 0 to 26+Moji_total+27
4540 input #1,Moji_data$(i)
4550 next i
4560 close #1
4570 '全ファイル読み込み　ここまで
4580 for i = 27+1 to (Moji_1)+27+1
4590 '1画の文字にデーターをコピーする
4600 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4610 next i
4620 '2画の文字    98文字
4630 for i = Moji_Min_2  to (Moji_Max_2)
4640 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4650 next i
4660 '3文字の文字    77文字
4670 for i = Moji_Min_3  to (Moji_Max_3)
4680 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4690 next i
4700 '4文字の文字   80文字
4710 for i = (Moji_Min_4)  to (Moji_Max_4)
4720 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4730 next i
4740 '5文字の文字 77文字
4750 for i = Moji_Min_5 to (Moji_Max_5)
4760 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4770 next i
4780 '6文字の文字 79文字
4790 for i = Moji_Min_6  to Moji_Max_6
4800 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4810 next i
4820 '7文字の文字 170文字
4830 for i = Moji_Min_7 to Moji_Max_7
4840 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4850 next i
4860 '8画の文字 120文字
4870 for i = Moji_Min_8 to Moji_Max_8
4880 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4890 next i
4900 '9画の文字  103文字
4910 for i = Moji_Min_9 to Moji_Max_9
4920 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4930 next i
4940 '10画の文字 285文字
4950 for i = Moji_Min_10 to (Moji_Max_10)
4960 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4970 next i
4980 '11画の文字
4990 for i = Moji_Min_11 to Moji_Max_11
5000 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
5010 next i
5020 '12画の文字
5030 for i = Moji_Min_12 to Moji_Max_12
5040 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
5050 next i
5060 '13画の文字 81
5070 for i = Moji_Min_13 to Moji_Max_13
5080 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
5090 next i
5100 '14画の文字 66
5110 for i = Moji_Min_14 to Moji_Max_14
5120 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
5130 next i
5140 '15画の文字 59
5150 'for i = Moji_Min_15 to (Moji_Max_15) - 1
5160 for i=Moji_Min_15 to  Moji_Max_15
5170 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
5180 next i
5190 '16画の文字 44
5200 for i=Moji_Min_16 to Moji_Max_16
5210 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
5220 next i
5230 '17画の文字
5240 for i = Moji_Min_17 to Moji_Max_17
5250 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
5260 next i
5270 '18画の文字
5280 for i = Moji_Min_18 to Moji_Max_18
5290 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
5300 next i
5310 '19画の文字 17文字
5320 for i = Moji_Min_19 to Moji_Max_19
5330 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
5340 next i
5350 '20 画の文字 13文字
5360 for  i = Moji_Min_20 to Moji_Max_20
5370 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
5380 NEXT i
5390 '21画の文字 6
5400 for i = Moji_Min_21 to (Moji_Max_21)
5410 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
5420 next i
5430 '22 画の文字 4
5440 for i = Moji_Min_22 to Moji_Max_22
5450 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
5460 next i
5470 '23画の文字  3文字
5480 for i = Moji_Min_23 to Moji_Max_23
5490 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5500 next i
5510 '24画の文字  3文字
5520 for i = Moji_Min_24 to Moji_Max_24
5530 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5540 next i
5550 '25 画の文字 4
5560 for i = Moji_Min_25 to Moji_Max_25
5570 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5580 next i
5590 '26画の文字  3文字
5600 for i = Moji_Min_26 to Moji_Max_26
5610 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5620 next i
5630 '27画の文字  3文字
5640 for i = Moji_Min_27 to Moji_Max_27
5650 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5660 next i
5670 '吉凶データー読み込み
5680 '*********************************************************
5690 'フォルダ
5700 '*********************************************************
5710 'ファイル
5720 '*********************************************************
5730 'FULL PATH:"./config/Kikkyo_data/Kikkyo_data.dat"
5740 '*********************************************************
5750 KIKKYO_DATA_FOLDER$ = "config/Kikkyo_data/"
5760 '*********************************************************
5770 KIKKYO_DATA_FILE$ = "Kikkyo_data.dat"
5780 '*********************************************************
5790 open KIKKYO_DATA_FOLDER$ + KIKKYO_DATA_FILE$ for input as #1
5800 for i=0 to 80
5810 input #1,buf_Kikkyo$(i+1)
5820 next i
5830 close #1
5840 '***********************************************************
5850 'FULL PATH:"config/Kikkyo_data/Kikkyo_data.data"
5860 '******************************************************
5870 ANZAI_KIKKYO_CHIUNN_FILE$ = "Anzai_Kikkyo_chiunn.dat"
5880 '******************************************************
5890 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_CHIUNN_FILE$ for input as #2
5900 for m=0 to 69
5910 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5920 next m
5930 close #2
5940 '******************************************************
5950 'FULL PAT:"./config/Kikkyo_data/Kikkyo_jiunn.dat"
5960 '******************************************************
5970 KIKKYO_JINUNN$ = "Anzai_Kikkyo_Jinunn.dat"
5980 '******************************************************
5990 open KIKKYO_DATA_FOLDER$ + KIKKYO_JINUNN$ for input as #3
6000 for i=1 to 70
6010 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
6020 next i
6030 close #3
6040 '**************************************************************
6050 'FULL PATH="./config/Kikkyo_data/Anzai_Kikkyo_Total.dat"
6060 '      ====>   KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$
6070 '**************************************************************
6080 'KIKKYO_DATA_FOLDER$ = "./config/Kikkyo_data/" (共通フォルダ)
6090 '**************************************************************
6100 ANZAI_KIKKYO_FILE$ = "Anzai_Kikkyo_Total.dat"
6110 '**************************************************************
6120 open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$ for input as #4
6130 for i=0 to 79
6140 input #4,buf_Kikkyo_Anzai_total$(i)
6150 next i
6160 close #4
6170 '****************************************************
6180 '1.理解し合える最良のカップル　ここから           　*
6190 '****************************************************
6200 open "config/Anzai_Aisyou/Good_Couple1.dat" for input as #1
6210 for i=0 to 19
6220 input #1,buf_good_couple1$
6230 buf_good_couple1(i) = val(buf_good_couple1$)
6240 next i
6250 close #1
6260 open "config/Anzai_Aisyou/Good_Couple2.dat" for input as #1
6270 for j=0 to 19
6280 input #1,buf_good_couple2$
6290 buf_good_couple2(j) = val(buf_good_couple2$)
6300 next j
6310 close #1
6320 '*****************************************************
6330 '1.理解し合える最良のカップル ここまで                                   *
6340 '*****************************************************
6350 '*****************************************************
6360 '2.互いに自然体でつきあえる二人　ここから                               *
6370 '*****************************************************
6380 open "config/Anzai_Aisyou/Natural_Couple1.dat" for input as #1
6390 for i=0 to 19
6400 input #1,buf_natural_couple1$
6410 buf_natural_couple1(i) = val(buf_natural_couple1$)
6420 next i
6430 close #1
6440 open "config/Anzai_Aisyou/Natural_Couple2.dat" for input as #1
6450 for j=0 to 19
6460 input #1,buf_natural_couple2$
6470 buf_natural_couple2(j) = val(buf_natural_couple2$)
6480 next j
6490 close #1
6500 '*****************************************************
6510 '2.互いに自然体でつきあえる二人　ここまで                               *
6520 '*****************************************************
6530 '3.男性にとって居心地の良い相性                                      *
6540 '*****************************************************
6550 open "config/Anzai_Aisyou/Good_for_man1.dat" for input as #1
6560 for i=0 to 19
6570 input #1,buf_good_for_man1$
6580 buf_good_for_man1(i) = val(buf_good_for_man1$)
6590 next i
6600 close #1
6610 open "config/Anzai_Aisyou/Good_for_man2.dat" for input as #1
6620 for j=0 to 19
6630 input #1,buf_good_for_man2$
6640 buf_good_for_man2(j) = val(buf_good_for_man2$)
6650 next j
6660 close #1
6670 '******************************************************
6680 '3.男性にとって居心地の良いカップル             　　                   　*
6690 '******************************************************
6700 '4.女性にとって居心地の良いカップル                                   *
6710 '******************************************************
6720 open "config/Anzai_Aisyou/Good_for_woman1.dat" for input as #1
6730 for i=0 to 19
6740 input #1,buf_good_for_woman1$
6750 buf_good_for_woman1(i) = val(buf_good_for_woman1$)
6760 next i
6770 close #1
6780 open "config/Anzai_Aisyou/Good_for_woman2.dat" for input as #1
6790 for j=0 to 19
6800 input #1,buf_good_for_woman2$
6810 buf_good_for_woman2(j) = val(buf_good_for_woman2$)
6820 next j
6830 close #1
6840 '******************************************************
6850 '4.女性にとって居心地の良い相性                   　                　*
6860 '******************************************************
6870 '5.恋愛経験を重ねた後なら愛を育める                                  　*
6880 '******************************************************
6890 open "config/Anzai_Aisyou/Short_of_experience1.dat" for input as #1
6900 for i=0 to 19
6910 input #1,buf_short_of_experience1$
6920 buf_short_of_experience1(i) = val(buf_short_of_experience1$)
6930 next i
6940 close #1
6950 open "config/Anzai_Aisyou/Short_of_experience2.dat" for input as #1
6960 for j=0 to 19
6970 input #1,buf_short_of_experience2$
6980 buf_short_of_experience2(j) = val(buf_short_of_experience2$)
6990 'buf_short_of_experience2(j)=val(buf_short_of_experience2$(j))
7000 next j
7010 close #1
7020 '******************************************************
7030 '5 恋愛経験を重ねた後なら愛を育める                                  　*
7040 '******************************************************
7050 '6.結婚への発展が困難なカップル  ここから                               *
7060 '******************************************************
7070 open "config/Anzai_Aisyou/Difficult_for_couple1.dat" for input as #1
7080 for i=0 to 19
7090 input #1,buf_difficult_for_couple1$
7100 buf_difficult_for_couple1(i) = val(buf_difficult_for_couple1$)
7110 next i
7120 close #1
7130 open "config/Anzai_Aisyou/Difficult_for_couple2.dat" for input as #1
7140 for j=0 to 19
7150 input #1,buf_difficult_for_couple2$
7160 buf_difficult_for_couple2(j) = val(buf_difficult_for_couple2$)
7170 next j
7180 close #1
7190 '******************************************************
7200 '6.結婚への発展が困難なカップル  ここまで             *
7210 '******************************************************
7220 '7.愛し方にズレが出る二人 ここから                    *
7230 '******************************************************
7240 open "config/Anzai_Aisyou/Difference_of_love1.dat" for input as #1
7250 for i=0 to 19
7260 input #1,buf_difference_of_love1$
7270 buf_difference_of_love1(i) = val(buf_difference_of_love1$)
7280 next i
7290 close #1
7300 open "config/Anzai_Aisyou/Difference_of_love2.dat" for input as #1
7310 for j=0 to 19
7320 input #1,buf_difference_of_love2$
7330 buf_difference_of_love2(j) = val(buf_difference_of_love2$)
7340 next j
7350 close #1
7360 '******************************************************
7370 '7.愛し方にズレが出る二人 ここまで                    *
7380 '******************************************************
7390 '8.互いの価値観が噛み合わない相性 ここから            *
7400 '******************************************************
7410 open "config/Anzai_Aisyou/Difference_of_Kachikan1.dat" for input as #1
7420 for i=0 to 19
7430 input #1,buf_difference_of_KachiKan1$
7440 buf_difference_of_KachiKan1(i) = val(buf_difference_of_KachiKan1$)
7450 next i
7460 close #1
7470 open "config/Anzai_Aisyou/Difference_of_Kachikan2.dat" for input as #1
7480 for j=0 to 19
7490 input #1,buf_difference_of_KachiKan2$
7500 buf_difference_of_KachiKan2(j) = val(buf_difference_of_KachiKan2$)
7510 next j
7520 close #1
7530 '******************************************************
7540 '8.互いの価値観が噛み合わない相性 ここまで            *
7550 '******************************************************
7560 '相性占いタイプ ここから                              *
7570 '******************************************************
7580 open "config/Anzai_Aisyou/Result_Aisyou_type.dat" for input as #1
7590 for i=0 to 7
7600 line input #1,Result_Aisyou_type$(i)
7610 next i
7620 close #1
7630 '****************************************************
7640 'Data文  ここから                                　 *
7650 '****************************************************
7660 '1.理解し合えるカップル　ここから                   *
7670 '****************************************************
7680 'data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
7690 'data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
7700 '****************************************************
7710 '1.理解し合えるカップル　ここまで                   *
7720 '****************************************************
7730 '2.互いに自然体でつきあえるカップル ここから        *
7740 '****************************************************
7750 'data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
7760 'data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
7770 '****************************************************
7780 '2.互いに自然体でつきあえるカップル　ここまで        *
7790 '****************************************************
7800 '3.男性にとって居心地の良いカップル  ここから       *
7810 '****************************************************
7820 'data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
7830 'data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
7840 '****************************************************
7850 '3.男性にとって居心地の良いカップル ここまで        *
7860 '****************************************************
7870 '4.女性にとって居心地の良いカップル  ここから       *
7880 '****************************************************
7890 'data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
7900 'data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
7910 '****************************************************
7920 '4.女性にとって居心地の良いカップル  ここまで       *
7930 '****************************************************
7940 '5.恋愛経験を重ねた後なら愛を育める ここから        *
7950 '****************************************************
7960 'data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
7970 'data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
7980 '****************************************************
7990 '5.恋愛経験を重ねた後なら愛を育める ここまで        *
8000 '****************************************************
8010 '6.結婚への発展が困難なカップル ここから            *
8020 '****************************************************
8030 'data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8040 'data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
8050 '****************************************************
8060 '6.結婚への発展が困難なカップル ここまで            *
8070 '****************************************************
8080 '7.愛し方にズレが生じる二人  ここから               *
8090 '****************************************************
8100 'data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
8110 'data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
8120 '****************************************************
8130 '7.愛し方にずれが生じる二人  ここまで                               *
8140 '****************************************************
8150 '8.互いに価値観が噛み合わない相性　ここから                             *
8160 '****************************************************
8170 'data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
8180 'data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
8190 '****************************************************
8200 '8.互いに価値観が噛み合わない相性 ここまで         *
8210 '****************************************************
8220 '相性占い結果パターン ここから                    　*
8230 '****************************************************
8240 '0:理解し合える最良のカップル                        *
8250 '****************************************************
8260 'data "理解し合える最良のカップル"
8270 '****************************************************
8280 '1:互いに自然体で付き合えるカップル                 *
8290 '****************************************************
8300 'data "互いに自然体でつきあえるカップル"
8310 '****************************************************
8320 '2:男性にとって居心地の良い相性                   　*
8330 '****************************************************
8340 'data "男性にとって居心地の良い相性"
8350 '****************************************************
8360 '3:女性にとって居心地の良い相性                   　*
8370 '****************************************************
8380 'data "女性にとって居心地の良い相性"
8390 '****************************************************
8400 '4:恋愛経験を重ねた後なら愛を育める                 *
8410 '****************************************************
8420 'data "恋愛経験を重ねた後なら愛を育める"
8430 '****************************************************
8440 '5:結婚への発展が困難なカップル                     *
8450 '****************************************************
8460 'data "結婚への発展が困難なカップル"
8470 '****************************************************
8480 '6:愛し方にズレが生じる二人                         *
8490 '****************************************************
8500 'data "愛し方にずれが生じる二人"
8510 '****************************************************
8520 '7:互いに価値観が噛み合わない相性                   *
8530 '****************************************************
8540 'data "互いの価値観が噛み合わない相性"
8550 '************************************************
8560 'Data文   ここまで                              *
8570 '************************************************
8580 '相性占い結果パターン ここまで
8590 '*******************************
8600 '*****************************************************
8610 'メイン画面 Top画面1
8620 Main_Screen1:
8630 cls 3:talk "":font 48:color rgb(255,255,255)
8640 talk "メイン画面です。番号を選んでください"
8650 'グラフィック領域　ここから
8660 line (0,0)-(1080,60),rgb(0,0,255),bf
8670 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
8680 line (0,60)-(1080,560),rgb(127,255,212),bf
8690 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
8700 line (0,560)-(1080,740),rgb(0,255,0),bf
8710 'グラフィック領域 ここまで
8720 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
8730 Font 48
8740 '************************************************
8750 'Sprite                                         *
8760 '************************************************
8770 sp_on 0,1:sp_on 1,0:sp_on 2,0
8780 sp_put 0,(10,100),0,0
8790 '************************************************
8800 No=0:init"kb:4":y=0:key$="":bg=0
8810 print "◎姓名判断　メイン画面" + chr$(13)
8820 '************************************************
8830 '文字色:黒                                          *
8840 '************************************************
8850 color rgb(255,0,255)
8860 print " :1.姓名判断" + chr$(13)
8870 print " :2.姓名判断の設定" + chr$(13)
8880 print " :3.個人データーリスト" + chr$(13)
8890 print " :4.ヘルプ" + chr$(13)
8900 print " :5.プログラムの終了" + chr$(13)
8910 '*************************************************
8920 '文字:黒                                            *
8930 '*************************************************
8940 color rgb(0,0,0)
8950 locate 0,12
8960 print "1.姓名判断を選択" + chr$(13)
8970 Main_Screen2:
8980 y=0:key$="":bg=0
8990 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
9000 y=stick(1)
9010 key$=inkey$
9020 bg=strig(1)
9030 pause 2.55*100
9040 wend
9050 '**************************************************
9060 '1.下のキー  ここから
9070 '**************************************************
9080 if (y = 1 or key$ = chr$(31)) then
9090 select case No
9100 case 0:
9110 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9120 case 1:
9130 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9140 case 2:
9150 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9160 case 3:
9170 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9180 case 4:
9190 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
9200 end select
9210 endif
9220 '***************************************************
9230 '1. 下のキー　ここまで
9240 '***************************************************
9250 '***************************************************
9260 '2.上のキー ここから
9270 '***************************************************
9280 if (key$=chr$(30) or y=-1) then
9290 select case No
9300 case 0:
9310 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9320 case 1:
9330 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9340 case 2:
9350 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9360 case 3:
9370 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9380 case 4:
9390 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9400 end select
9410 endif
9420 '***************************************************
9430 '3.決定ボタン ここから
9440 '***************************************************
9450 if (bg=2 or key$=chr$(13)) then
9460 select case No
9470 case 0:
9480 sp_on 0,0:goto seimeihandan_top:
9490 case 1:
9500 sp_on 1,0:goto seimeihandan_setting:
9510 case 2:
9520 sp_on 2,0:goto Parsonal_data_top:
9530 case 3:
9540 sp_on 3,0: goto help:
9550 case 4:
9560 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9570 end select
9580 endif
9590 '***************************************************
9600 '3.決定ボタン ここまで
9610 '***************************************************
9620 '1.姓名判断トップ画面
9630 seimeihandan_top:
9640 cls:talk ""
9650 No=0:y=0:key$="":bg=0:talk""
9660 'タイトル文字:白
9670 font 48:color rgb(255,255,255),,rgb(176,196,222)
9680 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9690 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9700 sp_put 0,(10,100),0,0
9710 'グラフィック 描画領域　ここから
9720 cls 3
9730 '1.Title:青
9740 'Line 1
9750 line (0,0)-(1080,60),rgb(0,0,255),bf
9760 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
9770 'Line 2
9780 line (0,60)-(1080,450),rgb(127,255,212),bf
9790 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
9800 'Line 3
9810 line (0,450)-(1080,600),rgb(0,255,0),bf
9820 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
9830 'グラフィック 描画領域 ここまで
9840 color rgb(255,255,255)
9850 print"◎姓名判断の種類トップメニュー"+chr$(13)
9860 color rgb(255,0,255):print" :1.霊遺伝姓名学(1種類の占い)"+chr$(13)
9870 color rgb(255,0,255):print" :2.安斎流姓名判断(3種類の占い)"+chr$(13)
9880 COLOR rgb(255,0,255):print" :3.九星姓名判断(3種類の占い)"+chr$(13)
9890 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9900 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9910 seimeihandan_top2:
9920 y=0:key$="":bg=0
9930 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9940 key$=inkey$
9950 y=stick(1)
9960 bg=strig(1)
9970 pause 2.55*100
9980 wend
9990 '*************************************************
10000 '下のキー  ここから
10010 '*************************************************
10020 if (key$=chr$(31) or y=1) then
10030 select case No
10040 case 0:
10050 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10060 case 1:
10070 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10080 case 2:
10090 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10100 case 3:
10110 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10120 end select
10130 endif
10140 '*************************************************
10150 '下のキー　ここまで
10160 '*************************************************
10170 if (key$=chr$(30) or y=-1) then
10180 select case No
10190 case 0:
10200 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10210 case 1:
10220 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10230 case 2:
10240 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10250 case 3:
10260 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10270 end select
10280 endif
10290 '*************************************************
10300 '決定ボタン　ここから
10310 '*************************************************
10320 if (bg=2 or key$=chr$(13)) then
10330 select case No
10340 case 0:
10350 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10360 case 1:
10370 sp_on 1,0:goto Anzai_Top:
10380 case 2:
10390 sp_on 2,0:goto Kyusei_Top:
10400 case 3:
10410 sp_on 3,0:goto Main_Screen1:
10420 end select
10430 endif
10440 '*************************************************
10450 '決定ボタン　ここまで
10460 '*************************************************
10470 '１．姓名判断(九星姓名判断トップ)
10480 'グラフィック領域　ここから
10490 Kyusei_Top:
10500 cls 3:No=0:y=0:bg=0:key$="":talk""
10510 sp_on 0,1:sp_put 0,(10,100),0,0
10520 line (0,0)-(1080,60),rgb(0,0,250),bf
10530 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
10540 line (0,60)-(1080,460),rgb(127,255,212),bf
10550 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
10560 line (0,460)-(1080,680),rgb(0,255,0),bf
10570 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
10580 'グラフィック領域　ここまで
10590 font 48:color rgb(255,255,255),,rgb(176,196,222)
10600 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10610 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10620 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10630 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10640 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10650 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10660 locate 0,10:color RGB(0,0,0)
10670 print "1.人名の吉凶を見るを選択"
10680 Kyusei_Top2:
10690 bg=0:key$="":y=0
10700 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10710 key$=inkey$
10720 y=stick(1)
10730 bg=strig(1)
10740 pause 2.50*100
10750 wend
10760 '****************************************************
10770 '下のキー　ここから
10780 '*****************************************************
10790 if (y=1 or key$=chr$(30)) then
10800 select case No
10810 case 0:
10820 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10830 case 1:
10840 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10850 case 2:
10860 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10870 case 3:
10880 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10890 end select
10900 endif
10910 '*****************************************************
10920 '下のキー　ここまで
10930 '*****************************************************
10940 '*****************************************************
10950 '上のキー　ここから
10960 '*****************************************************
10970 if (y=-1 or key$=chr$(31)) then
10980 select case No
10990 case 0:
11000 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
11010 case 1:
11020 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
11030 case 2:
11040 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
11050 case 3:
11060 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
11070 end select
11080 endif
11090 '*****************************************************
11100 '上のキー　ここまで
11110 '*****************************************************
11120 '*****************************************************
11130 '決定ボタン　ここから
11140 '*****************************************************
11150 if (key$=chr$(13) or bg=2) then
11160 select case No
11170 case 0:
11180 sp_on 0,0:goto Parson_name_kikkyo:
11190 case 1:
11200 sp_on 1,0:goto nick_name_check:
11210 case 2:
11220 sp_on 2,0:goto name_inyo_check:
11230 case 3:
11240 sp_on 3,0:goto seimeihandan_top:
11250 end select
11260 endif
11270 '*****************************************************
11280 '決定ボタン　ここまで
11290 '*****************************************************
11300 '2.姓名判断 安斎流姓名判断　トップ画面
11310 '2-1名前の姓の部分を入力
11320 'グラフィック領域　ここから
11330 Anzai_Top_Screen:
11340 cls 3:LINE (0,0)-(1080,60),rgb(0,0,255),bf
11350 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11360 line (0,60)-(1080,260),rgb(127,255,212),bf
11370 pen 5:line(0,57)-(1077,257),rgb(0,0,255),b
11380 line (0,260)-(1080,350),rgb(0,255,0),bf
11390 pen 5:line(0,257)-(1077,347),rgb(0,0,255),b
11400 font 48:talk"":init"KB:2"
11410 'グラフィック領域 ここまで
11420 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11430 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11440 COLOR rgb(255,0,255)
11450 print"名前を2回に分けて入力してください"+chr$(13)
11460 print"名前の姓の部分を入れてください"+chr$(13)
11470 color rgb(0,0,0)
11480 input"名前の姓:",bufname$
11490 buff1=len(bufname$)
11500 '2-2名前の名の部分を入力
11510 'グラフィック描画領域　ここから
11520 cls 3:init"kb:2"
11530 line (0,0)-(1080,60),rgb(0,0,255),bf
11540 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
11550 line (0,60)-(1080,200),rgb(127,255,212),bf
11560 pen 5:line(0,57)-(1077,197),rgb(0,0,255),b
11570 line (0,200)-(1080,260),rgb(0,255,0),bf
11580 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
11590 'グラフィック描画領域 ここまで
11600 COLOR rgb(255,255,255)
11610 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11620 talk"つぎに、名前のめいの部分を入れてください"
11630 color rgb(255,0,255)
11640 print"名前の名の部分を入れてください"+chr$(13)
11650 color rgb(0,0,0)
11660 input"名前の名:",bufname2$
11670 buff2=len(bufname2$)
11680 bufff=buff1+buff2
11690 select case bufff
11700 '姓1文字,名1文字
11710 case 2:
11720 cls
11730 '天運:buf_tenunn
11740 buf_tenunn=char_count(bufname$)
11750 '地運:buf_chiunn
11760 buf_chiunn=char_count(bufname2$)
11770 '人運 = 天運 + 地運
11780 buf_jinunn=buf_tenunn + buf_chiunn
11790 '外運 = 天運 + 人運
11800 buf_gaiunn = buf_tenunn + buf_chiunn
11810 '総数=buf_gaiunn
11820 buf_total=buf_gaiunn
11830 goto Result_Anzai:
11840 '姓１，名:2
11850 case 3:
11860 cls:
11870 if buff1=1 and buff2=2 then
11880 '1.天運:buf_tenunn
11890 buf_tenunn=char_count(bufname$)
11900 '2文字目の文字
11910 bufer_name2$(0)=Mid$(bufname2$,1,1)
11920 '3文字目の文字
11930 bufer_name2$(1)=Mid$(bufname2$,2,1)
11940 '2.人運
11950 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11960 '3.地運:buf_chiunn
11970 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11980 '4外運:buf_gaiunn
11990 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12000 '5.総数:buf_total
12010 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12020 goto Result_Anzai:
12030 endif
12040 if buff1=2 and buff2=1 then
12050 bufer_name$(0)=Mid$(bufname$,1,1)
12060 bufer_name$(1)=Mid$(bufname$,2,1)
12070 bufer_name2$(0)=Mid$(bufname$,1,1)
12080 '1.天運
12090 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12100 '2.人運
12110 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12120 '3.地運
12130 buf_chiunn=char_count(bufer_name2$(0))
12140 '4.外運
12150 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12160 '5.総数
12170 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12180 goto Result_Anzai:
12190 endif
12200 case 4:
12210 if buff1=2 and buff2=2 then
12220 bufer_name$(0)=Mid$(bufname$,1,1)
12230 bufer_name$(1)=Mid$(bufname$,2,1)
12240 bufer_name2$(0)=Mid$(bufname2$,1,1)
12250 bufer_name2$(1)=Mid$(bufname2$,2,1)
12260 '1.天運
12270 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12280 '2.人運
12290 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12300 '3.地運
12310 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12320 '4.外運
12330 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12340 '5.総数
12350 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12360 goto Result_Anzai:
12370 endif
12380 'パターン2 姓3文字 名1文字 total4文字
12390 if buff1=3 and buff2=1 then
12400 bufer_name$(0)=Mid$(bufname$,1,1)
12410 bufer_name$(1)=Mid$(bufname$,2,1)
12420 bufer_name$(2)=Mid$(bufname$,3,1)
12430 bufer_name2$(0)=Mid$(bufname2$,1,1)
12440 '1.天運
12450 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12460 '2.人運
12470 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12480 '3.地運
12490 buf_chiunn=char_count(bufer_name2$(0))
12500 '4.外運
12510 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12520 '5.総運
12530 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12540 goto Result_Anzai:
12550 endif
12560 'パターン３ 姓1,名３  合計４文字
12570 if buff1=1 and buff2=3 then
12580 bufer_name$(0)=Mid$(bufname$,1,1)
12590 bufer_name2$(0)=Mid$(bufname2$,1,1)
12600 bufer_name2$(1)=Mid$(bufname2$,2,1)
12610 bufer_name2$(2)=Mid$(bufname2$,3,1)
12620 '1.天運
12630 buf_tenunn = char_count(bufer_name$(0))
12640 '2.人運
12650 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12660 '3.地運
12670 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12680 '4.外運
12690 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12700 '5.総運
12710 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12720 goto Result_Anzai:
12730 endif
12740 case 5:
12750 '５文字の名前
12760 '1.  3文字姓 2字名
12770 if buff1=3 and buff2=2 then
12780 bufer_name$(0)=Mid$(bufname$,1,1)
12790 bufer_name$(1)=Mid$(bufname$,2,1)
12800 bufer_name$(2)=Mid$(bufname$,3,1)
12810 bufer_name2$(0)=Mid$(bufname2$,1,1)
12820 bufer_name2$(1)=Mid$(bufname2$,2,1)
12830 '1.天運
12840 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12850 '2.人運
12860 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12870 '3.地運
12880 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12890 '4.外運
12900 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12910 '5.総運
12920 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12930 goto Result_Anzai:
12940 endif
12950 if buff1=2 and buff2=3 then
12960 bufer_name$(0)=Mid$(bufname$,1,1)
12970 bufer_name$(1)=Mid$(bufname$,2,1)
12980 bufer_name2$(0)=Mid$(bufname2$,1,1)
12990 bufer_name2$(1)=Mid$(bufname2$,2,1)
13000 bufer_name2$(2)=Mid$(bufname2$,3,1)
13010 '1.天運
13020 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
13030 '2.人運
13040 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13050 '3.地運
13060 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13070 '4.外運
13080 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13090 '5.総運
13100 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13110 goto Result_Anzai:
13120 endif
13130 if buff1=4 and buff2=1 then
13140 bufer_name$(0)=Mid$(bufname$,1,1)
13150 bufer_name$(1)=mid$(bufname$,2,1)
13160 bufer_name$(2)=mid$(bufname$,3,1)
13170 bufer_name$(3)=mid$(bufname$,4,1)
13180 bufer_name2$(0)=mid$(bufname2$,1,1)
13190 '1.天運
13200 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13210 '2.人運
13220 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13230 '3.地運
13240 buf_chiunn=char_count(bufer_name2$(0))
13250 '4.外運
13260 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13270 '5.総運
13280 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13290 goto Result_Anzai:
13300 endif
13310 case 6:
13320 '3字姓 3字名
13330 if buff1=3 and buff2=3 then
13340 bufer_name$(0)=Mid$(bufname$,1,1)
13350 bufer_name$(1)=Mid$(bufname$,2,1)
13360 bufer_name$(2)=Mid$(bufname$,3,1)
13370 bufer_name2$(0)=Mid$(bufname2$,1,1)
13380 bufer_name2$(1)=Mid$(bufname2$,2,1)
13390 bufer_name2$(2)=Mid$(bufname2$,3,1)
13400 '1.天運
13410 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13420 '2.人運
13430 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13440 '3.地運
13450 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13460 '4.外運
13470 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13480 '5.総運
13490 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13500 goto Result_Anzai:
13510 endif
13520 '4字姓 2字名
13530 if buff1=4 and buff2=2 then
13540 bufer_name$(0)=Mid$(bufname$,1,1)
13550 bufer_name$(1)=Mid$(bufname$,2,1)
13560 bufer_name$(2)=Mid$(bufname$,3,1)
13570 bufer_name$(3)=Mid$(bufname$,4,1)
13580 bufer_name2$(0)=Mid$(bufname2$,1,1)
13590 bufer_name2$(1)=Mid$(bufname2$,2,1)
13600 '1.天運
13610 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13620 '2.人運
13630 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13640 '3.地運
13650 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13660 '4.外運
13670 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13680 '5.総運
13690 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13700 goto Result_Anzai:
13710 endif
13720 '4字姓 3字名
13730 case 7:
13740 if buff1=4 and buff2=3 then
13750 bufer_name$(0)=Mid$(bufname$,1,1)
13760 bufer_name$(1)=Mid$(bufname$,2,1)
13770 bufer_name$(2)=Mid$(bufname$,3,1)
13780 bufer_name$(3)=Mid$(bufname$,4,1)
13790 bufer_name2$(0)=Mid$(bufname2$,1,1)
13800 bufer_name2$(1)=Mid$(bufname2$,2,1)
13810 bufer_name2$(2)=Mid$(bufname2$,3,1)
13820 '1.天運
13830 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13840 '2.人運
13850 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13860 ' 3.地運
13870 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13880 '4.外運
13890 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13900 '5.総運
13910 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13920 goto Result_Anzai:
13930 endif
13940 case else:
13950 end select
13960 '2.設定
13970 seimeihandan_setting:
13980 font 46:color rgb(0,0,0),,rgb(176,196,222)
13990 No=0:y=0:key$="":bg=0:talk""
14000 sp_on 0,1:sp_put 0,(10,100),0,0
14010 talk"設定画面です。番号を選んでエンターキーを押してください"
14020 'グラフィック領域　ここから
14030 cls 3:
14040 line (0,0)-(1080,60),rgb(0,0,255),bf
14050 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
14060 line (0,60)-(1080,560),rgb(127,255,212),bf
14070 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
14080 line (0,560)-(1080,750),rgb(0,255,0),bf
14090 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14100 'グラフィック領域 ここまで
14110 '1行目　文字色　 白
14120 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14130 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14140 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14150 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14160 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14170 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14180 COLOR rgb(0,0,0):locate 0,12:
14190 print"1.登録文字の確認を選択"+chr$(13)
14200 seimeihandan_setting2:
14210 y=0:key$="":bg=0
14220 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14230 key$=inkey$
14240 y=stick(1)
14250 bg=strig(1)
14260 pause 2.50*100
14270 wend
14280 '****************************************************
14290 '1.下のカーソル　ここから
14300 '****************************************************
14310 if (key$=chr$(31) or y=1) then
14320 select case No
14330 case 0:
14340 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14350 case 1:
14360 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14370 case 2:
14380 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14390 case 3:
14400 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14410 case 4:
14420 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14430 end select
14440 endif
14450 '*****************************************************
14460 '1.下のカーソル　ここまで
14470 '*****************************************************
14480 '*****************************************************
14490 '2.上のカーソル　ここから
14500 '*****************************************************
14510 if (key$=chr$(30) or y=-1) then
14520 select case No
14530 case 0:
14540 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14550 case 1:
14560 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14570 case 2:
14580 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14590 case 3:
14600 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14610 case 4:
14620 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14630 end select
14640 endif
14650 '******************************************************
14660 '2.上のカーソル　ここまで
14670 '******************************************************
14680 '******************************************************
14690 '3.決定ボタン　ここから
14700 '******************************************************
14710 if (key$=chr$(13) or bg=2) then
14720 select case No
14730 case 0:
14740 sp_on 0,0:goto Entry_moji_Top:
14750 case 1:
14760 sp_on 1,0:goto Entry_moji_check:
14770 case 2:
14780 sp_on 2,0:goto Moji_Kikkyo_Top:
14790 case 3:
14800 sp_on 3,0:goto Main_Screen1:
14810 case 4:
14820 sp_on 4,0:talk "プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14830 end select
14840 endif
14850 '******************************************************
14860 '3.決定ボタン　ここまで
14870 '******************************************************
14880 '3 番号で吉凶を見る 入力
14890 Moji_Kikkyo_Top:
14900 font 46:color rgb(0,0,0),,rgb(176,196,222)
14910 init "kb:2"
14920 'グラフィック描画領域　ここから
14930 cls 3:talk""
14940 line (0,0)-(1080,60),rgb(0,0,255),bf
14950 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
14960 line (0,60)-(1080,255),rgb(127,255,212),bf
14970 PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
14980 line (0,255)-(1080,350),rgb(0,255,0),bf
14990 pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
15000 'グラフィック描画領域 ここまで
15010 color rgb(255,255,255)
15020 print"画数での吉凶判定"+chr$(13)
15030 color rgb(255,0,255)
15040 print"画数を入れてください"+chr$(13)
15050 print"(Max:81文字)"+chr$(13)
15060 color rgb(0,0,0)
15070 Input"文字の画数:",Number
15080 if Number > 81 then goto Moji_Kikkyo_Top:
15090 if Number <=81 then goto Moji_Kikkyo:
15100 '3.番号で吉凶を見る 結果表示
15110 'グラフィック描画領域　ここから
15120 Moji_Kikkyo:
15130 cls 3:init "kb:4":key$="":bg=0
15140 line (0,0)-(700,60),rgb(0,0,255),bf
15150 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15160 line (0,60)-(700,260),rgb(127,255,212),bf
15170 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15180 line (0,260)-(700,350),rgb(0,255,0),bf
15190 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15200 'グラフィック描画領域　ここまで
15210 color rgb(255,255,255)
15220 print "画数で吉凶を求める"+chr$(13)
15230 color rgb(255,0,255)
15240 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15250 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15260 while (key$<>chr$(13) and bg <> 2)
15270 key$=inkey$
15280 bg=strig(1)
15290 pause 2.50*100
15300 wend
15310 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15320 '3.ヘルプ
15330 help:
15340 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15350 No=0:y=0:key$="":bg=0
15360 talk""
15370 '描画領域 ここから
15380 line (0,0) - (1080,60),rgb(0,0,255),bf
15390 sp_on 0,1:sp_put 0,(10,100),0,0
15400 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
15410 line (0,60) - (1080,570),rgb(127,255,212),bf
15420 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
15430 line (0,570) - (1080,650),rgb(0,255,0),bf
15440 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
15450 '描画領域　ここまで
15460 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15470 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15480 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15490 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15500 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15510 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
15520 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15530 color rgb(0,0,0)
15540 locate 0,12:print "1.バージョン情報を選択"
15550 help2:
15560 y=0:key$="":bg=0
15570 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15580 key$=inkey$
15590 y=stick(1)
15600 bg=strig(1)
15610 pause 2.50*100
15620 wend
15630 if (y=1 or key$=chr$(30)) then
15640 select case No
15650 case 0:
15660 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15670 case 1:
15680 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15690 case 2:
15700 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15710 case 3:
15720 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15730 case 4:
15740 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15750 end select
15760 endif
15770 if (y=-1 or key$=chr$(31)) then
15780 select case No
15790 case 0:
15800 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15810 case 1:
15820 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15830 case 2:
15840 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15850 case 3:
15860 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15870 case 4:
15880 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15890 end select
15900 endif
15910 if (key$=chr$(13) or bg=2) then
15920 select case No
15930 case 0:
15940 sp_on 0,0:goto Version_info:
15950 case 1:
15960 sp_on 1,0:goto Document_info:
15970 case 2:
15980 sp_on 2,0:goto Config_Setting:
15990 case 4:
16000 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16010 case 3:
16020 sp_on 3,0:goto Main_Screen1:
16030 end select
16040 endif
16050 'Menu1　画面
16060 talk"調べたい名前のみよじをいれてください"
16070 'グラフィック描画領域　ここから
16080 Parson_name_kikkyo:
16090 cls 3:init "KB:2"
16100 line (0,0)-(1080,60),rgb(0,0,255),bf
16110 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16120 line (0,60)-(1080,180),rgb(127,255,212),bf
16130 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
16140 line (0,180)-(1080,250),rgb(0,255,0),bf
16150 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
16160 'グラフィック描画領域　ここまで
16170 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16180 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16190 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16200 cls
16210 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16220 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16230 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16240 goto complate_Kyusei:
16250 'メニュー6　バージョン表示
16260 'グラフィック　描画　領域　 ここから
16270 Version_info:
16280 cls 3:bg=0:talk ""
16290 line (0,0)-(1080,60),rgb(0,0,255),bf
16300 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
16310 line (0,60)-(1080,665),rgb(127,255,212),bf
16320 pen 5:line(0,57)-(1077,662),rgb(0,0,255),b
16330 line (0,665)-(1080,750),rgb(0,255,0),bf
16340 pen 5:line(0,662)-(1077,747),rgb(0,0,255),b
16350 'グラフィック　描画 領域　 ここまで
16360 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16370 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16380 color rgb(255,0,255):PRINT"Ver:243.2024.12.22" + chr$(13)
16390 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字" + chr$(13)
16400 color rgb(255,0,255):print"アルファベット（大文字、小文字)" + chr$(13)
16410 color rgb(255,0,255):print"対応漢字画数：1画から24画まで" + chr$(13)
16420 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16430 'ここを書き換える
16440 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.43です"
16450 color rgb(0,0,0):print"エンターキーを押してください"
16460 Version_info2:
16470 bg=0
16480 while (bg<>2)
16490 bg=strig(1)
16500 pause 2.50*100
16510 wend
16520 if bg = 2  then beep:goto Main_Screen1:
16530 complate_Kyusei:
16540 '文字数を求める変数
16550 buf_char_size=len(name$)
16560 buf_char_size2=len(name2$)
16570 '入力した文字を代入する変数
16580 '入力した文字を配列に代入する処理
16590 '姓名判断データー文字比較
16600 '画数を求める関数
16610 func char_count(buf_count$)
16620 count=0:buffer=0
16630 '1画の文字 23文字
16640 for j=0 to ((Moji_1)-1)
16650 if buf_count$=buf_char_hiragana1$(j) then
16660 count =1:
16670 endif
16680 next j
16690 '2画の文字
16700 for j=0 to ((Moji_2)-1)
16710 if buf_count$=buf_char_hiragana2$(j)  then
16720 count = 2:
16730 endif
16740 next j
16750 for j=0 to ((Moji_3)-1)
16760 if buf_count$=buf_char_hiragana3$(j) then
16770 count =3:
16780 endif
16790 next j
16800 for j=0 to ((Moji_4)-1)
16810 if buf_count$=buf_char_hiragana4$(j) then
16820 count = 4:
16830 endif
16840 next j
16850 for j=0 to ((Moji_5)-1)
16860 if buf_count$=buf_char_hiragana5$(j) then
16870 count = 5:
16880 endif
16890 next j
16900 for j=0 to ((Moji_6)-1)
16910 if buf_count$=buf_char_hiragana6$(j) then
16920 count= 6
16930 endif
16940 next j
16950 for  j=0 to ((Moji_7)-1)
16960 if buf_count$=buf_char_hiragana7$(j) then
16970 count=  7
16980 endif
16990 next j
17000 for j=0 to ((Moji_8)-1)
17010 if buf_count$=buf_char_hiragana8$(j) then
17020 count= 8
17030 endif
17040 next j
17050 for j=0 to ((Moji_9)-1)
17060 if buf_count$=buf_char_hiragana9$(j) then
17070 count=9
17080 endif
17090 next j
17100 for j=0 to ((Moji_10)-1)
17110 if buf_count$=buf_char_hiragana10$(j) then
17120 count=10
17130 endif
17140 next j
17150 for j=0 to ((Moji_11)-1)
17160 if buf_count$=buf_char_hiragana11$(j) then
17170 count=11
17180 endif
17190 next j
17200 for j=0 to  ((Moji_12)-1)
17210 if buf_count$=buf_char_hiragana12$(j) then
17220 count=12
17230 endif
17240 next j
17250 for j=0 to ((Moji_13)-1)
17260 if buf_count$=buf_char_hiragana13$(j) then
17270 count=13
17280 endif
17290 next j
17300 for j=0 to ((Moji_14)-1)
17310 if buf_count$=buf_char_hiragana14$(j) then
17320 count=14
17330 endif
17340 next j
17350 for j=0 to ((Moji_15)-1)
17360 if buf_count$=buf_char_hiragana15$(j) then
17370 count=15
17380 endif
17390 next j
17400 for j=0 to ((Moji_16)-1)
17410 if buf_count$=buf_char_hiragana16$(j) then
17420 count=16
17430 endif
17440 next j
17450 for j=0 to ((Moji_17)-1)
17460 if buf_count$=buf_char_hiragana17$(j) then
17470 count=17
17480 endif
17490 next j
17500 for j=0 to ((Moji_18)-1)
17510 if buf_count$=buf_char_hiragana18$(j) then
17520 count=18
17530 endif
17540 next j
17550 for j=0 to ((Moji_19)-1)
17560 if buf_count$=buf_char_hiragana19$(j) then
17570 count=19
17580 endif
17590 next j
17600 for j=0 to ((Moji_20)-1)
17610 if buf_count$=buf_char_hiragana20$(j) then
17620 count=20
17630 endif
17640 next i
17650 for j=0 to ((Moji_21)-1)
17660 if buf_count$=buf_char_hiragana21$(j) then
17670 count=21
17680 endif
17690 next j
17700 for j=0 to ((Moji_22)-1)
17710 if buf_count$=buf_char_hiragana22$(j) then
17720 count=22
17730 endif
17740 next j
17750 for j=0 to ((Moji_23)-1)
17760 if buf_count$=buf_char_hiragana23$(j) then
17770 count=23
17780 endif
17790 next j
17800 for j=0 to ((Moji_24)-1)
17810 if buf_count$=buf_char_hiragana24$(j) then
17820 count=24
17830 endif
17840 buffer = count
17850 next j
17860 endfunc buffer
17870 func show_sex_type$(sex$)
17880 buf_number=val(Mid$(sex$,4,1))
17890 if buf_number = 1 then
17900 buf_show_sex_type$="性別:女性"
17910 else
17920 if buf_number=2 then
17930 buf_show_sex_type$="性別:男性"
17940 endif
17950 endif
17960 endfunc buf_show_sex_type$
17970 '合計を求める関数
17980 func totalcounts(buffers$)
17990 buffers=0:
18000 for i=0 to len(buffers$)-1
18010 buffers=buffers+char_count(buffers$)
18020 next i
18030 endfunc buffers
18040 buf_count2=0:buf_count3=0
18050 '1.苗字の文字数
18060 for n=0 to (buf_char_size-1)
18070 buf_Input_data$(n)=mid$(name$,n+1,1)
18080 next n
18090 for i=0 to (buf_char_size-1)
18100 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18110 next i
18120 '2.名の文字数
18130 for n2=0 to (buf_char_size2-1)
18140 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18150 next n2
18160 for i2=0 to (buf_char_size2-1)
18170 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18180 next i2
18190 '総数を出す
18200 select case (buf_char_size + buf_char_size2)
18210 case 6:
18220 if ((buf_char_size=4) and (buf_char_size2=2)) then
18230 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18240 endif
18250 if ((buf_char_size=3) and (buf_char_size2=3)) then
18260 if buf_Input_data$(1)="々" then
18270 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18280 else
18290 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18300 endif
18310 endif
18320 case 5:
18330 if ((buf_char_size=4) and (buf_char_size2=1)) then
18340 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18350 endif
18360 if ((buf_char_size=2) and (buf_char_size2=3)) then
18370 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18380 endif
18390 if ((buf_char_size=3) and (buf_char_size2=2)) then
18400 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18410 endif
18420 case 4:
18430 if ((buf_char_size=1) and (buf_char_size2=3)) then
18440 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18450 endif
18460 if ((buf_char_size=2) and (buf_char_size2=2)) then
18470 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18480 endif
18490 if ((buf_char_size=3) and (buf_char_size2=1)) then
18500 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18510 endif
18520 case 3:
18530 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18540 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18550 endif
18560 if ((buf_char_size=2) and (buf_char_size2=1)) then
18570 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18580 endif
18590 case 2:
18600 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18610 case else:
18620 end select
18630 '文字の総数をだす
18640 total_name$ = name$ + name2$
18650 '1.姓星を求める
18660 select case buf_char_size
18670 '苗字1文字のとき
18680 case 1:
18690 buf_seisei = char_count(buf_Input_data$(0)) + 1
18700 '苗字2文字の時
18710 case 2:
18720 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18730 '苗字3文字のとき
18740 case 3:
18750 if (buf_Input_data$(1)="々")  then
18760 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18770 else
18780 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18790 endif
18800 '苗字4文字のとき
18810 case 4:
18820 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18830 case else:
18840 end select
18850 '2.主星をだす
18860 '2.主星
18870 select case (buf_char_size + buf_char_size2)
18880 '姓名5文字のとき
18890 case 6:
18900 if ((buf_char_size=4) and (buf_char_size2=2)) then
18910 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18920 endif
18930 if ((buf_char_size=3) and (buf_char_size2=3)) then
18940 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18950 endif
18960 case 5:
18970 if ((buf_char_size=4) and (buf_char_size2=1)) then
18980 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18990 endif
19000 if ((buf_char_size=2) and (buf_char_size2=3)) then
19010 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19020 endif
19030 if ((buf_char_size=3) and (buf_char_size2=2)) then
19040 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19050 endif
19060 '姓名4文字のとき
19070 case 4:
19080 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19090 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19100 endif
19110 if ((buf_char_size=1) and (buf_char_size2=3)) then
19120 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19130 endif
19140 if ((buf_char_size=3) and (buf_char_size2=1)) then
19150 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19160 endif
19170 '姓名3文字のとき
19180 case 3:
19190 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19200 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19210 else
19220 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19230 endif
19240 case 2:
19250 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19260 case else:
19270 end select
19280 '3.名星を求める
19290 select case (buf_char_size + buf_char_size2)
19300 case 6:
19310 if ((buf_char_size=3) and (buf_char_size2=3)) then
19320 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19330 endif
19340 if ((buf_char_size=4) and (buf_char_size2=2)) then
19350 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19360 endif
19370 case 5:
19380 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19390 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19400 endif
19410 if ((buf_char_size=3) and (buf_char_size2=2)) then
19420 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19430 endif
19440 if ((buf_char_size=2) and (buf_char_size2=3))  then
19450 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19460 endif
19470 case 4:
19480 if ((buf_char_size=2) and (buf_char_size2=2)) then
19490 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19500 endif
19510 if ((buf_char_size=1) and (buf_char_size2=3)) then
19520 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19530 endif
19540 if ((buf_char_size=3) and (buf_char_size2=1)) then
19550 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19560 endif
19570 case 3:
19580 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19590 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19600 endif
19610 if ((buf_char_size=2) and (buf_char_size2=1)) then
19620 buf_meisei=char_count(buf_Input_data2$(0))+1
19630 endif
19640 case 2:
19650 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19660 case else:
19670 end select
19680 '4.外星を求める
19690 select case (buf_char_size + buf_char_size2)
19700 case 6:
19710 if buf_Input_data$(1)="々"  then
19720 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19730 else
19740 if ((buf_char_size=4) and (buf_char_size2=2)) then
19750 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19760 else
19770 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19780 endif
19790 endif
19800 case 5:
19810 if ((buf_char_size=4) and (buf_char_size2=1)) then
19820 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19830 endif
19840 if ((buf_char_size=3) and (buf_char_size2=2)) then
19850 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19860 endif
19870 if ((buf_char_size=2) and (buf_char_size2=3)) then
19880 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19890 endif
19900 case 4:
19910 if ((buf_char_size=2) and (buf_char_size2=2)) then
19920 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
19930 endif
19940 if ((buf_char_size=1) and (buf_char_size2=3)) then
19950 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19960 endif
19970 if ((buf_char_size=3) and (buf_char_size2=1)) then
19980 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
19990 endif
20000 case 3:
20010 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20020 buf_gaisei=1+char_count(buf_Input_data2$(1))
20030 endif
20040 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20050 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20060 endif
20070 case 2:
20080 buf_gaisei = 2
20090 case else:
20100 end select
20110 '診断結果表示
20120 '1.姓星を出す
20130 'グラフィック描画領域　ここから
20140 Result_Kyusei_Kikkyo:
20150 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20160 '縦の画面
20170 '1行目
20180 line (0,0)-(1500,60),rgb(0,0,255),bf
20190 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20200 '2行目
20210 line (0,60)-(1500,425),rgb(127,255,212),bf
20220 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20230 '3行目
20240 line (0,485)-(1500,425),rgb(0,255,0),bf
20250 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20260 '横の画面　吉凶のランク表
20270 'グラフィック描画領域　ここまで
20280 talk"診断結果です":font 32
20290 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20300 color Rgb(255,0,255)
20310 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20320 '2.主星を出す
20330 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20340 '3.名星を求める
20350 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20360 '4.外星を求める
20370 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20380 '5.総数を出す
20390 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20400 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20410 color rgb(0,0,0)
20420 print"エンターキーを押してください"
20430 while (key$ <> chr$(13) and bg <> 2)
20440 key$=inkey$
20450 bg=strig(1)
20460 pause 2.50*100
20470 wend
20480 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20490 '2.主星を出す
20500 'メニュー3 登録文字の確認 ここから
20510 'グラフィック領域　ここから
20520 'タイトル青 文字:白
20530 Entry_moji_Top:
20540 talk ""
20550 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
20560 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
20570 line (0,62)-(1080,155),rgb(0,255,255),bf
20580 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
20590 line (0,155)-(1080,260),rgb(0,255,0),bf
20600 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
20610 'グラフィック領域　ここまで
20620 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20630 '文字:白
20640 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20650 '文字:アクア
20660 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20670 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20680 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20690 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20700 '1画の文字
20710 for i=0 to ((Moji_1)-1)
20720 if (name$=buf_char_hiragana1$(i)) then
20730 buffer_count=1:goto Moji_count_check:
20740 endif
20750 next i
20760 '2画の文字
20770 for i=0 to ((Moji_2)-1)
20780 if (name$=buf_char_hiragana2$(i)) then
20790 buffer_count=2:goto Moji_count_check:
20800 endif
20810 next i
20820 '3画の文字
20830 for i=0 to ((Moji_3)-1)
20840 if (name$=buf_char_hiragana3$(i)) then
20850 buffer_count=3:goto Moji_count_check:
20860 endif
20870 next i
20880 '4画の文字
20890 for i=0 to ((Moji_4)-1)
20900 if (name$=buf_char_hiragana4$(i)) then
20910 buffer_count=4:goto Moji_count_check:
20920 endif
20930 next i
20940 '5画の文字
20950 for i=0 to ((Moji_5)-1)
20960 if (name$=buf_char_hiragana5$(i)) then
20970 buffer_count=5:goto Moji_count_check:
20980 endif
20990 next i
21000 '6画の文字
21010 for i=0 to ((Moji_6)-1)
21020 if (name$=buf_char_hiragana6$(i)) then
21030 buffer_count=6:goto Moji_count_check:
21040 endif
21050 next i
21060 '7画の文字
21070 for i=0 to ((Moji_7)-1)
21080 if (name$=buf_char_hiragana7$(i)) then
21090 buffer_count=7:goto Moji_count_check:
21100 endif
21110 next i
21120 '8画の文字 120 文字
21130 for i=0 to ((Moji_8)-1)
21140 if (name$=buf_char_hiragana8$(i)) then
21150 buffer_count=8:goto Moji_count_check:
21160 endif
21170 next i
21180 '9画の文字  103文字
21190 for i=0 to ((Moji_9)-1)
21200 if (name$=buf_char_hiragana9$(i)) then
21210 buffer_count=9:goto Moji_count_check:
21220 endif
21230 next i
21240 '10画の文字 98文字
21250 for i=0 to ((Moji_10)-1)
21260 if (name$=buf_char_hiragana10$(i)) then
21270 buffer_count=10:goto Moji_count_check:
21280 endif
21290 next i
21300 '11画の文字 98文字
21310 for i=0 to ((Moji_11)-1)
21320 if (name$=buf_char_hiragana11$(i)) then
21330 buffer_count=11:goto Moji_count_check:
21340 endif
21350 next i
21360 '12画の文字
21370 for i=0 to ((Moji_12)-1)
21380 if (name$=buf_char_hiragana12$(i)) then
21390 buffer_count=12:goto Moji_count_check:
21400 endif
21410 next i
21420 '13画の文字
21430 for i=0 to ((Moji_13)-1)
21440 if (name$=buf_char_hiragana13$(i)) then
21450 buffer_count=13:goto Moji_count_check:
21460 endif
21470 next i
21480 '14画の文字
21490 for i=0 to ((Moji_14)-1)
21500 if (name$=buf_char_hiragana14$(i)) then
21510 buffer_count=14:goto Moji_count_check:
21520 endif
21530 next i
21540 '15画の文字
21550 for i=0 to ((Moji_15)-1)
21560 if (name$=buf_char_hiragana15$(i)) then
21570 buffer_count=15:goto Moji_count_check:
21580 endif
21590 next i
21600 '16画の文字
21610 for i=0 to ((Moji_16)-1)
21620 if (name$=buf_char_hiragana16$(i)) then
21630 buffer_count=16:goto Moji_count_check:
21640 endif
21650 next i
21660 '17画の文字
21670 for i=0 to ((Moji_17)-1)
21680 if (name$=buf_char_hiragana17$(i)) then
21690 buffer_count=17:goto Moji_count_check:
21700 endif
21710 next i
21720 '18画の文字 25
21730 for i=0 to ((Moji_18)-1)
21740 if (name$=buf_char_hiragana18$(i)) then
21750 buffer_count=18:goto Moji_count_check:
21760 endif
21770 next i
21780 '19画の文字 17
21790 for i=0 to ((Moji_19)-1)
21800 if (name$=buf_char_hiragana19$(i)) then
21810 buffer_count=19:goto Moji_count_check:
21820 endif
21830 next i
21840 '20画の文字 13
21850 for i=0 to ((Moji_20)-1)
21860 if (name$=buf_char_hiragana20$(i)) then
21870 buffer_count=20:goto Moji_count_check:
21880 endif
21890 next i
21900 '21画の文字 6
21910 for i=0 to ((Moji_21)-1)
21920 if (name$=buf_char_hiragana21$(i)) then
21930 buffer_count=21:goto Moji_count_check:
21940 endif
21950 next i
21960 '22画の文字 4
21970 for i=0 to ((Moji_22)-1)
21980 if (name$=buf_char_hiragana22$(i)) then
21990 buffer_count=22:goto Moji_count_check:
22000 endif
22010 next i
22020 '23画の文字 3
22030 for i=0 to ((Moji_23)-1)
22040 if (name$=buf_char_hiragana23$(i)) then
22050 buffer_count=23:goto Moji_count_check:
22060 endif
22070 next i
22080 '24画の文字
22090 for i=0 to ((Moji_24)-1)
22100 if (name$=buf_char_hiragana24$(i)) then
22110 buffer_count=24:goto Moji_count_check:
22120 endif
22130 next i
22140 'Menu3 結果表示 画数の登録確認
22150 Moji_count_check:
22160 bg=0:init"kb:4"
22170 if (buffer_count = 0) then
22180 '登録文字がない場合の処理
22190 'グラフィック領域　ここから
22200 'Moji_count_check:
22210 cls 3:talk ""
22220 '1行
22230 line (0,0)-(1080,60),rgb(0,0,255),bf
22240 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22250 '2行目
22260 line (0,60)-(1080,165),rgb(127,255,212),bf
22270 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22280 '3行目
22290 line (0,165)-(1080,370),rgb(0,0,255),bf
22300 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22310 '4行目
22320 line (0,370)-(1080,450),rgb(0,255,0),bf
22330 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22340 'グラフィック領域　ここまで
22350 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22360 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22370 talk "この文字は、登録されていません"
22380 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22390 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22400 color rgb(0,0,0):print"コマンド:"
22410 while (bg <> 2 and key$ <> chr$(13))
22420 key$=inkey$
22430 bg=strig(1)
22440 pause 2.50*100
22450 wend
22460 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22470 else
22480 'グラフィック描画領域　ここから
22490 'Entry_moji_check:
22500 cls 3
22510 '1行目
22520 line (0,0)-(1080,58),rgb(0,0,255),bf
22530 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
22540 '2行目
22550 line (0,58)-(1080,100),rgb(127,255,212),bf
22560 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
22570 '3行目
22580 line (0,100)-(1080,280),rgb(0,0,255),bf
22590 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
22600 '4行目
22610 line (0,280)-(1080,340),rgb(0,255,0),bf
22620 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
22630 'グラフィック描画領域　ここまで
22640 color rgb(255,255,255):print "登録文字画数結果表示"
22650 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22660 endif
22670 while (key$<>chr$(13) and bg <> 2)
22680 key$=inkey$
22690 bg=strig(1)
22700 pause 2.50*100
22710 wend
22720 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
22730 'Menu2 名前の陰陽を見る
22740 'グラフィック描画領域 ここから
22750 name_inyo_check:
22760 init "kb:2":talk ""
22770 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
22780 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
22790 LINE (0,60)-(1080,250),rgb(127,255,212),bf
22800 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
22810 line (0,250)-(1080,350),rgb(0,255,0),bf
22820 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
22830 'グラフィック描画領域　ここまで
22840 cls
22850 color rgb(255,255,255)
22860 print"Menu2 名前の陰陽を見る"+chr$(13)
22870 COLOR rgb(255,0,255)
22880 PRINT"(●:陽,○:陰)"+chr$(13)
22890 print"調べたい名前苗字を入れてください"+chr$(13)
22900 color rgb(0,0,0)
22910 Input"調べたい名前の苗字:",name$
22920 if name$="" then goto name_inyo_check:
22930 'Menu2 陰陽の吉凶を見る 名入力
22940 cls:color rgb(255,255,255)
22950 print"Menu2 名前の陰陽を見る"+chr$(13)
22960 color rgb(255,0,255)
22970 print"(●:陽,○:陰)"+chr$(13)
22980 print"調べたい名前の名を入れてください"+chr$(13)
22990 color rgb(0,0,0)
23000 Input"調べたい名前の名:",name2$
23010 if name2$="" then goto name_inyo_check:
23020 for i=0 to len(name$)-1
23030 name_array$(i)=Mid$(name$,i+1,1)
23040 if char_count(name_array$(i)) mod 2 = 1  then
23050 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23060 else
23070 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23080 endif
23090 next i
23100 for i=0 to len(name2$)-1
23110 name_array2$(i)=Mid$(name2$,i+1,1)
23120 if char_count(name_array2$(i)) mod 2 = 1 then
23130 name_array2$(i) = "○":buffer2$ = buffer2$ + name_array2$(i)
23140 else
23150 name_array2$(i)="●":buffer2$ = buffer2$ + name_array2$(i)
23160 endif
23170 next i
23180 bufname$ = buffer$ + buffer2$
23190 '陰陽のタイプ ここから
23200 select case (len(bufname$))
23210 '2文字
23220 case 2:
23230 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$ = "吉相:姓名2字の陰陽吉相"
23240 'endif
23250 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23260 '  endif
23270 '3文字
23280 case 3:
23290 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23300 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23310 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23320 '4文字
23330 case 4:
23340 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23350 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23360 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23370 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23380 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23390 '5文字
23400 case 5:
23410 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23420 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23430 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23440 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23450 case 6:
23460 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23470 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23480 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23490 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23500 case else:
23510 buffer_name$="例外に入りました"
23520 end select
23530 '陰陽のタイプ　ここまで
23540 'グラフィック描画領域　ここから
23550 cls 2:key$="":bg=0:init "kb:4":talk ""
23560 line (0,0)-(1080,60),rgb(0,0,250),bf
23570 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
23580 line (0,60)-(1080,285),rgb(127,255,212),bf
23590 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
23600 line (0,280)-(1080,380),rgb(0,255,0),bf
23610 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
23620 'グラフィック描画領域 ここまで
23630 color rgb(255,255,255)
23640 cls:print"名前:";name$ + name2$ + chr$(13)
23650 color rgb(255,0,255)
23660 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23670 print buffer_name$;chr$(13)
23680 color rgb(0,0,0)
23690 print"エンターキーを押してください"
23700 while (bg <> 2 and key$ <> chr$(13))
23710 key$=inkey$
23720 bg=strig(1)
23730 pause 2.50*100
23740 wend
23750 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
23760 'Menu3
23770 '登録文字数の確認
23780 Entry_moji_check:
23790 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
23800 'グラフィック描画領域　ここから
23810 cls 3:init"kb:4":bg=0:key$="":talk ""
23820 '1行目
23830 line (0,0)-(1080,60),rgb(0,0,255),bf
23840 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
23850 '2行目
23860 line (0,60)-(1080,150),rgb(157,255,212),bf
23870 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
23880 '3行目
23890 line (0,150)-(1080,250),rgb(0,255,0),bf
23900 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
23910 'グラフィック描画領域 ここまで
23920 color rgb(255,255,255)
23930 PRINT"登録文字数の確認"+chr$(13)
23940 color rgb(255,0,255)
23950 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
23960 TALK"登録文字数は"+str$(totalmoji)+"もじです"
23970 while (key$ <> chr$(13) and bg <> 2)
23980 key$=inkey$
23990 bg=strig(1)
24000 pause 2.50*100
24010 wend
24020 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24030 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24040 nick_name_check:
24050 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24060 'グラフィック描画領域　ここから
24070 cls 3:init "kb:2"
24080 line (0,0)-(1080,60),rgb(0,0,250),bf
24090 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24100 line (0,60)-(1080,160),rgb(127,255,212),bf
24110 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24120 line (0,160)-(1080,270),rgb(0,255,0),bf
24130 pen 5:line(0,157)-(1077,267),rgb(0,0,255),b
24140 'グラフィック描画領域　ここまで
24150 buf=0:cls
24160 locate 0,0
24170 color rgb(255,255,255)
24180 Print"名前(ニックネーム)の総数で吉凶を判断します"
24190 locate 0,2
24200 color rgb(255,0,255)
24210 PRINT"名前(ニックネーム)を入れてください"
24220 locate 0,4
24230 color rgb(0,0,0)
24240 Input"名前:",name$
24250 if name$="" then goto nick_name_check:
24260 for n=0 to (len(name$)-1)
24270 buf_Input_data$(n)=mid$(name$,n+1,1)
24280 buf=buf+char_count(buf_Input_data$(n))
24290 next n
24300 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24310 '結果表示　グラフィック　ここから
24320 cls 3:init "kb:4":bg=0:key$=""
24330 line (0,0)-(1080,60),rgb(0,0,255),bf
24340 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24350 line (0,60)-(1080,160),rgb(127,255,212),bf
24360 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24370 line (0,160)-(1080,540),rgb(0,255,0),bf
24380 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
24390 '結果表示 グラフィック領域 ここまで
24400 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24410 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24420 while (key$ <> chr$(13) and bg <> 2)
24430 key$=inkey$
24440 bg=strig(1)
24450 pause 2.50*100
24460 wend
24470 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24480 '名前2文字
24490 'グラフィック描画領域　ここから
24500 Result_Anzai:
24510 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
24520 line (0,0)-(1400,60),rgb(0,0,255),bf
24530 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24540 line (0,60)-(1400,540-180),rgb(127,255,212),bf
24550 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
24560 line (0,540-180)-(1400,540),rgb(0,255,0),bf
24570 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
24580 'グラフィック描画領域 ここまで
24590 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
24600 color rgb(255,0,255)
24610 print"天運";buf_tenunn;chr$(13)
24620 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
24630 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
24640 print"外運";buf_gaiunn;chr$(13)
24650 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
24660 COLOR rgb(0,0,0)
24670 PRINT"エンターキー:トップ画面"+chr$(13)
24680 while (key$<>chr$(13) and bg <> 2)
24690 key$=inkey$
24700 bg=strig(1)
24710 pause 2.50*100
24720 wend
24730 if key$=chr$(13) or bg=2 then goto Main_Screen1:
24740 '参考文献 表示 ここから
24750 'グラフィック描画領域　 ここから
24760 Document_info:
24770 cls 3:init"kb:4":bg=0
24780 line (0,0)-(1080,60),rgb(0,0,255),bf
24790 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24800 line (0,60)-(1080,650),rgb(127,255,212),bf
24810 pen 5:line(0,57)-(1077,647),rgb(0,0,255),b
24820 line (0,650)-(1080,730),rgb(0,255,0),bf
24830 pen 5:line(0,647)-(1077,727),rgb(0,0,255),b
24840 'グラフィック描画領域  ここまで
24850 '参考文献１
24860 cls
24870 color rgb(255,255,255)
24880 locate 0,0
24890 print"◎参考文献"
24900 color rgb(255,0,255)
24910 locate 0,2
24920 print "参考文献 １/4"
24930 locate 0,4
24940 print "Title:九星姓名判断"
24950 locate 0,6
24960 print "Author:高嶋　 美伶"
24970 locate 0,8
24980 print "出版社:日本文芸者"
24990 locate 0,10
25000 print "ISBN:4-537-20073-1"
25010 locate 0,12
25020 print "定価:1,200+税"
25030 color rgb(0,0,0)
25040 locate 0,14
25050 print "エンターキーを押してください"
25060 while (bg <> 2 and key$<>chr$(13))
25070 key$=inkey$
25080 bg=strig(1)
25090 pause 2.50*100
25100 wend
25110 if (key$=chr$(13) or bg=2) then
25120 goto Document_info2:
25130 endif
25140 '参考文献２
25150 Document_info2:
25160 cls:bg=0:key$=""
25170 color rgb(255,255,255)
25180 locate 0,0
25190 print "◎参考文献"
25200 color rgb(255,0,255)
25210 locate 0,2
25220 print "参考文献 ２/4"
25230 locate 0,4
25240 print "Title:究極の姓名判断"
25250 locate 0,6
25260 print "Author:安斎　勝洋"
25270 locate 0,8
25280 print "出版社:説話社"
25290 locate 0,10
25300 print "ISBN:978-4-916217-61-5"
25310 locate 0,12
25320 print "定価:1,800円+税"
25330 color rgb(0,0,0)
25340 locate 0,14
25350 print"エンターキーを押してください"
25360 while (key$<>chr$(13) and bg <> 2)
25370 key$=inkey$
25380 bg=strig(1)
25390 pause 2.50*100
25400 wend
25410 if (key$=chr$(13) or bg=2) then goto Document_info3:
25420 '参考文献３
25430 Document_info3:
25440 cls:bg=0:key$=""
25450 color rgb(255,255,255)
25460 locate 0,0
25470 print"◎参考文献"
25480 color rgb(255,0,255)
25490 locate 0,2
25500 print "参考文献 3/4"
25510 locate 0,4
25520 print "Title:新明解現在漢和辞典"
25530 locate 0,6
25540 print "Author:影山輝國(編集主幹)他"
25550 locate 0,8
25560 print "出版社:三省堂"
25570 locate 0,10
25580 print "ISBN:978-4-385-13755-1"
25590 locate 0,12
25600 print "定価:2,800円 + 税"
25610 color rgb(0,0,0)
25620 locate 0,14
25630 print "エンターキーを押してください"
25640 while (key$<>chr$(13) and bg<>2)
25650 key$=inkey$
25660 bg=strig(1)
25670 pause 2.50*100
25680 wend
25690 if (key$=chr$(13) or bg=2) then goto Document_info4:
25700 '参考文献４　
25710 '描画領域　ここから
25720 Document_info4:
25730 cls 3:key$="":bg=0
25740 line (0,0)-(1080,60),rgb(0,0,255),bf
25750 line (0,0)-(1077,57),rgb(0,255,0),b
25760 line (0,60)-(1080,650),rgb(127,255,212),bf
25770 LINE (0,60)-(1077,647),rgb(0,0,255),b
25780 LINE (0,650)-(1080,830),rgb(0,255,0),bf
25790 line (0,650)-(1077,833),rgb(0,0,255),b
25800 '描画領域　ここまで
25810 color rgb(255,255,255)
25820 locate 0,0
25830 print "◎参考文献"
25840 COLOR rgb(255,0,255)
25850 locate 0,2
25860 print "参考文献 4/4"
25870 locate 0,4
25880 print "Title:姓名の暗号"
25890 locate 0,6
25900 print "Author:樹門　幸宰(じゅもん こうざい)"
25910 locate 0,8
25920 print "出版社:幻冬舎"
25930 locate 0,10
25940 print "定価:1400円 + 税"
25950 locate 0,12
25960 print "ISBN:4-344-00777-8"
25970 color rgb(0,0,0)
25980 locate 0,14
25990 print "参考文献トップに行く:エンターキー"
26000 locate 0,16
26010 print "スペース：トップメニューに行く"
26020 while (key$<>chr$(13) and bg<>2)
26030 key$=inkey$
26040 bg=strig(1)
26050 pause 2.50*100
26060 wend
26070 if (key$=chr$(13) or bg=2) then goto help:
26080 '安斎流姓名判断　メニュー
26090 'グラフィック領域　ここから
26100 Anzai_Top:
26110 cls 3:talk ""
26120 No=0:init"kb:4":y=0:bg=0:key$=""
26130 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26140 sp_on 0,1:sp_put 0,(10,100),0,0
26150 line (0,0)-(1080,60),rgb(0,0,255),bf
26160 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26170 line (0,60)-(1080,475),rgb(127,255,212),bf
26180 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26190 line (0,475)-(1080,650),rgb(0,255,0),bf
26200 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26210 'グラフィック描画領域　ここまで
26220 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
26230 color rgb(255,255,255)
26240 print "安斎流姓名判断　トップメニュー" + chr$(13)
26250 color rgb(255,0,255)
26260 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26270 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26280 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26290 print " :4.前の画面に戻る"+chr$(13)
26300 locate 0,10
26310 color rgb(0,0,0)
26320 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26330 Anzai_Top2:
26340 y=0:bg=0:key$=""
26350 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26360 key$=inkey$
26370 y=stick(1)
26380 bg=strig(1)
26390 pause 2.50*100
26400 wend
26410 '******************************************************
26420 '1.下のキー　ここから
26430 '******************************************************
26440 if (y=1 or key$=chr$(30)) then
26450 select case No
26460 case 0:
26470 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
26480 case 1:
26490 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
26500 case 2:
26510 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
26520 case 3:
26530 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
26540 end select
26550 endif
26560 '******************************************************
26570 '1.下のキー　ここまで
26580 '******************************************************
26590 '******************************************************
26600 '2.上のキー　ここから
26610 '******************************************************
26620 if (y=-1 or key$=chr$(31)) then
26630 select case No
26640 case 0:
26650 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
26660 case 1:
26670 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
26680 case 2:
26690 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
26700 case 3:
26710 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
26720 end select
26730 endif
26740 '******************************************************
26750 '2.上のキー　ここまで
26760 '******************************************************
26770 '******************************************************
26780 '3.決定ボタン　ここから
26790 '******************************************************
26800 if (key$=chr$(13) or bg=2) then
26810 select case No
26820 case 0:
26830 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
26840 case 1:
26850 sp_on 1,0:goto Anzai_Top_Screen:
26860 case 2:
26870 sp_on 2,0:goto Anzai_Kaimei_Check:
26880 case 3:
26890 sp_on 3,0:goto seimeihandan_top:
26900 end select
26910 endif
26920 '******************************************************
26930 '3.決定ボタン　ここまで
26940 '******************************************************
26950 '2.安斎流姓名判断　男女の相性占い　ここから
26960 'グラフィック描画領域 ここから
26970 cls 3
26980 '1行目
26990 line (0,0)-(1080,60),rgb(0,0,255),bf
27000 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27010 '2行目
27020 line (0,60)-(1080,160),rgb(127,255,212),bf
27030 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27040 '3行目
27050 line (0,160)-(1080,300),rgb(0,255,0),bf
27060 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27070 'グラフィック描画領域　男女の相性占い ここまで
27080 '1.名前の姓を入力  男性
27090 Anzai_Aishou_Top1:
27100 cls 3
27110 '1行目
27120 line (0,0)-(1080,60),rgb(0,0,255),bf
27130 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27140 '2行目
27150 line (0,60)-(1080,160),rgb(127,255,212),bf
27160 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27170 '3行目
27180 line (0,160)-(1080,300),rgb(0,255,0),bf
27190 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27200 color rgb(255,255,255)
27210 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27220 color rgb(255,0,255)
27230 print "男性の名前(姓)を入れてください"+chr$(13)
27240 color rgb(0,0,0)
27250 Input "男性の名前(姓):",name$
27260 '2.名前の名を入力  男性
27270 cls 3:talk ""
27280 '1行目
27290 line (0,0)-(1080,60),rgb(0,0,255),bf
27300 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27310 '2行目
27320 line (0,60)-(1080,160),rgb(127,255,212),bf
27330 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27340 '3行目
27350 line (0,160)-(1080,300),rgb(0,255,0),bf
27360 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27370 color rgb(255,255,255)
27380 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
27390 color rgb(255,0,255)
27400 print "男性の名前（名）をいれてください"+chr$(13)
27410 color rgb(0,0,0)
27420 Input "男性の名前(名):",name2$
27430 '3.名前(姓)入力 女性
27440 Anzai_Aishou_Top2:
27450 cls:init "kb:2":talk ""
27460 color rgb(255,255,255)
27470 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
27480 color rgb(255,0,255)
27490 print "女性の名前(姓)を入れてください"+chr$(13)
27500 color rgb(0,0,0)
27510 Input"女性の名前:",name3$
27520 '4.名前（名)入力 女性
27530 cls:init "kb:2":talk ""
27540 color rgb(255,255,255)
27550 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
27560 color rgb(255,0,255)
27570 print "女性の名前（名）を入れてください"+chr$(13)
27580 color rgb(0,0,0)
27590 Input "女性の名前(名):",name4$
27600 '男性　の地運 を求める
27610 '姓名の合計数
27620 '1.男性 名前の文字数を求める
27630 '地運を求める
27640 buf_male_name1 = len(name$)
27650 buf_male_name2 = len(name2$)
27660 buf_male_count = buf_male_name1 + buf_male_name2
27670 '2.女性 名前の文字数を求める
27680 buf_female_name1 = len(name3$)
27690 buf_female_name2 = len(name4$)
27700 buf_female_count = buf_female_name1 + buf_female_name2
27710 'goto Anzai_Aishou_Check:
27720 '1.男性の地運を求める
27730 select case buf_male_count
27740 case 2:
27750 '男性の地運を求める
27760 buf_chiunn=char_count(name2$)
27770 case 3:
27780 '姓が一文字 名が2文字
27790 if buf_male_name1=1 and buf_male_name2=2 then
27800 buf_Input_name$(0)=mid$(name2$,1,1)
27810 buf_Input_name$(1)=mid$(name2$,2,1)
27820 '地運を計算
27830 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
27840 endif
27850 if buf_male_name1=2 and buf_male_name2=1 then
27860 buf_Input_name$(0)=Mid$(name2$,1,1)
27870 buf_chiunn=char_count(buf_Input_name$(0))
27880 endif
27890 case 4:
27900 '1.姓１，名３
27910 if bufmale_name1=1 and buf_male_name2=3 then
27920 buf_Input_name$(0)=Mid$(name2$,1,1)
27930 buf_Input_name$(1)=Mid$(name2$,2,1)
27940 buf_Input_name$(2)=Mid$(name2$,3,1)
27950 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
27960 endif
27970 '2.姓２,名２
27980 if buf_male_name1=2 and buf_male_name2=2 then
27990 buf_Input_name$(0)=Mid$(name2$,1,1)
28000 buf_Input_name$(1)=Mid$(name2$,2,1)
28010 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28020 endif
28030 '3.姓３、名１
28040 if buf_male_name1=3 and buf_male_name2=1 then
28050 buf_Input_name$(0)=Mid$(name2$,1,1)
28060 '地運を求める
28070 buf_chiunn=char_count(buf_Input_name$(0))
28080 endif
28090 case 5:
28100 '1.姓２，名３
28110 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28120 buf_Input_name$(0)=Mid$(name2$,1,1)
28130 buf_Input_name$(1)=Mid$(name2$,2,1)
28140 buf_Input_name$(2)=Mid$(name2$,3,1)
28150 '地運を求める
28160 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28170 endif
28180 '2.姓３，名２
28190 if buf_male_name1=3 and buf_male_name2=2 then
28200 buf_Input_name$(0)=Mid$(name2$,1,1)
28210 buf_Input_name$(1)=Mid$(name2$,2,1)
28220 '地運を求める
28230 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28240 endif
28250 '3.姓４、名１
28260 buf_Input_name$(0)=Mid$(name2$,1,1)
28270 '地運を求める
28280 buf_chiunn = char_count(buf_Input_name$(0))
28290 case 6:
28300 '1.姓３，名３
28310 if buf_male_name1=3 and buf_male_name2=3 then
28320 buf_Input_name$(0)=Mid$(name2$,1,1)
28330 buf_Input_name$(1)=Mid$(name2$,2,1)
28340 buf_Input_name$(2)=Mid$(name2$,3,1)
28350 '地運を求める
28360 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28370 endif
28380 '２.姓４，名２
28390 if buf_male_name1=4 and buf_male_name2=2 then
28400 buf_Input_name$(0)=Mid$(name2$,1,1)
28410 buf_Input_name$(1)=Mid$(name2$,2,1)
28420 '地運を求める
28430 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28440 endif
28450 case else:
28460 end select
28470 '2.女性　外運を求める
28480 select case buf_female_count
28490 '姓と名の合計数
28500 case 2:
28510 buf_Input_name2$(0)=Mid$(name3$,1,1)
28520 buf_Input_name2$(1)=Mid$(name4$,1,1)
28530 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
28540 case 3:
28550 if buf_female_name1=2 and buf_female_name2=1 then
28560 buf_Input_name2$(0)=Mid$(name3$,1,1)
28570 buf_Input_name2$(1)=Mid$(name3$,2,1)
28580 buf_Input_name2$(2)=Mid$(name4$,1,1)
28590 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
28600 endif
28610 if buf_female_name1=1 and buf_female_name2=2 then
28620 buf_Input_name2$(0)=Mid$(name3$,1,1)
28630 buf_Input_name2$(1)=Mid$(name4$,1,1)
28640 buf_Input_name2$(2)=Mid$(name4$,2,1)
28650 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
28660 endif
28670 case 4:
28680 '姓１、名３
28690 if buf_female_name1=1 and buf_female_name2=3 then
28700 buf_Input_name2$(0)=Mid$(name3$,1,1)
28710 buf_Input_name2$(1)=Mid$(name4$,1,1)
28720 buf_Input_name2$(2)=Mid$(name4$,2,1)
28730 buf_Input_name2$(3)=Mid$(name4$,3,1)
28740 '外運を求める
28750 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
28760 endif
28770 '姓２,名２
28780 if buf_female_name1=2 and buf_female_name2=2 then
28790 buf_Input_name2$(0)=Mid$(name3$,1,1)
28800 buf_Input_name2$(1)=Mid$(name3$,2,1)
28810 buf_Input_name2$(2)=Mid$(name4$,1,1)
28820 buf_Input_name2$(3)=Mid$(name4$,2,1)
28830 '外運を求める
28840 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
28850 endif
28860 '姓３，名１
28870 if buf_female_name1=3 and buf_female_name2=1 then
28880 buf_Input_name2$(0)=Mid$(name3$,1,1)
28890 buf_Input_name2$(1)=Mid$(name3$,2,1)
28900 buf_Input_name2$(2)=Mid$(name3$,3,1)
28910 buf_Input_name2$(3)=Mid$(name4$,1,1)
28920 '外運を求める
28930 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
28940 endif
28950 case 5:
28960 '姓 3,名2
28970 if buf_female_name1 = 3 and buf_female_name2 = 2 then
28980 buf_Input_name2$(0)=Mid$(name3$,1,1)
28990 buf_Input_name2$(1)=Mid$(name3$,2,1)
29000 buf_Input_name2$(2)=Mid$(name3$,3,1)
29010 buf_Input_name2$(3)=Mid$(name4$,1,1)
29020 buf_Input_name2$(4)=Mid$(name4$,2,1)
29030 '外運を求める
29040 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29050 endif
29060 '姓４、名１
29070 if buf_female_name1=4 and buf_female_name2=1 then
29080 buf_Input_name2$(0)=Mid$(name3$,1,1)
29090 buf_Input_name2$(1)=Mid$(name3$,2,1)
29100 buf_Input_name2$(2)=Mid$(name3$,3,1)
29110 buf_Input_name2$(3)=Mid$(name3$,4,1)
29120 buf_Input_name2$(4)=Mid$(name4$,1,1)
29130 '外運を求める
29140 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29150 endif
29160 '姓２、名３
29170 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29180 buf_Input_name2$(0)=Mid$(name3$,1,1)
29190 buf_Input_name2$(1)=Mid$(name3$,2,1)
29200 buf_Input_name2$(2)=Mid$(name4$,1,1)
29210 buf_Input_name2$(3)=Mid$(name4$,2,1)
29220 buf_Input_name2$(4)=Mid$(name4$,3,1)
29230 '外運を求める
29240 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29250 endif
29260 case 6:
29270 '1.姓３，名３
29280 if buf_female_name1=3 and buf_female_name2=3 then
29290 buf_Input_name2$(0)=Mid$(name3$,1,1)
29300 buf_Input_name2$(1)=Mid$(name3$,2,1)
29310 buf_Input_name2$(2)=Mid$(name3$,3,1)
29320 buf_Input_name2$(3)=Mid$(name4$,1,1)
29330 buf_Input_name2$(4)=Mid$(name4$,2,1)
29340 buf_Input_name2$(5)=Mid$(name4$,3,1)
29350 '外運を求める
29360 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
29370 endif
29380 '2.姓４，名２
29390 if buf_female_name1=4 and buf_female_name2=2 then
29400 buf_Input_name2$(0)=Mid$(name3$,1,1)
29410 buf_Input_name2$(1)=Mid$(name3$,2,1)
29420 buf_Input_name2$(2)=Mid$(name3$,3,1)
29430 buf_Input_name2$(3)=Mid$(name3$,4,1)
29440 buf_Input_name2$(4)=Mid$(name4$,1,1)
29450 buf_Input_name2$(5)=Mid$(name4$,2,1)
29460 '外運を求める
29470 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
29480 endif
29490 case 7:
29500 '1姓４，名３
29510 '外運を求める
29520 end select
29530 func buf_number(a)
29540 if a < 10 then
29550 buf_tansu = a
29560 endif
29570 if a > 9 and a < 20 then
29580 buf_tansu = a - 10
29590 endif
29600 if a > 19 and a < 30 then
29610 buf_tansu = a - 20
29620 endif
29630 buffer = buf_tansu
29640 endfunc buffer
29650 check$="No Data"
29660 func Aisyou_type$(man,woman)
29670 Result$="No data"
29680 'check$="No data"
29690 '1.理解し合える最良のカップル
29700 '1のFor文
29710 for i=0 to 19
29720 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
29730 Result$ = "1.理解し合える最良のカップル"
29740 check$="○"
29750 ResultNo = 0
29760 endif
29770 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
29780 Result$="2.互いに自然体でつきあえるカップル"
29790 ResultNo=1
29800 check$="○"
29810 endif
29820 '3.男性にとって居心地の良いカップル
29830 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
29840 Result$="3.男性にとって居心地の良いカップル"
29850 ResultNo=2
29860 check$="△"
29870 endif
29880 '4.女性にとって居心地の良いカップル
29890 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
29900 Result$ = "4.女性にとって居心地の良いカップル"
29910 ResultNo=3
29920 check$="△"
29930 endif
29940 '5.恋愛経験を重ねた後なら愛を育める
29950 if buf_short_of_experience1(i) = man AND buf_short_of_experience2(i) = woman then
29960 Result$="5.恋愛経験を重ねた後なら愛を育める"
29970 ResultNo=4
29980 check$="×"
29990 endif
30000 '6
30010 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30020 Result$="6.結婚への発展が困難なカップル"
30030 check$="×"
30040 endif
30050 '7
30060 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30070 Result$="7.愛し方にずれが出てくる二人"
30080 check$="×"
30090 endif
30100 '8
30110 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30120 Result$="8.互いに価値観が噛み合わない相性"
30130 check$="×"
30140 endif
30150 next i
30160 endfunc  Result$
30170 Anzai_Aishou_Check:
30180 cls 3:init"kb:2":bg=0
30190 buf_t_chiunn = buf_number(buf_chiunn)
30200 buf_t_gaiunn=buf_number(buf_gaiunn)
30210 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30220 'グラフィック描画領域　ここから
30230 'Title欄
30240 line(0,0)-(1080,60),rgb(0,0,255),bf
30250 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
30260 '結果表示欄
30270 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
30280 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
30290 'ボタン選択欄
30300 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
30310 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
30320 'グラフィック描画領域　ここまで
30330 'ここから削除　↓
30340 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
30350 'ここまで削除　↑
30360 color rgb(255,255,255):font 40:init"kb:4"
30370 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
30380 color rgb(255,0,255)
30390 print "男性の名前:";name$+name2$;chr$(13)
30400 print "地運の単数";buf_t_chiunn;chr$(13)
30410 print "女性の名前:";name3$+name4$;chr$(13)
30420 print "外運の単数";buf_t_gaiunn;chr$(13)
30430 print"二人の相性:";bufferAisyou$;chr$(13)
30440 print"相性判定:";check$;chr$(13)
30450 color rgb(0,0,0)
30460 print "エンターキー:トップ" + chr$(13)
30470 while (bg <> 2)
30480 bg=strig(1)
30490 pause 2.50*100
30500 wend
30510 if (bg=2) then goto Main_Screen1:
30520 '改名チェック
30530 'グラフィック描画領域 ここから
30540 Anzai_Kaimei_Check:
30550 cls 3:init "kb:2":talk ""
30560 line (0,0)-(1080,60),rgb(0,0,255),bf
30570 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
30580 line (0,60)-(1080,370+50),rgb(127,255,212),bf
30590 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
30600 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
30610 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
30620 'グラフィック描画領域 ここまで
30630 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
30640 color rgb(255,255,255)
30650 print "安斎流姓名判断 改名チェッカー"+chr$(13)
30660 color rgb(255,0,255)
30670 print "総数で、改名が、必要か否かを調べます"+chr$(13)
30680 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
30690 print "10文字までで入れてください"
30700 locate 0,9
30710 color rgb(0,0,0)
30720 Input "名前:",name$
30730 '計算領域　ここから
30740 '名前から総運を計算
30750 '1.名前の文字数を出す
30760 n=len(name$)
30770 if n > 10 or n=0 then
30780 '文字数が10個までという表示
30790 'トーストで表示
30800 if n > 10 then
30810 ui_msg "文字は10個までです"
30820 else
30830 ui_msg "文字が空っぽです"
30840 endif
30850 goto Anzai_Aishou_Check:
30860 endif
30870 'それ以外
30880 '総数を出す処理を出す
30890 '画面消去　データー初期化
30900 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
30910 'グラフィック描画領域 ここから
30920 line(0,0)-(1080,60),rgb(0,0,255),bf
30930 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
30940 line(0,60)-(1080,300),rgb(127,255,212),bf
30950 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
30960 line(0,300)-(1080,440),rgb(0,255,0),bf
30970 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
30980 'グラフィック描画領域 ここまで
30990 color rgb(255,255,255)
31000 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31010 for i=0 to len(name$)-1
31020 buf_Input_name$(i)=Mid$(name$,i+1,1)
31030 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31040 next i
31050 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31060 color rgb(255,0,255)
31070 print "名前:";name$
31080 print "この名前の総数:";bufer_total
31090 print "この名前の吉凶:";buf_Kikkyo$;"です"
31100 color rgb(255,0,255)
31110 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31120 print bufer_total$+chr$(13)
31130 color rgb(0,0,0)
31140 locate 0,7
31150 print"エンターキーを押してください"
31160 while (key$ <> chr$(13) and bg <> 2)
31170 key$=inkey$
31180 bg=strig(1)
31190 pause 2.50*100
31200 wend
31210 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
31220 '改名チェック関数
31230 func Kaimei_check$(r$)
31240 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
31250 '改名の必要なし
31260 talk"この名前は改名の必要がございません。"
31270 print"この名前は、改名の必要はありません"+chr$(13)
31280 '改名の必要ナシの場合
31290 K=0
31300 buffer_K=K
31310 else
31320 '改名の必要あり
31330 Kaimei_check:
31340 talk"この名前は、改名の必要があります"
31350 print"この名前は、改名の必要があります"+chr$(13)
31360 color rgb(0,0,0)
31370 print"改名しますか？"
31380 K=1
31390 buffer_K=K
31400 '◎表示パターン
31410 'パターン１
31420 endif
31430 endfunc result$
31440 'ui_msg="1件追加しました,残り9件追加できます"
31450 'ファイルの存在確認 設定ファイル:mydata.dat
31460 cls
31470 '設定ファイルの確認
31480 if dir$("config/Parsonal_data/mydata.dat")="" then
31490 '1.ファイルがない時
31500 goto Kaimei_check:
31510 else
31520 'ファイルがある時
31530 goto sex_type_female:
31540 endif
31550 '1-1.ファイルがない時の処理
31560 '1-1.自分の姓名判断を入力
31570 'グラフィック描画領域 ここから
31580 cls 3
31590 '1行目
31600 line(0,0)-(1080,60),rgb(0,0,250),bf
31610 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31620 '2行目
31630 line(0,60)-(1080,80),rgb(127,255,212),bf
31640 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
31650 '3行目
31660 line(0,80)-(1080,120),rgb(0,255,0),bf
31670 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
31680 'グラフィック描画領域 ここまで
31690 '1.名前の姓の入力
31700 '1行目 Title
31710 color rgb(255,255,255)
31720 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
31730 '2行目 名前の姓を入力
31740 color rgb(255,0,255)
31750 print "自分の名前の姓を入れてください"+chr$(13)
31760 color rgb(0,0,0)
31770 'buf_name1$:自分の名前の姓
31780 Input"名前の姓:",buf_name1$
31790 '2.名前の名の入力
31800 '画面消去
31810 Anzai_myProfile2:
31820 cls
31830 '1行目 Title
31840 color rgb(255,255,255)
31850 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
31860 '2行目 名前の名の入力
31870 color rgb(255,0,255)
31880 print "自分の名前の名を入れてください"+chr$(13)
31890 color rgb(0,0,0)
31900 'buf_name2$:自分の名前の名
31910 input "名前の名:",buf_name2$
31920 '3.性別入力
31930 cls
31940 '1行目 Title
31950 color rgb(255,255,255)
31960 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
31970 '2行目 性別入力
31980 color rgb(255,0,255)
31990 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
32000 sex_type$(0)="女性"
32010 sex_type$(1)="男性"
32020 type=ui_select("sex_type$","性別を選んでください")
32030 '3行目
32040 '性別変数 sex_type$
32050 if type = 1 then
32060 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 33360
32070 else
32080 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
32090 endif
32100 if sex_type$="男性" then
32110 name$=buf_name1$
32120 name2$=buf_name2$
32130 s=1
32140 goto Anzai_Aishou_Top1:
32150 endif
32160 sex_type_female:
32170 If sex_type$="女性" then
32180 name3$=buf_name1$
32190 name4$=buf_name2$
32200 s=2
32210 goto Anzai_Aishou_Top2:
32220 endif
32230 '登録プロフィール確認画面
32240 Entry_Profile:
32250 cls 3:talk ""
32260 'グラフィック描画領域　ここから
32270 '1行目
32280 line(0,0)-(1200,60),rgb(0,0,255),bf
32290 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
32300 '2行目
32310 line(0,60)-(1200,360),rgb(127,255,212),bf
32320 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
32330 '3行目
32340 line(0,100)-(1200,420),rgb(0,255,0),bf
32350 pen 5:line(0,97)-(1197,417)
32360 if s2=2 then goto Entry_Profile:
32370 'グラフィック描画領域　ここまで
32380 '1行目 Title
32390 color rgb(255,255,255)
32400 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
32410 color rgb(255,0,255)
32420 print"名前:";buf_name1$+buf_name2$;chr$(13)
32430 PRINT"性別:";sex_type$;chr$(13)
32440 if sex_type$="女性" then
32450 print"外運:";buf_gaiunn;chr$(13)
32460 buffer$="外運:"+str$(buf_gaiunn)
32470 endif
32480 if sex_type$="男性" then
32490 print"地運:";buf_chiunn;chr$(13)
32500 buffer$="地運:"+str$(buf_chiunn)
32510 endif
32520 color rgb(0,0,0)
32530 input"(登録する:Yes/登録しない:No):",key$
32540 if key$="Yes" or key$="yes" then
32550 open "config/Parsonal_data/mydata.dat" for output as #1
32560 print #1,"名前:";buf_name1$+buf_name2$
32570 print #1,"性別:";sex_type$
32580 print #1,buffer$
32590 close #1
32600 ui_msg"データーを保存しました"
32610 goto Main_Screen1:
32620 endif
32630 '２．設定ファイルが存在する場合
32640 'ファイル読み込み 自分のデーターを表示
32650 cls
32660 open "Config/Parsonal_data/mydata.dat" for input as #2
32670 line input #2,a$
32680 line input #2,b$
32690 line input #2,c$
32700 close #2
32710 buffername$=a$
32720 buffername2$=b$
32730 buffername3$=c$
32740 bufff$=Mid$(buffername$,1,3)
32750 buff2$=Mid$(buffername2$,1,3)
32760 buff3$=Mid$(buffername3$,1,3)
32770 n=len(a$)
32780 sextype$=Mid$(buffername2$,4,2)
32790 if sextype$="男性" then
32800 '男性:s2
32810 s2=1
32820 '女性のデーター入力
32830 goto Anzai_Top:
32840 endif
32850 if sextype$="女性" then
32860 s2=2
32870 '男性のデーター入力
32880 goto Anzai_Top:
32890 endif
32900 '女性のデーター結果表示
32910 '1.プロフィール性別男性の場合 ここから
32920 Result_Anzai_Aisyou:
32930 cls:talk ""
32940 color rgb(255,255,255)
32950 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
32960 name_length = len(bufername$)
32970 myname$ = Mid$(buffername$,4,4)
32980 chiunn = val(Mid$(buffername3$,4,2))
32990 tansuu1 = buf_number(chiunn)
33000 bufname$ = name3$ + name4$
33010 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33020 color rgb(255,0,255)
33030 print "自分の名前(男性):";myname$;chr$(13)
33040 print "地運の端数:";tansuu1;chr$(13)
33050 print "相手の名前(女性):";bufname$;chr$(13)
33060 print "外運の端数:";buf_t_gaiunn;chr$(13)
33070 print "二人の相性:";bufferAisyou$;chr$(13)
33080 talk "二人の相性は" + bufferAisyou$
33090 color rgb(0,0,0)
33100 print"エンターキーを押してください"
33110 key$=Input$(1)
33120 'トップ画面に行く
33130 if key$ = chr$(13) then goto Main_Screen1:
33140 '1.プロフィール性別男性の場合　ここまで
33150 '2.プロフィール性別女性の場合　ここから
33160 cls 3
33170 '描画領域　ここから
33180 line (0,0)-(1080,60),rgb(0,0,255),bf
33190 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
33200 line (0,60)-(1080,460),rgb(127,255,212),bf
33210 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
33220 LINE (0,460)-(1080,520),rgb(0,255,0),bf
33230 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
33240 '描画領域 ここまで
33250 color rgb(255,255,255)
33260 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
33270 '計算領域　ここから
33280 myname$ = Mid$(buffername$,4,4)
33290 gaiunn = val(Mid$(buffername3$,4,2))
33300 buf_t_gaiunn = buf_number(buf_gaiunn)
33310 buf_t_chiunn = buf_number(buf_chiunn)
33320 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
33330 bufname$ = name$ + name2$
33340 '計算領域 ここまで
33350 color rgb(255,0,255)
33360 print "自分の名前(女性):";myname$;chr$(13)
33370 print "外運の端数";buf_t_gaiunn;chr$(13)
33380 print "相手の名前(男性):";bufname$;chr$(13)
33390 print "地運の端数:";buf_t_chiunn;chr$(13)
33400 print "二人の相性:";bufferAisyou$;chr$(13)
33410 color rgb(0,0,0)
33420 print "エンターキーを押してください"
33430 key$ = Input$(1)
33440 if key$=chr$(13) then goto Main_Screen1:
33450 '2.プロフィール性別女性の場合　ここまで
33460 '取扱説明書
33470 '相性占い　トップメニュー ここから
33480 'グラフィック ここから
33490 Anzai_Aishou_Top_Menu:
33500 cls 3:talk ""
33510 '1行目
33520 line(0,0)-(1080,60),rgb(0,0,255),bf
33530 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
33540 '2行目
33550 line(0,60)-(1080,380),rgb(127,255,212),bf
33560 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
33570 '3行目
33580 line(0,360)-(1080,540),rgb(0,255,0),bf
33590 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
33600 'グラフィック　ここまで
33610 color rgb(255,255,255)
33620 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
33630 color rgb(255,0,255)
33640 print"1.男女の相性"+chr$(13)
33650 print"2.前の画面に戻る"+chr$(13)
33660 print"3.トップ画面に戻る"+chr$(13)
33670 color rgb(0,0,0)
33680 print"番号を選んでください:"+chr$(13)
33690 Input"番号:",key
33700 if key = 1 then goto Anzai_Aishou_Top1:
33710 if key = 2 then goto Anzai_Top:
33720 if key = 3 then goto Main_Screen1:
33730 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
33740 'グラフィック領域　ここから
33750 Life_Tenki:
33760 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
33770 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
33780 line(0,60)-(1150,180),rgb(127,255,212),bf
33790 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
33800 line(0,120)-(1150,200),rgb(0,255,0),bf
33810 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
33820 'グラフィック領域　ここまで
33830 '誕生日入力　生まれた年
33840 color rgb(255,255,255)
33850 print"誕生日入力　生まれた年" + chr$(13)
33860 COLOR rgb(255,0,255)
33870 print"生まれた年を入れてください" + chr$(13)
33880 color rgb(0,0,0)
33890 Input"生まれた年:",year
33900 '誕生日入力 生まれた月
33910 cls
33920 color rgb(255,255,255)
33930 print"誕生日入力 生まれた月" + chr$(13)
33940 color rgb(255,0,255)
33950 print"生まれた月を入力してください" + chr$(13)
33960 color rgb(0,0,0)
33970 Input"生まれた月:",month
33980 '誕生日入力 生まれた日を入力
33990 cls
34000 color rgb(255,255,255)
34010 print"誕生日入力 生まれた日入力" + chr$(13)
34020 color rgb(255,0,255)
34030 print"生まれた日を入力してください" + chr$(13)
34040 color rgb(0,0,0)
34050 Input"生まれた日:",day
34060 '人生の転機を見る
34070 'グラフィック領域　ここから
34080 cls 3:talk ""
34090 line(0,0)-(1150,60),rgb(0,0,255),bf
34100 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34110 line(0,60)-(1150,470),rgb(127,255,212),bf
34120 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34130 line(0,470)-(1150,520),rgb(0,255,0),bf
34140 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
34150 'グラフィック描画領域  ここまで
34160 cls
34170 buffername$=bufname$ + bufname2$
34180 color rgb(255,255,255)
34190 print buffername$;"さんの人生の転機を見る1"+chr$(13)
34200 color rgb(255,0,255)
34210 buf_total2=buf_total-(fix(buf_total/10)*10)
34220 tenki1_year=year+buf_total2
34230 tenki2_year=year+buf_total2+5
34240 tenki3_year=year+buf_total2+5+5
34250 tenki4_year=year+buf_total2+5+5+5
34260 tenki1=buf_total2
34270 tenki2=buf_total2+5
34280 tenki3=buf_total2+5+5
34290 tenki4=buf_total2+5+5+5
34300 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
34310 print tenki1_year;"年";tenki1;"歳"+chr$(13)
34320 print tenki2_year;"年";tenki2;"歳"+chr$(13)
34330 print tenki3_year;"年";tenki3;"歳"+chr$(13)
34340 print tenki4_year;"年";tenki4;"歳"+chr$(13)
34350 color rgb(0,0,0)
34360 print"エンターキーを押してください"
34370 key$=Input$(1)
34380 if key$=chr$(13) then goto Life_Tenki:
34390 '2ページ目
34400 cls
34410 color rgb(255,255,255)
34420 print buffername$;"さんの人生の転機2"+chr$(13)
34430 color rgb(255,0,255)
34440 tenki5_year = tenki4_year + 5
34450 tenki6_year = tenki4_year + 5 + 5
34460 tenki7_year = tenki4_year + 5 + 5 + 5
34470 tenki8_year = tenki4_year + 5 + 5 + 5+5
34480 tenki5 = tenki4 + 5
34490 tenki6 = tenki4 + 5 + 5
34500 tenki7 = tenki4 + 5 + 5 + 5
34510 tenki8 = tenki4 + 5 + 5 + 5 + 5
34520 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
34530 print tenki5_year;"年";tenki5;"歳"+chr$(13)
34540 print tenki6_year;"年";tenki6;"歳"+chr$(13)
34550 print tenki7_year;"年";tenki7;"歳"+chr$(13)
34560 print tenki8_year;"年";tenki8;"歳"+chr$(13)
34570 color rgb(0,0,0)
34580 print"エンターキーを押してください",key$
34590 key$=Input$(1)
34600 if key$ = chr$(13) then goto 35790
34610 '3ページ目
34620 cls
34630 color rgb(255,255,255)
34640 print buffername$;"さんの人生の転機3"+chr$(13)
34650 '計算部分
34660 tenki_year9=tenki8_year + 5
34670 tenki_year10=tenki8_year + 5 + 5
34680 tenki_year11=tenki8_year+5+5+5
34690 tenki_year12=tenki8_year+5+5+5+5
34700 tenki9=tenki8+5
34710 tenki10=tenki8+5+5
34720 tenki11=tenki8+5+5+5
34730 tenki12=tenki8+5+5+5+5
34740 color rgb(255,0,255)
34750 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
34760 print tenki_year9;"年";tenki9;"歳"+chr$(13)
34770 print tenki_year10;"年";tenki10;"歳"+chr$(13)
34780 print tenki_year11;"年";tenki11;"歳"+chr$(13)
34790 print tenki_year12;"年";tenki12;"歳"+chr$(13)
34800 color rgb(0,0,0)
34810 print"エンターキーを押してください"
34820 key$=Input$(1)
34830 if key$=chr$(13) then goto 36020
34840 'グラフィック描画領域 ここから
34850 cls 3
34860 line(0,0)-(1150,60),rgb(0,0,255),bf
34870 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34880 line(0,60)-(1150,470),rgb(127,255,212),bf
34890 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34900 line(0,470)-(1150,850),rgb(0,255,0),bf
34910 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
34920 'グラフィック描画領域 ここまで
34930 '4回目
34940 cls
34950 color rgb(255,255,255)
34960 print buffername$;"さんの人生の転機４"+chr$(13)
34970 color rgb(255,0,255)
34980 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
34990 '計算部分
35000 tenki_year13 = tenki_year12 + 5
35010 tenki_year14 = tenki_year12 + 5 + 5
35020 tenki_year15 = tenki_year12 + 5 + 5 + 5
35030 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35040 tenki13 = tenki12 + 5
35050 tenki14 = tenki12 + 5 + 5
35060 tenki15 = tenki12 + 5 + 5 + 5
35070 tenki16 = tenki12 + 5 + 5 + 5 + 5
35080 color rgb(255,0,255)
35090 print tenki_year13;"年";tenki13;"歳"+chr$(13)
35100 print tenki_year14;"年";tenki14;"歳"+chr$(13)
35110 print tenki_year15;"年";tenki15;"歳"+chr$(13)
35120 print tenki_year16;"年";tenki16;"歳"+chr$(13)
35130 color rgb(0,0,0)
35140 print"コマンドを入れてください"+chr$(13)
35150 print"q+エンターキー:トップ画面"+chr$(13)
35160 Print"エンターキー:次へ行く"+chr$(13)
35170 print"コマンド:"
35180 key$=Input$(1)
35190 if key$=chr$(13) then goto 36390
35200 IF key$="q" then goto 7740
35210 '
35220 cls
35230 color rgb(255,255,255)
35240 print buffername$;"さんの人生の転機5"+chr$(13)
35250 color rgb(255,0,255)
35260 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35270 tenki_year17=tenki_year16+5
35280 tenki_year18=tenki_year16+5+5
35290 tenki_year19=tenki_year16+5+5+5
35300 tenki_year20=tenki_year16+5+5+5+5
35310 tenki17=tenki16+5
35320 tenki18=tenki16+5+5
35330 tenki19=tenki16+5+5+5
35340 tenki20=tenki16+5+5+5+5
35350 print tenki_year17;"年";tenki17;"歳"+chr$(13)
35360 print tenki_year18;"年";tenki18;"歳"+chr$(13)
35370 print tenki_year19;"年";tenki19;"歳"+chr$(13)
35380 print tenki_year20;"年";tenki20;"歳"+chr$(13)
35390 color rgb(0,0,0)
35400 print"コマンドを入れてください"+chr$(13)
35410 print"トップに戻る:q+エンターキー"+chr$(13)
35420 print"最初から:エンターキー"+chr$(13)
35430 print"コマンド:"
35440 key$=Input$(1)
35450 if key$=chr$(13) then goto 35250
35460 if key$="q" then goto Main_Screen1:
35470 '改名チェック 改名候補を入力
35480 'グラフィック　領域　ここから
35490 '左側 部分
35500 cls 3:talk ""
35510 line(0,0)-(1100,60),rgb(0,0,255),bf
35520 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
35530 line(0,60)-(1100,380),rgb(127,255,212),bf
35540 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
35550 line(0,380)-(790,470),rgb(0,255,0),bf
35560 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
35570 '中央の縦の線 ここから
35580 'line(1100,0)-(1112,370),rgb(0,0,0),b
35590 '中央の縦の線 ここまで
35600 '右側 部分
35610 line(1103,0)-(1700,60),rgb(0,0,255),bf
35620 LINE(790,60)-(1700,470),rgb(127,255,212),bf
35630 'グラフィック 領域　ここまで
35640 '吉凶判定
35650 if buffer_K=0 then
35660 buffer_check$="○"
35670 else
35680 buffer_check$="☓"
35690 endif
35700 'Title 左側の文字
35710 'rgb(255,255,255):白
35720 color rgb(255,255,255)
35730 locate 1,0
35740 print"安斎流姓名判断 改名チェッカー"
35750 'Title 右側の文字
35760 locate size(2)-16,0
35770 print"改名候補リスト(3件まで)"
35780 '候補リストの名前部分 (右側)
35790 '1行目
35800 'locate 22,2
35810 locate size(2)-18,2
35820 color rgb(0,0,0)
35830 print "番号"
35840 'locate 26,2
35850 locate size(2)-14,2
35860 print"名前"
35870 'locate 32,2
35880 locate size(2)-8,2
35890 print"吉凶"
35900 'locate 36,2
35910 locate size(2)-4,2
35920 print"判定"
35930 '2行目
35940 select case kaimei_count
35950 case 0:
35960 'データー1件 の時
35970 kaimei_count = kaimei_count + 1
35980 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
35990 buffer_Kaimei$(0,1,0,0)=name$
36000 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36010 buffer_Kaimei$(0,0,0,1)=buffer_check$
36020 'cls
36030 color rgb(255,0,255)
36040 'locate 23,3
36050 locate size(2)-17,3
36060 print buffer_Kaimei$(1,0,0,0)
36070 'locate 25,3
36080 locate size(2)-15,3
36090 print buffer_Kaimei$(0,1,0,0)
36100 'locate 32,3
36110 locate size(2)-8,3
36120 print buffer_Kaimei$(0,0,1,0)
36130 locate size(2)-3,3
36140 print buffer_Kaimei$(0,0,0,1)
36150 case 1:
36160 'データー2件の時
36170 color rgb(255,0,255)
36180 kaimei_count = kaimei_count + 1
36190 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
36200 buffer_Kaimei$(0,2,0,0)=name$
36210 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
36220 buffer_Kaimei$(0,0,0,2)=buffer_check$
36230 'cls
36240 '1行目
36250 'locate 23,3
36260 locate size(2)-17,3
36270 print buffer_Kaimei$(1,0,0,0)
36280 'locate 25,3
36290 locate size(2)-15,3
36300 print buffer_Kaimei$(0,1,0,0)
36310 'locate 32,3
36320 locate size(2)-8,3
36330 print buffer_Kaimei$(0,0,1,0)
36340 'locate 37,3
36350 locate size(2)-3,3
36360 print buffer_Kaimei$(0,0,0,1)
36370 '2行目
36380 'locate 23,4
36390 locate size(2)-17,4
36400 print buffer_Kaimei$(2,0,0,0)
36410 'locate 25,4
36420 locate size(2)-15,4
36430 print buffer_Kaimei$(0,2,0,0)
36440 'locate 32,4
36450 locate size(2)-8,4
36460 print buffer_Kaimei$(0,0,2,0)
36470 'locate 37,4
36480 locate size(2)-3,4
36490 print buffer_Kaimei$(0,0,0,2)
36500 case 2:
36510 'データー3件の時
36520 '1
36530 color rgb(255,0,255)
36540 kaimei_count=kaimei_count+1
36550 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
36560 buffer_Kaimei$(0,3,0,0)=name$
36570 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
36580 buffer_Kaimei$(0,0,0,3)=buffer_check$
36590 '2  1行目
36600 'locate 23,3
36610 locate size(2)-17,3
36620 print buffer_Kaimei$(1,0,0,0)
36630 'locate 25,3
36640 locate size(2)-15,3
36650 print buffer_Kaimei$(0,1,0,0)
36660 'locate 32,3
36670 locate size(2)-8,3
36680 print buffer_Kaimei$(0,0,1,0)
36690 'locate 37,3
36700 locate size(2)-3,3
36710 print buffer_Kaimei$(0,0,0,1)
36720 '3  2行目
36730 'locate 23,4
36740 locate size(2)-17,4
36750 print buffer_Kaimei$(2,0,0,0)
36760 'locate 25,4
36770 locate size(2)-15,4
36780 print buffer_Kaimei$(0,2,0,0)
36790 'locate 32,4
36800 locate size(2)-8,4
36810 print buffer_Kaimei$(0,0,2,0)
36820 'locate 37,4
36830 locate size(2)-3,4
36840 print buffer_Kaimei$(0,0,0,2)
36850 '4  3行目
36860 'locate 23,5
36870 locate size(2)-17,5
36880 print buffer_Kaimei$(3,0,0,0)
36890 'locate 25,5
36900 locate size(2)-15,5
36910 print  buffer_Kaimei$(0,3,0,0)
36920 'locate 32,5
36930 locate size(2)-8,5
36940 print buffer_Kaimei$(0,0,3,0)
36950 'locate 37,5
36960 locate size(2)-3,5
36970 print buffer_Kaimei$(0,0,0,3)
36980 case 3:
36990 'データー4件の時
37000 '1
37010 '2
37020 '3
37030 '4
37040 '5
37050 end select
37060 '説明部分　左側
37070 locate 0,2
37080 color rgb(255,0,255)
37090 print"思いついた候補の名前"
37100 locate 0,4
37110 print"(ニックネーム　or 会社名)を"
37120 locate 0,6
37130 print"10文字以内で入力してください"
37140 color rgb(0,0,0)
37150 locate 0,8
37160 if kaimei_count = 1 or kaimei_count = 2 then
37170 Input"名前:",kouho_name$
37180 name$=kouho_name$
37190 n=len(name$)
37200 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 36670
37210 'else
37220 if n =< 10 then goto 31650
37230 endif
37240 if kaimei_count = 3 then
37250 Input"エンターキーを押してください",key$
37260 if key$ = "" then
37270 'データーを初期化して、トップ画面に行く
37280 '1.データーを初期化
37290 kaimei_count = 0
37300 for i=1 to 3
37310 buffer_Kaimei$(i,0,0,0) = ""
37320 buffer_Kaimei$(0,i,0,0) = ""
37330 buffer_Kaimei$(0,0,i,0) = ""
37340 buffer_Kaimei$(0,0,0,i) = ""
37350 next i
37360 '2.トップ画面に行く
37370 goto 7740
37380 endif
37390 endif
37400 '霊遺伝姓名学 ここから
37410 'グラフィック領域　ここから
37420 '性別入力
37430 Reiden_Top_Input_Sextype:
37440 cls 3:talk ""
37450 No=1:y=0:key$="":bg=0:init "kb:4"
37460 sp_on 1,1:sp_put 1,(10,200),1,0
37470 'Line1
37480 line (0,0)-(850,60),rgb(0,0,255),bf
37490 line (0,0)-(847,57),rgb(0,255,0),b
37500 'Line 2
37510 line (0,63)-(853,537),rgb(127,255,212),bf
37520 line (0,60)-(850,540),rgb(0,0,0),b
37530 'Line 3
37540 line (0,540)-(850,630),rgb(0,255,0),bf
37550 line (0,543)-(853,633),rgb(0,0,255),b
37560 'グラフィック領域　ここまで
37570 '音声表示
37580 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
37590 '性別変数:sex_type=0
37600 '文字色： 白
37610 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
37620 '文字色：赤
37630 color rgb(255,0,255)
37640 print"占う人の性別の番号を入れてください" + chr$(13)
37650 print" :1.女 性" + chr$(13)
37660 print" :2.男 性" + chr$(13)
37670 print" :3.前の画面に戻る" + chr$(13)
37680 locate 0,12
37690 color rgb(0,0,0)
37700 print "1.女性を選択しました"
37710 Reiden_Top_Input_Sextype2:
37720 y = 0:key$ = "":bg = 0
37730 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
37740 key$=inkey$
37750 y=stick(1)
37760 bg=strig(1)
37770 pause 2.50*100
37780 wend
37790 if (key$=chr$(31) or y=1) then
37800 select case No
37810 case 1:
37820 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
37830 case 2:
37840 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
37850 case 3:
37860 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
37870 end select
37880 endif
37890 if (key$ = chr$(30) or y = -1) then
37900 select case No
37910 case 1:
37920 No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
37930 case 2:
37940 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
37950 case 3:
37960 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
37970 end select
37980 endif
37990 if (bg=2 or key$=chr$(13)) then
38000 select case No
38010 case 1:
38020 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38030 case 2:
38040 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38050 case 3:
38060 sp_on 3,0:goto Main_Screen1:
38070 end select
38080 endif
38090 '描画領域　ここから
38100 ReiIden_Input_male:
38110 cls 3:init"kb:2":talk ""
38120 'Line 1 Title
38130 line (0,0)-(850,60),rgb(0,0,255),bf
38140 line (0,0)-(850,57),rgb(0,255,0),b
38150 'Line2 Input name
38160 line (0,60)-(850,300),rgb(0,255,0),bf
38170 line (0,60)-(850,303),rgb(0,0,255),b
38180 '描画領域 ここまで
38190 '文字色：白
38200 color rgb(255,255,255)
38210 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
38220 '文字色：黒
38230 color rgb(0,0,0)
38240 print "名前の姓の部分を入れてください" + chr$(13)
38250 Input"名前(姓の部分):",name1$
38260 '名の入力部分
38270 cls
38280 color rgb(255,255,255)
38290 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
38300 color rgb(0,0,0)
38310 print "名前の名の部分を入れてください"+chr$(13)
38320 Input"名前(名の部分):",name2$:goto check:
38330 '2.女性の場合　既婚か未婚か確認する
38340 '2-2-1女性の姓の入力
38350 'グラフィック領域　ここから
38360 ReiIden_Input_female:
38370 cls 3:init"kb:2":talk ""
38380 'Line1 Title
38390 line (0,0)-(850,60),rgb(0,0,255),bf
38400 line (0,0)-(850,57),rgb(0,255,0),b
38410 'Line 2 入力欄
38420 line (0,60)-(850,360),rgb(0,255,0),bf
38430 line (0,60)-(850,357),rgb(0,0,255),b
38440 'Line 2 入力欄(名前入力)
38450 'グラフィック領域 ここまで
38460 cls:init"kb:2"
38470 color rgb(255,255,255)
38480 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
38490 color rgb(255,0,0)
38500 print"既婚者の方は、旧姓を入れてください"+chr$(13)
38510 color rgb(0,0,0)
38520 print "名前の姓の部分を入れてください"+chr$(13)
38530 Input "名前(姓の部分):",name3$
38540 '2-2-2女性の名の入力
38550 cls:init"kb:2"
38560 color rgb(255,255,255)
38570 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
38580 color rgb(0,0,0)
38590 print "名前の名の部分を入れてください"+chr$(13)
38600 Input "名前(名の部分):",name4$
38610 '計算領域　ここから
38620 check:
38630 '苗字の画数:buffer_name1_count
38640 'name1$,name2$:男性
38650 if sex_type = 1 then
38660 'sex_type=1 :女性のとき
38670 buf_male_female_name1$=name3$
38680 buf_male_female_name2$=name4$
38690 endif
38700 if sex_type = 2 then
38710 'sex_type=2 :男性のとき
38720 buf_male_female_name1$=name1$
38730 buf_male_female_name2$=name2$
38740 endif
38750 buffer_name1_count=len(buf_male_female_name1$)
38760 buffer_name2_count=len(buf_male_female_name2$)
38770 select case buffer_name1_count
38780 'AとBを求める
38790 case 1:
38800 '1.苗字の画数が1つのとき
38810 'A:霊数 1
38820 A=1
38830 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
38840 B = char_count(buf_name1$)
38850 case 2:
38860 '2.苗字の画数が2つのとき
38870 '2-1:苗字の1文字目:buf_name1$
38880 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
38890 '2-2:苗字の2文字目:buf_name2$
38900 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
38910 A=char_count(buf_name1$)
38920 B=char_count(buf_name2$)
38930 'B=char_count(buf_name2$)
38940 case 3:
38950 '3.苗字の画数が3つの時
38960 '3-1:苗字の1文字目:buf_name1$
38970 buf_name1$=Mid$(buf_male_female_name1$,1,1)
38980 '3-2:苗字が3つのときの2つ目の文字をもとめる
38990 '3-2:苗字の2つ目:buf_name2$
39000 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39010 '3-3:苗字が3つのときの3文字目
39020 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39030 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39040 if buf_name2$="々" then
39050 A = char_count(buf_name1$) * 2
39060 B = char_count(buf_name3$)
39070 else
39080 A = char_count(buf_name1$) + char_count(buf_name2$)
39090 B = char_count(buf_name3$)
39100 endif
39110 '姓が4文字
39120 case 4:
39130 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39140 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39150 buf_name3$=Mid$(buf_male_female_name1$,3,1)
39160 buf_name4$=Mid$(buf_male_female_name1$,4,1)
39170 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
39180 B=char_count(buf_name4$)
39190 case else:
39200 end select
39210 '2.C,Dを求める
39220 select case buffer_name2_count
39230 case 1:
39240 '名が1文字の時
39250 'CとDを求める
39260 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39270 C = char_count(buff_name1$)
39280 'D=1:霊数
39290 D = 1
39300 case 2:
39310 '名が2文字の時
39320 'CとDを求める
39330 '名の1文字目:buff_name1$
39340 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39350 '名の2文字目:buff_name2$
39360 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
39370 C = char_count(buff_name1$)
39380 D = char_count(buff_name2$)
39390 case 3:
39400 '名が3文字の時
39410 'CとDを求める
39420 '名の1文字目:buff_name1$
39430 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39440 '名の2文字目:buff_name2$
39450 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
39460 if buff_name2$ = "々" then
39470 buff_name2$ = buff_name1$
39480 endif
39490 '名の3文字目:buff_name3$
39500 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
39510 C = char_count(buff_name1$)
39520 D = char_count(buff_name2$) + char_count(buff_name3$)
39530 end select
39540 '1.先祖運を求める
39550 buffer_Senzo = A + B
39560 '2.性格運を求める
39570 buffer_Seikaku = B + C
39580 '3.愛情運を求める
39590 buffer_Aijyou = C + D
39600 '4.行動運を求める
39610 buffer_Kouzou = A + D
39620 '1.生数を求める
39630 func buf_Seisu(buffer)
39640 if buffer < 10 then
39650 seisu=buffer
39660 endif
39670 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
39680 seisu = 0
39690 endif
39700 if buffer > 10 then
39710 if buffer=20 then
39720 seisu = 0
39730 else
39740 n = buffer - (fix(buffer / 10) * 10)
39750 seisu = n
39760 endif
39770 endif
39780 endfunc seisu
39790 func buf_Wasu(buffer)
39800 buf_wasu = 0:wasu = 0
39810 if buffer < 10 then
39820 '
39830 wasu = buffer:goto wasu:
39840 else
39850 if buffer = 10 then
39860 wasu = 1:goto wasu:
39870 else
39880 if buffer > 10  then
39890 if buffer=19 or buffer=28 or buffer=37 then
39900 wasu=1:goto wasu:
39910 else
39920 if buffer = 29 then
39930 wasu=2:goto wasu:
39940 'endif
39950 else
39960 a = fix(buffer / 10)
39970 b = buffer - a * 10
39980 c = a + b
39990 if c = 19 or c=28 then
40000 wasu=1
40010 '
40020 else
40030 wasu=c
40040 endif
40050 endif
40060 endif
40070 endif
40080 endif
40090 if c < 10 then
40100 wasu = c
40110 'endif
40120 endif
40130 else
40140 if buffer=19 or buffer=28 then
40150 wasu = 1
40160 endif
40170 endif
40180 wasu:
40190 buf_wasu=wasu
40200 endfunc buf_wasu
40210 func buf_kyoudai$(buf_sex_type,buf_Sa$)
40220 select case buf_sex_type
40230 '1.女性の場合
40240 case 1:
40250 if (buf_Sa$ = "連続") then
40260 buffer_kyoudai$="長女"
40270 endif
40280 if (buf_Sa$ = "1差") then
40290 buffer_kyoudai$="次女"
40300 endif
40310 if (buf_Sa$ = "2差") then
40320 buffer_kyoudai$="三女"
40330 endif
40340 if (buf_Sa$ = "3差") then
40350 buffer_kyoudai$="四女"
40360 endif
40370 if (buf_Sa$ = "4差") then
40380 buffer_kyoudai$="五女"
40390 endif
40400 '男性の場合
40410 case 2:
40420 if (buf_Sa$ = "連続") then
40430 buffer_kyoudai$="長男"
40440 endif
40450 if (buf_Sa$ = "1差") then
40460 buffer_kyoudai$="次男"
40470 endif
40480 if (buf_Sa$ = "2差") then
40490 buffer_kyoudai$="三男"
40500 endif
40510 if (buf_Sa$ = "3差") then
40520 buffer_kyoudai$="四男"
40530 endif
40540 if (buf_Sa$ = "4差") then
40550 buffer_kyoudai$="五男"
40560 endif
40570 case else:
40580 end select
40590 kyoudai$=buffer_kyoudai$
40600 endfunc kyoudai$
40610 '1.タテ型
40620 '1.同じ数字が2組ある場合
40630 func Tate_gata$()
40640 if Senzo_wasu = Seikaku_wasu  then
40650 if Aijyou_wasu - Seikaku_wasu > 1 then
40660 Spirit_type$="タテ型"
40670 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
40680 Sa$ = str$(Sa_count) + "差"
40690 else
40700 Spirit_type$="タテ型"
40710 Sa$="連続"
40720 endif
40730 endif
40740 endfunc
40750 '2. ナナメ型
40760 '同じ数字が2組ある場合
40770 func Naname_gata$()
40780 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
40790 Spirit_type$="斜め型"
40800 endif
40810 if Seikaku_wasu - Senzo_wasu > 1 then
40820 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
40830 Sa$=str$(Sa_count)+" 差"
40840 else
40850 Sa$="連続"
40860 endif
40870 endfunc
40880 '3.表十字型
40890 '同じ数字が2組ある場合
40900 func Omote_jyuji_gata1$()
40910 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
40920 Spirit_type$ = "表十字型"
40930 endif
40940 if Senzo _wasu - Seikaku_wasu > 1 then
40950 Sa_count = Senzo_wasu - Seikaku_wasu - 1
40960 else
40970 if Senzo_wasu  -  Seikaku_wasu = 1  then
40980 Sa$="連続"
40990 endif
41000 endif
41010 endfunc
41020 '3-1.表十字型(ヨコ系)
41030 func Omote_jyuji_gata_yoko$()
41040 endfunc
41050 '3-2.表十字型(上下型)
41060 func Omote_jyuji_gata_jyouge()
41070 endfunc
41080 '4.ヨコ型
41090 func Yoko_gata$()
41100 endfunc
41110 '5.上下型
41120 func Jyouge_gata$()
41130 endfunc
41140 '6.1.中広型(タテ系)
41150 func Nakahiro_Tate$()
41160 endfunc
41170 '6.2中広型(ナナメ系)
41180 func Nakahiro_Naname$()
41190 endfunc
41200 '6.3中広型(表十字型)
41210 func Nakahiro_Omotejyuji$()
41220 endfunc
41230 '7.1.中一差(タテ系)
41240 func Chuissa_Tate$()
41250 endfunc
41260 '7.2中一差(ナナメ系)
41270 func Chuissa_Naname$()
41280 endfunc
41290 '8.1.中二差(タテ系)
41300 func Chunissa_Tate$()
41310 endfunc
41320 '8.2.中二差(ナナメ系)
41330 '9.1.順序型(タテ上下系)
41340 func Chunissa_Tate_jyouge$()
41350 endfunc
41360 '9.2.順序型(タテ、ヨコ系)
41370 func Jyunjyo_Tate_yoko$()
41380 endfunc
41390 '9.3.順序型(ナナメ、上下系)
41400 func Jyunjyo_Naname_jyouge$()
41410 endfunc
41420 '9.4.順序型(ナナメ、ヨコ系)
41430 '10.1.中順序型(ヨコ系)
41440 func Nakajyunjyo_yoko$()
41450 endfunc
41460 '10.2.中順序型(上下系)
41470 func Nakajyunjyo_jyouge$()
41480 endfunc
41490 '11.1.隔離型(タテ、上下系)
41500 func Kakuri_tate_jyouge$()
41510 endfunc
41520 '11.2.隔離型(タテ、ヨコ系)
41530 func Kakuri_tate_yoko$()
41540 endfunc
41550 '11.3.隔離型(ナナメ、上下系)
41560 func Kakuri_Naname_jyouge$()
41570 endfunc
41580 '11.4.隔離型(ナナメ、ヨコ系)
41590 func Kakuri_Naname_yoko$()
41600 endfunc
41610 '11.5.隔離型(タテ系)
41620 func Kakuri_tate$()
41630 endfunc
41640 '11.6.隔離型(ナナメ系)
41650 func Kakuri_naname$()
41660 endfunc
41670 '11.7.隔離型(上下、ヨコ系)
41680 func Kakuri_Jyouge_yoko$()
41690 endfunc
41700 Spirit_type$="No data"
41710 '1.先祖運　和数
41720 Senzo_wasu = buf_Wasu(buffer_Senzo)
41730 '2.先祖運 生数
41740 Senzo_seisu = buf_Seisu(buffer_Senzo)
41750 '3.性格運 和数
41760 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
41770 '4.性格運 生数
41780 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
41790 '5.愛情運 和数
41800 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
41810 '6.愛情運 生数
41820 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
41830 '7.行動運 和数
41840 Koudou_wasu = buf_Wasu(buffer_Kouzou)
41850 '8.行動運 生数
41860 Koudou_seisu = buf_Seisu(buffer_Kouzou)
41870 '計算領域 ここまで
41880 '描画領域　ここから
41890 Result_ReiIden1:
41900 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
41910 'Title
41920 line (0,0)-(850,60),rgb(0,0,255),bf
41930 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
41940 'name
41950 line (0,60)-(850,165),rgb(0,255,0),bf
41960 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
41970 '生数、和数
41980 line (0,165)-(850,550),rgb(125,255,212),bf
41990 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
42000 'プッシュメッセージ
42010 line (0,550)-(850,650),rgb(0,255,0),bf
42020 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
42030 '描画領域　ここまで
42040 color rgb(255,255,255)
42050 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
42060 color rgb(0,0,0)
42070 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
42080 color rgb(255,0,255)
42090 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
42100 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
42110 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
42120 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
42130 talk "診断結果１です、あなたのわすうとせいすうです。"
42140 color rgb(0,0,0)
42150 print"エンターキーを押してください"
42160 while (bg <> 2 and key$ <> chr$(13))
42170 key$=inkey$
42180 bg=strig(1)
42190 pause 2.50*100
42200 wend
42210 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
42220 '描画領域　ここから
42230 Result_ReiIden2:
42240 cls 3:init"kb:4"
42250 'Title Color:青
42260 line (0,0)-(860,60),rgb(0,0,255),bf
42270 'Title 枠
42280 line (0,0)-(860,57),rgb(255,0,255),b
42290 'Message
42300 line (0,60)-(860,650),rgb(127,255,212),bf
42310 'Message 枠
42320 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
42330 '
42340 '描画領域　ここまで
42350 color rgb(255,255,255)
42360 print "霊遺伝姓名 診断結果2/3" + chr$(13)
42370 '十二運の基礎運
42380 '1.四大主流型
42390 'パターン１ 同じ数字の場合
42400 '1.オール同数化 全部同じ
42410 '1-if
42420 sa_count=0
42430 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
42440 Spirit_type$ = "オール同数化"
42450 Sa$="3差"
42460 else
42470 'パターン１ 同じ数字2つの場合
42480 '2.タテ型
42490 '数字が２つ同じ
42500 '2-if
42510 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
42520 Spirit_type$ = "タテ型"
42530 '2.タテ型　1
42540 if Koudou_wasu - Senzo_wasu = 1 then
42550 Sa$="連続"
42560 else
42570 '2.タテ型　2
42580 if abs(Senzo_wasu - Koudou_wasu) > 1 then
42590 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
42600 Sa$=str$(Sa_count) + "差"
42610 endif
42620 endif
42630 endif
42640 endif
42650 '2.タテ型　3
42660 '1.type
42670 'Spirit_type$ = "四大主流型 タテ型"
42680 '3.斜め型
42690 '数字が２つ同じ
42700 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
42710 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
42720 Sa$="連続"
42730 else
42740 '先祖＝行動　性格運=愛情運
42750 '3-if
42760 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
42770 Spirit_type$="斜め型"
42780 '3.斜め型 1
42790 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
42800 Sa$ = "連続"
42810 else
42820 if (Seikaku_wasu - Koudou_wasu) < 1 then
42830 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
42840 endif
42850 endif
42860 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
42870 Sa_count = 3
42880 Sa$ = str$(Sa_count - 1) + "差"
42890 else
42900 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
42910 Sa_count = Senzo_wasu - Seikaku_wasu
42920 Sa$ = str$(Sa_count-1) + "差"
42930 endif
42940 endif
42950 endif
42960 '3-if
42970 endif
42980 '3.斜め型 2
42990 '3.斜め型 3
43000 '数字が２つ同じ
43010 '表十字型
43020 '先祖運＝愛情運　　行動運＝性格運
43030 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43040 Spirit_type$="表十字型"
43050 Sa_coun = Senzo_wasu - Seikaku_wasu
43060 if Sa_count > 1 then
43070 Sa$ = str$(Sa_count) + "差"
43080 else
43090 if Sa_count = 1 then
43100 Sa$ = "連続"
43110 endif
43120 endif
43130 endif
43140 'endif
43150 '数字が２つ同じ
43160 '表十字型(横型)
43170 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
43180 Spirit_type$="表十字型(ヨコ型)"
43190 'Sa$を後で書く
43200 endif
43210 '数字が２つ同じ
43220 '表十字型(上下型)
43230 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
43240 Spirit_type$="表十字型(上下型)"
43250 'Sa$を後で書く
43260 endif
43270 'ヨコ型
43280 if Koudou_wasu = Seikaku_wasu then
43290 n=abs(Senzo_wasu - Seikaku_wasu)
43300 n2 = abs(Aijyou_wasu-Seikaku_wasu)
43310 Spirit_type$="ヨコ型"
43320 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
43330 Sa$="連続"
43340 endif
43350 if n = n2 then
43360 if n > 1 then
43370 Sa_count = n - 1
43380 Sa$=str$(Sa_count)+"差"
43390 else
43400 Sa_Count = abs(n - n2)
43410 if Sa_Count > 1 then
43420 Sa$ = str$(Sa_Count) + "差"
43430 endif
43440 endif
43450 endif
43460 endif
43470 '上下型
43480 '同じ数字が1組みある場合
43490 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
43500 Spirit_type$ = "上下型"
43510 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
43520 Sa$="連続"
43530 endif
43540 endif
43550 '連続した数字が2組みある場合
43560 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
43570 Spirit_type$="中広（なかこう)型(表十字型)"
43580 n=Min(Koudou_wasu , Seikaku_wasu)
43590 n2=Max(Aijyou_wasu , Senzo_wasu)
43600 Sa_count = n - n2
43610 if Sa_count > 1 then
43620 Sa$ = str$(Sa_count - 1) + "差"
43630 else
43640 if Sa_count = 1 then
43650 Sa$ = "連続"
43660 endif
43670 endif
43680 endif
43690 '中一差（タテ系)
43700 '連続した数字が2組みある場合
43710 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
43720 'Spirit_type$="中一差（タテ系)"
43730 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
43740 n = Max(Koudou_wasu,Aijyou_wasu)
43750 n2 = Max(Senzo_wasu,Seikaku_wasu)
43760 else
43770 n = Max(Koudou_wasu,Aijyou_wasu)
43780 n2 = Min(Senzo_wasu,Seikaku_wasu)
43790 endif
43800 Sa_count2 = abs(n2 - n) - 1
43810 if Sa_count2 >= 0 then
43820 select case Sa_count2
43830 case 1:
43840 '中一差（タテ系)
43850 Sa$ = "連続"
43860 Spirit_type$="中一差型（タテ系)*"
43870 case 2:
43880 '中二差型（タテ系)
43890 Sa$ = "1差"
43900 Spirit_type$="中二差型（タテ系)"
43910 case 3:
43920 '中広（なかこう)型(タテ系)
43930 Sa$ = "2差"
43940 Spirit_type$="中三差型（タテ系)"
43950 case 4:
43960 Sa$ = "3差"
43970 Spirit_type$="中広型(タテ系)"
43980 case  else:
43990 cls 3:print"例外に入りました"
44000 end select
44010 '
44020 else
44030 cls 3:print"例外に入りました"
44040 endif
44050 endif
44060 'endif
44070 '中一差（斜め系)
44080 '連続した数字が2組みある場合
44090 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
44100 n = Min(Koudou_wasu,Senzo_wasu)
44110 n2 = Max(Aijyou_wasu,Seikaku_wasu)
44120 Sa_count = n - n2 - 1
44130 select case Sa_count
44140 case 1:
44150 '中一差（斜め系)
44160 '連続した数字が2組みある場合
44170 Sa$="1差"
44180 Spirit_type$="中一差（斜め系)"
44190 case 2:
44200 '中二差（斜め系)
44210 '連続した数字が2組みある場合
44220 Sa$="2差"
44230 Spirit_type$="中二差（斜め系)"
44240 case 3:
44250 Sa$="3差"
44260 Spirit_type$="中広型（斜め系）"
44270 case else:
44280 end select
44290 endif
44300 '順序型(タテ、上下系)
44310 '数字が４つ連続してる場合
44320 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
44330 Spirit_type$="順序型(タテ、上下系)"
44340 Sa$="連続"
44350 endif
44360 '中順序型(ヨコ系)
44370 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
44380 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
44390 Spirit_type$="中順序型(ヨコ系)"
44400 Sa$="1差"
44410 else
44420 '順序型(タテ、ヨコ系)
44430 '数字が４つ連続してる場合
44440 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
44450 Spirit_type$="順序型(タテ、ヨコ系)"
44460 Sa$="連続"
44470 endif
44480 endif
44490 endif
44500 '中順序型(上下系)
44510 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
44520 n=Max(Senzo_wasu,Aijyou_wasu)
44530 n2=Min(Koudou_wasu,Seikaku_wasu)
44540 Sa_count = n2 - n
44550 if Sa_count > 1 then
44560 Spirit_type$="中順序型(上下系)"
44570 Sa$ = Str$(Sa_count) + "差"
44580 else
44590 '順序型(斜め、上下系)
44600 '数字が４つ連続してる場合
44610 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
44620 Spirit_type$ = "順序型(斜め、上下系)"
44630 Sa$="連続"
44640 endif
44650 endif
44660 endif
44670 '順序型(斜め、ヨコ系)
44680 '数字が４つ連続してる場合
44690 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
44700 Spirit_type$="順序型(斜め、ヨコ系)"
44710 Sa$="連続"
44720 endif
44730 '隔離型(タテ、上下系)
44740 '数字が1つおきに飛んでる場合
44750 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
44760 Spirit_type$="隔離型(タテ、上下系)"
44770 Sa$="1差"
44780 endif
44790 '隔離型(タテ、ヨコ系)
44800 '数字が1つおきに飛んでる場合
44810 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
44820 Spirit_type$="隔離型(タテ、ヨコ系)"
44830 Sa$="1差"
44840 endif
44850 '隔離型(斜め、上下系)
44860 '数字が1つおきに飛んでる場合
44870 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
44880 Spirit_type$="隔離型(斜め、上下系)"
44890 Sa$="1差"
44900 endif
44910 '隔離型(斜め、ヨコ系)
44920 '数字が1つおきに飛んでる場合
44930 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
44940 Spirit_type$="隔離型(斜め、ヨコ系)"
44950 Sa$="1差"
44960 endif
44970 '隔離型(タテ系)
44980 '数字が2つおきに飛んでる場合
44990 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
45000 Spirit_type$="隔離型(タテ系)"
45010 Sa$="1差"
45020 endif
45030 '隔離型(斜め系)
45040 '数字が2つおきに飛んでる場合
45050 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
45060 Spirit_type$="隔離型(斜め系)"
45070 Sa$="1差"
45080 endif
45090 '隔離型(上下、ヨコ系)
45100 '数字が2つおきに飛んでる場合
45110 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
45120 Spirit_type$="隔離型(上下、ヨコ系)"
45130 Sa$="1差"
45140 'endif
45150 endif
45160 'ここに移動
45170 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
45180 bg=0:bg2=0:key$="":init"kb:4":talk ""
45190 color rgb(255,0,255)
45200 print "●十二の基礎運" + chr$(13)
45210 print Spirit_type$ + Sa$;chr$(13)
45220 print "きょうだい：";Kyoudai$ + chr$(13)
45230 talk "あなたのきょうだいは、"+Kyoudai$+"です"
45240 color rgb(0,0,0)
45250 print"前の画面:左の丸"+chr$(13)
45260 'print"保存して、もう一度やる：スペースキー"+chr$(13)
45270 print"トップ画面に戻る:右の丸"+chr$(13)
45280 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
45290 key$=inkey$
45300 bg=strig(1)
45310 bg2=strig(0)
45320 pause 2.50*100
45330 wend
45340 if (key$ = chr$(13) or bg=2) then
45350 goto Main_Screen1:
45360 else
45370 if (key$ = "b" or bg2 = 2) then
45380 goto Result_ReiIden1:
45390 endif
45400 endif
45410 'ファイル保存 占いデーターを一時保存
45420 Save_Data1:
45430 '********************************************************************
45440 '1.ファイル読み込みで登録件数                                       *
45450 '2.10件かどうかをチェックして10件以下なら保存する                   *
45460 '3.10件以上なら保存しない                                           *
45470 '********************************************************************
45480 '登録件数を求める
45490 '********************************************************************
45500 n=0
45510 open Parsonal_data$ + "Parsonal_data.dat" for append as #3
45520 while (eof(3) = -1)
45530 line input #3,a$
45540 n = n + 1
45550 wend
45560 close #3
45570 '********************************************************************
45580 '登録件数を求める
45590 '********************************************************************
45600 if (n < 10) then
45610 '********************************************************************
45620 '`ファイル読み込み件数をチェック　ここまで
45630 '*********************************************************************
45640 'print#3は末尾は、セミコロンはいらない
45650 '末尾にセミコロンをつけると改行しない
45660 print #3,"名前:" + buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:" + str$(Senzo_wasu);",先祖生数:" + str$(Senzo_seisu);",性格和数:" + str$(Seikaku_wasu);",性格生数:" + str$(Seikaku_seisu);",愛情生数:" + str$(Aijyou_wasu);",愛情和数:" + str$(Aijyou_seisu);",行動和数:" + str$(Koudou_wasu);",行動生数:" + str$(Koudou_seisu)
45670 ui_msg "保存しました"
45680 close #3
45690 else
45700 ui_msg "10件に到達しました。"
45710 endif
45720 goto Reiden_Top_Input_Sextype:
45730 '個人データーリスト  *parsonal_data
45740 Parsonal_data_top:
45750 cls 3:No=0:Key$="":bg=0:y=0
45760 sp_on 0,1:sp_put 0,(10,100),0,0
45770 line(0,0)-(800,60),rgb(0,0,255),bf
45780 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
45790 line (0,60)-(800,440),rgb(127,255,212),bf
45800 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
45810 line (0,440)-(800,670),rgb(0,255,0),bf
45820 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
45830 color rgb(255,255,255)
45840 print"◎個人データーリスト" + chr$(13)
45850 color rgb(255,0,255)
45860 print " :1.霊遺伝姓名学リスト" + chr$(13)
45870 print " :2.霊遺伝姓名学登録件数" + chr$(13)
45880 print " :3.霊遺伝姓名学データー検索"+chr$(13)
45890 print " :4.メインメニューへ行く"+chr$(13)
45900 color rgb(0,0,0):locate 0,10
45910 print "1.霊遺伝姓名学リストを選択"
45920 Parsonal_data_top2:
45930 key$="":bg=0:y=0
45940 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
45950 key$=inkey$
45960 bg=strig(1)
45970 y=stick(1)
45980 pause 2.50*100
45990 wend
46000 '*****************************************************
46010 '1.下のカーソル ここから 2024.10
46020 '*****************************************************
46030 if (key$=chr$(31) or y=1) then
46040 select case No
46050 case 0:
46060 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46070 case 1:
46080 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46090 case 2:
46100 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46110 case 3:
46120 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46130 end select
46140 endif
46150 '******************************************************
46160 '1.下のカーソル　 ここまで 2024.10
46170 '******************************************************
46180 '******************************************************
46190 '2.上のカーソル　 ここから 2024.10
46200 '******************************************************
46210 if (y=-1 or key$=chr$(30)) then
46220 select case No
46230 case 0:
46240 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46250 case 1:
46260 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
46270 case 2:
46280 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46290 case 3:
46300 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46310 end select
46320 endif
46330 '******************************************************
46340 '2.上のカーソル　ここまで 2024.10
46350 '******************************************************
46360 '3.決定ボタン　ここから  2024.10
46370 '******************************************************
46380 if (bg=2 or key$=chr$(13)) then
46390 select case No
46400 case 0:
46410 sp_on 0,0:goto Parsonal_list1:
46420 case 1:
46430 sp_on 1,0:goto Entry_list_count:
46440 case 2:
46450 sp_on 2,0:goto Parsonal_list_Search:
46460 case 3:
46470 sp_on 3,0:goto Main_Screen1:
46480 end select
46490 endif
46500 '******************************************************
46510 '3.決定ボタン　ここまで 2024.10
46520 '******************************************************
46530 '登録件数
46540 Entry_list_count:
46550 N = 0:bg=0:key$="":init"kb:4":talk ""
46560 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
46570 'N=1
46580 while eof(5) = 0
46590 line input #5,line$:N = N + 1
46600 wend
46610 close #5
46620 c=N
46630 cls 3
46640 line (0,0)-(680,60),rgb(0,0,255),bf
46650 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
46660 line (0,60)-(680,180),rgb(127,255,212),bf
46670 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
46680 LINE (0,180)-(680,280),rgb(0,255,0),bf
46690 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
46700 color rgb(255,255,255)
46710 print "◎霊遺伝姓名学登録件数"+chr$(13)
46720 color rgb(255,0,255)
46730 print "登録件数は";c;"件です"+chr$(13)
46740 color rgb(0,0,0)
46750 print "エンターキーを押してください"+chr$(13)
46760 while (key$ <> chr$(13) and bg <> 2)
46770 key$=inkey$
46780 bg=strig(1)
46790 pause 2.50*100
46800 wend
46810 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
46820 'パーソナルリスト ここから
46830 Parsonal_list1:
46840 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
46850 'Title
46860 line (0,0)-(850,60),rgb(0,0,255),bf
46870 line (0,0)-(850,57),rgb(255,255,255),b
46880 '個人名
46890 line (0,60)-(850,165),rgb(0,255,0),bf
46900 line (0,63)-(850,162),rgb(255,0,255),b
46910 '数値リスト
46920 line (0,165)-(850,550),rgb(255,212,212),bf
46930 line (0,168)-(850,547),rgb(0,0,255),b
46940 'ボタンメッセージ
46950 line (0,550)-(850,730),rgb(0,255,0),bf:
46960 line (0,553)-(853,733),rgb(255,0,255),b
46970 'Parsonal_list2:
46980 open "config/Parsonal_data/parsonal_data.dat" for input as #7
46990 'bN=0
47000 while eof(7)=0
47010 line input #7,lines$:bN = bN + 1
47020 wend
47030 close #7
47040 'a=0
47050 open "config/Parsonal_data/parsonal_data.dat" for input as #8
47060 'while eof(8)=0
47070 for i=0 to (bN * 10) -1
47080 input #8,buflines$(i)
47090 'buflines$(i) = line$
47100 'a  =  a  +  1
47110 Next i
47120 'wend
47130 close #8
47140 Parsonal_list2:
47150 while n <= bN * 10
47160 'Parsonal_list2:
47170 cls
47180 color rgb(255,255,255)
47190 print "霊遺伝姓名学 リスト" + chr$(13)
47200 '性別を出す
47210 sex$ = show_sex_type$(buflines$((10*n) + 1))
47220 'n=0
47230 color rgb(0,0,0):
47240 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
47250 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
47260 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
47270 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
47280 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
47290 print "右の丸:次へ行く" + chr$(13)
47300 print "左の丸：トップへ戻る" + chr$(13)
47310 key$=input$(1)
47320 if key$= " " then n=((n+1) Mod bN)
47330 if key$=chr$(13) then goto Main_Screen1:
47340 wend
47350 Parsonal_list_Search:
47360 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
47370 while eof(1)=0
47380 line input #1,lines$:hit_count=hit_count + 1
47390 wend
47400 close #1
47410 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
47420 for i=0 to hit_count*10 - 1
47430 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
47440 next i
47450 close #2
47460 Search_find:
47470 cls 3:init "kb:2":talk ""
47480 'グラフィック領域　ここから
47490 line (0,0)-(770,60),rgb(0,0,255),bf
47500 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
47510 line (0,60)-(770,170),rgb(127,255,212),bf
47520 line(0,63)-(767,173),rgb(0,0,255),b
47530 line(0,170)-(770,440),rgb(0,255,0),bf
47540 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
47550 color rgb(255,255,255)
47560 print "霊遺伝姓名判断 データー検索"+chr$(13)
47570 color rgb(255,0,255)
47580 print "登録件数:";hit_count;"件です"+chr$(13)
47590 color rgb(0,0,0)
47600 print "調べたい人の名前を入れてください"+chr$(13)
47610 Input "名前:",name$
47620 cls
47630 for i = 0 to hit_count * 10 - 1
47640 if name$ = buffname$(i) then
47650 hcount = hcount + 1
47660 endif
47670 next i
47680 if hcount > 0 then
47690 init "kb:4":cls
47700 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
47710 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
47720 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
47730 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
47740 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
47750 while (key$ <> chr$(13) and bg <> 2)
47760 key$=inkey$
47770 bg=strig(1)
47780 bg2=strig(0)
47790 pause 2.50*100
47800 wend
47810 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
47820 else
47830 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
47840 color rgb(0,0,0):print"検索名:";name$+chr$(13)
47850 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
47860 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
47870 a$=input$(1)
47880 IF a$=chr$(13) then goto Main_Screen1:
47890 endif
47900 '相性のデーターを保存する機能
47910 '保存ファイル：bestAisyou.dat
47920 '保存フォルダ:config/Aisyou_dat/
47930 Save_Aisyou:
47940 open "config/Aisyou_data" for append as #1
47950 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
47960 close #1
47970 ui_msg "保存しました"
47980 key$ = input$(1)
47990 '設定変更項目
48000 Config_Setting:
48010 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
48020 sp_on 0,1:sp_put 0,(10,100),0,0
48030 'グラフィック領域　ここから
48040 'Line 1
48050 line (0,0)-(850,60),rgb(0,0,255),bf
48060 line (0,0)-(850,57),rgb(255,255,255),b
48070 'Line 2
48080 line (0,60)-(850,460),rgb(127,255,212),bf
48090 line (0,57)-(850,457),rgb(0,0,0),b
48100 'Line 3
48110 line (0,460)-(850,640),rgb(0,255,0),bf
48120 line (0,457)-(850,637),rgb(0,0,0),b
48130 'グラフィック領域　ここまで
48140 color rgb(255,255,255)
48150 print "設定　トップメニュー" + chr$(13)
48160 color rgb(255,0,255)
48170 print " :1.キーボードの設定" + chr$(13)
48180 print " :2.トップ画面に戻る"
48190 'print " :4.プログラムの終了"+chr$(13)
48200 color rgb(0,0,0):locate 0,10
48210 print "1.キーボードの設定を選択"
48220 Config_Setting2:
48230 y=0:bg=0:key$=""
48240 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
48250 key$=inkey$
48260 y=stick(1)
48270 bg=strig(1)
48280 pause 2.50*100
48290 wend
48300 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
48310 select case No
48320 case 0:
48330 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
48340 case 1:
48350 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
48360 end select
48370 endif
48380 if (key$=chr$(13) or bg=2) then
48390 select case No
48400 case 0:
48410 sp_on 0,0:goto Keyboard_Setting:
48420 case 1:
48430 sp_on 1,0:goto Main_Screen1:
48440 end select
48450 endif
48460 '1.キーボードの設定
48470 Keyboard_Setting:
48480 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
48490 sp_on 0,1:sp_put 0,(10,100),0,0
48500 'グラフィック領域　ここから
48510 'Line 1
48520 line (0,0)-(1050,60),rgb(0,0,255),bf
48530 line (0,0)-(1050-3,57),rgb(255,255,255),b
48540 'Line 2
48550 line (0,60)-(1050,460),rgb(127,255,212),bf
48560 line (0,57)-(1050-3,457),rgb(0,0,0),b
48570 'Line 3
48580 line (0,460)-(1050,640),rgb(0,255,0),bf
48590 line (0,457)-(1050-3,637),rgb(0,0,0),b
48600 'グラフィック領域　ここまで
48610 '文字色　白
48620 color rgb(255,255,255)
48630 print "設定1 キーボードの設定" + chr$(13)
48640 color rgb(255,0,255)
48650 print " :1.バーチャルキーボード表示する" + chr$(13)
48660 print " :2.バーチャルキーボードを表示しない" + chr$(13)
48670 print " :3.トップ画面に戻る" + chr$(13)
48680 print " :4.終了する" + chr$(13)
48690 color rgb(0,0,0)
48700 locate 0,10
48710 print "1.バーチャルキーボードを表示するを選択"
48720 Keyboard_Setting2:
48730 y=0:bg=0:key$=""
48740 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
48750 key$=inkey$
48760 y=stick(1)
48770 bg=strig(1)
48780 pause 2.50*100
48790 wend
48800 '****************************************************************************************************************
48810 '下のカーソル　ここから
48820 '****************************************************************************************************************
48830 if (y=1 or key$=chr$(31)) then
48840 select case No
48850 case 0:
48860 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
48870 case 1:
48880 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
48890 case 2:
48900 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
48910 case 3:
48920 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
48930 end Select
48940 endif
48950 '*******************************************************************************************************************
48960 '下のカーソル　ここまで
48970 '*******************************************************************************************************************
48980 '*******************************************************************************************************************
48990 '上のカーソル　ここから
49000 '********************************************************************************************************************
49010 '********************************************************************************************************************
49020 '上のカーソル　ここまで
49030 '********************************************************************************************************************
49040 '********************************************************************************************************************
49050 '決定ボタン　ここから
49060 '*********************************************************************************************************************
49070 if (key$=chr$(13) or bg=2) then
49080 select case No
49090 case 0:
49100 init "kb:2":
49110 case 1:
49120 sp_on 1,0:init "kb:0":
49130 case 2:
49140 sp_on 2,0:goto Main_Screen1:
49150 case 3:
49160 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
49170 end select
49180 endif
49190 '*********************************************************************************************************************
49200 '決定ボタン　ここまで
49210 '*********************************************************************************************************************
