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
690 '*****************************************************
700 '設定ファイル　漢字文字データ                                      *
710 'Version:Mojidata20200411.dat Date:20200411          *
720 'Version:Mojidata20200415.dat Date:20200415          *
730 'Version:Mojidata20200506.dat Date:20200506          *
740 'Version:Mojidata20200513.dat Date:20200513          *
750 'Version:Mojidata20200516.dat Date:20200516          *
760 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
770 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
780 '*****************************************************
790 '* 開発再開　2024.9.20　Ver2.33                        *
800 '* 開発再開 Date:2024.09.20                          *
810 '*************************************************
820 '新機能
830 'Date:2020.05.27
840 'Parsonal_data.datに個人データーを保存機能追加
850 '*****************************************************
860 'メモリー確保 文字領域,数値データー                                  *
870 '*****************************************************
880 clear 4*4000,4*1000000
890 '*****************************************************
900 'Screen 定義                                           *
910 '*****************************************************
920 Screen 1,1,1,1
930 '*****************************************************
940 'Sprite 定義                                           *
950 '*****************************************************
960 gload "./config/gazo/"+"selection.png",1,10,100
970 gload "./config/gazo/"+"selection.png",1,10,200
980 gload "./config/gazo/"+"selection.png",1,10,300
990 gload "./config/gazo/"+"selection.png",1,10,400
1000 gload "./config/gazo/"+"selection.png",1,10,500
1010 sp_def 0,(10,100),32,32
1020 sp_def 1,(10,200),32,32
1030 sp_def 2,(10,300),32,32
1040 sp_def 3,(10,400),32,32
1050 sp_def 4,(10,500),32,32
1060 '*****************************************************
1070 '改名チェック変数                                            *
1080 '****************************************************
1090 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1100 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1110 '*****************************************************
1120 'キーボードフラグ                                            *
1130 '0:キーボード非表示                                          *
1140 '1:キーボード表示                                           *
1150 '*****************************************************
1160 keyboard_flag = 0
1170 '*****************************************************
1180 '性別の選択用変数                                            *
1190 '*****************************************************
1200 dim sex_type$(2)
1210 '*****************************************************
1220 '相性占い　設定項目 ここから                                      *
1230 '*****************************************************
1240 count=0:line_count=0
1250 dim buffer_Aisyou_type$(10,10)
1260 dim buffer_Kaimei_data_name$(10)
1270 '*****************************************************
1280 '改名チェックの選択肢の変数                                       *
1290 '*****************************************************
1300 dim select$(3)
1310 open "config/Selection/Selection.dat" for input as #2
1320 for i=0 to 2
1330 input #2,select$(i)
1340 next i
1350 close #2
1360 'select$(0)="改名リストに追加する"
1370 'select$(1)="改名リストに追加しない"
1380 'select$(2)="トップ画面に行く"
1390 '*****************************************************
1400 '総数を出す変数 改名チェック変数                                    *
1410 'dim buffer_total$                                   *
1420 '1.理解し合える最良のカップル                                     *
1430 '*****************************************************
1440 dim buf_good_couple1(20)
1450 dim buf_good_couple2(20)
1460 '*****************************************************
1470 '2.互いに自然体でつきあえるカップル                                  *
1480 '*****************************************************
1490 dim buf_natural_couple1(20)
1500 dim buf_natural_couple2(20)
1510 '**************************************************
1520 dim buf_good_for_man1(20)
1530 dim buf_good_for_man2(20)
1540 '*****************************************************
1550 '4.女性にとって居心地の良い相性                                    *
1560 '*****************************************************
1570 dim buf_good_for_woman1(20)
1580 dim buf_good_for_woman2(20)
1590 '*****************************************************
1600 '5.恋愛経験を重ねた後なら愛を育める                                  *
1610 '*****************************************************
1620 dim short_of_experience1(20)
1630 dim short_of_experience2(20)
1640 '*****************************************************
1650 '6.結婚への発展が困難なカップル                                    *
1660 '*****************************************************
1670 dim buf_difficult_for_couple1(20)
1680 dim buf_difficult_for_couple2(20)
1690 '*****************************************************
1700 '7.愛し方にズレが出てくる二人                                     *
1710 '*****************************************************
1720 dim buf_difference_of_love1(20)
1730 dim buf_difference_of_love2(20)
1740 '*****************************************************
1750 '相性占い　設定項目　ここまで
1760 '*****************************************************
1770 '8.互いの価値観が噛み合わない相性 ここから                              *
1780 '*****************************************************
1790 dim buf_difference_of_KachiKan1(20)
1800 dim buf_difference_of_KachiKan2(20)
1810 '*****************************************************
1820 '8.互いに価値観が噛み合わない相性 ここまで                              *
1830 '*****************************************************
1840 '相性診断　相性パターン結果　ここから
1850 dim Result_Aisyou_type$(8)
1860 '*****************************************************
1870 '相性診断 相性パターン結果 ここまで                                  *
1880 '*****************************************************
1890 '2019/04/07 姓名判断アプリ 作成開始                             *
1900 '姓名判断　 名前の総数での吉凶を調べる                                 *
1910 '*****************************************************
1920 buf_count=0:buffer_count=0:count=0:buffer=0
1930 '*****************************************************
1940 '合計文字数                                               *
1950 '*****************************************************
1960 totalmoji=0
1970 dim buf_Input_data$(10),buf_Input_data2$(10)
1980 dim bufer_name$(10),bufer_name2$(10)
1990 dim buf_Input_name$(10),buf_Input_name2$(10)
2000 '*****************************************************
2010 '定数文字1画〜27画                                          *
2020 'ファイルから各画数を読み込んで代入する。                                *
2030 '*****************************************************
2040 '1行目だけ読み込む                                           *
2050 '*****************************************************
2060 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
2070 for i=0 to 26
2080 input #2,buf_lines$(i)
2090 next i
2100 close #2
2110 '*****************************************************
2120 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2130 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2140 '1画
2150 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2160 '2画
2170 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2180 '3画
2190 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2200 '4画
2210 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2220 '5画
2230 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2240 '6画
2250 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2260 '7画
2270 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2280 '8画
2290 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2300 '9画
2310 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2320 '10画
2330 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2340 '11画
2350 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2360 '12画
2370 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2380 '13画
2390 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2400 '14画
2410 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2420 '15画
2430 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2440 '16画
2450 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2460 '17画
2470 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2480 '18画
2490 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
2500 '19画
2510 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
2520 '20画
2530 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
2540 '21画
2550 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
2560 '22画
2570 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
2580 '23画
2590 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2600 '24画
2610 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2620 '25画
2630 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2640 '26画
2650 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2660 '27画
2670 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2680 dim Moji_data$(Moji_total+27+27)
2690 '******************************************************
2700 'dim bufmoji$(10),Input_data$(10)                     *
2710 '１画の文字   サイズ:21+2(漢字)                                 *
2720 '******************************************************
2730 dim buf_char_hiragana1$(Moji_1)
2740 '******************************************************
2750 '2画の文字  サイズ 58+14=72(漢字)                              *
2760 '******************************************************
2770 dim buf_char_hiragana2$(Moji_2)
2780 '******************************************************
2790 '3画の文字 サイズ:48+29=77(漢字)                               *
2800 '******************************************************
2810 dim buf_char_hiragana3$(Moji_3)
2820 '******************************************************
2830 '4画の文字 サイズ:29+51=80(漢字)                               *
2840 '******************************************************
2850 dim buf_char_hiragana4$(Moji_4)
2860 '******************************************************
2870 '５画の文字  サイズ:18+59=77(漢字)                              *
2880 '******************************************************
2890 dim buf_char_hiragana5$(Moji_5)
2900 '******************************************************
2910 '6画の文字  サイズ:79(漢字)                                    *
2920 '******************************************************
2930 dim buf_char_hiragana6$(Moji_6)
2940 '******************************************************
2950 '7画の文字  サイズ:88(漢字)                                    *
2960 '******************************************************
2970 dim buf_char_hiragana7$(Moji_7)
2980 '******************************************************
2990 '8画の文字                                                *
3000 '******************************************************
3010 dim buf_char_hiragana8$(Moji_8)
3020 '******************************************************
3030 '9画の文字                                                *
3040 '******************************************************
3050 dim buf_char_hiragana9$(Moji_9)
3060 '******************************************************
3070 '10画の文字 98文字                                          *
3080 '******************************************************
3090 dim buf_char_hiragana10$(Moji_10)
3100 '******************************************************
3110 '11画の文字                                               *
3120 '******************************************************
3130 dim buf_char_hiragana11$(Moji_11)
3140 '******************************************************
3150 '12画の文字                                               *
3160 '******************************************************
3170 dim buf_char_hiragana12$(Moji_12)
3180 '******************************************************
3190 '13画の文字 81文字                                          *
3200 '******************************************************
3210 dim buf_char_hiragana13$(Moji_13)
3220 '******************************************************
3230 '14画の文字                                               *
3240 '******************************************************
3250 dim buf_char_hiragana14$(Moji_14)
3260 '******************************************************
3270 '15画の文字                                               *
3280 '******************************************************
3290 dim buf_char_hiragana15$(Moji_15)
3300 '******************************************************
3310 '16画の文字                                               *
3320 '******************************************************
3330 dim buf_char_hiragana16$(Moji_16)
3340 '******************************************************
3350 '17画の文字                                               *
3360 '******************************************************
3370 dim buf_char_hiragana17$(Moji_17)
3380 '******************************************************
3390 '18画の文字                                               *
3400 '******************************************************
3410 dim buf_char_hiragana18$(Moji_18)
3420 '19画の文字
3430 dim buf_char_hiragana19$(Moji_19)
3440 '20画の文字
3450 dim buf_char_hiragana20$(Moji_20)
3460 '21画の文字
3470 dim buf_char_hiragana21$(Moji_21)
3480 '22画の文字
3490 dim buf_char_hiragana22$(Moji_22)
3500 '23画の文字
3510 dim buf_char_hiragana23$(Moji_23)
3520 '24画の文字
3530 dim buf_char_hiragana24$(Moji_24)
3540 '25画の文字
3550 dim buf_char_hiragana25$(Moji_25)
3560 dim buf_char_hiragana26$(Moji_26)
3570 dim buf_char_hiragana27$(Moji_27)
3580 '結果表示1　吉凶データー 81パターン
3590 dim buf_Kikkyo$(81)
3600 '結果表示２
3610 '安斎流姓名判断 吉凶  1.地運
3620 dim buf_Kikkyo_Anzai_chiunn$(70)
3630 '安斎流姓名判断　　吉凶  2.人運
3640 dim buf_Kikkyo_Anzai_jinunn$(69)
3650 '安斎流姓名判断 吉凶 3.外運
3660 'dim buf_Kikkyo_Anzai_gaiunn$(70)
3670 '安斎流姓名判断 吉凶　　4.総運
3680 dim buf_Kikkyo_Anzai_total$(80)
3690 '霊遺伝姓名学　変数
3700 A=0
3710 B=0
3720 C=0
3730 D=0
3740 '1.先祖運
3750 buffer_senzo=0
3760 '2.性格運
3770 buffer_seikaku=0
3780 '3.愛情運
3790 buffer_Aijyou=0
3800 '4.行動運
3810 buffer_Kouzou=0
3820 '1-1.先祖運　和数
3830 Senzo_wasu=0
3840 '1-2.先祖運　生数
3850 Senzo_seisu=0
3860 '2-1.性格運 和数
3870 Seikaku_wasu=0
3880 '2-2.性格運 生数
3890 Seikaku_seisu=0
3900 '3-1.愛情運 和数
3910 Aijyou_wasu=0
3920 '3-2.愛情運 生数
3930 Aijyou_seisu=0
3940 '4-1 行動運 和数
3950 Koudo_wasu=0
3960 '4-2 行動運 生数
3970 Koudo_seisu=0
3980 'データー読み込み　ここから
3990 'データー読み込み　1.ひらがな
4000 '1画の文字   6文字 23文字
4010 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
4020 '全ファイルを読み込む
4030 for i = 0 to 26+Moji_total+27
4040 input #1,Moji_data$(i)
4050 next i
4060 close #1
4070 '全ファイル読み込み　ここまで
4080 for i = 27+1 to (Moji_1)+27+1
4090 '1画の文字にデーターをコピーする
4100 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4110 next i
4120 '2画の文字    98文字
4130 for i = Moji_Min_2  to (Moji_Max_2)
4140 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4150 next i
4160 '3文字の文字    77文字
4170 for i = Moji_Min_3  to (Moji_Max_3)
4180 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4190 next i
4200 '4文字の文字   80文字
4210 for i = (Moji_Min_4)  to (Moji_Max_4)
4220 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4230 next i
4240 '5文字の文字 77文字
4250 for i = Moji_Min_5 to (Moji_Max_5)
4260 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4270 next i
4280 '6文字の文字 79文字
4290 for i = Moji_Min_6  to Moji_Max_6
4300 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4310 next i
4320 '7文字の文字 170文字
4330 for i = Moji_Min_7 to Moji_Max_7
4340 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4350 next i
4360 '8画の文字 120文字
4370 for i = Moji_Min_8 to Moji_Max_8
4380 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4390 next i
4400 '9画の文字  103文字
4410 for i = Moji_Min_9 to Moji_Max_9
4420 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4430 next i
4440 '10画の文字 285文字
4450 for i = Moji_Min_10 to (Moji_Max_10)
4460 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4470 next i
4480 '11画の文字
4490 for i = Moji_Min_11 to Moji_Max_11
4500 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
4510 next i
4520 '12画の文字
4530 for i = Moji_Min_12 to Moji_Max_12
4540 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
4550 next i
4560 '13画の文字 81
4570 for i = Moji_Min_13 to Moji_Max_13
4580 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
4590 next i
4600 '14画の文字 66
4610 for i = Moji_Min_14 to Moji_Max_14
4620 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
4630 next i
4640 '15画の文字 59
4650 'for i = Moji_Min_15 to (Moji_Max_15) - 1
4660 for i=Moji_Min_15 to  Moji_Max_15
4670 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
4680 next i
4690 '16画の文字 44
4700 for i=Moji_Min_16 to Moji_Max_16
4710 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
4720 next i
4730 '17画の文字
4740 for i = Moji_Min_17 to Moji_Max_17
4750 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
4760 next i
4770 '18画の文字
4780 for i = Moji_Min_18 to Moji_Max_18
4790 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
4800 next i
4810 '19画の文字 17文字
4820 for i = Moji_Min_19 to Moji_Max_19
4830 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
4840 next i
4850 '20 画の文字 13文字
4860 for  i = Moji_Min_20 to Moji_Max_20
4870 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
4880 NEXT i
4890 '21画の文字 6
4900 for i = Moji_Min_21 to (Moji_Max_21)
4910 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
4920 next i
4930 '22 画の文字 4
4940 for i = Moji_Min_22 to Moji_Max_22
4950 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4960 next i
4970 '23画の文字  3文字
4980 for i = Moji_Min_23 to Moji_Max_23
4990 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
5000 next i
5010 '24画の文字  3文字
5020 for i = Moji_Min_24 to Moji_Max_24
5030 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5040 next i
5050 '25 画の文字 4
5060 for i = Moji_Min_25 to Moji_Max_25
5070 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5080 next i
5090 '26画の文字  3文字
5100 for i = Moji_Min_26 to Moji_Max_26
5110 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5120 next i
5130 '27画の文字  3文字
5140 for i = Moji_Min_27 to Moji_Max_27
5150 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5160 next i
5170 '吉凶データー読み込み
5180 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
5190 for i=0 to 80
5200 input #1,buf_Kikkyo$(i+1)
5210 next i
5220 close #1
5230 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
5240 for m=0 to 69
5250 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5260 next m
5270 close #2
5280 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
5290 for i=1 to 70
5300 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
5310 next i
5320 close #3
5330 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
5340 for i=0 to 79
5350 input #4,buf_Kikkyo_Anzai_total$(i)
5360 next i
5370 close #4
5380 '****************************************************
5390 '0.理解し合えるカップル　ここから                                  *
5400 '****************************************************
5410 restore 6550
5420 for i=0 to 19
5430 read buf_good_couple1(i)
5440 next i
5450 restore 6560
5460 for j=0 to 19
5470 read buf_good_couple2(j)
5480 next j
5490 '*****************************************************
5500 '0.理解し合えるカップル ここまで                                   *
5510 '*****************************************************
5520 '*****************************************************
5530 '1.互いに自然体でつきあえる二人　ここから                               *
5540 '*****************************************************
5550 restore 6620
5560 for i=0 to 19
5570 read buf_natural_couple1(i)
5580 next i
5590 restore 6630
5600 for j=0 to 19
5610 read buf_natural_couple2(j)
5620 next j
5630 '*****************************************************
5640 '1.互いに自然体でつきあえる二人　ここまで                               *
5650 '*****************************************************
5660 '2        ここから                                       *
5670 '*****************************************************
5680 restore 6690
5690 for i=0 to 19
5700 read buf_good_for_man1(i)
5710 next i
5720 restore 6700
5730 for j=0 to 19
5740 read buf_good_for_man2(j)
5750 next j
5760 '******************************************************
5770 '2        ここまで                                        *
5780 '******************************************************
5790 '3        ここから                                        *
5800 '******************************************************
5810 restore 6760
5820 for i=0 to 19
5830 read buf_good_for_woman1(i)
5840 next i
5850 restore 6770
5860 for j=0 to 19
5870 read buf_good_for_woman2(j)
5880 next j
5890 '******************************************************
5900 '3        ここまで                                        *
5910 '******************************************************
5920 '4        ここから                                        *
5930 '******************************************************
5940 restore 6830
5950 for i=0 to 19
5960 read short_of_experience1(i)
5970 next i
5980 restore 6840
5990 for j=0 to 19
6000 read short_of_experience2(j)
6010 next j
6020 '******************************************************
6030 '4        ここまで                                        *
6040 '******************************************************
6050 '5.結婚への発展が困難なカップル  ここから                               *
6060 '******************************************************
6070 restore 6900
6080 for i=0 to 19
6090 read buf_difficult_for_couple1(i)
6100 next i
6110 restore 6910
6120 for j=0 to 19
6130 read buf_difficult_for_couple2(j)
6140 next j
6150 '******************************************************
6160 '5.結婚への発展が困難なカップル  ここまで                               *
6170 '******************************************************
6180 '6.愛し方にズレが出る二人 ここから                                   *
6190 '******************************************************
6200 restore 6970
6210 for i=0 to 19
6220 read buf_difference_of_love1(i)
6230 next i
6240 restore 6980
6250 for j=0 to 19
6260 read buf_difference_of_love2(j)
6270 next j
6280 '******************************************************
6290 '6.愛し方にズレが出る二人 ここまで                                   *
6300 '******************************************************
6310 '7.互いの価値観が噛み合わない相性 ここから                               *
6320 '******************************************************
6330 restore 7040
6340 for i=0 to 19
6350 read buf_difference_of_KachiKan1(i)
6360 next i
6370 restore 7050
6380 for j=0 to 19
6390 read buf_difference_of_KachiKan2(j)
6400 next j
6410 '******************************************************
6420 '7.互いの価値観が噛み合わない相性 ここまで                               *
6430 '******************************************************
6440 '相性占いタイプ ここから                                         *
6450 '******************************************************
6460 restore 7130
6470 for i=0 to 7
6480 read Result_Aisyou_type$(i)
6490 next i
6500 '****************************************************
6510 'Data文  ここから                                        *
6520 '****************************************************
6530 '0.理解し合えるカップル　ここから                                  *
6540 '****************************************************
6550 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
6560 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
6570 '****************************************************
6580 '0.理解し合えるカップル　ここまで                                  *
6590 '****************************************************
6600 '1.互いに自然体でつきあえるカップル ここから                            *
6610 '****************************************************
6620 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
6630 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
6640 '****************************************************
6650 '1.互いに自然体でつきあえるカップル　ここまで                            *
6660 '****************************************************
6670 '2.男性にとって居心地の良いカップル  ここから                           *
6680 '****************************************************
6690 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6700 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6710 '****************************************************
6720 '2男性にとって居心地の良いカップル ここまで                             *
6730 '****************************************************
6740 '3女性にとって居心地の良いカップル  ここから                            *
6750 '****************************************************
6760 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
6770 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
6780 '****************************************************
6790 '3女性にとって居心地の良いカップル  ここまで                            *
6800 '****************************************************
6810 '4恋愛経験を重ねた後なら愛を育める ここから                             *
6820 '****************************************************
6830 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6840 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6850 '****************************************************
6860 '4恋愛経験を重ねた後なら愛を育める ここまで                             *
6870 '****************************************************
6880 '5.結婚への発展が困難なカップル ここから                              *
6890 '****************************************************
6900 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6910 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6920 '****************************************************
6930 '5.結婚への発展が困難なカップル ここまで                              *
6940 '****************************************************
6950 '6.愛し方にズレが生じる二人  ここから                               *
6960 '****************************************************
6970 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
6980 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
6990 '****************************************************
7000 '6.愛し方にずれが生じる二人  ここまで                               *
7010 '****************************************************
7020 '7.互いに価値観が噛み合わない相性　ここから                             *
7030 '****************************************************
7040 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
7050 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
7060 '****************************************************
7070 '7.互いに価値観が噛み合わない相性 ここまで                             *
7080 '****************************************************
7090 '相性占い結果パターン ここから                                    *
7100 '****************************************************
7110 '0:理解し合える最良のカップル                                    *
7120 '****************************************************
7130 data "理解し合える最良のカップル"
7140 '****************************************************
7150 '1:互いに自然体で付き合えるカップル                                 *
7160 '****************************************************
7170 data "互いに自然体でつきあえるカップル"
7180 '****************************************************
7190 '2:男性にとって居心地の良い相性                                   *
7200 '****************************************************
7210 data "男性にとって居心地の良い相性"
7220 '****************************************************
7230 '3:女性にとって居心地の良い相性                                   *
7240 '****************************************************
7250 data "女性にとって居心地の良い相性"
7260 '****************************************************
7270 '4:恋愛経験を重ねた後なら愛を育める                                 *
7280 '****************************************************
7290 data "恋愛経験を重ねた後なら愛を育める"
7300 '****************************************************
7310 '5:結婚への発展が困難なカップル                                   *
7320 '****************************************************
7330 data "結婚への発展が困難なカップル"
7340 '****************************************************
7350 '6:愛し方にズレが生じる二人                                     *
7360 '****************************************************
7370 data "愛し方にずれが生じる二人"
7380 '****************************************************
7390 '7:互いに価値観が噛み合わない相性                                  *
7400 '****************************************************
7410 data "互いの価値観が噛み合わない相性"
7420 '************************************************
7430 'Data文   ここまで                                   *
7440 '************************************************
7450 '相性占い結果パターン ここまで
7460 '*******************************
7470 'メイン画面　ここから スタート (キーボードの選択)
7480 '*******************************
7490 '描画領域　ここから
7500 'Select_keybord:
7510 'talk ""
7520 'cls 3:font 48:No=0:y=0:key$="":bg=0:init"kb:4"
7530 'talk "キーボードの選択です。バーチャルキーボードを表示させますか？"
7540 'line (0,0)-(1200,60),rgb(0,0,255),bf
7550 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
7560 'line (0,60)-(1200,380),rgb(127,255,212),bf
7570 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
7580 'line (0,380)-(1200,450),rgb(0,255,0),bf
7590 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
7600 '描画領域　ここまで
7610 'Sprite
7620 'sp_on 0,1:sp_on 1,0:sp_on 2,0
7630 'sp_put 0,(10,100),0,0
7640 'sp_put 1,(10,200),1,0
7650 'sp_put 2,(10,300),2,0
7660 '設定画面 バーチャルキーボードの表示選択
7670 'color rgb(255,255,255)
7680 'print "●バーチャル キーボードの表示の選択" + chr$(13)
7690 'color rgb(255,0,255)
7700 'print " :1.バーチャルキーボードを表示する" + chr$(13)
7710 'print " :2.バーチャルキーボードを表示しない" + chr$(13)
7720 'print " :3.プログラムを終了する" + chr$(13)
7730 'color rgb(0,0,255)
7740 'print "バーチャルキーボードを表示するを選択"
7750 'Select_keybord2:
7760 'y=0:key$="":bg=0
7770 'while (key$ <> chr$(13) and key$ <> chr$(31) and y <> -1 and y <> 1 and bg <> 2)
7780 'y=stick(1)
7790 'key$=inkey$
7800 'bg=strig(1)
7810 'pause 3.56*100
7820 'wend
7830 '*****************************************************
7840 'カーソル下
7850 '*****************************************************
7860 'if (key$=chr$(31) or y=1) then
7870 'select case No
7880 'case 0:
7890 '       No=1:beep:locate 0,8:print "                      ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 0,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
7900 'case 1:
7910 '       No=2:beep:locate 0,8:print "                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 1,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7920 'case 2:
7930 '       No=0:beep:locate 0,8:print "                        ":locate 0,8:print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 2,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
7940 'end select
7950 'endif
7960 '***************************************************
7970 'カーソル上
7980 '***************************************************
7990 'if (y=-1 or key) then
8000 'select case No
8010 'case 0:
8020 '       No=2:beep:LOCATE 0,8:print "                                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 0,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
8030 'case 1:
8040 '       No=0:beep:locate 0,8:print "                                          ":locate 0,8:Print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 1,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
8050 'case 2:
8060 '       No=1:beep:locate 0,8:print "                                           ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
8070 'end select
8080 'endif
8090 'if (key$=chr$(13) or bg=2) then
8100 'select case No
8110 'case 0:
8120 '       init "kb:2":goto Main_Screen1:
8130 'case 1:
8140 '       init "kb:0":goto Main_Screen1:
8150 'case 2:
8160 '       talk"プログラムを終了します":ui_msg"プログラムを終了します":cls 3:cls 4:pause 2.34*100:color rgb(255,255,255):end
8170 'end select
8180 'endif
8190 '1:keybord_flag=1 きーボード表示
8200 'if val(a$) = 1 then init"kb:2":keyboard_flag=1:goto Main_Screen:
8210 '0:keybord_lag=0:キーボード非表示
8220 'if val(a$) = 2 then init"kb:0":keyboard_flag=0:goto Main_Screen:
8230 'keyNo=3 プログラム終了
8240 'if val(a$) = 3 then end
8250 'if val(a$) > 3 or val(a$)  = 0 then goto Select_keybord:
8260 'メイン画面 Top画面1
8270 Main_Screen1:
8280 cls 3:talk "":font 48:color rgb(255,255,255)
8290 talk "メイン画面です。番号を選んでください"
8300 'Text ,Grapgic clear:cls 3
8310 'グラフィック領域　ここから
8320 line (0,0)-(1080,60),rgb(0,0,255),bf
8330 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
8340 line (0,60)-(1080,560),rgb(127,255,212),bf
8350 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
8360 line (0,560)-(1080,740),rgb(0,255,0),bf
8370 'グラフィック領域 ここまで
8380 pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
8390 Font 48
8400 '************************************************
8410 'Sprite                                         *
8420 '************************************************
8430 sp_on 0,1:sp_on 1,0:sp_on 2,0
8440 sp_put 0,(10,100),0,0
8450 '************************************************
8460 No=0:init"kb:4":y=0:key$="":bg=0
8470 print "◎姓名判断　メイン画面" + chr$(13)
8480 '************************************************
8490 '文字色:黒                                          *
8500 '************************************************
8510 color rgb(255,0,255)
8520 print " :1.姓名判断" + chr$(13)
8530 print " :2.姓名判断の設定" + chr$(13)
8540 print " :3.個人データーリスト" + chr$(13)
8550 print " :4.ヘルプ" + chr$(13)
8560 print " :5.プログラムの終了" + chr$(13)
8570 'x=touch(4)
8580 'print"7.プログラム終了"+chr$(13)
8590 '*************************************************
8600 '文字:黒                                            *
8610 '*************************************************
8620 color rgb(0,0,0)
8630 locate 0,12
8640 print "1.姓名判断を選択" + chr$(13)
8650 Main_Screen2:
8660 y=0:key$="":bg=0
8670 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8680 y=stick(1)
8690 key$=inkey$
8700 bg=strig(1)
8710 pause 2.55*100
8720 wend
8730 '**************************************************
8740 '1.下のキー  ここから
8750 '**************************************************
8760 if (y = 1 or key$ = chr$(31)) then
8770 select case No
8780 case 0:
8790 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
8800 case 1:
8810 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
8820 case 2:
8830 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
8840 case 3:
8850 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8860 case 4:
8870 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
8880 end select
8890 endif
8900 '***************************************************
8910 '1. 下のキー　ここまで
8920 '***************************************************
8930 '***************************************************
8940 '2.上のキー ここから
8950 '***************************************************
8960 if (key$=chr$(30) or y=-1) then
8970 select case No
8980 case 0:
8990 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
9000 case 1:
9010 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9020 case 2:
9030 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9040 case 3:
9050 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9060 case 4:
9070 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9080 end select
9090 endif
9100 '***************************************************
9110 '3.決定ボタン ここから
9120 '***************************************************
9130 if (bg=2 or key$=chr$(13)) then
9140 select case No
9150 case 0:
9160 sp_on 0,0:goto seimeihandan_top:
9170 case 1:
9180 sp_on 1,0:goto seimeihandan_setting:
9190 case 2:
9200 sp_on 2,0:goto Parsonal_data_top:
9210 case 3:
9220 sp_on 3,0: goto help:
9230 case 4:
9240 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9250 end select
9260 endif
9270 '***************************************************
9280 '3.決定ボタン ここまで
9290 '***************************************************
9300 'No$=input$(1)
9310 'if val(No$) = 1  then goto seimeihandan_top:
9320 'if val(No$) = 2 then goto seimeihandan_setting:
9330 'if val(No$) = 3 then goto Parsonal_data_top:
9340 'if val(No$) = 4 then goto help:
9350 'if val(No$) = 5  then talk"終了します":cls 3:end
9360 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9370 'if No = "" then goto 7590
9380 '1.姓名判断トップ画面
9390 seimeihandan_top:
9400 cls:talk ""
9410 No=0:y=0:key$="":bg=0:talk""
9420 'タイトル文字:白
9430 font 48:color rgb(255,255,255),,rgb(176,196,222)
9440 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9450 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9460 sp_put 0,(10,100),0,0
9470 'グラフィック 描画領域　ここから
9480 'Main_Screen:
9490 cls 3
9500 '1.Title:青
9510 'Line 1
9520 line (0,0)-(1080,60),rgb(0,0,255),bf
9530 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
9540 'Line 2
9550 line (0,60)-(1080,450),rgb(127,255,212),bf
9560 PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
9570 'Line 3
9580 line (0,450)-(1080,600),rgb(0,255,0),bf
9590 pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
9600 'グラフィック 描画領域 ここまで
9610 color rgb(255,255,255)
9620 print"◎姓名判断の種類トップメニュー"+chr$(13)
9630 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9640 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9650 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9660 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9670 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9680 seimeihandan_top2:
9690 y=0:key$="":bg=0
9700 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9710 key$=inkey$
9720 y=stick(1)
9730 bg=strig(1)
9740 pause 2.55*100
9750 wend
9760 '*************************************************
9770 '下のキー  ここから
9780 '*************************************************
9790 if (key$=chr$(31) or y=1) then
9800 select case No
9810 case 0:
9820 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9830 case 1:
9840 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9850 case 2:
9860 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9870 case 3:
9880 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9890 end select
9900 endif
9910 '*************************************************
9920 '下のキー　ここまで
9930 '*************************************************
9940 if (key$=chr$(30) or y=-1) then
9950 select case No
9960 case 0:
9970 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9980 case 1:
9990 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
10000 case 2:
10010 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10020 case 3:
10030 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10040 end select
10050 endif
10060 '*************************************************
10070 '決定ボタン　ここから
10080 '*************************************************
10090 if (bg=2 or key$=chr$(13)) then
10100 select case No
10110 case 0:
10120 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10130 case 1:
10140 sp_on 1,0:goto Anzai_Top:
10150 case 2:
10160 sp_on 2,0:goto Kyusei_Top:
10170 case 3:
10180 sp_on 3,0:goto Main_Screen1:
10190 end select
10200 endif
10210 '*************************************************
10220 '決定ボタン　ここまで
10230 '*************************************************
10240 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10250 'if val(selectNo$)=2 then goto Anzai_Top:
10260 'if val(selectNo$)=3 then goto Kyusei_Top:
10270 'if val(selectNo$)=4 then goto Main_Screen1:
10280 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10290 '１．姓名判断(九星姓名判断トップ)
10300 'グラフィック領域　ここから
10310 Kyusei_Top:
10320 cls 3:No=0:y=0:bg=0:key$="":talk""
10330 sp_on 0,1:sp_put 0,(10,100),0,0
10340 line (0,0)-(1080,60),rgb(0,0,250),bf
10350 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
10360 line (0,60)-(1080,460),rgb(127,255,212),bf
10370 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
10380 line (0,460)-(1080,680),rgb(0,255,0),bf
10390 pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
10400 'グラフィック領域　ここまで
10410 font 48:color rgb(255,255,255),,rgb(176,196,222)
10420 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10430 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10440 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10450 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10460 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10470 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10480 locate 0,10:color RGB(0,0,0)
10490 print "1.人名の吉凶を見るを選択"
10500 Kyusei_Top2:
10510 bg=0:key$="":y=0
10520 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10530 key$=inkey$
10540 y=stick(1)
10550 bg=strig(1)
10560 pause 2.50*100
10570 wend
10580 '****************************************************
10590 '下のキー　ここから
10600 '*****************************************************
10610 if (y=1 or key$=chr$(30)) then
10620 select case No
10630 case 0:
10640 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10650 case 1:
10660 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10670 case 2:
10680 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10690 case 3:
10700 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10710 end select
10720 endif
10730 '*****************************************************
10740 '下のキー　ここまで
10750 '*****************************************************
10760 '*****************************************************
10770 '上のキー　ここから
10780 '*****************************************************
10790 if (y=-1 or key$=chr$(31)) then
10800 select case No
10810 case 0:
10820 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10830 case 1:
10840 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10850 case 2:
10860 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10870 case 3:
10880 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10890 end select
10900 endif
10910 '*****************************************************
10920 '上のキー　ここまで
10930 '*****************************************************
10940 '*****************************************************
10950 '決定ボタン　ここから
10960 '*****************************************************
10970 if (key$=chr$(13) or bg=2) then
10980 select case No
10990 case 0:
11000 sp_on 0,0:goto Parson_name_kikkyo:
11010 case 1:
11020 sp_on 1,0:goto nick_name_check:
11030 case 2:
11040 sp_on 2,0:goto name_inyo_check:
11050 case 3:
11060 sp_on 3,0:goto seimeihandan_top:
11070 end select
11080 endif
11090 '*****************************************************
11100 '決定ボタン　ここまで
11110 '*****************************************************
11120 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
11130 'color rgb(0,0,0):Input "番号:",selectNo
11140 'selectNo=Input$(1)
11150 'if selectNo = 1 then goto Parson_name_kikkyo
11160 'if selectNo = 2 then goto nick_name_check:
11170 'if selectNo = 3 then goto name_inyo_check:
11180 'if selectNo = 4  then goto seimeihandan_top:
11190 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11200 '2.姓名判断 安斎流姓名判断　トップ画面
11210 '2-1名前の姓の部分を入力
11220 'グラフィック領域　ここから
11230 Anzai_Top_Screen:
11240 cls 3:LINE (0,0)-(1080,60),rgb(0,0,255),bf
11250 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
11260 line (0,60)-(1080,260),rgb(127,255,212),bf
11270 pen 5:line(0,57)-(1077,257),rgb(0,0,255),b
11280 line (0,260)-(1080,350),rgb(0,255,0),bf
11290 pen 5:line(0,257)-(1077,347),rgb(0,0,255),b
11300 font 48:talk"":init"KB:2"
11310 'グラフィック領域 ここまで
11320 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11330 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11340 COLOR rgb(255,0,255)
11350 print"名前を2回に分けて入力してください"+chr$(13)
11360 print"名前の姓の部分を入れてください"+chr$(13)
11370 color rgb(0,0,0)
11380 input"名前の姓:",bufname$
11390 buff1=len(bufname$)
11400 '2-2名前の名の部分を入力
11410 'グラフィック描画領域　ここから
11420 cls 3:init"kb:2"
11430 line (0,0)-(1080,60),rgb(0,0,255),bf
11440 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
11450 line (0,60)-(1080,200),rgb(127,255,212),bf
11460 pen 5:line(0,57)-(1077,197),rgb(0,0,255),b
11470 line (0,200)-(1080,260),rgb(0,255,0),bf
11480 pen 5:line(0,197)-(1077,257),rgb(0,0,255),b
11490 'グラフィック描画領域 ここまで
11500 COLOR rgb(255,255,255)
11510 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11520 talk"つぎに、名前のめいの部分を入れてください"
11530 color rgb(255,0,255)
11540 print"名前の名の部分を入れてください"+chr$(13)
11550 color rgb(0,0,0)
11560 input"名前の名:",bufname2$
11570 buff2=len(bufname2$)
11580 bufff=buff1+buff2
11590 'goto 24620
11600 select case bufff
11610 '姓1文字,名1文字
11620 case 2:
11630 cls
11640 '天運:buf_tenunn
11650 buf_tenunn=char_count(bufname$)
11660 '地運:buf_chiunn
11670 buf_chiunn=char_count(bufname2$)
11680 '人運 = 天運 + 地運
11690 buf_jinunn=buf_tenunn + buf_chiunn
11700 '外運 = 天運 + 人運
11710 buf_gaiunn = buf_tenunn + buf_chiunn
11720 '総数=buf_gaiunn
11730 buf_total=buf_gaiunn
11740 goto Result_Anzai:
11750 '姓１，名:2
11760 case 3:
11770 cls:
11780 if buff1=1 and buff2=2 then
11790 '1.天運:buf_tenunn
11800 buf_tenunn=char_count(bufname$)
11810 '2文字目の文字
11820 bufer_name2$(0)=Mid$(bufname2$,1,1)
11830 '3文字目の文字
11840 bufer_name2$(1)=Mid$(bufname2$,2,1)
11850 '2.人運
11860 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11870 '3.地運:buf_chiunn
11880 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11890 '4外運:buf_gaiunn
11900 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11910 '5.総数:buf_total
11920 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11930 goto Result_Anzai:
11940 endif
11950 if buff1=2 and buff2=1 then
11960 bufer_name$(0)=Mid$(bufname$,1,1)
11970 bufer_name$(1)=Mid$(bufname$,2,1)
11980 bufer_name2$(0)=Mid$(bufname$,1,1)
11990 '1.天運
12000 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12010 '2.人運
12020 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12030 '3.地運
12040 buf_chiunn=char_count(bufer_name2$(0))
12050 '4.外運
12060 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12070 '5.総数
12080 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12090 goto Result_Anzai:
12100 endif
12110 case 4:
12120 if buff1=2 and buff2=2 then
12130 bufer_name$(0)=Mid$(bufname$,1,1)
12140 bufer_name$(1)=Mid$(bufname$,2,1)
12150 bufer_name2$(0)=Mid$(bufname2$,1,1)
12160 bufer_name2$(1)=Mid$(bufname2$,2,1)
12170 '1.天運
12180 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12190 '2.人運
12200 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12210 '3.地運
12220 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12230 '4.外運
12240 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12250 '5.総数
12260 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12270 goto Result_Anzai:
12280 endif
12290 'パターン2 姓3文字 名1文字 total4文字
12300 if buff1=3 and buff2=1 then
12310 bufer_name$(0)=Mid$(bufname$,1,1)
12320 bufer_name$(1)=Mid$(bufname$,2,1)
12330 bufer_name$(2)=Mid$(bufname$,3,1)
12340 bufer_name2$(0)=Mid$(bufname2$,1,1)
12350 '1.天運
12360 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12370 '2.人運
12380 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12390 '3.地運
12400 buf_chiunn=char_count(bufer_name2$(0))
12410 '4.外運
12420 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12430 '5.総運
12440 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12450 goto Result_Anzai:
12460 endif
12470 'パターン３ 姓1,名３  合計４文字
12480 if buff1=1 and buff2=3 then
12490 bufer_name$(0)=Mid$(bufname$,1,1)
12500 bufer_name2$(0)=Mid$(bufname2$,1,1)
12510 bufer_name2$(1)=Mid$(bufname2$,2,1)
12520 bufer_name2$(2)=Mid$(bufname2$,3,1)
12530 '1.天運
12540 buf_tenunn = char_count(bufer_name$(0))
12550 '2.人運
12560 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12570 '3.地運
12580 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12590 '4.外運
12600 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12610 '5.総運
12620 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12630 goto Result_Anzai:
12640 endif
12650 case 5:
12660 '５文字の名前
12670 '1.  3文字姓 2字名
12680 if buff1=3 and buff2=2 then
12690 bufer_name$(0)=Mid$(bufname$,1,1)
12700 bufer_name$(1)=Mid$(bufname$,2,1)
12710 bufer_name$(2)=Mid$(bufname$,3,1)
12720 bufer_name2$(0)=Mid$(bufname2$,1,1)
12730 bufer_name2$(1)=Mid$(bufname2$,2,1)
12740 '1.天運
12750 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12760 '2.人運
12770 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12780 '3.地運
12790 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12800 '4.外運
12810 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12820 '5.総運
12830 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12840 goto Result_Anzai:
12850 endif
12860 if buff1=2 and buff2=3 then
12870 bufer_name$(0)=Mid$(bufname$,1,1)
12880 bufer_name$(1)=Mid$(bufname$,2,1)
12890 bufer_name2$(0)=Mid$(bufname2$,1,1)
12900 bufer_name2$(1)=Mid$(bufname2$,2,1)
12910 bufer_name2$(2)=Mid$(bufname2$,3,1)
12920 '1.天運
12930 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12940 '2.人運
12950 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12960 '3.地運
12970 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12980 '4.外運
12990 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13000 '5.総運
13010 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13020 goto Result_Anzai:
13030 endif
13040 if buff1=4 and buff2=1 then
13050 bufer_name$(0)=Mid$(bufname$,1,1)
13060 bufer_name$(1)=mid$(bufname$,2,1)
13070 bufer_name$(2)=mid$(bufname$,3,1)
13080 bufer_name$(3)=mid$(bufname$,4,1)
13090 bufer_name2$(0)=mid$(bufname2$,1,1)
13100 '1.天運
13110 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13120 '2.人運
13130 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13140 '3.地運
13150 buf_chiunn=char_count(bufer_name2$(0))
13160 '4.外運
13170 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13180 '5.総運
13190 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13200 goto Result_Anzai:
13210 endif
13220 case 6:
13230 '3字姓 3字名
13240 if buff1=3 and buff2=3 then
13250 bufer_name$(0)=Mid$(bufname$,1,1)
13260 bufer_name$(1)=Mid$(bufname$,2,1)
13270 bufer_name$(2)=Mid$(bufname$,3,1)
13280 bufer_name2$(0)=Mid$(bufname2$,1,1)
13290 bufer_name2$(1)=Mid$(bufname2$,2,1)
13300 bufer_name2$(2)=Mid$(bufname2$,3,1)
13310 '1.天運
13320 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13330 '2.人運
13340 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13350 '3.地運
13360 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13370 '4.外運
13380 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13390 '5.総運
13400 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13410 goto Result_Anzai:
13420 endif
13430 '4字姓 2字名
13440 if buff1=4 and buff2=2 then
13450 bufer_name$(0)=Mid$(bufname$,1,1)
13460 bufer_name$(1)=Mid$(bufname$,2,1)
13470 bufer_name$(2)=Mid$(bufname$,3,1)
13480 bufer_name$(3)=Mid$(bufname$,4,1)
13490 bufer_name2$(0)=Mid$(bufname2$,1,1)
13500 bufer_name2$(1)=Mid$(bufname2$,2,1)
13510 '1.天運
13520 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13530 '2.人運
13540 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13550 '3.地運
13560 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13570 '4.外運
13580 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13590 '5.総運
13600 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13610 goto Result_Anzai:
13620 endif
13630 '4字姓 3字名
13640 case 7:
13650 if buff1=4 and buff2=3 then
13660 bufer_name$(0)=Mid$(bufname$,1,1)
13670 bufer_name$(1)=Mid$(bufname$,2,1)
13680 bufer_name$(2)=Mid$(bufname$,3,1)
13690 bufer_name$(3)=Mid$(bufname$,4,1)
13700 bufer_name2$(0)=Mid$(bufname2$,1,1)
13710 bufer_name2$(1)=Mid$(bufname2$,2,1)
13720 bufer_name2$(2)=Mid$(bufname2$,3,1)
13730 '1.天運
13740 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13750 '2.人運
13760 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13770 ' 3.地運
13780 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13790 '4.外運
13800 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13810 '5.総運
13820 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13830 goto Result_Anzai:
13840 endif
13850 case else:
13860 end select
13870 '2.設定
13880 seimeihandan_setting:
13890 font 46:color rgb(0,0,0),,rgb(176,196,222)
13900 No=0:y=0:key$="":bg=0:talk""
13910 sp_on 0,1:sp_put 0,(10,100),0,0
13920 talk"設定画面です。番号を選んでエンターキーを押してください"
13930 'グラフィック領域　ここから
13940 cls 3:
13950 line (0,0)-(1080,60),rgb(0,0,255),bf
13960 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
13970 line (0,60)-(1080,560),rgb(127,255,212),bf
13980 pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
13990 line (0,560)-(1080,750),rgb(0,255,0),bf
14000 pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
14010 'グラフィック領域 ここまで
14020 '1行目　文字色　 白
14030 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14040 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14050 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14060 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14070 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14080 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14090 COLOR rgb(0,0,0):locate 0,12:
14100 print"1.登録文字の確認を選択"+chr$(13)
14110 seimeihandan_setting2:
14120 y=0:key$="":bg=0
14130 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14140 key$=inkey$
14150 y=stick(1)
14160 bg=strig(1)
14170 pause 2.50*100
14180 wend
14190 '****************************************************
14200 '1.下のカーソル　ここから
14210 '****************************************************
14220 if (key$=chr$(31) or y=1) then
14230 select case No
14240 case 0:
14250 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14260 case 1:
14270 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14280 case 2:
14290 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14300 case 3:
14310 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14320 case 4:
14330 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14340 end select
14350 endif
14360 '*****************************************************
14370 '1.下のカーソル　ここまで
14380 '*****************************************************
14390 '*****************************************************
14400 '2.上のカーソル　ここから
14410 '*****************************************************
14420 if (key$=chr$(30) or y=-1) then
14430 select case No
14440 case 0:
14450 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14460 case 1:
14470 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14480 case 2:
14490 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14500 case 3:
14510 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14520 case 4:
14530 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14540 end select
14550 endif
14560 '******************************************************
14570 '2.上のカーソル　ここまで
14580 '******************************************************
14590 '******************************************************
14600 '3.決定ボタン　ここから
14610 '******************************************************
14620 if (key$=chr$(13) or bg=2) then
14630 select case No
14640 case 0:
14650 sp_on 0,0:goto Entry_moji_Top:
14660 case 1:
14670 sp_on 1,0:goto Entry_moji_check:
14680 case 2:
14690 sp_on 2,0:goto Moji_Kikkyo_Top:
14700 case 3:
14710 sp_on 3,0:goto Main_Screen1:
14720 case 4:
14730 sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14740 end select
14750 endif
14760 '******************************************************
14770 '3.決定ボタン　ここまで
14780 '******************************************************
14790 'Input"番号:",selectNo
14800 'if selectNo=1 then goto Entry_moji_Top:
14810 'if selectNo=2 then goto Entry_moji_check:
14820 'if selectNo=3 then goto Moji_Kikkyo_Top:
14830 'if selectNo=4 then goto Main_Screen1:
14840 'if selectNo=5 then talk"終了します":cls 3:end
14850 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
14860 '3 番号で吉凶を見る 入力
14870 Moji_Kikkyo_Top:
14880 font 46:color rgb(0,0,0),,rgb(176,196,222)
14890 init "kb:2"
14900 'グラフィック描画領域　ここから
14910 cls 3:talk""
14920 line (0,0)-(1080,60),rgb(0,0,255),bf
14930 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
14940 line (0,60)-(1080,255),rgb(127,255,212),bf
14950 PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
14960 line (0,255)-(1080,350),rgb(0,255,0),bf
14970 pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
14980 'グラフィック描画領域 ここまで
14990 color rgb(255,255,255)
15000 print"画数での吉凶判定"+chr$(13)
15010 color rgb(255,0,255)
15020 print"画数を入れてください"+chr$(13)
15030 print"(Max:81文字)"+chr$(13)
15040 color rgb(0,0,0)
15050 Input"文字の画数:",Number
15060 if Number > 81 then goto Moji_Kikkyo_Top:
15070 if Number <=81 then goto Moji_Kikkyo:
15080 '3.番号で吉凶を見る 結果表示
15090 'グラフィック描画領域　ここから
15100 Moji_Kikkyo:
15110 cls 3:init "kb:4":key$="":bg=0
15120 line (0,0)-(700,60),rgb(0,0,255),bf
15130 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15140 line (0,60)-(700,260),rgb(127,255,212),bf
15150 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15160 line (0,260)-(700,350),rgb(0,255,0),bf
15170 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15180 'グラフィック描画領域　ここまで
15190 color rgb(255,255,255)
15200 print "画数で吉凶を求める"+chr$(13)
15210 color rgb(255,0,255)
15220 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15230 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15240 'endif
15250 'color rgb(0,0,0)
15260 'print"エンターキーを押してください"
15270 'key$=Input$(1)
15280 while (key$<>chr$(13) and bg <> 2)
15290 key$=inkey$
15300 bg=strig(1)
15310 pause 2.50*100
15320 wend
15330 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15340 '3.ヘルプ
15350 help:
15360 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15370 No=0:y=0:key$="":bg=0
15380 talk""
15390 '描画領域 ここから
15400 line (0,0) - (1080,60),rgb(0,0,255),bf
15410 sp_on 0,1:sp_put 0,(10,100),0,0
15420 pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
15430 line (0,60) - (1080,570),rgb(127,255,212),bf
15440 pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
15450 line (0,570) - (1080,650),rgb(0,255,0),bf
15460 pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
15470 '描画領域　ここまで
15480 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15490 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15500 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15510 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15520 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15530 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
15540 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15550 color rgb(0,0,0)
15560 locate 0,12:print "1.バージョン情報を選択"
15570 'color rgb(0,0,0):Input"番号:",selectNo
15580 help2:
15590 y=0:key$="":bg=0
15600 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15610 key$=inkey$
15620 y=stick(1)
15630 bg=strig(1)
15640 pause 2.50*100
15650 wend
15660 if (y=1 or key$=chr$(30)) then
15670 select case No
15680 case 0:
15690 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15700 case 1:
15710 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15720 case 2:
15730 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15740 case 3:
15750 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15760 case 4:
15770 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15780 end select
15790 endif
15800 if (y=-1 or key$=chr$(31)) then
15810 select case No
15820 case 0:
15830 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15840 case 1:
15850 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15860 case 2:
15870 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15880 case 3:
15890 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15900 case 4:
15910 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15920 end select
15930 endif
15940 if (key$=chr$(13) or bg=2) then
15950 select case No
15960 case 0:
15970 sp_on 0,0:goto Version_info:
15980 case 1:
15990 sp_on 1,0:goto Document_info:
16000 case 2:
16010 sp_on 2,0:goto Config_Setting:
16020 case 4:
16030 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16040 case 3:
16050 sp_on 3,0:goto Main_Screen1:
16060 end select
16070 endif
16080 'if selectNo = 1 then goto Version_info:
16090 'if selectNo = 2 then goto Document_info:
16100 'if selectNo = 3 then goto Config_Setting:
16110 'プログラムの終了
16120 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
16130 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
16140 '前の画面に戻る
16150 'if selectNo=5 then goto Main_Screen1:
16160 'if selectNo > 4 or selectNo = 0 then goto help:
16170 'Menu1　画面
16180 talk"調べたい名前のみよじをいれてください"
16190 'グラフィック描画領域　ここから
16200 Parson_name_kikkyo:
16210 cls 3:init "KB:2"
16220 line (0,0)-(1080,60),rgb(0,0,255),bf
16230 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
16240 line (0,60)-(1080,180),rgb(127,255,212),bf
16250 pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
16260 line (0,180)-(1080,250),rgb(0,255,0),bf
16270 pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
16280 'グラフィック描画領域　ここまで
16290 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16300 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16310 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16320 cls
16330 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16340 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16350 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16360 goto complate_Kyusei:
16370 'メニュー6　バージョン表示
16380 'グラフィック　描画　領域　 ここから
16390 Version_info:
16400 cls 3:bg=0:talk ""
16410 line (0,0)-(1080,60),rgb(0,0,255),bf
16420 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
16430 line (0,60)-(1080,665),rgb(127,255,212),bf
16440 pen 5:line(0,57)-(1077,662),rgb(0,0,255),b
16450 line (0,665)-(1080,750),rgb(0,255,0),bf
16460 pen 5:line(0,662)-(1077,747),rgb(0,0,255),b
16470 'グラフィック　描画 領域　 ここまで
16480 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16490 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16500 color rgb(255,0,255):PRINT"Ver:236.2024.11.02" + chr$(13)
16510 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16520 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16530 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16540 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16550 'ここを書き換える
16560 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.36です"
16570 color rgb(0,0,0):print"エンターキーを押してください"
16580 Version_info2:
16590 bg=0
16600 while (bg<>2)
16610 bg=strig(1)
16620 pause 2.50*100
16630 wend
16640 if bg = 2  then beep:goto Main_Screen1:
16650 complate_Kyusei:
16660 '文字数を求める変数
16670 buf_char_size=len(name$)
16680 buf_char_size2=len(name2$)
16690 '入力した文字を代入する変数
16700 '入力した文字を配列に代入する処理
16710 '姓名判断データー文字比較
16720 '画数を求める関数
16730 func char_count(buf_count$)
16740 count=0:buffer=0
16750 '1画の文字 23文字
16760 for j=0 to ((Moji_1)-1)
16770 if buf_count$=buf_char_hiragana1$(j) then
16780 count =1:
16790 endif
16800 next j
16810 '2画の文字
16820 for j=0 to ((Moji_2)-1)
16830 if buf_count$=buf_char_hiragana2$(j)  then
16840 count = 2:
16850 endif
16860 next j
16870 for j=0 to ((Moji_3)-1)
16880 if buf_count$=buf_char_hiragana3$(j) then
16890 count =3:
16900 endif
16910 next j
16920 for j=0 to ((Moji_4)-1)
16930 if buf_count$=buf_char_hiragana4$(j) then
16940 count = 4:
16950 endif
16960 next j
16970 for j=0 to ((Moji_5)-1)
16980 if buf_count$=buf_char_hiragana5$(j) then
16990 count = 5:
17000 endif
17010 next j
17020 for j=0 to ((Moji_6)-1)
17030 if buf_count$=buf_char_hiragana6$(j) then
17040 count= 6
17050 endif
17060 next j
17070 for  j=0 to ((Moji_7)-1)
17080 if buf_count$=buf_char_hiragana7$(j) then
17090 count=  7
17100 endif
17110 next j
17120 for j=0 to ((Moji_8)-1)
17130 if buf_count$=buf_char_hiragana8$(j) then
17140 count= 8
17150 endif
17160 next j
17170 for j=0 to ((Moji_9)-1)
17180 if buf_count$=buf_char_hiragana9$(j) then
17190 count=9
17200 endif
17210 next j
17220 for j=0 to ((Moji_10)-1)
17230 if buf_count$=buf_char_hiragana10$(j) then
17240 count=10
17250 endif
17260 next j
17270 for j=0 to ((Moji_11)-1)
17280 if buf_count$=buf_char_hiragana11$(j) then
17290 count=11
17300 endif
17310 next j
17320 for j=0 to  ((Moji_12)-1)
17330 if buf_count$=buf_char_hiragana12$(j) then
17340 count=12
17350 endif
17360 next j
17370 for j=0 to ((Moji_13)-1)
17380 if buf_count$=buf_char_hiragana13$(j) then
17390 count=13
17400 endif
17410 next j
17420 for j=0 to ((Moji_14)-1)
17430 if buf_count$=buf_char_hiragana14$(j) then
17440 count=14
17450 endif
17460 next j
17470 for j=0 to ((Moji_15)-1)
17480 if buf_count$=buf_char_hiragana15$(j) then
17490 count=15
17500 endif
17510 next j
17520 for j=0 to ((Moji_16)-1)
17530 if buf_count$=buf_char_hiragana16$(j) then
17540 count=16
17550 endif
17560 next j
17570 for j=0 to ((Moji_17)-1)
17580 if buf_count$=buf_char_hiragana17$(j) then
17590 count=17
17600 endif
17610 next j
17620 for j=0 to ((Moji_18)-1)
17630 if buf_count$=buf_char_hiragana18$(j) then
17640 count=18
17650 endif
17660 next j
17670 for j=0 to ((Moji_19)-1)
17680 if buf_count$=buf_char_hiragana19$(j) then
17690 count=19
17700 endif
17710 next j
17720 for j=0 to ((Moji_20)-1)
17730 if buf_count$=buf_char_hiragana20$(j) then
17740 count=20
17750 endif
17760 next i
17770 for j=0 to ((Moji_21)-1)
17780 if buf_count$=buf_char_hiragana21$(j) then
17790 count=21
17800 endif
17810 next j
17820 for j=0 to ((Moji_22)-1)
17830 if buf_count$=buf_char_hiragana22$(j) then
17840 count=22
17850 endif
17860 next j
17870 for j=0 to ((Moji_23)-1)
17880 if buf_count$=buf_char_hiragana23$(j) then
17890 count=23
17900 endif
17910 next j
17920 for j=0 to ((Moji_24)-1)
17930 if buf_count$=buf_char_hiragana24$(j) then
17940 count=24
17950 endif
17960 buffer = count
17970 next j
17980 endfunc buffer
17990 func show_sex_type$(sex$)
18000 buf_number=val(Mid$(sex$,4,1))
18010 if buf_number = 1 then
18020 buf_show_sex_type$="性別:女性"
18030 else
18040 if buf_number=2 then
18050 buf_show_sex_type$="性別:男性"
18060 endif
18070 endif
18080 endfunc buf_show_sex_type$
18090 '合計を求める関数
18100 func totalcounts(buffers$)
18110 buffers=0:
18120 for i=0 to len(buffers$)-1
18130 buffers=buffers+char_count(buffers$)
18140 next i
18150 endfunc buffers
18160 buf_count2=0:buf_count3=0
18170 'dim buf_Input_data$(len(name$))
18180 '1.苗字の文字数
18190 for n=0 to (buf_char_size-1)
18200 buf_Input_data$(n)=mid$(name$,n+1,1)
18210 next n
18220 for i=0 to (buf_char_size-1)
18230 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18240 next i
18250 '2.名の文字数
18260 for n2=0 to (buf_char_size2-1)
18270 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18280 next n2
18290 for i2=0 to (buf_char_size2-1)
18300 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18310 next i2
18320 '総数を出す
18330 select case (buf_char_size + buf_char_size2)
18340 case 6:
18350 if ((buf_char_size=4) and (buf_char_size2=2)) then
18360 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18370 endif
18380 if ((buf_char_size=3) and (buf_char_size2=3)) then
18390 if buf_Input_data$(1)="々" then
18400 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18410 else
18420 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18430 endif
18440 endif
18450 case 5:
18460 if ((buf_char_size=4) and (buf_char_size2=1)) then
18470 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18480 endif
18490 if ((buf_char_size=2) and (buf_char_size2=3)) then
18500 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18510 endif
18520 if ((buf_char_size=3) and (buf_char_size2=2)) then
18530 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18540 endif
18550 case 4:
18560 if ((buf_char_size=1) and (buf_char_size2=3)) then
18570 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18580 endif
18590 if ((buf_char_size=2) and (buf_char_size2=2)) then
18600 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18610 endif
18620 if ((buf_char_size=3) and (buf_char_size2=1)) then
18630 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18640 endif
18650 case 3:
18660 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18670 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18680 endif
18690 if ((buf_char_size=2) and (buf_char_size2=1)) then
18700 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18710 endif
18720 case 2:
18730 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18740 case else:
18750 end select
18760 '文字の総数をだす
18770 total_name$ = name$ + name2$
18780 '1.姓星を求める
18790 select case buf_char_size
18800 '苗字1文字のとき
18810 case 1:
18820 buf_seisei = char_count(buf_Input_data$(0)) + 1
18830 '苗字2文字の時
18840 case 2:
18850 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18860 '苗字3文字のとき
18870 case 3:
18880 if (buf_Input_data$(1)="々")  then
18890 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18900 else
18910 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18920 endif
18930 '苗字4文字のとき
18940 case 4:
18950 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18960 case else:
18970 end select
18980 '2.主星をだす
18990 '2.主星
19000 select case (buf_char_size + buf_char_size2)
19010 '姓名5文字のとき
19020 case 6:
19030 if ((buf_char_size=4) and (buf_char_size2=2)) then
19040 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19050 endif
19060 if ((buf_char_size=3) and (buf_char_size2=3)) then
19070 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19080 endif
19090 case 5:
19100 if ((buf_char_size=4) and (buf_char_size2=1)) then
19110 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19120 endif
19130 if ((buf_char_size=2) and (buf_char_size2=3)) then
19140 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19150 endif
19160 if ((buf_char_size=3) and (buf_char_size2=2)) then
19170 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19180 endif
19190 '姓名4文字のとき
19200 case 4:
19210 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19220 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19230 endif
19240 if ((buf_char_size=1) and (buf_char_size2=3)) then
19250 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19260 endif
19270 if ((buf_char_size=3) and (buf_char_size2=1)) then
19280 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19290 endif
19300 '姓名3文字のとき
19310 case 3:
19320 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19330 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19340 else
19350 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19360 endif
19370 case 2:
19380 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19390 case else:
19400 end select
19410 '3.名星を求める
19420 select case (buf_char_size + buf_char_size2)
19430 case 6:
19440 if ((buf_char_size=3) and (buf_char_size2=3)) then
19450 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19460 endif
19470 if ((buf_char_size=4) and (buf_char_size2=2)) then
19480 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19490 endif
19500 case 5:
19510 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19520 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19530 endif
19540 if ((buf_char_size=3) and (buf_char_size2=2)) then
19550 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19560 endif
19570 if ((buf_char_size=2) and (buf_char_size2=3))  then
19580 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19590 endif
19600 case 4:
19610 if ((buf_char_size=2) and (buf_char_size2=2)) then
19620 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19630 endif
19640 if ((buf_char_size=1) and (buf_char_size2=3)) then
19650 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19660 endif
19670 if ((buf_char_size=3) and (buf_char_size2=1)) then
19680 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19690 endif
19700 case 3:
19710 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19720 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19730 endif
19740 if ((buf_char_size=2) and (buf_char_size2=1)) then
19750 buf_meisei=char_count(buf_Input_data2$(0))+1
19760 endif
19770 case 2:
19780 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19790 case else:
19800 end select
19810 '4.外星を求める
19820 select case (buf_char_size + buf_char_size2)
19830 case 6:
19840 if buf_Input_data$(1)="々"  then
19850 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19860 else
19870 if ((buf_char_size=4) and (buf_char_size2=2)) then
19880 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19890 else
19900 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19910 endif
19920 endif
19930 case 5:
19940 if ((buf_char_size=4) and (buf_char_size2=1)) then
19950 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19960 endif
19970 if ((buf_char_size=3) and (buf_char_size2=2)) then
19980 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19990 endif
20000 if ((buf_char_size=2) and (buf_char_size2=3)) then
20010 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20020 endif
20030 case 4:
20040 if ((buf_char_size=2) and (buf_char_size2=2)) then
20050 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20060 endif
20070 if ((buf_char_size=1) and (buf_char_size2=3)) then
20080 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20090 endif
20100 if ((buf_char_size=3) and (buf_char_size2=1)) then
20110 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20120 endif
20130 case 3:
20140 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20150 buf_gaisei=1+char_count(buf_Input_data2$(1))
20160 endif
20170 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20180 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20190 endif
20200 case 2:
20210 buf_gaisei = 2
20220 case else:
20230 end select
20240 '診断結果表示
20250 '1.姓星を出す
20260 'グラフィック描画領域　ここから
20270 Result_Kyusei_Kikkyo:
20280 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20290 '縦の画面
20300 '1行目
20310 line (0,0)-(1500,60),rgb(0,0,255),bf
20320 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20330 '2行目
20340 line (0,60)-(1500,425),rgb(127,255,212),bf
20350 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20360 '3行目
20370 line (0,485)-(1500,425),rgb(0,255,0),bf
20380 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20390 '横の画面　吉凶のランク表
20400 'グラフィック描画領域　ここまで
20410 talk"診断結果です":font 32
20420 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20430 color Rgb(255,0,255)
20440 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20450 '2.主星を出す
20460 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20470 '3.名星を求める
20480 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20490 '4.外星を求める
20500 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20510 '5.総数を出す
20520 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20530 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20540 color rgb(0,0,0)
20550 print"エンターキーを押してください"
20560 while (key$ <> chr$(13) and bg <> 2)
20570 key$=inkey$
20580 bg=strig(1)
20590 pause 2.50*100
20600 wend
20610 'key$=Input$(1)
20620 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20630 '2.主星を出す
20640 'メニュー3 登録文字の確認 ここから
20650 'グラフィック領域　ここから
20660 'タイトル青 文字:白
20670 Entry_moji_Top:
20680 talk ""
20690 cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
20700 pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
20710 line (0,62)-(1080,155),rgb(0,255,255),bf
20720 pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
20730 line (0,155)-(1080,260),rgb(0,255,0),bf
20740 pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
20750 'グラフィック領域　ここまで
20760 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20770 '文字:白
20780 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20790 '文字:アクア
20800 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20810 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20820 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20830 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20840 '1画の文字
20850 for i=0 to ((Moji_1)-1)
20860 if (name$=buf_char_hiragana1$(i)) then
20870 buffer_count=1:goto Moji_count_check:
20880 endif
20890 next i
20900 '2画の文字
20910 for i=0 to ((Moji_2)-1)
20920 if (name$=buf_char_hiragana2$(i)) then
20930 buffer_count=2:goto Moji_count_check:
20940 endif
20950 next i
20960 '3画の文字
20970 for i=0 to ((Moji_3)-1)
20980 if (name$=buf_char_hiragana3$(i)) then
20990 buffer_count=3:goto Moji_count_check:
21000 endif
21010 next i
21020 '4画の文字
21030 for i=0 to ((Moji_4)-1)
21040 if (name$=buf_char_hiragana4$(i)) then
21050 buffer_count=4:goto Moji_count_check:
21060 endif
21070 next i
21080 '5画の文字
21090 for i=0 to ((Moji_5)-1)
21100 if (name$=buf_char_hiragana5$(i)) then
21110 buffer_count=5:goto Moji_count_check:
21120 endif
21130 next i
21140 '6画の文字
21150 for i=0 to ((Moji_6)-1)
21160 if (name$=buf_char_hiragana6$(i)) then
21170 buffer_count=6:goto Moji_count_check:
21180 endif
21190 next i
21200 '7画の文字
21210 for i=0 to ((Moji_7)-1)
21220 if (name$=buf_char_hiragana7$(i)) then
21230 buffer_count=7:goto Moji_count_check:
21240 endif
21250 next i
21260 '8画の文字 120 文字
21270 for i=0 to ((Moji_8)-1)
21280 if (name$=buf_char_hiragana8$(i)) then
21290 buffer_count=8:goto Moji_count_check:
21300 endif
21310 next i
21320 '9画の文字  103文字
21330 for i=0 to ((Moji_9)-1)
21340 if (name$=buf_char_hiragana9$(i)) then
21350 buffer_count=9:goto Moji_count_check:
21360 endif
21370 next i
21380 '10画の文字 98文字
21390 for i=0 to ((Moji_10)-1)
21400 if (name$=buf_char_hiragana10$(i)) then
21410 buffer_count=10:goto Moji_count_check:
21420 endif
21430 next i
21440 '11画の文字 98文字
21450 for i=0 to ((Moji_11)-1)
21460 if (name$=buf_char_hiragana11$(i)) then
21470 buffer_count=11:goto Moji_count_check:
21480 endif
21490 next i
21500 '12画の文字
21510 for i=0 to ((Moji_12)-1)
21520 if (name$=buf_char_hiragana12$(i)) then
21530 buffer_count=12:goto Moji_count_check:
21540 endif
21550 next i
21560 '13画の文字
21570 for i=0 to ((Moji_13)-1)
21580 if (name$=buf_char_hiragana13$(i)) then
21590 buffer_count=13:goto Moji_count_check:
21600 endif
21610 next i
21620 '14画の文字
21630 for i=0 to ((Moji_14)-1)
21640 if (name$=buf_char_hiragana14$(i)) then
21650 buffer_count=14:goto Moji_count_check:
21660 endif
21670 next i
21680 '15画の文字
21690 for i=0 to ((Moji_15)-1)
21700 if (name$=buf_char_hiragana15$(i)) then
21710 buffer_count=15:goto Moji_count_check:
21720 endif
21730 next i
21740 '16画の文字
21750 for i=0 to ((Moji_16)-1)
21760 if (name$=buf_char_hiragana16$(i)) then
21770 buffer_count=16:goto Moji_count_check:
21780 endif
21790 next i
21800 '17画の文字
21810 for i=0 to ((Moji_17)-1)
21820 if (name$=buf_char_hiragana17$(i)) then
21830 buffer_count=17:goto Moji_count_check:
21840 endif
21850 next i
21860 '18画の文字 25
21870 for i=0 to ((Moji_18)-1)
21880 if (name$=buf_char_hiragana18$(i)) then
21890 buffer_count=18:goto Moji_count_check:
21900 endif
21910 next i
21920 '19画の文字 17
21930 for i=0 to ((Moji_19)-1)
21940 if (name$=buf_char_hiragana19$(i)) then
21950 buffer_count=19:goto Moji_count_check:
21960 endif
21970 next i
21980 '20画の文字 13
21990 for i=0 to ((Moji_20)-1)
22000 if (name$=buf_char_hiragana20$(i)) then
22010 buffer_count=20:goto Moji_count_check:
22020 endif
22030 next i
22040 '21画の文字 6
22050 for i=0 to ((Moji_21)-1)
22060 if (name$=buf_char_hiragana21$(i)) then
22070 buffer_count=21:goto Moji_count_check:
22080 endif
22090 next i
22100 '22画の文字 4
22110 for i=0 to ((Moji_22)-1)
22120 if (name$=buf_char_hiragana22$(i)) then
22130 buffer_count=22:goto Moji_count_check:
22140 endif
22150 next i
22160 '23画の文字 3
22170 for i=0 to ((Moji_23)-1)
22180 if (name$=buf_char_hiragana23$(i)) then
22190 buffer_count=23:goto Moji_count_check:
22200 endif
22210 next i
22220 '24画の文字
22230 for i=0 to ((Moji_24)-1)
22240 if (name$=buf_char_hiragana24$(i)) then
22250 buffer_count=24:goto Moji_count_check:
22260 endif
22270 next i
22280 'Menu3 結果表示 画数の登録確認
22290 Moji_count_check:
22300 bg=0:init"kb:4"
22310 if (buffer_count = 0) then
22320 '登録文字がない場合の処理
22330 'グラフィック領域　ここから
22340 'Moji_count_check:
22350 cls 3:talk ""
22360 '1行
22370 line (0,0)-(1080,60),rgb(0,0,255),bf
22380 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
22390 '2行目
22400 line (0,60)-(1080,165),rgb(127,255,212),bf
22410 pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
22420 '3行目
22430 line (0,165)-(1080,370),rgb(0,0,255),bf
22440 pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
22450 '4行目
22460 line (0,370)-(1080,450),rgb(0,255,0),bf
22470 pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
22480 'グラフィック領域　ここまで
22490 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22500 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22510 talk "この文字は、登録されていません"
22520 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22530 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22540 color rgb(0,0,0):print"コマンド:"
22550 while (bg <> 2 and key$ <> chr$(13))
22560 key$=inkey$
22570 bg=strig(1)
22580 pause 2.50*100
22590 wend
22600 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22610 'key$=Input$(1)
22620 'if key$="q" or key$="Q" then goto Main_Screen1:
22630 'if key$=chr$(13) then goto Entry_moji_Top:
22640 'goto 20260
22650 else
22660 'グラフィック描画領域　ここから
22670 'Entry_moji_check:
22680 cls 3
22690 '1行目
22700 line (0,0)-(1080,58),rgb(0,0,255),bf
22710 pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
22720 '2行目
22730 line (0,58)-(1080,100),rgb(127,255,212),bf
22740 PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
22750 '3行目
22760 line (0,100)-(1080,280),rgb(0,0,255),bf
22770 pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
22780 '4行目
22790 line (0,280)-(1080,340),rgb(0,255,0),bf
22800 pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
22810 'グラフィック描画領域　ここまで
22820 color rgb(255,255,255):print "登録文字画数結果表示"
22830 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22840 endif
22850 while (key$<>chr$(13) and bg <> 2)
22860 key$=inkey$
22870 bg=strig(1)
22880 pause 2.50*100
22890 wend
22900 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
22910 'color rgb(255,255,255)
22920 'print"q+エンターキー:トップ画面"+chr$(13)
22930 'print"エンターキー:もう一度やる"+chr$(13)
22940 'color rgb(0,0,0)
22950 'print"コマンド:"
22960 'key$=Input$(1)
22970 'if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
22980 'if key$="q" then buffer_count=0:goto Main_Screen1:
22990 'if not(key$="q") then goto Moji_count_check:
23000 'Menu2 名前の陰陽を見る
23010 'グラフィック描画領域 ここから
23020 name_inyo_check:
23030 init "kb:2":talk ""
23040 cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
23050 PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
23060 LINE (0,60)-(1080,250),rgb(127,255,212),bf
23070 pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
23080 line (0,250)-(1080,350),rgb(0,255,0),bf
23090 pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
23100 'グラフィック描画領域　ここまで
23110 cls
23120 color rgb(255,255,255)
23130 print"Menu2 名前の陰陽を見る"+chr$(13)
23140 COLOR rgb(255,0,255)
23150 PRINT"(●:陽,○:陰)"+chr$(13)
23160 print"調べたい名前苗字を入れてください"+chr$(13)
23170 color rgb(0,0,0)
23180 Input"調べたい名前の苗字:",name$
23190 if name$="" then goto name_inyo_check:
23200 'Menu2 陰陽の吉凶を見る 名入力
23210 cls:color rgb(255,255,255)
23220 print"Menu2 名前の陰陽を見る"+chr$(13)
23230 color rgb(255,0,255)
23240 print"(●:陽,○:陰)"+chr$(13)
23250 print"調べたい名前の名を入れてください"+chr$(13)
23260 color rgb(0,0,0)
23270 Input"調べたい名前の名:",name2$
23280 if name2$="" then goto name_inyo_check:
23290 for i=0 to len(name$)-1
23300 name_array$(i)=Mid$(name$,i+1,1)
23310 if char_count(name_array$(i)) mod 2 = 1  then
23320 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23330 else
23340 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23350 endif
23360 next i
23370 for i=0 to len(name2$)-1
23380 name_array2$(i)=Mid$(name2$,i+1,1)
23390 if char_count(name_array2$(i)) mod 2 = 1 then
23400 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
23410 else
23420 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
23430 endif
23440 next i
23450 bufname$=buffer$+buffer2$
23460 '陰陽のタイプ ここから
23470 select case (len(bufname$))
23480 '2文字
23490 case 2:
23500 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
23510 '
23520 '  endif
23530 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23540 '  endif
23550 '3文字
23560 case 3:
23570 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23580 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23590 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23600 '4文字
23610 case 4:
23620 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23630 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23640 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23650 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23660 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23670 '5文字
23680 case 5:
23690 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23700 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23710 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23720 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23730 case 6:
23740 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23750 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23760 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23770 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23780 case else:
23790 buffer_name$="例外に入りました"
23800 end select
23810 '陰陽のタイプ　ここまで
23820 'グラフィック描画領域　ここから
23830 cls 2:key$="":bg=0:init "kb:4":talk ""
23840 line (0,0)-(1080,60),rgb(0,0,250),bf
23850 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
23860 line (0,60)-(1080,285),rgb(127,255,212),bf
23870 pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
23880 line (0,280)-(1080,380),rgb(0,255,0),bf
23890 pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
23900 'グラフィック描画領域 ここまで
23910 color rgb(255,255,255)
23920 cls:print"名前:";name$ + name2$ + chr$(13)
23930 color rgb(255,0,255)
23940 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23950 print buffer_name$;chr$(13)
23960 color rgb(0,0,0)
23970 print"エンターキーを押してください"
23980 'key$=Input$(1)
23990 while (bg <> 2 and key$ <> chr$(13))
24000 key$=inkey$
24010 bg=strig(1)
24020 pause 2.50*100
24030 wend
24040 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24050 'Menu3
24060 '登録文字数の確認
24070 Entry_moji_check:
24080 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24090 'グラフィック描画領域　ここから
24100 cls 3:init"kb:4":bg=0:key$="":talk ""
24110 '1行目
24120 line (0,0)-(1080,60),rgb(0,0,255),bf
24130 pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
24140 '2行目
24150 line (0,60)-(1080,150),rgb(157,255,212),bf
24160 pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
24170 '3行目
24180 line (0,150)-(1080,250),rgb(0,255,0),bf
24190 pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
24200 'グラフィック描画領域 ここまで
24210 color rgb(255,255,255)
24220 PRINT"登録文字数の確認"+chr$(13)
24230 color rgb(255,0,255)
24240 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24250 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24260 while (key$ <> chr$(13) and bg <> 2)
24270 key$=inkey$
24280 bg=strig(1)
24290 pause 2.50*100
24300 wend
24310 'color rgb(0,0,0)
24320 'print"エンターキーを押してください"+chr$(13)
24330 'key$=Input$(1)
24340 'print"エンターキーを押してください"
24350 'key$=Input$(1)
24360 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24370 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24380 nick_name_check:
24390 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24400 'グラフィック描画領域　ここから
24410 cls 3:init "kb:2"
24420 line (0,0)-(1080,60),rgb(0,0,250),bf
24430 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24440 line (0,60)-(1080,160),rgb(127,255,212),bf
24450 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24460 line (0,160)-(1080,270),rgb(0,255,0),bf
24470 pen 5:line(0,157)-(1077,267),rgb(0,0,255),b
24480 'グラフィック描画領域　ここまで
24490 buf=0:cls
24500 locate 0,0
24510 color rgb(255,255,255)
24520 Print"名前(ニックネーム)の総数で吉凶を判断します"
24530 locate 0,2
24540 color rgb(255,0,255)
24550 PRINT"名前(ニックネーム)を入れてください"
24560 locate 0,4
24570 color rgb(0,0,0)
24580 Input"名前:",name$
24590 if name$="" then goto nick_name_check:
24600 for n=0 to (len(name$)-1)
24610 buf_Input_data$(n)=mid$(name$,n+1,1)
24620 buf=buf+char_count(buf_Input_data$(n))
24630 next n
24640 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24650 '結果表示　グラフィック　ここから
24660 cls 3:init "kb:4":bg=0:key$=""
24670 line (0,0)-(1080,60),rgb(0,0,255),bf
24680 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
24690 line (0,60)-(1080,160),rgb(127,255,212),bf
24700 pen 5:line(0,57)-(1077,157),rgb(0,0,255),b
24710 line (0,160)-(1080,540),rgb(0,255,0),bf
24720 pen 5:line(0,157)-(1077,537),rgb(0,0,255),b
24730 '結果表示 グラフィック領域 ここまで
24740 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24750 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24760 'color rgb(0,0,0)
24770 'print "番号を選んでください"+chr$(13)
24780 'PRINT "エンターキー:もう一度やる"+chr$(13)
24790 'print "q:トップに戻る"+chr$(13)
24800 while (key$ <> chr$(13) and bg <> 2)
24810 key$=inkey$
24820 bg=strig(1)
24830 pause 2.50*100
24840 wend
24850 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24860 't "コマンド:"
24870 'ey$=Input$(1)
24880 'if key$="q" then goto Main_Screen1:
24890 'if key$=chr$(13) then goto nick_name_check:
24900 'if No > 2 then goto 24220
24910 '名前2文字
24920 'グラフィック描画領域　ここから
24930 Result_Anzai:
24940 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
24950 line (0,0)-(1400,60),rgb(0,0,255),bf
24960 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24970 line (0,60)-(1400,540-180),rgb(127,255,212),bf
24980 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
24990 line (0,540-180)-(1400,540),rgb(0,255,0),bf
25000 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25010 'グラフィック描画領域 ここまで
25020 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25030 color rgb(255,0,255)
25040 print"天運";buf_tenunn;chr$(13)
25050 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25060 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25070 print"外運";buf_gaiunn;chr$(13)
25080 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25090 COLOR rgb(0,0,0)
25100 PRINT"エンターキー:トップ画面"+chr$(13)
25110 while (key$<>chr$(13) and bg <> 2)
25120 key$=inkey$
25130 bg=strig(1)
25140 pause 2.50*100
25150 wend
25160 'print"エンターキー:もう一度、吉凶をみる"+chr$(13)
25170 'print "コマンド:"
25180 'key$=Input$(1)
25190 'if key$=chr$(13) then goto Anzai_Top_Screen:
25200 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25210 '参考文献 表示 ここから
25220 'グラフィック描画領域　 ここから
25230 Document_info:
25240 cls 3:init"kb:4":bg=0
25250 line (0,0)-(1080,60),rgb(0,0,255),bf
25260 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
25270 line (0,60)-(1080,650),rgb(127,255,212),bf
25280 pen 5:line(0,57)-(1077,647),rgb(0,0,255),b
25290 line (0,650)-(1080,730),rgb(0,255,0),bf
25300 pen 5:line(0,647)-(1077,727),rgb(0,0,255),b
25310 'グラフィック描画領域  ここまで
25320 '参考文献１
25330 cls
25340 color rgb(255,255,255)
25350 locate 0,0
25360 print"◎参考文献"
25370 color rgb(255,0,255)
25380 locate 0,2
25390 print "参考文献 １/4"
25400 locate 0,4
25410 print "Title:九星姓名判断"
25420 locate 0,6
25430 print "Author:高嶋　 美伶"
25440 locate 0,8
25450 print "出版社:日本文芸者"
25460 locate 0,10
25470 print "ISBN:4-537-20073-1"
25480 locate 0,12
25490 print "定価:1,200+税"
25500 color rgb(0,0,0)
25510 locate 0,14
25520 print "エンターキーを押してください"
25530 while (bg <> 2 and key$<>chr$(13))
25540 key$=inkey$
25550 bg=strig(1)
25560 pause 2.50*100
25570 wend
25580 if (key$=chr$(13) or bg=2) then
25590 goto Document_info2:
25600 endif
25610 'key$=Input$(1)
25620 'if key$=chr$(13)  then goto Document_info2:
25630 '参考文献２
25640 Document_info2:
25650 cls:bg=0:key$=""
25660 color rgb(255,255,255)
25670 locate 0,0
25680 print "◎参考文献"
25690 color rgb(255,0,255)
25700 locate 0,2
25710 print "参考文献 ２/4"
25720 locate 0,4
25730 print "Title:究極の姓名判断"
25740 locate 0,6
25750 print "Author:安斎　勝洋"
25760 locate 0,8
25770 print "出版社:説話社"
25780 locate 0,10
25790 print "ISBN:978-4-916217-61-5"
25800 locate 0,12
25810 print "定価:1,800円+税"
25820 color rgb(0,0,0)
25830 locate 0,14
25840 print"エンターキーを押してください"
25850 while (key$<>chr$(13) and bg <> 2)
25860 key$=inkey$
25870 bg=strig(1)
25880 pause 2.50*100
25890 wend
25900 if (key$=chr$(13) or bg=2) then goto Document_info3:
25910 'key$=Input$(1)
25920 'if key$=chr$(13) then goto Document_info3:
25930 '参考文献３
25940 Document_info3:
25950 cls:bg=0:key$=""
25960 color rgb(255,255,255)
25970 locate 0,0
25980 print"◎参考文献"
25990 color rgb(255,0,255)
26000 locate 0,2
26010 print "参考文献 3/4"
26020 locate 0,4
26030 print "Title:新明解現在漢和辞典"
26040 locate 0,6
26050 print "Author:影山輝國(編集主幹)他"
26060 locate 0,8
26070 print "出版社:三省堂"
26080 locate 0,10
26090 print "ISBN:978-4-385-13755-1"
26100 locate 0,12
26110 print "定価:2,800円 + 税"
26120 color rgb(0,0,0)
26130 locate 0,14
26140 print "エンターキーを押してください"
26150 while (key$<>chr$(13) and bg<>2)
26160 key$=inkey$
26170 bg=strig(1)
26180 pause 2.50*100
26190 wend
26200 if (key$=chr$(13) or bg=2) then goto Document_info4:
26210 'key$=Input$(1)
26220 'if key$=chr$(13) then goto Document_info4:
26230 '参考文献４　
26240 '描画領域　ここから
26250 Document_info4:
26260 cls 3:key$="":bg=0
26270 line (0,0)-(1080,60),rgb(0,0,255),bf
26280 line (0,0)-(1077,57),rgb(0,255,0),b
26290 line (0,60)-(1080,650),rgb(127,255,212),bf
26300 LINE (0,60)-(1077,647),rgb(0,0,255),b
26310 LINE (0,650)-(1080,830),rgb(0,255,0),bf
26320 line (0,650)-(1077,833),rgb(0,0,255),b
26330 '描画領域　ここまで
26340 'cls
26350 color rgb(255,255,255)
26360 locate 0,0
26370 print "◎参考文献"
26380 COLOR rgb(255,0,255)
26390 locate 0,2
26400 print "参考文献 4/4"
26410 locate 0,4
26420 print "Title:姓名の暗号"
26430 locate 0,6
26440 print "Author:樹門　幸宰(じゅもん こうざい)"
26450 locate 0,8
26460 print "出版社:幻冬舎"
26470 locate 0,10
26480 print "定価:1400円 + 税"
26490 locate 0,12
26500 print "ISBN:4-344-00777-8"
26510 color rgb(0,0,0)
26520 locate 0,14
26530 print "参考文献トップに行く:エンターキー"
26540 locate 0,16
26550 print "スペース：トップメニューに行く"
26560 while (key$<>chr$(13) and bg<>2)
26570 key$=inkey$
26580 bg=strig(1)
26590 pause 2.50*100
26600 wend
26610 if (key$=chr$(13) or bg=2) then goto help:
26620 'key$=Input$(1)
26630 'トップ画面に戻る
26640 'if key$ = " " then goto help:
26650 'if key$ = chr$(13) then goto Document_info:
26660 '安斎流姓名判断　メニュー
26670 'グラフィック領域　ここから
26680 Anzai_Top:
26690 cls 3
26700 No=0:init"kb:4":y=0:bg=0:key$=""
26710 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26720 sp_on 0,1:sp_put 0,(10,100),0,0
26730 line (0,0)-(1080,60),rgb(0,0,255),bf
26740 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
26750 line (0,60)-(1080,475),rgb(127,255,212),bf
26760 pen 5:line(0,57)-(1077,472),rgb(0,0,255),b
26770 line (0,475)-(1080,650),rgb(0,255,0),bf
26780 pen 5:line(0,472)-(1077,647),rgb(0,0,255),b
26790 'グラフィック描画領域　ここまで
26800 color rgb(255,255,255)
26810 print "安斎流姓名判断　トップメニュー" + chr$(13)
26820 color rgb(255,0,255)
26830 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26840 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26850 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26860 print " :4.前の画面に戻る"+chr$(13)
26870 locate 0,10
26880 color rgb(0,0,0)
26890 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26900 Anzai_Top2:
26910 y=0:bg=0:key$=""
26920 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26930 key$=inkey$
26940 y=stick(1)
26950 bg=strig(1)
26960 pause 2.50*100
26970 wend
26980 '******************************************************
26990 '1.下のキー　ここから
27000 '******************************************************
27010 if (y=1 or key$=chr$(30)) then
27020 select case No
27030 case 0:
27040 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27050 case 1:
27060 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27070 case 2:
27080 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27090 case 3:
27100 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27110 end select
27120 endif
27130 '******************************************************
27140 '1.下のキー　ここまで
27150 '******************************************************
27160 '******************************************************
27170 '2.上のキー　ここから
27180 '******************************************************
27190 if (y=-1 or key$=chr$(31)) then
27200 select case No
27210 case 0:
27220 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27230 case 1:
27240 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27250 case 2:
27260 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27270 case 3:
27280 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27290 end select
27300 endif
27310 '******************************************************
27320 '2.上のキー　ここまで
27330 '******************************************************
27340 '******************************************************
27350 '3.決定ボタン　ここから
27360 '******************************************************
27370 if (key$=chr$(13) or bg=2) then
27380 select case No
27390 case 0:
27400 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27410 case 1:
27420 sp_on 1,0:goto Anzai_Top_Screen:
27430 case 2:
27440 sp_on 2,0:goto Anzai_Kaimei_Check:
27450 case 3:
27460 sp_on 3,0:goto seimeihandan_top:
27470 end select
27480 endif
27490 '******************************************************
27500 '3.決定ボタン　ここまで
27510 '******************************************************
27520 'if key=2 then goto Anzai_Top_Screen:
27530 'if key=3 then goto Anzai_Kaimei_Check:
27540 'if key=1 then goto Anzai_Aishou_Top1:
27550 'if key=4 then goto seimeihandan_top:
27560 'if key > 4 or key = 0 then goto Anzai_Top:
27570 '2.安斎流姓名判断　男女の相性占い　ここから
27580 'グラフィック描画領域 ここから
27590 'Anzai_Aishou_Top1:
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
27710 'if s1=1 then goto 26590
27720 'if s1=2 then goto 27370
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
28080 'if s2=2 then goto 27570
28090 '3.名前(姓)入力 女性
28100 Anzai_Aishou_Top2:
28110 cls:init "kb:2":talk ""
28120 color rgb(255,255,255)
28130 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28140 color rgb(255,0,255)
28150 print "女性の名前(姓)を入れてください"+chr$(13)
28160 color rgb(0,0,0)
28170 Input"女性の名前:",name3$
28180 '4.名前（名)入力 女性
28190 cls:init "kb:2":talk ""
28200 color rgb(255,255,255)
28210 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
28220 color rgb(255,0,255)
28230 print "女性の名前（名）を入れてください"+chr$(13)
28240 color rgb(0,0,0)
28250 Input "女性の名前(名):",name4$
28260 '男性　の地運 を求める
28270 '姓名の合計数
28280 '1.男性 名前の文字数を求める
28290 '地運を求める
28300 buf_male_name1 = len(name$)
28310 buf_male_name2 = len(name2$)
28320 buf_male_count = buf_male_name1 + buf_male_name2
28330 '2.女性 名前の文字数を求める
28340 buf_female_name1 = len(name3$)
28350 buf_female_name2 = len(name4$)
28360 buf_female_count = buf_female_name1 + buf_female_name2
28370 'goto Anzai_Aishou_Check:
28380 '1.男性の地運を求める
28390 select case buf_male_count
28400 case 2:
28410 '男性の地運を求める
28420 buf_chiunn=char_count(name2$)
28430 case 3:
28440 '姓が一文字 名が2文字
28450 if buf_male_name1=1 and buf_male_name2=2 then
28460 buf_Input_name$(0)=mid$(name2$,1,1)
28470 buf_Input_name$(1)=mid$(name2$,2,1)
28480 '地運を計算
28490 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28500 endif
28510 if buf_male_name1=2 and buf_male_name2=1 then
28520 buf_Input_name$(0)=Mid$(name2$,1,1)
28530 buf_chiunn=char_count(buf_Input_name$(0))
28540 endif
28550 case 4:
28560 '1.姓１，名３
28570 if bufmale_name1=1 and buf_male_name2=3 then
28580 buf_Input_name$(0)=Mid$(name2$,1,1)
28590 buf_Input_name$(1)=Mid$(name2$,2,1)
28600 buf_Input_name$(2)=Mid$(name2$,3,1)
28610 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28620 endif
28630 '2.姓２,名２
28640 if buf_male_name1=2 and buf_male_name2=2 then
28650 buf_Input_name$(0)=Mid$(name2$,1,1)
28660 buf_Input_name$(1)=Mid$(name2$,2,1)
28670 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28680 endif
28690 '3.姓３、名１
28700 if buf_male_name1=3 and buf_male_name2=1 then
28710 buf_Input_name$(0)=Mid$(name2$,1,1)
28720 '地運を求める
28730 buf_chiunn=char_count(buf_Input_name$(0))
28740 endif
28750 case 5:
28760 '1.姓２，名３
28770 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28780 buf_Input_name$(0)=Mid$(name2$,1,1)
28790 buf_Input_name$(1)=Mid$(name2$,2,1)
28800 buf_Input_name$(2)=Mid$(name2$,3,1)
28810 '地運を求める
28820 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28830 endif
28840 '2.姓３，名２
28850 if buf_male_name1=3 and buf_male_name2=2 then
28860 buf_Input_name$(0)=Mid$(name2$,1,1)
28870 buf_Input_name$(1)=Mid$(name2$,2,1)
28880 '地運を求める
28890 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28900 endif
28910 '3.姓４、名１
28920 buf_Input_name$(0)=Mid$(name2$,1,1)
28930 '地運を求める
28940 buf_chiunn = char_count(buf_Input_name$(0))
28950 case 6:
28960 '1.姓３，名３
28970 if buf_male_name1=3 and buf_male_name2=3 then
28980 buf_Input_name$(0)=Mid$(name2$,1,1)
28990 buf_Input_name$(1)=Mid$(name2$,2,1)
29000 buf_Input_name$(2)=Mid$(name2$,3,1)
29010 '地運を求める
29020 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
29030 endif
29040 '２.姓４，名２
29050 if buf_male_name1=4 and buf_male_name2=2 then
29060 buf_Input_name$(0)=Mid$(name2$,1,1)
29070 buf_Input_name$(1)=Mid$(name2$,2,1)
29080 '地運を求める
29090 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
29100 endif
29110 case else:
29120 end select
29130 'if s1=1 then goto 33260
29140 'if s2=2 then goto 30880
29150 '2.女性　外運を求める
29160 select case buf_female_count
29170 '姓と名の合計数
29180 case 2:
29190 buf_Input_name2$(0)=Mid$(name3$,1,1)
29200 buf_Input_name2$(1)=Mid$(name4$,1,1)
29210 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29220 case 3:
29230 if buf_female_name1=2 and buf_female_name2=1 then
29240 buf_Input_name2$(0)=Mid$(name3$,1,1)
29250 buf_Input_name2$(1)=Mid$(name3$,2,1)
29260 buf_Input_name2$(2)=Mid$(name4$,1,1)
29270 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29280 endif
29290 if buf_female_name1=1 and buf_female_name2=2 then
29300 buf_Input_name2$(0)=Mid$(name3$,1,1)
29310 buf_Input_name2$(1)=Mid$(name4$,1,1)
29320 buf_Input_name2$(2)=Mid$(name4$,2,1)
29330 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29340 endif
29350 case 4:
29360 '姓１、名３
29370 if buf_female_name1=1 and buf_female_name2=3 then
29380 buf_Input_name2$(0)=Mid$(name3$,1,1)
29390 buf_Input_name2$(1)=Mid$(name4$,1,1)
29400 buf_Input_name2$(2)=Mid$(name4$,2,1)
29410 buf_Input_name2$(3)=Mid$(name4$,3,1)
29420 '外運を求める
29430 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29440 endif
29450 '姓２,名２
29460 if buf_female_name1=2 and buf_female_name2=2 then
29470 buf_Input_name2$(0)=Mid$(name3$,1,1)
29480 buf_Input_name2$(1)=Mid$(name3$,2,1)
29490 buf_Input_name2$(2)=Mid$(name4$,1,1)
29500 buf_Input_name2$(3)=Mid$(name4$,2,1)
29510 '外運を求める
29520 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29530 endif
29540 '姓３，名１
29550 if buf_female_name1=3 and buf_female_name2=1 then
29560 buf_Input_name2$(0)=Mid$(name3$,1,1)
29570 buf_Input_name2$(1)=Mid$(name3$,2,1)
29580 buf_Input_name2$(2)=Mid$(name3$,3,1)
29590 buf_Input_name2$(3)=Mid$(name4$,1,1)
29600 '外運を求める
29610 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29620 endif
29630 case 5:
29640 '姓 3,名2
29650 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29660 buf_Input_name2$(0)=Mid$(name3$,1,1)
29670 buf_Input_name2$(1)=Mid$(name3$,2,1)
29680 buf_Input_name2$(2)=Mid$(name3$,3,1)
29690 buf_Input_name2$(3)=Mid$(name4$,1,1)
29700 buf_Input_name2$(4)=Mid$(name4$,2,1)
29710 '外運を求める
29720 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29730 endif
29740 '姓４、名１
29750 if buf_female_name1=4 and buf_female_name2=1 then
29760 buf_Input_name2$(0)=Mid$(name3$,1,1)
29770 buf_Input_name2$(1)=Mid$(name3$,2,1)
29780 buf_Input_name2$(2)=Mid$(name3$,3,1)
29790 buf_Input_name2$(3)=Mid$(name3$,4,1)
29800 buf_Input_name2$(4)=Mid$(name4$,1,1)
29810 '外運を求める
29820 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29830 endif
29840 '姓２、名３
29850 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29860 buf_Input_name2$(0)=Mid$(name3$,1,1)
29870 buf_Input_name2$(1)=Mid$(name3$,2,1)
29880 buf_Input_name2$(2)=Mid$(name4$,1,1)
29890 buf_Input_name2$(3)=Mid$(name4$,2,1)
29900 buf_Input_name2$(4)=Mid$(name4$,3,1)
29910 '外運を求める
29920 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29930 endif
29940 case 6:
29950 '1.姓３，名３
29960 if buf_female_name1=3 and buf_female_name2=3 then
29970 buf_Input_name2$(0)=Mid$(name3$,1,1)
29980 buf_Input_name2$(1)=Mid$(name3$,2,1)
29990 buf_Input_name2$(2)=Mid$(name3$,3,1)
30000 buf_Input_name2$(3)=Mid$(name4$,1,1)
30010 buf_Input_name2$(4)=Mid$(name4$,2,1)
30020 buf_Input_name2$(5)=Mid$(name4$,3,1)
30030 '外運を求める
30040 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
30050 endif
30060 '2.姓４，名２
30070 if buf_female_name1=4 and buf_female_name2=2 then
30080 buf_Input_name2$(0)=Mid$(name3$,1,1)
30090 buf_Input_name2$(1)=Mid$(name3$,2,1)
30100 buf_Input_name2$(2)=Mid$(name3$,3,1)
30110 buf_Input_name2$(3)=Mid$(name3$,4,1)
30120 buf_Input_name2$(4)=Mid$(name4$,1,1)
30130 buf_Input_name2$(5)=Mid$(name4$,2,1)
30140 '外運を求める
30150 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
30160 endif
30170 case 7:
30180 '1姓４，名３
30190 '外運を求める
30200 end select
30210 'if s=1 then goto Anzai_Aishou_Check:
30220 'if s2=2 then goto Anzai_Aishou_Check:
30230 'goto 33500
30240 func buf_number(a)
30250 if a < 10 then
30260 buf_tansu = a
30270 endif
30280 if a > 9 and a < 20 then
30290 buf_tansu = a - 10
30300 endif
30310 if a > 19 and a < 30 then
30320 buf_tansu = a - 20
30330 endif
30340 buffer = buf_tansu
30350 endfunc buffer
30360 check$="No Data"
30370 func Aisyou_type$(man,woman)
30380 Result$="No data"
30390 'check$="No data"
30400 '1.理解し合える最良のカップル
30410 '1のFor文
30420 for i=0 to 19
30430 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30440 Result$ = "1.理解し合える最良のカップル"
30450 check$="○"
30460 ResultNo = 0
30470 endif
30480 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30490 Result$="2.互いに自然体でつきあえるカップル"
30500 ResultNo=1
30510 check$="○"
30520 endif
30530 '3.男性にとって居心地の良いカップル
30540 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30550 Result$="3.男性にとって居心地の良いカップル"
30560 ResultNo=2
30570 check$="△"
30580 endif
30590 '4.女性にとって居心地の良いカップル
30600 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30610 Result$ = "4.女性にとって居心地の良いカップル"
30620 ResultNo=3
30630 check$="△"
30640 endif
30650 '5.恋愛経験を重ねた後なら愛を育める
30660 'for i=0 to 9
30670 'for j=0 to 9
30680 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
30690 Result$="5.恋愛経験を重ねた後なら愛を育める"
30700 ResultNo=4
30710 check$="×"
30720 endif
30730 'next j
30740 'next i
30750 '6
30760 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30770 Result$="6.結婚への発展が困難なカップル"
30780 check$="×"
30790 endif
30800 '7
30810 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30820 Result$="7.愛し方にずれが出てくる二人"
30830 check$="×"
30840 endif
30850 '8
30860 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30870 Result$="8.互いに価値観が噛み合わない相性"
30880 check$="×"
30890 endif
30900 next i
30910 'bufAisyou$ = Result$
30920 endfunc  Result$
30930 Anzai_Aishou_Check:
30940 cls 3:init"kb:2":bg=0
30950 buf_t_chiunn = buf_number(buf_chiunn)
30960 buf_t_gaiunn=buf_number(buf_gaiunn)
30970 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30980 'グラフィック描画領域　ここから
30990 'Title欄
31000 line(0,0)-(1080,60),rgb(0,0,255),bf
31010 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31020 '結果表示欄
31030 line(0,60)-(1080,700-120-20),rgb(127,255,212),bf
31040 pen 5:line(0,57)-(1077,700-120-3-20),rgb(0,0,255),b
31050 'ボタン選択欄
31060 LINE(0,700-120-20)-(1080,640),rgb(0,255,0),bf
31070 pen 5:line(0,697-120-20)-(1077,637),rgb(0,0,255),b
31080 'グラフィック描画領域　ここまで
31090 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
31100 color rgb(255,255,255):font 40:init"kb:4"
31110 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31120 color rgb(255,0,255)
31130 print "男性の名前:";name$+name2$;chr$(13)
31140 print "地運の単数";buf_t_chiunn;chr$(13)
31150 print "女性の名前:";name3$+name4$;chr$(13)
31160 print "外運の単数";buf_t_gaiunn;chr$(13)
31170 print"二人の相性:";bufferAisyou$;chr$(13)
31180 print"相性判定:";check$;chr$(13)
31190 color rgb(0,0,0)
31200 print "エンターキー:トップ" + chr$(13)
31210 while (bg <> 2)
31220 bg=strig(1)
31230 pause 2.50*100
31240 wend
31250 if (bg=2) then goto Main_Screen1:
31260 'print "S or sキー:保存" + chr$(13)
31270 'key$=Input$(1)
31280 'if key$=chr$(13) then
31290 'goto Main_Screen1:
31300 'else
31310 'Data保存追加 2021.10.01
31320 'goto Save_Aisyou:
31330 'endif
31340 '改名チェック
31350 'グラフィック描画領域 ここから
31360 Anzai_Kaimei_Check:
31370 cls 3:init "kb:2":talk ""
31380 line (0,0)-(1080,60),rgb(0,0,255),bf
31390 pen 5:line(0,0)-(1077,57),rgb(125,255,212),b
31400 line (0,60)-(1080,370+50),rgb(127,255,212),bf
31410 pen 5:line (0,57)-(1077,367+50),rgb(0,0,255),b
31420 line (0,370+50)-(1080,450+50),rgb(0,255,0),bf
31430 pen 5:line(0,367+50)-(1077,447+50),rgb(0,0,255),b
31440 'グラフィック描画領域 ここまで
31450 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31460 color rgb(255,255,255)
31470 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31480 color rgb(255,0,255)
31490 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31500 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31510 print "10文字までで入れてください"
31520 locate 0,9
31530 color rgb(0,0,0)
31540 Input "名前:",name$
31550 '計算領域　ここから
31560 '名前から総運を計算
31570 '1.名前の文字数を出す
31580 n=len(name$)
31590 if n > 10 or n=0 then
31600 '文字数が10個までという表示
31610 'トーストで表示
31620 if n > 10 then
31630 ui_msg "文字は10個までです"
31640 else
31650 ui_msg "文字が空っぽです"
31660 endif
31670 goto Anzai_Aishou_Check:
31680 endif
31690 'それ以外
31700 '総数を出す処理を出す
31710 '画面消去　データー初期化
31720 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31730 'グラフィック描画領域 ここから
31740 line(0,0)-(1080,60),rgb(0,0,255),bf
31750 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
31760 line(0,60)-(1080,300),rgb(127,255,212),bf
31770 pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
31780 line(0,300)-(1080,440),rgb(0,255,0),bf
31790 pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
31800 'グラフィック描画領域 ここまで
31810 'cls 3
31820 color rgb(255,255,255)
31830 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31840 for i=0 to len(name$)-1
31850 buf_Input_name$(i)=Mid$(name$,i+1,1)
31860 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31870 next i
31880 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31890 color rgb(255,0,255)
31900 print "名前:";name$
31910 print "この名前の総数:";bufer_total
31920 print "この名前の吉凶:";buf_Kikkyo$;"です"
31930 color rgb(255,0,255)
31940 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31950 print bufer_total$+chr$(13)
31960 'if buffer_K=0 or buffer_K=1  then
31970 'dim select$(2)
31980 'select$(0)="改名をする"
31990 'select$(1)="改名しない"
32000 'talk"改名しますか？"
32010 'color rgb(0,0,0)
32020 'Input"改名しますか？",key$
32030 'num=ui_select("select$","改名リストに追加しますか?")
32040 'num=0:改名リストに追加する
32050 'if num=0  then goto 35650
32060 'else
32070 'num=1:改名リストに追加しない
32080 'if num=1 then goto 31410
32090 'num=2:トップ画面に行く
32100 'if num=2 then goto 7590
32110 'endif
32120 'if buffer_K=0 then
32130 'print num,select$(num)
32140 color rgb(0,0,0)
32150 locate 0,7
32160 print"エンターキーを押してください"
32170 while (key$ <> chr$(13) and bg <> 2)
32180 key$=inkey$
32190 bg=strig(1)
32200 pause 2.50*100
32210 wend
32220 'key$=Input$(1)
32230 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
32240 'endif
32250 '改名チェック関数
32260 func Kaimei_check$(r$)
32270 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
32280 '改名の必要なし
32290 talk"この名前は改名の必要がございません。"
32300 print"この名前は、改名の必要はありません"+chr$(13)
32310 '改名の必要ナシの場合
32320 K=0
32330 buffer_K=K
32340 else
32350 '改名の必要あり
32360 Kaimei_check:
32370 talk"この名前は、改名の必要があります"
32380 print"この名前は、改名の必要があります"+chr$(13)
32390 color rgb(0,0,0)
32400 print"改名しますか？"
32410 K=1
32420 buffer_K=K
32430 '◎表示パターン
32440 'パターン１
32450 'color rgb(0,0,0)
32460 'Input"エンターキーを押してください",key$
32470 endif
32480 endfunc result$
32490 'ui_msg="1件追加しました,残り9件追加できます"
32500 'ファイルの存在確認 設定ファイル:mydata.dat
32510 cls
32520 '設定ファイルの確認
32530 if dir$("config/Parsonal_data/mydata.dat")="" then
32540 'print "File not found"+chr$(13)
32550 '1.ファイルがない時
32560 goto Kaimei_check:
32570 else
32580 'ファイルがある時
32590 goto sex_type_female:
32600 'goto 26280
32610 endif
32620 '1-1.ファイルがない時の処理
32630 '1-1.自分の姓名判断を入力
32640 'グラフィック描画領域 ここから
32650 cls 3
32660 '1行目
32670 line(0,0)-(1080,60),rgb(0,0,250),bf
32680 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
32690 '2行目
32700 line(0,60)-(1080,80),rgb(127,255,212),bf
32710 pen 5:line(0,57)-(1077,77),rgb(0,0,255),b
32720 '3行目
32730 line(0,80)-(1080,120),rgb(0,255,0),bf
32740 pen 5:line(0,77)-(1077,117),rgb(0,0,255),b
32750 'グラフィック描画領域 ここまで
32760 '1.名前の姓の入力
32770 '1行目 Title
32780 color rgb(255,255,255)
32790 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32800 '2行目 名前の姓を入力
32810 color rgb(255,0,255)
32820 print "自分の名前の姓を入れてください"+chr$(13)
32830 color rgb(0,0,0)
32840 'buf_name1$:自分の名前の姓
32850 Input"名前の姓:",buf_name1$
32860 '2.名前の名の入力
32870 '画面消去
32880 Anzai_myProfile2:
32890 cls
32900 '1行目 Title
32910 color rgb(255,255,255)
32920 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32930 '2行目 名前の名の入力
32940 color rgb(255,0,255)
32950 print "自分の名前の名を入れてください"+chr$(13)
32960 color rgb(0,0,0)
32970 'buf_name2$:自分の名前の名
32980 input "名前の名:",buf_name2$
32990 '3.性別入力
33000 cls
33010 '1行目 Title
33020 color rgb(255,255,255)
33030 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
33040 '2行目 性別入力
33050 color rgb(255,0,255)
33060 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
33070 sex_type$(0)="女性"
33080 sex_type$(1)="男性"
33090 type=ui_select("sex_type$","性別を選んでください")
33100 '3行目
33110 '性別変数 sex_type$
33120 if type = 1 then
33130 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 32360
33140 else
33150 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
33160 endif
33170 if sex_type$="男性" then
33180 name$=buf_name1$
33190 name2$=buf_name2$
33200 s=1
33210 goto Anzai_Aishou_Top1:
33220 endif
33230 sex_type_female:
33240 If sex_type$="女性" then
33250 name3$=buf_name1$
33260 name4$=buf_name2$
33270 s=2
33280 goto Anzai_Aishou_Top2:
33290 endif
33300 '登録プロフィール確認画面
33310 Entry_Profile:
33320 cls 3:talk ""
33330 'グラフィック描画領域　ここから
33340 '1行目
33350 line(0,0)-(1200,60),rgb(0,0,255),bf
33360 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33370 '2行目
33380 line(0,60)-(1200,360),rgb(127,255,212),bf
33390 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
33400 '3行目
33410 line(0,100)-(1200,420),rgb(0,255,0),bf
33420 pen 5:line(0,97)-(1197,417)
33430 if s2=2 then goto Entry_Profile:
33440 'グラフィック描画領域　ここまで
33450 '1行目 Title
33460 color rgb(255,255,255)
33470 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33480 color rgb(255,0,255)
33490 print"名前:";buf_name1$+buf_name2$;chr$(13)
33500 PRINT"性別:";sex_type$;chr$(13)
33510 if sex_type$="女性" then
33520 print"外運:";buf_gaiunn;chr$(13)
33530 buffer$="外運:"+str$(buf_gaiunn)
33540 endif
33550 if sex_type$="男性" then
33560 print"地運:";buf_chiunn;chr$(13)
33570 buffer$="地運:"+str$(buf_chiunn)
33580 endif
33590 color rgb(0,0,0)
33600 input"(登録する:Yes/登録しない:No):",key$
33610 if key$="Yes" or key$="yes" then
33620 open "config/Parsonal_data/mydata.dat" for output as #1
33630 print #1,"名前:";buf_name1$+buf_name2$
33640 print #1,"性別:";sex_type$
33650 print #1,buffer$
33660 close #1
33670 ui_msg"データーを保存しました"
33680 goto Main_Screen1:
33690 endif
33700 '２．設定ファイルが存在する場合
33710 'ファイル読み込み 自分のデーターを表示
33720 cls
33730 open "Config/Parsonal_data/mydata.dat" for input as #2
33740 line input #2,a$
33750 line input #2,b$
33760 line input #2,c$
33770 close #2
33780 buffername$=a$
33790 buffername2$=b$
33800 buffername3$=c$
33810 bufff$=Mid$(buffername$,1,3)
33820 buff2$=Mid$(buffername2$,1,3)
33830 buff3$=Mid$(buffername3$,1,3)
33840 n=len(a$)
33850 sextype$=Mid$(buffername2$,4,2)
33860 if sextype$="男性" then
33870 '男性:s2
33880 s2=1
33890 '女性のデーター入力
33900 goto Anzai_Top:
33910 endif
33920 if sextype$="女性" then
33930 s2=2
33940 '男性のデーター入力
33950 goto Anzai_Top:
33960 endif
33970 '女性のデーター結果表示
33980 '1.プロフィール性別男性の場合 ここから
33990 Result_Anzai_Aisyou:
34000 cls:talk ""
34010 color rgb(255,255,255)
34020 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
34030 name_length = len(bufername$)
34040 myname$ = Mid$(buffername$,4,4)
34050 chiunn = val(Mid$(buffername3$,4,2))
34060 tansuu1 = buf_number(chiunn)
34070 bufname$ = name3$ + name4$
34080 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
34090 color rgb(255,0,255)
34100 print "自分の名前(男性):";myname$;chr$(13)
34110 print "地運の端数:";tansuu1;chr$(13)
34120 print "相手の名前(女性):";bufname$;chr$(13)
34130 print "外運の端数:";buf_t_gaiunn;chr$(13)
34140 print "二人の相性:";bufferAisyou$;chr$(13)
34150 talk "二人の相性は" + bufferAisyou$
34160 color rgb(0,0,0)
34170 print"エンターキーを押してください"
34180 key$=Input$(1)
34190 'トップ画面に行く
34200 if key$ = chr$(13) then goto Main_Screen1:
34210 '1.プロフィール性別男性の場合　ここまで
34220 '2.プロフィール性別女性の場合　ここから
34230 cls 3
34240 '描画領域　ここから
34250 line (0,0)-(1080,60),rgb(0,0,255),bf
34260 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34270 line (0,60)-(1080,460),rgb(127,255,212),bf
34280 pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
34290 LINE (0,460)-(1080,520),rgb(0,255,0),bf
34300 pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
34310 '描画領域 ここまで
34320 color rgb(255,255,255)
34330 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
34340 '計算領域　ここから
34350 myname$ = Mid$(buffername$,4,4)
34360 gaiunn = val(Mid$(buffername3$,4,2))
34370 buf_t_gaiunn = buf_number(buf_gaiunn)
34380 buf_t_chiunn = buf_number(buf_chiunn)
34390 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
34400 bufname$ = name$ + name2$
34410 '計算領域 ここまで
34420 color rgb(255,0,255)
34430 print "自分の名前(女性):";myname$;chr$(13)
34440 print "外運の端数";buf_t_gaiunn;chr$(13)
34450 print "相手の名前(男性):";bufname$;chr$(13)
34460 print "地運の端数:";buf_t_chiunn;chr$(13)
34470 print "二人の相性:";bufferAisyou$;chr$(13)
34480 color rgb(0,0,0)
34490 print "エンターキーを押してください"
34500 key$ = Input$(1)
34510 if key$=chr$(13) then goto Main_Screen1:
34520 '2.プロフィール性別女性の場合　ここまで
34530 'endfunc result$
34540 '取扱説明書
34550 '相性占い　トップメニュー ここから
34560 'グラフィック ここから
34570 Anzai_Aishou_Top_Menu:
34580 cls 3:talk ""
34590 '1行目
34600 line(0,0)-(1080,60),rgb(0,0,255),bf
34610 pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
34620 '2行目
34630 line(0,60)-(1080,380),rgb(127,255,212),bf
34640 pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
34650 '3行目
34660 line(0,360)-(1080,540),rgb(0,255,0),bf
34670 pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
34680 'グラフィック　ここまで
34690 color rgb(255,255,255)
34700 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34710 color rgb(255,0,255)
34720 print"1.男女の相性"+chr$(13)
34730 print"2.前の画面に戻る"+chr$(13)
34740 print"3.トップ画面に戻る"+chr$(13)
34750 color rgb(0,0,0)
34760 print"番号を選んでください:"+chr$(13)
34770 Input"番号:",key
34780 if key = 1 then goto Anzai_Aishou_Top1:
34790 if key = 2 then goto Anzai_Top:
34800 if key = 3 then goto Main_Screen1:
34810 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34820 'グラフィック領域　ここから
34830 Life_Tenki:
34840 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34850 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34860 line(0,60)-(1150,180),rgb(127,255,212),bf
34870 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34880 line(0,120)-(1150,200),rgb(0,255,0),bf
34890 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34900 'グラフィック領域　ここまで
34910 '誕生日入力　生まれた年
34920 color rgb(255,255,255)
34930 print"誕生日入力　生まれた年" + chr$(13)
34940 COLOR rgb(255,0,255)
34950 print"生まれた年を入れてください" + chr$(13)
34960 color rgb(0,0,0)
34970 Input"生まれた年:",year
34980 '誕生日入力 生まれた月
34990 cls
35000 color rgb(255,255,255)
35010 print"誕生日入力 生まれた月" + chr$(13)
35020 color rgb(255,0,255)
35030 print"生まれた月を入力してください" + chr$(13)
35040 color rgb(0,0,0)
35050 Input"生まれた月:",month
35060 '誕生日入力 生まれた日を入力
35070 cls
35080 color rgb(255,255,255)
35090 print"誕生日入力 生まれた日入力" + chr$(13)
35100 color rgb(255,0,255)
35110 print"生まれた日を入力してください" + chr$(13)
35120 color rgb(0,0,0)
35130 Input"生まれた日:",day
35140 '人生の転機を見る
35150 'グラフィック領域　ここから
35160 cls 3:talk ""
35170 line(0,0)-(1150,60),rgb(0,0,255),bf
35180 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35190 line(0,60)-(1150,470),rgb(127,255,212),bf
35200 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35210 line(0,470)-(1150,520),rgb(0,255,0),bf
35220 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
35230 'グラフィック描画領域  ここまで
35240 cls
35250 buffername$=bufname$ + bufname2$
35260 color rgb(255,255,255)
35270 print buffername$;"さんの人生の転機を見る1"+chr$(13)
35280 color rgb(255,0,255)
35290 buf_total2=buf_total-(fix(buf_total/10)*10)
35300 tenki1_year=year+buf_total2
35310 tenki2_year=year+buf_total2+5
35320 tenki3_year=year+buf_total2+5+5
35330 tenki4_year=year+buf_total2+5+5+5
35340 tenki1=buf_total2
35350 tenki2=buf_total2+5
35360 tenki3=buf_total2+5+5
35370 tenki4=buf_total2+5+5+5
35380 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35390 print tenki1_year;"年";tenki1;"歳"+chr$(13)
35400 print tenki2_year;"年";tenki2;"歳"+chr$(13)
35410 print tenki3_year;"年";tenki3;"歳"+chr$(13)
35420 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35430 color rgb(0,0,0)
35440 print"エンターキーを押してください"
35450 key$=Input$(1)
35460 if key$=chr$(13) then goto Life_Tenki:
35470 '2ページ目
35480 cls
35490 color rgb(255,255,255)
35500 print buffername$;"さんの人生の転機2"+chr$(13)
35510 color rgb(255,0,255)
35520 tenki5_year = tenki4_year + 5
35530 tenki6_year = tenki4_year + 5 + 5
35540 tenki7_year = tenki4_year + 5 + 5 + 5
35550 tenki8_year = tenki4_year + 5 + 5 + 5+5
35560 tenki5 = tenki4 + 5
35570 tenki6 = tenki4 + 5 + 5
35580 tenki7 = tenki4 + 5 + 5 + 5
35590 tenki8 = tenki4 + 5 + 5 + 5 + 5
35600 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35610 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35620 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35630 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35640 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35650 color rgb(0,0,0)
35660 print"エンターキーを押してください",key$
35670 key$=Input$(1)
35680 if key$ = chr$(13) then goto 34770
35690 '3ページ目
35700 cls
35710 color rgb(255,255,255)
35720 print buffername$;"さんの人生の転機3"+chr$(13)
35730 '計算部分
35740 tenki_year9=tenki8_year + 5
35750 tenki_year10=tenki8_year + 5 + 5
35760 tenki_year11=tenki8_year+5+5+5
35770 tenki_year12=tenki8_year+5+5+5+5
35780 tenki9=tenki8+5
35790 tenki10=tenki8+5+5
35800 tenki11=tenki8+5+5+5
35810 tenki12=tenki8+5+5+5+5
35820 color rgb(255,0,255)
35830 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35840 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35850 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35860 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35870 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35880 color rgb(0,0,0)
35890 print"エンターキーを押してください"
35900 key$=Input$(1)
35910 if key$=chr$(13) then goto 35000
35920 'グラフィック描画領域 ここから
35930 cls 3
35940 line(0,0)-(1150,60),rgb(0,0,255),bf
35950 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35960 line(0,60)-(1150,470),rgb(127,255,212),bf
35970 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35980 line(0,470)-(1150,850),rgb(0,255,0),bf
35990 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
36000 'グラフィック描画領域 ここまで
36010 '4回目
36020 cls
36030 color rgb(255,255,255)
36040 print buffername$;"さんの人生の転機４"+chr$(13)
36050 color rgb(255,0,255)
36060 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
36070 '計算部分
36080 tenki_year13 = tenki_year12 + 5
36090 tenki_year14 = tenki_year12 + 5 + 5
36100 tenki_year15 = tenki_year12 + 5 + 5 + 5
36110 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
36120 tenki13 = tenki12 + 5
36130 tenki14 = tenki12 + 5 + 5
36140 tenki15 = tenki12 + 5 + 5 + 5
36150 tenki16 = tenki12 + 5 + 5 + 5 + 5
36160 color rgb(255,0,255)
36170 print tenki_year13;"年";tenki13;"歳"+chr$(13)
36180 print tenki_year14;"年";tenki14;"歳"+chr$(13)
36190 print tenki_year15;"年";tenki15;"歳"+chr$(13)
36200 print tenki_year16;"年";tenki16;"歳"+chr$(13)
36210 color rgb(0,0,0)
36220 print"コマンドを入れてください"+chr$(13)
36230 print"q+エンターキー:トップ画面"+chr$(13)
36240 Print"エンターキー:次へ行く"+chr$(13)
36250 print"コマンド:"
36260 key$=Input$(1)
36270 if key$=chr$(13) then goto 35370
36280 IF key$="q" then goto 7590
36290 '
36300 cls
36310 color rgb(255,255,255)
36320 print buffername$;"さんの人生の転機5"+chr$(13)
36330 color rgb(255,0,255)
36340 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
36350 tenki_year17=tenki_year16+5
36360 tenki_year18=tenki_year16+5+5
36370 tenki_year19=tenki_year16+5+5+5
36380 tenki_year20=tenki_year16+5+5+5+5
36390 tenki17=tenki16+5
36400 tenki18=tenki16+5+5
36410 tenki19=tenki16+5+5+5
36420 tenki20=tenki16+5+5+5+5
36430 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36440 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36450 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36460 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36470 color rgb(0,0,0)
36480 print"コマンドを入れてください"+chr$(13)
36490 print"トップに戻る:q+エンターキー"+chr$(13)
36500 print"最初から:エンターキー"+chr$(13)
36510 print"コマンド:"
36520 key$=Input$(1)
36530 if key$=chr$(13) then goto 34230
36540 if key$="q" then goto Main_Screen1:
36550 '改名チェック 改名候補を入力
36560 'グラフィック　領域　ここから
36570 '左側 部分
36580 cls 3:talk ""
36590 line(0,0)-(1100,60),rgb(0,0,255),bf
36600 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36610 line(0,60)-(1100,380),rgb(127,255,212),bf
36620 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36630 line(0,380)-(790,470),rgb(0,255,0),bf
36640 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36650 '中央の縦の線 ここから
36660 'line(1100,0)-(1112,370),rgb(0,0,0),b
36670 '中央の縦の線 ここまで
36680 '右側 部分
36690 line(1103,0)-(1700,60),rgb(0,0,255),bf
36700 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36710 'グラフィック 領域　ここまで
36720 '吉凶判定
36730 if buffer_K=0 then
36740 buffer_check$="○"
36750 else
36760 buffer_check$="☓"
36770 endif
36780 'Title 左側の文字
36790 'rgb(255,255,255):白
36800 color rgb(255,255,255)
36810 locate 1,0
36820 print"安斎流姓名判断 改名チェッカー"
36830 'Title 右側の文字
36840 locate size(2)-16,0
36850 print"改名候補リスト(3件まで)"
36860 '候補リストの名前部分 (右側)
36870 '1行目
36880 'locate 22,2
36890 locate size(2)-18,2
36900 color rgb(0,0,0)
36910 print "番号"
36920 'locate 26,2
36930 locate size(2)-14,2
36940 print"名前"
36950 'locate 32,2
36960 locate size(2)-8,2
36970 print"吉凶"
36980 'locate 36,2
36990 locate size(2)-4,2
37000 print"判定"
37010 '2行目
37020 select case kaimei_count
37030 case 0:
37040 'データー1件 の時
37050 kaimei_count = kaimei_count + 1
37060 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
37070 buffer_Kaimei$(0,1,0,0)=name$
37080 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
37090 buffer_Kaimei$(0,0,0,1)=buffer_check$
37100 'cls
37110 color rgb(255,0,255)
37120 'locate 23,3
37130 locate size(2)-17,3
37140 print buffer_Kaimei$(1,0,0,0)
37150 'locate 25,3
37160 locate size(2)-15,3
37170 print buffer_Kaimei$(0,1,0,0)
37180 'locate 32,3
37190 locate size(2)-8,3
37200 print buffer_Kaimei$(0,0,1,0)
37210 locate size(2)-3,3
37220 print buffer_Kaimei$(0,0,0,1)
37230 case 1:
37240 'データー2件の時
37250 color rgb(255,0,255)
37260 kaimei_count = kaimei_count + 1
37270 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
37280 buffer_Kaimei$(0,2,0,0)=name$
37290 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
37300 buffer_Kaimei$(0,0,0,2)=buffer_check$
37310 'cls
37320 '1行目
37330 'locate 23,3
37340 locate size(2)-17,3
37350 print buffer_Kaimei$(1,0,0,0)
37360 'locate 25,3
37370 locate size(2)-15,3
37380 print buffer_Kaimei$(0,1,0,0)
37390 'locate 32,3
37400 locate size(2)-8,3
37410 print buffer_Kaimei$(0,0,1,0)
37420 'locate 37,3
37430 locate size(2)-3,3
37440 print buffer_Kaimei$(0,0,0,1)
37450 '2行目
37460 'locate 23,4
37470 locate size(2)-17,4
37480 print buffer_Kaimei$(2,0,0,0)
37490 'locate 25,4
37500 locate size(2)-15,4
37510 print buffer_Kaimei$(0,2,0,0)
37520 'locate 32,4
37530 locate size(2)-8,4
37540 print buffer_Kaimei$(0,0,2,0)
37550 'locate 37,4
37560 locate size(2)-3,4
37570 print buffer_Kaimei$(0,0,0,2)
37580 case 2:
37590 'データー3件の時
37600 '1
37610 color rgb(255,0,255)
37620 kaimei_count=kaimei_count+1
37630 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37640 buffer_Kaimei$(0,3,0,0)=name$
37650 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37660 buffer_Kaimei$(0,0,0,3)=buffer_check$
37670 '2  1行目
37680 'locate 23,3
37690 locate size(2)-17,3
37700 print buffer_Kaimei$(1,0,0,0)
37710 'locate 25,3
37720 locate size(2)-15,3
37730 print buffer_Kaimei$(0,1,0,0)
37740 'locate 32,3
37750 locate size(2)-8,3
37760 print buffer_Kaimei$(0,0,1,0)
37770 'locate 37,3
37780 locate size(2)-3,3
37790 print buffer_Kaimei$(0,0,0,1)
37800 '3  2行目
37810 'locate 23,4
37820 locate size(2)-17,4
37830 print buffer_Kaimei$(2,0,0,0)
37840 'locate 25,4
37850 locate size(2)-15,4
37860 print buffer_Kaimei$(0,2,0,0)
37870 'locate 32,4
37880 locate size(2)-8,4
37890 print buffer_Kaimei$(0,0,2,0)
37900 'locate 37,4
37910 locate size(2)-3,4
37920 print buffer_Kaimei$(0,0,0,2)
37930 '4  3行目
37940 'locate 23,5
37950 locate size(2)-17,5
37960 print buffer_Kaimei$(3,0,0,0)
37970 'locate 25,5
37980 locate size(2)-15,5
37990 print  buffer_Kaimei$(0,3,0,0)
38000 'locate 32,5
38010 locate size(2)-8,5
38020 print buffer_Kaimei$(0,0,3,0)
38030 'locate 37,5
38040 locate size(2)-3,5
38050 print buffer_Kaimei$(0,0,0,3)
38060 case 3:
38070 'データー4件の時
38080 '1
38090 '2
38100 '3
38110 '4
38120 '5
38130 end select
38140 '説明部分　左側
38150 locate 0,2
38160 color rgb(255,0,255)
38170 print"思いついた候補の名前"
38180 locate 0,4
38190 print"(ニックネーム　or 会社名)を"
38200 locate 0,6
38210 print"10文字以内で入力してください"
38220 color rgb(0,0,0)
38230 locate 0,8
38240 if kaimei_count = 1 or kaimei_count = 2 then
38250 Input"名前:",kouho_name$
38260 name$=kouho_name$
38270 n=len(name$)
38280 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 35650
38290 'else
38300 if n =< 10 then goto 30770
38310 endif
38320 if kaimei_count = 3 then
38330 Input"エンターキーを押してください",key$
38340 if key$ = "" then
38350 'データーを初期化して、トップ画面に行く
38360 '1.データーを初期化
38370 kaimei_count = 0
38380 for i=1 to 3
38390 buffer_Kaimei$(i,0,0,0) = ""
38400 buffer_Kaimei$(0,i,0,0) = ""
38410 buffer_Kaimei$(0,0,i,0) = ""
38420 buffer_Kaimei$(0,0,0,i) = ""
38430 next i
38440 '2.トップ画面に行く
38450 goto 7590
38460 endif
38470 endif
38480 '霊遺伝姓名学 ここから
38490 'グラフィック領域　ここから
38500 '性別入力
38510 Reiden_Top_Input_Sextype:
38520 cls 3:talk ""
38530 No=1:y=0:key$="":bg=0:init "kb:4"
38540 sp_on 1,1:sp_put 1,(10,200),1,0
38550 'Line1
38560 line (0,0)-(850,60),rgb(0,0,255),bf
38570 line (0,0)-(847,57),rgb(0,255,0),b
38580 'Line 2
38590 line (0,63)-(853,537),rgb(127,255,212),bf
38600 line (0,60)-(850,540),rgb(0,0,0),b
38610 'Line 3
38620 line (0,540)-(850,630),rgb(0,255,0),bf
38630 line (0,543)-(853,633),rgb(0,0,255),b
38640 'グラフィック領域　ここまで
38650 '音声表示
38660 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38670 '性別変数:sex_type=0
38680 '文字色： 白
38690 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38700 '文字色：赤
38710 color rgb(255,0,255)
38720 print"占う人の性別の番号を入れてください" + chr$(13)
38730 print" :1.女 性" + chr$(13)
38740 print" :2.男 性" + chr$(13)
38750 print" :3.前の画面に戻る" + chr$(13)
38760 locate 0,12
38770 color rgb(0,0,0)
38780 print "1.女性を選択しました"
38790 Reiden_Top_Input_Sextype2:
38800 y = 0:key$ = "":bg = 0
38810 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38820 key$=inkey$
38830 y=stick(1)
38840 bg=strig(1)
38850 pause 2.50*100
38860 wend
38870 if (key$=chr$(31) or y=1) then
38880 '
38890 select case No
38900 case 1:
38910 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38920 case 2:
38930 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38940 case 3:
38950 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38960 'case 4:
38970 'No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38980 end select
38990 endif
39000 if (key$ = chr$(30) or y = -1) then
39010 select case No
39020 case 1:
39030       No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39040 case 2:
39050        No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
39060 case 3:
39070        No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
39080 'case 4:
39090 '       No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39100 end select
39110 endif
39120 'if (key$=chr$(30) or y=-1) then
39130 'endif
39140 if (bg=2 or key$=chr$(13)) then
39150 select case No
39160 case 1:
39170 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
39180 case 2:
39190 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
39200 case 3:
39210 sp_on 3,0:goto Main_Screen1:
39220 'case 4:
39230 'sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
39240 end select
39250 endif
39260 '2:男性の場合 名前を入力
39270 '男性の性別:sex_type=2
39280 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
39290 '1:女性の場合 既婚の場合、旧姓で入力
39300 '女性の性別:sex_type=1
39310 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
39320 '3:終了処理
39330 'if val(No$)=4 then cls 3:end
39340 'if val(No$)=3 then goto Main_Screen1:
39350 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
39360 '１．男性の場合の名前入力
39370 '描画領域　ここから
39380 ReiIden_Input_male:
39390 cls 3:init"kb:2":talk ""
39400 'Line 1 Title
39410 line (0,0)-(850,60),rgb(0,0,255),bf
39420 line (0,0)-(850,57),rgb(0,255,0),b
39430 'Line2 Input name
39440 line (0,60)-(850,300),rgb(0,255,0),bf
39450 line (0,60)-(850,303),rgb(0,0,255),b
39460 '描画領域 ここまで
39470 '文字色：白
39480 color rgb(255,255,255)
39490 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
39500 '文字色：黒
39510 color rgb(0,0,0)
39520 print "名前の姓の部分を入れてください" + chr$(13)
39530 Input"名前(姓の部分):",name1$
39540 '名の入力部分
39550 cls
39560 color rgb(255,255,255)
39570 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
39580 color rgb(0,0,0)
39590 print "名前の名の部分を入れてください"+chr$(13)
39600 Input"名前(名の部分):",name2$:goto check:
39610 '2.女性の場合　既婚か未婚か確認する
39620 '2-2-1女性の姓の入力
39630 'グラフィック領域　ここから
39640 ReiIden_Input_female:
39650 cls 3:init"kb:2":talk ""
39660 'Line1 Title
39670 line (0,0)-(850,60),rgb(0,0,255),bf
39680 line (0,0)-(850,57),rgb(0,255,0),b
39690 'Line 2 入力欄
39700 line (0,60)-(850,360),rgb(0,255,0),bf
39710 line (0,60)-(850,357),rgb(0,0,255),b
39720 'Line 2 入力欄(名前入力)
39730 'グラフィック領域 ここまで
39740 cls:init"kb:2"
39750 color rgb(255,255,255)
39760 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39770 color rgb(255,0,0)
39780 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39790 color rgb(0,0,0)
39800 print "名前の姓の部分を入れてください"+chr$(13)
39810 Input "名前(姓の部分):",name3$
39820 '2-2-2女性の名の入力
39830 cls:init"kb:2"
39840 color rgb(255,255,255)
39850 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39860 color rgb(0,0,0)
39870 print "名前の名の部分を入れてください"+chr$(13)
39880 Input "名前(名の部分):",name4$
39890 '計算領域　ここから
39900 check:
39910 '苗字の画数:buffer_name1_count
39920 'name1$,name2$:男性
39930 if sex_type = 1 then
39940 'sex_type=1 :女性のとき
39950 buf_male_female_name1$=name3$
39960 buf_male_female_name2$=name4$
39970 endif
39980 if sex_type = 2 then
39990 'sex_type=2 :男性のとき
40000 buf_male_female_name1$=name1$
40010 buf_male_female_name2$=name2$
40020 endif
40030 buffer_name1_count=len(buf_male_female_name1$)
40040 buffer_name2_count=len(buf_male_female_name2$)
40050 select case buffer_name1_count
40060 'AとBを求める
40070 case 1:
40080 '1.苗字の画数が1つのとき
40090 'A:霊数 1
40100 A=1
40110 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40120 B = char_count(buf_name1$)
40130 case 2:
40140 '2.苗字の画数が2つのとき
40150 '2-1:苗字の1文字目:buf_name1$
40160 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40170 '2-2:苗字の2文字目:buf_name2$
40180 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
40190 A=char_count(buf_name1$)
40200 B=char_count(buf_name2$)
40210 'B=char_count(buf_name2$)
40220 case 3:
40230 '3.苗字の画数が3つの時
40240 '3-1:苗字の1文字目:buf_name1$
40250 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40260 '3-2:苗字が3つのときの2つ目の文字をもとめる
40270 '3-2:苗字の2つ目:buf_name2$
40280 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40290 '3-3:苗字が3つのときの3文字目
40300 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
40310 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
40320 if buf_name2$="々" then
40330 A = char_count(buf_name1$) * 2
40340 B = char_count(buf_name3$)
40350 else
40360 A = char_count(buf_name1$) + char_count(buf_name2$)
40370 B = char_count(buf_name3$)
40380 endif
40390 '姓が4文字
40400 case 4:
40410 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40420 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40430 buf_name3$=Mid$(buf_male_female_name1$,3,1)
40440 buf_name4$=Mid$(buf_male_female_name1$,4,1)
40450 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
40460 B=char_count(buf_name4$)
40470 case else:
40480 end select
40490 '2.C,Dを求める
40500 select case buffer_name2_count
40510 case 1:
40520 '名が1文字の時
40530 'CとDを求める
40540 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40550 C = char_count(buff_name1$)
40560 'D=1:霊数
40570 D = 1
40580 case 2:
40590 '名が2文字の時
40600 'CとDを求める
40610 '名の1文字目:buff_name1$
40620 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40630 '名の2文字目:buff_name2$
40640 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40650 C = char_count(buff_name1$)
40660 D = char_count(buff_name2$)
40670 case 3:
40680 '名が3文字の時
40690 'CとDを求める
40700 '名の1文字目:buff_name1$
40710 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40720 '名の2文字目:buff_name2$
40730 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40740 if buff_name2$ = "々" then
40750 buff_name2$ = buff_name1$
40760 endif
40770 '名の3文字目:buff_name3$
40780 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40790 C = char_count(buff_name1$)
40800 D = char_count(buff_name2$) + char_count(buff_name3$)
40810 end select
40820 '1.先祖運を求める
40830 buffer_Senzo = A + B
40840 '2.性格運を求める
40850 buffer_Seikaku = B + C
40860 '3.愛情運を求める
40870 buffer_Aijyou = C + D
40880 '4.行動運を求める
40890 buffer_Kouzou = A + D
40900 'if buffer_Kouzou=10 then
40910 'endif
40920 '1.生数を求める
40930 func buf_Seisu(buffer)
40940 if buffer < 10 then
40950 seisu=buffer
40960 endif
40970 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40980 seisu = 0
40990 endif
41000 if buffer > 10 then
41010 if buffer=20 then
41020 seisu = 0
41030 else
41040 n = buffer - (fix(buffer / 10) * 10)
41050 seisu = n
41060 endif
41070 endif
41080 endfunc seisu
41090 func buf_Wasu(buffer)
41100 buf_wasu = 0:wasu = 0
41110 if buffer < 10 then
41120 '
41130 wasu = buffer:goto wasu:
41140 else
41150 if buffer = 10 then
41160 wasu = 1:goto wasu:
41170 else
41180 if buffer > 10  then
41190 if buffer=19 or buffer=28 or buffer=37 then
41200 wasu=1:goto wasu:
41210 else
41220 if buffer = 29 then
41230 wasu=2:goto wasu:
41240 'endif
41250 else
41260 a = fix(buffer / 10)
41270 b = buffer - a * 10
41280 c = a + b
41290 if c = 19 or c=28 then
41300 wasu=1
41310 '
41320 else
41330 wasu=c
41340 endif
41350 endif
41360 endif
41370 endif
41380 endif
41390 if c < 10 then
41400 wasu = c
41410 'endif
41420 endif
41430 else
41440 if buffer=19 or buffer=28 then
41450 wasu = 1
41460 endif
41470 endif
41480 wasu:
41490 buf_wasu=wasu
41500 endfunc buf_wasu
41510 func buf_kyoudai$(buf_sex_type,buf_Sa$)
41520 select case buf_sex_type
41530 '1.女性の場合
41540 case 1:
41550 if (buf_Sa$ = "連続") then
41560 buffer_kyoudai$="長女"
41570 endif
41580 if (buf_Sa$ = "1差") then
41590 buffer_kyoudai$="次女"
41600 endif
41610 if (buf_Sa$ = "2差") then
41620 buffer_kyoudai$="三女"
41630 endif
41640 if (buf_Sa$ = "3差") then
41650 buffer_kyoudai$="四女"
41660 endif
41670 if (buf_Sa$ = "4差") then
41680 buffer_kyoudai$="五女"
41690 endif
41700 '男性の場合
41710 case 2:
41720 if (buf_Sa$ = "連続") then
41730 buffer_kyoudai$="長男"
41740 endif
41750 if (buf_Sa$ = "1差") then
41760 buffer_kyoudai$="次男"
41770 endif
41780 if (buf_Sa$ = "2差") then
41790 buffer_kyoudai$="三男"
41800 endif
41810 if (buf_Sa$ = "3差") then
41820 buffer_kyoudai$="四男"
41830 endif
41840 if (buf_Sa$ = "4差") then
41850 buffer_kyoudai$="五男"
41860 endif
41870 case else:
41880 end select
41890 kyoudai$=buffer_kyoudai$
41900 endfunc kyoudai$
41910 '1.タテ型
41920 '1.同じ数字が2組ある場合
41930 func Tate_gata$()
41940 if Senzo_wasu = Seikaku_wasu  then
41950 if Aijyou_wasu - Seikaku_wasu > 1 then
41960 Spirit_type$="タテ型"
41970 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41980 Sa$ = str$(Sa_count) + "差"
41990 else
42000 Spirit_type$="タテ型"
42010 Sa$="連続"
42020 endif
42030 endif
42040 endfunc
42050 '2. ナナメ型
42060 '同じ数字が2組ある場合
42070 func Naname_gata$()
42080 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
42090 Spirit_type$="斜め型"
42100 endif
42110 if Seikaku_wasu - Senzo_wasu > 1 then
42120 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
42130 Sa$=str$(Sa_count)+" 差"
42140 else
42150 Sa$="連続"
42160 endif
42170 endfunc
42180 '3.表十字型
42190 '同じ数字が2組ある場合
42200 func Omote_jyuji_gata1$()
42210 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
42220 Spirit_type$ = "表十字型"
42230 endif
42240 if Senzo _wasu - Seikaku_wasu > 1 then
42250 Sa_count = Senzo_wasu - Seikaku_wasu - 1
42260 else
42270 if Senzo_wasu  -  Seikaku_wasu = 1  then
42280 Sa$="連続"
42290 endif
42300 endif
42310 endfunc
42320 '3-1.表十字型(ヨコ系)
42330 func Omote_jyuji_gata_yoko$()
42340 endfunc
42350 '3-2.表十字型(上下型)
42360 func Omote_jyuji_gata_jyouge()
42370 endfunc
42380 '4.ヨコ型
42390 func Yoko_gata$()
42400 endfunc
42410 '5.上下型
42420 func Jyouge_gata$()
42430 endfunc
42440 '6.1.中広型(タテ系)
42450 func Nakahiro_Tate$()
42460 endfunc
42470 '6.2中広型(ナナメ系)
42480 func Nakahiro_Naname$()
42490 endfunc
42500 '6.3中広型(表十字型)
42510 func Nakahiro_Omotejyuji$()
42520 endfunc
42530 '7.1.中一差(タテ系)
42540 func Chuissa_Tate$()
42550 endfunc
42560 '7.2中一差(ナナメ系)
42570 func Chuissa_Naname$()
42580 endfunc
42590 '8.1.中二差(タテ系)
42600 func Chunissa_Tate$()
42610 endfunc
42620 '8.2.中二差(ナナメ系)
42630 '9.1.順序型(タテ上下系)
42640 func Chunissa_Tate_jyouge$()
42650 endfunc
42660 '9.2.順序型(タテ、ヨコ系)
42670 func Jyunjyo_Tate_yoko$()
42680 endfunc
42690 '9.3.順序型(ナナメ、上下系)
42700 func Jyunjyo_Naname_jyouge$()
42710 endfunc
42720 '9.4.順序型(ナナメ、ヨコ系)
42730 '10.1.中順序型(ヨコ系)
42740 func Nakajyunjyo_yoko$()
42750 endfunc
42760 '10.2.中順序型(上下系)
42770 func Nakajyunjyo_jyouge$()
42780 endfunc
42790 '11.1.隔離型(タテ、上下系)
42800 func Kakuri_tate_jyouge$()
42810 endfunc
42820 '11.2.隔離型(タテ、ヨコ系)
42830 func Kakuri_tate_yoko$()
42840 endfunc
42850 '11.3.隔離型(ナナメ、上下系)
42860 func Kakuri_Naname_jyouge$()
42870 endfunc
42880 '11.4.隔離型(ナナメ、ヨコ系)
42890 func Kakuri_Naname_yoko$()
42900 endfunc
42910 '11.5.隔離型(タテ系)
42920 func Kakuri_tate$()
42930 endfunc
42940 '11.6.隔離型(ナナメ系)
42950 func Kakuri_naname$()
42960 endfunc
42970 '11.7.隔離型(上下、ヨコ系)
42980 func Kakuri_Jyouge_yoko$()
42990 endfunc
43000 Spirit_type$="No data"
43010 '1.先祖運　和数
43020 Senzo_wasu = buf_Wasu(buffer_Senzo)
43030 '2.先祖運 生数
43040 Senzo_seisu = buf_Seisu(buffer_Senzo)
43050 '3.性格運 和数
43060 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
43070 '4.性格運 生数
43080 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
43090 '5.愛情運 和数
43100 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
43110 '6.愛情運 生数
43120 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
43130 '7.行動運 和数
43140 Koudou_wasu = buf_Wasu(buffer_Kouzou)
43150 '8.行動運 生数
43160 Koudou_seisu = buf_Seisu(buffer_Kouzou)
43170 '計算領域 ここまで
43180 '描画領域　ここから
43190 Result_ReiIden1:
43200 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
43210 'Title
43220 line (0,0)-(850,60),rgb(0,0,255),bf
43230 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
43240 'name
43250 line (0,60)-(850,165),rgb(0,255,0),bf
43260 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
43270 '生数、和数
43280 line (0,165)-(850,550),rgb(125,255,212),bf
43290 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
43300 'プッシュメッセージ
43310 line (0,550)-(850,650),rgb(0,255,0),bf
43320 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
43330 '描画領域　ここまで
43340 color rgb(255,255,255)
43350 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
43360 color rgb(0,0,0)
43370 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
43380 color rgb(255,0,255)
43390 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
43400 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
43410 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
43420 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
43430 talk "診断結果１です、あなたのわすうとせいすうです。"
43440 color rgb(0,0,0)
43450 print"エンターキーを押してください"
43460 'key$=Input$(1)
43470 while (bg <> 2 and key$ <> chr$(13))
43480 key$=inkey$
43490 bg=strig(1)
43500 pause 2.50*100
43510 wend
43520 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
43530 '描画領域　ここから
43540 Result_ReiIden2:
43550 cls 3:init"kb:4"
43560 'Title Color:青
43570 line (0,0)-(860,60),rgb(0,0,255),bf
43580 'Title 枠
43590 line (0,0)-(860,57),rgb(255,0,255),b
43600 'Message
43610 line (0,60)-(860,650),rgb(127,255,212),bf
43620 'Message 枠
43630 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
43640 '
43650 '描画領域　ここまで
43660 color rgb(255,255,255)
43670 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43680 '十二運の基礎運
43690 '1.四大主流型
43700 'パターン１ 同じ数字の場合
43710 '1.オール同数化 全部同じ
43720 '1-if
43730 sa_count=0
43740 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43750 Spirit_type$ = "オール同数化"
43760 Sa$="3差"
43770 else
43780 'パターン１ 同じ数字2つの場合
43790 '2.タテ型
43800 '数字が２つ同じ
43810 '2-if
43820 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43830 Spirit_type$ = "タテ型"
43840 '2.タテ型　1
43850 if Koudou_wasu - Senzo_wasu = 1 then
43860 Sa$="連続"
43870 else
43880 '2.タテ型　2
43890 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43900 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43910 Sa$=str$(Sa_count) + "差"
43920 endif
43930 endif
43940 endif
43950 endif
43960 '2.タテ型　3
43970 '1.type
43980 'Spirit_type$ = "四大主流型 タテ型"
43990 '3.斜め型
44000 '数字が２つ同じ
44010 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
44020 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
44030 Sa$="連続"
44040 else
44050 '先祖＝行動　性格運=愛情運
44060 '3-if
44070 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
44080 Spirit_type$="斜め型"
44090 '3.斜め型 1
44100 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
44110 Sa$ = "連続"
44120 else
44130 if (Seikaku_wasu - Koudou_wasu) < 1 then
44140 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
44150 endif
44160 endif
44170 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
44180 Sa_count = 3
44190 Sa$ = str$(Sa_count - 1) + "差"
44200 else
44210 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
44220 Sa_count = Senzo_wasu - Seikaku_wasu
44230 Sa$ = str$(Sa_count-1) + "差"
44240 endif
44250 endif
44260 endif
44270 'Spirit_type$ = str$(Sa_count) + "差"
44280 'endif
44290 'endif
44300 '3-if
44310 endif
44320 '3.斜め型 2
44330 '3.斜め型 3
44340 '数字が２つ同じ
44350 '表十字型
44360 '先祖運＝愛情運　　行動運＝性格運
44370 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
44380 Spirit_type$="表十字型"
44390 Sa_coun = Senzo_wasu - Seikaku_wasu
44400 if Sa_count > 1 then
44410 Sa$ = str$(Sa_count) + "差"
44420 else
44430 if Sa_count = 1 then
44440 Sa$ = "連続"
44450 endif
44460 endif
44470 endif
44480 'endif
44490 '数字が２つ同じ
44500 '表十字型(横型)
44510 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
44520 Spirit_type$="表十字型(ヨコ型)"
44530 'Sa$を後で書く
44540 endif
44550 '数字が２つ同じ
44560 '表十字型(上下型)
44570 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
44580 Spirit_type$="表十字型(上下型)"
44590 'Sa$を後で書く
44600 endif
44610 'ヨコ型
44620 if Koudou_wasu = Seikaku_wasu then
44630 n=abs(Senzo_wasu - Seikaku_wasu)
44640 n2 = abs(Aijyou_wasu-Seikaku_wasu)
44650 Spirit_type$="ヨコ型"
44660 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
44670 Sa$="連続"
44680 endif
44690 if n = n2 then
44700 if n > 1 then
44710 Sa_count = n - 1
44720 Sa$=str$(Sa_count)+"差"
44730 else
44740 Sa_Count = abs(n - n2)
44750 if Sa_Count > 1 then
44760 Sa$ = str$(Sa_Count) + "差"
44770 endif
44780 endif
44790 endif
44800 endif
44810 '上下型
44820 '同じ数字が1組みある場合
44830 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44840 Spirit_type$ = "上下型"
44850 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44860 'n = abs(Koudou_wasu-Senzo_wasu)
44870 'n2= abs(Seikaku_wasu-Senzo_wasu)
44880 'buf=min(n,n2)
44890 'Sa$=str$(buf - 1) + "差"
44900 Sa$="連続"
44910 endif
44920 endif
44930 '中広（なかこう)型(斜め系)
44940 '連続した数字が2組みある場合
44950 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
44960 'n=Min(Senzo_wasu ,Koudou_wasu)
44970 'n2=Max(Seikaku_wasu , Aijyou_wasu)
44980 'Spirit_type$="中広型（斜め系）"
44990 'Sa_count = n - n2 -1
45000 'if Sa_count > 1 then
45010 'Sa$ = str$(Sa_count-1) + "差"
45020 'else
45030 'if Sa_count = 1 then
45040 'Sa$="連続"
45050 'endif
45060 'endif
45070 'endif
45080 '中広（なかこう)型(表十字型)
45090 '連続した数字が2組みある場合
45100 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
45110 Spirit_type$="中広（なかこう)型(表十字型)"
45120 n=Min(Koudou_wasu , Seikaku_wasu)
45130 n2=Max(Aijyou_wasu , Senzo_wasu)
45140 Sa_count = n - n2
45150 if Sa_count > 1 then
45160 Sa$ = str$(Sa_count - 1) + "差"
45170 else
45180 if Sa_count = 1 then
45190 Sa$ = "連続"
45200 endif
45210 endif
45220 endif
45230 '中一差（タテ系)
45240 '連続した数字が2組みある場合
45250 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
45260 'Spirit_type$="中一差（タテ系)"
45270 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
45280 n = Max(Koudou_wasu,Aijyou_wasu)
45290 n2 = Max(Senzo_wasu,Seikaku_wasu)
45300 else
45310 n = Max(Koudou_wasu,Aijyou_wasu)
45320 n2 = Min(Senzo_wasu,Seikaku_wasu)
45330 endif
45340 Sa_count2 = abs(n2 - n) - 1
45350 if Sa_count2 >= 0 then
45360 select case Sa_count2
45370 case 1:
45380 '中一差（タテ系)
45390 Sa$ = "連続"
45400 Spirit_type$="中一差型（タテ系)*"
45410 case 2:
45420 '中二差型（タテ系)
45430 Sa$ = "1差"
45440 Spirit_type$="中二差型（タテ系)"
45450 case 3:
45460 '中広（なかこう)型(タテ系)
45470 Sa$ = "2差"
45480 Spirit_type$="中三差型（タテ系)"
45490 case 4:
45500 Sa$ = "3差"
45510 Spirit_type$="中広型(タテ系)"
45520 case  else:
45530 cls 3:print"例外に入りました"
45540 end select
45550 '
45560 else
45570 cls 3:print"例外に入りました"
45580 endif
45590 endif
45600 'endif
45610 '中一差（斜め系)
45620 '連続した数字が2組みある場合
45630 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
45640 n = Min(Koudou_wasu,Senzo_wasu)
45650 n2 = Max(Aijyou_wasu,Seikaku_wasu)
45660 Sa_count = n - n2 - 1
45670 select case Sa_count
45680 case 1:
45690 '中一差（斜め系)
45700 '連続した数字が2組みある場合
45710 Sa$="1差"
45720 Spirit_type$="中一差（斜め系)"
45730 case 2:
45740 '中二差（斜め系)
45750 '連続した数字が2組みある場合
45760 Sa$="2差"
45770 Spirit_type$="中二差（斜め系)"
45780 case 3:
45790 Sa$="3差"
45800 Spirit_type$="中広型（斜め系）"
45810 case else:
45820 end select
45830 endif
45840 '順序型(タテ、上下系)
45850 '数字が４つ連続してる場合
45860 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45870 Spirit_type$="順序型(タテ、上下系)"
45880 Sa$="連続"
45890 endif
45900 '中順序型(ヨコ系)
45910 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45920 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45930 Spirit_type$="中順序型(ヨコ系)"
45940 Sa$="1差"
45950 else
45960 '順序型(タテ、ヨコ系)
45970 '数字が４つ連続してる場合
45980 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45990 Spirit_type$="順序型(タテ、ヨコ系)"
46000 Sa$="連続"
46010 endif
46020 endif
46030 endif
46040 '中順序型(上下系)
46050 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
46060 n=Max(Senzo_wasu,Aijyou_wasu)
46070 n2=Min(Koudou_wasu,Seikaku_wasu)
46080 Sa_count = n2 - n
46090 if Sa_count > 1 then
46100 Spirit_type$="中順序型(上下系)"
46110 Sa$ = Str$(Sa_count) + "差"
46120 else
46130 '順序型(斜め、上下系)
46140 '数字が４つ連続してる場合
46150 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
46160 Spirit_type$ = "順序型(斜め、上下系)"
46170 Sa$="連続"
46180 endif
46190 endif
46200 endif
46210 '順序型(斜め、ヨコ系)
46220 '数字が４つ連続してる場合
46230 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
46240 Spirit_type$="順序型(斜め、ヨコ系)"
46250 Sa$="連続"
46260 endif
46270 '隔離型(タテ、上下系)
46280 '数字が1つおきに飛んでる場合
46290 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
46300 Spirit_type$="隔離型(タテ、上下系)"
46310 Sa$="1差"
46320 endif
46330 '隔離型(タテ、ヨコ系)
46340 '数字が1つおきに飛んでる場合
46350 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
46360 Spirit_type$="隔離型(タテ、ヨコ系)"
46370 Sa$="1差"
46380 endif
46390 '隔離型(斜め、上下系)
46400 '数字が1つおきに飛んでる場合
46410 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
46420 Spirit_type$="隔離型(斜め、上下系)"
46430 Sa$="1差"
46440 endif
46450 '隔離型(斜め、ヨコ系)
46460 '数字が1つおきに飛んでる場合
46470 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
46480 Spirit_type$="隔離型(斜め、ヨコ系)"
46490 Sa$="1差"
46500 endif
46510 '隔離型(タテ系)
46520 '数字が2つおきに飛んでる場合
46530 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
46540 Spirit_type$="隔離型(タテ系)"
46550 Sa$="1差"
46560 endif
46570 '隔離型(斜め系)
46580 '数字が2つおきに飛んでる場合
46590 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
46600 Spirit_type$="隔離型(斜め系)"
46610 Sa$="1差"
46620 endif
46630 '隔離型(上下、ヨコ系)
46640 '数字が2つおきに飛んでる場合
46650 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
46660 Spirit_type$="隔離型(上下、ヨコ系)"
46670 Sa$="1差"
46680 'endif
46690 endif
46700 'ここに移動
46710 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
46720 bg=0:bg2=0:key$="":init"kb:4":talk ""
46730 color rgb(255,0,255)
46740 print "●十二の基礎運" + chr$(13)
46750 print Spirit_type$ + Sa$;chr$(13)
46760 print "きょうだい：";Kyoudai$ + chr$(13)
46770 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46780 color rgb(0,0,0)
46790 print"前の画面:左の丸"+chr$(13)
46800 'print"保存して、もう一度やる：スペースキー"+chr$(13)
46810 print"トップ画面に戻る:右の丸"+chr$(13)
46820 'key$ = Input$(1)
46830 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
46840 key$=inkey$
46850 bg=strig(1)
46860 bg2=strig(0)
46870 pause 2.50*100
46880 wend
46890 if (key$ = chr$(13) or bg=2) then
46900 goto Main_Screen1:
46910 'else
46920 '保存して スペースキーでもう一度占う
46930 'if key$ = " " then
46940 'goto Save_Data1:
46950 else
46960 '
46970 if (key$ = "b" or bg2 = 2) then
46980 goto Result_ReiIden1:
46990 endif
47000 endif
47010 'endif
47020 'ファイル保存 占いデーターを一時保存
47030 Save_Data1:
47040 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
47050 'print#3は末尾は、セミコロンはいらない
47060 '末尾にセミコロンをつけると改行しない
47070 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
47080 ui_msg "保存しました"
47090 close #3
47100 goto Reiden_Top_Input_Sextype:
47110 '個人データーリスト  *parsonal_data
47120 Parsonal_data_top:
47130 cls 3:No=0:Key$="":bg=0:y=0
47140 sp_on 0,1:sp_put 0,(10,100),0,0
47150 line(0,0)-(800,60),rgb(0,0,255),bf
47160 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
47170 line (0,60)-(800,440),rgb(127,255,212),bf
47180 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
47190 line (0,440)-(800,670),rgb(0,255,0),bf
47200 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
47210 color rgb(255,255,255)
47220 print"◎個人データーリスト" + chr$(13)
47230 color rgb(255,0,255)
47240 print " :1.霊遺伝姓名学リスト" + chr$(13)
47250 print " :2.霊遺伝姓名学登録件数" + chr$(13)
47260 print " :3.霊遺伝姓名学データー検索"+chr$(13)
47270 print " :4.メインメニューへ行く"+chr$(13)
47280 color rgb(0,0,0):locate 0,10
47290 print "1.霊遺伝姓名学リストを選択"
47300 Parsonal_data_top2:
47310 key$="":bg=0:y=0
47320 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
47330 key$=inkey$
47340 bg=strig(1)
47350 y=stick(1)
47360 pause 2.50*100
47370 wend
47380 '*****************************************************
47390 '1.下のカーソル ここから 2024.10
47400 '*****************************************************
47410 if (key$=chr$(31) or y=1) then
47420 select case No
47430 case 0:
47440 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47450 case 1:
47460 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47470 case 2:
47480 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47490 case 3:
47500 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47510 end select
47520 endif
47530 '******************************************************
47540 '1.下のカーソル　 ここまで 2024.10
47550 '******************************************************
47560 '******************************************************
47570 '2.上のカーソル　 ここから 2024.10
47580 '******************************************************
47590 if (y=-1 or key$=chr$(30)) then
47600 select case No
47610 case 0:
47620 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47630 case 1:
47640 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47650 case 2:
47660 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47670 case 3:
47680 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47690 end select
47700 endif
47710 '******************************************************
47720 '2.上のカーソル　ここまで 2024.10
47730 '******************************************************
47740 '3.決定ボタン　ここから  2024.10
47750 '******************************************************
47760 if (bg=2 or key$=chr$(13)) then
47770 select case No
47780 case 0:
47790 sp_on 0,0:goto Parsonal_list1:
47800 case 1:
47810 sp_on 1,0:goto Entry_list_count:
47820 case 2:
47830 sp_on 2,0:goto Parsonal_list_Search:
47840 case 3:
47850 sp_on 3,0:goto Main_Screen1:
47860 end select
47870 endif
47880 '******************************************************
47890 '3.決定ボタン　ここまで 2024.10
47900 '******************************************************
47910 'if No = 1 then goto Parsonal_list1:
47920 'if No = 2 then goto Entry_list_count:
47930 'if No = 4 then goto Main_Screen1:
47940 'if No = 3 then goto Parsonal_list_Search:
47950 'if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
47960 '登録件数
47970 Entry_list_count:
47980 N = 0:bg=0:key$="":init"kb:4":talk ""
47990 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
48000 'N=1
48010 while eof(5) = 0
48020 line input #5,line$:N = N + 1
48030 'if line$="大吉数" then
48040 'continue:N = N - 1
48050 'else
48060 'N = N + 1
48070 'endif
48080 wend
48090 'c=N
48100 close #5
48110 c=N
48120 cls 3
48130 line (0,0)-(680,60),rgb(0,0,255),bf
48140 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
48150 line (0,60)-(680,180),rgb(127,255,212),bf
48160 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
48170 LINE (0,180)-(680,280),rgb(0,255,0),bf
48180 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
48190 color rgb(255,255,255)
48200 print "◎霊遺伝姓名学登録件数"+chr$(13)
48210 color rgb(255,0,255)
48220 'N=B-1:C=N
48230 print "登録件数は";c;"件です"+chr$(13)
48240 color rgb(0,0,0)
48250 print "エンターキーを押してください"+chr$(13)
48260 while (key$ <> chr$(13) and bg <> 2)
48270 key$=inkey$
48280 bg=strig(1)
48290 pause 2.50*100
48300 wend
48310 'a$ = Input$(1)
48320 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
48330 'パーソナルリスト ここから
48340 Parsonal_list1:
48350 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
48360 'Title
48370 line (0,0)-(850,60),rgb(0,0,255),bf
48380 line (0,0)-(850,57),rgb(255,255,255),b
48390 '個人名
48400 line (0,60)-(850,165),rgb(0,255,0),bf
48410 line (0,63)-(850,162),rgb(255,0,255),b
48420 '数値リスト
48430 line (0,165)-(850,550),rgb(255,212,212),bf
48440 line (0,168)-(850,547),rgb(0,0,255),b
48450 'ボタンメッセージ
48460 line (0,550)-(850,730),rgb(0,255,0),bf:
48470 line (0,553)-(853,733),rgb(255,0,255),b
48480 'Parsonal_list2:
48490 'color rgb(255,255,255):
48500 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
48510 'n=0
48520 open "config/Parsonal_data/parsonal_data.dat" for input as #7
48530 'bN=0
48540 while eof(7)=0
48550 'input #6,lines2$
48560 'close #6
48570 '
48580 line input #7,lines$:bN = bN + 1
48590 'if lines$ = "大吉数" then
48600 'continue:bN = bN - 1
48610 'else
48620 'bN = bN + 1
48630 'endif
48640 wend
48650 'buf_name1$(i)=Mid$(lines$,4,4)
48660 'next i
48670 'wend
48680 close #7
48690 'a=0
48700 open "config/Parsonal_data/parsonal_data.dat" for input as #8
48710 'while eof(8)=0
48720 for i=0 to (bN * 10) -1
48730 input #8,buflines$(i)
48740 'buflines$(i) = line$
48750 'a  =  a  +  1
48760 Next i
48770 'wend
48780 close #8
48790 Parsonal_list2:
48800 'while (n <= bN*10)
48810 'while (bg <> 2 and bg2 <> 2 )
48820 'bg = strig(1)
48830 'bg2 = strig(0)
48840 'n=((n+1) Mod bN)
48850 'pause 2.5*1000
48860 'wend
48870 'while n <= bN * 10
48880 'if bg2= 2 then goto Main_Screen1:
48890 'if bg = 2 then 'n=((n+1) Mod bN)
48900 'n=((n+1) Mod bN)
48910 'endif
48920 'if bg2 = 2 then goto Main_Screen1:
48930 while n <= bN * 10
48940 'Parsonal_list2:
48950 cls
48960 'if bg=2 then n=((n+1) Mod bN)
48970 color rgb(255,255,255)
48980 print "霊遺伝姓名学 リスト" + chr$(13)
48990 '性別を出す
49000 sex$ = show_sex_type$(buflines$((10*n) + 1))
49010 'n=0
49020 color rgb(0,0,0):
49030 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
49040 '
49050 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
49060 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
49070 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
49080 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
49090 'n = (( n + 1) Mod 3) - 1
49100 '
49110 'n = n + 1
49120 print "右の丸:次へ行く" + chr$(13)
49130 print "左の丸：トップへ戻る" + chr$(13)
49140 key$=input$(1)
49150 if key$= " " then n=((n+1) Mod bN)
49160 'goto Parsonal_list2:
49170 'wend
49180 if key$=chr$(13) then goto Main_Screen1:
49190 wend
49200 'goto Parsonal_list2:
49210 'n=((n+1) Mod bN)
49220 'endif
49230 'goto Parsonal_list2:
49240 'if bg = 2 then n = ((n + 1) Mod bN)
49250 'if bN = 3 then
49260 'if buflines$(0) = "大吉数" then
49270 'n = ((n + 1) Mod bN)
49280 'else
49290 'n=((n + 1) Mod bN)
49300 'wend
49310 'else
49320 'if bN=2 then
49330 'n=((n + 1) Mod bN)
49340 'endif
49350 'endif
49360 'cls
49370 'else
49380 'if bg2 = 2  then goto Main_Screen1:
49390 'wend
49400 'goto Parsonal_data_top:
49410 'endif
49420 'endif
49430 Parsonal_list_Search:
49440 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
49450 while eof(1)=0
49460 line input #1,lines$:hit_count=hit_count + 1
49470 wend
49480 close #1
49490 'bufname$(hit_count*10),buffname$(hit_count*10)
49500 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
49510 for i=0 to hit_count*10 - 1
49520 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
49530 next i
49540 close #2
49550 Search_find:
49560 cls 3:init "kb:2":talk ""
49570 'グラフィック領域　ここから
49580 line (0,0)-(770,60),rgb(0,0,255),bf
49590 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
49600 line (0,60)-(770,170),rgb(127,255,212),bf
49610 line(0,63)-(767,173),rgb(0,0,255),b
49620 line(0,170)-(770,440),rgb(0,255,0),bf
49630 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
49640 color rgb(255,255,255)
49650 print "霊遺伝姓名判断 データー検索"+chr$(13)
49660 color rgb(255,0,255)
49670 print "登録件数:";hit_count;"件です"+chr$(13)
49680 color rgb(0,0,0)
49690 print "調べたい人の名前を入れてください"+chr$(13)
49700 Input "名前:",name$
49710 cls
49720 for i = 0 to hit_count * 10 - 1
49730 if name$ = buffname$(i) then
49740 hcount = hcount + 1
49750 endif
49760 next i
49770 if hcount > 0 then
49780 init "kb:4":cls
49790 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49800 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
49810 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
49820 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
49830 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
49840 while (key$ <> chr$(13) and bg <> 2)
49850 key$=inkey$
49860 bg=strig(1)
49870 bg2=strig(0)
49880 pause 2.50*100
49890 wend
49900 'a$=input$(1)
49910 'if a$=" " then goto Search_find:
49920 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
49930 else
49940 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49950 color rgb(0,0,0):print"検索名:";name$+chr$(13)
49960 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
49970 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
49980 a$=input$(1)
49990 IF a$=chr$(13) then goto Main_Screen1:
50000 endif
50010 '相性のデーターを保存する機能
50020 '保存ファイル：bestAisyou.dat
50030 '保存フォルダ:config/Aisyou_dat/
50040 Save_Aisyou:
50050 open "config/Aisyou_data" for append as #1
50060 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
50070 close #1
50080 ui_msg "保存しました"
50090 key$ = input$(1)
50100 '設定変更項目
50110 Config_Setting:
50120 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
50130 sp_on 0,1:sp_put 0,(10,100),0,0
50140 'グラフィック領域　ここから
50150 'Line 1
50160 line (0,0)-(850,60),rgb(0,0,255),bf
50170 line (0,0)-(850,57),rgb(255,255,255),b
50180 'Line 2
50190 line (0,60)-(850,460),rgb(127,255,212),bf
50200 line (0,57)-(850,457),rgb(0,0,0),b
50210 'Line 3
50220 line (0,460)-(850,640),rgb(0,255,0),bf
50230 line (0,457)-(850,637),rgb(0,0,0),b
50240 'グラフィック領域　ここまで
50250 color rgb(255,255,255)
50260 print "設定　トップメニュー" + chr$(13)
50270 color rgb(255,0,255)
50280 print " :1.キーボードの設定" + chr$(13)
50290 print " :2.トップ画面に戻る"
50300 'print " :4.プログラムの終了"+chr$(13)
50310 color rgb(0,0,0):locate 0,10
50320 print "1.キーボードの設定を選択"
50330 'print "番号を選んでエンターキー"+chr$(13)
50340 'Input "番号:",No
50350 'No=4:プログラムの終了
50360 'if No = 4 then
50370 Config_Setting2:
50380 y=0:bg=0:key$=""
50390 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
50400 key$=inkey$
50410 y=stick(1)
50420 bg=strig(1)
50430 pause 2.50*100
50440 wend
50450 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
50460 select case No
50470 case 0:
50480 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
50490 case 1:
50500 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
50510 'if (y=-1 or key$=chr$(30)) then
50520 '
50530 '
50540 'case 3:
50550 '       No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),00,0:goto Config_Setting2:
50560 end select
50570 endif
50580 if (key$=chr$(13) or bg=2) then
50590 select case No
50600 case 0:
50610 sp_on 0,0:goto Keyboard_Setting:
50620 case 1:
50630 sp_on 1,0:goto Main_Screen1:
50640 end select
50650 endif
50660 'cls 3:talk"しゅうりょうします":ui_msg"終了します":end
50670 'else
50680 'select case No
50690 'No=1:キーボードの設定
50700 'case 1:
50710 'goto Keyboard_Setting:
50720 'No=2:音の設定
50730 'case 2:
50740 'No=3:トップに戻る
50750 'case 3:
50760 'goto Main_Screen1:
50770 'No=1〜3以外
50780 'case else:
50790 'goto Config_Setting:
50800 'end select
50810 'endif
50820 '1.キーボードの設定
50830 Keyboard_Setting:
50840 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
50850 sp_on 0,1:sp_put 0,(10,100),0,0
50860 'グラフィック領域　ここから
50870 'Line 1
50880 line (0,0)-(1050,60),rgb(0,0,255),bf
50890 line (0,0)-(1050-3,57),rgb(255,255,255),b
50900 'Line 2
50910 line (0,60)-(1050,460),rgb(127,255,212),bf
50920 line (0,57)-(1050-3,457),rgb(0,0,0),b
50930 'Line 3
50940 line (0,460)-(1050,640),rgb(0,255,0),bf
50950 line (0,457)-(1050-3,637),rgb(0,0,0),b
50960 'グラフィック領域　ここまで
50970 '文字色　白
50980 color rgb(255,255,255)
50990 print "設定1 キーボードの設定" + chr$(13)
51000 color rgb(255,0,255)
51010 print " :1.バーチャルキーボード表示する" + chr$(13)
51020 print " :2.バーチャルキーボードを表示しない" + chr$(13)
51030 print " :3.トップ画面に戻る" + chr$(13)
51040 print " :4.終了する" + chr$(13)
51050 color rgb(0,0,0)
51060 locate 0,10
51070 print "1.バーチャルキーボードを表示するを選択"
51080 Keyboard_Setting2:
51090 y=0:bg=0:key$=""
51100 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
51110 key$=inkey$
51120 y=stick(1)
51130 bg=strig(1)
51140 pause 2.50*100
51150 wend
51160 '****************************************************************************************************************
51170 '下のカーソル　ここから
51180 '****************************************************************************************************************
51190 if (y=1 or key$=chr$(31)) then
51200 select case No
51210 case 0:
51220 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
51230 case 1:
51240 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
51250 case 2:
51260 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
51270 case 3:
51280 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
51290 end Select
51300 endif
51310 '*******************************************************************************************************************
51320 '下のカーソル　ここまで
51330 '*******************************************************************************************************************
51340 '*******************************************************************************************************************
51350 '上のカーソル　ここから
51360 '********************************************************************************************************************
51370 '********************************************************************************************************************
51380 '上のカーソル　ここまで
51390 '********************************************************************************************************************
51400 '********************************************************************************************************************
51410 '決定ボタン　ここから
51420 '*********************************************************************************************************************
51430 if (key$=chr$(13) or bg=2) then
51440 select case No
51450 case 0:
51460       init "kb:2":
51470 case 1:
51480 sp_on 1,0:init "kb:0":
51490 case 2:
51500 sp_on 2,0:goto Main_Screen1:
51510 case 3:
51520 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
51530 end select
51540 endif
51550 '*********************************************************************************************************************
51560 '決定ボタン　ここまで
51570 '*********************************************************************************************************************
51580 ' Print "番号を選んでください" + chr$(13)
51590 ' Input "番号:",SelectNo3
51600 'if SelectNo3 = 4 then
51610 'cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
51620 'else
51630 'Select case SelectNo3
51640 'case 1:
51650 'if keyboard_flag = 0 then
51660 'keyboard_flag=1:init"kb:2"
51670 'goto Keyboard_Setting:
51680 'endif
51690 'case 2:
51700 'if keyboard_flag=1 then
51710 'keyboard_flag=0:init"kb:0"
51720 'goto Keyboard_Setting:
51730 'endif
51740 'case 3:
51750 'goto Main_Screen1:
51760 'case else:
51770 'goto Keyboard_Se
51780 'end Select
51790 'endif
