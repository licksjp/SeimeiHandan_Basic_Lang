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
310 'Version1.91:(新しい流派を追加3 in １ 開発開始):Date2020.05.01 *
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
670 '*****************************************************
680 '設定ファイル　漢字文字データ                                      *
690 'Version:Mojidata20200411.dat Date:20200411          *
700 'Version:Mojidata20200415.dat Date:20200415          *
710 'Version:Mojidata20200506.dat Date:20200506          *
720 'Version:Mojidata20200513.dat Date:20200513          *
730 'Version:Mojidata20200516.dat Date:20200516          *
740 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
750 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
760 '*****************************************************
770 '* 開発再開　2024.9.20　Ver2.33                        *
780 '* 開発再開 Date:2024.09.20                          *
790 '*************************************************
800 '新機能
810 'Date:2020.05.27
820 'Parsonal_data.datに個人データーを保存機能追加
830 '*****************************************************
840 'メモリー確保 文字領域,数値データー                                  *
850 '*****************************************************
860 clear 4*4000,4*1000000
870 '*****************************************************
880 'Screen 定義                                           *
890 '*****************************************************
900 Screen 1,1,1,1
910 '*****************************************************
920 'Sprite 定義                                           *
930 '*****************************************************
940 gload "./config/gazo/"+"selection.png",1,10,100
950 gload "./config/gazo/"+"selection.png",1,10,200
960 gload "./config/gazo/"+"selection.png",1,10,300
970 gload "./config/gazo/"+"selection.png",1,10,400
980 gload "./config/gazo/"+"selection.png",1,10,500
990 sp_def 0,(10,100),32,32
1000 sp_def 1,(10,200),32,32
1010 sp_def 2,(10,300),32,32
1020 sp_def 3,(10,400),32,32
1030 sp_def 4,(10,500),32,32
1040 '*****************************************************
1050 '改名チェック変数                                            *
1060 '****************************************************
1070 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1080 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1090 '*****************************************************
1100 'キーボードフラグ                                            *
1110 '0:キーボード非表示                                          *
1120 '1:キーボード表示                                           *
1130 '*****************************************************
1140 keyboard_flag = 0
1150 '*****************************************************
1160 '性別の選択用変数                                            *
1170 '*****************************************************
1180 dim sex_type$(2)
1190 '*****************************************************
1200 '相性占い　設定項目 ここから                                      *
1210 '*****************************************************
1220 count=0:line_count=0
1230 dim buffer_Aisyou_type$(10,10)
1240 dim buffer_Kaimei_data_name$(10)
1250 '*****************************************************
1260 '改名チェックの選択肢の変数                                       *
1270 '*****************************************************
1280 dim select$(3)
1290 open "config/Selection/Selection.dat" for input as #2
1300 for i=0 to 2
1310 input #2,select$(i)
1320 next i
1330 close #2
1340 'select$(0)="改名リストに追加する"
1350 'select$(1)="改名リストに追加しない"
1360 'select$(2)="トップ画面に行く"
1370 '*****************************************************
1380 '総数を出す変数 改名チェック変数                                    *
1390 'dim buffer_total$                                   *
1400 '1.理解し合える最良のカップル                                     *
1410 '*****************************************************
1420 dim buf_good_couple1(20)
1430 dim buf_good_couple2(20)
1440 '*****************************************************
1450 '2.互いに自然体でつきあえるカップル                                  *
1460 '*****************************************************
1470 dim buf_natural_couple1(20)
1480 dim buf_natural_couple2(20)
1490 '**************************************************
1500 dim buf_good_for_man1(20)
1510 dim buf_good_for_man2(20)
1520 '*****************************************************
1530 '4.女性にとって居心地の良い相性                                    *
1540 '*****************************************************
1550 dim buf_good_for_woman1(20)
1560 dim buf_good_for_woman2(20)
1570 '*****************************************************
1580 '5.恋愛経験を重ねた後なら愛を育める                                  *
1590 '*****************************************************
1600 dim short_of_experience1(20)
1610 dim short_of_experience2(20)
1620 '*****************************************************
1630 '6.結婚への発展が困難なカップル                                    *
1640 '*****************************************************
1650 dim buf_difficult_for_couple1(20)
1660 dim buf_difficult_for_couple2(20)
1670 '*****************************************************
1680 '7.愛し方にズレが出てくる二人                                     *
1690 '*****************************************************
1700 dim buf_difference_of_love1(20)
1710 dim buf_difference_of_love2(20)
1720 '*****************************************************
1730 '相性占い　設定項目　ここまで
1740 '*****************************************************
1750 '8.互いの価値観が噛み合わない相性 ここから                              *
1760 '*****************************************************
1770 dim buf_difference_of_KachiKan1(20)
1780 dim buf_difference_of_KachiKan2(20)
1790 '*****************************************************
1800 '8.互いに価値観が噛み合わない相性 ここまで                              *
1810 '*****************************************************
1820 '相性診断　相性パターン結果　ここから
1830 dim Result_Aisyou_type$(8)
1840 '*****************************************************
1850 '相性診断 相性パターン結果 ここまで                                  *
1860 '*****************************************************
1870 '2019/04/07 姓名判断アプリ 作成開始                             *
1880 '姓名判断　 名前の総数での吉凶を調べる                                 *
1890 '*****************************************************
1900 buf_count=0:buffer_count=0:count=0:buffer=0
1910 '*****************************************************
1920 '合計文字数                                               *
1930 '*****************************************************
1940 totalmoji=0
1950 dim buf_Input_data$(10),buf_Input_data2$(10)
1960 dim bufer_name$(10),bufer_name2$(10)
1970 dim buf_Input_name$(10),buf_Input_name2$(10)
1980 '*****************************************************
1990 '定数文字1画〜27画                                          *
2000 'ファイルから各画数を読み込んで代入する。                                *
2010 '*****************************************************
2020 '1行目だけ読み込む                                           *
2030 '*****************************************************
2040 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
2050 for i=0 to 26
2060 input #2,buf_lines$(i)
2070 next i
2080 close #2
2090 '*****************************************************
2100 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2110 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2120 '1画
2130 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2140 '2画
2150 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2160 '3画
2170 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2180 '4画
2190 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2200 '5画
2210 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2220 '6画
2230 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2240 '7画
2250 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2260 '8画
2270 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2280 '9画
2290 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2300 '10画
2310 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2320 '11画
2330 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2340 '12画
2350 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2360 '13画
2370 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2380 '14画
2390 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2400 '15画
2410 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2420 '16画
2430 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2440 '17画
2450 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2460 '18画
2470 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
2480 '19画
2490 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
2500 '20画
2510 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
2520 '21画
2530 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
2540 '22画
2550 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
2560 '23画
2570 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2580 '24画
2590 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2600 '25画
2610 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2620 '26画
2630 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2640 '27画
2650 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2660 dim Moji_data$(Moji_total+27+27)
2670 '******************************************************
2680 'dim bufmoji$(10),Input_data$(10)                     *
2690 '１画の文字   サイズ:21+2(漢字)                                 *
2700 '******************************************************
2710 dim buf_char_hiragana1$(Moji_1)
2720 '******************************************************
2730 '2画の文字  サイズ 58+14=72(漢字)                              *
2740 '******************************************************
2750 dim buf_char_hiragana2$(Moji_2)
2760 '******************************************************
2770 '3画の文字 サイズ:48+29=77(漢字)                               *
2780 '******************************************************
2790 dim buf_char_hiragana3$(Moji_3)
2800 '******************************************************
2810 '4画の文字 サイズ:29+51=80(漢字)                               *
2820 '******************************************************
2830 dim buf_char_hiragana4$(Moji_4)
2840 '******************************************************
2850 '５画の文字  サイズ:18+59=77(漢字)                              *
2860 '******************************************************
2870 dim buf_char_hiragana5$(Moji_5)
2880 '******************************************************
2890 '6画の文字  サイズ:79(漢字)                                    *
2900 '******************************************************
2910 dim buf_char_hiragana6$(Moji_6)
2920 '******************************************************
2930 '7画の文字  サイズ:88(漢字)                                    *
2940 '******************************************************
2950 dim buf_char_hiragana7$(Moji_7)
2960 '******************************************************
2970 '8画の文字                                                *
2980 '******************************************************
2990 dim buf_char_hiragana8$(Moji_8)
3000 '******************************************************
3010 '9画の文字                                                *
3020 '******************************************************
3030 dim buf_char_hiragana9$(Moji_9)
3040 '******************************************************
3050 '10画の文字 98文字                                          *
3060 '******************************************************
3070 dim buf_char_hiragana10$(Moji_10)
3080 '******************************************************
3090 '11画の文字                                               *
3100 '******************************************************
3110 dim buf_char_hiragana11$(Moji_11)
3120 '******************************************************
3130 '12画の文字                                               *
3140 '******************************************************
3150 dim buf_char_hiragana12$(Moji_12)
3160 '******************************************************
3170 '13画の文字 81文字                                          *
3180 '******************************************************
3190 dim buf_char_hiragana13$(Moji_13)
3200 '******************************************************
3210 '14画の文字                                               *
3220 '******************************************************
3230 dim buf_char_hiragana14$(Moji_14)
3240 '******************************************************
3250 '15画の文字                                               *
3260 '******************************************************
3270 dim buf_char_hiragana15$(Moji_15)
3280 '******************************************************
3290 '16画の文字                                               *
3300 '******************************************************
3310 dim buf_char_hiragana16$(Moji_16)
3320 '******************************************************
3330 '17画の文字                                               *
3340 '******************************************************
3350 dim buf_char_hiragana17$(Moji_17)
3360 '******************************************************
3370 '18画の文字                                               *
3380 '******************************************************
3390 dim buf_char_hiragana18$(Moji_18)
3400 '19画の文字
3410 dim buf_char_hiragana19$(Moji_19)
3420 '20画の文字
3430 dim buf_char_hiragana20$(Moji_20)
3440 '21画の文字
3450 dim buf_char_hiragana21$(Moji_21)
3460 '22画の文字
3470 dim buf_char_hiragana22$(Moji_22)
3480 '23画の文字
3490 dim buf_char_hiragana23$(Moji_23)
3500 '24画の文字
3510 dim buf_char_hiragana24$(Moji_24)
3520 '25画の文字
3530 dim buf_char_hiragana25$(Moji_25)
3540 dim buf_char_hiragana26$(Moji_26)
3550 dim buf_char_hiragana27$(Moji_27)
3560 '結果表示1　吉凶データー 81パターン
3570 dim buf_Kikkyo$(81)
3580 '結果表示２
3590 '安斎流姓名判断 吉凶  1.地運
3600 dim buf_Kikkyo_Anzai_chiunn$(70)
3610 '安斎流姓名判断　　吉凶  2.人運
3620 dim buf_Kikkyo_Anzai_jinunn$(69)
3630 '安斎流姓名判断 吉凶 3.外運
3640 'dim buf_Kikkyo_Anzai_gaiunn$(70)
3650 '安斎流姓名判断 吉凶　　4.総運
3660 dim buf_Kikkyo_Anzai_total$(80)
3670 '霊遺伝姓名学　変数
3680 A=0
3690 B=0
3700 C=0
3710 D=0
3720 '1.先祖運
3730 buffer_senzo=0
3740 '2.性格運
3750 buffer_seikaku=0
3760 '3.愛情運
3770 buffer_Aijyou=0
3780 '4.行動運
3790 buffer_Kouzou=0
3800 '1-1.先祖運　和数
3810 Senzo_wasu=0
3820 '1-2.先祖運　生数
3830 Senzo_seisu=0
3840 '2-1.性格運 和数
3850 Seikaku_wasu=0
3860 '2-2.性格運 生数
3870 Seikaku_seisu=0
3880 '3-1.愛情運 和数
3890 Aijyou_wasu=0
3900 '3-2.愛情運 生数
3910 Aijyou_seisu=0
3920 '4-1 行動運 和数
3930 Koudo_wasu=0
3940 '4-2 行動運 生数
3950 Koudo_seisu=0
3960 'データー読み込み　ここから
3970 'データー読み込み　1.ひらがな
3980 '1画の文字   6文字 23文字
3990 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
4000 '全ファイルを読み込む
4010 for i = 0 to 26+Moji_total+27
4020 input #1,Moji_data$(i)
4030 next i
4040 close #1
4050 '全ファイル読み込み　ここまで
4060 for i = 27+1 to (Moji_1)+27+1
4070 '1画の文字にデーターをコピーする
4080 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4090 next i
4100 '2画の文字    98文字
4110 for i = Moji_Min_2  to (Moji_Max_2)
4120 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4130 next i
4140 '3文字の文字    77文字
4150 for i = Moji_Min_3  to (Moji_Max_3)
4160 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4170 next i
4180 '4文字の文字   80文字
4190 for i = (Moji_Min_4)  to (Moji_Max_4)
4200 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4210 next i
4220 '5文字の文字 77文字
4230 for i = Moji_Min_5 to (Moji_Max_5)
4240 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4250 next i
4260 '6文字の文字 79文字
4270 for i = Moji_Min_6  to Moji_Max_6
4280 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4290 next i
4300 '7文字の文字 170文字
4310 for i = Moji_Min_7 to Moji_Max_7
4320 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4330 next i
4340 '8画の文字 120文字
4350 for i = Moji_Min_8 to Moji_Max_8
4360 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4370 next i
4380 '9画の文字  103文字
4390 for i = Moji_Min_9 to Moji_Max_9
4400 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4410 next i
4420 '10画の文字 285文字
4430 for i = Moji_Min_10 to (Moji_Max_10)
4440 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4450 next i
4460 '11画の文字
4470 for i = Moji_Min_11 to Moji_Max_11
4480 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
4490 next i
4500 '12画の文字
4510 for i = Moji_Min_12 to Moji_Max_12
4520 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
4530 next i
4540 '13画の文字 81
4550 for i = Moji_Min_13 to Moji_Max_13
4560 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
4570 next i
4580 '14画の文字 66
4590 for i = Moji_Min_14 to Moji_Max_14
4600 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
4610 next i
4620 '15画の文字 59
4630 'for i = Moji_Min_15 to (Moji_Max_15) - 1
4640 for i=Moji_Min_15 to  Moji_Max_15
4650 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
4660 next i
4670 '16画の文字 44
4680 for i=Moji_Min_16 to Moji_Max_16
4690 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
4700 next i
4710 '17画の文字
4720 for i = Moji_Min_17 to Moji_Max_17
4730 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
4740 next i
4750 '18画の文字
4760 for i = Moji_Min_18 to Moji_Max_18
4770 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
4780 next i
4790 '19画の文字 17文字
4800 for i = Moji_Min_19 to Moji_Max_19
4810 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
4820 next i
4830 '20 画の文字 13文字
4840 for  i = Moji_Min_20 to Moji_Max_20
4850 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
4860 NEXT i
4870 '21画の文字 6
4880 for i = Moji_Min_21 to (Moji_Max_21)
4890 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
4900 next i
4910 '22 画の文字 4
4920 for i = Moji_Min_22 to Moji_Max_22
4930 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4940 next i
4950 '23画の文字  3文字
4960 for i = Moji_Min_23 to Moji_Max_23
4970 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
4980 next i
4990 '24画の文字  3文字
5000 for i = Moji_Min_24 to Moji_Max_24
5010 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5020 next i
5030 '25 画の文字 4
5040 for i = Moji_Min_25 to Moji_Max_25
5050 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5060 next i
5070 '26画の文字  3文字
5080 for i = Moji_Min_26 to Moji_Max_26
5090 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5100 next i
5110 '27画の文字  3文字
5120 for i = Moji_Min_27 to Moji_Max_27
5130 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5140 next i
5150 '吉凶データー読み込み
5160 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
5170 for i=0 to 80
5180 input #1,buf_Kikkyo$(i+1)
5190 next i
5200 close #1
5210 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
5220 for m=0 to 69
5230 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5240 next m
5250 close #2
5260 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
5270 for i=1 to 70
5280 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
5290 next i
5300 close #3
5310 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
5320 for i=0 to 79
5330 input #4,buf_Kikkyo_Anzai_total$(i)
5340 next i
5350 close #4
5360 '****************************************************
5370 '0.理解し合えるカップル　ここから                                  *
5380 '****************************************************
5390 restore 6530
5400 for i=0 to 19
5410 read buf_good_couple1(i)
5420 next i
5430 restore 6540
5440 for j=0 to 19
5450 read buf_good_couple2(j)
5460 next j
5470 '*****************************************************
5480 '0.理解し合えるカップル ここまで                                   *
5490 '*****************************************************
5500 '*****************************************************
5510 '1.互いに自然体でつきあえる二人　ここから                               *
5520 '*****************************************************
5530 restore 6600
5540 for i=0 to 19
5550 read buf_natural_couple1(i)
5560 next i
5570 restore 6610
5580 for j=0 to 19
5590 read buf_natural_couple2(j)
5600 next j
5610 '*****************************************************
5620 '1.互いに自然体でつきあえる二人　ここまで                               *
5630 '*****************************************************
5640 '2        ここから                                       *
5650 '*****************************************************
5660 restore 6670
5670 for i=0 to 19
5680 read buf_good_for_man1(i)
5690 next i
5700 restore 6680
5710 for j=0 to 19
5720 read buf_good_for_man2(j)
5730 next j
5740 '******************************************************
5750 '2        ここまで                                        *
5760 '******************************************************
5770 '3        ここから                                        *
5780 '******************************************************
5790 restore 6740
5800 for i=0 to 19
5810 read buf_good_for_woman1(i)
5820 next i
5830 restore 6750
5840 for j=0 to 19
5850 read buf_good_for_woman2(j)
5860 next j
5870 '******************************************************
5880 '3        ここまで                                        *
5890 '******************************************************
5900 '4        ここから                                        *
5910 '******************************************************
5920 restore 6810
5930 for i=0 to 19
5940 read short_of_experience1(i)
5950 next i
5960 restore 6820
5970 for j=0 to 19
5980 read short_of_experience2(j)
5990 next j
6000 '******************************************************
6010 '4        ここまで                                        *
6020 '******************************************************
6030 '5.結婚への発展が困難なカップル  ここから                               *
6040 '******************************************************
6050 restore 6880
6060 for i=0 to 19
6070 read buf_difficult_for_couple1(i)
6080 next i
6090 restore 6890
6100 for j=0 to 19
6110 read buf_difficult_for_couple2(j)
6120 next j
6130 '******************************************************
6140 '5.結婚への発展が困難なカップル  ここまで                               *
6150 '******************************************************
6160 '6.愛し方にズレが出る二人 ここから                                   *
6170 '******************************************************
6180 restore 6950
6190 for i=0 to 19
6200 read buf_difference_of_love1(i)
6210 next i
6220 restore 6960
6230 for j=0 to 19
6240 read buf_difference_of_love2(j)
6250 next j
6260 '******************************************************
6270 '6.愛し方にズレが出る二人 ここまで                                   *
6280 '******************************************************
6290 '7.互いの価値観が噛み合わない相性 ここから                               *
6300 '******************************************************
6310 restore 7020
6320 for i=0 to 19
6330 read buf_difference_of_KachiKan1(i)
6340 next i
6350 restore 7030
6360 for j=0 to 19
6370 read buf_difference_of_KachiKan2(j)
6380 next j
6390 '******************************************************
6400 '7.互いの価値観が噛み合わない相性 ここまで                               *
6410 '******************************************************
6420 '相性占いタイプ ここから                                         *
6430 '******************************************************
6440 restore 7110
6450 for i=0 to 7
6460 read Result_Aisyou_type$(i)
6470 next i
6480 '****************************************************
6490 'Data文  ここから                                        *
6500 '****************************************************
6510 '0.理解し合えるカップル　ここから                                  *
6520 '****************************************************
6530 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
6540 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
6550 '****************************************************
6560 '0.理解し合えるカップル　ここまで                                  *
6570 '****************************************************
6580 '1.互いに自然体でつきあえるカップル ここから                            *
6590 '****************************************************
6600 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
6610 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
6620 '****************************************************
6630 '1.互いに自然体でつきあえるカップル　ここまで                            *
6640 '****************************************************
6650 '2.男性にとって居心地の良いカップル  ここから                           *
6660 '****************************************************
6670 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6680 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6690 '****************************************************
6700 '2男性にとって居心地の良いカップル ここまで                             *
6710 '****************************************************
6720 '3女性にとって居心地の良いカップル  ここから                            *
6730 '****************************************************
6740 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
6750 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
6760 '****************************************************
6770 '3女性にとって居心地の良いカップル  ここまで                            *
6780 '****************************************************
6790 '4恋愛経験を重ねた後なら愛を育める ここから                             *
6800 '****************************************************
6810 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6820 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6830 '****************************************************
6840 '4恋愛経験を重ねた後なら愛を育める ここまで                             *
6850 '****************************************************
6860 '5.結婚への発展が困難なカップル ここから                              *
6870 '****************************************************
6880 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6890 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6900 '****************************************************
6910 '5.結婚への発展が困難なカップル ここまで                              *
6920 '****************************************************
6930 '6.愛し方にズレが生じる二人  ここから                               *
6940 '****************************************************
6950 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
6960 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
6970 '****************************************************
6980 '6.愛し方にずれが生じる二人  ここまで                               *
6990 '****************************************************
7000 '7.互いに価値観が噛み合わない相性　ここから                             *
7010 '****************************************************
7020 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
7030 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
7040 '****************************************************
7050 '7.互いに価値観が噛み合わない相性 ここまで                             *
7060 '****************************************************
7070 '相性占い結果パターン ここから                                    *
7080 '****************************************************
7090 '0:理解し合える最良のカップル                                    *
7100 '****************************************************
7110 data "理解し合える最良のカップル"
7120 '****************************************************
7130 '1:互いに自然体で付き合えるカップル                                 *
7140 '****************************************************
7150 data "互いに自然体でつきあえるカップル"
7160 '****************************************************
7170 '2:男性にとって居心地の良い相性                                   *
7180 '****************************************************
7190 data "男性にとって居心地の良い相性"
7200 '****************************************************
7210 '3:女性にとって居心地の良い相性                                   *
7220 '****************************************************
7230 data "女性にとって居心地の良い相性"
7240 '****************************************************
7250 '4:恋愛経験を重ねた後なら愛を育める                                 *
7260 '****************************************************
7270 data "恋愛経験を重ねた後なら愛を育める"
7280 '****************************************************
7290 '5:結婚への発展が困難なカップル                                   *
7300 '****************************************************
7310 data "結婚への発展が困難なカップル"
7320 '****************************************************
7330 '6:愛し方にズレが生じる二人                                     *
7340 '****************************************************
7350 data "愛し方にずれが生じる二人"
7360 '****************************************************
7370 '7:互いに価値観が噛み合わない相性                                  *
7380 '****************************************************
7390 data "互いの価値観が噛み合わない相性"
7400 '************************************************
7410 'Data文   ここまで                                   *
7420 '************************************************
7430 '相性占い結果パターン ここまで
7440 '*******************************
7450 'メイン画面　ここから スタート (キーボードの選択)
7460 '*******************************
7470 '描画領域　ここから
7480 'Select_keybord:
7490 'talk ""
7500 'cls 3:font 48:No=0:y=0:key$="":bg=0:init"kb:4"
7510 'talk "キーボードの選択です。バーチャルキーボードを表示させますか？"
7520 'line (0,0)-(1200,60),rgb(0,0,255),bf
7530 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
7540 'line (0,60)-(1200,380),rgb(127,255,212),bf
7550 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
7560 'line (0,380)-(1200,450),rgb(0,255,0),bf
7570 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
7580 '描画領域　ここまで
7590 'Sprite
7600 'sp_on 0,1:sp_on 1,0:sp_on 2,0
7610 'sp_put 0,(10,100),0,0
7620 'sp_put 1,(10,200),1,0
7630 'sp_put 2,(10,300),2,0
7640 '設定画面 バーチャルキーボードの表示選択
7650 'color rgb(255,255,255)
7660 'print "●バーチャル キーボードの表示の選択" + chr$(13)
7670 'color rgb(255,0,255)
7680 'print " :1.バーチャルキーボードを表示する" + chr$(13)
7690 'print " :2.バーチャルキーボードを表示しない" + chr$(13)
7700 'print " :3.プログラムを終了する" + chr$(13)
7710 'color rgb(0,0,255)
7720 'print "バーチャルキーボードを表示するを選択"
7730 'Select_keybord2:
7740 'y=0:key$="":bg=0
7750 'while (key$ <> chr$(13) and key$ <> chr$(31) and y <> -1 and y <> 1 and bg <> 2)
7760 'y=stick(1)
7770 'key$=inkey$
7780 'bg=strig(1)
7790 'pause 3.56*100
7800 'wend
7810 '*****************************************************
7820 'カーソル下
7830 '*****************************************************
7840 'if (key$=chr$(31) or y=1) then
7850 'select case No
7860 'case 0:
7870 '       No=1:beep:locate 0,8:print "                      ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 0,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
7880 'case 1:
7890 '       No=2:beep:locate 0,8:print "                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 1,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7900 'case 2:
7910 '       No=0:beep:locate 0,8:print "                        ":locate 0,8:print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 2,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
7920 'end select
7930 'endif
7940 '***************************************************
7950 'カーソル上
7960 '***************************************************
7970 'if (y=-1 or key) then
7980 'select case No
7990 'case 0:
8000 '       No=2:beep:LOCATE 0,8:print "                                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 0,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
8010 'case 1:
8020 '       No=0:beep:locate 0,8:print "                                          ":locate 0,8:Print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 1,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
8030 'case 2:
8040 '       No=1:beep:locate 0,8:print "                                           ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
8050 'end select
8060 'endif
8070 'if (key$=chr$(13) or bg=2) then
8080 'select case No
8090 'case 0:
8100 '       init "kb:2":goto Main_Screen1:
8110 'case 1:
8120 '       init "kb:0":goto Main_Screen1:
8130 'case 2:
8140 '       talk"プログラムを終了します":ui_msg"プログラムを終了します":cls 3:cls 4:pause 2.34*100:color rgb(255,255,255):end
8150 'end select
8160 'endif
8170 '1:keybord_flag=1 きーボード表示
8180 'if val(a$) = 1 then init"kb:2":keyboard_flag=1:goto Main_Screen:
8190 '0:keybord_lag=0:キーボード非表示
8200 'if val(a$) = 2 then init"kb:0":keyboard_flag=0:goto Main_Screen:
8210 'keyNo=3 プログラム終了
8220 'if val(a$) = 3 then end
8230 'if val(a$) > 3 or val(a$)  = 0 then goto Select_keybord:
8240 'メイン画面 Top画面1
8250 Main_Screen1:
8260 cls 3:font 48:color rgb(255,255,255)
8270 talk "メイン画面です。番号を選んでください"
8280 'Text ,Grapgic clear:cls 3
8290 'グラフィック領域　ここから
8300 line (0,0)-(680,60),rgb(0,0,255),bf
8310 pen 5:line (0,0)-(677,57),rgb(127,255,212),b
8320 line (0,60)-(680,560),rgb(127,255,212),bf
8330 pen 5:line (0,57)-(677,557),rgb(0,0,255),b
8340 line (0,560)-(680,740),rgb(0,255,0),bf
8350 'グラフィック領域 ここまで
8360 pen 5:line (0,557)-(677,737),rgb(0,0,255),b
8370 Font 48
8380 '************************************************
8390 'Sprite                                         *
8400 '************************************************
8410 sp_on 0,1:sp_on 1,0:sp_on 2,0
8420 sp_put 0,(10,100),0,0
8430 '************************************************
8440 No=0:init"kb:4":y=0:key$="":bg=0
8450 print "◎姓名判断　メイン画面" + chr$(13)
8460 '************************************************
8470 '文字色:黒                                          *
8480 '************************************************
8490 color rgb(255,0,255)
8500 print " :1.姓名判断" + chr$(13)
8510 print " :2.姓名判断の設定" + chr$(13)
8520 print " :3.個人データーリスト" + chr$(13)
8530 print " :4.ヘルプ" + chr$(13)
8540 print " :5.プログラムの終了" + chr$(13)
8550 'x=touch(4)
8560 'print"7.プログラム終了"+chr$(13)
8570 '*************************************************
8580 '文字:黒                                            *
8590 '*************************************************
8600 color rgb(0,0,0)
8610 locate 0,12
8620 print "1.姓名判断を選択" + chr$(13)
8630 Main_Screen2:
8640 y=0:key$="":bg=0
8650 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8660 y=stick(1)
8670 key$=inkey$
8680 bg=strig(1)
8690 pause 2.55*100
8700 wend
8710 '**************************************************
8720 '1.下のキー  ここから
8730 '**************************************************
8740 if (y = 1 or key$ = chr$(31)) then
8750 select case No
8760 case 0:
8770 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
8780 case 1:
8790 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
8800 case 2:
8810 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
8820 case 3:
8830 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8840 case 4:
8850 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
8860 end select
8870 endif
8880 '***************************************************
8890 '1. 下のキー　ここまで
8900 '***************************************************
8910 '***************************************************
8920 '2.上のキー ここから
8930 '***************************************************
8940 if (key$=chr$(30) or y=-1) then
8950 select case No
8960 case 0:
8970 No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8980 case 1:
8990 No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
9000 case 2:
9010 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9020 case 3:
9030 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9040 case 4:
9050 No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9060 end select
9070 endif
9080 '***************************************************
9090 '3.決定ボタン ここから
9100 '***************************************************
9110 if (bg=2 or key$=chr$(13)) then
9120 select case No
9130 case 0:
9140 sp_on 0,0:goto seimeihandan_top:
9150 case 1:
9160 sp_on 1,0:goto seimeihandan_setting:
9170 case 2:
9180 sp_on 2,0:goto Parsonal_data_top:
9190 case 3:
9200 sp_on 3,0: goto help:
9210 case 4:
9220 sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9230 end select
9240 endif
9250 '***************************************************
9260 '3.決定ボタン ここまで
9270 '***************************************************
9280 'No$=input$(1)
9290 'if val(No$) = 1  then goto seimeihandan_top:
9300 'if val(No$) = 2 then goto seimeihandan_setting:
9310 'if val(No$) = 3 then goto Parsonal_data_top:
9320 'if val(No$) = 4 then goto help:
9330 'if val(No$) = 5  then talk"終了します":cls 3:end
9340 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9350 'if No = "" then goto 7570
9360 '1.姓名判断トップ画面
9370 seimeihandan_top:
9380 cls:
9390 No=0:y=0:key$="":bg=0:talk""
9400 'タイトル文字:白
9410 font 48:color rgb(255,255,255),,rgb(176,196,222)
9420 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9430 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9440 sp_put 0,(10,100),0,0
9450 'グラフィック 描画領域　ここから
9460 'Main_Screen:
9470 cls 3
9480 '1.Title:青
9490 'Line 1
9500 line (0,0)-(870,60),rgb(0,0,255),bf
9510 pen 5:line(0,0)-(867,57),rgb(127,255,212),b
9520 'Line 2
9530 line (0,60)-(870,450),rgb(127,255,212),bf
9540 PEN 5:line(0,57)-(867,447),rgb(0,0,255),b
9550 'Line 3
9560 line (0,450)-(870,600),rgb(0,255,0),bf
9570 pen 5:line (0,447)-(867,597),rgb(0,0,255),b
9580 'グラフィック 描画領域 ここまで
9590 color rgb(255,255,255)
9600 print"◎姓名判断の種類トップメニュー"+chr$(13)
9610 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9620 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9630 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9640 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9650 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9660 seimeihandan_top2:
9670 y=0:key$="":bg=0
9680 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9690 key$=inkey$
9700 y=stick(1)
9710 bg=strig(1)
9720 pause 2.55*100
9730 wend
9740 '*************************************************
9750 '下のキー  ここから
9760 '*************************************************
9770 if (key$=chr$(31) or y=1) then
9780 select case No
9790 case 0:
9800 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9810 case 1:
9820 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9830 case 2:
9840 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9850 case 3:
9860 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9870 end select
9880 endif
9890 '*************************************************
9900 '下のキー　ここまで
9910 '*************************************************
9920 if (key$=chr$(30) or y=-1) then
9930 select case No
9940 case 0:
9950 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9960 case 1:
9970 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9980 case 2:
9990 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
10000 case 3:
10010 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10020 end select
10030 endif
10040 '*************************************************
10050 '決定ボタン　ここから
10060 '*************************************************
10070 if (bg=2 or key$=chr$(13)) then
10080 select case No
10090 case 0:
10100 sp_on 0,0:goto Reiden_Top_Input_Sextype:
10110 case 1:
10120 sp_on 1,0:goto Anzai_Top:
10130 case 2:
10140 sp_on 2,0:goto Kyusei_Top:
10150 case 3:
10160 sp_on 3,0:goto Main_Screen1:
10170 end select
10180 endif
10190 '*************************************************
10200 '決定ボタン　ここまで
10210 '*************************************************
10220 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10230 'if val(selectNo$)=2 then goto Anzai_Top:
10240 'if val(selectNo$)=3 then goto Kyusei_Top:
10250 'if val(selectNo$)=4 then goto Main_Screen1:
10260 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10270 '１．姓名判断(九星姓名判断トップ)
10280 'グラフィック領域　ここから
10290 Kyusei_Top:
10300 cls 3:No=0:y=0:bg=0:key$="":talk""
10310 sp_on 0,1:sp_put 0,(10,100),0,0
10320 line (0,0)-(760,60),rgb(0,0,250),bf
10330 pen 5:line (0,0)-(757,57),rgb(127,255,212),b
10340 line (0,60)-(760,460),rgb(127,255,212),bf
10350 pen 5:line(0,57)-(757,457),rgb(0,0,255),b
10360 line (0,460)-(760,680),rgb(0,255,0),bf
10370 pen 5:line(0,457)-(757,677),rgb(0,0,255),b
10380 'グラフィック領域　ここまで
10390 font 48:color rgb(255,255,255),,rgb(176,196,222)
10400 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10410 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10420 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10430 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10440 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10450 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10460 locate 0,10:color RGB(0,0,0)
10470 print "1.人名の吉凶を見るを選択"
10480 Kyusei_Top2:
10490 bg=0:key$="":y=0
10500 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10510 key$=inkey$
10520 y=stick(1)
10530 bg=strig(1)
10540 pause 2.50*100
10550 wend
10560 '****************************************************
10570 '下のキー　ここから
10580 '*****************************************************
10590 if (y=1 or key$=chr$(30)) then
10600 select case No
10610 case 0:
10620 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10630 case 1:
10640 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10650 case 2:
10660 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10670 case 3:
10680 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10690 end select
10700 endif
10710 '*****************************************************
10720 '下のキー　ここまで
10730 '*****************************************************
10740 '*****************************************************
10750 '上のキー　ここから
10760 '*****************************************************
10770 if (y=-1 or key$=chr$(31)) then
10780 select case No
10790 case 0:
10800 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10810 case 1:
10820 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10830 case 2:
10840 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10850 case 3:
10860 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10870 end select
10880 endif
10890 '*****************************************************
10900 '上のキー　ここまで
10910 '*****************************************************
10920 '*****************************************************
10930 '決定ボタン　ここから
10940 '*****************************************************
10950 if (key$=chr$(13) or bg=2) then
10960 select case No
10970 case 0:
10980 sp_on 0,0:goto Parson_name_kikkyo:
10990 case 1:
11000 sp_on 1,0:goto nick_name_check:
11010 case 2:
11020 sp_on 2,0:goto name_inyo_check:
11030 case 3:
11040 sp_on 3,0:goto seimeihandan_top:
11050 end select
11060 endif
11070 '*****************************************************
11080 '決定ボタン　ここまで
11090 '*****************************************************
11100 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
11110 'color rgb(0,0,0):Input "番号:",selectNo
11120 'selectNo=Input$(1)
11130 'if selectNo = 1 then goto Parson_name_kikkyo
11140 'if selectNo = 2 then goto nick_name_check:
11150 'if selectNo = 3 then goto name_inyo_check:
11160 'if selectNo = 4  then goto seimeihandan_top:
11170 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11180 '2.姓名判断 安斎流姓名判断　トップ画面
11190 '2-1名前の姓の部分を入力
11200 'グラフィック領域　ここから
11210 Anzai_Top_Screen:
11220 cls 3:LINE (0,0)-(820,60),rgb(0,0,255),bf
11230 pen 5:line (0,0)-(816,57),rgb(127,255,212),b
11240 line (0,60)-(820,260),rgb(127,255,212),bf
11250 pen 5:line(0,57)-(817,257),rgb(0,0,255),b
11260 line (0,260)-(820,350),rgb(0,255,0),bf
11270 pen 5:line(0,257)-(817,347),rgb(0,0,255),b
11280 font 48:talk"":init"KB:2"
11290 'グラフィック領域 ここまで
11300 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11310 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11320 COLOR rgb(255,0,255)
11330 print"名前を2回に分けて入力してください"+chr$(13)
11340 print"名前の姓の部分を入れてください"+chr$(13)
11350 color rgb(0,0,0)
11360 input"名前の姓:",bufname$
11370 buff1=len(bufname$)
11380 '2-2名前の名の部分を入力
11390 'グラフィック描画領域　ここから
11400 cls 3:init"kb:2"
11410 line (0,0)-(820,60),rgb(0,0,255),bf
11420 pen 5:line(0,0)-(817,57),rgb(127,255,212),b
11430 line (0,60)-(820,200),rgb(127,255,212),bf
11440 pen 5:line(0,57)-(817,197),rgb(0,0,255),b
11450 line (0,200)-(820,260),rgb(0,255,0),bf
11460 pen 5:line(0,197)-(817,257),rgb(0,0,255),b
11470 'グラフィック描画領域 ここまで
11480 COLOR rgb(255,255,255)
11490 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11500 talk"つぎに、名前のめいの部分を入れてください"
11510 color rgb(255,0,255)
11520 print"名前の名の部分を入れてください"+chr$(13)
11530 color rgb(0,0,0)
11540 input"名前の名:",bufname2$
11550 buff2=len(bufname2$)
11560 bufff=buff1+buff2
11570 'goto 24600
11580 select case bufff
11590 '姓1文字,名1文字
11600 case 2:
11610 cls
11620 '天運:buf_tenunn
11630 buf_tenunn=char_count(bufname$)
11640 '地運:buf_chiunn
11650 buf_chiunn=char_count(bufname2$)
11660 '人運 = 天運 + 地運
11670 buf_jinunn=buf_tenunn + buf_chiunn
11680 '外運 = 天運 + 人運
11690 buf_gaiunn = buf_tenunn + buf_chiunn
11700 '総数=buf_gaiunn
11710 buf_total=buf_gaiunn
11720 goto Result_Anzai:
11730 '姓１，名:2
11740 case 3:
11750 cls:
11760 if buff1=1 and buff2=2 then
11770 '1.天運:buf_tenunn
11780 buf_tenunn=char_count(bufname$)
11790 '2文字目の文字
11800 bufer_name2$(0)=Mid$(bufname2$,1,1)
11810 '3文字目の文字
11820 bufer_name2$(1)=Mid$(bufname2$,2,1)
11830 '2.人運
11840 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11850 '3.地運:buf_chiunn
11860 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11870 '4外運:buf_gaiunn
11880 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11890 '5.総数:buf_total
11900 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11910 goto Result_Anzai:
11920 endif
11930 if buff1=2 and buff2=1 then
11940 bufer_name$(0)=Mid$(bufname$,1,1)
11950 bufer_name$(1)=Mid$(bufname$,2,1)
11960 bufer_name2$(0)=Mid$(bufname$,1,1)
11970 '1.天運
11980 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
11990 '2.人運
12000 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12010 '3.地運
12020 buf_chiunn=char_count(bufer_name2$(0))
12030 '4.外運
12040 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12050 '5.総数
12060 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12070 goto Result_Anzai:
12080 endif
12090 case 4:
12100 if buff1=2 and buff2=2 then
12110 bufer_name$(0)=Mid$(bufname$,1,1)
12120 bufer_name$(1)=Mid$(bufname$,2,1)
12130 bufer_name2$(0)=Mid$(bufname2$,1,1)
12140 bufer_name2$(1)=Mid$(bufname2$,2,1)
12150 '1.天運
12160 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12170 '2.人運
12180 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12190 '3.地運
12200 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12210 '4.外運
12220 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12230 '5.総数
12240 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12250 goto Result_Anzai:
12260 endif
12270 'パターン2 姓3文字 名1文字 total4文字
12280 if buff1=3 and buff2=1 then
12290 bufer_name$(0)=Mid$(bufname$,1,1)
12300 bufer_name$(1)=Mid$(bufname$,2,1)
12310 bufer_name$(2)=Mid$(bufname$,3,1)
12320 bufer_name2$(0)=Mid$(bufname2$,1,1)
12330 '1.天運
12340 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12350 '2.人運
12360 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12370 '3.地運
12380 buf_chiunn=char_count(bufer_name2$(0))
12390 '4.外運
12400 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12410 '5.総運
12420 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12430 goto Result_Anzai:
12440 endif
12450 'パターン３ 姓1,名３  合計４文字
12460 if buff1=1 and buff2=3 then
12470 bufer_name$(0)=Mid$(bufname$,1,1)
12480 bufer_name2$(0)=Mid$(bufname2$,1,1)
12490 bufer_name2$(1)=Mid$(bufname2$,2,1)
12500 bufer_name2$(2)=Mid$(bufname2$,3,1)
12510 '1.天運
12520 buf_tenunn = char_count(bufer_name$(0))
12530 '2.人運
12540 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12550 '3.地運
12560 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12570 '4.外運
12580 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12590 '5.総運
12600 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12610 goto Result_Anzai:
12620 endif
12630 case 5:
12640 '５文字の名前
12650 '1.  3文字姓 2字名
12660 if buff1=3 and buff2=2 then
12670 bufer_name$(0)=Mid$(bufname$,1,1)
12680 bufer_name$(1)=Mid$(bufname$,2,1)
12690 bufer_name$(2)=Mid$(bufname$,3,1)
12700 bufer_name2$(0)=Mid$(bufname2$,1,1)
12710 bufer_name2$(1)=Mid$(bufname2$,2,1)
12720 '1.天運
12730 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12740 '2.人運
12750 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12760 '3.地運
12770 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12780 '4.外運
12790 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12800 '5.総運
12810 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12820 goto Result_Anzai:
12830 endif
12840 if buff1=2 and buff2=3 then
12850 bufer_name$(0)=Mid$(bufname$,1,1)
12860 bufer_name$(1)=Mid$(bufname$,2,1)
12870 bufer_name2$(0)=Mid$(bufname2$,1,1)
12880 bufer_name2$(1)=Mid$(bufname2$,2,1)
12890 bufer_name2$(2)=Mid$(bufname2$,3,1)
12900 '1.天運
12910 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12920 '2.人運
12930 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12940 '3.地運
12950 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12960 '4.外運
12970 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12980 '5.総運
12990 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13000 goto Result_Anzai:
13010 endif
13020 if buff1=4 and buff2=1 then
13030 bufer_name$(0)=Mid$(bufname$,1,1)
13040 bufer_name$(1)=mid$(bufname$,2,1)
13050 bufer_name$(2)=mid$(bufname$,3,1)
13060 bufer_name$(3)=mid$(bufname$,4,1)
13070 bufer_name2$(0)=mid$(bufname2$,1,1)
13080 '1.天運
13090 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13100 '2.人運
13110 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13120 '3.地運
13130 buf_chiunn=char_count(bufer_name2$(0))
13140 '4.外運
13150 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13160 '5.総運
13170 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13180 goto Result_Anzai:
13190 endif
13200 case 6:
13210 '3字姓 3字名
13220 if buff1=3 and buff2=3 then
13230 bufer_name$(0)=Mid$(bufname$,1,1)
13240 bufer_name$(1)=Mid$(bufname$,2,1)
13250 bufer_name$(2)=Mid$(bufname$,3,1)
13260 bufer_name2$(0)=Mid$(bufname2$,1,1)
13270 bufer_name2$(1)=Mid$(bufname2$,2,1)
13280 bufer_name2$(2)=Mid$(bufname2$,3,1)
13290 '1.天運
13300 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13310 '2.人運
13320 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13330 '3.地運
13340 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13350 '4.外運
13360 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13370 '5.総運
13380 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13390 goto Result_Anzai:
13400 endif
13410 '4字姓 2字名
13420 if buff1=4 and buff2=2 then
13430 bufer_name$(0)=Mid$(bufname$,1,1)
13440 bufer_name$(1)=Mid$(bufname$,2,1)
13450 bufer_name$(2)=Mid$(bufname$,3,1)
13460 bufer_name$(3)=Mid$(bufname$,4,1)
13470 bufer_name2$(0)=Mid$(bufname2$,1,1)
13480 bufer_name2$(1)=Mid$(bufname2$,2,1)
13490 '1.天運
13500 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13510 '2.人運
13520 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13530 '3.地運
13540 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13550 '4.外運
13560 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13570 '5.総運
13580 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13590 goto Result_Anzai:
13600 endif
13610 '4字姓 3字名
13620 case 7:
13630 if buff1=4 and buff2=3 then
13640 bufer_name$(0)=Mid$(bufname$,1,1)
13650 bufer_name$(1)=Mid$(bufname$,2,1)
13660 bufer_name$(2)=Mid$(bufname$,3,1)
13670 bufer_name$(3)=Mid$(bufname$,4,1)
13680 bufer_name2$(0)=Mid$(bufname2$,1,1)
13690 bufer_name2$(1)=Mid$(bufname2$,2,1)
13700 bufer_name2$(2)=Mid$(bufname2$,3,1)
13710 '1.天運
13720 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13730 '2.人運
13740 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13750 ' 3.地運
13760 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13770 '4.外運
13780 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13790 '5.総運
13800 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13810 goto Result_Anzai:
13820 endif
13830 case else:
13840 end select
13850 '2.設定
13860 seimeihandan_setting:
13870 font 46:color rgb(0,0,0),,rgb(176,196,222)
13880 No=0:y=0:key$="":bg=0:talk""
13890 sp_on 0,1:sp_put 0,(10,100),0,0
13900 talk"設定画面です。番号を選んでエンターキーを押してください"
13910 'グラフィック領域　ここから
13920 cls 3:
13930 line (0,0)-(750,60),rgb(0,0,255),bf
13940 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
13950 line (0,60)-(750,560),rgb(127,255,212),bf
13960 pen 5:line (0,57)-(747,557),rgb(0,0,255),b
13970 line (0,560)-(750,750),rgb(0,255,0),bf
13980 pen 5:line(0,557)-(747,747),rgb(0,0,255),b
13990 'グラフィック領域 ここまで
14000 '1行目　文字色　 白
14010 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14020 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14030 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14040 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14050 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14060 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14070 COLOR rgb(0,0,0):locate 0,12:
14080 print"1.登録文字の確認を選択"+chr$(13)
14090 seimeihandan_setting2:
14100 y=0:key$="":bg=0
14110 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14120 key$=inkey$
14130 y=stick(1)
14140 bg=strig(1)
14150 pause 2.50*100
14160 wend
14170 '****************************************************
14180 '1.下のカーソル　ここから
14190 '****************************************************
14200 if (key$=chr$(31) or y=1) then
14210 select case No
14220 case 0:
14230 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14240 case 1:
14250 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14260 case 2:
14270 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14280 case 3:
14290 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14300 case 4:
14310 No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14320 end select
14330 endif
14340 '*****************************************************
14350 '1.下のカーソル　ここまで
14360 '*****************************************************
14370 '*****************************************************
14380 '2.上のカーソル　ここから
14390 '*****************************************************
14400 if (key$=chr$(30) or y=-1) then
14410 select case No
14420 case 0:
14430 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14440 case 1:
14450 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14460 case 2:
14470 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14480 case 3:
14490 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14500 case 4:
14510 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14520 end select
14530 endif
14540 '******************************************************
14550 '2.上のカーソル　ここまで
14560 '******************************************************
14570 '******************************************************
14580 '3.決定ボタン　ここから
14590 '******************************************************
14600 if (key$=chr$(13) or bg=2) then
14610 select case No
14620 case 0:
14630 sp_on 0,0:goto Entry_moji_Top:
14640 case 1:
14650 sp_on 1,0:goto Entry_moji_check:
14660 case 2:
14670 sp_on 2,0:goto Moji_Kikkyo_Top:
14680 case 3:
14690 sp_on 3,0:goto Main_Screen1:
14700 case 4:
14710 sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14720 end select
14730 endif
14740 '******************************************************
14750 '3.決定ボタン　ここまで
14760 '******************************************************
14770 'Input"番号:",selectNo
14780 'if selectNo=1 then goto Entry_moji_Top:
14790 'if selectNo=2 then goto Entry_moji_check:
14800 'if selectNo=3 then goto Moji_Kikkyo_Top:
14810 'if selectNo=4 then goto Main_Screen1:
14820 'if selectNo=5 then talk"終了します":cls 3:end
14830 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
14840 '3 番号で吉凶を見る 入力
14850 Moji_Kikkyo_Top:
14860 font 46:color rgb(0,0,0),,rgb(176,196,222)
14870 init "kb:2"
14880 'グラフィック描画領域　ここから
14890 cls 3:talk""
14900 line (0,0)-(650,60),rgb(0,0,255),bf
14910 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
14920 line (0,60)-(650,255),rgb(127,255,212),bf
14930 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
14940 line (0,255)-(650,350),rgb(0,255,0),bf
14950 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
14960 'グラフィック描画領域 ここまで
14970 color rgb(255,255,255)
14980 print"画数での吉凶判定"+chr$(13)
14990 color rgb(255,0,255)
15000 print"画数を入れてください"+chr$(13)
15010 print"(Max:81文字)"+chr$(13)
15020 color rgb(0,0,0)
15030 Input"文字の画数:",Number
15040 if Number > 81 then goto Moji_Kikkyo_Top:
15050 if Number <=81 then goto Moji_Kikkyo:
15060 '3.番号で吉凶を見る 結果表示
15070 'グラフィック描画領域　ここから
15080 Moji_Kikkyo:
15090 cls 3:init "kb:4":key$="":bg=0
15100 line (0,0)-(700,60),rgb(0,0,255),bf
15110 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15120 line (0,60)-(700,260),rgb(127,255,212),bf
15130 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15140 line (0,260)-(700,350),rgb(0,255,0),bf
15150 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15160 'グラフィック描画領域　ここまで
15170 color rgb(255,255,255)
15180 print "画数で吉凶を求める"+chr$(13)
15190 color rgb(255,0,255)
15200 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15210 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15220 'endif
15230 'color rgb(0,0,0)
15240 'print"エンターキーを押してください"
15250 'key$=Input$(1)
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
15380 line (0,0) - (650,60),rgb(0,0,255),bf
15390 sp_on 0,1:sp_put 0,(10,100),0,0
15400 pen 5:line(0,0) - (647,57),rgb(127,255,212),b
15410 line (0,60) - (650,570),rgb(127,255,212),bf
15420 pen 5:line(0,57) - (647,567),rgb(0,0,255),b
15430 line (0,570) - (650,650),rgb(0,255,0),bf
15440 pen 5:line(0,567) - (647,647),rgb(0,0,255),b
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
15550 'color rgb(0,0,0):Input"番号:",selectNo
15560 help2:
15570 y=0:key$="":bg=0
15580 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15590 key$=inkey$
15600 y=stick(1)
15610 bg=strig(1)
15620 pause 2.50*100
15630 wend
15640 if (y=1 or key$=chr$(30)) then
15650 select case No
15660 case 0:
15670 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15680 case 1:
15690 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15700 case 2:
15710 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15720 case 3:
15730 No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15740 case 4:
15750 No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15760 end select
15770 endif
15780 if (y=-1 or key$=chr$(31)) then
15790 select case No
15800 case 0:
15810 No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15820 case 1:
15830 No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15840 case 2:
15850 No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15860 case 3:
15870 No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15880 case 4:
15890 No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15900 end select
15910 endif
15920 if (key$=chr$(13) or bg=2) then
15930 select case No
15940 case 0:
15950 sp_on 0,0:goto Version_info:
15960 case 1:
15970 sp_on 1,0:goto Document_info:
15980 case 2:
15990 sp_on 2,0:goto Config_Setting:
16000 case 4:
16010 sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16020 case 3:
16030 sp_on 3,0:goto Main_Screen1:
16040 end select
16050 endif
16060 'if selectNo = 1 then goto Version_info:
16070 'if selectNo = 2 then goto Document_info:
16080 'if selectNo = 3 then goto Config_Setting:
16090 'プログラムの終了
16100 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
16110 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
16120 '前の画面に戻る
16130 'if selectNo=5 then goto Main_Screen1:
16140 'if selectNo > 4 or selectNo = 0 then goto help:
16150 'Menu1　画面
16160 talk"調べたい名前のみよじをいれてください"
16170 'グラフィック描画領域　ここから
16180 Parson_name_kikkyo:
16190 cls 3:init "KB:2"
16200 line (0,0)-(1050,60),rgb(0,0,255),bf
16210 pen 5:line(0,0)-(1047,57),rgb(127,255,212),b
16220 line (0,60)-(1050,180),rgb(127,255,212),bf
16230 pen 5:line(0,57)-(1047,177),rgb(0,0,255),b
16240 line (0,180)-(1050,250),rgb(0,255,0),bf
16250 pen 5:line(0,177)-(1047,247),rgb(0,0,255),b
16260 'グラフィック描画領域　ここまで
16270 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16280 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16290 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16300 cls
16310 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16320 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16330 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16340 goto complate_Kyusei:
16350 'メニュー6　バージョン表示
16360 'グラフィック　描画　領域　 ここから
16370 Version_info:
16380 cls 3:bg=0:talk ""
16390 line (0,0)-(1000,60),rgb(0,0,255),bf
16400 pen 5:line (0,0)-(997,57),rgb(127,255,212),b
16410 line (0,60)-(1000,665),rgb(127,255,212),bf
16420 pen 5:line(0,57)-(997,662),rgb(0,0,255),b
16430 line (0,665)-(1000,750),rgb(0,255,0),bf
16440 pen 5:line(0,662)-(997,747),rgb(0,0,255),b
16450 'グラフィック　描画 領域　 ここまで
16460 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16470 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16480 color rgb(255,0,255):PRINT"Ver:235.2024.10.27" + chr$(13)
16490 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16500 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16510 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16520 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16530 'ここを書き換える
16540 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.35です"
16550 color rgb(0,0,0):print"エンターキーを押してください"
16560 Version_info2:
16570 bg=0
16580 while (bg<>2)
16590 bg=strig(1)
16600 pause 2.50*100
16610 wend
16620 if bg = 2  then beep:goto Main_Screen1:
16630 complate_Kyusei:
16640 '文字数を求める変数
16650 buf_char_size=len(name$)
16660 buf_char_size2=len(name2$)
16670 '入力した文字を代入する変数
16680 '入力した文字を配列に代入する処理
16690 '姓名判断データー文字比較
16700 '画数を求める関数
16710 func char_count(buf_count$)
16720 count=0:buffer=0
16730 '1画の文字 23文字
16740 for j=0 to ((Moji_1)-1)
16750 if buf_count$=buf_char_hiragana1$(j) then
16760 count =1:
16770 endif
16780 next j
16790 '2画の文字
16800 for j=0 to ((Moji_2)-1)
16810 if buf_count$=buf_char_hiragana2$(j)  then
16820 count = 2:
16830 endif
16840 next j
16850 for j=0 to ((Moji_3)-1)
16860 if buf_count$=buf_char_hiragana3$(j) then
16870 count =3:
16880 endif
16890 next j
16900 for j=0 to ((Moji_4)-1)
16910 if buf_count$=buf_char_hiragana4$(j) then
16920 count = 4:
16930 endif
16940 next j
16950 for j=0 to ((Moji_5)-1)
16960 if buf_count$=buf_char_hiragana5$(j) then
16970 count = 5:
16980 endif
16990 next j
17000 for j=0 to ((Moji_6)-1)
17010 if buf_count$=buf_char_hiragana6$(j) then
17020 count= 6
17030 endif
17040 next j
17050 for  j=0 to ((Moji_7)-1)
17060 if buf_count$=buf_char_hiragana7$(j) then
17070 count=  7
17080 endif
17090 next j
17100 for j=0 to ((Moji_8)-1)
17110 if buf_count$=buf_char_hiragana8$(j) then
17120 count= 8
17130 endif
17140 next j
17150 for j=0 to ((Moji_9)-1)
17160 if buf_count$=buf_char_hiragana9$(j) then
17170 count=9
17180 endif
17190 next j
17200 for j=0 to ((Moji_10)-1)
17210 if buf_count$=buf_char_hiragana10$(j) then
17220 count=10
17230 endif
17240 next j
17250 for j=0 to ((Moji_11)-1)
17260 if buf_count$=buf_char_hiragana11$(j) then
17270 count=11
17280 endif
17290 next j
17300 for j=0 to  ((Moji_12)-1)
17310 if buf_count$=buf_char_hiragana12$(j) then
17320 count=12
17330 endif
17340 next j
17350 for j=0 to ((Moji_13)-1)
17360 if buf_count$=buf_char_hiragana13$(j) then
17370 count=13
17380 endif
17390 next j
17400 for j=0 to ((Moji_14)-1)
17410 if buf_count$=buf_char_hiragana14$(j) then
17420 count=14
17430 endif
17440 next j
17450 for j=0 to ((Moji_15)-1)
17460 if buf_count$=buf_char_hiragana15$(j) then
17470 count=15
17480 endif
17490 next j
17500 for j=0 to ((Moji_16)-1)
17510 if buf_count$=buf_char_hiragana16$(j) then
17520 count=16
17530 endif
17540 next j
17550 for j=0 to ((Moji_17)-1)
17560 if buf_count$=buf_char_hiragana17$(j) then
17570 count=17
17580 endif
17590 next j
17600 for j=0 to ((Moji_18)-1)
17610 if buf_count$=buf_char_hiragana18$(j) then
17620 count=18
17630 endif
17640 next j
17650 for j=0 to ((Moji_19)-1)
17660 if buf_count$=buf_char_hiragana19$(j) then
17670 count=19
17680 endif
17690 next j
17700 for j=0 to ((Moji_20)-1)
17710 if buf_count$=buf_char_hiragana20$(j) then
17720 count=20
17730 endif
17740 next i
17750 for j=0 to ((Moji_21)-1)
17760 if buf_count$=buf_char_hiragana21$(j) then
17770 count=21
17780 endif
17790 next j
17800 for j=0 to ((Moji_22)-1)
17810 if buf_count$=buf_char_hiragana22$(j) then
17820 count=22
17830 endif
17840 next j
17850 for j=0 to ((Moji_23)-1)
17860 if buf_count$=buf_char_hiragana23$(j) then
17870 count=23
17880 endif
17890 next j
17900 for j=0 to ((Moji_24)-1)
17910 if buf_count$=buf_char_hiragana24$(j) then
17920 count=24
17930 endif
17940 buffer = count
17950 next j
17960 endfunc buffer
17970 func show_sex_type$(sex$)
17980 buf_number=val(Mid$(sex$,4,1))
17990 if buf_number = 1 then
18000 buf_show_sex_type$="性別:女性"
18010 else
18020 if buf_number=2 then
18030 buf_show_sex_type$="性別:男性"
18040 endif
18050 endif
18060 endfunc buf_show_sex_type$
18070 '合計を求める関数
18080 func totalcounts(buffers$)
18090 buffers=0:
18100 for i=0 to len(buffers$)-1
18110 buffers=buffers+char_count(buffers$)
18120 next i
18130 endfunc buffers
18140 buf_count2=0:buf_count3=0
18150 'dim buf_Input_data$(len(name$))
18160 '1.苗字の文字数
18170 for n=0 to (buf_char_size-1)
18180 buf_Input_data$(n)=mid$(name$,n+1,1)
18190 next n
18200 for i=0 to (buf_char_size-1)
18210 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18220 next i
18230 '2.名の文字数
18240 for n2=0 to (buf_char_size2-1)
18250 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18260 next n2
18270 for i2=0 to (buf_char_size2-1)
18280 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18290 next i2
18300 '総数を出す
18310 select case (buf_char_size + buf_char_size2)
18320 case 6:
18330 if ((buf_char_size=4) and (buf_char_size2=2)) then
18340 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18350 endif
18360 if ((buf_char_size=3) and (buf_char_size2=3)) then
18370 if buf_Input_data$(1)="々" then
18380 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18390 else
18400 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18410 endif
18420 endif
18430 case 5:
18440 if ((buf_char_size=4) and (buf_char_size2=1)) then
18450 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18460 endif
18470 if ((buf_char_size=2) and (buf_char_size2=3)) then
18480 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18490 endif
18500 if ((buf_char_size=3) and (buf_char_size2=2)) then
18510 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18520 endif
18530 case 4:
18540 if ((buf_char_size=1) and (buf_char_size2=3)) then
18550 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18560 endif
18570 if ((buf_char_size=2) and (buf_char_size2=2)) then
18580 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18590 endif
18600 if ((buf_char_size=3) and (buf_char_size2=1)) then
18610 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18620 endif
18630 case 3:
18640 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18650 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18660 endif
18670 if ((buf_char_size=2) and (buf_char_size2=1)) then
18680 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18690 endif
18700 case 2:
18710 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18720 case else:
18730 end select
18740 '文字の総数をだす
18750 total_name$ = name$ + name2$
18760 '1.姓星を求める
18770 select case buf_char_size
18780 '苗字1文字のとき
18790 case 1:
18800 buf_seisei = char_count(buf_Input_data$(0)) + 1
18810 '苗字2文字の時
18820 case 2:
18830 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18840 '苗字3文字のとき
18850 case 3:
18860 if (buf_Input_data$(1)="々")  then
18870 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18880 else
18890 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18900 endif
18910 '苗字4文字のとき
18920 case 4:
18930 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18940 case else:
18950 end select
18960 '2.主星をだす
18970 '2.主星
18980 select case (buf_char_size + buf_char_size2)
18990 '姓名5文字のとき
19000 case 6:
19010 if ((buf_char_size=4) and (buf_char_size2=2)) then
19020 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19030 endif
19040 if ((buf_char_size=3) and (buf_char_size2=3)) then
19050 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19060 endif
19070 case 5:
19080 if ((buf_char_size=4) and (buf_char_size2=1)) then
19090 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19100 endif
19110 if ((buf_char_size=2) and (buf_char_size2=3)) then
19120 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19130 endif
19140 if ((buf_char_size=3) and (buf_char_size2=2)) then
19150 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19160 endif
19170 '姓名4文字のとき
19180 case 4:
19190 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19200 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19210 endif
19220 if ((buf_char_size=1) and (buf_char_size2=3)) then
19230 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19240 endif
19250 if ((buf_char_size=3) and (buf_char_size2=1)) then
19260 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19270 endif
19280 '姓名3文字のとき
19290 case 3:
19300 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19310 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19320 else
19330 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19340 endif
19350 case 2:
19360 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19370 case else:
19380 end select
19390 '3.名星を求める
19400 select case (buf_char_size + buf_char_size2)
19410 case 6:
19420 if ((buf_char_size=3) and (buf_char_size2=3)) then
19430 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19440 endif
19450 if ((buf_char_size=4) and (buf_char_size2=2)) then
19460 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19470 endif
19480 case 5:
19490 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19500 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19510 endif
19520 if ((buf_char_size=3) and (buf_char_size2=2)) then
19530 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19540 endif
19550 if ((buf_char_size=2) and (buf_char_size2=3))  then
19560 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19570 endif
19580 case 4:
19590 if ((buf_char_size=2) and (buf_char_size2=2)) then
19600 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19610 endif
19620 if ((buf_char_size=1) and (buf_char_size2=3)) then
19630 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19640 endif
19650 if ((buf_char_size=3) and (buf_char_size2=1)) then
19660 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19670 endif
19680 case 3:
19690 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19700 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19710 endif
19720 if ((buf_char_size=2) and (buf_char_size2=1)) then
19730 buf_meisei=char_count(buf_Input_data2$(0))+1
19740 endif
19750 case 2:
19760 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19770 case else:
19780 end select
19790 '4.外星を求める
19800 select case (buf_char_size + buf_char_size2)
19810 case 6:
19820 if buf_Input_data$(1)="々"  then
19830 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19840 else
19850 if ((buf_char_size=4) and (buf_char_size2=2)) then
19860 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19870 else
19880 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19890 endif
19900 endif
19910 case 5:
19920 if ((buf_char_size=4) and (buf_char_size2=1)) then
19930 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19940 endif
19950 if ((buf_char_size=3) and (buf_char_size2=2)) then
19960 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19970 endif
19980 if ((buf_char_size=2) and (buf_char_size2=3)) then
19990 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20000 endif
20010 case 4:
20020 if ((buf_char_size=2) and (buf_char_size2=2)) then
20030 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20040 endif
20050 if ((buf_char_size=1) and (buf_char_size2=3)) then
20060 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20070 endif
20080 if ((buf_char_size=3) and (buf_char_size2=1)) then
20090 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20100 endif
20110 case 3:
20120 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20130 buf_gaisei=1+char_count(buf_Input_data2$(1))
20140 endif
20150 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20160 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20170 endif
20180 case 2:
20190 buf_gaisei = 2
20200 case else:
20210 end select
20220 '診断結果表示
20230 '1.姓星を出す
20240 'グラフィック描画領域　ここから
20250 Result_Kyusei_Kikkyo:
20260 cls 3:font 32:bg=0:key$="":init "kb:4"
20270 '縦の画面
20280 '1行目
20290 line (0,0)-(1500,60),rgb(0,0,255),bf
20300 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20310 '2行目
20320 line (0,60)-(1500,425),rgb(127,255,212),bf
20330 pen 5:line(0,57)-(1497,422),rgb(0,0,255),b
20340 '3行目
20350 line (0,485)-(1500,425),rgb(0,255,0),bf
20360 pen 5:line(0,482)-(1497,422),rgb(0,0,255),b
20370 '横の画面　吉凶のランク表
20380 'グラフィック描画領域　ここまで
20390 talk"診断結果です":font 32
20400 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20410 color Rgb(255,0,255)
20420 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20430 '2.主星を出す
20440 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20450 '3.名星を求める
20460 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20470 '4.外星を求める
20480 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20490 '5.総数を出す
20500 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20510 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20520 color rgb(0,0,0)
20530 print"エンターキーを押してください"
20540 while (key$ <> chr$(13) and bg <> 2)
20550 key$=inkey$
20560 bg=strig(1)
20570 pause 2.50*100
20580 wend
20590 'key$=Input$(1)
20600 if (key$ = chr$(13) or bg=2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20610 '2.主星を出す
20620 'メニュー3 登録文字の確認 ここから
20630 'グラフィック領域　ここから
20640 'タイトル青 文字:白
20650 Entry_moji_Top:
20660 talk ""
20670 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
20680 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
20690 line (0,62)-(1050,155),rgb(0,255,255),bf
20700 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
20710 line (0,155)-(1050,260),rgb(0,255,0),bf
20720 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
20730 'グラフィック領域　ここまで
20740 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20750 '文字:白
20760 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20770 '文字:アクア
20780 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20790 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20800 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20810 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20820 '1画の文字
20830 for i=0 to ((Moji_1)-1)
20840 if (name$=buf_char_hiragana1$(i)) then
20850 buffer_count=1:goto Moji_count_check:
20860 endif
20870 next i
20880 '2画の文字
20890 for i=0 to ((Moji_2)-1)
20900 if (name$=buf_char_hiragana2$(i)) then
20910 buffer_count=2:goto Moji_count_check:
20920 endif
20930 next i
20940 '3画の文字
20950 for i=0 to ((Moji_3)-1)
20960 if (name$=buf_char_hiragana3$(i)) then
20970 buffer_count=3:goto Moji_count_check:
20980 endif
20990 next i
21000 '4画の文字
21010 for i=0 to ((Moji_4)-1)
21020 if (name$=buf_char_hiragana4$(i)) then
21030 buffer_count=4:goto Moji_count_check:
21040 endif
21050 next i
21060 '5画の文字
21070 for i=0 to ((Moji_5)-1)
21080 if (name$=buf_char_hiragana5$(i)) then
21090 buffer_count=5:goto Moji_count_check:
21100 endif
21110 next i
21120 '6画の文字
21130 for i=0 to ((Moji_6)-1)
21140 if (name$=buf_char_hiragana6$(i)) then
21150 buffer_count=6:goto Moji_count_check:
21160 endif
21170 next i
21180 '7画の文字
21190 for i=0 to ((Moji_7)-1)
21200 if (name$=buf_char_hiragana7$(i)) then
21210 buffer_count=7:goto Moji_count_check:
21220 endif
21230 next i
21240 '8画の文字 120 文字
21250 for i=0 to ((Moji_8)-1)
21260 if (name$=buf_char_hiragana8$(i)) then
21270 buffer_count=8:goto Moji_count_check:
21280 endif
21290 next i
21300 '9画の文字  103文字
21310 for i=0 to ((Moji_9)-1)
21320 if (name$=buf_char_hiragana9$(i)) then
21330 buffer_count=9:goto Moji_count_check:
21340 endif
21350 next i
21360 '10画の文字 98文字
21370 for i=0 to ((Moji_10)-1)
21380 if (name$=buf_char_hiragana10$(i)) then
21390 buffer_count=10:goto Moji_count_check:
21400 endif
21410 next i
21420 '11画の文字 98文字
21430 for i=0 to ((Moji_11)-1)
21440 if (name$=buf_char_hiragana11$(i)) then
21450 buffer_count=11:goto Moji_count_check:
21460 endif
21470 next i
21480 '12画の文字
21490 for i=0 to ((Moji_12)-1)
21500 if (name$=buf_char_hiragana12$(i)) then
21510 buffer_count=12:goto Moji_count_check:
21520 endif
21530 next i
21540 '13画の文字
21550 for i=0 to ((Moji_13)-1)
21560 if (name$=buf_char_hiragana13$(i)) then
21570 buffer_count=13:goto Moji_count_check:
21580 endif
21590 next i
21600 '14画の文字
21610 for i=0 to ((Moji_14)-1)
21620 if (name$=buf_char_hiragana14$(i)) then
21630 buffer_count=14:goto Moji_count_check:
21640 endif
21650 next i
21660 '15画の文字
21670 for i=0 to ((Moji_15)-1)
21680 if (name$=buf_char_hiragana15$(i)) then
21690 buffer_count=15:goto Moji_count_check:
21700 endif
21710 next i
21720 '16画の文字
21730 for i=0 to ((Moji_16)-1)
21740 if (name$=buf_char_hiragana16$(i)) then
21750 buffer_count=16:goto Moji_count_check:
21760 endif
21770 next i
21780 '17画の文字
21790 for i=0 to ((Moji_17)-1)
21800 if (name$=buf_char_hiragana17$(i)) then
21810 buffer_count=17:goto Moji_count_check:
21820 endif
21830 next i
21840 '18画の文字 25
21850 for i=0 to ((Moji_18)-1)
21860 if (name$=buf_char_hiragana18$(i)) then
21870 buffer_count=18:goto Moji_count_check:
21880 endif
21890 next i
21900 '19画の文字 17
21910 for i=0 to ((Moji_19)-1)
21920 if (name$=buf_char_hiragana19$(i)) then
21930 buffer_count=19:goto Moji_count_check:
21940 endif
21950 next i
21960 '20画の文字 13
21970 for i=0 to ((Moji_20)-1)
21980 if (name$=buf_char_hiragana20$(i)) then
21990 buffer_count=20:goto Moji_count_check:
22000 endif
22010 next i
22020 '21画の文字 6
22030 for i=0 to ((Moji_21)-1)
22040 if (name$=buf_char_hiragana21$(i)) then
22050 buffer_count=21:goto Moji_count_check:
22060 endif
22070 next i
22080 '22画の文字 4
22090 for i=0 to ((Moji_22)-1)
22100 if (name$=buf_char_hiragana22$(i)) then
22110 buffer_count=22:goto Moji_count_check:
22120 endif
22130 next i
22140 '23画の文字 3
22150 for i=0 to ((Moji_23)-1)
22160 if (name$=buf_char_hiragana23$(i)) then
22170 buffer_count=23:goto Moji_count_check:
22180 endif
22190 next i
22200 '24画の文字
22210 for i=0 to ((Moji_24)-1)
22220 if (name$=buf_char_hiragana24$(i)) then
22230 buffer_count=24:goto Moji_count_check:
22240 endif
22250 next i
22260 'Menu3 結果表示 画数の登録確認
22270 Moji_count_check:
22280 bg=0:init"kb:4"
22290 if (buffer_count = 0) then
22300 '登録文字がない場合の処理
22310 'グラフィック領域　ここから
22320 'Moji_count_check:
22330 cls 3
22340 '1行
22350 line (0,0)-(840,60),rgb(0,0,255),bf
22360 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
22370 '2行目
22380 line (0,60)-(840,165),rgb(127,255,212),bf
22390 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
22400 '3行目
22410 line (0,165)-(840,370),rgb(0,0,255),bf
22420 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
22430 '4行目
22440 line (0,370)-(840,450),rgb(0,255,0),bf
22450 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
22460 'グラフィック領域　ここまで
22470 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22480 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22490 talk "この文字は、登録されていません"
22500 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22510 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22520 color rgb(0,0,0):print"コマンド:"
22530 while (bg <> 2 and key$ <> chr$(13))
22540 key$=inkey$
22550 bg=strig(1)
22560 pause 2.50*100
22570 wend
22580 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22590 'key$=Input$(1)
22600 'if key$="q" or key$="Q" then goto Main_Screen1:
22610 'if key$=chr$(13) then goto Entry_moji_Top:
22620 'goto 20240
22630 else
22640 'グラフィック描画領域　ここから
22650 'Entry_moji_check:
22660 cls 3
22670 '1行目
22680 line (0,0)-(840,58),rgb(0,0,255),bf
22690 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
22700 '2行目
22710 line (0,58)-(840,100),rgb(127,255,212),bf
22720 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
22730 '3行目
22740 line (0,100)-(840,280),rgb(0,0,255),bf
22750 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
22760 '4行目
22770 line (0,280)-(840,340),rgb(0,255,0),bf
22780 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
22790 'グラフィック描画領域　ここまで
22800 color rgb(255,255,255):print "登録文字画数結果表示"
22810 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22820 endif
22830 while (key$<>chr$(13) and bg <> 2)
22840 key$=inkey$
22850 bg=strig(1)
22860 pause 2.50*100
22870 wend
22880 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22890 'color rgb(255,255,255)
22900 'print"q+エンターキー:トップ画面"+chr$(13)
22910 'print"エンターキー:もう一度やる"+chr$(13)
22920 'color rgb(0,0,0)
22930 'print"コマンド:"
22940 'key$=Input$(1)
22950 'if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
22960 'if key$="q" then buffer_count=0:goto Main_Screen1:
22970 'if not(key$="q") then goto Moji_count_check:
22980 'Menu2 名前の陰陽を見る
22990 'グラフィック描画領域 ここから
23000 name_inyo_check:
23010 init "kb:2"
23020 cls 3:line (0,0)-(800,60),rgb(0,0,255),bf
23030 PEN 5:line(0,0)-(797,57),rgb(127,255,212),b
23040 LINE (0,60)-(800,250),rgb(127,255,212),bf
23050 pen 5:line (0,57)-(797,247),rgb(0,0,255),b
23060 line (0,250)-(800,350),rgb(0,255,0),bf
23070 pen 5:line(0,247)-(797,347),rgb(0,0,255),b
23080 'グラフィック描画領域　ここまで
23090 cls
23100 color rgb(255,255,255)
23110 print"Menu2 名前の陰陽を見る"+chr$(13)
23120 COLOR rgb(255,0,255)
23130 PRINT"(●:陽,○:陰)"+chr$(13)
23140 print"調べたい名前苗字を入れてください"+chr$(13)
23150 color rgb(0,0,0)
23160 Input"調べたい名前の苗字:",name$
23170 if name$="" then goto name_inyo_check:
23180 'Menu2 陰陽の吉凶を見る 名入力
23190 cls:color rgb(255,255,255)
23200 print"Menu2 名前の陰陽を見る"+chr$(13)
23210 color rgb(255,0,255)
23220 print"(●:陽,○:陰)"+chr$(13)
23230 print"調べたい名前の名を入れてください"+chr$(13)
23240 color rgb(0,0,0)
23250 Input"調べたい名前の名:",name2$
23260 if name2$="" then goto name_inyo_check:
23270 for i=0 to len(name$)-1
23280 name_array$(i)=Mid$(name$,i+1,1)
23290 if char_count(name_array$(i)) mod 2 = 1  then
23300 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23310 else
23320 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23330 endif
23340 next i
23350 for i=0 to len(name2$)-1
23360 name_array2$(i)=Mid$(name2$,i+1,1)
23370 if char_count(name_array2$(i)) mod 2 = 1 then
23380 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
23390 else
23400 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
23410 endif
23420 next i
23430 bufname$=buffer$+buffer2$
23440 '陰陽のタイプ ここから
23450 select case (len(bufname$))
23460 '2文字
23470 case 2:
23480 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
23490 '
23500 '  endif
23510 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23520 '  endif
23530 '3文字
23540 case 3:
23550 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23560 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23570 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23580 '4文字
23590 case 4:
23600 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23610 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23620 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23630 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23640 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23650 '5文字
23660 case 5:
23670 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23680 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23690 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23700 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23710 case 6:
23720 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23730 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23740 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23750 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23760 case else:
23770 buffer_name$="例外に入りました"
23780 end select
23790 '陰陽のタイプ　ここまで
23800 'グラフィック描画領域　ここから
23810 cls 2:key$="":bg=0:init "kb:4"
23820 line (0,0)-(850,60),rgb(0,0,250),bf
23830 pen 5:line(0,0)-(847,57),rgb(127,255,212),b
23840 line (0,60)-(850,285),rgb(127,255,212),bf
23850 pen 5:line(0,57)-(847,282),rgb(0,0,255),b
23860 line (0,280)-(850,380),rgb(0,255,0),bf
23870 pen 5:line(0,277)-(847,377),rgb(0,0,255),b
23880 'グラフィック描画領域 ここまで
23890 color rgb(255,255,255)
23900 cls:print"名前:";name$ + name2$ + chr$(13)
23910 color rgb(255,0,255)
23920 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23930 print buffer_name$;chr$(13)
23940 color rgb(0,0,0)
23950 print"エンターキーを押してください"
23960 'key$=Input$(1)
23970 while (bg <> 2 and key$ <> chr$(13))
23980 key$=inkey$
23990 bg=strig(1)
24000 pause 2.50*100
24010 wend
24020 if (key$ = chr$(13) or bg=2) then buffer$="":buffer2$="": goto Main_Screen1:
24030 'Menu3
24040 '登録文字数の確認
24050 Entry_moji_check:
24060 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
24070 'グラフィック描画領域　ここから
24080 cls 3:init"kb:4":bg=0:key$=""
24090 '1行目
24100 line (0,0)-(800,60),rgb(0,0,255),bf
24110 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
24120 '2行目
24130 line (0,60)-(800,150),rgb(157,255,212),bf
24140 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
24150 '3行目
24160 line (0,150)-(800,250),rgb(0,255,0),bf
24170 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
24180 'グラフィック描画領域 ここまで
24190 color rgb(255,255,255)
24200 PRINT"登録文字数の確認"+chr$(13)
24210 color rgb(255,0,255)
24220 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24230 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24240 while (key$ <> chr$(13) and bg <> 2)
24250 key$=inkey$
24260 bg=strig(1)
24270 pause 2.50*100
24280 wend
24290 'color rgb(0,0,0)
24300 'print"エンターキーを押してください"+chr$(13)
24310 'key$=Input$(1)
24320 'print"エンターキーを押してください"
24330 'key$=Input$(1)
24340 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24350 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24360 nick_name_check:
24370 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24380 'グラフィック描画領域　ここから
24390 cls 3:init "kb:2"
24400 line (0,0)-(1100,60),rgb(0,0,250),bf
24410 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24420 line (0,60)-(1100,160),rgb(127,255,212),bf
24430 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
24440 line (0,160)-(1100,270),rgb(0,255,0),bf
24450 pen 5:line(0,157)-(1097,267),rgb(0,0,255),b
24460 'グラフィック描画領域　ここまで
24470 buf=0:cls
24480 locate 0,0
24490 color rgb(255,255,255)
24500 Print"名前(ニックネーム)の総数で吉凶を判断します"
24510 locate 0,2
24520 color rgb(255,0,255)
24530 PRINT"名前(ニックネーム)を入れてください"
24540 locate 0,4
24550 color rgb(0,0,0)
24560 Input"名前:",name$
24570 if name$="" then goto nick_name_check:
24580 for n=0 to (len(name$)-1)
24590 buf_Input_data$(n)=mid$(name$,n+1,1)
24600 buf=buf+char_count(buf_Input_data$(n))
24610 next n
24620 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24630 '結果表示　グラフィック　ここから
24640 cls 3:init "kb:4":bg=0:key$=""
24650 line (0,0)-(1100,60),rgb(0,0,255),bf
24660 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24670 line (0,60)-(1100,160),rgb(127,255,212),bf
24680 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
24690 line (0,160)-(1100,540),rgb(0,255,0),bf
24700 pen 5:line(0,157)-(1097,537),rgb(0,0,255),b
24710 '結果表示 グラフィック領域 ここまで
24720 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24730 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24740 'color rgb(0,0,0)
24750 'print "番号を選んでください"+chr$(13)
24760 'PRINT "エンターキー:もう一度やる"+chr$(13)
24770 'print "q:トップに戻る"+chr$(13)
24780 while (key$ <> chr$(13) and bg <> 2)
24790 key$=inkey$
24800 bg=strig(1)
24810 pause 2.50*100
24820 wend
24830 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24840 't "コマンド:"
24850 'ey$=Input$(1)
24860 'if key$="q" then goto Main_Screen1:
24870 'if key$=chr$(13) then goto nick_name_check:
24880 'if No > 2 then goto 24200
24890 '名前2文字
24900 'グラフィック描画領域　ここから
24910 Result_Anzai:
24920 CLS 3:font 32:bg=0:ke$="":init"KB:4"
24930 line (0,0)-(1400,60),rgb(0,0,255),bf
24940 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24950 line (0,60)-(1400,540-180),rgb(127,255,212),bf
24960 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
24970 line (0,540-180)-(1400,540),rgb(0,255,0),bf
24980 pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
24990 'グラフィック描画領域 ここまで
25000 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
25010 color rgb(255,0,255)
25020 print"天運";buf_tenunn;chr$(13)
25030 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
25040 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
25050 print"外運";buf_gaiunn;chr$(13)
25060 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
25070 COLOR rgb(0,0,0)
25080 PRINT"エンターキー:トップ画面"+chr$(13)
25090 while (key$<>chr$(13) and bg <> 2)
25100 key$=inkey$
25110 bg=strig(1)
25120 pause 2.50*100
25130 wend
25140 'print"エンターキー:もう一度、吉凶をみる"+chr$(13)
25150 'print "コマンド:"
25160 'key$=Input$(1)
25170 'if key$=chr$(13) then goto Anzai_Top_Screen:
25180 if key$=chr$(13) or bg=2 then goto Main_Screen1:
25190 '参考文献 表示 ここから
25200 'グラフィック描画領域　 ここから
25210 Document_info:
25220 cls 3:init"kb:4":bg=0
25230 line (0,0)-(1100,60),rgb(0,0,255),bf
25240 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
25250 line (0,60)-(1100,650),rgb(127,255,212),bf
25260 pen 5:line(0,57)-(1097,647),rgb(0,0,255),b
25270 line (0,650)-(1100,730),rgb(0,255,0),bf
25280 pen 5:line(0,647)-(1097,727),rgb(0,0,255),b
25290 'グラフィック描画領域  ここまで
25300 '参考文献１
25310 cls
25320 color rgb(255,255,255)
25330 print"◎参考文献"+chr$(13)
25340 color rgb(255,0,255)
25350 print "参考文献 １/4"+chr$(13)
25360 print "Title:九星姓名判断"+chr$(13)
25370 print "Author:高嶋　 美伶"+chr$(13)
25380 print "出版社:日本文芸者"+chr$(13)
25390 print "ISBN:4-537-20073-1"+chr$(13)
25400 print "定価:1,200+税"+chr$(13)
25410 color rgb(0,0,0)
25420 print "エンターキーを押してください"
25430 while (bg <> 2 and key$<>chr$(13))
25440 key$=inkey$
25450 bg=strig(1)
25460 pause 2.50*100
25470 wend
25480 if (key$=chr$(13) or bg=2) then
25490 goto Document_info2:
25500 endif
25510 'key$=Input$(1)
25520 'if key$=chr$(13)  then goto Document_info2:
25530 '参考文献２
25540 Document_info2:
25550 cls:bg=0:key$=""
25560 color rgb(255,255,255)
25570 print "◎参考文献"+chr$(13)
25580 color rgb(255,0,255)
25590 print "参考文献 ２/4"+chr$(13)
25600 print "Title:究極の姓名判断"+chr$(13)
25610 print "Author:安斎　勝洋"+chr$(13)
25620 print "出版社:説話社"+chr$(13)
25630 print "ISBN:978-4-916217-61-5"+chr$(13)
25640 print "定価:1,800円+税"+chr$(13)
25650 color rgb(0,0,0)
25660 print"エンターキーを押してください"
25670 while (key$<>chr$(13) and bg <> 2)
25680 key$=inkey$
25690 bg=strig(1)
25700 pause 2.50*100
25710 wend
25720 if (key$=chr$(13) or bg=2) then goto Document_info3:
25730 'key$=Input$(1)
25740 'if key$=chr$(13) then goto Document_info3:
25750 '参考文献３
25760 Document_info3:
25770 cls:bg=0:key$=""
25780 color rgb(255,255,255)
25790 print"◎参考文献"+chr$(13)
25800 color rgb(255,0,255)
25810 print "参考文献 3/4"+chr$(13)
25820 print "Title:新明解現在漢和辞典"+chr$(13)
25830 print "Author:影山輝國(編集主幹)他"+chr$(13)
25840 print "出版社:三省堂"+chr$(13)
25850 print "ISBN:978-4-385-13755-1"+chr$(13)
25860 print "定価:2,800円 + 税"+chr$(13)
25870 color rgb(0,0,0)
25880 print "エンターキーを押してください"
25890 while (key$<>chr$(13) and bg<>2)
25900 key$=inkey$
25910 bg=strig(1)
25920 pause 2.50*100
25930 wend
25940 if (key$=chr$(13) or bg=2) then goto Document_info4:
25950 'key$=Input$(1)
25960 'if key$=chr$(13) then goto Document_info4:
25970 '参考文献４　
25980 '描画領域　ここから
25990 Document_info4:
26000 cls 3:key$="":bg=0
26010 line (0,0)-(1100,60),rgb(0,0,255),bf
26020 line (0,0)-(1100,57),rgb(0,255,0),b
26030 line (0,60)-(1100,650),rgb(127,255,212),bf
26040 LINE (0,60)-(1100,647),rgb(0,0,255),b
26050 LINE (0,650)-(1100,830),rgb(0,255,0),bf
26060 line (0,650)-(1100,833),rgb(0,0,255),b
26070 '描画領域　ここまで
26080 'cls
26090 color rgb(255,255,255)
26100 print "◎参考文献"+chr$(13)
26110 COLOR rgb(255,0,255)
26120 print "参考文献 4/4" + chr$(13)
26130 print "Title:姓名の暗号" + chr$(13)
26140 print "Author:樹門　幸宰(じゅもん こうざい)"+chr$(13)
26150 print "出版社:幻冬舎"+chr$(13)
26160 print "定価:1400円 + 税"+chr$(13)
26170 print "ISBN:4-344-00777-8"+chr$(13)
26180 color rgb(0,0,0)
26190 print "参考文献トップに行く:エンターキー"+chr$(13)
26200 print "スペース：トップメニューに行く"+chr$(13)
26210 while (key$<>chr$(13) and bg<>2)
26220 key$=inkey$
26230 bg=strig(1)
26240 pause 2.50*100
26250 wend
26260 if (key$=chr$(13) or bg=2) then goto help:
26270 'key$=Input$(1)
26280 'トップ画面に戻る
26290 'if key$ = " " then goto help:
26300 'if key$ = chr$(13) then goto Document_info:
26310 '安斎流姓名判断　メニュー
26320 'グラフィック領域　ここから
26330 Anzai_Top:
26340 cls 3
26350 No=0:init"kb:4":y=0:bg=0:key$=""
26360 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26370 sp_on 0,1:sp_put 0,(10,100),0,0
26380 line (0,0)-(1000,60),rgb(0,0,255),bf
26390 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
26400 line (0,60)-(1000,475),rgb(127,255,212),bf
26410 pen 5:line(0,57)-(997,472),rgb(0,0,255),b
26420 line (0,475)-(1000,650),rgb(0,255,0),bf
26430 pen 5:line(0,472)-(997,647),rgb(0,0,255),b
26440 'グラフィック描画領域　ここまで
26450 color rgb(255,255,255)
26460 print "安斎流姓名判断　トップメニュー" + chr$(13)
26470 color rgb(255,0,255)
26480 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26490 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26500 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26510 print " :4.前の画面に戻る"+chr$(13)
26520 locate 0,10
26530 color rgb(0,0,0)
26540 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26550 Anzai_Top2:
26560 y=0:bg=0:key$=""
26570 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26580 key$=inkey$
26590 y=stick(1)
26600 bg=strig(1)
26610 pause 2.50*100
26620 wend
26630 '******************************************************
26640 '1.下のキー　ここから
26650 '******************************************************
26660 if (y=1 or key$=chr$(30)) then
26670 select case No
26680 case 0:
26690 No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
26700 case 1:
26710 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
26720 case 2:
26730 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
26740 case 3:
26750 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
26760 end select
26770 endif
26780 '******************************************************
26790 '1.下のキー　ここまで
26800 '******************************************************
26810 '******************************************************
26820 '2.上のキー　ここから
26830 '******************************************************
26840 if (y=-1 or key$=chr$(31)) then
26850 select case No
26860 case 0:
26870 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
26880 case 1:
26890 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
26900 case 2:
26910 No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
26920 case 3:
26930 No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
26940 end select
26950 endif
26960 '******************************************************
26970 '2.上のキー　ここまで
26980 '******************************************************
26990 '******************************************************
27000 '3.決定ボタン　ここから
27010 '******************************************************
27020 if (key$=chr$(13) or bg=2) then
27030 select case No
27040 case 0:
27050 sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
27060 case 1:
27070 sp_on 1,0:goto Anzai_Top_Screen:
27080 case 2:
27090 sp_on 2,0:goto Anzai_Kaimei_Check:
27100 case 3:
27110 sp_on 3,0:goto seimeihandan_top:
27120 end select
27130 endif
27140 '******************************************************
27150 '3.決定ボタン　ここまで
27160 '******************************************************
27170 'if key=2 then goto Anzai_Top_Screen:
27180 'if key=3 then goto Anzai_Kaimei_Check:
27190 'if key=1 then goto Anzai_Aishou_Top1:
27200 'if key=4 then goto seimeihandan_top:
27210 'if key > 4 or key = 0 then goto Anzai_Top:
27220 '2.安斎流姓名判断　男女の相性占い　ここから
27230 'グラフィック描画領域 ここから
27240 'Anzai_Aishou_Top1:
27250 cls 3
27260 '1行目
27270 line (0,0)-(800,60),rgb(0,0,255),bf
27280 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27290 '2行目
27300 line (0,60)-(800,160),rgb(127,255,212),bf
27310 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27320 '3行目
27330 line (0,160)-(800,300),rgb(0,255,0),bf
27340 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27350 'グラフィック描画領域　男女の相性占い ここまで
27360 'if s1=1 then goto 26490
27370 'if s1=2 then goto 27270
27380 '1.名前の姓を入力  男性
27390 Anzai_Aishou_Top1:
27400 cls 3
27410 '1行目
27420 line (0,0)-(800,60),rgb(0,0,255),bf
27430 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27440 '2行目
27450 line (0,60)-(800,160),rgb(127,255,212),bf
27460 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27470 '3行目
27480 line (0,160)-(800,300),rgb(0,255,0),bf
27490 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27500 color rgb(255,255,255)
27510 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27520 color rgb(255,0,255)
27530 print "男性の名前(姓)を入れてください"+chr$(13)
27540 color rgb(0,0,0)
27550 Input "男性の名前(姓):",name$
27560 '2.名前の名を入力  男性
27570 cls 3
27580 cls 3
27590 '1行目
27600 line (0,0)-(800,60),rgb(0,0,255),bf
27610 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27620 '2行目
27630 line (0,60)-(800,160),rgb(127,255,212),bf
27640 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27650 '3行目
27660 line (0,160)-(800,300),rgb(0,255,0),bf
27670 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27680 color rgb(255,255,255)
27690 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
27700 color rgb(255,0,255)
27710 print "男性の名前（名）をいれてください"+chr$(13)
27720 color rgb(0,0,0)
27730 Input "男性の名前(名):",name2$
27740 'if s2=2 then goto 27470
27750 '3.名前(姓)入力 女性
27760 Anzai_Aishou_Top2:
27770 cls:init "kb:2"
27780 color rgb(255,255,255)
27790 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
27800 color rgb(255,0,255)
27810 print "女性の名前(姓)を入れてください"+chr$(13)
27820 color rgb(0,0,0)
27830 Input"女性の名前:",name3$
27840 '4.名前（名)入力 女性
27850 cls:init "kb:2"
27860 color rgb(255,255,255)
27870 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
27880 color rgb(255,0,255)
27890 print "女性の名前（名）を入れてください"+chr$(13)
27900 color rgb(0,0,0)
27910 Input "女性の名前(名):",name4$
27920 '男性　の地運 を求める
27930 '姓名の合計数
27940 '1.男性 名前の文字数を求める
27950 '地運を求める
27960 buf_male_name1 = len(name$)
27970 buf_male_name2 = len(name2$)
27980 buf_male_count = buf_male_name1 + buf_male_name2
27990 '2.女性 名前の文字数を求める
28000 buf_female_name1 = len(name3$)
28010 buf_female_name2 = len(name4$)
28020 buf_female_count = buf_female_name1 + buf_female_name2
28030 'goto Anzai_Aishou_Check:
28040 '1.男性の地運を求める
28050 select case buf_male_count
28060 case 2:
28070 '男性の地運を求める
28080 buf_chiunn=char_count(name2$)
28090 case 3:
28100 '姓が一文字 名が2文字
28110 if buf_male_name1=1 and buf_male_name2=2 then
28120 buf_Input_name$(0)=mid$(name2$,1,1)
28130 buf_Input_name$(1)=mid$(name2$,2,1)
28140 '地運を計算
28150 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28160 endif
28170 if buf_male_name1=2 and buf_male_name2=1 then
28180 buf_Input_name$(0)=Mid$(name2$,1,1)
28190 buf_chiunn=char_count(buf_Input_name$(0))
28200 endif
28210 case 4:
28220 '1.姓１，名３
28230 if bufmale_name1=1 and buf_male_name2=3 then
28240 buf_Input_name$(0)=Mid$(name2$,1,1)
28250 buf_Input_name$(1)=Mid$(name2$,2,1)
28260 buf_Input_name$(2)=Mid$(name2$,3,1)
28270 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28280 endif
28290 '2.姓２,名２
28300 if buf_male_name1=2 and buf_male_name2=2 then
28310 buf_Input_name$(0)=Mid$(name2$,1,1)
28320 buf_Input_name$(1)=Mid$(name2$,2,1)
28330 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28340 endif
28350 '3.姓３、名１
28360 if buf_male_name1=3 and buf_male_name2=1 then
28370 buf_Input_name$(0)=Mid$(name2$,1,1)
28380 '地運を求める
28390 buf_chiunn=char_count(buf_Input_name$(0))
28400 endif
28410 case 5:
28420 '1.姓２，名３
28430 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28440 buf_Input_name$(0)=Mid$(name2$,1,1)
28450 buf_Input_name$(1)=Mid$(name2$,2,1)
28460 buf_Input_name$(2)=Mid$(name2$,3,1)
28470 '地運を求める
28480 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28490 endif
28500 '2.姓３，名２
28510 if buf_male_name1=3 and buf_male_name2=2 then
28520 buf_Input_name$(0)=Mid$(name2$,1,1)
28530 buf_Input_name$(1)=Mid$(name2$,2,1)
28540 '地運を求める
28550 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28560 endif
28570 '3.姓４、名１
28580 buf_Input_name$(0)=Mid$(name2$,1,1)
28590 '地運を求める
28600 buf_chiunn = char_count(buf_Input_name$(0))
28610 case 6:
28620 '1.姓３，名３
28630 if buf_male_name1=3 and buf_male_name2=3 then
28640 buf_Input_name$(0)=Mid$(name2$,1,1)
28650 buf_Input_name$(1)=Mid$(name2$,2,1)
28660 buf_Input_name$(2)=Mid$(name2$,3,1)
28670 '地運を求める
28680 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28690 endif
28700 '２.姓４，名２
28710 if buf_male_name1=4 and buf_male_name2=2 then
28720 buf_Input_name$(0)=Mid$(name2$,1,1)
28730 buf_Input_name$(1)=Mid$(name2$,2,1)
28740 '地運を求める
28750 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28760 endif
28770 case else:
28780 end select
28790 'if s1=1 then goto 33170
28800 'if s2=2 then goto 30790
28810 '2.女性　外運を求める
28820 select case buf_female_count
28830 '姓と名の合計数
28840 case 2:
28850 buf_Input_name2$(0)=Mid$(name3$,1,1)
28860 buf_Input_name2$(1)=Mid$(name4$,1,1)
28870 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
28880 case 3:
28890 if buf_female_name1=2 and buf_female_name2=1 then
28900 buf_Input_name2$(0)=Mid$(name3$,1,1)
28910 buf_Input_name2$(1)=Mid$(name3$,2,1)
28920 buf_Input_name2$(2)=Mid$(name4$,1,1)
28930 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
28940 endif
28950 if buf_female_name1=1 and buf_female_name2=2 then
28960 buf_Input_name2$(0)=Mid$(name3$,1,1)
28970 buf_Input_name2$(1)=Mid$(name4$,1,1)
28980 buf_Input_name2$(2)=Mid$(name4$,2,1)
28990 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
29000 endif
29010 case 4:
29020 '姓１、名３
29030 if buf_female_name1=1 and buf_female_name2=3 then
29040 buf_Input_name2$(0)=Mid$(name3$,1,1)
29050 buf_Input_name2$(1)=Mid$(name4$,1,1)
29060 buf_Input_name2$(2)=Mid$(name4$,2,1)
29070 buf_Input_name2$(3)=Mid$(name4$,3,1)
29080 '外運を求める
29090 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
29100 endif
29110 '姓２,名２
29120 if buf_female_name1=2 and buf_female_name2=2 then
29130 buf_Input_name2$(0)=Mid$(name3$,1,1)
29140 buf_Input_name2$(1)=Mid$(name3$,2,1)
29150 buf_Input_name2$(2)=Mid$(name4$,1,1)
29160 buf_Input_name2$(3)=Mid$(name4$,2,1)
29170 '外運を求める
29180 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29190 endif
29200 '姓３，名１
29210 if buf_female_name1=3 and buf_female_name2=1 then
29220 buf_Input_name2$(0)=Mid$(name3$,1,1)
29230 buf_Input_name2$(1)=Mid$(name3$,2,1)
29240 buf_Input_name2$(2)=Mid$(name3$,3,1)
29250 buf_Input_name2$(3)=Mid$(name4$,1,1)
29260 '外運を求める
29270 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29280 endif
29290 case 5:
29300 '姓 3,名2
29310 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29320 buf_Input_name2$(0)=Mid$(name3$,1,1)
29330 buf_Input_name2$(1)=Mid$(name3$,2,1)
29340 buf_Input_name2$(2)=Mid$(name3$,3,1)
29350 buf_Input_name2$(3)=Mid$(name4$,1,1)
29360 buf_Input_name2$(4)=Mid$(name4$,2,1)
29370 '外運を求める
29380 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29390 endif
29400 '姓４、名１
29410 if buf_female_name1=4 and buf_female_name2=1 then
29420 buf_Input_name2$(0)=Mid$(name3$,1,1)
29430 buf_Input_name2$(1)=Mid$(name3$,2,1)
29440 buf_Input_name2$(2)=Mid$(name3$,3,1)
29450 buf_Input_name2$(3)=Mid$(name3$,4,1)
29460 buf_Input_name2$(4)=Mid$(name4$,1,1)
29470 '外運を求める
29480 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29490 endif
29500 '姓２、名３
29510 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29520 buf_Input_name2$(0)=Mid$(name3$,1,1)
29530 buf_Input_name2$(1)=Mid$(name3$,2,1)
29540 buf_Input_name2$(2)=Mid$(name4$,1,1)
29550 buf_Input_name2$(3)=Mid$(name4$,2,1)
29560 buf_Input_name2$(4)=Mid$(name4$,3,1)
29570 '外運を求める
29580 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29590 endif
29600 case 6:
29610 '1.姓３，名３
29620 if buf_female_name1=3 and buf_female_name2=3 then
29630 buf_Input_name2$(0)=Mid$(name3$,1,1)
29640 buf_Input_name2$(1)=Mid$(name3$,2,1)
29650 buf_Input_name2$(2)=Mid$(name3$,3,1)
29660 buf_Input_name2$(3)=Mid$(name4$,1,1)
29670 buf_Input_name2$(4)=Mid$(name4$,2,1)
29680 buf_Input_name2$(5)=Mid$(name4$,3,1)
29690 '外運を求める
29700 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
29710 endif
29720 '2.姓４，名２
29730 if buf_female_name1=4 and buf_female_name2=2 then
29740 buf_Input_name2$(0)=Mid$(name3$,1,1)
29750 buf_Input_name2$(1)=Mid$(name3$,2,1)
29760 buf_Input_name2$(2)=Mid$(name3$,3,1)
29770 buf_Input_name2$(3)=Mid$(name3$,4,1)
29780 buf_Input_name2$(4)=Mid$(name4$,1,1)
29790 buf_Input_name2$(5)=Mid$(name4$,2,1)
29800 '外運を求める
29810 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
29820 endif
29830 case 7:
29840 '1姓４，名３
29850 '外運を求める
29860 end select
29870 'if s=1 then goto Anzai_Aishou_Check:
29880 'if s2=2 then goto Anzai_Aishou_Check:
29890 'goto 33410
29900 func buf_number(a)
29910 if a < 10 then
29920 buf_tansu = a
29930 endif
29940 if a > 9 and a < 20 then
29950 buf_tansu = a - 10
29960 endif
29970 if a > 19 and a < 30 then
29980 buf_tansu = a - 20
29990 endif
30000 buffer = buf_tansu
30010 endfunc buffer
30020 check$="No Data"
30030 func Aisyou_type$(man,woman)
30040 Result$="No data"
30050 'check$="No data"
30060 '1.理解し合える最良のカップル
30070 '1のFor文
30080 for i=0 to 19
30090 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
30100 Result$ = "1.理解し合える最良のカップル"
30110 check$="○"
30120 ResultNo = 0
30130 endif
30140 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
30150 Result$="2.互いに自然体でつきあえるカップル"
30160 ResultNo=1
30170 check$="○"
30180 endif
30190 '3.男性にとって居心地の良いカップル
30200 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30210 Result$="3.男性にとって居心地の良いカップル"
30220 ResultNo=2
30230 check$="△"
30240 endif
30250 '4.女性にとって居心地の良いカップル
30260 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30270 Result$ = "4.女性にとって居心地の良いカップル"
30280 ResultNo=3
30290 check$="△"
30300 endif
30310 '5.恋愛経験を重ねた後なら愛を育める
30320 'for i=0 to 9
30330 'for j=0 to 9
30340 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
30350 Result$="5.恋愛経験を重ねた後なら愛を育める"
30360 ResultNo=4
30370 check$="×"
30380 endif
30390 'next j
30400 'next i
30410 '6
30420 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30430 Result$="6.結婚への発展が困難なカップル"
30440 check$="×"
30450 endif
30460 '7
30470 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30480 Result$="7.愛し方にずれが出てくる二人"
30490 check$="×"
30500 endif
30510 '8
30520 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30530 Result$="8.互いに価値観が噛み合わない相性"
30540 check$="×"
30550 endif
30560 next i
30570 'bufAisyou$ = Result$
30580 endfunc  Result$
30590 Anzai_Aishou_Check:
30600 cls 3:init"kb:2":bg=0
30610 buf_t_chiunn = buf_number(buf_chiunn)
30620 buf_t_gaiunn=buf_number(buf_gaiunn)
30630 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30640 'グラフィック描画領域　ここから
30650 'Title欄
30660 line(0,0)-(1300,60),rgb(0,0,255),bf
30670 pen 5:line(0,0)-(1297,57),rgb(127,255,212),b
30680 '結果表示欄
30690 line(0,60)-(1300,700-120-20),rgb(127,255,212),bf
30700 pen 5:line(0,57)-(1297,700-120-3-20),rgb(0,0,255),b
30710 'ボタン選択欄
30720 LINE(0,700-120-20)-(1300,640),rgb(0,255,0),bf
30730 pen 5:line(0,697-120-20)-(1297,637),rgb(0,0,255),b
30740 'グラフィック描画領域　ここまで
30750 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
30760 color rgb(255,255,255):font 40:init"kb:4"
30770 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
30780 color rgb(255,0,255)
30790 print "男性の名前:";name$+name2$;chr$(13)
30800 print "地運の単数";buf_t_chiunn;chr$(13)
30810 print "女性の名前:";name3$+name4$;chr$(13)
30820 print "外運の単数";buf_t_gaiunn;chr$(13)
30830 print"二人の相性:";bufferAisyou$;chr$(13)
30840 print"相性判定:";check$;chr$(13)
30850 color rgb(0,0,0)
30860 print "エンターキー:トップ" + chr$(13)
30870 while (bg <> 2)
30880 bg=strig(1)
30890 pause 2.50*100
30900 wend
30910 if (bg=2) then goto Main_Screen1:
30920 'print "S or sキー:保存" + chr$(13)
30930 'key$=Input$(1)
30940 'if key$=chr$(13) then
30950 'goto Main_Screen1:
30960 'else
30970 'Data保存追加 2021.10.01
30980 'goto Save_Aisyou:
30990 'endif
31000 '改名チェック
31010 'グラフィック描画領域 ここから
31020 Anzai_Kaimei_Check:
31030 cls 3:init "kb:2"
31040 line (0,0)-(1250,60),rgb(0,0,255),bf
31050 pen 5:line(0,0)-(1247,57),rgb(125,255,212),b
31060 line (0,60)-(1250,370+50),rgb(127,255,212),bf
31070 pen 5:line (0,57)-(1247,367+50),rgb(0,0,255),b
31080 line (0,370+50)-(1250,450+50),rgb(0,255,0),bf
31090 pen 5:line(0,367+50)-(1247,447+50),rgb(0,0,255),b
31100 'グラフィック描画領域 ここまで
31110 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
31120 color rgb(255,255,255)
31130 print "安斎流姓名判断 改名チェッカー"+chr$(13)
31140 color rgb(255,0,255)
31150 print "総数で、改名が、必要か否かを調べます"+chr$(13)
31160 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
31170 print "10文字までで入れてください"
31180 locate 0,9
31190 color rgb(0,0,0)
31200 Input "名前:",name$
31210 '計算領域　ここから
31220 '名前から総運を計算
31230 '1.名前の文字数を出す
31240 n=len(name$)
31250 if n > 10 or n=0 then
31260 '文字数が10個までという表示
31270 'トーストで表示
31280 if n > 10 then
31290 ui_msg "文字は10個までです"
31300 else
31310 ui_msg "文字が空っぽです"
31320 endif
31330 goto Anzai_Aishou_Check:
31340 endif
31350 'それ以外
31360 '総数を出す処理を出す
31370 '画面消去　データー初期化
31380 cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
31390 'グラフィック描画領域 ここから
31400 line(0,0)-(950,60),rgb(0,0,255),bf
31410 pen 5:line(0,0)-(947,57),rgb(127,255,212),b
31420 line(0,60)-(950,300),rgb(127,255,212),bf
31430 pen 5:line(0,57)-(947,297),rgb(0,0,255),b
31440 line(0,300)-(950,440),rgb(0,255,0),bf
31450 pen 5:line(0,297)-(947,437),rgb(0,0,255),b
31460 'グラフィック描画領域 ここまで
31470 'cls 3
31480 color rgb(255,255,255)
31490 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31500 for i=0 to len(name$)-1
31510 buf_Input_name$(i)=Mid$(name$,i+1,1)
31520 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31530 next i
31540 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31550 color rgb(255,0,255)
31560 print "名前:";name$
31570 print "この名前の総数:";bufer_total
31580 print "この名前の吉凶:";buf_Kikkyo$;"です"
31590 color rgb(255,0,255)
31600 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31610 print bufer_total$+chr$(13)
31620 'if buffer_K=0 or buffer_K=1  then
31630 'dim select$(2)
31640 'select$(0)="改名をする"
31650 'select$(1)="改名しない"
31660 'talk"改名しますか？"
31670 'color rgb(0,0,0)
31680 'Input"改名しますか？",key$
31690 'num=ui_select("select$","改名リストに追加しますか?")
31700 'num=0:改名リストに追加する
31710 'if num=0  then goto 35560
31720 'else
31730 'num=1:改名リストに追加しない
31740 'if num=1 then goto 31320
31750 'num=2:トップ画面に行く
31760 'if num=2 then goto 7570
31770 'endif
31780 'if buffer_K=0 then
31790 'print num,select$(num)
31800 color rgb(0,0,0)
31810 locate 0,7
31820 print"エンターキーを押してください"
31830 while (key$ <> chr$(13) and bg <> 2)
31840 key$=inkey$
31850 bg=strig(1)
31860 pause 2.50*100
31870 wend
31880 'key$=Input$(1)
31890 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
31900 'endif
31910 '改名チェック関数
31920 func Kaimei_check$(r$)
31930 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
31940 '改名の必要なし
31950 talk"この名前は改名の必要がございません。"
31960 print"この名前は、改名の必要はありません"+chr$(13)
31970 '改名の必要ナシの場合
31980 K=0
31990 buffer_K=K
32000 else
32010 '改名の必要あり
32020 Kaimei_check:
32030 talk"この名前は、改名の必要があります"
32040 print"この名前は、改名の必要があります"+chr$(13)
32050 color rgb(0,0,0)
32060 print"改名しますか？"
32070 K=1
32080 buffer_K=K
32090 '◎表示パターン
32100 'パターン１
32110 'color rgb(0,0,0)
32120 'Input"エンターキーを押してください",key$
32130 endif
32140 endfunc result$
32150 'ui_msg="1件追加しました,残り9件追加できます"
32160 'ファイルの存在確認 設定ファイル:mydata.dat
32170 cls
32180 '設定ファイルの確認
32190 if dir$("config/Parsonal_data/mydata.dat")="" then
32200 'print "File not found"+chr$(13)
32210 '1.ファイルがない時
32220 goto Kaimei_check:
32230 else
32240 'ファイルがある時
32250 goto sex_type_female:
32260 'goto 26180
32270 endif
32280 '1-1.ファイルがない時の処理
32290 '1-1.自分の姓名判断を入力
32300 'グラフィック描画領域 ここから
32310 cls 3
32320 '1行目
32330 line(0,0)-(1000,60),rgb(0,0,250),bf
32340 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
32350 '2行目
32360 line(0,60)-(1000,80),rgb(127,255,212),bf
32370 pen 5:line(0,57)-(997,77),rgb(0,0,255),b
32380 '3行目
32390 line(0,80)-(1000,120),rgb(0,255,0),bf
32400 pen 5:line(0,77)-(997,117),rgb(0,0,255),b
32410 'グラフィック描画領域 ここまで
32420 '1.名前の姓の入力
32430 '1行目 Title
32440 color rgb(255,255,255)
32450 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32460 '2行目 名前の姓を入力
32470 color rgb(255,0,255)
32480 print "自分の名前の姓を入れてください"+chr$(13)
32490 color rgb(0,0,0)
32500 'buf_name1$:自分の名前の姓
32510 Input"名前の姓:",buf_name1$
32520 '2.名前の名の入力
32530 '画面消去
32540 Anzai_myProfile2:
32550 cls
32560 '1行目 Title
32570 color rgb(255,255,255)
32580 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32590 '2行目 名前の名の入力
32600 color rgb(255,0,255)
32610 print "自分の名前の名を入れてください"+chr$(13)
32620 color rgb(0,0,0)
32630 'buf_name2$:自分の名前の名
32640 input "名前の名:",buf_name2$
32650 '3.性別入力
32660 cls
32670 '1行目 Title
32680 color rgb(255,255,255)
32690 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32700 '2行目 性別入力
32710 color rgb(255,0,255)
32720 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
32730 sex_type$(0)="女性"
32740 sex_type$(1)="男性"
32750 type=ui_select("sex_type$","性別を選んでください")
32760 '3行目
32770 '性別変数 sex_type$
32780 if type = 1 then
32790 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 32270
32800 else
32810 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
32820 endif
32830 if sex_type$="男性" then
32840 name$=buf_name1$
32850 name2$=buf_name2$
32860 s=1
32870 goto Anzai_Aishou_Top1:
32880 endif
32890 sex_type_female:
32900 If sex_type$="女性" then
32910 name3$=buf_name1$
32920 name4$=buf_name2$
32930 s=2
32940 goto Anzai_Aishou_Top2:
32950 endif
32960 '登録プロフィール確認画面
32970 Entry_Profile:
32980 cls 3
32990 'グラフィック描画領域　ここから
33000 '1行目
33010 line(0,0)-(1200,60),rgb(0,0,255),bf
33020 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33030 '2行目
33040 line(0,60)-(1200,360),rgb(127,255,212),bf
33050 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
33060 '3行目
33070 line(0,100)-(1200,420),rgb(0,255,0),bf
33080 pen 5:line(0,97)-(1197,417)
33090 if s2=2 then goto Entry_Profile:
33100 'グラフィック描画領域　ここまで
33110 '1行目 Title
33120 color rgb(255,255,255)
33130 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
33140 color rgb(255,0,255)
33150 print"名前:";buf_name1$+buf_name2$;chr$(13)
33160 PRINT"性別:";sex_type$;chr$(13)
33170 if sex_type$="女性" then
33180 print"外運:";buf_gaiunn;chr$(13)
33190 buffer$="外運:"+str$(buf_gaiunn)
33200 endif
33210 if sex_type$="男性" then
33220 print"地運:";buf_chiunn;chr$(13)
33230 buffer$="地運:"+str$(buf_chiunn)
33240 endif
33250 color rgb(0,0,0)
33260 input"(登録する:Yes/登録しない:No):",key$
33270 if key$="Yes" or key$="yes" then
33280 open "config/Parsonal_data/mydata.dat" for output as #1
33290 print #1,"名前:";buf_name1$+buf_name2$
33300 print #1,"性別:";sex_type$
33310 print #1,buffer$
33320 close #1
33330 ui_msg"データーを保存しました"
33340 goto Main_Screen1:
33350 endif
33360 '２．設定ファイルが存在する場合
33370 'ファイル読み込み 自分のデーターを表示
33380 cls
33390 open "Config/Parsonal_data/mydata.dat" for input as #2
33400 line input #2,a$
33410 line input #2,b$
33420 line input #2,c$
33430 close #2
33440 buffername$=a$
33450 buffername2$=b$
33460 buffername3$=c$
33470 bufff$=Mid$(buffername$,1,3)
33480 buff2$=Mid$(buffername2$,1,3)
33490 buff3$=Mid$(buffername3$,1,3)
33500 n=len(a$)
33510 sextype$=Mid$(buffername2$,4,2)
33520 if sextype$="男性" then
33530 '男性:s2
33540 s2=1
33550 '女性のデーター入力
33560 goto Anzai_Top:
33570 endif
33580 if sextype$="女性" then
33590 s2=2
33600 '男性のデーター入力
33610 goto Anzai_Top:
33620 endif
33630 '女性のデーター結果表示
33640 '1.プロフィール性別男性の場合 ここから
33650 Result_Anzai_Aisyou:
33660 cls
33670 color rgb(255,255,255)
33680 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
33690 name_length = len(bufername$)
33700 myname$ = Mid$(buffername$,4,4)
33710 chiunn = val(Mid$(buffername3$,4,2))
33720 tansuu1 = buf_number(chiunn)
33730 bufname$ = name3$ + name4$
33740 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33750 color rgb(255,0,255)
33760 print "自分の名前(男性):";myname$;chr$(13)
33770 print "地運の端数:";tansuu1;chr$(13)
33780 print "相手の名前(女性):";bufname$;chr$(13)
33790 print "外運の端数:";buf_t_gaiunn;chr$(13)
33800 print "二人の相性:";bufferAisyou$;chr$(13)
33810 talk "二人の相性は" + bufferAisyou$
33820 color rgb(0,0,0)
33830 print"エンターキーを押してください"
33840 key$=Input$(1)
33850 'トップ画面に行く
33860 if key$ = chr$(13) then goto Main_Screen1:
33870 '1.プロフィール性別男性の場合　ここまで
33880 '2.プロフィール性別女性の場合　ここから
33890 cls 3
33900 '描画領域　ここから
33910 line (0,0)-(1200,60),rgb(0,0,255),bf
33920 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33930 line (0,60)-(1200,460),rgb(127,255,212),bf
33940 pen 5:line(0,57)-(1197,457),rgb(0,0,255),b
33950 LINE (0,460)-(1200,520),rgb(0,255,0),bf
33960 pen 5:line(0,457)-(1197,517),rgb(0,0,255),b
33970 '描画領域 ここまで
33980 color rgb(255,255,255)
33990 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
34000 '計算領域　ここから
34010 myname$ = Mid$(buffername$,4,4)
34020 gaiunn = val(Mid$(buffername3$,4,2))
34030 buf_t_gaiunn = buf_number(buf_gaiunn)
34040 buf_t_chiunn = buf_number(buf_chiunn)
34050 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
34060 bufname$ = name$ + name2$
34070 '計算領域 ここまで
34080 color rgb(255,0,255)
34090 print "自分の名前(女性):";myname$;chr$(13)
34100 print "外運の端数";buf_t_gaiunn;chr$(13)
34110 print "相手の名前(男性):";bufname$;chr$(13)
34120 print "地運の端数:";buf_t_chiunn;chr$(13)
34130 print "二人の相性:";bufferAisyou$;chr$(13)
34140 color rgb(0,0,0)
34150 print "エンターキーを押してください"
34160 key$ = Input$(1)
34170 if key$=chr$(13) then goto Main_Screen1:
34180 '2.プロフィール性別女性の場合　ここまで
34190 'endfunc result$
34200 '取扱説明書
34210 '相性占い　トップメニュー ここから
34220 'グラフィック ここから
34230 Anzai_Aishou_Top_Menu:
34240 cls 3:
34250 '1行目
34260 line(0,0)-(1500,60),rgb(0,0,255),bf
34270 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
34280 '2行目
34290 line(0,60)-(1500,380),rgb(127,255,212),bf
34300 pen 5:line(0,57)-(1497,377),rgb(0,0,255),b
34310 '3行目
34320 line(0,360)-(1500,540),rgb(0,255,0),bf
34330 pen 5:line(0,357)-(1497,537),rgb(0,0,255),b
34340 'グラフィック　ここまで
34350 color rgb(255,255,255)
34360 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34370 color rgb(255,0,255)
34380 print"1.男女の相性"+chr$(13)
34390 print"2.前の画面に戻る"+chr$(13)
34400 print"3.トップ画面に戻る"+chr$(13)
34410 color rgb(0,0,0)
34420 print"番号を選んでください:"+chr$(13)
34430 Input"番号:",key
34440 if key = 1 then goto Anzai_Aishou_Top1:
34450 if key = 2 then goto Anzai_Top:
34460 if key = 3 then goto Main_Screen1:
34470 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34480 'グラフィック領域　ここから
34490 Life_Tenki:
34500 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34510 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34520 line(0,60)-(1150,180),rgb(127,255,212),bf
34530 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34540 line(0,120)-(1150,200),rgb(0,255,0),bf
34550 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34560 'グラフィック領域　ここまで
34570 '誕生日入力　生まれた年
34580 color rgb(255,255,255)
34590 print"誕生日入力　生まれた年" + chr$(13)
34600 COLOR rgb(255,0,255)
34610 print"生まれた年を入れてください" + chr$(13)
34620 color rgb(0,0,0)
34630 Input"生まれた年:",year
34640 '誕生日入力 生まれた月
34650 cls
34660 color rgb(255,255,255)
34670 print"誕生日入力 生まれた月" + chr$(13)
34680 color rgb(255,0,255)
34690 print"生まれた月を入力してください" + chr$(13)
34700 color rgb(0,0,0)
34710 Input"生まれた月:",month
34720 '誕生日入力 生まれた日を入力
34730 cls
34740 color rgb(255,255,255)
34750 print"誕生日入力 生まれた日入力" + chr$(13)
34760 color rgb(255,0,255)
34770 print"生まれた日を入力してください" + chr$(13)
34780 color rgb(0,0,0)
34790 Input"生まれた日:",day
34800 '人生の転機を見る
34810 'グラフィック領域　ここから
34820 cls 3
34830 line(0,0)-(1150,60),rgb(0,0,255),bf
34840 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34850 line(0,60)-(1150,470),rgb(127,255,212),bf
34860 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34870 line(0,470)-(1150,520),rgb(0,255,0),bf
34880 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
34890 'グラフィック描画領域  ここまで
34900 cls
34910 buffername$=bufname$ + bufname2$
34920 color rgb(255,255,255)
34930 print buffername$;"さんの人生の転機を見る1"+chr$(13)
34940 color rgb(255,0,255)
34950 buf_total2=buf_total-(fix(buf_total/10)*10)
34960 tenki1_year=year+buf_total2
34970 tenki2_year=year+buf_total2+5
34980 tenki3_year=year+buf_total2+5+5
34990 tenki4_year=year+buf_total2+5+5+5
35000 tenki1=buf_total2
35010 tenki2=buf_total2+5
35020 tenki3=buf_total2+5+5
35030 tenki4=buf_total2+5+5+5
35040 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35050 print tenki1_year;"年";tenki1;"歳"+chr$(13)
35060 print tenki2_year;"年";tenki2;"歳"+chr$(13)
35070 print tenki3_year;"年";tenki3;"歳"+chr$(13)
35080 print tenki4_year;"年";tenki4;"歳"+chr$(13)
35090 color rgb(0,0,0)
35100 print"エンターキーを押してください"
35110 key$=Input$(1)
35120 if key$=chr$(13) then goto Life_Tenki:
35130 '2ページ目
35140 cls
35150 color rgb(255,255,255)
35160 print buffername$;"さんの人生の転機2"+chr$(13)
35170 color rgb(255,0,255)
35180 tenki5_year = tenki4_year + 5
35190 tenki6_year = tenki4_year + 5 + 5
35200 tenki7_year = tenki4_year + 5 + 5 + 5
35210 tenki8_year = tenki4_year + 5 + 5 + 5+5
35220 tenki5 = tenki4 + 5
35230 tenki6 = tenki4 + 5 + 5
35240 tenki7 = tenki4 + 5 + 5 + 5
35250 tenki8 = tenki4 + 5 + 5 + 5 + 5
35260 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35270 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35280 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35290 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35300 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35310 color rgb(0,0,0)
35320 print"エンターキーを押してください",key$
35330 key$=Input$(1)
35340 if key$ = chr$(13) then goto 34680
35350 '3ページ目
35360 cls
35370 color rgb(255,255,255)
35380 print buffername$;"さんの人生の転機3"+chr$(13)
35390 '計算部分
35400 tenki_year9=tenki8_year + 5
35410 tenki_year10=tenki8_year + 5 + 5
35420 tenki_year11=tenki8_year+5+5+5
35430 tenki_year12=tenki8_year+5+5+5+5
35440 tenki9=tenki8+5
35450 tenki10=tenki8+5+5
35460 tenki11=tenki8+5+5+5
35470 tenki12=tenki8+5+5+5+5
35480 color rgb(255,0,255)
35490 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35500 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35510 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35520 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35530 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35540 color rgb(0,0,0)
35550 print"エンターキーを押してください"
35560 key$=Input$(1)
35570 if key$=chr$(13) then goto 34910
35580 'グラフィック描画領域 ここから
35590 cls 3
35600 line(0,0)-(1150,60),rgb(0,0,255),bf
35610 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35620 line(0,60)-(1150,470),rgb(127,255,212),bf
35630 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35640 line(0,470)-(1150,850),rgb(0,255,0),bf
35650 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35660 'グラフィック描画領域 ここまで
35670 '4回目
35680 cls
35690 color rgb(255,255,255)
35700 print buffername$;"さんの人生の転機４"+chr$(13)
35710 color rgb(255,0,255)
35720 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
35730 '計算部分
35740 tenki_year13 = tenki_year12 + 5
35750 tenki_year14 = tenki_year12 + 5 + 5
35760 tenki_year15 = tenki_year12 + 5 + 5 + 5
35770 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35780 tenki13 = tenki12 + 5
35790 tenki14 = tenki12 + 5 + 5
35800 tenki15 = tenki12 + 5 + 5 + 5
35810 tenki16 = tenki12 + 5 + 5 + 5 + 5
35820 color rgb(255,0,255)
35830 print tenki_year13;"年";tenki13;"歳"+chr$(13)
35840 print tenki_year14;"年";tenki14;"歳"+chr$(13)
35850 print tenki_year15;"年";tenki15;"歳"+chr$(13)
35860 print tenki_year16;"年";tenki16;"歳"+chr$(13)
35870 color rgb(0,0,0)
35880 print"コマンドを入れてください"+chr$(13)
35890 print"q+エンターキー:トップ画面"+chr$(13)
35900 Print"エンターキー:次へ行く"+chr$(13)
35910 print"コマンド:"
35920 key$=Input$(1)
35930 if key$=chr$(13) then goto 35280
35940 IF key$="q" then goto 7570
35950 '
35960 cls
35970 color rgb(255,255,255)
35980 print buffername$;"さんの人生の転機5"+chr$(13)
35990 color rgb(255,0,255)
36000 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
36010 tenki_year17=tenki_year16+5
36020 tenki_year18=tenki_year16+5+5
36030 tenki_year19=tenki_year16+5+5+5
36040 tenki_year20=tenki_year16+5+5+5+5
36050 tenki17=tenki16+5
36060 tenki18=tenki16+5+5
36070 tenki19=tenki16+5+5+5
36080 tenki20=tenki16+5+5+5+5
36090 print tenki_year17;"年";tenki17;"歳"+chr$(13)
36100 print tenki_year18;"年";tenki18;"歳"+chr$(13)
36110 print tenki_year19;"年";tenki19;"歳"+chr$(13)
36120 print tenki_year20;"年";tenki20;"歳"+chr$(13)
36130 color rgb(0,0,0)
36140 print"コマンドを入れてください"+chr$(13)
36150 print"トップに戻る:q+エンターキー"+chr$(13)
36160 print"最初から:エンターキー"+chr$(13)
36170 print"コマンド:"
36180 key$=Input$(1)
36190 if key$=chr$(13) then goto 34140
36200 if key$="q" then goto Main_Screen1:
36210 '改名チェック 改名候補を入力
36220 'グラフィック　領域　ここから
36230 '左側 部分
36240 cls 3:
36250 line(0,0)-(1100,60),rgb(0,0,255),bf
36260 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36270 line(0,60)-(1100,380),rgb(127,255,212),bf
36280 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36290 line(0,380)-(790,470),rgb(0,255,0),bf
36300 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36310 '中央の縦の線 ここから
36320 'line(1100,0)-(1112,370),rgb(0,0,0),b
36330 '中央の縦の線 ここまで
36340 '右側 部分
36350 line(1103,0)-(1700,60),rgb(0,0,255),bf
36360 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36370 'グラフィック 領域　ここまで
36380 '吉凶判定
36390 if buffer_K=0 then
36400 buffer_check$="○"
36410 else
36420 buffer_check$="☓"
36430 endif
36440 'Title 左側の文字
36450 'rgb(255,255,255):白
36460 color rgb(255,255,255)
36470 locate 1,0
36480 print"安斎流姓名判断 改名チェッカー"
36490 'Title 右側の文字
36500 locate size(2)-16,0
36510 print"改名候補リスト(3件まで)"
36520 '候補リストの名前部分 (右側)
36530 '1行目
36540 'locate 22,2
36550 locate size(2)-18,2
36560 color rgb(0,0,0)
36570 print "番号"
36580 'locate 26,2
36590 locate size(2)-14,2
36600 print"名前"
36610 'locate 32,2
36620 locate size(2)-8,2
36630 print"吉凶"
36640 'locate 36,2
36650 locate size(2)-4,2
36660 print"判定"
36670 '2行目
36680 select case kaimei_count
36690 case 0:
36700 'データー1件 の時
36710 kaimei_count = kaimei_count + 1
36720 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
36730 buffer_Kaimei$(0,1,0,0)=name$
36740 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36750 buffer_Kaimei$(0,0,0,1)=buffer_check$
36760 'cls
36770 color rgb(255,0,255)
36780 'locate 23,3
36790 locate size(2)-17,3
36800 print buffer_Kaimei$(1,0,0,0)
36810 'locate 25,3
36820 locate size(2)-15,3
36830 print buffer_Kaimei$(0,1,0,0)
36840 'locate 32,3
36850 locate size(2)-8,3
36860 print buffer_Kaimei$(0,0,1,0)
36870 locate size(2)-3,3
36880 print buffer_Kaimei$(0,0,0,1)
36890 case 1:
36900 'データー2件の時
36910 color rgb(255,0,255)
36920 kaimei_count = kaimei_count + 1
36930 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
36940 buffer_Kaimei$(0,2,0,0)=name$
36950 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
36960 buffer_Kaimei$(0,0,0,2)=buffer_check$
36970 'cls
36980 '1行目
36990 'locate 23,3
37000 locate size(2)-17,3
37010 print buffer_Kaimei$(1,0,0,0)
37020 'locate 25,3
37030 locate size(2)-15,3
37040 print buffer_Kaimei$(0,1,0,0)
37050 'locate 32,3
37060 locate size(2)-8,3
37070 print buffer_Kaimei$(0,0,1,0)
37080 'locate 37,3
37090 locate size(2)-3,3
37100 print buffer_Kaimei$(0,0,0,1)
37110 '2行目
37120 'locate 23,4
37130 locate size(2)-17,4
37140 print buffer_Kaimei$(2,0,0,0)
37150 'locate 25,4
37160 locate size(2)-15,4
37170 print buffer_Kaimei$(0,2,0,0)
37180 'locate 32,4
37190 locate size(2)-8,4
37200 print buffer_Kaimei$(0,0,2,0)
37210 'locate 37,4
37220 locate size(2)-3,4
37230 print buffer_Kaimei$(0,0,0,2)
37240 case 2:
37250 'データー3件の時
37260 '1
37270 color rgb(255,0,255)
37280 kaimei_count=kaimei_count+1
37290 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37300 buffer_Kaimei$(0,3,0,0)=name$
37310 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37320 buffer_Kaimei$(0,0,0,3)=buffer_check$
37330 '2  1行目
37340 'locate 23,3
37350 locate size(2)-17,3
37360 print buffer_Kaimei$(1,0,0,0)
37370 'locate 25,3
37380 locate size(2)-15,3
37390 print buffer_Kaimei$(0,1,0,0)
37400 'locate 32,3
37410 locate size(2)-8,3
37420 print buffer_Kaimei$(0,0,1,0)
37430 'locate 37,3
37440 locate size(2)-3,3
37450 print buffer_Kaimei$(0,0,0,1)
37460 '3  2行目
37470 'locate 23,4
37480 locate size(2)-17,4
37490 print buffer_Kaimei$(2,0,0,0)
37500 'locate 25,4
37510 locate size(2)-15,4
37520 print buffer_Kaimei$(0,2,0,0)
37530 'locate 32,4
37540 locate size(2)-8,4
37550 print buffer_Kaimei$(0,0,2,0)
37560 'locate 37,4
37570 locate size(2)-3,4
37580 print buffer_Kaimei$(0,0,0,2)
37590 '4  3行目
37600 'locate 23,5
37610 locate size(2)-17,5
37620 print buffer_Kaimei$(3,0,0,0)
37630 'locate 25,5
37640 locate size(2)-15,5
37650 print  buffer_Kaimei$(0,3,0,0)
37660 'locate 32,5
37670 locate size(2)-8,5
37680 print buffer_Kaimei$(0,0,3,0)
37690 'locate 37,5
37700 locate size(2)-3,5
37710 print buffer_Kaimei$(0,0,0,3)
37720 case 3:
37730 'データー4件の時
37740 '1
37750 '2
37760 '3
37770 '4
37780 '5
37790 end select
37800 '説明部分　左側
37810 locate 0,2
37820 color rgb(255,0,255)
37830 print"思いついた候補の名前"
37840 locate 0,4
37850 print"(ニックネーム　or 会社名)を"
37860 locate 0,6
37870 print"10文字以内で入力してください"
37880 color rgb(0,0,0)
37890 locate 0,8
37900 if kaimei_count = 1 or kaimei_count = 2 then
37910 Input"名前:",kouho_name$
37920 name$=kouho_name$
37930 n=len(name$)
37940 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 35560
37950 'else
37960 if n =< 10 then goto 30680
37970 endif
37980 if kaimei_count = 3 then
37990 Input"エンターキーを押してください",key$
38000 if key$ = "" then
38010 'データーを初期化して、トップ画面に行く
38020 '1.データーを初期化
38030 kaimei_count = 0
38040 for i=1 to 3
38050 buffer_Kaimei$(i,0,0,0) = ""
38060 buffer_Kaimei$(0,i,0,0) = ""
38070 buffer_Kaimei$(0,0,i,0) = ""
38080 buffer_Kaimei$(0,0,0,i) = ""
38090 next i
38100 '2.トップ画面に行く
38110 goto 7570
38120 endif
38130 endif
38140 '霊遺伝姓名学 ここから
38150 'グラフィック領域　ここから
38160 '性別入力
38170 Reiden_Top_Input_Sextype:
38180 cls 3
38190 No=1:y=0:key$="":bg=0
38200 sp_on 1,1:sp_put 1,(10,200),1,0
38210 'Line1
38220 line (0,0)-(850,60),rgb(0,0,255),bf
38230 line (0,0)-(847,57),rgb(0,255,0),b
38240 'Line 2
38250 line (0,63)-(853,537),rgb(127,255,212),bf
38260 line (0,60)-(850,540),rgb(0,0,0),b
38270 'Line 3
38280 line (0,540)-(850,630),rgb(0,255,0),bf
38290 line (0,543)-(853,633),rgb(0,0,255),b
38300 'グラフィック領域　ここまで
38310 '音声表示
38320 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38330 '性別変数:sex_type=0
38340 '文字色： 白
38350 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38360 '文字色：赤
38370 color rgb(255,0,255)
38380 print"占う人の性別の番号を入れてください" + chr$(13)
38390 print" :1.女 性" + chr$(13)
38400 print" :2.男 性" + chr$(13)
38410 print" :3.前の画面に戻る" + chr$(13)
38420 print" :4.終 了" + chr$(13)
38430 color rgb(0,0,0)
38440 print "番号:"
38450 Reiden_Top_Input_Sextype2:
38460 y=0:key$="":bg=0
38470 while (key$<>chr$(30) and bg<>2 and y<>1 and y<> -1 and key$<>chr$(13) and key$<>chr$(31))
38480 key$=inkey$
38490 y=stick(1)
38500 bg=strig(1)
38510 pause 2.50*100
38520 wend
38530 if (key$=chr$(31) or y=1) then
38540 '
38550 select case No
38560 case 1:
38570 No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38580 case 2:
38590 No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38600 case 3:
38610 No=4:sp_on 4,1:sp_on 3,0:beep:sp_put 4,(10,500),4,0:goto Reiden_Top_Input_Sextype2:
38620 case 4:
38630 No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38640 end select
38650 endif
38660 if (bg=2 or key$=chr$(13)) then
38670 select case No
38680 case 1:
38690 sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38700 case 2:
38710 sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38720 case 3:
38730 sp_on 3,0:goto Main_Screen1:
38740 case 4:
38750 sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
38760 end select
38770 endif
38780 '2:男性の場合 名前を入力
38790 '男性の性別:sex_type=2
38800 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
38810 '1:女性の場合 既婚の場合、旧姓で入力
38820 '女性の性別:sex_type=1
38830 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
38840 '3:終了処理
38850 'if val(No$)=4 then cls 3:end
38860 'if val(No$)=3 then goto Main_Screen1:
38870 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
38880 '１．男性の場合の名前入力
38890 '描画領域　ここから
38900 ReiIden_Input_male:
38910 cls 3:init"kb:2"
38920 'Line 1 Title
38930 line (0,0)-(850,60),rgb(0,0,255),bf
38940 line (0,0)-(850,57),rgb(0,255,0),b
38950 'Line2 Input name
38960 line (0,60)-(850,300),rgb(0,255,0),bf
38970 line (0,60)-(850,303),rgb(0,0,255),b
38980 '描画領域 ここまで
38990 '文字色：白
39000 color rgb(255,255,255)
39010 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
39020 '文字色：黒
39030 color rgb(0,0,0)
39040 print "名前の姓の部分を入れてください" + chr$(13)
39050 Input"名前(姓の部分):",name1$
39060 '名の入力部分
39070 cls
39080 color rgb(255,255,255)
39090 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
39100 color rgb(0,0,0)
39110 print "名前の名の部分を入れてください"+chr$(13)
39120 Input"名前(名の部分):",name2$:goto check:
39130 '2.女性の場合　既婚か未婚か確認する
39140 '2-2-1女性の姓の入力
39150 'グラフィック領域　ここから
39160 ReiIden_Input_female:
39170 cls 3:init"kb:2"
39180 'Line1 Title
39190 line (0,0)-(850,60),rgb(0,0,255),bf
39200 line (0,0)-(850,57),rgb(0,255,0),b
39210 'Line 2 入力欄
39220 line (0,60)-(850,360),rgb(0,255,0),bf
39230 line (0,60)-(850,357),rgb(0,0,255),b
39240 'Line 2 入力欄(名前入力)
39250 'グラフィック領域 ここまで
39260 cls:init"kb:2"
39270 color rgb(255,255,255)
39280 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39290 color rgb(255,0,0)
39300 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39310 color rgb(0,0,0)
39320 print "名前の姓の部分を入れてください"+chr$(13)
39330 Input "名前(姓の部分):",name3$
39340 '2-2-2女性の名の入力
39350 cls:init"kb:2"
39360 color rgb(255,255,255)
39370 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39380 color rgb(0,0,0)
39390 print "名前の名の部分を入れてください"+chr$(13)
39400 Input "名前(名の部分):",name4$
39410 '計算領域　ここから
39420 check:
39430 '苗字の画数:buffer_name1_count
39440 'name1$,name2$:男性
39450 if sex_type = 1 then
39460 'sex_type=1 :女性のとき
39470 buf_male_female_name1$=name3$
39480 buf_male_female_name2$=name4$
39490 endif
39500 if sex_type = 2 then
39510 'sex_type=2 :男性のとき
39520 buf_male_female_name1$=name1$
39530 buf_male_female_name2$=name2$
39540 endif
39550 buffer_name1_count=len(buf_male_female_name1$)
39560 buffer_name2_count=len(buf_male_female_name2$)
39570 select case buffer_name1_count
39580 'AとBを求める
39590 case 1:
39600 '1.苗字の画数が1つのとき
39610 'A:霊数 1
39620 A=1
39630 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39640 B = char_count(buf_name1$)
39650 case 2:
39660 '2.苗字の画数が2つのとき
39670 '2-1:苗字の1文字目:buf_name1$
39680 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39690 '2-2:苗字の2文字目:buf_name2$
39700 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
39710 A=char_count(buf_name1$)
39720 B=char_count(buf_name2$)
39730 'B=char_count(buf_name2$)
39740 case 3:
39750 '3.苗字の画数が3つの時
39760 '3-1:苗字の1文字目:buf_name1$
39770 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39780 '3-2:苗字が3つのときの2つ目の文字をもとめる
39790 '3-2:苗字の2つ目:buf_name2$
39800 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39810 '3-3:苗字が3つのときの3文字目
39820 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39830 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39840 if buf_name2$="々" then
39850 A = char_count(buf_name1$) * 2
39860 B = char_count(buf_name3$)
39870 else
39880 A = char_count(buf_name1$) + char_count(buf_name2$)
39890 B = char_count(buf_name3$)
39900 endif
39910 '姓が4文字
39920 case 4:
39930 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39940 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39950 buf_name3$=Mid$(buf_male_female_name1$,3,1)
39960 buf_name4$=Mid$(buf_male_female_name1$,4,1)
39970 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
39980 B=char_count(buf_name4$)
39990 case else:
40000 end select
40010 '2.C,Dを求める
40020 select case buffer_name2_count
40030 case 1:
40040 '名が1文字の時
40050 'CとDを求める
40060 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40070 C = char_count(buff_name1$)
40080 'D=1:霊数
40090 D = 1
40100 case 2:
40110 '名が2文字の時
40120 'CとDを求める
40130 '名の1文字目:buff_name1$
40140 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40150 '名の2文字目:buff_name2$
40160 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40170 C = char_count(buff_name1$)
40180 D = char_count(buff_name2$)
40190 case 3:
40200 '名が3文字の時
40210 'CとDを求める
40220 '名の1文字目:buff_name1$
40230 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40240 '名の2文字目:buff_name2$
40250 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40260 if buff_name2$ = "々" then
40270 buff_name2$ = buff_name1$
40280 endif
40290 '名の3文字目:buff_name3$
40300 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40310 C = char_count(buff_name1$)
40320 D = char_count(buff_name2$) + char_count(buff_name3$)
40330 end select
40340 '1.先祖運を求める
40350 buffer_Senzo = A + B
40360 '2.性格運を求める
40370 buffer_Seikaku = B + C
40380 '3.愛情運を求める
40390 buffer_Aijyou = C + D
40400 '4.行動運を求める
40410 buffer_Kouzou = A + D
40420 'if buffer_Kouzou=10 then
40430 'endif
40440 '1.生数を求める
40450 func buf_Seisu(buffer)
40460 if buffer < 10 then
40470 seisu=buffer
40480 endif
40490 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40500 seisu = 0
40510 endif
40520 if buffer > 10 then
40530 if buffer=20 then
40540 seisu = 0
40550 else
40560 n = buffer - (fix(buffer / 10) * 10)
40570 seisu = n
40580 endif
40590 endif
40600 endfunc seisu
40610 func buf_Wasu(buffer)
40620 buf_wasu = 0:wasu = 0
40630 if buffer < 10 then
40640 '
40650 wasu = buffer:goto wasu:
40660 else
40670 if buffer = 10 then
40680 wasu = 1:goto wasu:
40690 else
40700 if buffer > 10  then
40710 if buffer=19 or buffer=28 or buffer=37 then
40720 wasu=1:goto wasu:
40730 else
40740 if buffer = 29 then
40750 wasu=2:goto wasu:
40760 'endif
40770 else
40780 a = fix(buffer / 10)
40790 b = buffer - a * 10
40800 c = a + b
40810 if c = 19 or c=28 then
40820 wasu=1
40830 '
40840 else
40850 wasu=c
40860 endif
40870 endif
40880 endif
40890 endif
40900 endif
40910 if c < 10 then
40920 wasu = c
40930 'endif
40940 endif
40950 else
40960 if buffer=19 or buffer=28 then
40970 wasu = 1
40980 endif
40990 endif
41000 wasu:
41010 buf_wasu=wasu
41020 endfunc buf_wasu
41030 func buf_kyoudai$(buf_sex_type,buf_Sa$)
41040 select case buf_sex_type
41050 '1.女性の場合
41060 case 1:
41070 if (buf_Sa$ = "連続") then
41080 buffer_kyoudai$="長女"
41090 endif
41100 if (buf_Sa$ = "1差") then
41110 buffer_kyoudai$="次女"
41120 endif
41130 if (buf_Sa$ = "2差") then
41140 buffer_kyoudai$="三女"
41150 endif
41160 if (buf_Sa$ = "3差") then
41170 buffer_kyoudai$="四女"
41180 endif
41190 if (buf_Sa$ = "4差") then
41200 buffer_kyoudai$="五女"
41210 endif
41220 '男性の場合
41230 case 2:
41240 if (buf_Sa$ = "連続") then
41250 buffer_kyoudai$="長男"
41260 endif
41270 if (buf_Sa$ = "1差") then
41280 buffer_kyoudai$="次男"
41290 endif
41300 if (buf_Sa$ = "2差") then
41310 buffer_kyoudai$="三男"
41320 endif
41330 if (buf_Sa$ = "3差") then
41340 buffer_kyoudai$="四男"
41350 endif
41360 if (buf_Sa$ = "4差") then
41370 buffer_kyoudai$="五男"
41380 endif
41390 case else:
41400 end select
41410 kyoudai$=buffer_kyoudai$
41420 endfunc kyoudai$
41430 '1.タテ型
41440 '1.同じ数字が2組ある場合
41450 func Tate_gata$()
41460 if Senzo_wasu = Seikaku_wasu  then
41470 if Aijyou_wasu - Seikaku_wasu > 1 then
41480 Spirit_type$="タテ型"
41490 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41500 Sa$ = str$(Sa_count) + "差"
41510 else
41520 Spirit_type$="タテ型"
41530 Sa$="連続"
41540 endif
41550 endif
41560 endfunc
41570 '2. ナナメ型
41580 '同じ数字が2組ある場合
41590 func Naname_gata$()
41600 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
41610 Spirit_type$="斜め型"
41620 endif
41630 if Seikaku_wasu - Senzo_wasu > 1 then
41640 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
41650 Sa$=str$(Sa_count)+" 差"
41660 else
41670 Sa$="連続"
41680 endif
41690 endfunc
41700 '3.表十字型
41710 '同じ数字が2組ある場合
41720 func Omote_jyuji_gata1$()
41730 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
41740 Spirit_type$ = "表十字型"
41750 endif
41760 if Senzo _wasu - Seikaku_wasu > 1 then
41770 Sa_count = Senzo_wasu - Seikaku_wasu - 1
41780 else
41790 if Senzo_wasu  -  Seikaku_wasu = 1  then
41800 Sa$="連続"
41810 endif
41820 endif
41830 endfunc
41840 '3-1.表十字型(ヨコ系)
41850 func Omote_jyuji_gata_yoko$()
41860 endfunc
41870 '3-2.表十字型(上下型)
41880 func Omote_jyuji_gata_jyouge()
41890 endfunc
41900 '4.ヨコ型
41910 func Yoko_gata$()
41920 endfunc
41930 '5.上下型
41940 func Jyouge_gata$()
41950 endfunc
41960 '6.1.中広型(タテ系)
41970 func Nakahiro_Tate$()
41980 endfunc
41990 '6.2中広型(ナナメ系)
42000 func Nakahiro_Naname$()
42010 endfunc
42020 '6.3中広型(表十字型)
42030 func Nakahiro_Omotejyuji$()
42040 endfunc
42050 '7.1.中一差(タテ系)
42060 func Chuissa_Tate$()
42070 endfunc
42080 '7.2中一差(ナナメ系)
42090 func Chuissa_Naname$()
42100 endfunc
42110 '8.1.中二差(タテ系)
42120 func Chunissa_Tate$()
42130 endfunc
42140 '8.2.中二差(ナナメ系)
42150 '9.1.順序型(タテ上下系)
42160 func Chunissa_Tate_jyouge$()
42170 endfunc
42180 '9.2.順序型(タテ、ヨコ系)
42190 func Jyunjyo_Tate_yoko$()
42200 endfunc
42210 '9.3.順序型(ナナメ、上下系)
42220 func Jyunjyo_Naname_jyouge$()
42230 endfunc
42240 '9.4.順序型(ナナメ、ヨコ系)
42250 '10.1.中順序型(ヨコ系)
42260 func Nakajyunjyo_yoko$()
42270 endfunc
42280 '10.2.中順序型(上下系)
42290 func Nakajyunjyo_jyouge$()
42300 endfunc
42310 '11.1.隔離型(タテ、上下系)
42320 func Kakuri_tate_jyouge$()
42330 endfunc
42340 '11.2.隔離型(タテ、ヨコ系)
42350 func Kakuri_tate_yoko$()
42360 endfunc
42370 '11.3.隔離型(ナナメ、上下系)
42380 func Kakuri_Naname_jyouge$()
42390 endfunc
42400 '11.4.隔離型(ナナメ、ヨコ系)
42410 func Kakuri_Naname_yoko$()
42420 endfunc
42430 '11.5.隔離型(タテ系)
42440 func Kakuri_tate$()
42450 endfunc
42460 '11.6.隔離型(ナナメ系)
42470 func Kakuri_naname$()
42480 endfunc
42490 '11.7.隔離型(上下、ヨコ系)
42500 func Kakuri_Jyouge_yoko$()
42510 endfunc
42520 Spirit_type$="No data"
42530 '1.先祖運　和数
42540 Senzo_wasu = buf_Wasu(buffer_Senzo)
42550 '2.先祖運 生数
42560 Senzo_seisu = buf_Seisu(buffer_Senzo)
42570 '3.性格運 和数
42580 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
42590 '4.性格運 生数
42600 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
42610 '5.愛情運 和数
42620 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
42630 '6.愛情運 生数
42640 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
42650 '7.行動運 和数
42660 Koudou_wasu = buf_Wasu(buffer_Kouzou)
42670 '8.行動運 生数
42680 Koudou_seisu = buf_Seisu(buffer_Kouzou)
42690 '計算領域 ここまで
42700 '描画領域　ここから
42710 Result_ReiIden1:
42720 cls 3:key$ = "":bg = 0:init "kb:4"
42730 'Title
42740 line (0,0)-(850,60),rgb(0,0,255),bf
42750 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
42760 'name
42770 line (0,60)-(850,165),rgb(0,255,0),bf
42780 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
42790 '生数、和数
42800 line (0,165)-(850,550),rgb(125,255,212),bf
42810 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
42820 'プッシュメッセージ
42830 line (0,550)-(850,650),rgb(0,255,0),bf
42840 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
42850 '描画領域　ここまで
42860 color rgb(255,255,255)
42870 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
42880 color rgb(0,0,0)
42890 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
42900 color rgb(255,0,255)
42910 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
42920 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
42930 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
42940 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
42950 talk "診断結果１です、あなたのわすうとせいすうです。"
42960 color rgb(0,0,0)
42970 print"エンターキーを押してください"
42980 'key$=Input$(1)
42990 while (bg <> 2 and key$ <> chr$(13))
43000 key$=inkey$
43010 bg=strig(1)
43020 pause 2.50*100
43030 wend
43040 if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
43050 '描画領域　ここから
43060 Result_ReiIden2:
43070 cls 3:init"kb:4"
43080 'Title Color:青
43090 line (0,0)-(860,60),rgb(0,0,255),bf
43100 'Title 枠
43110 line (0,0)-(860,57),rgb(255,0,255),b
43120 'Message
43130 line (0,60)-(860,650),rgb(127,255,212),bf
43140 'Message 枠
43150 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
43160 '
43170 '描画領域　ここまで
43180 color rgb(255,255,255)
43190 print "霊遺伝姓名 診断結果2/3" + chr$(13)
43200 '十二運の基礎運
43210 '1.四大主流型
43220 'パターン１ 同じ数字の場合
43230 '1.オール同数化 全部同じ
43240 '1-if
43250 sa_count=0
43260 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
43270 Spirit_type$ = "オール同数化"
43280 Sa$="3差"
43290 else
43300 'パターン１ 同じ数字2つの場合
43310 '2.タテ型
43320 '数字が２つ同じ
43330 '2-if
43340 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43350 Spirit_type$ = "タテ型"
43360 '2.タテ型　1
43370 if Koudou_wasu - Senzo_wasu = 1 then
43380 Sa$="連続"
43390 else
43400 '2.タテ型　2
43410 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43420 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43430 Sa$=str$(Sa_count) + "差"
43440 endif
43450 endif
43460 endif
43470 endif
43480 '2.タテ型　3
43490 '1.type
43500 'Spirit_type$ = "四大主流型 タテ型"
43510 '3.斜め型
43520 '数字が２つ同じ
43530 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
43540 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
43550 Sa$="連続"
43560 else
43570 '先祖＝行動　性格運=愛情運
43580 '3-if
43590 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
43600 Spirit_type$="斜め型"
43610 '3.斜め型 1
43620 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
43630 Sa$ = "連続"
43640 else
43650 if (Seikaku_wasu - Koudou_wasu) < 1 then
43660 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
43670 endif
43680 endif
43690 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
43700 Sa_count = 3
43710 Sa$ = str$(Sa_count - 1) + "差"
43720 else
43730 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
43740 Sa_count = Senzo_wasu - Seikaku_wasu
43750 Sa$ = str$(Sa_count-1) + "差"
43760 endif
43770 endif
43780 endif
43790 'Spirit_type$ = str$(Sa_count) + "差"
43800 'endif
43810 'endif
43820 '3-if
43830 endif
43840 '3.斜め型 2
43850 '3.斜め型 3
43860 '数字が２つ同じ
43870 '表十字型
43880 '先祖運＝愛情運　　行動運＝性格運
43890 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43900 Spirit_type$="表十字型"
43910 Sa_coun = Senzo_wasu - Seikaku_wasu
43920 if Sa_count > 1 then
43930 Sa$ = str$(Sa_count) + "差"
43940 else
43950 if Sa_count = 1 then
43960 Sa$ = "連続"
43970 endif
43980 endif
43990 endif
44000 'endif
44010 '数字が２つ同じ
44020 '表十字型(横型)
44030 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
44040 Spirit_type$="表十字型(ヨコ型)"
44050 'Sa$を後で書く
44060 endif
44070 '数字が２つ同じ
44080 '表十字型(上下型)
44090 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
44100 Spirit_type$="表十字型(上下型)"
44110 'Sa$を後で書く
44120 endif
44130 'ヨコ型
44140 if Koudou_wasu = Seikaku_wasu then
44150 n=abs(Senzo_wasu - Seikaku_wasu)
44160 n2 = abs(Aijyou_wasu-Seikaku_wasu)
44170 Spirit_type$="ヨコ型"
44180 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
44190 Sa$="連続"
44200 endif
44210 if n = n2 then
44220 if n > 1 then
44230 Sa_count = n - 1
44240 Sa$=str$(Sa_count)+"差"
44250 else
44260 Sa_Count = abs(n - n2)
44270 if Sa_Count > 1 then
44280 Sa$ = str$(Sa_Count) + "差"
44290 endif
44300 endif
44310 endif
44320 endif
44330 '上下型
44340 '同じ数字が1組みある場合
44350 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44360 Spirit_type$ = "上下型"
44370 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44380 'n = abs(Koudou_wasu-Senzo_wasu)
44390 'n2= abs(Seikaku_wasu-Senzo_wasu)
44400 'buf=min(n,n2)
44410 'Sa$=str$(buf - 1) + "差"
44420 Sa$="連続"
44430 endif
44440 endif
44450 '中広（なかこう)型(斜め系)
44460 '連続した数字が2組みある場合
44470 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
44480 'n=Min(Senzo_wasu ,Koudou_wasu)
44490 'n2=Max(Seikaku_wasu , Aijyou_wasu)
44500 'Spirit_type$="中広型（斜め系）"
44510 'Sa_count = n - n2 -1
44520 'if Sa_count > 1 then
44530 'Sa$ = str$(Sa_count-1) + "差"
44540 'else
44550 'if Sa_count = 1 then
44560 'Sa$="連続"
44570 'endif
44580 'endif
44590 'endif
44600 '中広（なかこう)型(表十字型)
44610 '連続した数字が2組みある場合
44620 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
44630 Spirit_type$="中広（なかこう)型(表十字型)"
44640 n=Min(Koudou_wasu , Seikaku_wasu)
44650 n2=Max(Aijyou_wasu , Senzo_wasu)
44660 Sa_count = n - n2
44670 if Sa_count > 1 then
44680 Sa$ = str$(Sa_count - 1) + "差"
44690 else
44700 if Sa_count = 1 then
44710 Sa$ = "連続"
44720 endif
44730 endif
44740 endif
44750 '中一差（タテ系)
44760 '連続した数字が2組みある場合
44770 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
44780 'Spirit_type$="中一差（タテ系)"
44790 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
44800 n = Max(Koudou_wasu,Aijyou_wasu)
44810 n2 = Max(Senzo_wasu,Seikaku_wasu)
44820 else
44830 n = Max(Koudou_wasu,Aijyou_wasu)
44840 n2 = Min(Senzo_wasu,Seikaku_wasu)
44850 endif
44860 Sa_count2 = abs(n2 - n) - 1
44870 if Sa_count2 >= 0 then
44880 select case Sa_count2
44890 case 1:
44900 '中一差（タテ系)
44910 Sa$ = "連続"
44920 Spirit_type$="中一差型（タテ系)*"
44930 case 2:
44940 '中二差型（タテ系)
44950 Sa$ = "1差"
44960 Spirit_type$="中二差型（タテ系)"
44970 case 3:
44980 '中広（なかこう)型(タテ系)
44990 Sa$ = "2差"
45000 Spirit_type$="中三差型（タテ系)"
45010 case 4:
45020 Sa$ = "3差"
45030 Spirit_type$="中広型(タテ系)"
45040 case  else:
45050 cls 3:print"例外に入りました"
45060 end select
45070 '
45080 else
45090 cls 3:print"例外に入りました"
45100 endif
45110 endif
45120 'endif
45130 '中一差（斜め系)
45140 '連続した数字が2組みある場合
45150 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
45160 n = Min(Koudou_wasu,Senzo_wasu)
45170 n2 = Max(Aijyou_wasu,Seikaku_wasu)
45180 Sa_count = n - n2 - 1
45190 select case Sa_count
45200 case 1:
45210 '中一差（斜め系)
45220 '連続した数字が2組みある場合
45230 Sa$="1差"
45240 Spirit_type$="中一差（斜め系)"
45250 case 2:
45260 '中二差（斜め系)
45270 '連続した数字が2組みある場合
45280 Sa$="2差"
45290 Spirit_type$="中二差（斜め系)"
45300 case 3:
45310 Sa$="3差"
45320 Spirit_type$="中広型（斜め系）"
45330 case else:
45340 end select
45350 endif
45360 '順序型(タテ、上下系)
45370 '数字が４つ連続してる場合
45380 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45390 Spirit_type$="順序型(タテ、上下系)"
45400 Sa$="連続"
45410 endif
45420 '中順序型(ヨコ系)
45430 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45440 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45450 Spirit_type$="中順序型(ヨコ系)"
45460 Sa$="1差"
45470 else
45480 '順序型(タテ、ヨコ系)
45490 '数字が４つ連続してる場合
45500 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45510 Spirit_type$="順序型(タテ、ヨコ系)"
45520 Sa$="連続"
45530 endif
45540 endif
45550 endif
45560 '中順序型(上下系)
45570 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
45580 n=Max(Senzo_wasu,Aijyou_wasu)
45590 n2=Min(Koudou_wasu,Seikaku_wasu)
45600 Sa_count = n2 - n
45610 if Sa_count > 1 then
45620 Spirit_type$="中順序型(上下系)"
45630 Sa$ = Str$(Sa_count) + "差"
45640 else
45650 '順序型(斜め、上下系)
45660 '数字が４つ連続してる場合
45670 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
45680 Spirit_type$ = "順序型(斜め、上下系)"
45690 Sa$="連続"
45700 endif
45710 endif
45720 endif
45730 '順序型(斜め、ヨコ系)
45740 '数字が４つ連続してる場合
45750 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
45760 Spirit_type$="順序型(斜め、ヨコ系)"
45770 Sa$="連続"
45780 endif
45790 '隔離型(タテ、上下系)
45800 '数字が1つおきに飛んでる場合
45810 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
45820 Spirit_type$="隔離型(タテ、上下系)"
45830 Sa$="1差"
45840 endif
45850 '隔離型(タテ、ヨコ系)
45860 '数字が1つおきに飛んでる場合
45870 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
45880 Spirit_type$="隔離型(タテ、ヨコ系)"
45890 Sa$="1差"
45900 endif
45910 '隔離型(斜め、上下系)
45920 '数字が1つおきに飛んでる場合
45930 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
45940 Spirit_type$="隔離型(斜め、上下系)"
45950 Sa$="1差"
45960 endif
45970 '隔離型(斜め、ヨコ系)
45980 '数字が1つおきに飛んでる場合
45990 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
46000 Spirit_type$="隔離型(斜め、ヨコ系)"
46010 Sa$="1差"
46020 endif
46030 '隔離型(タテ系)
46040 '数字が2つおきに飛んでる場合
46050 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
46060 Spirit_type$="隔離型(タテ系)"
46070 Sa$="1差"
46080 endif
46090 '隔離型(斜め系)
46100 '数字が2つおきに飛んでる場合
46110 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
46120 Spirit_type$="隔離型(斜め系)"
46130 Sa$="1差"
46140 endif
46150 '隔離型(上下、ヨコ系)
46160 '数字が2つおきに飛んでる場合
46170 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
46180 Spirit_type$="隔離型(上下、ヨコ系)"
46190 Sa$="1差"
46200 'endif
46210 endif
46220 'ここに移動
46230 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
46240 bg=0:key$="":init"kb:4"
46250 color rgb(255,0,255)
46260 print "●十二の基礎運" + chr$(13)
46270 print Spirit_type$ + Sa$;chr$(13)
46280 print "きょうだい：";Kyoudai$ + chr$(13)
46290 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46300 color rgb(0,0,0)
46310 print"前の画面:ｂキー"+chr$(13)
46320 print"保存して、もう一度やる：スペースキー"+chr$(13)
46330 print"終了:エンターキー"+chr$(13)
46340 'key$ = Input$(1)
46350 while (key$ <> chr$(13) and bg <> 2)
46360 key$=inkey$
46370 bg=strig(1)
46380 pause 2.50*100
46390 wend
46400 if (key$ = chr$(13) or bg=2) then
46410 goto Main_Screen1:
46420 else
46430 '保存して スペースキーでもう一度占う
46440 if key$ = " " then
46450 goto Save_Data1:
46460 else
46470 if key$="b" then
46480 goto Result_ReiIden1:
46490 endif
46500 endif
46510 endif
46520 'ファイル保存 占いデーターを一時保存
46530 Save_Data1:
46540 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
46550 'print#3は末尾は、セミコロンはいらない
46560 '末尾にセミコロンをつけると改行しない
46570 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
46580 ui_msg "保存しました"
46590 close #3
46600 goto Reiden_Top_Input_Sextype:
46610 '個人データーリスト  *parsonal_data
46620 Parsonal_data_top:
46630 cls 3:No=0:Key$="":bg=0:y=0
46640 sp_on 0,1:sp_put 0,(10,100),0,0
46650 line(0,0)-(800,60),rgb(0,0,255),bf
46660 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
46670 line (0,60)-(800,440),rgb(127,255,212),bf
46680 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
46690 line (0,440)-(800,670),rgb(0,255,0),bf
46700 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
46710 color rgb(255,255,255)
46720 print"◎個人データーリスト" + chr$(13)
46730 color rgb(255,0,255)
46740 print " :1.霊遺伝姓名学リスト" + chr$(13)
46750 print " :2.霊遺伝姓名学登録件数" + chr$(13)
46760 print " :3.霊遺伝姓名学データー検索"+chr$(13)
46770 print " :4.メインメニューへ行く"+chr$(13)
46780 color rgb(0,0,0):locate 0,10
46790 print "1.霊遺伝姓名学リストを選択"
46800 Parsonal_data_top2:
46810 key$="":bg=0:y=0
46820 while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
46830 key$=inkey$
46840 bg=strig(1)
46850 y=stick(1)
46860 pause 2.50*100
46870 wend
46880 '*****************************************************
46890 '1.下のカーソル ここから 2024.10
46900 '*****************************************************
46910 if (key$=chr$(31) or y=1) then
46920 select case No
46930 case 0:
46940 No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
46950 case 1:
46960 No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
46970 case 2:
46980 No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
46990 case 3:
47000 No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47010 end select
47020 endif
47030 '******************************************************
47040 '1.下のカーソル　 ここまで 2024.10
47050 '******************************************************
47060 '******************************************************
47070 '2.上のカーソル　 ここから 2024.10
47080 '******************************************************
47090 if (y=-1 or key$=chr$(30)) then
47100 select case No
47110 case 0:
47120 No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
47130 case 1:
47140 No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
47150 case 2:
47160 No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
47170 case 3:
47180 No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
47190 end select
47200 endif
47210 '******************************************************
47220 '2.上のカーソル　ここまで 2024.10
47230 '******************************************************
47240 '3.決定ボタン　ここから  2024.10
47250 '******************************************************
47260 if (bg=2 or key$=chr$(13)) then
47270 select case No
47280 case 0:
47290 sp_on 0,0:goto Parsonal_list1:
47300 case 1:
47310 sp_on 1,0:goto Entry_list_count:
47320 case 2:
47330 sp_on 2,0:goto Parsonal_list_Search:
47340 case 3:
47350 sp_on 3,0:goto Main_Screen1:
47360 end select
47370 endif
47380 '******************************************************
47390 '3.決定ボタン　ここまで 2024.10
47400 '******************************************************
47410 'if No = 1 then goto Parsonal_list1:
47420 'if No = 2 then goto Entry_list_count:
47430 'if No = 4 then goto Main_Screen1:
47440 'if No = 3 then goto Parsonal_list_Search:
47450 'if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
47460 '登録件数
47470 Entry_list_count:
47480 N = 0:bg=0:key$="":init"kb:4"
47490 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
47500 'N=1
47510 while eof(5) = 0
47520 line input #5,line$:N = N + 1
47530 'if line$="大吉数" then
47540 'continue:N = N - 1
47550 'else
47560 'N = N + 1
47570 'endif
47580 wend
47590 'c=N
47600 close #5
47610 c=N
47620 cls 3
47630 line (0,0)-(680,60),rgb(0,0,255),bf
47640 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
47650 line (0,60)-(680,180),rgb(127,255,212),bf
47660 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
47670 LINE (0,180)-(680,280),rgb(0,255,0),bf
47680 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
47690 color rgb(255,255,255)
47700 print "◎霊遺伝姓名学登録件数"+chr$(13)
47710 color rgb(255,0,255)
47720 'N=B-1:C=N
47730 print "登録件数は";c;"件です"+chr$(13)
47740 color rgb(0,0,0)
47750 print "エンターキーを押してください"+chr$(13)
47760 while (key$ <> chr$(13) and bg <> 2)
47770 key$=inkey$
47780 bg=strig(1)
47790 pause 2.50*100
47800 wend
47810 'a$ = Input$(1)
47820 if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
47830 'パーソナルリスト ここから
47840 Parsonal_list1:
47850 cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
47860 'Title
47870 line (0,0)-(850,60),rgb(0,0,255),bf
47880 line (0,0)-(850,57),rgb(255,255,255),b
47890 '個人名
47900 line (0,60)-(850,165),rgb(0,255,0),bf
47910 line (0,63)-(850,162),rgb(255,0,255),b
47920 '数値リスト
47930 line (0,165)-(850,550),rgb(255,212,212),bf
47940 line (0,168)-(850,547),rgb(0,0,255),b
47950 'ボタンメッセージ
47960 line (0,550)-(850,730),rgb(0,255,0),bf:
47970 line (0,553)-(853,733),rgb(255,0,255),b
47980 'Parsonal_list2:
47990 'color rgb(255,255,255):
48000 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
48010 'n=0
48020 open "config/Parsonal_data/parsonal_data.dat" for input as #7
48030 'bN=0
48040 while eof(7)=0
48050 'input #6,lines2$
48060 'close #6
48070 '
48080 line input #7,lines$:bN = bN + 1
48090 'if lines$ = "大吉数" then
48100 'continue:bN = bN - 1
48110 'else
48120 'bN = bN + 1
48130 'endif
48140 wend
48150 'buf_name1$(i)=Mid$(lines$,4,4)
48160 'next i
48170 'wend
48180 close #7
48190 'a=0
48200 open "config/Parsonal_data/parsonal_data.dat" for input as #8
48210 'while eof(8)=0
48220 for i=0 to (bN * 10) -1
48230 input #8,buflines$(i)
48240 'buflines$(i) = line$
48250 'a  =  a  +  1
48260 Next i
48270 'wend
48280 close #8
48290 Parsonal_list2:
48300 'while (n <= bN*10)
48310 'while (bg <> 2 and bg2 <> 2 )
48320 'bg = strig(1)
48330 'bg2 = strig(0)
48340 'n=((n+1) Mod bN)
48350 'pause 2.5*1000
48360 'wend
48370 'while n <= bN * 10
48380 'if bg2= 2 then goto Main_Screen1:
48390 'if bg = 2 then 'n=((n+1) Mod bN)
48400 'n=((n+1) Mod bN)
48410 'endif
48420 'if bg2 = 2 then goto Main_Screen1:
48430 while n <= bN * 10
48440 'Parsonal_list2:
48450 cls
48460 'if bg=2 then n=((n+1) Mod bN)
48470 color rgb(255,255,255)
48480 print "霊遺伝姓名学 リスト" + chr$(13)
48490 '性別を出す
48500 sex$ = show_sex_type$(buflines$((10*n) + 1))
48510 'n=0
48520 color rgb(0,0,0):
48530 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
48540 '
48550 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
48560 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
48570 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
48580 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
48590 'n = (( n + 1) Mod 3) - 1
48600 '
48610 'n = n + 1
48620 print "右の丸:次へ行く" + chr$(13)
48630 print "左の丸：トップへ戻る" + chr$(13)
48640 key$=input$(1)
48650 if key$= " " then n=((n+1) Mod bN)
48660 'goto Parsonal_list2:
48670 'wend
48680 if key$=chr$(13) then goto Main_Screen1:
48690 wend
48700 'goto Parsonal_list2:
48710 'n=((n+1) Mod bN)
48720 'endif
48730 'goto Parsonal_list2:
48740 'if bg = 2 then n = ((n + 1) Mod bN)
48750 'if bN = 3 then
48760 'if buflines$(0) = "大吉数" then
48770 'n = ((n + 1) Mod bN)
48780 'else
48790 'n=((n + 1) Mod bN)
48800 'wend
48810 'else
48820 'if bN=2 then
48830 'n=((n + 1) Mod bN)
48840 'endif
48850 'endif
48860 'cls
48870 'else
48880 'if bg2 = 2  then goto Main_Screen1:
48890 'wend
48900 'goto Parsonal_data_top:
48910 'endif
48920 'endif
48930 Parsonal_list_Search:
48940 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
48950 while eof(1)=0
48960 line input #1,lines$:hit_count=hit_count + 1
48970 wend
48980 close #1
48990 'bufname$(hit_count*10),buffname$(hit_count*10)
49000 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
49010 for i=0 to hit_count*10 - 1
49020 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
49030 next i
49040 close #2
49050 Search_find:
49060 cls 3:init "kb:2"
49070 'グラフィック領域　ここから
49080 line (0,0)-(770,60),rgb(0,0,255),bf
49090 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
49100 line (0,60)-(770,170),rgb(127,255,212),bf
49110 line(0,63)-(767,173),rgb(0,0,255),b
49120 line(0,170)-(770,440),rgb(0,255,0),bf
49130 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
49140 color rgb(255,255,255)
49150 print "霊遺伝姓名判断 データー検索"+chr$(13)
49160 color rgb(255,0,255)
49170 print "登録件数:";hit_count;"件です"+chr$(13)
49180 color rgb(0,0,0)
49190 print "調べたい人の名前を入れてください"+chr$(13)
49200 Input "名前:",name$
49210 cls
49220 for i = 0 to hit_count * 10 - 1
49230 if name$ = buffname$(i) then
49240 hcount = hcount + 1
49250 endif
49260 next i
49270 if hcount > 0 then
49280 init "kb:4":cls
49290 bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49300 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
49310 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
49320 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
49330 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
49340 while (key$ <> chr$(13) and bg <> 2)
49350 key$=inkey$
49360 bg=strig(1)
49370 bg2=strig(0)
49380 pause 2.50*100
49390 wend
49400 'a$=input$(1)
49410 'if a$=" " then goto Search_find:
49420 if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
49430 else
49440 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
49450 color rgb(0,0,0):print"検索名:";name$+chr$(13)
49460 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
49470 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
49480 a$=input$(1)
49490 IF a$=chr$(13) then goto Main_Screen1:
49500 endif
49510 '相性のデーターを保存する機能
49520 '保存ファイル：bestAisyou.dat
49530 '保存フォルダ:config/Aisyou_dat/
49540 Save_Aisyou:
49550 open "config/Aisyou_data" for append as #1
49560 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
49570 close #1
49580 ui_msg "保存しました"
49590 key$ = input$(1)
49600 '設定変更項目
49610 Config_Setting:
49620 cls 3:
49630 'グラフィック領域　ここから
49640 'Line 1
49650 line (0,0)-(850,60),rgb(0,0,255),bf
49660 line (0,0)-(850,57),rgb(255,255,255),b
49670 'Line 2
49680 line (0,60)-(850,460),rgb(127,255,212),bf
49690 line (0,57)-(850,457),rgb(0,0,0),b
49700 'Line 3
49710 line (0,460)-(850,640),rgb(0,255,0),bf
49720 line (0,457)-(850,637),rgb(0,0,0),,b
49730 'グラフィック領域　ここまで
49740 color rgb(255,255,255)
49750 print "設定　トップメニュー" + chr$(13)
49760 color rgb(255,0,255)
49770 print "1.キーボードの設定" + chr$(13)
49780 print "2.音の設定" + chr$(13)
49790 print "3.トップに戻る" + chr$(13)
49800 print "4.プログラムの終了"+chr$(13)
49810 color rgb(0,0,0)
49820 print "番号を選んでエンターキー"+chr$(13)
49830 Input "番号:",No
49840 'No=4:プログラムの終了
49850 if No = 4 then
49860 cls 3:talk"しゅうりょうします":ui_msg"終了します":end
49870 else
49880 select case No
49890 'No=1:キーボードの設定
49900 case 1:
49910 goto Keyboard_Setting:
49920 'No=2:音の設定
49930 case 2:
49940 'No=3:トップに戻る
49950 case 3:
49960 goto Main_Screen1:
49970 'No=1〜3以外
49980 case else:
49990 goto Config_Setting:
50000 end select
50010 endif
50020 '1.キーボードの設定
50030 Keyboard_Setting:
50040 cls 3
50050 'グラフィック領域　ここから
50060 'Line 1
50070 line (0,0)-(950,60),rgb(0,0,255),bf
50080 line (0,0)-(947,57),rgb(255,255,255),b
50090 'Line 2
50100 line (0,60)-(950,460),rgb(127,255,212),bf
50110 line (0,57)-(947,457),rgb(0,0,0),b
50120 'Line 3
50130 line (0,460)-(950,640),rgb(0,255,0),bf
50140 line (0,457)-(947,637),rgb(0,0,0),,b
50150 'グラフィック領域　ここまで
50160 '文字色　白
50170 color rgb(255,255,255)
50180 print "設定1 キーボードの設定" + chr$(13)
50190 color rgb(255,0,255)
50200 print "1.バーチャルキーボード表示する" + chr$(13)
50210 print "2.バーチャルキーボードを表示しない" + chr$(13)
50220 print "3.トップ画面へ行く" + chr$(13)
50230 print "4.終了する" + chr$(13)
50240 color rgb(0,0,0)
50250 Print "番号を選んでください" + chr$(13)
50260 Input "番号:",SelectNo3
50270 if SelectNo3 = 4 then
50280 cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
50290 else
50300 Select case SelectNo3
50310 case 1:
50320 if keyboard_flag = 0 then
50330 keyboard_flag=1:init"kb:2"
50340 goto Keyboard_Setting:
50350 endif
50360 case 2:
50370 if keyboard_flag=1 then
50380 keyboard_flag=0:init"kb:0"
50390 goto Keyboard_Setting:
50400 endif
50410 case 3:
50420 goto Main_Screen1:
50430 case else:
50440 goto Keyboard_Setting:
50450 end Select
50460 endif
