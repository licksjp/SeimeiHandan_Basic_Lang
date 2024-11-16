100 '**************************************************
110 '初期設定項目                                           *
120 'メモリー定義                                           *
130 '2020.04.02開発再開 Ver176--Ver2.31:2021.10.1 一旦開発終了  *
140 '**************************************************
150 '**************************************************
160 'バージョン履歴                                          *
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
290 'Version1.90:Date:2020.04.27.01(2 in 1開発終了)       *
300 '**************************************************
310 'Version1.91:(新しい流派を追加 3 in １ 開発開始):Date2020.05.01*
320 'Version1.92:Date:2020.05.02:霊遺伝姓名学追加             *
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
700 '*****************************************************
710 '設定ファイル　漢字文字データ                                      *
720 'Version:Mojidata20200411.dat Date:20200411          *
730 'Version:Mojidata20200415.dat Date:20200415          *
740 'Version:Mojidata20200506.dat Date:20200506          *
750 'Version:Mojidata20200513.dat Date:20200513          *
760 'Version:Mojidata20200516.dat Date:20200516          *
770 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
780 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
790 '*****************************************************
800 '* 開発再開　2024.9.20　Ver2.33                        *
810 '* 開発再開 Date:2024.09.20                          *
820 '*************************************************
830 '新機能
840 'Date:2020.05.27
850 'Parsonal_data.datに個人データーを保存機能追加
860 '*****************************************************
870 'メモリー確保 文字領域,数値データー                                  *
880 '*****************************************************
890 clear 4*4000,4*1000000
900 '*****************************************************
910 'Screen 定義                                           *
920 '*****************************************************
930 Screen 1,1,1,1
940 '*****************************************************
950 'Sprite 定義                                           *
960 '*****************************************************
970 gload "./config/gazo/"+"selection.png",1,10,100
980 gload "./config/gazo/"+"selection.png",1,10,200
990 gload "./config/gazo/"+"selection.png",1,10,300
1000 gload "./config/gazo/"+"selection.png",1,10,400
1010 gload "./config/gazo/"+"selection.png",1,10,500
1020 sp_def 0,(10,100),32,32
1030 sp_def 1,(10,200),32,32
1040 sp_def 2,(10,300),32,32
1050 sp_def 3,(10,400),32,32
1060 sp_def 4,(10,500),32,32
1070 '*****************************************************
1080 '改名チェック変数                                            *
1090 '****************************************************
1100 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1110 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1120 '*****************************************************
1130 'キーボードフラグ                                            *
1140 '0:キーボード非表示                                          *
1150 '1:キーボード表示                                           *
1160 '*****************************************************
1170 keyboard_flag = 0
1180 '*****************************************************
1190 '性別の選択用変数                                            *
1200 '*****************************************************
1210 dim sex_type$(2)
1220 '*****************************************************
1230 '相性占い　設定項目 ここから                                      *
1240 '*****************************************************
1250 count=0:line_count=0
1260 dim buffer_Aisyou_type$(10,10)
1270 dim buffer_Kaimei_data_name$(10)
1280 '*****************************************************
1290 '改名チェックの選択肢の変数                                       *
1300 '*****************************************************
1310 dim select$(3)
1320 open "config/Selection/Selection.dat" for input as #2
1330 for i=0 to 2
1340 input #2,select$(i)
1350 next i
1360 close #2
1370 'select$(0)="改名リストに追加する"
1380 'select$(1)="改名リストに追加しない"
1390 'select$(2)="トップ画面に行く"
1400 '*****************************************************
1410 '総数を出す変数 改名チェック変数                                    *
1420 'dim buffer_total$                                   *
1430 '1.理解し合える最良のカップル                                     *
1440 '*****************************************************
1450 dim buf_good_couple1(20)
1460 dim buf_good_couple2(20)
1470 '*****************************************************
1480 '2.互いに自然体でつきあえるカップル                                  *
1490 '*****************************************************
1500 dim buf_natural_couple1(20)
1510 dim buf_natural_couple2(20)
1520 '**************************************************
1530 dim buf_good_for_man1(20)
1540 dim buf_good_for_man2(20)
1550 '*****************************************************
1560 '4.女性にとって居心地の良い相性                                    *
1570 '*****************************************************
1580 dim buf_good_for_woman1(20)
1590 dim buf_good_for_woman2(20)
1600 '*****************************************************
1610 '5.恋愛経験を重ねた後なら愛を育める                                  *
1620 '*****************************************************
1630 dim short_of_experience1(20)
1640 dim short_of_experience2(20)
1650 '*****************************************************
1660 '6.結婚への発展が困難なカップル                                    *
1670 '*****************************************************
1680 dim buf_difficult_for_couple1(20)
1690 dim buf_difficult_for_couple2(20)
1700 '*****************************************************
1710 '7.愛し方にズレが出てくる二人                                     *
1720 '*****************************************************
1730 dim buf_difference_of_love1(20)
1740 dim buf_difference_of_love2(20)
1750 '*****************************************************
1760 '相性占い　設定項目　ここまで
1770 '*****************************************************
1780 '8.互いの価値観が噛み合わない相性 ここから                              *
1790 '*****************************************************
1800 dim buf_difference_of_KachiKan1(20)
1810 dim buf_difference_of_KachiKan2(20)
1820 '*****************************************************
1830 '8.互いに価値観が噛み合わない相性 ここまで                              *
1840 '*****************************************************
1850 '相性診断　相性パターン結果　ここから
1860 dim Result_Aisyou_type$(8)
1870 '*****************************************************
1880 '相性診断 相性パターン結果 ここまで                                  *
1890 '*****************************************************
1900 '2019/04/07 姓名判断アプリ 作成開始                             *
1910 '姓名判断　 名前の総数での吉凶を調べる                                 *
1920 '*****************************************************
1930 buf_count=0:buffer_count=0:count=0:buffer=0
1940 '*****************************************************
1950 '合計文字数                                               *
1960 '*****************************************************
1970 totalmoji=0
1980 dim buf_Input_data$(10),buf_Input_data2$(10)
1990 dim bufer_name$(10),bufer_name2$(10)
2000 dim buf_Input_name$(10),buf_Input_name2$(10)
2010 '*****************************************************
2020 '定数文字1画〜27画                                          *
2030 'ファイルから各画数を読み込んで代入する。                                *
2040 '*****************************************************
2050 '1行目だけ読み込む                                           *
2060 '*****************************************************
2070 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
2080 for i=0 to 26
2090 input #2,buf_lines$(i)
2100 next i
2110 close #2
2120 '*****************************************************
2130 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2140 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2150 '1画
2160 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2170 '2画
2180 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2190 '3画
2200 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2210 '4画
2220 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2230 '5画
2240 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2250 '6画
2260 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2270 '7画
2280 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2290 '8画
2300 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2310 '9画
2320 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2330 '10画
2340 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2350 '11画
2360 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2370 '12画
2380 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2390 '13画
2400 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2410 '14画
2420 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2430 '15画
2440 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2450 '16画
2460 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2470 '17画
2480 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2490 '18画
2500 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
2510 '19画
2520 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
2530 '20画
2540 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
2550 '21画
2560 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
2570 '22画
2580 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
2590 '23画
2600 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2610 '24画
2620 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2630 '25画
2640 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2650 '26画
2660 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2670 '27画
2680 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2690 dim Moji_data$(Moji_total+27+27)
2700 '******************************************************
2710 'dim bufmoji$(10),Input_data$(10)                     *
2720 '１画の文字   サイズ:21+2(漢字)                                 *
2730 '******************************************************
2740 dim buf_char_hiragana1$(Moji_1)
2750 '******************************************************
2760 '2画の文字  サイズ 58+14=72(漢字)                              *
2770 '******************************************************
2780 dim buf_char_hiragana2$(Moji_2)
2790 '******************************************************
2800 '3画の文字 サイズ:48+29=77(漢字)                               *
2810 '******************************************************
2820 dim buf_char_hiragana3$(Moji_3)
2830 '******************************************************
2840 '4画の文字 サイズ:29+51=80(漢字)                               *
2850 '******************************************************
2860 dim buf_char_hiragana4$(Moji_4)
2870 '******************************************************
2880 '５画の文字  サイズ:18+59=77(漢字)                              *
2890 '******************************************************
2900 dim buf_char_hiragana5$(Moji_5)
2910 '******************************************************
2920 '6画の文字  サイズ:79(漢字)                                    *
2930 '******************************************************
2940 dim buf_char_hiragana6$(Moji_6)
2950 '******************************************************
2960 '7画の文字  サイズ:88(漢字)                                    *
2970 '******************************************************
2980 dim buf_char_hiragana7$(Moji_7)
2990 '******************************************************
3000 '8画の文字                                                *
3010 '******************************************************
3020 dim buf_char_hiragana8$(Moji_8)
3030 '******************************************************
3040 '9画の文字                                                *
3050 '******************************************************
3060 dim buf_char_hiragana9$(Moji_9)
3070 '******************************************************
3080 '10画の文字 98文字                                          *
3090 '******************************************************
3100 dim buf_char_hiragana10$(Moji_10)
3110 '******************************************************
3120 '11画の文字                                               *
3130 '******************************************************
3140 dim buf_char_hiragana11$(Moji_11)
3150 '******************************************************
3160 '12画の文字                                               *
3170 '******************************************************
3180 dim buf_char_hiragana12$(Moji_12)
3190 '******************************************************
3200 '13画の文字 81文字                                          *
3210 '******************************************************
3220 dim buf_char_hiragana13$(Moji_13)
3230 '******************************************************
3240 '14画の文字                                               *
3250 '******************************************************
3260 dim buf_char_hiragana14$(Moji_14)
3270 '******************************************************
3280 '15画の文字                                               *
3290 '******************************************************
3300 dim buf_char_hiragana15$(Moji_15)
3310 '******************************************************
3320 '16画の文字                                               *
3330 '******************************************************
3340 dim buf_char_hiragana16$(Moji_16)
3350 '******************************************************
3360 '17画の文字                                               *
3370 '******************************************************
3380 dim buf_char_hiragana17$(Moji_17)
3390 '******************************************************
3400 '18画の文字                                               *
3410 '******************************************************
3420 dim buf_char_hiragana18$(Moji_18)
3430 '19画の文字
3440 dim buf_char_hiragana19$(Moji_19)
3450 '20画の文字
3460 dim buf_char_hiragana20$(Moji_20)
3470 '21画の文字
3480 dim buf_char_hiragana21$(Moji_21)
3490 '22画の文字
3500 dim buf_char_hiragana22$(Moji_22)
3510 '23画の文字
3520 dim buf_char_hiragana23$(Moji_23)
3530 '24画の文字
3540 dim buf_char_hiragana24$(Moji_24)
3550 '25画の文字
3560 dim buf_char_hiragana25$(Moji_25)
3570 dim buf_char_hiragana26$(Moji_26)
3580 dim buf_char_hiragana27$(Moji_27)
3590 '結果表示1　吉凶データー 81パターン
3600 dim buf_Kikkyo$(81)
3610 '結果表示２
3620 '安斎流姓名判断 吉凶  1.地運
3630 dim buf_Kikkyo_Anzai_chiunn$(70)
3640 '安斎流姓名判断　　吉凶  2.人運
3650 dim buf_Kikkyo_Anzai_jinunn$(69)
3660 '安斎流姓名判断 吉凶 3.外運
3670 'dim buf_Kikkyo_Anzai_gaiunn$(70)
3680 '安斎流姓名判断 吉凶　　4.総運
3690 dim buf_Kikkyo_Anzai_total$(80)
3700 '霊遺伝姓名学　変数
3710 A=0
3720 B=0
3730 C=0
3740 D=0
3750 '1.先祖運
3760 buffer_senzo=0
3770 '2.性格運
3780 buffer_seikaku=0
3790 '3.愛情運
3800 buffer_Aijyou=0
3810 '4.行動運
3820 buffer_Kouzou=0
3830 '1-1.先祖運　和数
3840 Senzo_wasu=0
3850 '1-2.先祖運　生数
3860 Senzo_seisu=0
3870 '2-1.性格運 和数
3880 Seikaku_wasu=0
3890 '2-2.性格運 生数
3900 Seikaku_seisu=0
3910 '3-1.愛情運 和数
3920 Aijyou_wasu=0
3930 '3-2.愛情運 生数
3940 Aijyou_seisu=0
3950 '4-1 行動運 和数
3960 Koudo_wasu=0
3970 '4-2 行動運 生数
3980 Koudo_seisu=0
3990 'データー読み込み　ここから
4000 'データー読み込み　1.ひらがな
4010 '1画の文字   6文字 23文字
4020 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
4030 '全ファイルを読み込む
4040 for i = 0 to 26+Moji_total+27
4050 input #1,Moji_data$(i)
4060 next i
4070 close #1
4080 '全ファイル読み込み　ここまで
4090 for i = 27+1 to (Moji_1)+27+1
4100 '1画の文字にデーターをコピーする
4110 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4120 next i
4130 '2画の文字    98文字
4140 for i = Moji_Min_2  to (Moji_Max_2)
4150 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4160 next i
4170 '3文字の文字    77文字
4180 for i = Moji_Min_3  to (Moji_Max_3)
4190 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4200 next i
4210 '4文字の文字   80文字
4220 for i = (Moji_Min_4)  to (Moji_Max_4)
4230 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4240 next i
4250 '5文字の文字 77文字
4260 for i = Moji_Min_5 to (Moji_Max_5)
4270 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4280 next i
4290 '6文字の文字 79文字
4300 for i = Moji_Min_6  to Moji_Max_6
4310 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4320 next i
4330 '7文字の文字 170文字
4340 for i = Moji_Min_7 to Moji_Max_7
4350 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4360 next i
4370 '8画の文字 120文字
4380 for i = Moji_Min_8 to Moji_Max_8
4390 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4400 next i
4410 '9画の文字  103文字
4420 for i = Moji_Min_9 to Moji_Max_9
4430 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4440 next i
4450 '10画の文字 285文字
4460 for i = Moji_Min_10 to (Moji_Max_10)
4470 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4480 next i
4490 '11画の文字
4500 for i = Moji_Min_11 to Moji_Max_11
4510 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
4520 next i
4530 '12画の文字
4540 for i = Moji_Min_12 to Moji_Max_12
4550 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
4560 next i
4570 '13画の文字 81
4580 for i = Moji_Min_13 to Moji_Max_13
4590 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
4600 next i
4610 '14画の文字 66
4620 for i = Moji_Min_14 to Moji_Max_14
4630 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
4640 next i
4650 '15画の文字 59
4660 'for i = Moji_Min_15 to (Moji_Max_15) - 1
4670 for i=Moji_Min_15 to  Moji_Max_15
4680 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
4690 next i
4700 '16画の文字 44
4710 for i=Moji_Min_16 to Moji_Max_16
4720 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
4730 next i
4740 '17画の文字
4750 for i = Moji_Min_17 to Moji_Max_17
4760 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
4770 next i
4780 '18画の文字
4790 for i = Moji_Min_18 to Moji_Max_18
4800 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
4810 next i
4820 '19画の文字 17文字
4830 for i = Moji_Min_19 to Moji_Max_19
4840 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
4850 next i
4860 '20 画の文字 13文字
4870 for  i = Moji_Min_20 to Moji_Max_20
4880 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
4890 NEXT i
4900 '21画の文字 6
4910 for i = Moji_Min_21 to (Moji_Max_21)
4920 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
4930 next i
4940 '22 画の文字 4
4950 for i = Moji_Min_22 to Moji_Max_22
4960 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4970 next i
4980 '23画の文字  3文字
4990 for i = Moji_Min_23 to Moji_Max_23
5000 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5010 next i
5020 '24画の文字  3文字
5030 for i = Moji_Min_24 to Moji_Max_24
5040 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5050 next i
5060 '25 画の文字 4
5070 for i = Moji_Min_25 to Moji_Max_25
5080 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5090 next i
5100 '26画の文字  3文字
5110 for i = Moji_Min_26 to Moji_Max_26
5120 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5130 next i
5140 '27画の文字  3文字
5150 for i = Moji_Min_27 to Moji_Max_27
5160 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5170 next i
5180 '吉凶データー読み込み
5190 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
5200 for i=0 to 80
5210 input #1,buf_Kikkyo$(i+1)
5220 next i
5230 close #1
5240 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
5250 for m=0 to 69
5260 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5270 next m
5280 close #2
5290 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
5300 for i=1 to 70
5310 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
5320 next i
5330 close #3
5340 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
5350 for i=0 to 79
5360 input #4,buf_Kikkyo_Anzai_total$(i)
5370 next i
5380 close #4
5390 '****************************************************
5400 '0.理解し合えるカップル　ここから                                  *
5410 '****************************************************
5420 restore 6560
5430 for i=0 to 19
5440 read buf_good_couple1(i)
5450 next i
5460 restore 6570
5470 for j=0 to 19
5480 read buf_good_couple2(j)
5490 next j
5500 '*****************************************************
5510 '0.理解し合えるカップル ここまで                                   *
5520 '*****************************************************
5530 '*****************************************************
5540 '1.互いに自然体でつきあえる二人　ここから                               *
5550 '*****************************************************
5560 restore 6630
5570 for i=0 to 19
5580 read buf_natural_couple1(i)
5590 next i
5600 restore 6640
5610 for j=0 to 19
5620 read buf_natural_couple2(j)
5630 next j
5640 '*****************************************************
5650 '1.互いに自然体でつきあえる二人　ここまで                               *
5660 '*****************************************************
5670 '2        ここから                                       *
5680 '*****************************************************
5690 restore 6700
5700 for i=0 to 19
5710 read buf_good_for_man1(i)
5720 next i
5730 restore 6710
5740 for j=0 to 19
5750 read buf_good_for_man2(j)
5760 next j
5770 '******************************************************
5780 '2        ここまで                                        *
5790 '******************************************************
5800 '3        ここから                                        *
5810 '******************************************************
5820 restore 6770
5830 for i=0 to 19
5840 read buf_good_for_woman1(i)
5850 next i
5860 restore 6780
5870 for j=0 to 19
5880 read buf_good_for_woman2(j)
5890 next j
5900 '******************************************************
5910 '3        ここまで                                        *
5920 '******************************************************
5930 '4        ここから                                        *
5940 '******************************************************
5950 restore 6840
5960 for i=0 to 19
5970 read short_of_experience1(i)
5980 next i
5990 restore 6850
6000 for j=0 to 19
6010 read short_of_experience2(j)
6020 next j
6030 '******************************************************
6040 '4        ここまで                                        *
6050 '******************************************************
6060 '5.結婚への発展が困難なカップル  ここから                               *
6070 '******************************************************
6080 restore 6910
6090 for i=0 to 19
6100 read buf_difficult_for_couple1(i)
6110 next i
6120 restore 6920
6130 for j=0 to 19
6140 read buf_difficult_for_couple2(j)
6150 next j
6160 '******************************************************
6170 '5.結婚への発展が困難なカップル  ここまで                               *
6180 '******************************************************
6190 '6.愛し方にズレが出る二人 ここから                                   *
6200 '******************************************************
6210 restore 6980
6220 for i=0 to 19
6230 read buf_difference_of_love1(i)
6240 next i
6250 restore 6990
6260 for j=0 to 19
6270 read buf_difference_of_love2(j)
6280 next j
6290 '******************************************************
6300 '6.愛し方にズレが出る二人 ここまで                                   *
6310 '******************************************************
6320 '7.互いの価値観が噛み合わない相性 ここから                               *
6330 '******************************************************
6340 restore 7050
6350 for i=0 to 19
6360 read buf_difference_of_KachiKan1(i)
6370 next i
6380 restore 7060
6390 for j=0 to 19
6400 read buf_difference_of_KachiKan2(j)
6410 next j
6420 '******************************************************
6430 '7.互いの価値観が噛み合わない相性 ここまで                               *
6440 '******************************************************
6450 '相性占いタイプ ここから                                         *
6460 '******************************************************
6470 restore 7140
6480 for i=0 to 7
6490 read Result_Aisyou_type$(i)
6500 next i
6510 '****************************************************
6520 'Data文  ここから                                        *
6530 '****************************************************
6540 '0.理解し合えるカップル　ここから                                  *
6550 '****************************************************
6560 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
6570 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
6580 '****************************************************
6590 '0.理解し合えるカップル　ここまで                                  *
6600 '****************************************************
6610 '1.互いに自然体でつきあえるカップル ここから                            *
6620 '****************************************************
6630 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
6640 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
6650 '****************************************************
6660 '1.互いに自然体でつきあえるカップル　ここまで                            *
6670 '****************************************************
6680 '2.男性にとって居心地の良いカップル  ここから                           *
6690 '****************************************************
6700 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6710 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6720 '****************************************************
6730 '2男性にとって居心地の良いカップル ここまで                             *
6740 '****************************************************
6750 '3女性にとって居心地の良いカップル  ここから                            *
6760 '****************************************************
6770 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
6780 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
6790 '****************************************************
6800 '3女性にとって居心地の良いカップル  ここまで                            *
6810 '****************************************************
6820 '4恋愛経験を重ねた後なら愛を育める ここから                             *
6830 '****************************************************
6840 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6850 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6860 '****************************************************
6870 '4恋愛経験を重ねた後なら愛を育める ここまで                             *
6880 '****************************************************
6890 '5.結婚への発展が困難なカップル ここから                              *
6900 '****************************************************
6910 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6920 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6930 '****************************************************
6940 '5.結婚への発展が困難なカップル ここまで                              *
6950 '****************************************************
6960 '6.愛し方にズレが生じる二人  ここから                               *
6970 '****************************************************
6980 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
6990 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
7000 '****************************************************
7010 '6.愛し方にずれが生じる二人  ここまで                               *
7020 '****************************************************
7030 '7.互いに価値観が噛み合わない相性　ここから                             *
7040 '****************************************************
7050 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
7060 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
7070 '****************************************************
7080 '7.互いに価値観が噛み合わない相性 ここまで                             *
7090 '****************************************************
7100 '相性占い結果パターン ここから                                    *
7110 '****************************************************
7120 '0:理解し合える最良のカップル                                    *
7130 '****************************************************
7140 data "理解し合える最良のカップル"
7150 '****************************************************
7160 '1:互いに自然体で付き合えるカップル                                 *
7170 '****************************************************
7180 data "互いに自然体でつきあえるカップル"
7190 '****************************************************
7200 '2:男性にとって居心地の良い相性                                   *
7210 '****************************************************
7220 data "男性にとって居心地の良い相性"
7230 '****************************************************
7240 '3:女性にとって居心地の良い相性                                   *
7250 '****************************************************
7260 data "女性にとって居心地の良い相性"
7270 '****************************************************
7280 '4:恋愛経験を重ねた後なら愛を育める                                 *
7290 '****************************************************
7300 data "恋愛経験を重ねた後なら愛を育める"
7310 '****************************************************
7320 '5:結婚への発展が困難なカップル                                   *
7330 '****************************************************
7340 data "結婚への発展が困難なカップル"
7350 '****************************************************
7360 '6:愛し方にズレが生じる二人                                     *
7370 '****************************************************
7380 data "愛し方にずれが生じる二人"
7390 '****************************************************
7400 '7:互いに価値観が噛み合わない相性                                  *
7410 '****************************************************
7420 data "互いの価値観が噛み合わない相性"
7430 '************************************************
7440 'Data文   ここまで                                   *
7450 '************************************************
7460 '相性占い結果パターン ここまで
7470 '*******************************
7480 'メイン画面　ここから スタート (キーボードの選択)
7490 '*******************************
7500 '描画領域　ここから
7510 'Select_keybord:
7520 'talk ""
7530 'cls 3:font 48:No=0:y=0:key$="":bg=0:init"kb:4"
7540 'talk "キーボードの選択です。バーチャルキーボードを表示させますか？"
7550 'line (0,0)-(1200,60),rgb(0,0,255),bf
7560 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
7570 'line (0,60)-(1200,380),rgb(127,255,212),bf
7580 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
7590 'line (0,380)-(1200,450),rgb(0,255,0),bf
7600 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
7610 '描画領域　ここまで
7620 'Sprite
7630 'sp_on 0,1:sp_on 1,0:sp_on 2,0
7640 'sp_put 0,(10,100),0,0
7650 'sp_put 1,(10,200),1,0
7660 'sp_put 2,(10,300),2,0
7670 '設定画面 バーチャルキーボードの表示選択
7680 'color rgb(255,255,255)
7690 'print "●バーチャル キーボードの表示の選択" + chr$(13)
7700 'color rgb(255,0,255)
7710 'print " :1.バーチャルキーボードを表示する" + chr$(13)
7720 'print " :2.バーチャルキーボードを表示しない" + chr$(13)
7730 'print " :3.プログラムを終了する" + chr$(13)
7740 'color rgb(0,0,255)
7750 'print "バーチャルキーボードを表示するを選択"
7760 'Select_keybord2:
7770 'y=0:key$="":bg=0
7780 'while (key$ <> chr$(13) and key$ <> chr$(31) and y <> -1 and y <> 1 and bg <> 2)
7790 'y=stick(1)
7800 'key$=inkey$
7810 'bg=strig(1)
7820 'pause 3.56*100
7830 'wend
7840 '*****************************************************
7850 'カーソル下
7860 '*****************************************************
7870 'if (key$=chr$(31) or y=1) then
7880 'select case No
7890 'case 0:
7900 '       No=1:beep:locate 0,8:print "                      ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 0,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
7910 'case 1:
7920 '       No=2:beep:locate 0,8:print "                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 1,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7930 'case 2:
7940 '       No=0:beep:locate 0,8:print "                        ":locate 0,8:print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 2,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
7950 'end select
7960 'endif
7970 '***************************************************
7980 'カーソル上
7990 '***************************************************
8000 'if (y=-1 or key) then
8010 'select case No
8020 'case 0:
8030 '       No=2:beep:LOCATE 0,8:print "                                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 0,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
8040 'case 1:
8050 '       No=0:beep:locate 0,8:print "                                          ":locate 0,8:Print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 1,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
8060 'case 2:
8070 '       No=1:beep:locate 0,8:print "                                           ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
8080 'end select
8090 'endif
8100 'if (key$=chr$(13) or bg=2) then
8110 'select case No
8120 'case 0:
8130 '       init "kb:2":goto Main_Screen1:
8140 'case 1:
8150 '       init "kb:0":goto Main_Screen1:
8160 'case 2:
8170 '       talk"プログラムを終了します":ui_msg"プログラムを終了します":cls 3:cls 4:pause 2.34*100:color rgb(255,255,255):end
8180 'end select
8190 'endif
8200 '1:keybord_flag=1 きーボード表示
8210 'if val(a$) = 1 then init"kb:2":keyboard_flag=1:goto Main_Screen:
8220 '0:keybord_lag=0:キーボード非表示
8230 'if val(a$) = 2 then init"kb:0":keyboard_flag=0:goto Main_Screen:
8240 'keyNo=3 プログラム終了
8250 'if val(a$) = 3 then end
8260 'if val(a$) > 3 or val(a$)  = 0 then goto Select_keybord:
8270 'メイン画面 Top画面1
8280 Main_Screen1:
8290 cls 3:talk "":font 48:color rgb(255,255,255)
8300 talk "メイン画面です。番号を選んでください"
8310 'Text ,Grapgic clear:cls 3
8320 'グラフィック領域　ここから
8330 line (0,0)-(1080,60),rgb(0,0,255),bf
8340 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
8350 line (0,60)-(1080,560),rgb(127,255,212),bf
8360 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
8370 line (0,560)-(1080,740),rgb(0,255,0),bf
8380 'グラフィック領域 ここまで
8390 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
8400 Font 48
8410 '************************************************
8420 'Sprite                                         *
8430 '************************************************
8440 sp_on 0,1:sp_on 1,0:sp_on 2,0
8450 sp_put 0,(10,100),0,0
8460 '************************************************
8470 No=0:init"kb:4":y=0:key$="":bg=0
8480 print "◎姓名判断　メイン画面" + chr$(13)
8490 '************************************************
8500 '文字色:黒                                          *
8510 '************************************************
8520 color rgb(255,0,255)
8530 print " :1.姓名判断" + chr$(13)
8540 print " :2.姓名判断の設定" + chr$(13)
8550 print " :3.個人データーリスト" + chr$(13)
8560 print " :4.ヘルプ" + chr$(13)
8570 print " :5.プログラムの終了" + chr$(13)
8580 'x=touch(4)
8590 'print"7.プログラム終了"+chr$(13)
8600 '*************************************************
8610 '文字:黒                                            *
8620 '*************************************************
8630 color rgb(0,0,0)
8640 locate 0,12
8650 print "1.姓名判断を選択" + chr$(13)
8660 Main_Screen2:
8670 y=0:key$="":bg=0
8680 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8690 y=stick(1)
8700 key$=inkey$
8710 bg=strig(1)
8720 pause 2.55*100
8730 wend
8740 '**************************************************
8750 '1.下のキー  ここから
8760 '**************************************************
8770 if (y = 1 or key$ = chr$(31)) then
8780 select case No
8790 case 0:
8800 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
8810 case 1:
8820 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
8830 case 2:
8840 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
8850 case 3:
8860 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8870 case 4:
8880 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
8890 end select
8900 endif
8910 '***************************************************
8920 '1. 下のキー　ここまで
8930 '***************************************************
8940 '***************************************************
8950 '2.上のキー ここから
8960 '***************************************************
8970 if (key$=chr$(30) or y=-1) then
8980 select case No
8990 case 0:
9000 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9010 case 1:
9020 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9030 case 2:
9040 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9050 case 3:
9060 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9070 case 4:
9080 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9090 end select
9100 endif
9110 '***************************************************
9120 '3.決定ボタン ここから
9130 '***************************************************
9140 if (bg=2 or key$=chr$(13)) then
9150 select case No
9160 case 0:
9170 sp_on 0,0:goto seimeihandan_top:
9180 case 1:
9190 sp_on 1,0:goto seimeihandan_setting:
9200 case 2:
9210 sp_on 2,0:goto Parsonal_data_top:
9220 case 3:
9230 sp_on 3,0: goto help:
9240 case 4:
9250 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9260 end select
9270 endif
9280 '***************************************************
9290 '3.決定ボタン ここまで
9300 '***************************************************
9310 'No$=input$(1)
9320 'if val(No$) = 1  then goto seimeihandan_top:
9330 'if val(No$) = 2 then goto seimeihandan_setting:
9340 'if val(No$) = 3 then goto Parsonal_data_top:
9350 'if val(No$) = 4 then goto help:
9360 'if val(No$) = 5  then talk"終了します":cls 3:end
9370 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9380 'if No = "" then goto 7600
9390 '1.姓名判断トップ画面
9400 seimeihandan_top:
9410 cls:talk ""
9420 No=0:y=0:key$="":bg=0:talk""
9430 'タイトル文字:白
9440 font 48:color rgb(255,255,255),,rgb(176,196,222)
9450 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9460 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9470 sp_put 0,(10,100),0,0
9480 'グラフィック 描画領域　ここから
9490 'Main_Screen:
9500 cls 3
9510 '1.Title:青
9520 'Line 1
9530 line (0,0)-(1080,60),rgb(0,0,255),bf
9540 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
9550 'Line 2
9560 line (0,60)-(1080,450),rgb(127,255,212),bf
9570 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
9580 'Line 3
9590 line (0,450)-(1080,600),rgb(0,255,0),bf
9600 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
9610 'グラフィック 描画領域 ここまで
9620 color rgb(255,255,255)
9630 print"◎姓名判断の種類トップメニュー"+chr$(13)
9640 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9650 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9660 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9670 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9680 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9690 seimeihandan_top2:
9700 y=0:key$="":bg=0
9710 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9720 key$=inkey$
9730 y=stick(1)
9740 bg=strig(1)
9750 pause 2.55*100
9760 wend
9770 '*************************************************
9780 '下のキー  ここから
9790 '*************************************************
9800 if (key$=chr$(31) or y=1) then
9810 select case No
9820 case 0:
9830 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9840 case 1:
9850 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9860 case 2:
9870 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9880 case 3:
9890 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9900 end select
9910 endif
9920 '*************************************************
9930 '下のキー　ここまで
9940 '*************************************************
9950 if (key$=chr$(30) or y=-1) then
9960 select case No
9970 case 0:
9980 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9990 case 1:
10000 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10010 case 2:
10020 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10030 case 3:
10040 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10050 end select
10060 endif
10070 '*************************************************
10080 '決定ボタン　ここから
10090 '*************************************************
10100 if (bg=2 or key$=chr$(13)) then
10110 select case No
10120 case 0:
10130 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10140 case 1:
10150 sp_on 1,0:goto Anzai_Top:
10160 case 2:
10170 sp_on 2,0:goto Kyusei_Top:
10180 case 3:
10190 sp_on 3,0:goto Main_Screen1:
10200 end select
10210 endif
10220 '*************************************************
10230 '決定ボタン　ここまで
10240 '*************************************************
10250 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10260 'if val(selectNo$)=2 then goto Anzai_Top:
10270 'if val(selectNo$)=3 then goto Kyusei_Top:
10280 'if val(selectNo$)=4 then goto Main_Screen1:
10290 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10300 '１．姓名判断(九星姓名判断トップ)
10310 'グラフィック領域　ここから
10320 Kyusei_Top:
10330 cls 3:No=0:y=0:bg=0:key$="":talk""
10340 sp_on 0,1:sp_put 0,(10,100),0,0
10350 line (0,0)-(1080,60),rgb(0,0,250),bf
10360 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
10370 line (0,60)-(1080,460),rgb(127,255,212),bf
10380 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
10390 line (0,460)-(1080,680),rgb(0,255,0),bf
10400 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
10410 'グラフィック領域　ここまで
10420 font 48:color rgb(255,255,255),,rgb(176,196,222)
10430 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10440 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10450 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10460 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10470 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10480 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10490 locate 0,10:color RGB(0,0,0)
10500 print "1.人名の吉凶を見るを選択"
10510 Kyusei_Top2:
10520 bg=0:key$="":y=0
10530 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10540 key$=inkey$
10550 y=stick(1)
10560 bg=strig(1)
10570 pause 2.50*100
10580 wend
10590 '****************************************************
10600 '下のキー　ここから
10610 '*****************************************************
10620 if (y=1 or key$=chr$(30)) then
10630 select case No
10640 case 0:
10650 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10660 case 1:
10670 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10680 case 2:
10690 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10700 case 3:
10710 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10720 end select
10730 endif
10740 '*****************************************************
10750 '下のキー　ここまで
10760 '*****************************************************
10770 '*****************************************************
10780 '上のキー　ここから
10790 '*****************************************************
10800 if (y=-1 or key$=chr$(31)) then
10810 select case No
10820 case 0:
10830 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10840 case 1:
10850 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10860 case 2:
10870 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10880 case 3:
10890 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10900 end select
10910 endif
10920 '*****************************************************
10930 '上のキー　ここまで
10940 '*****************************************************
10950 '*****************************************************
10960 '決定ボタン　ここから
10970 '*****************************************************
10980 if (key$=chr$(13) or bg=2) then
10990 select case No
11000 case 0:
11010 sp_on 0,0:goto Parson_name_kikkyo:
11020 case 1:
11030 sp_on 1,0:goto nick_name_check:
11040 case 2:
11050 sp_on 2,0:goto name_inyo_check:
11060 case 3:
11070 sp_on 3,0:goto seimeihandan_top:
11080 end select
11090 endif
11100 '*****************************************************
11110 '決定ボタン　ここまで
11120 '*****************************************************
11130 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
11140 'color rgb(0,0,0):Input "番号:",selectNo
11150 'selectNo=Input$(1)
11160 'if selectNo = 1 then goto Parson_name_kikkyo
11170 'if selectNo = 2 then goto nick_name_check:
11180 'if selectNo = 3 then goto name_inyo_check:
11190 'if selectNo = 4  then goto seimeihandan_top:
11200 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11210 '2.姓名判断 安斎流姓名判断　トップ画面
11220 '2-1名前の姓の部分を入力
11230 'グラフィック領域　ここから
11240 Anzai_Top_Screen:
11250 cls 3:LINE (0,0)-(1080,60),rgb(0,0,255),bf
11260 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11270 line (0,60)-(1080,260),rgb(127,255,212),bf
11280 pen 5:line(0,57)-(1077,257),rgb(0,0,255),b
11290 line (0,260)-(1080,350),rgb(0,255,0),bf
11300 pen 5:line(0,257)-(1077,347),rgb(0,0,255),b
11310 font 48:talk"":init"KB:2"
11320 'グラフィック領域 ここまで
11330 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11340 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11350 COLOR rgb(255,0,255)
11360 print"名前を2回に分けて入力してください"+chr$(13)
11370 print"名前の姓の部分を入れてください"+chr$(13)
11380 color rgb(0,0,0)
11390 input"名前の姓:",bufname$
11400 buff1=len(bufname$)
11410 '2-2名前の名の部分を入力
11420 'グラフィック描画領域　ここから
11430 cls 3:init"kb:2"
11440 line (0,0)-(1080,60),rgb(0,0,255),bf
11450 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
11460 line (0,60)-(1080,200),rgb(127,255,212),bf
11470 pen 5:line(0,57)-(1077,197),rgb(0,0,255),b
11480 line (0,200)-(1080,260),rgb(0,255,0),bf
11490 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
11500 'グラフィック描画領域 ここまで
11510 COLOR rgb(255,255,255)
11520 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11530 talk"つぎに、名前のめいの部分を入れてください"
11540 color rgb(255,0,255)
11550 print"名前の名の部分を入れてください"+chr$(13)
11560 color rgb(0,0,0)
11570 input"名前の名:",bufname2$
11580 buff2=len(bufname2$)
11590 bufff=buff1+buff2
11600 'goto 24630
11610 select case bufff
11620 '姓1文字,名1文字
11630 case 2:
11640 cls
11650 '天運:buf_tenunn
11660 buf_tenunn=char_count(bufname$)
11670 '地運:buf_chiunn
11680 buf_chiunn=char_count(bufname2$)
11690 '人運 = 天運 + 地運
11700 buf_jinunn=buf_tenunn + buf_chiunn
11710 '外運 = 天運 + 人運
11720 buf_gaiunn = buf_tenunn + buf_chiunn
11730 '総数=buf_gaiunn
11740 buf_total=buf_gaiunn
11750 goto Result_Anzai:
11760 '姓１，名:2
11770 case 3:
11780 cls:
11790 if buff1=1 and buff2=2 then
11800 '1.天運:buf_tenunn
11810 buf_tenunn=char_count(bufname$)
11820 '2文字目の文字
11830 bufer_name2$(0)=Mid$(bufname2$,1,1)
11840 '3文字目の文字
11850 bufer_name2$(1)=Mid$(bufname2$,2,1)
11860 '2.人運
11870 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11880 '3.地運:buf_chiunn
11890 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11900 '4外運:buf_gaiunn
11910 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11920 '5.総数:buf_total
11930 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11940 goto Result_Anzai:
11950 endif
11960 if buff1=2 and buff2=1 then
11970 bufer_name$(0)=Mid$(bufname$,1,1)
11980 bufer_name$(1)=Mid$(bufname$,2,1)
11990 bufer_name2$(0)=Mid$(bufname$,1,1)
12000 '1.天運
12010 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12020 '2.人運
12030 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12040 '3.地運
12050 buf_chiunn=char_count(bufer_name2$(0))
12060 '4.外運
12070 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12080 '5.総数
12090 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12100 goto Result_Anzai:
12110 endif
12120 case 4:
12130 if buff1=2 and buff2=2 then
12140 bufer_name$(0)=Mid$(bufname$,1,1)
12150 bufer_name$(1)=Mid$(bufname$,2,1)
12160 bufer_name2$(0)=Mid$(bufname2$,1,1)
12170 bufer_name2$(1)=Mid$(bufname2$,2,1)
12180 '1.天運
12190 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12200 '2.人運
12210 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12220 '3.地運
12230 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12240 '4.外運
12250 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12260 '5.総数
12270 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12280 goto Result_Anzai:
12290 endif
12300 'パターン2 姓3文字 名1文字 total4文字
12310 if buff1=3 and buff2=1 then
12320 bufer_name$(0)=Mid$(bufname$,1,1)
12330 bufer_name$(1)=Mid$(bufname$,2,1)
12340 bufer_name$(2)=Mid$(bufname$,3,1)
12350 bufer_name2$(0)=Mid$(bufname2$,1,1)
12360 '1.天運
12370 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12380 '2.人運
12390 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12400 '3.地運
12410 buf_chiunn=char_count(bufer_name2$(0))
12420 '4.外運
12430 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12440 '5.総運
12450 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12460 goto Result_Anzai:
12470 endif
12480 'パターン３ 姓1,名３  合計４文字
12490 if buff1=1 and buff2=3 then
12500 bufer_name$(0)=Mid$(bufname$,1,1)
12510 bufer_name2$(0)=Mid$(bufname2$,1,1)
12520 bufer_name2$(1)=Mid$(bufname2$,2,1)
12530 bufer_name2$(2)=Mid$(bufname2$,3,1)
12540 '1.天運
12550 buf_tenunn = char_count(bufer_name$(0))
12560 '2.人運
12570 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12580 '3.地運
12590 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12600 '4.外運
12610 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12620 '5.総運
12630 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12640 goto Result_Anzai:
12650 endif
12660 case 5:
12670 '５文字の名前
12680 '1.  3文字姓 2字名
12690 if buff1=3 and buff2=2 then
12700 bufer_name$(0)=Mid$(bufname$,1,1)
12710 bufer_name$(1)=Mid$(bufname$,2,1)
12720 bufer_name$(2)=Mid$(bufname$,3,1)
12730 bufer_name2$(0)=Mid$(bufname2$,1,1)
12740 bufer_name2$(1)=Mid$(bufname2$,2,1)
12750 '1.天運
12760 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12770 '2.人運
12780 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12790 '3.地運
12800 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12810 '4.外運
12820 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12830 '5.総運
12840 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12850 goto Result_Anzai:
12860 endif
12870 if buff1=2 and buff2=3 then
12880 bufer_name$(0)=Mid$(bufname$,1,1)
12890 bufer_name$(1)=Mid$(bufname$,2,1)
12900 bufer_name2$(0)=Mid$(bufname2$,1,1)
12910 bufer_name2$(1)=Mid$(bufname2$,2,1)
12920 bufer_name2$(2)=Mid$(bufname2$,3,1)
12930 '1.天運
12940 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12950 '2.人運
12960 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12970 '3.地運
12980 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12990 '4.外運
13000 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13010 '5.総運
13020 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13030 goto Result_Anzai:
13040 endif
13050 if buff1=4 and buff2=1 then
13060 bufer_name$(0)=Mid$(bufname$,1,1)
13070 bufer_name$(1)=mid$(bufname$,2,1)
13080 bufer_name$(2)=mid$(bufname$,3,1)
13090 bufer_name$(3)=mid$(bufname$,4,1)
13100 bufer_name2$(0)=mid$(bufname2$,1,1)
13110 '1.天運
13120 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13130 '2.人運
13140 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13150 '3.地運
13160 buf_chiunn=char_count(bufer_name2$(0))
13170 '4.外運
13180 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13190 '5.総運
13200 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13210 goto Result_Anzai:
13220 endif
13230 case 6:
13240 '3字姓 3字名
13250 if buff1=3 and buff2=3 then
13260 bufer_name$(0)=Mid$(bufname$,1,1)
13270 bufer_name$(1)=Mid$(bufname$,2,1)
13280 bufer_name$(2)=Mid$(bufname$,3,1)
13290 bufer_name2$(0)=Mid$(bufname2$,1,1)
13300 bufer_name2$(1)=Mid$(bufname2$,2,1)
13310 bufer_name2$(2)=Mid$(bufname2$,3,1)
13320 '1.天運
13330 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13340 '2.人運
13350 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13360 '3.地運
13370 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13380 '4.外運
13390 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13400 '5.総運
13410 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13420 goto Result_Anzai:
13430 endif
13440 '4字姓 2字名
13450 if buff1=4 and buff2=2 then
13460 bufer_name$(0)=Mid$(bufname$,1,1)
13470 bufer_name$(1)=Mid$(bufname$,2,1)
13480 bufer_name$(2)=Mid$(bufname$,3,1)
13490 bufer_name$(3)=Mid$(bufname$,4,1)
13500 bufer_name2$(0)=Mid$(bufname2$,1,1)
13510 bufer_name2$(1)=Mid$(bufname2$,2,1)
13520 '1.天運
13530 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13540 '2.人運
13550 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13560 '3.地運
13570 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13580 '4.外運
13590 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13600 '5.総運
13610 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13620 goto Result_Anzai:
13630 endif
13640 '4字姓 3字名
13650 case 7:
13660 if buff1=4 and buff2=3 then
13670 bufer_name$(0)=Mid$(bufname$,1,1)
13680 bufer_name$(1)=Mid$(bufname$,2,1)
13690 bufer_name$(2)=Mid$(bufname$,3,1)
13700 bufer_name$(3)=Mid$(bufname$,4,1)
13710 bufer_name2$(0)=Mid$(bufname2$,1,1)
13720 bufer_name2$(1)=Mid$(bufname2$,2,1)
13730 bufer_name2$(2)=Mid$(bufname2$,3,1)
13740 '1.天運
13750 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13760 '2.人運
13770 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13780 ' 3.地運
13790 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13800 '4.外運
13810 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13820 '5.総運
13830 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13840 goto Result_Anzai:
13850 endif
13860 case else:
13870 end select
13880 '2.設定
13890 seimeihandan_setting:
13900 font 46:color rgb(0,0,0),,rgb(176,196,222)
13910 No=0:y=0:key$="":bg=0:talk""
13920 sp_on 0,1:sp_put 0,(10,100),0,0
13930 talk"設定画面です。番号を選んでエンターキーを押してください"
13940 'グラフィック領域　ここから
13950 cls 3:
13960 line (0,0)-(1080,60),rgb(0,0,255),bf
13970 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
13980 line (0,60)-(1080,560),rgb(127,255,212),bf
13990 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
14000 line (0,560)-(1080,750),rgb(0,255,0),bf
14010 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14020 'グラフィック領域 ここまで
14030 '1行目　文字色　 白
14040 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14050 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14060 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14070 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14080 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14090 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14100 COLOR rgb(0,0,0):locate 0,12:
14110 print"1.登録文字の確認を選択"+chr$(13)
14120 seimeihandan_setting2:
14130 y=0:key$="":bg=0
14140 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14150 key$=inkey$
14160 y=stick(1)
14170 bg=strig(1)
14180 pause 2.50*100
14190 wend
14200 '****************************************************
14210 '1.下のカーソル　ここから
14220 '****************************************************
14230 if (key$=chr$(31) or y=1) then
14240 select case No
14250 case 0:
14260 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14270 case 1:
14280 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14290 case 2:
14300 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14310 case 3:
14320 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14330 case 4:
14340 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14350 end select
14360 endif
14370 '*****************************************************
14380 '1.下のカーソル　ここまで
14390 '*****************************************************
14400 '*****************************************************
14410 '2.上のカーソル　ここから
14420 '*****************************************************
14430 if (key$=chr$(30) or y=-1) then
14440 select case No
14450 case 0:
14460 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14470 case 1:
14480 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14490 case 2:
14500 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14510 case 3:
14520 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14530 case 4:
14540 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14550 end select
14560 endif
14570 '******************************************************
14580 '2.上のカーソル　ここまで
14590 '******************************************************
14600 '******************************************************
14610 '3.決定ボタン　ここから
14620 '******************************************************
14630 if (key$=chr$(13) or bg=2) then
14640 select case No
14650 case 0:
14660 sp_on 0,0:goto Entry_moji_Top:
14670 case 1:
14680 sp_on 1,0:goto Entry_moji_check:
14690 case 2:
14700 sp_on 2,0:goto Moji_Kikkyo_Top:
14710 case 3:
14720 sp_on 3,0:goto Main_Screen1:
14730 case 4:
14740 sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14750 end select
14760 endif
14770 '******************************************************
14780 '3.決定ボタン　ここまで
14790 '******************************************************
14800 'Input"番号:",selectNo
14810 'if selectNo=1 then goto Entry_moji_Top:
14820 'if selectNo=2 then goto Entry_moji_check:
14830 'if selectNo=3 then goto Moji_Kikkyo_Top:
14840 'if selectNo=4 then goto Main_Screen1:
14850 'if selectNo=5 then talk"終了します":cls 3:end
14860 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
14870 '3 番号で吉凶を見る 入力
14880 Moji_Kikkyo_Top:
14890 font 46:color rgb(0,0,0),,rgb(176,196,222)
14900 init "kb:2"
14910 'グラフィック描画領域　ここから
14920 cls 3:talk""
14930 line (0,0)-(1080,60),rgb(0,0,255),bf
14940 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
14950 line (0,60)-(1080,255),rgb(127,255,212),bf
14960 PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
14970 line (0,255)-(1080,350),rgb(0,255,0),bf
14980 pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
14990 'グラフィック描画領域 ここまで
15000 color rgb(255,255,255)
15010 print"画数での吉凶判定"+chr$(13)
15020 color rgb(255,0,255)
15030 print"画数を入れてください"+chr$(13)
15040 print"(Max:81文字)"+chr$(13)
15050 color rgb(0,0,0)
15060 Input"文字の画数:",Number
15070 if Number > 81 then goto Moji_Kikkyo_Top:
15080 if Number <=81 then goto Moji_Kikkyo:
15090 '3.番号で吉凶を見る 結果表示
15100 'グラフィック描画領域　ここから
15110 Moji_Kikkyo:
15120 cls 3:init "kb:4":key$="":bg=0
15130 line (0,0)-(700,60),rgb(0,0,255),bf
15140 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15150 line (0,60)-(700,260),rgb(127,255,212),bf
15160 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15170 line (0,260)-(700,350),rgb(0,255,0),bf
15180 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15190 'グラフィック描画領域　ここまで
15200 color rgb(255,255,255)
15210 print "画数で吉凶を求める"+chr$(13)
15220 color rgb(255,0,255)
15230 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15240 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15250 'endif
15260 'color rgb(0,0,0)
15270 'print"エンターキーを押してください"
15280 'key$=Input$(1)
15290 while (key$<>chr$(13) and bg <> 2)
15300 key$=inkey$
15310 bg=strig(1)
15320 pause 2.50*100
15330 wend
15340 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15350 '3.ヘルプ
15360 help:
15370 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15380 No=0:y=0:key$="":bg=0
15390 talk""
15400 '描画領域 ここから
15410 line (0,0) - (1080,60),rgb(0,0,255),bf
15420 sp_on 0,1:sp_put 0,(10,100),0,0
15430 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
15440 line (0,60) - (1080,570),rgb(127,255,212),bf
15450 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
15460 line (0,570) - (1080,650),rgb(0,255,0),bf
15470 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
15480 '描画領域　ここまで
15490 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15500 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15510 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15520 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15530 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15540 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
15550 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15560 color rgb(0,0,0)
15570 locate 0,12:print "1.バージョン情報を選択"
15580 'color rgb(0,0,0):Input"番号:",selectNo
15590 help2:
15600 y=0:key$="":bg=0
15610 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15620 key$=inkey$
15630 y=stick(1)
15640 bg=strig(1)
15650 pause 2.50*100
15660 wend
15670 if (y=1 or key$=chr$(30)) then
15680 select case No
15690 case 0:
15700 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15710 case 1:
15720 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15730 case 2:
15740 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15750 case 3:
15760 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15770 case 4:
15780 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15790 end select
15800 endif
15810 if (y=-1 or key$=chr$(31)) then
15820 select case No
15830 case 0:
15840 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15850 case 1:
15860 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15870 case 2:
15880 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15890 case 3:
15900 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15910 case 4:
15920 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15930 end select
15940 endif
15950 if (key$=chr$(13) or bg=2) then
15960 select case No
15970 case 0:
15980 sp_on 0,0:goto Version_info:
15990 case 1:
16000 sp_on 1,0:goto Document_info:
16010 case 2:
16020 sp_on 2,0:goto Config_Setting:
16030 case 4:
16040 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16050 case 3:
16060 sp_on 3,0:goto Main_Screen1:
16070 end select
16080 endif
16090 'if selectNo = 1 then goto Version_info:
16100 'if selectNo = 2 then goto Document_info:
16110 'if selectNo = 3 then goto Config_Setting:
16120 'プログラムの終了
16130 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
16140 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
16150 '前の画面に戻る
16160 'if selectNo=5 then goto Main_Screen1:
16170 'if selectNo > 4 or selectNo = 0 then goto help:
16180 'Menu1　画面
16190 talk"調べたい名前のみよじをいれてください"
16200 'グラフィック描画領域　ここから
16210 Parson_name_kikkyo:
16220 cls 3:init "KB:2"
16230 line (0,0)-(1080,60),rgb(0,0,255),bf
16240 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16250 line (0,60)-(1080,180),rgb(127,255,212),bf
16260 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
16270 line (0,180)-(1080,250),rgb(0,255,0),bf
16280 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
16290 'グラフィック描画領域　ここまで
16300 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16310 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16320 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16330 cls
16340 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16350 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16360 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16370 goto complate_Kyusei:
16380 'メニュー6　バージョン表示
16390 'グラフィック　描画　領域　 ここから
16400 Version_info:
16410 cls 3:bg=0:talk ""
16420 line (0,0)-(1080,60),rgb(0,0,255),bf
16430 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
16440 line (0,60)-(1080,665),rgb(127,255,212),bf
16450 pen 5:line(0,57)-(1077,662),rgb(0,0,255),b
16460 line (0,665)-(1080,750),rgb(0,255,0),bf
16470 pen 5:line(0,662)-(1077,747),rgb(0,0,255),b
16480 'グラフィック　描画 領域　 ここまで
16490 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16500 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16510 color rgb(255,0,255):PRINT"Ver:238.2024.11.17" + chr$(13)
16520 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16530 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16540 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16550 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16560 'ここを書き換える
16570 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.36です"
16580 color rgb(0,0,0):print"エンターキーを押してください"
16590 Version_info2:
16600 bg=0
16610 while (bg<>2)
16620 bg=strig(1)
16630 pause 2.50*100
16640 wend
16650 if bg = 2  then beep:goto Main_Screen1:
16660 complate_Kyusei:
16670 '文字数を求める変数
16680 buf_char_size=len(name$)
16690 buf_char_size2=len(name2$)
16700 '入力した文字を代入する変数
16710 '入力した文字を配列に代入する処理
16720 '姓名判断データー文字比較
16730 '画数を求める関数
16740 func char_count(buf_count$)
16750 count=0:buffer=0
16760 '1画の文字 23文字
16770 for j=0 to ((Moji_1)-1)
16780 if buf_count$=buf_char_hiragana1$(j) then
16790 count =1:
16800 endif
16810 next j
16820 '2画の文字
16830 for j=0 to ((Moji_2)-1)
16840 if buf_count$=buf_char_hiragana2$(j)  then
16850 count = 2:
16860 endif
16870 next j
16880 for j=0 to ((Moji_3)-1)
16890 if buf_count$=buf_char_hiragana3$(j) then
16900 count =3:
16910 endif
16920 next j
16930 for j=0 to ((Moji_4)-1)
16940 if buf_count$=buf_char_hiragana4$(j) then
16950 count = 4:
16960 endif
16970 next j
16980 for j=0 to ((Moji_5)-1)
16990 if buf_count$=buf_char_hiragana5$(j) then
17000 count = 5:
17010 endif
17020 next j
17030 for j=0 to ((Moji_6)-1)
17040 if buf_count$=buf_char_hiragana6$(j) then
17050 count= 6
17060 endif
17070 next j
17080 for  j=0 to ((Moji_7)-1)
17090 if buf_count$=buf_char_hiragana7$(j) then
17100 count=  7
17110 endif
17120 next j
17130 for j=0 to ((Moji_8)-1)
17140 if buf_count$=buf_char_hiragana8$(j) then
17150 count= 8
17160 endif
17170 next j
17180 for j=0 to ((Moji_9)-1)
17190 if buf_count$=buf_char_hiragana9$(j) then
17200 count=9
17210 endif
17220 next j
17230 for j=0 to ((Moji_10)-1)
17240 if buf_count$=buf_char_hiragana10$(j) then
17250 count=10
17260 endif
17270 next j
17280 for j=0 to ((Moji_11)-1)
17290 if buf_count$=buf_char_hiragana11$(j) then
17300 count=11
17310 endif
17320 next j
17330 for j=0 to  ((Moji_12)-1)
17340 if buf_count$=buf_char_hiragana12$(j) then
17350 count=12
17360 endif
17370 next j
17380 for j=0 to ((Moji_13)-1)
17390 if buf_count$=buf_char_hiragana13$(j) then
17400 count=13
17410 endif
17420 next j
17430 for j=0 to ((Moji_14)-1)
17440 if buf_count$=buf_char_hiragana14$(j) then
17450 count=14
17460 endif
17470 next j
17480 for j=0 to ((Moji_15)-1)
17490 if buf_count$=buf_char_hiragana15$(j) then
17500 count=15
17510 endif
17520 next j
17530 for j=0 to ((Moji_16)-1)
17540 if buf_count$=buf_char_hiragana16$(j) then
17550 count=16
17560 endif
17570 next j
17580 for j=0 to ((Moji_17)-1)
17590 if buf_count$=buf_char_hiragana17$(j) then
17600 count=17
17610 endif
17620 next j
17630 for j=0 to ((Moji_18)-1)
17640 if buf_count$=buf_char_hiragana18$(j) then
17650 count=18
17660 endif
17670 next j
17680 for j=0 to ((Moji_19)-1)
17690 if buf_count$=buf_char_hiragana19$(j) then
17700 count=19
17710 endif
17720 next j
17730 for j=0 to ((Moji_20)-1)
17740 if buf_count$=buf_char_hiragana20$(j) then
17750 count=20
17760 endif
17770 next i
17780 for j=0 to ((Moji_21)-1)
17790 if buf_count$=buf_char_hiragana21$(j) then
17800 count=21
17810 endif
17820 next j
17830 for j=0 to ((Moji_22)-1)
17840 if buf_count$=buf_char_hiragana22$(j) then
17850 count=22
17860 endif
17870 next j
17880 for j=0 to ((Moji_23)-1)
17890 if buf_count$=buf_char_hiragana23$(j) then
17900 count=23
17910 endif
17920 next j
17930 for j=0 to ((Moji_24)-1)
17940 if buf_count$=buf_char_hiragana24$(j) then
17950 count=24
17960 endif
17970 buffer = count
17980 next j
17990 endfunc buffer
18000 func show_sex_type$(sex$)
18010 buf_number=val(Mid$(sex$,4,1))
18020 if buf_number = 1 then
18030 buf_show_sex_type$="性別:女性"
18040 else
18050 if buf_number=2 then
18060 buf_show_sex_type$="性別:男性"
18070 endif
18080 endif
18090 endfunc buf_show_sex_type$
18100 '合計を求める関数
18110 func totalcounts(buffers$)
18120 buffers=0:
18130 for i=0 to len(buffers$)-1
18140 buffers=buffers+char_count(buffers$)
18150 next i
18160 endfunc buffers
18170 buf_count2=0:buf_count3=0
18180 'dim buf_Input_data$(len(name$))
18190 '1.苗字の文字数
18200 for n=0 to (buf_char_size-1)
18210 buf_Input_data$(n)=mid$(name$,n+1,1)
18220 next n
18230 for i=0 to (buf_char_size-1)
18240 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18250 next i
18260 '2.名の文字数
18270 for n2=0 to (buf_char_size2-1)
18280 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18290 next n2
18300 for i2=0 to (buf_char_size2-1)
18310 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18320 next i2
18330 '総数を出す
18340 select case (buf_char_size + buf_char_size2)
18350 case 6:
18360 if ((buf_char_size=4) and (buf_char_size2=2)) then
18370 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18380 endif
18390 if ((buf_char_size=3) and (buf_char_size2=3)) then
18400 if buf_Input_data$(1)="々" then
18410 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18420 else
18430 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18440 endif
18450 endif
18460 case 5:
18470 if ((buf_char_size=4) and (buf_char_size2=1)) then
18480 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18490 endif
18500 if ((buf_char_size=2) and (buf_char_size2=3)) then
18510 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18520 endif
18530 if ((buf_char_size=3) and (buf_char_size2=2)) then
18540 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18550 endif
18560 case 4:
18570 if ((buf_char_size=1) and (buf_char_size2=3)) then
18580 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18590 endif
18600 if ((buf_char_size=2) and (buf_char_size2=2)) then
18610 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18620 endif
18630 if ((buf_char_size=3) and (buf_char_size2=1)) then
18640 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18650 endif
18660 case 3:
18670 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18680 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18690 endif
18700 if ((buf_char_size=2) and (buf_char_size2=1)) then
18710 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18720 endif
18730 case 2:
18740 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18750 case else:
18760 end select
18770 '文字の総数をだす
18780 total_name$ = name$ + name2$
18790 '1.姓星を求める
18800 select case buf_char_size
18810 '苗字1文字のとき
18820 case 1:
18830 buf_seisei = char_count(buf_Input_data$(0)) + 1
18840 '苗字2文字の時
18850 case 2:
18860 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18870 '苗字3文字のとき
18880 case 3:
18890 if (buf_Input_data$(1)="々")  then
18900 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18910 else
18920 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18930 endif
18940 '苗字4文字のとき
18950 case 4:
18960 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18970 case else:
18980 end select
18990 '2.主星をだす
19000 '2.主星
19010 select case (buf_char_size + buf_char_size2)
19020 '姓名5文字のとき
19030 case 6:
19040 if ((buf_char_size=4) and (buf_char_size2=2)) then
19050 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19060 endif
19070 if ((buf_char_size=3) and (buf_char_size2=3)) then
19080 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19090 endif
19100 case 5:
19110 if ((buf_char_size=4) and (buf_char_size2=1)) then
19120 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19130 endif
19140 if ((buf_char_size=2) and (buf_char_size2=3)) then
19150 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19160 endif
19170 if ((buf_char_size=3) and (buf_char_size2=2)) then
19180 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19190 endif
19200 '姓名4文字のとき
19210 case 4:
19220 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19230 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19240 endif
19250 if ((buf_char_size=1) and (buf_char_size2=3)) then
19260 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19270 endif
19280 if ((buf_char_size=3) and (buf_char_size2=1)) then
19290 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19300 endif
19310 '姓名3文字のとき
19320 case 3:
19330 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19340 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19350 else
19360 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19370 endif
19380 case 2:
19390 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19400 case else:
19410 end select
19420 '3.名星を求める
19430 select case (buf_char_size + buf_char_size2)
19440 case 6:
19450 if ((buf_char_size=3) and (buf_char_size2=3)) then
19460 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19470 endif
19480 if ((buf_char_size=4) and (buf_char_size2=2)) then
19490 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19500 endif
19510 case 5:
19520 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19530 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19540 endif
19550 if ((buf_char_size=3) and (buf_char_size2=2)) then
19560 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19570 endif
19580 if ((buf_char_size=2) and (buf_char_size2=3))  then
19590 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19600 endif
19610 case 4:
19620 if ((buf_char_size=2) and (buf_char_size2=2)) then
19630 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19640 endif
19650 if ((buf_char_size=1) and (buf_char_size2=3)) then
19660 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19670 endif
19680 if ((buf_char_size=3) and (buf_char_size2=1)) then
19690 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19700 endif
19710 case 3:
19720 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19730 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19740 endif
19750 if ((buf_char_size=2) and (buf_char_size2=1)) then
19760 buf_meisei=char_count(buf_Input_data2$(0))+1
19770 endif
19780 case 2:
19790 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19800 case else:
19810 end select
19820 '4.外星を求める
19830 select case (buf_char_size + buf_char_size2)
19840 case 6:
19850 if buf_Input_data$(1)="々"  then
19860 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19870 else
19880 if ((buf_char_size=4) and (buf_char_size2=2)) then
19890 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19900 else
19910 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19920 endif
19930 endif
19940 case 5:
19950 if ((buf_char_size=4) and (buf_char_size2=1)) then
19960 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19970 endif
19980 if ((buf_char_size=3) and (buf_char_size2=2)) then
19990 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20000 endif
20010 if ((buf_char_size=2) and (buf_char_size2=3)) then
20020 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20030 endif
20040 case 4:
20050 if ((buf_char_size=2) and (buf_char_size2=2)) then
20060 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20070 endif
20080 if ((buf_char_size=1) and (buf_char_size2=3)) then
20090 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20100 endif
20110 if ((buf_char_size=3) and (buf_char_size2=1)) then
20120 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20130 endif
20140 case 3:
20150 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20160 buf_gaisei=1+char_count(buf_Input_data2$(1))
20170 endif
20180 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20190 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20200 endif
20210 case 2:
20220 buf_gaisei = 2
20230 case else:
20240 end select
20250 '診断結果表示
20260 '1.姓星を出す
20270 'グラフィック描画領域　ここから
20280 Result_Kyusei_Kikkyo:
20290 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20300 '縦の画面
20310 '1行目
20320 line (0,0)-(1500,60),rgb(0,0,255),bf
20330 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20340 '2行目
20350 line (0,60)-(1500,425),rgb(127,255,212),bf
20360 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20370 '3行目
20380 line (0,485)-(1500,425),rgb(0,255,0),bf
20390 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20400 '横の画面　吉凶のランク表
20410 'グラフィック描画領域　ここまで
20420 talk"診断結果です":font 32
20430 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20440 color Rgb(255,0,255)
20450 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20460 '2.主星を出す
20470 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20480 '3.名星を求める
20490 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20500 '4.外星を求める
20510 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20520 '5.総数を出す
20530 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20540 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20550 color rgb(0,0,0)
20560 print"エンターキーを押してください"
20570 while (key$ <> chr$(13) and bg <> 2)
20580 key$=inkey$
20590 bg=strig(1)
20600 pause 2.50*100
20610 wend
20620 'key$=Input$(1)
20630 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20640 '2.主星を出す
20650 'メニュー3 登録文字の確認 ここから
20660 'グラフィック領域　ここから
20670 'タイトル青 文字:白
20680 Entry_moji_Top:
20690 talk ""
20700 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
20710 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
20720 line (0,62)-(1080,155),rgb(0,255,255),bf
20730 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
20740 line (0,155)-(1080,260),rgb(0,255,0),bf
20750 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
20760 'グラフィック領域　ここまで
20770 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20780 '文字:白
20790 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20800 '文字:アクア
20810 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20820 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20830 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20840 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20850 '1画の文字
20860 for i=0 to ((Moji_1)-1)
20870 if (name$=buf_char_hiragana1$(i)) then
20880 buffer_count=1:goto Moji_count_check:
20890 endif
20900 next i
20910 '2画の文字
20920 for i=0 to ((Moji_2)-1)
20930 if (name$=buf_char_hiragana2$(i)) then
20940 buffer_count=2:goto Moji_count_check:
20950 endif
20960 next i
20970 '3画の文字
20980 for i=0 to ((Moji_3)-1)
20990 if (name$=buf_char_hiragana3$(i)) then
21000 buffer_count=3:goto Moji_count_check:
21010 endif
21020 next i
21030 '4画の文字
21040 for i=0 to ((Moji_4)-1)
21050 if (name$=buf_char_hiragana4$(i)) then
21060 buffer_count=4:goto Moji_count_check:
21070 endif
21080 next i
21090 '5画の文字
21100 for i=0 to ((Moji_5)-1)
21110 if (name$=buf_char_hiragana5$(i)) then
21120 buffer_count=5:goto Moji_count_check:
21130 endif
21140 next i
21150 '6画の文字
21160 for i=0 to ((Moji_6)-1)
21170 if (name$=buf_char_hiragana6$(i)) then
21180 buffer_count=6:goto Moji_count_check:
21190 endif
21200 next i
21210 '7画の文字
21220 for i=0 to ((Moji_7)-1)
21230 if (name$=buf_char_hiragana7$(i)) then
21240 buffer_count=7:goto Moji_count_check:
21250 endif
21260 next i
21270 '8画の文字 120 文字
21280 for i=0 to ((Moji_8)-1)
21290 if (name$=buf_char_hiragana8$(i)) then
21300 buffer_count=8:goto Moji_count_check:
21310 endif
21320 next i
21330 '9画の文字  103文字
21340 for i=0 to ((Moji_9)-1)
21350 if (name$=buf_char_hiragana9$(i)) then
21360 buffer_count=9:goto Moji_count_check:
21370 endif
21380 next i
21390 '10画の文字 98文字
21400 for i=0 to ((Moji_10)-1)
21410 if (name$=buf_char_hiragana10$(i)) then
21420 buffer_count=10:goto Moji_count_check:
21430 endif
21440 next i
21450 '11画の文字 98文字
21460 for i=0 to ((Moji_11)-1)
21470 if (name$=buf_char_hiragana11$(i)) then
21480 buffer_count=11:goto Moji_count_check:
21490 endif
21500 next i
21510 '12画の文字
21520 for i=0 to ((Moji_12)-1)
21530 if (name$=buf_char_hiragana12$(i)) then
21540 buffer_count=12:goto Moji_count_check:
21550 endif
21560 next i
21570 '13画の文字
21580 for i=0 to ((Moji_13)-1)
21590 if (name$=buf_char_hiragana13$(i)) then
21600 buffer_count=13:goto Moji_count_check:
21610 endif
21620 next i
21630 '14画の文字
21640 for i=0 to ((Moji_14)-1)
21650 if (name$=buf_char_hiragana14$(i)) then
21660 buffer_count=14:goto Moji_count_check:
21670 endif
21680 next i
21690 '15画の文字
21700 for i=0 to ((Moji_15)-1)
21710 if (name$=buf_char_hiragana15$(i)) then
21720 buffer_count=15:goto Moji_count_check:
21730 endif
21740 next i
21750 '16画の文字
21760 for i=0 to ((Moji_16)-1)
21770 if (name$=buf_char_hiragana16$(i)) then
21780 buffer_count=16:goto Moji_count_check:
21790 endif
21800 next i
21810 '17画の文字
21820 for i=0 to ((Moji_17)-1)
21830 if (name$=buf_char_hiragana17$(i)) then
21840 buffer_count=17:goto Moji_count_check:
21850 endif
21860 next i
21870 '18画の文字 25
21880 for i=0 to ((Moji_18)-1)
21890 if (name$=buf_char_hiragana18$(i)) then
21900 buffer_count=18:goto Moji_count_check:
21910 endif
21920 next i
21930 '19画の文字 17
21940 for i=0 to ((Moji_19)-1)
21950 if (name$=buf_char_hiragana19$(i)) then
21960 buffer_count=19:goto Moji_count_check:
21970 endif
21980 next i
21990 '20画の文字 13
22000 for i=0 to ((Moji_20)-1)
22010 if (name$=buf_char_hiragana20$(i)) then
22020 buffer_count=20:goto Moji_count_check:
22030 endif
22040 next i
22050 '21画の文字 6
22060 for i=0 to ((Moji_21)-1)
22070 if (name$=buf_char_hiragana21$(i)) then
22080 buffer_count=21:goto Moji_count_check:
22090 endif
22100 next i
22110 '22画の文字 4
22120 for i=0 to ((Moji_22)-1)
22130 if (name$=buf_char_hiragana22$(i)) then
22140 buffer_count=22:goto Moji_count_check:
22150 endif
22160 next i
22170 '23画の文字 3
22180 for i=0 to ((Moji_23)-1)
22190 if (name$=buf_char_hiragana23$(i)) then
22200 buffer_count=23:goto Moji_count_check:
22210 endif
22220 next i
22230 '24画の文字
22240 for i=0 to ((Moji_24)-1)
22250 if (name$=buf_char_hiragana24$(i)) then
22260 buffer_count=24:goto Moji_count_check:
22270 endif
22280 next i
22290 'Menu3 結果表示 画数の登録確認
22300 Moji_count_check:
22310 bg=0:init"kb:4"
22320 if (buffer_count = 0) then
22330 '登録文字がない場合の処理
22340 'グラフィック領域　ここから
22350 'Moji_count_check:
22360 cls 3:talk ""
22370 '1行
22380 line (0,0)-(1080,60),rgb(0,0,255),bf
22390 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22400 '2行目
22410 line (0,60)-(1080,165),rgb(127,255,212),bf
22420 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22430 '3行目
22440 line (0,165)-(1080,370),rgb(0,0,255),bf
22450 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22460 '4行目
22470 line (0,370)-(1080,450),rgb(0,255,0),bf
22480 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22490 'グラフィック領域　ここまで
22500 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22510 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22520 talk "この文字は、登録されていません"
22530 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22540 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22550 color rgb(0,0,0):print"コマンド:"
22560 while (bg <> 2 and key$ <> chr$(13))
22570 key$=inkey$
22580 bg=strig(1)
22590 pause 2.50*100
22600 wend
22610 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22620 'key$=Input$(1)
22630 'if key$="q" or key$="Q" then goto Main_Screen1:
22640 'if key$=chr$(13) then goto Entry_moji_Top:
22650 'goto 20270
22660 else
22670 'グラフィック描画領域　ここから
22680 'Entry_moji_check:
22690 cls 3
22700 '1行目
22710 line (0,0)-(1080,58),rgb(0,0,255),bf
22720 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
22730 '2行目
22740 line (0,58)-(1080,100),rgb(127,255,212),bf
22750 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
22760 '3行目
22770 line (0,100)-(1080,280),rgb(0,0,255),bf
22780 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
22790 '4行目
22800 line (0,280)-(1080,340),rgb(0,255,0),bf
22810 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
22820 'グラフィック描画領域　ここまで
22830 color rgb(255,255,255):print "登録文字画数結果表示"
22840 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22850 endif
22860 while (key$<>chr$(13) and bg <> 2)
22870 key$=inkey$
22880 bg=strig(1)
22890 pause 2.50*100
22900 wend
22910 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
22920 'color rgb(255,255,255)
22930 'print"q+エンターキー:トップ画面"+chr$(13)
22940 'print"エンターキー:もう一度やる"+chr$(13)
22950 'color rgb(0,0,0)
22960 'print"コマンド:"
22970 'key$=Input$(1)
22980 'if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
22990 'if key$="q" then buffer_count=0:goto Main_Screen1:
23000 'if not(key$="q") then goto Moji_count_check:
23010 'Menu2 名前の陰陽を見る
23020 'グラフィック描画領域 ここから
23030 name_inyo_check:
23040 init "kb:2":talk ""
23050 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
23060 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
23070 LINE (0,60)-(1080,250),rgb(127,255,212),bf
23080 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
23090 line (0,250)-(1080,350),rgb(0,255,0),bf
23100 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
23110 'グラフィック描画領域　ここまで
23120 cls
23130 color rgb(255,255,255)
23140 print"Menu2 名前の陰陽を見る"+chr$(13)
23150 COLOR rgb(255,0,255)
23160 PRINT"(●:陽,○:陰)"+chr$(13)
23170 print"調べたい名前苗字を入れてください"+chr$(13)
23180 color rgb(0,0,0)
23190 Input"調べたい名前の苗字:",name$
23200 if name$="" then goto name_inyo_check:
23210 'Menu2 陰陽の吉凶を見る 名入力
23220 cls:color rgb(255,255,255)
23230 print"Menu2 名前の陰陽を見る"+chr$(13)
23240 color rgb(255,0,255)
23250 print"(●:陽,○:陰)"+chr$(13)
23260 print"調べたい名前の名を入れてください"+chr$(13)
23270 color rgb(0,0,0)
23280 Input"調べたい名前の名:",name2$
23290 if name2$="" then goto name_inyo_check:
23300 for i=0 to len(name$)-1
23310 name_array$(i)=Mid$(name$,i+1,1)
23320 if char_count(name_array$(i)) mod 2 = 1  then
23330 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23340 else
23350 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23360 endif
23370 next i
23380 for i=0 to len(name2$)-1
23390 name_array2$(i)=Mid$(name2$,i+1,1)
23400 if char_count(name_array2$(i)) mod 2 = 1 then
23410 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
23420 else
23430 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
23440 endif
23450 next i
23460 bufname$=buffer$+buffer2$
23470 '陰陽のタイプ ここから
23480 select case (len(bufname$))
23490 '2文字
23500 case 2:
23510 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
23520 '
23530 '  endif
23540 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23550 '  endif
23560 '3文字
23570 case 3:
23580 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23590 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23600 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23610 '4文字
23620 case 4:
23630 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23640 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23650 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23660 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23670 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23680 '5文字
23690 case 5:
23700 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23710 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23720 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23730 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23740 case 6:
23750 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23760 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23770 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23780 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23790 case else:
23800 buffer_name$="例外に入りました"
23810 end select
23820 '陰陽のタイプ　ここまで
23830 'グラフィック描画領域　ここから
23840 cls 2:key$="":bg=0:init "kb:4":talk ""
23850 line (0,0)-(1080,60),rgb(0,0,250),bf
23860 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
23870 line (0,60)-(1080,285),rgb(127,255,212),bf
23880 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
23890 line (0,280)-(1080,380),rgb(0,255,0),bf
23900 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
23910 'グラフィック描画領域 ここまで
23920 color rgb(255,255,255)
23930 cls:print"名前:";name$ + name2$ + chr$(13)
23940 color rgb(255,0,255)
23950 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23960 print buffer_name$;chr$(13)
23970 color rgb(0,0,0)
23980 print"エンターキーを押してください"
23990 'key$=Input$(1)
24000 while (bg <> 2 and key$ <> chr$(13))
24010 key$=inkey$
24020 bg=strig(1)
24030 pause 2.50*100
24040 wend
24050 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24060 'Menu3
24070 '登録文字数の確認
24080 Entry_moji_check:
24090 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24100 'グラフィック描画領域　ここから
24110 cls 3:init"kb:4":bg=0:key$="":talk ""
24120 '1行目
24130 line (0,0)-(1080,60),rgb(0,0,255),bf
24140 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24150 '2行目
24160 line (0,60)-(1080,150),rgb(157,255,212),bf
24170 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24180 '3行目
24190 line (0,150)-(1080,250),rgb(0,255,0),bf
24200 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24210 'グラフィック描画領域 ここまで
24220 color rgb(255,255,255)
24230 PRINT"登録文字数の確認"+chr$(13)
24240 color rgb(255,0,255)
24250 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24260 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24270 while (key$ <> chr$(13) and bg <> 2)
24280 key$=inkey$
24290 bg=strig(1)
24300 pause 2.50*100
24310 wend
24320 'color rgb(0,0,0)
24330 'print"エンターキーを押してください"+chr$(13)
24340 'key$=Input$(1)
24350 'print"エンターキーを押してください"
24360 'key$=Input$(1)
24370 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24380 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24390 nick_name_check:
24400 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24410 'グラフィック描画領域　ここから
24420 cls 3:init "kb:2"
24430 line (0,0)-(1080,60),rgb(0,0,250),bf
24440 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24450 line (0,60)-(1080,160),rgb(127,255,212),bf
24460 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24470 line (0,160)-(1080,270),rgb(0,255,0),bf
24480 pen 5:line(0,157)-(1077,267),rgb(0,0,255),b
24490 'グラフィック描画領域　ここまで
24500 buf=0:cls
24510 locate 0,0
24520 color rgb(255,255,255)
24530 Print"名前(ニックネーム)の総数で吉凶を判断します"
24540 locate 0,2
24550 color rgb(255,0,255)
24560 PRINT"名前(ニックネーム)を入れてください"
24570 locate 0,4
24580 color rgb(0,0,0)
24590 Input"名前:",name$
24600 if name$="" then goto nick_name_check:
24610 for n=0 to (len(name$)-1)
24620 buf_Input_data$(n)=mid$(name$,n+1,1)
24630 buf=buf+char_count(buf_Input_data$(n))
24640 next n
24650 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24660 '結果表示　グラフィック　ここから
24670 cls 3:init "kb:4":bg=0:key$=""
24680 line (0,0)-(1080,60),rgb(0,0,255),bf
24690 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24700 line (0,60)-(1080,160),rgb(127,255,212),bf
24710 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24720 line (0,160)-(1080,540),rgb(0,255,0),bf
24730 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
24740 '結果表示 グラフィック領域 ここまで
24750 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24760 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24770 'color rgb(0,0,0)
24780 'print "番号を選んでください"+chr$(13)
24790 'PRINT "エンターキー:もう一度やる"+chr$(13)
24800 'print "q:トップに戻る"+chr$(13)
24810 while (key$ <> chr$(13) and bg <> 2)
24820 key$=inkey$
24830 bg=strig(1)
24840 pause 2.50*100
24850 wend
24860 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24870 't "コマンド:"
24880 'ey$=Input$(1)
24890 'if key$="q" then goto Main_Screen1:
24900 'if key$=chr$(13) then goto nick_name_check:
24910 'if No > 2 then goto 24230
24920 '名前2文字
24930 'グラフィック描画領域　ここから
24940 Result_Anzai:
24950 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
24960 line (0,0)-(1400,60),rgb(0,0,255),bf
24970 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24980 line (0,60)-(1400,540-180),rgb(127,255,212),bf
24990 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
25000 line (0,540-180)-(1400,540),rgb(0,255,0),bf
25010 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25020 'グラフィック描画領域 ここまで
25030 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25040 color rgb(255,0,255)
25050 print"天運";buf_tenunn;chr$(13)
25060 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25070 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25080 print"外運";buf_gaiunn;chr$(13)
25090 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25100 COLOR rgb(0,0,0)
25110 PRINT"エンターキー:トップ画面"+chr$(13)
25120 while (key$<>chr$(13) and bg <> 2)
25130 key$=inkey$
25140 bg=strig(1)
25150 pause 2.50*100
25160 wend
25170 'print"エンターキー:もう一度、吉凶をみる"+chr$(13)
25180 'print "コマンド:"
25190 'key$=Input$(1)
25200 'if key$=chr$(13) then goto Anzai_Top_Screen:
25210 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25220 '参考文献 表示 ここから
25230 'グラフィック描画領域　 ここから
25240 Document_info:
25250 cls 3:init"kb:4":bg=0
25260 line (0,0)-(1080,60),rgb(0,0,255),bf
25270 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
25280 line (0,60)-(1080,650),rgb(127,255,212),bf
25290 pen 5:line(0,57)-(1077,647),rgb(0,0,255),b
25300 line (0,650)-(1080,730),rgb(0,255,0),bf
25310 pen 5:line(0,647)-(1077,727),rgb(0,0,255),b
25320 'グラフィック描画領域  ここまで
25330 '参考文献１
25340 cls
25350 color rgb(255,255,255)
25360 locate 0,0
25370 print"◎参考文献"
25380 color rgb(255,0,255)
25390 locate 0,2
25400 print "参考文献 １/4"
25410 locate 0,4
25420 print "Title:九星姓名判断"
25430 locate 0,6
25440 print "Author:高嶋　 美伶"
25450 locate 0,8
25460 print "出版社:日本文芸者"
25470 locate 0,10
25480 print "ISBN:4-537-20073-1"
25490 locate 0,12
25500 print "定価:1,200+税"
25510 color rgb(0,0,0)
25520 locate 0,14
25530 print "エンターキーを押してください"
25540 while (bg <> 2 and key$<>chr$(13))
25550 key$=inkey$
25560 bg=strig(1)
25570 pause 2.50*100
25580 wend
25590 if (key$=chr$(13) or bg=2) then
25600 goto Document_info2:
25610 endif
25620 'key$=Input$(1)
25630 'if key$=chr$(13)  then goto Document_info2:
25640 '参考文献２
25650 Document_info2:
25660 cls:bg=0:key$=""
25670 color rgb(255,255,255)
25680 locate 0,0
25690 print "◎参考文献"
25700 color rgb(255,0,255)
25710 locate 0,2
25720 print "参考文献 ２/4"
25730 locate 0,4
25740 print "Title:究極の姓名判断"
25750 locate 0,6
25760 print "Author:安斎　勝洋"
25770 locate 0,8
25780 print "出版社:説話社"
25790 locate 0,10
25800 print "ISBN:978-4-916217-61-5"
25810 locate 0,12
25820 print "定価:1,800円+税"
25830 color rgb(0,0,0)
25840 locate 0,14
25850 print"エンターキーを押してください"
25860 while (key$<>chr$(13) and bg <> 2)
25870 key$=inkey$
25880 bg=strig(1)
25890 pause 2.50*100
25900 wend
25910 if (key$=chr$(13) or bg=2) then goto Document_info3:
25920 'key$=Input$(1)
25930 'if key$=chr$(13) then goto Document_info3:
25940 '参考文献３
25950 Document_info3:
25960 cls:bg=0:key$=""
25970 color rgb(255,255,255)
25980 locate 0,0
25990 print"◎参考文献"
26000 color rgb(255,0,255)
26010 locate 0,2
26020 print "参考文献 3/4"
26030 locate 0,4
26040 print "Title:新明解現在漢和辞典"
26050 locate 0,6
26060 print "Author:影山輝國(編集主幹)他"
26070 locate 0,8
26080 print "出版社:三省堂"
26090 locate 0,10
26100 print "ISBN:978-4-385-13755-1"
26110 locate 0,12
26120 print "定価:2,800円 + 税"
26130 color rgb(0,0,0)
26140 locate 0,14
26150 print "エンターキーを押してください"
26160 while (key$<>chr$(13) and bg<>2)
26170 key$=inkey$
26180 bg=strig(1)
26190 pause 2.50*100
26200 wend
26210 if (key$=chr$(13) or bg=2) then goto Document_info4:
26220 'key$=Input$(1)
26230 'if key$=chr$(13) then goto Document_info4:
26240 '参考文献４　
26250 '描画領域　ここから
26260 Document_info4:
26270 cls 3:key$="":bg=0
26280 line (0,0)-(1080,60),rgb(0,0,255),bf
26290 line (0,0)-(1077,57),rgb(0,255,0),b
26300 line (0,60)-(1080,650),rgb(127,255,212),bf
26310 LINE (0,60)-(1077,647),rgb(0,0,255),b
26320 LINE (0,650)-(1080,830),rgb(0,255,0),bf
26330 line (0,650)-(1077,833),rgb(0,0,255),b
26340 '描画領域　ここまで
26350 'cls
26360 color rgb(255,255,255)
26370 locate 0,0
26380 print "◎参考文献"
26390 COLOR rgb(255,0,255)
26400 locate 0,2
26410 print "参考文献 4/4"
26420 locate 0,4
26430 print "Title:姓名の暗号"
26440 locate 0,6
26450 print "Author:樹門　幸宰(じゅもん こうざい)"
26460 locate 0,8
26470 print "出版社:幻冬舎"
26480 locate 0,10
26490 print "定価:1400円 + 税"
26500 locate 0,12
26510 print "ISBN:4-344-00777-8"
26520 color rgb(0,0,0)
26530 locate 0,14
26540 print "参考文献トップに行く:エンターキー"
26550 locate 0,16
26560 print "スペース：トップメニューに行く"
26570 while (key$<>chr$(13) and bg<>2)
26580 key$=inkey$
26590 bg=strig(1)
26600 pause 2.50*100
26610 wend
26620 if (key$=chr$(13) or bg=2) then goto help:
26630 'key$=Input$(1)
26640 'トップ画面に戻る
26650 'if key$ = " " then goto help:
26660 'if key$ = chr$(13) then goto Document_info:
26670 '安斎流姓名判断　メニュー
26680 'グラフィック領域　ここから
26690 Anzai_Top:
26700 cls 3:talk ""
26710 No=0:init"kb:4":y=0:bg=0:key$=""
26720 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26730 sp_on 0,1:sp_put 0,(10,100),0,0
26740 line (0,0)-(1080,60),rgb(0,0,255),bf
26750 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26760 line (0,60)-(1080,475),rgb(127,255,212),bf
26770 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26780 line (0,475)-(1080,650),rgb(0,255,0),bf
26790 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26800 'グラフィック描画領域　ここまで
26810 'talk
26820 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
26830 color rgb(255,255,255)
26840 print "安斎流姓名判断　トップメニュー" + chr$(13)
26850 color rgb(255,0,255)
26860 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26870 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26880 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26890 print " :4.前の画面に戻る"+chr$(13)
26900 locate 0,10
26910 color rgb(0,0,0)
26920 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26930 Anzai_Top2:
26940 y=0:bg=0:key$=""
26950 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26960 key$=inkey$
26970 y=stick(1)
26980 bg=strig(1)
26990 pause 2.50*100
27000 wend
27010 '******************************************************
27020 '1.下のキー　ここから
27030 '******************************************************
27040 if (y=1 or key$=chr$(30)) then
27050 select case No
27060 case 0:
27070 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27080 case 1:
27090 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27100 case 2:
27110 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27120 case 3:
27130 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27140 end select
27150 endif
27160 '******************************************************
27170 '1.下のキー　ここまで
27180 '******************************************************
27190 '******************************************************
27200 '2.上のキー　ここから
27210 '******************************************************
27220 if (y=-1 or key$=chr$(31)) then
27230 select case No
27240 case 0:
27250 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27260 case 1:
27270 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27280 case 2:
27290 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27300 case 3:
27310 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27320 end select
27330 endif
27340 '******************************************************
27350 '2.上のキー　ここまで
27360 '******************************************************
27370 '******************************************************
27380 '3.決定ボタン　ここから
27390 '******************************************************
27400 if (key$=chr$(13) or bg=2) then
27410 select case No
27420 case 0:
27430 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27440 case 1:
27450 sp_on 1,0:goto Anzai_Top_Screen:
27460 case 2:
27470 sp_on 2,0:goto Anzai_Kaimei_Check:
27480 case 3:
27490 sp_on 3,0:goto seimeihandan_top:
27500 end select
27510 endif
27520 '******************************************************
27530 '3.決定ボタン　ここまで
27540 '******************************************************
27550 'if key=2 then goto Anzai_Top_Screen:
27560 'if key=3 then goto Anzai_Kaimei_Check:
27570 'if key=1 then goto Anzai_Aishou_Top1:
27580 'if key=4 then goto seimeihandan_top:
27590 'if key > 4 or key = 0 then goto Anzai_Top:
27600 '2.安斎流姓名判断　男女の相性占い　ここから
27610 'グラフィック描画領域 ここから
27620 'Anzai_Aishou_Top1:
27630 cls 3
27640 '1行目
27650 line (0,0)-(1080,60),rgb(0,0,255),bf
27660 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27670 '2行目
27680 line (0,60)-(1080,160),rgb(127,255,212),bf
27690 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27700 '3行目
27710 line (0,160)-(1080,300),rgb(0,255,0),bf
27720 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27730 'グラフィック描画領域　男女の相性占い ここまで
27740 'if s1=1 then goto 26600
27750 'if s1=2 then goto 27400
27760 '1.名前の姓を入力  男性
27770 Anzai_Aishou_Top1:
27780 cls 3
27790 '1行目
27800 line (0,0)-(1080,60),rgb(0,0,255),bf
27810 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27820 '2行目
27830 line (0,60)-(1080,160),rgb(127,255,212),bf
27840 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27850 '3行目
27860 line (0,160)-(1080,300),rgb(0,255,0),bf
27870 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27880 color rgb(255,255,255)
27890 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27900 color rgb(255,0,255)
27910 print "男性の名前(姓)を入れてください"+chr$(13)
27920 color rgb(0,0,0)
27930 Input "男性の名前(姓):",name$
27940 '2.名前の名を入力  男性
27950 cls 3:talk ""
27960 '1行目
27970 line (0,0)-(1080,60),rgb(0,0,255),bf
27980 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27990 '2行目
28000 line (0,60)-(1080,160),rgb(127,255,212),bf
28010 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
28020 '3行目
28030 line (0,160)-(1080,300),rgb(0,255,0),bf
28040 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
28050 color rgb(255,255,255)
28060 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28070 color rgb(255,0,255)
28080 print "男性の名前（名）をいれてください"+chr$(13)
28090 color rgb(0,0,0)
28100 Input "男性の名前(名):",name2$
28110 'if s2=2 then goto 27600
28120 '3.名前(姓)入力 女性
28130 Anzai_Aishou_Top2:
28140 cls:init "kb:2":talk ""
28150 color rgb(255,255,255)
28160 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28170 color rgb(255,0,255)
28180 print "女性の名前(姓)を入れてください"+chr$(13)
28190 color rgb(0,0,0)
28200 Input"女性の名前:",name3$
28210 '4.名前（名)入力 女性
28220 cls:init "kb:2":talk ""
28230 color rgb(255,255,255)
28240 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28250 color rgb(255,0,255)
28260 print "女性の名前（名）を入れてください"+chr$(13)
28270 color rgb(0,0,0)
28280 Input "女性の名前(名):",name4$
28290 '男性　の地運 を求める
28300 '姓名の合計数
28310 '1.男性 名前の文字数を求める
28320 '地運を求める
28330 buf_male_name1 = len(name$)
28340 buf_male_name2 = len(name2$)
28350 buf_male_count = buf_male_name1 + buf_male_name2
28360 '2.女性 名前の文字数を求める
28370 buf_female_name1 = len(name3$)
28380 buf_female_name2 = len(name4$)
28390 buf_female_count = buf_female_name1 + buf_female_name2
28400 'goto Anzai_Aishou_Check:
28410 '1.男性の地運を求める
28420 select case buf_male_count
28430 case 2:
28440 '男性の地運を求める
28450 buf_chiunn=char_count(name2$)
28460 case 3:
28470 '姓が一文字 名が2文字
28480 if buf_male_name1=1 and buf_male_name2=2 then
28490 buf_Input_name$(0)=mid$(name2$,1,1)
28500 buf_Input_name$(1)=mid$(name2$,2,1)
28510 '地運を計算
28520 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28530 endif
28540 if buf_male_name1=2 and buf_male_name2=1 then
28550 buf_Input_name$(0)=Mid$(name2$,1,1)
28560 buf_chiunn=char_count(buf_Input_name$(0))
28570 endif
28580 case 4:
28590 '1.姓１，名３
28600 if bufmale_name1=1 and buf_male_name2=3 then
28610 buf_Input_name$(0)=Mid$(name2$,1,1)
28620 buf_Input_name$(1)=Mid$(name2$,2,1)
28630 buf_Input_name$(2)=Mid$(name2$,3,1)
28640 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28650 endif
28660 '2.姓２,名２
28670 if buf_male_name1=2 and buf_male_name2=2 then
28680 buf_Input_name$(0)=Mid$(name2$,1,1)
28690 buf_Input_name$(1)=Mid$(name2$,2,1)
28700 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28710 endif
28720 '3.姓３、名１
28730 if buf_male_name1=3 and buf_male_name2=1 then
28740 buf_Input_name$(0)=Mid$(name2$,1,1)
28750 '地運を求める
28760 buf_chiunn=char_count(buf_Input_name$(0))
28770 endif
28780 case 5:
28790 '1.姓２，名３
28800 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28810 buf_Input_name$(0)=Mid$(name2$,1,1)
28820 buf_Input_name$(1)=Mid$(name2$,2,1)
28830 buf_Input_name$(2)=Mid$(name2$,3,1)
28840 '地運を求める
28850 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28860 endif
28870 '2.姓３，名２
28880 if buf_male_name1=3 and buf_male_name2=2 then
28890 buf_Input_name$(0)=Mid$(name2$,1,1)
28900 buf_Input_name$(1)=Mid$(name2$,2,1)
28910 '地運を求める
28920 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28930 endif
28940 '3.姓４、名１
28950 buf_Input_name$(0)=Mid$(name2$,1,1)
28960 '地運を求める
28970 buf_chiunn = char_count(buf_Input_name$(0))
28980 case 6:
28990 '1.姓３，名３
29000 if buf_male_name1=3 and buf_male_name2=3 then
29010 buf_Input_name$(0)=Mid$(name2$,1,1)
29020 buf_Input_name$(1)=Mid$(name2$,2,1)
29030 buf_Input_name$(2)=Mid$(name2$,3,1)
29040 '地運を求める
29050 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
29060 endif
29070 '２.姓４，名２
29080 if buf_male_name1=4 and buf_male_name2=2 then
29090 buf_Input_name$(0)=Mid$(name2$,1,1)
29100 buf_Input_name$(1)=Mid$(name2$,2,1)
29110 '地運を求める
29120 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29130 endif
29140 case else:
29150 end select
29160 'if s1=1 then goto 33290
29170 'if s2=2 then goto 30910
29180 '2.女性　外運を求める
29190 select case buf_female_count
29200 '姓と名の合計数
29210 case 2:
29220 buf_Input_name2$(0)=Mid$(name3$,1,1)
29230 buf_Input_name2$(1)=Mid$(name4$,1,1)
29240 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29250 case 3:
29260 if buf_female_name1=2 and buf_female_name2=1 then
29270 buf_Input_name2$(0)=Mid$(name3$,1,1)
29280 buf_Input_name2$(1)=Mid$(name3$,2,1)
29290 buf_Input_name2$(2)=Mid$(name4$,1,1)
29300 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29310 endif
29320 if buf_female_name1=1 and buf_female_name2=2 then
29330 buf_Input_name2$(0)=Mid$(name3$,1,1)
29340 buf_Input_name2$(1)=Mid$(name4$,1,1)
29350 buf_Input_name2$(2)=Mid$(name4$,2,1)
29360 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29370 endif
29380 case 4:
29390 '姓１、名３
29400 if buf_female_name1=1 and buf_female_name2=3 then
29410 buf_Input_name2$(0)=Mid$(name3$,1,1)
29420 buf_Input_name2$(1)=Mid$(name4$,1,1)
29430 buf_Input_name2$(2)=Mid$(name4$,2,1)
29440 buf_Input_name2$(3)=Mid$(name4$,3,1)
29450 '外運を求める
29460 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29470 endif
29480 '姓２,名２
29490 if buf_female_name1=2 and buf_female_name2=2 then
29500 buf_Input_name2$(0)=Mid$(name3$,1,1)
29510 buf_Input_name2$(1)=Mid$(name3$,2,1)
29520 buf_Input_name2$(2)=Mid$(name4$,1,1)
29530 buf_Input_name2$(3)=Mid$(name4$,2,1)
29540 '外運を求める
29550 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29560 endif
29570 '姓３，名１
29580 if buf_female_name1=3 and buf_female_name2=1 then
29590 buf_Input_name2$(0)=Mid$(name3$,1,1)
29600 buf_Input_name2$(1)=Mid$(name3$,2,1)
29610 buf_Input_name2$(2)=Mid$(name3$,3,1)
29620 buf_Input_name2$(3)=Mid$(name4$,1,1)
29630 '外運を求める
29640 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29650 endif
29660 case 5:
29670 '姓 3,名2
29680 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29690 buf_Input_name2$(0)=Mid$(name3$,1,1)
29700 buf_Input_name2$(1)=Mid$(name3$,2,1)
29710 buf_Input_name2$(2)=Mid$(name3$,3,1)
29720 buf_Input_name2$(3)=Mid$(name4$,1,1)
29730 buf_Input_name2$(4)=Mid$(name4$,2,1)
29740 '外運を求める
29750 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29760 endif
29770 '姓４、名１
29780 if buf_female_name1=4 and buf_female_name2=1 then
29790 buf_Input_name2$(0)=Mid$(name3$,1,1)
29800 buf_Input_name2$(1)=Mid$(name3$,2,1)
29810 buf_Input_name2$(2)=Mid$(name3$,3,1)
29820 buf_Input_name2$(3)=Mid$(name3$,4,1)
29830 buf_Input_name2$(4)=Mid$(name4$,1,1)
29840 '外運を求める
29850 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29860 endif
29870 '姓２、名３
29880 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29890 buf_Input_name2$(0)=Mid$(name3$,1,1)
29900 buf_Input_name2$(1)=Mid$(name3$,2,1)
29910 buf_Input_name2$(2)=Mid$(name4$,1,1)
29920 buf_Input_name2$(3)=Mid$(name4$,2,1)
29930 buf_Input_name2$(4)=Mid$(name4$,3,1)
29940 '外運を求める
29950 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29960 endif
29970 case 6:
29980 '1.姓３，名３
29990 if buf_female_name1=3 and buf_female_name2=3 then
30000 buf_Input_name2$(0)=Mid$(name3$,1,1)
30010 buf_Input_name2$(1)=Mid$(name3$,2,1)
30020 buf_Input_name2$(2)=Mid$(name3$,3,1)
30030 buf_Input_name2$(3)=Mid$(name4$,1,1)
30040 buf_Input_name2$(4)=Mid$(name4$,2,1)
30050 buf_Input_name2$(5)=Mid$(name4$,3,1)
30060 '外運を求める
30070 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
30080 endif
30090 '2.姓４，名２
30100 if buf_female_name1=4 and buf_female_name2=2 then
30110 buf_Input_name2$(0)=Mid$(name3$,1,1)
30120 buf_Input_name2$(1)=Mid$(name3$,2,1)
30130 buf_Input_name2$(2)=Mid$(name3$,3,1)
30140 buf_Input_name2$(3)=Mid$(name3$,4,1)
30150 buf_Input_name2$(4)=Mid$(name4$,1,1)
30160 buf_Input_name2$(5)=Mid$(name4$,2,1)
30170 '外運を求める
30180 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
30190 endif
30200 case 7:
30210 '1姓４，名３
30220 '外運を求める
30230 end select
30240 'if s=1 then goto Anzai_Aishou_Check:
30250 'if s2=2 then goto Anzai_Aishou_Check:
30260 'goto 33530
30270 func buf_number(a)
30280 if a < 10 then
30290 buf_tansu = a
30300 endif
30310 if a > 9 and a < 20 then
30320 buf_tansu = a - 10
30330 endif
30340 if a > 19 and a < 30 then
30350 buf_tansu = a - 20
30360 endif
30370 buffer = buf_tansu
30380 endfunc buffer
30390 check$="No Data"
30400 func Aisyou_type$(man,woman)
30410 Result$="No data"
30420 'check$="No data"
30430 '1.理解し合える最良のカップル
30440 '1のFor文
30450 for i=0 to 19
30460 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30470 Result$ = "1.理解し合える最良のカップル"
30480 check$="○"
30490 ResultNo = 0
30500 endif
30510 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30520 Result$="2.互いに自然体でつきあえるカップル"
30530 ResultNo=1
30540 check$="○"
30550 endif
30560 '3.男性にとって居心地の良いカップル
30570 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30580 Result$="3.男性にとって居心地の良いカップル"
30590 ResultNo=2
30600 check$="△"
30610 endif
30620 '4.女性にとって居心地の良いカップル
30630 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30640 Result$ = "4.女性にとって居心地の良いカップル"
30650 ResultNo=3
30660 check$="△"
30670 endif
30680 '5.恋愛経験を重ねた後なら愛を育める
30690 'for i=0 to 9
30700 'for j=0 to 9
30710 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
30720 Result$="5.恋愛経験を重ねた後なら愛を育める"
30730 ResultNo=4
30740 check$="×"
30750 endif
30760 'next j
30770 'next i
30780 '6
30790 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30800 Result$="6.結婚への発展が困難なカップル"
30810 check$="×"
30820 endif
30830 '7
30840 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30850 Result$="7.愛し方にずれが出てくる二人"
30860 check$="×"
30870 endif
30880 '8
30890 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30900 Result$="8.互いに価値観が噛み合わない相性"
30910 check$="×"
30920 endif
30930 next i
30940 'bufAisyou$ = Result$
30950 endfunc  Result$
30960 Anzai_Aishou_Check:
30970 cls 3:init"kb:2":bg=0
30980 buf_t_chiunn = buf_number(buf_chiunn)
30990 buf_t_gaiunn=buf_number(buf_gaiunn)
31000 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
31010 'グラフィック描画領域　ここから
31020 'Title欄
31030 line(0,0)-(1080,60),rgb(0,0,255),bf
31040 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31050 '結果表示欄
31060 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
31070 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
31080 'ボタン選択欄
31090 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
31100 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
31110 'グラフィック描画領域　ここまで
31120 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
31130 color rgb(255,255,255):font 40:init"kb:4"
31140 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31150 color rgb(255,0,255)
31160 print "男性の名前:";name$+name2$;chr$(13)
31170 print "地運の単数";buf_t_chiunn;chr$(13)
31180 print "女性の名前:";name3$+name4$;chr$(13)
31190 print "外運の単数";buf_t_gaiunn;chr$(13)
31200 print"二人の相性:";bufferAisyou$;chr$(13)
31210 print"相性判定:";check$;chr$(13)
31220 color rgb(0,0,0)
31230 print "エンターキー:トップ" + chr$(13)
31240 while (bg <> 2)
31250 bg=strig(1)
31260 pause 2.50*100
31270 wend
31280 if (bg=2) then goto Main_Screen1:
31290 'print "S or sキー:保存" + chr$(13)
31300 'key$=Input$(1)
31310 'if key$=chr$(13) then
31320 'goto Main_Screen1:
31330 'else
31340 'Data保存追加 2021.10.01
31350 'goto Save_Aisyou:
31360 'endif
31370 '改名チェック
31380 'グラフィック描画領域 ここから
31390 Anzai_Kaimei_Check:
31400 cls 3:init "kb:2":talk ""
31410 line (0,0)-(1080,60),rgb(0,0,255),bf
31420 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
31430 line (0,60)-(1080,370+50),rgb(127,255,212),bf
31440 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
31450 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
31460 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
31470 'グラフィック描画領域 ここまで
31480 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31490 color rgb(255,255,255)
31500 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31510 color rgb(255,0,255)
31520 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31530 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31540 print "10文字までで入れてください"
31550 locate 0,9
31560 color rgb(0,0,0)
31570 Input "名前:",name$
31580 '計算領域　ここから
31590 '名前から総運を計算
31600 '1.名前の文字数を出す
31610 n=len(name$)
31620 if n > 10 or n=0 then
31630 '文字数が10個までという表示
31640 'トーストで表示
31650 if n > 10 then
31660 ui_msg "文字は10個までです"
31670 else
31680 ui_msg "文字が空っぽです"
31690 endif
31700 goto Anzai_Aishou_Check:
31710 endif
31720 'それ以外
31730 '総数を出す処理を出す
31740 '画面消去　データー初期化
31750 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31760 'グラフィック描画領域 ここから
31770 line(0,0)-(1080,60),rgb(0,0,255),bf
31780 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31790 line(0,60)-(1080,300),rgb(127,255,212),bf
31800 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
31810 line(0,300)-(1080,440),rgb(0,255,0),bf
31820 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
31830 'グラフィック描画領域 ここまで
31840 'cls 3
31850 color rgb(255,255,255)
31860 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31870 for i=0 to len(name$)-1
31880 buf_Input_name$(i)=Mid$(name$,i+1,1)
31890 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31900 next i
31910 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31920 color rgb(255,0,255)
31930 print "名前:";name$
31940 print "この名前の総数:";bufer_total
31950 print "この名前の吉凶:";buf_Kikkyo$;"です"
31960 color rgb(255,0,255)
31970 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31980 print bufer_total$+chr$(13)
31990 'if buffer_K=0 or buffer_K=1  then
32000 'dim select$(2)
32010 'select$(0)="改名をする"
32020 'select$(1)="改名しない"
32030 'talk"改名しますか？"
32040 'color rgb(0,0,0)
32050 'Input"改名しますか？",key$
32060 'num=ui_select("select$","改名リストに追加しますか?")
32070 'num=0:改名リストに追加する
32080 'if num=0  then goto 35680
32090 'else
32100 'num=1:改名リストに追加しない
32110 'if num=1 then goto 31440
32120 'num=2:トップ画面に行く
32130 'if num=2 then goto 7600
32140 'endif
32150 'if buffer_K=0 then
32160 'print num,select$(num)
32170 color rgb(0,0,0)
32180 locate 0,7
32190 print"エンターキーを押してください"
32200 while (key$ <> chr$(13) and bg <> 2)
32210 key$=inkey$
32220 bg=strig(1)
32230 pause 2.50*100
32240 wend
32250 'key$=Input$(1)
32260 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
32270 'endif
32280 '改名チェック関数
32290 func Kaimei_check$(r$)
32300 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
32310 '改名の必要なし
32320 talk"この名前は改名の必要がございません。"
32330 print"この名前は、改名の必要はありません"+chr$(13)
32340 '改名の必要ナシの場合
32350 K=0
32360 buffer_K=K
32370 else
32380 '改名の必要あり
32390 Kaimei_check:
32400 talk"この名前は、改名の必要があります"
32410 print"この名前は、改名の必要があります"+chr$(13)
32420 color rgb(0,0,0)
32430 print"改名しますか？"
32440 K=1
32450 buffer_K=K
32460 '◎表示パターン
32470 'パターン１
32480 'color rgb(0,0,0)
32490 'Input"エンターキーを押してください",key$
32500 endif
32510 endfunc result$
32520 'ui_msg="1件追加しました,残り9件追加できます"
32530 'ファイルの存在確認 設定ファイル:mydata.dat
32540 cls
32550 '設定ファイルの確認
32560 if dir$("config/Parsonal_data/mydata.dat")="" then
32570 'print "File not found"+chr$(13)
32580 '1.ファイルがない時
32590 goto Kaimei_check:
32600 else
32610 'ファイルがある時
32620 goto sex_type_female:
32630 'goto 26290
32640 endif
32650 '1-1.ファイルがない時の処理
32660 '1-1.自分の姓名判断を入力
32670 'グラフィック描画領域 ここから
32680 cls 3
32690 '1行目
32700 line(0,0)-(1080,60),rgb(0,0,250),bf
32710 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
32720 '2行目
32730 line(0,60)-(1080,80),rgb(127,255,212),bf
32740 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
32750 '3行目
32760 line(0,80)-(1080,120),rgb(0,255,0),bf
32770 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
32780 'グラフィック描画領域 ここまで
32790 '1.名前の姓の入力
32800 '1行目 Title
32810 color rgb(255,255,255)
32820 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32830 '2行目 名前の姓を入力
32840 color rgb(255,0,255)
32850 print "自分の名前の姓を入れてください"+chr$(13)
32860 color rgb(0,0,0)
32870 'buf_name1$:自分の名前の姓
32880 Input"名前の姓:",buf_name1$
32890 '2.名前の名の入力
32900 '画面消去
32910 Anzai_myProfile2:
32920 cls
32930 '1行目 Title
32940 color rgb(255,255,255)
32950 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32960 '2行目 名前の名の入力
32970 color rgb(255,0,255)
32980 print "自分の名前の名を入れてください"+chr$(13)
32990 color rgb(0,0,0)
33000 'buf_name2$:自分の名前の名
33010 input "名前の名:",buf_name2$
33020 '3.性別入力
33030 cls
33040 '1行目 Title
33050 color rgb(255,255,255)
33060 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
33070 '2行目 性別入力
33080 color rgb(255,0,255)
33090 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
33100 sex_type$(0)="女性"
33110 sex_type$(1)="男性"
33120 type=ui_select("sex_type$","性別を選んでください")
33130 '3行目
33140 '性別変数 sex_type$
33150 if type = 1 then
33160 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 32390
33170 else
33180 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
33190 endif
33200 if sex_type$="男性" then
33210 name$=buf_name1$
33220 name2$=buf_name2$
33230 s=1
33240 goto Anzai_Aishou_Top1:
33250 endif
33260 sex_type_female:
33270 If sex_type$="女性" then
33280 name3$=buf_name1$
33290 name4$=buf_name2$
33300 s=2
33310 goto Anzai_Aishou_Top2:
33320 endif
33330 '登録プロフィール確認画面
33340 Entry_Profile:
33350 cls 3:talk ""
33360 'グラフィック描画領域　ここから
33370 '1行目
33380 line(0,0)-(1200,60),rgb(0,0,255),bf
33390 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33400 '2行目
33410 line(0,60)-(1200,360),rgb(127,255,212),bf
33420 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
33430 '3行目
33440 line(0,100)-(1200,420),rgb(0,255,0),bf
33450 pen 5:line(0,97)-(1197,417)
33460 if s2=2 then goto Entry_Profile:
33470 'グラフィック描画領域　ここまで
33480 '1行目 Title
33490 color rgb(255,255,255)
33500 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33510 color rgb(255,0,255)
33520 print"名前:";buf_name1$+buf_name2$;chr$(13)
33530 PRINT"性別:";sex_type$;chr$(13)
33540 if sex_type$="女性" then
33550 print"外運:";buf_gaiunn;chr$(13)
33560 buffer$="外運:"+str$(buf_gaiunn)
33570 endif
33580 if sex_type$="男性" then
33590 print"地運:";buf_chiunn;chr$(13)
33600 buffer$="地運:"+str$(buf_chiunn)
33610 endif
33620 color rgb(0,0,0)
33630 input"(登録する:Yes/登録しない:No):",key$
33640 if key$="Yes" or key$="yes" then
33650 open "config/Parsonal_data/mydata.dat" for output as #1
33660 print #1,"名前:";buf_name1$+buf_name2$
33670 print #1,"性別:";sex_type$
33680 print #1,buffer$
33690 close #1
33700 ui_msg"データーを保存しました"
33710 goto Main_Screen1:
33720 endif
33730 '２．設定ファイルが存在する場合
33740 'ファイル読み込み 自分のデーターを表示
33750 cls
33760 open "Config/Parsonal_data/mydata.dat" for input as #2
33770 line input #2,a$
33780 line input #2,b$
33790 line input #2,c$
33800 close #2
33810 buffername$=a$
33820 buffername2$=b$
33830 buffername3$=c$
33840 bufff$=Mid$(buffername$,1,3)
33850 buff2$=Mid$(buffername2$,1,3)
33860 buff3$=Mid$(buffername3$,1,3)
33870 n=len(a$)
33880 sextype$=Mid$(buffername2$,4,2)
33890 if sextype$="男性" then
33900 '男性:s2
33910 s2=1
33920 '女性のデーター入力
33930 goto Anzai_Top:
33940 endif
33950 if sextype$="女性" then
33960 s2=2
33970 '男性のデーター入力
33980 goto Anzai_Top:
33990 endif
34000 '女性のデーター結果表示
34010 '1.プロフィール性別男性の場合 ここから
34020 Result_Anzai_Aisyou:
34030 cls:talk ""
34040 color rgb(255,255,255)
34050 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
34060 name_length = len(bufername$)
34070 myname$ = Mid$(buffername$,4,4)
34080 chiunn = val(Mid$(buffername3$,4,2))
34090 tansuu1 = buf_number(chiunn)
34100 bufname$ = name3$ + name4$
34110 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
34120 color rgb(255,0,255)
34130 print "自分の名前(男性):";myname$;chr$(13)
34140 print "地運の端数:";tansuu1;chr$(13)
34150 print "相手の名前(女性):";bufname$;chr$(13)
34160 print "外運の端数:";buf_t_gaiunn;chr$(13)
34170 print "二人の相性:";bufferAisyou$;chr$(13)
34180 talk "二人の相性は" + bufferAisyou$
34190 color rgb(0,0,0)
34200 print"エンターキーを押してください"
34210 key$=Input$(1)
34220 'トップ画面に行く
34230 if key$ = chr$(13) then goto Main_Screen1:
34240 '1.プロフィール性別男性の場合　ここまで
34250 '2.プロフィール性別女性の場合　ここから
34260 cls 3
34270 '描画領域　ここから
34280 line (0,0)-(1080,60),rgb(0,0,255),bf
34290 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34300 line (0,60)-(1080,460),rgb(127,255,212),bf
34310 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
34320 LINE (0,460)-(1080,520),rgb(0,255,0),bf
34330 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
34340 '描画領域 ここまで
34350 color rgb(255,255,255)
34360 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
34370 '計算領域　ここから
34380 myname$ = Mid$(buffername$,4,4)
34390 gaiunn = val(Mid$(buffername3$,4,2))
34400 buf_t_gaiunn = buf_number(buf_gaiunn)
34410 buf_t_chiunn = buf_number(buf_chiunn)
34420 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
34430 bufname$ = name$ + name2$
34440 '計算領域 ここまで
34450 color rgb(255,0,255)
34460 print "自分の名前(女性):";myname$;chr$(13)
34470 print "外運の端数";buf_t_gaiunn;chr$(13)
34480 print "相手の名前(男性):";bufname$;chr$(13)
34490 print "地運の端数:";buf_t_chiunn;chr$(13)
34500 print "二人の相性:";bufferAisyou$;chr$(13)
34510 color rgb(0,0,0)
34520 print "エンターキーを押してください"
34530 key$ = Input$(1)
34540 if key$=chr$(13) then goto Main_Screen1:
34550 '2.プロフィール性別女性の場合　ここまで
34560 'endfunc result$
34570 '取扱説明書
34580 '相性占い　トップメニュー ここから
34590 'グラフィック ここから
34600 Anzai_Aishou_Top_Menu:
34610 cls 3:talk ""
34620 '1行目
34630 line(0,0)-(1080,60),rgb(0,0,255),bf
34640 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34650 '2行目
34660 line(0,60)-(1080,380),rgb(127,255,212),bf
34670 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34680 '3行目
34690 line(0,360)-(1080,540),rgb(0,255,0),bf
34700 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34710 'グラフィック　ここまで
34720 color rgb(255,255,255)
34730 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34740 color rgb(255,0,255)
34750 print"1.男女の相性"+chr$(13)
34760 print"2.前の画面に戻る"+chr$(13)
34770 print"3.トップ画面に戻る"+chr$(13)
34780 color rgb(0,0,0)
34790 print"番号を選んでください:"+chr$(13)
34800 Input"番号:",key
34810 if key = 1 then goto Anzai_Aishou_Top1:
34820 if key = 2 then goto Anzai_Top:
34830 if key = 3 then goto Main_Screen1:
34840 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34850 'グラフィック領域　ここから
34860 Life_Tenki:
34870 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34880 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34890 line(0,60)-(1150,180),rgb(127,255,212),bf
34900 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34910 line(0,120)-(1150,200),rgb(0,255,0),bf
34920 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34930 'グラフィック領域　ここまで
34940 '誕生日入力　生まれた年
34950 color rgb(255,255,255)
34960 print"誕生日入力　生まれた年" + chr$(13)
34970 COLOR rgb(255,0,255)
34980 print"生まれた年を入れてください" + chr$(13)
34990 color rgb(0,0,0)
35000 Input"生まれた年:",year
35010 '誕生日入力 生まれた月
35020 cls
35030 color rgb(255,255,255)
35040 print"誕生日入力 生まれた月" + chr$(13)
35050 color rgb(255,0,255)
35060 print"生まれた月を入力してください" + chr$(13)
35070 color rgb(0,0,0)
35080 Input"生まれた月:",month
35090 '誕生日入力 生まれた日を入力
35100 cls
35110 color rgb(255,255,255)
35120 print"誕生日入力 生まれた日入力" + chr$(13)
35130 color rgb(255,0,255)
35140 print"生まれた日を入力してください" + chr$(13)
35150 color rgb(0,0,0)
35160 Input"生まれた日:",day
35170 '人生の転機を見る
35180 'グラフィック領域　ここから
35190 cls 3:talk ""
35200 line(0,0)-(1150,60),rgb(0,0,255),bf
35210 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35220 line(0,60)-(1150,470),rgb(127,255,212),bf
35230 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35240 line(0,470)-(1150,520),rgb(0,255,0),bf
35250 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
35260 'グラフィック描画領域  ここまで
35270 cls
35280 buffername$=bufname$ + bufname2$
35290 color rgb(255,255,255)
35300 print buffername$;"さんの人生の転機を見る1"+chr$(13)
35310 color rgb(255,0,255)
35320 buf_total2=buf_total-(fix(buf_total/10)*10)
35330 tenki1_year=year+buf_total2
35340 tenki2_year=year+buf_total2+5
35350 tenki3_year=year+buf_total2+5+5
35360 tenki4_year=year+buf_total2+5+5+5
35370 tenki1=buf_total2
35380 tenki2=buf_total2+5
35390 tenki3=buf_total2+5+5
35400 tenki4=buf_total2+5+5+5
35410 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35420 print tenki1_year;"年";tenki1;"歳"+chr$(13)
35430 print tenki2_year;"年";tenki2;"歳"+chr$(13)
35440 print tenki3_year;"年";tenki3;"歳"+chr$(13)
35450 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35460 color rgb(0,0,0)
35470 print"エンターキーを押してください"
35480 key$=Input$(1)
35490 if key$=chr$(13) then goto Life_Tenki:
35500 '2ページ目
35510 cls
35520 color rgb(255,255,255)
35530 print buffername$;"さんの人生の転機2"+chr$(13)
35540 color rgb(255,0,255)
35550 tenki5_year = tenki4_year + 5
35560 tenki6_year = tenki4_year + 5 + 5
35570 tenki7_year = tenki4_year + 5 + 5 + 5
35580 tenki8_year = tenki4_year + 5 + 5 + 5+5
35590 tenki5 = tenki4 + 5
35600 tenki6 = tenki4 + 5 + 5
35610 tenki7 = tenki4 + 5 + 5 + 5
35620 tenki8 = tenki4 + 5 + 5 + 5 + 5
35630 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35640 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35650 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35660 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35670 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35680 color rgb(0,0,0)
35690 print"エンターキーを押してください",key$
35700 key$=Input$(1)
35710 if key$ = chr$(13) then goto 34800
35720 '3ページ目
35730 cls
35740 color rgb(255,255,255)
35750 print buffername$;"さんの人生の転機3"+chr$(13)
35760 '計算部分
35770 tenki_year9=tenki8_year + 5
35780 tenki_year10=tenki8_year + 5 + 5
35790 tenki_year11=tenki8_year+5+5+5
35800 tenki_year12=tenki8_year+5+5+5+5
35810 tenki9=tenki8+5
35820 tenki10=tenki8+5+5
35830 tenki11=tenki8+5+5+5
35840 tenki12=tenki8+5+5+5+5
35850 color rgb(255,0,255)
35860 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35870 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35880 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35890 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35900 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35910 color rgb(0,0,0)
35920 print"エンターキーを押してください"
35930 key$=Input$(1)
35940 if key$=chr$(13) then goto 35030
35950 'グラフィック描画領域 ここから
35960 cls 3
35970 line(0,0)-(1150,60),rgb(0,0,255),bf
35980 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35990 line(0,60)-(1150,470),rgb(127,255,212),bf
36000 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
36010 line(0,470)-(1150,850),rgb(0,255,0),bf
36020 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
36030 'グラフィック描画領域 ここまで
36040 '4回目
36050 cls
36060 color rgb(255,255,255)
36070 print buffername$;"さんの人生の転機４"+chr$(13)
36080 color rgb(255,0,255)
36090 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
36100 '計算部分
36110 tenki_year13 = tenki_year12 + 5
36120 tenki_year14 = tenki_year12 + 5 + 5
36130 tenki_year15 = tenki_year12 + 5 + 5 + 5
36140 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
36150 tenki13 = tenki12 + 5
36160 tenki14 = tenki12 + 5 + 5
36170 tenki15 = tenki12 + 5 + 5 + 5
36180 tenki16 = tenki12 + 5 + 5 + 5 + 5
36190 color rgb(255,0,255)
36200 print tenki_year13;"年";tenki13;"歳"+chr$(13)
36210 print tenki_year14;"年";tenki14;"歳"+chr$(13)
36220 print tenki_year15;"年";tenki15;"歳"+chr$(13)
36230 print tenki_year16;"年";tenki16;"歳"+chr$(13)
36240 color rgb(0,0,0)
36250 print"コマンドを入れてください"+chr$(13)
36260 print"q+エンターキー:トップ画面"+chr$(13)
36270 Print"エンターキー:次へ行く"+chr$(13)
36280 print"コマンド:"
36290 key$=Input$(1)
36300 if key$=chr$(13) then goto 35400
36310 IF key$="q" then goto 7600
36320 '
36330 cls
36340 color rgb(255,255,255)
36350 print buffername$;"さんの人生の転機5"+chr$(13)
36360 color rgb(255,0,255)
36370 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
36380 tenki_year17=tenki_year16+5
36390 tenki_year18=tenki_year16+5+5
36400 tenki_year19=tenki_year16+5+5+5
36410 tenki_year20=tenki_year16+5+5+5+5
36420 tenki17=tenki16+5
36430 tenki18=tenki16+5+5
36440 tenki19=tenki16+5+5+5
36450 tenki20=tenki16+5+5+5+5
36460 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36470 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36480 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36490 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36500 color rgb(0,0,0)
36510 print"コマンドを入れてください"+chr$(13)
36520 print"トップに戻る:q+エンターキー"+chr$(13)
36530 print"最初から:エンターキー"+chr$(13)
36540 print"コマンド:"
36550 key$=Input$(1)
36560 if key$=chr$(13) then goto 34260
36570 if key$="q" then goto Main_Screen1:
36580 '改名チェック 改名候補を入力
36590 'グラフィック　領域　ここから
36600 '左側 部分
36610 cls 3:talk ""
36620 line(0,0)-(1100,60),rgb(0,0,255),bf
36630 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36640 line(0,60)-(1100,380),rgb(127,255,212),bf
36650 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36660 line(0,380)-(790,470),rgb(0,255,0),bf
36670 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36680 '中央の縦の線 ここから
36690 'line(1100,0)-(1112,370),rgb(0,0,0),b
36700 '中央の縦の線 ここまで
36710 '右側 部分
36720 line(1103,0)-(1700,60),rgb(0,0,255),bf
36730 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36740 'グラフィック 領域　ここまで
36750 '吉凶判定
36760 if buffer_K=0 then
36770 buffer_check$="○"
36780 else
36790 buffer_check$="☓"
36800 endif
36810 'Title 左側の文字
36820 'rgb(255,255,255):白
36830 color rgb(255,255,255)
36840 locate 1,0
36850 print"安斎流姓名判断 改名チェッカー"
36860 'Title 右側の文字
36870 locate size(2)-16,0
36880 print"改名候補リスト(3件まで)"
36890 '候補リストの名前部分 (右側)
36900 '1行目
36910 'locate 22,2
36920 locate size(2)-18,2
36930 color rgb(0,0,0)
36940 print "番号"
36950 'locate 26,2
36960 locate size(2)-14,2
36970 print"名前"
36980 'locate 32,2
36990 locate size(2)-8,2
37000 print"吉凶"
37010 'locate 36,2
37020 locate size(2)-4,2
37030 print"判定"
37040 '2行目
37050 select case kaimei_count
37060 case 0:
37070 'データー1件 の時
37080 kaimei_count = kaimei_count + 1
37090 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
37100 buffer_Kaimei$(0,1,0,0)=name$
37110 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
37120 buffer_Kaimei$(0,0,0,1)=buffer_check$
37130 'cls
37140 color rgb(255,0,255)
37150 'locate 23,3
37160 locate size(2)-17,3
37170 print buffer_Kaimei$(1,0,0,0)
37180 'locate 25,3
37190 locate size(2)-15,3
37200 print buffer_Kaimei$(0,1,0,0)
37210 'locate 32,3
37220 locate size(2)-8,3
37230 print buffer_Kaimei$(0,0,1,0)
37240 locate size(2)-3,3
37250 print buffer_Kaimei$(0,0,0,1)
37260 case 1:
37270 'データー2件の時
37280 color rgb(255,0,255)
37290 kaimei_count = kaimei_count + 1
37300 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
37310 buffer_Kaimei$(0,2,0,0)=name$
37320 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
37330 buffer_Kaimei$(0,0,0,2)=buffer_check$
37340 'cls
37350 '1行目
37360 'locate 23,3
37370 locate size(2)-17,3
37380 print buffer_Kaimei$(1,0,0,0)
37390 'locate 25,3
37400 locate size(2)-15,3
37410 print buffer_Kaimei$(0,1,0,0)
37420 'locate 32,3
37430 locate size(2)-8,3
37440 print buffer_Kaimei$(0,0,1,0)
37450 'locate 37,3
37460 locate size(2)-3,3
37470 print buffer_Kaimei$(0,0,0,1)
37480 '2行目
37490 'locate 23,4
37500 locate size(2)-17,4
37510 print buffer_Kaimei$(2,0,0,0)
37520 'locate 25,4
37530 locate size(2)-15,4
37540 print buffer_Kaimei$(0,2,0,0)
37550 'locate 32,4
37560 locate size(2)-8,4
37570 print buffer_Kaimei$(0,0,2,0)
37580 'locate 37,4
37590 locate size(2)-3,4
37600 print buffer_Kaimei$(0,0,0,2)
37610 case 2:
37620 'データー3件の時
37630 '1
37640 color rgb(255,0,255)
37650 kaimei_count=kaimei_count+1
37660 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37670 buffer_Kaimei$(0,3,0,0)=name$
37680 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37690 buffer_Kaimei$(0,0,0,3)=buffer_check$
37700 '2  1行目
37710 'locate 23,3
37720 locate size(2)-17,3
37730 print buffer_Kaimei$(1,0,0,0)
37740 'locate 25,3
37750 locate size(2)-15,3
37760 print buffer_Kaimei$(0,1,0,0)
37770 'locate 32,3
37780 locate size(2)-8,3
37790 print buffer_Kaimei$(0,0,1,0)
37800 'locate 37,3
37810 locate size(2)-3,3
37820 print buffer_Kaimei$(0,0,0,1)
37830 '3  2行目
37840 'locate 23,4
37850 locate size(2)-17,4
37860 print buffer_Kaimei$(2,0,0,0)
37870 'locate 25,4
37880 locate size(2)-15,4
37890 print buffer_Kaimei$(0,2,0,0)
37900 'locate 32,4
37910 locate size(2)-8,4
37920 print buffer_Kaimei$(0,0,2,0)
37930 'locate 37,4
37940 locate size(2)-3,4
37950 print buffer_Kaimei$(0,0,0,2)
37960 '4  3行目
37970 'locate 23,5
37980 locate size(2)-17,5
37990 print buffer_Kaimei$(3,0,0,0)
38000 'locate 25,5
38010 locate size(2)-15,5
38020 print  buffer_Kaimei$(0,3,0,0)
38030 'locate 32,5
38040 locate size(2)-8,5
38050 print buffer_Kaimei$(0,0,3,0)
38060 'locate 37,5
38070 locate size(2)-3,5
38080 print buffer_Kaimei$(0,0,0,3)
38090 case 3:
38100 'データー4件の時
38110 '1
38120 '2
38130 '3
38140 '4
38150 '5
38160 end select
38170 '説明部分　左側
38180 locate 0,2
38190 color rgb(255,0,255)
38200 print"思いついた候補の名前"
38210 locate 0,4
38220 print"(ニックネーム　or 会社名)を"
38230 locate 0,6
38240 print"10文字以内で入力してください"
38250 color rgb(0,0,0)
38260 locate 0,8
38270 if kaimei_count = 1 or kaimei_count = 2 then
38280 Input"名前:",kouho_name$
38290 name$=kouho_name$
38300 n=len(name$)
38310 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 35680
38320 'else
38330 if n =< 10 then goto 30800
38340 endif
38350 if kaimei_count = 3 then
38360 Input"エンターキーを押してください",key$
38370 if key$ = "" then
38380 'データーを初期化して、トップ画面に行く
38390 '1.データーを初期化
38400 kaimei_count = 0
38410 for i=1 to 3
38420 buffer_Kaimei$(i,0,0,0) = ""
38430 buffer_Kaimei$(0,i,0,0) = ""
38440 buffer_Kaimei$(0,0,i,0) = ""
38450 buffer_Kaimei$(0,0,0,i) = ""
38460 next i
38470 '2.トップ画面に行く
38480 goto 7600
38490 endif
38500 endif
38510 '霊遺伝姓名学 ここから
38520 'グラフィック領域　ここから
38530 '性別入力
38540 Reiden_Top_Input_Sextype:
38550 cls 3:talk ""
38560 No=1:y=0:key$="":bg=0:init "kb:4"
38570 sp_on 1,1:sp_put 1,(10,200),1,0
38580 'Line1
38590 line (0,0)-(850,60),rgb(0,0,255),bf
38600 line (0,0)-(847,57),rgb(0,255,0),b
38610 'Line 2
38620 line (0,63)-(853,537),rgb(127,255,212),bf
38630 line (0,60)-(850,540),rgb(0,0,0),b
38640 'Line 3
38650 line (0,540)-(850,630),rgb(0,255,0),bf
38660 line (0,543)-(853,633),rgb(0,0,255),b
38670 'グラフィック領域　ここまで
38680 '音声表示
38690 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38700 '性別変数:sex_type=0
38710 '文字色： 白
38720 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38730 '文字色：赤
38740 color rgb(255,0,255)
38750 print"占う人の性別の番号を入れてください" + chr$(13)
38760 print" :1.女 性" + chr$(13)
38770 print" :2.男 性" + chr$(13)
38780 print" :3.前の画面に戻る" + chr$(13)
38790 locate 0,12
38800 color rgb(0,0,0)
38810 print "1.女性を選択しました"
38820 Reiden_Top_Input_Sextype2:
38830 y = 0:key$ = "":bg = 0
38840 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38850 key$=inkey$
38860 y=stick(1)
38870 bg=strig(1)
38880 pause 2.50*100
38890 wend
38900 if (key$=chr$(31) or y=1) then
38910 '
38920 select case No
38930 case 1:
38940 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38950 case 2:
38960 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38970 case 3:
38980 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38990 'case 4:
39000 'No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
39010 end select
39020 endif
39030 if (key$ = chr$(30) or y = -1) then
39040 select case No
39050 case 1:
39060       No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39070 case 2:
39080        No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
39090 case 3:
39100        No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
39110 'case 4:
39120 '       No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39130 end select
39140 endif
39150 'if (key$=chr$(30) or y=-1) then
39160 'endif
39170 if (bg=2 or key$=chr$(13)) then
39180 select case No
39190 case 1:
39200 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
39210 case 2:
39220 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
39230 case 3:
39240 sp_on 3,0:goto Main_Screen1:
39250 'case 4:
39260 'sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
39270 end select
39280 endif
39290 '2:男性の場合 名前を入力
39300 '男性の性別:sex_type=2
39310 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
39320 '1:女性の場合 既婚の場合、旧姓で入力
39330 '女性の性別:sex_type=1
39340 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
39350 '3:終了処理
39360 'if val(No$)=4 then cls 3:end
39370 'if val(No$)=3 then goto Main_Screen1:
39380 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
39390 '１．男性の場合の名前入力
39400 '描画領域　ここから
39410 ReiIden_Input_male:
39420 cls 3:init"kb:2":talk ""
39430 'Line 1 Title
39440 line (0,0)-(850,60),rgb(0,0,255),bf
39450 line (0,0)-(850,57),rgb(0,255,0),b
39460 'Line2 Input name
39470 line (0,60)-(850,300),rgb(0,255,0),bf
39480 line (0,60)-(850,303),rgb(0,0,255),b
39490 '描画領域 ここまで
39500 '文字色：白
39510 color rgb(255,255,255)
39520 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
39530 '文字色：黒
39540 color rgb(0,0,0)
39550 print "名前の姓の部分を入れてください" + chr$(13)
39560 Input"名前(姓の部分):",name1$
39570 '名の入力部分
39580 cls
39590 color rgb(255,255,255)
39600 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
39610 color rgb(0,0,0)
39620 print "名前の名の部分を入れてください"+chr$(13)
39630 Input"名前(名の部分):",name2$:goto check:
39640 '2.女性の場合　既婚か未婚か確認する
39650 '2-2-1女性の姓の入力
39660 'グラフィック領域　ここから
39670 ReiIden_Input_female:
39680 cls 3:init"kb:2":talk ""
39690 'Line1 Title
39700 line (0,0)-(850,60),rgb(0,0,255),bf
39710 line (0,0)-(850,57),rgb(0,255,0),b
39720 'Line 2 入力欄
39730 line (0,60)-(850,360),rgb(0,255,0),bf
39740 line (0,60)-(850,357),rgb(0,0,255),b
39750 'Line 2 入力欄(名前入力)
39760 'グラフィック領域 ここまで
39770 cls:init"kb:2"
39780 color rgb(255,255,255)
39790 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39800 color rgb(255,0,0)
39810 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39820 color rgb(0,0,0)
39830 print "名前の姓の部分を入れてください"+chr$(13)
39840 Input "名前(姓の部分):",name3$
39850 '2-2-2女性の名の入力
39860 cls:init"kb:2"
39870 color rgb(255,255,255)
39880 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39890 color rgb(0,0,0)
39900 print "名前の名の部分を入れてください"+chr$(13)
39910 Input "名前(名の部分):",name4$
39920 '計算領域　ここから
39930 check:
39940 '苗字の画数:buffer_name1_count
39950 'name1$,name2$:男性
39960 if sex_type = 1 then
39970 'sex_type=1 :女性のとき
39980 buf_male_female_name1$=name3$
39990 buf_male_female_name2$=name4$
40000 endif
40010 if sex_type = 2 then
40020 'sex_type=2 :男性のとき
40030 buf_male_female_name1$=name1$
40040 buf_male_female_name2$=name2$
40050 endif
40060 buffer_name1_count=len(buf_male_female_name1$)
40070 buffer_name2_count=len(buf_male_female_name2$)
40080 select case buffer_name1_count
40090 'AとBを求める
40100 case 1:
40110 '1.苗字の画数が1つのとき
40120 'A:霊数 1
40130 A=1
40140 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40150 B = char_count(buf_name1$)
40160 case 2:
40170 '2.苗字の画数が2つのとき
40180 '2-1:苗字の1文字目:buf_name1$
40190 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40200 '2-2:苗字の2文字目:buf_name2$
40210 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
40220 A=char_count(buf_name1$)
40230 B=char_count(buf_name2$)
40240 'B=char_count(buf_name2$)
40250 case 3:
40260 '3.苗字の画数が3つの時
40270 '3-1:苗字の1文字目:buf_name1$
40280 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40290 '3-2:苗字が3つのときの2つ目の文字をもとめる
40300 '3-2:苗字の2つ目:buf_name2$
40310 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40320 '3-3:苗字が3つのときの3文字目
40330 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
40340 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
40350 if buf_name2$="々" then
40360 A = char_count(buf_name1$) * 2
40370 B = char_count(buf_name3$)
40380 else
40390 A = char_count(buf_name1$) + char_count(buf_name2$)
40400 B = char_count(buf_name3$)
40410 endif
40420 '姓が4文字
40430 case 4:
40440 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40450 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40460 buf_name3$=Mid$(buf_male_female_name1$,3,1)
40470 buf_name4$=Mid$(buf_male_female_name1$,4,1)
40480 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
40490 B=char_count(buf_name4$)
40500 case else:
40510 end select
40520 '2.C,Dを求める
40530 select case buffer_name2_count
40540 case 1:
40550 '名が1文字の時
40560 'CとDを求める
40570 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40580 C = char_count(buff_name1$)
40590 'D=1:霊数
40600 D = 1
40610 case 2:
40620 '名が2文字の時
40630 'CとDを求める
40640 '名の1文字目:buff_name1$
40650 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40660 '名の2文字目:buff_name2$
40670 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40680 C = char_count(buff_name1$)
40690 D = char_count(buff_name2$)
40700 case 3:
40710 '名が3文字の時
40720 'CとDを求める
40730 '名の1文字目:buff_name1$
40740 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40750 '名の2文字目:buff_name2$
40760 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40770 if buff_name2$ = "々" then
40780 buff_name2$ = buff_name1$
40790 endif
40800 '名の3文字目:buff_name3$
40810 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40820 C = char_count(buff_name1$)
40830 D = char_count(buff_name2$) + char_count(buff_name3$)
40840 end select
40850 '1.先祖運を求める
40860 buffer_Senzo = A + B
40870 '2.性格運を求める
40880 buffer_Seikaku = B + C
40890 '3.愛情運を求める
40900 buffer_Aijyou = C + D
40910 '4.行動運を求める
40920 buffer_Kouzou = A + D
40930 'if buffer_Kouzou=10 then
40940 'endif
40950 '1.生数を求める
40960 func buf_Seisu(buffer)
40970 if buffer < 10 then
40980 seisu=buffer
40990 endif
41000 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
41010 seisu = 0
41020 endif
41030 if buffer > 10 then
41040 if buffer=20 then
41050 seisu = 0
41060 else
41070 n = buffer - (fix(buffer / 10) * 10)
41080 seisu = n
41090 endif
41100 endif
41110 endfunc seisu
41120 func buf_Wasu(buffer)
41130 buf_wasu = 0:wasu = 0
41140 if buffer < 10 then
41150 '
41160 wasu = buffer:goto wasu:
41170 else
41180 if buffer = 10 then
41190 wasu = 1:goto wasu:
41200 else
41210 if buffer > 10  then
41220 if buffer=19 or buffer=28 or buffer=37 then
41230 wasu=1:goto wasu:
41240 else
41250 if buffer = 29 then
41260 wasu=2:goto wasu:
41270 'endif
41280 else
41290 a = fix(buffer / 10)
41300 b = buffer - a * 10
41310 c = a + b
41320 if c = 19 or c=28 then
41330 wasu=1
41340 '
41350 else
41360 wasu=c
41370 endif
41380 endif
41390 endif
41400 endif
41410 endif
41420 if c < 10 then
41430 wasu = c
41440 'endif
41450 endif
41460 else
41470 if buffer=19 or buffer=28 then
41480 wasu = 1
41490 endif
41500 endif
41510 wasu:
41520 buf_wasu=wasu
41530 endfunc buf_wasu
41540 func buf_kyoudai$(buf_sex_type,buf_Sa$)
41550 select case buf_sex_type
41560 '1.女性の場合
41570 case 1:
41580 if (buf_Sa$ = "連続") then
41590 buffer_kyoudai$="長女"
41600 endif
41610 if (buf_Sa$ = "1差") then
41620 buffer_kyoudai$="次女"
41630 endif
41640 if (buf_Sa$ = "2差") then
41650 buffer_kyoudai$="三女"
41660 endif
41670 if (buf_Sa$ = "3差") then
41680 buffer_kyoudai$="四女"
41690 endif
41700 if (buf_Sa$ = "4差") then
41710 buffer_kyoudai$="五女"
41720 endif
41730 '男性の場合
41740 case 2:
41750 if (buf_Sa$ = "連続") then
41760 buffer_kyoudai$="長男"
41770 endif
41780 if (buf_Sa$ = "1差") then
41790 buffer_kyoudai$="次男"
41800 endif
41810 if (buf_Sa$ = "2差") then
41820 buffer_kyoudai$="三男"
41830 endif
41840 if (buf_Sa$ = "3差") then
41850 buffer_kyoudai$="四男"
41860 endif
41870 if (buf_Sa$ = "4差") then
41880 buffer_kyoudai$="五男"
41890 endif
41900 case else:
41910 end select
41920 kyoudai$=buffer_kyoudai$
41930 endfunc kyoudai$
41940 '1.タテ型
41950 '1.同じ数字が2組ある場合
41960 func Tate_gata$()
41970 if Senzo_wasu = Seikaku_wasu  then
41980 if Aijyou_wasu - Seikaku_wasu > 1 then
41990 Spirit_type$="タテ型"
42000 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
42010 Sa$ = str$(Sa_count) + "差"
42020 else
42030 Spirit_type$="タテ型"
42040 Sa$="連続"
42050 endif
42060 endif
42070 endfunc
42080 '2. ナナメ型
42090 '同じ数字が2組ある場合
42100 func Naname_gata$()
42110 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
42120 Spirit_type$="斜め型"
42130 endif
42140 if Seikaku_wasu - Senzo_wasu > 1 then
42150 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
42160 Sa$=str$(Sa_count)+" 差"
42170 else
42180 Sa$="連続"
42190 endif
42200 endfunc
42210 '3.表十字型
42220 '同じ数字が2組ある場合
42230 func Omote_jyuji_gata1$()
42240 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
42250 Spirit_type$ = "表十字型"
42260 endif
42270 if Senzo _wasu - Seikaku_wasu > 1 then
42280 Sa_count = Senzo_wasu - Seikaku_wasu - 1
42290 else
42300 if Senzo_wasu  -  Seikaku_wasu = 1  then
42310 Sa$="連続"
42320 endif
42330 endif
42340 endfunc
42350 '3-1.表十字型(ヨコ系)
42360 func Omote_jyuji_gata_yoko$()
42370 endfunc
42380 '3-2.表十字型(上下型)
42390 func Omote_jyuji_gata_jyouge()
42400 endfunc
42410 '4.ヨコ型
42420 func Yoko_gata$()
42430 endfunc
42440 '5.上下型
42450 func Jyouge_gata$()
42460 endfunc
42470 '6.1.中広型(タテ系)
42480 func Nakahiro_Tate$()
42490 endfunc
42500 '6.2中広型(ナナメ系)
42510 func Nakahiro_Naname$()
42520 endfunc
42530 '6.3中広型(表十字型)
42540 func Nakahiro_Omotejyuji$()
42550 endfunc
42560 '7.1.中一差(タテ系)
42570 func Chuissa_Tate$()
42580 endfunc
42590 '7.2中一差(ナナメ系)
42600 func Chuissa_Naname$()
42610 endfunc
42620 '8.1.中二差(タテ系)
42630 func Chunissa_Tate$()
42640 endfunc
42650 '8.2.中二差(ナナメ系)
42660 '9.1.順序型(タテ上下系)
42670 func Chunissa_Tate_jyouge$()
42680 endfunc
42690 '9.2.順序型(タテ、ヨコ系)
42700 func Jyunjyo_Tate_yoko$()
42710 endfunc
42720 '9.3.順序型(ナナメ、上下系)
42730 func Jyunjyo_Naname_jyouge$()
42740 endfunc
42750 '9.4.順序型(ナナメ、ヨコ系)
42760 '10.1.中順序型(ヨコ系)
42770 func Nakajyunjyo_yoko$()
42780 endfunc
42790 '10.2.中順序型(上下系)
42800 func Nakajyunjyo_jyouge$()
42810 endfunc
42820 '11.1.隔離型(タテ、上下系)
42830 func Kakuri_tate_jyouge$()
42840 endfunc
42850 '11.2.隔離型(タテ、ヨコ系)
42860 func Kakuri_tate_yoko$()
42870 endfunc
42880 '11.3.隔離型(ナナメ、上下系)
42890 func Kakuri_Naname_jyouge$()
42900 endfunc
42910 '11.4.隔離型(ナナメ、ヨコ系)
42920 func Kakuri_Naname_yoko$()
42930 endfunc
42940 '11.5.隔離型(タテ系)
42950 func Kakuri_tate$()
42960 endfunc
42970 '11.6.隔離型(ナナメ系)
42980 func Kakuri_naname$()
42990 endfunc
43000 '11.7.隔離型(上下、ヨコ系)
43010 func Kakuri_Jyouge_yoko$()
43020 endfunc
43030 Spirit_type$="No data"
43040 '1.先祖運　和数
43050 Senzo_wasu = buf_Wasu(buffer_Senzo)
43060 '2.先祖運 生数
43070 Senzo_seisu = buf_Seisu(buffer_Senzo)
43080 '3.性格運 和数
43090 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
43100 '4.性格運 生数
43110 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
43120 '5.愛情運 和数
43130 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
43140 '6.愛情運 生数
43150 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
43160 '7.行動運 和数
43170 Koudou_wasu = buf_Wasu(buffer_Kouzou)
43180 '8.行動運 生数
43190 Koudou_seisu = buf_Seisu(buffer_Kouzou)
43200 '計算領域 ここまで
43210 '描画領域　ここから
43220 Result_ReiIden1:
43230 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
43240 'Title
43250 line (0,0)-(850,60),rgb(0,0,255),bf
43260 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
43270 'name
43280 line (0,60)-(850,165),rgb(0,255,0),bf
43290 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
43300 '生数、和数
43310 line (0,165)-(850,550),rgb(125,255,212),bf
43320 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
43330 'プッシュメッセージ
43340 line (0,550)-(850,650),rgb(0,255,0),bf
43350 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
43360 '描画領域　ここまで
43370 color rgb(255,255,255)
43380 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
43390 color rgb(0,0,0)
43400 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
43410 color rgb(255,0,255)
43420 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
43430 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
43440 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
43450 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
43460 talk "診断結果１です、あなたのわすうとせいすうです。"
43470 color rgb(0,0,0)
43480 print"エンターキーを押してください"
43490 'key$=Input$(1)
43500 while (bg <> 2 and key$ <> chr$(13))
43510 key$=inkey$
43520 bg=strig(1)
43530 pause 2.50*100
43540 wend
43550 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
43560 '描画領域　ここから
43570 Result_ReiIden2:
43580 cls 3:init"kb:4"
43590 'Title Color:青
43600 line (0,0)-(860,60),rgb(0,0,255),bf
43610 'Title 枠
43620 line (0,0)-(860,57),rgb(255,0,255),b
43630 'Message
43640 line (0,60)-(860,650),rgb(127,255,212),bf
43650 'Message 枠
43660 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
43670 '
43680 '描画領域　ここまで
43690 color rgb(255,255,255)
43700 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43710 '十二運の基礎運
43720 '1.四大主流型
43730 'パターン１ 同じ数字の場合
43740 '1.オール同数化 全部同じ
43750 '1-if
43760 sa_count=0
43770 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43780 Spirit_type$ = "オール同数化"
43790 Sa$="3差"
43800 else
43810 'パターン１ 同じ数字2つの場合
43820 '2.タテ型
43830 '数字が２つ同じ
43840 '2-if
43850 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43860 Spirit_type$ = "タテ型"
43870 '2.タテ型　1
43880 if Koudou_wasu - Senzo_wasu = 1 then
43890 Sa$="連続"
43900 else
43910 '2.タテ型　2
43920 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43930 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43940 Sa$=str$(Sa_count) + "差"
43950 endif
43960 endif
43970 endif
43980 endif
43990 '2.タテ型　3
44000 '1.type
44010 'Spirit_type$ = "四大主流型 タテ型"
44020 '3.斜め型
44030 '数字が２つ同じ
44040 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
44050 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
44060 Sa$="連続"
44070 else
44080 '先祖＝行動　性格運=愛情運
44090 '3-if
44100 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
44110 Spirit_type$="斜め型"
44120 '3.斜め型 1
44130 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
44140 Sa$ = "連続"
44150 else
44160 if (Seikaku_wasu - Koudou_wasu) < 1 then
44170 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
44180 endif
44190 endif
44200 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
44210 Sa_count = 3
44220 Sa$ = str$(Sa_count - 1) + "差"
44230 else
44240 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
44250 Sa_count = Senzo_wasu - Seikaku_wasu
44260 Sa$ = str$(Sa_count-1) + "差"
44270 endif
44280 endif
44290 endif
44300 'Spirit_type$ = str$(Sa_count) + "差"
44310 'endif
44320 'endif
44330 '3-if
44340 endif
44350 '3.斜め型 2
44360 '3.斜め型 3
44370 '数字が２つ同じ
44380 '表十字型
44390 '先祖運＝愛情運　　行動運＝性格運
44400 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
44410 Spirit_type$="表十字型"
44420 Sa_coun = Senzo_wasu - Seikaku_wasu
44430 if Sa_count > 1 then
44440 Sa$ = str$(Sa_count) + "差"
44450 else
44460 if Sa_count = 1 then
44470 Sa$ = "連続"
44480 endif
44490 endif
44500 endif
44510 'endif
44520 '数字が２つ同じ
44530 '表十字型(横型)
44540 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
44550 Spirit_type$="表十字型(ヨコ型)"
44560 'Sa$を後で書く
44570 endif
44580 '数字が２つ同じ
44590 '表十字型(上下型)
44600 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
44610 Spirit_type$="表十字型(上下型)"
44620 'Sa$を後で書く
44630 endif
44640 'ヨコ型
44650 if Koudou_wasu = Seikaku_wasu then
44660 n=abs(Senzo_wasu - Seikaku_wasu)
44670 n2 = abs(Aijyou_wasu-Seikaku_wasu)
44680 Spirit_type$="ヨコ型"
44690 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
44700 Sa$="連続"
44710 endif
44720 if n = n2 then
44730 if n > 1 then
44740 Sa_count = n - 1
44750 Sa$=str$(Sa_count)+"差"
44760 else
44770 Sa_Count = abs(n - n2)
44780 if Sa_Count > 1 then
44790 Sa$ = str$(Sa_Count) + "差"
44800 endif
44810 endif
44820 endif
44830 endif
44840 '上下型
44850 '同じ数字が1組みある場合
44860 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44870 Spirit_type$ = "上下型"
44880 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44890 'n = abs(Koudou_wasu-Senzo_wasu)
44900 'n2= abs(Seikaku_wasu-Senzo_wasu)
44910 'buf=min(n,n2)
44920 'Sa$=str$(buf - 1) + "差"
44930 Sa$="連続"
44940 endif
44950 endif
44960 '中広（なかこう)型(斜め系)
44970 '連続した数字が2組みある場合
44980 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
44990 'n=Min(Senzo_wasu ,Koudou_wasu)
45000 'n2=Max(Seikaku_wasu , Aijyou_wasu)
45010 'Spirit_type$="中広型（斜め系）"
45020 'Sa_count = n - n2 -1
45030 'if Sa_count > 1 then
45040 'Sa$ = str$(Sa_count-1) + "差"
45050 'else
45060 'if Sa_count = 1 then
45070 'Sa$="連続"
45080 'endif
45090 'endif
45100 'endif
45110 '中広（なかこう)型(表十字型)
45120 '連続した数字が2組みある場合
45130 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
45140 Spirit_type$="中広（なかこう)型(表十字型)"
45150 n=Min(Koudou_wasu , Seikaku_wasu)
45160 n2=Max(Aijyou_wasu , Senzo_wasu)
45170 Sa_count = n - n2
45180 if Sa_count > 1 then
45190 Sa$ = str$(Sa_count - 1) + "差"
45200 else
45210 if Sa_count = 1 then
45220 Sa$ = "連続"
45230 endif
45240 endif
45250 endif
45260 '中一差（タテ系)
45270 '連続した数字が2組みある場合
45280 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
45290 'Spirit_type$="中一差（タテ系)"
45300 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
45310 n = Max(Koudou_wasu,Aijyou_wasu)
45320 n2 = Max(Senzo_wasu,Seikaku_wasu)
45330 else
45340 n = Max(Koudou_wasu,Aijyou_wasu)
45350 n2 = Min(Senzo_wasu,Seikaku_wasu)
45360 endif
45370 Sa_count2 = abs(n2 - n) - 1
45380 if Sa_count2 >= 0 then
45390 select case Sa_count2
45400 case 1:
45410 '中一差（タテ系)
45420 Sa$ = "連続"
45430 Spirit_type$="中一差型（タテ系)*"
45440 case 2:
45450 '中二差型（タテ系)
45460 Sa$ = "1差"
45470 Spirit_type$="中二差型（タテ系)"
45480 case 3:
45490 '中広（なかこう)型(タテ系)
45500 Sa$ = "2差"
45510 Spirit_type$="中三差型（タテ系)"
45520 case 4:
45530 Sa$ = "3差"
45540 Spirit_type$="中広型(タテ系)"
45550 case  else:
45560 cls 3:print"例外に入りました"
45570 end select
45580 '
45590 else
45600 cls 3:print"例外に入りました"
45610 endif
45620 endif
45630 'endif
45640 '中一差（斜め系)
45650 '連続した数字が2組みある場合
45660 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
45670 n = Min(Koudou_wasu,Senzo_wasu)
45680 n2 = Max(Aijyou_wasu,Seikaku_wasu)
45690 Sa_count = n - n2 - 1
45700 select case Sa_count
45710 case 1:
45720 '中一差（斜め系)
45730 '連続した数字が2組みある場合
45740 Sa$="1差"
45750 Spirit_type$="中一差（斜め系)"
45760 case 2:
45770 '中二差（斜め系)
45780 '連続した数字が2組みある場合
45790 Sa$="2差"
45800 Spirit_type$="中二差（斜め系)"
45810 case 3:
45820 Sa$="3差"
45830 Spirit_type$="中広型（斜め系）"
45840 case else:
45850 end select
45860 endif
45870 '順序型(タテ、上下系)
45880 '数字が４つ連続してる場合
45890 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45900 Spirit_type$="順序型(タテ、上下系)"
45910 Sa$="連続"
45920 endif
45930 '中順序型(ヨコ系)
45940 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45950 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45960 Spirit_type$="中順序型(ヨコ系)"
45970 Sa$="1差"
45980 else
45990 '順序型(タテ、ヨコ系)
46000 '数字が４つ連続してる場合
46010 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
46020 Spirit_type$="順序型(タテ、ヨコ系)"
46030 Sa$="連続"
46040 endif
46050 endif
46060 endif
46070 '中順序型(上下系)
46080 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
46090 n=Max(Senzo_wasu,Aijyou_wasu)
46100 n2=Min(Koudou_wasu,Seikaku_wasu)
46110 Sa_count = n2 - n
46120 if Sa_count > 1 then
46130 Spirit_type$="中順序型(上下系)"
46140 Sa$ = Str$(Sa_count) + "差"
46150 else
46160 '順序型(斜め、上下系)
46170 '数字が４つ連続してる場合
46180 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
46190 Spirit_type$ = "順序型(斜め、上下系)"
46200 Sa$="連続"
46210 endif
46220 endif
46230 endif
46240 '順序型(斜め、ヨコ系)
46250 '数字が４つ連続してる場合
46260 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
46270 Spirit_type$="順序型(斜め、ヨコ系)"
46280 Sa$="連続"
46290 endif
46300 '隔離型(タテ、上下系)
46310 '数字が1つおきに飛んでる場合
46320 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
46330 Spirit_type$="隔離型(タテ、上下系)"
46340 Sa$="1差"
46350 endif
46360 '隔離型(タテ、ヨコ系)
46370 '数字が1つおきに飛んでる場合
46380 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
46390 Spirit_type$="隔離型(タテ、ヨコ系)"
46400 Sa$="1差"
46410 endif
46420 '隔離型(斜め、上下系)
46430 '数字が1つおきに飛んでる場合
46440 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
46450 Spirit_type$="隔離型(斜め、上下系)"
46460 Sa$="1差"
46470 endif
46480 '隔離型(斜め、ヨコ系)
46490 '数字が1つおきに飛んでる場合
46500 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
46510 Spirit_type$="隔離型(斜め、ヨコ系)"
46520 Sa$="1差"
46530 endif
46540 '隔離型(タテ系)
46550 '数字が2つおきに飛んでる場合
46560 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
46570 Spirit_type$="隔離型(タテ系)"
46580 Sa$="1差"
46590 endif
46600 '隔離型(斜め系)
46610 '数字が2つおきに飛んでる場合
46620 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
46630 Spirit_type$="隔離型(斜め系)"
46640 Sa$="1差"
46650 endif
46660 '隔離型(上下、ヨコ系)
46670 '数字が2つおきに飛んでる場合
46680 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
46690 Spirit_type$="隔離型(上下、ヨコ系)"
46700 Sa$="1差"
46710 'endif
46720 endif
46730 'ここに移動
46740 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
46750 bg=0:bg2=0:key$="":init"kb:4":talk ""
46760 color rgb(255,0,255)
46770 print "●十二の基礎運" + chr$(13)
46780 print Spirit_type$ + Sa$;chr$(13)
46790 print "きょうだい：";Kyoudai$ + chr$(13)
46800 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46810 color rgb(0,0,0)
46820 print"前の画面:左の丸"+chr$(13)
46830 'print"保存して、もう一度やる：スペースキー"+chr$(13)
46840 print"トップ画面に戻る:右の丸"+chr$(13)
46850 'key$ = Input$(1)
46860 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
46870 key$=inkey$
46880 bg=strig(1)
46890 bg2=strig(0)
46900 pause 2.50*100
46910 wend
46920 if (key$ = chr$(13) or bg=2) then
46930 goto Main_Screen1:
46940 'else
46950 '保存して スペースキーでもう一度占う
46960 'if key$ = " " then
46970 'goto Save_Data1:
46980 else
46990 '
47000 if (key$ = "b" or bg2 = 2) then
47010 goto Result_ReiIden1:
47020 endif
47030 endif
47040 'endif
47050 'ファイル保存 占いデーターを一時保存
47060 Save_Data1:
47070 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
47080 'print#3は末尾は、セミコロンはいらない
47090 '末尾にセミコロンをつけると改行しない
47100 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
47110 ui_msg "保存しました"
47120 close #3
47130 goto Reiden_Top_Input_Sextype:
47140 '個人データーリスト  *parsonal_data
47150 Parsonal_data_top:
47160 cls 3:No=0:Key$="":bg=0:y=0
47170 sp_on 0,1:sp_put 0,(10,100),0,0
47180 line(0,0)-(800,60),rgb(0,0,255),bf
47190 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
47200 line (0,60)-(800,440),rgb(127,255,212),bf
47210 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
47220 line (0,440)-(800,670),rgb(0,255,0),bf
47230 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
47240 color rgb(255,255,255)
47250 print"◎個人データーリスト" + chr$(13)
47260 color rgb(255,0,255)
47270 print " :1.霊遺伝姓名学リスト" + chr$(13)
47280 print " :2.霊遺伝姓名学登録件数" + chr$(13)
47290 print " :3.霊遺伝姓名学データー検索"+chr$(13)
47300 print " :4.メインメニューへ行く"+chr$(13)
47310 color rgb(0,0,0):locate 0,10
47320 print "1.霊遺伝姓名学リストを選択"
47330 Parsonal_data_top2:
47340 key$="":bg=0:y=0
47350 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
47360 key$=inkey$
47370 bg=strig(1)
47380 y=stick(1)
47390 pause 2.50*100
47400 wend
47410 '*****************************************************
47420 '1.下のカーソル ここから 2024.10
47430 '*****************************************************
47440 if (key$=chr$(31) or y=1) then
47450 select case No
47460 case 0:
47470 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47480 case 1:
47490 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47500 case 2:
47510 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47520 case 3:
47530 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47540 end select
47550 endif
47560 '******************************************************
47570 '1.下のカーソル　 ここまで 2024.10
47580 '******************************************************
47590 '******************************************************
47600 '2.上のカーソル　 ここから 2024.10
47610 '******************************************************
47620 if (y=-1 or key$=chr$(30)) then
47630 select case No
47640 case 0:
47650 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47660 case 1:
47670 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47680 case 2:
47690 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47700 case 3:
47710 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47720 end select
47730 endif
47740 '******************************************************
47750 '2.上のカーソル　ここまで 2024.10
47760 '******************************************************
47770 '3.決定ボタン　ここから  2024.10
47780 '******************************************************
47790 if (bg=2 or key$=chr$(13)) then
47800 select case No
47810 case 0:
47820 sp_on 0,0:goto Parsonal_list1:
47830 case 1:
47840 sp_on 1,0:goto Entry_list_count:
47850 case 2:
47860 sp_on 2,0:goto Parsonal_list_Search:
47870 case 3:
47880 sp_on 3,0:goto Main_Screen1:
47890 end select
47900 endif
47910 '******************************************************
47920 '3.決定ボタン　ここまで 2024.10
47930 '******************************************************
47940 'if No = 1 then goto Parsonal_list1:
47950 'if No = 2 then goto Entry_list_count:
47960 'if No = 4 then goto Main_Screen1:
47970 'if No = 3 then goto Parsonal_list_Search:
47980 'if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
47990 '登録件数
48000 Entry_list_count:
48010 N = 0:bg=0:key$="":init"kb:4":talk ""
48020 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
48030 'N=1
48040 while eof(5) = 0
48050 line input #5,line$:N = N + 1
48060 'if line$="大吉数" then
48070 'continue:N = N - 1
48080 'else
48090 'N = N + 1
48100 'endif
48110 wend
48120 'c=N
48130 close #5
48140 c=N
48150 cls 3
48160 line (0,0)-(680,60),rgb(0,0,255),bf
48170 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
48180 line (0,60)-(680,180),rgb(127,255,212),bf
48190 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
48200 LINE (0,180)-(680,280),rgb(0,255,0),bf
48210 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
48220 color rgb(255,255,255)
48230 print "◎霊遺伝姓名学登録件数"+chr$(13)
48240 color rgb(255,0,255)
48250 'N=B-1:C=N
48260 print "登録件数は";c;"件です"+chr$(13)
48270 color rgb(0,0,0)
48280 print "エンターキーを押してください"+chr$(13)
48290 while (key$ <> chr$(13) and bg <> 2)
48300 key$=inkey$
48310 bg=strig(1)
48320 pause 2.50*100
48330 wend
48340 'a$ = Input$(1)
48350 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
48360 'パーソナルリスト ここから
48370 Parsonal_list1:
48380 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
48390 'Title
48400 line (0,0)-(850,60),rgb(0,0,255),bf
48410 line (0,0)-(850,57),rgb(255,255,255),b
48420 '個人名
48430 line (0,60)-(850,165),rgb(0,255,0),bf
48440 line (0,63)-(850,162),rgb(255,0,255),b
48450 '数値リスト
48460 line (0,165)-(850,550),rgb(255,212,212),bf
48470 line (0,168)-(850,547),rgb(0,0,255),b
48480 'ボタンメッセージ
48490 line (0,550)-(850,730),rgb(0,255,0),bf:
48500 line (0,553)-(853,733),rgb(255,0,255),b
48510 'Parsonal_list2:
48520 'color rgb(255,255,255):
48530 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
48540 'n=0
48550 open "config/Parsonal_data/parsonal_data.dat" for input as #7
48560 'bN=0
48570 while eof(7)=0
48580 'input #6,lines2$
48590 'close #6
48600 '
48610 line input #7,lines$:bN = bN + 1
48620 'if lines$ = "大吉数" then
48630 'continue:bN = bN - 1
48640 'else
48650 'bN = bN + 1
48660 'endif
48670 wend
48680 'buf_name1$(i)=Mid$(lines$,4,4)
48690 'next i
48700 'wend
48710 close #7
48720 'a=0
48730 open "config/Parsonal_data/parsonal_data.dat" for input as #8
48740 'while eof(8)=0
48750 for i=0 to (bN * 10) -1
48760 input #8,buflines$(i)
48770 'buflines$(i) = line$
48780 'a  =  a  +  1
48790 Next i
48800 'wend
48810 close #8
48820 Parsonal_list2:
48830 'while (n <= bN*10)
48840 'while (bg <> 2 and bg2 <> 2 )
48850 'bg = strig(1)
48860 'bg2 = strig(0)
48870 'n=((n+1) Mod bN)
48880 'pause 2.5*1000
48890 'wend
48900 'while n <= bN * 10
48910 'if bg2= 2 then goto Main_Screen1:
48920 'if bg = 2 then 'n=((n+1) Mod bN)
48930 'n=((n+1) Mod bN)
48940 'endif
48950 'if bg2 = 2 then goto Main_Screen1:
48960 while n <= bN * 10
48970 'Parsonal_list2:
48980 cls
48990 'if bg=2 then n=((n+1) Mod bN)
49000 color rgb(255,255,255)
49010 print "霊遺伝姓名学 リスト" + chr$(13)
49020 '性別を出す
49030 sex$ = show_sex_type$(buflines$((10*n) + 1))
49040 'n=0
49050 color rgb(0,0,0):
49060 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
49070 '
49080 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
49090 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
49100 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
49110 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
49120 'n = (( n + 1) Mod 3) - 1
49130 '
49140 'n = n + 1
49150 print "右の丸:次へ行く" + chr$(13)
49160 print "左の丸：トップへ戻る" + chr$(13)
49170 key$=input$(1)
49180 if key$= " " then n=((n+1) Mod bN)
49190 'goto Parsonal_list2:
49200 'wend
49210 if key$=chr$(13) then goto Main_Screen1:
49220 wend
49230 'goto Parsonal_list2:
49240 'n=((n+1) Mod bN)
49250 'endif
49260 'goto Parsonal_list2:
49270 'if bg = 2 then n = ((n + 1) Mod bN)
49280 'if bN = 3 then
49290 'if buflines$(0) = "大吉数" then
49300 'n = ((n + 1) Mod bN)
49310 'else
49320 'n=((n + 1) Mod bN)
49330 'wend
49340 'else
49350 'if bN=2 then
49360 'n=((n + 1) Mod bN)
49370 'endif
49380 'endif
49390 'cls
49400 'else
49410 'if bg2 = 2  then goto Main_Screen1:
49420 'wend
49430 'goto Parsonal_data_top:
49440 'endif
49450 'endif
49460 Parsonal_list_Search:
49470 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
49480 while eof(1)=0
49490 line input #1,lines$:hit_count=hit_count + 1
49500 wend
49510 close #1
49520 'bufname$(hit_count*10),buffname$(hit_count*10)
49530 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
49540 for i=0 to hit_count*10 - 1
49550 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
49560 next i
49570 close #2
49580 Search_find:
49590 cls 3:init "kb:2":talk ""
49600 'グラフィック領域　ここから
49610 line (0,0)-(770,60),rgb(0,0,255),bf
49620 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
49630 line (0,60)-(770,170),rgb(127,255,212),bf
49640 line(0,63)-(767,173),rgb(0,0,255),b
49650 line(0,170)-(770,440),rgb(0,255,0),bf
49660 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
49670 color rgb(255,255,255)
49680 print "霊遺伝姓名判断 データー検索"+chr$(13)
49690 color rgb(255,0,255)
49700 print "登録件数:";hit_count;"件です"+chr$(13)
49710 color rgb(0,0,0)
49720 print "調べたい人の名前を入れてください"+chr$(13)
49730 Input "名前:",name$
49740 cls
49750 for i = 0 to hit_count * 10 - 1
49760 if name$ = buffname$(i) then
49770 hcount = hcount + 1
49780 endif
49790 next i
49800 if hcount > 0 then
49810 init "kb:4":cls
49820 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49830 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
49840 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
49850 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
49860 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
49870 while (key$ <> chr$(13) and bg <> 2)
49880 key$=inkey$
49890 bg=strig(1)
49900 bg2=strig(0)
49910 pause 2.50*100
49920 wend
49930 'a$=input$(1)
49940 'if a$=" " then goto Search_find:
49950 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
49960 else
49970 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49980 color rgb(0,0,0):print"検索名:";name$+chr$(13)
49990 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
50000 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
50010 a$=input$(1)
50020 IF a$=chr$(13) then goto Main_Screen1:
50030 endif
50040 '相性のデーターを保存する機能
50050 '保存ファイル：bestAisyou.dat
50060 '保存フォルダ:config/Aisyou_dat/
50070 Save_Aisyou:
50080 open "config/Aisyou_data" for append as #1
50090 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
50100 close #1
50110 ui_msg "保存しました"
50120 key$ = input$(1)
50130 '設定変更項目
50140 Config_Setting:
50150 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
50160 sp_on 0,1:sp_put 0,(10,100),0,0
50170 'グラフィック領域　ここから
50180 'Line 1
50190 line (0,0)-(850,60),rgb(0,0,255),bf
50200 line (0,0)-(850,57),rgb(255,255,255),b
50210 'Line 2
50220 line (0,60)-(850,460),rgb(127,255,212),bf
50230 line (0,57)-(850,457),rgb(0,0,0),b
50240 'Line 3
50250 line (0,460)-(850,640),rgb(0,255,0),bf
50260 line (0,457)-(850,637),rgb(0,0,0),b
50270 'グラフィック領域　ここまで
50280 color rgb(255,255,255)
50290 print "設定　トップメニュー" + chr$(13)
50300 color rgb(255,0,255)
50310 print " :1.キーボードの設定" + chr$(13)
50320 print " :2.トップ画面に戻る"
50330 'print " :4.プログラムの終了"+chr$(13)
50340 color rgb(0,0,0):locate 0,10
50350 print "1.キーボードの設定を選択"
50360 'print "番号を選んでエンターキー"+chr$(13)
50370 'Input "番号:",No
50380 'No=4:プログラムの終了
50390 'if No = 4 then
50400 Config_Setting2:
50410 y=0:bg=0:key$=""
50420 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
50430 key$=inkey$
50440 y=stick(1)
50450 bg=strig(1)
50460 pause 2.50*100
50470 wend
50480 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
50490 select case No
50500 case 0:
50510 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
50520 case 1:
50530 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
50540 'if (y=-1 or key$=chr$(30)) then
50550 '
50560 '
50570 'case 3:
50580 '       No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),00,0:goto Config_Setting2:
50590 end select
50600 endif
50610 if (key$=chr$(13) or bg=2) then
50620 select case No
50630 case 0:
50640 sp_on 0,0:goto Keyboard_Setting:
50650 case 1:
50660 sp_on 1,0:goto Main_Screen1:
50670 end select
50680 endif
50690 'cls 3:talk"しゅうりょうします":ui_msg"終了します":end
50700 'else
50710 'select case No
50720 'No=1:キーボードの設定
50730 'case 1:
50740 'goto Keyboard_Setting:
50750 'No=2:音の設定
50760 'case 2:
50770 'No=3:トップに戻る
50780 'case 3:
50790 'goto Main_Screen1:
50800 'No=1〜3以外
50810 'case else:
50820 'goto Config_Setting:
50830 'end select
50840 'endif
50850 '1.キーボードの設定
50860 Keyboard_Setting:
50870 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
50880 sp_on 0,1:sp_put 0,(10,100),0,0
50890 'グラフィック領域　ここから
50900 'Line 1
50910 line (0,0)-(1050,60),rgb(0,0,255),bf
50920 line (0,0)-(1050-3,57),rgb(255,255,255),b
50930 'Line 2
50940 line (0,60)-(1050,460),rgb(127,255,212),bf
50950 line (0,57)-(1050-3,457),rgb(0,0,0),b
50960 'Line 3
50970 line (0,460)-(1050,640),rgb(0,255,0),bf
50980 line (0,457)-(1050-3,637),rgb(0,0,0),b
50990 'グラフィック領域　ここまで
51000 '文字色　白
51010 color rgb(255,255,255)
51020 print "設定1 キーボードの設定" + chr$(13)
51030 color rgb(255,0,255)
51040 print " :1.バーチャルキーボード表示する" + chr$(13)
51050 print " :2.バーチャルキーボードを表示しない" + chr$(13)
51060 print " :3.トップ画面に戻る" + chr$(13)
51070 print " :4.終了する" + chr$(13)
51080 color rgb(0,0,0)
51090 locate 0,10
51100 print "1.バーチャルキーボードを表示するを選択"
51110 Keyboard_Setting2:
51120 y=0:bg=0:key$=""
51130 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
51140 key$=inkey$
51150 y=stick(1)
51160 bg=strig(1)
51170 pause 2.50*100
51180 wend
51190 '****************************************************************************************************************
51200 '下のカーソル　ここから
51210 '****************************************************************************************************************
51220 if (y=1 or key$=chr$(31)) then
51230 select case No
51240 case 0:
51250 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
51260 case 1:
51270 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
51280 case 2:
51290 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
51300 case 3:
51310 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
51320 end Select
51330 endif
51340 '*******************************************************************************************************************
51350 '下のカーソル　ここまで
51360 '*******************************************************************************************************************
51370 '*******************************************************************************************************************
51380 '上のカーソル　ここから
51390 '********************************************************************************************************************
51400 '********************************************************************************************************************
51410 '上のカーソル　ここまで
51420 '********************************************************************************************************************
51430 '********************************************************************************************************************
51440 '決定ボタン　ここから
51450 '*********************************************************************************************************************
51460 if (key$=chr$(13) or bg=2) then
51470 select case No
51480 case 0:
51490       init "kb:2":
51500 case 1:
51510 sp_on 1,0:init "kb:0":
51520 case 2:
51530 sp_on 2,0:goto Main_Screen1:
51540 case 3:
51550 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
51560 end select
51570 endif
51580 '*********************************************************************************************************************
51590 '決定ボタン　ここまで
51600 '*********************************************************************************************************************
51610 ' Print "番号を選んでください" + chr$(13)
51620 ' Input "番号:",SelectNo3
51630 'if SelectNo3 = 4 then
51640 'cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
51650 'else
51660 'Select case SelectNo3
51670 'case 1:
51680 'if keyboard_flag = 0 then
51690 'keyboard_flag=1:init"kb:2"
51700 'goto Keyboard_Setting:
51710 'endif
51720 'case 2:
51730 'if keyboard_flag=1 then
51740 'keyboard_flag=0:init"kb:0"
51750 'goto Keyboard_Setting:
51760 'endif
51770 'case 3:
51780 'goto Main_Screen1:
51790 'case else:
51800 'goto Keyboard_Se
51810 'end Select
51820 'endif
