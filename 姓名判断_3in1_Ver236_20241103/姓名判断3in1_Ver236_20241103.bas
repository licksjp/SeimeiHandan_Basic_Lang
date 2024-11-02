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
670 'Version2.36:Date:2024.11.02                      *
680 '*****************************************************
690 '設定ファイル　漢字文字データ                                      *
700 'Version:Mojidata20200411.dat Date:20200411          *
710 'Version:Mojidata20200415.dat Date:20200415          *
720 'Version:Mojidata20200506.dat Date:20200506          *
730 'Version:Mojidata20200513.dat Date:20200513          *
740 'Version:Mojidata20200516.dat Date:20200516          *
750 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
760 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
770 '*****************************************************
780 '* 開発再開　2024.9.20　Ver2.33                        *
790 '* 開発再開 Date:2024.09.20                          *
800 '*************************************************
810 '新機能
820 'Date:2020.05.27
830 'Parsonal_data.datに個人データーを保存機能追加
840 '*****************************************************
850 'メモリー確保 文字領域,数値データー                                  *
860 '*****************************************************
870 clear 4*4000,4*1000000
880 '*****************************************************
890 'Screen 定義                                           *
900 '*****************************************************
910 Screen 1,1,1,1
920 '*****************************************************
930 'Sprite 定義                                           *
940 '*****************************************************
950 gload "./config/gazo/"+"selection.png",1,10,100
960 gload "./config/gazo/"+"selection.png",1,10,200
970 gload "./config/gazo/"+"selection.png",1,10,300
980 gload "./config/gazo/"+"selection.png",1,10,400
990 gload "./config/gazo/"+"selection.png",1,10,500
1000 sp_def 0,(10,100),32,32
1010 sp_def 1,(10,200),32,32
1020 sp_def 2,(10,300),32,32
1030 sp_def 3,(10,400),32,32
1040 sp_def 4,(10,500),32,32
1050 '*****************************************************
1060 '改名チェック変数                                            *
1070 '****************************************************
1080 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1090 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1100 '*****************************************************
1110 'キーボードフラグ                                            *
1120 '0:キーボード非表示                                          *
1130 '1:キーボード表示                                           *
1140 '*****************************************************
1150 keyboard_flag = 0
1160 '*****************************************************
1170 '性別の選択用変数                                            *
1180 '*****************************************************
1190 dim sex_type$(2)
1200 '*****************************************************
1210 '相性占い　設定項目 ここから                                      *
1220 '*****************************************************
1230 count=0:line_count=0
1240 dim buffer_Aisyou_type$(10,10)
1250 dim buffer_Kaimei_data_name$(10)
1260 '*****************************************************
1270 '改名チェックの選択肢の変数                                       *
1280 '*****************************************************
1290 dim select$(3)
1300 open "config/Selection/Selection.dat" for input as #2
1310 for i=0 to 2
1320 input #2,select$(i)
1330 next i
1340 close #2
1350 'select$(0)="改名リストに追加する"
1360 'select$(1)="改名リストに追加しない"
1370 'select$(2)="トップ画面に行く"
1380 '*****************************************************
1390 '総数を出す変数 改名チェック変数                                    *
1400 'dim buffer_total$                                   *
1410 '1.理解し合える最良のカップル                                     *
1420 '*****************************************************
1430 dim buf_good_couple1(20)
1440 dim buf_good_couple2(20)
1450 '*****************************************************
1460 '2.互いに自然体でつきあえるカップル                                  *
1470 '*****************************************************
1480 dim buf_natural_couple1(20)
1490 dim buf_natural_couple2(20)
1500 '**************************************************
1510 dim buf_good_for_man1(20)
1520 dim buf_good_for_man2(20)
1530 '*****************************************************
1540 '4.女性にとって居心地の良い相性                                    *
1550 '*****************************************************
1560 dim buf_good_for_woman1(20)
1570 dim buf_good_for_woman2(20)
1580 '*****************************************************
1590 '5.恋愛経験を重ねた後なら愛を育める                                  *
1600 '*****************************************************
1610 dim short_of_experience1(20)
1620 dim short_of_experience2(20)
1630 '*****************************************************
1640 '6.結婚への発展が困難なカップル                                    *
1650 '*****************************************************
1660 dim buf_difficult_for_couple1(20)
1670 dim buf_difficult_for_couple2(20)
1680 '*****************************************************
1690 '7.愛し方にズレが出てくる二人                                     *
1700 '*****************************************************
1710 dim buf_difference_of_love1(20)
1720 dim buf_difference_of_love2(20)
1730 '*****************************************************
1740 '相性占い　設定項目　ここまで
1750 '*****************************************************
1760 '8.互いの価値観が噛み合わない相性 ここから                              *
1770 '*****************************************************
1780 dim buf_difference_of_KachiKan1(20)
1790 dim buf_difference_of_KachiKan2(20)
1800 '*****************************************************
1810 '8.互いに価値観が噛み合わない相性 ここまで                              *
1820 '*****************************************************
1830 '相性診断　相性パターン結果　ここから
1840 dim Result_Aisyou_type$(8)
1850 '*****************************************************
1860 '相性診断 相性パターン結果 ここまで                                  *
1870 '*****************************************************
1880 '2019/04/07 姓名判断アプリ 作成開始                             *
1890 '姓名判断　 名前の総数での吉凶を調べる                                 *
1900 '*****************************************************
1910 buf_count=0:buffer_count=0:count=0:buffer=0
1920 '*****************************************************
1930 '合計文字数                                               *
1940 '*****************************************************
1950 totalmoji=0
1960 dim buf_Input_data$(10),buf_Input_data2$(10)
1970 dim bufer_name$(10),bufer_name2$(10)
1980 dim buf_Input_name$(10),buf_Input_name2$(10)
1990 '*****************************************************
2000 '定数文字1画〜27画                                          *
2010 'ファイルから各画数を読み込んで代入する。                                *
2020 '*****************************************************
2030 '1行目だけ読み込む                                           *
2040 '*****************************************************
2050 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
2060 for i=0 to 26
2070 input #2,buf_lines$(i)
2080 next i
2090 close #2
2100 '*****************************************************
2110 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2120 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2130 '1画
2140 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2150 '2画
2160 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2170 '3画
2180 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2190 '4画
2200 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2210 '5画
2220 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2230 '6画
2240 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2250 '7画
2260 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2270 '8画
2280 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2290 '9画
2300 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2310 '10画
2320 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2330 '11画
2340 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2350 '12画
2360 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2370 '13画
2380 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2390 '14画
2400 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2410 '15画
2420 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2430 '16画
2440 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2450 '17画
2460 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2470 '18画
2480 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
2490 '19画
2500 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
2510 '20画
2520 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
2530 '21画
2540 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
2550 '22画
2560 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
2570 '23画
2580 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2590 '24画
2600 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2610 '25画
2620 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2630 '26画
2640 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2650 '27画
2660 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2670 dim Moji_data$(Moji_total+27+27)
2680 '******************************************************
2690 'dim bufmoji$(10),Input_data$(10)                     *
2700 '１画の文字   サイズ:21+2(漢字)                                 *
2710 '******************************************************
2720 dim buf_char_hiragana1$(Moji_1)
2730 '******************************************************
2740 '2画の文字  サイズ 58+14=72(漢字)                              *
2750 '******************************************************
2760 dim buf_char_hiragana2$(Moji_2)
2770 '******************************************************
2780 '3画の文字 サイズ:48+29=77(漢字)                               *
2790 '******************************************************
2800 dim buf_char_hiragana3$(Moji_3)
2810 '******************************************************
2820 '4画の文字 サイズ:29+51=80(漢字)                               *
2830 '******************************************************
2840 dim buf_char_hiragana4$(Moji_4)
2850 '******************************************************
2860 '５画の文字  サイズ:18+59=77(漢字)                              *
2870 '******************************************************
2880 dim buf_char_hiragana5$(Moji_5)
2890 '******************************************************
2900 '6画の文字  サイズ:79(漢字)                                    *
2910 '******************************************************
2920 dim buf_char_hiragana6$(Moji_6)
2930 '******************************************************
2940 '7画の文字  サイズ:88(漢字)                                    *
2950 '******************************************************
2960 dim buf_char_hiragana7$(Moji_7)
2970 '******************************************************
2980 '8画の文字                                                *
2990 '******************************************************
3000 dim buf_char_hiragana8$(Moji_8)
3010 '******************************************************
3020 '9画の文字                                                *
3030 '******************************************************
3040 dim buf_char_hiragana9$(Moji_9)
3050 '******************************************************
3060 '10画の文字 98文字                                          *
3070 '******************************************************
3080 dim buf_char_hiragana10$(Moji_10)
3090 '******************************************************
3100 '11画の文字                                               *
3110 '******************************************************
3120 dim buf_char_hiragana11$(Moji_11)
3130 '******************************************************
3140 '12画の文字                                               *
3150 '******************************************************
3160 dim buf_char_hiragana12$(Moji_12)
3170 '******************************************************
3180 '13画の文字 81文字                                          *
3190 '******************************************************
3200 dim buf_char_hiragana13$(Moji_13)
3210 '******************************************************
3220 '14画の文字                                               *
3230 '******************************************************
3240 dim buf_char_hiragana14$(Moji_14)
3250 '******************************************************
3260 '15画の文字                                               *
3270 '******************************************************
3280 dim buf_char_hiragana15$(Moji_15)
3290 '******************************************************
3300 '16画の文字                                               *
3310 '******************************************************
3320 dim buf_char_hiragana16$(Moji_16)
3330 '******************************************************
3340 '17画の文字                                               *
3350 '******************************************************
3360 dim buf_char_hiragana17$(Moji_17)
3370 '******************************************************
3380 '18画の文字                                               *
3390 '******************************************************
3400 dim buf_char_hiragana18$(Moji_18)
3410 '19画の文字
3420 dim buf_char_hiragana19$(Moji_19)
3430 '20画の文字
3440 dim buf_char_hiragana20$(Moji_20)
3450 '21画の文字
3460 dim buf_char_hiragana21$(Moji_21)
3470 '22画の文字
3480 dim buf_char_hiragana22$(Moji_22)
3490 '23画の文字
3500 dim buf_char_hiragana23$(Moji_23)
3510 '24画の文字
3520 dim buf_char_hiragana24$(Moji_24)
3530 '25画の文字
3540 dim buf_char_hiragana25$(Moji_25)
3550 dim buf_char_hiragana26$(Moji_26)
3560 dim buf_char_hiragana27$(Moji_27)
3570 '結果表示1　吉凶データー 81パターン
3580 dim buf_Kikkyo$(81)
3590 '結果表示２
3600 '安斎流姓名判断 吉凶  1.地運
3610 dim buf_Kikkyo_Anzai_chiunn$(70)
3620 '安斎流姓名判断　　吉凶  2.人運
3630 dim buf_Kikkyo_Anzai_jinunn$(69)
3640 '安斎流姓名判断 吉凶 3.外運
3650 'dim buf_Kikkyo_Anzai_gaiunn$(70)
3660 '安斎流姓名判断 吉凶　　4.総運
3670 dim buf_Kikkyo_Anzai_total$(80)
3680 '霊遺伝姓名学　変数
3690 A=0
3700 B=0
3710 C=0
3720 D=0
3730 '1.先祖運
3740 buffer_senzo=0
3750 '2.性格運
3760 buffer_seikaku=0
3770 '3.愛情運
3780 buffer_Aijyou=0
3790 '4.行動運
3800 buffer_Kouzou=0
3810 '1-1.先祖運　和数
3820 Senzo_wasu=0
3830 '1-2.先祖運　生数
3840 Senzo_seisu=0
3850 '2-1.性格運 和数
3860 Seikaku_wasu=0
3870 '2-2.性格運 生数
3880 Seikaku_seisu=0
3890 '3-1.愛情運 和数
3900 Aijyou_wasu=0
3910 '3-2.愛情運 生数
3920 Aijyou_seisu=0
3930 '4-1 行動運 和数
3940 Koudo_wasu=0
3950 '4-2 行動運 生数
3960 Koudo_seisu=0
3970 'データー読み込み　ここから
3980 'データー読み込み　1.ひらがな
3990 '1画の文字   6文字 23文字
4000 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
4010 '全ファイルを読み込む
4020 for i = 0 to 26+Moji_total+27
4030 input #1,Moji_data$(i)
4040 next i
4050 close #1
4060 '全ファイル読み込み　ここまで
4070 for i = 27+1 to (Moji_1)+27+1
4080 '1画の文字にデーターをコピーする
4090 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4100 next i
4110 '2画の文字    98文字
4120 for i = Moji_Min_2  to (Moji_Max_2)
4130 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4140 next i
4150 '3文字の文字    77文字
4160 for i = Moji_Min_3  to (Moji_Max_3)
4170 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4180 next i
4190 '4文字の文字   80文字
4200 for i = (Moji_Min_4)  to (Moji_Max_4)
4210 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4220 next i
4230 '5文字の文字 77文字
4240 for i = Moji_Min_5 to (Moji_Max_5)
4250 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4260 next i
4270 '6文字の文字 79文字
4280 for i = Moji_Min_6  to Moji_Max_6
4290 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4300 next i
4310 '7文字の文字 170文字
4320 for i = Moji_Min_7 to Moji_Max_7
4330 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4340 next i
4350 '8画の文字 120文字
4360 for i = Moji_Min_8 to Moji_Max_8
4370 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4380 next i
4390 '9画の文字  103文字
4400 for i = Moji_Min_9 to Moji_Max_9
4410 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4420 next i
4430 '10画の文字 285文字
4440 for i = Moji_Min_10 to (Moji_Max_10)
4450 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4460 next i
4470 '11画の文字
4480 for i = Moji_Min_11 to Moji_Max_11
4490 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
4500 next i
4510 '12画の文字
4520 for i = Moji_Min_12 to Moji_Max_12
4530 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
4540 next i
4550 '13画の文字 81
4560 for i = Moji_Min_13 to Moji_Max_13
4570 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
4580 next i
4590 '14画の文字 66
4600 for i = Moji_Min_14 to Moji_Max_14
4610 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
4620 next i
4630 '15画の文字 59
4640 'for i = Moji_Min_15 to (Moji_Max_15) - 1
4650 for i=Moji_Min_15 to  Moji_Max_15
4660 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
4670 next i
4680 '16画の文字 44
4690 for i=Moji_Min_16 to Moji_Max_16
4700 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
4710 next i
4720 '17画の文字
4730 for i = Moji_Min_17 to Moji_Max_17
4740 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
4750 next i
4760 '18画の文字
4770 for i = Moji_Min_18 to Moji_Max_18
4780 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
4790 next i
4800 '19画の文字 17文字
4810 for i = Moji_Min_19 to Moji_Max_19
4820 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
4830 next i
4840 '20 画の文字 13文字
4850 for  i = Moji_Min_20 to Moji_Max_20
4860 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
4870 NEXT i
4880 '21画の文字 6
4890 for i = Moji_Min_21 to (Moji_Max_21)
4900 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
4910 next i
4920 '22 画の文字 4
4930 for i = Moji_Min_22 to Moji_Max_22
4940 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4950 next i
4960 '23画の文字  3文字
4970 for i = Moji_Min_23 to Moji_Max_23
4980 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
4990 next i
5000 '24画の文字  3文字
5010 for i = Moji_Min_24 to Moji_Max_24
5020 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5030 next i
5040 '25 画の文字 4
5050 for i = Moji_Min_25 to Moji_Max_25
5060 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5070 next i
5080 '26画の文字  3文字
5090 for i = Moji_Min_26 to Moji_Max_26
5100 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5110 next i
5120 '27画の文字  3文字
5130 for i = Moji_Min_27 to Moji_Max_27
5140 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5150 next i
5160 '吉凶データー読み込み
5170 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
5180 for i=0 to 80
5190 input #1,buf_Kikkyo$(i+1)
5200 next i
5210 close #1
5220 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
5230 for m=0 to 69
5240 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5250 next m
5260 close #2
5270 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
5280 for i=1 to 70
5290 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
5300 next i
5310 close #3
5320 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
5330 for i=0 to 79
5340 input #4,buf_Kikkyo_Anzai_total$(i)
5350 next i
5360 close #4
5370 '****************************************************
5380 '0.理解し合えるカップル　ここから                                  *
5390 '****************************************************
5400 restore 6540
5410 for i=0 to 19
5420 read buf_good_couple1(i)
5430 next i
5440 restore 6550
5450 for j=0 to 19
5460 read buf_good_couple2(j)
5470 next j
5480 '*****************************************************
5490 '0.理解し合えるカップル ここまで                                   *
5500 '*****************************************************
5510 '*****************************************************
5520 '1.互いに自然体でつきあえる二人　ここから                               *
5530 '*****************************************************
5540 restore 6610
5550 for i=0 to 19
5560 read buf_natural_couple1(i)
5570 next i
5580 restore 6620
5590 for j=0 to 19
5600 read buf_natural_couple2(j)
5610 next j
5620 '*****************************************************
5630 '1.互いに自然体でつきあえる二人　ここまで                               *
5640 '*****************************************************
5650 '2        ここから                                       *
5660 '*****************************************************
5670 restore 6680
5680 for i=0 to 19
5690 read buf_good_for_man1(i)
5700 next i
5710 restore 6690
5720 for j=0 to 19
5730 read buf_good_for_man2(j)
5740 next j
5750 '******************************************************
5760 '2        ここまで                                        *
5770 '******************************************************
5780 '3        ここから                                        *
5790 '******************************************************
5800 restore 6750
5810 for i=0 to 19
5820 read buf_good_for_woman1(i)
5830 next i
5840 restore 6760
5850 for j=0 to 19
5860 read buf_good_for_woman2(j)
5870 next j
5880 '******************************************************
5890 '3        ここまで                                        *
5900 '******************************************************
5910 '4        ここから                                        *
5920 '******************************************************
5930 restore 6820
5940 for i=0 to 19
5950 read short_of_experience1(i)
5960 next i
5970 restore 6830
5980 for j=0 to 19
5990 read short_of_experience2(j)
6000 next j
6010 '******************************************************
6020 '4        ここまで                                        *
6030 '******************************************************
6040 '5.結婚への発展が困難なカップル  ここから                               *
6050 '******************************************************
6060 restore 6890
6070 for i=0 to 19
6080 read buf_difficult_for_couple1(i)
6090 next i
6100 restore 6900
6110 for j=0 to 19
6120 read buf_difficult_for_couple2(j)
6130 next j
6140 '******************************************************
6150 '5.結婚への発展が困難なカップル  ここまで                               *
6160 '******************************************************
6170 '6.愛し方にズレが出る二人 ここから                                   *
6180 '******************************************************
6190 restore 6960
6200 for i=0 to 19
6210 read buf_difference_of_love1(i)
6220 next i
6230 restore 6970
6240 for j=0 to 19
6250 read buf_difference_of_love2(j)
6260 next j
6270 '******************************************************
6280 '6.愛し方にズレが出る二人 ここまで                                   *
6290 '******************************************************
6300 '7.互いの価値観が噛み合わない相性 ここから                               *
6310 '******************************************************
6320 restore 7030
6330 for i=0 to 19
6340 read buf_difference_of_KachiKan1(i)
6350 next i
6360 restore 7040
6370 for j=0 to 19
6380 read buf_difference_of_KachiKan2(j)
6390 next j
6400 '******************************************************
6410 '7.互いの価値観が噛み合わない相性 ここまで                               *
6420 '******************************************************
6430 '相性占いタイプ ここから                                         *
6440 '******************************************************
6450 restore 7120
6460 for i=0 to 7
6470 read Result_Aisyou_type$(i)
6480 next i
6490 '****************************************************
6500 'Data文  ここから                                        *
6510 '****************************************************
6520 '0.理解し合えるカップル　ここから                                  *
6530 '****************************************************
6540 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
6550 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
6560 '****************************************************
6570 '0.理解し合えるカップル　ここまで                                  *
6580 '****************************************************
6590 '1.互いに自然体でつきあえるカップル ここから                            *
6600 '****************************************************
6610 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
6620 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
6630 '****************************************************
6640 '1.互いに自然体でつきあえるカップル　ここまで                            *
6650 '****************************************************
6660 '2.男性にとって居心地の良いカップル  ここから                           *
6670 '****************************************************
6680 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6690 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6700 '****************************************************
6710 '2男性にとって居心地の良いカップル ここまで                             *
6720 '****************************************************
6730 '3女性にとって居心地の良いカップル  ここから                            *
6740 '****************************************************
6750 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
6760 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
6770 '****************************************************
6780 '3女性にとって居心地の良いカップル  ここまで                            *
6790 '****************************************************
6800 '4恋愛経験を重ねた後なら愛を育める ここから                             *
6810 '****************************************************
6820 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6830 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6840 '****************************************************
6850 '4恋愛経験を重ねた後なら愛を育める ここまで                             *
6860 '****************************************************
6870 '5.結婚への発展が困難なカップル ここから                              *
6880 '****************************************************
6890 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6900 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6910 '****************************************************
6920 '5.結婚への発展が困難なカップル ここまで                              *
6930 '****************************************************
6940 '6.愛し方にズレが生じる二人  ここから                               *
6950 '****************************************************
6960 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
6970 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
6980 '****************************************************
6990 '6.愛し方にずれが生じる二人  ここまで                               *
7000 '****************************************************
7010 '7.互いに価値観が噛み合わない相性　ここから                             *
7020 '****************************************************
7030 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
7040 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
7050 '****************************************************
7060 '7.互いに価値観が噛み合わない相性 ここまで                             *
7070 '****************************************************
7080 '相性占い結果パターン ここから                                    *
7090 '****************************************************
7100 '0:理解し合える最良のカップル                                    *
7110 '****************************************************
7120 data "理解し合える最良のカップル"
7130 '****************************************************
7140 '1:互いに自然体で付き合えるカップル                                 *
7150 '****************************************************
7160 data "互いに自然体でつきあえるカップル"
7170 '****************************************************
7180 '2:男性にとって居心地の良い相性                                   *
7190 '****************************************************
7200 data "男性にとって居心地の良い相性"
7210 '****************************************************
7220 '3:女性にとって居心地の良い相性                                   *
7230 '****************************************************
7240 data "女性にとって居心地の良い相性"
7250 '****************************************************
7260 '4:恋愛経験を重ねた後なら愛を育める                                 *
7270 '****************************************************
7280 data "恋愛経験を重ねた後なら愛を育める"
7290 '****************************************************
7300 '5:結婚への発展が困難なカップル                                   *
7310 '****************************************************
7320 data "結婚への発展が困難なカップル"
7330 '****************************************************
7340 '6:愛し方にズレが生じる二人                                     *
7350 '****************************************************
7360 data "愛し方にずれが生じる二人"
7370 '****************************************************
7380 '7:互いに価値観が噛み合わない相性                                  *
7390 '****************************************************
7400 data "互いの価値観が噛み合わない相性"
7410 '************************************************
7420 'Data文   ここまで                                   *
7430 '************************************************
7440 '相性占い結果パターン ここまで
7450 '*******************************
7460 'メイン画面　ここから スタート (キーボードの選択)
7470 '*******************************
7480 '描画領域　ここから
7490 'Select_keybord:
7500 'talk ""
7510 'cls 3:font 48:No=0:y=0:key$="":bg=0:init"kb:4"
7520 'talk "キーボードの選択です。バーチャルキーボードを表示させますか？"
7530 'line (0,0)-(1200,60),rgb(0,0,255),bf
7540 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
7550 'line (0,60)-(1200,380),rgb(127,255,212),bf
7560 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
7570 'line (0,380)-(1200,450),rgb(0,255,0),bf
7580 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
7590 '描画領域　ここまで
7600 'Sprite
7610 'sp_on 0,1:sp_on 1,0:sp_on 2,0
7620 'sp_put 0,(10,100),0,0
7630 'sp_put 1,(10,200),1,0
7640 'sp_put 2,(10,300),2,0
7650 '設定画面 バーチャルキーボードの表示選択
7660 'color rgb(255,255,255)
7670 'print "●バーチャル キーボードの表示の選択" + chr$(13)
7680 'color rgb(255,0,255)
7690 'print " :1.バーチャルキーボードを表示する" + chr$(13)
7700 'print " :2.バーチャルキーボードを表示しない" + chr$(13)
7710 'print " :3.プログラムを終了する" + chr$(13)
7720 'color rgb(0,0,255)
7730 'print "バーチャルキーボードを表示するを選択"
7740 'Select_keybord2:
7750 'y=0:key$="":bg=0
7760 'while (key$ <> chr$(13) and key$ <> chr$(31) and y <> -1 and y <> 1 and bg <> 2)
7770 'y=stick(1)
7780 'key$=inkey$
7790 'bg=strig(1)
7800 'pause 3.56*100
7810 'wend
7820 '*****************************************************
7830 'カーソル下
7840 '*****************************************************
7850 'if (key$=chr$(31) or y=1) then
7860 'select case No
7870 'case 0:
7880 '       No=1:beep:locate 0,8:print "                      ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 0,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
7890 'case 1:
7900 '       No=2:beep:locate 0,8:print "                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 1,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7910 'case 2:
7920 '       No=0:beep:locate 0,8:print "                        ":locate 0,8:print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 2,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
7930 'end select
7940 'endif
7950 '***************************************************
7960 'カーソル上
7970 '***************************************************
7980 'if (y=-1 or key) then
7990 'select case No
8000 'case 0:
8010 '       No=2:beep:LOCATE 0,8:print "                                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 0,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
8020 'case 1:
8030 '       No=0:beep:locate 0,8:print "                                          ":locate 0,8:Print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 1,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
8040 'case 2:
8050 '       No=1:beep:locate 0,8:print "                                           ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
8060 'end select
8070 'endif
8080 'if (key$=chr$(13) or bg=2) then
8090 'select case No
8100 'case 0:
8110 '       init "kb:2":goto Main_Screen1:
8120 'case 1:
8130 '       init "kb:0":goto Main_Screen1:
8140 'case 2:
8150 '       talk"プログラムを終了します":ui_msg"プログラムを終了します":cls 3:cls 4:pause 2.34*100:color rgb(255,255,255):end
8160 'end select
8170 'endif
8180 '1:keybord_flag=1 きーボード表示
8190 'if val(a$) = 1 then init"kb:2":keyboard_flag=1:goto Main_Screen:
8200 '0:keybord_lag=0:キーボード非表示
8210 'if val(a$) = 2 then init"kb:0":keyboard_flag=0:goto Main_Screen:
8220 'keyNo=3 プログラム終了
8230 'if val(a$) = 3 then end
8240 'if val(a$) > 3 or val(a$)  = 0 then goto Select_keybord:
8250 'メイン画面 Top画面1
8260 Main_Screen1:
8270 cls 3:talk "":font 48:color rgb(255,255,255)
8280 talk "メイン画面です。番号を選んでください"
8290 'Text ,Grapgic clear:cls 3
8300 'グラフィック領域　ここから
8310 line (0,0)-(680,60),rgb(0,0,255),bf
8320 pen 5:line (0,0)-(677,57),rgb(127,255,212),b
8330 line (0,60)-(680,560),rgb(127,255,212),bf
8340 pen 5:line (0,57)-(677,557),rgb(0,0,255),b
8350 line (0,560)-(680,740),rgb(0,255,0),bf
8360 'グラフィック領域 ここまで
8370 pen 5:line (0,557)-(677,737),rgb(0,0,255),b
8380 Font 48
8390 '************************************************
8400 'Sprite                                         *
8410 '************************************************
8420 sp_on 0,1:sp_on 1,0:sp_on 2,0
8430 sp_put 0,(10,100),0,0
8440 '************************************************
8450 No=0:init"kb:4":y=0:key$="":bg=0
8460 print "◎姓名判断　メイン画面" + chr$(13)
8470 '************************************************
8480 '文字色:黒                                          *
8490 '************************************************
8500 color rgb(255,0,255)
8510 print " :1.姓名判断" + chr$(13)
8520 print " :2.姓名判断の設定" + chr$(13)
8530 print " :3.個人データーリスト" + chr$(13)
8540 print " :4.ヘルプ" + chr$(13)
8550 print " :5.プログラムの終了" + chr$(13)
8560 'x=touch(4)
8570 'print"7.プログラム終了"+chr$(13)
8580 '*************************************************
8590 '文字:黒                                            *
8600 '*************************************************
8610 color rgb(0,0,0)
8620 locate 0,12
8630 print "1.姓名判断を選択" + chr$(13)
8640 Main_Screen2:
8650 y=0:key$="":bg=0
8660 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8670 y=stick(1)
8680 key$=inkey$
8690 bg=strig(1)
8700 pause 2.55*100
8710 wend
8720 '**************************************************
8730 '1.下のキー  ここから
8740 '**************************************************
8750 if (y = 1 or key$ = chr$(31)) then
8760 select case No
8770 case 0:
8780 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
8790 case 1:
8800 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
8810 case 2:
8820 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
8830 case 3:
8840 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8850 case 4:
8860 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
8870 end select
8880 endif
8890 '***************************************************
8900 '1. 下のキー　ここまで
8910 '***************************************************
8920 '***************************************************
8930 '2.上のキー ここから
8940 '***************************************************
8950 if (key$=chr$(30) or y=-1) then
8960 select case No
8970 case 0:
8980 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8990 case 1:
9000 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9010 case 2:
9020 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9030 case 3:
9040 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9050 case 4:
9060 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9070 end select
9080 endif
9090 '***************************************************
9100 '3.決定ボタン ここから
9110 '***************************************************
9120 if (bg=2 or key$=chr$(13)) then
9130 select case No
9140 case 0:
9150 sp_on 0,0:goto seimeihandan_top:
9160 case 1:
9170 sp_on 1,0:goto seimeihandan_setting:
9180 case 2:
9190 sp_on 2,0:goto Parsonal_data_top:
9200 case 3:
9210 sp_on 3,0: goto help:
9220 case 4:
9230 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9240 end select
9250 endif
9260 '***************************************************
9270 '3.決定ボタン ここまで
9280 '***************************************************
9290 'No$=input$(1)
9300 'if val(No$) = 1  then goto seimeihandan_top:
9310 'if val(No$) = 2 then goto seimeihandan_setting:
9320 'if val(No$) = 3 then goto Parsonal_data_top:
9330 'if val(No$) = 4 then goto help:
9340 'if val(No$) = 5  then talk"終了します":cls 3:end
9350 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9360 'if No = "" then goto 7580
9370 '1.姓名判断トップ画面
9380 seimeihandan_top:
9390 cls:talk ""
9400 No=0:y=0:key$="":bg=0:talk""
9410 'タイトル文字:白
9420 font 48:color rgb(255,255,255),,rgb(176,196,222)
9430 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9440 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9450 sp_put 0,(10,100),0,0
9460 'グラフィック 描画領域　ここから
9470 'Main_Screen:
9480 cls 3
9490 '1.Title:青
9500 'Line 1
9510 line (0,0)-(870,60),rgb(0,0,255),bf
9520 pen 5:line(0,0)-(867,57),rgb(127,255,212),b
9530 'Line 2
9540 line (0,60)-(870,450),rgb(127,255,212),bf
9550 PEN 5:line(0,57)-(867,447),rgb(0,0,255),b
9560 'Line 3
9570 line (0,450)-(870,600),rgb(0,255,0),bf
9580 pen 5:line (0,447)-(867,597),rgb(0,0,255),b
9590 'グラフィック 描画領域 ここまで
9600 color rgb(255,255,255)
9610 print"◎姓名判断の種類トップメニュー"+chr$(13)
9620 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9630 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9640 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9650 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9660 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9670 seimeihandan_top2:
9680 y=0:key$="":bg=0
9690 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9700 key$=inkey$
9710 y=stick(1)
9720 bg=strig(1)
9730 pause 2.55*100
9740 wend
9750 '*************************************************
9760 '下のキー  ここから
9770 '*************************************************
9780 if (key$=chr$(31) or y=1) then
9790 select case No
9800 case 0:
9810 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9820 case 1:
9830 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9840 case 2:
9850 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9860 case 3:
9870 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9880 end select
9890 endif
9900 '*************************************************
9910 '下のキー　ここまで
9920 '*************************************************
9930 if (key$=chr$(30) or y=-1) then
9940 select case No
9950 case 0:
9960 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9970 case 1:
9980 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9990 case 2:
10000 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10010 case 3:
10020 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10030 end select
10040 endif
10050 '*************************************************
10060 '決定ボタン　ここから
10070 '*************************************************
10080 if (bg=2 or key$=chr$(13)) then
10090 select case No
10100 case 0:
10110 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10120 case 1:
10130 sp_on 1,0:goto Anzai_Top:
10140 case 2:
10150 sp_on 2,0:goto Kyusei_Top:
10160 case 3:
10170 sp_on 3,0:goto Main_Screen1:
10180 end select
10190 endif
10200 '*************************************************
10210 '決定ボタン　ここまで
10220 '*************************************************
10230 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10240 'if val(selectNo$)=2 then goto Anzai_Top:
10250 'if val(selectNo$)=3 then goto Kyusei_Top:
10260 'if val(selectNo$)=4 then goto Main_Screen1:
10270 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10280 '１．姓名判断(九星姓名判断トップ)
10290 'グラフィック領域　ここから
10300 Kyusei_Top:
10310 cls 3:No=0:y=0:bg=0:key$="":talk""
10320 sp_on 0,1:sp_put 0,(10,100),0,0
10330 line (0,0)-(760,60),rgb(0,0,250),bf
10340 pen 5:line (0,0)-(757,57),rgb(127,255,212),b
10350 line (0,60)-(760,460),rgb(127,255,212),bf
10360 pen 5:line(0,57)-(757,457),rgb(0,0,255),b
10370 line (0,460)-(760,680),rgb(0,255,0),bf
10380 pen 5:line(0,457)-(757,677),rgb(0,0,255),b
10390 'グラフィック領域　ここまで
10400 font 48:color rgb(255,255,255),,rgb(176,196,222)
10410 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10420 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10430 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10440 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10450 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10460 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10470 locate 0,10:color RGB(0,0,0)
10480 print "1.人名の吉凶を見るを選択"
10490 Kyusei_Top2:
10500 bg=0:key$="":y=0
10510 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10520 key$=inkey$
10530 y=stick(1)
10540 bg=strig(1)
10550 pause 2.50*100
10560 wend
10570 '****************************************************
10580 '下のキー　ここから
10590 '*****************************************************
10600 if (y=1 or key$=chr$(30)) then
10610 select case No
10620 case 0:
10630 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10640 case 1:
10650 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10660 case 2:
10670 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10680 case 3:
10690 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10700 end select
10710 endif
10720 '*****************************************************
10730 '下のキー　ここまで
10740 '*****************************************************
10750 '*****************************************************
10760 '上のキー　ここから
10770 '*****************************************************
10780 if (y=-1 or key$=chr$(31)) then
10790 select case No
10800 case 0:
10810 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10820 case 1:
10830 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10840 case 2:
10850 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10860 case 3:
10870 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10880 end select
10890 endif
10900 '*****************************************************
10910 '上のキー　ここまで
10920 '*****************************************************
10930 '*****************************************************
10940 '決定ボタン　ここから
10950 '*****************************************************
10960 if (key$=chr$(13) or bg=2) then
10970 select case No
10980 case 0:
10990 sp_on 0,0:goto Parson_name_kikkyo:
11000 case 1:
11010 sp_on 1,0:goto nick_name_check:
11020 case 2:
11030 sp_on 2,0:goto name_inyo_check:
11040 case 3:
11050 sp_on 3,0:goto seimeihandan_top:
11060 end select
11070 endif
11080 '*****************************************************
11090 '決定ボタン　ここまで
11100 '*****************************************************
11110 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
11120 'color rgb(0,0,0):Input "番号:",selectNo
11130 'selectNo=Input$(1)
11140 'if selectNo = 1 then goto Parson_name_kikkyo
11150 'if selectNo = 2 then goto nick_name_check:
11160 'if selectNo = 3 then goto name_inyo_check:
11170 'if selectNo = 4  then goto seimeihandan_top:
11180 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11190 '2.姓名判断 安斎流姓名判断　トップ画面
11200 '2-1名前の姓の部分を入力
11210 'グラフィック領域　ここから
11220 Anzai_Top_Screen:
11230 cls 3:LINE (0,0)-(820,60),rgb(0,0,255),bf
11240 pen 5:line (0,0)-(816,57),rgb(127,255,212),b
11250 line (0,60)-(820,260),rgb(127,255,212),bf
11260 pen 5:line(0,57)-(817,257),rgb(0,0,255),b
11270 line (0,260)-(820,350),rgb(0,255,0),bf
11280 pen 5:line(0,257)-(817,347),rgb(0,0,255),b
11290 font 48:talk"":init"KB:2"
11300 'グラフィック領域 ここまで
11310 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11320 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11330 COLOR rgb(255,0,255)
11340 print"名前を2回に分けて入力してください"+chr$(13)
11350 print"名前の姓の部分を入れてください"+chr$(13)
11360 color rgb(0,0,0)
11370 input"名前の姓:",bufname$
11380 buff1=len(bufname$)
11390 '2-2名前の名の部分を入力
11400 'グラフィック描画領域　ここから
11410 cls 3:init"kb:2"
11420 line (0,0)-(820,60),rgb(0,0,255),bf
11430 pen 5:line(0,0)-(817,57),rgb(127,255,212),b
11440 line (0,60)-(820,200),rgb(127,255,212),bf
11450 pen 5:line(0,57)-(817,197),rgb(0,0,255),b
11460 line (0,200)-(820,260),rgb(0,255,0),bf
11470 pen 5:line(0,197)-(817,257),rgb(0,0,255),b
11480 'グラフィック描画領域 ここまで
11490 COLOR rgb(255,255,255)
11500 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11510 talk"つぎに、名前のめいの部分を入れてください"
11520 color rgb(255,0,255)
11530 print"名前の名の部分を入れてください"+chr$(13)
11540 color rgb(0,0,0)
11550 input"名前の名:",bufname2$
11560 buff2=len(bufname2$)
11570 bufff=buff1+buff2
11580 'goto 24610
11590 select case bufff
11600 '姓1文字,名1文字
11610 case 2:
11620 cls
11630 '天運:buf_tenunn
11640 buf_tenunn=char_count(bufname$)
11650 '地運:buf_chiunn
11660 buf_chiunn=char_count(bufname2$)
11670 '人運 = 天運 + 地運
11680 buf_jinunn=buf_tenunn + buf_chiunn
11690 '外運 = 天運 + 人運
11700 buf_gaiunn = buf_tenunn + buf_chiunn
11710 '総数=buf_gaiunn
11720 buf_total=buf_gaiunn
11730 goto Result_Anzai:
11740 '姓１，名:2
11750 case 3:
11760 cls:
11770 if buff1=1 and buff2=2 then
11780 '1.天運:buf_tenunn
11790 buf_tenunn=char_count(bufname$)
11800 '2文字目の文字
11810 bufer_name2$(0)=Mid$(bufname2$,1,1)
11820 '3文字目の文字
11830 bufer_name2$(1)=Mid$(bufname2$,2,1)
11840 '2.人運
11850 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11860 '3.地運:buf_chiunn
11870 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11880 '4外運:buf_gaiunn
11890 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11900 '5.総数:buf_total
11910 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11920 goto Result_Anzai:
11930 endif
11940 if buff1=2 and buff2=1 then
11950 bufer_name$(0)=Mid$(bufname$,1,1)
11960 bufer_name$(1)=Mid$(bufname$,2,1)
11970 bufer_name2$(0)=Mid$(bufname$,1,1)
11980 '1.天運
11990 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12000 '2.人運
12010 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12020 '3.地運
12030 buf_chiunn=char_count(bufer_name2$(0))
12040 '4.外運
12050 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12060 '5.総数
12070 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12080 goto Result_Anzai:
12090 endif
12100 case 4:
12110 if buff1=2 and buff2=2 then
12120 bufer_name$(0)=Mid$(bufname$,1,1)
12130 bufer_name$(1)=Mid$(bufname$,2,1)
12140 bufer_name2$(0)=Mid$(bufname2$,1,1)
12150 bufer_name2$(1)=Mid$(bufname2$,2,1)
12160 '1.天運
12170 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12180 '2.人運
12190 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12200 '3.地運
12210 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12220 '4.外運
12230 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12240 '5.総数
12250 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12260 goto Result_Anzai:
12270 endif
12280 'パターン2 姓3文字 名1文字 total4文字
12290 if buff1=3 and buff2=1 then
12300 bufer_name$(0)=Mid$(bufname$,1,1)
12310 bufer_name$(1)=Mid$(bufname$,2,1)
12320 bufer_name$(2)=Mid$(bufname$,3,1)
12330 bufer_name2$(0)=Mid$(bufname2$,1,1)
12340 '1.天運
12350 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12360 '2.人運
12370 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12380 '3.地運
12390 buf_chiunn=char_count(bufer_name2$(0))
12400 '4.外運
12410 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12420 '5.総運
12430 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12440 goto Result_Anzai:
12450 endif
12460 'パターン３ 姓1,名３  合計４文字
12470 if buff1=1 and buff2=3 then
12480 bufer_name$(0)=Mid$(bufname$,1,1)
12490 bufer_name2$(0)=Mid$(bufname2$,1,1)
12500 bufer_name2$(1)=Mid$(bufname2$,2,1)
12510 bufer_name2$(2)=Mid$(bufname2$,3,1)
12520 '1.天運
12530 buf_tenunn = char_count(bufer_name$(0))
12540 '2.人運
12550 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12560 '3.地運
12570 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12580 '4.外運
12590 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12600 '5.総運
12610 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12620 goto Result_Anzai:
12630 endif
12640 case 5:
12650 '５文字の名前
12660 '1.  3文字姓 2字名
12670 if buff1=3 and buff2=2 then
12680 bufer_name$(0)=Mid$(bufname$,1,1)
12690 bufer_name$(1)=Mid$(bufname$,2,1)
12700 bufer_name$(2)=Mid$(bufname$,3,1)
12710 bufer_name2$(0)=Mid$(bufname2$,1,1)
12720 bufer_name2$(1)=Mid$(bufname2$,2,1)
12730 '1.天運
12740 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12750 '2.人運
12760 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12770 '3.地運
12780 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12790 '4.外運
12800 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12810 '5.総運
12820 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12830 goto Result_Anzai:
12840 endif
12850 if buff1=2 and buff2=3 then
12860 bufer_name$(0)=Mid$(bufname$,1,1)
12870 bufer_name$(1)=Mid$(bufname$,2,1)
12880 bufer_name2$(0)=Mid$(bufname2$,1,1)
12890 bufer_name2$(1)=Mid$(bufname2$,2,1)
12900 bufer_name2$(2)=Mid$(bufname2$,3,1)
12910 '1.天運
12920 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12930 '2.人運
12940 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12950 '3.地運
12960 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12970 '4.外運
12980 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12990 '5.総運
13000 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13010 goto Result_Anzai:
13020 endif
13030 if buff1=4 and buff2=1 then
13040 bufer_name$(0)=Mid$(bufname$,1,1)
13050 bufer_name$(1)=mid$(bufname$,2,1)
13060 bufer_name$(2)=mid$(bufname$,3,1)
13070 bufer_name$(3)=mid$(bufname$,4,1)
13080 bufer_name2$(0)=mid$(bufname2$,1,1)
13090 '1.天運
13100 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13110 '2.人運
13120 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13130 '3.地運
13140 buf_chiunn=char_count(bufer_name2$(0))
13150 '4.外運
13160 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13170 '5.総運
13180 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13190 goto Result_Anzai:
13200 endif
13210 case 6:
13220 '3字姓 3字名
13230 if buff1=3 and buff2=3 then
13240 bufer_name$(0)=Mid$(bufname$,1,1)
13250 bufer_name$(1)=Mid$(bufname$,2,1)
13260 bufer_name$(2)=Mid$(bufname$,3,1)
13270 bufer_name2$(0)=Mid$(bufname2$,1,1)
13280 bufer_name2$(1)=Mid$(bufname2$,2,1)
13290 bufer_name2$(2)=Mid$(bufname2$,3,1)
13300 '1.天運
13310 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13320 '2.人運
13330 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13340 '3.地運
13350 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13360 '4.外運
13370 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13380 '5.総運
13390 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13400 goto Result_Anzai:
13410 endif
13420 '4字姓 2字名
13430 if buff1=4 and buff2=2 then
13440 bufer_name$(0)=Mid$(bufname$,1,1)
13450 bufer_name$(1)=Mid$(bufname$,2,1)
13460 bufer_name$(2)=Mid$(bufname$,3,1)
13470 bufer_name$(3)=Mid$(bufname$,4,1)
13480 bufer_name2$(0)=Mid$(bufname2$,1,1)
13490 bufer_name2$(1)=Mid$(bufname2$,2,1)
13500 '1.天運
13510 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13520 '2.人運
13530 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13540 '3.地運
13550 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13560 '4.外運
13570 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13580 '5.総運
13590 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13600 goto Result_Anzai:
13610 endif
13620 '4字姓 3字名
13630 case 7:
13640 if buff1=4 and buff2=3 then
13650 bufer_name$(0)=Mid$(bufname$,1,1)
13660 bufer_name$(1)=Mid$(bufname$,2,1)
13670 bufer_name$(2)=Mid$(bufname$,3,1)
13680 bufer_name$(3)=Mid$(bufname$,4,1)
13690 bufer_name2$(0)=Mid$(bufname2$,1,1)
13700 bufer_name2$(1)=Mid$(bufname2$,2,1)
13710 bufer_name2$(2)=Mid$(bufname2$,3,1)
13720 '1.天運
13730 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13740 '2.人運
13750 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13760 ' 3.地運
13770 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13780 '4.外運
13790 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13800 '5.総運
13810 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13820 goto Result_Anzai:
13830 endif
13840 case else:
13850 end select
13860 '2.設定
13870 seimeihandan_setting:
13880 font 46:color rgb(0,0,0),,rgb(176,196,222)
13890 No=0:y=0:key$="":bg=0:talk""
13900 sp_on 0,1:sp_put 0,(10,100),0,0
13910 talk"設定画面です。番号を選んでエンターキーを押してください"
13920 'グラフィック領域　ここから
13930 cls 3:
13940 line (0,0)-(750,60),rgb(0,0,255),bf
13950 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
13960 line (0,60)-(750,560),rgb(127,255,212),bf
13970 pen 5:line (0,57)-(747,557),rgb(0,0,255),b
13980 line (0,560)-(750,750),rgb(0,255,0),bf
13990 pen 5:line(0,557)-(747,747),rgb(0,0,255),b
14000 'グラフィック領域 ここまで
14010 '1行目　文字色　 白
14020 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14030 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14040 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14050 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14060 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14070 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14080 COLOR rgb(0,0,0):locate 0,12:
14090 print"1.登録文字の確認を選択"+chr$(13)
14100 seimeihandan_setting2:
14110 y=0:key$="":bg=0
14120 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14130 key$=inkey$
14140 y=stick(1)
14150 bg=strig(1)
14160 pause 2.50*100
14170 wend
14180 '****************************************************
14190 '1.下のカーソル　ここから
14200 '****************************************************
14210 if (key$=chr$(31) or y=1) then
14220 select case No
14230 case 0:
14240 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14250 case 1:
14260 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14270 case 2:
14280 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14290 case 3:
14300 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14310 case 4:
14320 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14330 end select
14340 endif
14350 '*****************************************************
14360 '1.下のカーソル　ここまで
14370 '*****************************************************
14380 '*****************************************************
14390 '2.上のカーソル　ここから
14400 '*****************************************************
14410 if (key$=chr$(30) or y=-1) then
14420 select case No
14430 case 0:
14440 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14450 case 1:
14460 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14470 case 2:
14480 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14490 case 3:
14500 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14510 case 4:
14520 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14530 end select
14540 endif
14550 '******************************************************
14560 '2.上のカーソル　ここまで
14570 '******************************************************
14580 '******************************************************
14590 '3.決定ボタン　ここから
14600 '******************************************************
14610 if (key$=chr$(13) or bg=2) then
14620 select case No
14630 case 0:
14640 sp_on 0,0:goto Entry_moji_Top:
14650 case 1:
14660 sp_on 1,0:goto Entry_moji_check:
14670 case 2:
14680 sp_on 2,0:goto Moji_Kikkyo_Top:
14690 case 3:
14700 sp_on 3,0:goto Main_Screen1:
14710 case 4:
14720 sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14730 end select
14740 endif
14750 '******************************************************
14760 '3.決定ボタン　ここまで
14770 '******************************************************
14780 'Input"番号:",selectNo
14790 'if selectNo=1 then goto Entry_moji_Top:
14800 'if selectNo=2 then goto Entry_moji_check:
14810 'if selectNo=3 then goto Moji_Kikkyo_Top:
14820 'if selectNo=4 then goto Main_Screen1:
14830 'if selectNo=5 then talk"終了します":cls 3:end
14840 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
14850 '3 番号で吉凶を見る 入力
14860 Moji_Kikkyo_Top:
14870 font 46:color rgb(0,0,0),,rgb(176,196,222)
14880 init "kb:2"
14890 'グラフィック描画領域　ここから
14900 cls 3:talk""
14910 line (0,0)-(650,60),rgb(0,0,255),bf
14920 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
14930 line (0,60)-(650,255),rgb(127,255,212),bf
14940 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
14950 line (0,255)-(650,350),rgb(0,255,0),bf
14960 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
14970 'グラフィック描画領域 ここまで
14980 color rgb(255,255,255)
14990 print"画数での吉凶判定"+chr$(13)
15000 color rgb(255,0,255)
15010 print"画数を入れてください"+chr$(13)
15020 print"(Max:81文字)"+chr$(13)
15030 color rgb(0,0,0)
15040 Input"文字の画数:",Number
15050 if Number > 81 then goto Moji_Kikkyo_Top:
15060 if Number <=81 then goto Moji_Kikkyo:
15070 '3.番号で吉凶を見る 結果表示
15080 'グラフィック描画領域　ここから
15090 Moji_Kikkyo:
15100 cls 3:init "kb:4":key$="":bg=0
15110 line (0,0)-(700,60),rgb(0,0,255),bf
15120 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15130 line (0,60)-(700,260),rgb(127,255,212),bf
15140 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15150 line (0,260)-(700,350),rgb(0,255,0),bf
15160 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15170 'グラフィック描画領域　ここまで
15180 color rgb(255,255,255)
15190 print "画数で吉凶を求める"+chr$(13)
15200 color rgb(255,0,255)
15210 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15220 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15230 'endif
15240 'color rgb(0,0,0)
15250 'print"エンターキーを押してください"
15260 'key$=Input$(1)
15270 while (key$<>chr$(13) and bg <> 2)
15280 key$=inkey$
15290 bg=strig(1)
15300 pause 2.50*100
15310 wend
15320 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15330 '3.ヘルプ
15340 help:
15350 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15360 No=0:y=0:key$="":bg=0
15370 talk""
15380 '描画領域 ここから
15390 line (0,0) - (650,60),rgb(0,0,255),bf
15400 sp_on 0,1:sp_put 0,(10,100),0,0
15410 pen 5:line(0,0) - (647,57),rgb(127,255,212),b
15420 line (0,60) - (650,570),rgb(127,255,212),bf
15430 pen 5:line(0,57) - (647,567),rgb(0,0,255),b
15440 line (0,570) - (650,650),rgb(0,255,0),bf
15450 pen 5:line(0,567) - (647,647),rgb(0,0,255),b
15460 '描画領域　ここまで
15470 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15480 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15490 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15500 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15510 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15520 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
15530 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15540 color rgb(0,0,0)
15550 locate 0,12:print "1.バージョン情報を選択"
15560 'color rgb(0,0,0):Input"番号:",selectNo
15570 help2:
15580 y=0:key$="":bg=0
15590 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15600 key$=inkey$
15610 y=stick(1)
15620 bg=strig(1)
15630 pause 2.50*100
15640 wend
15650 if (y=1 or key$=chr$(30)) then
15660 select case No
15670 case 0:
15680 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15690 case 1:
15700 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15710 case 2:
15720 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15730 case 3:
15740 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15750 case 4:
15760 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15770 end select
15780 endif
15790 if (y=-1 or key$=chr$(31)) then
15800 select case No
15810 case 0:
15820 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15830 case 1:
15840 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15850 case 2:
15860 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15870 case 3:
15880 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15890 case 4:
15900 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15910 end select
15920 endif
15930 if (key$=chr$(13) or bg=2) then
15940 select case No
15950 case 0:
15960 sp_on 0,0:goto Version_info:
15970 case 1:
15980 sp_on 1,0:goto Document_info:
15990 case 2:
16000 sp_on 2,0:goto Config_Setting:
16010 case 4:
16020 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16030 case 3:
16040 sp_on 3,0:goto Main_Screen1:
16050 end select
16060 endif
16070 'if selectNo = 1 then goto Version_info:
16080 'if selectNo = 2 then goto Document_info:
16090 'if selectNo = 3 then goto Config_Setting:
16100 'プログラムの終了
16110 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
16120 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
16130 '前の画面に戻る
16140 'if selectNo=5 then goto Main_Screen1:
16150 'if selectNo > 4 or selectNo = 0 then goto help:
16160 'Menu1　画面
16170 talk"調べたい名前のみよじをいれてください"
16180 'グラフィック描画領域　ここから
16190 Parson_name_kikkyo:
16200 cls 3:init "KB:2"
16210 line (0,0)-(1050,60),rgb(0,0,255),bf
16220 pen 5:line(0,0)-(1047,57),rgb(127,255,212),b
16230 line (0,60)-(1050,180),rgb(127,255,212),bf
16240 pen 5:line(0,57)-(1047,177),rgb(0,0,255),b
16250 line (0,180)-(1050,250),rgb(0,255,0),bf
16260 pen 5:line(0,177)-(1047,247),rgb(0,0,255),b
16270 'グラフィック描画領域　ここまで
16280 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16290 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16300 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16310 cls
16320 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16330 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16340 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16350 goto complate_Kyusei:
16360 'メニュー6　バージョン表示
16370 'グラフィック　描画　領域　 ここから
16380 Version_info:
16390 cls 3:bg=0:talk ""
16400 line (0,0)-(1000,60),rgb(0,0,255),bf
16410 pen 5:line (0,0)-(997,57),rgb(127,255,212),b
16420 line (0,60)-(1000,665),rgb(127,255,212),bf
16430 pen 5:line(0,57)-(997,662),rgb(0,0,255),b
16440 line (0,665)-(1000,750),rgb(0,255,0),bf
16450 pen 5:line(0,662)-(997,747),rgb(0,0,255),b
16460 'グラフィック　描画 領域　 ここまで
16470 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16480 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16490 color rgb(255,0,255):PRINT"Ver:236.2024.11.02" + chr$(13)
16500 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16510 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16520 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16530 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16540 'ここを書き換える
16550 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.36です"
16560 color rgb(0,0,0):print"エンターキーを押してください"
16570 Version_info2:
16580 bg=0
16590 while (bg<>2)
16600 bg=strig(1)
16610 pause 2.50*100
16620 wend
16630 if bg = 2  then beep:goto Main_Screen1:
16640 complate_Kyusei:
16650 '文字数を求める変数
16660 buf_char_size=len(name$)
16670 buf_char_size2=len(name2$)
16680 '入力した文字を代入する変数
16690 '入力した文字を配列に代入する処理
16700 '姓名判断データー文字比較
16710 '画数を求める関数
16720 func char_count(buf_count$)
16730 count=0:buffer=0
16740 '1画の文字 23文字
16750 for j=0 to ((Moji_1)-1)
16760 if buf_count$=buf_char_hiragana1$(j) then
16770 count =1:
16780 endif
16790 next j
16800 '2画の文字
16810 for j=0 to ((Moji_2)-1)
16820 if buf_count$=buf_char_hiragana2$(j)  then
16830 count = 2:
16840 endif
16850 next j
16860 for j=0 to ((Moji_3)-1)
16870 if buf_count$=buf_char_hiragana3$(j) then
16880 count =3:
16890 endif
16900 next j
16910 for j=0 to ((Moji_4)-1)
16920 if buf_count$=buf_char_hiragana4$(j) then
16930 count = 4:
16940 endif
16950 next j
16960 for j=0 to ((Moji_5)-1)
16970 if buf_count$=buf_char_hiragana5$(j) then
16980 count = 5:
16990 endif
17000 next j
17010 for j=0 to ((Moji_6)-1)
17020 if buf_count$=buf_char_hiragana6$(j) then
17030 count= 6
17040 endif
17050 next j
17060 for  j=0 to ((Moji_7)-1)
17070 if buf_count$=buf_char_hiragana7$(j) then
17080 count=  7
17090 endif
17100 next j
17110 for j=0 to ((Moji_8)-1)
17120 if buf_count$=buf_char_hiragana8$(j) then
17130 count= 8
17140 endif
17150 next j
17160 for j=0 to ((Moji_9)-1)
17170 if buf_count$=buf_char_hiragana9$(j) then
17180 count=9
17190 endif
17200 next j
17210 for j=0 to ((Moji_10)-1)
17220 if buf_count$=buf_char_hiragana10$(j) then
17230 count=10
17240 endif
17250 next j
17260 for j=0 to ((Moji_11)-1)
17270 if buf_count$=buf_char_hiragana11$(j) then
17280 count=11
17290 endif
17300 next j
17310 for j=0 to  ((Moji_12)-1)
17320 if buf_count$=buf_char_hiragana12$(j) then
17330 count=12
17340 endif
17350 next j
17360 for j=0 to ((Moji_13)-1)
17370 if buf_count$=buf_char_hiragana13$(j) then
17380 count=13
17390 endif
17400 next j
17410 for j=0 to ((Moji_14)-1)
17420 if buf_count$=buf_char_hiragana14$(j) then
17430 count=14
17440 endif
17450 next j
17460 for j=0 to ((Moji_15)-1)
17470 if buf_count$=buf_char_hiragana15$(j) then
17480 count=15
17490 endif
17500 next j
17510 for j=0 to ((Moji_16)-1)
17520 if buf_count$=buf_char_hiragana16$(j) then
17530 count=16
17540 endif
17550 next j
17560 for j=0 to ((Moji_17)-1)
17570 if buf_count$=buf_char_hiragana17$(j) then
17580 count=17
17590 endif
17600 next j
17610 for j=0 to ((Moji_18)-1)
17620 if buf_count$=buf_char_hiragana18$(j) then
17630 count=18
17640 endif
17650 next j
17660 for j=0 to ((Moji_19)-1)
17670 if buf_count$=buf_char_hiragana19$(j) then
17680 count=19
17690 endif
17700 next j
17710 for j=0 to ((Moji_20)-1)
17720 if buf_count$=buf_char_hiragana20$(j) then
17730 count=20
17740 endif
17750 next i
17760 for j=0 to ((Moji_21)-1)
17770 if buf_count$=buf_char_hiragana21$(j) then
17780 count=21
17790 endif
17800 next j
17810 for j=0 to ((Moji_22)-1)
17820 if buf_count$=buf_char_hiragana22$(j) then
17830 count=22
17840 endif
17850 next j
17860 for j=0 to ((Moji_23)-1)
17870 if buf_count$=buf_char_hiragana23$(j) then
17880 count=23
17890 endif
17900 next j
17910 for j=0 to ((Moji_24)-1)
17920 if buf_count$=buf_char_hiragana24$(j) then
17930 count=24
17940 endif
17950 buffer = count
17960 next j
17970 endfunc buffer
17980 func show_sex_type$(sex$)
17990 buf_number=val(Mid$(sex$,4,1))
18000 if buf_number = 1 then
18010 buf_show_sex_type$="性別:女性"
18020 else
18030 if buf_number=2 then
18040 buf_show_sex_type$="性別:男性"
18050 endif
18060 endif
18070 endfunc buf_show_sex_type$
18080 '合計を求める関数
18090 func totalcounts(buffers$)
18100 buffers=0:
18110 for i=0 to len(buffers$)-1
18120 buffers=buffers+char_count(buffers$)
18130 next i
18140 endfunc buffers
18150 buf_count2=0:buf_count3=0
18160 'dim buf_Input_data$(len(name$))
18170 '1.苗字の文字数
18180 for n=0 to (buf_char_size-1)
18190 buf_Input_data$(n)=mid$(name$,n+1,1)
18200 next n
18210 for i=0 to (buf_char_size-1)
18220 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18230 next i
18240 '2.名の文字数
18250 for n2=0 to (buf_char_size2-1)
18260 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18270 next n2
18280 for i2=0 to (buf_char_size2-1)
18290 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18300 next i2
18310 '総数を出す
18320 select case (buf_char_size + buf_char_size2)
18330 case 6:
18340 if ((buf_char_size=4) and (buf_char_size2=2)) then
18350 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18360 endif
18370 if ((buf_char_size=3) and (buf_char_size2=3)) then
18380 if buf_Input_data$(1)="々" then
18390 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18400 else
18410 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18420 endif
18430 endif
18440 case 5:
18450 if ((buf_char_size=4) and (buf_char_size2=1)) then
18460 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18470 endif
18480 if ((buf_char_size=2) and (buf_char_size2=3)) then
18490 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18500 endif
18510 if ((buf_char_size=3) and (buf_char_size2=2)) then
18520 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18530 endif
18540 case 4:
18550 if ((buf_char_size=1) and (buf_char_size2=3)) then
18560 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18570 endif
18580 if ((buf_char_size=2) and (buf_char_size2=2)) then
18590 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18600 endif
18610 if ((buf_char_size=3) and (buf_char_size2=1)) then
18620 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18630 endif
18640 case 3:
18650 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18660 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18670 endif
18680 if ((buf_char_size=2) and (buf_char_size2=1)) then
18690 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18700 endif
18710 case 2:
18720 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18730 case else:
18740 end select
18750 '文字の総数をだす
18760 total_name$ = name$ + name2$
18770 '1.姓星を求める
18780 select case buf_char_size
18790 '苗字1文字のとき
18800 case 1:
18810 buf_seisei = char_count(buf_Input_data$(0)) + 1
18820 '苗字2文字の時
18830 case 2:
18840 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18850 '苗字3文字のとき
18860 case 3:
18870 if (buf_Input_data$(1)="々")  then
18880 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18890 else
18900 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18910 endif
18920 '苗字4文字のとき
18930 case 4:
18940 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18950 case else:
18960 end select
18970 '2.主星をだす
18980 '2.主星
18990 select case (buf_char_size + buf_char_size2)
19000 '姓名5文字のとき
19010 case 6:
19020 if ((buf_char_size=4) and (buf_char_size2=2)) then
19030 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19040 endif
19050 if ((buf_char_size=3) and (buf_char_size2=3)) then
19060 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19070 endif
19080 case 5:
19090 if ((buf_char_size=4) and (buf_char_size2=1)) then
19100 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19110 endif
19120 if ((buf_char_size=2) and (buf_char_size2=3)) then
19130 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19140 endif
19150 if ((buf_char_size=3) and (buf_char_size2=2)) then
19160 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19170 endif
19180 '姓名4文字のとき
19190 case 4:
19200 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19210 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19220 endif
19230 if ((buf_char_size=1) and (buf_char_size2=3)) then
19240 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19250 endif
19260 if ((buf_char_size=3) and (buf_char_size2=1)) then
19270 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19280 endif
19290 '姓名3文字のとき
19300 case 3:
19310 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19320 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19330 else
19340 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19350 endif
19360 case 2:
19370 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19380 case else:
19390 end select
19400 '3.名星を求める
19410 select case (buf_char_size + buf_char_size2)
19420 case 6:
19430 if ((buf_char_size=3) and (buf_char_size2=3)) then
19440 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19450 endif
19460 if ((buf_char_size=4) and (buf_char_size2=2)) then
19470 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19480 endif
19490 case 5:
19500 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19510 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19520 endif
19530 if ((buf_char_size=3) and (buf_char_size2=2)) then
19540 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19550 endif
19560 if ((buf_char_size=2) and (buf_char_size2=3))  then
19570 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19580 endif
19590 case 4:
19600 if ((buf_char_size=2) and (buf_char_size2=2)) then
19610 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19620 endif
19630 if ((buf_char_size=1) and (buf_char_size2=3)) then
19640 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19650 endif
19660 if ((buf_char_size=3) and (buf_char_size2=1)) then
19670 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19680 endif
19690 case 3:
19700 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19710 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19720 endif
19730 if ((buf_char_size=2) and (buf_char_size2=1)) then
19740 buf_meisei=char_count(buf_Input_data2$(0))+1
19750 endif
19760 case 2:
19770 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19780 case else:
19790 end select
19800 '4.外星を求める
19810 select case (buf_char_size + buf_char_size2)
19820 case 6:
19830 if buf_Input_data$(1)="々"  then
19840 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19850 else
19860 if ((buf_char_size=4) and (buf_char_size2=2)) then
19870 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19880 else
19890 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19900 endif
19910 endif
19920 case 5:
19930 if ((buf_char_size=4) and (buf_char_size2=1)) then
19940 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19950 endif
19960 if ((buf_char_size=3) and (buf_char_size2=2)) then
19970 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19980 endif
19990 if ((buf_char_size=2) and (buf_char_size2=3)) then
20000 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20010 endif
20020 case 4:
20030 if ((buf_char_size=2) and (buf_char_size2=2)) then
20040 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20050 endif
20060 if ((buf_char_size=1) and (buf_char_size2=3)) then
20070 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20080 endif
20090 if ((buf_char_size=3) and (buf_char_size2=1)) then
20100 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20110 endif
20120 case 3:
20130 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20140 buf_gaisei=1+char_count(buf_Input_data2$(1))
20150 endif
20160 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20170 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20180 endif
20190 case 2:
20200 buf_gaisei = 2
20210 case else:
20220 end select
20230 '診断結果表示
20240 '1.姓星を出す
20250 'グラフィック描画領域　ここから
20260 Result_Kyusei_Kikkyo:
20270 cls 3:font 32:bg=0:key$="":init "kb:4":talk ""
20280 '縦の画面
20290 '1行目
20300 line (0,0)-(1500,60),rgb(0,0,255),bf
20310 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20320 '2行目
20330 line (0,60)-(1500,425),rgb(127,255,212),bf
20340 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20350 '3行目
20360 line (0,485)-(1500,425),rgb(0,255,0),bf
20370 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20380 '横の画面　吉凶のランク表
20390 'グラフィック描画領域　ここまで
20400 talk"診断結果です":font 32
20410 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20420 color Rgb(255,0,255)
20430 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20440 '2.主星を出す
20450 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20460 '3.名星を求める
20470 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20480 '4.外星を求める
20490 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20500 '5.総数を出す
20510 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20520 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20530 color rgb(0,0,0)
20540 print"エンターキーを押してください"
20550 while (key$ <> chr$(13) and bg <> 2)
20560 key$=inkey$
20570 bg=strig(1)
20580 pause 2.50*100
20590 wend
20600 'key$=Input$(1)
20610 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20620 '2.主星を出す
20630 'メニュー3 登録文字の確認 ここから
20640 'グラフィック領域　ここから
20650 'タイトル青 文字:白
20660 Entry_moji_Top:
20670 talk ""
20680 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
20690 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
20700 line (0,62)-(1050,155),rgb(0,255,255),bf
20710 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
20720 line (0,155)-(1050,260),rgb(0,255,0),bf
20730 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
20740 'グラフィック領域　ここまで
20750 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20760 '文字:白
20770 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20780 '文字:アクア
20790 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20800 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20810 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20820 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20830 '1画の文字
20840 for i=0 to ((Moji_1)-1)
20850 if (name$=buf_char_hiragana1$(i)) then
20860 buffer_count=1:goto Moji_count_check:
20870 endif
20880 next i
20890 '2画の文字
20900 for i=0 to ((Moji_2)-1)
20910 if (name$=buf_char_hiragana2$(i)) then
20920 buffer_count=2:goto Moji_count_check:
20930 endif
20940 next i
20950 '3画の文字
20960 for i=0 to ((Moji_3)-1)
20970 if (name$=buf_char_hiragana3$(i)) then
20980 buffer_count=3:goto Moji_count_check:
20990 endif
21000 next i
21010 '4画の文字
21020 for i=0 to ((Moji_4)-1)
21030 if (name$=buf_char_hiragana4$(i)) then
21040 buffer_count=4:goto Moji_count_check:
21050 endif
21060 next i
21070 '5画の文字
21080 for i=0 to ((Moji_5)-1)
21090 if (name$=buf_char_hiragana5$(i)) then
21100 buffer_count=5:goto Moji_count_check:
21110 endif
21120 next i
21130 '6画の文字
21140 for i=0 to ((Moji_6)-1)
21150 if (name$=buf_char_hiragana6$(i)) then
21160 buffer_count=6:goto Moji_count_check:
21170 endif
21180 next i
21190 '7画の文字
21200 for i=0 to ((Moji_7)-1)
21210 if (name$=buf_char_hiragana7$(i)) then
21220 buffer_count=7:goto Moji_count_check:
21230 endif
21240 next i
21250 '8画の文字 120 文字
21260 for i=0 to ((Moji_8)-1)
21270 if (name$=buf_char_hiragana8$(i)) then
21280 buffer_count=8:goto Moji_count_check:
21290 endif
21300 next i
21310 '9画の文字  103文字
21320 for i=0 to ((Moji_9)-1)
21330 if (name$=buf_char_hiragana9$(i)) then
21340 buffer_count=9:goto Moji_count_check:
21350 endif
21360 next i
21370 '10画の文字 98文字
21380 for i=0 to ((Moji_10)-1)
21390 if (name$=buf_char_hiragana10$(i)) then
21400 buffer_count=10:goto Moji_count_check:
21410 endif
21420 next i
21430 '11画の文字 98文字
21440 for i=0 to ((Moji_11)-1)
21450 if (name$=buf_char_hiragana11$(i)) then
21460 buffer_count=11:goto Moji_count_check:
21470 endif
21480 next i
21490 '12画の文字
21500 for i=0 to ((Moji_12)-1)
21510 if (name$=buf_char_hiragana12$(i)) then
21520 buffer_count=12:goto Moji_count_check:
21530 endif
21540 next i
21550 '13画の文字
21560 for i=0 to ((Moji_13)-1)
21570 if (name$=buf_char_hiragana13$(i)) then
21580 buffer_count=13:goto Moji_count_check:
21590 endif
21600 next i
21610 '14画の文字
21620 for i=0 to ((Moji_14)-1)
21630 if (name$=buf_char_hiragana14$(i)) then
21640 buffer_count=14:goto Moji_count_check:
21650 endif
21660 next i
21670 '15画の文字
21680 for i=0 to ((Moji_15)-1)
21690 if (name$=buf_char_hiragana15$(i)) then
21700 buffer_count=15:goto Moji_count_check:
21710 endif
21720 next i
21730 '16画の文字
21740 for i=0 to ((Moji_16)-1)
21750 if (name$=buf_char_hiragana16$(i)) then
21760 buffer_count=16:goto Moji_count_check:
21770 endif
21780 next i
21790 '17画の文字
21800 for i=0 to ((Moji_17)-1)
21810 if (name$=buf_char_hiragana17$(i)) then
21820 buffer_count=17:goto Moji_count_check:
21830 endif
21840 next i
21850 '18画の文字 25
21860 for i=0 to ((Moji_18)-1)
21870 if (name$=buf_char_hiragana18$(i)) then
21880 buffer_count=18:goto Moji_count_check:
21890 endif
21900 next i
21910 '19画の文字 17
21920 for i=0 to ((Moji_19)-1)
21930 if (name$=buf_char_hiragana19$(i)) then
21940 buffer_count=19:goto Moji_count_check:
21950 endif
21960 next i
21970 '20画の文字 13
21980 for i=0 to ((Moji_20)-1)
21990 if (name$=buf_char_hiragana20$(i)) then
22000 buffer_count=20:goto Moji_count_check:
22010 endif
22020 next i
22030 '21画の文字 6
22040 for i=0 to ((Moji_21)-1)
22050 if (name$=buf_char_hiragana21$(i)) then
22060 buffer_count=21:goto Moji_count_check:
22070 endif
22080 next i
22090 '22画の文字 4
22100 for i=0 to ((Moji_22)-1)
22110 if (name$=buf_char_hiragana22$(i)) then
22120 buffer_count=22:goto Moji_count_check:
22130 endif
22140 next i
22150 '23画の文字 3
22160 for i=0 to ((Moji_23)-1)
22170 if (name$=buf_char_hiragana23$(i)) then
22180 buffer_count=23:goto Moji_count_check:
22190 endif
22200 next i
22210 '24画の文字
22220 for i=0 to ((Moji_24)-1)
22230 if (name$=buf_char_hiragana24$(i)) then
22240 buffer_count=24:goto Moji_count_check:
22250 endif
22260 next i
22270 'Menu3 結果表示 画数の登録確認
22280 Moji_count_check:
22290 bg=0:init"kb:4"
22300 if (buffer_count = 0) then
22310 '登録文字がない場合の処理
22320 'グラフィック領域　ここから
22330 'Moji_count_check:
22340 cls 3:talk ""
22350 '1行
22360 line (0,0)-(840,60),rgb(0,0,255),bf
22370 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
22380 '2行目
22390 line (0,60)-(840,165),rgb(127,255,212),bf
22400 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
22410 '3行目
22420 line (0,165)-(840,370),rgb(0,0,255),bf
22430 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
22440 '4行目
22450 line (0,370)-(840,450),rgb(0,255,0),bf
22460 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
22470 'グラフィック領域　ここまで
22480 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22490 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22500 talk "この文字は、登録されていません"
22510 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22520 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22530 color rgb(0,0,0):print"コマンド:"
22540 while (bg <> 2 and key$ <> chr$(13))
22550 key$=inkey$
22560 bg=strig(1)
22570 pause 2.50*100
22580 wend
22590 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22600 'key$=Input$(1)
22610 'if key$="q" or key$="Q" then goto Main_Screen1:
22620 'if key$=chr$(13) then goto Entry_moji_Top:
22630 'goto 20250
22640 else
22650 'グラフィック描画領域　ここから
22660 'Entry_moji_check:
22670 cls 3
22680 '1行目
22690 line (0,0)-(840,58),rgb(0,0,255),bf
22700 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
22710 '2行目
22720 line (0,58)-(840,100),rgb(127,255,212),bf
22730 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
22740 '3行目
22750 line (0,100)-(840,280),rgb(0,0,255),bf
22760 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
22770 '4行目
22780 line (0,280)-(840,340),rgb(0,255,0),bf
22790 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
22800 'グラフィック描画領域　ここまで
22810 color rgb(255,255,255):print "登録文字画数結果表示"
22820 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22830 endif
22840 while (key$<>chr$(13) and bg <> 2)
22850 key$=inkey$
22860 bg=strig(1)
22870 pause 2.50*100
22880 wend
22890 if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
22900 'color rgb(255,255,255)
22910 'print"q+エンターキー:トップ画面"+chr$(13)
22920 'print"エンターキー:もう一度やる"+chr$(13)
22930 'color rgb(0,0,0)
22940 'print"コマンド:"
22950 'key$=Input$(1)
22960 'if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
22970 'if key$="q" then buffer_count=0:goto Main_Screen1:
22980 'if not(key$="q") then goto Moji_count_check:
22990 'Menu2 名前の陰陽を見る
23000 'グラフィック描画領域 ここから
23010 name_inyo_check:
23020 init "kb:2":talk ""
23030 cls 3:line (0,0)-(800,60),rgb(0,0,255),bf
23040 PEN 5:line(0,0)-(797,57),rgb(127,255,212),b
23050 LINE (0,60)-(800,250),rgb(127,255,212),bf
23060 pen 5:line (0,57)-(797,247),rgb(0,0,255),b
23070 line (0,250)-(800,350),rgb(0,255,0),bf
23080 pen 5:line(0,247)-(797,347),rgb(0,0,255),b
23090 'グラフィック描画領域　ここまで
23100 cls
23110 color rgb(255,255,255)
23120 print"Menu2 名前の陰陽を見る"+chr$(13)
23130 COLOR rgb(255,0,255)
23140 PRINT"(●:陽,○:陰)"+chr$(13)
23150 print"調べたい名前苗字を入れてください"+chr$(13)
23160 color rgb(0,0,0)
23170 Input"調べたい名前の苗字:",name$
23180 if name$="" then goto name_inyo_check:
23190 'Menu2 陰陽の吉凶を見る 名入力
23200 cls:color rgb(255,255,255)
23210 print"Menu2 名前の陰陽を見る"+chr$(13)
23220 color rgb(255,0,255)
23230 print"(●:陽,○:陰)"+chr$(13)
23240 print"調べたい名前の名を入れてください"+chr$(13)
23250 color rgb(0,0,0)
23260 Input"調べたい名前の名:",name2$
23270 if name2$="" then goto name_inyo_check:
23280 for i=0 to len(name$)-1
23290 name_array$(i)=Mid$(name$,i+1,1)
23300 if char_count(name_array$(i)) mod 2 = 1  then
23310 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23320 else
23330 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23340 endif
23350 next i
23360 for i=0 to len(name2$)-1
23370 name_array2$(i)=Mid$(name2$,i+1,1)
23380 if char_count(name_array2$(i)) mod 2 = 1 then
23390 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
23400 else
23410 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
23420 endif
23430 next i
23440 bufname$=buffer$+buffer2$
23450 '陰陽のタイプ ここから
23460 select case (len(bufname$))
23470 '2文字
23480 case 2:
23490 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
23500 '
23510 '  endif
23520 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23530 '  endif
23540 '3文字
23550 case 3:
23560 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23570 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23580 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23590 '4文字
23600 case 4:
23610 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23620 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23630 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23640 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23650 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23660 '5文字
23670 case 5:
23680 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23690 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23700 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23710 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23720 case 6:
23730 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23740 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23750 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23760 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23770 case else:
23780 buffer_name$="例外に入りました"
23790 end select
23800 '陰陽のタイプ　ここまで
23810 'グラフィック描画領域　ここから
23820 cls 2:key$="":bg=0:init "kb:4":talk ""
23830 line (0,0)-(850,60),rgb(0,0,250),bf
23840 pen 5:line(0,0)-(847,57),rgb(127,255,212),b
23850 line (0,60)-(850,285),rgb(127,255,212),bf
23860 pen 5:line(0,57)-(847,282),rgb(0,0,255),b
23870 line (0,280)-(850,380),rgb(0,255,0),bf
23880 pen 5:line(0,277)-(847,377),rgb(0,0,255),b
23890 'グラフィック描画領域 ここまで
23900 color rgb(255,255,255)
23910 cls:print"名前:";name$ + name2$ + chr$(13)
23920 color rgb(255,0,255)
23930 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23940 print buffer_name$;chr$(13)
23950 color rgb(0,0,0)
23960 print"エンターキーを押してください"
23970 'key$=Input$(1)
23980 while (bg <> 2 and key$ <> chr$(13))
23990 key$=inkey$
24000 bg=strig(1)
24010 pause 2.50*100
24020 wend
24030 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24040 'Menu3
24050 '登録文字数の確認
24060 Entry_moji_check:
24070 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24080 'グラフィック描画領域　ここから
24090 cls 3:init"kb:4":bg=0:key$="":talk ""
24100 '1行目
24110 line (0,0)-(800,60),rgb(0,0,255),bf
24120 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
24130 '2行目
24140 line (0,60)-(800,150),rgb(157,255,212),bf
24150 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
24160 '3行目
24170 line (0,150)-(800,250),rgb(0,255,0),bf
24180 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
24190 'グラフィック描画領域 ここまで
24200 color rgb(255,255,255)
24210 PRINT"登録文字数の確認"+chr$(13)
24220 color rgb(255,0,255)
24230 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24240 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24250 while (key$ <> chr$(13) and bg <> 2)
24260 key$=inkey$
24270 bg=strig(1)
24280 pause 2.50*100
24290 wend
24300 'color rgb(0,0,0)
24310 'print"エンターキーを押してください"+chr$(13)
24320 'key$=Input$(1)
24330 'print"エンターキーを押してください"
24340 'key$=Input$(1)
24350 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24360 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24370 nick_name_check:
24380 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24390 'グラフィック描画領域　ここから
24400 cls 3:init "kb:2"
24410 line (0,0)-(1100,60),rgb(0,0,250),bf
24420 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24430 line (0,60)-(1100,160),rgb(127,255,212),bf
24440 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
24450 line (0,160)-(1100,270),rgb(0,255,0),bf
24460 pen 5:line(0,157)-(1097,267),rgb(0,0,255),b
24470 'グラフィック描画領域　ここまで
24480 buf=0:cls
24490 locate 0,0
24500 color rgb(255,255,255)
24510 Print"名前(ニックネーム)の総数で吉凶を判断します"
24520 locate 0,2
24530 color rgb(255,0,255)
24540 PRINT"名前(ニックネーム)を入れてください"
24550 locate 0,4
24560 color rgb(0,0,0)
24570 Input"名前:",name$
24580 if name$="" then goto nick_name_check:
24590 for n=0 to (len(name$)-1)
24600 buf_Input_data$(n)=mid$(name$,n+1,1)
24610 buf=buf+char_count(buf_Input_data$(n))
24620 next n
24630 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24640 '結果表示　グラフィック　ここから
24650 cls 3:init "kb:4":bg=0:key$=""
24660 line (0,0)-(1100,60),rgb(0,0,255),bf
24670 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24680 line (0,60)-(1100,160),rgb(127,255,212),bf
24690 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
24700 line (0,160)-(1100,540),rgb(0,255,0),bf
24710 pen 5:line(0,157)-(1097,537),rgb(0,0,255),b
24720 '結果表示 グラフィック領域 ここまで
24730 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24740 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24750 'color rgb(0,0,0)
24760 'print "番号を選んでください"+chr$(13)
24770 'PRINT "エンターキー:もう一度やる"+chr$(13)
24780 'print "q:トップに戻る"+chr$(13)
24790 while (key$ <> chr$(13) and bg <> 2)
24800 key$=inkey$
24810 bg=strig(1)
24820 pause 2.50*100
24830 wend
24840 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24850 't "コマンド:"
24860 'ey$=Input$(1)
24870 'if key$="q" then goto Main_Screen1:
24880 'if key$=chr$(13) then goto nick_name_check:
24890 'if No > 2 then goto 24210
24900 '名前2文字
24910 'グラフィック描画領域　ここから
24920 Result_Anzai:
24930 CLS 3:font 32:bg=0:ke$="":init"KB:4":talk ""
24940 line (0,0)-(1400,60),rgb(0,0,255),bf
24950 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24960 line (0,60)-(1400,540-180),rgb(127,255,212),bf
24970 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
24980 line (0,540-180)-(1400,540),rgb(0,255,0),bf
24990 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
25000 'グラフィック描画領域 ここまで
25010 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25020 color rgb(255,0,255)
25030 print"天運";buf_tenunn;chr$(13)
25040 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25050 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25060 print"外運";buf_gaiunn;chr$(13)
25070 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25080 COLOR rgb(0,0,0)
25090 PRINT"エンターキー:トップ画面"+chr$(13)
25100 while (key$<>chr$(13) and bg <> 2)
25110 key$=inkey$
25120 bg=strig(1)
25130 pause 2.50*100
25140 wend
25150 'print"エンターキー:もう一度、吉凶をみる"+chr$(13)
25160 'print "コマンド:"
25170 'key$=Input$(1)
25180 'if key$=chr$(13) then goto Anzai_Top_Screen:
25190 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25200 '参考文献 表示 ここから
25210 'グラフィック描画領域　 ここから
25220 Document_info:
25230 cls 3:init"kb:4":bg=0
25240 line (0,0)-(1100,60),rgb(0,0,255),bf
25250 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
25260 line (0,60)-(1100,650),rgb(127,255,212),bf
25270 pen 5:line(0,57)-(1097,647),rgb(0,0,255),b
25280 line (0,650)-(1100,730),rgb(0,255,0),bf
25290 pen 5:line(0,647)-(1097,727),rgb(0,0,255),b
25300 'グラフィック描画領域  ここまで
25310 '参考文献１
25320 cls
25330 color rgb(255,255,255)
25340 locate 0,0
25350 print"◎参考文献"
25360 color rgb(255,0,255)
25370 locate 0,2
25380 print "参考文献 １/4"
25390 locate 0,4
25400 print "Title:九星姓名判断"
25410 locate 0,6
25420 print "Author:高嶋　 美伶"
25430 locate 0,8
25440 print "出版社:日本文芸者"
25450 locate 0,10
25460 print "ISBN:4-537-20073-1"
25470 locate 0,12
25480 print "定価:1,200+税"
25490 color rgb(0,0,0)
25500 locate 0,14
25510 print "エンターキーを押してください"
25520 while (bg <> 2 and key$<>chr$(13))
25530 key$=inkey$
25540 bg=strig(1)
25550 pause 2.50*100
25560 wend
25570 if (key$=chr$(13) or bg=2) then
25580 goto Document_info2:
25590 endif
25600 'key$=Input$(1)
25610 'if key$=chr$(13)  then goto Document_info2:
25620 '参考文献２
25630 Document_info2:
25640 cls:bg=0:key$=""
25650 color rgb(255,255,255)
25660 locate 0,0
25670 print "◎参考文献"
25680 color rgb(255,0,255)
25690 locate 0,2
25700 print "参考文献 ２/4"
25710 locate 0,4
25720 print "Title:究極の姓名判断"
25730 locate 0,6
25740 print "Author:安斎　勝洋"
25750 locate 0,8
25760 print "出版社:説話社"
25770 locate 0,10
25780 print "ISBN:978-4-916217-61-5"
25790 locate 0,12
25800 print "定価:1,800円+税"
25810 color rgb(0,0,0)
25820 locate 0,14
25830 print"エンターキーを押してください"
25840 while (key$<>chr$(13) and bg <> 2)
25850 key$=inkey$
25860 bg=strig(1)
25870 pause 2.50*100
25880 wend
25890 if (key$=chr$(13) or bg=2) then goto Document_info3:
25900 'key$=Input$(1)
25910 'if key$=chr$(13) then goto Document_info3:
25920 '参考文献３
25930 Document_info3:
25940 cls:bg=0:key$=""
25950 color rgb(255,255,255)
25960 locate 0,0
25970 print"◎参考文献"
25980 color rgb(255,0,255)
25990 locate 0,2
26000 print "参考文献 3/4"
26010 locate 0,4
26020 print "Title:新明解現在漢和辞典"
26030 locate 0,6
26040 print "Author:影山輝國(編集主幹)他"
26050 locate 0,8
26060 print "出版社:三省堂"
26070 locate 0,10
26080 print "ISBN:978-4-385-13755-1"
26090 locate 0,12
26100 print "定価:2,800円 + 税"
26110 color rgb(0,0,0)
26120 locate 0,14
26130 print "エンターキーを押してください"
26140 while (key$<>chr$(13) and bg<>2)
26150 key$=inkey$
26160 bg=strig(1)
26170 pause 2.50*100
26180 wend
26190 if (key$=chr$(13) or bg=2) then goto Document_info4:
26200 'key$=Input$(1)
26210 'if key$=chr$(13) then goto Document_info4:
26220 '参考文献４　
26230 '描画領域　ここから
26240 Document_info4:
26250 cls 3:key$="":bg=0
26260 line (0,0)-(1100,60),rgb(0,0,255),bf
26270 line (0,0)-(1100,57),rgb(0,255,0),b
26280 line (0,60)-(1100,650),rgb(127,255,212),bf
26290 LINE (0,60)-(1100,647),rgb(0,0,255),b
26300 LINE (0,650)-(1100,830),rgb(0,255,0),bf
26310 line (0,650)-(1100,833),rgb(0,0,255),b
26320 '描画領域　ここまで
26330 'cls
26340 color rgb(255,255,255)
26350 locate 0,0
26360 print "◎参考文献"
26370 COLOR rgb(255,0,255)
26380 locate 0,2
26390 print "参考文献 4/4"
26400 locate 0,4
26410 print "Title:姓名の暗号"
26420 locate 0,6
26430 print "Author:樹門　幸宰(じゅもん こうざい)"
26440 locate 0,8
26450 print "出版社:幻冬舎"
26460 locate 0,10
26470 print "定価:1400円 + 税"
26480 locate 0,12
26490 print "ISBN:4-344-00777-8"
26500 color rgb(0,0,0)
26510 locate 0,14
26520 print "参考文献トップに行く:エンターキー"
26530 locate 0,16
26540 print "スペース：トップメニューに行く"
26550 while (key$<>chr$(13) and bg<>2)
26560 key$=inkey$
26570 bg=strig(1)
26580 pause 2.50*100
26590 wend
26600 if (key$=chr$(13) or bg=2) then goto help:
26610 'key$=Input$(1)
26620 'トップ画面に戻る
26630 'if key$ = " " then goto help:
26640 'if key$ = chr$(13) then goto Document_info:
26650 '安斎流姓名判断　メニュー
26660 'グラフィック領域　ここから
26670 Anzai_Top:
26680 cls 3
26690 No=0:init"kb:4":y=0:bg=0:key$=""
26700 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26710 sp_on 0,1:sp_put 0,(10,100),0,0
26720 line (0,0)-(1000,60),rgb(0,0,255),bf
26730 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
26740 line (0,60)-(1000,475),rgb(127,255,212),bf
26750 pen 5:line(0,57)-(997,472),rgb(0,0,255),b
26760 line (0,475)-(1000,650),rgb(0,255,0),bf
26770 pen 5:line(0,472)-(997,647),rgb(0,0,255),b
26780 'グラフィック描画領域　ここまで
26790 color rgb(255,255,255)
26800 print "安斎流姓名判断　トップメニュー" + chr$(13)
26810 color rgb(255,0,255)
26820 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26830 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26840 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26850 print " :4.前の画面に戻る"+chr$(13)
26860 locate 0,10
26870 color rgb(0,0,0)
26880 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26890 Anzai_Top2:
26900 y=0:bg=0:key$=""
26910 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26920 key$=inkey$
26930 y=stick(1)
26940 bg=strig(1)
26950 pause 2.50*100
26960 wend
26970 '******************************************************
26980 '1.下のキー　ここから
26990 '******************************************************
27000 if (y=1 or key$=chr$(30)) then
27010 select case No
27020 case 0:
27030 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
27040 case 1:
27050 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
27060 case 2:
27070 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27080 case 3:
27090 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
27100 end select
27110 endif
27120 '******************************************************
27130 '1.下のキー　ここまで
27140 '******************************************************
27150 '******************************************************
27160 '2.上のキー　ここから
27170 '******************************************************
27180 if (y=-1 or key$=chr$(31)) then
27190 select case No
27200 case 0:
27210 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
27220 case 1:
27230 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
27240 case 2:
27250 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
27260 case 3:
27270 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
27280 end select
27290 endif
27300 '******************************************************
27310 '2.上のキー　ここまで
27320 '******************************************************
27330 '******************************************************
27340 '3.決定ボタン　ここから
27350 '******************************************************
27360 if (key$=chr$(13) or bg=2) then
27370 select case No
27380 case 0:
27390 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27400 case 1:
27410 sp_on 1,0:goto Anzai_Top_Screen:
27420 case 2:
27430 sp_on 2,0:goto Anzai_Kaimei_Check:
27440 case 3:
27450 sp_on 3,0:goto seimeihandan_top:
27460 end select
27470 endif
27480 '******************************************************
27490 '3.決定ボタン　ここまで
27500 '******************************************************
27510 'if key=2 then goto Anzai_Top_Screen:
27520 'if key=3 then goto Anzai_Kaimei_Check:
27530 'if key=1 then goto Anzai_Aishou_Top1:
27540 'if key=4 then goto seimeihandan_top:
27550 'if key > 4 or key = 0 then goto Anzai_Top:
27560 '2.安斎流姓名判断　男女の相性占い　ここから
27570 'グラフィック描画領域 ここから
27580 'Anzai_Aishou_Top1:
27590 cls 3
27600 '1行目
27610 line (0,0)-(800,60),rgb(0,0,255),bf
27620 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27630 '2行目
27640 line (0,60)-(800,160),rgb(127,255,212),bf
27650 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27660 '3行目
27670 line (0,160)-(800,300),rgb(0,255,0),bf
27680 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27690 'グラフィック描画領域　男女の相性占い ここまで
27700 'if s1=1 then goto 26580
27710 'if s1=2 then goto 27360
27720 '1.名前の姓を入力  男性
27730 Anzai_Aishou_Top1:
27740 cls 3
27750 '1行目
27760 line (0,0)-(800,60),rgb(0,0,255),bf
27770 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27780 '2行目
27790 line (0,60)-(800,160),rgb(127,255,212),bf
27800 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27810 '3行目
27820 line (0,160)-(800,300),rgb(0,255,0),bf
27830 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27840 color rgb(255,255,255)
27850 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27860 color rgb(255,0,255)
27870 print "男性の名前(姓)を入れてください"+chr$(13)
27880 color rgb(0,0,0)
27890 Input "男性の名前(姓):",name$
27900 '2.名前の名を入力  男性
27910 cls 3:talk ""
27920 '1行目
27930 line (0,0)-(800,60),rgb(0,0,255),bf
27940 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27950 '2行目
27960 line (0,60)-(800,160),rgb(127,255,212),bf
27970 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27980 '3行目
27990 line (0,160)-(800,300),rgb(0,255,0),bf
28000 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
28010 color rgb(255,255,255)
28020 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
28030 color rgb(255,0,255)
28040 print "男性の名前（名）をいれてください"+chr$(13)
28050 color rgb(0,0,0)
28060 Input "男性の名前(名):",name2$
28070 'if s2=2 then goto 27560
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
29120 'if s1=1 then goto 33250
29130 'if s2=2 then goto 30870
29140 '2.女性　外運を求める
29150 select case buf_female_count
29160 '姓と名の合計数
29170 case 2:
29180 buf_Input_name2$(0)=Mid$(name3$,1,1)
29190 buf_Input_name2$(1)=Mid$(name4$,1,1)
29200 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
29210 case 3:
29220 if buf_female_name1=2 and buf_female_name2=1 then
29230 buf_Input_name2$(0)=Mid$(name3$,1,1)
29240 buf_Input_name2$(1)=Mid$(name3$,2,1)
29250 buf_Input_name2$(2)=Mid$(name4$,1,1)
29260 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29270 endif
29280 if buf_female_name1=1 and buf_female_name2=2 then
29290 buf_Input_name2$(0)=Mid$(name3$,1,1)
29300 buf_Input_name2$(1)=Mid$(name4$,1,1)
29310 buf_Input_name2$(2)=Mid$(name4$,2,1)
29320 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29330 endif
29340 case 4:
29350 '姓１、名３
29360 if buf_female_name1=1 and buf_female_name2=3 then
29370 buf_Input_name2$(0)=Mid$(name3$,1,1)
29380 buf_Input_name2$(1)=Mid$(name4$,1,1)
29390 buf_Input_name2$(2)=Mid$(name4$,2,1)
29400 buf_Input_name2$(3)=Mid$(name4$,3,1)
29410 '外運を求める
29420 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29430 endif
29440 '姓２,名２
29450 if buf_female_name1=2 and buf_female_name2=2 then
29460 buf_Input_name2$(0)=Mid$(name3$,1,1)
29470 buf_Input_name2$(1)=Mid$(name3$,2,1)
29480 buf_Input_name2$(2)=Mid$(name4$,1,1)
29490 buf_Input_name2$(3)=Mid$(name4$,2,1)
29500 '外運を求める
29510 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29520 endif
29530 '姓３，名１
29540 if buf_female_name1=3 and buf_female_name2=1 then
29550 buf_Input_name2$(0)=Mid$(name3$,1,1)
29560 buf_Input_name2$(1)=Mid$(name3$,2,1)
29570 buf_Input_name2$(2)=Mid$(name3$,3,1)
29580 buf_Input_name2$(3)=Mid$(name4$,1,1)
29590 '外運を求める
29600 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29610 endif
29620 case 5:
29630 '姓 3,名2
29640 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29650 buf_Input_name2$(0)=Mid$(name3$,1,1)
29660 buf_Input_name2$(1)=Mid$(name3$,2,1)
29670 buf_Input_name2$(2)=Mid$(name3$,3,1)
29680 buf_Input_name2$(3)=Mid$(name4$,1,1)
29690 buf_Input_name2$(4)=Mid$(name4$,2,1)
29700 '外運を求める
29710 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29720 endif
29730 '姓４、名１
29740 if buf_female_name1=4 and buf_female_name2=1 then
29750 buf_Input_name2$(0)=Mid$(name3$,1,1)
29760 buf_Input_name2$(1)=Mid$(name3$,2,1)
29770 buf_Input_name2$(2)=Mid$(name3$,3,1)
29780 buf_Input_name2$(3)=Mid$(name3$,4,1)
29790 buf_Input_name2$(4)=Mid$(name4$,1,1)
29800 '外運を求める
29810 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29820 endif
29830 '姓２、名３
29840 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29850 buf_Input_name2$(0)=Mid$(name3$,1,1)
29860 buf_Input_name2$(1)=Mid$(name3$,2,1)
29870 buf_Input_name2$(2)=Mid$(name4$,1,1)
29880 buf_Input_name2$(3)=Mid$(name4$,2,1)
29890 buf_Input_name2$(4)=Mid$(name4$,3,1)
29900 '外運を求める
29910 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29920 endif
29930 case 6:
29940 '1.姓３，名３
29950 if buf_female_name1=3 and buf_female_name2=3 then
29960 buf_Input_name2$(0)=Mid$(name3$,1,1)
29970 buf_Input_name2$(1)=Mid$(name3$,2,1)
29980 buf_Input_name2$(2)=Mid$(name3$,3,1)
29990 buf_Input_name2$(3)=Mid$(name4$,1,1)
30000 buf_Input_name2$(4)=Mid$(name4$,2,1)
30010 buf_Input_name2$(5)=Mid$(name4$,3,1)
30020 '外運を求める
30030 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
30040 endif
30050 '2.姓４，名２
30060 if buf_female_name1=4 and buf_female_name2=2 then
30070 buf_Input_name2$(0)=Mid$(name3$,1,1)
30080 buf_Input_name2$(1)=Mid$(name3$,2,1)
30090 buf_Input_name2$(2)=Mid$(name3$,3,1)
30100 buf_Input_name2$(3)=Mid$(name3$,4,1)
30110 buf_Input_name2$(4)=Mid$(name4$,1,1)
30120 buf_Input_name2$(5)=Mid$(name4$,2,1)
30130 '外運を求める
30140 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
30150 endif
30160 case 7:
30170 '1姓４，名３
30180 '外運を求める
30190 end select
30200 'if s=1 then goto Anzai_Aishou_Check:
30210 'if s2=2 then goto Anzai_Aishou_Check:
30220 'goto 33490
30230 func buf_number(a)
30240 if a < 10 then
30250 buf_tansu = a
30260 endif
30270 if a > 9 and a < 20 then
30280 buf_tansu = a - 10
30290 endif
30300 if a > 19 and a < 30 then
30310 buf_tansu = a - 20
30320 endif
30330 buffer = buf_tansu
30340 endfunc buffer
30350 check$="No Data"
30360 func Aisyou_type$(man,woman)
30370 Result$="No data"
30380 'check$="No data"
30390 '1.理解し合える最良のカップル
30400 '1のFor文
30410 for i=0 to 19
30420 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30430 Result$ = "1.理解し合える最良のカップル"
30440 check$="○"
30450 ResultNo = 0
30460 endif
30470 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30480 Result$="2.互いに自然体でつきあえるカップル"
30490 ResultNo=1
30500 check$="○"
30510 endif
30520 '3.男性にとって居心地の良いカップル
30530 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30540 Result$="3.男性にとって居心地の良いカップル"
30550 ResultNo=2
30560 check$="△"
30570 endif
30580 '4.女性にとって居心地の良いカップル
30590 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30600 Result$ = "4.女性にとって居心地の良いカップル"
30610 ResultNo=3
30620 check$="△"
30630 endif
30640 '5.恋愛経験を重ねた後なら愛を育める
30650 'for i=0 to 9
30660 'for j=0 to 9
30670 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
30680 Result$="5.恋愛経験を重ねた後なら愛を育める"
30690 ResultNo=4
30700 check$="×"
30710 endif
30720 'next j
30730 'next i
30740 '6
30750 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30760 Result$="6.結婚への発展が困難なカップル"
30770 check$="×"
30780 endif
30790 '7
30800 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30810 Result$="7.愛し方にずれが出てくる二人"
30820 check$="×"
30830 endif
30840 '8
30850 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30860 Result$="8.互いに価値観が噛み合わない相性"
30870 check$="×"
30880 endif
30890 next i
30900 'bufAisyou$ = Result$
30910 endfunc  Result$
30920 Anzai_Aishou_Check:
30930 cls 3:init"kb:2":bg=0
30940 buf_t_chiunn = buf_number(buf_chiunn)
30950 buf_t_gaiunn=buf_number(buf_gaiunn)
30960 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30970 'グラフィック描画領域　ここから
30980 'Title欄
30990 line(0,0)-(1300,60),rgb(0,0,255),bf
31000 pen 5:line(0,0)-(1297,57),rgb(127,255,212),b
31010 '結果表示欄
31020 line(0,60)-(1300,700-120-20),rgb(127,255,212),bf
31030 pen 5:line(0,57)-(1297,700-120-3-20),rgb(0,0,255),b
31040 'ボタン選択欄
31050 LINE(0,700-120-20)-(1300,640),rgb(0,255,0),bf
31060 pen 5:line(0,697-120-20)-(1297,637),rgb(0,0,255),b
31070 'グラフィック描画領域　ここまで
31080 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
31090 color rgb(255,255,255):font 40:init"kb:4"
31100 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
31110 color rgb(255,0,255)
31120 print "男性の名前:";name$+name2$;chr$(13)
31130 print "地運の単数";buf_t_chiunn;chr$(13)
31140 print "女性の名前:";name3$+name4$;chr$(13)
31150 print "外運の単数";buf_t_gaiunn;chr$(13)
31160 print"二人の相性:";bufferAisyou$;chr$(13)
31170 print"相性判定:";check$;chr$(13)
31180 color rgb(0,0,0)
31190 print "エンターキー:トップ" + chr$(13)
31200 while (bg <> 2)
31210 bg=strig(1)
31220 pause 2.50*100
31230 wend
31240 if (bg=2) then goto Main_Screen1:
31250 'print "S or sキー:保存" + chr$(13)
31260 'key$=Input$(1)
31270 'if key$=chr$(13) then
31280 'goto Main_Screen1:
31290 'else
31300 'Data保存追加 2021.10.01
31310 'goto Save_Aisyou:
31320 'endif
31330 '改名チェック
31340 'グラフィック描画領域 ここから
31350 Anzai_Kaimei_Check:
31360 cls 3:init "kb:2":talk ""
31370 line (0,0)-(1250,60),rgb(0,0,255),bf
31380 pen 5:line(0,0)-(1247,57),rgb(125,255,212),b
31390 line (0,60)-(1250,370+50),rgb(127,255,212),bf
31400 pen 5:line (0,57)-(1247,367+50),rgb(0,0,255),b
31410 line (0,370+50)-(1250,450+50),rgb(0,255,0),bf
31420 pen 5:line(0,367+50)-(1247,447+50),rgb(0,0,255),b
31430 'グラフィック描画領域 ここまで
31440 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31450 color rgb(255,255,255)
31460 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31470 color rgb(255,0,255)
31480 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31490 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31500 print "10文字までで入れてください"
31510 locate 0,9
31520 color rgb(0,0,0)
31530 Input "名前:",name$
31540 '計算領域　ここから
31550 '名前から総運を計算
31560 '1.名前の文字数を出す
31570 n=len(name$)
31580 if n > 10 or n=0 then
31590 '文字数が10個までという表示
31600 'トーストで表示
31610 if n > 10 then
31620 ui_msg "文字は10個までです"
31630 else
31640 ui_msg "文字が空っぽです"
31650 endif
31660 goto Anzai_Aishou_Check:
31670 endif
31680 'それ以外
31690 '総数を出す処理を出す
31700 '画面消去　データー初期化
31710 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31720 'グラフィック描画領域 ここから
31730 line(0,0)-(950,60),rgb(0,0,255),bf
31740 pen 5:line(0,0)-(947,57),rgb(127,255,212),b
31750 line(0,60)-(950,300),rgb(127,255,212),bf
31760 pen 5:line(0,57)-(947,297),rgb(0,0,255),b
31770 line(0,300)-(950,440),rgb(0,255,0),bf
31780 pen 5:line(0,297)-(947,437),rgb(0,0,255),b
31790 'グラフィック描画領域 ここまで
31800 'cls 3
31810 color rgb(255,255,255)
31820 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31830 for i=0 to len(name$)-1
31840 buf_Input_name$(i)=Mid$(name$,i+1,1)
31850 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31860 next i
31870 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31880 color rgb(255,0,255)
31890 print "名前:";name$
31900 print "この名前の総数:";bufer_total
31910 print "この名前の吉凶:";buf_Kikkyo$;"です"
31920 color rgb(255,0,255)
31930 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31940 print bufer_total$+chr$(13)
31950 'if buffer_K=0 or buffer_K=1  then
31960 'dim select$(2)
31970 'select$(0)="改名をする"
31980 'select$(1)="改名しない"
31990 'talk"改名しますか？"
32000 'color rgb(0,0,0)
32010 'Input"改名しますか？",key$
32020 'num=ui_select("select$","改名リストに追加しますか?")
32030 'num=0:改名リストに追加する
32040 'if num=0  then goto 35640
32050 'else
32060 'num=1:改名リストに追加しない
32070 'if num=1 then goto 31400
32080 'num=2:トップ画面に行く
32090 'if num=2 then goto 7580
32100 'endif
32110 'if buffer_K=0 then
32120 'print num,select$(num)
32130 color rgb(0,0,0)
32140 locate 0,7
32150 print"エンターキーを押してください"
32160 while (key$ <> chr$(13) and bg <> 2)
32170 key$=inkey$
32180 bg=strig(1)
32190 pause 2.50*100
32200 wend
32210 'key$=Input$(1)
32220 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
32230 'endif
32240 '改名チェック関数
32250 func Kaimei_check$(r$)
32260 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
32270 '改名の必要なし
32280 talk"この名前は改名の必要がございません。"
32290 print"この名前は、改名の必要はありません"+chr$(13)
32300 '改名の必要ナシの場合
32310 K=0
32320 buffer_K=K
32330 else
32340 '改名の必要あり
32350 Kaimei_check:
32360 talk"この名前は、改名の必要があります"
32370 print"この名前は、改名の必要があります"+chr$(13)
32380 color rgb(0,0,0)
32390 print"改名しますか？"
32400 K=1
32410 buffer_K=K
32420 '◎表示パターン
32430 'パターン１
32440 'color rgb(0,0,0)
32450 'Input"エンターキーを押してください",key$
32460 endif
32470 endfunc result$
32480 'ui_msg="1件追加しました,残り9件追加できます"
32490 'ファイルの存在確認 設定ファイル:mydata.dat
32500 cls
32510 '設定ファイルの確認
32520 if dir$("config/Parsonal_data/mydata.dat")="" then
32530 'print "File not found"+chr$(13)
32540 '1.ファイルがない時
32550 goto Kaimei_check:
32560 else
32570 'ファイルがある時
32580 goto sex_type_female:
32590 'goto 26270
32600 endif
32610 '1-1.ファイルがない時の処理
32620 '1-1.自分の姓名判断を入力
32630 'グラフィック描画領域 ここから
32640 cls 3
32650 '1行目
32660 line(0,0)-(1000,60),rgb(0,0,250),bf
32670 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
32680 '2行目
32690 line(0,60)-(1000,80),rgb(127,255,212),bf
32700 pen 5:line(0,57)-(997,77),rgb(0,0,255),b
32710 '3行目
32720 line(0,80)-(1000,120),rgb(0,255,0),bf
32730 pen 5:line(0,77)-(997,117),rgb(0,0,255),b
32740 'グラフィック描画領域 ここまで
32750 '1.名前の姓の入力
32760 '1行目 Title
32770 color rgb(255,255,255)
32780 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32790 '2行目 名前の姓を入力
32800 color rgb(255,0,255)
32810 print "自分の名前の姓を入れてください"+chr$(13)
32820 color rgb(0,0,0)
32830 'buf_name1$:自分の名前の姓
32840 Input"名前の姓:",buf_name1$
32850 '2.名前の名の入力
32860 '画面消去
32870 Anzai_myProfile2:
32880 cls
32890 '1行目 Title
32900 color rgb(255,255,255)
32910 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32920 '2行目 名前の名の入力
32930 color rgb(255,0,255)
32940 print "自分の名前の名を入れてください"+chr$(13)
32950 color rgb(0,0,0)
32960 'buf_name2$:自分の名前の名
32970 input "名前の名:",buf_name2$
32980 '3.性別入力
32990 cls
33000 '1行目 Title
33010 color rgb(255,255,255)
33020 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
33030 '2行目 性別入力
33040 color rgb(255,0,255)
33050 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
33060 sex_type$(0)="女性"
33070 sex_type$(1)="男性"
33080 type=ui_select("sex_type$","性別を選んでください")
33090 '3行目
33100 '性別変数 sex_type$
33110 if type = 1 then
33120 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 32350
33130 else
33140 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
33150 endif
33160 if sex_type$="男性" then
33170 name$=buf_name1$
33180 name2$=buf_name2$
33190 s=1
33200 goto Anzai_Aishou_Top1:
33210 endif
33220 sex_type_female:
33230 If sex_type$="女性" then
33240 name3$=buf_name1$
33250 name4$=buf_name2$
33260 s=2
33270 goto Anzai_Aishou_Top2:
33280 endif
33290 '登録プロフィール確認画面
33300 Entry_Profile:
33310 cls 3:talk ""
33320 'グラフィック描画領域　ここから
33330 '1行目
33340 line(0,0)-(1200,60),rgb(0,0,255),bf
33350 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33360 '2行目
33370 line(0,60)-(1200,360),rgb(127,255,212),bf
33380 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
33390 '3行目
33400 line(0,100)-(1200,420),rgb(0,255,0),bf
33410 pen 5:line(0,97)-(1197,417)
33420 if s2=2 then goto Entry_Profile:
33430 'グラフィック描画領域　ここまで
33440 '1行目 Title
33450 color rgb(255,255,255)
33460 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33470 color rgb(255,0,255)
33480 print"名前:";buf_name1$+buf_name2$;chr$(13)
33490 PRINT"性別:";sex_type$;chr$(13)
33500 if sex_type$="女性" then
33510 print"外運:";buf_gaiunn;chr$(13)
33520 buffer$="外運:"+str$(buf_gaiunn)
33530 endif
33540 if sex_type$="男性" then
33550 print"地運:";buf_chiunn;chr$(13)
33560 buffer$="地運:"+str$(buf_chiunn)
33570 endif
33580 color rgb(0,0,0)
33590 input"(登録する:Yes/登録しない:No):",key$
33600 if key$="Yes" or key$="yes" then
33610 open "config/Parsonal_data/mydata.dat" for output as #1
33620 print #1,"名前:";buf_name1$+buf_name2$
33630 print #1,"性別:";sex_type$
33640 print #1,buffer$
33650 close #1
33660 ui_msg"データーを保存しました"
33670 goto Main_Screen1:
33680 endif
33690 '２．設定ファイルが存在する場合
33700 'ファイル読み込み 自分のデーターを表示
33710 cls
33720 open "Config/Parsonal_data/mydata.dat" for input as #2
33730 line input #2,a$
33740 line input #2,b$
33750 line input #2,c$
33760 close #2
33770 buffername$=a$
33780 buffername2$=b$
33790 buffername3$=c$
33800 bufff$=Mid$(buffername$,1,3)
33810 buff2$=Mid$(buffername2$,1,3)
33820 buff3$=Mid$(buffername3$,1,3)
33830 n=len(a$)
33840 sextype$=Mid$(buffername2$,4,2)
33850 if sextype$="男性" then
33860 '男性:s2
33870 s2=1
33880 '女性のデーター入力
33890 goto Anzai_Top:
33900 endif
33910 if sextype$="女性" then
33920 s2=2
33930 '男性のデーター入力
33940 goto Anzai_Top:
33950 endif
33960 '女性のデーター結果表示
33970 '1.プロフィール性別男性の場合 ここから
33980 Result_Anzai_Aisyou:
33990 cls:talk ""
34000 color rgb(255,255,255)
34010 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
34020 name_length = len(bufername$)
34030 myname$ = Mid$(buffername$,4,4)
34040 chiunn = val(Mid$(buffername3$,4,2))
34050 tansuu1 = buf_number(chiunn)
34060 bufname$ = name3$ + name4$
34070 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
34080 color rgb(255,0,255)
34090 print "自分の名前(男性):";myname$;chr$(13)
34100 print "地運の端数:";tansuu1;chr$(13)
34110 print "相手の名前(女性):";bufname$;chr$(13)
34120 print "外運の端数:";buf_t_gaiunn;chr$(13)
34130 print "二人の相性:";bufferAisyou$;chr$(13)
34140 talk "二人の相性は" + bufferAisyou$
34150 color rgb(0,0,0)
34160 print"エンターキーを押してください"
34170 key$=Input$(1)
34180 'トップ画面に行く
34190 if key$ = chr$(13) then goto Main_Screen1:
34200 '1.プロフィール性別男性の場合　ここまで
34210 '2.プロフィール性別女性の場合　ここから
34220 cls 3
34230 '描画領域　ここから
34240 line (0,0)-(1200,60),rgb(0,0,255),bf
34250 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
34260 line (0,60)-(1200,460),rgb(127,255,212),bf
34270 pen 5:line(0,57)-(1197,457),rgb(0,0,255),b
34280 LINE (0,460)-(1200,520),rgb(0,255,0),bf
34290 pen 5:line(0,457)-(1197,517),rgb(0,0,255),b
34300 '描画領域 ここまで
34310 color rgb(255,255,255)
34320 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
34330 '計算領域　ここから
34340 myname$ = Mid$(buffername$,4,4)
34350 gaiunn = val(Mid$(buffername3$,4,2))
34360 buf_t_gaiunn = buf_number(buf_gaiunn)
34370 buf_t_chiunn = buf_number(buf_chiunn)
34380 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
34390 bufname$ = name$ + name2$
34400 '計算領域 ここまで
34410 color rgb(255,0,255)
34420 print "自分の名前(女性):";myname$;chr$(13)
34430 print "外運の端数";buf_t_gaiunn;chr$(13)
34440 print "相手の名前(男性):";bufname$;chr$(13)
34450 print "地運の端数:";buf_t_chiunn;chr$(13)
34460 print "二人の相性:";bufferAisyou$;chr$(13)
34470 color rgb(0,0,0)
34480 print "エンターキーを押してください"
34490 key$ = Input$(1)
34500 if key$=chr$(13) then goto Main_Screen1:
34510 '2.プロフィール性別女性の場合　ここまで
34520 'endfunc result$
34530 '取扱説明書
34540 '相性占い　トップメニュー ここから
34550 'グラフィック ここから
34560 Anzai_Aishou_Top_Menu:
34570 cls 3:talk ""
34580 '1行目
34590 line(0,0)-(1500,60),rgb(0,0,255),bf
34600 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
34610 '2行目
34620 line(0,60)-(1500,380),rgb(127,255,212),bf
34630 pen 5:line(0,57)-(1497,377),rgb(0,0,255),b
34640 '3行目
34650 line(0,360)-(1500,540),rgb(0,255,0),bf
34660 pen 5:line(0,357)-(1497,537),rgb(0,0,255),b
34670 'グラフィック　ここまで
34680 color rgb(255,255,255)
34690 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34700 color rgb(255,0,255)
34710 print"1.男女の相性"+chr$(13)
34720 print"2.前の画面に戻る"+chr$(13)
34730 print"3.トップ画面に戻る"+chr$(13)
34740 color rgb(0,0,0)
34750 print"番号を選んでください:"+chr$(13)
34760 Input"番号:",key
34770 if key = 1 then goto Anzai_Aishou_Top1:
34780 if key = 2 then goto Anzai_Top:
34790 if key = 3 then goto Main_Screen1:
34800 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34810 'グラフィック領域　ここから
34820 Life_Tenki:
34830 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34840 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34850 line(0,60)-(1150,180),rgb(127,255,212),bf
34860 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34870 line(0,120)-(1150,200),rgb(0,255,0),bf
34880 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34890 'グラフィック領域　ここまで
34900 '誕生日入力　生まれた年
34910 color rgb(255,255,255)
34920 print"誕生日入力　生まれた年" + chr$(13)
34930 COLOR rgb(255,0,255)
34940 print"生まれた年を入れてください" + chr$(13)
34950 color rgb(0,0,0)
34960 Input"生まれた年:",year
34970 '誕生日入力 生まれた月
34980 cls
34990 color rgb(255,255,255)
35000 print"誕生日入力 生まれた月" + chr$(13)
35010 color rgb(255,0,255)
35020 print"生まれた月を入力してください" + chr$(13)
35030 color rgb(0,0,0)
35040 Input"生まれた月:",month
35050 '誕生日入力 生まれた日を入力
35060 cls
35070 color rgb(255,255,255)
35080 print"誕生日入力 生まれた日入力" + chr$(13)
35090 color rgb(255,0,255)
35100 print"生まれた日を入力してください" + chr$(13)
35110 color rgb(0,0,0)
35120 Input"生まれた日:",day
35130 '人生の転機を見る
35140 'グラフィック領域　ここから
35150 cls 3:talk ""
35160 line(0,0)-(1150,60),rgb(0,0,255),bf
35170 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35180 line(0,60)-(1150,470),rgb(127,255,212),bf
35190 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35200 line(0,470)-(1150,520),rgb(0,255,0),bf
35210 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
35220 'グラフィック描画領域  ここまで
35230 cls
35240 buffername$=bufname$ + bufname2$
35250 color rgb(255,255,255)
35260 print buffername$;"さんの人生の転機を見る1"+chr$(13)
35270 color rgb(255,0,255)
35280 buf_total2=buf_total-(fix(buf_total/10)*10)
35290 tenki1_year=year+buf_total2
35300 tenki2_year=year+buf_total2+5
35310 tenki3_year=year+buf_total2+5+5
35320 tenki4_year=year+buf_total2+5+5+5
35330 tenki1=buf_total2
35340 tenki2=buf_total2+5
35350 tenki3=buf_total2+5+5
35360 tenki4=buf_total2+5+5+5
35370 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35380 print tenki1_year;"年";tenki1;"歳"+chr$(13)
35390 print tenki2_year;"年";tenki2;"歳"+chr$(13)
35400 print tenki3_year;"年";tenki3;"歳"+chr$(13)
35410 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35420 color rgb(0,0,0)
35430 print"エンターキーを押してください"
35440 key$=Input$(1)
35450 if key$=chr$(13) then goto Life_Tenki:
35460 '2ページ目
35470 cls
35480 color rgb(255,255,255)
35490 print buffername$;"さんの人生の転機2"+chr$(13)
35500 color rgb(255,0,255)
35510 tenki5_year = tenki4_year + 5
35520 tenki6_year = tenki4_year + 5 + 5
35530 tenki7_year = tenki4_year + 5 + 5 + 5
35540 tenki8_year = tenki4_year + 5 + 5 + 5+5
35550 tenki5 = tenki4 + 5
35560 tenki6 = tenki4 + 5 + 5
35570 tenki7 = tenki4 + 5 + 5 + 5
35580 tenki8 = tenki4 + 5 + 5 + 5 + 5
35590 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35600 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35610 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35620 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35630 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35640 color rgb(0,0,0)
35650 print"エンターキーを押してください",key$
35660 key$=Input$(1)
35670 if key$ = chr$(13) then goto 34760
35680 '3ページ目
35690 cls
35700 color rgb(255,255,255)
35710 print buffername$;"さんの人生の転機3"+chr$(13)
35720 '計算部分
35730 tenki_year9=tenki8_year + 5
35740 tenki_year10=tenki8_year + 5 + 5
35750 tenki_year11=tenki8_year+5+5+5
35760 tenki_year12=tenki8_year+5+5+5+5
35770 tenki9=tenki8+5
35780 tenki10=tenki8+5+5
35790 tenki11=tenki8+5+5+5
35800 tenki12=tenki8+5+5+5+5
35810 color rgb(255,0,255)
35820 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35830 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35840 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35850 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35860 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35870 color rgb(0,0,0)
35880 print"エンターキーを押してください"
35890 key$=Input$(1)
35900 if key$=chr$(13) then goto 34990
35910 'グラフィック描画領域 ここから
35920 cls 3
35930 line(0,0)-(1150,60),rgb(0,0,255),bf
35940 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35950 line(0,60)-(1150,470),rgb(127,255,212),bf
35960 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35970 line(0,470)-(1150,850),rgb(0,255,0),bf
35980 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35990 'グラフィック描画領域 ここまで
36000 '4回目
36010 cls
36020 color rgb(255,255,255)
36030 print buffername$;"さんの人生の転機４"+chr$(13)
36040 color rgb(255,0,255)
36050 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
36060 '計算部分
36070 tenki_year13 = tenki_year12 + 5
36080 tenki_year14 = tenki_year12 + 5 + 5
36090 tenki_year15 = tenki_year12 + 5 + 5 + 5
36100 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
36110 tenki13 = tenki12 + 5
36120 tenki14 = tenki12 + 5 + 5
36130 tenki15 = tenki12 + 5 + 5 + 5
36140 tenki16 = tenki12 + 5 + 5 + 5 + 5
36150 color rgb(255,0,255)
36160 print tenki_year13;"年";tenki13;"歳"+chr$(13)
36170 print tenki_year14;"年";tenki14;"歳"+chr$(13)
36180 print tenki_year15;"年";tenki15;"歳"+chr$(13)
36190 print tenki_year16;"年";tenki16;"歳"+chr$(13)
36200 color rgb(0,0,0)
36210 print"コマンドを入れてください"+chr$(13)
36220 print"q+エンターキー:トップ画面"+chr$(13)
36230 Print"エンターキー:次へ行く"+chr$(13)
36240 print"コマンド:"
36250 key$=Input$(1)
36260 if key$=chr$(13) then goto 35360
36270 IF key$="q" then goto 7580
36280 '
36290 cls
36300 color rgb(255,255,255)
36310 print buffername$;"さんの人生の転機5"+chr$(13)
36320 color rgb(255,0,255)
36330 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
36340 tenki_year17=tenki_year16+5
36350 tenki_year18=tenki_year16+5+5
36360 tenki_year19=tenki_year16+5+5+5
36370 tenki_year20=tenki_year16+5+5+5+5
36380 tenki17=tenki16+5
36390 tenki18=tenki16+5+5
36400 tenki19=tenki16+5+5+5
36410 tenki20=tenki16+5+5+5+5
36420 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36430 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36440 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36450 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36460 color rgb(0,0,0)
36470 print"コマンドを入れてください"+chr$(13)
36480 print"トップに戻る:q+エンターキー"+chr$(13)
36490 print"最初から:エンターキー"+chr$(13)
36500 print"コマンド:"
36510 key$=Input$(1)
36520 if key$=chr$(13) then goto 34220
36530 if key$="q" then goto Main_Screen1:
36540 '改名チェック 改名候補を入力
36550 'グラフィック　領域　ここから
36560 '左側 部分
36570 cls 3:talk ""
36580 line(0,0)-(1100,60),rgb(0,0,255),bf
36590 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36600 line(0,60)-(1100,380),rgb(127,255,212),bf
36610 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36620 line(0,380)-(790,470),rgb(0,255,0),bf
36630 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36640 '中央の縦の線 ここから
36650 'line(1100,0)-(1112,370),rgb(0,0,0),b
36660 '中央の縦の線 ここまで
36670 '右側 部分
36680 line(1103,0)-(1700,60),rgb(0,0,255),bf
36690 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36700 'グラフィック 領域　ここまで
36710 '吉凶判定
36720 if buffer_K=0 then
36730 buffer_check$="○"
36740 else
36750 buffer_check$="☓"
36760 endif
36770 'Title 左側の文字
36780 'rgb(255,255,255):白
36790 color rgb(255,255,255)
36800 locate 1,0
36810 print"安斎流姓名判断 改名チェッカー"
36820 'Title 右側の文字
36830 locate size(2)-16,0
36840 print"改名候補リスト(3件まで)"
36850 '候補リストの名前部分 (右側)
36860 '1行目
36870 'locate 22,2
36880 locate size(2)-18,2
36890 color rgb(0,0,0)
36900 print "番号"
36910 'locate 26,2
36920 locate size(2)-14,2
36930 print"名前"
36940 'locate 32,2
36950 locate size(2)-8,2
36960 print"吉凶"
36970 'locate 36,2
36980 locate size(2)-4,2
36990 print"判定"
37000 '2行目
37010 select case kaimei_count
37020 case 0:
37030 'データー1件 の時
37040 kaimei_count = kaimei_count + 1
37050 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
37060 buffer_Kaimei$(0,1,0,0)=name$
37070 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
37080 buffer_Kaimei$(0,0,0,1)=buffer_check$
37090 'cls
37100 color rgb(255,0,255)
37110 'locate 23,3
37120 locate size(2)-17,3
37130 print buffer_Kaimei$(1,0,0,0)
37140 'locate 25,3
37150 locate size(2)-15,3
37160 print buffer_Kaimei$(0,1,0,0)
37170 'locate 32,3
37180 locate size(2)-8,3
37190 print buffer_Kaimei$(0,0,1,0)
37200 locate size(2)-3,3
37210 print buffer_Kaimei$(0,0,0,1)
37220 case 1:
37230 'データー2件の時
37240 color rgb(255,0,255)
37250 kaimei_count = kaimei_count + 1
37260 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
37270 buffer_Kaimei$(0,2,0,0)=name$
37280 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
37290 buffer_Kaimei$(0,0,0,2)=buffer_check$
37300 'cls
37310 '1行目
37320 'locate 23,3
37330 locate size(2)-17,3
37340 print buffer_Kaimei$(1,0,0,0)
37350 'locate 25,3
37360 locate size(2)-15,3
37370 print buffer_Kaimei$(0,1,0,0)
37380 'locate 32,3
37390 locate size(2)-8,3
37400 print buffer_Kaimei$(0,0,1,0)
37410 'locate 37,3
37420 locate size(2)-3,3
37430 print buffer_Kaimei$(0,0,0,1)
37440 '2行目
37450 'locate 23,4
37460 locate size(2)-17,4
37470 print buffer_Kaimei$(2,0,0,0)
37480 'locate 25,4
37490 locate size(2)-15,4
37500 print buffer_Kaimei$(0,2,0,0)
37510 'locate 32,4
37520 locate size(2)-8,4
37530 print buffer_Kaimei$(0,0,2,0)
37540 'locate 37,4
37550 locate size(2)-3,4
37560 print buffer_Kaimei$(0,0,0,2)
37570 case 2:
37580 'データー3件の時
37590 '1
37600 color rgb(255,0,255)
37610 kaimei_count=kaimei_count+1
37620 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37630 buffer_Kaimei$(0,3,0,0)=name$
37640 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37650 buffer_Kaimei$(0,0,0,3)=buffer_check$
37660 '2  1行目
37670 'locate 23,3
37680 locate size(2)-17,3
37690 print buffer_Kaimei$(1,0,0,0)
37700 'locate 25,3
37710 locate size(2)-15,3
37720 print buffer_Kaimei$(0,1,0,0)
37730 'locate 32,3
37740 locate size(2)-8,3
37750 print buffer_Kaimei$(0,0,1,0)
37760 'locate 37,3
37770 locate size(2)-3,3
37780 print buffer_Kaimei$(0,0,0,1)
37790 '3  2行目
37800 'locate 23,4
37810 locate size(2)-17,4
37820 print buffer_Kaimei$(2,0,0,0)
37830 'locate 25,4
37840 locate size(2)-15,4
37850 print buffer_Kaimei$(0,2,0,0)
37860 'locate 32,4
37870 locate size(2)-8,4
37880 print buffer_Kaimei$(0,0,2,0)
37890 'locate 37,4
37900 locate size(2)-3,4
37910 print buffer_Kaimei$(0,0,0,2)
37920 '4  3行目
37930 'locate 23,5
37940 locate size(2)-17,5
37950 print buffer_Kaimei$(3,0,0,0)
37960 'locate 25,5
37970 locate size(2)-15,5
37980 print  buffer_Kaimei$(0,3,0,0)
37990 'locate 32,5
38000 locate size(2)-8,5
38010 print buffer_Kaimei$(0,0,3,0)
38020 'locate 37,5
38030 locate size(2)-3,5
38040 print buffer_Kaimei$(0,0,0,3)
38050 case 3:
38060 'データー4件の時
38070 '1
38080 '2
38090 '3
38100 '4
38110 '5
38120 end select
38130 '説明部分　左側
38140 locate 0,2
38150 color rgb(255,0,255)
38160 print"思いついた候補の名前"
38170 locate 0,4
38180 print"(ニックネーム　or 会社名)を"
38190 locate 0,6
38200 print"10文字以内で入力してください"
38210 color rgb(0,0,0)
38220 locate 0,8
38230 if kaimei_count = 1 or kaimei_count = 2 then
38240 Input"名前:",kouho_name$
38250 name$=kouho_name$
38260 n=len(name$)
38270 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 35640
38280 'else
38290 if n =< 10 then goto 30760
38300 endif
38310 if kaimei_count = 3 then
38320 Input"エンターキーを押してください",key$
38330 if key$ = "" then
38340 'データーを初期化して、トップ画面に行く
38350 '1.データーを初期化
38360 kaimei_count = 0
38370 for i=1 to 3
38380 buffer_Kaimei$(i,0,0,0) = ""
38390 buffer_Kaimei$(0,i,0,0) = ""
38400 buffer_Kaimei$(0,0,i,0) = ""
38410 buffer_Kaimei$(0,0,0,i) = ""
38420 next i
38430 '2.トップ画面に行く
38440 goto 7580
38450 endif
38460 endif
38470 '霊遺伝姓名学 ここから
38480 'グラフィック領域　ここから
38490 '性別入力
38500 Reiden_Top_Input_Sextype:
38510 cls 3:talk ""
38520 No=1:y=0:key$="":bg=0:init "kb:4"
38530 sp_on 1,1:sp_put 1,(10,200),1,0
38540 'Line1
38550 line (0,0)-(850,60),rgb(0,0,255),bf
38560 line (0,0)-(847,57),rgb(0,255,0),b
38570 'Line 2
38580 line (0,63)-(853,537),rgb(127,255,212),bf
38590 line (0,60)-(850,540),rgb(0,0,0),b
38600 'Line 3
38610 line (0,540)-(850,630),rgb(0,255,0),bf
38620 line (0,543)-(853,633),rgb(0,0,255),b
38630 'グラフィック領域　ここまで
38640 '音声表示
38650 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38660 '性別変数:sex_type=0
38670 '文字色： 白
38680 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38690 '文字色：赤
38700 color rgb(255,0,255)
38710 print"占う人の性別の番号を入れてください" + chr$(13)
38720 print" :1.女 性" + chr$(13)
38730 print" :2.男 性" + chr$(13)
38740 print" :3.前の画面に戻る" + chr$(13)
38750 locate 0,12
38760 color rgb(0,0,0)
38770 print "1.女性を選択しました"
38780 Reiden_Top_Input_Sextype2:
38790 y = 0:key$ = "":bg = 0
38800 while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
38810 key$=inkey$
38820 y=stick(1)
38830 bg=strig(1)
38840 pause 2.50*100
38850 wend
38860 if (key$=chr$(31) or y=1) then
38870 '
38880 select case No
38890 case 1:
38900 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38910 case 2:
38920 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38930 case 3:
38940 No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38950 'case 4:
38960 'No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38970 end select
38980 endif
38990 if (key$ = chr$(30) or y = -1) then
39000 select case No
39010 case 1:
39020       No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39030 case 2:
39040        No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
39050 case 3:
39060        No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
39070 'case 4:
39080 '       No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
39090 end select
39100 endif
39110 'if (key$=chr$(30) or y=-1) then
39120 'endif
39130 if (bg=2 or key$=chr$(13)) then
39140 select case No
39150 case 1:
39160 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
39170 case 2:
39180 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
39190 case 3:
39200 sp_on 3,0:goto Main_Screen1:
39210 'case 4:
39220 'sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
39230 end select
39240 endif
39250 '2:男性の場合 名前を入力
39260 '男性の性別:sex_type=2
39270 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
39280 '1:女性の場合 既婚の場合、旧姓で入力
39290 '女性の性別:sex_type=1
39300 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
39310 '3:終了処理
39320 'if val(No$)=4 then cls 3:end
39330 'if val(No$)=3 then goto Main_Screen1:
39340 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
39350 '１．男性の場合の名前入力
39360 '描画領域　ここから
39370 ReiIden_Input_male:
39380 cls 3:init"kb:2":talk ""
39390 'Line 1 Title
39400 line (0,0)-(850,60),rgb(0,0,255),bf
39410 line (0,0)-(850,57),rgb(0,255,0),b
39420 'Line2 Input name
39430 line (0,60)-(850,300),rgb(0,255,0),bf
39440 line (0,60)-(850,303),rgb(0,0,255),b
39450 '描画領域 ここまで
39460 '文字色：白
39470 color rgb(255,255,255)
39480 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
39490 '文字色：黒
39500 color rgb(0,0,0)
39510 print "名前の姓の部分を入れてください" + chr$(13)
39520 Input"名前(姓の部分):",name1$
39530 '名の入力部分
39540 cls
39550 color rgb(255,255,255)
39560 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
39570 color rgb(0,0,0)
39580 print "名前の名の部分を入れてください"+chr$(13)
39590 Input"名前(名の部分):",name2$:goto check:
39600 '2.女性の場合　既婚か未婚か確認する
39610 '2-2-1女性の姓の入力
39620 'グラフィック領域　ここから
39630 ReiIden_Input_female:
39640 cls 3:init"kb:2":talk ""
39650 'Line1 Title
39660 line (0,0)-(850,60),rgb(0,0,255),bf
39670 line (0,0)-(850,57),rgb(0,255,0),b
39680 'Line 2 入力欄
39690 line (0,60)-(850,360),rgb(0,255,0),bf
39700 line (0,60)-(850,357),rgb(0,0,255),b
39710 'Line 2 入力欄(名前入力)
39720 'グラフィック領域 ここまで
39730 cls:init"kb:2"
39740 color rgb(255,255,255)
39750 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39760 color rgb(255,0,0)
39770 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39780 color rgb(0,0,0)
39790 print "名前の姓の部分を入れてください"+chr$(13)
39800 Input "名前(姓の部分):",name3$
39810 '2-2-2女性の名の入力
39820 cls:init"kb:2"
39830 color rgb(255,255,255)
39840 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39850 color rgb(0,0,0)
39860 print "名前の名の部分を入れてください"+chr$(13)
39870 Input "名前(名の部分):",name4$
39880 '計算領域　ここから
39890 check:
39900 '苗字の画数:buffer_name1_count
39910 'name1$,name2$:男性
39920 if sex_type = 1 then
39930 'sex_type=1 :女性のとき
39940 buf_male_female_name1$=name3$
39950 buf_male_female_name2$=name4$
39960 endif
39970 if sex_type = 2 then
39980 'sex_type=2 :男性のとき
39990 buf_male_female_name1$=name1$
40000 buf_male_female_name2$=name2$
40010 endif
40020 buffer_name1_count=len(buf_male_female_name1$)
40030 buffer_name2_count=len(buf_male_female_name2$)
40040 select case buffer_name1_count
40050 'AとBを求める
40060 case 1:
40070 '1.苗字の画数が1つのとき
40080 'A:霊数 1
40090 A=1
40100 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40110 B = char_count(buf_name1$)
40120 case 2:
40130 '2.苗字の画数が2つのとき
40140 '2-1:苗字の1文字目:buf_name1$
40150 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
40160 '2-2:苗字の2文字目:buf_name2$
40170 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
40180 A=char_count(buf_name1$)
40190 B=char_count(buf_name2$)
40200 'B=char_count(buf_name2$)
40210 case 3:
40220 '3.苗字の画数が3つの時
40230 '3-1:苗字の1文字目:buf_name1$
40240 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40250 '3-2:苗字が3つのときの2つ目の文字をもとめる
40260 '3-2:苗字の2つ目:buf_name2$
40270 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40280 '3-3:苗字が3つのときの3文字目
40290 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
40300 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
40310 if buf_name2$="々" then
40320 A = char_count(buf_name1$) * 2
40330 B = char_count(buf_name3$)
40340 else
40350 A = char_count(buf_name1$) + char_count(buf_name2$)
40360 B = char_count(buf_name3$)
40370 endif
40380 '姓が4文字
40390 case 4:
40400 buf_name1$=Mid$(buf_male_female_name1$,1,1)
40410 buf_name2$=Mid$(buf_male_female_name1$,2,1)
40420 buf_name3$=Mid$(buf_male_female_name1$,3,1)
40430 buf_name4$=Mid$(buf_male_female_name1$,4,1)
40440 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
40450 B=char_count(buf_name4$)
40460 case else:
40470 end select
40480 '2.C,Dを求める
40490 select case buffer_name2_count
40500 case 1:
40510 '名が1文字の時
40520 'CとDを求める
40530 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40540 C = char_count(buff_name1$)
40550 'D=1:霊数
40560 D = 1
40570 case 2:
40580 '名が2文字の時
40590 'CとDを求める
40600 '名の1文字目:buff_name1$
40610 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40620 '名の2文字目:buff_name2$
40630 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40640 C = char_count(buff_name1$)
40650 D = char_count(buff_name2$)
40660 case 3:
40670 '名が3文字の時
40680 'CとDを求める
40690 '名の1文字目:buff_name1$
40700 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40710 '名の2文字目:buff_name2$
40720 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40730 if buff_name2$ = "々" then
40740 buff_name2$ = buff_name1$
40750 endif
40760 '名の3文字目:buff_name3$
40770 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40780 C = char_count(buff_name1$)
40790 D = char_count(buff_name2$) + char_count(buff_name3$)
40800 end select
40810 '1.先祖運を求める
40820 buffer_Senzo = A + B
40830 '2.性格運を求める
40840 buffer_Seikaku = B + C
40850 '3.愛情運を求める
40860 buffer_Aijyou = C + D
40870 '4.行動運を求める
40880 buffer_Kouzou = A + D
40890 'if buffer_Kouzou=10 then
40900 'endif
40910 '1.生数を求める
40920 func buf_Seisu(buffer)
40930 if buffer < 10 then
40940 seisu=buffer
40950 endif
40960 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40970 seisu = 0
40980 endif
40990 if buffer > 10 then
41000 if buffer=20 then
41010 seisu = 0
41020 else
41030 n = buffer - (fix(buffer / 10) * 10)
41040 seisu = n
41050 endif
41060 endif
41070 endfunc seisu
41080 func buf_Wasu(buffer)
41090 buf_wasu = 0:wasu = 0
41100 if buffer < 10 then
41110 '
41120 wasu = buffer:goto wasu:
41130 else
41140 if buffer = 10 then
41150 wasu = 1:goto wasu:
41160 else
41170 if buffer > 10  then
41180 if buffer=19 or buffer=28 or buffer=37 then
41190 wasu=1:goto wasu:
41200 else
41210 if buffer = 29 then
41220 wasu=2:goto wasu:
41230 'endif
41240 else
41250 a = fix(buffer / 10)
41260 b = buffer - a * 10
41270 c = a + b
41280 if c = 19 or c=28 then
41290 wasu=1
41300 '
41310 else
41320 wasu=c
41330 endif
41340 endif
41350 endif
41360 endif
41370 endif
41380 if c < 10 then
41390 wasu = c
41400 'endif
41410 endif
41420 else
41430 if buffer=19 or buffer=28 then
41440 wasu = 1
41450 endif
41460 endif
41470 wasu:
41480 buf_wasu=wasu
41490 endfunc buf_wasu
41500 func buf_kyoudai$(buf_sex_type,buf_Sa$)
41510 select case buf_sex_type
41520 '1.女性の場合
41530 case 1:
41540 if (buf_Sa$ = "連続") then
41550 buffer_kyoudai$="長女"
41560 endif
41570 if (buf_Sa$ = "1差") then
41580 buffer_kyoudai$="次女"
41590 endif
41600 if (buf_Sa$ = "2差") then
41610 buffer_kyoudai$="三女"
41620 endif
41630 if (buf_Sa$ = "3差") then
41640 buffer_kyoudai$="四女"
41650 endif
41660 if (buf_Sa$ = "4差") then
41670 buffer_kyoudai$="五女"
41680 endif
41690 '男性の場合
41700 case 2:
41710 if (buf_Sa$ = "連続") then
41720 buffer_kyoudai$="長男"
41730 endif
41740 if (buf_Sa$ = "1差") then
41750 buffer_kyoudai$="次男"
41760 endif
41770 if (buf_Sa$ = "2差") then
41780 buffer_kyoudai$="三男"
41790 endif
41800 if (buf_Sa$ = "3差") then
41810 buffer_kyoudai$="四男"
41820 endif
41830 if (buf_Sa$ = "4差") then
41840 buffer_kyoudai$="五男"
41850 endif
41860 case else:
41870 end select
41880 kyoudai$=buffer_kyoudai$
41890 endfunc kyoudai$
41900 '1.タテ型
41910 '1.同じ数字が2組ある場合
41920 func Tate_gata$()
41930 if Senzo_wasu = Seikaku_wasu  then
41940 if Aijyou_wasu - Seikaku_wasu > 1 then
41950 Spirit_type$="タテ型"
41960 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41970 Sa$ = str$(Sa_count) + "差"
41980 else
41990 Spirit_type$="タテ型"
42000 Sa$="連続"
42010 endif
42020 endif
42030 endfunc
42040 '2. ナナメ型
42050 '同じ数字が2組ある場合
42060 func Naname_gata$()
42070 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
42080 Spirit_type$="斜め型"
42090 endif
42100 if Seikaku_wasu - Senzo_wasu > 1 then
42110 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
42120 Sa$=str$(Sa_count)+" 差"
42130 else
42140 Sa$="連続"
42150 endif
42160 endfunc
42170 '3.表十字型
42180 '同じ数字が2組ある場合
42190 func Omote_jyuji_gata1$()
42200 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
42210 Spirit_type$ = "表十字型"
42220 endif
42230 if Senzo _wasu - Seikaku_wasu > 1 then
42240 Sa_count = Senzo_wasu - Seikaku_wasu - 1
42250 else
42260 if Senzo_wasu  -  Seikaku_wasu = 1  then
42270 Sa$="連続"
42280 endif
42290 endif
42300 endfunc
42310 '3-1.表十字型(ヨコ系)
42320 func Omote_jyuji_gata_yoko$()
42330 endfunc
42340 '3-2.表十字型(上下型)
42350 func Omote_jyuji_gata_jyouge()
42360 endfunc
42370 '4.ヨコ型
42380 func Yoko_gata$()
42390 endfunc
42400 '5.上下型
42410 func Jyouge_gata$()
42420 endfunc
42430 '6.1.中広型(タテ系)
42440 func Nakahiro_Tate$()
42450 endfunc
42460 '6.2中広型(ナナメ系)
42470 func Nakahiro_Naname$()
42480 endfunc
42490 '6.3中広型(表十字型)
42500 func Nakahiro_Omotejyuji$()
42510 endfunc
42520 '7.1.中一差(タテ系)
42530 func Chuissa_Tate$()
42540 endfunc
42550 '7.2中一差(ナナメ系)
42560 func Chuissa_Naname$()
42570 endfunc
42580 '8.1.中二差(タテ系)
42590 func Chunissa_Tate$()
42600 endfunc
42610 '8.2.中二差(ナナメ系)
42620 '9.1.順序型(タテ上下系)
42630 func Chunissa_Tate_jyouge$()
42640 endfunc
42650 '9.2.順序型(タテ、ヨコ系)
42660 func Jyunjyo_Tate_yoko$()
42670 endfunc
42680 '9.3.順序型(ナナメ、上下系)
42690 func Jyunjyo_Naname_jyouge$()
42700 endfunc
42710 '9.4.順序型(ナナメ、ヨコ系)
42720 '10.1.中順序型(ヨコ系)
42730 func Nakajyunjyo_yoko$()
42740 endfunc
42750 '10.2.中順序型(上下系)
42760 func Nakajyunjyo_jyouge$()
42770 endfunc
42780 '11.1.隔離型(タテ、上下系)
42790 func Kakuri_tate_jyouge$()
42800 endfunc
42810 '11.2.隔離型(タテ、ヨコ系)
42820 func Kakuri_tate_yoko$()
42830 endfunc
42840 '11.3.隔離型(ナナメ、上下系)
42850 func Kakuri_Naname_jyouge$()
42860 endfunc
42870 '11.4.隔離型(ナナメ、ヨコ系)
42880 func Kakuri_Naname_yoko$()
42890 endfunc
42900 '11.5.隔離型(タテ系)
42910 func Kakuri_tate$()
42920 endfunc
42930 '11.6.隔離型(ナナメ系)
42940 func Kakuri_naname$()
42950 endfunc
42960 '11.7.隔離型(上下、ヨコ系)
42970 func Kakuri_Jyouge_yoko$()
42980 endfunc
42990 Spirit_type$="No data"
43000 '1.先祖運　和数
43010 Senzo_wasu = buf_Wasu(buffer_Senzo)
43020 '2.先祖運 生数
43030 Senzo_seisu = buf_Seisu(buffer_Senzo)
43040 '3.性格運 和数
43050 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
43060 '4.性格運 生数
43070 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
43080 '5.愛情運 和数
43090 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
43100 '6.愛情運 生数
43110 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
43120 '7.行動運 和数
43130 Koudou_wasu = buf_Wasu(buffer_Kouzou)
43140 '8.行動運 生数
43150 Koudou_seisu = buf_Seisu(buffer_Kouzou)
43160 '計算領域 ここまで
43170 '描画領域　ここから
43180 Result_ReiIden1:
43190 cls 3:key$ = "":bg = 0:init "kb:4":talk ""
43200 'Title
43210 line (0,0)-(850,60),rgb(0,0,255),bf
43220 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
43230 'name
43240 line (0,60)-(850,165),rgb(0,255,0),bf
43250 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
43260 '生数、和数
43270 line (0,165)-(850,550),rgb(125,255,212),bf
43280 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
43290 'プッシュメッセージ
43300 line (0,550)-(850,650),rgb(0,255,0),bf
43310 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
43320 '描画領域　ここまで
43330 color rgb(255,255,255)
43340 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
43350 color rgb(0,0,0)
43360 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
43370 color rgb(255,0,255)
43380 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
43390 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
43400 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
43410 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
43420 talk "診断結果１です、あなたのわすうとせいすうです。"
43430 color rgb(0,0,0)
43440 print"エンターキーを押してください"
43450 'key$=Input$(1)
43460 while (bg <> 2 and key$ <> chr$(13))
43470 key$=inkey$
43480 bg=strig(1)
43490 pause 2.50*100
43500 wend
43510 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
43520 '描画領域　ここから
43530 Result_ReiIden2:
43540 cls 3:init"kb:4"
43550 'Title Color:青
43560 line (0,0)-(860,60),rgb(0,0,255),bf
43570 'Title 枠
43580 line (0,0)-(860,57),rgb(255,0,255),b
43590 'Message
43600 line (0,60)-(860,650),rgb(127,255,212),bf
43610 'Message 枠
43620 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
43630 '
43640 '描画領域　ここまで
43650 color rgb(255,255,255)
43660 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43670 '十二運の基礎運
43680 '1.四大主流型
43690 'パターン１ 同じ数字の場合
43700 '1.オール同数化 全部同じ
43710 '1-if
43720 sa_count=0
43730 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43740 Spirit_type$ = "オール同数化"
43750 Sa$="3差"
43760 else
43770 'パターン１ 同じ数字2つの場合
43780 '2.タテ型
43790 '数字が２つ同じ
43800 '2-if
43810 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43820 Spirit_type$ = "タテ型"
43830 '2.タテ型　1
43840 if Koudou_wasu - Senzo_wasu = 1 then
43850 Sa$="連続"
43860 else
43870 '2.タテ型　2
43880 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43890 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43900 Sa$=str$(Sa_count) + "差"
43910 endif
43920 endif
43930 endif
43940 endif
43950 '2.タテ型　3
43960 '1.type
43970 'Spirit_type$ = "四大主流型 タテ型"
43980 '3.斜め型
43990 '数字が２つ同じ
44000 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
44010 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
44020 Sa$="連続"
44030 else
44040 '先祖＝行動　性格運=愛情運
44050 '3-if
44060 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
44070 Spirit_type$="斜め型"
44080 '3.斜め型 1
44090 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
44100 Sa$ = "連続"
44110 else
44120 if (Seikaku_wasu - Koudou_wasu) < 1 then
44130 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
44140 endif
44150 endif
44160 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
44170 Sa_count = 3
44180 Sa$ = str$(Sa_count - 1) + "差"
44190 else
44200 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
44210 Sa_count = Senzo_wasu - Seikaku_wasu
44220 Sa$ = str$(Sa_count-1) + "差"
44230 endif
44240 endif
44250 endif
44260 'Spirit_type$ = str$(Sa_count) + "差"
44270 'endif
44280 'endif
44290 '3-if
44300 endif
44310 '3.斜め型 2
44320 '3.斜め型 3
44330 '数字が２つ同じ
44340 '表十字型
44350 '先祖運＝愛情運　　行動運＝性格運
44360 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
44370 Spirit_type$="表十字型"
44380 Sa_coun = Senzo_wasu - Seikaku_wasu
44390 if Sa_count > 1 then
44400 Sa$ = str$(Sa_count) + "差"
44410 else
44420 if Sa_count = 1 then
44430 Sa$ = "連続"
44440 endif
44450 endif
44460 endif
44470 'endif
44480 '数字が２つ同じ
44490 '表十字型(横型)
44500 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
44510 Spirit_type$="表十字型(ヨコ型)"
44520 'Sa$を後で書く
44530 endif
44540 '数字が２つ同じ
44550 '表十字型(上下型)
44560 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
44570 Spirit_type$="表十字型(上下型)"
44580 'Sa$を後で書く
44590 endif
44600 'ヨコ型
44610 if Koudou_wasu = Seikaku_wasu then
44620 n=abs(Senzo_wasu - Seikaku_wasu)
44630 n2 = abs(Aijyou_wasu-Seikaku_wasu)
44640 Spirit_type$="ヨコ型"
44650 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
44660 Sa$="連続"
44670 endif
44680 if n = n2 then
44690 if n > 1 then
44700 Sa_count = n - 1
44710 Sa$=str$(Sa_count)+"差"
44720 else
44730 Sa_Count = abs(n - n2)
44740 if Sa_Count > 1 then
44750 Sa$ = str$(Sa_Count) + "差"
44760 endif
44770 endif
44780 endif
44790 endif
44800 '上下型
44810 '同じ数字が1組みある場合
44820 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44830 Spirit_type$ = "上下型"
44840 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44850 'n = abs(Koudou_wasu-Senzo_wasu)
44860 'n2= abs(Seikaku_wasu-Senzo_wasu)
44870 'buf=min(n,n2)
44880 'Sa$=str$(buf - 1) + "差"
44890 Sa$="連続"
44900 endif
44910 endif
44920 '中広（なかこう)型(斜め系)
44930 '連続した数字が2組みある場合
44940 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
44950 'n=Min(Senzo_wasu ,Koudou_wasu)
44960 'n2=Max(Seikaku_wasu , Aijyou_wasu)
44970 'Spirit_type$="中広型（斜め系）"
44980 'Sa_count = n - n2 -1
44990 'if Sa_count > 1 then
45000 'Sa$ = str$(Sa_count-1) + "差"
45010 'else
45020 'if Sa_count = 1 then
45030 'Sa$="連続"
45040 'endif
45050 'endif
45060 'endif
45070 '中広（なかこう)型(表十字型)
45080 '連続した数字が2組みある場合
45090 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
45100 Spirit_type$="中広（なかこう)型(表十字型)"
45110 n=Min(Koudou_wasu , Seikaku_wasu)
45120 n2=Max(Aijyou_wasu , Senzo_wasu)
45130 Sa_count = n - n2
45140 if Sa_count > 1 then
45150 Sa$ = str$(Sa_count - 1) + "差"
45160 else
45170 if Sa_count = 1 then
45180 Sa$ = "連続"
45190 endif
45200 endif
45210 endif
45220 '中一差（タテ系)
45230 '連続した数字が2組みある場合
45240 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
45250 'Spirit_type$="中一差（タテ系)"
45260 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
45270 n = Max(Koudou_wasu,Aijyou_wasu)
45280 n2 = Max(Senzo_wasu,Seikaku_wasu)
45290 else
45300 n = Max(Koudou_wasu,Aijyou_wasu)
45310 n2 = Min(Senzo_wasu,Seikaku_wasu)
45320 endif
45330 Sa_count2 = abs(n2 - n) - 1
45340 if Sa_count2 >= 0 then
45350 select case Sa_count2
45360 case 1:
45370 '中一差（タテ系)
45380 Sa$ = "連続"
45390 Spirit_type$="中一差型（タテ系)*"
45400 case 2:
45410 '中二差型（タテ系)
45420 Sa$ = "1差"
45430 Spirit_type$="中二差型（タテ系)"
45440 case 3:
45450 '中広（なかこう)型(タテ系)
45460 Sa$ = "2差"
45470 Spirit_type$="中三差型（タテ系)"
45480 case 4:
45490 Sa$ = "3差"
45500 Spirit_type$="中広型(タテ系)"
45510 case  else:
45520 cls 3:print"例外に入りました"
45530 end select
45540 '
45550 else
45560 cls 3:print"例外に入りました"
45570 endif
45580 endif
45590 'endif
45600 '中一差（斜め系)
45610 '連続した数字が2組みある場合
45620 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
45630 n = Min(Koudou_wasu,Senzo_wasu)
45640 n2 = Max(Aijyou_wasu,Seikaku_wasu)
45650 Sa_count = n - n2 - 1
45660 select case Sa_count
45670 case 1:
45680 '中一差（斜め系)
45690 '連続した数字が2組みある場合
45700 Sa$="1差"
45710 Spirit_type$="中一差（斜め系)"
45720 case 2:
45730 '中二差（斜め系)
45740 '連続した数字が2組みある場合
45750 Sa$="2差"
45760 Spirit_type$="中二差（斜め系)"
45770 case 3:
45780 Sa$="3差"
45790 Spirit_type$="中広型（斜め系）"
45800 case else:
45810 end select
45820 endif
45830 '順序型(タテ、上下系)
45840 '数字が４つ連続してる場合
45850 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45860 Spirit_type$="順序型(タテ、上下系)"
45870 Sa$="連続"
45880 endif
45890 '中順序型(ヨコ系)
45900 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45910 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45920 Spirit_type$="中順序型(ヨコ系)"
45930 Sa$="1差"
45940 else
45950 '順序型(タテ、ヨコ系)
45960 '数字が４つ連続してる場合
45970 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45980 Spirit_type$="順序型(タテ、ヨコ系)"
45990 Sa$="連続"
46000 endif
46010 endif
46020 endif
46030 '中順序型(上下系)
46040 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
46050 n=Max(Senzo_wasu,Aijyou_wasu)
46060 n2=Min(Koudou_wasu,Seikaku_wasu)
46070 Sa_count = n2 - n
46080 if Sa_count > 1 then
46090 Spirit_type$="中順序型(上下系)"
46100 Sa$ = Str$(Sa_count) + "差"
46110 else
46120 '順序型(斜め、上下系)
46130 '数字が４つ連続してる場合
46140 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
46150 Spirit_type$ = "順序型(斜め、上下系)"
46160 Sa$="連続"
46170 endif
46180 endif
46190 endif
46200 '順序型(斜め、ヨコ系)
46210 '数字が４つ連続してる場合
46220 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
46230 Spirit_type$="順序型(斜め、ヨコ系)"
46240 Sa$="連続"
46250 endif
46260 '隔離型(タテ、上下系)
46270 '数字が1つおきに飛んでる場合
46280 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
46290 Spirit_type$="隔離型(タテ、上下系)"
46300 Sa$="1差"
46310 endif
46320 '隔離型(タテ、ヨコ系)
46330 '数字が1つおきに飛んでる場合
46340 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
46350 Spirit_type$="隔離型(タテ、ヨコ系)"
46360 Sa$="1差"
46370 endif
46380 '隔離型(斜め、上下系)
46390 '数字が1つおきに飛んでる場合
46400 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
46410 Spirit_type$="隔離型(斜め、上下系)"
46420 Sa$="1差"
46430 endif
46440 '隔離型(斜め、ヨコ系)
46450 '数字が1つおきに飛んでる場合
46460 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
46470 Spirit_type$="隔離型(斜め、ヨコ系)"
46480 Sa$="1差"
46490 endif
46500 '隔離型(タテ系)
46510 '数字が2つおきに飛んでる場合
46520 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
46530 Spirit_type$="隔離型(タテ系)"
46540 Sa$="1差"
46550 endif
46560 '隔離型(斜め系)
46570 '数字が2つおきに飛んでる場合
46580 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
46590 Spirit_type$="隔離型(斜め系)"
46600 Sa$="1差"
46610 endif
46620 '隔離型(上下、ヨコ系)
46630 '数字が2つおきに飛んでる場合
46640 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
46650 Spirit_type$="隔離型(上下、ヨコ系)"
46660 Sa$="1差"
46670 'endif
46680 endif
46690 'ここに移動
46700 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
46710 bg=0:bg2=0:key$="":init"kb:4":talk ""
46720 color rgb(255,0,255)
46730 print "●十二の基礎運" + chr$(13)
46740 print Spirit_type$ + Sa$;chr$(13)
46750 print "きょうだい：";Kyoudai$ + chr$(13)
46760 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46770 color rgb(0,0,0)
46780 print"前の画面:左の丸"+chr$(13)
46790 'print"保存して、もう一度やる：スペースキー"+chr$(13)
46800 print"トップ画面に戻る:右の丸"+chr$(13)
46810 'key$ = Input$(1)
46820 while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
46830 key$=inkey$
46840 bg=strig(1)
46850 bg2=strig(0)
46860 pause 2.50*100
46870 wend
46880 if (key$ = chr$(13) or bg=2) then
46890 goto Main_Screen1:
46900 'else
46910 '保存して スペースキーでもう一度占う
46920 'if key$ = " " then
46930 'goto Save_Data1:
46940 else
46950 '
46960 if (key$ = "b" or bg2 = 2) then
46970 goto Result_ReiIden1:
46980 endif
46990 endif
47000 'endif
47010 'ファイル保存 占いデーターを一時保存
47020 Save_Data1:
47030 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
47040 'print#3は末尾は、セミコロンはいらない
47050 '末尾にセミコロンをつけると改行しない
47060 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
47070 ui_msg "保存しました"
47080 close #3
47090 goto Reiden_Top_Input_Sextype:
47100 '個人データーリスト  *parsonal_data
47110 Parsonal_data_top:
47120 cls 3:No=0:Key$="":bg=0:y=0
47130 sp_on 0,1:sp_put 0,(10,100),0,0
47140 line(0,0)-(800,60),rgb(0,0,255),bf
47150 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
47160 line (0,60)-(800,440),rgb(127,255,212),bf
47170 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
47180 line (0,440)-(800,670),rgb(0,255,0),bf
47190 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
47200 color rgb(255,255,255)
47210 print"◎個人データーリスト" + chr$(13)
47220 color rgb(255,0,255)
47230 print " :1.霊遺伝姓名学リスト" + chr$(13)
47240 print " :2.霊遺伝姓名学登録件数" + chr$(13)
47250 print " :3.霊遺伝姓名学データー検索"+chr$(13)
47260 print " :4.メインメニューへ行く"+chr$(13)
47270 color rgb(0,0,0):locate 0,10
47280 print "1.霊遺伝姓名学リストを選択"
47290 Parsonal_data_top2:
47300 key$="":bg=0:y=0
47310 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
47320 key$=inkey$
47330 bg=strig(1)
47340 y=stick(1)
47350 pause 2.50*100
47360 wend
47370 '*****************************************************
47380 '1.下のカーソル ここから 2024.10
47390 '*****************************************************
47400 if (key$=chr$(31) or y=1) then
47410 select case No
47420 case 0:
47430 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47440 case 1:
47450 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47460 case 2:
47470 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47480 case 3:
47490 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47500 end select
47510 endif
47520 '******************************************************
47530 '1.下のカーソル　 ここまで 2024.10
47540 '******************************************************
47550 '******************************************************
47560 '2.上のカーソル　 ここから 2024.10
47570 '******************************************************
47580 if (y=-1 or key$=chr$(30)) then
47590 select case No
47600 case 0:
47610 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47620 case 1:
47630 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47640 case 2:
47650 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47660 case 3:
47670 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47680 end select
47690 endif
47700 '******************************************************
47710 '2.上のカーソル　ここまで 2024.10
47720 '******************************************************
47730 '3.決定ボタン　ここから  2024.10
47740 '******************************************************
47750 if (bg=2 or key$=chr$(13)) then
47760 select case No
47770 case 0:
47780 sp_on 0,0:goto Parsonal_list1:
47790 case 1:
47800 sp_on 1,0:goto Entry_list_count:
47810 case 2:
47820 sp_on 2,0:goto Parsonal_list_Search:
47830 case 3:
47840 sp_on 3,0:goto Main_Screen1:
47850 end select
47860 endif
47870 '******************************************************
47880 '3.決定ボタン　ここまで 2024.10
47890 '******************************************************
47900 'if No = 1 then goto Parsonal_list1:
47910 'if No = 2 then goto Entry_list_count:
47920 'if No = 4 then goto Main_Screen1:
47930 'if No = 3 then goto Parsonal_list_Search:
47940 'if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
47950 '登録件数
47960 Entry_list_count:
47970 N = 0:bg=0:key$="":init"kb:4":talk ""
47980 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
47990 'N=1
48000 while eof(5) = 0
48010 line input #5,line$:N = N + 1
48020 'if line$="大吉数" then
48030 'continue:N = N - 1
48040 'else
48050 'N = N + 1
48060 'endif
48070 wend
48080 'c=N
48090 close #5
48100 c=N
48110 cls 3
48120 line (0,0)-(680,60),rgb(0,0,255),bf
48130 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
48140 line (0,60)-(680,180),rgb(127,255,212),bf
48150 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
48160 LINE (0,180)-(680,280),rgb(0,255,0),bf
48170 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
48180 color rgb(255,255,255)
48190 print "◎霊遺伝姓名学登録件数"+chr$(13)
48200 color rgb(255,0,255)
48210 'N=B-1:C=N
48220 print "登録件数は";c;"件です"+chr$(13)
48230 color rgb(0,0,0)
48240 print "エンターキーを押してください"+chr$(13)
48250 while (key$ <> chr$(13) and bg <> 2)
48260 key$=inkey$
48270 bg=strig(1)
48280 pause 2.50*100
48290 wend
48300 'a$ = Input$(1)
48310 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
48320 'パーソナルリスト ここから
48330 Parsonal_list1:
48340 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
48350 'Title
48360 line (0,0)-(850,60),rgb(0,0,255),bf
48370 line (0,0)-(850,57),rgb(255,255,255),b
48380 '個人名
48390 line (0,60)-(850,165),rgb(0,255,0),bf
48400 line (0,63)-(850,162),rgb(255,0,255),b
48410 '数値リスト
48420 line (0,165)-(850,550),rgb(255,212,212),bf
48430 line (0,168)-(850,547),rgb(0,0,255),b
48440 'ボタンメッセージ
48450 line (0,550)-(850,730),rgb(0,255,0),bf:
48460 line (0,553)-(853,733),rgb(255,0,255),b
48470 'Parsonal_list2:
48480 'color rgb(255,255,255):
48490 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
48500 'n=0
48510 open "config/Parsonal_data/parsonal_data.dat" for input as #7
48520 'bN=0
48530 while eof(7)=0
48540 'input #6,lines2$
48550 'close #6
48560 '
48570 line input #7,lines$:bN = bN + 1
48580 'if lines$ = "大吉数" then
48590 'continue:bN = bN - 1
48600 'else
48610 'bN = bN + 1
48620 'endif
48630 wend
48640 'buf_name1$(i)=Mid$(lines$,4,4)
48650 'next i
48660 'wend
48670 close #7
48680 'a=0
48690 open "config/Parsonal_data/parsonal_data.dat" for input as #8
48700 'while eof(8)=0
48710 for i=0 to (bN * 10) -1
48720 input #8,buflines$(i)
48730 'buflines$(i) = line$
48740 'a  =  a  +  1
48750 Next i
48760 'wend
48770 close #8
48780 Parsonal_list2:
48790 'while (n <= bN*10)
48800 'while (bg <> 2 and bg2 <> 2 )
48810 'bg = strig(1)
48820 'bg2 = strig(0)
48830 'n=((n+1) Mod bN)
48840 'pause 2.5*1000
48850 'wend
48860 'while n <= bN * 10
48870 'if bg2= 2 then goto Main_Screen1:
48880 'if bg = 2 then 'n=((n+1) Mod bN)
48890 'n=((n+1) Mod bN)
48900 'endif
48910 'if bg2 = 2 then goto Main_Screen1:
48920 while n <= bN * 10
48930 'Parsonal_list2:
48940 cls
48950 'if bg=2 then n=((n+1) Mod bN)
48960 color rgb(255,255,255)
48970 print "霊遺伝姓名学 リスト" + chr$(13)
48980 '性別を出す
48990 sex$ = show_sex_type$(buflines$((10*n) + 1))
49000 'n=0
49010 color rgb(0,0,0):
49020 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
49030 '
49040 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
49050 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
49060 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
49070 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
49080 'n = (( n + 1) Mod 3) - 1
49090 '
49100 'n = n + 1
49110 print "右の丸:次へ行く" + chr$(13)
49120 print "左の丸：トップへ戻る" + chr$(13)
49130 key$=input$(1)
49140 if key$= " " then n=((n+1) Mod bN)
49150 'goto Parsonal_list2:
49160 'wend
49170 if key$=chr$(13) then goto Main_Screen1:
49180 wend
49190 'goto Parsonal_list2:
49200 'n=((n+1) Mod bN)
49210 'endif
49220 'goto Parsonal_list2:
49230 'if bg = 2 then n = ((n + 1) Mod bN)
49240 'if bN = 3 then
49250 'if buflines$(0) = "大吉数" then
49260 'n = ((n + 1) Mod bN)
49270 'else
49280 'n=((n + 1) Mod bN)
49290 'wend
49300 'else
49310 'if bN=2 then
49320 'n=((n + 1) Mod bN)
49330 'endif
49340 'endif
49350 'cls
49360 'else
49370 'if bg2 = 2  then goto Main_Screen1:
49380 'wend
49390 'goto Parsonal_data_top:
49400 'endif
49410 'endif
49420 Parsonal_list_Search:
49430 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
49440 while eof(1)=0
49450 line input #1,lines$:hit_count=hit_count + 1
49460 wend
49470 close #1
49480 'bufname$(hit_count*10),buffname$(hit_count*10)
49490 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
49500 for i=0 to hit_count*10 - 1
49510 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
49520 next i
49530 close #2
49540 Search_find:
49550 cls 3:init "kb:2":talk ""
49560 'グラフィック領域　ここから
49570 line (0,0)-(770,60),rgb(0,0,255),bf
49580 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
49590 line (0,60)-(770,170),rgb(127,255,212),bf
49600 line(0,63)-(767,173),rgb(0,0,255),b
49610 line(0,170)-(770,440),rgb(0,255,0),bf
49620 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
49630 color rgb(255,255,255)
49640 print "霊遺伝姓名判断 データー検索"+chr$(13)
49650 color rgb(255,0,255)
49660 print "登録件数:";hit_count;"件です"+chr$(13)
49670 color rgb(0,0,0)
49680 print "調べたい人の名前を入れてください"+chr$(13)
49690 Input "名前:",name$
49700 cls
49710 for i = 0 to hit_count * 10 - 1
49720 if name$ = buffname$(i) then
49730 hcount = hcount + 1
49740 endif
49750 next i
49760 if hcount > 0 then
49770 init "kb:4":cls
49780 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49790 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
49800 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
49810 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
49820 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
49830 while (key$ <> chr$(13) and bg <> 2)
49840 key$=inkey$
49850 bg=strig(1)
49860 bg2=strig(0)
49870 pause 2.50*100
49880 wend
49890 'a$=input$(1)
49900 'if a$=" " then goto Search_find:
49910 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
49920 else
49930 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49940 color rgb(0,0,0):print"検索名:";name$+chr$(13)
49950 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
49960 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
49970 a$=input$(1)
49980 IF a$=chr$(13) then goto Main_Screen1:
49990 endif
50000 '相性のデーターを保存する機能
50010 '保存ファイル：bestAisyou.dat
50020 '保存フォルダ:config/Aisyou_dat/
50030 Save_Aisyou:
50040 open "config/Aisyou_data" for append as #1
50050 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
50060 close #1
50070 ui_msg "保存しました"
50080 key$ = input$(1)
50090 '設定変更項目
50100 Config_Setting:
50110 cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
50120 sp_on 0,1:sp_put 0,(10,100),0,0
50130 'グラフィック領域　ここから
50140 'Line 1
50150 line (0,0)-(850,60),rgb(0,0,255),bf
50160 line (0,0)-(850,57),rgb(255,255,255),b
50170 'Line 2
50180 line (0,60)-(850,460),rgb(127,255,212),bf
50190 line (0,57)-(850,457),rgb(0,0,0),b
50200 'Line 3
50210 line (0,460)-(850,640),rgb(0,255,0),bf
50220 line (0,457)-(850,637),rgb(0,0,0),b
50230 'グラフィック領域　ここまで
50240 color rgb(255,255,255)
50250 print "設定　トップメニュー" + chr$(13)
50260 color rgb(255,0,255)
50270 print " :1.キーボードの設定" + chr$(13)
50280 print " :2.トップ画面に戻る"
50290 'print " :4.プログラムの終了"+chr$(13)
50300 color rgb(0,0,0):locate 0,10
50310 print "1.キーボードの設定を選択"
50320 'print "番号を選んでエンターキー"+chr$(13)
50330 'Input "番号:",No
50340 'No=4:プログラムの終了
50350 'if No = 4 then
50360 Config_Setting2:
50370 y=0:bg=0:key$=""
50380 while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
50390 key$=inkey$
50400 y=stick(1)
50410 bg=strig(1)
50420 pause 2.50*100
50430 wend
50440 if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
50450 select case No
50460 case 0:
50470 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
50480 case 1:
50490 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
50500 'if (y=-1 or key$=chr$(30)) then
50510 '
50520 '
50530 'case 3:
50540 '       No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),00,0:goto Config_Setting2:
50550 end select
50560 endif
50570 if (key$=chr$(13) or bg=2) then
50580 select case No
50590 case 0:
50600 sp_on 0,0:goto Keyboard_Setting:
50610 case 1:
50620 sp_on 1,0:goto Main_Screen1:
50630 end select
50640 endif
50650 'cls 3:talk"しゅうりょうします":ui_msg"終了します":end
50660 'else
50670 'select case No
50680 'No=1:キーボードの設定
50690 'case 1:
50700 'goto Keyboard_Setting:
50710 'No=2:音の設定
50720 'case 2:
50730 'No=3:トップに戻る
50740 'case 3:
50750 'goto Main_Screen1:
50760 'No=1〜3以外
50770 'case else:
50780 'goto Config_Setting:
50790 'end select
50800 'endif
50810 '1.キーボードの設定
50820 Keyboard_Setting:
50830 cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
50840 sp_on 0,1:sp_put 0,(10,100),0,0
50850 'グラフィック領域　ここから
50860 'Line 1
50870 line (0,0)-(1050,60),rgb(0,0,255),bf
50880 line (0,0)-(1050-3,57),rgb(255,255,255),b
50890 'Line 2
50900 line (0,60)-(1050,460),rgb(127,255,212),bf
50910 line (0,57)-(1050-3,457),rgb(0,0,0),b
50920 'Line 3
50930 line (0,460)-(1050,640),rgb(0,255,0),bf
50940 line (0,457)-(1050-3,637),rgb(0,0,0),b
50950 'グラフィック領域　ここまで
50960 '文字色　白
50970 color rgb(255,255,255)
50980 print "設定1 キーボードの設定" + chr$(13)
50990 color rgb(255,0,255)
51000 print " :1.バーチャルキーボード表示する" + chr$(13)
51010 print " :2.バーチャルキーボードを表示しない" + chr$(13)
51020 print " :3.トップ画面に戻る" + chr$(13)
51030 print " :4.終了する" + chr$(13)
51040 color rgb(0,0,0)
51050 locate 0,10
51060 print "1.バーチャルキーボードを表示するを選択"
51070 Keyboard_Setting2:
51080 y=0:bg=0:key$=""
51090 while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
51100 key$=inkey$
51110 y=stick(1)
51120 bg=strig(1)
51130 pause 2.50*100
51140 wend
51150 '****************************************************************************************************************
51160 '下のカーソル　ここから
51170 '****************************************************************************************************************
51180 if (y=1 or key$=chr$(31)) then
51190 select case No
51200 case 0:
51210 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
51220 case 1:
51230 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
51240 case 2:
51250 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
51260 case 3:
51270 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
51280 end Select
51290 endif
51300 '*******************************************************************************************************************
51310 '下のカーソル　ここまで
51320 '*******************************************************************************************************************
51330 '*******************************************************************************************************************
51340 '上のカーソル　ここから
51350 '********************************************************************************************************************
51360 '********************************************************************************************************************
51370 '上のカーソル　ここまで
51380 '********************************************************************************************************************
51390 '********************************************************************************************************************
51400 '決定ボタン　ここから
51410 '*********************************************************************************************************************
51420 if (key$=chr$(13) or bg=2) then
51430 select case No
51440 case 0:
51450       init "kb:2":
51460 case 1:
51470 sp_on 1,0:init "kb:0":
51480 case 2:
51490 sp_on 2,0:goto Main_Screen1:
51500 case 3:
51510 ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
51520 end select
51530 endif
51540 '*********************************************************************************************************************
51550 '決定ボタン　ここまで
51560 '*********************************************************************************************************************
51570 ' Print "番号を選んでください" + chr$(13)
51580 ' Input "番号:",SelectNo3
51590 'if SelectNo3 = 4 then
51600 'cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
51610 'else
51620 'Select case SelectNo3
51630 'case 1:
51640 'if keyboard_flag = 0 then
51650 'keyboard_flag=1:init"kb:2"
51660 'goto Keyboard_Setting:
51670 'endif
51680 'case 2:
51690 'if keyboard_flag=1 then
51700 'keyboard_flag=0:init"kb:0"
51710 'goto Keyboard_Setting:
51720 'endif
51730 'case 3:
51740 'goto Main_Screen1:
51750 'case else:
51760 'goto Keyboard_Se
51770 'end Select
51780 'endif
