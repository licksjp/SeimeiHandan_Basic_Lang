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
650 '*****************************************************
660 '設定ファイル　漢字文字データ                                      *
670 'Version:Mojidata20200411.dat Date:20200411          *
680 'Version:Mojidata20200415.dat Date:20200415          *
690 'Version:Mojidata20200506.dat Date:20200506          *
700 'Version:Mojidata20200513.dat Date:20200513          *
710 'Version:Mojidata20200516.dat Date:20200516          *
720 'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
730 'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
740 '*****************************************************
750 '* 開発再開　2024.9.20　Ver2.33                        *
760 '* 開発再開 Date:2024.09.20                          *
770 '*************************************************
780 '新機能
790 'Date:2020.05.27
800 'Parsonal_data.datに個人データーを保存機能追加
810 '*****************************************************
820 'メモリー確保 文字領域,数値データー                                  *
830 '*****************************************************
840 clear 4*4000,4*1000000
850 '*****************************************************
860 'Screen 定義                                           *
870 '*****************************************************
880 Screen 1,1,1,1
890 '*****************************************************
900 'Sprite 定義                                           *
910 '*****************************************************
920 gload "./config/gazo/"+"selection.png",1,10,100
930 gload "./config/gazo/"+"selection.png",1,10,200
940 gload "./config/gazo/"+"selection.png",1,10,300
950 gload "./config/gazo/"+"selection.png",1,10,400
960 gload "./config/gazo/"+"selection.png",1,10,500
970 sp_def 0,(10,100),32,32
980 sp_def 1,(10,200),32,32
990 sp_def 2,(10,300),32,32
1000 sp_def 3,(10,400),32,32
1010 sp_def 4,(10,500),32,32
1020 '*****************************************************
1030 '改名チェック変数                                            *
1040 '****************************************************
1050 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
1060 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
1070 '*****************************************************
1080 'キーボードフラグ                                            *
1090 '0:キーボード非表示                                          *
1100 '1:キーボード表示                                           *
1110 '*****************************************************
1120 keyboard_flag = 0
1130 '*****************************************************
1140 '性別の選択用変数                                            *
1150 '*****************************************************
1160 dim sex_type$(2)
1170 '*****************************************************
1180 '相性占い　設定項目 ここから                                      *
1190 '*****************************************************
1200 count=0:line_count=0
1210 dim buffer_Aisyou_type$(10,10)
1220 dim buffer_Kaimei_data_name$(10)
1230 '*****************************************************
1240 '改名チェックの選択肢の変数                                       *
1250 '*****************************************************
1260 dim select$(3)
1270 open "config/Selection/Selection.dat" for input as #2
1280 for i=0 to 2
1290 input #2,select$(i)
1300 next i
1310 close #2
1320 'select$(0)="改名リストに追加する"
1330 'select$(1)="改名リストに追加しない"
1340 'select$(2)="トップ画面に行く"
1350 '*****************************************************
1360 '総数を出す変数 改名チェック変数                                    *
1370 'dim buffer_total$                                   *
1380 '1.理解し合える最良のカップル                                     *
1390 '*****************************************************
1400 dim buf_good_couple1(20)
1410 dim buf_good_couple2(20)
1420 '*****************************************************
1430 '2.互いに自然体でつきあえるカップル                                  *
1440 '*****************************************************
1450 dim buf_natural_couple1(20)
1460 dim buf_natural_couple2(20)
1470 '**************************************************
1480 dim buf_good_for_man1(20)
1490 dim buf_good_for_man2(20)
1500 '*****************************************************
1510 '4.女性にとって居心地の良い相性                                    *
1520 '*****************************************************
1530 dim buf_good_for_woman1(20)
1540 dim buf_good_for_woman2(20)
1550 '*****************************************************
1560 '5.恋愛経験を重ねた後なら愛を育める                                  *
1570 '*****************************************************
1580 dim short_of_experience1(20)
1590 dim short_of_experience2(20)
1600 '*****************************************************
1610 '6.結婚への発展が困難なカップル                                    *
1620 '*****************************************************
1630 dim buf_difficult_for_couple1(20)
1640 dim buf_difficult_for_couple2(20)
1650 '*****************************************************
1660 '7.愛し方にズレが出てくる二人                                     *
1670 '*****************************************************
1680 dim buf_difference_of_love1(20)
1690 dim buf_difference_of_love2(20)
1700 '*****************************************************
1710 '相性占い　設定項目　ここまで
1720 '*****************************************************
1730 '8.互いの価値観が噛み合わない相性 ここから                              *
1740 '*****************************************************
1750 dim buf_difference_of_KachiKan1(20)
1760 dim buf_difference_of_KachiKan2(20)
1770 '*****************************************************
1780 '8.互いに価値観が噛み合わない相性 ここまで                              *
1790 '*****************************************************
1800 '相性診断　相性パターン結果　ここから
1810 dim Result_Aisyou_type$(8)
1820 '*****************************************************
1830 '相性診断 相性パターン結果 ここまで                                  *
1840 '*****************************************************
1850 '2019/04/07 姓名判断アプリ 作成開始                             *
1860 '姓名判断　 名前の総数での吉凶を調べる                                 *
1870 '*****************************************************
1880 buf_count=0:buffer_count=0:count=0:buffer=0
1890 '*****************************************************
1900 '合計文字数                                               *
1910 '*****************************************************
1920 totalmoji=0
1930 dim buf_Input_data$(10),buf_Input_data2$(10)
1940 dim bufer_name$(10),bufer_name2$(10)
1950 dim buf_Input_name$(10),buf_Input_name2$(10)
1960 '*****************************************************
1970 '定数文字1画〜27画                                          *
1980 'ファイルから各画数を読み込んで代入する。                                *
1990 '*****************************************************
2000 '1行目だけ読み込む                                           *
2010 '*****************************************************
2020 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
2030 for i=0 to 26
2040 input #2,buf_lines$(i)
2050 next i
2060 close #2
2070 '*****************************************************
2080 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
2090 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
2100 '1画
2110 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
2120 '2画
2130 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
2140 '3画
2150 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
2160 '4画
2170 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
2180 '5画
2190 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
2200 '6画
2210 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
2220 '7画
2230 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
2240 '8画
2250 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
2260 '9画
2270 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
2280 '10画
2290 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
2300 '11画
2310 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
2320 '12画
2330 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
2340 '13画
2350 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
2360 '14画
2370 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
2380 '15画
2390 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
2400 '16画
2410 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
2420 '17画
2430 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
2440 '18画
2450 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
2460 '19画
2470 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
2480 '20画
2490 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
2500 '21画
2510 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
2520 '22画
2530 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
2540 '23画
2550 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2560 '24画
2570 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2580 '25画
2590 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2600 '26画
2610 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2620 '27画
2630 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2640 dim Moji_data$(Moji_total+27+27)
2650 '******************************************************
2660 'dim bufmoji$(10),Input_data$(10)                     *
2670 '１画の文字   サイズ:21+2(漢字)                                 *
2680 '******************************************************
2690 dim buf_char_hiragana1$(Moji_1)
2700 '******************************************************
2710 '2画の文字  サイズ 58+14=72(漢字)                              *
2720 '******************************************************
2730 dim buf_char_hiragana2$(Moji_2)
2740 '******************************************************
2750 '3画の文字 サイズ:48+29=77(漢字)                               *
2760 '******************************************************
2770 dim buf_char_hiragana3$(Moji_3)
2780 '******************************************************
2790 '4画の文字 サイズ:29+51=80(漢字)                               *
2800 '******************************************************
2810 dim buf_char_hiragana4$(Moji_4)
2820 '******************************************************
2830 '５画の文字  サイズ:18+59=77(漢字)                              *
2840 '******************************************************
2850 dim buf_char_hiragana5$(Moji_5)
2860 '******************************************************
2870 '6画の文字  サイズ:79(漢字)                                    *
2880 '******************************************************
2890 dim buf_char_hiragana6$(Moji_6)
2900 '******************************************************
2910 '7画の文字  サイズ:88(漢字)                                    *
2920 '******************************************************
2930 dim buf_char_hiragana7$(Moji_7)
2940 '******************************************************
2950 '8画の文字                                                *
2960 '******************************************************
2970 dim buf_char_hiragana8$(Moji_8)
2980 '******************************************************
2990 '9画の文字                                                *
3000 '******************************************************
3010 dim buf_char_hiragana9$(Moji_9)
3020 '******************************************************
3030 '10画の文字 98文字                                          *
3040 '******************************************************
3050 dim buf_char_hiragana10$(Moji_10)
3060 '******************************************************
3070 '11画の文字                                               *
3080 '******************************************************
3090 dim buf_char_hiragana11$(Moji_11)
3100 '******************************************************
3110 '12画の文字                                               *
3120 '******************************************************
3130 dim buf_char_hiragana12$(Moji_12)
3140 '******************************************************
3150 '13画の文字 81文字                                          *
3160 '******************************************************
3170 dim buf_char_hiragana13$(Moji_13)
3180 '******************************************************
3190 '14画の文字                                               *
3200 '******************************************************
3210 dim buf_char_hiragana14$(Moji_14)
3220 '******************************************************
3230 '15画の文字                                               *
3240 '******************************************************
3250 dim buf_char_hiragana15$(Moji_15)
3260 '******************************************************
3270 '16画の文字                                               *
3280 '******************************************************
3290 dim buf_char_hiragana16$(Moji_16)
3300 '******************************************************
3310 '17画の文字                                               *
3320 '******************************************************
3330 dim buf_char_hiragana17$(Moji_17)
3340 '******************************************************
3350 '18画の文字                                               *
3360 '******************************************************
3370 dim buf_char_hiragana18$(Moji_18)
3380 '19画の文字
3390 dim buf_char_hiragana19$(Moji_19)
3400 '20画の文字
3410 dim buf_char_hiragana20$(Moji_20)
3420 '21画の文字
3430 dim buf_char_hiragana21$(Moji_21)
3440 '22画の文字
3450 dim buf_char_hiragana22$(Moji_22)
3460 '23画の文字
3470 dim buf_char_hiragana23$(Moji_23)
3480 '24画の文字
3490 dim buf_char_hiragana24$(Moji_24)
3500 '25画の文字
3510 dim buf_char_hiragana25$(Moji_25)
3520 dim buf_char_hiragana26$(Moji_26)
3530 dim buf_char_hiragana27$(Moji_27)
3540 '結果表示1　吉凶データー 81パターン
3550 dim buf_Kikkyo$(81)
3560 '結果表示２
3570 '安斎流姓名判断 吉凶  1.地運
3580 dim buf_Kikkyo_Anzai_chiunn$(70)
3590 '安斎流姓名判断　　吉凶  2.人運
3600 dim buf_Kikkyo_Anzai_jinunn$(69)
3610 '安斎流姓名判断 吉凶 3.外運
3620 'dim buf_Kikkyo_Anzai_gaiunn$(70)
3630 '安斎流姓名判断 吉凶　　4.総運
3640 dim buf_Kikkyo_Anzai_total$(80)
3650 '霊遺伝姓名学　変数
3660 A=0
3670 B=0
3680 C=0
3690 D=0
3700 '1.先祖運
3710 buffer_senzo=0
3720 '2.性格運
3730 buffer_seikaku=0
3740 '3.愛情運
3750 buffer_Aijyou=0
3760 '4.行動運
3770 buffer_Kouzou=0
3780 '1-1.先祖運　和数
3790 Senzo_wasu=0
3800 '1-2.先祖運　生数
3810 Senzo_seisu=0
3820 '2-1.性格運 和数
3830 Seikaku_wasu=0
3840 '2-2.性格運 生数
3850 Seikaku_seisu=0
3860 '3-1.愛情運 和数
3870 Aijyou_wasu=0
3880 '3-2.愛情運 生数
3890 Aijyou_seisu=0
3900 '4-1 行動運 和数
3910 Koudo_wasu=0
3920 '4-2 行動運 生数
3930 Koudo_seisu=0
3940 'データー読み込み　ここから
3950 'データー読み込み　1.ひらがな
3960 '1画の文字   6文字 23文字
3970 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
3980 '全ファイルを読み込む
3990 for i = 0 to 26+Moji_total+27
4000 input #1,Moji_data$(i)
4010 next i
4020 close #1
4030 '全ファイル読み込み　ここまで
4040 for i = 27+1 to (Moji_1)+27+1
4050 '1画の文字にデーターをコピーする
4060 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
4070 next i
4080 '2画の文字    98文字
4090 for i = Moji_Min_2  to (Moji_Max_2)
4100 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
4110 next i
4120 '3文字の文字    77文字
4130 for i = Moji_Min_3  to (Moji_Max_3)
4140 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
4150 next i
4160 '4文字の文字   80文字
4170 for i = (Moji_Min_4)  to (Moji_Max_4)
4180 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
4190 next i
4200 '5文字の文字 77文字
4210 for i = Moji_Min_5 to (Moji_Max_5)
4220 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
4230 next i
4240 '6文字の文字 79文字
4250 for i = Moji_Min_6  to Moji_Max_6
4260 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
4270 next i
4280 '7文字の文字 170文字
4290 for i = Moji_Min_7 to Moji_Max_7
4300 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
4310 next i
4320 '8画の文字 120文字
4330 for i = Moji_Min_8 to Moji_Max_8
4340 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
4350 next i
4360 '9画の文字  103文字
4370 for i = Moji_Min_9 to Moji_Max_9
4380 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
4390 next i
4400 '10画の文字 285文字
4410 for i = Moji_Min_10 to (Moji_Max_10)
4420 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
4430 next i
4440 '11画の文字
4450 for i = Moji_Min_11 to Moji_Max_11
4460 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
4470 next i
4480 '12画の文字
4490 for i = Moji_Min_12 to Moji_Max_12
4500 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
4510 next i
4520 '13画の文字 81
4530 for i = Moji_Min_13 to Moji_Max_13
4540 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
4550 next i
4560 '14画の文字 66
4570 for i = Moji_Min_14 to Moji_Max_14
4580 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
4590 next i
4600 '15画の文字 59
4610 'for i = Moji_Min_15 to (Moji_Max_15) - 1
4620 for i=Moji_Min_15 to  Moji_Max_15
4630 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
4640 next i
4650 '16画の文字 44
4660 for i=Moji_Min_16 to Moji_Max_16
4670 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
4680 next i
4690 '17画の文字
4700 for i = Moji_Min_17 to Moji_Max_17
4710 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
4720 next i
4730 '18画の文字
4740 for i = Moji_Min_18 to Moji_Max_18
4750 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
4760 next i
4770 '19画の文字 17文字
4780 for i = Moji_Min_19 to Moji_Max_19
4790 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
4800 next i
4810 '20 画の文字 13文字
4820 for  i = Moji_Min_20 to Moji_Max_20
4830 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
4840 NEXT i
4850 '21画の文字 6
4860 for i = Moji_Min_21 to (Moji_Max_21)
4870 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
4880 next i
4890 '22 画の文字 4
4900 for i = Moji_Min_22 to Moji_Max_22
4910 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4920 next i
4930 '23画の文字  3文字
4940 for i = Moji_Min_23 to Moji_Max_23
4950 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
4960 next i
4970 '24画の文字  3文字
4980 for i = Moji_Min_24 to Moji_Max_24
4990 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
5000 next i
5010 '25 画の文字 4
5020 for i = Moji_Min_25 to Moji_Max_25
5030 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
5040 next i
5050 '26画の文字  3文字
5060 for i = Moji_Min_26 to Moji_Max_26
5070 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
5080 next i
5090 '27画の文字  3文字
5100 for i = Moji_Min_27 to Moji_Max_27
5110 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
5120 next i
5130 '吉凶データー読み込み
5140 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
5150 for i=0 to 80
5160 input #1,buf_Kikkyo$(i+1)
5170 next i
5180 close #1
5190 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
5200 for m=0 to 69
5210 input #2,buf_Kikkyo_Anzai_chiunn$(m)
5220 next m
5230 close #2
5240 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
5250 for i=1 to 70
5260 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
5270 next i
5280 close #3
5290 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
5300 for i=0 to 79
5310 input #4,buf_Kikkyo_Anzai_total$(i)
5320 next i
5330 close #4
5340 '****************************************************
5350 '0.理解し合えるカップル　ここから                                  *
5360 '****************************************************
5370 restore 6510
5380 for i=0 to 19
5390 read buf_good_couple1(i)
5400 next i
5410 restore 6520
5420 for j=0 to 19
5430 read buf_good_couple2(j)
5440 next j
5450 '*****************************************************
5460 '0.理解し合えるカップル ここまで                                   *
5470 '*****************************************************
5480 '*****************************************************
5490 '1.互いに自然体でつきあえる二人　ここから                               *
5500 '*****************************************************
5510 restore 6580
5520 for i=0 to 19
5530 read buf_natural_couple1(i)
5540 next i
5550 restore 6590
5560 for j=0 to 19
5570 read buf_natural_couple2(j)
5580 next j
5590 '*****************************************************
5600 '1.互いに自然体でつきあえる二人　ここまで                               *
5610 '*****************************************************
5620 '2        ここから                                       *
5630 '*****************************************************
5640 restore 6650
5650 for i=0 to 19
5660 read buf_good_for_man1(i)
5670 next i
5680 restore 6660
5690 for j=0 to 19
5700 read buf_good_for_man2(j)
5710 next j
5720 '******************************************************
5730 '2        ここまで                                        *
5740 '******************************************************
5750 '3        ここから                                        *
5760 '******************************************************
5770 restore 6720
5780 for i=0 to 19
5790 read buf_good_for_woman1(i)
5800 next i
5810 restore 6730
5820 for j=0 to 19
5830 read buf_good_for_woman2(j)
5840 next j
5850 '******************************************************
5860 '3        ここまで                                        *
5870 '******************************************************
5880 '4        ここから                                        *
5890 '******************************************************
5900 restore 6790
5910 for i=0 to 19
5920 read short_of_experience1(i)
5930 next i
5940 restore 6800
5950 for j=0 to 19
5960 read short_of_experience2(j)
5970 next j
5980 '******************************************************
5990 '4        ここまで                                        *
6000 '******************************************************
6010 '5.結婚への発展が困難なカップル  ここから                               *
6020 '******************************************************
6030 restore 6860
6040 for i=0 to 19
6050 read buf_difficult_for_couple1(i)
6060 next i
6070 restore 6870
6080 for j=0 to 19
6090 read buf_difficult_for_couple2(j)
6100 next j
6110 '******************************************************
6120 '5.結婚への発展が困難なカップル  ここまで                               *
6130 '******************************************************
6140 '6.愛し方にズレが出る二人 ここから                                   *
6150 '******************************************************
6160 restore 6930
6170 for i=0 to 19
6180 read buf_difference_of_love1(i)
6190 next i
6200 restore 6940
6210 for j=0 to 19
6220 read buf_difference_of_love2(j)
6230 next j
6240 '******************************************************
6250 '6.愛し方にズレが出る二人 ここまで                                   *
6260 '******************************************************
6270 '7.互いの価値観が噛み合わない相性 ここから                               *
6280 '******************************************************
6290 restore 7000
6300 for i=0 to 19
6310 read buf_difference_of_KachiKan1(i)
6320 next i
6330 restore 7010
6340 for j=0 to 19
6350 read buf_difference_of_KachiKan2(j)
6360 next j
6370 '******************************************************
6380 '7.互いの価値観が噛み合わない相性 ここまで                               *
6390 '******************************************************
6400 '相性占いタイプ ここから                                         *
6410 '******************************************************
6420 restore 7090
6430 for i=0 to 7
6440 read Result_Aisyou_type$(i)
6450 next i
6460 '****************************************************
6470 'Data文  ここから                                        *
6480 '****************************************************
6490 '0.理解し合えるカップル　ここから                                  *
6500 '****************************************************
6510 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
6520 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
6530 '****************************************************
6540 '0.理解し合えるカップル　ここまで                                  *
6550 '****************************************************
6560 '1.互いに自然体でつきあえるカップル ここから                            *
6570 '****************************************************
6580 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
6590 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
6600 '****************************************************
6610 '1.互いに自然体でつきあえるカップル　ここまで                            *
6620 '****************************************************
6630 '2.男性にとって居心地の良いカップル  ここから                           *
6640 '****************************************************
6650 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6660 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6670 '****************************************************
6680 '2男性にとって居心地の良いカップル ここまで                             *
6690 '****************************************************
6700 '3女性にとって居心地の良いカップル  ここから                            *
6710 '****************************************************
6720 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
6730 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
6740 '****************************************************
6750 '3女性にとって居心地の良いカップル  ここまで                            *
6760 '****************************************************
6770 '4恋愛経験を重ねた後なら愛を育める ここから                             *
6780 '****************************************************
6790 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6800 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6810 '****************************************************
6820 '4恋愛経験を重ねた後なら愛を育める ここまで                             *
6830 '****************************************************
6840 '5.結婚への発展が困難なカップル ここから                              *
6850 '****************************************************
6860 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6870 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
6880 '****************************************************
6890 '5.結婚への発展が困難なカップル ここまで                              *
6900 '****************************************************
6910 '6.愛し方にズレが生じる二人  ここから                               *
6920 '****************************************************
6930 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
6940 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
6950 '****************************************************
6960 '6.愛し方にずれが生じる二人  ここまで                               *
6970 '****************************************************
6980 '7.互いに価値観が噛み合わない相性　ここから                             *
6990 '****************************************************
7000 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
7010 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
7020 '****************************************************
7030 '7.互いに価値観が噛み合わない相性 ここまで                             *
7040 '****************************************************
7050 '相性占い結果パターン ここから                                    *
7060 '****************************************************
7070 '0:理解し合える最良のカップル                                    *
7080 '****************************************************
7090 data "理解し合える最良のカップル"
7100 '****************************************************
7110 '1:互いに自然体で付き合えるカップル                                 *
7120 '****************************************************
7130 data "互いに自然体でつきあえるカップル"
7140 '****************************************************
7150 '2:男性にとって居心地の良い相性                                   *
7160 '****************************************************
7170 data "男性にとって居心地の良い相性"
7180 '****************************************************
7190 '3:女性にとって居心地の良い相性                                   *
7200 '****************************************************
7210 data "女性にとって居心地の良い相性"
7220 '****************************************************
7230 '4:恋愛経験を重ねた後なら愛を育める                                 *
7240 '****************************************************
7250 data "恋愛経験を重ねた後なら愛を育める"
7260 '****************************************************
7270 '5:結婚への発展が困難なカップル                                   *
7280 '****************************************************
7290 data "結婚への発展が困難なカップル"
7300 '****************************************************
7310 '6:愛し方にズレが生じる二人                                     *
7320 '****************************************************
7330 data "愛し方にずれが生じる二人"
7340 '****************************************************
7350 '7:互いに価値観が噛み合わない相性                                  *
7360 '****************************************************
7370 data "互いの価値観が噛み合わない相性"
7380 '************************************************
7390 'Data文   ここまで                                   *
7400 '************************************************
7410 '相性占い結果パターン ここまで
7420 '*******************************
7430 'メイン画面　ここから スタート (キーボードの選択)
7440 '*******************************
7450 '描画領域　ここから
7460 'Select_keybord:
7470 'talk ""
7480 'cls 3:font 48:No=0:y=0:key$="":bg=0:init"kb:4"
7490 'talk "キーボードの選択です。バーチャルキーボードを表示させますか？"
7500 'line (0,0)-(1200,60),rgb(0,0,255),bf
7510 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
7520 'line (0,60)-(1200,380),rgb(127,255,212),bf
7530 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
7540 'line (0,380)-(1200,450),rgb(0,255,0),bf
7550 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
7560 '描画領域　ここまで
7570 'Sprite
7580 'sp_on 0,1:sp_on 1,0:sp_on 2,0
7590 'sp_put 0,(10,100),0,0
7600 'sp_put 1,(10,200),1,0
7610 'sp_put 2,(10,300),2,0
7620 '設定画面 バーチャルキーボードの表示選択
7630 'color rgb(255,255,255)
7640 'print "●バーチャル キーボードの表示の選択" + chr$(13)
7650 'color rgb(255,0,255)
7660 'print " :1.バーチャルキーボードを表示する" + chr$(13)
7670 'print " :2.バーチャルキーボードを表示しない" + chr$(13)
7680 'print " :3.プログラムを終了する" + chr$(13)
7690 'color rgb(0,0,255)
7700 'print "バーチャルキーボードを表示するを選択"
7710 'Select_keybord2:
7720 'y=0:key$="":bg=0
7730 'while (key$ <> chr$(13) and key$ <> chr$(31) and y <> -1 and y <> 1 and bg <> 2)
7740 'y=stick(1)
7750 'key$=inkey$
7760 'bg=strig(1)
7770 'pause 3.56*100
7780 'wend
7790 '*****************************************************
7800 'カーソル下
7810 '*****************************************************
7820 'if (key$=chr$(31) or y=1) then
7830 'select case No
7840 'case 0:
7850 '       No=1:beep:locate 0,8:print "                      ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 0,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
7860 'case 1:
7870 '       No=2:beep:locate 0,8:print "                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 1,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7880 'case 2:
7890 '       No=0:beep:locate 0,8:print "                        ":locate 0,8:print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 2,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
7900 'end select
7910 'endif
7920 '***************************************************
7930 'カーソル上
7940 '***************************************************
7950 'if (y=-1 or key) then
7960 'select case No
7970 'case 0:
7980 '       No=2:beep:LOCATE 0,8:print "                                          ":locate 0,8:print "プログラムを終了するを選択":sp_on 2,1:sp_on 0,0:sp_put 2,(10,300),2,0:goto Select_keybord2:
7990 'case 1:
8000 '       No=0:beep:locate 0,8:print "                                          ":locate 0,8:Print "バーチャルキーボードを表示するを選択":sp_on 0,1:sp_on 1,0:sp_put 0,(10,100),0,0:goto Select_keybord2:
8010 'case 2:
8020 '       No=1:beep:locate 0,8:print "                                           ":locate 0,8:print "バーチャルキーボードを表示しないを選択":sp_on 1,1:sp_on 2,0:sp_put 1,(10,200),1,0:goto Select_keybord2:
8030 'end select
8040 'endif
8050 'if (key$=chr$(13) or bg=2) then
8060 'select case No
8070 'case 0:
8080 '       init "kb:2":goto Main_Screen1:
8090 'case 1:
8100 '       init "kb:0":goto Main_Screen1:
8110 'case 2:
8120 '       talk"プログラムを終了します":ui_msg"プログラムを終了します":cls 3:cls 4:pause 2.34*100:color rgb(255,255,255):end
8130 'end select
8140 'endif
8150 '1:keybord_flag=1 きーボード表示
8160 'if val(a$) = 1 then init"kb:2":keyboard_flag=1:goto Main_Screen:
8170 '0:keybord_lag=0:キーボード非表示
8180 'if val(a$) = 2 then init"kb:0":keyboard_flag=0:goto Main_Screen:
8190 'keyNo=3 プログラム終了
8200 'if val(a$) = 3 then end
8210 'if val(a$) > 3 or val(a$)  = 0 then goto Select_keybord:
8220 'メイン画面 Top画面1
8230 Main_Screen1:
8240 cls 3:font 48:color rgb(255,255,255)
8250 talk "番号を選んでエンターキーを押してください"
8260 'Text ,Grapgic clear:cls 3
8270 'グラフィック領域　ここから
8280 line (0,0)-(570,60),rgb(0,0,255),bf
8290 pen 5:line (0,0)-(567,57),rgb(127,255,212),b
8300 line (0,60)-(570,560),rgb(127,255,212),bf
8310 pen 5:line (0,57)-(567,557),rgb(0,0,255),b
8320 line (0,560)-(570,740),rgb(0,255,0),bf
8330 'グラフィック領域 ここまで
8340 pen 5:line (0,557)-(567,737),rgb(0,0,255),b
8350 Font 48
8360 '************************************************
8370 'Sprite                                         *
8380 '************************************************
8390 sp_on 0,1:sp_on 1,0:sp_on 2,0
8400 sp_put 0,(10,100),0,0
8410 '************************************************
8420 No=0:init"kb:4":y=0:key$="":bg=0
8430 print "◎姓名判断　メイン画面" + chr$(13)
8440 '************************************************
8450 '文字色:黒                                          *
8460 '************************************************
8470 color rgb(255,0,255)
8480 print " :1.姓名判断" + chr$(13)
8490 print " :2.姓名判断の設定" + chr$(13)
8500 print " :3.個人データーリスト" + chr$(13)
8510 print " :4.ヘルプ" + chr$(13)
8520 print " :5.プログラムの終了" + chr$(13)
8530 'x=touch(4)
8540 'print"7.プログラム終了"+chr$(13)
8550 '*************************************************
8560 '文字:黒                                            *
8570 '*************************************************
8580 color rgb(0,0,0)
8590 print "姓名判断を選択を選択" + chr$(13)
8600 Main_Screen2:
8610 y=0:key$="":bg=0
8620 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8630   y=stick(1)
8640   key$=inkey$
8650   bg=strig(1)
8660   pause 2.55*100
8670 wend
8680 '**************************************************
8690 '1.下のキー  ここから
8700 '**************************************************
8710 if (y = 1 or key$ = chr$(31)) then
8720 select case No
8730 case 0:
8740        No=1:sp_on 1,1:sp_on 0,0:beep:sp_put 1,(10,200),1,0:goto Main_Screen2:
8750 case 1:
8760        No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto Main_Screen2:
8770 case 2:
8780        No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto Main_Screen2:
8790 case 3:
8800        No=4:sp_on 4,1:sp_on 3,0:beep:sp_put 4,(10,500),4,0:goto Main_Screen2:
8810 case 4:
8820        No=0:sp_on 0,1:sp_on 4,0:beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
8830 end select
8840 endif
8850 '***************************************************
8860 '1. 下のキー　ここまで
8870 '***************************************************
8880 '***************************************************
8890 '2.上のキー ここから
8900 '***************************************************
8910 if (key$=chr$(30) or y=-1) then
8920 select case No
8930 case 0:
8940        No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto Main_Screen2:
8950 case 1:
8960        No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
8970 case 2:
8980        No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto Main_Screen2:
8990 case 3:
9000        No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto Main_Screen2:
9010 case 4:
9020        No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto Main_Screen2:
9030 end select
9040 endif
9050 '***************************************************
9060 '3.決定ボタン ここから
9070 '***************************************************
9080 if (bg=2 or key$=chr$(13)) then
9090 select case No
9100 case 0:
9110       sp_on 0,0:goto seimeihandan_top:
9120 case 1:
9130       sp_on 1,0:goto seimeihandan_setting:
9140 case 2:
9150       sp_on 2,0:goto Parsonal_data_top:
9160 case 3:
9170       sp_on 3,0: goto help:
9180 case 4:
9190      sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9200 end select
9210 endif
9220 '***************************************************
9230 '3.決定ボタン ここまで
9240 '***************************************************
9250 'No$=input$(1)
9260 'if val(No$) = 1  then goto seimeihandan_top:
9270 'if val(No$) = 2 then goto seimeihandan_setting:
9280 'if val(No$) = 3 then goto Parsonal_data_top:
9290 'if val(No$) = 4 then goto help:
9300 'if val(No$) = 5  then talk"終了します":cls 3:end
9310 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9320 'if No = "" then goto 7550
9330 '1.姓名判断トップ画面
9340 seimeihandan_top:
9350 cls:
9360 No=0:y=0:key$="":bg=0:talk""
9370 'タイトル文字:白
9380 font 48:color rgb(255,255,255),,rgb(176,196,222)
9390 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
9400 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9410 sp_put 0,(10,100),0,0
9420 'グラフィック 描画領域　ここから
9430 'Main_Screen:
9440 cls 3
9450 '1.Title:青
9460 'Line 1
9470 line (0,0)-(870,60),rgb(0,0,255),bf
9480 pen 5:line(0,0)-(867,57),rgb(127,255,212),b
9490 'Line 2
9500 line (0,60)-(870,450),rgb(127,255,212),bf
9510 PEN 5:line(0,57)-(867,447),rgb(0,0,255),b
9520 'Line 3
9530 line (0,450)-(870,600),rgb(0,255,0),bf
9540 pen 5:line (0,447)-(867,597),rgb(0,0,255),b
9550 'グラフィック 描画領域 ここまで
9560 color rgb(255,255,255)
9570 print"◎姓名判断の種類トップメニュー"+chr$(13)
9580 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9590 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9600 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9610 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9620 color rgb(0,0,0):Print"番号を選んでエンターを押してください"
9630 seimeihandan_top2:
9640 y=0:key$="":bg=0
9650 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9660 key$=inkey$
9670 y=stick(1)
9680 bg=strig(1)
9690 pause 2.55*100
9700 wend
9710 '*************************************************
9720 '下のキー  ここから
9730 '*************************************************
9740 if (key$=chr$(31) or y=1) then
9750 select case No
9760 case 0:
9770       No=1:sp_on 1,1:sp_on 0,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9780 case 1:
9790       No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9800 case 2:
9810       No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9820 case 3:
9830         No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9840 end select
9850 endif
9860 '*************************************************
9870 '下のキー　ここまで
9880 '*************************************************
9890 '*************************************************
9900 '決定ボタン　ここから
9910 '*************************************************
9920 if (bg=2 or key$=chr$(13)) then
9930 select case No
9940 case 0:
9950       sp_on 0,0:goto Reiden_Top_Input_Sextype:
9960 case 1:
9970       sp_on 1,0:goto Anzai_Top:
9980 case 2:
9990       sp_on 2,0:goto Kyusei_Top:
10000 case 3:
10010      sp_on 3,0:goto Main_Screen1:
10020 end select
10030 endif
10040 '*************************************************
10050 '決定ボタン　ここまで
10060 '*************************************************
10070 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10080 'if val(selectNo$)=2 then goto Anzai_Top:
10090 'if val(selectNo$)=3 then goto Kyusei_Top:
10100 'if val(selectNo$)=4 then goto Main_Screen1:
10110 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10120 '１．姓名判断(九星姓名判断トップ)
10130 'グラフィック領域　ここから
10140 Kyusei_Top:
10150 cls 3:No=0:y=0:bg=0:key$="":talk""
10160 sp_on 0,1:sp_put 0,(10,100),0,0
10170 line (0,0)-(720,60),rgb(0,0,250),bf
10180 pen 5:line (0,0)-(717,57),rgb(127,255,212),b
10190 line (0,60)-(720,460),rgb(127,255,212),bf
10200 pen 5:line(0,57)-(717,457),rgb(0,0,255),b
10210 line (0,460)-(720,680),rgb(0,255,0),bf
10220 pen 5:line(0,457)-(717,677),rgb(0,0,255),b
10230 'グラフィック領域　ここまで
10240 font 48:color rgb(255,255,255),,rgb(176,196,222)
10250 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10260 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10270 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10280 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10290 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10300 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10310 Kyusei_Top2:
10320 bg=0:key$="":y=0
10330 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10340 key$=inkey$
10350 y=stick(1)
10360 bg=strig(1)
10370 pause 2.50*100
10380 wend
10390 '****************************************************
10400 '下のキー　ここから
10410 '*****************************************************
10420 if (y=1 or key$=chr$(30)) then
10430 select case No
10440 case 0:
10450        No=1:sp_on 1,1:sp_on 0,0:beep:sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10460 case 1:
10470        No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10480 case 2:
10490        No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10500 case 3:
10510        No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10520 end select
10530 endif
10540 '*****************************************************
10550 '下のキー　ここまで
10560 '*****************************************************
10570 '*****************************************************
10580 '上のキー　ここから
10590 '*****************************************************
10600 if (y=-1 or key$=chr$(31)) then
10610 select case No
10620 case 0:
10630        No=3:sp_on 3,1:sp_on 0,0:beep:sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10640 case 1:
10650       No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10660 case 2:
10670       No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10680 case 3:
10690       No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10700 end select
10710 endif
10720 '*****************************************************
10730 '上のキー　ここまで
10740 '*****************************************************
10750 '*****************************************************
10760 '決定ボタン　ここから
10770 '*****************************************************
10780 if (key$=chr$(13) or bg=2) then
10790 select case No
10800 case 0:
10810        sp_on 0,0:goto Parson_name_kikkyo:
10820 case 1:
10830        sp_on 1,0:goto nick_name_check:
10840 case 2:
10850        sp_on 2,0:goto name_inyo_check:
10860 case 3:
10870        sp_on 3,0:goto seimeihandan_top:
10880 end select
10890 endif
10900 '*****************************************************
10910 '決定ボタン　ここまで
10920 '*****************************************************
10930 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
10940 'color rgb(0,0,0):Input "番号:",selectNo
10950 'selectNo=Input$(1)
10960 'if selectNo = 1 then goto Parson_name_kikkyo
10970 'if selectNo = 2 then goto nick_name_check:
10980 'if selectNo = 3 then goto name_inyo_check:
10990 'if selectNo = 4  then goto seimeihandan_top:
11000 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11010 '2.姓名判断 安斎流姓名判断　トップ画面
11020 '2-1名前の姓の部分を入力
11030 'グラフィック領域　ここから
11040 Anzai_Top_Screen:
11050 cls 3:LINE (0,0)-(820,60),rgb(0,0,255),bf
11060 pen 5:line (0,0)-(816,57),rgb(127,255,212),b
11070 line (0,60)-(820,260),rgb(127,255,212),bf
11080 pen 5:line(0,57)-(817,257),rgb(0,0,255),b
11090 line (0,260)-(820,350),rgb(0,255,0),bf
11100 pen 5:line(0,257)-(817,347),rgb(0,0,255),b
11110 font 48:talk""
11120 'グラフィック領域 ここまで
11130 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11140 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11150 COLOR rgb(255,0,255)
11160 print"名前を2回に分けて入力してください"+chr$(13)
11170 print"名前の姓の部分を入れてください"+chr$(13)
11180 color rgb(0,0,0)
11190 input"名前の姓:",bufname$
11200 buff1=len(bufname$)
11210 '2-2名前の名の部分を入力
11220 'グラフィック描画領域　ここから
11230 cls 3
11240 line (0,0)-(820,60),rgb(0,0,255),bf
11250 pen 5:line(0,0)-(817,57),rgb(127,255,212),b
11260 line (0,60)-(820,200),rgb(127,255,212),bf
11270 pen 5:line(0,57)-(817,197),rgb(0,0,255),b
11280 line (0,200)-(820,260),rgb(0,255,0),bf
11290 pen 5:line(0,197)-(817,257),rgb(0,0,255),b
11300 'グラフィック描画領域 ここまで
11310 COLOR rgb(255,255,255)
11320 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11330 talk"つぎに、名前のめいの部分を入れてください"
11340 color rgb(255,0,255)
11350 print"名前の名の部分を入れてください"+chr$(13)
11360 color rgb(0,0,0)
11370 input"名前の名:",bufname2$
11380 buff2=len(bufname2$)
11390 bufff=buff1+buff2
11400 'goto 23880
11410 select case bufff
11420 '姓1文字,名1文字
11430 case 2:
11440 cls
11450 '天運:buf_tenunn
11460 buf_tenunn=char_count(bufname$)
11470 '地運:buf_chiunn
11480 buf_chiunn=char_count(bufname2$)
11490 '人運 = 天運 + 地運
11500 buf_jinunn=buf_tenunn + buf_chiunn
11510 '外運 = 天運 + 人運
11520 buf_gaiunn = buf_tenunn + buf_chiunn
11530 '総数=buf_gaiunn
11540 buf_total=buf_gaiunn
11550 goto Result_Anzai:
11560 '姓１，名:2
11570 case 3:
11580 cls:
11590 if buff1=1 and buff2=2 then
11600 '1.天運:buf_tenunn
11610 buf_tenunn=char_count(bufname$)
11620 '2文字目の文字
11630 bufer_name2$(0)=Mid$(bufname2$,1,1)
11640 '3文字目の文字
11650 bufer_name2$(1)=Mid$(bufname2$,2,1)
11660 '2.人運
11670 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11680 '3.地運:buf_chiunn
11690 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11700 '4外運:buf_gaiunn
11710 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11720 '5.総数:buf_total
11730 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11740 goto Result_Anzai:
11750 endif
11760 if buff1=2 and buff2=1 then
11770 bufer_name$(0)=Mid$(bufname$,1,1)
11780 bufer_name$(1)=Mid$(bufname$,2,1)
11790 bufer_name2$(0)=Mid$(bufname$,1,1)
11800 '1.天運
11810 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
11820 '2.人運
11830 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
11840 '3.地運
11850 buf_chiunn=char_count(bufer_name2$(0))
11860 '4.外運
11870 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
11880 '5.総数
11890 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
11900 goto Result_Anzai:
11910 endif
11920 case 4:
11930 if buff1=2 and buff2=2 then
11940 bufer_name$(0)=Mid$(bufname$,1,1)
11950 bufer_name$(1)=Mid$(bufname$,2,1)
11960 bufer_name2$(0)=Mid$(bufname2$,1,1)
11970 bufer_name2$(1)=Mid$(bufname2$,2,1)
11980 '1.天運
11990 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12000 '2.人運
12010 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12020 '3.地運
12030 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12040 '4.外運
12050 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12060 '5.総数
12070 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12080 goto Result_Anzai:
12090 endif
12100 'パターン2 姓3文字 名1文字 total4文字
12110 if buff1=3 and buff2=1 then
12120 bufer_name$(0)=Mid$(bufname$,1,1)
12130 bufer_name$(1)=Mid$(bufname$,2,1)
12140 bufer_name$(2)=Mid$(bufname$,3,1)
12150 bufer_name2$(0)=Mid$(bufname2$,1,1)
12160 '1.天運
12170 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12180 '2.人運
12190 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12200 '3.地運
12210 buf_chiunn=char_count(bufer_name2$(0))
12220 '4.外運
12230 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12240 '5.総運
12250 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12260 goto Result_Anzai:
12270 endif
12280 'パターン３ 姓1,名３  合計４文字
12290 if buff1=1 and buff2=3 then
12300 bufer_name$(0)=Mid$(bufname$,1,1)
12310 bufer_name2$(0)=Mid$(bufname2$,1,1)
12320 bufer_name2$(1)=Mid$(bufname2$,2,1)
12330 bufer_name2$(2)=Mid$(bufname2$,3,1)
12340 '1.天運
12350 buf_tenunn = char_count(bufer_name$(0))
12360 '2.人運
12370 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12380 '3.地運
12390 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12400 '4.外運
12410 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12420 '5.総運
12430 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12440 goto Result_Anzai:
12450 endif
12460 case 5:
12470 '５文字の名前
12480 '1.  3文字姓 2字名
12490 if buff1=3 and buff2=2 then
12500 bufer_name$(0)=Mid$(bufname$,1,1)
12510 bufer_name$(1)=Mid$(bufname$,2,1)
12520 bufer_name$(2)=Mid$(bufname$,3,1)
12530 bufer_name2$(0)=Mid$(bufname2$,1,1)
12540 bufer_name2$(1)=Mid$(bufname2$,2,1)
12550 '1.天運
12560 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12570 '2.人運
12580 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12590 '3.地運
12600 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12610 '4.外運
12620 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12630 '5.総運
12640 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12650 goto Result_Anzai:
12660 endif
12670 if buff1=2 and buff2=3 then
12680 bufer_name$(0)=Mid$(bufname$,1,1)
12690 bufer_name$(1)=Mid$(bufname$,2,1)
12700 bufer_name2$(0)=Mid$(bufname2$,1,1)
12710 bufer_name2$(1)=Mid$(bufname2$,2,1)
12720 bufer_name2$(2)=Mid$(bufname2$,3,1)
12730 '1.天運
12740 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12750 '2.人運
12760 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12770 '3.地運
12780 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12790 '4.外運
12800 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12810 '5.総運
12820 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12830 goto Result_Anzai:
12840 endif
12850 if buff1=4 and buff2=1 then
12860 bufer_name$(0)=Mid$(bufname$,1,1)
12870 bufer_name$(1)=mid$(bufname$,2,1)
12880 bufer_name$(2)=mid$(bufname$,3,1)
12890 bufer_name$(3)=mid$(bufname$,4,1)
12900 bufer_name2$(0)=mid$(bufname2$,1,1)
12910 '1.天運
12920 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
12930 '2.人運
12940 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
12950 '3.地運
12960 buf_chiunn=char_count(bufer_name2$(0))
12970 '4.外運
12980 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12990 '5.総運
13000 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13010 goto Result_Anzai:
13020 endif
13030 case 6:
13040 '3字姓 3字名
13050 if buff1=3 and buff2=3 then
13060 bufer_name$(0)=Mid$(bufname$,1,1)
13070 bufer_name$(1)=Mid$(bufname$,2,1)
13080 bufer_name$(2)=Mid$(bufname$,3,1)
13090 bufer_name2$(0)=Mid$(bufname2$,1,1)
13100 bufer_name2$(1)=Mid$(bufname2$,2,1)
13110 bufer_name2$(2)=Mid$(bufname2$,3,1)
13120 '1.天運
13130 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13140 '2.人運
13150 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13160 '3.地運
13170 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13180 '4.外運
13190 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13200 '5.総運
13210 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13220 goto Result_Anzai:
13230 endif
13240 '4字姓 2字名
13250 if buff1=4 and buff2=2 then
13260 bufer_name$(0)=Mid$(bufname$,1,1)
13270 bufer_name$(1)=Mid$(bufname$,2,1)
13280 bufer_name$(2)=Mid$(bufname$,3,1)
13290 bufer_name$(3)=Mid$(bufname$,4,1)
13300 bufer_name2$(0)=Mid$(bufname2$,1,1)
13310 bufer_name2$(1)=Mid$(bufname2$,2,1)
13320 '1.天運
13330 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13340 '2.人運
13350 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13360 '3.地運
13370 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13380 '4.外運
13390 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13400 '5.総運
13410 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13420 goto Result_Anzai:
13430 endif
13440 '4字姓 3字名
13450 case 7:
13460 if buff1=4 and buff2=3 then
13470 bufer_name$(0)=Mid$(bufname$,1,1)
13480 bufer_name$(1)=Mid$(bufname$,2,1)
13490 bufer_name$(2)=Mid$(bufname$,3,1)
13500 bufer_name$(3)=Mid$(bufname$,4,1)
13510 bufer_name2$(0)=Mid$(bufname2$,1,1)
13520 bufer_name2$(1)=Mid$(bufname2$,2,1)
13530 bufer_name2$(2)=Mid$(bufname2$,3,1)
13540 '1.天運
13550 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13560 '2.人運
13570 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13580 ' 3.地運
13590 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13600 '4.外運
13610 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13620 '5.総運
13630 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13640 goto Result_Anzai:
13650 endif
13660 case else:
13670 end select
13680 '2.設定
13690 seimeihandan_setting:
13700 font 46:color rgb(0,0,0),,rgb(176,196,222)
13710 No=0:y=0:key$="":bg=0:talk""
13720 sp_on 0,1:sp_put 0,(10,100),0,0
13730 talk"設定画面です。番号を選んでエンターキーを押してください"
13740 'グラフィック領域　ここから
13750 cls 3:
13760 line (0,0)-(750,60),rgb(0,0,255),bf
13770 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
13780 line (0,60)-(750,560),rgb(127,255,212),bf
13790 pen 5:line (0,57)-(747,557),rgb(0,0,255),b
13800 line (0,560)-(750,750),rgb(0,255,0),bf
13810 pen 5:line(0,557)-(747,747),rgb(0,0,255),b
13820 'グラフィック領域 ここまで
13830 '1行目　文字色　 白
13840 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
13850 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
13860 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
13870 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
13880 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
13890 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
13900 COLOR rgb(0,0,0)
13910 print"番号を選んでください"+chr$(13)
13920 seimeihandan_setting2:
13930 y=0:key$="":bg=0
13940 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
13950 key$=inkey$
13960 y=stick(1)
13970 bg=strig(1)
13980 pause 2.50*100
13990 wend
14000 '****************************************************
14010 '1.下のカーソル　ここから
14020 '****************************************************
14030 if (key$=chr$(31) or y=1) then
14040 select case No
14050 case 0:
14060       No=1:sp_on 1,1:sp_on 0,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14070 case 1:
14080       No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14090 case 2:
14100       No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14110 case 3:
14120       No=4:sp_on 4,1:sp_on 3,0:beep:sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14130 case 4:
14140       No=0:sp_on 0,1:sp_on 4,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14150 end select
14160 endif
14170 '*****************************************************
14180 '1.下のカーソル　ここまで
14190 '*****************************************************
14200 '*****************************************************
14210 '2.上のカーソル　ここから
14220 '*****************************************************
14230 if (key$=chr$(30) or y=-1) then
14240 select case No
14250 case 0:
14260        No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14270 case 1:
14280        No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14290 case 2:
14300        No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14310 case 3:
14320        No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14330 case 4:
14340        No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14350 end select
14360 endif
14370 '******************************************************
14380 '2.上のカーソル　ここまで
14390 '******************************************************
14400 '******************************************************
14410 '3.決定ボタン　ここから
14420 '******************************************************
14430 if (key$=chr$(13) or bg=2) then
14440 select case No
14450 case 0:
14460        sp_on 0,0:goto Entry_moji_Top:
14470 case 1:
14480        sp_on 1,0:goto Entry_moji_check:
14490 case 2:
14500        sp_on 2,0:goto Moji_Kikkyo_Top:
14510 case 3:
14520        sp_on 3,0:goto Main_Screen1:
14530 case 4:
14540        sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14550 end select
14560 endif
14570 '******************************************************
14580 '3.決定ボタン　ここまで
14590 '******************************************************
14600 'Input"番号:",selectNo
14610 'if selectNo=1 then goto Entry_moji_Top:
14620 'if selectNo=2 then goto Entry_moji_check:
14630 'if selectNo=3 then goto Moji_Kikkyo_Top:
14640 'if selectNo=4 then goto Main_Screen1:
14650 'if selectNo=5 then talk"終了します":cls 3:end
14660 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
14670 '3 番号で吉凶を見る 入力
14680 Moji_Kikkyo_Top:
14690 font 46:color rgb(0,0,0),,rgb(176,196,222)
14700 'グラフィック描画領域　ここから
14710 cls 3:talk""
14720 line (0,0)-(650,60),rgb(0,0,255),bf
14730 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
14740 line (0,60)-(650,255),rgb(127,255,212),bf
14750 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
14760 line (0,255)-(650,350),rgb(0,255,0),bf
14770 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
14780 'グラフィック描画領域 ここまで
14790 color rgb(255,255,255)
14800 print"画数での吉凶判定"+chr$(13)
14810 color rgb(255,0,255)
14820 print"画数を入れてください"+chr$(13)
14830 print"(Max:81文字)"+chr$(13)
14840 color rgb(0,0,0)
14850 Input"文字の画数:",Number
14860 if Number > 81 then goto Moji_Kikkyo_Top:
14870 if Number <=81 then goto Moji_Kikkyo:
14880 '3.番号で吉凶を見る 結果表示
14890 'グラフィック描画領域　ここから
14900 Moji_Kikkyo:
14910 cls 3
14920 line (0,0)-(700,60),rgb(0,0,255),bf
14930 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
14940 line (0,60)-(700,260),rgb(127,255,212),bf
14950 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
14960 line (0,260)-(700,350),rgb(0,255,0),bf
14970 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
14980 'グラフィック描画領域　ここまで
14990 color rgb(255,255,255)
15000 print "画数で吉凶を求める"+chr$(13)
15010 color rgb(255,0,255)
15020 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15030 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15040 'endif
15050 color rgb(0,0,0)
15060 print"エンターキーを押してください"
15070 key$=Input$(1)
15080 If key$=chr$(13) then goto seimeihandan_setting:
15090 '3.ヘルプ
15100 help:
15110 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15120 No=0:y=0:key$="":bg=0
15130 talk""
15140 '描画領域 ここから
15150 line (0,0) - (550,60),rgb(0,0,255),bf
15160 sp_on 0,1:sp_put 0,(10,100),0,0
15170 pen 5:line(0,0) - (547,57),rgb(127,255,212),b
15180 line (0,60) - (550,570),rgb(127,255,212),bf
15190 pen 5:line(0,57) - (547,567),rgb(0,0,255),b
15200 line (0,570) - (550,650),rgb(0,255,0),bf
15210 pen 5:line(0,567) - (547,647),rgb(0,0,255),b
15220 '描画領域　ここまで
15230 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15240 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15250 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15260 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15270 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15280 color rgb(255,0,255):print " :4.前の画面に戻る" + chr$(13)
15290 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15300 'color rgb(0,0,0):Input"番号:",selectNo
15310 help2:
15320 y=0:key$="":bg=0
15330 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15340 key$=inkey$
15350 y=stick(1)
15360 bg=strig(1)
15370 pause 2.50*100
15380 wend
15390 if (y=1 or key$=chr$(30)) then
15400 select case No
15410 case 0:
15420        No=1:sp_on 1,1:sp_on 0,0:beep:sp_put 1,(10,200),1,0:goto help2:
15430 case 1:
15440        No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto help2:
15450 case 2:
15460        No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto help2:
15470 case 3:
15480        No=4:sp_on 4,1:sp_on 3,0:beep:sp_put 4,(10,500),4,0:goto help2:
15490 case 4:
15500        No=0:sp_on 0,1:sp_on 4,0:beep:sp_put 0,(10,100),0,0:Goto help2:
15510 end select
15520 endif
15530 if (key$=chr$(13) or bg=2) then
15540 select case No
15550 case 0:
15560        sp_on 0,0:goto Version_info:
15570 case 1:
15580        sp_on 1,0:goto Document_info:
15590 case 2:
15600        sp_on 2,0:goto Config_Setting:
15610 case 3:
15620        sp_on 3,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
15630 case 4:
15640         sp_on 4,0:goto Main_Screen1:
15650 end select
15660 endif
15670 'if selectNo = 1 then goto Version_info:
15680 'if selectNo = 2 then goto Document_info:
15690 'if selectNo = 3 then goto Config_Setting:
15700 'プログラムの終了
15710 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
15720 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
15730 '前の画面に戻る
15740 'if selectNo=5 then goto Main_Screen1:
15750 'if selectNo > 4 or selectNo = 0 then goto help:
15760 'Menu1　画面
15770 talk"調べたい名前のみよじをいれてください"
15780 'グラフィック描画領域　ここから
15790 Parson_name_kikkyo:
15800 cls 3
15810 line (0,0)-(1050,60),rgb(0,0,255),bf
15820 pen 5:line(0,0)-(1047,57),rgb(127,255,212),b
15830 line (0,60)-(1050,180),rgb(127,255,212),bf
15840 pen 5:line(0,57)-(1047,177),rgb(0,0,255),b
15850 line (0,180)-(1050,250),rgb(0,255,0),bf
15860 pen 5:line(0,177)-(1047,247),rgb(0,0,255),b
15870 'グラフィック描画領域　ここまで
15880 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
15890 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
15900 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
15910 cls
15920 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
15930 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
15940 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
15950 goto complate_Kyusei:
15960 'メニュー6　バージョン表示
15970 'グラフィック　描画　領域　 ここから
15980 Version_info:
15990 cls 3:bg=0:talk ""
16000 line (0,0)-(1000,60),rgb(0,0,255),bf
16010 pen 5:line (0,0)-(997,57),rgb(127,255,212),b
16020 line (0,60)-(1000,665),rgb(127,255,212),bf
16030 pen 5:line(0,57)-(997,662),rgb(0,0,255),b
16040 line (0,665)-(1000,750),rgb(0,255,0),bf
16050 pen 5:line(0,662)-(997,747),rgb(0,0,255),b
16060 'グラフィック　描画 領域　 ここまで
16070 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16080 color rgb(255,0,255):print"姓名判断"+chr$(13)
16090 color rgb(255,0,255):PRINT"Ver:232.2021.10.01" + chr$(13)
16100 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16110 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16120 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16130 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16140 'ここを書き換える
16150 talk "このプログラムは、姓名判断バージョン2.32です"
16160 color rgb(0,0,0):print"エンターキーを押してください"
16170 Version_info2:
16180 bg=0
16190 while (bg<>2)
16200 bg=strig(1)
16210 pause 2.50*100
16220 wend
16230 if bg = 2  then beep:goto Main_Screen1:
16240 complate_Kyusei:
16250 '文字数を求める変数
16260 buf_char_size=len(name$)
16270 buf_char_size2=len(name2$)
16280 '入力した文字を代入する変数
16290 '入力した文字を配列に代入する処理
16300 '姓名判断データー文字比較
16310 '画数を求める関数
16320 func char_count(buf_count$)
16330 count=0:buffer=0
16340 '1画の文字 23文字
16350 for j=0 to ((Moji_1)-1)
16360 if buf_count$=buf_char_hiragana1$(j) then
16370 count =1:
16380 endif
16390 next j
16400 '2画の文字
16410 for j=0 to ((Moji_2)-1)
16420 if buf_count$=buf_char_hiragana2$(j)  then
16430 count = 2:
16440 endif
16450 next j
16460 for j=0 to ((Moji_3)-1)
16470 if buf_count$=buf_char_hiragana3$(j) then
16480 count =3:
16490 endif
16500 next j
16510 for j=0 to ((Moji_4)-1)
16520 if buf_count$=buf_char_hiragana4$(j) then
16530 count = 4:
16540 endif
16550 next j
16560 for j=0 to ((Moji_5)-1)
16570 if buf_count$=buf_char_hiragana5$(j) then
16580 count = 5:
16590 endif
16600 next j
16610 for j=0 to ((Moji_6)-1)
16620 if buf_count$=buf_char_hiragana6$(j) then
16630 count= 6
16640 endif
16650 next j
16660 for  j=0 to ((Moji_7)-1)
16670 if buf_count$=buf_char_hiragana7$(j) then
16680 count=  7
16690 endif
16700 next j
16710 for j=0 to ((Moji_8)-1)
16720 if buf_count$=buf_char_hiragana8$(j) then
16730 count= 8
16740 endif
16750 next j
16760 for j=0 to ((Moji_9)-1)
16770 if buf_count$=buf_char_hiragana9$(j) then
16780 count=9
16790 endif
16800 next j
16810 for j=0 to ((Moji_10)-1)
16820 if buf_count$=buf_char_hiragana10$(j) then
16830 count=10
16840 endif
16850 next j
16860 for j=0 to ((Moji_11)-1)
16870 if buf_count$=buf_char_hiragana11$(j) then
16880 count=11
16890 endif
16900 next j
16910 for j=0 to  ((Moji_12)-1)
16920 if buf_count$=buf_char_hiragana12$(j) then
16930 count=12
16940 endif
16950 next j
16960 for j=0 to ((Moji_13)-1)
16970 if buf_count$=buf_char_hiragana13$(j) then
16980 count=13
16990 endif
17000 next j
17010 for j=0 to ((Moji_14)-1)
17020 if buf_count$=buf_char_hiragana14$(j) then
17030 count=14
17040 endif
17050 next j
17060 for j=0 to ((Moji_15)-1)
17070 if buf_count$=buf_char_hiragana15$(j) then
17080 count=15
17090 endif
17100 next j
17110 for j=0 to ((Moji_16)-1)
17120 if buf_count$=buf_char_hiragana16$(j) then
17130 count=16
17140 endif
17150 next j
17160 for j=0 to ((Moji_17)-1)
17170 if buf_count$=buf_char_hiragana17$(j) then
17180 count=17
17190 endif
17200 next j
17210 for j=0 to ((Moji_18)-1)
17220 if buf_count$=buf_char_hiragana18$(j) then
17230 count=18
17240 endif
17250 next j
17260 for j=0 to ((Moji_19)-1)
17270 if buf_count$=buf_char_hiragana19$(j) then
17280 count=19
17290 endif
17300 next j
17310 for j=0 to ((Moji_20)-1)
17320 if buf_count$=buf_char_hiragana20$(j) then
17330 count=20
17340 endif
17350 next i
17360 for j=0 to ((Moji_21)-1)
17370 if buf_count$=buf_char_hiragana21$(j) then
17380 count=21
17390 endif
17400 next j
17410 for j=0 to ((Moji_22)-1)
17420 if buf_count$=buf_char_hiragana22$(j) then
17430 count=22
17440 endif
17450 next j
17460 for j=0 to ((Moji_23)-1)
17470 if buf_count$=buf_char_hiragana23$(j) then
17480 count=23
17490 endif
17500 next j
17510 for j=0 to ((Moji_24)-1)
17520 if buf_count$=buf_char_hiragana24$(j) then
17530 count=24
17540 endif
17550 buffer = count
17560 next j
17570 endfunc buffer
17580 func show_sex_type$(sex$)
17590 buf_number=val(Mid$(sex$,4,1))
17600 if buf_number = 1 then
17610 buf_show_sex_type$="性別:女性"
17620 else
17630 if buf_number=2 then
17640 buf_show_sex_type$="性別:男性"
17650 endif
17660 endif
17670 endfunc buf_show_sex_type$
17680 '合計を求める関数
17690 func totalcounts(buffers$)
17700 buffers=0:
17710 for i=0 to len(buffers$)-1
17720 buffers=buffers+char_count(buffers$)
17730 next i
17740 endfunc buffers
17750 buf_count2=0:buf_count3=0
17760 'dim buf_Input_data$(len(name$))
17770 '1.苗字の文字数
17780 for n=0 to (buf_char_size-1)
17790 buf_Input_data$(n)=mid$(name$,n+1,1)
17800 next n
17810 for i=0 to (buf_char_size-1)
17820 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
17830 next i
17840 '2.名の文字数
17850 for n2=0 to (buf_char_size2-1)
17860 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
17870 next n2
17880 for i2=0 to (buf_char_size2-1)
17890 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
17900 next i2
17910 '総数を出す
17920 select case (buf_char_size + buf_char_size2)
17930 case 6:
17940 if ((buf_char_size=4) and (buf_char_size2=2)) then
17950 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
17960 endif
17970 if ((buf_char_size=3) and (buf_char_size2=3)) then
17980 if buf_Input_data$(1)="々" then
17990 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18000 else
18010 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18020 endif
18030 endif
18040 case 5:
18050 if ((buf_char_size=4) and (buf_char_size2=1)) then
18060 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18070 endif
18080 if ((buf_char_size=2) and (buf_char_size2=3)) then
18090 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18100 endif
18110 if ((buf_char_size=3) and (buf_char_size2=2)) then
18120 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18130 endif
18140 case 4:
18150 if ((buf_char_size=1) and (buf_char_size2=3)) then
18160 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18170 endif
18180 if ((buf_char_size=2) and (buf_char_size2=2)) then
18190 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18200 endif
18210 if ((buf_char_size=3) and (buf_char_size2=1)) then
18220 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18230 endif
18240 case 3:
18250 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18260 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18270 endif
18280 if ((buf_char_size=2) and (buf_char_size2=1)) then
18290 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18300 endif
18310 case 2:
18320 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18330 case else:
18340 end select
18350 '文字の総数をだす
18360 total_name$ = name$ + name2$
18370 '1.姓星を求める
18380 select case buf_char_size
18390 '苗字1文字のとき
18400 case 1:
18410 buf_seisei = char_count(buf_Input_data$(0)) + 1
18420 '苗字2文字の時
18430 case 2:
18440 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18450 '苗字3文字のとき
18460 case 3:
18470 if (buf_Input_data$(1)="々")  then
18480 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18490 else
18500 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18510 endif
18520 '苗字4文字のとき
18530 case 4:
18540 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18550 case else:
18560 end select
18570 '2.主星をだす
18580 '2.主星
18590 select case (buf_char_size + buf_char_size2)
18600 '姓名5文字のとき
18610 case 6:
18620 if ((buf_char_size=4) and (buf_char_size2=2)) then
18630 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18640 endif
18650 if ((buf_char_size=3) and (buf_char_size2=3)) then
18660 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18670 endif
18680 case 5:
18690 if ((buf_char_size=4) and (buf_char_size2=1)) then
18700 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18710 endif
18720 if ((buf_char_size=2) and (buf_char_size2=3)) then
18730 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18740 endif
18750 if ((buf_char_size=3) and (buf_char_size2=2)) then
18760 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18770 endif
18780 '姓名4文字のとき
18790 case 4:
18800 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
18810 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
18820 endif
18830 if ((buf_char_size=1) and (buf_char_size2=3)) then
18840 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
18850 endif
18860 if ((buf_char_size=3) and (buf_char_size2=1)) then
18870 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18880 endif
18890 '姓名3文字のとき
18900 case 3:
18910 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
18920 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
18930 else
18940 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
18950 endif
18960 case 2:
18970 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18980 case else:
18990 end select
19000 '3.名星を求める
19010 select case (buf_char_size + buf_char_size2)
19020 case 6:
19030 if ((buf_char_size=3) and (buf_char_size2=3)) then
19040 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19050 endif
19060 if ((buf_char_size=4) and (buf_char_size2=2)) then
19070 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19080 endif
19090 case 5:
19100 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19110 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19120 endif
19130 if ((buf_char_size=3) and (buf_char_size2=2)) then
19140 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19150 endif
19160 if ((buf_char_size=2) and (buf_char_size2=3))  then
19170 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19180 endif
19190 case 4:
19200 if ((buf_char_size=2) and (buf_char_size2=2)) then
19210 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19220 endif
19230 if ((buf_char_size=1) and (buf_char_size2=3)) then
19240 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19250 endif
19260 if ((buf_char_size=3) and (buf_char_size2=1)) then
19270 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19280 endif
19290 case 3:
19300 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19310 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19320 endif
19330 if ((buf_char_size=2) and (buf_char_size2=1)) then
19340 buf_meisei=char_count(buf_Input_data2$(0))+1
19350 endif
19360 case 2:
19370 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19380 case else:
19390 end select
19400 '4.外星を求める
19410 select case (buf_char_size + buf_char_size2)
19420 case 6:
19430 if buf_Input_data$(1)="々"  then
19440 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19450 else
19460 if ((buf_char_size=4) and (buf_char_size2=2)) then
19470 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19480 else
19490 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19500 endif
19510 endif
19520 case 5:
19530 if ((buf_char_size=4) and (buf_char_size2=1)) then
19540 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19550 endif
19560 if ((buf_char_size=3) and (buf_char_size2=2)) then
19570 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19580 endif
19590 if ((buf_char_size=2) and (buf_char_size2=3)) then
19600 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19610 endif
19620 case 4:
19630 if ((buf_char_size=2) and (buf_char_size2=2)) then
19640 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
19650 endif
19660 if ((buf_char_size=1) and (buf_char_size2=3)) then
19670 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19680 endif
19690 if ((buf_char_size=3) and (buf_char_size2=1)) then
19700 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
19710 endif
19720 case 3:
19730 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19740 buf_gaisei=1+char_count(buf_Input_data2$(1))
19750 endif
19760 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
19770 buf_gaisei = char_count(buf_Input_data$(0)) + 1
19780 endif
19790 case 2:
19800 buf_gaisei = 2
19810 case else:
19820 end select
19830 '診断結果表示
19840 '1.姓星を出す
19850 'グラフィック描画領域　ここから
19860 Result_Kyusei_Kikkyo:
19870 cls 3:
19880 '縦の画面
19890 '1行目
19900 line (0,0)-(1500,60),rgb(0,0,255),bf
19910 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
19920 '2行目
19930 line (0,60)-(1500,665),rgb(127,255,212),bf
19940 pen 5:line(0,57)-(1497,662),rgb(0,0,255),b
19950 '3行目
19960 line (0,665)-(1500,720),rgb(0,255,0),bf
19970 pen 5:line(0,662)-(1497,717),rgb(0,0,255),b
19980 '横の画面　吉凶のランク表
19990 'グラフィック描画領域　ここまで
20000 talk"診断結果です"
20010 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20020 color Rgb(255,0,255)
20030 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20040 '2.主星を出す
20050 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20060 '3.名星を求める
20070 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20080 '4.外星を求める
20090 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20100 '5.総数を出す
20110 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20120 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20130 color rgb(0,0,0)
20140 print"エンターキーを押してください"
20150 key$=Input$(1)
20160 if key$ = chr$(13) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20170 '2.主星を出す
20180 'メニュー3 登録文字の確認 ここから
20190 'グラフィック領域　ここから
20200 'タイトル青 文字:白
20210 Entry_moji_Top:
20220 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
20230 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
20240 line (0,62)-(1050,155),rgb(0,255,255),bf
20250 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
20260 line (0,155)-(1050,260),rgb(0,255,0),bf
20270 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
20280 'グラフィック領域　ここまで
20290 talk"調べたい文字をひと文字入れてください。"
20300 '文字:白
20310 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20320 '文字:アクア
20330 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20340 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20350 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20360 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20370 '1画の文字
20380 for i=0 to ((Moji_1)-1)
20390 if (name$=buf_char_hiragana1$(i)) then
20400 buffer_count=1:goto Moji_count_check:
20410 endif
20420 next i
20430 '2画の文字
20440 for i=0 to ((Moji_2)-1)
20450 if (name$=buf_char_hiragana2$(i)) then
20460 buffer_count=2:goto Moji_count_check:
20470 endif
20480 next i
20490 '3画の文字
20500 for i=0 to ((Moji_3)-1)
20510 if (name$=buf_char_hiragana3$(i)) then
20520 buffer_count=3:goto Moji_count_check:
20530 endif
20540 next i
20550 '4画の文字
20560 for i=0 to ((Moji_4)-1)
20570 if (name$=buf_char_hiragana4$(i)) then
20580 buffer_count=4:goto Moji_count_check:
20590 endif
20600 next i
20610 '5画の文字
20620 for i=0 to ((Moji_5)-1)
20630 if (name$=buf_char_hiragana5$(i)) then
20640 buffer_count=5:goto Moji_count_check:
20650 endif
20660 next i
20670 '6画の文字
20680 for i=0 to ((Moji_6)-1)
20690 if (name$=buf_char_hiragana6$(i)) then
20700 buffer_count=6:goto Moji_count_check:
20710 endif
20720 next i
20730 '7画の文字
20740 for i=0 to ((Moji_7)-1)
20750 if (name$=buf_char_hiragana7$(i)) then
20760 buffer_count=7:goto Moji_count_check:
20770 endif
20780 next i
20790 '8画の文字 120 文字
20800 for i=0 to ((Moji_8)-1)
20810 if (name$=buf_char_hiragana8$(i)) then
20820 buffer_count=8:goto Moji_count_check:
20830 endif
20840 next i
20850 '9画の文字  103文字
20860 for i=0 to ((Moji_9)-1)
20870 if (name$=buf_char_hiragana9$(i)) then
20880 buffer_count=9:goto Moji_count_check:
20890 endif
20900 next i
20910 '10画の文字 98文字
20920 for i=0 to ((Moji_10)-1)
20930 if (name$=buf_char_hiragana10$(i)) then
20940 buffer_count=10:goto Moji_count_check:
20950 endif
20960 next i
20970 '11画の文字 98文字
20980 for i=0 to ((Moji_11)-1)
20990 if (name$=buf_char_hiragana11$(i)) then
21000 buffer_count=11:goto Moji_count_check:
21010 endif
21020 next i
21030 '12画の文字
21040 for i=0 to ((Moji_12)-1)
21050 if (name$=buf_char_hiragana12$(i)) then
21060 buffer_count=12:goto Moji_count_check:
21070 endif
21080 next i
21090 '13画の文字
21100 for i=0 to ((Moji_13)-1)
21110 if (name$=buf_char_hiragana13$(i)) then
21120 buffer_count=13:goto Moji_count_check:
21130 endif
21140 next i
21150 '14画の文字
21160 for i=0 to ((Moji_14)-1)
21170 if (name$=buf_char_hiragana14$(i)) then
21180 buffer_count=14:goto Moji_count_check:
21190 endif
21200 next i
21210 '15画の文字
21220 for i=0 to ((Moji_15)-1)
21230 if (name$=buf_char_hiragana15$(i)) then
21240 buffer_count=15:goto Moji_count_check:
21250 endif
21260 next i
21270 '16画の文字
21280 for i=0 to ((Moji_16)-1)
21290 if (name$=buf_char_hiragana16$(i)) then
21300 buffer_count=16:goto Moji_count_check:
21310 endif
21320 next i
21330 '17画の文字
21340 for i=0 to ((Moji_17)-1)
21350 if (name$=buf_char_hiragana17$(i)) then
21360 buffer_count=17:goto Moji_count_check:
21370 endif
21380 next i
21390 '18画の文字 25
21400 for i=0 to ((Moji_18)-1)
21410 if (name$=buf_char_hiragana18$(i)) then
21420 buffer_count=18:goto Moji_count_check:
21430 endif
21440 next i
21450 '19画の文字 17
21460 for i=0 to ((Moji_19)-1)
21470 if (name$=buf_char_hiragana19$(i)) then
21480 buffer_count=19:goto Moji_count_check:
21490 endif
21500 next i
21510 '20画の文字 13
21520 for i=0 to ((Moji_20)-1)
21530 if (name$=buf_char_hiragana20$(i)) then
21540 buffer_count=20:goto Moji_count_check:
21550 endif
21560 next i
21570 '21画の文字 6
21580 for i=0 to ((Moji_21)-1)
21590 if (name$=buf_char_hiragana21$(i)) then
21600 buffer_count=21:goto Moji_count_check:
21610 endif
21620 next i
21630 '22画の文字 4
21640 for i=0 to ((Moji_22)-1)
21650 if (name$=buf_char_hiragana22$(i)) then
21660 buffer_count=22:goto Moji_count_check:
21670 endif
21680 next i
21690 '23画の文字 3
21700 for i=0 to ((Moji_23)-1)
21710 if (name$=buf_char_hiragana23$(i)) then
21720 buffer_count=23:goto Moji_count_check:
21730 endif
21740 next i
21750 '24画の文字
21760 for i=0 to ((Moji_24)-1)
21770 if (name$=buf_char_hiragana24$(i)) then
21780 buffer_count=24:goto Moji_count_check:
21790 endif
21800 next i
21810 'Menu3 結果表示 画数の登録確認
21820 Moji_count_check:
21830 if (buffer_count=0) then
21840 '登録文字がない場合の処理
21850 'グラフィック領域　ここから
21860 'Moji_count_check:
21870 cls 3
21880 '1行
21890 line (0,0)-(840,60),rgb(0,0,255),bf
21900 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
21910 '2行目
21920 line (0,60)-(840,165),rgb(127,255,212),bf
21930 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
21940 '3行目
21950 line (0,165)-(840,370),rgb(0,0,255),bf
21960 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
21970 '4行目
21980 line (0,370)-(840,450),rgb(0,255,0),bf
21990 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
22000 'グラフィック領域　ここまで
22010 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22020 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22030 talk "この文字は、登録されていません"
22040 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22050 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22060 color rgb(0,0,0):print"コマンド:"
22070 key$=Input$(1)
22080 if key$="q" or key$="Q" then goto Main_Screen1:
22090 if key$=chr$(13) then goto Entry_moji_Top:
22100 'goto 19850
22110 else
22120 'グラフィック描画領域　ここから
22130 'Entry_moji_check:
22140 cls 3
22150 '1行目
22160 line (0,0)-(840,58),rgb(0,0,255),bf
22170 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
22180 '2行目
22190 line (0,58)-(840,100),rgb(127,255,212),bf
22200 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
22210 '3行目
22220 line (0,100)-(840,280),rgb(0,0,255),bf
22230 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
22240 '4行目
22250 line (0,280)-(840,340),rgb(0,255,0),bf
22260 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
22270 'グラフィック描画領域　ここまで
22280 color rgb(255,255,255):print "登録文字画数結果表示"
22290 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22300 endif
22310 color rgb(255,255,255)
22320 print"q+エンターキー:トップ画面"+chr$(13)
22330 print"エンターキー:もう一度やる"+chr$(13)
22340 color rgb(0,0,0)
22350 print"コマンド:"
22360 key$=Input$(1)
22370 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
22380 if key$="q" then buffer_count=0:goto Main_Screen1:
22390 if not(key$="q") then goto Moji_count_check:
22400 'Menu2 名前の陰陽を見る
22410 'グラフィック描画領域 ここから
22420 name_inyo_check:
22430 cls 3:line (0,0)-(800,60),rgb(0,0,255),bf
22440 PEN 5:line(0,0)-(797,57),rgb(127,255,212),b
22450 LINE (0,60)-(800,250),rgb(127,255,212),bf
22460 pen 5:line (0,57)-(797,247),rgb(0,0,255),b
22470 line (0,250)-(800,350),rgb(0,255,0),bf
22480 pen 5:line(0,247)-(797,347),rgb(0,0,255),b
22490 'グラフィック描画領域　ここまで
22500 cls
22510 color rgb(255,255,255)
22520 print"Menu2 名前の陰陽を見る"+chr$(13)
22530 COLOR rgb(255,0,255)
22540 PRINT"(●:陽,○:陰)"+chr$(13)
22550 print"調べたい名前苗字を入れてください"+chr$(13)
22560 color rgb(0,0,0)
22570 Input"調べたい名前の苗字:",name$
22580 if name$="" then goto name_inyo_check:
22590 'Menu2 陰陽の吉凶を見る 名入力
22600 cls:color rgb(255,255,255)
22610 print"Menu2 名前の陰陽を見る"+chr$(13)
22620 color rgb(255,0,255)
22630 print"(●:陽,○:陰)"+chr$(13)
22640 print"調べたい名前の名を入れてください"+chr$(13)
22650 color rgb(0,0,0)
22660 Input"調べたい名前の名:",name2$
22670 if name2$="" then goto name_inyo_check:
22680 for i=0 to len(name$)-1
22690 name_array$(i)=Mid$(name$,i+1,1)
22700 if char_count(name_array$(i)) mod 2 = 1  then
22710 name_array$(i)="○":buffer$=buffer$+name_array$(i)
22720 else
22730 name_array$(i)="●":buffer$=buffer$+name_array$(i)
22740 endif
22750 next i
22760 for i=0 to len(name2$)-1
22770 name_array2$(i)=Mid$(name2$,i+1,1)
22780 if char_count(name_array2$(i)) mod 2 = 1 then
22790 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
22800 else
22810 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
22820 endif
22830 next i
22840 bufname$=buffer$+buffer2$
22850 '陰陽のタイプ ここから
22860 select case (len(bufname$))
22870 '2文字
22880 case 2:
22890 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
22900 '
22910 '  endif
22920 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
22930 '  endif
22940 '3文字
22950 case 3:
22960 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
22970 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
22980 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
22990 '4文字
23000 case 4:
23010 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23020 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23030 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23040 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23050 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23060 '5文字
23070 case 5:
23080 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23090 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23100 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23110 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23120 case 6:
23130 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23140 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23150 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23160 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23170 case else:
23180 buffer_name$="例外に入りました"
23190 end select
23200 '陰陽のタイプ　ここまで
23210 'グラフィック描画領域　ここから
23220 cls 2
23230 line (0,0)-(850,60),rgb(0,0,250),bf
23240 pen 5:line(0,0)-(847,57),rgb(127,255,212),b
23250 line (0,60)-(850,285),rgb(127,255,212),bf
23260 pen 5:line(0,57)-(847,282),rgb(0,0,255),b
23270 line (0,280)-(850,380),rgb(0,255,0),bf
23280 pen 5:line(0,277)-(847,377),rgb(0,0,255),b
23290 'グラフィック描画領域 ここまで
23300 color rgb(255,255,255)
23310 cls:print"名前:";name$ + name2$ + chr$(13)
23320 color rgb(255,0,255)
23330 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23340 print buffer_name$;chr$(13)
23350 color rgb(0,0,0)
23360 print"エンターキーを押してください"
23370 key$=Input$(1)
23380 if key$ = chr$(13) then buffer$="":buffer2$="": goto Main_Screen1:
23390 'Menu3
23400 '登録文字数の確認
23410 Entry_moji_check:
23420 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
23430 'グラフィック描画領域　ここから
23440 cls 3
23450 '1行目
23460 line (0,0)-(800,60),rgb(0,0,255),bf
23470 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
23480 '2行目
23490 line (0,60)-(800,150),rgb(157,255,212),bf
23500 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
23510 '3行目
23520 line (0,150)-(800,250),rgb(0,255,0),bf
23530 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
23540 'グラフィック描画領域 ここまで
23550 color rgb(255,255,255)
23560 PRINT"登録文字数の確認"+chr$(13)
23570 color rgb(255,0,255)
23580 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
23590 TALK"登録文字数は"+str$(totalmoji)+"もじです"
23600 color rgb(0,0,0)
23610 'print"エンターキーを押してください"+chr$(13)
23620 'key$=Input$(1)
23630 print"エンターキーを押してください"
23640 key$=Input$(1)
23650 if key$ = chr$(13) then goto Main_Screen1:
23660 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
23670 nick_name_check:
23680 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
23690 'グラフィック描画領域　ここから
23700 cls 3
23710 line (0,0)-(1100,60),rgb(0,0,250),bf
23720 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
23730 line (0,60)-(1100,160),rgb(127,255,212),bf
23740 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
23750 line (0,160)-(1100,270),rgb(0,255,0),bf
23760 pen 5:line(0,157)-(1097,267),rgb(0,0,255),b
23770 'グラフィック描画領域　ここまで
23780 buf=0:cls
23790 color rgb(255,255,255)
23800 Print"名前(ニックネーム)の総数で吉凶を判断します"+chr$(13)
23810 color rgb(255,0,255)
23820 PRINT"名前(ニックネーム)を入れてください"+chr$(13)
23830 color rgb(0,0,0)
23840 Input"名前:",name$
23850 if name$="" then goto nick_name_check:
23860 for n=0 to (len(name$)-1)
23870 buf_Input_data$(n)=mid$(name$,n+1,1)
23880 buf=buf+char_count(buf_Input_data$(n))
23890 next n
23900 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
23910 '結果表示　グラフィック　ここから
23920 cls 3
23930 line (0,0)-(1100,60),rgb(0,0,255),bf
23940 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
23950 line (0,60)-(1100,160),rgb(127,255,212),bf
23960 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
23970 line (0,160)-(1100,540),rgb(0,255,0),bf
23980 pen 5:line(0,157)-(1097,537),rgb(0,0,255),b
23990 '結果表示 グラフィック領域 ここまで
24000 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24010 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24020 color rgb(0,0,0)
24030 print "番号を選んでください"+chr$(13)
24040 PRINT "エンターキー:もう一度やる"+chr$(13)
24050 print "q:トップに戻る"+chr$(13)
24060 print "コマンド:"
24070 key$=Input$(1)
24080 if key$="q" then goto Main_Screen1:
24090 if key$=chr$(13) then goto nick_name_check:
24100 'if No > 2 then goto 23560
24110 '名前2文字
24120 'グラフィック描画領域　ここから
24130 Result_Anzai:
24140 CLS 3
24150 line (0,0)-(1400,60),rgb(0,0,255),bf
24160 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24170 line (0,60)-(1400,540),rgb(127,255,212),bf
24180 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
24190 line (0,540)-(1400,860),rgb(0,255,0),bf
24200 pen 5:line(0,537)-(1397,857),rgb(0,0,255),b
24210 'グラフィック描画領域 ここまで
24220 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
24230 color rgb(255,0,255)
24240 print"天運";buf_tenunn;chr$(13)
24250 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
24260 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
24270 print"外運";buf_gaiunn;chr$(13)
24280 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
24290 COLOR rgb(0,0,0)
24300 PRINT"q+エンターキー:トップ画面"+chr$(13)
24310 print"エンターキー:もう一度、吉凶をみる"+chr$(13)
24320 print "コマンド:"
24330 key$=Input$(1)
24340 if key$=chr$(13) then goto Anzai_Top_Screen:
24350 if key$="q" or key$="Q" then goto Main_Screen1:
24360 '参考文献 表示 ここから
24370 'グラフィック描画領域　 ここから
24380 Document_info:
24390 cls 3
24400 line (0,0)-(1100,60),rgb(0,0,255),bf
24410 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24420 line (0,60)-(1100,650),rgb(127,255,212),bf
24430 pen 5:line(0,57)-(1097,647),rgb(0,0,255),b
24440 line (0,650)-(1100,730),rgb(0,255,0),bf
24450 pen 5:line(0,647)-(1097,727),rgb(0,0,255),b
24460 'グラフィック描画領域  ここまで
24470 '参考文献１
24480 cls
24490 color rgb(255,255,255)
24500 print"◎参考文献"+chr$(13)
24510 color rgb(255,0,255)
24520 print "参考文献 １/4"+chr$(13)
24530 print "Title:九星姓名判断"+chr$(13)
24540 print "Author:高嶋　 美伶"+chr$(13)
24550 print "出版社:日本文芸者"+chr$(13)
24560 print "ISBN:4-537-20073-1"+chr$(13)
24570 print "定価:1,200+税"+chr$(13)
24580 color rgb(0,0,0)
24590 print "エンターキーを押してください"
24600 key$=Input$(1)
24610 if key$=chr$(13)  then goto Document_info2:
24620 '参考文献２
24630 Document_info2:
24640 cls
24650 color rgb(255,255,255)
24660 print "◎参考文献"+chr$(13)
24670 color rgb(255,0,255)
24680 print "参考文献 ２/4"+chr$(13)
24690 print "Title:究極の姓名判断"+chr$(13)
24700 print "Author:安斎　勝洋"+chr$(13)
24710 print "出版社:説話社"+chr$(13)
24720 print "ISBN:978-4-916217-61-5"+chr$(13)
24730 print "定価:1,800円+税"+chr$(13)
24740 color rgb(0,0,0)
24750 print"エンターキーを押してください"
24760 key$=Input$(1)
24770 if key$=chr$(13) then goto Document_info3:
24780 '参考文献３
24790 Document_info3:
24800 cls
24810 color rgb(255,255,255)
24820 print"◎参考文献"+chr$(13)
24830 color rgb(255,0,255)
24840 print "参考文献 3/4"+chr$(13)
24850 print "Title:新明解現在漢和辞典"+chr$(13)
24860 print "Author:影山輝國(編集主幹)他"+chr$(13)
24870 print "出版社:三省堂"+chr$(13)
24880 print "ISBN:978-4-385-13755-1"+chr$(13)
24890 print "定価:2,800円 + 税"+chr$(13)
24900 color rgb(0,0,0)
24910 print "エンターキーを押してください"
24920 key$=Input$(1)
24930 if key$=chr$(13) then goto Document_info4:
24940 '参考文献４　
24950 '描画領域　ここから
24960 Document_info4:
24970 cls 3
24980 line (0,0)-(1100,60),rgb(0,0,255),bf
24990 line (0,0)-(1100,57),rgb(0,255,0),b
25000 line (0,60)-(1100,650),rgb(127,255,212),bf
25010 LINE (0,60)-(1100,647),rgb(0,0,255),b
25020 LINE (0,650)-(1100,830),rgb(0,255,0),bf
25030 line (0,650)-(1100,833),rgb(0,0,255),b
25040 '描画領域　ここまで
25050 'cls
25060 color rgb(255,255,255)
25070 print "◎参考文献"+chr$(13)
25080 COLOR rgb(255,0,255)
25090 print "参考文献 4/4" + chr$(13)
25100 print "Title:姓名の暗号" + chr$(13)
25110 print "Author:樹門　幸宰(じゅもん こうざい)"+chr$(13)
25120 print "出版社:幻冬舎"+chr$(13)
25130 print "定価:1400円 + 税"+chr$(13)
25140 print "ISBN:4-344-00777-8"+chr$(13)
25150 color rgb(0,0,0)
25160 print "参考文献トップに行く:エンターキー"+chr$(13)
25170 print "スペース：トップメニューに行く"+chr$(13)
25180 key$=Input$(1)
25190 'トップ画面に戻る
25200 if key$ = " " then goto help:
25210 if key$ = chr$(13) then goto Document_info:
25220 '安斎流姓名判断　メニュー
25230 'グラフィック領域　ここから
25240 Anzai_Top:
25250 cls 3
25260 No=0:init"kb:4":y=0:bg=0:key$=""
25270 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
25280 sp_on 0,1:sp_put 0,(10,100),0,0
25290 line (0,0)-(1000,60),rgb(0,0,255),bf
25300 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
25310 line (0,60)-(1000,475),rgb(127,255,212),bf
25320 pen 5:line(0,57)-(997,472),rgb(0,0,255),b
25330 line (0,475)-(1000,650),rgb(0,255,0),bf
25340 pen 5:line(0,472)-(997,647),rgb(0,0,255),b
25350 'グラフィック描画領域　ここまで
25360 color rgb(255,255,255)
25370 print "安斎流姓名判断　トップメニュー" + chr$(13)
25380 color rgb(255,0,255)
25390 print " :1.安斎流姓名判断 相性占い" + chr$(13)
25400 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
25410 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
25420 print " :4.前の画面に戻る"+chr$(13)
25430 color rgb(0,0,0)
25440 print"番号を選んでください"+chr$(13)
25450 Anzai_Top2:
25460 y=0:bg=0:key$=""
25470 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
25480 key$=inkey$
25490 y=stick(1)
25500 bg=strig(1)
25510 pause 2.50*100
25520 wend
25530 '******************************************************
25540 '1.下のキー　ここから
25550 '******************************************************
25560 if (y=1 or key$=chr$(30)) then
25570 select case No
25580 case 0:
25590       No=1:sp_on 1,1:sp_on 0,0:beep:sp_put 1,(10,200),1,0:goto Anzai_Top2:
25600 case 1:
25610       No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto Anzai_Top2:
25620 case 2:
25630       No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto Anzai_Top2:
25640 case 3:
25650       No=0:sp_on 0,1:sp_on 3,0:beep:sp_put 0,(10,100),0,0:goto Anzai_Top2:
25660 end select
25670 endif
25680 '******************************************************
25690 '1.下のキー　ここまで
25700 '******************************************************
25710 '******************************************************
25720 '2.上のキー　ここから
25730 '******************************************************
25740 if (y=-1 or key$=chr$(31)) then
25750 select case No
25760 case 0:
25770        No=3:sp_on 3,1:sp_on 0,0:beep:sp_put 3,(10,400),3,0:goto Anzai_Top2:
25780 case 1:
25790        No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto Anzai_Top2:
25800 case 2:
25810        No=1:sp_on 1,1:sp_on  2,0:beep:sp_put 1,(10,200),1,0:goto Anzai_Top2:
25820 case 3:
25830        No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto Anzai_Top2:
25840 end select
25850 endif
25860 '******************************************************
25870 '2.上のキー　ここまで
25880 '******************************************************
25890 '******************************************************
25900 '3.決定ボタン　ここから
25910 '******************************************************
25920 if (key$=chr$(13) or bg=2) then
25930 select case No
25940 case 0:
25950      sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
25960 case 1:
25970      sp_on 1,0:goto Anzai_Top_Screen:
25980 case 2:
25990      sp_on 2,0:goto Anzai_Kaimei_Check:
26000 case 3:
26010      sp_on 3,0:goto seimeihandan_top:
26020 end select
26030 endif
26040 '******************************************************
26050 '3.決定ボタン　ここまで
26060 '******************************************************
26070 'if key=2 then goto Anzai_Top_Screen:
26080 'if key=3 then goto Anzai_Kaimei_Check:
26090 'if key=1 then goto Anzai_Aishou_Top1:
26100 'if key=4 then goto seimeihandan_top:
26110 'if key > 4 or key = 0 then goto Anzai_Top:
26120 '2.安斎流姓名判断　男女の相性占い　ここから
26130 'グラフィック描画領域 ここから
26140 'Anzai_Aishou_Top1:
26150 cls 3
26160 '1行目
26170 line (0,0)-(800,60),rgb(0,0,255),bf
26180 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
26190 '2行目
26200 line (0,60)-(800,160),rgb(127,255,212),bf
26210 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
26220 '3行目
26230 line (0,160)-(800,300),rgb(0,255,0),bf
26240 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
26250 'グラフィック描画領域　男女の相性占い ここまで
26260 'if s1=1 then goto 25400
26270 'if s1=2 then goto 26170
26280 '1.名前の姓を入力  男性
26290 Anzai_Aishou_Top1:
26300 cls 3
26310 '1行目
26320 line (0,0)-(800,60),rgb(0,0,255),bf
26330 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
26340 '2行目
26350 line (0,60)-(800,160),rgb(127,255,212),bf
26360 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
26370 '3行目
26380 line (0,160)-(800,300),rgb(0,255,0),bf
26390 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
26400 color rgb(255,255,255)
26410 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
26420 color rgb(255,0,255)
26430 print "男性の名前(姓)を入れてください"+chr$(13)
26440 color rgb(0,0,0)
26450 Input "男性の名前(姓):",name$
26460 '2.名前の名を入力  男性
26470 cls 3
26480 cls 3
26490 '1行目
26500 line (0,0)-(800,60),rgb(0,0,255),bf
26510 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
26520 '2行目
26530 line (0,60)-(800,160),rgb(127,255,212),bf
26540 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
26550 '3行目
26560 line (0,160)-(800,300),rgb(0,255,0),bf
26570 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
26580 color rgb(255,255,255)
26590 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
26600 color rgb(255,0,255)
26610 print "男性の名前（名）をいれてください"+chr$(13)
26620 color rgb(0,0,0)
26630 Input "男性の名前(名):",name2$
26640 'if s2=2 then goto 26370
26650 '3.名前(姓)入力 女性
26660 Anzai_Aishou_Top2:
26670 cls
26680 color rgb(255,255,255)
26690 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
26700 color rgb(255,0,255)
26710 print "女性の名前(姓)を入れてください"+chr$(13)
26720 color rgb(0,0,0)
26730 Input"女性の名前:",name3$
26740 '4.名前（名)入力 女性
26750 cls
26760 color rgb(255,255,255)
26770 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
26780 color rgb(255,0,255)
26790 print "女性の名前（名）を入れてください"+chr$(13)
26800 color rgb(0,0,0)
26810 Input "女性の名前(名):",name4$
26820 '男性　の地運 を求める
26830 '姓名の合計数
26840 '1.男性 名前の文字数を求める
26850 '地運を求める
26860 buf_male_name1 = len(name$)
26870 buf_male_name2 = len(name2$)
26880 buf_male_count = buf_male_name1 + buf_male_name2
26890 '2.女性 名前の文字数を求める
26900 buf_female_name1 = len(name3$)
26910 buf_female_name2 = len(name4$)
26920 buf_female_count = buf_female_name1 + buf_female_name2
26930 'goto Anzai_Aishou_Check:
26940 '1.男性の地運を求める
26950 select case buf_male_count
26960 case 2:
26970 '男性の地運を求める
26980 buf_chiunn=char_count(name2$)
26990 case 3:
27000 '姓が一文字 名が2文字
27010 if buf_male_name1=1 and buf_male_name2=2 then
27020 buf_Input_name$(0)=mid$(name2$,1,1)
27030 buf_Input_name$(1)=mid$(name2$,2,1)
27040 '地運を計算
27050 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
27060 endif
27070 if buf_male_name1=2 and buf_male_name2=1 then
27080 buf_Input_name$(0)=Mid$(name2$,1,1)
27090 buf_chiunn=char_count(buf_Input_name$(0))
27100 endif
27110 case 4:
27120 '1.姓１，名３
27130 if bufmale_name1=1 and buf_male_name2=3 then
27140 buf_Input_name$(0)=Mid$(name2$,1,1)
27150 buf_Input_name$(1)=Mid$(name2$,2,1)
27160 buf_Input_name$(2)=Mid$(name2$,3,1)
27170 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
27180 endif
27190 '2.姓２,名２
27200 if buf_male_name1=2 and buf_male_name2=2 then
27210 buf_Input_name$(0)=Mid$(name2$,1,1)
27220 buf_Input_name$(1)=Mid$(name2$,2,1)
27230 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
27240 endif
27250 '3.姓３、名１
27260 if buf_male_name1=3 and buf_male_name2=1 then
27270 buf_Input_name$(0)=Mid$(name2$,1,1)
27280 '地運を求める
27290 buf_chiunn=char_count(buf_Input_name$(0))
27300 endif
27310 case 5:
27320 '1.姓２，名３
27330 if buf_male_name1 = 2 and buf_male_name2 = 3 then
27340 buf_Input_name$(0)=Mid$(name2$,1,1)
27350 buf_Input_name$(1)=Mid$(name2$,2,1)
27360 buf_Input_name$(2)=Mid$(name2$,3,1)
27370 '地運を求める
27380 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
27390 endif
27400 '2.姓３，名２
27410 if buf_male_name1=3 and buf_male_name2=2 then
27420 buf_Input_name$(0)=Mid$(name2$,1,1)
27430 buf_Input_name$(1)=Mid$(name2$,2,1)
27440 '地運を求める
27450 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
27460 endif
27470 '3.姓４、名１
27480 buf_Input_name$(0)=Mid$(name2$,1,1)
27490 '地運を求める
27500 buf_chiunn = char_count(buf_Input_name$(0))
27510 case 6:
27520 '1.姓３，名３
27530 if buf_male_name1=3 and buf_male_name2=3 then
27540 buf_Input_name$(0)=Mid$(name2$,1,1)
27550 buf_Input_name$(1)=Mid$(name2$,2,1)
27560 buf_Input_name$(2)=Mid$(name2$,3,1)
27570 '地運を求める
27580 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
27590 endif
27600 '２.姓４，名２
27610 if buf_male_name1=4 and buf_male_name2=2 then
27620 buf_Input_name$(0)=Mid$(name2$,1,1)
27630 buf_Input_name$(1)=Mid$(name2$,2,1)
27640 '地運を求める
27650 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
27660 endif
27670 case else:
27680 end select
27690 'if s1=1 then goto 31960
27700 'if s2=2 then goto 29690
27710 '2.女性　外運を求める
27720 select case buf_female_count
27730 '姓と名の合計数
27740 case 2:
27750 buf_Input_name2$(0)=Mid$(name3$,1,1)
27760 buf_Input_name2$(1)=Mid$(name4$,1,1)
27770 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
27780 case 3:
27790 if buf_female_name1=2 and buf_female_name2=1 then
27800 buf_Input_name2$(0)=Mid$(name3$,1,1)
27810 buf_Input_name2$(1)=Mid$(name3$,2,1)
27820 buf_Input_name2$(2)=Mid$(name4$,1,1)
27830 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
27840 endif
27850 if buf_female_name1=1 and buf_female_name2=2 then
27860 buf_Input_name2$(0)=Mid$(name3$,1,1)
27870 buf_Input_name2$(1)=Mid$(name4$,1,1)
27880 buf_Input_name2$(2)=Mid$(name4$,2,1)
27890 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
27900 endif
27910 case 4:
27920 '姓１、名３
27930 if buf_female_name1=1 and buf_female_name2=3 then
27940 buf_Input_name2$(0)=Mid$(name3$,1,1)
27950 buf_Input_name2$(1)=Mid$(name4$,1,1)
27960 buf_Input_name2$(2)=Mid$(name4$,2,1)
27970 buf_Input_name2$(3)=Mid$(name4$,3,1)
27980 '外運を求める
27990 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
28000 endif
28010 '姓２,名２
28020 if buf_female_name1=2 and buf_female_name2=2 then
28030 buf_Input_name2$(0)=Mid$(name3$,1,1)
28040 buf_Input_name2$(1)=Mid$(name3$,2,1)
28050 buf_Input_name2$(2)=Mid$(name4$,1,1)
28060 buf_Input_name2$(3)=Mid$(name4$,2,1)
28070 '外運を求める
28080 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
28090 endif
28100 '姓３，名１
28110 if buf_female_name1=3 and buf_female_name2=1 then
28120 buf_Input_name2$(0)=Mid$(name3$,1,1)
28130 buf_Input_name2$(1)=Mid$(name3$,2,1)
28140 buf_Input_name2$(2)=Mid$(name3$,3,1)
28150 buf_Input_name2$(3)=Mid$(name4$,1,1)
28160 '外運を求める
28170 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
28180 endif
28190 case 5:
28200 '姓 3,名2
28210 if buf_female_name1 = 3 and buf_female_name2 = 2 then
28220 buf_Input_name2$(0)=Mid$(name3$,1,1)
28230 buf_Input_name2$(1)=Mid$(name3$,2,1)
28240 buf_Input_name2$(2)=Mid$(name3$,3,1)
28250 buf_Input_name2$(3)=Mid$(name4$,1,1)
28260 buf_Input_name2$(4)=Mid$(name4$,2,1)
28270 '外運を求める
28280 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
28290 endif
28300 '姓４、名１
28310 if buf_female_name1=4 and buf_female_name2=1 then
28320 buf_Input_name2$(0)=Mid$(name3$,1,1)
28330 buf_Input_name2$(1)=Mid$(name3$,2,1)
28340 buf_Input_name2$(2)=Mid$(name3$,3,1)
28350 buf_Input_name2$(3)=Mid$(name3$,4,1)
28360 buf_Input_name2$(4)=Mid$(name4$,1,1)
28370 '外運を求める
28380 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
28390 endif
28400 '姓２、名３
28410 if buf_female_name1 = 2 and buf_female_name2 = 3 then
28420 buf_Input_name2$(0)=Mid$(name3$,1,1)
28430 buf_Input_name2$(1)=Mid$(name3$,2,1)
28440 buf_Input_name2$(2)=Mid$(name4$,1,1)
28450 buf_Input_name2$(3)=Mid$(name4$,2,1)
28460 buf_Input_name2$(4)=Mid$(name4$,3,1)
28470 '外運を求める
28480 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
28490 endif
28500 case 6:
28510 '1.姓３，名３
28520 if buf_female_name1=3 and buf_female_name2=3 then
28530 buf_Input_name2$(0)=Mid$(name3$,1,1)
28540 buf_Input_name2$(1)=Mid$(name3$,2,1)
28550 buf_Input_name2$(2)=Mid$(name3$,3,1)
28560 buf_Input_name2$(3)=Mid$(name4$,1,1)
28570 buf_Input_name2$(4)=Mid$(name4$,2,1)
28580 buf_Input_name2$(5)=Mid$(name4$,3,1)
28590 '外運を求める
28600 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
28610 endif
28620 '2.姓４，名２
28630 if buf_female_name1=4 and buf_female_name2=2 then
28640 buf_Input_name2$(0)=Mid$(name3$,1,1)
28650 buf_Input_name2$(1)=Mid$(name3$,2,1)
28660 buf_Input_name2$(2)=Mid$(name3$,3,1)
28670 buf_Input_name2$(3)=Mid$(name3$,4,1)
28680 buf_Input_name2$(4)=Mid$(name4$,1,1)
28690 buf_Input_name2$(5)=Mid$(name4$,2,1)
28700 '外運を求める
28710 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
28720 endif
28730 case 7:
28740 '1姓４，名３
28750 '外運を求める
28760 end select
28770 'if s=1 then goto Anzai_Aishou_Check:
28780 'if s2=2 then goto Anzai_Aishou_Check:
28790 'goto 32200
28800 func buf_number(a)
28810 if a < 10 then
28820 buf_tansu = a
28830 endif
28840 if a > 9 and a < 20 then
28850 buf_tansu = a - 10
28860 endif
28870 if a > 19 and a < 30 then
28880 buf_tansu = a - 20
28890 endif
28900 buffer = buf_tansu
28910 endfunc buffer
28920 check$="No Data"
28930 func Aisyou_type$(man,woman)
28940 Result$="No data"
28950 'check$="No data"
28960 '1.理解し合える最良のカップル
28970 '1のFor文
28980 for i=0 to 19
28990 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
29000 Result$ = "1.理解し合える最良のカップル"
29010 check$="○"
29020 ResultNo = 0
29030 endif
29040 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
29050 Result$="2.互いに自然体でつきあえるカップル"
29060 ResultNo=1
29070 check$="○"
29080 endif
29090 '3.男性にとって居心地の良いカップル
29100 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
29110 Result$="3.男性にとって居心地の良いカップル"
29120 ResultNo=2
29130 check$="△"
29140 endif
29150 '4.女性にとって居心地の良いカップル
29160 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
29170 Result$ = "4.女性にとって居心地の良いカップル"
29180 ResultNo=3
29190 check$="△"
29200 endif
29210 '5.恋愛経験を重ねた後なら愛を育める
29220 'for i=0 to 9
29230 'for j=0 to 9
29240 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
29250 Result$="5.恋愛経験を重ねた後なら愛を育める"
29260 ResultNo=4
29270 check$="×"
29280 endif
29290 'next j
29300 'next i
29310 '6
29320 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
29330 Result$="6.結婚への発展が困難なカップル"
29340 check$="×"
29350 endif
29360 '7
29370 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
29380 Result$="7.愛し方にずれが出てくる二人"
29390 check$="×"
29400 endif
29410 '8
29420 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
29430 Result$="8.互いに価値観が噛み合わない相性"
29440 check$="×"
29450 endif
29460 next i
29470 'bufAisyou$ = Result$
29480 endfunc  Result$
29490 Anzai_Aishou_Check:
29500 cls 3:
29510 buf_t_chiunn = buf_number(buf_chiunn)
29520 buf_t_gaiunn=buf_number(buf_gaiunn)
29530 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
29540 'グラフィック描画領域　ここから
29550 'Title欄
29560 line(0,0)-(1300,60),rgb(0,0,255),bf
29570 pen 5:line(0,0)-(1297,57),rgb(127,255,212),b
29580 '結果表示欄
29590 line(0,60)-(1300,660),rgb(127,255,212),bf
29600 pen 5:line(0,57)-(1297,662),rgb(0,0,255),b
29610 'ボタン選択欄
29620 LINE(0,660)-(1300,860),rgb(0,255,0),bf
29630 pen 5:line(0,662)-(1297,862),rgb(0,0,255),b
29640 'グラフィック描画領域　ここまで
29650 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
29660 color rgb(255,255,255)
29670 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
29680 color rgb(255,0,255)
29690 print "男性の名前:";name$+name2$;chr$(13)
29700 print "地運の単数";buf_t_chiunn;chr$(13)
29710 print "女性の名前:";name3$+name4$;chr$(13)
29720 print "外運の単数";buf_t_gaiunn;chr$(13)
29730 print"二人の相性:";bufferAisyou$;chr$(13)
29740 print"相性判定:";check$;chr$(13)
29750 color rgb(0,0,0)
29760 print "エンターキー:トップ" + chr$(13)
29770 print "S or sキー:保存" + chr$(13)
29780 key$=Input$(1)
29790 if key$=chr$(13) then
29800 goto Main_Screen1:
29810 else
29820 'Data保存追加 2021.10.01
29830 goto Save_Aisyou:
29840 endif
29850 '改名チェック
29860 'グラフィック描画領域 ここから
29870 Anzai_Kaimei_Check:
29880 cls 3
29890 line (0,0)-(1250,60),rgb(0,0,255),bf
29900 pen 5:line(0,0)-(1247,57),rgb(125,255,212),b
29910 line (0,60)-(1250,370),rgb(127,255,212),bf
29920 pen 5:line (0,57)-(1247,367),rgb(0,0,2550),b
29930 line (0,370)-(1250,450),rgb(0,255,0),bf
29940 pen 5:line(0,367)-(1247,447),rgb(0,0,255),b
29950 'グラフィック描画領域 ここまで
29960 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
29970 color rgb(255,255,255)
29980 print "安斎流姓名判断 改名チェッカー"+chr$(13)
29990 color rgb(255,0,255)
30000 print "総数で、改名が、必要か否かを調べます"+chr$(13)
30010 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
30020 print "10文字までで入れてください"+chr$(13)
30030 color rgb(0,0,0)
30040 Input "名前:",name$
30050 '計算領域　ここから
30060 '名前から総運を計算
30070 '1.名前の文字数を出す
30080 n=len(name$)
30090 if n > 10 or n=0 then
30100 '文字数が10個までという表示
30110 'トーストで表示
30120 if n > 10 then
30130 ui_msg "文字は10個までです"
30140 else
30150 ui_msg "文字が空っぽです"
30160 endif
30170 goto Anzai_Aishou_Check:
30180 endif
30190 'それ以外
30200 '総数を出す処理を出す
30210 '画面消去　データー初期化
30220 cls 3:bufer_total=0
30230 'グラフィック描画領域 ここから
30240 line(0,0)-(950,60),rgb(0,0,255),bf
30250 pen 5:line(0,0)-(947,57),rgb(127,255,212),b
30260 line(0,60)-(950,300),rgb(127,255,212),bf
30270 pen 5:line(0,57)-(947,297),rgb(0,0,255),b
30280 line(0,300)-(950,440),rgb(0,255,0),bf
30290 pen 5:line(0,297)-(947,437),rgb(0,0,255),b
30300 'グラフィック描画領域 ここまで
30310 'cls 3
30320 color rgb(255,255,255)
30330 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
30340 for i=0 to len(name$)-1
30350 buf_Input_name$(i)=Mid$(name$,i+1,1)
30360 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
30370 next i
30380 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
30390 color rgb(255,0,255)
30400 print "名前:";name$
30410 print "この名前の総数:";bufer_total
30420 print "この名前の吉凶:";buf_Kikkyo$;"です"
30430 color rgb(255,0,255)
30440 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
30450 print bufer_total$+chr$(13)
30460 'if buffer_K=0 or buffer_K=1  then
30470 'dim select$(2)
30480 'select$(0)="改名をする"
30490 'select$(1)="改名しない"
30500 'talk"改名しますか？"
30510 'color rgb(0,0,0)
30520 'Input"改名しますか？",key$
30530 'num=ui_select("select$","改名リストに追加しますか?")
30540 'num=0:改名リストに追加する
30550 'if num=0  then goto 34350
30560 'else
30570 'num=1:改名リストに追加しない
30580 'if num=1 then goto 30160
30590 'num=2:トップ画面に行く
30600 'if num=2 then goto 7550
30610 'endif
30620 'if buffer_K=0 then
30630 'print num,select$(num)
30640 color rgb(0,0,0)
30650 locate 0,7
30660 print"エンターキーを押してください",key$
30670 key$=Input$(1)
30680 if key$=chr$(13) then goto Main_Screen1:
30690 'endif
30700 '改名チェック関数
30710 func Kaimei_check$(r$)
30720 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
30730 '改名の必要なし
30740 talk"この名前は改名の必要がございません。"
30750 print"この名前は、改名の必要はありません"+chr$(13)
30760 '改名の必要ナシの場合
30770 K=0
30780 buffer_K=K
30790 else
30800 '改名の必要あり
30810 Kaimei_check:
30820 talk"この名前は、改名の必要があります"
30830 print"この名前は、改名の必要があります"+chr$(13)
30840 color rgb(0,0,0)
30850 print"改名しますか？"
30860 K=1
30870 buffer_K=K
30880 '◎表示パターン
30890 'パターン１
30900 'color rgb(0,0,0)
30910 'Input"エンターキーを押してください",key$
30920 endif
30930 endfunc result$
30940 'ui_msg="1件追加しました,残り9件追加できます"
30950 'ファイルの存在確認 設定ファイル:mydata.dat
30960 cls
30970 '設定ファイルの確認
30980 if dir$("config/Parsonal_data/mydata.dat")="" then
30990 'print "File not found"+chr$(13)
31000 '1.ファイルがない時
31010 goto Kaimei_check:
31020 else
31030 'ファイルがある時
31040 goto sex_type_female:
31050 'goto 25150
31060 endif
31070 '1-1.ファイルがない時の処理
31080 '1-1.自分の姓名判断を入力
31090 'グラフィック描画領域 ここから
31100 cls 3
31110 '1行目
31120 line(0,0)-(1000,60),rgb(0,0,250),bf
31130 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
31140 '2行目
31150 line(0,60)-(1000,80),rgb(127,255,212),bf
31160 pen 5:line(0,57)-(997,77),rgb(0,0,255),b
31170 '3行目
31180 line(0,80)-(1000,120),rgb(0,255,0),bf
31190 pen 5:line(0,77)-(997,117),rgb(0,0,255),b
31200 'グラフィック描画領域 ここまで
31210 '1.名前の姓の入力
31220 '1行目 Title
31230 color rgb(255,255,255)
31240 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
31250 '2行目 名前の姓を入力
31260 color rgb(255,0,255)
31270 print "自分の名前の姓を入れてください"+chr$(13)
31280 color rgb(0,0,0)
31290 'buf_name1$:自分の名前の姓
31300 Input"名前の姓:",buf_name1$
31310 '2.名前の名の入力
31320 '画面消去
31330 Anzai_myProfile2:
31340 cls
31350 '1行目 Title
31360 color rgb(255,255,255)
31370 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
31380 '2行目 名前の名の入力
31390 color rgb(255,0,255)
31400 print "自分の名前の名を入れてください"+chr$(13)
31410 color rgb(0,0,0)
31420 'buf_name2$:自分の名前の名
31430 input "名前の名:",buf_name2$
31440 '3.性別入力
31450 cls
31460 '1行目 Title
31470 color rgb(255,255,255)
31480 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
31490 '2行目 性別入力
31500 color rgb(255,0,255)
31510 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
31520 sex_type$(0)="女性"
31530 sex_type$(1)="男性"
31540 type=ui_select("sex_type$","性別を選んでください")
31550 '3行目
31560 '性別変数 sex_type$
31570 if type = 1 then
31580 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 31060
31590 else
31600 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
31610 endif
31620 if sex_type$="男性" then
31630 name$=buf_name1$
31640 name2$=buf_name2$
31650 s=1
31660 goto Anzai_Aishou_Top1:
31670 endif
31680 sex_type_female:
31690 If sex_type$="女性" then
31700 name3$=buf_name1$
31710 name4$=buf_name2$
31720 s=2
31730 goto Anzai_Aishou_Top2:
31740 endif
31750 '登録プロフィール確認画面
31760 Entry_Profile:
31770 cls 3
31780 'グラフィック描画領域　ここから
31790 '1行目
31800 line(0,0)-(1200,60),rgb(0,0,255),bf
31810 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
31820 '2行目
31830 line(0,60)-(1200,360),rgb(127,255,212),bf
31840 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
31850 '3行目
31860 line(0,100)-(1200,420),rgb(0,255,0),bf
31870 pen 5:line(0,97)-(1197,417)
31880 if s2=2 then goto Entry_Profile:
31890 'グラフィック描画領域　ここまで
31900 '1行目 Title
31910 color rgb(255,255,255)
31920 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
31930 color rgb(255,0,255)
31940 print"名前:";buf_name1$+buf_name2$;chr$(13)
31950 PRINT"性別:";sex_type$;chr$(13)
31960 if sex_type$="女性" then
31970 print"外運:";buf_gaiunn;chr$(13)
31980 buffer$="外運:"+str$(buf_gaiunn)
31990 endif
32000 if sex_type$="男性" then
32010 print"地運:";buf_chiunn;chr$(13)
32020 buffer$="地運:"+str$(buf_chiunn)
32030 endif
32040 color rgb(0,0,0)
32050 input"(登録する:Yes/登録しない:No):",key$
32060 if key$="Yes" or key$="yes" then
32070 open "config/Parsonal_data/mydata.dat" for output as #1
32080 print #1,"名前:";buf_name1$+buf_name2$
32090 print #1,"性別:";sex_type$
32100 print #1,buffer$
32110 close #1
32120 ui_msg"データーを保存しました"
32130 goto Main_Screen1:
32140 endif
32150 '２．設定ファイルが存在する場合
32160 'ファイル読み込み 自分のデーターを表示
32170 cls
32180 open "Config/Parsonal_data/mydata.dat" for input as #2
32190 line input #2,a$
32200 line input #2,b$
32210 line input #2,c$
32220 close #2
32230 buffername$=a$
32240 buffername2$=b$
32250 buffername3$=c$
32260 bufff$=Mid$(buffername$,1,3)
32270 buff2$=Mid$(buffername2$,1,3)
32280 buff3$=Mid$(buffername3$,1,3)
32290 n=len(a$)
32300 sextype$=Mid$(buffername2$,4,2)
32310 if sextype$="男性" then
32320 '男性:s2
32330 s2=1
32340 '女性のデーター入力
32350 goto Anzai_Top:
32360 endif
32370 if sextype$="女性" then
32380 s2=2
32390 '男性のデーター入力
32400 goto Anzai_Top:
32410 endif
32420 '女性のデーター結果表示
32430 '1.プロフィール性別男性の場合 ここから
32440 Result_Anzai_Aisyou:
32450 cls
32460 color rgb(255,255,255)
32470 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
32480 name_length = len(bufername$)
32490 myname$ = Mid$(buffername$,4,4)
32500 chiunn = val(Mid$(buffername3$,4,2))
32510 tansuu1 = buf_number(chiunn)
32520 bufname$ = name3$ + name4$
32530 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
32540 color rgb(255,0,255)
32550 print "自分の名前(男性):";myname$;chr$(13)
32560 print "地運の端数:";tansuu1;chr$(13)
32570 print "相手の名前(女性):";bufname$;chr$(13)
32580 print "外運の端数:";buf_t_gaiunn;chr$(13)
32590 print "二人の相性:";bufferAisyou$;chr$(13)
32600 talk "二人の相性は" + bufferAisyou$
32610 color rgb(0,0,0)
32620 print"エンターキーを押してください"
32630 key$=Input$(1)
32640 'トップ画面に行く
32650 if key$ = chr$(13) then goto Main_Screen1:
32660 '1.プロフィール性別男性の場合　ここまで
32670 '2.プロフィール性別女性の場合　ここから
32680 cls 3
32690 '描画領域　ここから
32700 line (0,0)-(1200,60),rgb(0,0,255),bf
32710 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
32720 line (0,60)-(1200,460),rgb(127,255,212),bf
32730 pen 5:line(0,57)-(1197,457),rgb(0,0,255),b
32740 LINE (0,460)-(1200,520),rgb(0,255,0),bf
32750 pen 5:line(0,457)-(1197,517),rgb(0,0,255),b
32760 '描画領域 ここまで
32770 color rgb(255,255,255)
32780 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
32790 '計算領域　ここから
32800 myname$ = Mid$(buffername$,4,4)
32810 gaiunn = val(Mid$(buffername3$,4,2))
32820 buf_t_gaiunn = buf_number(buf_gaiunn)
32830 buf_t_chiunn = buf_number(buf_chiunn)
32840 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
32850 bufname$ = name$ + name2$
32860 '計算領域 ここまで
32870 color rgb(255,0,255)
32880 print "自分の名前(女性):";myname$;chr$(13)
32890 print "外運の端数";buf_t_gaiunn;chr$(13)
32900 print "相手の名前(男性):";bufname$;chr$(13)
32910 print "地運の端数:";buf_t_chiunn;chr$(13)
32920 print "二人の相性:";bufferAisyou$;chr$(13)
32930 color rgb(0,0,0)
32940 print "エンターキーを押してください"
32950 key$ = Input$(1)
32960 if key$=chr$(13) then goto Main_Screen1:
32970 '2.プロフィール性別女性の場合　ここまで
32980 'endfunc result$
32990 '取扱説明書
33000 '相性占い　トップメニュー ここから
33010 'グラフィック ここから
33020 Anzai_Aishou_Top_Menu:
33030 cls 3:
33040 '1行目
33050 line(0,0)-(1500,60),rgb(0,0,255),bf
33060 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
33070 '2行目
33080 line(0,60)-(1500,380),rgb(127,255,212),bf
33090 pen 5:line(0,57)-(1497,377),rgb(0,0,255),b
33100 '3行目
33110 line(0,360)-(1500,540),rgb(0,255,0),bf
33120 pen 5:line(0,357)-(1497,537),rgb(0,0,255),b
33130 'グラフィック　ここまで
33140 color rgb(255,255,255)
33150 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
33160 color rgb(255,0,255)
33170 print"1.男女の相性"+chr$(13)
33180 print"2.前の画面に戻る"+chr$(13)
33190 print"3.トップ画面に戻る"+chr$(13)
33200 color rgb(0,0,0)
33210 print"番号を選んでください:"+chr$(13)
33220 Input"番号:",key
33230 if key = 1 then goto Anzai_Aishou_Top1:
33240 if key = 2 then goto Anzai_Top:
33250 if key = 3 then goto Main_Screen1:
33260 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
33270 'グラフィック領域　ここから
33280 Life_Tenki:
33290 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
33300 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
33310 line(0,60)-(1150,180),rgb(127,255,212),bf
33320 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
33330 line(0,120)-(1150,200),rgb(0,255,0),bf
33340 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
33350 'グラフィック領域　ここまで
33360 '誕生日入力　生まれた年
33370 color rgb(255,255,255)
33380 print"誕生日入力　生まれた年" + chr$(13)
33390 COLOR rgb(255,0,255)
33400 print"生まれた年を入れてください" + chr$(13)
33410 color rgb(0,0,0)
33420 Input"生まれた年:",year
33430 '誕生日入力 生まれた月
33440 cls
33450 color rgb(255,255,255)
33460 print"誕生日入力 生まれた月" + chr$(13)
33470 color rgb(255,0,255)
33480 print"生まれた月を入力してください" + chr$(13)
33490 color rgb(0,0,0)
33500 Input"生まれた月:",month
33510 '誕生日入力 生まれた日を入力
33520 cls
33530 color rgb(255,255,255)
33540 print"誕生日入力 生まれた日入力" + chr$(13)
33550 color rgb(255,0,255)
33560 print"生まれた日を入力してください" + chr$(13)
33570 color rgb(0,0,0)
33580 Input"生まれた日:",day
33590 '人生の転機を見る
33600 'グラフィック領域　ここから
33610 cls 3
33620 line(0,0)-(1150,60),rgb(0,0,255),bf
33630 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
33640 line(0,60)-(1150,470),rgb(127,255,212),bf
33650 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
33660 line(0,470)-(1150,520),rgb(0,255,0),bf
33670 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
33680 'グラフィック描画領域  ここまで
33690 cls
33700 buffername$=bufname$ + bufname2$
33710 color rgb(255,255,255)
33720 print buffername$;"さんの人生の転機を見る1"+chr$(13)
33730 color rgb(255,0,255)
33740 buf_total2=buf_total-(fix(buf_total/10)*10)
33750 tenki1_year=year+buf_total2
33760 tenki2_year=year+buf_total2+5
33770 tenki3_year=year+buf_total2+5+5
33780 tenki4_year=year+buf_total2+5+5+5
33790 tenki1=buf_total2
33800 tenki2=buf_total2+5
33810 tenki3=buf_total2+5+5
33820 tenki4=buf_total2+5+5+5
33830 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
33840 print tenki1_year;"年";tenki1;"歳"+chr$(13)
33850 print tenki2_year;"年";tenki2;"歳"+chr$(13)
33860 print tenki3_year;"年";tenki3;"歳"+chr$(13)
33870 print tenki4_year;"年";tenki4;"歳"+chr$(13)
33880 color rgb(0,0,0)
33890 print"エンターキーを押してください"
33900 key$=Input$(1)
33910 if key$=chr$(13) then goto Life_Tenki:
33920 '2ページ目
33930 cls
33940 color rgb(255,255,255)
33950 print buffername$;"さんの人生の転機2"+chr$(13)
33960 color rgb(255,0,255)
33970 tenki5_year = tenki4_year + 5
33980 tenki6_year = tenki4_year + 5 + 5
33990 tenki7_year = tenki4_year + 5 + 5 + 5
34000 tenki8_year = tenki4_year + 5 + 5 + 5+5
34010 tenki5 = tenki4 + 5
34020 tenki6 = tenki4 + 5 + 5
34030 tenki7 = tenki4 + 5 + 5 + 5
34040 tenki8 = tenki4 + 5 + 5 + 5 + 5
34050 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
34060 print tenki5_year;"年";tenki5;"歳"+chr$(13)
34070 print tenki6_year;"年";tenki6;"歳"+chr$(13)
34080 print tenki7_year;"年";tenki7;"歳"+chr$(13)
34090 print tenki8_year;"年";tenki8;"歳"+chr$(13)
34100 color rgb(0,0,0)
34110 print"エンターキーを押してください",key$
34120 key$=Input$(1)
34130 if key$ = chr$(13) then goto 33470
34140 '3ページ目
34150 cls
34160 color rgb(255,255,255)
34170 print buffername$;"さんの人生の転機3"+chr$(13)
34180 '計算部分
34190 tenki_year9=tenki8_year + 5
34200 tenki_year10=tenki8_year + 5 + 5
34210 tenki_year11=tenki8_year+5+5+5
34220 tenki_year12=tenki8_year+5+5+5+5
34230 tenki9=tenki8+5
34240 tenki10=tenki8+5+5
34250 tenki11=tenki8+5+5+5
34260 tenki12=tenki8+5+5+5+5
34270 color rgb(255,0,255)
34280 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
34290 print tenki_year9;"年";tenki9;"歳"+chr$(13)
34300 print tenki_year10;"年";tenki10;"歳"+chr$(13)
34310 print tenki_year11;"年";tenki11;"歳"+chr$(13)
34320 print tenki_year12;"年";tenki12;"歳"+chr$(13)
34330 color rgb(0,0,0)
34340 print"エンターキーを押してください"
34350 key$=Input$(1)
34360 if key$=chr$(13) then goto 33700
34370 'グラフィック描画領域 ここから
34380 cls 3
34390 line(0,0)-(1150,60),rgb(0,0,255),bf
34400 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34410 line(0,60)-(1150,470),rgb(127,255,212),bf
34420 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34430 line(0,470)-(1150,850),rgb(0,255,0),bf
34440 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
34450 'グラフィック描画領域 ここまで
34460 '4回目
34470 cls
34480 color rgb(255,255,255)
34490 print buffername$;"さんの人生の転機４"+chr$(13)
34500 color rgb(255,0,255)
34510 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
34520 '計算部分
34530 tenki_year13 = tenki_year12 + 5
34540 tenki_year14 = tenki_year12 + 5 + 5
34550 tenki_year15 = tenki_year12 + 5 + 5 + 5
34560 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
34570 tenki13 = tenki12 + 5
34580 tenki14 = tenki12 + 5 + 5
34590 tenki15 = tenki12 + 5 + 5 + 5
34600 tenki16 = tenki12 + 5 + 5 + 5 + 5
34610 color rgb(255,0,255)
34620 print tenki_year13;"年";tenki13;"歳"+chr$(13)
34630 print tenki_year14;"年";tenki14;"歳"+chr$(13)
34640 print tenki_year15;"年";tenki15;"歳"+chr$(13)
34650 print tenki_year16;"年";tenki16;"歳"+chr$(13)
34660 color rgb(0,0,0)
34670 print"コマンドを入れてください"+chr$(13)
34680 print"q+エンターキー:トップ画面"+chr$(13)
34690 Print"エンターキー:次へ行く"+chr$(13)
34700 print"コマンド:"
34710 key$=Input$(1)
34720 if key$=chr$(13) then goto 34070
34730 IF key$="q" then goto 7550
34740 '
34750 cls
34760 color rgb(255,255,255)
34770 print buffername$;"さんの人生の転機5"+chr$(13)
34780 color rgb(255,0,255)
34790 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
34800 tenki_year17=tenki_year16+5
34810 tenki_year18=tenki_year16+5+5
34820 tenki_year19=tenki_year16+5+5+5
34830 tenki_year20=tenki_year16+5+5+5+5
34840 tenki17=tenki16+5
34850 tenki18=tenki16+5+5
34860 tenki19=tenki16+5+5+5
34870 tenki20=tenki16+5+5+5+5
34880 print tenki_year17;"年";tenki17;"歳"+chr$(13)
34890 print tenki_year18;"年";tenki18;"歳"+chr$(13)
34900 print tenki_year19;"年";tenki19;"歳"+chr$(13)
34910 print tenki_year20;"年";tenki20;"歳"+chr$(13)
34920 color rgb(0,0,0)
34930 print"コマンドを入れてください"+chr$(13)
34940 print"トップに戻る:q+エンターキー"+chr$(13)
34950 print"最初から:エンターキー"+chr$(13)
34960 print"コマンド:"
34970 key$=Input$(1)
34980 if key$=chr$(13) then goto 32930
34990 if key$="q" then goto Main_Screen1:
35000 '改名チェック 改名候補を入力
35010 'グラフィック　領域　ここから
35020 '左側 部分
35030 cls 3:
35040 line(0,0)-(1100,60),rgb(0,0,255),bf
35050 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
35060 line(0,60)-(1100,380),rgb(127,255,212),bf
35070 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
35080 line(0,380)-(790,470),rgb(0,255,0),bf
35090 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
35100 '中央の縦の線 ここから
35110 'line(1100,0)-(1112,370),rgb(0,0,0),b
35120 '中央の縦の線 ここまで
35130 '右側 部分
35140 line(1103,0)-(1700,60),rgb(0,0,255),bf
35150 LINE(790,60)-(1700,470),rgb(127,255,212),bf
35160 'グラフィック 領域　ここまで
35170 '吉凶判定
35180 if buffer_K=0 then
35190 buffer_check$="○"
35200 else
35210 buffer_check$="☓"
35220 endif
35230 'Title 左側の文字
35240 'rgb(255,255,255):白
35250 color rgb(255,255,255)
35260 locate 1,0
35270 print"安斎流姓名判断 改名チェッカー"
35280 'Title 右側の文字
35290 locate size(2)-16,0
35300 print"改名候補リスト(3件まで)"
35310 '候補リストの名前部分 (右側)
35320 '1行目
35330 'locate 22,2
35340 locate size(2)-18,2
35350 color rgb(0,0,0)
35360 print "番号"
35370 'locate 26,2
35380 locate size(2)-14,2
35390 print"名前"
35400 'locate 32,2
35410 locate size(2)-8,2
35420 print"吉凶"
35430 'locate 36,2
35440 locate size(2)-4,2
35450 print"判定"
35460 '2行目
35470 select case kaimei_count
35480 case 0:
35490 'データー1件 の時
35500 kaimei_count = kaimei_count + 1
35510 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
35520 buffer_Kaimei$(0,1,0,0)=name$
35530 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
35540 buffer_Kaimei$(0,0,0,1)=buffer_check$
35550 'cls
35560 color rgb(255,0,255)
35570 'locate 23,3
35580 locate size(2)-17,3
35590 print buffer_Kaimei$(1,0,0,0)
35600 'locate 25,3
35610 locate size(2)-15,3
35620 print buffer_Kaimei$(0,1,0,0)
35630 'locate 32,3
35640 locate size(2)-8,3
35650 print buffer_Kaimei$(0,0,1,0)
35660 locate size(2)-3,3
35670 print buffer_Kaimei$(0,0,0,1)
35680 case 1:
35690 'データー2件の時
35700 color rgb(255,0,255)
35710 kaimei_count = kaimei_count + 1
35720 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
35730 buffer_Kaimei$(0,2,0,0)=name$
35740 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
35750 buffer_Kaimei$(0,0,0,2)=buffer_check$
35760 'cls
35770 '1行目
35780 'locate 23,3
35790 locate size(2)-17,3
35800 print buffer_Kaimei$(1,0,0,0)
35810 'locate 25,3
35820 locate size(2)-15,3
35830 print buffer_Kaimei$(0,1,0,0)
35840 'locate 32,3
35850 locate size(2)-8,3
35860 print buffer_Kaimei$(0,0,1,0)
35870 'locate 37,3
35880 locate size(2)-3,3
35890 print buffer_Kaimei$(0,0,0,1)
35900 '2行目
35910 'locate 23,4
35920 locate size(2)-17,4
35930 print buffer_Kaimei$(2,0,0,0)
35940 'locate 25,4
35950 locate size(2)-15,4
35960 print buffer_Kaimei$(0,2,0,0)
35970 'locate 32,4
35980 locate size(2)-8,4
35990 print buffer_Kaimei$(0,0,2,0)
36000 'locate 37,4
36010 locate size(2)-3,4
36020 print buffer_Kaimei$(0,0,0,2)
36030 case 2:
36040 'データー3件の時
36050 '1
36060 color rgb(255,0,255)
36070 kaimei_count=kaimei_count+1
36080 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
36090 buffer_Kaimei$(0,3,0,0)=name$
36100 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
36110 buffer_Kaimei$(0,0,0,3)=buffer_check$
36120 '2  1行目
36130 'locate 23,3
36140 locate size(2)-17,3
36150 print buffer_Kaimei$(1,0,0,0)
36160 'locate 25,3
36170 locate size(2)-15,3
36180 print buffer_Kaimei$(0,1,0,0)
36190 'locate 32,3
36200 locate size(2)-8,3
36210 print buffer_Kaimei$(0,0,1,0)
36220 'locate 37,3
36230 locate size(2)-3,3
36240 print buffer_Kaimei$(0,0,0,1)
36250 '3  2行目
36260 'locate 23,4
36270 locate size(2)-17,4
36280 print buffer_Kaimei$(2,0,0,0)
36290 'locate 25,4
36300 locate size(2)-15,4
36310 print buffer_Kaimei$(0,2,0,0)
36320 'locate 32,4
36330 locate size(2)-8,4
36340 print buffer_Kaimei$(0,0,2,0)
36350 'locate 37,4
36360 locate size(2)-3,4
36370 print buffer_Kaimei$(0,0,0,2)
36380 '4  3行目
36390 'locate 23,5
36400 locate size(2)-17,5
36410 print buffer_Kaimei$(3,0,0,0)
36420 'locate 25,5
36430 locate size(2)-15,5
36440 print  buffer_Kaimei$(0,3,0,0)
36450 'locate 32,5
36460 locate size(2)-8,5
36470 print buffer_Kaimei$(0,0,3,0)
36480 'locate 37,5
36490 locate size(2)-3,5
36500 print buffer_Kaimei$(0,0,0,3)
36510 case 3:
36520 'データー4件の時
36530 '1
36540 '2
36550 '3
36560 '4
36570 '5
36580 end select
36590 '説明部分　左側
36600 locate 0,2
36610 color rgb(255,0,255)
36620 print"思いついた候補の名前"
36630 locate 0,4
36640 print"(ニックネーム　or 会社名)を"
36650 locate 0,6
36660 print"10文字以内で入力してください"
36670 color rgb(0,0,0)
36680 locate 0,8
36690 if kaimei_count = 1 or kaimei_count = 2 then
36700 Input"名前:",kouho_name$
36710 name$=kouho_name$
36720 n=len(name$)
36730 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 34350
36740 'else
36750 if n =< 10 then goto 29580
36760 endif
36770 if kaimei_count = 3 then
36780 Input"エンターキーを押してください",key$
36790 if key$ = "" then
36800 'データーを初期化して、トップ画面に行く
36810 '1.データーを初期化
36820 kaimei_count = 0
36830 for i=1 to 3
36840 buffer_Kaimei$(i,0,0,0) = ""
36850 buffer_Kaimei$(0,i,0,0) = ""
36860 buffer_Kaimei$(0,0,i,0) = ""
36870 buffer_Kaimei$(0,0,0,i) = ""
36880 next i
36890 '2.トップ画面に行く
36900 goto 7550
36910 endif
36920 endif
36930 '霊遺伝姓名学 ここから
36940 'グラフィック領域　ここから
36950 '性別入力
36960 Reiden_Top_Input_Sextype:
36970 cls 3
36980 No=1:y=0:key$="":bg=0
36990 sp_on 1,1:sp_put 1,(10,200),1,0
37000 'Line1
37010 line (0,0)-(850,60),rgb(0,0,255),bf
37020 line (0,0)-(847,57),rgb(0,255,0),b
37030 'Line 2
37040 line (0,63)-(853,537),rgb(127,255,212),bf
37050 line (0,60)-(850,540),rgb(0,0,0),b
37060 'Line 3
37070 line (0,540)-(850,630),rgb(0,255,0),bf
37080 line (0,543)-(853,633),rgb(0,0,255),b
37090 'グラフィック領域　ここまで
37100 '音声表示
37110 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
37120 '性別変数:sex_type=0
37130 '文字色： 白
37140 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
37150 '文字色：赤
37160 color rgb(255,0,255)
37170 print"占う人の性別の番号を入れてください" + chr$(13)
37180 print" :1.女 性" + chr$(13)
37190 print" :2.男 性" + chr$(13)
37200 print" :3.前の画面に戻る" + chr$(13)
37210 print" :4.終 了" + chr$(13)
37220 color rgb(0,0,0)
37230 print "番号:"
37240 Reiden_Top_Input_Sextype2:
37250 y=0:key$="":bg=0
37260 while (key$<>chr$(30) and bg<>2 and y<>1 and y<> -1 and key$<>chr$(13) and key$<>chr$(31))
37270 key$=inkey$
37280 y=stick(1)
37290 bg=strig(1)
37300 pause 2.50*100
37310 wend
37320 if (key$=chr$(31) or y=1) then
37330 '
37340 select case No
37350 case 1:
37360        No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
37370 case 2:
37380       No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
37390 case 3:
37400       No=4:sp_on 4,1:sp_on 3,0:beep:sp_put 4,(10,500),4,0:goto Reiden_Top_Input_Sextype2:
37410 case 4:
37420       No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
37430 end select
37440 endif
37450 if (bg=2 or key$=chr$(13)) then
37460 select case No
37470 case 1:
37480       sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
37490 case 2:
37500       sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
37510 case 3:
37520       sp_on 3,0:goto Main_Screen1:
37530 case 4:
37540       sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
37550 end select
37560 endif
37570 '2:男性の場合 名前を入力
37580 '男性の性別:sex_type=2
37590 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
37600 '1:女性の場合 既婚の場合、旧姓で入力
37610 '女性の性別:sex_type=1
37620 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
37630 '3:終了処理
37640 'if val(No$)=4 then cls 3:end
37650 'if val(No$)=3 then goto Main_Screen1:
37660 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
37670 '１．男性の場合の名前入力
37680 '描画領域　ここから
37690 ReiIden_Input_male:
37700 cls 3:init"kb:2"
37710 'Line 1 Title
37720 line (0,0)-(850,60),rgb(0,0,255),bf
37730 line (0,0)-(850,57),rgb(0,255,0),b
37740 'Line2 Input name
37750 line (0,60)-(850,300),rgb(0,255,0),bf
37760 line (0,60)-(850,303),rgb(0,0,255),b
37770 '描画領域 ここまで
37780 '文字色：白
37790 color rgb(255,255,255)
37800 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
37810 '文字色：黒
37820 color rgb(0,0,0)
37830 print "名前の姓の部分を入れてください" + chr$(13)
37840 Input"名前(姓の部分):",name1$
37850 '名の入力部分
37860 cls
37870 color rgb(255,255,255)
37880 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
37890 color rgb(0,0,0)
37900 print "名前の名の部分を入れてください"+chr$(13)
37910 Input"名前(名の部分):",name2$:goto check:
37920 '2.女性の場合　既婚か未婚か確認する
37930 '2-2-1女性の姓の入力
37940 'グラフィック領域　ここから
37950 ReiIden_Input_female:
37960 cls 3:init"kb:2"
37970 'Line1 Title
37980 line (0,0)-(850,60),rgb(0,0,255),bf
37990 line (0,0)-(850,57),rgb(0,255,0),b
38000 'Line 2 入力欄
38010 line (0,60)-(850,360),rgb(0,255,0),bf
38020 line (0,60)-(850,357),rgb(0,0,255),b
38030 'Line 2 入力欄(名前入力)
38040 'グラフィック領域 ここまで
38050 cls:init"kb:2"
38060 color rgb(255,255,255)
38070 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
38080 color rgb(255,0,0)
38090 print"既婚者の方は、旧姓を入れてください"+chr$(13)
38100 color rgb(0,0,0)
38110 print "名前の姓の部分を入れてください"+chr$(13)
38120 Input "名前(姓の部分):",name3$
38130 '2-2-2女性の名の入力
38140 cls:init"kb:2"
38150 color rgb(255,255,255)
38160 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
38170 color rgb(0,0,0)
38180 print "名前の名の部分を入れてください"+chr$(13)
38190 Input "名前(名の部分):",name4$
38200 '計算領域　ここから
38210 check:
38220 '苗字の画数:buffer_name1_count
38230 'name1$,name2$:男性
38240 if sex_type = 1 then
38250 'sex_type=1 :女性のとき
38260 buf_male_female_name1$=name3$
38270 buf_male_female_name2$=name4$
38280 endif
38290 if sex_type = 2 then
38300 'sex_type=2 :男性のとき
38310 buf_male_female_name1$=name1$
38320 buf_male_female_name2$=name2$
38330 endif
38340 buffer_name1_count=len(buf_male_female_name1$)
38350 buffer_name2_count=len(buf_male_female_name2$)
38360 select case buffer_name1_count
38370 'AとBを求める
38380 case 1:
38390 '1.苗字の画数が1つのとき
38400 'A:霊数 1
38410 A=1
38420 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
38430 B = char_count(buf_name1$)
38440 case 2:
38450 '2.苗字の画数が2つのとき
38460 '2-1:苗字の1文字目:buf_name1$
38470 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
38480 '2-2:苗字の2文字目:buf_name2$
38490 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
38500 A=char_count(buf_name1$)
38510 B=char_count(buf_name2$)
38520 'B=char_count(buf_name2$)
38530 case 3:
38540 '3.苗字の画数が3つの時
38550 '3-1:苗字の1文字目:buf_name1$
38560 buf_name1$=Mid$(buf_male_female_name1$,1,1)
38570 '3-2:苗字が3つのときの2つ目の文字をもとめる
38580 '3-2:苗字の2つ目:buf_name2$
38590 buf_name2$=Mid$(buf_male_female_name1$,2,1)
38600 '3-3:苗字が3つのときの3文字目
38610 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
38620 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
38630 if buf_name2$="々" then
38640 A = char_count(buf_name1$) * 2
38650 B = char_count(buf_name3$)
38660 else
38670 A = char_count(buf_name1$) + char_count(buf_name2$)
38680 B = char_count(buf_name3$)
38690 endif
38700 '姓が4文字
38710 case 4:
38720 buf_name1$=Mid$(buf_male_female_name1$,1,1)
38730 buf_name2$=Mid$(buf_male_female_name1$,2,1)
38740 buf_name3$=Mid$(buf_male_female_name1$,3,1)
38750 buf_name4$=Mid$(buf_male_female_name1$,4,1)
38760 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
38770 B=char_count(buf_name4$)
38780 case else:
38790 end select
38800 '2.C,Dを求める
38810 select case buffer_name2_count
38820 case 1:
38830 '名が1文字の時
38840 'CとDを求める
38850 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
38860 C = char_count(buff_name1$)
38870 'D=1:霊数
38880 D = 1
38890 case 2:
38900 '名が2文字の時
38910 'CとDを求める
38920 '名の1文字目:buff_name1$
38930 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
38940 '名の2文字目:buff_name2$
38950 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
38960 C = char_count(buff_name1$)
38970 D = char_count(buff_name2$)
38980 case 3:
38990 '名が3文字の時
39000 'CとDを求める
39010 '名の1文字目:buff_name1$
39020 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39030 '名の2文字目:buff_name2$
39040 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
39050 if buff_name2$ = "々" then
39060 buff_name2$ = buff_name1$
39070 endif
39080 '名の3文字目:buff_name3$
39090 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
39100 C = char_count(buff_name1$)
39110 D = char_count(buff_name2$) + char_count(buff_name3$)
39120 end select
39130 '1.先祖運を求める
39140 buffer_Senzo = A + B
39150 '2.性格運を求める
39160 buffer_Seikaku = B + C
39170 '3.愛情運を求める
39180 buffer_Aijyou = C + D
39190 '4.行動運を求める
39200 buffer_Kouzou = A + D
39210 'if buffer_Kouzou=10 then
39220 'endif
39230 '1.生数を求める
39240 func buf_Seisu(buffer)
39250 if buffer < 10 then
39260 seisu=buffer
39270 endif
39280 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
39290 seisu = 0
39300 endif
39310 if buffer > 10 then
39320 if buffer=20 then
39330 seisu = 0
39340 else
39350 n = buffer - (fix(buffer / 10) * 10)
39360 seisu = n
39370 endif
39380 endif
39390 endfunc seisu
39400 func buf_Wasu(buffer)
39410 buf_wasu = 0:wasu = 0
39420 if buffer < 10 then
39430 '
39440 wasu = buffer:goto wasu:
39450 else
39460 if buffer = 10 then
39470 wasu = 1:goto wasu:
39480 else
39490 if buffer > 10  then
39500 if buffer=19 or buffer=28 or buffer=37 then
39510 wasu=1:goto wasu:
39520 else
39530 if buffer = 29 then
39540 wasu=2:goto wasu:
39550 'endif
39560 else
39570 a = fix(buffer / 10)
39580 b = buffer - a * 10
39590 c = a + b
39600 if c = 19 or c=28 then
39610 wasu=1
39620 '
39630 else
39640 wasu=c
39650 endif
39660 endif
39670 endif
39680 endif
39690 endif
39700 if c < 10 then
39710 wasu = c
39720 'endif
39730 endif
39740 else
39750 if buffer=19 or buffer=28 then
39760 wasu = 1
39770 endif
39780 endif
39790 wasu:
39800 buf_wasu=wasu
39810 endfunc buf_wasu
39820 func buf_kyoudai$(buf_sex_type,buf_Sa$)
39830 select case buf_sex_type
39840 '1.女性の場合
39850 case 1:
39860 if (buf_Sa$ = "連続") then
39870 buffer_kyoudai$="長女"
39880 endif
39890 if (buf_Sa$ = "1差") then
39900 buffer_kyoudai$="次女"
39910 endif
39920 if (buf_Sa$ = "2差") then
39930 buffer_kyoudai$="三女"
39940 endif
39950 if (buf_Sa$ = "3差") then
39960 buffer_kyoudai$="四女"
39970 endif
39980 if (buf_Sa$ = "4差") then
39990 buffer_kyoudai$="五女"
40000 endif
40010 '男性の場合
40020 case 2:
40030 if (buf_Sa$ = "連続") then
40040 buffer_kyoudai$="長男"
40050 endif
40060 if (buf_Sa$ = "1差") then
40070 buffer_kyoudai$="次男"
40080 endif
40090 if (buf_Sa$ = "2差") then
40100 buffer_kyoudai$="三男"
40110 endif
40120 if (buf_Sa$ = "3差") then
40130 buffer_kyoudai$="四男"
40140 endif
40150 if (buf_Sa$ = "4差") then
40160 buffer_kyoudai$="五男"
40170 endif
40180 case else:
40190 end select
40200 kyoudai$=buffer_kyoudai$
40210 endfunc kyoudai$
40220 '1.タテ型
40230 '1.同じ数字が2組ある場合
40240 func Tate_gata$()
40250 if Senzo_wasu = Seikaku_wasu  then
40260 if Aijyou_wasu - Seikaku_wasu > 1 then
40270 Spirit_type$="タテ型"
40280 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
40290 Sa$ = str$(Sa_count) + "差"
40300 else
40310 Spirit_type$="タテ型"
40320 Sa$="連続"
40330 endif
40340 endif
40350 endfunc
40360 '2. ナナメ型
40370 '同じ数字が2組ある場合
40380 func Naname_gata$()
40390 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
40400 Spirit_type$="斜め型"
40410 endif
40420 if Seikaku_wasu - Senzo_wasu > 1 then
40430 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
40440 Sa$=str$(Sa_count)+" 差"
40450 else
40460 Sa$="連続"
40470 endif
40480 endfunc
40490 '3.表十字型
40500 '同じ数字が2組ある場合
40510 func Omote_jyuji_gata1$()
40520 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
40530 Spirit_type$ = "表十字型"
40540 endif
40550 if Senzo _wasu - Seikaku_wasu > 1 then
40560 Sa_count = Senzo_wasu - Seikaku_wasu - 1
40570 else
40580 if Senzo_wasu  -  Seikaku_wasu = 1  then
40590 Sa$="連続"
40600 endif
40610 endif
40620 endfunc
40630 '3-1.表十字型(ヨコ系)
40640 func Omote_jyuji_gata_yoko$()
40650 endfunc
40660 '3-2.表十字型(上下型)
40670 func Omote_jyuji_gata_jyouge()
40680 endfunc
40690 '4.ヨコ型
40700 func Yoko_gata$()
40710 endfunc
40720 '5.上下型
40730 func Jyouge_gata$()
40740 endfunc
40750 '6.1.中広型(タテ系)
40760 func Nakahiro_Tate$()
40770 endfunc
40780 '6.2中広型(ナナメ系)
40790 func Nakahiro_Naname$()
40800 endfunc
40810 '6.3中広型(表十字型)
40820 func Nakahiro_Omotejyuji$()
40830 endfunc
40840 '7.1.中一差(タテ系)
40850 func Chuissa_Tate$()
40860 endfunc
40870 '7.2中一差(ナナメ系)
40880 func Chuissa_Naname$()
40890 endfunc
40900 '8.1.中二差(タテ系)
40910 func Chunissa_Tate$()
40920 endfunc
40930 '8.2.中二差(ナナメ系)
40940 '9.1.順序型(タテ上下系)
40950 func Chunissa_Tate_jyouge$()
40960 endfunc
40970 '9.2.順序型(タテ、ヨコ系)
40980 func Jyunjyo_Tate_yoko$()
40990 endfunc
41000 '9.3.順序型(ナナメ、上下系)
41010 func Jyunjyo_Naname_jyouge$()
41020 endfunc
41030 '9.4.順序型(ナナメ、ヨコ系)
41040 '10.1.中順序型(ヨコ系)
41050 func Nakajyunjyo_yoko$()
41060 endfunc
41070 '10.2.中順序型(上下系)
41080 func Nakajyunjyo_jyouge$()
41090 endfunc
41100 '11.1.隔離型(タテ、上下系)
41110 func Kakuri_tate_jyouge$()
41120 endfunc
41130 '11.2.隔離型(タテ、ヨコ系)
41140 func Kakuri_tate_yoko$()
41150 endfunc
41160 '11.3.隔離型(ナナメ、上下系)
41170 func Kakuri_Naname_jyouge$()
41180 endfunc
41190 '11.4.隔離型(ナナメ、ヨコ系)
41200 func Kakuri_Naname_yoko$()
41210 endfunc
41220 '11.5.隔離型(タテ系)
41230 func Kakuri_tate$()
41240 endfunc
41250 '11.6.隔離型(ナナメ系)
41260 func Kakuri_naname$()
41270 endfunc
41280 '11.7.隔離型(上下、ヨコ系)
41290 func Kakuri_Jyouge_yoko$()
41300 endfunc
41310 Spirit_type$="No data"
41320 '1.先祖運　和数
41330 Senzo_wasu = buf_Wasu(buffer_Senzo)
41340 '2.先祖運 生数
41350 Senzo_seisu = buf_Seisu(buffer_Senzo)
41360 '3.性格運 和数
41370 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
41380 '4.性格運 生数
41390 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
41400 '5.愛情運 和数
41410 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
41420 '6.愛情運 生数
41430 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
41440 '7.行動運 和数
41450 Koudou_wasu = buf_Wasu(buffer_Kouzou)
41460 '8.行動運 生数
41470 Koudou_seisu = buf_Seisu(buffer_Kouzou)
41480 '計算領域 ここまで
41490 '描画領域　ここから
41500 Result_ReiIden1:
41510 cls 3
41520 'Title
41530 line (0,0)-(850,60),rgb(0,0,255),bf
41540 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
41550 'name
41560 line (0,60)-(850,165),rgb(0,255,0),bf
41570 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
41580 '生数、和数
41590 line (0,165)-(850,550),rgb(125,255,212),bf
41600 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
41610 'プッシュメッセージ
41620 line (0,550)-(850,650),rgb(0,255,0),bf
41630 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
41640 '描画領域　ここまで
41650 color rgb(255,255,255)
41660 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
41670 color rgb(0,0,0)
41680 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
41690 color rgb(255,0,255)
41700 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
41710 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
41720 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
41730 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
41740 talk "診断結果１です、あなたのわすうとせいすうです。"
41750 color rgb(0,0,0)
41760 print"エンターキーを押してください"
41770 key$=Input$(1)
41780 if key$=chr$(13) then goto Result_ReiIden2:
41790 '描画領域　ここから
41800 Result_ReiIden2:
41810 cls 3
41820 'Title Color:青
41830 line (0,0)-(860,60),rgb(0,0,255),bf
41840 'Title 枠
41850 line (0,0)-(860,57),rgb(255,0,255),b
41860 'Message
41870 line (0,60)-(860,650),rgb(127,255,212),bf
41880 'Message 枠
41890 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
41900 '
41910 '描画領域　ここまで
41920 color rgb(255,255,255)
41930 print "霊遺伝姓名 診断結果2/3" + chr$(13)
41940 '十二運の基礎運
41950 '1.四大主流型
41960 'パターン１ 同じ数字の場合
41970 '1.オール同数化 全部同じ
41980 '1-if
41990 sa_count=0
42000 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
42010 Spirit_type$ = "オール同数化"
42020 Sa$="3差"
42030 else
42040 'パターン１ 同じ数字2つの場合
42050 '2.タテ型
42060 '数字が２つ同じ
42070 '2-if
42080 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
42090 Spirit_type$ = "タテ型"
42100 '2.タテ型　1
42110 if Koudou_wasu - Senzo_wasu = 1 then
42120 Sa$="連続"
42130 else
42140 '2.タテ型　2
42150 if abs(Senzo_wasu - Koudou_wasu) > 1 then
42160 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
42170 Sa$=str$(Sa_count) + "差"
42180 endif
42190 endif
42200 endif
42210 endif
42220 '2.タテ型　3
42230 '1.type
42240 'Spirit_type$ = "四大主流型 タテ型"
42250 '3.斜め型
42260 '数字が２つ同じ
42270 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
42280 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
42290 Sa$="連続"
42300 else
42310 '先祖＝行動　性格運=愛情運
42320 '3-if
42330 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
42340 Spirit_type$="斜め型"
42350 '3.斜め型 1
42360 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
42370 Sa$ = "連続"
42380 else
42390 if (Seikaku_wasu - Koudou_wasu) < 1 then
42400 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
42410 endif
42420 endif
42430 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
42440 Sa_count = 3
42450 Sa$ = str$(Sa_count - 1) + "差"
42460 else
42470 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
42480 Sa_count = Senzo_wasu - Seikaku_wasu
42490 Sa$ = str$(Sa_count-1) + "差"
42500 endif
42510 endif
42520 endif
42530 'Spirit_type$ = str$(Sa_count) + "差"
42540 'endif
42550 'endif
42560 '3-if
42570 endif
42580 '3.斜め型 2
42590 '3.斜め型 3
42600 '数字が２つ同じ
42610 '表十字型
42620 '先祖運＝愛情運　　行動運＝性格運
42630 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
42640 Spirit_type$="表十字型"
42650 Sa_coun = Senzo_wasu - Seikaku_wasu
42660 if Sa_count > 1 then
42670 Sa$ = str$(Sa_count) + "差"
42680 else
42690 if Sa_count = 1 then
42700 Sa$ = "連続"
42710 endif
42720 endif
42730 endif
42740 'endif
42750 '数字が２つ同じ
42760 '表十字型(横型)
42770 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
42780 Spirit_type$="表十字型(ヨコ型)"
42790 'Sa$を後で書く
42800 endif
42810 '数字が２つ同じ
42820 '表十字型(上下型)
42830 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
42840 Spirit_type$="表十字型(上下型)"
42850 'Sa$を後で書く
42860 endif
42870 'ヨコ型
42880 if Koudou_wasu = Seikaku_wasu then
42890 n=abs(Senzo_wasu - Seikaku_wasu)
42900 n2 = abs(Aijyou_wasu-Seikaku_wasu)
42910 Spirit_type$="ヨコ型"
42920 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
42930 Sa$="連続"
42940 endif
42950 if n = n2 then
42960 if n > 1 then
42970 Sa_count = n - 1
42980 Sa$=str$(Sa_count)+"差"
42990 else
43000 Sa_Count = abs(n - n2)
43010 if Sa_Count > 1 then
43020 Sa$ = str$(Sa_Count) + "差"
43030 endif
43040 endif
43050 endif
43060 endif
43070 '上下型
43080 '同じ数字が1組みある場合
43090 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
43100 Spirit_type$ = "上下型"
43110 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
43120 'n = abs(Koudou_wasu-Senzo_wasu)
43130 'n2= abs(Seikaku_wasu-Senzo_wasu)
43140 'buf=min(n,n2)
43150 'Sa$=str$(buf - 1) + "差"
43160 Sa$="連続"
43170 endif
43180 endif
43190 '中広（なかこう)型(斜め系)
43200 '連続した数字が2組みある場合
43210 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
43220 'n=Min(Senzo_wasu ,Koudou_wasu)
43230 'n2=Max(Seikaku_wasu , Aijyou_wasu)
43240 'Spirit_type$="中広型（斜め系）"
43250 'Sa_count = n - n2 -1
43260 'if Sa_count > 1 then
43270 'Sa$ = str$(Sa_count-1) + "差"
43280 'else
43290 'if Sa_count = 1 then
43300 'Sa$="連続"
43310 'endif
43320 'endif
43330 'endif
43340 '中広（なかこう)型(表十字型)
43350 '連続した数字が2組みある場合
43360 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
43370 Spirit_type$="中広（なかこう)型(表十字型)"
43380 n=Min(Koudou_wasu , Seikaku_wasu)
43390 n2=Max(Aijyou_wasu , Senzo_wasu)
43400 Sa_count = n - n2
43410 if Sa_count > 1 then
43420 Sa$ = str$(Sa_count - 1) + "差"
43430 else
43440 if Sa_count = 1 then
43450 Sa$ = "連続"
43460 endif
43470 endif
43480 endif
43490 '中一差（タテ系)
43500 '連続した数字が2組みある場合
43510 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
43520 'Spirit_type$="中一差（タテ系)"
43530 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
43540 n = Max(Koudou_wasu,Aijyou_wasu)
43550 n2 = Max(Senzo_wasu,Seikaku_wasu)
43560 else
43570 n = Max(Koudou_wasu,Aijyou_wasu)
43580 n2 = Min(Senzo_wasu,Seikaku_wasu)
43590 endif
43600 Sa_count2 = abs(n2 - n) - 1
43610 if Sa_count2 >= 0 then
43620 select case Sa_count2
43630 case 1:
43640 '中一差（タテ系)
43650 Sa$ = "連続"
43660 Spirit_type$="中一差型（タテ系)*"
43670 case 2:
43680 '中二差型（タテ系)
43690 Sa$ = "1差"
43700 Spirit_type$="中二差型（タテ系)"
43710 case 3:
43720 '中広（なかこう)型(タテ系)
43730 Sa$ = "2差"
43740 Spirit_type$="中三差型（タテ系)"
43750 case 4:
43760 Sa$ = "3差"
43770 Spirit_type$="中広型(タテ系)"
43780 case  else:
43790 cls 3:print"例外に入りました"
43800 end select
43810 '
43820 else
43830 cls 3:print"例外に入りました"
43840 endif
43850 endif
43860 'endif
43870 '中一差（斜め系)
43880 '連続した数字が2組みある場合
43890 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
43900 n = Min(Koudou_wasu,Senzo_wasu)
43910 n2 = Max(Aijyou_wasu,Seikaku_wasu)
43920 Sa_count = n - n2 - 1
43930 select case Sa_count
43940 case 1:
43950 '中一差（斜め系)
43960 '連続した数字が2組みある場合
43970 Sa$="1差"
43980 Spirit_type$="中一差（斜め系)"
43990 case 2:
44000 '中二差（斜め系)
44010 '連続した数字が2組みある場合
44020 Sa$="2差"
44030 Spirit_type$="中二差（斜め系)"
44040 case 3:
44050 Sa$="3差"
44060 Spirit_type$="中広型（斜め系）"
44070 case else:
44080 end select
44090 endif
44100 '順序型(タテ、上下系)
44110 '数字が４つ連続してる場合
44120 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
44130 Spirit_type$="順序型(タテ、上下系)"
44140 Sa$="連続"
44150 endif
44160 '中順序型(ヨコ系)
44170 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
44180 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
44190 Spirit_type$="中順序型(ヨコ系)"
44200 Sa$="1差"
44210 else
44220 '順序型(タテ、ヨコ系)
44230 '数字が４つ連続してる場合
44240 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
44250 Spirit_type$="順序型(タテ、ヨコ系)"
44260 Sa$="連続"
44270 endif
44280 endif
44290 endif
44300 '中順序型(上下系)
44310 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
44320 n=Max(Senzo_wasu,Aijyou_wasu)
44330 n2=Min(Koudou_wasu,Seikaku_wasu)
44340 Sa_count = n2 - n
44350 if Sa_count > 1 then
44360 Spirit_type$="中順序型(上下系)"
44370 Sa$ = Str$(Sa_count) + "差"
44380 else
44390 '順序型(斜め、上下系)
44400 '数字が４つ連続してる場合
44410 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
44420 Spirit_type$ = "順序型(斜め、上下系)"
44430 Sa$="連続"
44440 endif
44450 endif
44460 endif
44470 '順序型(斜め、ヨコ系)
44480 '数字が４つ連続してる場合
44490 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
44500 Spirit_type$="順序型(斜め、ヨコ系)"
44510 Sa$="連続"
44520 endif
44530 '隔離型(タテ、上下系)
44540 '数字が1つおきに飛んでる場合
44550 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
44560 Spirit_type$="隔離型(タテ、上下系)"
44570 Sa$="1差"
44580 endif
44590 '隔離型(タテ、ヨコ系)
44600 '数字が1つおきに飛んでる場合
44610 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
44620 Spirit_type$="隔離型(タテ、ヨコ系)"
44630 Sa$="1差"
44640 endif
44650 '隔離型(斜め、上下系)
44660 '数字が1つおきに飛んでる場合
44670 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
44680 Spirit_type$="隔離型(斜め、上下系)"
44690 Sa$="1差"
44700 endif
44710 '隔離型(斜め、ヨコ系)
44720 '数字が1つおきに飛んでる場合
44730 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
44740 Spirit_type$="隔離型(斜め、ヨコ系)"
44750 Sa$="1差"
44760 endif
44770 '隔離型(タテ系)
44780 '数字が2つおきに飛んでる場合
44790 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
44800 Spirit_type$="隔離型(タテ系)"
44810 Sa$="1差"
44820 endif
44830 '隔離型(斜め系)
44840 '数字が2つおきに飛んでる場合
44850 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
44860 Spirit_type$="隔離型(斜め系)"
44870 Sa$="1差"
44880 endif
44890 '隔離型(上下、ヨコ系)
44900 '数字が2つおきに飛んでる場合
44910 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
44920 Spirit_type$="隔離型(上下、ヨコ系)"
44930 Sa$="1差"
44940 'endif
44950 endif
44960 'ここに移動
44970 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
44980 color rgb(255,0,255)
44990 print "●十二の基礎運" + chr$(13)
45000 print Spirit_type$ + Sa$;chr$(13)
45010 print "きょうだい：";Kyoudai$ + chr$(13)
45020 talk "あなたのきょうだいは、"+Kyoudai$+"です"
45030 color rgb(0,0,0)
45040 print"前の画面:ｂキー"+chr$(13)
45050 print"保存して、もう一度やる：スペースキー"+chr$(13)
45060 print"終了:エンターキー"+chr$(13)
45070 key$ = Input$(1)
45080 if key$ = chr$(13) then
45090 goto Main_Screen1:
45100 else
45110 '保存して スペースキーでもう一度占う
45120 if key$ = " " then
45130 goto Save_Data1:
45140 else
45150 if key$="b" then
45160 goto Result_ReiIden1:
45170 endif
45180 endif
45190 endif
45200 'ファイル保存 占いデーターを一時保存
45210 Save_Data1:
45220 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
45230 'print#3は末尾は、セミコロンはいらない
45240 '末尾にセミコロンをつけると改行しない
45250 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
45260 ui_msg "保存しました"
45270 close #3
45280 goto Reiden_Top_Input_Sextype:
45290 '個人データーリスト  *parsonal_data
45300 Parsonal_data_top:
45310 cls 3
45320 line(0,0)-(680,60),rgb(0,0,255),bf
45330 pen 5:line(3,3)-(677,57),rgb(0,255,0),b
45340 line (0,60)-(680,440),rgb(127,255,212),bf
45350 pen 5:line (0, 63)-(677,443),rgb(0,0,255),b
45360 line (0,440)-(680,670),rgb(0,255,0),bf
45370 pen 5:line (0,443)-(677,673),rgb(0,0,0),b
45380 color rgb(255,255,255)
45390 print"◎個人データーリスト" + chr$(13)
45400 color rgb(255,0,255)
45410 print "1.霊遺伝姓名学リスト" + chr$(13)
45420 print "2.霊遺伝姓名学登録件数" + chr$(13)
45430 print "3.霊遺伝姓名学データー検索"+chr$(13)
45440 print "4.メインメニューへ行く"+chr$(13)
45450 color rgb(0,0,0)
45460 print "番号を入れてください"+chr$(13)
45470 Input "番号:",No
45480 if No = 1 then goto Parsonal_list1:
45490 if No = 2 then goto Entry_list_count:
45500 if No = 4 then goto Main_Screen1:
45510 if No = 3 then goto Parsonal_list_Search:
45520 if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
45530 '登録件数
45540 Entry_list_count:
45550 N = 0:
45560 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
45570 'N=1
45580 while eof(5) = 0
45590 line input #5,line$:N = N + 1
45600 'if line$="大吉数" then
45610 'continue:N = N - 1
45620 'else
45630 'N = N + 1
45640 'endif
45650 wend
45660 'c=N
45670 close #5
45680 c=N
45690 cls 3
45700 line (0,0)-(680,60),rgb(0,0,255),bf
45710 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
45720 line (0,60)-(680,180),rgb(127,255,212),bf
45730 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
45740 LINE (0,180)-(680,280),rgb(0,255,0),bf
45750 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
45760 color rgb(255,255,255)
45770 print "◎霊遺伝姓名学登録件数"+chr$(13)
45780 color rgb(255,0,255)
45790 'N=B-1:C=N
45800 print "登録件数は";c;"件です"+chr$(13)
45810 color rgb(0,0,0)
45820 print "エンターキーを押してください"+chr$(13)
45830 a$ = Input$(1)
45840 if a$ = chr$(13) then goto Parsonal_data_top:
45850 'パーソナルリスト ここから
45860 Parsonal_list1:
45870 cls 3:bN=0:n=0:a=0
45880 'Title
45890 line (0,0)-(850,60),rgb(0,0,255),bf
45900 line (0,0)-(850,57),rgb(255,255,255),b
45910 '個人名
45920 line (0,60)-(850,165),rgb(0,255,0),bf
45930 line (0,63)-(850,162),rgb(255,0,255),b
45940 '数値リスト
45950 line (0,165)-(850,550),rgb(255,212,212),bf
45960 line (0,168)-(850,547),rgb(0,0,255),b
45970 'ボタンメッセージ
45980 line (0,550)-(850,730),rgb(0,255,0),bf:
45990 line (0,553)-(853,733),rgb(255,0,255),b
46000 'Parsonal_list2:
46010 'color rgb(255,255,255):
46020 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
46030 'n=0
46040 open "config/Parsonal_data/parsonal_data.dat" for input as #7
46050 'bN=0
46060 while eof(7)=0
46070 'input #6,lines2$
46080 'close #6
46090 '
46100 line input #7,lines$:bN = bN + 1
46110 'if lines$ = "大吉数" then
46120 'continue:bN = bN - 1
46130 'else
46140 'bN = bN + 1
46150 'endif
46160 wend
46170 'buf_name1$(i)=Mid$(lines$,4,4)
46180 'next i
46190 'wend
46200 close #7
46210 'a=0
46220 open "config/Parsonal_data/parsonal_data.dat" for input as #8
46230 'while eof(8)=0
46240 for i=0 to (bN * 10) -1
46250 input #8,buflines$(i)
46260 'buflines$(i) = line$
46270 'a  =  a  +  1
46280 Next i
46290 'wend
46300 close #8
46310 while n <= bN * 10
46320 'Title
46330 color rgb(255,255,255)
46340 print "霊遺伝姓名学 リスト" + chr$(13)
46350 '性別を出す
46360 sex$ = show_sex_type$(buflines$((10*n) + 1))
46370 'n=0
46380 color rgb(0,0,0):
46390 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
46400 '
46410 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
46420 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
46430 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
46440 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
46450 'n = (( n + 1) Mod 3) - 1
46460 '
46470 'n = n + 1
46480 print "スペースキー:次へ行く" + chr$(13)
46490 print "エンターキー：トップへ戻る" + chr$(13)
46500 key$ = Input$(1)
46510 if key$ = " " then n = ((n + 1) Mod bN)
46520 'if bN = 3 then
46530 'if buflines$(0) = "大吉数" then
46540 'n = ((n + 1) Mod (bN - 1))
46550 'else
46560 'n=((n + 1) Mod bN)
46570 'wend
46580 'else
46590 'if bN=2 then
46600 'n=((n + 1) Mod bN)
46610 'endif
46620 'endif
46630 cls
46640 'else
46650 if key$ = chr$(13) then goto Parsonal_data_top:
46660 wend
46670 'goto Parsonal_data_top:
46680 'endif
46690 'endif
46700 Parsonal_list_Search:
46710 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
46720 while eof(1)=0
46730 line input #1,lines$:hit_count=hit_count + 1
46740 wend
46750 close #1
46760 'bufname$(hit_count*10),buffname$(hit_count*10)
46770 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
46780 for i=0 to hit_count*10 - 1
46790 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
46800 next i
46810 close #2
46820 Search_find:
46830 cls 3
46840 'グラフィック領域　ここから
46850 line (0,0)-(770,60),rgb(0,0,255),bf
46860 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
46870 line (0,60)-(770,170),rgb(127,255,212),bf
46880 line(0,63)-(767,173),rgb(0,0,255),b
46890 line(0,170)-(770,440),rgb(0,255,0),bf
46900 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
46910 color rgb(255,255,255)
46920 print "霊遺伝姓名判断 データー検索"+chr$(13)
46930 color rgb(255,0,255)
46940 print "登録件数:";hit_count;"件です"+chr$(13)
46950 color rgb(0,0,0)
46960 print "調べたい人の名前を入れてください"+chr$(13)
46970 Input "名前:",name$
46980 cls
46990 for i=0 to hit_count * 10 - 1
47000 if name$=buffname$(i) then
47010 hcount=hcount+1
47020 endif
47030 next i
47040 if hcount > 0 then
47050 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
47060 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
47070 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
47080 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
47090 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
47100 a$=input$(1)
47110 if a$=" " then goto Search_find:
47120 if a$=chr$(13) then goto Main_Screen1:hit_count=0
47130 else
47140 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
47150 color rgb(0,0,0):print"検索名:";name$+chr$(13)
47160 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
47170 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
47180 a$=input$(1)
47190 IF a$=chr$(13) then goto Main_Screen1:
47200 endif
47210 '相性のデーターを保存する機能
47220 '保存ファイル：bestAisyou.dat
47230 '保存フォルダ:config/Aisyou_dat/
47240 Save_Aisyou:
47250 open "config/Aisyou_data" for append as #1
47260 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
47270 close #1
47280 ui_msg "保存しました"
47290 key$ = input$(1)
47300 '設定変更項目
47310 Config_Setting:
47320 cls 3:
47330 'グラフィック領域　ここから
47340 'Line 1
47350 line (0,0)-(850,60),rgb(0,0,255),bf
47360 line (0,0)-(850,57),rgb(255,255,255),b
47370 'Line 2
47380 line (0,60)-(850,460),rgb(127,255,212),bf
47390 line (0,57)-(850,457),rgb(0,0,0),b
47400 'Line 3
47410 line (0,460)-(850,640),rgb(0,255,0),bf
47420 line (0,457)-(850,637),rgb(0,0,0),,b
47430 'グラフィック領域　ここまで
47440 color rgb(255,255,255)
47450 print "設定　トップメニュー" + chr$(13)
47460 color rgb(255,0,255)
47470 print "1.キーボードの設定" + chr$(13)
47480 print "2.音の設定" + chr$(13)
47490 print "3.トップに戻る" + chr$(13)
47500 print "4.プログラムの終了"+chr$(13)
47510 color rgb(0,0,0)
47520 print "番号を選んでエンターキー"+chr$(13)
47530 Input "番号:",No
47540 'No=4:プログラムの終了
47550 if No = 4 then
47560 cls 3:talk"しゅうりょうします":ui_msg"終了します":end
47570 else
47580 select case No
47590 'No=1:キーボードの設定
47600 case 1:
47610 goto Keyboard_Setting:
47620 'No=2:音の設定
47630 case 2:
47640 'No=3:トップに戻る
47650 case 3:
47660 goto Main_Screen1:
47670 'No=1〜3以外
47680 case else:
47690 goto Config_Setting:
47700 end select
47710 endif
47720 '1.キーボードの設定
47730 Keyboard_Setting:
47740 cls 3
47750 'グラフィック領域　ここから
47760 'Line 1
47770 line (0,0)-(950,60),rgb(0,0,255),bf
47780 line (0,0)-(947,57),rgb(255,255,255),b
47790 'Line 2
47800 line (0,60)-(950,460),rgb(127,255,212),bf
47810 line (0,57)-(947,457),rgb(0,0,0),b
47820 'Line 3
47830 line (0,460)-(950,640),rgb(0,255,0),bf
47840 line (0,457)-(947,637),rgb(0,0,0),,b
47850 'グラフィック領域　ここまで
47860 '文字色　白
47870 color rgb(255,255,255)
47880 print "設定1 キーボードの設定" + chr$(13)
47890 color rgb(255,0,255)
47900 print "1.バーチャルキーボード表示する" + chr$(13)
47910 print "2.バーチャルキーボードを表示しない" + chr$(13)
47920 print "3.トップ画面へ行く" + chr$(13)
47930 print "4.終了する" + chr$(13)
47940 color rgb(0,0,0)
47950 Print "番号を選んでください" + chr$(13)
47960 Input "番号:",SelectNo3
47970 if SelectNo3 = 4 then
47980 cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
47990 else
48000 Select case SelectNo3
48010 case 1:
48020  if keyboard_flag = 0 then
48030    keyboard_flag=1:init"kb:2"
48040    goto Keyboard_Setting:
48050  endif
48060 case 2:
48070    if keyboard_flag=1 then
48080    keyboard_flag=0:init"kb:0"
48090    goto Keyboard_Setting:
48100    endif
48110 case 3:
48120    goto Main_Screen1:
48130 case else:
48140    goto Keyboard_Setting:
48150 end Select
48160 endif
