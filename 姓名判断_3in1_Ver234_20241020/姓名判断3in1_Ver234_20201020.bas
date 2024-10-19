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
8250 talk "メイン画面です。番号を選んでください"
8260 'Text ,Grapgic clear:cls 3
8270 'グラフィック領域　ここから
8280 line (0,0)-(680,60),rgb(0,0,255),bf
8290 pen 5:line (0,0)-(677,57),rgb(127,255,212),b
8300 line (0,60)-(680,560),rgb(127,255,212),bf
8310 pen 5:line (0,57)-(677,557),rgb(0,0,255),b
8320 line (0,560)-(680,740),rgb(0,255,0),bf
8330 'グラフィック領域 ここまで
8340 pen 5:line (0,557)-(677,737),rgb(0,0,255),b
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
8590 locate 0,12
8600 print "1.姓名判断を選択" + chr$(13)
8610 Main_Screen2:
8620 y=0:key$="":bg=0
8630 while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
8640   y=stick(1)
8650   key$=inkey$
8660   bg=strig(1)
8670   pause 2.55*100
8680 wend
8690 '**************************************************
8700 '1.下のキー  ここから
8710 '**************************************************
8720 if (y = 1 or key$ = chr$(31)) then
8730 select case No
8740 case 0:
8750        No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
8760 case 1:
8770        No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
8780 case 2:
8790        No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
8800 case 3:
8810        No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8820 case 4:
8830        No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
8840 end select
8850 endif
8860 '***************************************************
8870 '1. 下のキー　ここまで
8880 '***************************************************
8890 '***************************************************
8900 '2.上のキー ここから
8910 '***************************************************
8920 if (key$=chr$(30) or y=-1) then
8930 select case No
8940 case 0:
8950        No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
8960 case 1:
8970        No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
8980 case 2:
8990        No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
9000 case 3:
9010        No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
9020 case 4:
9030        No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
9040 end select
9050 endif
9060 '***************************************************
9070 '3.決定ボタン ここから
9080 '***************************************************
9090 if (bg=2 or key$=chr$(13)) then
9100 select case No
9110 case 0:
9120       sp_on 0,0:goto seimeihandan_top:
9130 case 1:
9140       sp_on 1,0:goto seimeihandan_setting:
9150 case 2:
9160       sp_on 2,0:goto Parsonal_data_top:
9170 case 3:
9180       sp_on 3,0: goto help:
9190 case 4:
9200      sp_on 4,0:talk"プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
9210 end select
9220 endif
9230 '***************************************************
9240 '3.決定ボタン ここまで
9250 '***************************************************
9260 'No$=input$(1)
9270 'if val(No$) = 1  then goto seimeihandan_top:
9280 'if val(No$) = 2 then goto seimeihandan_setting:
9290 'if val(No$) = 3 then goto Parsonal_data_top:
9300 'if val(No$) = 4 then goto help:
9310 'if val(No$) = 5  then talk"終了します":cls 3:end
9320 'if val(No$) > 5 or val(No$) = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
9330 'if No = "" then goto 7550
9340 '1.姓名判断トップ画面
9350 seimeihandan_top:
9360 cls:
9370 No=0:y=0:key$="":bg=0:talk""
9380 'タイトル文字:白
9390 font 48:color rgb(255,255,255),,rgb(176,196,222)
9400 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
9410 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
9420 sp_put 0,(10,100),0,0
9430 'グラフィック 描画領域　ここから
9440 'Main_Screen:
9450 cls 3
9460 '1.Title:青
9470 'Line 1
9480 line (0,0)-(870,60),rgb(0,0,255),bf
9490 pen 5:line(0,0)-(867,57),rgb(127,255,212),b
9500 'Line 2
9510 line (0,60)-(870,450),rgb(127,255,212),bf
9520 PEN 5:line(0,57)-(867,447),rgb(0,0,255),b
9530 'Line 3
9540 line (0,450)-(870,600),rgb(0,255,0),bf
9550 pen 5:line (0,447)-(867,597),rgb(0,0,255),b
9560 'グラフィック 描画領域 ここまで
9570 color rgb(255,255,255)
9580 print"◎姓名判断の種類トップメニュー"+chr$(13)
9590 color rgb(255,0,255):print" :1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
9600 color rgb(255,0,255):print" :2.安斎流姓名判断(男女の相性)"+chr$(13)
9610 COLOR rgb(255,0,255):print" :3.九星姓名判断(一生の運勢)"+chr$(13)
9620 COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
9630 color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
9640 seimeihandan_top2:
9650 y=0:key$="":bg=0
9660 while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
9670 key$=inkey$
9680 y=stick(1)
9690 bg=strig(1)
9700 pause 2.55*100
9710 wend
9720 '*************************************************
9730 '下のキー  ここから
9740 '*************************************************
9750 if (key$=chr$(31) or y=1) then
9760 select case No
9770 case 0:
9780       No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9790 case 1:
9800       No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
9810 case 2:
9820       No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9830 case 3:
9840         No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9850 end select
9860 endif
9870 '*************************************************
9880 '下のキー　ここまで
9890 '*************************************************
9900 if (key$=chr$(30) or y=-1) then
9910 select case No
9920 case 0:
9930       No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
9940 case 1:
9950       No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
9960 case 2:
9970       No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
9980 case 3:
9990       No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
10000 end select
10010 endif
10020 '*************************************************
10030 '決定ボタン　ここから
10040 '*************************************************
10050 if (bg=2 or key$=chr$(13)) then
10060 select case No
10070 case 0:
10080       sp_on 0,0:goto Reiden_Top_Input_Sextype:
10090 case 1:
10100       sp_on 1,0:goto Anzai_Top:
10110 case 2:
10120       sp_on 2,0:goto Kyusei_Top:
10130 case 3:
10140      sp_on 3,0:goto Main_Screen1:
10150 end select
10160 endif
10170 '*************************************************
10180 '決定ボタン　ここまで
10190 '*************************************************
10200 'IF val(selectNo$)=1 then goto Reiden_Top_Input_Sextype:
10210 'if val(selectNo$)=2 then goto Anzai_Top:
10220 'if val(selectNo$)=3 then goto Kyusei_Top:
10230 'if val(selectNo$)=4 then goto Main_Screen1:
10240 'if val(selectNo$) > 4 or val(selectNo$) = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
10250 '１．姓名判断(九星姓名判断トップ)
10260 'グラフィック領域　ここから
10270 Kyusei_Top:
10280 cls 3:No=0:y=0:bg=0:key$="":talk""
10290 sp_on 0,1:sp_put 0,(10,100),0,0
10300 line (0,0)-(760,60),rgb(0,0,250),bf
10310 pen 5:line (0,0)-(757,57),rgb(127,255,212),b
10320 line (0,60)-(760,460),rgb(127,255,212),bf
10330 pen 5:line(0,57)-(757,457),rgb(0,0,255),b
10340 line (0,460)-(760,680),rgb(0,255,0),bf
10350 pen 5:line(0,457)-(757,677),rgb(0,0,255),b
10360 'グラフィック領域　ここまで
10370 font 48:color rgb(255,255,255),,rgb(176,196,222)
10380 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
10390 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
10400 color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
10410 color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
10420 color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
10430 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
10440 locate 0,10:color RGB(0,0,0)
10450 print "1.人名の吉凶を見るを選択"
10460 Kyusei_Top2:
10470 bg=0:key$="":y=0
10480 while (y<>1 and y<> -1 and key$<> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
10490 key$=inkey$
10500 y=stick(1)
10510 bg=strig(1)
10520 pause 2.50*100
10530 wend
10540 '****************************************************
10550 '下のキー　ここから
10560 '*****************************************************
10570 if (y=1 or key$=chr$(30)) then
10580 select case No
10590 case 0:
10600        No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10610 case 1:
10620        No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10630 case 2:
10640        No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10650 case 3:
10660        No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
10670 end select
10680 endif
10690 '*****************************************************
10700 '下のキー　ここまで
10710 '*****************************************************
10720 '*****************************************************
10730 '上のキー　ここから
10740 '*****************************************************
10750 if (y=-1 or key$=chr$(31)) then
10760 select case No
10770 case 0:
10780        No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
10790 case 1:
10800       No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
10810 case 2:
10820       No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
10830 case 3:
10840       No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
10850 end select
10860 endif
10870 '*****************************************************
10880 '上のキー　ここまで
10890 '*****************************************************
10900 '*****************************************************
10910 '決定ボタン　ここから
10920 '*****************************************************
10930 if (key$=chr$(13) or bg=2) then
10940 select case No
10950 case 0:
10960        sp_on 0,0:goto Parson_name_kikkyo:
10970 case 1:
10980        sp_on 1,0:goto nick_name_check:
10990 case 2:
11000        sp_on 2,0:goto name_inyo_check:
11010 case 3:
11020        sp_on 3,0:goto seimeihandan_top:
11030 end select
11040 endif
11050 '*****************************************************
11060 '決定ボタン　ここまで
11070 '*****************************************************
11080 'color rgb(0,0,0):print"番号を選んでください"+chr$(13)
11090 'color rgb(0,0,0):Input "番号:",selectNo
11100 'selectNo=Input$(1)
11110 'if selectNo = 1 then goto Parson_name_kikkyo
11120 'if selectNo = 2 then goto nick_name_check:
11130 'if selectNo = 3 then goto name_inyo_check:
11140 'if selectNo = 4  then goto seimeihandan_top:
11150 'if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
11160 '2.姓名判断 安斎流姓名判断　トップ画面
11170 '2-1名前の姓の部分を入力
11180 'グラフィック領域　ここから
11190 Anzai_Top_Screen:
11200 cls 3:LINE (0,0)-(820,60),rgb(0,0,255),bf
11210 pen 5:line (0,0)-(816,57),rgb(127,255,212),b
11220 line (0,60)-(820,260),rgb(127,255,212),bf
11230 pen 5:line(0,57)-(817,257),rgb(0,0,255),b
11240 line (0,260)-(820,350),rgb(0,255,0),bf
11250 pen 5:line(0,257)-(817,347),rgb(0,0,255),b
11260 font 48:talk""
11270 'グラフィック領域 ここまで
11280 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
11290 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
11300 COLOR rgb(255,0,255)
11310 print"名前を2回に分けて入力してください"+chr$(13)
11320 print"名前の姓の部分を入れてください"+chr$(13)
11330 color rgb(0,0,0)
11340 input"名前の姓:",bufname$
11350 buff1=len(bufname$)
11360 '2-2名前の名の部分を入力
11370 'グラフィック描画領域　ここから
11380 cls 3
11390 line (0,0)-(820,60),rgb(0,0,255),bf
11400 pen 5:line(0,0)-(817,57),rgb(127,255,212),b
11410 line (0,60)-(820,200),rgb(127,255,212),bf
11420 pen 5:line(0,57)-(817,197),rgb(0,0,255),b
11430 line (0,200)-(820,260),rgb(0,255,0),bf
11440 pen 5:line(0,197)-(817,257),rgb(0,0,255),b
11450 'グラフィック描画領域 ここまで
11460 COLOR rgb(255,255,255)
11470 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
11480 talk"つぎに、名前のめいの部分を入れてください"
11490 color rgb(255,0,255)
11500 print"名前の名の部分を入れてください"+chr$(13)
11510 color rgb(0,0,0)
11520 input"名前の名:",bufname2$
11530 buff2=len(bufname2$)
11540 bufff=buff1+buff2
11550 'goto 24470
11560 select case bufff
11570 '姓1文字,名1文字
11580 case 2:
11590 cls
11600 '天運:buf_tenunn
11610 buf_tenunn=char_count(bufname$)
11620 '地運:buf_chiunn
11630 buf_chiunn=char_count(bufname2$)
11640 '人運 = 天運 + 地運
11650 buf_jinunn=buf_tenunn + buf_chiunn
11660 '外運 = 天運 + 人運
11670 buf_gaiunn = buf_tenunn + buf_chiunn
11680 '総数=buf_gaiunn
11690 buf_total=buf_gaiunn
11700 goto Result_Anzai:
11710 '姓１，名:2
11720 case 3:
11730 cls:
11740 if buff1=1 and buff2=2 then
11750 '1.天運:buf_tenunn
11760 buf_tenunn=char_count(bufname$)
11770 '2文字目の文字
11780 bufer_name2$(0)=Mid$(bufname2$,1,1)
11790 '3文字目の文字
11800 bufer_name2$(1)=Mid$(bufname2$,2,1)
11810 '2.人運
11820 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11830 '3.地運:buf_chiunn
11840 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11850 '4外運:buf_gaiunn
11860 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
11870 '5.総数:buf_total
11880 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
11890 goto Result_Anzai:
11900 endif
11910 if buff1=2 and buff2=1 then
11920 bufer_name$(0)=Mid$(bufname$,1,1)
11930 bufer_name$(1)=Mid$(bufname$,2,1)
11940 bufer_name2$(0)=Mid$(bufname$,1,1)
11950 '1.天運
11960 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
11970 '2.人運
11980 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
11990 '3.地運
12000 buf_chiunn=char_count(bufer_name2$(0))
12010 '4.外運
12020 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12030 '5.総数
12040 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12050 goto Result_Anzai:
12060 endif
12070 case 4:
12080 if buff1=2 and buff2=2 then
12090 bufer_name$(0)=Mid$(bufname$,1,1)
12100 bufer_name$(1)=Mid$(bufname$,2,1)
12110 bufer_name2$(0)=Mid$(bufname2$,1,1)
12120 bufer_name2$(1)=Mid$(bufname2$,2,1)
12130 '1.天運
12140 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
12150 '2.人運
12160 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12170 '3.地運
12180 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12190 '4.外運
12200 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
12210 '5.総数
12220 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12230 goto Result_Anzai:
12240 endif
12250 'パターン2 姓3文字 名1文字 total4文字
12260 if buff1=3 and buff2=1 then
12270 bufer_name$(0)=Mid$(bufname$,1,1)
12280 bufer_name$(1)=Mid$(bufname$,2,1)
12290 bufer_name$(2)=Mid$(bufname$,3,1)
12300 bufer_name2$(0)=Mid$(bufname2$,1,1)
12310 '1.天運
12320 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
12330 '2.人運
12340 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12350 '3.地運
12360 buf_chiunn=char_count(bufer_name2$(0))
12370 '4.外運
12380 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
12390 '5.総運
12400 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12410 goto Result_Anzai:
12420 endif
12430 'パターン３ 姓1,名３  合計４文字
12440 if buff1=1 and buff2=3 then
12450 bufer_name$(0)=Mid$(bufname$,1,1)
12460 bufer_name2$(0)=Mid$(bufname2$,1,1)
12470 bufer_name2$(1)=Mid$(bufname2$,2,1)
12480 bufer_name2$(2)=Mid$(bufname2$,3,1)
12490 '1.天運
12500 buf_tenunn = char_count(bufer_name$(0))
12510 '2.人運
12520 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
12530 '3.地運
12540 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12550 '4.外運
12560 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12570 '5.総運
12580 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12590 goto Result_Anzai:
12600 endif
12610 case 5:
12620 '５文字の名前
12630 '1.  3文字姓 2字名
12640 if buff1=3 and buff2=2 then
12650 bufer_name$(0)=Mid$(bufname$,1,1)
12660 bufer_name$(1)=Mid$(bufname$,2,1)
12670 bufer_name$(2)=Mid$(bufname$,3,1)
12680 bufer_name2$(0)=Mid$(bufname2$,1,1)
12690 bufer_name2$(1)=Mid$(bufname2$,2,1)
12700 '1.天運
12710 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
12720 '2.人運
12730 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
12740 '3.地運
12750 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12760 '4.外運
12770 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
12780 '5.総運
12790 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
12800 goto Result_Anzai:
12810 endif
12820 if buff1=2 and buff2=3 then
12830 bufer_name$(0)=Mid$(bufname$,1,1)
12840 bufer_name$(1)=Mid$(bufname$,2,1)
12850 bufer_name2$(0)=Mid$(bufname2$,1,1)
12860 bufer_name2$(1)=Mid$(bufname2$,2,1)
12870 bufer_name2$(2)=Mid$(bufname2$,3,1)
12880 '1.天運
12890 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
12900 '2.人運
12910 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
12920 '3.地運
12930 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12940 '4.外運
12950 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12960 '5.総運
12970 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
12980 goto Result_Anzai:
12990 endif
13000 if buff1=4 and buff2=1 then
13010 bufer_name$(0)=Mid$(bufname$,1,1)
13020 bufer_name$(1)=mid$(bufname$,2,1)
13030 bufer_name$(2)=mid$(bufname$,3,1)
13040 bufer_name$(3)=mid$(bufname$,4,1)
13050 bufer_name2$(0)=mid$(bufname2$,1,1)
13060 '1.天運
13070 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13080 '2.人運
13090 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13100 '3.地運
13110 buf_chiunn=char_count(bufer_name2$(0))
13120 '4.外運
13130 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
13140 '5.総運
13150 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13160 goto Result_Anzai:
13170 endif
13180 case 6:
13190 '3字姓 3字名
13200 if buff1=3 and buff2=3 then
13210 bufer_name$(0)=Mid$(bufname$,1,1)
13220 bufer_name$(1)=Mid$(bufname$,2,1)
13230 bufer_name$(2)=Mid$(bufname$,3,1)
13240 bufer_name2$(0)=Mid$(bufname2$,1,1)
13250 bufer_name2$(1)=Mid$(bufname2$,2,1)
13260 bufer_name2$(2)=Mid$(bufname2$,3,1)
13270 '1.天運
13280 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
13290 '2.人運
13300 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
13310 '3.地運
13320 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13330 '4.外運
13340 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13350 '5.総運
13360 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13370 goto Result_Anzai:
13380 endif
13390 '4字姓 2字名
13400 if buff1=4 and buff2=2 then
13410 bufer_name$(0)=Mid$(bufname$,1,1)
13420 bufer_name$(1)=Mid$(bufname$,2,1)
13430 bufer_name$(2)=Mid$(bufname$,3,1)
13440 bufer_name$(3)=Mid$(bufname$,4,1)
13450 bufer_name2$(0)=Mid$(bufname2$,1,1)
13460 bufer_name2$(1)=Mid$(bufname2$,2,1)
13470 '1.天運
13480 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13490 '2.人運
13500 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13510 '3.地運
13520 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13530 '4.外運
13540 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
13550 '5.総運
13560 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
13570 goto Result_Anzai:
13580 endif
13590 '4字姓 3字名
13600 case 7:
13610 if buff1=4 and buff2=3 then
13620 bufer_name$(0)=Mid$(bufname$,1,1)
13630 bufer_name$(1)=Mid$(bufname$,2,1)
13640 bufer_name$(2)=Mid$(bufname$,3,1)
13650 bufer_name$(3)=Mid$(bufname$,4,1)
13660 bufer_name2$(0)=Mid$(bufname2$,1,1)
13670 bufer_name2$(1)=Mid$(bufname2$,2,1)
13680 bufer_name2$(2)=Mid$(bufname2$,3,1)
13690 '1.天運
13700 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
13710 '2.人運
13720 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
13730 ' 3.地運
13740 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
13750 '4.外運
13760 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13770 '5.総運
13780 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
13790 goto Result_Anzai:
13800 endif
13810 case else:
13820 end select
13830 '2.設定
13840 seimeihandan_setting:
13850 font 46:color rgb(0,0,0),,rgb(176,196,222)
13860 No=0:y=0:key$="":bg=0:talk""
13870 sp_on 0,1:sp_put 0,(10,100),0,0
13880 talk"設定画面です。番号を選んでエンターキーを押してください"
13890 'グラフィック領域　ここから
13900 cls 3:
13910 line (0,0)-(750,60),rgb(0,0,255),bf
13920 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
13930 line (0,60)-(750,560),rgb(127,255,212),bf
13940 pen 5:line (0,57)-(747,557),rgb(0,0,255),b
13950 line (0,560)-(750,750),rgb(0,255,0),bf
13960 pen 5:line(0,557)-(747,747),rgb(0,0,255),b
13970 'グラフィック領域 ここまで
13980 '1行目　文字色　 白
13990 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
14000 color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
14010 color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
14020 color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
14030 color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
14040 color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
14050 COLOR rgb(0,0,0):locate 0,12:
14060 print"1.登録文字の確認を選択"+chr$(13)
14070 seimeihandan_setting2:
14080 y=0:key$="":bg=0
14090 while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
14100 key$=inkey$
14110 y=stick(1)
14120 bg=strig(1)
14130 pause 2.50*100
14140 wend
14150 '****************************************************
14160 '1.下のカーソル　ここから
14170 '****************************************************
14180 if (key$=chr$(31) or y=1) then
14190 select case No
14200 case 0:
14210       No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14220 case 1:
14230       No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14240 case 2:
14250       No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14260 case 3:
14270       No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14280 case 4:
14290       No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14300 end select
14310 endif
14320 '*****************************************************
14330 '1.下のカーソル　ここまで
14340 '*****************************************************
14350 '*****************************************************
14360 '2.上のカーソル　ここから
14370 '*****************************************************
14380 if (key$=chr$(30) or y=-1) then
14390 select case No
14400 case 0:
14410        No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
14420 case 1:
14430        No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
14440 case 2:
14450        No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
14460 case 3:
14470        No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
14480 case 4:
14490        No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
14500 end select
14510 endif
14520 '******************************************************
14530 '2.上のカーソル　ここまで
14540 '******************************************************
14550 '******************************************************
14560 '3.決定ボタン　ここから
14570 '******************************************************
14580 if (key$=chr$(13) or bg=2) then
14590 select case No
14600 case 0:
14610        sp_on 0,0:goto Entry_moji_Top:
14620 case 1:
14630        sp_on 1,0:goto Entry_moji_check:
14640 case 2:
14650        sp_on 2,0:goto Moji_Kikkyo_Top:
14660 case 3:
14670        sp_on 3,0:goto Main_Screen1:
14680 case 4:
14690        sp_on 4,0:talk"プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
14700 end select
14710 endif
14720 '******************************************************
14730 '3.決定ボタン　ここまで
14740 '******************************************************
14750 'Input"番号:",selectNo
14760 'if selectNo=1 then goto Entry_moji_Top:
14770 'if selectNo=2 then goto Entry_moji_check:
14780 'if selectNo=3 then goto Moji_Kikkyo_Top:
14790 'if selectNo=4 then goto Main_Screen1:
14800 'if selectNo=5 then talk"終了します":cls 3:end
14810 'if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
14820 '3 番号で吉凶を見る 入力
14830 Moji_Kikkyo_Top:
14840 font 46:color rgb(0,0,0),,rgb(176,196,222)
14850 init "kb:2"
14860 'グラフィック描画領域　ここから
14870 cls 3:talk""
14880 line (0,0)-(650,60),rgb(0,0,255),bf
14890 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
14900 line (0,60)-(650,255),rgb(127,255,212),bf
14910 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
14920 line (0,255)-(650,350),rgb(0,255,0),bf
14930 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
14940 'グラフィック描画領域 ここまで
14950 color rgb(255,255,255)
14960 print"画数での吉凶判定"+chr$(13)
14970 color rgb(255,0,255)
14980 print"画数を入れてください"+chr$(13)
14990 print"(Max:81文字)"+chr$(13)
15000 color rgb(0,0,0)
15010 Input"文字の画数:",Number
15020 if Number > 81 then goto Moji_Kikkyo_Top:
15030 if Number <=81 then goto Moji_Kikkyo:
15040 '3.番号で吉凶を見る 結果表示
15050 'グラフィック描画領域　ここから
15060 Moji_Kikkyo:
15070 cls 3:init "kb:4":key$="":bg=0
15080 line (0,0)-(700,60),rgb(0,0,255),bf
15090 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
15100 line (0,60)-(700,260),rgb(127,255,212),bf
15110 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
15120 line (0,260)-(700,350),rgb(0,255,0),bf
15130 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
15140 'グラフィック描画領域　ここまで
15150 color rgb(255,255,255)
15160 print "画数で吉凶を求める"+chr$(13)
15170 color rgb(255,0,255)
15180 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
15190 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
15200 'endif
15210 'color rgb(0,0,0)
15220 'print"エンターキーを押してください"
15230 'key$=Input$(1)
15240 while (key$<>chr$(13) and bg <> 2)
15250 key$=inkey$
15260 bg=strig(1)
15270 pause 2.50*100
15280 wend
15290 If (key$=chr$(13) or bg=2) then goto seimeihandan_setting:
15300 '3.ヘルプ
15310 help:
15320 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
15330 No=0:y=0:key$="":bg=0
15340 talk""
15350 '描画領域 ここから
15360 line (0,0) - (650,60),rgb(0,0,255),bf
15370 sp_on 0,1:sp_put 0,(10,100),0,0
15380 pen 5:line(0,0) - (647,57),rgb(127,255,212),b
15390 line (0,60) - (650,570),rgb(127,255,212),bf
15400 pen 5:line(0,57) - (647,567),rgb(0,0,255),b
15410 line (0,570) - (650,650),rgb(0,255,0),bf
15420 pen 5:line(0,567) - (647,647),rgb(0,0,255),b
15430 '描画領域　ここまで
15440 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
15450 color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
15460 color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
15470 color rgb(255,0,255):print " :2.参考文献" + chr$(13)
15480 color rgb(255,0,255):print " :3.設定変更" + chr$(13)
15490 color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
15500 color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
15510 color rgb(0,0,0)
15520 locate 0,12:print "1.バージョン情報を選択"
15530 'color rgb(0,0,0):Input"番号:",selectNo
15540 help2:
15550 y=0:key$="":bg=0
15560 while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
15570 key$=inkey$
15580 y=stick(1)
15590 bg=strig(1)
15600 pause 2.50*100
15610 wend
15620 if (y=1 or key$=chr$(30)) then
15630 select case No
15640 case 0:
15650        No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
15660 case 1:
15670        No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
15680 case 2:
15690        No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
15700 case 3:
15710        No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
15720 case 4:
15730        No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
15740 end select
15750 endif
15760 if (y=-1 or key$=chr$(31)) then
15770 select case No
15780 case 0:
15790        No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
15800 case 1:
15810        No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
15820 case 2:
15830        No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
15840 case 3:
15850        No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
15860 case 4:
15870        No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
15880 end select
15890 endif
15900 if (key$=chr$(13) or bg=2) then
15910 select case No
15920 case 0:
15930        sp_on 0,0:goto Version_info:
15940 case 1:
15950        sp_on 1,0:goto Document_info:
15960 case 2:
15970        sp_on 2,0:goto Config_Setting:
15980 case 4:
15990        sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
16000 case 3:
16010         sp_on 3,0:goto Main_Screen1:
16020 end select
16030 endif
16040 'if selectNo = 1 then goto Version_info:
16050 'if selectNo = 2 then goto Document_info:
16060 'if selectNo = 3 then goto Config_Setting:
16070 'プログラムの終了
16080 'if selectNo = 4 then talk"プログラムを終了いたします":cls 3:end
16090 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
16100 '前の画面に戻る
16110 'if selectNo=5 then goto Main_Screen1:
16120 'if selectNo > 4 or selectNo = 0 then goto help:
16130 'Menu1　画面
16140 talk"調べたい名前のみよじをいれてください"
16150 'グラフィック描画領域　ここから
16160 Parson_name_kikkyo:
16170 cls 3
16180 line (0,0)-(1050,60),rgb(0,0,255),bf
16190 pen 5:line(0,0)-(1047,57),rgb(127,255,212),b
16200 line (0,60)-(1050,180),rgb(127,255,212),bf
16210 pen 5:line(0,57)-(1047,177),rgb(0,0,255),b
16220 line (0,180)-(1050,250),rgb(0,255,0),bf
16230 pen 5:line(0,177)-(1047,247),rgb(0,0,255),b
16240 'グラフィック描画領域　ここまで
16250 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
16260 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
16270 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
16280 cls
16290 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
16300 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
16310 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
16320 goto complate_Kyusei:
16330 'メニュー6　バージョン表示
16340 'グラフィック　描画　領域　 ここから
16350 Version_info:
16360 cls 3:bg=0:talk ""
16370 line (0,0)-(1000,60),rgb(0,0,255),bf
16380 pen 5:line (0,0)-(997,57),rgb(127,255,212),b
16390 line (0,60)-(1000,665),rgb(127,255,212),bf
16400 pen 5:line(0,57)-(997,662),rgb(0,0,255),b
16410 line (0,665)-(1000,750),rgb(0,255,0),bf
16420 pen 5:line(0,662)-(997,747),rgb(0,0,255),b
16430 'グラフィック　描画 領域　 ここまで
16440 color rgb(255,255,255):print"バージョン情報"+chr$(13)
16450 color rgb(255,0,255):print"姓名判断 3 in 1"+chr$(13)
16460 color rgb(255,0,255):PRINT"Ver:234.2024.10.20" + chr$(13)
16470 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
16480 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
16490 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
16500 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
16510 'ここを書き換える
16520 talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.34です"
16530 color rgb(0,0,0):print"エンターキーを押してください"
16540 Version_info2:
16550 bg=0
16560 while (bg<>2)
16570 bg=strig(1)
16580 pause 2.50*100
16590 wend
16600 if bg = 2  then beep:goto Main_Screen1:
16610 complate_Kyusei:
16620 '文字数を求める変数
16630 buf_char_size=len(name$)
16640 buf_char_size2=len(name2$)
16650 '入力した文字を代入する変数
16660 '入力した文字を配列に代入する処理
16670 '姓名判断データー文字比較
16680 '画数を求める関数
16690 func char_count(buf_count$)
16700 count=0:buffer=0
16710 '1画の文字 23文字
16720 for j=0 to ((Moji_1)-1)
16730 if buf_count$=buf_char_hiragana1$(j) then
16740 count =1:
16750 endif
16760 next j
16770 '2画の文字
16780 for j=0 to ((Moji_2)-1)
16790 if buf_count$=buf_char_hiragana2$(j)  then
16800 count = 2:
16810 endif
16820 next j
16830 for j=0 to ((Moji_3)-1)
16840 if buf_count$=buf_char_hiragana3$(j) then
16850 count =3:
16860 endif
16870 next j
16880 for j=0 to ((Moji_4)-1)
16890 if buf_count$=buf_char_hiragana4$(j) then
16900 count = 4:
16910 endif
16920 next j
16930 for j=0 to ((Moji_5)-1)
16940 if buf_count$=buf_char_hiragana5$(j) then
16950 count = 5:
16960 endif
16970 next j
16980 for j=0 to ((Moji_6)-1)
16990 if buf_count$=buf_char_hiragana6$(j) then
17000 count= 6
17010 endif
17020 next j
17030 for  j=0 to ((Moji_7)-1)
17040 if buf_count$=buf_char_hiragana7$(j) then
17050 count=  7
17060 endif
17070 next j
17080 for j=0 to ((Moji_8)-1)
17090 if buf_count$=buf_char_hiragana8$(j) then
17100 count= 8
17110 endif
17120 next j
17130 for j=0 to ((Moji_9)-1)
17140 if buf_count$=buf_char_hiragana9$(j) then
17150 count=9
17160 endif
17170 next j
17180 for j=0 to ((Moji_10)-1)
17190 if buf_count$=buf_char_hiragana10$(j) then
17200 count=10
17210 endif
17220 next j
17230 for j=0 to ((Moji_11)-1)
17240 if buf_count$=buf_char_hiragana11$(j) then
17250 count=11
17260 endif
17270 next j
17280 for j=0 to  ((Moji_12)-1)
17290 if buf_count$=buf_char_hiragana12$(j) then
17300 count=12
17310 endif
17320 next j
17330 for j=0 to ((Moji_13)-1)
17340 if buf_count$=buf_char_hiragana13$(j) then
17350 count=13
17360 endif
17370 next j
17380 for j=0 to ((Moji_14)-1)
17390 if buf_count$=buf_char_hiragana14$(j) then
17400 count=14
17410 endif
17420 next j
17430 for j=0 to ((Moji_15)-1)
17440 if buf_count$=buf_char_hiragana15$(j) then
17450 count=15
17460 endif
17470 next j
17480 for j=0 to ((Moji_16)-1)
17490 if buf_count$=buf_char_hiragana16$(j) then
17500 count=16
17510 endif
17520 next j
17530 for j=0 to ((Moji_17)-1)
17540 if buf_count$=buf_char_hiragana17$(j) then
17550 count=17
17560 endif
17570 next j
17580 for j=0 to ((Moji_18)-1)
17590 if buf_count$=buf_char_hiragana18$(j) then
17600 count=18
17610 endif
17620 next j
17630 for j=0 to ((Moji_19)-1)
17640 if buf_count$=buf_char_hiragana19$(j) then
17650 count=19
17660 endif
17670 next j
17680 for j=0 to ((Moji_20)-1)
17690 if buf_count$=buf_char_hiragana20$(j) then
17700 count=20
17710 endif
17720 next i
17730 for j=0 to ((Moji_21)-1)
17740 if buf_count$=buf_char_hiragana21$(j) then
17750 count=21
17760 endif
17770 next j
17780 for j=0 to ((Moji_22)-1)
17790 if buf_count$=buf_char_hiragana22$(j) then
17800 count=22
17810 endif
17820 next j
17830 for j=0 to ((Moji_23)-1)
17840 if buf_count$=buf_char_hiragana23$(j) then
17850 count=23
17860 endif
17870 next j
17880 for j=0 to ((Moji_24)-1)
17890 if buf_count$=buf_char_hiragana24$(j) then
17900 count=24
17910 endif
17920 buffer = count
17930 next j
17940 endfunc buffer
17950 func show_sex_type$(sex$)
17960 buf_number=val(Mid$(sex$,4,1))
17970 if buf_number = 1 then
17980 buf_show_sex_type$="性別:女性"
17990 else
18000 if buf_number=2 then
18010 buf_show_sex_type$="性別:男性"
18020 endif
18030 endif
18040 endfunc buf_show_sex_type$
18050 '合計を求める関数
18060 func totalcounts(buffers$)
18070 buffers=0:
18080 for i=0 to len(buffers$)-1
18090 buffers=buffers+char_count(buffers$)
18100 next i
18110 endfunc buffers
18120 buf_count2=0:buf_count3=0
18130 'dim buf_Input_data$(len(name$))
18140 '1.苗字の文字数
18150 for n=0 to (buf_char_size-1)
18160 buf_Input_data$(n)=mid$(name$,n+1,1)
18170 next n
18180 for i=0 to (buf_char_size-1)
18190 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
18200 next i
18210 '2.名の文字数
18220 for n2=0 to (buf_char_size2-1)
18230 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
18240 next n2
18250 for i2=0 to (buf_char_size2-1)
18260 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
18270 next i2
18280 '総数を出す
18290 select case (buf_char_size + buf_char_size2)
18300 case 6:
18310 if ((buf_char_size=4) and (buf_char_size2=2)) then
18320 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18330 endif
18340 if ((buf_char_size=3) and (buf_char_size2=3)) then
18350 if buf_Input_data$(1)="々" then
18360 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18370 else
18380 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18390 endif
18400 endif
18410 case 5:
18420 if ((buf_char_size=4) and (buf_char_size2=1)) then
18430 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
18440 endif
18450 if ((buf_char_size=2) and (buf_char_size2=3)) then
18460 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18470 endif
18480 if ((buf_char_size=3) and (buf_char_size2=2)) then
18490 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18500 endif
18510 case 4:
18520 if ((buf_char_size=1) and (buf_char_size2=3)) then
18530 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
18540 endif
18550 if ((buf_char_size=2) and (buf_char_size2=2)) then
18560 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18570 endif
18580 if ((buf_char_size=3) and (buf_char_size2=1)) then
18590 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
18600 endif
18610 case 3:
18620 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
18630 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
18640 endif
18650 if ((buf_char_size=2) and (buf_char_size2=1)) then
18660 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
18670 endif
18680 case 2:
18690 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
18700 case else:
18710 end select
18720 '文字の総数をだす
18730 total_name$ = name$ + name2$
18740 '1.姓星を求める
18750 select case buf_char_size
18760 '苗字1文字のとき
18770 case 1:
18780 buf_seisei = char_count(buf_Input_data$(0)) + 1
18790 '苗字2文字の時
18800 case 2:
18810 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
18820 '苗字3文字のとき
18830 case 3:
18840 if (buf_Input_data$(1)="々")  then
18850 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
18860 else
18870 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
18880 endif
18890 '苗字4文字のとき
18900 case 4:
18910 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
18920 case else:
18930 end select
18940 '2.主星をだす
18950 '2.主星
18960 select case (buf_char_size + buf_char_size2)
18970 '姓名5文字のとき
18980 case 6:
18990 if ((buf_char_size=4) and (buf_char_size2=2)) then
19000 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19010 endif
19020 if ((buf_char_size=3) and (buf_char_size2=3)) then
19030 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19040 endif
19050 case 5:
19060 if ((buf_char_size=4) and (buf_char_size2=1)) then
19070 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
19080 endif
19090 if ((buf_char_size=2) and (buf_char_size2=3)) then
19100 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19110 endif
19120 if ((buf_char_size=3) and (buf_char_size2=2)) then
19130 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19140 endif
19150 '姓名4文字のとき
19160 case 4:
19170 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
19180 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19190 endif
19200 if ((buf_char_size=1) and (buf_char_size2=3)) then
19210 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
19220 endif
19230 if ((buf_char_size=3) and (buf_char_size2=1)) then
19240 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
19250 endif
19260 '姓名3文字のとき
19270 case 3:
19280 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
19290 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19300 else
19310 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
19320 endif
19330 case 2:
19340 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
19350 case else:
19360 end select
19370 '3.名星を求める
19380 select case (buf_char_size + buf_char_size2)
19390 case 6:
19400 if ((buf_char_size=3) and (buf_char_size2=3)) then
19410 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19420 endif
19430 if ((buf_char_size=4) and (buf_char_size2=2)) then
19440 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19450 endif
19460 case 5:
19470 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
19480 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19490 endif
19500 if ((buf_char_size=3) and (buf_char_size2=2)) then
19510 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19520 endif
19530 if ((buf_char_size=2) and (buf_char_size2=3))  then
19540 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19550 endif
19560 case 4:
19570 if ((buf_char_size=2) and (buf_char_size2=2)) then
19580 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
19590 endif
19600 if ((buf_char_size=1) and (buf_char_size2=3)) then
19610 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
19620 endif
19630 if ((buf_char_size=3) and (buf_char_size2=1)) then
19640 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19650 endif
19660 case 3:
19670 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
19680 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
19690 endif
19700 if ((buf_char_size=2) and (buf_char_size2=1)) then
19710 buf_meisei=char_count(buf_Input_data2$(0))+1
19720 endif
19730 case 2:
19740 buf_meisei = char_count(buf_Input_data2$(0)) + 1
19750 case else:
19760 end select
19770 '4.外星を求める
19780 select case (buf_char_size + buf_char_size2)
19790 case 6:
19800 if buf_Input_data$(1)="々"  then
19810 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19820 else
19830 if ((buf_char_size=4) and (buf_char_size2=2)) then
19840 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19850 else
19860 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19870 endif
19880 endif
19890 case 5:
19900 if ((buf_char_size=4) and (buf_char_size2=1)) then
19910 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
19920 endif
19930 if ((buf_char_size=3) and (buf_char_size2=2)) then
19940 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
19950 endif
19960 if ((buf_char_size=2) and (buf_char_size2=3)) then
19970 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
19980 endif
19990 case 4:
20000 if ((buf_char_size=2) and (buf_char_size2=2)) then
20010 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
20020 endif
20030 if ((buf_char_size=1) and (buf_char_size2=3)) then
20040 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
20050 endif
20060 if ((buf_char_size=3) and (buf_char_size2=1)) then
20070 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
20080 endif
20090 case 3:
20100 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
20110 buf_gaisei=1+char_count(buf_Input_data2$(1))
20120 endif
20130 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
20140 buf_gaisei = char_count(buf_Input_data$(0)) + 1
20150 endif
20160 case 2:
20170 buf_gaisei = 2
20180 case else:
20190 end select
20200 '診断結果表示
20210 '1.姓星を出す
20220 'グラフィック描画領域　ここから
20230 Result_Kyusei_Kikkyo:
20240 cls 3:
20250 '縦の画面
20260 '1行目
20270 line (0,0)-(1500,60),rgb(0,0,255),bf
20280 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
20290 '2行目
20300 line (0,60)-(1500,665),rgb(127,255,212),bf
20310 pen 5:line(0,57)-(1497,662),rgb(0,0,255),b
20320 '3行目
20330 line (0,665)-(1500,720),rgb(0,255,0),bf
20340 pen 5:line(0,662)-(1497,717),rgb(0,0,255),b
20350 '横の画面　吉凶のランク表
20360 'グラフィック描画領域　ここまで
20370 talk"診断結果です"
20380 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
20390 color Rgb(255,0,255)
20400 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
20410 '2.主星を出す
20420 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
20430 '3.名星を求める
20440 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
20450 '4.外星を求める
20460 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
20470 '5.総数を出す
20480 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
20490 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
20500 color rgb(0,0,0)
20510 print"エンターキーを押してください"
20520 key$=Input$(1)
20530 if key$ = chr$(13) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
20540 '2.主星を出す
20550 'メニュー3 登録文字の確認 ここから
20560 'グラフィック領域　ここから
20570 'タイトル青 文字:白
20580 Entry_moji_Top:
20590 talk ""
20600 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
20610 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
20620 line (0,62)-(1050,155),rgb(0,255,255),bf
20630 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
20640 line (0,155)-(1050,260),rgb(0,255,0),bf
20650 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
20660 'グラフィック領域　ここまで
20670 talk"調べたい文字をひと文字入れてください。":init "kb:2"
20680 '文字:白
20690 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
20700 '文字:アクア
20710 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
20720 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
20730 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
20740 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
20750 '1画の文字
20760 for i=0 to ((Moji_1)-1)
20770 if (name$=buf_char_hiragana1$(i)) then
20780 buffer_count=1:goto Moji_count_check:
20790 endif
20800 next i
20810 '2画の文字
20820 for i=0 to ((Moji_2)-1)
20830 if (name$=buf_char_hiragana2$(i)) then
20840 buffer_count=2:goto Moji_count_check:
20850 endif
20860 next i
20870 '3画の文字
20880 for i=0 to ((Moji_3)-1)
20890 if (name$=buf_char_hiragana3$(i)) then
20900 buffer_count=3:goto Moji_count_check:
20910 endif
20920 next i
20930 '4画の文字
20940 for i=0 to ((Moji_4)-1)
20950 if (name$=buf_char_hiragana4$(i)) then
20960 buffer_count=4:goto Moji_count_check:
20970 endif
20980 next i
20990 '5画の文字
21000 for i=0 to ((Moji_5)-1)
21010 if (name$=buf_char_hiragana5$(i)) then
21020 buffer_count=5:goto Moji_count_check:
21030 endif
21040 next i
21050 '6画の文字
21060 for i=0 to ((Moji_6)-1)
21070 if (name$=buf_char_hiragana6$(i)) then
21080 buffer_count=6:goto Moji_count_check:
21090 endif
21100 next i
21110 '7画の文字
21120 for i=0 to ((Moji_7)-1)
21130 if (name$=buf_char_hiragana7$(i)) then
21140 buffer_count=7:goto Moji_count_check:
21150 endif
21160 next i
21170 '8画の文字 120 文字
21180 for i=0 to ((Moji_8)-1)
21190 if (name$=buf_char_hiragana8$(i)) then
21200 buffer_count=8:goto Moji_count_check:
21210 endif
21220 next i
21230 '9画の文字  103文字
21240 for i=0 to ((Moji_9)-1)
21250 if (name$=buf_char_hiragana9$(i)) then
21260 buffer_count=9:goto Moji_count_check:
21270 endif
21280 next i
21290 '10画の文字 98文字
21300 for i=0 to ((Moji_10)-1)
21310 if (name$=buf_char_hiragana10$(i)) then
21320 buffer_count=10:goto Moji_count_check:
21330 endif
21340 next i
21350 '11画の文字 98文字
21360 for i=0 to ((Moji_11)-1)
21370 if (name$=buf_char_hiragana11$(i)) then
21380 buffer_count=11:goto Moji_count_check:
21390 endif
21400 next i
21410 '12画の文字
21420 for i=0 to ((Moji_12)-1)
21430 if (name$=buf_char_hiragana12$(i)) then
21440 buffer_count=12:goto Moji_count_check:
21450 endif
21460 next i
21470 '13画の文字
21480 for i=0 to ((Moji_13)-1)
21490 if (name$=buf_char_hiragana13$(i)) then
21500 buffer_count=13:goto Moji_count_check:
21510 endif
21520 next i
21530 '14画の文字
21540 for i=0 to ((Moji_14)-1)
21550 if (name$=buf_char_hiragana14$(i)) then
21560 buffer_count=14:goto Moji_count_check:
21570 endif
21580 next i
21590 '15画の文字
21600 for i=0 to ((Moji_15)-1)
21610 if (name$=buf_char_hiragana15$(i)) then
21620 buffer_count=15:goto Moji_count_check:
21630 endif
21640 next i
21650 '16画の文字
21660 for i=0 to ((Moji_16)-1)
21670 if (name$=buf_char_hiragana16$(i)) then
21680 buffer_count=16:goto Moji_count_check:
21690 endif
21700 next i
21710 '17画の文字
21720 for i=0 to ((Moji_17)-1)
21730 if (name$=buf_char_hiragana17$(i)) then
21740 buffer_count=17:goto Moji_count_check:
21750 endif
21760 next i
21770 '18画の文字 25
21780 for i=0 to ((Moji_18)-1)
21790 if (name$=buf_char_hiragana18$(i)) then
21800 buffer_count=18:goto Moji_count_check:
21810 endif
21820 next i
21830 '19画の文字 17
21840 for i=0 to ((Moji_19)-1)
21850 if (name$=buf_char_hiragana19$(i)) then
21860 buffer_count=19:goto Moji_count_check:
21870 endif
21880 next i
21890 '20画の文字 13
21900 for i=0 to ((Moji_20)-1)
21910 if (name$=buf_char_hiragana20$(i)) then
21920 buffer_count=20:goto Moji_count_check:
21930 endif
21940 next i
21950 '21画の文字 6
21960 for i=0 to ((Moji_21)-1)
21970 if (name$=buf_char_hiragana21$(i)) then
21980 buffer_count=21:goto Moji_count_check:
21990 endif
22000 next i
22010 '22画の文字 4
22020 for i=0 to ((Moji_22)-1)
22030 if (name$=buf_char_hiragana22$(i)) then
22040 buffer_count=22:goto Moji_count_check:
22050 endif
22060 next i
22070 '23画の文字 3
22080 for i=0 to ((Moji_23)-1)
22090 if (name$=buf_char_hiragana23$(i)) then
22100 buffer_count=23:goto Moji_count_check:
22110 endif
22120 next i
22130 '24画の文字
22140 for i=0 to ((Moji_24)-1)
22150 if (name$=buf_char_hiragana24$(i)) then
22160 buffer_count=24:goto Moji_count_check:
22170 endif
22180 next i
22190 'Menu3 結果表示 画数の登録確認
22200 Moji_count_check:
22210 bg=0:init"kb:4"
22220 if (buffer_count = 0) then
22230 '登録文字がない場合の処理
22240 'グラフィック領域　ここから
22250 'Moji_count_check:
22260 cls 3
22270 '1行
22280 line (0,0)-(840,60),rgb(0,0,255),bf
22290 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
22300 '2行目
22310 line (0,60)-(840,165),rgb(127,255,212),bf
22320 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
22330 '3行目
22340 line (0,165)-(840,370),rgb(0,0,255),bf
22350 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
22360 '4行目
22370 line (0,370)-(840,450),rgb(0,255,0),bf
22380 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
22390 'グラフィック領域　ここまで
22400 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
22410 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
22420 talk "この文字は、登録されていません"
22430 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
22440 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
22450 color rgb(0,0,0):print"コマンド:"
22460 while (bg <> 2 and key$ <> chr$(13))
22470 key$=inkey$
22480 bg=strig(1)
22490 pause 2.50*100
22500 wend
22510 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22520 'key$=Input$(1)
22530 'if key$="q" or key$="Q" then goto Main_Screen1:
22540 'if key$=chr$(13) then goto Entry_moji_Top:
22550 'goto 20220
22560 else
22570 'グラフィック描画領域　ここから
22580 'Entry_moji_check:
22590 cls 3
22600 '1行目
22610 line (0,0)-(840,58),rgb(0,0,255),bf
22620 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
22630 '2行目
22640 line (0,58)-(840,100),rgb(127,255,212),bf
22650 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
22660 '3行目
22670 line (0,100)-(840,280),rgb(0,0,255),bf
22680 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
22690 '4行目
22700 line (0,280)-(840,340),rgb(0,255,0),bf
22710 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
22720 'グラフィック描画領域　ここまで
22730 color rgb(255,255,255):print "登録文字画数結果表示"
22740 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
22750 endif
22760 while (key$<>chr$(13) and bg <> 2)
22770 key$=inkey$
22780 bg=strig(1)
22790 pause 2.50*100
22800 wend
22810 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
22820 'color rgb(255,255,255)
22830 'print"q+エンターキー:トップ画面"+chr$(13)
22840 'print"エンターキー:もう一度やる"+chr$(13)
22850 'color rgb(0,0,0)
22860 'print"コマンド:"
22870 'key$=Input$(1)
22880 'if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
22890 'if key$="q" then buffer_count=0:goto Main_Screen1:
22900 'if not(key$="q") then goto Moji_count_check:
22910 'Menu2 名前の陰陽を見る
22920 'グラフィック描画領域 ここから
22930 name_inyo_check:
22940 cls 3:line (0,0)-(800,60),rgb(0,0,255),bf
22950 PEN 5:line(0,0)-(797,57),rgb(127,255,212),b
22960 LINE (0,60)-(800,250),rgb(127,255,212),bf
22970 pen 5:line (0,57)-(797,247),rgb(0,0,255),b
22980 line (0,250)-(800,350),rgb(0,255,0),bf
22990 pen 5:line(0,247)-(797,347),rgb(0,0,255),b
23000 'グラフィック描画領域　ここまで
23010 cls
23020 color rgb(255,255,255)
23030 print"Menu2 名前の陰陽を見る"+chr$(13)
23040 COLOR rgb(255,0,255)
23050 PRINT"(●:陽,○:陰)"+chr$(13)
23060 print"調べたい名前苗字を入れてください"+chr$(13)
23070 color rgb(0,0,0)
23080 Input"調べたい名前の苗字:",name$
23090 if name$="" then goto name_inyo_check:
23100 'Menu2 陰陽の吉凶を見る 名入力
23110 cls:color rgb(255,255,255)
23120 print"Menu2 名前の陰陽を見る"+chr$(13)
23130 color rgb(255,0,255)
23140 print"(●:陽,○:陰)"+chr$(13)
23150 print"調べたい名前の名を入れてください"+chr$(13)
23160 color rgb(0,0,0)
23170 Input"調べたい名前の名:",name2$
23180 if name2$="" then goto name_inyo_check:
23190 for i=0 to len(name$)-1
23200 name_array$(i)=Mid$(name$,i+1,1)
23210 if char_count(name_array$(i)) mod 2 = 1  then
23220 name_array$(i)="○":buffer$=buffer$+name_array$(i)
23230 else
23240 name_array$(i)="●":buffer$=buffer$+name_array$(i)
23250 endif
23260 next i
23270 for i=0 to len(name2$)-1
23280 name_array2$(i)=Mid$(name2$,i+1,1)
23290 if char_count(name_array2$(i)) mod 2 = 1 then
23300 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
23310 else
23320 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
23330 endif
23340 next i
23350 bufname$=buffer$+buffer2$
23360 '陰陽のタイプ ここから
23370 select case (len(bufname$))
23380 '2文字
23390 case 2:
23400 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
23410 '
23420 '  endif
23430 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
23440 '  endif
23450 '3文字
23460 case 3:
23470 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
23480 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
23490 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
23500 '4文字
23510 case 4:
23520 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
23530 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
23540 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
23550 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
23560 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
23570 '5文字
23580 case 5:
23590 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
23600 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
23610 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
23620 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
23630 case 6:
23640 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
23650 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
23660 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
23670 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
23680 case else:
23690 buffer_name$="例外に入りました"
23700 end select
23710 '陰陽のタイプ　ここまで
23720 'グラフィック描画領域　ここから
23730 cls 2
23740 line (0,0)-(850,60),rgb(0,0,250),bf
23750 pen 5:line(0,0)-(847,57),rgb(127,255,212),b
23760 line (0,60)-(850,285),rgb(127,255,212),bf
23770 pen 5:line(0,57)-(847,282),rgb(0,0,255),b
23780 line (0,280)-(850,380),rgb(0,255,0),bf
23790 pen 5:line(0,277)-(847,377),rgb(0,0,255),b
23800 'グラフィック描画領域 ここまで
23810 color rgb(255,255,255)
23820 cls:print"名前:";name$ + name2$ + chr$(13)
23830 color rgb(255,0,255)
23840 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
23850 print buffer_name$;chr$(13)
23860 color rgb(0,0,0)
23870 print"エンターキーを押してください"
23880 key$=Input$(1)
23890 if key$ = chr$(13) then buffer$="":buffer2$="": goto Main_Screen1:
23900 'Menu3
23910 '登録文字数の確認
23920 Entry_moji_check:
23930 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
23940 'グラフィック描画領域　ここから
23950 cls 3:init"kb:4":bg=0:key$=""
23960 '1行目
23970 line (0,0)-(800,60),rgb(0,0,255),bf
23980 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
23990 '2行目
24000 line (0,60)-(800,150),rgb(157,255,212),bf
24010 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
24020 '3行目
24030 line (0,150)-(800,250),rgb(0,255,0),bf
24040 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
24050 'グラフィック描画領域 ここまで
24060 color rgb(255,255,255)
24070 PRINT"登録文字数の確認"+chr$(13)
24080 color rgb(255,0,255)
24090 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
24100 TALK"登録文字数は"+str$(totalmoji)+"もじです"
24110 while (key$ <> chr$(13) and bg <> 2)
24120 key$=inkey$
24130 bg=strig(1)
24140 pause 2.50*100
24150 wend
24160 'color rgb(0,0,0)
24170 'print"エンターキーを押してください"+chr$(13)
24180 'key$=Input$(1)
24190 'print"エンターキーを押してください"
24200 'key$=Input$(1)
24210 if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
24220 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
24230 nick_name_check:
24240 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
24250 'グラフィック描画領域　ここから
24260 cls 3:init "kb:2"
24270 line (0,0)-(1100,60),rgb(0,0,250),bf
24280 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24290 line (0,60)-(1100,160),rgb(127,255,212),bf
24300 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
24310 line (0,160)-(1100,270),rgb(0,255,0),bf
24320 pen 5:line(0,157)-(1097,267),rgb(0,0,255),b
24330 'グラフィック描画領域　ここまで
24340 buf=0:cls
24350 locate 0,0
24360 color rgb(255,255,255)
24370 Print"名前(ニックネーム)の総数で吉凶を判断します"
24380 locate 0,2
24390 color rgb(255,0,255)
24400 PRINT"名前(ニックネーム)を入れてください"
24410 locate 0,4
24420 color rgb(0,0,0)
24430 Input"名前:",name$
24440 if name$="" then goto nick_name_check:
24450 for n=0 to (len(name$)-1)
24460 buf_Input_data$(n)=mid$(name$,n+1,1)
24470 buf=buf+char_count(buf_Input_data$(n))
24480 next n
24490 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
24500 '結果表示　グラフィック　ここから
24510 cls 3:init "kb:4":bg=0:key$=""
24520 line (0,0)-(1100,60),rgb(0,0,255),bf
24530 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
24540 line (0,60)-(1100,160),rgb(127,255,212),bf
24550 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
24560 line (0,160)-(1100,540),rgb(0,255,0),bf
24570 pen 5:line(0,157)-(1097,537),rgb(0,0,255),b
24580 '結果表示 グラフィック領域 ここまで
24590 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
24600 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
24610 'color rgb(0,0,0)
24620 'print "番号を選んでください"+chr$(13)
24630 'PRINT "エンターキー:もう一度やる"+chr$(13)
24640 'print "q:トップに戻る"+chr$(13)
24650 while (key$ <> chr$(13) and bg <> 2)
24660 key$=inkey$
24670 bg=strig(1)
24680 pause 2.50*100
24690 wend
24700 if (key$=chr$(13) or bg=2) then goto Main_Screen1:
24710 't "コマンド:"
24720 'ey$=Input$(1)
24730 'if key$="q" then goto Main_Screen1:
24740 'if key$=chr$(13) then goto nick_name_check:
24750 'if No > 2 then goto 24070
24760 '名前2文字
24770 'グラフィック描画領域　ここから
24780 Result_Anzai:
24790 CLS 3
24800 line (0,0)-(1400,60),rgb(0,0,255),bf
24810 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
24820 line (0,60)-(1400,540),rgb(127,255,212),bf
24830 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
24840 line (0,540)-(1400,860),rgb(0,255,0),bf
24850 pen 5:line(0,537)-(1397,857),rgb(0,0,255),b
24860 'グラフィック描画領域 ここまで
24870 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
24880 color rgb(255,0,255)
24890 print"天運";buf_tenunn;chr$(13)
24900 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
24910 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
24920 print"外運";buf_gaiunn;chr$(13)
24930 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
24940 COLOR rgb(0,0,0)
24950 PRINT"q+エンターキー:トップ画面"+chr$(13)
24960 print"エンターキー:もう一度、吉凶をみる"+chr$(13)
24970 print "コマンド:"
24980 key$=Input$(1)
24990 if key$=chr$(13) then goto Anzai_Top_Screen:
25000 if key$="q" or key$="Q" then goto Main_Screen1:
25010 '参考文献 表示 ここから
25020 'グラフィック描画領域　 ここから
25030 Document_info:
25040 cls 3:init"kb:4":bg=0
25050 line (0,0)-(1100,60),rgb(0,0,255),bf
25060 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
25070 line (0,60)-(1100,650),rgb(127,255,212),bf
25080 pen 5:line(0,57)-(1097,647),rgb(0,0,255),b
25090 line (0,650)-(1100,730),rgb(0,255,0),bf
25100 pen 5:line(0,647)-(1097,727),rgb(0,0,255),b
25110 'グラフィック描画領域  ここまで
25120 '参考文献１
25130 cls
25140 color rgb(255,255,255)
25150 print"◎参考文献"+chr$(13)
25160 color rgb(255,0,255)
25170 print "参考文献 １/4"+chr$(13)
25180 print "Title:九星姓名判断"+chr$(13)
25190 print "Author:高嶋　 美伶"+chr$(13)
25200 print "出版社:日本文芸者"+chr$(13)
25210 print "ISBN:4-537-20073-1"+chr$(13)
25220 print "定価:1,200+税"+chr$(13)
25230 color rgb(0,0,0)
25240 print "エンターキーを押してください"
25250 while (bg <> 2 and key$<>chr$(13))
25260 key$=inkey$
25270 bg=strig(1)
25280 pause 2.50*100
25290 wend
25300 if (key$=chr$(13) or bg=2) then
25310 goto Document_info2:
25320 endif
25330 'key$=Input$(1)
25340 'if key$=chr$(13)  then goto Document_info2:
25350 '参考文献２
25360 Document_info2:
25370 cls:bg=0:key$=""
25380 color rgb(255,255,255)
25390 print "◎参考文献"+chr$(13)
25400 color rgb(255,0,255)
25410 print "参考文献 ２/4"+chr$(13)
25420 print "Title:究極の姓名判断"+chr$(13)
25430 print "Author:安斎　勝洋"+chr$(13)
25440 print "出版社:説話社"+chr$(13)
25450 print "ISBN:978-4-916217-61-5"+chr$(13)
25460 print "定価:1,800円+税"+chr$(13)
25470 color rgb(0,0,0)
25480 print"エンターキーを押してください"
25490 while (key$<>chr$(13) and bg <> 2)
25500 key$=inkey$
25510 bg=strig(1)
25520 pause 2.50*100
25530 wend
25540 if (key$=chr$(13) or bg=2) then goto Document_info3:
25550 'key$=Input$(1)
25560 'if key$=chr$(13) then goto Document_info3:
25570 '参考文献３
25580 Document_info3:
25590 cls:bg=0:key$=""
25600 color rgb(255,255,255)
25610 print"◎参考文献"+chr$(13)
25620 color rgb(255,0,255)
25630 print "参考文献 3/4"+chr$(13)
25640 print "Title:新明解現在漢和辞典"+chr$(13)
25650 print "Author:影山輝國(編集主幹)他"+chr$(13)
25660 print "出版社:三省堂"+chr$(13)
25670 print "ISBN:978-4-385-13755-1"+chr$(13)
25680 print "定価:2,800円 + 税"+chr$(13)
25690 color rgb(0,0,0)
25700 print "エンターキーを押してください"
25710 while (key$<>chr$(13) and bg<>2)
25720 key$=inkey$
25730 bg=strig(1)
25740 pause 2.50*100
25750 wend
25760 if (key$=chr$(13) or bg=2) then goto Document_info4:
25770 'key$=Input$(1)
25780 'if key$=chr$(13) then goto Document_info4:
25790 '参考文献４　
25800 '描画領域　ここから
25810 Document_info4:
25820 cls 3:key$="":bg=0
25830 line (0,0)-(1100,60),rgb(0,0,255),bf
25840 line (0,0)-(1100,57),rgb(0,255,0),b
25850 line (0,60)-(1100,650),rgb(127,255,212),bf
25860 LINE (0,60)-(1100,647),rgb(0,0,255),b
25870 LINE (0,650)-(1100,830),rgb(0,255,0),bf
25880 line (0,650)-(1100,833),rgb(0,0,255),b
25890 '描画領域　ここまで
25900 'cls
25910 color rgb(255,255,255)
25920 print "◎参考文献"+chr$(13)
25930 COLOR rgb(255,0,255)
25940 print "参考文献 4/4" + chr$(13)
25950 print "Title:姓名の暗号" + chr$(13)
25960 print "Author:樹門　幸宰(じゅもん こうざい)"+chr$(13)
25970 print "出版社:幻冬舎"+chr$(13)
25980 print "定価:1400円 + 税"+chr$(13)
25990 print "ISBN:4-344-00777-8"+chr$(13)
26000 color rgb(0,0,0)
26010 print "参考文献トップに行く:エンターキー"+chr$(13)
26020 print "スペース：トップメニューに行く"+chr$(13)
26030 while (key$<>chr$(13) and bg<>2)
26040 key$=inkey$
26050 bg=strig(1)
26060 pause 2.50*100
26070 wend
26080 if (key$=chr$(13) or bg=2) then goto help:
26090 'key$=Input$(1)
26100 'トップ画面に戻る
26110 'if key$ = " " then goto help:
26120 'if key$ = chr$(13) then goto Document_info:
26130 '安斎流姓名判断　メニュー
26140 'グラフィック領域　ここから
26150 Anzai_Top:
26160 cls 3
26170 No=0:init"kb:4":y=0:bg=0:key$=""
26180 sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
26190 sp_on 0,1:sp_put 0,(10,100),0,0
26200 line (0,0)-(1000,60),rgb(0,0,255),bf
26210 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
26220 line (0,60)-(1000,475),rgb(127,255,212),bf
26230 pen 5:line(0,57)-(997,472),rgb(0,0,255),b
26240 line (0,475)-(1000,650),rgb(0,255,0),bf
26250 pen 5:line(0,472)-(997,647),rgb(0,0,255),b
26260 'グラフィック描画領域　ここまで
26270 color rgb(255,255,255)
26280 print "安斎流姓名判断　トップメニュー" + chr$(13)
26290 color rgb(255,0,255)
26300 print " :1.安斎流姓名判断 相性占い" + chr$(13)
26310 print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
26320 print " :3.安斎流姓名判断 改名チェック" + chr$(13)
26330 print " :4.前の画面に戻る"+chr$(13)
26340 locate 0,10
26350 color rgb(0,0,0)
26360 print"1．安斎流姓名判断　相性占いを選択"+chr$(13)
26370 Anzai_Top2:
26380 y=0:bg=0:key$=""
26390 while (y<>1 and y<>-1 and key$<>chr$(31) and key$<>chr$(30) and key$<>chr$(13) and bg<>2)
26400 key$=inkey$
26410 y=stick(1)
26420 bg=strig(1)
26430 pause 2.50*100
26440 wend
26450 '******************************************************
26460 '1.下のキー　ここから
26470 '******************************************************
26480 if (y=1 or key$=chr$(30)) then
26490 select case No
26500 case 0:
26510       No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
26520 case 1:
26530       No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
26540 case 2:
26550       No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
26560 case 3:
26570       No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
26580 end select
26590 endif
26600 '******************************************************
26610 '1.下のキー　ここまで
26620 '******************************************************
26630 '******************************************************
26640 '2.上のキー　ここから
26650 '******************************************************
26660 if (y=-1 or key$=chr$(31)) then
26670 select case No
26680 case 0:
26690        No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
26700 case 1:
26710        No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
26720 case 2:
26730        No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
26740 case 3:
26750        No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
26760 end select
26770 endif
26780 '******************************************************
26790 '2.上のキー　ここまで
26800 '******************************************************
26810 '******************************************************
26820 '3.決定ボタン　ここから
26830 '******************************************************
26840 if (key$=chr$(13) or bg=2) then
26850 select case No
26860 case 0:
26870      sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
26880 case 1:
26890      sp_on 1,0:goto Anzai_Top_Screen:
26900 case 2:
26910      sp_on 2,0:goto Anzai_Kaimei_Check:
26920 case 3:
26930      sp_on 3,0:goto seimeihandan_top:
26940 end select
26950 endif
26960 '******************************************************
26970 '3.決定ボタン　ここまで
26980 '******************************************************
26990 'if key=2 then goto Anzai_Top_Screen:
27000 'if key=3 then goto Anzai_Kaimei_Check:
27010 'if key=1 then goto Anzai_Aishou_Top1:
27020 'if key=4 then goto seimeihandan_top:
27030 'if key > 4 or key = 0 then goto Anzai_Top:
27040 '2.安斎流姓名判断　男女の相性占い　ここから
27050 'グラフィック描画領域 ここから
27060 'Anzai_Aishou_Top1:
27070 cls 3
27080 '1行目
27090 line (0,0)-(800,60),rgb(0,0,255),bf
27100 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27110 '2行目
27120 line (0,60)-(800,160),rgb(127,255,212),bf
27130 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27140 '3行目
27150 line (0,160)-(800,300),rgb(0,255,0),bf
27160 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27170 'グラフィック描画領域　男女の相性占い ここまで
27180 'if s1=1 then goto 26310
27190 'if s1=2 then goto 27090
27200 '1.名前の姓を入力  男性
27210 Anzai_Aishou_Top1:
27220 cls 3
27230 '1行目
27240 line (0,0)-(800,60),rgb(0,0,255),bf
27250 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
27260 '2行目
27270 line (0,60)-(800,160),rgb(127,255,212),bf
27280 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
27290 '3行目
27300 line (0,160)-(800,300),rgb(0,255,0),bf
27310 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
27320 color rgb(255,255,255)
27330 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
27340 color rgb(255,0,255)
27350 print "男性の名前(姓)を入れてください"+chr$(13)
27360 color rgb(0,0,0)
27370 Input "男性の名前(姓):",name$
27380 '2.名前の名を入力  男性
27390 cls 3
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
27510 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
27520 color rgb(255,0,255)
27530 print "男性の名前（名）をいれてください"+chr$(13)
27540 color rgb(0,0,0)
27550 Input "男性の名前(名):",name2$
27560 'if s2=2 then goto 27290
27570 '3.名前(姓)入力 女性
27580 Anzai_Aishou_Top2:
27590 cls:init "kb:2"
27600 color rgb(255,255,255)
27610 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
27620 color rgb(255,0,255)
27630 print "女性の名前(姓)を入れてください"+chr$(13)
27640 color rgb(0,0,0)
27650 Input"女性の名前:",name3$
27660 '4.名前（名)入力 女性
27670 cls:init "kb:2"
27680 color rgb(255,255,255)
27690 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
27700 color rgb(255,0,255)
27710 print "女性の名前（名）を入れてください"+chr$(13)
27720 color rgb(0,0,0)
27730 Input "女性の名前(名):",name4$
27740 '男性　の地運 を求める
27750 '姓名の合計数
27760 '1.男性 名前の文字数を求める
27770 '地運を求める
27780 buf_male_name1 = len(name$)
27790 buf_male_name2 = len(name2$)
27800 buf_male_count = buf_male_name1 + buf_male_name2
27810 '2.女性 名前の文字数を求める
27820 buf_female_name1 = len(name3$)
27830 buf_female_name2 = len(name4$)
27840 buf_female_count = buf_female_name1 + buf_female_name2
27850 'goto Anzai_Aishou_Check:
27860 '1.男性の地運を求める
27870 select case buf_male_count
27880 case 2:
27890 '男性の地運を求める
27900 buf_chiunn=char_count(name2$)
27910 case 3:
27920 '姓が一文字 名が2文字
27930 if buf_male_name1=1 and buf_male_name2=2 then
27940 buf_Input_name$(0)=mid$(name2$,1,1)
27950 buf_Input_name$(1)=mid$(name2$,2,1)
27960 '地運を計算
27970 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
27980 endif
27990 if buf_male_name1=2 and buf_male_name2=1 then
28000 buf_Input_name$(0)=Mid$(name2$,1,1)
28010 buf_chiunn=char_count(buf_Input_name$(0))
28020 endif
28030 case 4:
28040 '1.姓１，名３
28050 if bufmale_name1=1 and buf_male_name2=3 then
28060 buf_Input_name$(0)=Mid$(name2$,1,1)
28070 buf_Input_name$(1)=Mid$(name2$,2,1)
28080 buf_Input_name$(2)=Mid$(name2$,3,1)
28090 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28100 endif
28110 '2.姓２,名２
28120 if buf_male_name1=2 and buf_male_name2=2 then
28130 buf_Input_name$(0)=Mid$(name2$,1,1)
28140 buf_Input_name$(1)=Mid$(name2$,2,1)
28150 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28160 endif
28170 '3.姓３、名１
28180 if buf_male_name1=3 and buf_male_name2=1 then
28190 buf_Input_name$(0)=Mid$(name2$,1,1)
28200 '地運を求める
28210 buf_chiunn=char_count(buf_Input_name$(0))
28220 endif
28230 case 5:
28240 '1.姓２，名３
28250 if buf_male_name1 = 2 and buf_male_name2 = 3 then
28260 buf_Input_name$(0)=Mid$(name2$,1,1)
28270 buf_Input_name$(1)=Mid$(name2$,2,1)
28280 buf_Input_name$(2)=Mid$(name2$,3,1)
28290 '地運を求める
28300 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28310 endif
28320 '2.姓３，名２
28330 if buf_male_name1=3 and buf_male_name2=2 then
28340 buf_Input_name$(0)=Mid$(name2$,1,1)
28350 buf_Input_name$(1)=Mid$(name2$,2,1)
28360 '地運を求める
28370 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
28380 endif
28390 '3.姓４、名１
28400 buf_Input_name$(0)=Mid$(name2$,1,1)
28410 '地運を求める
28420 buf_chiunn = char_count(buf_Input_name$(0))
28430 case 6:
28440 '1.姓３，名３
28450 if buf_male_name1=3 and buf_male_name2=3 then
28460 buf_Input_name$(0)=Mid$(name2$,1,1)
28470 buf_Input_name$(1)=Mid$(name2$,2,1)
28480 buf_Input_name$(2)=Mid$(name2$,3,1)
28490 '地運を求める
28500 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
28510 endif
28520 '２.姓４，名２
28530 if buf_male_name1=4 and buf_male_name2=2 then
28540 buf_Input_name$(0)=Mid$(name2$,1,1)
28550 buf_Input_name$(1)=Mid$(name2$,2,1)
28560 '地運を求める
28570 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
28580 endif
28590 case else:
28600 end select
28610 'if s1=1 then goto 32940
28620 'if s2=2 then goto 30610
28630 '2.女性　外運を求める
28640 select case buf_female_count
28650 '姓と名の合計数
28660 case 2:
28670 buf_Input_name2$(0)=Mid$(name3$,1,1)
28680 buf_Input_name2$(1)=Mid$(name4$,1,1)
28690 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
28700 case 3:
28710 if buf_female_name1=2 and buf_female_name2=1 then
28720 buf_Input_name2$(0)=Mid$(name3$,1,1)
28730 buf_Input_name2$(1)=Mid$(name3$,2,1)
28740 buf_Input_name2$(2)=Mid$(name4$,1,1)
28750 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
28760 endif
28770 if buf_female_name1=1 and buf_female_name2=2 then
28780 buf_Input_name2$(0)=Mid$(name3$,1,1)
28790 buf_Input_name2$(1)=Mid$(name4$,1,1)
28800 buf_Input_name2$(2)=Mid$(name4$,2,1)
28810 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
28820 endif
28830 case 4:
28840 '姓１、名３
28850 if buf_female_name1=1 and buf_female_name2=3 then
28860 buf_Input_name2$(0)=Mid$(name3$,1,1)
28870 buf_Input_name2$(1)=Mid$(name4$,1,1)
28880 buf_Input_name2$(2)=Mid$(name4$,2,1)
28890 buf_Input_name2$(3)=Mid$(name4$,3,1)
28900 '外運を求める
28910 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
28920 endif
28930 '姓２,名２
28940 if buf_female_name1=2 and buf_female_name2=2 then
28950 buf_Input_name2$(0)=Mid$(name3$,1,1)
28960 buf_Input_name2$(1)=Mid$(name3$,2,1)
28970 buf_Input_name2$(2)=Mid$(name4$,1,1)
28980 buf_Input_name2$(3)=Mid$(name4$,2,1)
28990 '外運を求める
29000 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
29010 endif
29020 '姓３，名１
29030 if buf_female_name1=3 and buf_female_name2=1 then
29040 buf_Input_name2$(0)=Mid$(name3$,1,1)
29050 buf_Input_name2$(1)=Mid$(name3$,2,1)
29060 buf_Input_name2$(2)=Mid$(name3$,3,1)
29070 buf_Input_name2$(3)=Mid$(name4$,1,1)
29080 '外運を求める
29090 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
29100 endif
29110 case 5:
29120 '姓 3,名2
29130 if buf_female_name1 = 3 and buf_female_name2 = 2 then
29140 buf_Input_name2$(0)=Mid$(name3$,1,1)
29150 buf_Input_name2$(1)=Mid$(name3$,2,1)
29160 buf_Input_name2$(2)=Mid$(name3$,3,1)
29170 buf_Input_name2$(3)=Mid$(name4$,1,1)
29180 buf_Input_name2$(4)=Mid$(name4$,2,1)
29190 '外運を求める
29200 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
29210 endif
29220 '姓４、名１
29230 if buf_female_name1=4 and buf_female_name2=1 then
29240 buf_Input_name2$(0)=Mid$(name3$,1,1)
29250 buf_Input_name2$(1)=Mid$(name3$,2,1)
29260 buf_Input_name2$(2)=Mid$(name3$,3,1)
29270 buf_Input_name2$(3)=Mid$(name3$,4,1)
29280 buf_Input_name2$(4)=Mid$(name4$,1,1)
29290 '外運を求める
29300 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
29310 endif
29320 '姓２、名３
29330 if buf_female_name1 = 2 and buf_female_name2 = 3 then
29340 buf_Input_name2$(0)=Mid$(name3$,1,1)
29350 buf_Input_name2$(1)=Mid$(name3$,2,1)
29360 buf_Input_name2$(2)=Mid$(name4$,1,1)
29370 buf_Input_name2$(3)=Mid$(name4$,2,1)
29380 buf_Input_name2$(4)=Mid$(name4$,3,1)
29390 '外運を求める
29400 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
29410 endif
29420 case 6:
29430 '1.姓３，名３
29440 if buf_female_name1=3 and buf_female_name2=3 then
29450 buf_Input_name2$(0)=Mid$(name3$,1,1)
29460 buf_Input_name2$(1)=Mid$(name3$,2,1)
29470 buf_Input_name2$(2)=Mid$(name3$,3,1)
29480 buf_Input_name2$(3)=Mid$(name4$,1,1)
29490 buf_Input_name2$(4)=Mid$(name4$,2,1)
29500 buf_Input_name2$(5)=Mid$(name4$,3,1)
29510 '外運を求める
29520 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
29530 endif
29540 '2.姓４，名２
29550 if buf_female_name1=4 and buf_female_name2=2 then
29560 buf_Input_name2$(0)=Mid$(name3$,1,1)
29570 buf_Input_name2$(1)=Mid$(name3$,2,1)
29580 buf_Input_name2$(2)=Mid$(name3$,3,1)
29590 buf_Input_name2$(3)=Mid$(name3$,4,1)
29600 buf_Input_name2$(4)=Mid$(name4$,1,1)
29610 buf_Input_name2$(5)=Mid$(name4$,2,1)
29620 '外運を求める
29630 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
29640 endif
29650 case 7:
29660 '1姓４，名３
29670 '外運を求める
29680 end select
29690 'if s=1 then goto Anzai_Aishou_Check:
29700 'if s2=2 then goto Anzai_Aishou_Check:
29710 'goto 33180
29720 func buf_number(a)
29730 if a < 10 then
29740 buf_tansu = a
29750 endif
29760 if a > 9 and a < 20 then
29770 buf_tansu = a - 10
29780 endif
29790 if a > 19 and a < 30 then
29800 buf_tansu = a - 20
29810 endif
29820 buffer = buf_tansu
29830 endfunc buffer
29840 check$="No Data"
29850 func Aisyou_type$(man,woman)
29860 Result$="No data"
29870 'check$="No data"
29880 '1.理解し合える最良のカップル
29890 '1のFor文
29900 for i=0 to 19
29910 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
29920 Result$ = "1.理解し合える最良のカップル"
29930 check$="○"
29940 ResultNo = 0
29950 endif
29960 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
29970 Result$="2.互いに自然体でつきあえるカップル"
29980 ResultNo=1
29990 check$="○"
30000 endif
30010 '3.男性にとって居心地の良いカップル
30020 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
30030 Result$="3.男性にとって居心地の良いカップル"
30040 ResultNo=2
30050 check$="△"
30060 endif
30070 '4.女性にとって居心地の良いカップル
30080 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
30090 Result$ = "4.女性にとって居心地の良いカップル"
30100 ResultNo=3
30110 check$="△"
30120 endif
30130 '5.恋愛経験を重ねた後なら愛を育める
30140 'for i=0 to 9
30150 'for j=0 to 9
30160 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
30170 Result$="5.恋愛経験を重ねた後なら愛を育める"
30180 ResultNo=4
30190 check$="×"
30200 endif
30210 'next j
30220 'next i
30230 '6
30240 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
30250 Result$="6.結婚への発展が困難なカップル"
30260 check$="×"
30270 endif
30280 '7
30290 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
30300 Result$="7.愛し方にずれが出てくる二人"
30310 check$="×"
30320 endif
30330 '8
30340 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
30350 Result$="8.互いに価値観が噛み合わない相性"
30360 check$="×"
30370 endif
30380 next i
30390 'bufAisyou$ = Result$
30400 endfunc  Result$
30410 Anzai_Aishou_Check:
30420 cls 3:init"kb:2":bg=0
30430 buf_t_chiunn = buf_number(buf_chiunn)
30440 buf_t_gaiunn=buf_number(buf_gaiunn)
30450 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
30460 'グラフィック描画領域　ここから
30470 'Title欄
30480 line(0,0)-(1300,60),rgb(0,0,255),bf
30490 pen 5:line(0,0)-(1297,57),rgb(127,255,212),b
30500 '結果表示欄
30510 line(0,60)-(1300,660),rgb(127,255,212),bf
30520 pen 5:line(0,57)-(1297,662),rgb(0,0,255),b
30530 'ボタン選択欄
30540 LINE(0,660)-(1300,860),rgb(0,255,0),bf
30550 pen 5:line(0,662)-(1297,862),rgb(0,0,255),b
30560 'グラフィック描画領域　ここまで
30570 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
30580 color rgb(255,255,255):font 40:init"kb:4"
30590 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
30600 color rgb(255,0,255)
30610 print "男性の名前:";name$+name2$;chr$(13)
30620 print "地運の単数";buf_t_chiunn;chr$(13)
30630 print "女性の名前:";name3$+name4$;chr$(13)
30640 print "外運の単数";buf_t_gaiunn;chr$(13)
30650 print"二人の相性:";bufferAisyou$;chr$(13)
30660 print"相性判定:";check$;chr$(13)
30670 color rgb(0,0,0)
30680 print "エンターキー:トップ" + chr$(13)
30690 while (bg <> 2)
30700 bg=strig(1)
30710 pause 2.50*100
30720 wend
30730 if (bg=2) then goto Main_Screen1:
30740 'print "S or sキー:保存" + chr$(13)
30750 'key$=Input$(1)
30760 'if key$=chr$(13) then
30770 'goto Main_Screen1:
30780 'else
30790 'Data保存追加 2021.10.01
30800 'goto Save_Aisyou:
30810 'endif
30820 '改名チェック
30830 'グラフィック描画領域 ここから
30840 Anzai_Kaimei_Check:
30850 cls 3:init "kb:2"
30860 line (0,0)-(1250,60),rgb(0,0,255),bf
30870 pen 5:line(0,0)-(1247,57),rgb(125,255,212),b
30880 line (0,60)-(1250,370+50),rgb(127,255,212),bf
30890 pen 5:line (0,57)-(1247,367+50),rgb(0,0,255),b
30900 line (0,370+50)-(1250,450+50),rgb(0,255,0),bf
30910 pen 5:line(0,367+50)-(1247,447+50),rgb(0,0,255),b
30920 'グラフィック描画領域 ここまで
30930 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
30940 color rgb(255,255,255)
30950 print "安斎流姓名判断 改名チェッカー"+chr$(13)
30960 color rgb(255,0,255)
30970 print "総数で、改名が、必要か否かを調べます"+chr$(13)
30980 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
30990 print "10文字までで入れてください"
31000 locate 0,9
31010 color rgb(0,0,0)
31020 Input "名前:",name$
31030 '計算領域　ここから
31040 '名前から総運を計算
31050 '1.名前の文字数を出す
31060 n=len(name$)
31070 if n > 10 or n=0 then
31080 '文字数が10個までという表示
31090 'トーストで表示
31100 if n > 10 then
31110 ui_msg "文字は10個までです"
31120 else
31130 ui_msg "文字が空っぽです"
31140 endif
31150 goto Anzai_Aishou_Check:
31160 endif
31170 'それ以外
31180 '総数を出す処理を出す
31190 '画面消去　データー初期化
31200 cls 3:bufer_total=0
31210 'グラフィック描画領域 ここから
31220 line(0,0)-(950,60),rgb(0,0,255),bf
31230 pen 5:line(0,0)-(947,57),rgb(127,255,212),b
31240 line(0,60)-(950,300),rgb(127,255,212),bf
31250 pen 5:line(0,57)-(947,297),rgb(0,0,255),b
31260 line(0,300)-(950,440),rgb(0,255,0),bf
31270 pen 5:line(0,297)-(947,437),rgb(0,0,255),b
31280 'グラフィック描画領域 ここまで
31290 'cls 3
31300 color rgb(255,255,255)
31310 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
31320 for i=0 to len(name$)-1
31330 buf_Input_name$(i)=Mid$(name$,i+1,1)
31340 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
31350 next i
31360 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
31370 color rgb(255,0,255)
31380 print "名前:";name$
31390 print "この名前の総数:";bufer_total
31400 print "この名前の吉凶:";buf_Kikkyo$;"です"
31410 color rgb(255,0,255)
31420 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
31430 print bufer_total$+chr$(13)
31440 'if buffer_K=0 or buffer_K=1  then
31450 'dim select$(2)
31460 'select$(0)="改名をする"
31470 'select$(1)="改名しない"
31480 'talk"改名しますか？"
31490 'color rgb(0,0,0)
31500 'Input"改名しますか？",key$
31510 'num=ui_select("select$","改名リストに追加しますか?")
31520 'num=0:改名リストに追加する
31530 'if num=0  then goto 35330
31540 'else
31550 'num=1:改名リストに追加しない
31560 'if num=1 then goto 31140
31570 'num=2:トップ画面に行く
31580 'if num=2 then goto 7550
31590 'endif
31600 'if buffer_K=0 then
31610 'print num,select$(num)
31620 color rgb(0,0,0)
31630 locate 0,7
31640 print"エンターキーを押してください",key$
31650 key$=Input$(1)
31660 if key$=chr$(13) then goto Main_Screen1:
31670 'endif
31680 '改名チェック関数
31690 func Kaimei_check$(r$)
31700 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
31710 '改名の必要なし
31720 talk"この名前は改名の必要がございません。"
31730 print"この名前は、改名の必要はありません"+chr$(13)
31740 '改名の必要ナシの場合
31750 K=0
31760 buffer_K=K
31770 else
31780 '改名の必要あり
31790 Kaimei_check:
31800 talk"この名前は、改名の必要があります"
31810 print"この名前は、改名の必要があります"+chr$(13)
31820 color rgb(0,0,0)
31830 print"改名しますか？"
31840 K=1
31850 buffer_K=K
31860 '◎表示パターン
31870 'パターン１
31880 'color rgb(0,0,0)
31890 'Input"エンターキーを押してください",key$
31900 endif
31910 endfunc result$
31920 'ui_msg="1件追加しました,残り9件追加できます"
31930 'ファイルの存在確認 設定ファイル:mydata.dat
31940 cls
31950 '設定ファイルの確認
31960 if dir$("config/Parsonal_data/mydata.dat")="" then
31970 'print "File not found"+chr$(13)
31980 '1.ファイルがない時
31990 goto Kaimei_check:
32000 else
32010 'ファイルがある時
32020 goto sex_type_female:
32030 'goto 26000
32040 endif
32050 '1-1.ファイルがない時の処理
32060 '1-1.自分の姓名判断を入力
32070 'グラフィック描画領域 ここから
32080 cls 3
32090 '1行目
32100 line(0,0)-(1000,60),rgb(0,0,250),bf
32110 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
32120 '2行目
32130 line(0,60)-(1000,80),rgb(127,255,212),bf
32140 pen 5:line(0,57)-(997,77),rgb(0,0,255),b
32150 '3行目
32160 line(0,80)-(1000,120),rgb(0,255,0),bf
32170 pen 5:line(0,77)-(997,117),rgb(0,0,255),b
32180 'グラフィック描画領域 ここまで
32190 '1.名前の姓の入力
32200 '1行目 Title
32210 color rgb(255,255,255)
32220 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
32230 '2行目 名前の姓を入力
32240 color rgb(255,0,255)
32250 print "自分の名前の姓を入れてください"+chr$(13)
32260 color rgb(0,0,0)
32270 'buf_name1$:自分の名前の姓
32280 Input"名前の姓:",buf_name1$
32290 '2.名前の名の入力
32300 '画面消去
32310 Anzai_myProfile2:
32320 cls
32330 '1行目 Title
32340 color rgb(255,255,255)
32350 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32360 '2行目 名前の名の入力
32370 color rgb(255,0,255)
32380 print "自分の名前の名を入れてください"+chr$(13)
32390 color rgb(0,0,0)
32400 'buf_name2$:自分の名前の名
32410 input "名前の名:",buf_name2$
32420 '3.性別入力
32430 cls
32440 '1行目 Title
32450 color rgb(255,255,255)
32460 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
32470 '2行目 性別入力
32480 color rgb(255,0,255)
32490 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
32500 sex_type$(0)="女性"
32510 sex_type$(1)="男性"
32520 type=ui_select("sex_type$","性別を選んでください")
32530 '3行目
32540 '性別変数 sex_type$
32550 if type = 1 then
32560 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 32040
32570 else
32580 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
32590 endif
32600 if sex_type$="男性" then
32610 name$=buf_name1$
32620 name2$=buf_name2$
32630 s=1
32640 goto Anzai_Aishou_Top1:
32650 endif
32660 sex_type_female:
32670 If sex_type$="女性" then
32680 name3$=buf_name1$
32690 name4$=buf_name2$
32700 s=2
32710 goto Anzai_Aishou_Top2:
32720 endif
32730 '登録プロフィール確認画面
32740 Entry_Profile:
32750 cls 3
32760 'グラフィック描画領域　ここから
32770 '1行目
32780 line(0,0)-(1200,60),rgb(0,0,255),bf
32790 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
32800 '2行目
32810 line(0,60)-(1200,360),rgb(127,255,212),bf
32820 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
32830 '3行目
32840 line(0,100)-(1200,420),rgb(0,255,0),bf
32850 pen 5:line(0,97)-(1197,417)
32860 if s2=2 then goto Entry_Profile:
32870 'グラフィック描画領域　ここまで
32880 '1行目 Title
32890 color rgb(255,255,255)
32900 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
32910 color rgb(255,0,255)
32920 print"名前:";buf_name1$+buf_name2$;chr$(13)
32930 PRINT"性別:";sex_type$;chr$(13)
32940 if sex_type$="女性" then
32950 print"外運:";buf_gaiunn;chr$(13)
32960 buffer$="外運:"+str$(buf_gaiunn)
32970 endif
32980 if sex_type$="男性" then
32990 print"地運:";buf_chiunn;chr$(13)
33000 buffer$="地運:"+str$(buf_chiunn)
33010 endif
33020 color rgb(0,0,0)
33030 input"(登録する:Yes/登録しない:No):",key$
33040 if key$="Yes" or key$="yes" then
33050 open "config/Parsonal_data/mydata.dat" for output as #1
33060 print #1,"名前:";buf_name1$+buf_name2$
33070 print #1,"性別:";sex_type$
33080 print #1,buffer$
33090 close #1
33100 ui_msg"データーを保存しました"
33110 goto Main_Screen1:
33120 endif
33130 '２．設定ファイルが存在する場合
33140 'ファイル読み込み 自分のデーターを表示
33150 cls
33160 open "Config/Parsonal_data/mydata.dat" for input as #2
33170 line input #2,a$
33180 line input #2,b$
33190 line input #2,c$
33200 close #2
33210 buffername$=a$
33220 buffername2$=b$
33230 buffername3$=c$
33240 bufff$=Mid$(buffername$,1,3)
33250 buff2$=Mid$(buffername2$,1,3)
33260 buff3$=Mid$(buffername3$,1,3)
33270 n=len(a$)
33280 sextype$=Mid$(buffername2$,4,2)
33290 if sextype$="男性" then
33300 '男性:s2
33310 s2=1
33320 '女性のデーター入力
33330 goto Anzai_Top:
33340 endif
33350 if sextype$="女性" then
33360 s2=2
33370 '男性のデーター入力
33380 goto Anzai_Top:
33390 endif
33400 '女性のデーター結果表示
33410 '1.プロフィール性別男性の場合 ここから
33420 Result_Anzai_Aisyou:
33430 cls
33440 color rgb(255,255,255)
33450 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
33460 name_length = len(bufername$)
33470 myname$ = Mid$(buffername$,4,4)
33480 chiunn = val(Mid$(buffername3$,4,2))
33490 tansuu1 = buf_number(chiunn)
33500 bufname$ = name3$ + name4$
33510 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
33520 color rgb(255,0,255)
33530 print "自分の名前(男性):";myname$;chr$(13)
33540 print "地運の端数:";tansuu1;chr$(13)
33550 print "相手の名前(女性):";bufname$;chr$(13)
33560 print "外運の端数:";buf_t_gaiunn;chr$(13)
33570 print "二人の相性:";bufferAisyou$;chr$(13)
33580 talk "二人の相性は" + bufferAisyou$
33590 color rgb(0,0,0)
33600 print"エンターキーを押してください"
33610 key$=Input$(1)
33620 'トップ画面に行く
33630 if key$ = chr$(13) then goto Main_Screen1:
33640 '1.プロフィール性別男性の場合　ここまで
33650 '2.プロフィール性別女性の場合　ここから
33660 cls 3
33670 '描画領域　ここから
33680 line (0,0)-(1200,60),rgb(0,0,255),bf
33690 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
33700 line (0,60)-(1200,460),rgb(127,255,212),bf
33710 pen 5:line(0,57)-(1197,457),rgb(0,0,255),b
33720 LINE (0,460)-(1200,520),rgb(0,255,0),bf
33730 pen 5:line(0,457)-(1197,517),rgb(0,0,255),b
33740 '描画領域 ここまで
33750 color rgb(255,255,255)
33760 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
33770 '計算領域　ここから
33780 myname$ = Mid$(buffername$,4,4)
33790 gaiunn = val(Mid$(buffername3$,4,2))
33800 buf_t_gaiunn = buf_number(buf_gaiunn)
33810 buf_t_chiunn = buf_number(buf_chiunn)
33820 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
33830 bufname$ = name$ + name2$
33840 '計算領域 ここまで
33850 color rgb(255,0,255)
33860 print "自分の名前(女性):";myname$;chr$(13)
33870 print "外運の端数";buf_t_gaiunn;chr$(13)
33880 print "相手の名前(男性):";bufname$;chr$(13)
33890 print "地運の端数:";buf_t_chiunn;chr$(13)
33900 print "二人の相性:";bufferAisyou$;chr$(13)
33910 color rgb(0,0,0)
33920 print "エンターキーを押してください"
33930 key$ = Input$(1)
33940 if key$=chr$(13) then goto Main_Screen1:
33950 '2.プロフィール性別女性の場合　ここまで
33960 'endfunc result$
33970 '取扱説明書
33980 '相性占い　トップメニュー ここから
33990 'グラフィック ここから
34000 Anzai_Aishou_Top_Menu:
34010 cls 3:
34020 '1行目
34030 line(0,0)-(1500,60),rgb(0,0,255),bf
34040 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
34050 '2行目
34060 line(0,60)-(1500,380),rgb(127,255,212),bf
34070 pen 5:line(0,57)-(1497,377),rgb(0,0,255),b
34080 '3行目
34090 line(0,360)-(1500,540),rgb(0,255,0),bf
34100 pen 5:line(0,357)-(1497,537),rgb(0,0,255),b
34110 'グラフィック　ここまで
34120 color rgb(255,255,255)
34130 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
34140 color rgb(255,0,255)
34150 print"1.男女の相性"+chr$(13)
34160 print"2.前の画面に戻る"+chr$(13)
34170 print"3.トップ画面に戻る"+chr$(13)
34180 color rgb(0,0,0)
34190 print"番号を選んでください:"+chr$(13)
34200 Input"番号:",key
34210 if key = 1 then goto Anzai_Aishou_Top1:
34220 if key = 2 then goto Anzai_Top:
34230 if key = 3 then goto Main_Screen1:
34240 if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
34250 'グラフィック領域　ここから
34260 Life_Tenki:
34270 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
34280 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34290 line(0,60)-(1150,180),rgb(127,255,212),bf
34300 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
34310 line(0,120)-(1150,200),rgb(0,255,0),bf
34320 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
34330 'グラフィック領域　ここまで
34340 '誕生日入力　生まれた年
34350 color rgb(255,255,255)
34360 print"誕生日入力　生まれた年" + chr$(13)
34370 COLOR rgb(255,0,255)
34380 print"生まれた年を入れてください" + chr$(13)
34390 color rgb(0,0,0)
34400 Input"生まれた年:",year
34410 '誕生日入力 生まれた月
34420 cls
34430 color rgb(255,255,255)
34440 print"誕生日入力 生まれた月" + chr$(13)
34450 color rgb(255,0,255)
34460 print"生まれた月を入力してください" + chr$(13)
34470 color rgb(0,0,0)
34480 Input"生まれた月:",month
34490 '誕生日入力 生まれた日を入力
34500 cls
34510 color rgb(255,255,255)
34520 print"誕生日入力 生まれた日入力" + chr$(13)
34530 color rgb(255,0,255)
34540 print"生まれた日を入力してください" + chr$(13)
34550 color rgb(0,0,0)
34560 Input"生まれた日:",day
34570 '人生の転機を見る
34580 'グラフィック領域　ここから
34590 cls 3
34600 line(0,0)-(1150,60),rgb(0,0,255),bf
34610 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
34620 line(0,60)-(1150,470),rgb(127,255,212),bf
34630 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
34640 line(0,470)-(1150,520),rgb(0,255,0),bf
34650 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
34660 'グラフィック描画領域  ここまで
34670 cls
34680 buffername$=bufname$ + bufname2$
34690 color rgb(255,255,255)
34700 print buffername$;"さんの人生の転機を見る1"+chr$(13)
34710 color rgb(255,0,255)
34720 buf_total2=buf_total-(fix(buf_total/10)*10)
34730 tenki1_year=year+buf_total2
34740 tenki2_year=year+buf_total2+5
34750 tenki3_year=year+buf_total2+5+5
34760 tenki4_year=year+buf_total2+5+5+5
34770 tenki1=buf_total2
34780 tenki2=buf_total2+5
34790 tenki3=buf_total2+5+5
34800 tenki4=buf_total2+5+5+5
34810 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
34820 print tenki1_year;"年";tenki1;"歳"+chr$(13)
34830 print tenki2_year;"年";tenki2;"歳"+chr$(13)
34840 print tenki3_year;"年";tenki3;"歳"+chr$(13)
34850 print tenki4_year;"年";tenki4;"歳"+chr$(13)
34860 color rgb(0,0,0)
34870 print"エンターキーを押してください"
34880 key$=Input$(1)
34890 if key$=chr$(13) then goto Life_Tenki:
34900 '2ページ目
34910 cls
34920 color rgb(255,255,255)
34930 print buffername$;"さんの人生の転機2"+chr$(13)
34940 color rgb(255,0,255)
34950 tenki5_year = tenki4_year + 5
34960 tenki6_year = tenki4_year + 5 + 5
34970 tenki7_year = tenki4_year + 5 + 5 + 5
34980 tenki8_year = tenki4_year + 5 + 5 + 5+5
34990 tenki5 = tenki4 + 5
35000 tenki6 = tenki4 + 5 + 5
35010 tenki7 = tenki4 + 5 + 5 + 5
35020 tenki8 = tenki4 + 5 + 5 + 5 + 5
35030 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35040 print tenki5_year;"年";tenki5;"歳"+chr$(13)
35050 print tenki6_year;"年";tenki6;"歳"+chr$(13)
35060 print tenki7_year;"年";tenki7;"歳"+chr$(13)
35070 print tenki8_year;"年";tenki8;"歳"+chr$(13)
35080 color rgb(0,0,0)
35090 print"エンターキーを押してください",key$
35100 key$=Input$(1)
35110 if key$ = chr$(13) then goto 34450
35120 '3ページ目
35130 cls
35140 color rgb(255,255,255)
35150 print buffername$;"さんの人生の転機3"+chr$(13)
35160 '計算部分
35170 tenki_year9=tenki8_year + 5
35180 tenki_year10=tenki8_year + 5 + 5
35190 tenki_year11=tenki8_year+5+5+5
35200 tenki_year12=tenki8_year+5+5+5+5
35210 tenki9=tenki8+5
35220 tenki10=tenki8+5+5
35230 tenki11=tenki8+5+5+5
35240 tenki12=tenki8+5+5+5+5
35250 color rgb(255,0,255)
35260 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
35270 print tenki_year9;"年";tenki9;"歳"+chr$(13)
35280 print tenki_year10;"年";tenki10;"歳"+chr$(13)
35290 print tenki_year11;"年";tenki11;"歳"+chr$(13)
35300 print tenki_year12;"年";tenki12;"歳"+chr$(13)
35310 color rgb(0,0,0)
35320 print"エンターキーを押してください"
35330 key$=Input$(1)
35340 if key$=chr$(13) then goto 34680
35350 'グラフィック描画領域 ここから
35360 cls 3
35370 line(0,0)-(1150,60),rgb(0,0,255),bf
35380 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
35390 line(0,60)-(1150,470),rgb(127,255,212),bf
35400 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
35410 line(0,470)-(1150,850),rgb(0,255,0),bf
35420 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
35430 'グラフィック描画領域 ここまで
35440 '4回目
35450 cls
35460 color rgb(255,255,255)
35470 print buffername$;"さんの人生の転機４"+chr$(13)
35480 color rgb(255,0,255)
35490 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
35500 '計算部分
35510 tenki_year13 = tenki_year12 + 5
35520 tenki_year14 = tenki_year12 + 5 + 5
35530 tenki_year15 = tenki_year12 + 5 + 5 + 5
35540 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
35550 tenki13 = tenki12 + 5
35560 tenki14 = tenki12 + 5 + 5
35570 tenki15 = tenki12 + 5 + 5 + 5
35580 tenki16 = tenki12 + 5 + 5 + 5 + 5
35590 color rgb(255,0,255)
35600 print tenki_year13;"年";tenki13;"歳"+chr$(13)
35610 print tenki_year14;"年";tenki14;"歳"+chr$(13)
35620 print tenki_year15;"年";tenki15;"歳"+chr$(13)
35630 print tenki_year16;"年";tenki16;"歳"+chr$(13)
35640 color rgb(0,0,0)
35650 print"コマンドを入れてください"+chr$(13)
35660 print"q+エンターキー:トップ画面"+chr$(13)
35670 Print"エンターキー:次へ行く"+chr$(13)
35680 print"コマンド:"
35690 key$=Input$(1)
35700 if key$=chr$(13) then goto 35050
35710 IF key$="q" then goto 7550
35720 '
35730 cls
35740 color rgb(255,255,255)
35750 print buffername$;"さんの人生の転機5"+chr$(13)
35760 color rgb(255,0,255)
35770 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
35780 tenki_year17=tenki_year16+5
35790 tenki_year18=tenki_year16+5+5
35800 tenki_year19=tenki_year16+5+5+5
35810 tenki_year20=tenki_year16+5+5+5+5
35820 tenki17=tenki16+5
35830 tenki18=tenki16+5+5
35840 tenki19=tenki16+5+5+5
35850 tenki20=tenki16+5+5+5+5
35860 print tenki_year17;"年";tenki17;"歳"+chr$(13)
35870 print tenki_year18;"年";tenki18;"歳"+chr$(13)
35880 print tenki_year19;"年";tenki19;"歳"+chr$(13)
35890 print tenki_year20;"年";tenki20;"歳"+chr$(13)
35900 color rgb(0,0,0)
35910 print"コマンドを入れてください"+chr$(13)
35920 print"トップに戻る:q+エンターキー"+chr$(13)
35930 print"最初から:エンターキー"+chr$(13)
35940 print"コマンド:"
35950 key$=Input$(1)
35960 if key$=chr$(13) then goto 33910
35970 if key$="q" then goto Main_Screen1:
35980 '改名チェック 改名候補を入力
35990 'グラフィック　領域　ここから
36000 '左側 部分
36010 cls 3:
36020 line(0,0)-(1100,60),rgb(0,0,255),bf
36030 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
36040 line(0,60)-(1100,380),rgb(127,255,212),bf
36050 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
36060 line(0,380)-(790,470),rgb(0,255,0),bf
36070 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
36080 '中央の縦の線 ここから
36090 'line(1100,0)-(1112,370),rgb(0,0,0),b
36100 '中央の縦の線 ここまで
36110 '右側 部分
36120 line(1103,0)-(1700,60),rgb(0,0,255),bf
36130 LINE(790,60)-(1700,470),rgb(127,255,212),bf
36140 'グラフィック 領域　ここまで
36150 '吉凶判定
36160 if buffer_K=0 then
36170 buffer_check$="○"
36180 else
36190 buffer_check$="☓"
36200 endif
36210 'Title 左側の文字
36220 'rgb(255,255,255):白
36230 color rgb(255,255,255)
36240 locate 1,0
36250 print"安斎流姓名判断 改名チェッカー"
36260 'Title 右側の文字
36270 locate size(2)-16,0
36280 print"改名候補リスト(3件まで)"
36290 '候補リストの名前部分 (右側)
36300 '1行目
36310 'locate 22,2
36320 locate size(2)-18,2
36330 color rgb(0,0,0)
36340 print "番号"
36350 'locate 26,2
36360 locate size(2)-14,2
36370 print"名前"
36380 'locate 32,2
36390 locate size(2)-8,2
36400 print"吉凶"
36410 'locate 36,2
36420 locate size(2)-4,2
36430 print"判定"
36440 '2行目
36450 select case kaimei_count
36460 case 0:
36470 'データー1件 の時
36480 kaimei_count = kaimei_count + 1
36490 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
36500 buffer_Kaimei$(0,1,0,0)=name$
36510 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
36520 buffer_Kaimei$(0,0,0,1)=buffer_check$
36530 'cls
36540 color rgb(255,0,255)
36550 'locate 23,3
36560 locate size(2)-17,3
36570 print buffer_Kaimei$(1,0,0,0)
36580 'locate 25,3
36590 locate size(2)-15,3
36600 print buffer_Kaimei$(0,1,0,0)
36610 'locate 32,3
36620 locate size(2)-8,3
36630 print buffer_Kaimei$(0,0,1,0)
36640 locate size(2)-3,3
36650 print buffer_Kaimei$(0,0,0,1)
36660 case 1:
36670 'データー2件の時
36680 color rgb(255,0,255)
36690 kaimei_count = kaimei_count + 1
36700 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
36710 buffer_Kaimei$(0,2,0,0)=name$
36720 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
36730 buffer_Kaimei$(0,0,0,2)=buffer_check$
36740 'cls
36750 '1行目
36760 'locate 23,3
36770 locate size(2)-17,3
36780 print buffer_Kaimei$(1,0,0,0)
36790 'locate 25,3
36800 locate size(2)-15,3
36810 print buffer_Kaimei$(0,1,0,0)
36820 'locate 32,3
36830 locate size(2)-8,3
36840 print buffer_Kaimei$(0,0,1,0)
36850 'locate 37,3
36860 locate size(2)-3,3
36870 print buffer_Kaimei$(0,0,0,1)
36880 '2行目
36890 'locate 23,4
36900 locate size(2)-17,4
36910 print buffer_Kaimei$(2,0,0,0)
36920 'locate 25,4
36930 locate size(2)-15,4
36940 print buffer_Kaimei$(0,2,0,0)
36950 'locate 32,4
36960 locate size(2)-8,4
36970 print buffer_Kaimei$(0,0,2,0)
36980 'locate 37,4
36990 locate size(2)-3,4
37000 print buffer_Kaimei$(0,0,0,2)
37010 case 2:
37020 'データー3件の時
37030 '1
37040 color rgb(255,0,255)
37050 kaimei_count=kaimei_count+1
37060 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
37070 buffer_Kaimei$(0,3,0,0)=name$
37080 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
37090 buffer_Kaimei$(0,0,0,3)=buffer_check$
37100 '2  1行目
37110 'locate 23,3
37120 locate size(2)-17,3
37130 print buffer_Kaimei$(1,0,0,0)
37140 'locate 25,3
37150 locate size(2)-15,3
37160 print buffer_Kaimei$(0,1,0,0)
37170 'locate 32,3
37180 locate size(2)-8,3
37190 print buffer_Kaimei$(0,0,1,0)
37200 'locate 37,3
37210 locate size(2)-3,3
37220 print buffer_Kaimei$(0,0,0,1)
37230 '3  2行目
37240 'locate 23,4
37250 locate size(2)-17,4
37260 print buffer_Kaimei$(2,0,0,0)
37270 'locate 25,4
37280 locate size(2)-15,4
37290 print buffer_Kaimei$(0,2,0,0)
37300 'locate 32,4
37310 locate size(2)-8,4
37320 print buffer_Kaimei$(0,0,2,0)
37330 'locate 37,4
37340 locate size(2)-3,4
37350 print buffer_Kaimei$(0,0,0,2)
37360 '4  3行目
37370 'locate 23,5
37380 locate size(2)-17,5
37390 print buffer_Kaimei$(3,0,0,0)
37400 'locate 25,5
37410 locate size(2)-15,5
37420 print  buffer_Kaimei$(0,3,0,0)
37430 'locate 32,5
37440 locate size(2)-8,5
37450 print buffer_Kaimei$(0,0,3,0)
37460 'locate 37,5
37470 locate size(2)-3,5
37480 print buffer_Kaimei$(0,0,0,3)
37490 case 3:
37500 'データー4件の時
37510 '1
37520 '2
37530 '3
37540 '4
37550 '5
37560 end select
37570 '説明部分　左側
37580 locate 0,2
37590 color rgb(255,0,255)
37600 print"思いついた候補の名前"
37610 locate 0,4
37620 print"(ニックネーム　or 会社名)を"
37630 locate 0,6
37640 print"10文字以内で入力してください"
37650 color rgb(0,0,0)
37660 locate 0,8
37670 if kaimei_count = 1 or kaimei_count = 2 then
37680 Input"名前:",kouho_name$
37690 name$=kouho_name$
37700 n=len(name$)
37710 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 35330
37720 'else
37730 if n =< 10 then goto 30500
37740 endif
37750 if kaimei_count = 3 then
37760 Input"エンターキーを押してください",key$
37770 if key$ = "" then
37780 'データーを初期化して、トップ画面に行く
37790 '1.データーを初期化
37800 kaimei_count = 0
37810 for i=1 to 3
37820 buffer_Kaimei$(i,0,0,0) = ""
37830 buffer_Kaimei$(0,i,0,0) = ""
37840 buffer_Kaimei$(0,0,i,0) = ""
37850 buffer_Kaimei$(0,0,0,i) = ""
37860 next i
37870 '2.トップ画面に行く
37880 goto 7550
37890 endif
37900 endif
37910 '霊遺伝姓名学 ここから
37920 'グラフィック領域　ここから
37930 '性別入力
37940 Reiden_Top_Input_Sextype:
37950 cls 3
37960 No=1:y=0:key$="":bg=0
37970 sp_on 1,1:sp_put 1,(10,200),1,0
37980 'Line1
37990 line (0,0)-(850,60),rgb(0,0,255),bf
38000 line (0,0)-(847,57),rgb(0,255,0),b
38010 'Line 2
38020 line (0,63)-(853,537),rgb(127,255,212),bf
38030 line (0,60)-(850,540),rgb(0,0,0),b
38040 'Line 3
38050 line (0,540)-(850,630),rgb(0,255,0),bf
38060 line (0,543)-(853,633),rgb(0,0,255),b
38070 'グラフィック領域　ここまで
38080 '音声表示
38090 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
38100 '性別変数:sex_type=0
38110 '文字色： 白
38120 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
38130 '文字色：赤
38140 color rgb(255,0,255)
38150 print"占う人の性別の番号を入れてください" + chr$(13)
38160 print" :1.女 性" + chr$(13)
38170 print" :2.男 性" + chr$(13)
38180 print" :3.前の画面に戻る" + chr$(13)
38190 print" :4.終 了" + chr$(13)
38200 color rgb(0,0,0)
38210 print "番号:"
38220 Reiden_Top_Input_Sextype2:
38230 y=0:key$="":bg=0
38240 while (key$<>chr$(30) and bg<>2 and y<>1 and y<> -1 and key$<>chr$(13) and key$<>chr$(31))
38250 key$=inkey$
38260 y=stick(1)
38270 bg=strig(1)
38280 pause 2.50*100
38290 wend
38300 if (key$=chr$(31) or y=1) then
38310 '
38320 select case No
38330 case 1:
38340        No=2:sp_on 2,1:sp_on 1,0:beep:sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
38350 case 2:
38360       No=3:sp_on 3,1:sp_on 2,0:beep:sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
38370 case 3:
38380       No=4:sp_on 4,1:sp_on 3,0:beep:sp_put 4,(10,500),4,0:goto Reiden_Top_Input_Sextype2:
38390 case 4:
38400       No=1:sp_on 1,1:sp_on 4,0:beep:sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
38410 end select
38420 endif
38430 if (bg=2 or key$=chr$(13)) then
38440 select case No
38450 case 1:
38460       sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
38470 case 2:
38480       sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
38490 case 3:
38500       sp_on 3,0:goto Main_Screen1:
38510 case 4:
38520       sp_on 4,0:cls 3:cls 4:COLOR rgb(255,255,255):end
38530 end select
38540 endif
38550 '2:男性の場合 名前を入力
38560 '男性の性別:sex_type=2
38570 'if val(No$)=2 then sex_type=2:goto ReiIden_Input_male:
38580 '1:女性の場合 既婚の場合、旧姓で入力
38590 '女性の性別:sex_type=1
38600 'if val(No$)=1 then sex_type=1:goto ReiIden_Input_female:
38610 '3:終了処理
38620 'if val(No$)=4 then cls 3:end
38630 'if val(No$)=3 then goto Main_Screen1:
38640 'if val(No$) >4 then goto Reiden_Top_Input_Sextype:
38650 '１．男性の場合の名前入力
38660 '描画領域　ここから
38670 ReiIden_Input_male:
38680 cls 3:init"kb:2"
38690 'Line 1 Title
38700 line (0,0)-(850,60),rgb(0,0,255),bf
38710 line (0,0)-(850,57),rgb(0,255,0),b
38720 'Line2 Input name
38730 line (0,60)-(850,300),rgb(0,255,0),bf
38740 line (0,60)-(850,303),rgb(0,0,255),b
38750 '描画領域 ここまで
38760 '文字色：白
38770 color rgb(255,255,255)
38780 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
38790 '文字色：黒
38800 color rgb(0,0,0)
38810 print "名前の姓の部分を入れてください" + chr$(13)
38820 Input"名前(姓の部分):",name1$
38830 '名の入力部分
38840 cls
38850 color rgb(255,255,255)
38860 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
38870 color rgb(0,0,0)
38880 print "名前の名の部分を入れてください"+chr$(13)
38890 Input"名前(名の部分):",name2$:goto check:
38900 '2.女性の場合　既婚か未婚か確認する
38910 '2-2-1女性の姓の入力
38920 'グラフィック領域　ここから
38930 ReiIden_Input_female:
38940 cls 3:init"kb:2"
38950 'Line1 Title
38960 line (0,0)-(850,60),rgb(0,0,255),bf
38970 line (0,0)-(850,57),rgb(0,255,0),b
38980 'Line 2 入力欄
38990 line (0,60)-(850,360),rgb(0,255,0),bf
39000 line (0,60)-(850,357),rgb(0,0,255),b
39010 'Line 2 入力欄(名前入力)
39020 'グラフィック領域 ここまで
39030 cls:init"kb:2"
39040 color rgb(255,255,255)
39050 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
39060 color rgb(255,0,0)
39070 print"既婚者の方は、旧姓を入れてください"+chr$(13)
39080 color rgb(0,0,0)
39090 print "名前の姓の部分を入れてください"+chr$(13)
39100 Input "名前(姓の部分):",name3$
39110 '2-2-2女性の名の入力
39120 cls:init"kb:2"
39130 color rgb(255,255,255)
39140 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
39150 color rgb(0,0,0)
39160 print "名前の名の部分を入れてください"+chr$(13)
39170 Input "名前(名の部分):",name4$
39180 '計算領域　ここから
39190 check:
39200 '苗字の画数:buffer_name1_count
39210 'name1$,name2$:男性
39220 if sex_type = 1 then
39230 'sex_type=1 :女性のとき
39240 buf_male_female_name1$=name3$
39250 buf_male_female_name2$=name4$
39260 endif
39270 if sex_type = 2 then
39280 'sex_type=2 :男性のとき
39290 buf_male_female_name1$=name1$
39300 buf_male_female_name2$=name2$
39310 endif
39320 buffer_name1_count=len(buf_male_female_name1$)
39330 buffer_name2_count=len(buf_male_female_name2$)
39340 select case buffer_name1_count
39350 'AとBを求める
39360 case 1:
39370 '1.苗字の画数が1つのとき
39380 'A:霊数 1
39390 A=1
39400 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39410 B = char_count(buf_name1$)
39420 case 2:
39430 '2.苗字の画数が2つのとき
39440 '2-1:苗字の1文字目:buf_name1$
39450 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
39460 '2-2:苗字の2文字目:buf_name2$
39470 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
39480 A=char_count(buf_name1$)
39490 B=char_count(buf_name2$)
39500 'B=char_count(buf_name2$)
39510 case 3:
39520 '3.苗字の画数が3つの時
39530 '3-1:苗字の1文字目:buf_name1$
39540 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39550 '3-2:苗字が3つのときの2つ目の文字をもとめる
39560 '3-2:苗字の2つ目:buf_name2$
39570 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39580 '3-3:苗字が3つのときの3文字目
39590 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
39600 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
39610 if buf_name2$="々" then
39620 A = char_count(buf_name1$) * 2
39630 B = char_count(buf_name3$)
39640 else
39650 A = char_count(buf_name1$) + char_count(buf_name2$)
39660 B = char_count(buf_name3$)
39670 endif
39680 '姓が4文字
39690 case 4:
39700 buf_name1$=Mid$(buf_male_female_name1$,1,1)
39710 buf_name2$=Mid$(buf_male_female_name1$,2,1)
39720 buf_name3$=Mid$(buf_male_female_name1$,3,1)
39730 buf_name4$=Mid$(buf_male_female_name1$,4,1)
39740 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
39750 B=char_count(buf_name4$)
39760 case else:
39770 end select
39780 '2.C,Dを求める
39790 select case buffer_name2_count
39800 case 1:
39810 '名が1文字の時
39820 'CとDを求める
39830 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39840 C = char_count(buff_name1$)
39850 'D=1:霊数
39860 D = 1
39870 case 2:
39880 '名が2文字の時
39890 'CとDを求める
39900 '名の1文字目:buff_name1$
39910 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
39920 '名の2文字目:buff_name2$
39930 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
39940 C = char_count(buff_name1$)
39950 D = char_count(buff_name2$)
39960 case 3:
39970 '名が3文字の時
39980 'CとDを求める
39990 '名の1文字目:buff_name1$
40000 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
40010 '名の2文字目:buff_name2$
40020 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
40030 if buff_name2$ = "々" then
40040 buff_name2$ = buff_name1$
40050 endif
40060 '名の3文字目:buff_name3$
40070 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
40080 C = char_count(buff_name1$)
40090 D = char_count(buff_name2$) + char_count(buff_name3$)
40100 end select
40110 '1.先祖運を求める
40120 buffer_Senzo = A + B
40130 '2.性格運を求める
40140 buffer_Seikaku = B + C
40150 '3.愛情運を求める
40160 buffer_Aijyou = C + D
40170 '4.行動運を求める
40180 buffer_Kouzou = A + D
40190 'if buffer_Kouzou=10 then
40200 'endif
40210 '1.生数を求める
40220 func buf_Seisu(buffer)
40230 if buffer < 10 then
40240 seisu=buffer
40250 endif
40260 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
40270 seisu = 0
40280 endif
40290 if buffer > 10 then
40300 if buffer=20 then
40310 seisu = 0
40320 else
40330 n = buffer - (fix(buffer / 10) * 10)
40340 seisu = n
40350 endif
40360 endif
40370 endfunc seisu
40380 func buf_Wasu(buffer)
40390 buf_wasu = 0:wasu = 0
40400 if buffer < 10 then
40410 '
40420 wasu = buffer:goto wasu:
40430 else
40440 if buffer = 10 then
40450 wasu = 1:goto wasu:
40460 else
40470 if buffer > 10  then
40480 if buffer=19 or buffer=28 or buffer=37 then
40490 wasu=1:goto wasu:
40500 else
40510 if buffer = 29 then
40520 wasu=2:goto wasu:
40530 'endif
40540 else
40550 a = fix(buffer / 10)
40560 b = buffer - a * 10
40570 c = a + b
40580 if c = 19 or c=28 then
40590 wasu=1
40600 '
40610 else
40620 wasu=c
40630 endif
40640 endif
40650 endif
40660 endif
40670 endif
40680 if c < 10 then
40690 wasu = c
40700 'endif
40710 endif
40720 else
40730 if buffer=19 or buffer=28 then
40740 wasu = 1
40750 endif
40760 endif
40770 wasu:
40780 buf_wasu=wasu
40790 endfunc buf_wasu
40800 func buf_kyoudai$(buf_sex_type,buf_Sa$)
40810 select case buf_sex_type
40820 '1.女性の場合
40830 case 1:
40840 if (buf_Sa$ = "連続") then
40850 buffer_kyoudai$="長女"
40860 endif
40870 if (buf_Sa$ = "1差") then
40880 buffer_kyoudai$="次女"
40890 endif
40900 if (buf_Sa$ = "2差") then
40910 buffer_kyoudai$="三女"
40920 endif
40930 if (buf_Sa$ = "3差") then
40940 buffer_kyoudai$="四女"
40950 endif
40960 if (buf_Sa$ = "4差") then
40970 buffer_kyoudai$="五女"
40980 endif
40990 '男性の場合
41000 case 2:
41010 if (buf_Sa$ = "連続") then
41020 buffer_kyoudai$="長男"
41030 endif
41040 if (buf_Sa$ = "1差") then
41050 buffer_kyoudai$="次男"
41060 endif
41070 if (buf_Sa$ = "2差") then
41080 buffer_kyoudai$="三男"
41090 endif
41100 if (buf_Sa$ = "3差") then
41110 buffer_kyoudai$="四男"
41120 endif
41130 if (buf_Sa$ = "4差") then
41140 buffer_kyoudai$="五男"
41150 endif
41160 case else:
41170 end select
41180 kyoudai$=buffer_kyoudai$
41190 endfunc kyoudai$
41200 '1.タテ型
41210 '1.同じ数字が2組ある場合
41220 func Tate_gata$()
41230 if Senzo_wasu = Seikaku_wasu  then
41240 if Aijyou_wasu - Seikaku_wasu > 1 then
41250 Spirit_type$="タテ型"
41260 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
41270 Sa$ = str$(Sa_count) + "差"
41280 else
41290 Spirit_type$="タテ型"
41300 Sa$="連続"
41310 endif
41320 endif
41330 endfunc
41340 '2. ナナメ型
41350 '同じ数字が2組ある場合
41360 func Naname_gata$()
41370 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
41380 Spirit_type$="斜め型"
41390 endif
41400 if Seikaku_wasu - Senzo_wasu > 1 then
41410 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
41420 Sa$=str$(Sa_count)+" 差"
41430 else
41440 Sa$="連続"
41450 endif
41460 endfunc
41470 '3.表十字型
41480 '同じ数字が2組ある場合
41490 func Omote_jyuji_gata1$()
41500 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
41510 Spirit_type$ = "表十字型"
41520 endif
41530 if Senzo _wasu - Seikaku_wasu > 1 then
41540 Sa_count = Senzo_wasu - Seikaku_wasu - 1
41550 else
41560 if Senzo_wasu  -  Seikaku_wasu = 1  then
41570 Sa$="連続"
41580 endif
41590 endif
41600 endfunc
41610 '3-1.表十字型(ヨコ系)
41620 func Omote_jyuji_gata_yoko$()
41630 endfunc
41640 '3-2.表十字型(上下型)
41650 func Omote_jyuji_gata_jyouge()
41660 endfunc
41670 '4.ヨコ型
41680 func Yoko_gata$()
41690 endfunc
41700 '5.上下型
41710 func Jyouge_gata$()
41720 endfunc
41730 '6.1.中広型(タテ系)
41740 func Nakahiro_Tate$()
41750 endfunc
41760 '6.2中広型(ナナメ系)
41770 func Nakahiro_Naname$()
41780 endfunc
41790 '6.3中広型(表十字型)
41800 func Nakahiro_Omotejyuji$()
41810 endfunc
41820 '7.1.中一差(タテ系)
41830 func Chuissa_Tate$()
41840 endfunc
41850 '7.2中一差(ナナメ系)
41860 func Chuissa_Naname$()
41870 endfunc
41880 '8.1.中二差(タテ系)
41890 func Chunissa_Tate$()
41900 endfunc
41910 '8.2.中二差(ナナメ系)
41920 '9.1.順序型(タテ上下系)
41930 func Chunissa_Tate_jyouge$()
41940 endfunc
41950 '9.2.順序型(タテ、ヨコ系)
41960 func Jyunjyo_Tate_yoko$()
41970 endfunc
41980 '9.3.順序型(ナナメ、上下系)
41990 func Jyunjyo_Naname_jyouge$()
42000 endfunc
42010 '9.4.順序型(ナナメ、ヨコ系)
42020 '10.1.中順序型(ヨコ系)
42030 func Nakajyunjyo_yoko$()
42040 endfunc
42050 '10.2.中順序型(上下系)
42060 func Nakajyunjyo_jyouge$()
42070 endfunc
42080 '11.1.隔離型(タテ、上下系)
42090 func Kakuri_tate_jyouge$()
42100 endfunc
42110 '11.2.隔離型(タテ、ヨコ系)
42120 func Kakuri_tate_yoko$()
42130 endfunc
42140 '11.3.隔離型(ナナメ、上下系)
42150 func Kakuri_Naname_jyouge$()
42160 endfunc
42170 '11.4.隔離型(ナナメ、ヨコ系)
42180 func Kakuri_Naname_yoko$()
42190 endfunc
42200 '11.5.隔離型(タテ系)
42210 func Kakuri_tate$()
42220 endfunc
42230 '11.6.隔離型(ナナメ系)
42240 func Kakuri_naname$()
42250 endfunc
42260 '11.7.隔離型(上下、ヨコ系)
42270 func Kakuri_Jyouge_yoko$()
42280 endfunc
42290 Spirit_type$="No data"
42300 '1.先祖運　和数
42310 Senzo_wasu = buf_Wasu(buffer_Senzo)
42320 '2.先祖運 生数
42330 Senzo_seisu = buf_Seisu(buffer_Senzo)
42340 '3.性格運 和数
42350 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
42360 '4.性格運 生数
42370 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
42380 '5.愛情運 和数
42390 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
42400 '6.愛情運 生数
42410 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
42420 '7.行動運 和数
42430 Koudou_wasu = buf_Wasu(buffer_Kouzou)
42440 '8.行動運 生数
42450 Koudou_seisu = buf_Seisu(buffer_Kouzou)
42460 '計算領域 ここまで
42470 '描画領域　ここから
42480 Result_ReiIden1:
42490 cls 3
42500 'Title
42510 line (0,0)-(850,60),rgb(0,0,255),bf
42520 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
42530 'name
42540 line (0,60)-(850,165),rgb(0,255,0),bf
42550 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
42560 '生数、和数
42570 line (0,165)-(850,550),rgb(125,255,212),bf
42580 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
42590 'プッシュメッセージ
42600 line (0,550)-(850,650),rgb(0,255,0),bf
42610 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
42620 '描画領域　ここまで
42630 color rgb(255,255,255)
42640 print "霊遺伝姓名学　診断結果１/3"+chr$(13)
42650 color rgb(0,0,0)
42660 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
42670 color rgb(255,0,255)
42680 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
42690 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
42700 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
42710 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
42720 talk "診断結果１です、あなたのわすうとせいすうです。"
42730 color rgb(0,0,0)
42740 print"エンターキーを押してください"
42750 key$=Input$(1)
42760 if key$=chr$(13) then goto Result_ReiIden2:
42770 '描画領域　ここから
42780 Result_ReiIden2:
42790 cls 3
42800 'Title Color:青
42810 line (0,0)-(860,60),rgb(0,0,255),bf
42820 'Title 枠
42830 line (0,0)-(860,57),rgb(255,0,255),b
42840 'Message
42850 line (0,60)-(860,650),rgb(127,255,212),bf
42860 'Message 枠
42870 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
42880 '
42890 '描画領域　ここまで
42900 color rgb(255,255,255)
42910 print "霊遺伝姓名 診断結果2/3" + chr$(13)
42920 '十二運の基礎運
42930 '1.四大主流型
42940 'パターン１ 同じ数字の場合
42950 '1.オール同数化 全部同じ
42960 '1-if
42970 sa_count=0
42980 if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
42990 Spirit_type$ = "オール同数化"
43000 Sa$="3差"
43010 else
43020 'パターン１ 同じ数字2つの場合
43030 '2.タテ型
43040 '数字が２つ同じ
43050 '2-if
43060 if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
43070 Spirit_type$ = "タテ型"
43080 '2.タテ型　1
43090 if Koudou_wasu - Senzo_wasu = 1 then
43100 Sa$="連続"
43110 else
43120 '2.タテ型　2
43130 if abs(Senzo_wasu - Koudou_wasu) > 1 then
43140 Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
43150 Sa$=str$(Sa_count) + "差"
43160 endif
43170 endif
43180 endif
43190 endif
43200 '2.タテ型　3
43210 '1.type
43220 'Spirit_type$ = "四大主流型 タテ型"
43230 '3.斜め型
43240 '数字が２つ同じ
43250 '先祖=愛情 性格、（先祖＝愛情）、行動で連数
43260 if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
43270 Sa$="連続"
43280 else
43290 '先祖＝行動　性格運=愛情運
43300 '3-if
43310 if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
43320 Spirit_type$="斜め型"
43330 '3.斜め型 1
43340 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
43350 Sa$ = "連続"
43360 else
43370 if (Seikaku_wasu - Koudou_wasu) < 1 then
43380 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
43390 endif
43400 endif
43410 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
43420 Sa_count = 3
43430 Sa$ = str$(Sa_count - 1) + "差"
43440 else
43450 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
43460 Sa_count = Senzo_wasu - Seikaku_wasu
43470 Sa$ = str$(Sa_count-1) + "差"
43480 endif
43490 endif
43500 endif
43510 'Spirit_type$ = str$(Sa_count) + "差"
43520 'endif
43530 'endif
43540 '3-if
43550 endif
43560 '3.斜め型 2
43570 '3.斜め型 3
43580 '数字が２つ同じ
43590 '表十字型
43600 '先祖運＝愛情運　　行動運＝性格運
43610 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
43620 Spirit_type$="表十字型"
43630 Sa_coun = Senzo_wasu - Seikaku_wasu
43640 if Sa_count > 1 then
43650 Sa$ = str$(Sa_count) + "差"
43660 else
43670 if Sa_count = 1 then
43680 Sa$ = "連続"
43690 endif
43700 endif
43710 endif
43720 'endif
43730 '数字が２つ同じ
43740 '表十字型(横型)
43750 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
43760 Spirit_type$="表十字型(ヨコ型)"
43770 'Sa$を後で書く
43780 endif
43790 '数字が２つ同じ
43800 '表十字型(上下型)
43810 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
43820 Spirit_type$="表十字型(上下型)"
43830 'Sa$を後で書く
43840 endif
43850 'ヨコ型
43860 if Koudou_wasu = Seikaku_wasu then
43870 n=abs(Senzo_wasu - Seikaku_wasu)
43880 n2 = abs(Aijyou_wasu-Seikaku_wasu)
43890 Spirit_type$="ヨコ型"
43900 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
43910 Sa$="連続"
43920 endif
43930 if n = n2 then
43940 if n > 1 then
43950 Sa_count = n - 1
43960 Sa$=str$(Sa_count)+"差"
43970 else
43980 Sa_Count = abs(n - n2)
43990 if Sa_Count > 1 then
44000 Sa$ = str$(Sa_Count) + "差"
44010 endif
44020 endif
44030 endif
44040 endif
44050 '上下型
44060 '同じ数字が1組みある場合
44070 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
44080 Spirit_type$ = "上下型"
44090 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
44100 'n = abs(Koudou_wasu-Senzo_wasu)
44110 'n2= abs(Seikaku_wasu-Senzo_wasu)
44120 'buf=min(n,n2)
44130 'Sa$=str$(buf - 1) + "差"
44140 Sa$="連続"
44150 endif
44160 endif
44170 '中広（なかこう)型(斜め系)
44180 '連続した数字が2組みある場合
44190 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
44200 'n=Min(Senzo_wasu ,Koudou_wasu)
44210 'n2=Max(Seikaku_wasu , Aijyou_wasu)
44220 'Spirit_type$="中広型（斜め系）"
44230 'Sa_count = n - n2 -1
44240 'if Sa_count > 1 then
44250 'Sa$ = str$(Sa_count-1) + "差"
44260 'else
44270 'if Sa_count = 1 then
44280 'Sa$="連続"
44290 'endif
44300 'endif
44310 'endif
44320 '中広（なかこう)型(表十字型)
44330 '連続した数字が2組みある場合
44340 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
44350 Spirit_type$="中広（なかこう)型(表十字型)"
44360 n=Min(Koudou_wasu , Seikaku_wasu)
44370 n2=Max(Aijyou_wasu , Senzo_wasu)
44380 Sa_count = n - n2
44390 if Sa_count > 1 then
44400 Sa$ = str$(Sa_count - 1) + "差"
44410 else
44420 if Sa_count = 1 then
44430 Sa$ = "連続"
44440 endif
44450 endif
44460 endif
44470 '中一差（タテ系)
44480 '連続した数字が2組みある場合
44490 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
44500 'Spirit_type$="中一差（タテ系)"
44510 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
44520 n = Max(Koudou_wasu,Aijyou_wasu)
44530 n2 = Max(Senzo_wasu,Seikaku_wasu)
44540 else
44550 n = Max(Koudou_wasu,Aijyou_wasu)
44560 n2 = Min(Senzo_wasu,Seikaku_wasu)
44570 endif
44580 Sa_count2 = abs(n2 - n) - 1
44590 if Sa_count2 >= 0 then
44600 select case Sa_count2
44610 case 1:
44620 '中一差（タテ系)
44630 Sa$ = "連続"
44640 Spirit_type$="中一差型（タテ系)*"
44650 case 2:
44660 '中二差型（タテ系)
44670 Sa$ = "1差"
44680 Spirit_type$="中二差型（タテ系)"
44690 case 3:
44700 '中広（なかこう)型(タテ系)
44710 Sa$ = "2差"
44720 Spirit_type$="中三差型（タテ系)"
44730 case 4:
44740 Sa$ = "3差"
44750 Spirit_type$="中広型(タテ系)"
44760 case  else:
44770 cls 3:print"例外に入りました"
44780 end select
44790 '
44800 else
44810 cls 3:print"例外に入りました"
44820 endif
44830 endif
44840 'endif
44850 '中一差（斜め系)
44860 '連続した数字が2組みある場合
44870 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
44880 n = Min(Koudou_wasu,Senzo_wasu)
44890 n2 = Max(Aijyou_wasu,Seikaku_wasu)
44900 Sa_count = n - n2 - 1
44910 select case Sa_count
44920 case 1:
44930 '中一差（斜め系)
44940 '連続した数字が2組みある場合
44950 Sa$="1差"
44960 Spirit_type$="中一差（斜め系)"
44970 case 2:
44980 '中二差（斜め系)
44990 '連続した数字が2組みある場合
45000 Sa$="2差"
45010 Spirit_type$="中二差（斜め系)"
45020 case 3:
45030 Sa$="3差"
45040 Spirit_type$="中広型（斜め系）"
45050 case else:
45060 end select
45070 endif
45080 '順序型(タテ、上下系)
45090 '数字が４つ連続してる場合
45100 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
45110 Spirit_type$="順序型(タテ、上下系)"
45120 Sa$="連続"
45130 endif
45140 '中順序型(ヨコ系)
45150 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
45160 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
45170 Spirit_type$="中順序型(ヨコ系)"
45180 Sa$="1差"
45190 else
45200 '順序型(タテ、ヨコ系)
45210 '数字が４つ連続してる場合
45220 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
45230 Spirit_type$="順序型(タテ、ヨコ系)"
45240 Sa$="連続"
45250 endif
45260 endif
45270 endif
45280 '中順序型(上下系)
45290 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
45300 n=Max(Senzo_wasu,Aijyou_wasu)
45310 n2=Min(Koudou_wasu,Seikaku_wasu)
45320 Sa_count = n2 - n
45330 if Sa_count > 1 then
45340 Spirit_type$="中順序型(上下系)"
45350 Sa$ = Str$(Sa_count) + "差"
45360 else
45370 '順序型(斜め、上下系)
45380 '数字が４つ連続してる場合
45390 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
45400 Spirit_type$ = "順序型(斜め、上下系)"
45410 Sa$="連続"
45420 endif
45430 endif
45440 endif
45450 '順序型(斜め、ヨコ系)
45460 '数字が４つ連続してる場合
45470 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
45480 Spirit_type$="順序型(斜め、ヨコ系)"
45490 Sa$="連続"
45500 endif
45510 '隔離型(タテ、上下系)
45520 '数字が1つおきに飛んでる場合
45530 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
45540 Spirit_type$="隔離型(タテ、上下系)"
45550 Sa$="1差"
45560 endif
45570 '隔離型(タテ、ヨコ系)
45580 '数字が1つおきに飛んでる場合
45590 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
45600 Spirit_type$="隔離型(タテ、ヨコ系)"
45610 Sa$="1差"
45620 endif
45630 '隔離型(斜め、上下系)
45640 '数字が1つおきに飛んでる場合
45650 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
45660 Spirit_type$="隔離型(斜め、上下系)"
45670 Sa$="1差"
45680 endif
45690 '隔離型(斜め、ヨコ系)
45700 '数字が1つおきに飛んでる場合
45710 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
45720 Spirit_type$="隔離型(斜め、ヨコ系)"
45730 Sa$="1差"
45740 endif
45750 '隔離型(タテ系)
45760 '数字が2つおきに飛んでる場合
45770 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
45780 Spirit_type$="隔離型(タテ系)"
45790 Sa$="1差"
45800 endif
45810 '隔離型(斜め系)
45820 '数字が2つおきに飛んでる場合
45830 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
45840 Spirit_type$="隔離型(斜め系)"
45850 Sa$="1差"
45860 endif
45870 '隔離型(上下、ヨコ系)
45880 '数字が2つおきに飛んでる場合
45890 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
45900 Spirit_type$="隔離型(上下、ヨコ系)"
45910 Sa$="1差"
45920 'endif
45930 endif
45940 'ここに移動
45950 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
45960 color rgb(255,0,255)
45970 print "●十二の基礎運" + chr$(13)
45980 print Spirit_type$ + Sa$;chr$(13)
45990 print "きょうだい：";Kyoudai$ + chr$(13)
46000 talk "あなたのきょうだいは、"+Kyoudai$+"です"
46010 color rgb(0,0,0)
46020 print"前の画面:ｂキー"+chr$(13)
46030 print"保存して、もう一度やる：スペースキー"+chr$(13)
46040 print"終了:エンターキー"+chr$(13)
46050 key$ = Input$(1)
46060 if key$ = chr$(13) then
46070 goto Main_Screen1:
46080 else
46090 '保存して スペースキーでもう一度占う
46100 if key$ = " " then
46110 goto Save_Data1:
46120 else
46130 if key$="b" then
46140 goto Result_ReiIden1:
46150 endif
46160 endif
46170 endif
46180 'ファイル保存 占いデーターを一時保存
46190 Save_Data1:
46200 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
46210 'print#3は末尾は、セミコロンはいらない
46220 '末尾にセミコロンをつけると改行しない
46230 print #3,"名前:"+buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情生数:"+str$(Aijyou_wasu);",愛情和数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
46240 ui_msg "保存しました"
46250 close #3
46260 goto Reiden_Top_Input_Sextype:
46270 '個人データーリスト  *parsonal_data
46280 Parsonal_data_top:
46290 cls 3
46300 line(0,0)-(680,60),rgb(0,0,255),bf
46310 pen 5:line(3,3)-(677,57),rgb(0,255,0),b
46320 line (0,60)-(680,440),rgb(127,255,212),bf
46330 pen 5:line (0, 63)-(677,443),rgb(0,0,255),b
46340 line (0,440)-(680,670),rgb(0,255,0),bf
46350 pen 5:line (0,443)-(677,673),rgb(0,0,0),b
46360 color rgb(255,255,255)
46370 print"◎個人データーリスト" + chr$(13)
46380 color rgb(255,0,255)
46390 print "1.霊遺伝姓名学リスト" + chr$(13)
46400 print "2.霊遺伝姓名学登録件数" + chr$(13)
46410 print "3.霊遺伝姓名学データー検索"+chr$(13)
46420 print "4.メインメニューへ行く"+chr$(13)
46430 color rgb(0,0,0)
46440 print "番号を入れてください"+chr$(13)
46450 Input "番号:",No
46460 if No = 1 then goto Parsonal_list1:
46470 if No = 2 then goto Entry_list_count:
46480 if No = 4 then goto Main_Screen1:
46490 if No = 3 then goto Parsonal_list_Search:
46500 if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
46510 '登録件数
46520 Entry_list_count:
46530 N = 0:
46540 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
46550 'N=1
46560 while eof(5) = 0
46570 line input #5,line$:N = N + 1
46580 'if line$="大吉数" then
46590 'continue:N = N - 1
46600 'else
46610 'N = N + 1
46620 'endif
46630 wend
46640 'c=N
46650 close #5
46660 c=N
46670 cls 3
46680 line (0,0)-(680,60),rgb(0,0,255),bf
46690 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
46700 line (0,60)-(680,180),rgb(127,255,212),bf
46710 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
46720 LINE (0,180)-(680,280),rgb(0,255,0),bf
46730 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
46740 color rgb(255,255,255)
46750 print "◎霊遺伝姓名学登録件数"+chr$(13)
46760 color rgb(255,0,255)
46770 'N=B-1:C=N
46780 print "登録件数は";c;"件です"+chr$(13)
46790 color rgb(0,0,0)
46800 print "エンターキーを押してください"+chr$(13)
46810 a$ = Input$(1)
46820 if a$ = chr$(13) then goto Parsonal_data_top:
46830 'パーソナルリスト ここから
46840 Parsonal_list1:
46850 cls 3:bN=0:n=0:a=0
46860 'Title
46870 line (0,0)-(850,60),rgb(0,0,255),bf
46880 line (0,0)-(850,57),rgb(255,255,255),b
46890 '個人名
46900 line (0,60)-(850,165),rgb(0,255,0),bf
46910 line (0,63)-(850,162),rgb(255,0,255),b
46920 '数値リスト
46930 line (0,165)-(850,550),rgb(255,212,212),bf
46940 line (0,168)-(850,547),rgb(0,0,255),b
46950 'ボタンメッセージ
46960 line (0,550)-(850,730),rgb(0,255,0),bf:
46970 line (0,553)-(853,733),rgb(255,0,255),b
46980 'Parsonal_list2:
46990 'color rgb(255,255,255):
47000 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
47010 'n=0
47020 open "config/Parsonal_data/parsonal_data.dat" for input as #7
47030 'bN=0
47040 while eof(7)=0
47050 'input #6,lines2$
47060 'close #6
47070 '
47080 line input #7,lines$:bN = bN + 1
47090 'if lines$ = "大吉数" then
47100 'continue:bN = bN - 1
47110 'else
47120 'bN = bN + 1
47130 'endif
47140 wend
47150 'buf_name1$(i)=Mid$(lines$,4,4)
47160 'next i
47170 'wend
47180 close #7
47190 'a=0
47200 open "config/Parsonal_data/parsonal_data.dat" for input as #8
47210 'while eof(8)=0
47220 for i=0 to (bN * 10) -1
47230 input #8,buflines$(i)
47240 'buflines$(i) = line$
47250 'a  =  a  +  1
47260 Next i
47270 'wend
47280 close #8
47290 while n <= bN * 10
47300 'Title
47310 color rgb(255,255,255)
47320 print "霊遺伝姓名学 リスト" + chr$(13)
47330 '性別を出す
47340 sex$ = show_sex_type$(buflines$((10*n) + 1))
47350 'n=0
47360 color rgb(0,0,0):
47370 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
47380 '
47390 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
47400 print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
47410 print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
47420 print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
47430 'n = (( n + 1) Mod 3) - 1
47440 '
47450 'n = n + 1
47460 print "スペースキー:次へ行く" + chr$(13)
47470 print "エンターキー：トップへ戻る" + chr$(13)
47480 key$ = Input$(1)
47490 if key$ = " " then n = ((n + 1) Mod bN)
47500 'if bN = 3 then
47510 'if buflines$(0) = "大吉数" then
47520 'n = ((n + 1) Mod (bN - 1))
47530 'else
47540 'n=((n + 1) Mod bN)
47550 'wend
47560 'else
47570 'if bN=2 then
47580 'n=((n + 1) Mod bN)
47590 'endif
47600 'endif
47610 cls
47620 'else
47630 if key$ = chr$(13) then goto Parsonal_data_top:
47640 wend
47650 'goto Parsonal_data_top:
47660 'endif
47670 'endif
47680 Parsonal_list_Search:
47690 open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
47700 while eof(1)=0
47710 line input #1,lines$:hit_count=hit_count + 1
47720 wend
47730 close #1
47740 'bufname$(hit_count*10),buffname$(hit_count*10)
47750 open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
47760 for i=0 to hit_count*10 - 1
47770 input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
47780 next i
47790 close #2
47800 Search_find:
47810 cls 3
47820 'グラフィック領域　ここから
47830 line (0,0)-(770,60),rgb(0,0,255),bf
47840 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
47850 line (0,60)-(770,170),rgb(127,255,212),bf
47860 line(0,63)-(767,173),rgb(0,0,255),b
47870 line(0,170)-(770,440),rgb(0,255,0),bf
47880 pen 5:line(0,173)-(767,443),rgb(0,0,0),b
47890 color rgb(255,255,255)
47900 print "霊遺伝姓名判断 データー検索"+chr$(13)
47910 color rgb(255,0,255)
47920 print "登録件数:";hit_count;"件です"+chr$(13)
47930 color rgb(0,0,0)
47940 print "調べたい人の名前を入れてください"+chr$(13)
47950 Input "名前:",name$
47960 cls
47970 for i=0 to hit_count * 10 - 1
47980 if name$=buffname$(i) then
47990 hcount=hcount+1
48000 endif
48010 next i
48020 if hcount > 0 then
48030 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48040 color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
48050 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
48060 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
48070 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
48080 a$=input$(1)
48090 if a$=" " then goto Search_find:
48100 if a$=chr$(13) then goto Main_Screen1:hit_count=0
48110 else
48120 cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
48130 color rgb(0,0,0):print"検索名:";name$+chr$(13)
48140 color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
48150 color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
48160 a$=input$(1)
48170 IF a$=chr$(13) then goto Main_Screen1:
48180 endif
48190 '相性のデーターを保存する機能
48200 '保存ファイル：bestAisyou.dat
48210 '保存フォルダ:config/Aisyou_dat/
48220 Save_Aisyou:
48230 open "config/Aisyou_data" for append as #1
48240 print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
48250 close #1
48260 ui_msg "保存しました"
48270 key$ = input$(1)
48280 '設定変更項目
48290 Config_Setting:
48300 cls 3:
48310 'グラフィック領域　ここから
48320 'Line 1
48330 line (0,0)-(850,60),rgb(0,0,255),bf
48340 line (0,0)-(850,57),rgb(255,255,255),b
48350 'Line 2
48360 line (0,60)-(850,460),rgb(127,255,212),bf
48370 line (0,57)-(850,457),rgb(0,0,0),b
48380 'Line 3
48390 line (0,460)-(850,640),rgb(0,255,0),bf
48400 line (0,457)-(850,637),rgb(0,0,0),,b
48410 'グラフィック領域　ここまで
48420 color rgb(255,255,255)
48430 print "設定　トップメニュー" + chr$(13)
48440 color rgb(255,0,255)
48450 print "1.キーボードの設定" + chr$(13)
48460 print "2.音の設定" + chr$(13)
48470 print "3.トップに戻る" + chr$(13)
48480 print "4.プログラムの終了"+chr$(13)
48490 color rgb(0,0,0)
48500 print "番号を選んでエンターキー"+chr$(13)
48510 Input "番号:",No
48520 'No=4:プログラムの終了
48530 if No = 4 then
48540 cls 3:talk"しゅうりょうします":ui_msg"終了します":end
48550 else
48560 select case No
48570 'No=1:キーボードの設定
48580 case 1:
48590 goto Keyboard_Setting:
48600 'No=2:音の設定
48610 case 2:
48620 'No=3:トップに戻る
48630 case 3:
48640 goto Main_Screen1:
48650 'No=1〜3以外
48660 case else:
48670 goto Config_Setting:
48680 end select
48690 endif
48700 '1.キーボードの設定
48710 Keyboard_Setting:
48720 cls 3
48730 'グラフィック領域　ここから
48740 'Line 1
48750 line (0,0)-(950,60),rgb(0,0,255),bf
48760 line (0,0)-(947,57),rgb(255,255,255),b
48770 'Line 2
48780 line (0,60)-(950,460),rgb(127,255,212),bf
48790 line (0,57)-(947,457),rgb(0,0,0),b
48800 'Line 3
48810 line (0,460)-(950,640),rgb(0,255,0),bf
48820 line (0,457)-(947,637),rgb(0,0,0),,b
48830 'グラフィック領域　ここまで
48840 '文字色　白
48850 color rgb(255,255,255)
48860 print "設定1 キーボードの設定" + chr$(13)
48870 color rgb(255,0,255)
48880 print "1.バーチャルキーボード表示する" + chr$(13)
48890 print "2.バーチャルキーボードを表示しない" + chr$(13)
48900 print "3.トップ画面へ行く" + chr$(13)
48910 print "4.終了する" + chr$(13)
48920 color rgb(0,0,0)
48930 Print "番号を選んでください" + chr$(13)
48940 Input "番号:",SelectNo3
48950 if SelectNo3 = 4 then
48960 cls 3:ui_msg"終了します":talk "終了します":color rgb(255,255,255):end
48970 else
48980 Select case SelectNo3
48990 case 1:
49000  if keyboard_flag = 0 then
49010    keyboard_flag=1:init"kb:2"
49020    goto Keyboard_Setting:
49030  endif
49040 case 2:
49050    if keyboard_flag=1 then
49060    keyboard_flag=0:init"kb:0"
49070    goto Keyboard_Setting:
49080    endif
49090 case 3:
49100    goto Main_Screen1:
49110 case else:
49120    goto Keyboard_Setting:
49130 end Select
49140 endif
