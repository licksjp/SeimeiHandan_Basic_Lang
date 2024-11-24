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
700 'Version2.39:DAte:2024.11.24                      *
710 '*****************************************************
720 '設定ファイル　漢字文字データ                                      *
730 'Version:Mojidata20200411.dat Date:20200411          *
740 'Version:Mojidata20200415.dat Date:20200415          *
750 'Version:Mojidata20200506.dat Date:20200506          *
760 'Version:Mojidata20200513.dat Date:20200513          *
770 'Version:Mojidata20200516.dat Date:20200516          *
780 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
790 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
800 '*****************************************************
810 '* 開発再開　2024.9.20　Ver2.33                        *
820 '* 開発再開 Date:2024.09.20                          *
830 '*************************************************
840 '新機能
850 'Date:2020.05.27
860 'Parsonal_data.datに個人データーを保存機能追加
870 '*****************************************************
880 'メモリー確保 文字領域,数値データー                                  *
890 '*****************************************************
900 clear 4*4000,4*1000000
910 '*****************************************************
920 'Screen 定義                                           *
930 '*****************************************************
940 Screen 1,1,1,1
950 '*****************************************************
960 'Sprite 定義                                           *
970 '*****************************************************
980 gload "./config/gazo/"+"selection.png",1,10,100
990 gload "./config/gazo/"+"selection.png",1,10,200
1000 gload "./config/gazo/"+"selection.png",1,10,300
1010 gload "./config/gazo/"+"selection.png",1,10,400
1020 gload "./config/gazo/"+"selection.png",1,10,500
1030 sp_def 0,(10,100),32,32
1040 sp_def 1,(10,200),32,32
1050 sp_def 2,(10,300),32,32
1060 sp_def 3,(10,400),32,32
1070 sp_def 4,(10,500),32,32
1080 '*****************************************************
1090 '改名チェック変数                                            *
1100 '****************************************************
1110 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1120 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1130 '*****************************************************
1140 'キーボードフラグ                                            *
1150 '0:キーボード非表示                                          *
1160 '1:キーボード表示                                           *
1170 '*****************************************************
1180 keyboard_flag = 0
1190 '*****************************************************
1200 '性別の選択用変数                                            *
1210 '*****************************************************
1220 dim sex_type$(2)
1230 '*****************************************************
1240 '相性占い　設定項目 ここから                                      *
1250 '*****************************************************
1260 count=0:line_count=0
1270 dim buffer_Aisyou_type$(10,10)
1280 dim buffer_Kaimei_data_name$(10)
1290 '*****************************************************
1300 '改名チェックの選択肢の変数                                       *
1310 '*****************************************************
1320 dim select$(3)
1330 open "config/Selection/Selection.dat" for input as #2
1340 for i=0 to 2
1350 input #2,select$(i)
1360 next i
1370 close #2
1380 'select$(0)="改名リストに追加する"
1390 'select$(1)="改名リストに追加しない"
1400 'select$(2)="トップ画面に行く"
1410 '*****************************************************
1420 '総数を出す変数 改名チェック変数                                    *
1430 'dim buffer_total$                                   *
1440 '1.理解し合える最良のカップル                                     *
1450 '*****************************************************
1460 dim buf_good_couple1(20)
1470 dim buf_good_couple2(20)
1480 '*****************************************************
1490 '2.互いに自然体でつきあえるカップル                                  *
1500 '*****************************************************
1510 dim buf_natural_couple1(20)
1520 dim buf_natural_couple2(20)
1530 '**************************************************
1540 dim buf_good_for_man1(20)
1550 dim buf_good_for_man2(20)
1560 '*****************************************************
1570 '4.女性にとって居心地の良い相性                                    *
1580 '*****************************************************
1590 dim buf_good_for_woman1(20)
1600 dim buf_good_for_woman2(20)
1610 '*****************************************************
1620 '5.恋愛経験を重ねた後なら愛を育める                                  *
1630 '*****************************************************
1640 dim short_of_experience1(20)
1650 dim short_of_experience2(20)
1660 '*****************************************************
1670 '6.結婚への発展が困難なカップル                                    *
1680 '*****************************************************
1690 dim buf_difficult_for_couple1(20)
1700 dim buf_difficult_for_couple2(20)
1710 '*****************************************************
1720 '7.愛し方にズレが出てくる二人                                     *
1730 '*****************************************************
1740 dim buf_difference_of_love1(20)
1750 dim buf_difference_of_love2(20)
1760 '*****************************************************
1770 '相性占い　設定項目　ここまで
1780 '*****************************************************
1790 '8.互いの価値観が噛み合わない相性 ここから                              *
1800 '*****************************************************
1810 dim buf_difference_of_KachiKan1(20)
1820 dim buf_difference_of_KachiKan2(20)
1830 '*****************************************************
1840 '8.互いに価値観が噛み合わない相性 ここまで                              *
1850 '*****************************************************
1860 '相性診断　相性パターン結果　ここから
1870 dim Result_Aisyou_type$(8)
1880 '*****************************************************
1890 '相性診断 相性パターン結果 ここまで                                  *
1900 '*****************************************************
1910 '2019/04/07 姓名判断アプリ 作成開始                             *
1920 '姓名判断　 名前の総数での吉凶を調べる                                 *
1930 '*****************************************************
1940 buf_count=0:buffer_count=0:count=0:buffer=0
1950 '*****************************************************
1960 '合計文字数                                               *
1970 '*****************************************************
1980 totalmoji=0
1990 dim buf_Input_data$(10),buf_Input_data2$(10)
2000 dim bufer_name$(10),bufer_name2$(10)
2010 dim buf_Input_name$(10),buf_Input_name2$(10)
2020 '*****************************************************
2030 '定数文字1画〜27画                                          *
2040 'ファイルから各画数を読み込んで代入する。                                *
2050 '*****************************************************
2060 '1行目だけ読み込む                                           *
2070 '*****************************************************
2080 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
2090 for i=0 to 26
2100 input #2,buf_lines$(i)
2110 next i
2120 close #2
2130 '*****************************************************
2140 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2150 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2160 '1画
2170 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2180 '2画
2190 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2200 '3画
2210 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2220 '4画
2230 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2240 '5画
2250 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2260 '6画
2270 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2280 '7画
2290 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2300 '8画
2310 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2320 '9画
2330 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2340 '10画
2350 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2360 '11画
2370 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2380 '12画
2390 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2400 '13画
2410 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2420 '14画
2430 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2440 '15画
2450 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2460 '16画
2470 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2480 '17画
2490 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2500 '18画
2510 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
2520 '19画
2530 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
2540 '20画
2550 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
2560 '21画
2570 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
2580 '22画
2590 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
2600 '23画
2610 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2620 '24画
2630 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2640 '25画
2650 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2660 '26画
2670 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2680 '27画
2690 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2700 dim Moji_data$(Moji_total+27+27)
2710 '******************************************************
2720 'dim bufmoji$(10),Input_data$(10)                     *
2730 '１画の文字   サイズ:21+2(漢字)                                 *
2740 '******************************************************
2750 dim buf_char_hiragana1$(Moji_1)
2760 '******************************************************
2770 '2画の文字  サイズ 58+14=72(漢字)                              *
2780 '******************************************************
2790 dim buf_char_hiragana2$(Moji_2)
2800 '******************************************************
2810 '3画の文字 サイズ:48+29=77(漢字)                               *
2820 '******************************************************
2830 dim buf_char_hiragana3$(Moji_3)
2840 '******************************************************
2850 '4画の文字 サイズ:29+51=80(漢字)                               *
2860 '******************************************************
2870 dim buf_char_hiragana4$(Moji_4)
2880 '******************************************************
2890 '５画の文字  サイズ:18+59=77(漢字)                              *
2900 '******************************************************
2910 dim buf_char_hiragana5$(Moji_5)
2920 '******************************************************
2930 '6画の文字  サイズ:79(漢字)                                    *
2940 '******************************************************
2950 dim buf_char_hiragana6$(Moji_6)
2960 '******************************************************
2970 '7画の文字  サイズ:88(漢字)                                    *
2980 '******************************************************
2990 dim buf_char_hiragana7$(Moji_7)
3000 '******************************************************
3010 '8画の文字                                                *
3020 '******************************************************
3030 dim buf_char_hiragana8$(Moji_8)
3040 '******************************************************
3050 '9画の文字                                                *
3060 '******************************************************
3070 dim buf_char_hiragana9$(Moji_9)
3080 '******************************************************
3090 '10画の文字 98文字                                          *
3100 '******************************************************
3110 dim buf_char_hiragana10$(Moji_10)
3120 '******************************************************
3130 '11画の文字                                               *
3140 '******************************************************
3150 dim buf_char_hiragana11$(Moji_11)
3160 '******************************************************
3170 '12画の文字                                               *
3180 '******************************************************
3190 dim buf_char_hiragana12$(Moji_12)
3200 '******************************************************
3210 '13画の文字 81文字                                          *
3220 '******************************************************
3230 dim buf_char_hiragana13$(Moji_13)
3240 '******************************************************
3250 '14画の文字                                               *
3260 '******************************************************
3270 dim buf_char_hiragana14$(Moji_14)
3280 '******************************************************
3290 '15画の文字                                               *
3300 '******************************************************
3310 dim buf_char_hiragana15$(Moji_15)
3320 '******************************************************
3330 '16画の文字                                               *
3340 '******************************************************
3350 dim buf_char_hiragana16$(Moji_16)
3360 '******************************************************
3370 '17画の文字                                               *
3380 '******************************************************
3390 dim buf_char_hiragana17$(Moji_17)
3400 '******************************************************
3410 '18画の文字                                               *
3420 '******************************************************
3430 dim buf_char_hiragana18$(Moji_18)
3440 '19画の文字
3450 dim buf_char_hiragana19$(Moji_19)
3460 '20画の文字
3470 dim buf_char_hiragana20$(Moji_20)
3480 '21画の文字
3490 dim buf_char_hiragana21$(Moji_21)
3500 '22画の文字
3510 dim buf_char_hiragana22$(Moji_22)
3520 '23画の文字
3530 dim buf_char_hiragana23$(Moji_23)
3540 '24画の文字
3550 dim buf_char_hiragana24$(Moji_24)
3560 '25画の文字
3570 dim buf_char_hiragana25$(Moji_25)
3580 dim buf_char_hiragana26$(Moji_26)
3590 dim buf_char_hiragana27$(Moji_27)
3600 '結果表示1　吉凶データー 81パターン
3610 dim buf_Kikkyo$(81)
3620 '結果表示２
3630 '安斎流姓名判断 吉凶  1.地運
3640 dim buf_Kikkyo_Anzai_chiunn$(70)
3650 '安斎流姓名判断　　吉凶  2.人運
3660 dim buf_Kikkyo_Anzai_jinunn$(69)
3670 '安斎流姓名判断 吉凶 3.外運
3680 'dim buf_Kikkyo_Anzai_gaiunn$(70)
3690 '安斎流姓名判断 吉凶　　4.総運
3700 dim buf_Kikkyo_Anzai_total$(80)
3710 '霊遺伝姓名学　変数
3720 A=0
3730 B=0
3740 C=0
3750 D=0
3760 '1.先祖運
3770 buffer_senzo=0
3780 '2.性格運
3790 buffer_seikaku=0
3800 '3.愛情運
3810 buffer_Aijyou=0
3820 '4.行動運
3830 buffer_Kouzou=0
3840 '1-1.先祖運　和数
3850 Senzo_wasu=0
3860 '1-2.先祖運　生数
3870 Senzo_seisu=0
3880 '2-1.性格運 和数
3890 Seikaku_wasu=0
3900 '2-2.性格運 生数
3910 Seikaku_seisu=0
3920 '3-1.愛情運 和数
3930 Aijyou_wasu=0
3940 '3-2.愛情運 生数
3950 Aijyou_seisu=0
3960 '4-1 行動運 和数
3970 Koudo_wasu=0
3980 '4-2 行動運 生数
3990 Koudo_seisu=0
4000 'データー読み込み　ここから
4010 'データー読み込み　1.ひらがな
4020 '1画の文字   6文字 23文字
4030 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
4040 '全ファイルを読み込む
4050 for i = 0 to 26+Moji_total+27
4060 input #1,Moji_data$(i)
4070 next i
4080 close #1
4090 '全ファイル読み込み　ここまで
4100 for i = 27+1 to (Moji_1)+27+1
4110 '1画の文字にデーターをコピーする
4120 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4130 next i
4140 '2画の文字    98文字
4150 for i = Moji_Min_2  to (Moji_Max_2)
4160 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4170 next i
4180 '3文字の文字    77文字
4190 for i = Moji_Min_3  to (Moji_Max_3)
4200 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4210 next i
4220 '4文字の文字   80文字
4230 for i = (Moji_Min_4)  to (Moji_Max_4)
4240 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4250 next i
4260 '5文字の文字 77文字
4270 for i = Moji_Min_5 to (Moji_Max_5)
4280 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4290 next i
4300 '6文字の文字 79文字
4310 for i = Moji_Min_6  to Moji_Max_6
4320 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4330 next i
4340 '7文字の文字 170文字
4350 for i = Moji_Min_7 to Moji_Max_7
4360 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4370 next i
4380 '8画の文字 120文字
4390 for i = Moji_Min_8 to Moji_Max_8
4400 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4410 next i
4420 '9画の文字  103文字
4430 for i = Moji_Min_9 to Moji_Max_9
4440 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4450 next i
4460 '10画の文字 285文字
4470 for i = Moji_Min_10 to (Moji_Max_10)
4480 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4490 next i
4500 '11画の文字
4510 for i = Moji_Min_11 to Moji_Max_11
4520 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
4530 next i
4540 '12画の文字
4550 for i = Moji_Min_12 to Moji_Max_12
4560 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
4570 next i
4580 '13画の文字 81
4590 for i = Moji_Min_13 to Moji_Max_13
4600 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
4610 next i
4620 '14画の文字 66
4630 for i = Moji_Min_14 to Moji_Max_14
4640 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
4650 next i
4660 '15画の文字 59
4670 'for i = Moji_Min_15 to (Moji_Max_15) - 1
4680 for i=Moji_Min_15 to  Moji_Max_15
4690 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
4700 next i
4710 '16画の文字 44
4720 for i=Moji_Min_16 to Moji_Max_16
4730 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
4740 next i
4750 '17画の文字
4760 for i = Moji_Min_17 to Moji_Max_17
4770 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
4780 next i
4790 '18画の文字
4800 for i = Moji_Min_18 to Moji_Max_18
4810 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
4820 next i
4830 '19画の文字 17文字
4840 for i = Moji_Min_19 to Moji_Max_19
4850 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
4860 next i
4870 '20 画の文字 13文字
4880 for  i = Moji_Min_20 to Moji_Max_20
4890 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
4900 NEXT i
4910 '21画の文字 6
4920 for i = Moji_Min_21 to (Moji_Max_21)
4930 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
4940 next i
4950 '22 画の文字 4
4960 for i = Moji_Min_22 to Moji_Max_22
4970 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4980 next i
4990 '23画の文字  3文字
5000 for i = Moji_Min_23 to Moji_Max_23
5010 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5020 next i
5030 '24画の文字  3文字
5040 for i = Moji_Min_24 to Moji_Max_24
5050 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5060 next i
5070 '25 画の文字 4
5080 for i = Moji_Min_25 to Moji_Max_25
5090 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5100 next i
5110 '26画の文字  3文字
5120 for i = Moji_Min_26 to Moji_Max_26
5130 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5140 next i
5150 '27画の文字  3文字
5160 for i = Moji_Min_27 to Moji_Max_27
5170 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5180 next i
5190 '吉凶データー読み込み
5200 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
5210 for i=0 to 80
5220 input #1,buf_Kikkyo$(i+1)
5230 next i
5240 close #1
5250 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
5260 for m=0 to 69
5270 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5280 next m
5290 close #2
5300 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
5310 for i=1 to 70
5320 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
5330 next i
5340 close #3
5350 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
5360 for i=0 to 79
5370 input #4,buf_Kikkyo_Anzai_total$(i)
5380 next i
5390 close #4
5400 '****************************************************
5410 '0.理解し合えるカップル　ここから                                  *
5420 '****************************************************
5430 restore 6570
5440 for i=0 to 19
5450 read buf_good_couple1(i)
5460 next i
5470 restore 6580
5480 for j=0 to 19
5490 read buf_good_couple2(j)
5500 next j
5510 '*****************************************************
5520 '0.理解し合えるカップル ここまで                                   *
5530 '*****************************************************
5540 '*****************************************************
5550 '1.互いに自然体でつきあえる二人　ここから                               *
5560 '*****************************************************
5570 restore 6640
5580 for i=0 to 19
5590 read buf_natural_couple1(i)
5600 next i
5610 restore 6650
5620 for j=0 to 19
5630 read buf_natural_couple2(j)
5640 next j
5650 '*****************************************************
5660 '1.互いに自然体でつきあえる二人　ここまで                               *
5670 '*****************************************************
5680 '2        ここから                                       *
5690 '*****************************************************
5700 restore 6710
5710 for i=0 to 19
5720 read buf_good_for_man1(i)
5730 next i
5740 restore 6720
5750 for j=0 to 19
5760 read buf_good_for_man2(j)
5770 next j
5780 '******************************************************
5790 '2        ここまで                                        *
5800 '******************************************************
5810 '3        ここから                                        *
5820 '******************************************************
5830 restore 6780
5840 for i=0 to 19
5850 read buf_good_for_woman1(i)
5860 next i
5870 restore 6790
5880 for j=0 to 19
5890 read buf_good_for_woman2(j)
5900 next j
5910 '******************************************************
5920 '3        ここまで                                        *
5930 '******************************************************
5940 '4        ここから                                        *
5950 '******************************************************
5960 restore 6850
5970 for i=0 to 19
5980 read short_of_experience1(i)
5990 next i
6000 restore 6860
6010 for j=0 to 19
6020 read short_of_experience2(j)
6030 next j
6040 '******************************************************
6050 '4        ここまで                                        *
6060 '******************************************************
6070 '5.結婚への発展が困難なカップル  ここから                               *
6080 '******************************************************
6090 restore 6920
6100 for i=0 to 19
6110 read buf_difficult_for_couple1(i)
6120 next i
6130 restore 6930
6140 for j=0 to 19
6150 read buf_difficult_for_couple2(j)
6160 next j
6170 '******************************************************
6180 '5.結婚への発展が困難なカップル  ここまで                               *
6190 '******************************************************
6200 '6.愛し方にズレが出る二人 ここから                                   *
6210 '******************************************************
6220 restore 6990
6230 for i=0 to 19
6240 read buf_difference_of_love1(i)
6250 next i
6260 restore 7000
6270 for j=0 to 19
6280 read buf_difference_of_love2(j)
6290 next j
6300 '******************************************************
6310 '6.愛し方にズレが出る二人 ここまで                                   *
6320 '******************************************************
6330 '7.互いの価値観が噛み合わない相性 ここから                               *
6340 '******************************************************
6350 restore 7060
6360 for i=0 to 19
6370 read buf_difference_of_KachiKan1(i)
6380 next i
6390 restore 7070
6400 for j=0 to 19
6410 read buf_difference_of_KachiKan2(j)
6420 next j
6430 '******************************************************
6440 '7.互いの価値観が噛み合わない相性 ここまで                               *
6450 '******************************************************
6460 '相性占いタイプ ここから                                         *
6470 '******************************************************
6480 restore 7150
6490 for i=0 to 7
6500 read Result_Aisyou_type$(i)
6510 next i
6520 '****************************************************
6530 'Data文  ここから                                        *
6540 '****************************************************
6550 '0.理解し合えるカップル　ここから                                  *
6560 '****************************************************
6570 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
6580 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
6590 '****************************************************
6600 '0.理解し合えるカップル　ここまで                                  *
6610 '****************************************************
6620 '1.互いに自然体でつきあえるカップル ここから                            *
6630 '****************************************************
6640 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
6650 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
6660 '****************************************************
6670 '1.互いに自然体でつきあえるカップル　ここまで                            *
6680 '****************************************************
6690 '2.男性にとって居心地の良いカップル  ここから                           *
6700 '****************************************************
6710 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6720 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6730 '****************************************************
6740 '2男性にとって居心地の良いカップル ここまで                             *
6750 '****************************************************
6760 '3女性にとって居心地の良いカップル  ここから                            *
6770 '****************************************************
6780 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
6790 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
6800 '****************************************************
6810 '3女性にとって居心地の良いカップル  ここまで                            *
6820 '****************************************************
6830 '4恋愛経験を重ねた後なら愛を育める ここから                             *
6840 '****************************************************
6850 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6860 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6870 '****************************************************
6880 '4恋愛経験を重ねた後なら愛を育める ここまで                             *
6890 '****************************************************
6900 '5.結婚への発展が困難なカップル ここから                              *
6910 '****************************************************
6920 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6930 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6940 '****************************************************
6950 '5.結婚への発展が困難なカップル ここまで                              *
6960 '****************************************************
6970 '6.愛し方にズレが生じる二人  ここから                               *
6980 '****************************************************
6990 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
7000 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
7010 '****************************************************
7020 '6.愛し方にずれが生じる二人  ここまで                               *
7030 '****************************************************
7040 '7.互いに価値観が噛み合わない相性　ここから                             *
7050 '****************************************************
7060 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
7070 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
7080 '****************************************************
7090 '7.互いに価値観が噛み合わない相性 ここまで                             *
7100 '****************************************************
7110 '相性占い結果パターン ここから                                    *
7120 '****************************************************
7130 '0:理解し合える最良のカップル                                    *
7140 '****************************************************
7150 data "理解し合える最良のカップル"
7160 '****************************************************
7170 '1:互いに自然体で付き合えるカップル                                 *
7180 '****************************************************
7190 data "互いに自然体でつきあえるカップル"
7200 '****************************************************
7210 '2:男性にとって居心地の良い相性                                   *
7220 '****************************************************
7230 data "男性にとって居心地の良い相性"
7240 '****************************************************
7250 '3:女性にとって居心地の良い相性                                   *
7260 '****************************************************
7270 data "女性にとって居心地の良い相性"
7280 '****************************************************
7290 '4:恋愛経験を重ねた後なら愛を育める                                 *
7300 '****************************************************
7310 data "恋愛経験を重ねた後なら愛を育める"
7320 '****************************************************
7330 '5:結婚への発展が困難なカップル                                   *
7340 '****************************************************
7350 data "結婚への発展が困難なカップル"
7360 '****************************************************
7370 '6:愛し方にズレが生じる二人                                     *
7380 '****************************************************
7390 data "愛し方にずれが生じる二人"
7400 '****************************************************
7410 '7:互いに価値観が噛み合わない相性                                  *
7420 '****************************************************
7430 data "互いの価値観が噛み合わない相性"
7440 '************************************************
7450 'Data文   ここまで                                   *
7460 '************************************************
7470 '相性占い結果パターン ここまで
7480 '*******************************
7490 'メイン画面　ここから スタート (キーボードの選択)
7500 '*******************************
7510 '描画領域　ここから
7520 'Select_keybord:
7530 'talk ""
7540 'cls 3:font 48:No=0:y=0:key$="":bg=0:init"kb:4"
7550 'talk "キーボードの選択です。バーチャルキーボードを表示させますか？"
7560 'line (0,0)-(1200,60),rgb(0,0,255),bf
7570 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
7580 'line (0,60)-(1200,380),rgb(127,255,212),bf
7590 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
7600 'line (0,380)-(1200,450),rgb(0,255,0),bf
7610 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
7620 '描画領域　ここまで
7630 'Sprite
7640 'sp_on 0,1:sp_on 1,0:sp_on 2,0
7650 'sp_put 0,(10,100),0,0
7660 'sp_put 1,(10,200),1,0
7670 'sp_put 2,(10,300),2,0
7680 '設定画面 バーチャルキーボードの表示選択
7690 'color rgb(255,255,255)
7700 'print "●バーチャル キーボードの表示の選択" + chr$(13)
7710 'color rgb(255,0,255)
7720 'print " :1.バーチャルキーボードを表示する" + chr$(13)
7730 'print " :2.バーチャルキーボードを表示しない" + chr$(13)
7740 'print " :3.プログラムを終了する" + chr$(13)
7750 'color rgb(0,0,255)
7760 'print "バーチャルキーボードを表示するを選択"
7770 'Select_keybord2:
7780 'y=0:key$="":bg=0
7790 'while (key$ <> chr$(13) and key$ <> chr$(31) and y <> -1 and y <> 1 and bg <> 2)
7800 'y=stick(1)
7810 'key$=inkey$
7820 'bg=strig(1)
7830 'pause 3.56*100
7840 'wend
7850 '*****************************************************
7860 'カーソル下
7870 '*****************************************************
7880 'if (key$=chr$(31) or y=1) then
7890 'select case No
7900 'case 0:
7910 '       No=1:beep:locate 0,8:print "                      ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 0,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
7920 'case 1:
7930 '       No=2:beep:locate 0,8:print "                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 1,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7940 'case 2:
7950 '       No=0:beep:locate 0,8:print "                        ":locate 0,8:print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 2,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
7960 'end select
7970 'endif
7980 '***************************************************
7990 'カーソル上
8000 '***************************************************
8010 'if (y=-1 or key) then
8020 'select case No
8030 'case 0:
8040 '       No=2:beep:LOCATE 0,8:print "                                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 0,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
8050 'case 1:
8060 '       No=0:beep:locate 0,8:print "                                          ":locate 0,8:Print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 1,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
8070 'case 2:
8080 '       No=1:beep:locate 0,8:print "                                           ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
8090 'end select
8100 'endif
8110 'if (key$=chr$(13) or bg=2) then
8120 'select case No
8130 'case 0:
8140 '       init "kb:2":goto Main_Screen1:
8150 'case 1:
8160 '       init "kb:0":goto Main_Screen1:
8170 'case 2:
8180 '       talk"プログラムを終了します":ui_msg"プログラムを終了します":cls 3:cls 4:pause 2.34*100:color rgb(255,255,255):end
8190 'end select
8200 'endif
8210 '1:keybord_flag=1 きーボード表示
8220 'if val(a$) = 1 then init"kb:2":keyboard_flag=1:goto Main_Screen:
8230 '0:keybord_lag=0:キーボード非表示
8240 'if val(a$) = 2 then init"kb:0":keyboard_flag=0:goto Main_Screen:
8250 'keyNo=3 プログラム終了
8260 'if val(a$) = 3 then end
8270 'if val(a$) > 3 or val(a$)  = 0 then goto Select_keybord:
8280 'メイン画面 Top画面1
8290 Main_Screen1:
8300 cls 3:talk "":font 48:color rgb(255,255,255)
8310 talk "メイン画面です。番号を選んでください"
8320 'Text ,Grapgic clear:cls 3
8330 'グラフィック領域　ここから
8340 line (0,0)-(1080,60),rgb(0,0,255),bf
8350 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
8360 line (0,60)-(1080,560),rgb(127,255,212),bf
8370 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
8380 line (0,560)-(1080,740),rgb(0,255,0),bf
8390 'グラフィック領域 ここまで
8400 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
8410 Font 48
8420 '************************************************
8430 'Sprite                                         *
8440 '************************************************
8450 sp_on 0,1:sp_on 1,0:sp_on 2,0
8460 sp_put 0,(10,100),0,0
8470 '************************************************
8480 No=0:init"kb:4":y=0:key$="":bg=0
8490 print "◎姓名判断　メイン画面" + chr$(13)
8500 '************************************************
8510 '文字色:黒                                          *
8520 '************************************************
8530 color rgb(255,0,255)
8540 print " :1.姓名判断" + chr$(13)
8550 print " :2.姓名判断の設定" + chr$(13)
8560 print " :3.個人データーリスト" + chr$(13)
8570 print " :4.ヘルプ" + chr$(13)
8580 print " :5.プログラムの終了" + chr$(13)
8590 'x=touch(4)
8600 'print"7.プログラム終了"+chr$(13)
8610 '*************************************************
8620 '文字:黒                                            *
8630 '*************************************************
8640 color rgb(0,0,0)
8650 locate 0,12
8660 print "1.姓名判断を選択" + chr$(13)
8670 Main_Screen2:
8680 y=0:key$="":bg=0
8690 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8700 y=stick(1)
8710 key$=inkey$
8720 bg=strig(1)
8730 pause 2.55*100
8740 wend
8750 '**************************************************
8760 '1.下のキー  ここから
8770 '**************************************************
8780 if (y = 1 or key$ = chr$(31)) then
8790 select case No
8800 case 0:
8810 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
8820 case 1:
8830 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
8840 case 2:
8850 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
8860 case 3:
8870 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8880 case 4:
8890 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
8900 end select
8910 endif
8920 '***************************************************
8930 '1. 下のキー　ここまで
8940 '***************************************************
8950 '***************************************************
8960 '2.上のキー ここから
8970 '***************************************************
8980 if (key$=chr$(30) or y=-1) then
8990 select case No
9000 case 0:
9010 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9020 case 1:
9030 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9040 case 2:
9050 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9060 case 3:
9070 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9080 case 4:
9090 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9100 end select
9110 endif
9120 '***************************************************
9130 '3.決定ボタン ここから
9140 '***************************************************
9150 if (bg=2 or key$=chr$(13)) then
9160 select case No
9170 case 0:
9180 sp_on 0,0:goto seimeihandan_top:
9190 case 1:
9200 sp_on 1,0:goto seimeihandan_setting:
9210 case 2:
9220 sp_on 2,0:goto Parsonal_data_top:
9230 case 3:
9240 sp_on 3,0: goto help:
9250 case 4:
9260 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9270 end select
9280 endif
9290 '***************************************************
9300 '3.決定ボタン ここまで
9310 '***************************************************
9320 'No$=input$(1)
9330 'if val(No$) = 1  then goto seimeihandan_top:
9340 'if val(No$) = 2 then goto seimeihandan_setting:
9350 'if val(No$) = 3 then goto Parsonal_data_top:
9360 'if val(No$) = 4 then goto help:
9370 'if val(No$) = 5  then talk"終了します":cls 3:end
9380 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9390 'if No = "" then goto 7610
9400 '1.姓名判断トップ画面
9410 seimeihandan_top:
9420 cls:talk ""
9430 No=0:y=0:key$="":bg=0:talk""
9440 'タイトル文字:白
9450 font 48:color rgb(255,255,255),,rgb(176,196,222)
9460 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9470 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9480 sp_put 0,(10,100),0,0
9490 'グラフィック 描画領域　ここから
9500 'Main_Screen:
9510 cls 3
9520 '1.Title:青
9530 'Line 1
9540 line (0,0)-(1080,60),rgb(0,0,255),bf
9550 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
9560 'Line 2
9570 line (0,60)-(1080,450),rgb(127,255,212),bf
9580 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
9590 'Line 3
9600 line (0,450)-(1080,600),rgb(0,255,0),bf
9610 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
9620 'グラフィック 描画領域 ここまで
9630 color rgb(255,255,255)
9640 print"◎姓名判断の種類トップメニュー"+chr$(13)
9650 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9660 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9670 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9680 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9690 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9700 seimeihandan_top2:
9710 y=0:key$="":bg=0
9720 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9730 key$=inkey$
9740 y=stick(1)
9750 bg=strig(1)
9760 pause 2.55*100
9770 wend
9780 '*************************************************
9790 '下のキー  ここから
9800 '*************************************************
9810 if (key$=chr$(31) or y=1) then
9820 select case No
9830 case 0:
9840 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9850 case 1:
9860 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9870 case 2:
9880 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9890 case 3:
9900 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9910 end select
9920 endif
9930 '*************************************************
9940 '下のキー　ここまで
9950 '*************************************************
9960 if (key$=chr$(30) or y=-1) then
9970 select case No
9980 case 0:
9990 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
10000 case 1:
10010 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10020 case 2:
10030 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10040 case 3:
10050 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10060 end select
10070 endif
10080 '*************************************************
10090 '決定ボタン　ここから
10100 '*************************************************
10110 if (bg=2 or key$=chr$(13)) then
10120 select case No
10130 case 0:
10140 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10150 case 1:
10160 sp_on 1,0:goto Anzai_Top:
10170 case 2:
10180 sp_on 2,0:goto Kyusei_Top:
10190 case 3:
10200 sp_on 3,0:goto Main_Screen1:
10210 end select
10220 endif
10230 '*************************************************
10240 '決定ボタン　ここまで
10250 '*************************************************
10260 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10270 'if val(selectNo$)=2 then goto Anzai_Top:
10280 'if val(selectNo$)=3 then goto Kyusei_Top:
10290 'if val(selectNo$)=4 then goto Main_Screen1:
10300 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10310 '１．姓名判断(九星姓名判断トップ)
10320 'グラフィック領域　ここから
10330 Kyusei_Top:
10340 cls 3:No=0:y=0:bg=0:key$="":talk""
10350 sp_on 0,1:sp_put 0,(10,100),0,0
10360 line (0,0)-(1080,60),rgb(0,0,250),bf
10370 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
10380 line (0,60)-(1080,460),rgb(127,255,212),bf
10390 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
10400 line (0,460)-(1080,680),rgb(0,255,0),bf
10410 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
10420 'グラフィック領域　ここまで
10430 font 48:color rgb(255,255,255),,rgb(176,196,222)
10440 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10450 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10460 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10470 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10480 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10490 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10500 locate 0,10:color RGB(0,0,0)
10510 print "1.人名の吉凶を見るを選択"
10520 Kyusei_Top2:
10530 bg=0:key$="":y=0
10540 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10550 key$=inkey$
10560 y=stick(1)
10570 bg=strig(1)
10580 pause 2.50*100
10590 wend
10600 '****************************************************
10610 '下のキー　ここから
10620 '*****************************************************
10630 if (y=1 or key$=chr$(30)) then
10640 select case No
10650 case 0:
10660 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10670 case 1:
10680 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10690 case 2:
10700 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10710 case 3:
10720 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10730 end select
10740 endif
10750 '*****************************************************
10760 '下のキー　ここまで
10770 '*****************************************************
10780 '*****************************************************
10790 '上のキー　ここから
10800 '*****************************************************
10810 if (y=-1 or key$=chr$(31)) then
10820 select case No
10830 case 0:
10840 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10850 case 1:
10860 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10870 case 2:
10880 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10890 case 3:
10900 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10910 end select
10920 endif
10930 '*****************************************************
10940 '上のキー　ここまで
10950 '*****************************************************
10960 '*****************************************************
10970 '決定ボタン　ここから
10980 '*****************************************************
10990 if (key$=chr$(13) or bg=2) then
11000 select case No
11010 case 0:
11020 sp_on 0,0:goto Parson_name_kikkyo:
11030 case 1:
11040 sp_on 1,0:goto nick_name_check:
11050 case 2:
11060 sp_on 2,0:goto name_inyo_check:
11070 case 3:
11080 sp_on 3,0:goto seimeihandan_top:
11090 end select
11100 endif
11110 '*****************************************************
11120 '決定ボタン　ここまで
11130 '*****************************************************
11140 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
11150 'color rgb(0,0,0):Input "番号:",selectNo
11160 'selectNo=Input$(1)
11170 'if selectNo = 1 then goto Parson_name_kikkyo
11180 'if selectNo = 2 then goto nick_name_check:
11190 'if selectNo = 3 then goto name_inyo_check:
11200 'if selectNo = 4  then goto seimeihandan_top:
11210 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11220 '2.姓名判断 安斎流姓名判断　トップ画面
11230 '2-1名前の姓の部分を入力
11240 'グラフィック領域　ここから
11250 Anzai_Top_Screen:
11260 cls 3:LINE (0,0)-(1080,60),rgb(0,0,255),bf
11270 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11280 line (0,60)-(1080,260),rgb(127,255,212),bf
11290 pen 5:line(0,57)-(1077,257),rgb(0,0,255),b
11300 line (0,260)-(1080,350),rgb(0,255,0),bf
11310 pen 5:line(0,257)-(1077,347),rgb(0,0,255),b
11320 font 48:talk"":init"KB:2"
11330 'グラフィック領域 ここまで
11340 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11350 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11360 COLOR rgb(255,0,255)
11370 print"名前を2回に分けて入力してください"+chr$(13)
11380 print"名前の姓の部分を入れてください"+chr$(13)
11390 color rgb(0,0,0)
11400 input"名前の姓:",bufname$
11410 buff1=len(bufname$)
11420 '2-2名前の名の部分を入力
11430 'グラフィック描画領域　ここから
11440 cls 3:init"kb:2"
11450 line (0,0)-(1080,60),rgb(0,0,255),bf
11460 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
11470 line (0,60)-(1080,200),rgb(127,255,212),bf
11480 pen 5:line(0,57)-(1077,197),rgb(0,0,255),b
11490 line (0,200)-(1080,260),rgb(0,255,0),bf
11500 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
11510 'グラフィック描画領域 ここまで
11520 COLOR rgb(255,255,255)
11530 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11540 talk"つぎに、名前のめいの部分を入れてください"
11550 color rgb(255,0,255)
11560 print"名前の名の部分を入れてください"+chr$(13)
11570 color rgb(0,0,0)
11580 input"名前の名:",bufname2$
11590 buff2=len(bufname2$)
11600 bufff=buff1+buff2
11610 'goto 24640
11620 select case bufff
11630 '姓1文字,名1文字
11640 case 2:
11650 cls
11660 '天運:buf_tenunn
11670 buf_tenunn=char_count(bufname$)
11680 '地運:buf_chiunn
11690 buf_chiunn=char_count(bufname2$)
11700 '人運 = 天運 + 地運
11710 buf_jinunn=buf_tenunn + buf_chiunn
11720 '外運 = 天運 + 人運
11730 buf_gaiunn = buf_tenunn + buf_chiunn
11740 '総数=buf_gaiunn
11750 buf_total=buf_gaiunn
11760 goto Result_Anzai:
11770 '姓１，名:2
11780 case 3:
11790 cls:
11800 if buff1=1 and buff2=2 then
11810 '1.天運:buf_tenunn
11820 buf_tenunn=char_count(bufname$)
11830 '2文字目の文字
11840 bufer_name2$(0)=Mid$(bufname2$,1,1)
11850 '3文字目の文字
11860 bufer_name2$(1)=Mid$(bufname2$,2,1)
11870 '2.人運
11880 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11890 '3.地運:buf_chiunn
11900 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11910 '4外運:buf_gaiunn
11920 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11930 '5.総数:buf_total
11940 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11950 goto Result_Anzai:
11960 endif
11970 if buff1=2 and buff2=1 then
11980 bufer_name$(0)=Mid$(bufname$,1,1)
11990 bufer_name$(1)=Mid$(bufname$,2,1)
12000 bufer_name2$(0)=Mid$(bufname$,1,1)
12010 '1.天運
12020 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12030 '2.人運
12040 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12050 '3.地運
12060 buf_chiunn=char_count(bufer_name2$(0))
12070 '4.外運
12080 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12090 '5.総数
12100 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12110 goto Result_Anzai:
12120 endif
12130 case 4:
12140 if buff1=2 and buff2=2 then
12150 bufer_name$(0)=Mid$(bufname$,1,1)
12160 bufer_name$(1)=Mid$(bufname$,2,1)
12170 bufer_name2$(0)=Mid$(bufname2$,1,1)
12180 bufer_name2$(1)=Mid$(bufname2$,2,1)
12190 '1.天運
12200 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12210 '2.人運
12220 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12230 '3.地運
12240 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12250 '4.外運
12260 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12270 '5.総数
12280 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12290 goto Result_Anzai:
12300 endif
12310 'パターン2 姓3文字 名1文字 total4文字
12320 if buff1=3 and buff2=1 then
12330 bufer_name$(0)=Mid$(bufname$,1,1)
12340 bufer_name$(1)=Mid$(bufname$,2,1)
12350 bufer_name$(2)=Mid$(bufname$,3,1)
12360 bufer_name2$(0)=Mid$(bufname2$,1,1)
12370 '1.天運
12380 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12390 '2.人運
12400 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12410 '3.地運
12420 buf_chiunn=char_count(bufer_name2$(0))
12430 '4.外運
12440 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12450 '5.総運
12460 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12470 goto Result_Anzai:
12480 endif
12490 'パターン３ 姓1,名３  合計４文字
12500 if buff1=1 and buff2=3 then
12510 bufer_name$(0)=Mid$(bufname$,1,1)
12520 bufer_name2$(0)=Mid$(bufname2$,1,1)
12530 bufer_name2$(1)=Mid$(bufname2$,2,1)
12540 bufer_name2$(2)=Mid$(bufname2$,3,1)
12550 '1.天運
12560 buf_tenunn = char_count(bufer_name$(0))
12570 '2.人運
12580 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12590 '3.地運
12600 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12610 '4.外運
12620 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12630 '5.総運
12640 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12650 goto Result_Anzai:
12660 endif
12670 case 5:
12680 '５文字の名前
12690 '1.  3文字姓 2字名
12700 if buff1=3 and buff2=2 then
12710 bufer_name$(0)=Mid$(bufname$,1,1)
12720 bufer_name$(1)=Mid$(bufname$,2,1)
12730 bufer_name$(2)=Mid$(bufname$,3,1)
12740 bufer_name2$(0)=Mid$(bufname2$,1,1)
12750 bufer_name2$(1)=Mid$(bufname2$,2,1)
12760 '1.天運
12770 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12780 '2.人運
12790 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12800 '3.地運
12810 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12820 '4.外運
12830 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12840 '5.総運
12850 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12860 goto Result_Anzai:
12870 endif
12880 if buff1=2 and buff2=3 then
12890 bufer_name$(0)=Mid$(bufname$,1,1)
12900 bufer_name$(1)=Mid$(bufname$,2,1)
12910 bufer_name2$(0)=Mid$(bufname2$,1,1)
12920 bufer_name2$(1)=Mid$(bufname2$,2,1)
12930 bufer_name2$(2)=Mid$(bufname2$,3,1)
12940 '1.天運
12950 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12960 '2.人運
12970 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12980 '3.地運
12990 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13000 '4.外運
13010 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13020 '5.総運
13030 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13040 goto Result_Anzai:
13050 endif
13060 if buff1=4 and buff2=1 then
13070 bufer_name$(0)=Mid$(bufname$,1,1)
13080 bufer_name$(1)=mid$(bufname$,2,1)
13090 bufer_name$(2)=mid$(bufname$,3,1)
13100 bufer_name$(3)=mid$(bufname$,4,1)
13110 bufer_name2$(0)=mid$(bufname2$,1,1)
13120 '1.天運
13130 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13140 '2.人運
13150 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13160 '3.地運
13170 buf_chiunn=char_count(bufer_name2$(0))
13180 '4.外運
13190 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13200 '5.総運
13210 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13220 goto Result_Anzai:
13230 endif
13240 case 6:
13250 '3字姓 3字名
13260 if buff1=3 and buff2=3 then
13270 bufer_name$(0)=Mid$(bufname$,1,1)
13280 bufer_name$(1)=Mid$(bufname$,2,1)
13290 bufer_name$(2)=Mid$(bufname$,3,1)
13300 bufer_name2$(0)=Mid$(bufname2$,1,1)
13310 bufer_name2$(1)=Mid$(bufname2$,2,1)
13320 bufer_name2$(2)=Mid$(bufname2$,3,1)
13330 '1.天運
13340 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13350 '2.人運
13360 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13370 '3.地運
13380 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13390 '4.外運
13400 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13410 '5.総運
13420 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13430 goto Result_Anzai:
13440 endif
13450 '4字姓 2字名
13460 if buff1=4 and buff2=2 then
13470 bufer_name$(0)=Mid$(bufname$,1,1)
13480 bufer_name$(1)=Mid$(bufname$,2,1)
13490 bufer_name$(2)=Mid$(bufname$,3,1)
13500 bufer_name$(3)=Mid$(bufname$,4,1)
13510 bufer_name2$(0)=Mid$(bufname2$,1,1)
13520 bufer_name2$(1)=Mid$(bufname2$,2,1)
13530 '1.天運
13540 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13550 '2.人運
13560 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13570 '3.地運
13580 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13590 '4.外運
13600 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13610 '5.総運
13620 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13630 goto Result_Anzai:
13640 endif
13650 '4字姓 3字名
13660 case 7:
13670 if buff1=4 and buff2=3 then
13680 bufer_name$(0)=Mid$(bufname$,1,1)
13690 bufer_name$(1)=Mid$(bufname$,2,1)
13700 bufer_name$(2)=Mid$(bufname$,3,1)
13710 bufer_name$(3)=Mid$(bufname$,4,1)
13720 bufer_name2$(0)=Mid$(bufname2$,1,1)
13730 bufer_name2$(1)=Mid$(bufname2$,2,1)
13740 bufer_name2$(2)=Mid$(bufname2$,3,1)
13750 '1.天運
13760 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13770 '2.人運
13780 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13790 ' 3.地運
13800 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13810 '4.外運
13820 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13830 '5.総運
13840 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13850 goto Result_Anzai:
13860 endif
13870 case else:
13880 end select
13890 '2.設定
13900 seimeihandan_setting:
13910 font 46:color rgb(0,0,0),,rgb(176,196,222)
13920 No=0:y=0:key$="":bg=0:talk""
13930 sp_on 0,1:sp_put 0,(10,100),0,0
13940 talk"設定画面です。番号を選んでエンターキーを押してください"
13950 'グラフィック領域　ここから
13960 cls 3:
13970 line (0,0)-(1080,60),rgb(0,0,255),bf
13980 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
13990 line (0,60)-(1080,560),rgb(127,255,212),bf
14000 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
14010 line (0,560)-(1080,750),rgb(0,255,0),bf
14020 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14030 'グラフィック領域 ここまで
14040 '1行目　文字色　 白
14050 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14060 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14070 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14080 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14090 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14100 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14110 COLOR rgb(0,0,0):locate 0,12:
14120 print"1.登録文字の確認を選択"+chr$(13)
14130 seimeihandan_setting2:
14140 y=0:key$="":bg=0
14150 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14160 key$=inkey$
14170 y=stick(1)
14180 bg=strig(1)
14190 pause 2.50*100
14200 wend
14210 '****************************************************
14220 '1.下のカーソル　ここから
14230 '****************************************************
14240 if (key$=chr$(31) or y=1) then
14250 select case No
14260 case 0:
14270 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14280 case 1:
14290 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14300 case 2:
14310 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14320 case 3:
14330 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14340 case 4:
14350 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14360 end select
14370 endif
14380 '*****************************************************
14390 '1.下のカーソル　ここまで
14400 '*****************************************************
14410 '*****************************************************
14420 '2.上のカーソル　ここから
14430 '*****************************************************
14440 if (key$=chr$(30) or y=-1) then
14450 select case No
14460 case 0:
14470 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14480 case 1:
14490 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14500 case 2:
14510 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14520 case 3:
14530 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14540 case 4:
14550 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14560 end select
14570 endif
14580 '******************************************************
14590 '2.上のカーソル　ここまで
14600 '******************************************************
14610 '******************************************************
14620 '3.決定ボタン　ここから
14630 '******************************************************
14640 if (key$=chr$(13) or bg=2) then
14650 select case No
14660 case 0:
14670 sp_on 0,0:goto Entry_moji_Top:
14680 case 1:
14690 sp_on 1,0:goto Entry_moji_check:
14700 case 2:
14710 sp_on 2,0:goto Moji_Kikkyo_Top:
14720 case 3:
14730 sp_on 3,0:goto Main_Screen1:
14740 case 4:
14750 sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14760 end select
14770 endif
14780 '******************************************************
14790 '3.決定ボタン　ここまで
14800 '******************************************************
14810 'Input"番号:",selectNo
14820 'if selectNo=1 then goto Entry_moji_Top:
14830 'if selectNo=2 then goto Entry_moji_check:
14840 'if selectNo=3 then goto Moji_Kikkyo_Top:
14850 'if selectNo=4 then goto Main_Screen1:
14860 'if selectNo=5 then talk"終了します":cls 3:end
14870 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
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
15260 'endif
15270 'color rgb(0,0,0)
15280 'print"エンターキーを押してください"
15290 'key$=Input$(1)
15300 while (key$<>chr$(13) and bg <> 2)
15310 key$=inkey$
15320 bg=strig(1)
15330 pause 2.50*100
15340 wend
15350 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15360 '3.ヘルプ
15370 help:
15380 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15390 No=0:y=0:key$="":bg=0
15400 talk""
15410 '描画領域 ここから
15420 line (0,0) - (1080,60),rgb(0,0,255),bf
15430 sp_on 0,1:sp_put 0,(10,100),0,0
15440 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
15450 line (0,60) - (1080,570),rgb(127,255,212),bf
15460 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
15470 line (0,570) - (1080,650),rgb(0,255,0),bf
15480 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
15490 '描画領域　ここまで
15500 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15510 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15520 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15530 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15540 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15550 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
15560 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15570 color rgb(0,0,0)
15580 locate 0,12:print "1.バージョン情報を選択"
15590 'color rgb(0,0,0):Input"番号:",selectNo
15600 help2:
15610 y=0:key$="":bg=0
15620 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15630 key$=inkey$
15640 y=stick(1)
15650 bg=strig(1)
15660 pause 2.50*100
15670 wend
15680 if (y=1 or key$=chr$(30)) then
15690 select case No
15700 case 0:
15710 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15720 case 1:
15730 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15740 case 2:
15750 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15760 case 3:
15770 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15780 case 4:
15790 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15800 end select
15810 endif
15820 if (y=-1 or key$=chr$(31)) then
15830 select case No
15840 case 0:
15850 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15860 case 1:
15870 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15880 case 2:
15890 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15900 case 3:
15910 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15920 case 4:
15930 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15940 end select
15950 endif
15960 if (key$=chr$(13) or bg=2) then
15970 select case No
15980 case 0:
15990 sp_on 0,0:goto Version_info:
16000 case 1:
16010 sp_on 1,0:goto Document_info:
16020 case 2:
16030 sp_on 2,0:goto Config_Setting:
16040 case 4:
16050 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16060 case 3:
16070 sp_on 3,0:goto Main_Screen1:
16080 end select
16090 endif
16100 'if selectNo = 1 then goto Version_info:
16110 'if selectNo = 2 then goto Document_info:
16120 'if selectNo = 3 then goto Config_Setting:
16130 'プログラムの終了
16140 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
16150 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
16160 '前の画面に戻る
16170 'if selectNo=5 then goto Main_Screen1:
16180 'if selectNo > 4 or selectNo = 0 then goto help:
16190 'Menu1　画面
16200 talk"調べたい名前のみよじをいれてください"
16210 'グラフィック描画領域　ここから
16220 Parson_name_kikkyo:
16230 cls 3:init "KB:2"
16240 line (0,0)-(1080,60),rgb(0,0,255),bf
16250 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16260 line (0,60)-(1080,180),rgb(127,255,212),bf
16270 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
16280 line (0,180)-(1080,250),rgb(0,255,0),bf
16290 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
16300 'グラフィック描画領域　ここまで
16310 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16320 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16330 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16340 cls
16350 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16360 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16370 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16380 goto complate_Kyusei:
16390 'メニュー6　バージョン表示
16400 'グラフィック　描画　領域　 ここから
16410 Version_info:
16420 cls 3:bg=0:talk ""
16430 line (0,0)-(1080,60),rgb(0,0,255),bf
16440 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
16450 line (0,60)-(1080,665),rgb(127,255,212),bf
16460 pen 5:line(0,57)-(1077,662),rgb(0,0,255),b
16470 line (0,665)-(1080,750),rgb(0,255,0),bf
16480 pen 5:line(0,662)-(1077,747),rgb(0,0,255),b
16490 'グラフィック　描画 領域　 ここまで
16500 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16510 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16520 color rgb(255,0,255):PRINT"Ver:239.2024.11.24" + chr$(13)
16530 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16540 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16550 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16560 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16570 'ここを書き換える
16580 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.39です"
16590 color rgb(0,0,0):print"エンターキーを押してください"
16600 Version_info2:
16610 bg=0
16620 while (bg<>2)
16630 bg=strig(1)
16640 pause 2.50*100
16650 wend
16660 if bg = 2  then beep:goto Main_Screen1:
16670 complate_Kyusei:
16680 '文字数を求める変数
16690 buf_char_size=len(name$)
16700 buf_char_size2=len(name2$)
16710 '入力した文字を代入する変数
16720 '入力した文字を配列に代入する処理
16730 '姓名判断データー文字比較
16740 '画数を求める関数
16750 func char_count(buf_count$)
16760 count=0:buffer=0
16770 '1画の文字 23文字
16780 for j=0 to ((Moji_1)-1)
16790 if buf_count$=buf_char_hiragana1$(j) then
16800 count =1:
16810 endif
16820 next j
16830 '2画の文字
16840 for j=0 to ((Moji_2)-1)
16850 if buf_count$=buf_char_hiragana2$(j)  then
16860 count = 2:
16870 endif
16880 next j
16890 for j=0 to ((Moji_3)-1)
16900 if buf_count$=buf_char_hiragana3$(j) then
16910 count =3:
16920 endif
16930 next j
16940 for j=0 to ((Moji_4)-1)
16950 if buf_count$=buf_char_hiragana4$(j) then
16960 count = 4:
16970 endif
16980 next j
16990 for j=0 to ((Moji_5)-1)
17000 if buf_count$=buf_char_hiragana5$(j) then
17010 count = 5:
17020 endif
17030 next j
17040 for j=0 to ((Moji_6)-1)
17050 if buf_count$=buf_char_hiragana6$(j) then
17060 count= 6
17070 endif
17080 next j
17090 for  j=0 to ((Moji_7)-1)
17100 if buf_count$=buf_char_hiragana7$(j) then
17110 count=  7
17120 endif
17130 next j
17140 for j=0 to ((Moji_8)-1)
17150 if buf_count$=buf_char_hiragana8$(j) then
17160 count= 8
17170 endif
17180 next j
17190 for j=0 to ((Moji_9)-1)
17200 if buf_count$=buf_char_hiragana9$(j) then
17210 count=9
17220 endif
17230 next j
17240 for j=0 to ((Moji_10)-1)
17250 if buf_count$=buf_char_hiragana10$(j) then
17260 count=10
17270 endif
17280 next j
17290 for j=0 to ((Moji_11)-1)
17300 if buf_count$=buf_char_hiragana11$(j) then
17310 count=11
17320 endif
17330 next j
17340 for j=0 to  ((Moji_12)-1)
17350 if buf_count$=buf_char_hiragana12$(j) then
17360 count=12
17370 endif
17380 next j
17390 for j=0 to ((Moji_13)-1)
17400 if buf_count$=buf_char_hiragana13$(j) then
17410 count=13
17420 endif
17430 next j
17440 for j=0 to ((Moji_14)-1)
17450 if buf_count$=buf_char_hiragana14$(j) then
17460 count=14
17470 endif
17480 next j
17490 for j=0 to ((Moji_15)-1)
17500 if buf_count$=buf_char_hiragana15$(j) then
17510 count=15
17520 endif
17530 next j
17540 for j=0 to ((Moji_16)-1)
17550 if buf_count$=buf_char_hiragana16$(j) then
17560 count=16
17570 endif
17580 next j
17590 for j=0 to ((Moji_17)-1)
17600 if buf_count$=buf_char_hiragana17$(j) then
17610 count=17
17620 endif
17630 next j
17640 for j=0 to ((Moji_18)-1)
17650 if buf_count$=buf_char_hiragana18$(j) then
17660 count=18
17670 endif
17680 next j
17690 for j=0 to ((Moji_19)-1)
17700 if buf_count$=buf_char_hiragana19$(j) then
17710 count=19
17720 endif
17730 next j
17740 for j=0 to ((Moji_20)-1)
17750 if buf_count$=buf_char_hiragana20$(j) then
17760 count=20
17770 endif
17780 next i
17790 for j=0 to ((Moji_21)-1)
17800 if buf_count$=buf_char_hiragana21$(j) then
17810 count=21
17820 endif
17830 next j
17840 for j=0 to ((Moji_22)-1)
17850 if buf_count$=buf_char_hiragana22$(j) then
17860 count=22
17870 endif
17880 next j
17890 for j=0 to ((Moji_23)-1)
17900 if buf_count$=buf_char_hiragana23$(j) then
17910 count=23
17920 endif
17930 next j
17940 for j=0 to ((Moji_24)-1)
17950 if buf_count$=buf_char_hiragana24$(j) then
17960 count=24
17970 endif
17980 buffer = count
17990 next j
18000 endfunc buffer
18010 func show_sex_type$(sex$)
18020 buf_number=val(Mid$(sex$,4,1))
18030 if buf_number = 1 then
18040 buf_show_sex_type$="性別:女性"
18050 else
18060 if buf_number=2 then
18070 buf_show_sex_type$="性別:男性"
18080 endif
18090 endif
18100 endfunc buf_show_sex_type$
18110 '合計を求める関数
18120 func totalcounts(buffers$)
18130 buffers=0:
18140 for i=0 to len(buffers$)-1
18150 buffers=buffers+char_count(buffers$)
18160 next i
18170 endfunc buffers
18180 buf_count2=0:buf_count3=0
18190 'dim buf_Input_data$(len(name$))
18200 '1.苗字の文字数
18210 for n=0 to (buf_char_size-1)
18220 buf_Input_data$(n)=mid$(name$,n+1,1)
18230 next n
18240 for i=0 to (buf_char_size-1)
18250 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18260 next i
18270 '2.名の文字数
18280 for n2=0 to (buf_char_size2-1)
18290 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18300 next n2
18310 for i2=0 to (buf_char_size2-1)
18320 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18330 next i2
18340 '総数を出す
18350 select case (buf_char_size + buf_char_size2)
18360 case 6:
18370 if ((buf_char_size=4) and (buf_char_size2=2)) then
18380 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18390 endif
18400 if ((buf_char_size=3) and (buf_char_size2=3)) then
18410 if buf_Input_data$(1)="々" then
18420 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18430 else
18440 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18450 endif
18460 endif
18470 case 5:
18480 if ((buf_char_size=4) and (buf_char_size2=1)) then
18490 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18500 endif
18510 if ((buf_char_size=2) and (buf_char_size2=3)) then
18520 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18530 endif
18540 if ((buf_char_size=3) and (buf_char_size2=2)) then
18550 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18560 endif
18570 case 4:
18580 if ((buf_char_size=1) and (buf_char_size2=3)) then
18590 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18600 endif
18610 if ((buf_char_size=2) and (buf_char_size2=2)) then
18620 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18630 endif
18640 if ((buf_char_size=3) and (buf_char_size2=1)) then
18650 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18660 endif
18670 case 3:
18680 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18690 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18700 endif
18710 if ((buf_char_size=2) and (buf_char_size2=1)) then
18720 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18730 endif
18740 case 2:
18750 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18760 case else:
18770 end select
18780 '文字の総数をだす
18790 total_name$ = name$ + name2$
18800 '1.姓星を求める
18810 select case buf_char_size
18820 '苗字1文字のとき
18830 case 1:
18840 buf_seisei = char_count(buf_Input_data$(0)) + 1
18850 '苗字2文字の時
18860 case 2:
18870 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18880 '苗字3文字のとき
18890 case 3:
18900 if (buf_Input_data$(1)="々")  then
18910 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18920 else
18930 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18940 endif
18950 '苗字4文字のとき
18960 case 4:
18970 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18980 case else:
18990 end select
19000 '2.主星をだす
19010 '2.主星
19020 select case (buf_char_size + buf_char_size2)
19030 '姓名5文字のとき
19040 case 6:
19050 if ((buf_char_size=4) and (buf_char_size2=2)) then
19060 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19070 endif
19080 if ((buf_char_size=3) and (buf_char_size2=3)) then
19090 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19100 endif
19110 case 5:
19120 if ((buf_char_size=4) and (buf_char_size2=1)) then
19130 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19140 endif
19150 if ((buf_char_size=2) and (buf_char_size2=3)) then
19160 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19170 endif
19180 if ((buf_char_size=3) and (buf_char_size2=2)) then
19190 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19200 endif
19210 '姓名4文字のとき
19220 case 4:
19230 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19240 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19250 endif
19260 if ((buf_char_size=1) and (buf_char_size2=3)) then
19270 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19280 endif
19290 if ((buf_char_size=3) and (buf_char_size2=1)) then
19300 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19310 endif
19320 '姓名3文字のとき
19330 case 3:
19340 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19350 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19360 else
19370 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19380 endif
19390 case 2:
19400 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19410 case else:
19420 end select
19430 '3.名星を求める
19440 select case (buf_char_size + buf_char_size2)
19450 case 6:
19460 if ((buf_char_size=3) and (buf_char_size2=3)) then
19470 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19480 endif
19490 if ((buf_char_size=4) and (buf_char_size2=2)) then
19500 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19510 endif
19520 case 5:
19530 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19540 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19550 endif
19560 if ((buf_char_size=3) and (buf_char_size2=2)) then
19570 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19580 endif
19590 if ((buf_char_size=2) and (buf_char_size2=3))  then
19600 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19610 endif
19620 case 4:
19630 if ((buf_char_size=2) and (buf_char_size2=2)) then
19640 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19650 endif
19660 if ((buf_char_size=1) and (buf_char_size2=3)) then
19670 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19680 endif
19690 if ((buf_char_size=3) and (buf_char_size2=1)) then
19700 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19710 endif
19720 case 3:
19730 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19740 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19750 endif
19760 if ((buf_char_size=2) and (buf_char_size2=1)) then
19770 buf_meisei=char_count(buf_Input_data2$(0))+1
19780 endif
19790 case 2:
19800 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19810 case else:
19820 end select
19830 '4.外星を求める
19840 select case (buf_char_size + buf_char_size2)
19850 case 6:
19860 if buf_Input_data$(1)="々"  then
19870 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19880 else
19890 if ((buf_char_size=4) and (buf_char_size2=2)) then
19900 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19910 else
19920 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19930 endif
19940 endif
19950 case 5:
19960 if ((buf_char_size=4) and (buf_char_size2=1)) then
19970 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19980 endif
19990 if ((buf_char_size=3) and (buf_char_size2=2)) then
20000 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
20010 endif
20020 if ((buf_char_size=2) and (buf_char_size2=3)) then
20030 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20040 endif
20050 case 4:
20060 if ((buf_char_size=2) and (buf_char_size2=2)) then
20070 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20080 endif
20090 if ((buf_char_size=1) and (buf_char_size2=3)) then
20100 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20110 endif
20120 if ((buf_char_size=3) and (buf_char_size2=1)) then
20130 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20140 endif
20150 case 3:
20160 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20170 buf_gaisei=1+char_count(buf_Input_data2$(1))
20180 endif
20190 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20200 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20210 endif
20220 case 2:
20230 buf_gaisei = 2
20240 case else:
20250 end select
20260 '診断結果表示
20270 '1.姓星を出す
20280 'グラフィック描画領域　ここから
20290 Result_Kyusei_Kikkyo:
20300 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20310 '縦の画面
20320 '1行目
20330 line (0,0)-(1500,60),rgb(0,0,255),bf
20340 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20350 '2行目
20360 line (0,60)-(1500,425),rgb(127,255,212),bf
20370 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20380 '3行目
20390 line (0,485)-(1500,425),rgb(0,255,0),bf
20400 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20410 '横の画面　吉凶のランク表
20420 'グラフィック描画領域　ここまで
20430 talk"診断結果です":font 32
20440 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20450 color Rgb(255,0,255)
20460 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20470 '2.主星を出す
20480 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20490 '3.名星を求める
20500 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20510 '4.外星を求める
20520 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20530 '5.総数を出す
20540 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20550 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20560 color rgb(0,0,0)
20570 print"エンターキーを押してください"
20580 while (key$ <> chr$(13) and bg <> 2)
20590 key$=inkey$
20600 bg=strig(1)
20610 pause 2.50*100
20620 wend
20630 'key$=Input$(1)
20640 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20650 '2.主星を出す
20660 'メニュー3 登録文字の確認 ここから
20670 'グラフィック領域　ここから
20680 'タイトル青 文字:白
20690 Entry_moji_Top:
20700 talk ""
20710 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
20720 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
20730 line (0,62)-(1080,155),rgb(0,255,255),bf
20740 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
20750 line (0,155)-(1080,260),rgb(0,255,0),bf
20760 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
20770 'グラフィック領域　ここまで
20780 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20790 '文字:白
20800 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20810 '文字:アクア
20820 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20830 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20840 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20850 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20860 '1画の文字
20870 for i=0 to ((Moji_1)-1)
20880 if (name$=buf_char_hiragana1$(i)) then
20890 buffer_count=1:goto Moji_count_check:
20900 endif
20910 next i
20920 '2画の文字
20930 for i=0 to ((Moji_2)-1)
20940 if (name$=buf_char_hiragana2$(i)) then
20950 buffer_count=2:goto Moji_count_check:
20960 endif
20970 next i
20980 '3画の文字
20990 for i=0 to ((Moji_3)-1)
21000 if (name$=buf_char_hiragana3$(i)) then
21010 buffer_count=3:goto Moji_count_check:
21020 endif
21030 next i
21040 '4画の文字
21050 for i=0 to ((Moji_4)-1)
21060 if (name$=buf_char_hiragana4$(i)) then
21070 buffer_count=4:goto Moji_count_check:
21080 endif
21090 next i
21100 '5画の文字
21110 for i=0 to ((Moji_5)-1)
21120 if (name$=buf_char_hiragana5$(i)) then
21130 buffer_count=5:goto Moji_count_check:
21140 endif
21150 next i
21160 '6画の文字
21170 for i=0 to ((Moji_6)-1)
21180 if (name$=buf_char_hiragana6$(i)) then
21190 buffer_count=6:goto Moji_count_check:
21200 endif
21210 next i
21220 '7画の文字
21230 for i=0 to ((Moji_7)-1)
21240 if (name$=buf_char_hiragana7$(i)) then
21250 buffer_count=7:goto Moji_count_check:
21260 endif
21270 next i
21280 '8画の文字 120 文字
21290 for i=0 to ((Moji_8)-1)
21300 if (name$=buf_char_hiragana8$(i)) then
21310 buffer_count=8:goto Moji_count_check:
21320 endif
21330 next i
21340 '9画の文字  103文字
21350 for i=0 to ((Moji_9)-1)
21360 if (name$=buf_char_hiragana9$(i)) then
21370 buffer_count=9:goto Moji_count_check:
21380 endif
21390 next i
21400 '10画の文字 98文字
21410 for i=0 to ((Moji_10)-1)
21420 if (name$=buf_char_hiragana10$(i)) then
21430 buffer_count=10:goto Moji_count_check:
21440 endif
21450 next i
21460 '11画の文字 98文字
21470 for i=0 to ((Moji_11)-1)
21480 if (name$=buf_char_hiragana11$(i)) then
21490 buffer_count=11:goto Moji_count_check:
21500 endif
21510 next i
21520 '12画の文字
21530 for i=0 to ((Moji_12)-1)
21540 if (name$=buf_char_hiragana12$(i)) then
21550 buffer_count=12:goto Moji_count_check:
21560 endif
21570 next i
21580 '13画の文字
21590 for i=0 to ((Moji_13)-1)
21600 if (name$=buf_char_hiragana13$(i)) then
21610 buffer_count=13:goto Moji_count_check:
21620 endif
21630 next i
21640 '14画の文字
21650 for i=0 to ((Moji_14)-1)
21660 if (name$=buf_char_hiragana14$(i)) then
21670 buffer_count=14:goto Moji_count_check:
21680 endif
21690 next i
21700 '15画の文字
21710 for i=0 to ((Moji_15)-1)
21720 if (name$=buf_char_hiragana15$(i)) then
21730 buffer_count=15:goto Moji_count_check:
21740 endif
21750 next i
21760 '16画の文字
21770 for i=0 to ((Moji_16)-1)
21780 if (name$=buf_char_hiragana16$(i)) then
21790 buffer_count=16:goto Moji_count_check:
21800 endif
21810 next i
21820 '17画の文字
21830 for i=0 to ((Moji_17)-1)
21840 if (name$=buf_char_hiragana17$(i)) then
21850 buffer_count=17:goto Moji_count_check:
21860 endif
21870 next i
21880 '18画の文字 25
21890 for i=0 to ((Moji_18)-1)
21900 if (name$=buf_char_hiragana18$(i)) then
21910 buffer_count=18:goto Moji_count_check:
21920 endif
21930 next i
21940 '19画の文字 17
21950 for i=0 to ((Moji_19)-1)
21960 if (name$=buf_char_hiragana19$(i)) then
21970 buffer_count=19:goto Moji_count_check:
21980 endif
21990 next i
22000 '20画の文字 13
22010 for i=0 to ((Moji_20)-1)
22020 if (name$=buf_char_hiragana20$(i)) then
22030 buffer_count=20:goto Moji_count_check:
22040 endif
22050 next i
22060 '21画の文字 6
22070 for i=0 to ((Moji_21)-1)
22080 if (name$=buf_char_hiragana21$(i)) then
22090 buffer_count=21:goto Moji_count_check:
22100 endif
22110 next i
22120 '22画の文字 4
22130 for i=0 to ((Moji_22)-1)
22140 if (name$=buf_char_hiragana22$(i)) then
22150 buffer_count=22:goto Moji_count_check:
22160 endif
22170 next i
22180 '23画の文字 3
22190 for i=0 to ((Moji_23)-1)
22200 if (name$=buf_char_hiragana23$(i)) then
22210 buffer_count=23:goto Moji_count_check:
22220 endif
22230 next i
22240 '24画の文字
22250 for i=0 to ((Moji_24)-1)
22260 if (name$=buf_char_hiragana24$(i)) then
22270 buffer_count=24:goto Moji_count_check:
22280 endif
22290 next i
22300 'Menu3 結果表示 画数の登録確認
22310 Moji_count_check:
22320 bg=0:init"kb:4"
22330 if (buffer_count = 0) then
22340 '登録文字がない場合の処理
22350 'グラフィック領域　ここから
22360 'Moji_count_check:
22370 cls 3:talk ""
22380 '1行
22390 line (0,0)-(1080,60),rgb(0,0,255),bf
22400 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22410 '2行目
22420 line (0,60)-(1080,165),rgb(127,255,212),bf
22430 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22440 '3行目
22450 line (0,165)-(1080,370),rgb(0,0,255),bf
22460 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22470 '4行目
22480 line (0,370)-(1080,450),rgb(0,255,0),bf
22490 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22500 'グラフィック領域　ここまで
22510 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22520 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22530 talk "この文字は、登録されていません"
22540 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22550 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22560 color rgb(0,0,0):print"コマンド:"
22570 while (bg <> 2 and key$ <> chr$(13))
22580 key$=inkey$
22590 bg=strig(1)
22600 pause 2.50*100
22610 wend
22620 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22630 'key$=Input$(1)
22640 'if key$="q" or key$="Q" then goto Main_Screen1:
22650 'if key$=chr$(13) then goto Entry_moji_Top:
22660 'goto 20280
22670 else
22680 'グラフィック描画領域　ここから
22690 'Entry_moji_check:
22700 cls 3
22710 '1行目
22720 line (0,0)-(1080,58),rgb(0,0,255),bf
22730 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
22740 '2行目
22750 line (0,58)-(1080,100),rgb(127,255,212),bf
22760 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
22770 '3行目
22780 line (0,100)-(1080,280),rgb(0,0,255),bf
22790 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
22800 '4行目
22810 line (0,280)-(1080,340),rgb(0,255,0),bf
22820 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
22830 'グラフィック描画領域　ここまで
22840 color rgb(255,255,255):print "登録文字画数結果表示"
22850 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22860 endif
22870 while (key$<>chr$(13) and bg <> 2)
22880 key$=inkey$
22890 bg=strig(1)
22900 pause 2.50*100
22910 wend
22920 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
22930 'color rgb(255,255,255)
22940 'print"q+エンターキー:トップ画面"+chr$(13)
22950 'print"エンターキー:もう一度やる"+chr$(13)
22960 'color rgb(0,0,0)
22970 'print"コマンド:"
22980 'key$=Input$(1)
22990 'if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
23000 'if key$="q" then buffer_count=0:goto Main_Screen1:
23010 'if not(key$="q") then goto Moji_count_check:
23020 'Menu2 名前の陰陽を見る
23030 'グラフィック描画領域 ここから
23040 name_inyo_check:
23050 init "kb:2":talk ""
23060 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
23070 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
23080 LINE (0,60)-(1080,250),rgb(127,255,212),bf
23090 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
23100 line (0,250)-(1080,350),rgb(0,255,0),bf
23110 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
23120 'グラフィック描画領域　ここまで
23130 cls
23140 color rgb(255,255,255)
23150 print"Menu2 名前の陰陽を見る"+chr$(13)
23160 COLOR rgb(255,0,255)
23170 PRINT"(●:陽,○:陰)"+chr$(13)
23180 print"調べたい名前苗字を入れてください"+chr$(13)
23190 color rgb(0,0,0)
23200 Input"調べたい名前の苗字:",name$
23210 if name$="" then goto name_inyo_check:
23220 'Menu2 陰陽の吉凶を見る 名入力
23230 cls:color rgb(255,255,255)
23240 print"Menu2 名前の陰陽を見る"+chr$(13)
23250 color rgb(255,0,255)
23260 print"(●:陽,○:陰)"+chr$(13)
23270 print"調べたい名前の名を入れてください"+chr$(13)
23280 color rgb(0,0,0)
23290 Input"調べたい名前の名:",name2$
23300 if name2$="" then goto name_inyo_check:
23310 for i=0 to len(name$)-1
23320 name_array$(i)=Mid$(name$,i+1,1)
23330 if char_count(name_array$(i)) mod 2 = 1  then
23340 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23350 else
23360 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23370 endif
23380 next i
23390 for i=0 to len(name2$)-1
23400 name_array2$(i)=Mid$(name2$,i+1,1)
23410 if char_count(name_array2$(i)) mod 2 = 1 then
23420 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
23430 else
23440 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
23450 endif
23460 next i
23470 bufname$=buffer$+buffer2$
23480 '陰陽のタイプ ここから
23490 select case (len(bufname$))
23500 '2文字
23510 case 2:
23520 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
23530 '
23540 '  endif
23550 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23560 '  endif
23570 '3文字
23580 case 3:
23590 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23600 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23610 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23620 '4文字
23630 case 4:
23640 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23650 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23660 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23670 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23680 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23690 '5文字
23700 case 5:
23710 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23720 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23730 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23740 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23750 case 6:
23760 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23770 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23780 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23790 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23800 case else:
23810 buffer_name$="例外に入りました"
23820 end select
23830 '陰陽のタイプ　ここまで
23840 'グラフィック描画領域　ここから
23850 cls 2:key$="":bg=0:init "kb:4":talk ""
23860 line (0,0)-(1080,60),rgb(0,0,250),bf
23870 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
23880 line (0,60)-(1080,285),rgb(127,255,212),bf
23890 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
23900 line (0,280)-(1080,380),rgb(0,255,0),bf
23910 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
23920 'グラフィック描画領域 ここまで
23930 color rgb(255,255,255)
23940 cls:print"名前:";name$ + name2$ + chr$(13)
23950 color rgb(255,0,255)
23960 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23970 print buffer_name$;chr$(13)
23980 color rgb(0,0,0)
23990 print"エンターキーを押してください"
24000 'key$=Input$(1)
24010 while (bg <> 2 and key$ <> chr$(13))
24020 key$=inkey$
24030 bg=strig(1)
24040 pause 2.50*100
24050 wend
24060 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24070 'Menu3
24080 '登録文字数の確認
24090 Entry_moji_check:
24100 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24110 'グラフィック描画領域　ここから
24120 cls 3:init"kb:4":bg=0:key$="":talk ""
24130 '1行目
24140 line (0,0)-(1080,60),rgb(0,0,255),bf
24150 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24160 '2行目
24170 line (0,60)-(1080,150),rgb(157,255,212),bf
24180 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24190 '3行目
24200 line (0,150)-(1080,250),rgb(0,255,0),bf
24210 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24220 'グラフィック描画領域 ここまで
24230 color rgb(255,255,255)
24240 PRINT"登録文字数の確認"+chr$(13)
24250 color rgb(255,0,255)
24260 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24270 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24280 while (key$ <> chr$(13) and bg <> 2)
24290 key$=inkey$
24300 bg=strig(1)
24310 pause 2.50*100
24320 wend
24330 'color rgb(0,0,0)
24340 'print"エンターキーを押してください"+chr$(13)
24350 'key$=Input$(1)
24360 'print"エンターキーを押してください"
24370 'key$=Input$(1)
24380 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24390 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24400 nick_name_check:
24410 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24420 'グラフィック描画領域　ここから
24430 cls 3:init "kb:2"
24440 line (0,0)-(1080,60),rgb(0,0,250),bf
24450 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24460 line (0,60)-(1080,160),rgb(127,255,212),bf
24470 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24480 line (0,160)-(1080,270),rgb(0,255,0),bf
24490 pen 5:line(0,157)-(1077,267),rgb(0,0,255),b
24500 'グラフィック描画領域　ここまで
24510 buf=0:cls
24520 locate 0,0
24530 color rgb(255,255,255)
24540 Print"名前(ニックネーム)の総数で吉凶を判断します"
24550 locate 0,2
24560 color rgb(255,0,255)
24570 PRINT"名前(ニックネーム)を入れてください"
24580 locate 0,4
24590 color rgb(0,0,0)
24600 Input"名前:",name$
24610 if name$="" then goto nick_name_check:
24620 for n=0 to (len(name$)-1)
24630 buf_Input_data$(n)=mid$(name$,n+1,1)
24640 buf=buf+char_count(buf_Input_data$(n))
24650 next n
24660 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24670 '結果表示　グラフィック　ここから
24680 cls 3:init "kb:4":bg=0:key$=""
24690 line (0,0)-(1080,60),rgb(0,0,255),bf
24700 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24710 line (0,60)-(1080,160),rgb(127,255,212),bf
24720 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24730 line (0,160)-(1080,540),rgb(0,255,0),bf
24740 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
24750 '結果表示 グラフィック領域 ここまで
24760 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24770 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24780 'color rgb(0,0,0)
24790 'print "番号を選んでください"+chr$(13)
24800 'PRINT "エンターキー:もう一度やる"+chr$(13)
24810 'print "q:トップに戻る"+chr$(13)
24820 while (key$ <> chr$(13) and bg <> 2)
24830 key$=inkey$
24840 bg=strig(1)
24850 pause 2.50*100
24860 wend
24870 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24880 't "コマンド:"
24890 'ey$=Input$(1)
24900 'if key$="q" then goto Main_Screen1:
24910 'if key$=chr$(13) then goto nick_name_check:
24920 'if No > 2 then goto 24240
24930 '名前2文字
24940 'グラフィック描画領域　ここから
24950 Result_Anzai:
24960 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
24970 line (0,0)-(1400,60),rgb(0,0,255),bf
24980 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24990 line (0,60)-(1400,540-180),rgb(127,255,212),bf
25000 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
25010 line (0,540-180)-(1400,540),rgb(0,255,0),bf
25020 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25030 'グラフィック描画領域 ここまで
25040 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25050 color rgb(255,0,255)
25060 print"天運";buf_tenunn;chr$(13)
25070 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25080 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25090 print"外運";buf_gaiunn;chr$(13)
25100 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25110 COLOR rgb(0,0,0)
25120 PRINT"エンターキー:トップ画面"+chr$(13)
25130 while (key$<>chr$(13) and bg <> 2)
25140 key$=inkey$
25150 bg=strig(1)
25160 pause 2.50*100
25170 wend
25180 'print"エンターキー:もう一度、吉凶をみる"+chr$(13)
25190 'print "コマンド:"
25200 'key$=Input$(1)
25210 'if key$=chr$(13) then goto Anzai_Top_Screen:
25220 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25230 '参考文献 表示 ここから
25240 'グラフィック描画領域　 ここから
25250 Document_info:
25260 cls 3:init"kb:4":bg=0
25270 line (0,0)-(1080,60),rgb(0,0,255),bf
25280 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
25290 line (0,60)-(1080,650),rgb(127,255,212),bf
25300 pen 5:line(0,57)-(1077,647),rgb(0,0,255),b
25310 line (0,650)-(1080,730),rgb(0,255,0),bf
25320 pen 5:line(0,647)-(1077,727),rgb(0,0,255),b
25330 'グラフィック描画領域  ここまで
25340 '参考文献１
25350 cls
25360 color rgb(255,255,255)
25370 locate 0,0
25380 print"◎参考文献"
25390 color rgb(255,0,255)
25400 locate 0,2
25410 print "参考文献 １/4"
25420 locate 0,4
25430 print "Title:九星姓名判断"
25440 locate 0,6
25450 print "Author:高嶋　 美伶"
25460 locate 0,8
25470 print "出版社:日本文芸者"
25480 locate 0,10
25490 print "ISBN:4-537-20073-1"
25500 locate 0,12
25510 print "定価:1,200+税"
25520 color rgb(0,0,0)
25530 locate 0,14
25540 print "エンターキーを押してください"
25550 while (bg <> 2 and key$<>chr$(13))
25560 key$=inkey$
25570 bg=strig(1)
25580 pause 2.50*100
25590 wend
25600 if (key$=chr$(13) or bg=2) then
25610 goto Document_info2:
25620 endif
25630 'key$=Input$(1)
25640 'if key$=chr$(13)  then goto Document_info2:
25650 '参考文献２
25660 Document_info2:
25670 cls:bg=0:key$=""
25680 color rgb(255,255,255)
25690 locate 0,0
25700 print "◎参考文献"
25710 color rgb(255,0,255)
25720 locate 0,2
25730 print "参考文献 ２/4"
25740 locate 0,4
25750 print "Title:究極の姓名判断"
25760 locate 0,6
25770 print "Author:安斎　勝洋"
25780 locate 0,8
25790 print "出版社:説話社"
25800 locate 0,10
25810 print "ISBN:978-4-916217-61-5"
25820 locate 0,12
25830 print "定価:1,800円+税"
25840 color rgb(0,0,0)
25850 locate 0,14
25860 print"エンターキーを押してください"
25870 while (key$<>chr$(13) and bg <> 2)
25880 key$=inkey$
25890 bg=strig(1)
25900 pause 2.50*100
25910 wend
25920 if (key$=chr$(13) or bg=2) then goto Document_info3:
25930 'key$=Input$(1)
25940 'if key$=chr$(13) then goto Document_info3:
25950 '参考文献３
25960 Document_info3:
25970 cls:bg=0:key$=""
25980 color rgb(255,255,255)
25990 locate 0,0
26000 print"◎参考文献"
26010 color rgb(255,0,255)
26020 locate 0,2
26030 print "参考文献 3/4"
26040 locate 0,4
26050 print "Title:新明解現在漢和辞典"
26060 locate 0,6
26070 print "Author:影山輝國(編集主幹)他"
26080 locate 0,8
26090 print "出版社:三省堂"
26100 locate 0,10
26110 print "ISBN:978-4-385-13755-1"
26120 locate 0,12
26130 print "定価:2,800円 + 税"
26140 color rgb(0,0,0)
26150 locate 0,14
26160 print "エンターキーを押してください"
26170 while (key$<>chr$(13) and bg<>2)
26180 key$=inkey$
26190 bg=strig(1)
26200 pause 2.50*100
26210 wend
26220 if (key$=chr$(13) or bg=2) then goto Document_info4:
26230 'key$=Input$(1)
26240 'if key$=chr$(13) then goto Document_info4:
26250 '参考文献４　
26260 '描画領域　ここから
26270 Document_info4:
26280 cls 3:key$="":bg=0
26290 line (0,0)-(1080,60),rgb(0,0,255),bf
26300 line (0,0)-(1077,57),rgb(0,255,0),b
26310 line (0,60)-(1080,650),rgb(127,255,212),bf
26320 LINE (0,60)-(1077,647),rgb(0,0,255),b
26330 LINE (0,650)-(1080,830),rgb(0,255,0),bf
26340 line (0,650)-(1077,833),rgb(0,0,255),b
26350 '描画領域　ここまで
26360 'cls
26370 color rgb(255,255,255)
26380 locate 0,0
26390 print "◎参考文献"
26400 COLOR rgb(255,0,255)
26410 locate 0,2
26420 print "参考文献 4/4"
26430 locate 0,4
26440 print "Title:姓名の暗号"
26450 locate 0,6
26460 print "Author:樹門　幸宰(じゅもん こうざい)"
26470 locate 0,8
26480 print "出版社:幻冬舎"
26490 locate 0,10
26500 print "定価:1400円 + 税"
26510 locate 0,12
26520 print "ISBN:4-344-00777-8"
26530 color rgb(0,0,0)
26540 locate 0,14
26550 print "参考文献トップに行く:エンターキー"
26560 locate 0,16
26570 print "スペース：トップメニューに行く"
26580 while (key$<>chr$(13) and bg<>2)
26590 key$=inkey$
26600 bg=strig(1)
26610 pause 2.50*100
26620 wend
26630 if (key$=chr$(13) or bg=2) then goto help:
26640 'key$=Input$(1)
26650 'トップ画面に戻る
26660 'if key$ = " " then goto help:
26670 'if key$ = chr$(13) then goto Document_info:
26680 '安斎流姓名判断　メニュー
26690 'グラフィック領域　ここから
26700 Anzai_Top:
26710 cls 3:talk ""
26720 No=0:init"kb:4":y=0:bg=0:key$=""
26730 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26740 sp_on 0,1:sp_put 0,(10,100),0,0
26750 line (0,0)-(1080,60),rgb(0,0,255),bf
26760 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26770 line (0,60)-(1080,475),rgb(127,255,212),bf
26780 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26790 line (0,475)-(1080,650),rgb(0,255,0),bf
26800 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26810 'グラフィック描画領域　ここまで
26820 'talk
26830 talk "安斎流姓名判断トップ画面です、番号を選んでください。"
26840 color rgb(255,255,255)
26850 print "安斎流姓名判断　トップメニュー" + chr$(13)
26860 color rgb(255,0,255)
26870 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26880 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26890 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26900 print " :4.前の画面に戻る"+chr$(13)
26910 locate 0,10
26920 color rgb(0,0,0)
26930 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26940 Anzai_Top2:
26950 y=0:bg=0:key$=""
26960 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26970 key$=inkey$
26980 y=stick(1)
26990 bg=strig(1)
27000 pause 2.50*100
27010 wend
27020 '******************************************************
27030 '1.下のキー　ここから
27040 '******************************************************
27050 if (y=1 or key$=chr$(30)) then
27060 select case No
27070 case 0:
27080 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27090 case 1:
27100 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27110 case 2:
27120 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27130 case 3:
27140 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27150 end select
27160 endif
27170 '******************************************************
27180 '1.下のキー　ここまで
27190 '******************************************************
27200 '******************************************************
27210 '2.上のキー　ここから
27220 '******************************************************
27230 if (y=-1 or key$=chr$(31)) then
27240 select case No
27250 case 0:
27260 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27270 case 1:
27280 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27290 case 2:
27300 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27310 case 3:
27320 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27330 end select
27340 endif
27350 '******************************************************
27360 '2.上のキー　ここまで
27370 '******************************************************
27380 '******************************************************
27390 '3.決定ボタン　ここから
27400 '******************************************************
27410 if (key$=chr$(13) or bg=2) then
27420 select case No
27430 case 0:
27440 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27450 case 1:
27460 sp_on 1,0:goto Anzai_Top_Screen:
27470 case 2:
27480 sp_on 2,0:goto Anzai_Kaimei_Check:
27490 case 3:
27500 sp_on 3,0:goto seimeihandan_top:
27510 end select
27520 endif
27530 '******************************************************
27540 '3.決定ボタン　ここまで
27550 '******************************************************
27560 'if key=2 then goto Anzai_Top_Screen:
27570 'if key=3 then goto Anzai_Kaimei_Check:
27580 'if key=1 then goto Anzai_Aishou_Top1:
27590 'if key=4 then goto seimeihandan_top:
27600 'if key > 4 or key = 0 then goto Anzai_Top:
27610 '2.安斎流姓名判断　男女の相性占い　ここから
27620 'グラフィック描画領域 ここから
27630 'Anzai_Aishou_Top1:
27640 cls 3
27650 '1行目
27660 line (0,0)-(1080,60),rgb(0,0,255),bf
27670 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27680 '2行目
27690 line (0,60)-(1080,160),rgb(127,255,212),bf
27700 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27710 '3行目
27720 line (0,160)-(1080,300),rgb(0,255,0),bf
27730 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27740 'グラフィック描画領域　男女の相性占い ここまで
27750 'if s1=1 then goto 26610
27760 'if s1=2 then goto 27410
27770 '1.名前の姓を入力  男性
27780 Anzai_Aishou_Top1:
27790 cls 3
27800 '1行目
27810 line (0,0)-(1080,60),rgb(0,0,255),bf
27820 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
27830 '2行目
27840 line (0,60)-(1080,160),rgb(127,255,212),bf
27850 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
27860 '3行目
27870 line (0,160)-(1080,300),rgb(0,255,0),bf
27880 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
27890 color rgb(255,255,255)
27900 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27910 color rgb(255,0,255)
27920 print "男性の名前(姓)を入れてください"+chr$(13)
27930 color rgb(0,0,0)
27940 Input "男性の名前(姓):",name$
27950 '2.名前の名を入力  男性
27960 cls 3:talk ""
27970 '1行目
27980 line (0,0)-(1080,60),rgb(0,0,255),bf
27990 pen 5:line(0,0)-(1077,57),rgb(127,255,252),b
28000 '2行目
28010 line (0,60)-(1080,160),rgb(127,255,212),bf
28020 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
28030 '3行目
28040 line (0,160)-(1080,300),rgb(0,255,0),bf
28050 pen 5:line(0,157)-(1077,297),rgb(0,0,255),b
28060 color rgb(255,255,255)
28070 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28080 color rgb(255,0,255)
28090 print "男性の名前（名）をいれてください"+chr$(13)
28100 color rgb(0,0,0)
28110 Input "男性の名前(名):",name2$
28120 'if s2=2 then goto 27610
28130 '3.名前(姓)入力 女性
28140 Anzai_Aishou_Top2:
28150 cls:init "kb:2":talk ""
28160 color rgb(255,255,255)
28170 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28180 color rgb(255,0,255)
28190 print "女性の名前(姓)を入れてください"+chr$(13)
28200 color rgb(0,0,0)
28210 Input"女性の名前:",name3$
28220 '4.名前（名)入力 女性
28230 cls:init "kb:2":talk ""
28240 color rgb(255,255,255)
28250 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28260 color rgb(255,0,255)
28270 print "女性の名前（名）を入れてください"+chr$(13)
28280 color rgb(0,0,0)
28290 Input "女性の名前(名):",name4$
28300 '男性　の地運 を求める
28310 '姓名の合計数
28320 '1.男性 名前の文字数を求める
28330 '地運を求める
28340 buf_male_name1 = len(name$)
28350 buf_male_name2 = len(name2$)
28360 buf_male_count = buf_male_name1 + buf_male_name2
28370 '2.女性 名前の文字数を求める
28380 buf_female_name1 = len(name3$)
28390 buf_female_name2 = len(name4$)
28400 buf_female_count = buf_female_name1 + buf_female_name2
28410 'goto Anzai_Aishou_Check:
28420 '1.男性の地運を求める
28430 select case buf_male_count
28440 case 2:
28450 '男性の地運を求める
28460 buf_chiunn=char_count(name2$)
28470 case 3:
28480 '姓が一文字 名が2文字
28490 if buf_male_name1=1 and buf_male_name2=2 then
28500 buf_Input_name$(0)=mid$(name2$,1,1)
28510 buf_Input_name$(1)=mid$(name2$,2,1)
28520 '地運を計算
28530 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28540 endif
28550 if buf_male_name1=2 and buf_male_name2=1 then
28560 buf_Input_name$(0)=Mid$(name2$,1,1)
28570 buf_chiunn=char_count(buf_Input_name$(0))
28580 endif
28590 case 4:
28600 '1.姓１，名３
28610 if bufmale_name1=1 and buf_male_name2=3 then
28620 buf_Input_name$(0)=Mid$(name2$,1,1)
28630 buf_Input_name$(1)=Mid$(name2$,2,1)
28640 buf_Input_name$(2)=Mid$(name2$,3,1)
28650 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28660 endif
28670 '2.姓２,名２
28680 if buf_male_name1=2 and buf_male_name2=2 then
28690 buf_Input_name$(0)=Mid$(name2$,1,1)
28700 buf_Input_name$(1)=Mid$(name2$,2,1)
28710 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28720 endif
28730 '3.姓３、名１
28740 if buf_male_name1=3 and buf_male_name2=1 then
28750 buf_Input_name$(0)=Mid$(name2$,1,1)
28760 '地運を求める
28770 buf_chiunn=char_count(buf_Input_name$(0))
28780 endif
28790 case 5:
28800 '1.姓２，名３
28810 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28820 buf_Input_name$(0)=Mid$(name2$,1,1)
28830 buf_Input_name$(1)=Mid$(name2$,2,1)
28840 buf_Input_name$(2)=Mid$(name2$,3,1)
28850 '地運を求める
28860 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28870 endif
28880 '2.姓３，名２
28890 if buf_male_name1=3 and buf_male_name2=2 then
28900 buf_Input_name$(0)=Mid$(name2$,1,1)
28910 buf_Input_name$(1)=Mid$(name2$,2,1)
28920 '地運を求める
28930 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28940 endif
28950 '3.姓４、名１
28960 buf_Input_name$(0)=Mid$(name2$,1,1)
28970 '地運を求める
28980 buf_chiunn = char_count(buf_Input_name$(0))
28990 case 6:
29000 '1.姓３，名３
29010 if buf_male_name1=3 and buf_male_name2=3 then
29020 buf_Input_name$(0)=Mid$(name2$,1,1)
29030 buf_Input_name$(1)=Mid$(name2$,2,1)
29040 buf_Input_name$(2)=Mid$(name2$,3,1)
29050 '地運を求める
29060 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
29070 endif
29080 '２.姓４，名２
29090 if buf_male_name1=4 and buf_male_name2=2 then
29100 buf_Input_name$(0)=Mid$(name2$,1,1)
29110 buf_Input_name$(1)=Mid$(name2$,2,1)
29120 '地運を求める
29130 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29140 endif
29150 case else:
29160 end select
29170 'if s1=1 then goto 33300
29180 'if s2=2 then goto 30920
29190 '2.女性　外運を求める
29200 select case buf_female_count
29210 '姓と名の合計数
29220 case 2:
29230 buf_Input_name2$(0)=Mid$(name3$,1,1)
29240 buf_Input_name2$(1)=Mid$(name4$,1,1)
29250 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29260 case 3:
29270 if buf_female_name1=2 and buf_female_name2=1 then
29280 buf_Input_name2$(0)=Mid$(name3$,1,1)
29290 buf_Input_name2$(1)=Mid$(name3$,2,1)
29300 buf_Input_name2$(2)=Mid$(name4$,1,1)
29310 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29320 endif
29330 if buf_female_name1=1 and buf_female_name2=2 then
29340 buf_Input_name2$(0)=Mid$(name3$,1,1)
29350 buf_Input_name2$(1)=Mid$(name4$,1,1)
29360 buf_Input_name2$(2)=Mid$(name4$,2,1)
29370 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29380 endif
29390 case 4:
29400 '姓１、名３
29410 if buf_female_name1=1 and buf_female_name2=3 then
29420 buf_Input_name2$(0)=Mid$(name3$,1,1)
29430 buf_Input_name2$(1)=Mid$(name4$,1,1)
29440 buf_Input_name2$(2)=Mid$(name4$,2,1)
29450 buf_Input_name2$(3)=Mid$(name4$,3,1)
29460 '外運を求める
29470 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29480 endif
29490 '姓２,名２
29500 if buf_female_name1=2 and buf_female_name2=2 then
29510 buf_Input_name2$(0)=Mid$(name3$,1,1)
29520 buf_Input_name2$(1)=Mid$(name3$,2,1)
29530 buf_Input_name2$(2)=Mid$(name4$,1,1)
29540 buf_Input_name2$(3)=Mid$(name4$,2,1)
29550 '外運を求める
29560 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29570 endif
29580 '姓３，名１
29590 if buf_female_name1=3 and buf_female_name2=1 then
29600 buf_Input_name2$(0)=Mid$(name3$,1,1)
29610 buf_Input_name2$(1)=Mid$(name3$,2,1)
29620 buf_Input_name2$(2)=Mid$(name3$,3,1)
29630 buf_Input_name2$(3)=Mid$(name4$,1,1)
29640 '外運を求める
29650 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29660 endif
29670 case 5:
29680 '姓 3,名2
29690 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29700 buf_Input_name2$(0)=Mid$(name3$,1,1)
29710 buf_Input_name2$(1)=Mid$(name3$,2,1)
29720 buf_Input_name2$(2)=Mid$(name3$,3,1)
29730 buf_Input_name2$(3)=Mid$(name4$,1,1)
29740 buf_Input_name2$(4)=Mid$(name4$,2,1)
29750 '外運を求める
29760 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29770 endif
29780 '姓４、名１
29790 if buf_female_name1=4 and buf_female_name2=1 then
29800 buf_Input_name2$(0)=Mid$(name3$,1,1)
29810 buf_Input_name2$(1)=Mid$(name3$,2,1)
29820 buf_Input_name2$(2)=Mid$(name3$,3,1)
29830 buf_Input_name2$(3)=Mid$(name3$,4,1)
29840 buf_Input_name2$(4)=Mid$(name4$,1,1)
29850 '外運を求める
29860 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29870 endif
29880 '姓２、名３
29890 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29900 buf_Input_name2$(0)=Mid$(name3$,1,1)
29910 buf_Input_name2$(1)=Mid$(name3$,2,1)
29920 buf_Input_name2$(2)=Mid$(name4$,1,1)
29930 buf_Input_name2$(3)=Mid$(name4$,2,1)
29940 buf_Input_name2$(4)=Mid$(name4$,3,1)
29950 '外運を求める
29960 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29970 endif
29980 case 6:
29990 '1.姓３，名３
30000 if buf_female_name1=3 and buf_female_name2=3 then
30010 buf_Input_name2$(0)=Mid$(name3$,1,1)
30020 buf_Input_name2$(1)=Mid$(name3$,2,1)
30030 buf_Input_name2$(2)=Mid$(name3$,3,1)
30040 buf_Input_name2$(3)=Mid$(name4$,1,1)
30050 buf_Input_name2$(4)=Mid$(name4$,2,1)
30060 buf_Input_name2$(5)=Mid$(name4$,3,1)
30070 '外運を求める
30080 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
30090 endif
30100 '2.姓４，名２
30110 if buf_female_name1=4 and buf_female_name2=2 then
30120 buf_Input_name2$(0)=Mid$(name3$,1,1)
30130 buf_Input_name2$(1)=Mid$(name3$,2,1)
30140 buf_Input_name2$(2)=Mid$(name3$,3,1)
30150 buf_Input_name2$(3)=Mid$(name3$,4,1)
30160 buf_Input_name2$(4)=Mid$(name4$,1,1)
30170 buf_Input_name2$(5)=Mid$(name4$,2,1)
30180 '外運を求める
30190 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
30200 endif
30210 case 7:
30220 '1姓４，名３
30230 '外運を求める
30240 end select
30250 'if s=1 then goto Anzai_Aishou_Check:
30260 'if s2=2 then goto Anzai_Aishou_Check:
30270 'goto 33540
30280 func buf_number(a)
30290 if a < 10 then
30300 buf_tansu = a
30310 endif
30320 if a > 9 and a < 20 then
30330 buf_tansu = a - 10
30340 endif
30350 if a > 19 and a < 30 then
30360 buf_tansu = a - 20
30370 endif
30380 buffer = buf_tansu
30390 endfunc buffer
30400 check$="No Data"
30410 func Aisyou_type$(man,woman)
30420 Result$="No data"
30430 'check$="No data"
30440 '1.理解し合える最良のカップル
30450 '1のFor文
30460 for i=0 to 19
30470 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30480 Result$ = "1.理解し合える最良のカップル"
30490 check$="○"
30500 ResultNo = 0
30510 endif
30520 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30530 Result$="2.互いに自然体でつきあえるカップル"
30540 ResultNo=1
30550 check$="○"
30560 endif
30570 '3.男性にとって居心地の良いカップル
30580 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30590 Result$="3.男性にとって居心地の良いカップル"
30600 ResultNo=2
30610 check$="△"
30620 endif
30630 '4.女性にとって居心地の良いカップル
30640 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30650 Result$ = "4.女性にとって居心地の良いカップル"
30660 ResultNo=3
30670 check$="△"
30680 endif
30690 '5.恋愛経験を重ねた後なら愛を育める
30700 'for i=0 to 9
30710 'for j=0 to 9
30720 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
30730 Result$="5.恋愛経験を重ねた後なら愛を育める"
30740 ResultNo=4
30750 check$="×"
30760 endif
30770 'next j
30780 'next i
30790 '6
30800 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30810 Result$="6.結婚への発展が困難なカップル"
30820 check$="×"
30830 endif
30840 '7
30850 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30860 Result$="7.愛し方にずれが出てくる二人"
30870 check$="×"
30880 endif
30890 '8
30900 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30910 Result$="8.互いに価値観が噛み合わない相性"
30920 check$="×"
30930 endif
30940 next i
30950 'bufAisyou$ = Result$
30960 endfunc  Result$
30970 Anzai_Aishou_Check:
30980 cls 3:init"kb:2":bg=0
30990 buf_t_chiunn = buf_number(buf_chiunn)
31000 buf_t_gaiunn=buf_number(buf_gaiunn)
31010 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
31020 'グラフィック描画領域　ここから
31030 'Title欄
31040 line(0,0)-(1080,60),rgb(0,0,255),bf
31050 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31060 '結果表示欄
31070 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
31080 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
31090 'ボタン選択欄
31100 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
31110 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
31120 'グラフィック描画領域　ここまで
31130 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
31140 color rgb(255,255,255):font 40:init"kb:4"
31150 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31160 color rgb(255,0,255)
31170 print "男性の名前:";name$+name2$;chr$(13)
31180 print "地運の単数";buf_t_chiunn;chr$(13)
31190 print "女性の名前:";name3$+name4$;chr$(13)
31200 print "外運の単数";buf_t_gaiunn;chr$(13)
31210 print"二人の相性:";bufferAisyou$;chr$(13)
31220 print"相性判定:";check$;chr$(13)
31230 color rgb(0,0,0)
31240 print "エンターキー:トップ" + chr$(13)
31250 while (bg <> 2)
31260 bg=strig(1)
31270 pause 2.50*100
31280 wend
31290 if (bg=2) then goto Main_Screen1:
31300 'print "S or sキー:保存" + chr$(13)
31310 'key$=Input$(1)
31320 'if key$=chr$(13) then
31330 'goto Main_Screen1:
31340 'else
31350 'Data保存追加 2021.10.01
31360 'goto Save_Aisyou:
31370 'endif
31380 '改名チェック
31390 'グラフィック描画領域 ここから
31400 Anzai_Kaimei_Check:
31410 cls 3:init "kb:2":talk ""
31420 line (0,0)-(1080,60),rgb(0,0,255),bf
31430 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
31440 line (0,60)-(1080,370+50),rgb(127,255,212),bf
31450 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
31460 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
31470 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
31480 'グラフィック描画領域 ここまで
31490 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31500 color rgb(255,255,255)
31510 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31520 color rgb(255,0,255)
31530 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31540 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31550 print "10文字までで入れてください"
31560 locate 0,9
31570 color rgb(0,0,0)
31580 Input "名前:",name$
31590 '計算領域　ここから
31600 '名前から総運を計算
31610 '1.名前の文字数を出す
31620 n=len(name$)
31630 if n > 10 or n=0 then
31640 '文字数が10個までという表示
31650 'トーストで表示
31660 if n > 10 then
31670 ui_msg "文字は10個までです"
31680 else
31690 ui_msg "文字が空っぽです"
31700 endif
31710 goto Anzai_Aishou_Check:
31720 endif
31730 'それ以外
31740 '総数を出す処理を出す
31750 '画面消去　データー初期化
31760 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31770 'グラフィック描画領域 ここから
31780 line(0,0)-(1080,60),rgb(0,0,255),bf
31790 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31800 line(0,60)-(1080,300),rgb(127,255,212),bf
31810 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
31820 line(0,300)-(1080,440),rgb(0,255,0),bf
31830 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
31840 'グラフィック描画領域 ここまで
31850 'cls 3
31860 color rgb(255,255,255)
31870 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31880 for i=0 to len(name$)-1
31890 buf_Input_name$(i)=Mid$(name$,i+1,1)
31900 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31910 next i
31920 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31930 color rgb(255,0,255)
31940 print "名前:";name$
31950 print "この名前の総数:";bufer_total
31960 print "この名前の吉凶:";buf_Kikkyo$;"です"
31970 color rgb(255,0,255)
31980 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31990 print bufer_total$+chr$(13)
32000 'if buffer_K=0 or buffer_K=1  then
32010 'dim select$(2)
32020 'select$(0)="改名をする"
32030 'select$(1)="改名しない"
32040 'talk"改名しますか？"
32050 'color rgb(0,0,0)
32060 'Input"改名しますか？",key$
32070 'num=ui_select("select$","改名リストに追加しますか?")
32080 'num=0:改名リストに追加する
32090 'if num=0  then goto 35690
32100 'else
32110 'num=1:改名リストに追加しない
32120 'if num=1 then goto 31450
32130 'num=2:トップ画面に行く
32140 'if num=2 then goto 7610
32150 'endif
32160 'if buffer_K=0 then
32170 'print num,select$(num)
32180 color rgb(0,0,0)
32190 locate 0,7
32200 print"エンターキーを押してください"
32210 while (key$ <> chr$(13) and bg <> 2)
32220 key$=inkey$
32230 bg=strig(1)
32240 pause 2.50*100
32250 wend
32260 'key$=Input$(1)
32270 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
32280 'endif
32290 '改名チェック関数
32300 func Kaimei_check$(r$)
32310 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
32320 '改名の必要なし
32330 talk"この名前は改名の必要がございません。"
32340 print"この名前は、改名の必要はありません"+chr$(13)
32350 '改名の必要ナシの場合
32360 K=0
32370 buffer_K=K
32380 else
32390 '改名の必要あり
32400 Kaimei_check:
32410 talk"この名前は、改名の必要があります"
32420 print"この名前は、改名の必要があります"+chr$(13)
32430 color rgb(0,0,0)
32440 print"改名しますか？"
32450 K=1
32460 buffer_K=K
32470 '◎表示パターン
32480 'パターン１
32490 'color rgb(0,0,0)
32500 'Input"エンターキーを押してください",key$
32510 endif
32520 endfunc result$
32530 'ui_msg="1件追加しました,残り9件追加できます"
32540 'ファイルの存在確認 設定ファイル:mydata.dat
32550 cls
32560 '設定ファイルの確認
32570 if dir$("config/Parsonal_data/mydata.dat")="" then
32580 'print "File not found"+chr$(13)
32590 '1.ファイルがない時
32600 goto Kaimei_check:
32610 else
32620 'ファイルがある時
32630 goto sex_type_female:
32640 'goto 26300
32650 endif
32660 '1-1.ファイルがない時の処理
32670 '1-1.自分の姓名判断を入力
32680 'グラフィック描画領域 ここから
32690 cls 3
32700 '1行目
32710 line(0,0)-(1080,60),rgb(0,0,250),bf
32720 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
32730 '2行目
32740 line(0,60)-(1080,80),rgb(127,255,212),bf
32750 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
32760 '3行目
32770 line(0,80)-(1080,120),rgb(0,255,0),bf
32780 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
32790 'グラフィック描画領域 ここまで
32800 '1.名前の姓の入力
32810 '1行目 Title
32820 color rgb(255,255,255)
32830 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32840 '2行目 名前の姓を入力
32850 color rgb(255,0,255)
32860 print "自分の名前の姓を入れてください"+chr$(13)
32870 color rgb(0,0,0)
32880 'buf_name1$:自分の名前の姓
32890 Input"名前の姓:",buf_name1$
32900 '2.名前の名の入力
32910 '画面消去
32920 Anzai_myProfile2:
32930 cls
32940 '1行目 Title
32950 color rgb(255,255,255)
32960 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32970 '2行目 名前の名の入力
32980 color rgb(255,0,255)
32990 print "自分の名前の名を入れてください"+chr$(13)
33000 color rgb(0,0,0)
33010 'buf_name2$:自分の名前の名
33020 input "名前の名:",buf_name2$
33030 '3.性別入力
33040 cls
33050 '1行目 Title
33060 color rgb(255,255,255)
33070 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
33080 '2行目 性別入力
33090 color rgb(255,0,255)
33100 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
33110 sex_type$(0)="女性"
33120 sex_type$(1)="男性"
33130 type=ui_select("sex_type$","性別を選んでください")
33140 '3行目
33150 '性別変数 sex_type$
33160 if type = 1 then
33170 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 32400
33180 else
33190 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
33200 endif
33210 if sex_type$="男性" then
33220 name$=buf_name1$
33230 name2$=buf_name2$
33240 s=1
33250 goto Anzai_Aishou_Top1:
33260 endif
33270 sex_type_female:
33280 If sex_type$="女性" then
33290 name3$=buf_name1$
33300 name4$=buf_name2$
33310 s=2
33320 goto Anzai_Aishou_Top2:
33330 endif
33340 '登録プロフィール確認画面
33350 Entry_Profile:
33360 cls 3:talk ""
33370 'グラフィック描画領域　ここから
33380 '1行目
33390 line(0,0)-(1200,60),rgb(0,0,255),bf
33400 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33410 '2行目
33420 line(0,60)-(1200,360),rgb(127,255,212),bf
33430 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
33440 '3行目
33450 line(0,100)-(1200,420),rgb(0,255,0),bf
33460 pen 5:line(0,97)-(1197,417)
33470 if s2=2 then goto Entry_Profile:
33480 'グラフィック描画領域　ここまで
33490 '1行目 Title
33500 color rgb(255,255,255)
33510 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33520 color rgb(255,0,255)
33530 print"名前:";buf_name1$+buf_name2$;chr$(13)
33540 PRINT"性別:";sex_type$;chr$(13)
33550 if sex_type$="女性" then
33560 print"外運:";buf_gaiunn;chr$(13)
33570 buffer$="外運:"+str$(buf_gaiunn)
33580 endif
33590 if sex_type$="男性" then
33600 print"地運:";buf_chiunn;chr$(13)
33610 buffer$="地運:"+str$(buf_chiunn)
33620 endif
33630 color rgb(0,0,0)
33640 input"(登録する:Yes/登録しない:No):",key$
33650 if key$="Yes" or key$="yes" then
33660 open "config/Parsonal_data/mydata.dat" for output as #1
33670 print #1,"名前:";buf_name1$+buf_name2$
33680 print #1,"性別:";sex_type$
33690 print #1,buffer$
33700 close #1
33710 ui_msg"データーを保存しました"
33720 goto Main_Screen1:
33730 endif
33740 '２．設定ファイルが存在する場合
33750 'ファイル読み込み 自分のデーターを表示
33760 cls
33770 open "Config/Parsonal_data/mydata.dat" for input as #2
33780 line input #2,a$
33790 line input #2,b$
33800 line input #2,c$
33810 close #2
33820 buffername$=a$
33830 buffername2$=b$
33840 buffername3$=c$
33850 bufff$=Mid$(buffername$,1,3)
33860 buff2$=Mid$(buffername2$,1,3)
33870 buff3$=Mid$(buffername3$,1,3)
33880 n=len(a$)
33890 sextype$=Mid$(buffername2$,4,2)
33900 if sextype$="男性" then
33910 '男性:s2
33920 s2=1
33930 '女性のデーター入力
33940 goto Anzai_Top:
33950 endif
33960 if sextype$="女性" then
33970 s2=2
33980 '男性のデーター入力
33990 goto Anzai_Top:
34000 endif
34010 '女性のデーター結果表示
34020 '1.プロフィール性別男性の場合 ここから
34030 Result_Anzai_Aisyou:
34040 cls:talk ""
34050 color rgb(255,255,255)
34060 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
34070 name_length = len(bufername$)
34080 myname$ = Mid$(buffername$,4,4)
34090 chiunn = val(Mid$(buffername3$,4,2))
34100 tansuu1 = buf_number(chiunn)
34110 bufname$ = name3$ + name4$
34120 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
34130 color rgb(255,0,255)
34140 print "自分の名前(男性):";myname$;chr$(13)
34150 print "地運の端数:";tansuu1;chr$(13)
34160 print "相手の名前(女性):";bufname$;chr$(13)
34170 print "外運の端数:";buf_t_gaiunn;chr$(13)
34180 print "二人の相性:";bufferAisyou$;chr$(13)
34190 talk "二人の相性は" + bufferAisyou$
34200 color rgb(0,0,0)
34210 print"エンターキーを押してください"
34220 key$=Input$(1)
34230 'トップ画面に行く
34240 if key$ = chr$(13) then goto Main_Screen1:
34250 '1.プロフィール性別男性の場合　ここまで
34260 '2.プロフィール性別女性の場合　ここから
34270 cls 3
34280 '描画領域　ここから
34290 line (0,0)-(1080,60),rgb(0,0,255),bf
34300 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34310 line (0,60)-(1080,460),rgb(127,255,212),bf
34320 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
34330 LINE (0,460)-(1080,520),rgb(0,255,0),bf
34340 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
34350 '描画領域 ここまで
34360 color rgb(255,255,255)
34370 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
34380 '計算領域　ここから
34390 myname$ = Mid$(buffername$,4,4)
34400 gaiunn = val(Mid$(buffername3$,4,2))
34410 buf_t_gaiunn = buf_number(buf_gaiunn)
34420 buf_t_chiunn = buf_number(buf_chiunn)
34430 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
34440 bufname$ = name$ + name2$
34450 '計算領域 ここまで
34460 color rgb(255,0,255)
34470 print "自分の名前(女性):";myname$;chr$(13)
34480 print "外運の端数";buf_t_gaiunn;chr$(13)
34490 print "相手の名前(男性):";bufname$;chr$(13)
34500 print "地運の端数:";buf_t_chiunn;chr$(13)
34510 print "二人の相性:";bufferAisyou$;chr$(13)
34520 color rgb(0,0,0)
34530 print "エンターキーを押してください"
34540 key$ = Input$(1)
34550 if key$=chr$(13) then goto Main_Screen1:
34560 '2.プロフィール性別女性の場合　ここまで
34570 'endfunc result$
34580 '取扱説明書
34590 '相性占い　トップメニュー ここから
34600 'グラフィック ここから
34610 Anzai_Aishou_Top_Menu:
34620 cls 3:talk ""
34630 '1行目
34640 line(0,0)-(1080,60),rgb(0,0,255),bf
34650 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34660 '2行目
34670 line(0,60)-(1080,380),rgb(127,255,212),bf
34680 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34690 '3行目
34700 line(0,360)-(1080,540),rgb(0,255,0),bf
34710 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34720 'グラフィック　ここまで
34730 color rgb(255,255,255)
34740 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34750 color rgb(255,0,255)
34760 print"1.男女の相性"+chr$(13)
34770 print"2.前の画面に戻る"+chr$(13)
34780 print"3.トップ画面に戻る"+chr$(13)
34790 color rgb(0,0,0)
34800 print"番号を選んでください:"+chr$(13)
34810 Input"番号:",key
34820 if key = 1 then goto Anzai_Aishou_Top1:
34830 if key = 2 then goto Anzai_Top:
34840 if key = 3 then goto Main_Screen1:
34850 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34860 'グラフィック領域　ここから
34870 Life_Tenki:
34880 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34890 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34900 line(0,60)-(1150,180),rgb(127,255,212),bf
34910 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34920 line(0,120)-(1150,200),rgb(0,255,0),bf
34930 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34940 'グラフィック領域　ここまで
34950 '誕生日入力　生まれた年
34960 color rgb(255,255,255)
34970 print"誕生日入力　生まれた年" + chr$(13)
34980 COLOR rgb(255,0,255)
34990 print"生まれた年を入れてください" + chr$(13)
35000 color rgb(0,0,0)
35010 Input"生まれた年:",year
35020 '誕生日入力 生まれた月
35030 cls
35040 color rgb(255,255,255)
35050 print"誕生日入力 生まれた月" + chr$(13)
35060 color rgb(255,0,255)
35070 print"生まれた月を入力してください" + chr$(13)
35080 color rgb(0,0,0)
35090 Input"生まれた月:",month
35100 '誕生日入力 生まれた日を入力
35110 cls
35120 color rgb(255,255,255)
35130 print"誕生日入力 生まれた日入力" + chr$(13)
35140 color rgb(255,0,255)
35150 print"生まれた日を入力してください" + chr$(13)
35160 color rgb(0,0,0)
35170 Input"生まれた日:",day
35180 '人生の転機を見る
35190 'グラフィック領域　ここから
35200 cls 3:talk ""
35210 line(0,0)-(1150,60),rgb(0,0,255),bf
35220 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35230 line(0,60)-(1150,470),rgb(127,255,212),bf
35240 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35250 line(0,470)-(1150,520),rgb(0,255,0),bf
35260 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
35270 'グラフィック描画領域  ここまで
35280 cls
35290 buffername$=bufname$ + bufname2$
35300 color rgb(255,255,255)
35310 print buffername$;"さんの人生の転機を見る1"+chr$(13)
35320 color rgb(255,0,255)
35330 buf_total2=buf_total-(fix(buf_total/10)*10)
35340 tenki1_year=year+buf_total2
35350 tenki2_year=year+buf_total2+5
35360 tenki3_year=year+buf_total2+5+5
35370 tenki4_year=year+buf_total2+5+5+5
35380 tenki1=buf_total2
35390 tenki2=buf_total2+5
35400 tenki3=buf_total2+5+5
35410 tenki4=buf_total2+5+5+5
35420 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35430 print tenki1_year;"年";tenki1;"歳"+chr$(13)
35440 print tenki2_year;"年";tenki2;"歳"+chr$(13)
35450 print tenki3_year;"年";tenki3;"歳"+chr$(13)
35460 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35470 color rgb(0,0,0)
35480 print"エンターキーを押してください"
35490 key$=Input$(1)
35500 if key$=chr$(13) then goto Life_Tenki:
35510 '2ページ目
35520 cls
35530 color rgb(255,255,255)
35540 print buffername$;"さんの人生の転機2"+chr$(13)
35550 color rgb(255,0,255)
35560 tenki5_year = tenki4_year + 5
35570 tenki6_year = tenki4_year + 5 + 5
35580 tenki7_year = tenki4_year + 5 + 5 + 5
35590 tenki8_year = tenki4_year + 5 + 5 + 5+5
35600 tenki5 = tenki4 + 5
35610 tenki6 = tenki4 + 5 + 5
35620 tenki7 = tenki4 + 5 + 5 + 5
35630 tenki8 = tenki4 + 5 + 5 + 5 + 5
35640 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35650 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35660 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35670 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35680 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35690 color rgb(0,0,0)
35700 print"エンターキーを押してください",key$
35710 key$=Input$(1)
35720 if key$ = chr$(13) then goto 34810
35730 '3ページ目
35740 cls
35750 color rgb(255,255,255)
35760 print buffername$;"さんの人生の転機3"+chr$(13)
35770 '計算部分
35780 tenki_year9=tenki8_year + 5
35790 tenki_year10=tenki8_year + 5 + 5
35800 tenki_year11=tenki8_year+5+5+5
35810 tenki_year12=tenki8_year+5+5+5+5
35820 tenki9=tenki8+5
35830 tenki10=tenki8+5+5
35840 tenki11=tenki8+5+5+5
35850 tenki12=tenki8+5+5+5+5
35860 color rgb(255,0,255)
35870 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35880 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35890 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35900 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35910 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35920 color rgb(0,0,0)
35930 print"エンターキーを押してください"
35940 key$=Input$(1)
35950 if key$=chr$(13) then goto 35040
35960 'グラフィック描画領域 ここから
35970 cls 3
35980 line(0,0)-(1150,60),rgb(0,0,255),bf
35990 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
36000 line(0,60)-(1150,470),rgb(127,255,212),bf
36010 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
36020 line(0,470)-(1150,850),rgb(0,255,0),bf
36030 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
36040 'グラフィック描画領域 ここまで
36050 '4回目
36060 cls
36070 color rgb(255,255,255)
36080 print buffername$;"さんの人生の転機４"+chr$(13)
36090 color rgb(255,0,255)
36100 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
36110 '計算部分
36120 tenki_year13 = tenki_year12 + 5
36130 tenki_year14 = tenki_year12 + 5 + 5
36140 tenki_year15 = tenki_year12 + 5 + 5 + 5
36150 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
36160 tenki13 = tenki12 + 5
36170 tenki14 = tenki12 + 5 + 5
36180 tenki15 = tenki12 + 5 + 5 + 5
36190 tenki16 = tenki12 + 5 + 5 + 5 + 5
36200 color rgb(255,0,255)
36210 print tenki_year13;"年";tenki13;"歳"+chr$(13)
36220 print tenki_year14;"年";tenki14;"歳"+chr$(13)
36230 print tenki_year15;"年";tenki15;"歳"+chr$(13)
36240 print tenki_year16;"年";tenki16;"歳"+chr$(13)
36250 color rgb(0,0,0)
36260 print"コマンドを入れてください"+chr$(13)
36270 print"q+エンターキー:トップ画面"+chr$(13)
36280 Print"エンターキー:次へ行く"+chr$(13)
36290 print"コマンド:"
36300 key$=Input$(1)
36310 if key$=chr$(13) then goto 35410
36320 IF key$="q" then goto 7610
36330 '
36340 cls
36350 color rgb(255,255,255)
36360 print buffername$;"さんの人生の転機5"+chr$(13)
36370 color rgb(255,0,255)
36380 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
36390 tenki_year17=tenki_year16+5
36400 tenki_year18=tenki_year16+5+5
36410 tenki_year19=tenki_year16+5+5+5
36420 tenki_year20=tenki_year16+5+5+5+5
36430 tenki17=tenki16+5
36440 tenki18=tenki16+5+5
36450 tenki19=tenki16+5+5+5
36460 tenki20=tenki16+5+5+5+5
36470 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36480 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36490 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36500 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36510 color rgb(0,0,0)
36520 print"コマンドを入れてください"+chr$(13)
36530 print"トップに戻る:q+エンターキー"+chr$(13)
36540 print"最初から:エンターキー"+chr$(13)
36550 print"コマンド:"
36560 key$=Input$(1)
36570 if key$=chr$(13) then goto 34270
36580 if key$="q" then goto Main_Screen1:
36590 '改名チェック 改名候補を入力
36600 'グラフィック　領域　ここから
36610 '左側 部分
36620 cls 3:talk ""
36630 line(0,0)-(1100,60),rgb(0,0,255),bf
36640 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36650 line(0,60)-(1100,380),rgb(127,255,212),bf
36660 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36670 line(0,380)-(790,470),rgb(0,255,0),bf
36680 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36690 '中央の縦の線 ここから
36700 'line(1100,0)-(1112,370),rgb(0,0,0),b
36710 '中央の縦の線 ここまで
36720 '右側 部分
36730 line(1103,0)-(1700,60),rgb(0,0,255),bf
36740 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36750 'グラフィック 領域　ここまで
36760 '吉凶判定
36770 if buffer_K=0 then
36780 buffer_check$="○"
36790 else
36800 buffer_check$="☓"
36810 endif
36820 'Title 左側の文字
36830 'rgb(255,255,255):白
36840 color rgb(255,255,255)
36850 locate 1,0
36860 print"安斎流姓名判断 改名チェッカー"
36870 'Title 右側の文字
36880 locate size(2)-16,0
36890 print"改名候補リスト(3件まで)"
36900 '候補リストの名前部分 (右側)
36910 '1行目
36920 'locate 22,2
36930 locate size(2)-18,2
36940 color rgb(0,0,0)
36950 print "番号"
36960 'locate 26,2
36970 locate size(2)-14,2
36980 print"名前"
36990 'locate 32,2
37000 locate size(2)-8,2
37010 print"吉凶"
37020 'locate 36,2
37030 locate size(2)-4,2
37040 print"判定"
37050 '2行目
37060 select case kaimei_count
37070 case 0:
37080 'データー1件 の時
37090 kaimei_count = kaimei_count + 1
37100 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
37110 buffer_Kaimei$(0,1,0,0)=name$
37120 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
37130 buffer_Kaimei$(0,0,0,1)=buffer_check$
37140 'cls
37150 color rgb(255,0,255)
37160 'locate 23,3
37170 locate size(2)-17,3
37180 print buffer_Kaimei$(1,0,0,0)
37190 'locate 25,3
37200 locate size(2)-15,3
37210 print buffer_Kaimei$(0,1,0,0)
37220 'locate 32,3
37230 locate size(2)-8,3
37240 print buffer_Kaimei$(0,0,1,0)
37250 locate size(2)-3,3
37260 print buffer_Kaimei$(0,0,0,1)
37270 case 1:
37280 'データー2件の時
37290 color rgb(255,0,255)
37300 kaimei_count = kaimei_count + 1
37310 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
37320 buffer_Kaimei$(0,2,0,0)=name$
37330 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
37340 buffer_Kaimei$(0,0,0,2)=buffer_check$
37350 'cls
37360 '1行目
37370 'locate 23,3
37380 locate size(2)-17,3
37390 print buffer_Kaimei$(1,0,0,0)
37400 'locate 25,3
37410 locate size(2)-15,3
37420 print buffer_Kaimei$(0,1,0,0)
37430 'locate 32,3
37440 locate size(2)-8,3
37450 print buffer_Kaimei$(0,0,1,0)
37460 'locate 37,3
37470 locate size(2)-3,3
37480 print buffer_Kaimei$(0,0,0,1)
37490 '2行目
37500 'locate 23,4
37510 locate size(2)-17,4
37520 print buffer_Kaimei$(2,0,0,0)
37530 'locate 25,4
37540 locate size(2)-15,4
37550 print buffer_Kaimei$(0,2,0,0)
37560 'locate 32,4
37570 locate size(2)-8,4
37580 print buffer_Kaimei$(0,0,2,0)
37590 'locate 37,4
37600 locate size(2)-3,4
37610 print buffer_Kaimei$(0,0,0,2)
37620 case 2:
37630 'データー3件の時
37640 '1
37650 color rgb(255,0,255)
37660 kaimei_count=kaimei_count+1
37670 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37680 buffer_Kaimei$(0,3,0,0)=name$
37690 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37700 buffer_Kaimei$(0,0,0,3)=buffer_check$
37710 '2  1行目
37720 'locate 23,3
37730 locate size(2)-17,3
37740 print buffer_Kaimei$(1,0,0,0)
37750 'locate 25,3
37760 locate size(2)-15,3
37770 print buffer_Kaimei$(0,1,0,0)
37780 'locate 32,3
37790 locate size(2)-8,3
37800 print buffer_Kaimei$(0,0,1,0)
37810 'locate 37,3
37820 locate size(2)-3,3
37830 print buffer_Kaimei$(0,0,0,1)
37840 '3  2行目
37850 'locate 23,4
37860 locate size(2)-17,4
37870 print buffer_Kaimei$(2,0,0,0)
37880 'locate 25,4
37890 locate size(2)-15,4
37900 print buffer_Kaimei$(0,2,0,0)
37910 'locate 32,4
37920 locate size(2)-8,4
37930 print buffer_Kaimei$(0,0,2,0)
37940 'locate 37,4
37950 locate size(2)-3,4
37960 print buffer_Kaimei$(0,0,0,2)
37970 '4  3行目
37980 'locate 23,5
37990 locate size(2)-17,5
38000 print buffer_Kaimei$(3,0,0,0)
38010 'locate 25,5
38020 locate size(2)-15,5
38030 print  buffer_Kaimei$(0,3,0,0)
38040 'locate 32,5
38050 locate size(2)-8,5
38060 print buffer_Kaimei$(0,0,3,0)
38070 'locate 37,5
38080 locate size(2)-3,5
38090 print buffer_Kaimei$(0,0,0,3)
38100 case 3:
38110 'データー4件の時
38120 '1
38130 '2
38140 '3
38150 '4
38160 '5
38170 end select
38180 '説明部分　左側
38190 locate 0,2
38200 color rgb(255,0,255)
38210 print"思いついた候補の名前"
38220 locate 0,4
38230 print"(ニックネーム　or 会社名)を"
38240 locate 0,6
38250 print"10文字以内で入力してください"
38260 color rgb(0,0,0)
38270 locate 0,8
38280 if kaimei_count = 1 or kaimei_count = 2 then
38290 Input"名前:",kouho_name$
38300 name$=kouho_name$
38310 n=len(name$)
38320 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 35690
38330 'else
38340 if n =< 10 then goto 30810
38350 endif
38360 if kaimei_count = 3 then
38370 Input"エンターキーを押してください",key$
38380 if key$ = "" then
38390 'データーを初期化して、トップ画面に行く
38400 '1.データーを初期化
38410 kaimei_count = 0
38420 for i=1 to 3
38430 buffer_Kaimei$(i,0,0,0) = ""
38440 buffer_Kaimei$(0,i,0,0) = ""
38450 buffer_Kaimei$(0,0,i,0) = ""
38460 buffer_Kaimei$(0,0,0,i) = ""
38470 next i
38480 '2.トップ画面に行く
38490 goto 7610
38500 endif
38510 endif
38520 '霊遺伝姓名学 ここから
38530 'グラフィック領域　ここから
38540 '性別入力
38550 Reiden_Top_Input_Sextype:
38560 cls 3:talk ""
38570 No=1:y=0:key$="":bg=0:init "kb:4"
38580 sp_on 1,1:sp_put 1,(10,200),1,0
38590 'Line1
38600 line (0,0)-(850,60),rgb(0,0,255),bf
38610 line (0,0)-(847,57),rgb(0,255,0),b
38620 'Line 2
38630 line (0,63)-(853,537),rgb(127,255,212),bf
38640 line (0,60)-(850,540),rgb(0,0,0),b
38650 'Line 3
38660 line (0,540)-(850,630),rgb(0,255,0),bf
38670 line (0,543)-(853,633),rgb(0,0,255),b
38680 'グラフィック領域　ここまで
38690 '音声表示
38700 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38710 '性別変数:sex_type=0
38720 '文字色： 白
38730 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38740 '文字色：赤
38750 color rgb(255,0,255)
38760 print"占う人の性別の番号を入れてください" + chr$(13)
38770 print" :1.女 性" + chr$(13)
38780 print" :2.男 性" + chr$(13)
38790 print" :3.前の画面に戻る" + chr$(13)
38800 locate 0,12
38810 color rgb(0,0,0)
38820 print "1.女性を選択しました"
38830 Reiden_Top_Input_Sextype2:
38840 y = 0:key$ = "":bg = 0
38850 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38860 key$=inkey$
38870 y=stick(1)
38880 bg=strig(1)
38890 pause 2.50*100
38900 wend
38910 if (key$=chr$(31) or y=1) then
38920 '
38930 select case No
38940 case 1:
38950 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38960 case 2:
38970 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38980 case 3:
38990 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
39000 'case 4:
39010 'No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
39020 end select
39030 endif
39040 if (key$ = chr$(30) or y = -1) then
39050 select case No
39060 case 1:
39070       No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39080 case 2:
39090        No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
39100 case 3:
39110        No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
39120 'case 4:
39130 '       No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39140 end select
39150 endif
39160 'if (key$=chr$(30) or y=-1) then
39170 'endif
39180 if (bg=2 or key$=chr$(13)) then
39190 select case No
39200 case 1:
39210 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
39220 case 2:
39230 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
39240 case 3:
39250 sp_on 3,0:goto Main_Screen1:
39260 'case 4:
39270 'sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
39280 end select
39290 endif
39300 '2:男性の場合 名前を入力
39310 '男性の性別:sex_type=2
39320 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
39330 '1:女性の場合 既婚の場合、旧姓で入力
39340 '女性の性別:sex_type=1
39350 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
39360 '3:終了処理
39370 'if val(No$)=4 then cls 3:end
39380 'if val(No$)=3 then goto Main_Screen1:
39390 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
39400 '１．男性の場合の名前入力
39410 '描画領域　ここから
39420 ReiIden_Input_male:
39430 cls 3:init"kb:2":talk ""
39440 'Line 1 Title
39450 line (0,0)-(850,60),rgb(0,0,255),bf
39460 line (0,0)-(850,57),rgb(0,255,0),b
39470 'Line2 Input name
39480 line (0,60)-(850,300),rgb(0,255,0),bf
39490 line (0,60)-(850,303),rgb(0,0,255),b
39500 '描画領域 ここまで
39510 '文字色：白
39520 color rgb(255,255,255)
39530 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
39540 '文字色：黒
39550 color rgb(0,0,0)
39560 print "名前の姓の部分を入れてください" + chr$(13)
39570 Input"名前(姓の部分):",name1$
39580 '名の入力部分
39590 cls
39600 color rgb(255,255,255)
39610 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
39620 color rgb(0,0,0)
39630 print "名前の名の部分を入れてください"+chr$(13)
39640 Input"名前(名の部分):",name2$:goto check:
39650 '2.女性の場合　既婚か未婚か確認する
39660 '2-2-1女性の姓の入力
39670 'グラフィック領域　ここから
39680 ReiIden_Input_female:
39690 cls 3:init"kb:2":talk ""
39700 'Line1 Title
39710 line (0,0)-(850,60),rgb(0,0,255),bf
39720 line (0,0)-(850,57),rgb(0,255,0),b
39730 'Line 2 入力欄
39740 line (0,60)-(850,360),rgb(0,255,0),bf
39750 line (0,60)-(850,357),rgb(0,0,255),b
39760 'Line 2 入力欄(名前入力)
39770 'グラフィック領域 ここまで
39780 cls:init"kb:2"
39790 color rgb(255,255,255)
39800 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39810 color rgb(255,0,0)
39820 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39830 color rgb(0,0,0)
39840 print "名前の姓の部分を入れてください"+chr$(13)
39850 Input "名前(姓の部分):",name3$
39860 '2-2-2女性の名の入力
39870 cls:init"kb:2"
39880 color rgb(255,255,255)
39890 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39900 color rgb(0,0,0)
39910 print "名前の名の部分を入れてください"+chr$(13)
39920 Input "名前(名の部分):",name4$
39930 '計算領域　ここから
39940 check:
39950 '苗字の画数:buffer_name1_count
39960 'name1$,name2$:男性
39970 if sex_type = 1 then
39980 'sex_type=1 :女性のとき
39990 buf_male_female_name1$=name3$
40000 buf_male_female_name2$=name4$
40010 endif
40020 if sex_type = 2 then
40030 'sex_type=2 :男性のとき
40040 buf_male_female_name1$=name1$
40050 buf_male_female_name2$=name2$
40060 endif
40070 buffer_name1_count=len(buf_male_female_name1$)
40080 buffer_name2_count=len(buf_male_female_name2$)
40090 select case buffer_name1_count
40100 'AとBを求める
40110 case 1:
40120 '1.苗字の画数が1つのとき
40130 'A:霊数 1
40140 A=1
40150 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40160 B = char_count(buf_name1$)
40170 case 2:
40180 '2.苗字の画数が2つのとき
40190 '2-1:苗字の1文字目:buf_name1$
40200 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40210 '2-2:苗字の2文字目:buf_name2$
40220 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
40230 A=char_count(buf_name1$)
40240 B=char_count(buf_name2$)
40250 'B=char_count(buf_name2$)
40260 case 3:
40270 '3.苗字の画数が3つの時
40280 '3-1:苗字の1文字目:buf_name1$
40290 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40300 '3-2:苗字が3つのときの2つ目の文字をもとめる
40310 '3-2:苗字の2つ目:buf_name2$
40320 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40330 '3-3:苗字が3つのときの3文字目
40340 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
40350 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
40360 if buf_name2$="々" then
40370 A = char_count(buf_name1$) * 2
40380 B = char_count(buf_name3$)
40390 else
40400 A = char_count(buf_name1$) + char_count(buf_name2$)
40410 B = char_count(buf_name3$)
40420 endif
40430 '姓が4文字
40440 case 4:
40450 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40460 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40470 buf_name3$=Mid$(buf_male_female_name1$,3,1)
40480 buf_name4$=Mid$(buf_male_female_name1$,4,1)
40490 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
40500 B=char_count(buf_name4$)
40510 case else:
40520 end select
40530 '2.C,Dを求める
40540 select case buffer_name2_count
40550 case 1:
40560 '名が1文字の時
40570 'CとDを求める
40580 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40590 C = char_count(buff_name1$)
40600 'D=1:霊数
40610 D = 1
40620 case 2:
40630 '名が2文字の時
40640 'CとDを求める
40650 '名の1文字目:buff_name1$
40660 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40670 '名の2文字目:buff_name2$
40680 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40690 C = char_count(buff_name1$)
40700 D = char_count(buff_name2$)
40710 case 3:
40720 '名が3文字の時
40730 'CとDを求める
40740 '名の1文字目:buff_name1$
40750 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40760 '名の2文字目:buff_name2$
40770 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40780 if buff_name2$ = "々" then
40790 buff_name2$ = buff_name1$
40800 endif
40810 '名の3文字目:buff_name3$
40820 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40830 C = char_count(buff_name1$)
40840 D = char_count(buff_name2$) + char_count(buff_name3$)
40850 end select
40860 '1.先祖運を求める
40870 buffer_Senzo = A + B
40880 '2.性格運を求める
40890 buffer_Seikaku = B + C
40900 '3.愛情運を求める
40910 buffer_Aijyou = C + D
40920 '4.行動運を求める
40930 buffer_Kouzou = A + D
40940 'if buffer_Kouzou=10 then
40950 'endif
40960 '1.生数を求める
40970 func buf_Seisu(buffer)
40980 if buffer < 10 then
40990 seisu=buffer
41000 endif
41010 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
41020 seisu = 0
41030 endif
41040 if buffer > 10 then
41050 if buffer=20 then
41060 seisu = 0
41070 else
41080 n = buffer - (fix(buffer / 10) * 10)
41090 seisu = n
41100 endif
41110 endif
41120 endfunc seisu
41130 func buf_Wasu(buffer)
41140 buf_wasu = 0:wasu = 0
41150 if buffer < 10 then
41160 '
41170 wasu = buffer:goto wasu:
41180 else
41190 if buffer = 10 then
41200 wasu = 1:goto wasu:
41210 else
41220 if buffer > 10  then
41230 if buffer=19 or buffer=28 or buffer=37 then
41240 wasu=1:goto wasu:
41250 else
41260 if buffer = 29 then
41270 wasu=2:goto wasu:
41280 'endif
41290 else
41300 a = fix(buffer / 10)
41310 b = buffer - a * 10
41320 c = a + b
41330 if c = 19 or c=28 then
41340 wasu=1
41350 '
41360 else
41370 wasu=c
41380 endif
41390 endif
41400 endif
41410 endif
41420 endif
41430 if c < 10 then
41440 wasu = c
41450 'endif
41460 endif
41470 else
41480 if buffer=19 or buffer=28 then
41490 wasu = 1
41500 endif
41510 endif
41520 wasu:
41530 buf_wasu=wasu
41540 endfunc buf_wasu
41550 func buf_kyoudai$(buf_sex_type,buf_Sa$)
41560 select case buf_sex_type
41570 '1.女性の場合
41580 case 1:
41590 if (buf_Sa$ = "連続") then
41600 buffer_kyoudai$="長女"
41610 endif
41620 if (buf_Sa$ = "1差") then
41630 buffer_kyoudai$="次女"
41640 endif
41650 if (buf_Sa$ = "2差") then
41660 buffer_kyoudai$="三女"
41670 endif
41680 if (buf_Sa$ = "3差") then
41690 buffer_kyoudai$="四女"
41700 endif
41710 if (buf_Sa$ = "4差") then
41720 buffer_kyoudai$="五女"
41730 endif
41740 '男性の場合
41750 case 2:
41760 if (buf_Sa$ = "連続") then
41770 buffer_kyoudai$="長男"
41780 endif
41790 if (buf_Sa$ = "1差") then
41800 buffer_kyoudai$="次男"
41810 endif
41820 if (buf_Sa$ = "2差") then
41830 buffer_kyoudai$="三男"
41840 endif
41850 if (buf_Sa$ = "3差") then
41860 buffer_kyoudai$="四男"
41870 endif
41880 if (buf_Sa$ = "4差") then
41890 buffer_kyoudai$="五男"
41900 endif
41910 case else:
41920 end select
41930 kyoudai$=buffer_kyoudai$
41940 endfunc kyoudai$
41950 '1.タテ型
41960 '1.同じ数字が2組ある場合
41970 func Tate_gata$()
41980 if Senzo_wasu = Seikaku_wasu  then
41990 if Aijyou_wasu - Seikaku_wasu > 1 then
42000 Spirit_type$="タテ型"
42010 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
42020 Sa$ = str$(Sa_count) + "差"
42030 else
42040 Spirit_type$="タテ型"
42050 Sa$="連続"
42060 endif
42070 endif
42080 endfunc
42090 '2. ナナメ型
42100 '同じ数字が2組ある場合
42110 func Naname_gata$()
42120 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
42130 Spirit_type$="斜め型"
42140 endif
42150 if Seikaku_wasu - Senzo_wasu > 1 then
42160 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
42170 Sa$=str$(Sa_count)+" 差"
42180 else
42190 Sa$="連続"
42200 endif
42210 endfunc
42220 '3.表十字型
42230 '同じ数字が2組ある場合
42240 func Omote_jyuji_gata1$()
42250 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
42260 Spirit_type$ = "表十字型"
42270 endif
42280 if Senzo _wasu - Seikaku_wasu > 1 then
42290 Sa_count = Senzo_wasu - Seikaku_wasu - 1
42300 else
42310 if Senzo_wasu  -  Seikaku_wasu = 1  then
42320 Sa$="連続"
42330 endif
42340 endif
42350 endfunc
42360 '3-1.表十字型(ヨコ系)
42370 func Omote_jyuji_gata_yoko$()
42380 endfunc
42390 '3-2.表十字型(上下型)
42400 func Omote_jyuji_gata_jyouge()
42410 endfunc
42420 '4.ヨコ型
42430 func Yoko_gata$()
42440 endfunc
42450 '5.上下型
42460 func Jyouge_gata$()
42470 endfunc
42480 '6.1.中広型(タテ系)
42490 func Nakahiro_Tate$()
42500 endfunc
42510 '6.2中広型(ナナメ系)
42520 func Nakahiro_Naname$()
42530 endfunc
42540 '6.3中広型(表十字型)
42550 func Nakahiro_Omotejyuji$()
42560 endfunc
42570 '7.1.中一差(タテ系)
42580 func Chuissa_Tate$()
42590 endfunc
42600 '7.2中一差(ナナメ系)
42610 func Chuissa_Naname$()
42620 endfunc
42630 '8.1.中二差(タテ系)
42640 func Chunissa_Tate$()
42650 endfunc
42660 '8.2.中二差(ナナメ系)
42670 '9.1.順序型(タテ上下系)
42680 func Chunissa_Tate_jyouge$()
42690 endfunc
42700 '9.2.順序型(タテ、ヨコ系)
42710 func Jyunjyo_Tate_yoko$()
42720 endfunc
42730 '9.3.順序型(ナナメ、上下系)
42740 func Jyunjyo_Naname_jyouge$()
42750 endfunc
42760 '9.4.順序型(ナナメ、ヨコ系)
42770 '10.1.中順序型(ヨコ系)
42780 func Nakajyunjyo_yoko$()
42790 endfunc
42800 '10.2.中順序型(上下系)
42810 func Nakajyunjyo_jyouge$()
42820 endfunc
42830 '11.1.隔離型(タテ、上下系)
42840 func Kakuri_tate_jyouge$()
42850 endfunc
42860 '11.2.隔離型(タテ、ヨコ系)
42870 func Kakuri_tate_yoko$()
42880 endfunc
42890 '11.3.隔離型(ナナメ、上下系)
42900 func Kakuri_Naname_jyouge$()
42910 endfunc
42920 '11.4.隔離型(ナナメ、ヨコ系)
42930 func Kakuri_Naname_yoko$()
42940 endfunc
42950 '11.5.隔離型(タテ系)
42960 func Kakuri_tate$()
42970 endfunc
42980 '11.6.隔離型(ナナメ系)
42990 func Kakuri_naname$()
43000 endfunc
43010 '11.7.隔離型(上下、ヨコ系)
43020 func Kakuri_Jyouge_yoko$()
43030 endfunc
43040 Spirit_type$="No data"
43050 '1.先祖運　和数
43060 Senzo_wasu = buf_Wasu(buffer_Senzo)
43070 '2.先祖運 生数
43080 Senzo_seisu = buf_Seisu(buffer_Senzo)
43090 '3.性格運 和数
43100 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
43110 '4.性格運 生数
43120 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
43130 '5.愛情運 和数
43140 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
43150 '6.愛情運 生数
43160 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
43170 '7.行動運 和数
43180 Koudou_wasu = buf_Wasu(buffer_Kouzou)
43190 '8.行動運 生数
43200 Koudou_seisu = buf_Seisu(buffer_Kouzou)
43210 '計算領域 ここまで
43220 '描画領域　ここから
43230 Result_ReiIden1:
43240 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
43250 'Title
43260 line (0,0)-(850,60),rgb(0,0,255),bf
43270 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
43280 'name
43290 line (0,60)-(850,165),rgb(0,255,0),bf
43300 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
43310 '生数、和数
43320 line (0,165)-(850,550),rgb(125,255,212),bf
43330 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
43340 'プッシュメッセージ
43350 line (0,550)-(850,650),rgb(0,255,0),bf
43360 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
43370 '描画領域　ここまで
43380 color rgb(255,255,255)
43390 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
43400 color rgb(0,0,0)
43410 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
43420 color rgb(255,0,255)
43430 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
43440 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
43450 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
43460 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
43470 talk "診断結果１です、あなたのわすうとせいすうです。"
43480 color rgb(0,0,0)
43490 print"エンターキーを押してください"
43500 'key$=Input$(1)
43510 while (bg <> 2 and key$ <> chr$(13))
43520 key$=inkey$
43530 bg=strig(1)
43540 pause 2.50*100
43550 wend
43560 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
43570 '描画領域　ここから
43580 Result_ReiIden2:
43590 cls 3:init"kb:4"
43600 'Title Color:青
43610 line (0,0)-(860,60),rgb(0,0,255),bf
43620 'Title 枠
43630 line (0,0)-(860,57),rgb(255,0,255),b
43640 'Message
43650 line (0,60)-(860,650),rgb(127,255,212),bf
43660 'Message 枠
43670 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
43680 '
43690 '描画領域　ここまで
43700 color rgb(255,255,255)
43710 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43720 '十二運の基礎運
43730 '1.四大主流型
43740 'パターン１ 同じ数字の場合
43750 '1.オール同数化 全部同じ
43760 '1-if
43770 sa_count=0
43780 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43790 Spirit_type$ = "オール同数化"
43800 Sa$="3差"
43810 else
43820 'パターン１ 同じ数字2つの場合
43830 '2.タテ型
43840 '数字が２つ同じ
43850 '2-if
43860 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43870 Spirit_type$ = "タテ型"
43880 '2.タテ型　1
43890 if Koudou_wasu - Senzo_wasu = 1 then
43900 Sa$="連続"
43910 else
43920 '2.タテ型　2
43930 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43940 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43950 Sa$=str$(Sa_count) + "差"
43960 endif
43970 endif
43980 endif
43990 endif
44000 '2.タテ型　3
44010 '1.type
44020 'Spirit_type$ = "四大主流型 タテ型"
44030 '3.斜め型
44040 '数字が２つ同じ
44050 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
44060 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
44070 Sa$="連続"
44080 else
44090 '先祖＝行動　性格運=愛情運
44100 '3-if
44110 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
44120 Spirit_type$="斜め型"
44130 '3.斜め型 1
44140 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
44150 Sa$ = "連続"
44160 else
44170 if (Seikaku_wasu - Koudou_wasu) < 1 then
44180 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
44190 endif
44200 endif
44210 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
44220 Sa_count = 3
44230 Sa$ = str$(Sa_count - 1) + "差"
44240 else
44250 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
44260 Sa_count = Senzo_wasu - Seikaku_wasu
44270 Sa$ = str$(Sa_count-1) + "差"
44280 endif
44290 endif
44300 endif
44310 'Spirit_type$ = str$(Sa_count) + "差"
44320 'endif
44330 'endif
44340 '3-if
44350 endif
44360 '3.斜め型 2
44370 '3.斜め型 3
44380 '数字が２つ同じ
44390 '表十字型
44400 '先祖運＝愛情運　　行動運＝性格運
44410 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
44420 Spirit_type$="表十字型"
44430 Sa_coun = Senzo_wasu - Seikaku_wasu
44440 if Sa_count > 1 then
44450 Sa$ = str$(Sa_count) + "差"
44460 else
44470 if Sa_count = 1 then
44480 Sa$ = "連続"
44490 endif
44500 endif
44510 endif
44520 'endif
44530 '数字が２つ同じ
44540 '表十字型(横型)
44550 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
44560 Spirit_type$="表十字型(ヨコ型)"
44570 'Sa$を後で書く
44580 endif
44590 '数字が２つ同じ
44600 '表十字型(上下型)
44610 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
44620 Spirit_type$="表十字型(上下型)"
44630 'Sa$を後で書く
44640 endif
44650 'ヨコ型
44660 if Koudou_wasu = Seikaku_wasu then
44670 n=abs(Senzo_wasu - Seikaku_wasu)
44680 n2 = abs(Aijyou_wasu-Seikaku_wasu)
44690 Spirit_type$="ヨコ型"
44700 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
44710 Sa$="連続"
44720 endif
44730 if n = n2 then
44740 if n > 1 then
44750 Sa_count = n - 1
44760 Sa$=str$(Sa_count)+"差"
44770 else
44780 Sa_Count = abs(n - n2)
44790 if Sa_Count > 1 then
44800 Sa$ = str$(Sa_Count) + "差"
44810 endif
44820 endif
44830 endif
44840 endif
44850 '上下型
44860 '同じ数字が1組みある場合
44870 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44880 Spirit_type$ = "上下型"
44890 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44900 'n = abs(Koudou_wasu-Senzo_wasu)
44910 'n2= abs(Seikaku_wasu-Senzo_wasu)
44920 'buf=min(n,n2)
44930 'Sa$=str$(buf - 1) + "差"
44940 Sa$="連続"
44950 endif
44960 endif
44970 '中広（なかこう)型(斜め系)
44980 '連続した数字が2組みある場合
44990 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
45000 'n=Min(Senzo_wasu ,Koudou_wasu)
45010 'n2=Max(Seikaku_wasu , Aijyou_wasu)
45020 'Spirit_type$="中広型（斜め系）"
45030 'Sa_count = n - n2 -1
45040 'if Sa_count > 1 then
45050 'Sa$ = str$(Sa_count-1) + "差"
45060 'else
45070 'if Sa_count = 1 then
45080 'Sa$="連続"
45090 'endif
45100 'endif
45110 'endif
45120 '中広（なかこう)型(表十字型)
45130 '連続した数字が2組みある場合
45140 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
45150 Spirit_type$="中広（なかこう)型(表十字型)"
45160 n=Min(Koudou_wasu , Seikaku_wasu)
45170 n2=Max(Aijyou_wasu , Senzo_wasu)
45180 Sa_count = n - n2
45190 if Sa_count > 1 then
45200 Sa$ = str$(Sa_count - 1) + "差"
45210 else
45220 if Sa_count = 1 then
45230 Sa$ = "連続"
45240 endif
45250 endif
45260 endif
45270 '中一差（タテ系)
45280 '連続した数字が2組みある場合
45290 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
45300 'Spirit_type$="中一差（タテ系)"
45310 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
45320 n = Max(Koudou_wasu,Aijyou_wasu)
45330 n2 = Max(Senzo_wasu,Seikaku_wasu)
45340 else
45350 n = Max(Koudou_wasu,Aijyou_wasu)
45360 n2 = Min(Senzo_wasu,Seikaku_wasu)
45370 endif
45380 Sa_count2 = abs(n2 - n) - 1
45390 if Sa_count2 >= 0 then
45400 select case Sa_count2
45410 case 1:
45420 '中一差（タテ系)
45430 Sa$ = "連続"
45440 Spirit_type$="中一差型（タテ系)*"
45450 case 2:
45460 '中二差型（タテ系)
45470 Sa$ = "1差"
45480 Spirit_type$="中二差型（タテ系)"
45490 case 3:
45500 '中広（なかこう)型(タテ系)
45510 Sa$ = "2差"
45520 Spirit_type$="中三差型（タテ系)"
45530 case 4:
45540 Sa$ = "3差"
45550 Spirit_type$="中広型(タテ系)"
45560 case  else:
45570 cls 3:print"例外に入りました"
45580 end select
45590 '
45600 else
45610 cls 3:print"例外に入りました"
45620 endif
45630 endif
45640 'endif
45650 '中一差（斜め系)
45660 '連続した数字が2組みある場合
45670 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
45680 n = Min(Koudou_wasu,Senzo_wasu)
45690 n2 = Max(Aijyou_wasu,Seikaku_wasu)
45700 Sa_count = n - n2 - 1
45710 select case Sa_count
45720 case 1:
45730 '中一差（斜め系)
45740 '連続した数字が2組みある場合
45750 Sa$="1差"
45760 Spirit_type$="中一差（斜め系)"
45770 case 2:
45780 '中二差（斜め系)
45790 '連続した数字が2組みある場合
45800 Sa$="2差"
45810 Spirit_type$="中二差（斜め系)"
45820 case 3:
45830 Sa$="3差"
45840 Spirit_type$="中広型（斜め系）"
45850 case else:
45860 end select
45870 endif
45880 '順序型(タテ、上下系)
45890 '数字が４つ連続してる場合
45900 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45910 Spirit_type$="順序型(タテ、上下系)"
45920 Sa$="連続"
45930 endif
45940 '中順序型(ヨコ系)
45950 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45960 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45970 Spirit_type$="中順序型(ヨコ系)"
45980 Sa$="1差"
45990 else
46000 '順序型(タテ、ヨコ系)
46010 '数字が４つ連続してる場合
46020 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
46030 Spirit_type$="順序型(タテ、ヨコ系)"
46040 Sa$="連続"
46050 endif
46060 endif
46070 endif
46080 '中順序型(上下系)
46090 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
46100 n=Max(Senzo_wasu,Aijyou_wasu)
46110 n2=Min(Koudou_wasu,Seikaku_wasu)
46120 Sa_count = n2 - n
46130 if Sa_count > 1 then
46140 Spirit_type$="中順序型(上下系)"
46150 Sa$ = Str$(Sa_count) + "差"
46160 else
46170 '順序型(斜め、上下系)
46180 '数字が４つ連続してる場合
46190 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
46200 Spirit_type$ = "順序型(斜め、上下系)"
46210 Sa$="連続"
46220 endif
46230 endif
46240 endif
46250 '順序型(斜め、ヨコ系)
46260 '数字が４つ連続してる場合
46270 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
46280 Spirit_type$="順序型(斜め、ヨコ系)"
46290 Sa$="連続"
46300 endif
46310 '隔離型(タテ、上下系)
46320 '数字が1つおきに飛んでる場合
46330 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
46340 Spirit_type$="隔離型(タテ、上下系)"
46350 Sa$="1差"
46360 endif
46370 '隔離型(タテ、ヨコ系)
46380 '数字が1つおきに飛んでる場合
46390 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
46400 Spirit_type$="隔離型(タテ、ヨコ系)"
46410 Sa$="1差"
46420 endif
46430 '隔離型(斜め、上下系)
46440 '数字が1つおきに飛んでる場合
46450 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
46460 Spirit_type$="隔離型(斜め、上下系)"
46470 Sa$="1差"
46480 endif
46490 '隔離型(斜め、ヨコ系)
46500 '数字が1つおきに飛んでる場合
46510 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
46520 Spirit_type$="隔離型(斜め、ヨコ系)"
46530 Sa$="1差"
46540 endif
46550 '隔離型(タテ系)
46560 '数字が2つおきに飛んでる場合
46570 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
46580 Spirit_type$="隔離型(タテ系)"
46590 Sa$="1差"
46600 endif
46610 '隔離型(斜め系)
46620 '数字が2つおきに飛んでる場合
46630 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
46640 Spirit_type$="隔離型(斜め系)"
46650 Sa$="1差"
46660 endif
46670 '隔離型(上下、ヨコ系)
46680 '数字が2つおきに飛んでる場合
46690 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
46700 Spirit_type$="隔離型(上下、ヨコ系)"
46710 Sa$="1差"
46720 'endif
46730 endif
46740 'ここに移動
46750 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
46760 bg=0:bg2=0:key$="":init"kb:4":talk ""
46770 color rgb(255,0,255)
46780 print "●十二の基礎運" + chr$(13)
46790 print Spirit_type$ + Sa$;chr$(13)
46800 print "きょうだい：";Kyoudai$ + chr$(13)
46810 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46820 color rgb(0,0,0)
46830 print"前の画面:左の丸"+chr$(13)
46840 'print"保存して、もう一度やる：スペースキー"+chr$(13)
46850 print"トップ画面に戻る:右の丸"+chr$(13)
46860 'key$ = Input$(1)
46870 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
46880 key$=inkey$
46890 bg=strig(1)
46900 bg2=strig(0)
46910 pause 2.50*100
46920 wend
46930 if (key$ = chr$(13) or bg=2) then
46940 goto Main_Screen1:
46950 'else
46960 '保存して スペースキーでもう一度占う
46970 'if key$ = " " then
46980 'goto Save_Data1:
46990 else
47000 '
47010 if (key$ = "b" or bg2 = 2) then
47020 goto Result_ReiIden1:
47030 endif
47040 endif
47050 'endif
47060 'ファイル保存 占いデーターを一時保存
47070 Save_Data1:
47080 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
47090 'print#3は末尾は、セミコロンはいらない
47100 '末尾にセミコロンをつけると改行しない
47110 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
47120 ui_msg "保存しました"
47130 close #3
47140 goto Reiden_Top_Input_Sextype:
47150 '個人データーリスト  *parsonal_data
47160 Parsonal_data_top:
47170 cls 3:No=0:Key$="":bg=0:y=0
47180 sp_on 0,1:sp_put 0,(10,100),0,0
47190 line(0,0)-(800,60),rgb(0,0,255),bf
47200 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
47210 line (0,60)-(800,440),rgb(127,255,212),bf
47220 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
47230 line (0,440)-(800,670),rgb(0,255,0),bf
47240 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
47250 color rgb(255,255,255)
47260 print"◎個人データーリスト" + chr$(13)
47270 color rgb(255,0,255)
47280 print " :1.霊遺伝姓名学リスト" + chr$(13)
47290 print " :2.霊遺伝姓名学登録件数" + chr$(13)
47300 print " :3.霊遺伝姓名学データー検索"+chr$(13)
47310 print " :4.メインメニューへ行く"+chr$(13)
47320 color rgb(0,0,0):locate 0,10
47330 print "1.霊遺伝姓名学リストを選択"
47340 Parsonal_data_top2:
47350 key$="":bg=0:y=0
47360 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
47370 key$=inkey$
47380 bg=strig(1)
47390 y=stick(1)
47400 pause 2.50*100
47410 wend
47420 '*****************************************************
47430 '1.下のカーソル ここから 2024.10
47440 '*****************************************************
47450 if (key$=chr$(31) or y=1) then
47460 select case No
47470 case 0:
47480 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47490 case 1:
47500 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47510 case 2:
47520 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47530 case 3:
47540 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47550 end select
47560 endif
47570 '******************************************************
47580 '1.下のカーソル　 ここまで 2024.10
47590 '******************************************************
47600 '******************************************************
47610 '2.上のカーソル　 ここから 2024.10
47620 '******************************************************
47630 if (y=-1 or key$=chr$(30)) then
47640 select case No
47650 case 0:
47660 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47670 case 1:
47680 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47690 case 2:
47700 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47710 case 3:
47720 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47730 end select
47740 endif
47750 '******************************************************
47760 '2.上のカーソル　ここまで 2024.10
47770 '******************************************************
47780 '3.決定ボタン　ここから  2024.10
47790 '******************************************************
47800 if (bg=2 or key$=chr$(13)) then
47810 select case No
47820 case 0:
47830 sp_on 0,0:goto Parsonal_list1:
47840 case 1:
47850 sp_on 1,0:goto Entry_list_count:
47860 case 2:
47870 sp_on 2,0:goto Parsonal_list_Search:
47880 case 3:
47890 sp_on 3,0:goto Main_Screen1:
47900 end select
47910 endif
47920 '******************************************************
47930 '3.決定ボタン　ここまで 2024.10
47940 '******************************************************
47950 'if No = 1 then goto Parsonal_list1:
47960 'if No = 2 then goto Entry_list_count:
47970 'if No = 4 then goto Main_Screen1:
47980 'if No = 3 then goto Parsonal_list_Search:
47990 'if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
48000 '登録件数
48010 Entry_list_count:
48020 N = 0:bg=0:key$="":init"kb:4":talk ""
48030 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
48040 'N=1
48050 while eof(5) = 0
48060 line input #5,line$:N = N + 1
48070 'if line$="大吉数" then
48080 'continue:N = N - 1
48090 'else
48100 'N = N + 1
48110 'endif
48120 wend
48130 'c=N
48140 close #5
48150 c=N
48160 cls 3
48170 line (0,0)-(680,60),rgb(0,0,255),bf
48180 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
48190 line (0,60)-(680,180),rgb(127,255,212),bf
48200 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
48210 LINE (0,180)-(680,280),rgb(0,255,0),bf
48220 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
48230 color rgb(255,255,255)
48240 print "◎霊遺伝姓名学登録件数"+chr$(13)
48250 color rgb(255,0,255)
48260 'N=B-1:C=N
48270 print "登録件数は";c;"件です"+chr$(13)
48280 color rgb(0,0,0)
48290 print "エンターキーを押してください"+chr$(13)
48300 while (key$ <> chr$(13) and bg <> 2)
48310 key$=inkey$
48320 bg=strig(1)
48330 pause 2.50*100
48340 wend
48350 'a$ = Input$(1)
48360 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
48370 'パーソナルリスト ここから
48380 Parsonal_list1:
48390 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
48400 'Title
48410 line (0,0)-(850,60),rgb(0,0,255),bf
48420 line (0,0)-(850,57),rgb(255,255,255),b
48430 '個人名
48440 line (0,60)-(850,165),rgb(0,255,0),bf
48450 line (0,63)-(850,162),rgb(255,0,255),b
48460 '数値リスト
48470 line (0,165)-(850,550),rgb(255,212,212),bf
48480 line (0,168)-(850,547),rgb(0,0,255),b
48490 'ボタンメッセージ
48500 line (0,550)-(850,730),rgb(0,255,0),bf:
48510 line (0,553)-(853,733),rgb(255,0,255),b
48520 'Parsonal_list2:
48530 'color rgb(255,255,255):
48540 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
48550 'n=0
48560 open "config/Parsonal_data/parsonal_data.dat" for input as #7
48570 'bN=0
48580 while eof(7)=0
48590 'input #6,lines2$
48600 'close #6
48610 '
48620 line input #7,lines$:bN = bN + 1
48630 'if lines$ = "大吉数" then
48640 'continue:bN = bN - 1
48650 'else
48660 'bN = bN + 1
48670 'endif
48680 wend
48690 'buf_name1$(i)=Mid$(lines$,4,4)
48700 'next i
48710 'wend
48720 close #7
48730 'a=0
48740 open "config/Parsonal_data/parsonal_data.dat" for input as #8
48750 'while eof(8)=0
48760 for i=0 to (bN * 10) -1
48770 input #8,buflines$(i)
48780 'buflines$(i) = line$
48790 'a  =  a  +  1
48800 Next i
48810 'wend
48820 close #8
48830 Parsonal_list2:
48840 'while (n <= bN*10)
48850 'while (bg <> 2 and bg2 <> 2 )
48860 'bg = strig(1)
48870 'bg2 = strig(0)
48880 'n=((n+1) Mod bN)
48890 'pause 2.5*1000
48900 'wend
48910 'while n <= bN * 10
48920 'if bg2= 2 then goto Main_Screen1:
48930 'if bg = 2 then 'n=((n+1) Mod bN)
48940 'n=((n+1) Mod bN)
48950 'endif
48960 'if bg2 = 2 then goto Main_Screen1:
48970 while n <= bN * 10
48980 'Parsonal_list2:
48990 cls
49000 'if bg=2 then n=((n+1) Mod bN)
49010 color rgb(255,255,255)
49020 print "霊遺伝姓名学 リスト" + chr$(13)
49030 '性別を出す
49040 sex$ = show_sex_type$(buflines$((10*n) + 1))
49050 'n=0
49060 color rgb(0,0,0):
49070 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
49080 '
49090 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
49100 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
49110 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
49120 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
49130 'n = (( n + 1) Mod 3) - 1
49140 '
49150 'n = n + 1
49160 print "右の丸:次へ行く" + chr$(13)
49170 print "左の丸：トップへ戻る" + chr$(13)
49180 key$=input$(1)
49190 if key$= " " then n=((n+1) Mod bN)
49200 'goto Parsonal_list2:
49210 'wend
49220 if key$=chr$(13) then goto Main_Screen1:
49230 wend
49240 'goto Parsonal_list2:
49250 'n=((n+1) Mod bN)
49260 'endif
49270 'goto Parsonal_list2:
49280 'if bg = 2 then n = ((n + 1) Mod bN)
49290 'if bN = 3 then
49300 'if buflines$(0) = "大吉数" then
49310 'n = ((n + 1) Mod bN)
49320 'else
49330 'n=((n + 1) Mod bN)
49340 'wend
49350 'else
49360 'if bN=2 then
49370 'n=((n + 1) Mod bN)
49380 'endif
49390 'endif
49400 'cls
49410 'else
49420 'if bg2 = 2  then goto Main_Screen1:
49430 'wend
49440 'goto Parsonal_data_top:
49450 'endif
49460 'endif
49470 Parsonal_list_Search:
49480 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
49490 while eof(1)=0
49500 line input #1,lines$:hit_count=hit_count + 1
49510 wend
49520 close #1
49530 'bufname$(hit_count*10),buffname$(hit_count*10)
49540 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
49550 for i=0 to hit_count*10 - 1
49560 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
49570 next i
49580 close #2
49590 Search_find:
49600 cls 3:init "kb:2":talk ""
49610 'グラフィック領域　ここから
49620 line (0,0)-(770,60),rgb(0,0,255),bf
49630 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
49640 line (0,60)-(770,170),rgb(127,255,212),bf
49650 line(0,63)-(767,173),rgb(0,0,255),b
49660 line(0,170)-(770,440),rgb(0,255,0),bf
49670 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
49680 color rgb(255,255,255)
49690 print "霊遺伝姓名判断 データー検索"+chr$(13)
49700 color rgb(255,0,255)
49710 print "登録件数:";hit_count;"件です"+chr$(13)
49720 color rgb(0,0,0)
49730 print "調べたい人の名前を入れてください"+chr$(13)
49740 Input "名前:",name$
49750 cls
49760 for i = 0 to hit_count * 10 - 1
49770 if name$ = buffname$(i) then
49780 hcount = hcount + 1
49790 endif
49800 next i
49810 if hcount > 0 then
49820 init "kb:4":cls
49830 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49840 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
49850 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
49860 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
49870 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
49880 while (key$ <> chr$(13) and bg <> 2)
49890 key$=inkey$
49900 bg=strig(1)
49910 bg2=strig(0)
49920 pause 2.50*100
49930 wend
49940 'a$=input$(1)
49950 'if a$=" " then goto Search_find:
49960 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
49970 else
49980 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49990 color rgb(0,0,0):print"検索名:";name$+chr$(13)
50000 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
50010 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
50020 a$=input$(1)
50030 IF a$=chr$(13) then goto Main_Screen1:
50040 endif
50050 '相性のデーターを保存する機能
50060 '保存ファイル：bestAisyou.dat
50070 '保存フォルダ:config/Aisyou_dat/
50080 Save_Aisyou:
50090 open "config/Aisyou_data" for append as #1
50100 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
50110 close #1
50120 ui_msg "保存しました"
50130 key$ = input$(1)
50140 '設定変更項目
50150 Config_Setting:
50160 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
50170 sp_on 0,1:sp_put 0,(10,100),0,0
50180 'グラフィック領域　ここから
50190 'Line 1
50200 line (0,0)-(850,60),rgb(0,0,255),bf
50210 line (0,0)-(850,57),rgb(255,255,255),b
50220 'Line 2
50230 line (0,60)-(850,460),rgb(127,255,212),bf
50240 line (0,57)-(850,457),rgb(0,0,0),b
50250 'Line 3
50260 line (0,460)-(850,640),rgb(0,255,0),bf
50270 line (0,457)-(850,637),rgb(0,0,0),b
50280 'グラフィック領域　ここまで
50290 color rgb(255,255,255)
50300 print "設定　トップメニュー" + chr$(13)
50310 color rgb(255,0,255)
50320 print " :1.キーボードの設定" + chr$(13)
50330 print " :2.トップ画面に戻る"
50340 'print " :4.プログラムの終了"+chr$(13)
50350 color rgb(0,0,0):locate 0,10
50360 print "1.キーボードの設定を選択"
50370 'print "番号を選んでエンターキー"+chr$(13)
50380 'Input "番号:",No
50390 'No=4:プログラムの終了
50400 'if No = 4 then
50410 Config_Setting2:
50420 y=0:bg=0:key$=""
50430 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
50440 key$=inkey$
50450 y=stick(1)
50460 bg=strig(1)
50470 pause 2.50*100
50480 wend
50490 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
50500 select case No
50510 case 0:
50520 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
50530 case 1:
50540 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
50550 'if (y=-1 or key$=chr$(30)) then
50560 '
50570 '
50580 'case 3:
50590 '       No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),00,0:goto Config_Setting2:
50600 end select
50610 endif
50620 if (key$=chr$(13) or bg=2) then
50630 select case No
50640 case 0:
50650 sp_on 0,0:goto Keyboard_Setting:
50660 case 1:
50670 sp_on 1,0:goto Main_Screen1:
50680 end select
50690 endif
50700 'cls 3:talk"しゅうりょうします":ui_msg"終了します":end
50710 'else
50720 'select case No
50730 'No=1:キーボードの設定
50740 'case 1:
50750 'goto Keyboard_Setting:
50760 'No=2:音の設定
50770 'case 2:
50780 'No=3:トップに戻る
50790 'case 3:
50800 'goto Main_Screen1:
50810 'No=1〜3以外
50820 'case else:
50830 'goto Config_Setting:
50840 'end select
50850 'endif
50860 '1.キーボードの設定
50870 Keyboard_Setting:
50880 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
50890 sp_on 0,1:sp_put 0,(10,100),0,0
50900 'グラフィック領域　ここから
50910 'Line 1
50920 line (0,0)-(1050,60),rgb(0,0,255),bf
50930 line (0,0)-(1050-3,57),rgb(255,255,255),b
50940 'Line 2
50950 line (0,60)-(1050,460),rgb(127,255,212),bf
50960 line (0,57)-(1050-3,457),rgb(0,0,0),b
50970 'Line 3
50980 line (0,460)-(1050,640),rgb(0,255,0),bf
50990 line (0,457)-(1050-3,637),rgb(0,0,0),b
51000 'グラフィック領域　ここまで
51010 '文字色　白
51020 color rgb(255,255,255)
51030 print "設定1 キーボードの設定" + chr$(13)
51040 color rgb(255,0,255)
51050 print " :1.バーチャルキーボード表示する" + chr$(13)
51060 print " :2.バーチャルキーボードを表示しない" + chr$(13)
51070 print " :3.トップ画面に戻る" + chr$(13)
51080 print " :4.終了する" + chr$(13)
51090 color rgb(0,0,0)
51100 locate 0,10
51110 print "1.バーチャルキーボードを表示するを選択"
51120 Keyboard_Setting2:
51130 y=0:bg=0:key$=""
51140 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
51150 key$=inkey$
51160 y=stick(1)
51170 bg=strig(1)
51180 pause 2.50*100
51190 wend
51200 '****************************************************************************************************************
51210 '下のカーソル　ここから
51220 '****************************************************************************************************************
51230 if (y=1 or key$=chr$(31)) then
51240 select case No
51250 case 0:
51260 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
51270 case 1:
51280 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
51290 case 2:
51300 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
51310 case 3:
51320 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
51330 end Select
51340 endif
51350 '*******************************************************************************************************************
51360 '下のカーソル　ここまで
51370 '*******************************************************************************************************************
51380 '*******************************************************************************************************************
51390 '上のカーソル　ここから
51400 '********************************************************************************************************************
51410 '********************************************************************************************************************
51420 '上のカーソル　ここまで
51430 '********************************************************************************************************************
51440 '********************************************************************************************************************
51450 '決定ボタン　ここから
51460 '*********************************************************************************************************************
51470 if (key$=chr$(13) or bg=2) then
51480 select case No
51490 case 0:
51500       init "kb:2":
51510 case 1:
51520 sp_on 1,0:init "kb:0":
51530 case 2:
51540 sp_on 2,0:goto Main_Screen1:
51550 case 3:
51560 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
51570 end select
51580 endif
51590 '*********************************************************************************************************************
51600 '決定ボタン　ここまで
51610 '*********************************************************************************************************************
51620 ' Print "番号を選んでください" + chr$(13)
51630 ' Input "番号:",SelectNo3
51640 'if SelectNo3 = 4 then
51650 'cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
51660 'else
51670 'Select case SelectNo3
51680 'case 1:
51690 'if keyboard_flag = 0 then
51700 'keyboard_flag=1:init"kb:2"
51710 'goto Keyboard_Setting:
51720 'endif
51730 'case 2:
51740 'if keyboard_flag=1 then
51750 'keyboard_flag=0:init"kb:0"
51760 'goto Keyboard_Setting:
51770 'endif
51780 'case 3:
51790 'goto Main_Screen1:
51800 'case else:
51810 'goto Keyboard_Se
51820 'end Select
51830 'endif
