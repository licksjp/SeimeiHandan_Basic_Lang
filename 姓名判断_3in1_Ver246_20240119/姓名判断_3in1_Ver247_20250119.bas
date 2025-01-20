'**************************************************
'初期設定項目                                     *
'メモリー定義                                     *
'2020.04.02開発再開 Ver176--Ver2.31:2021.10.1 一旦開発終了  *
'**************************************************
'**************************************************
'バージョン履歴                                   *
'Version1.77:Date 2020.04.0801                    *
'Version1.77:Date:2020.04.08.05                   *
'Version1.78:Date:2020.04.09.01                   *
'Version1.81:Date:2020.04.12.01                   *
'Version1.82:Date:2020.04.13.01                   *
'Version1.83:Date:2020.04.14.01                   *
'Version1.84:Date:2020.04.15.01                   *
'Version1.85:Date:2020.04.16.01                   *
'Version1.86:Date:2020.04.17.01                   *
'Version1.87:Date:2020.04.21.01                   *
'Version1.88:Date:2020.04.25.01                   *
'Version1.89:Date:2020.04.26.01                   *
'Version1.90:Date:2020.04.27.01(2 in 1開発終了)   *
'**************************************************
'Version1.91:(新しい流派を追加 3 in １ 開発開始):Date2020.05.01*
'Version1.92:Date:2020.05.02:霊遺伝姓名学追加   　*
'Version1.93:Date:2020.05.03                      *
'Version1.94:Date:2020.05.05                      *
'Version1.95:Date:2020.05.07                      *
'Version1.96:Date:2020.05.09                      *
'Version1.97:Date:2020.05.12                      *
'Version1.98:Date:2020.05.13                      *
'Version1.99:Date:2020.05.17                      *
'Version2.00:Date:2020.05.19                      *
'Version2.01:Date:2020.05.20                      *
'Version2.02:Date:2020.05.21                      *
'Version2.03:Date:2020.05.22                      *
'Version2.04:Date:2020.05.23                      *
'Version2.05:Date:2020.05.24                      *
'Version2.06:Date:2020.05.26                      *
'Version2.07:Date:2020.05.27                      *
'Version2.08:Date:2020.05.28                      *
'Version2.09:Date:2020.05.30                      *
'Version2.11:Date:2020.06.02                      *
'Version2.12:Date:2020.06.03                      *
'Version2.13:Date:2020.06.07                      *
'Version2.14:Date:2020.06.08                      *
'Version2.15:Date:2020.06.09                      *
'Version2.16:Date:2020.06.10                      *
'Version2.17:Date:2020.06.12                      *
'Version2.18:Date:2020.06.15                      *
'Version2.19:Date:2020.06.16                      *
'Version2.20:Date:2020.06.17                      *
'Version2.27:Date:2020.08.29                      *
'Version2.28:Date:2020.08.30                      *
'Version2.29:Date:2020.08.31                      *
'Version2.30:Date:2020.09.02                      *
'Version2.31:Date:2021.10.01                      *
'Year 2024年度
'Version2.34:Date:2024.10.20                      *
'Version2.35:Date:2024.10.27                      *
'Version2.36:Date:2024.11.03                      *
'Version2.37:Date:2024.11.10                      *
'Version2.38:Date:2024.11.17                      *
'Version2.39:Date:2024.11.24                      *
'Version2.40:Date:2024.12.01                      *
'Version2.41:Date:2024.12.08                      *
'Version2.42:Date:2024.12.15                      *
'Version2.43:Date:2024.12.22                      *
'Version2.44:Date:2024.12.29                      *
'Year 2025年度                                    *
'Version2.45:Date:2025.01.05                      *
'Version2.46:Date:2025.01.12                      *
'Version2.47:Date:2025.01.19                      *
'*****************************************************
'設定ファイル　漢字文字データ                     　 *
'Version:Mojidata20200411.dat Date:20200411          *
'Version:Mojidata20200415.dat Date:20200415          *
'Version:Mojidata20200506.dat Date:20200506          *
'Version:Mojidata20200513.dat Date:20200513          *
'Version:Mojidata20200516.dat Date:20200516          *
'Version:Mojidata_ReiIden20200829.dat:Date:20200829  *
'Version:Mojidata_ReiIden20200911.dat:Date:20200911  *
'*****************************************************
'* 開発再開　2024.9.20　Ver2.33                      *
'* 開発再開 Date:2024.09.20                          *
'*************************************************
'新機能
'Date:2020.05.27
'Parsonal_data.datに個人データーを保存機能追加
'*****************************************************
'メモリー確保 文字領域,数値データー                 *
'*****************************************************
clear 4*4000,4*1000000
'*****************************************************
'Screen 定義                                         *
'*****************************************************
Screen 1,1,1,1
'*****************************************************
'Sprite 定義                                        *
'****************************************************
'フォルダを変数にまとめる
'****************************************************
Gazo$ = "config/gazo/"
'****************************************************
Select$ = "selection.png"
'^&**************************************************
gload Gazo$ + Select$,1,10,100
gload Gazo$ + Select$,1,10,200
gload Gazo$ + Select$,1,10,300
gload Gazo$ + Select$,1,10,400
gload Gazo$ + Select$,1,10,500
sp_def 0,(10,100),32,32
sp_def 1,(10,200),32,32
sp_def 2,(10,300),32,32
sp_def 3,(10,400),32,32
sp_def 4,(10,500),32,32
'****************************************************
Parsonal_data$ = "Config/Parsonal_data/"
'*****************************************************
'改名チェック変数                                   *
'****************************************************
buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(400),buffname$(400)
'*****************************************************
'キーボードフラグ                                    *
'0:キーボード非表示                                  *
'1:キーボード表示                                    *
'*****************************************************
keyboard_flag = 0
'*****************************************************
'性別の選択用変数                                    *
'*****************************************************
dim sex_type$(2)
'*****************************************************
'相性占い　設定項目 ここから                         *
'*****************************************************
count=0:line_count=0
dim buffer_Aisyou_type$(10,10)
dim buffer_Kaimei_data_name$(10)
'*****************************************************
'改名チェックの選択肢の変数                          *
'*****************************************************
'1.フォルダ
'******************************************************
KANJI_DATA$ = "config/kanji_data"
'*****************************************************
'2.ファイル
'*****************************************************
MOJIDATA$ = "Mojidata_ReiIden20200911.png"
'*****************************************************
SELECT_LIST_FOLDER$="config/Selection/"
'*****************************************************
SELECT_LIST_FILE$ = "Selection.dat"
'*****************************************************
'FULL PASS:./config/Selection/Selection.dat
'*****************************************************
dim select$(3)
open SELECT_LIST_FOLDER$ + SELECT_LIST_FILE$ for input as #2
for i=0 to 2
input #2,select$(i)
next i
close #2
'select$(0)="改名リストに追加する"
'select$(1)="改名リストに追加しない"
'select$(2)="トップ画面に行く"
'*****************************************************
'総数を出す変数 改名チェック変数                     *
'dim buffer_total$                                   *
'1.理解し合える最良のカップル                        *
'*****************************************************
dim buf_good_couple1(20)
dim buf_good_couple2(20)
'dim buf_good_couple1$
'Dim buf_good_couple2$
'*****************************************************
'2.互いに自然体でつきあえるカップル                  *
'*****************************************************
dim buf_natural_couple1(20)
dim buf_natural_couple2(20)
'dim buf_natural_couple1$
'dim buf_natural_couple2$
'**************************************************
'3.男性にとって居心地の良いカップル               *
'**************************************************
dim buf_good_for_man1(20)
dim buf_good_for_man2(20)
'dim buf_good_for_man1$
'dim buf_good_for_man2$
'*****************************************************
'4.女性にとって居心地の良い相性                      *
'*****************************************************
dim buf_good_for_woman1(20)
dim buf_good_for_woman2(20)
'dim buf_good_for_woman1$
'dim buf_good_for_woman2$
'*****************************************************
'5.恋愛経験を重ねた後なら愛を育める                  *
'*****************************************************
dim buf_short_of_experience1(20)
dim buf_short_of_experience2(20)
'dim buf_short_of_experience1$
'dim buf_short_of_experience2$
'*****************************************************
'6.結婚への発展が困難なカップル                      *
'*****************************************************
dim buf_difficult_for_couple1(20)
dim buf_difficult_for_couple2(20)
'dim buf_difficult_for_couple1$
'dim buf_difficult_for_couple2$
'*****************************************************
'7.愛し方にズレが出てくる二人                        *
'*****************************************************
dim buf_difference_of_love1(20)
dim buf_difference_of_love2(20)
'dim buf_difference_of_love1$
'dim buf_difference_of_love2$
'*****************************************************
'相性占い　設定項目　ここまで
'*****************************************************
'8.互いの価値観が噛み合わない相性 ここから           *
'*****************************************************
dim buf_difference_of_KachiKan1(20)
dim buf_difference_of_KachiKan2(20)
'dim buf_difference_of_KachiKan1$
'dim buf_difference_of_KachiKan2$
'*****************************************************
'8.互いに価値観が噛み合わない相性 ここまで           *
'*****************************************************
'相性診断　相性パターン結果　ここから
dim Result_Aisyou_type$(8)
'*****************************************************
'相性診断 相性パターン結果 ここまで                  *
'*****************************************************
'2019/04/07 姓名判断アプリ 作成開始                  *
'姓名判断　 名前の総数での吉凶を調べる               *
'*****************************************************
buf_count = 0:buffer_count = 0:count = 0:buffer = 0
'*****************************************************
'合計文字数                                          *
'*****************************************************
totalmoji=0
dim buf_Input_data$(10),buf_Input_data2$(10)
dim bufer_name$(10),bufer_name2$(10)
dim buf_Input_name$(10),buf_Input_name2$(10)
'*****************************************************
'定数文字1画〜27画                                   *
'ファイルから各画数を読み込んで代入する。            *
'*****************************************************
'1行目だけ読み込む                                   *
'*****************************************************
KANJI_DATA$ = "config/Kanji_data/"
'*****************************************************
MOJIDATA$ = "Mojidata_ReiIden20200911.dat"
'*****************************************************
open KANJI_DATA$ + MOJIDATA$ for input as #2
for i=0 to 26
input #2,buf_lines$(i)
next i
close #2
'*****************************************************
Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
'1画
Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
'2画
Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
'3画
Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
'4画
Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
'5画
Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
'6画
Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
'7画
Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
'8画
Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
'9画
Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
'10画
Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
'11画
Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
'12画
Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
'13画
Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
'14画
Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
'15画
Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
'16画
Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
'17画
Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
'18画
Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
'19画
Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
'20画
Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
'21画
Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
'22画
Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
'23画
Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
'24画
Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
'25画
Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
'26画
Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
'27画
Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
dim Moji_data$(Moji_total+27+27)
'******************************************************
'dim bufmoji$(10),Input_data$(10)                     *
'１画の文字   サイズ:21+2(漢字)                       *
'******************************************************
dim buf_char_hiragana1$(Moji_1)
'******************************************************
'2画の文字  サイズ 58+14=72(漢字)                     *
'******************************************************
dim buf_char_hiragana2$(Moji_2)
'******************************************************
'3画の文字 サイズ:48+29=77(漢字)                      *
'******************************************************
dim buf_char_hiragana3$(Moji_3)
'******************************************************
'4画の文字 サイズ:29+51=80(漢字)                      *
'******************************************************
dim buf_char_hiragana4$(Moji_4)
'******************************************************
'５画の文字  サイズ:18+59=77(漢字)                    *
'******************************************************
dim buf_char_hiragana5$(Moji_5)
'******************************************************
'6画の文字  サイズ:79(漢字)                           *
'******************************************************
dim buf_char_hiragana6$(Moji_6)
'******************************************************
'7画の文字  サイズ:88(漢字)                           *
'******************************************************
dim buf_char_hiragana7$(Moji_7)
'******************************************************
'8画の文字                                            *
'******************************************************
dim buf_char_hiragana8$(Moji_8)
'******************************************************
'9画の文字                                            *
'******************************************************
dim buf_char_hiragana9$(Moji_9)
'******************************************************
'10画の文字 98文字                                    *
'******************************************************
dim buf_char_hiragana10$(Moji_10)
'******************************************************
'11画の文字                                           *
'******************************************************
dim buf_char_hiragana11$(Moji_11)
'******************************************************
'12画の文字                                           *
'******************************************************
dim buf_char_hiragana12$(Moji_12)
'******************************************************
'13画の文字 81文字                                    *
'******************************************************
dim buf_char_hiragana13$(Moji_13)
'******************************************************
'14画の文字                                           *
'******************************************************
dim buf_char_hiragana14$(Moji_14)
'******************************************************
'15画の文字                                           *
'******************************************************
dim buf_char_hiragana15$(Moji_15)
'******************************************************
'16画の文字                                           *
'******************************************************
dim buf_char_hiragana16$(Moji_16)
'******************************************************
'17画の文字                                           *
'******************************************************
dim buf_char_hiragana17$(Moji_17)
'******************************************************
'18画の文字                                           *
'******************************************************
dim buf_char_hiragana18$(Moji_18)
'******************************************************
'19画の文字
'******************************************************
dim buf_char_hiragana19$(Moji_19)
'******************************************************
'20画の文字
'******************************************************
dim buf_char_hiragana20$(Moji_20)
'******************************************************
'21画の文字
'******************************************************
dim buf_char_hiragana21$(Moji_21)
'******************************************************
'22画の文字
'******************************************************
dim buf_char_hiragana22$(Moji_22)
'******************************************************
'23画の文字
'*******************************************************
dim buf_char_hiragana23$(Moji_23)
'*******************************************************
'24画の文字
'*******************************************************
dim buf_char_hiragana24$(Moji_24)
'*******************************************************
'25画の文字
'*******************************************************
dim buf_char_hiragana25$(Moji_25)
'*******************************************************
'26画の文字
'*******************************************************
dim buf_char_hiragana26$(Moji_26)
'*******************************************************
'27画の文字
'*******************************************************
dim buf_char_hiragana27$(Moji_27)
'********************************************************
'結果表示1　吉凶データー 81パターン
dim buf_Kikkyo$(81)
'結果表示２
'安斎流姓名判断 吉凶  1.地運
dim buf_Kikkyo_Anzai_chiunn$(70)
'安斎流姓名判断　　吉凶  2.人運
dim buf_Kikkyo_Anzai_jinunn$(69)
'安斎流姓名判断 吉凶 3.外運
'dim buf_Kikkyo_Anzai_gaiunn$(70)
'安斎流姓名判断 吉凶　　4.総運
dim buf_Kikkyo_Anzai_total$(80)
'霊遺伝姓名学　変数
A=0
B=0
C=0
D=0
'1.先祖運
buffer_senzo=0
'2.性格運
buffer_seikaku=0
'3.愛情運
buffer_Aijyou=0
'4.行動運
buffer_Kouzou=0
'1-1.先祖運　和数
Senzo_wasu=0
'1-2.先祖運　生数
Senzo_seisu=0
'2-1.性格運 和数
Seikaku_wasu=0
'2-2.性格運 生数
Seikaku_seisu=0
'3-1.愛情運 和数
Aijyou_wasu=0
'3-2.愛情運 生数
Aijyou_seisu=0
'4-1 行動運 和数
Koudo_wasu=0
'4-2 行動運 生数
Koudo_seisu=0
'データー読み込み　ここから
'データー読み込み　1.ひらがな
'1画の文字   6文字 23文字
open KANJI_DATA$ + MOJIDATA$ for input as #1
'全ファイルを読み込む
for i = 0 to 26+Moji_total+27
input #1,Moji_data$(i)
next i
close #1
'全ファイル読み込み　ここまで
for i = 27+1 to (Moji_1)+27+1
'1画の文字にデーターをコピーする
buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
next i
'2画の文字    98文字
for i = Moji_Min_2  to (Moji_Max_2)
buf_char_hiragana2$(i-Moji_Min_2) = Moji_data$(i)
next i
'3文字の文字    77文字
for i = Moji_Min_3  to (Moji_Max_3)
buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
next i
'4文字の文字   80文字
for i = (Moji_Min_4)  to (Moji_Max_4)
buf_char_hiragana4$(i-Moji_Min_4) = Moji_data$(i)
next i
'5文字の文字 77文字
for i = Moji_Min_5 to (Moji_Max_5)
buf_char_hiragana5$(i - Moji_Min_5) = Moji_data$(i)
next i
'6文字の文字 79文字
for i = Moji_Min_6  to Moji_Max_6
buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
next i
'7文字の文字 170文字
for i = Moji_Min_7 to Moji_Max_7
buf_char_hiragana7$(i-Moji_Min_7) = Moji_data$(i)
next i
'8画の文字 120文字
for i = Moji_Min_8 to Moji_Max_8
buf_char_hiragana8$(i - Moji_Min_8) = Moji_data$(i)
next i
'9画の文字  103文字
for i = Moji_Min_9 to Moji_Max_9
buf_char_hiragana9$(i - Moji_Min_9) = Moji_data$(i)
next i
'10画の文字 285文字
for i = Moji_Min_10 to (Moji_Max_10)
buf_char_hiragana10$(i-Moji_Min_10) = Moji_data$(i)
next i
'11画の文字
for i = Moji_Min_11 to Moji_Max_11
buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
next i
'12画の文字
for i = Moji_Min_12 to Moji_Max_12
buf_char_hiragana12$(i-Moji_Min_12) = Moji_data$(i)
next i
'13画の文字 81
for i = Moji_Min_13 to Moji_Max_13
buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
next i
'14画の文字 66
for i = Moji_Min_14 to Moji_Max_14
buf_char_hiragana14$(i-Moji_Min_14) = Moji_data$(i)
next i
'15画の文字 59
'for i = Moji_Min_15 to (Moji_Max_15) - 1
for i=Moji_Min_15 to  Moji_Max_15
buf_char_hiragana15$(i-Moji_Min_15) = Moji_data$(i)
next i
'16画の文字 44
for i=Moji_Min_16 to Moji_Max_16
buf_char_hiragana16$(i-Moji_Min_16) = Moji_data$(i)
next i
'17画の文字
for i = Moji_Min_17 to Moji_Max_17
buf_char_hiragana17$(i-Moji_Min_17) = Moji_data$(i)
next i
'18画の文字
for i = Moji_Min_18 to Moji_Max_18
buf_char_hiragana18$(i-Moji_Min_18) = Moji_data$(i)
next i
'19画の文字 17文字
for i = Moji_Min_19 to Moji_Max_19
buf_char_hiragana19$(i-Moji_Min_19) = Moji_data$(i)
next i
'20 画の文字 13文字
for  i = Moji_Min_20 to Moji_Max_20
buf_char_hiragana20$(i-Moji_Min_20) = Moji_data$(i)
NEXT i
'21画の文字 6
for i = Moji_Min_21 to (Moji_Max_21)
buf_char_hiragana21$(i-Moji_Min_21) = Moji_data$(i)
next i
'22 画の文字 4
for i = Moji_Min_22 to Moji_Max_22
buf_char_hiragana22$(i-Moji_Min_22) = Moji_data$(i)
next i
'23画の文字  3文字
for i = Moji_Min_23 to Moji_Max_23
buf_char_hiragana23$(i-Moji_Min_23) = Moji_data$(i)
next i
'24画の文字  3文字
for i = Moji_Min_24 to Moji_Max_24
buf_char_hiragana24$(i-Moji_Min_24) = Moji_data$(i)
next i
'25 画の文字 4
for i = Moji_Min_25 to Moji_Max_25
buf_char_hiragana25$(i-Moji_Min_25) = Moji_data$(i)
next i
'26画の文字  3文字
for i = Moji_Min_26 to Moji_Max_26
buf_char_hiragana26$(i-Moji_Min_26) = Moji_data$(i)
next i
'27画の文字  3文字
for i = Moji_Min_27 to Moji_Max_27
buf_char_hiragana27$(i-Moji_Min_27) = Moji_data$(i)
next i
'吉凶データー読み込み
'*********************************************************
'フォルダ
'*********************************************************
'ファイル
'*********************************************************
'FULL PATH:"./config/Kikkyo_data/Kikkyo_data.dat"
'*********************************************************
KIKKYO_DATA_FOLDER$ = "config/Kikkyo_data/"
'*********************************************************
KIKKYO_DATA_FILE$ = "Kikkyo_data.dat"
'*********************************************************
open KIKKYO_DATA_FOLDER$ + KIKKYO_DATA_FILE$ for input as #1
for i=0 to 80
input #1,buf_Kikkyo$(i+1)
next i
close #1
'******************************************************
'FULL PATH:"config/Kikkyo_data/Kikkyo_data.data"
'******************************************************
ANZAI_KIKKYO_CHIUNN_FILE$ = "Anzai_Kikkyo_chiunn.dat"
'******************************************************
open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_CHIUNN_FILE$ for input as #2
for m=0 to 69
input #2,buf_Kikkyo_Anzai_chiunn$(m)
next m
close #2
'******************************************************
'FULL PAT:"./config/Kikkyo_data/Kikkyo_jiunn.dat"
'******************************************************
KIKKYO_JINUNN$ = "Anzai_Kikkyo_Jinunn.dat"
'******************************************************
open KIKKYO_DATA_FOLDER$ + KIKKYO_JINUNN$ for input as #3
for i=1 to 70
input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
next i
close #3
'************************************************************
'FULL PATH="./config/Kikkyo_data/Anzai_Kikkyo_Total.dat"
'      ====>   KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$
'*************************************************************
'KIKKYO_DATA_FOLDER$ = "./config/Kikkyo_data/" (共通フォルダ)
'*************************************************************
ANZAI_KIKKYO_FILE$ = "Anzai_Kikkyo_Total.dat"
'**************************************************************
open KIKKYO_DATA_FOLDER$ + ANZAI_KIKKYO_FILE$ for input as #4
for i=0 to 79
input #4,buf_Kikkyo_Anzai_total$(i)
next i
close #4
'****************************************************
'1.理解し合える最良のカップル　ここから           　*
'****************************************************
'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
'GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
'FULL PATH="config/Anzai_Aisyou/Good_Couple1.dat"
'****************************************************
ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
GOOD_COUPLE1_FILE$ = "Good_Couple1.dat"
open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE1_FILE$ for input as #1
for i=0 to 19
input #1,buf_good_couple1$
buf_good_couple1(i) = val(buf_good_couple1$)
next i
close #1
'********************************************************
'FULL PATH = "config/Anzai_Aisyou/Good_Couple2.dat"
'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
'GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
'********************************************************
GOOD_COUPLE2_FILE$ = "Good_Couple2.dat"
open ANZAI_AISYOU_FOLDER$ + GOOD_COUPLE2_FILE$ for input as #1
for j=0 to 19
input #1,buf_good_couple2$
buf_good_couple2(j) = val(buf_good_couple2$)
next j
close #1
'*****************************************************
'1.理解し合える最良のカップル ここまで                                   *
'*****************************************************
'*****************************************************
'2.互いに自然体でつきあえる二人　ここから                               *
'*****************************************************
'*****************************************************
'FULL PATH = "config/Anzai_Aisyou/Natural_Couple1.dat"
'ANZAI_AISYOU_FOLDER$ = "config/Anzai_Aisyou/"
'NATURAL_COUPLE_FILE$ ="Natural_Couple1.dat"
'NATURAL_COUPLE2_FILE$="Natural_Couple2.dat"
'*****************************************************
NATURAL_COUPLE_FILE$ = "Natural_Couple1.dat"
NATURAL_COUPLE2_FILE$ = "Natural_Couple2.dat"
'*****************************************************
open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE_FILE$ for input as #1
for i=0 to 19
input #1,buf_natural_couple1$
buf_natural_couple1(i) = val(buf_natural_couple1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + NATURAL_COUPLE2_FILE$ for input as #1
for j=0 to 19
input #1,buf_natural_couple2$
buf_natural_couple2(j) = val(buf_natural_couple2$)
next j
close #1
'*****************************************************
'2.互いに自然体でつきあえる二人　ここまで                               *
'*****************************************************
'3.男性にとって居心地の良い相性                                      *
'*****************************************************
'******************************************************
'FULL PATH="config/Anzai_Aisyou/Good_for_man1.dat"
'FULL PATH="config/Anzai_Aisyou/Good_for_man2.dat"
'GOOD_FOR_MAN_FILE$="God_for_man1.dat"
GOOD_FOR_MAN1_FILE$ = "Good_for_man1.dat"
GOOD_FOR_MAN2_FILE$ = "Good_for_man2.dat"
'******************************************************
open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN1_FILE$ for input as #1
for i=0 to 19
input #1,buf_good_for_man1$
buf_good_for_man1(i) = val(buf_good_for_man1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_MAN2_FILE$ for input as #1
for j=0 to 19
input #1,buf_good_for_man2$
buf_good_for_man2(j) = val(buf_good_for_man2$)
next j
close #1
'******************************************************
'3.男性にとって居心地の良いカップル             　　                   　*
'******************************************************
'4.女性にとって居心地の良いカップル                                   *
'******************************************************
'FULL PATH = "config/Anzai_Aisyou/Good_for_woman1.dat"
'GOOD_FOR_WOMAN1_FILE$="Good_for_woman1.dat"
'GOOD_FOR_WOMAN2_FILE$="Good_for_woman2.dat"
GOOD_FOR_WOMAN1_FILE$ = "Good_for_woman1.dat"
GOOD_FOR_WOMAN2_FILE$ = "Good_for_woman2.dat"
'*******************************************************
open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN1_FILE$ for input as #1
for i=0 to 19
input #1,buf_good_for_woman1$
buf_good_for_woman1(i) = val(buf_good_for_woman1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + GOOD_FOR_WOMAN2_FILE$ for input as #1
for j=0 to 19
input #1,buf_good_for_woman2$
buf_good_for_woman2(j) = val(buf_good_for_woman2$)
next j
close #1
'******************************************************
'4.女性にとって居心地の良い相性                   　  *
'******************************************************
'5.恋愛経験を重ねた後なら愛を育める                   *
'******************************************************
'SHORT_OF_EXPERIENCE1_FILE$ = "Short_of_experience1.dat"
'SHORT_OF_EXPERIENCE2_FILE$ ="Short_of_experience2.dat"
'******************************************************
SHORT_OF_EXPERIENCE1_FILE$="Short_of_experience1.dat"
SHORT_OF_EXPERIENCE2_FILE$="Short_of_experience2.dat"
'*******************************************************
open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE1_FILE$ for input as #1
for i=0 to 19
input #1,buf_short_of_experience1$
buf_short_of_experience1(i) = val(buf_short_of_experience1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + SHORT_OF_EXPERIENCE2_FILE$ for input as #1
for j=0 to 19
input #1,buf_short_of_experience2$
buf_short_of_experience2(j) = val(buf_short_of_experience2$)
'buf_short_of_experience2(j)=val(buf_short_of_experience2$(j))
next j
close #1
'******************************************************
'5 恋愛経験を重ねた後なら愛を育める                   *
'******************************************************
'6.結婚への発展が困難なカップル  ここから             *
'**********************************************************
'DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
'DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
'**********************************************************
DIFFICULT_FOR_COUPLE1_FILE$ = "Difficult_for_Couple1.dat"
DIFFICULT_FOR_COUPLE2_FILE$ = "Difficult_for_Couple2.dat"
'**********************************************************
open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE1_FILE$ for input as #1
for i=0 to 19
input #1,buf_difficult_for_couple1$
buf_difficult_for_couple1(i) = val(buf_difficult_for_couple1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + DIFFICULT_FOR_COUPLE2_FILE$ for input as #1
for j=0 to 19
input #1,buf_difficult_for_couple2$
buf_difficult_for_couple2(j) = val(buf_difficult_for_couple2$)
next j
close #1
'******************************************************
'6.結婚への発展が困難なカップル  ここまで             *
'******************************************************
'7.愛し方にズレが出る二人 ここから                    *
'**********************************************************
'FULL PATH = "config/Anzai_Aisyou/Differece_of_love1.dat"
'DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
'DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
'***********************************************************
DIFFERENCE_OF_LOVE1_FILE$ = "Difference_of_love1.dat"
DIFFERENCE_OF_LOVE2_FILE$ = "Difference_of_love2.dat"
open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE1_FILE$ for input as #1
for i=0 to 19
input #1,buf_difference_of_love1$
buf_difference_of_love1(i) = val(buf_difference_of_love1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_LOVE2_FILE$ for input as #1
for j=0 to 19
input #1,buf_difference_of_love2$
buf_difference_of_love2(j) = val(buf_difference_of_love2$)
next j
close #1
'******************************************************
'7.愛し方にズレが出る二人 ここまで                    *
'******************************************************
'8.互いの価値観が噛み合わない相性 ここから            *
'**************************************************************
'DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
'DIFFRRENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
'**************************************************************
DIFFERENCE_OF_KACHIKAN1_FILE$ = "Difference_of_Kachikan1.dat"
DIFFERENCE_OF_KACHIKAN2_FILE$ = "Difference_of_Kachikan2.dat"
'**************************************************************
open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN1_FILE$ for input as #1
for i=0 to 19
input #1,buf_difference_of_KachiKan1$
buf_difference_of_KachiKan1(i) = val(buf_difference_of_KachiKan1$)
next i
close #1
open ANZAI_AISYOU_FOLDER$ + DIFFERENCE_OF_KACHIKAN2_FILE$ for input as #1
for j=0 to 19
input #1,buf_difference_of_KachiKan2$
buf_difference_of_KachiKan2(j) = val(buf_difference_of_KachiKan2$)
next j
close #1
'******************************************************
'8.互いの価値観が噛み合わない相性 ここまで            *
'******************************************************
'相性占いタイプ ここから                              *
'******************************************************
'RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
RESULT_AISYOU_TYPE_FILE$ = "Result_Aisyou_type.dat"
'******************************************************
open ANZAI_AISYOU_FOLDER$ + RESULT_AISYOU_TYPE_FILE$ for input as #1
for i=0 to 7
line input #1,Result_Aisyou_type$(i)
next i
close #1
'****************************************************
'Data文  ここから                                　 *
'****************************************************
'1.理解し合えるカップル　ここから                   *
'****************************************************
'data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
'data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
'****************************************************
'1.理解し合えるカップル　ここまで                   *
'****************************************************
'2.互いに自然体でつきあえるカップル ここから        *
'****************************************************
'data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
'data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
'****************************************************
'2.互いに自然体でつきあえるカップル　ここまで        *
'****************************************************
'3.男性にとって居心地の良いカップル  ここから       *
'****************************************************
'data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
'data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
'****************************************************
'3.男性にとって居心地の良いカップル ここまで        *
'****************************************************
'4.女性にとって居心地の良いカップル  ここから       *
'****************************************************
'data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
'data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
'****************************************************
'4.女性にとって居心地の良いカップル  ここまで       *
'****************************************************
'5.恋愛経験を重ねた後なら愛を育める ここから        *
'****************************************************
'data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
'data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
'****************************************************
'5.恋愛経験を重ねた後なら愛を育める ここまで        *
'****************************************************
'6.結婚への発展が困難なカップル ここから            *
'****************************************************
'data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
'data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
'****************************************************
'6.結婚への発展が困難なカップル ここまで            *
'****************************************************
'7.愛し方にズレが生じる二人  ここから               *
'****************************************************
'data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
'data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
'****************************************************
'7.愛し方にずれが生じる二人  ここまで                               *
'****************************************************
'8.互いに価値観が噛み合わない相性　ここから                             *
'****************************************************
'data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
'data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
'****************************************************
'8.互いに価値観が噛み合わない相性 ここまで         *
'****************************************************
'相性占い結果パターン ここから                    　*
'****************************************************
'0:理解し合える最良のカップル                        *
'****************************************************
'data "理解し合える最良のカップル"
'****************************************************
'1:互いに自然体で付き合えるカップル                 *
'****************************************************
'data "互いに自然体でつきあえるカップル"
'****************************************************
'2:男性にとって居心地の良い相性                   　*
'****************************************************
'data "男性にとって居心地の良い相性"
'****************************************************
'3:女性にとって居心地の良い相性                   　*
'****************************************************
'data "女性にとって居心地の良い相性"
'****************************************************
'4:恋愛経験を重ねた後なら愛を育める                 *
'****************************************************
'data "恋愛経験を重ねた後なら愛を育める"
'****************************************************
'5:結婚への発展が困難なカップル                     *
'****************************************************
'data "結婚への発展が困難なカップル"
'****************************************************
'6:愛し方にズレが生じる二人                         *
'****************************************************
'data "愛し方にずれが生じる二人"
'****************************************************
'7:互いに価値観が噛み合わない相性                   *
'****************************************************
'data "互いの価値観が噛み合わない相性"
'************************************************
'Data文   ここまで                              *
'************************************************
'相性占い結果パターン ここまで
'*******************************
'*****************************************************
'メイン画面 Top画面1
Main_Screen1:
cls 3:talk "":font 48:color rgb(255,255,255)
talk "メイン画面です。番号を選んでください"
'グラフィック領域　ここから
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,560),rgb(127,255,212),bf
pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
line (0,560)-(1080,740),rgb(0,255,0),bf
'グラフィック領域 ここまで
pen 5:line (0,557)-(1077,737),rgb(0,0,255),b
Font 48
'************************************************
'Sprite                                         *
'************************************************
sp_on 0,1:sp_on 1,0:sp_on 2,0
sp_put 0,(10,100),0,0
'************************************************
No=0:init"kb:4":y=0:key$="":bg=0
print "◎姓名判断　メイン画面" + chr$(13)
'************************************************
'文字色:黒                                          *
'************************************************
color rgb(255,0,255)
print " :1.姓名判断" + chr$(13)
print " :2.姓名判断の設定" + chr$(13)
print " :3.個人データーリスト" + chr$(13)
print " :4.ヘルプ" + chr$(13)
print " :5.プログラムの終了" + chr$(13)
'*************************************************
'文字:黒                                            *
'*************************************************
color rgb(0,0,0)
locate 0,12
print "1.姓名判断を選択" + chr$(13)
Main_Screen2:
y=0:key$="":bg=0
while (key$ <> chr$(13) and key$ <> chr$(31) and key$<> chr$(30) and y <> 1 and y <> -1 and bg <> 2)
y=stick(1)
key$=inkey$
bg=strig(1)
pause 2.55*100
wend
'**************************************************
'1.下のキー  ここから
'**************************************************
if (y = 1 or key$ = chr$(31)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                 ":locate 0,12:print "3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                          ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
case 3:
No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                 ":locate 0,12:print"5.プログラムを終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
case 4:
No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                 ":locate 0,12:print "1.姓名判断を選択": sp_put 0,(10,100),0,0:goto Main_Screen2:
end select
endif
'***************************************************
'1. 下のキー　ここまで
'***************************************************
'***************************************************
'2.上のキー ここから
'***************************************************
if (key$ = chr$(30) or y = -1) then
select case No
case 0:
No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print "                 ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto Main_Screen2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:locate 0,12:print "                      ":locate 0,12:print"1.姓名判断を選択":beep:sp_put 0,(10,100),0,0:goto Main_Screen2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                  ":locate 0,12:print "2.姓名判断の設定を選択":sp_put 1,(10,200),1,0:goto Main_Screen2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                   ":LOCATE 0,12:print"3.個人データーリストを選択":sp_put 2,(10,300),2,0:goto Main_Screen2:
case 4:
No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                  ":locate 0,12:print "4.ヘルプを選択":sp_put 3,(10,400),3,0:goto Main_Screen2:
end select
endif
'***************************************************
'3.決定ボタン ここから
'***************************************************
if (bg = 2 or key$ = chr$(13)) then
select case No
case 0:
sp_on 0,0:goto seimeihandan_top:
case 1:
sp_on 1,0:goto seimeihandan_setting:
case 2:
sp_on 2,0:goto Parsonal_data_top:
case 3:
sp_on 3,0: goto help:
case 4:
sp_on 4,0:talk "プログラムを終了します。":cls 3:cls 4:color rgb(255,255,255):font 32:end
end select
endif
'***************************************************
'3.決定ボタン ここまで
'***************************************************
'1.姓名判断トップ画面
seimeihandan_top:
cls:talk ""
No=0:y=0:key$="":bg=0:talk""
'タイトル文字:白
font 48:color rgb(255,255,255),,rgb(176,196,222)
talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでください"
sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0
sp_put 0,(10,100),0,0
'グラフィック 描画領域　ここから
cls 3
'1.Title:青
'Line 1
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
'Line 2
line (0,60)-(1080,450),rgb(127,255,212),bf
PEN 5:line(0,57)-(1077,447),rgb(0,0,255),b
'Line 3
line (0,450)-(1080,600),rgb(0,255,0),bf
pen 5:line (0,447)-(1077,597),rgb(0,0,255),b
'グラフィック 描画領域 ここまで
color rgb(255,255,255)
print"◎姓名判断の種類トップメニュー"+chr$(13)
color rgb(255,0,255):print" :1.霊遺伝姓名学(1種類の占い)"+chr$(13)
color rgb(255,0,255):print" :2.安斎流姓名判断(3種類の占い)"+chr$(13)
COLOR rgb(255,0,255):print" :3.九星姓名判断(3種類の占い)"+chr$(13)
COLOR rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
color rgb(0,0,0):locate 0,10:Print"1.霊遺伝姓名学を選択"
seimeihandan_top2:
y=0:key$="":bg=0
while (y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and y <> 1 and bg <> 2)
key$=inkey$
y=stick(1)
bg=strig(1)
pause 2.55*100
wend
'*************************************************
'下のキー  ここから
'*************************************************
if (key$ = chr$(31) or y = 1) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                             ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                             ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                             ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
case 3:
No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
end select
endif
'*************************************************
'下のキー　ここまで
'*************************************************
if (key$ = chr$(30) or y = -1) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                               ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                               ":locate 0,10:print "1.霊遺伝姓名学を選択":sp_put 0,(10,100),0,0:goto seimeihandan_top2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                               ":locate 0,10:print "2.安斎流姓名判断を選択":sp_put 1,(10,200),1,0:goto seimeihandan_top2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                               ":locate 0,10:print "3.九星姓名判断を選択":sp_put 2,(10,300),2,0:goto seimeihandan_top2:
end select
endif
'*************************************************
'決定ボタン　ここから
'*************************************************
if (bg = 2 or key$ = chr$(13)) then
select case No
case 0:
sp_on 0,0:goto Reiden_Top_Input_Sextype:
case 1:
sp_on 1,0:goto Anzai_Top:
case 2:
sp_on 2,0:goto Kyusei_Top:
case 3:
sp_on 3,0:goto Main_Screen1:
end select
endif
'*************************************************
'決定ボタン　ここまで
'*************************************************
'１．姓名判断(九星姓名判断トップ)
'グラフィック領域　ここから
Kyusei_Top:
cls 3:No = 0:y = 0:bg = 0:key$ = "":talk""
sp_on 0,1:sp_put 0,(10,100),0,0
line (0,0)-(1080,60),rgb(0,0,250),bf
pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,460),rgb(127,255,212),bf
pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
line (0,460)-(1080,680),rgb(0,255,0),bf
pen 5:line(0,457)-(1077,677),rgb(0,0,255),b
'グラフィック領域　ここまで
font 48:color rgb(255,255,255),,rgb(176,196,222)
talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)"+chr$(13)
color rgb(255,0,255):print" :1.人名の吉凶を見る"+chr$(13)
color rgb(255,0,255):print" :2.ニックネームチェック"+chr$(13)
color rgb(255,0,255):print" :3.名前の陰陽を見る"+chr$(13)
color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
locate 0,10:color RGB(0,0,0)
print "1.人名の吉凶を見るを選択"
Kyusei_Top2:
bg = 0:key$ = "":y = 0
while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$ <> chr$(31) and key$ <> chr$(13) and bg <> 2)
key$ = inkey$
y = stick(1)
bg = strig(1)
pause 2.50 * 100
wend
'****************************************************
'下のキー　ここから
'*****************************************************
if (y = 1 or key$ = chr$(30)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                          ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                          ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
case 3:
No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0:goto Kyusei_Top2:
end select
endif
'*****************************************************
'下のキー　ここまで
'*****************************************************
'*****************************************************
'上のキー　ここから
'*****************************************************
if (y = -1 or key$ = chr$(31)) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                           ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Kyusei_Top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                            ":locate 0,10:print "1.人名の吉凶を見るを選択":sp_put 0,(10,100),0,0:goto Kyusei_Top2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                           ":locate 0,10:print "2.ニックネームチェックを選択":sp_put 1,(10,200),1,0:goto Kyusei_Top2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                           ":locate 0,10:print "3.名前の陰陽を見るを選択":sp_put 2,(10,300),2,0:goto Kyusei_Top2:
end select
endif
'*****************************************************
'上のキー　ここまで
'*****************************************************
'*****************************************************
'決定ボタン　ここから
'*****************************************************
if (key$ = chr$(13) or bg = 2) then
select case No
case 0:
sp_on 0,0:goto Parson_name_kikkyo:
case 1:
sp_on 1,0:goto nick_name_check:
case 2:
sp_on 2,0:goto name_inyo_check:
case 3:
sp_on 3,0:goto seimeihandan_top:
end select
endif
'*****************************************************
'決定ボタン　ここまで
'*****************************************************
'2.姓名判断 安斎流姓名判断　トップ画面
'2-1名前の姓の部分を入力
'グラフィック領域　ここから
Anzai_Top_Screen:
cls 3:LINE (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,260),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,257),rgb(0,0,255),b
line (0,260) - (1080,350),rgb(0,255,0),bf
pen 5:line(0,257) - (1077,347),rgb(0,0,255),b
font 48:talk "":init "KB:2"
'グラフィック領域 ここまで
color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
COLOR rgb(255,0,255)
print"名前を2回に分けて入力してください"+chr$(13)
print"名前の姓の部分を入れてください"+chr$(13)
color rgb(0,0,0)
input"名前の姓:",bufname$
buff1=len(bufname$)
'2-2名前の名の部分を入力
'グラフィック描画領域　ここから
cls 3:init"kb:2"
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,200),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,197),rgb(0,0,255),b
line (0,200) - (1080,260),rgb(0,255,0),bf
pen 5:line(0,197) - (1077,257),rgb(0,0,255),b
'グラフィック描画領域 ここまで
COLOR rgb(255,255,255)
cls:print"安斎流姓名判断トップメニュー"+chr$(13)
talk"つぎに、名前のめいの部分を入れてください"
color rgb(255,0,255)
print"名前の名の部分を入れてください"+chr$(13)
color rgb(0,0,0)
input"名前の名:",bufname2$
buff2 = len(bufname2$)
bufff = buff1 + buff2
select case bufff
'姓1文字,名1文字
case 2:
cls
'天運:buf_tenunn
buf_tenunn = char_count(bufname$)
'地運:buf_chiunn
buf_chiunn = char_count(bufname2$)
'人運 = 天運 + 地運
buf_jinunn = buf_tenunn + buf_chiunn
'外運 = 天運 + 人運
buf_gaiunn = buf_tenunn + buf_chiunn
'総数=buf_gaiunn
buf_total = buf_gaiunn
goto Result_Anzai:
'姓１，名:2
case 3:
cls:
if buff1 = 1 and buff2 = 2 then
'1.天運:buf_tenunn
buf_tenunn = char_count(bufname$)
'2文字目の文字
bufer_name2$(0) = Mid$(bufname2$,1,1)
'3文字目の文字
bufer_name2$(1) = Mid$(bufname2$,2,1)
'2.人運
buf_jinunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
'3.地運:buf_chiunn
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
'4外運:buf_gaiunn
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
'5.総数:buf_total
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
goto Result_Anzai:
endif
if buff1 = 2 and buff2 = 1 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name2$(0) = Mid$(bufname$,1,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
'2.人運
buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(0))
'5.総数
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
goto Result_Anzai:
endif
case 4:
if buff1 = 2 and buff2 = 2 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
'2.人運
buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1))
'5.総数
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
goto Result_Anzai:
endif
'パターン2 姓3文字 名1文字 total4文字
if buff1 = 3 and buff2 = 1 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name$(2) = Mid$(bufname$,3,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
'2.人運
buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
'3.地運
buf_chiunn=char_count(bufer_name2$(0))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
'5.総運
buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
goto Result_Anzai:
endif
'パターン３ 姓1,名３  合計４文字
if buff1=1 and buff2=3 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
bufer_name2$(2) = Mid$(bufname2$,3,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0))
'2.人運
buf_jinunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
goto Result_Anzai:
endif
case 5:
'５文字の名前
'1.  3文字姓 2字名
if buff1 = 3 and buff2 = 2 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name$(2) = Mid$(bufname$,3,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
'2.人運
buf_jinunn = char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
goto Result_Anzai:
endif
if buff1 = 2 and buff2 = 3 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
bufer_name2$(2) = Mid$(bufname2$,3,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
'2.人運
buf_jinunn = char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
goto Result_Anzai:
endif
if buff1 = 4 and buff2 = 1 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = mid$(bufname$,2,1)
bufer_name$(2) = mid$(bufname$,3,1)
bufer_name$(3) = mid$(bufname$,4,1)
bufer_name2$(0) = mid$(bufname2$,1,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
'2.人運
buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(0))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
goto Result_Anzai:
endif
case 6:
'3字姓 3字名
if buff1 = 3 and buff2 = 3 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name$(2) = Mid$(bufname$,3,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
bufer_name2$(2) = Mid$(bufname2$,3,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
'2.人運
buf_jinunn = char_count(bufer_name$(2)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
goto Result_Anzai:
endif
'4字姓 2字名
if buff1 = 4 and buff2 = 2 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name$(2) = Mid$(bufname$,3,1)
bufer_name$(3) = Mid$(bufname$,4,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
'2.人運
buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
'3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1))
goto Result_Anzai:
endif
'4字姓 3字名
case 7:
if buff1 = 4 and buff2 = 3 then
bufer_name$(0) = Mid$(bufname$,1,1)
bufer_name$(1) = Mid$(bufname$,2,1)
bufer_name$(2) = Mid$(bufname$,3,1)
bufer_name$(3) = Mid$(bufname$,4,1)
bufer_name2$(0) = Mid$(bufname2$,1,1)
bufer_name2$(1) = Mid$(bufname2$,2,1)
bufer_name2$(2) = Mid$(bufname2$,3,1)
'1.天運
buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3))
'2.人運
buf_jinunn = char_count(bufer_name$(3)) + char_count(bufer_name2$(0))
' 3.地運
buf_chiunn = char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2)) + char_count(bufer_name2$(3))
'4.外運
buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
'5.総運
buf_total = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2)) + char_count(bufer_name$(3)) + char_count(bufer_name2$(0)) + char_count(bufer_name2$(1)) + char_count(bufer_name2$(2))
goto Result_Anzai:
endif
case else:
end select
'2.設定
seimeihandan_setting:
font 46:color rgb(0,0,0),,rgb(176,196,222)
No=0:y=0:key$="":bg=0:talk""
sp_on 0,1:sp_put 0,(10,100),0,0
talk"設定画面です。番号を選んでエンターキーを押してください"
'グラフィック領域　ここから
cls 3:
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,560),rgb(127,255,212),bf
pen 5:line (0,57)-(1077,557),rgb(0,0,255),b
line (0,560)-(1080,750),rgb(0,255,0),bf
pen 5:line(0,557)-(1077,747),rgb(0,0,255),b
'グラフィック領域 ここまで
'1行目　文字色　 白
color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
color rgb(255,0,255):print" :1.登録文字の確認"+chr$(13)
color rgb(255,0,255):print" :2.登録文字数の表示"+chr$(13)
color rgb(255,0,255):print" :3.画数で吉凶を見る"+chr$(13)
color rgb(255,0,255):print" :4.前の画面に戻る"+chr$(13)
color rgb(255,0,255):PRINT" :5.プログラムの終了"+chr$(13)
COLOR rgb(0,0,0):locate 0,12:
print"1.登録文字の確認を選択"+chr$(13)
seimeihandan_setting2:
y=0:key$="":bg=0
while (y <> -1 and y <> 1 and bg <> 2 and key$ <> chr$(13) and key$ <> chr$(30) and key$ <> chr$(31))
key$ = inkey$
y = stick(1)
bg = strig(1)
pause 2.50 * 100
wend
'****************************************************
'1.下のカーソル　ここから
'****************************************************
if (key$ = chr$(31) or y = 1) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                            ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.画数で吉凶を見るを選択": sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
case 3:
No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                             ":locate 0,12:print "5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
case 4:
No=0:sp_on 0,1:sp_on 4,0:beep:LOCATE 0,12:print "                               ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
end select
endif
'*****************************************************
'1.下のカーソル　ここまで
'*****************************************************
'*****************************************************
'2.上のカーソル　ここから
'*****************************************************
if (key$ = chr$(30) or y = -1) then
select case No
case 0:
No=4:sp_on 4,1:sp_on 0,0:beep:locate 0,12:print"                                                            ":locate 0,12:print"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto seimeihandan_setting2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "1.登録文字の確認を選択":sp_put 0,(10,100),0,0:goto seimeihandan_setting2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "2.登録文字数の表示を選択":sp_put 1,(10,200),1,0:goto seimeihandan_setting2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "3.画数で吉凶を見るを選択":sp_put 2,(10,300),2,0:goto seimeihandan_setting2:
case 4:
No=3:sp_on 3,1:sp_on 4,0:beep:locate 0,12:print "                                                            ":locate 0,12:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto seimeihandan_setting2:
end select
endif
'******************************************************
'2.上のカーソル　ここまで
'******************************************************
'******************************************************
'3.決定ボタン　ここから
'******************************************************
if (key$ = chr$(13) or bg = 2) then
select case No
case 0:
sp_on 0,0:goto Entry_moji_Top:
case 1:
sp_on 1,0:goto Entry_moji_check:
case 2:
sp_on 2,0:goto Moji_Kikkyo_Top:
case 3:
sp_on 3,0:goto Main_Screen1:
case 4:
sp_on 4,0:talk "プログラムを終了します":cls 4:cls 3:font 32:color rgb(255,255,255):end
end select
endif
'******************************************************
'3.決定ボタン　ここまで
'******************************************************
'3 番号で吉凶を見る 入力
Moji_Kikkyo_Top:
font 46:color rgb(0,0,0),,rgb(176,196,222)
init "kb:2"
'グラフィック描画領域　ここから
cls 3:talk""
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,255),rgb(127,255,212),bf
PEN 5:line(0,57)-(1077,252),rgb(0,0,255),b
line (0,255)-(1080,350),rgb(0,255,0),bf
pen 5:line(0,252)-(1077,347),rgb(0,0,255),b
'グラフィック描画領域 ここまで
color rgb(255,255,255)
print"画数での吉凶判定"+chr$(13)
color rgb(255,0,255)
print"画数を入れてください"+chr$(13)
print"(Max:81文字)"+chr$(13)
color rgb(0,0,0)
Input"文字の画数:",Number
if Number > 81 then goto Moji_Kikkyo_Top:
if Number <=81 then goto Moji_Kikkyo:
'3.番号で吉凶を見る 結果表示
'グラフィック描画領域　ここから
Moji_Kikkyo:
cls 3:init "kb:4":key$ = "":bg = 0
line (0,0)-(700,60),rgb(0,0,255),bf
PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
line (0,60)-(700,260),rgb(127,255,212),bf
pen 5:line(0,57)-(697,257),rgb(0,0,255),b
line (0,260)-(700,350),rgb(0,255,0),bf
pen 5:line(0,257)-(697,347),rgb(0,0,255),b
'グラフィック描画領域　ここまで
color rgb(255,255,255)
print "画数で吉凶を求める"+chr$(13)
color rgb(255,0,255)
talk str$(Number) + "画のきっきょうは、" + buf_Kikkyo$(Number+2) + "です"
print"画数:";Number;chr$(13):print "吉凶:";buf_Kikkyo$(Number+2);chr$(13)
while (key$<>chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
If (key$ = chr$(13) or bg = 2) then goto seimeihandan_setting:
'3.ヘルプ
help:
cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222):
No = 0:y = 0:key$ = "":bg = 0
talk""
'描画領域 ここから
line (0,0) - (1080,60),rgb(0,0,255),bf
sp_on 0,1:sp_put 0,(10,100),0,0
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,570),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,567),rgb(0,0,255),b
line (0,570) - (1080,650),rgb(0,255,0),bf
pen 5:line(0,567) - (1077,647),rgb(0,0,255),b
'描画領域　ここまで
talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
color rgb(255,255,255):print "姓名判断　ヘルプ" + chr$(13)
color rgb(255,0,255):print " :1.バージョン情報" + chr$(13)
color rgb(255,0,255):print " :2.参考文献" + chr$(13)
color rgb(255,0,255):print " :3.設定変更" + chr$(13)
color rgb(255,0,255):print " :4.トップ画面に戻る" + chr$(13)
color rgb(255,0,255):PRINT " :5.プログラムの終了" + chr$(13)
color rgb(0,0,0)
locate 0,12:print "1.バージョン情報を選択"
help2:
y = 0:key$ = "":bg = 0
while (y <> 1 and y <> -1 and key$ <> chr$(30) and key$<> chr$(31) and key$ <> chr$(13) and bg <> 2)
key$ = inkey$
y = stick(1)
bg = strig(1)
pause 2.50 * 100
wend
if (y = 1 or key$ = chr$(30)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,12:print "                           ":locate 0,12:print "2.参考文献を選択":sp_put 1,(10,200),1,0:goto help2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                            ":locate 0,12:print "3.設定変更を選択":sp_put 2,(10,300),2,0:goto help2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                             ":locate 0,12:print "4.トップ画面に戻るを選択": sp_put 3,(10,400),3,0:goto help2:
case 3:
No=4:sp_on 4,1:sp_on 3,0:beep:locate 0,12:print "                              ":locate 0,12:PRINT"5.プログラムの終了を選択":sp_put 4,(10,500),4,0:goto help2:
case 4:
No=0:sp_on 0,1:sp_on 4,0:beep:locate 0,12:print "                               ":locate 0,12:print "1.バージョン情報を選択":sp_put 0,(10,100),0,0:Goto help2:
end select
endif
if (y = -1 or key$ = chr$(31)) then
select case No
case 0:
No=4:sp_on 4,1:sp_on 0,0:beep:sp_put 4,(10,500),4,0:goto help2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:sp_put 0,(10,100),0,0:goto help2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:sp_put 1,(10,200),1,0:goto help2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:sp_put 2,(10,300),2,0:goto help2:
case 4:
No=3:sp_on 3,1:sp_on 4,0:beep:sp_put 3,(10,400),3,0:goto help2:
end select
endif
if (key$ = chr$(13) or bg = 2) then
select case No
case 0:
sp_on 0,0:goto Version_info:
case 1:
sp_on 1,0:goto Document_info:
case 2:
sp_on 2,0:goto Config_Setting:
case 4:
sp_on 4,0:talk"プログラムを終了します":color rgb(255,255,255):font 32:cls 4:end
case 3:
sp_on 3,0:goto Main_Screen1:
end select
endif
'Menu1　画面
talk"調べたい名前のみよじをいれてください"
'グラフィック描画領域　ここから
Parson_name_kikkyo:
cls 3:init "KB:2"
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,180),rgb(127,255,212),bf
pen 5:line(0,57)-(1077,177),rgb(0,0,255),b
line (0,180)-(1080,250),rgb(0,255,0),bf
pen 5:line(0,177)-(1077,247),rgb(0,0,255),b
'グラフィック描画領域　ここまで
color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
cls
talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
goto complate_Kyusei:
'メニュー6　バージョン表示
'グラフィック　描画　領域　 ここから
Version_info:
cls 3:bg=0:talk ""
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line (0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,665),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,662),rgb(0,0,255),b
line (0,665) - (1080,750),rgb(0,255,0),bf
pen 5:line(0,662) - (1077,747),rgb(0,0,255),b
'グラフィック　描画 領域　 ここまで
color rgb(255,255,255):print"バージョン情報" + chr$(13)
color rgb(255,0,255):print "姓名判断 3 in 1" + chr$(13)
color rgb(255,0,255):PRINT "Ver:247.2024.01.19" + chr$(13)
color rgb(255,0,255):print "対応文字:漢字、ひらがな、カタカナ、数字" + chr$(13)
color rgb(255,0,255):print "アルファベット（大文字、小文字)" + chr$(13)
color rgb(255,0,255):print "対応漢字画数：1画から24画まで" + chr$(13)
color rgb(255,0,2550):print "制作開始:since 2019.04.07" + chr$(13)
'ここを書き換える
talk "このプログラムは、姓名判断 スリー　イン　ワン、 バージョン2.47です"
color rgb(0,0,0):print"エンターキーを押してください"
Version_info2:
bg = 0
while (bg <> 2)
bg = strig(1)
pause 2.50 * 100
wend
if bg = 2  then beep:goto Main_Screen1:
complate_Kyusei:
'文字数を求める変数
buf_char_size=len(name$)
buf_char_size2=len(name2$)
'入力した文字を代入する変数
'入力した文字を配列に代入する処理
'姓名判断データー文字比較
'画数を求める関数
func char_count(buf_count$)
count = 0:buffer = 0
'1画の文字 23文字
for j=0 to ((Moji_1)-1)
if buf_count$=buf_char_hiragana1$(j) then
count =1:
endif
next j
'2画の文字
for j=0 to ((Moji_2)-1)
if buf_count$=buf_char_hiragana2$(j)  then
count = 2:
endif
next j
for j=0 to ((Moji_3)-1)
if buf_count$=buf_char_hiragana3$(j) then
count =3:
endif
next j
for j=0 to ((Moji_4)-1)
if buf_count$=buf_char_hiragana4$(j) then
count = 4:
endif
next j
for j=0 to ((Moji_5)-1)
if buf_count$=buf_char_hiragana5$(j) then
count = 5:
endif
next j
for j=0 to ((Moji_6)-1)
if buf_count$=buf_char_hiragana6$(j) then
count= 6
endif
next j
for  j=0 to ((Moji_7)-1)
if buf_count$=buf_char_hiragana7$(j) then
count=  7
endif
next j
for j=0 to ((Moji_8)-1)
if buf_count$=buf_char_hiragana8$(j) then
count= 8
endif
next j
for j=0 to ((Moji_9)-1)
if buf_count$=buf_char_hiragana9$(j) then
count=9
endif
next j
for j=0 to ((Moji_10)-1)
if buf_count$=buf_char_hiragana10$(j) then
count=10
endif
next j
for j=0 to ((Moji_11)-1)
if buf_count$=buf_char_hiragana11$(j) then
count=11
endif
next j
for j=0 to  ((Moji_12)-1)
if buf_count$=buf_char_hiragana12$(j) then
count=12
endif
next j
for j=0 to ((Moji_13)-1)
if buf_count$=buf_char_hiragana13$(j) then
count=13
endif
next j
for j=0 to ((Moji_14)-1)
if buf_count$=buf_char_hiragana14$(j) then
count=14
endif
next j
for j=0 to ((Moji_15)-1)
if buf_count$=buf_char_hiragana15$(j) then
count=15
endif
next j
for j=0 to ((Moji_16)-1)
if buf_count$=buf_char_hiragana16$(j) then
count=16
endif
next j
for j=0 to ((Moji_17)-1)
if buf_count$=buf_char_hiragana17$(j) then
count=17
endif
next j
for j=0 to ((Moji_18)-1)
if buf_count$=buf_char_hiragana18$(j) then
count=18
endif
next j
for j=0 to ((Moji_19)-1)
if buf_count$=buf_char_hiragana19$(j) then
count=19
endif
next j
for j=0 to ((Moji_20)-1)
if buf_count$=buf_char_hiragana20$(j) then
count=20
endif
next i
for j=0 to ((Moji_21)-1)
if buf_count$=buf_char_hiragana21$(j) then
count=21
endif
next j
for j=0 to ((Moji_22)-1)
if buf_count$=buf_char_hiragana22$(j) then
count=22
endif
next j
for j=0 to ((Moji_23)-1)
if buf_count$=buf_char_hiragana23$(j) then
count=23
endif
next j
for j=0 to ((Moji_24)-1)
if buf_count$=buf_char_hiragana24$(j) then
count=24
endif
buffer = count
next j
endfunc buffer
func show_sex_type$(sex$)
buf_number=val(Mid$(sex$,4,1))
if buf_number = 1 then
buf_show_sex_type$="性別:女性"
else
if buf_number=2 then
buf_show_sex_type$="性別:男性"
endif
endif
endfunc buf_show_sex_type$
'合計を求める関数
func totalcounts(buffers$)
buffers=0:
for i=0 to len(buffers$)-1
buffers=buffers+char_count(buffers$)
next i
endfunc buffers
buf_count2=0:buf_count3=0
'1.苗字の文字数
for n=0 to (buf_char_size-1)
buf_Input_data$(n)=mid$(name$,n+1,1)
next n
for i=0 to (buf_char_size-1)
buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
next i
'2.名の文字数
for n2=0 to (buf_char_size2-1)
buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
next n2
for i2=0 to (buf_char_size2-1)
buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
next i2
'総数を出す
select case (buf_char_size + buf_char_size2)
case 6:
if ((buf_char_size=4) and (buf_char_size2=2)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=3) and (buf_char_size2=3)) then
if buf_Input_data$(1)="々" then
buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
else
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
endif
case 5:
if ((buf_char_size=4) and (buf_char_size2=1)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=2) and (buf_char_size2=3)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
if ((buf_char_size=3) and (buf_char_size2=2)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
case 4:
if ((buf_char_size=1) and (buf_char_size2=3)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
if ((buf_char_size=2) and (buf_char_size2=2)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=3) and (buf_char_size2=1)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
endif
case 3:
if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=2) and (buf_char_size2=1)) then
buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
endif
case 2:
buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
case else:
end select
'文字の総数をだす
total_name$ = name$ + name2$
'1.姓星を求める
select case buf_char_size
'苗字1文字のとき
case 1:
buf_seisei = char_count(buf_Input_data$(0)) + 1
'苗字2文字の時
case 2:
buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
'苗字3文字のとき
case 3:
if (buf_Input_data$(1)="々")  then
buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
else
buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
endif
'苗字4文字のとき
case 4:
buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
case else:
end select
'2.主星をだす
'2.主星
select case (buf_char_size + buf_char_size2)
'姓名5文字のとき
case 6:
if ((buf_char_size=4) and (buf_char_size2=2)) then
buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=3) and (buf_char_size2=3)) then
buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
endif
case 5:
if ((buf_char_size=4) and (buf_char_size2=1)) then
buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=2) and (buf_char_size2=3)) then
buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=3) and (buf_char_size2=2)) then
buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
endif
'姓名4文字のとき
case 4:
if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=1) and (buf_char_size2=3)) then
buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=3) and (buf_char_size2=1)) then
buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
endif
'姓名3文字のとき
case 3:
if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
else
buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
endif
case 2:
buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
case else:
end select
'3.名星を求める
select case (buf_char_size + buf_char_size2)
case 6:
if ((buf_char_size=3) and (buf_char_size2=3)) then
buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
if ((buf_char_size=4) and (buf_char_size2=2)) then
buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
case 5:
if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
buf_meisei = char_count(buf_Input_data2$(0)) + 1
endif
if ((buf_char_size=3) and (buf_char_size2=2)) then
buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=2) and (buf_char_size2=3))  then
buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
case 4:
if ((buf_char_size=2) and (buf_char_size2=2)) then
buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=1) and (buf_char_size2=3)) then
buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
endif
if ((buf_char_size=3) and (buf_char_size2=1)) then
buf_meisei = char_count(buf_Input_data2$(0)) + 1
endif
case 3:
if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=2) and (buf_char_size2=1)) then
buf_meisei=char_count(buf_Input_data2$(0))+1
endif
case 2:
buf_meisei = char_count(buf_Input_data2$(0)) + 1
case else:
end select
'4.外星を求める
select case (buf_char_size + buf_char_size2)
case 6:
if buf_Input_data$(1)="々"  then
buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
else
if ((buf_char_size=4) and (buf_char_size2=2)) then
buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
else
buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
endif
case 5:
if ((buf_char_size=4) and (buf_char_size2=1)) then
buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
endif
if ((buf_char_size=3) and (buf_char_size2=2)) then
buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=2) and (buf_char_size2=3)) then
buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
case 4:
if ((buf_char_size=2) and (buf_char_size2=2)) then
buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
endif
if ((buf_char_size=1) and (buf_char_size2=3)) then
buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
endif
if ((buf_char_size=3) and (buf_char_size2=1)) then
buf_gaisei = char_count(buf_Input_data2$(0)) + 1
endif
case 3:
if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
buf_gaisei=1+char_count(buf_Input_data2$(1))
endif
if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
buf_gaisei = char_count(buf_Input_data$(0)) + 1
endif
case 2:
buf_gaisei = 2
case else:
end select
'診断結果表示
'1.姓星を出す
'グラフィック描画領域　ここから
Result_Kyusei_Kikkyo:
cls 3:font 32:bg = 0:key$="":init "kb:4":talk ""
'縦の画面
'1行目
line (0,0) - (1500,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1497,57),rgb(127,255,212),b
'2行目
line (0,60) - (1500,425),rgb(127,255,212),bf
pen 5:line(0,57) - (1497,422),rgb(0,0,255),b
'3行目
line (0,485) - (1500,425),rgb(0,255,0),bf
pen 5:line(0,482) - (1497,422),rgb(0,0,255),b
'横の画面　吉凶のランク表
'グラフィック描画領域　ここまで
talk"診断結果です":font 32
color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
color Rgb(255,0,255)
print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
'2.主星を出す
print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
'3.名星を求める
print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
'4.外星を求める
print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
'5.総数を出す
print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
color rgb(0,0,0)
print"エンターキーを押してください"
while (key$ <> chr$(13) and bg <> 2)
key$=inkey$
bg=strig(1)
pause 2.50*100
wend
if (key$ = chr$(13) or bg = 2) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen1:
'2.主星を出す
'メニュー3 登録文字の確認 ここから
'グラフィック領域　ここから
'タイトル青 文字:白
Entry_moji_Top:
talk ""
cls 3:line (0,0)-(1080,65),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,62),rgb(127,255,212),b
line (0,62)-(1080,155),rgb(0,255,255),bf
pen 5:line(0,59)-(1077,152),rgb(0,0,255),b
line (0,155)-(1080,260),rgb(0,255,0),bf
pen 5:line(0,152)-(1077,257),rgb(0,0,255),b
'グラフィック領域　ここまで
talk"調べたい文字をひと文字入れてください。":init "kb:2"
'文字:白
color rgb(255,255,255):print"登録文字の確認"+chr$(13)
'文字:アクア
color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
'1画の文字
for i=0 to ((Moji_1) - 1)
if (name$=buf_char_hiragana1$(i)) then
buffer_count=1:goto Moji_count_check:
endif
next i
'2画の文字
for i=0 to ((Moji_2) - 1)
if (name$=buf_char_hiragana2$(i)) then
buffer_count=2:goto Moji_count_check:
endif
next i
'3画の文字
for i=0 to ((Moji_3) - 1)
if (name$=buf_char_hiragana3$(i)) then
buffer_count=3:goto Moji_count_check:
endif
next i
'4画の文字
for i=0 to ((Moji_4)-1)
if (name$=buf_char_hiragana4$(i)) then
buffer_count=4:goto Moji_count_check:
endif
next i
'5画の文字
for i=0 to ((Moji_5)-1)
if (name$=buf_char_hiragana5$(i)) then
buffer_count=5:goto Moji_count_check:
endif
next i
'6画の文字
for i=0 to ((Moji_6)-1)
if (name$=buf_char_hiragana6$(i)) then
buffer_count=6:goto Moji_count_check:
endif
next i
'7画の文字
for i=0 to ((Moji_7)-1)
if (name$=buf_char_hiragana7$(i)) then
buffer_count=7:goto Moji_count_check:
endif
next i
'8画の文字 120 文字
for i=0 to ((Moji_8)-1)
if (name$=buf_char_hiragana8$(i)) then
buffer_count=8:goto Moji_count_check:
endif
next i
'9画の文字  103文字
for i=0 to ((Moji_9)-1)
if (name$=buf_char_hiragana9$(i)) then
buffer_count=9:goto Moji_count_check:
endif
next i
'10画の文字 98文字
for i=0 to ((Moji_10)-1)
if (name$=buf_char_hiragana10$(i)) then
buffer_count=10:goto Moji_count_check:
endif
next i
'11画の文字 98文字
for i=0 to ((Moji_11)-1)
if (name$=buf_char_hiragana11$(i)) then
buffer_count=11:goto Moji_count_check:
endif
next i
'12画の文字
for i=0 to ((Moji_12)-1)
if (name$=buf_char_hiragana12$(i)) then
buffer_count=12:goto Moji_count_check:
endif
next i
'13画の文字
for i=0 to ((Moji_13)-1)
if (name$=buf_char_hiragana13$(i)) then
buffer_count=13:goto Moji_count_check:
endif
next i
'14画の文字
for i=0 to ((Moji_14)-1)
if (name$=buf_char_hiragana14$(i)) then
buffer_count=14:goto Moji_count_check:
endif
next i
'15画の文字
for i=0 to ((Moji_15)-1)
if (name$=buf_char_hiragana15$(i)) then
buffer_count=15:goto Moji_count_check:
endif
next i
'16画の文字
for i=0 to ((Moji_16)-1)
if (name$=buf_char_hiragana16$(i)) then
buffer_count=16:goto Moji_count_check:
endif
next i
'17画の文字
for i=0 to ((Moji_17)-1)
if (name$=buf_char_hiragana17$(i)) then
buffer_count=17:goto Moji_count_check:
endif
next i
'18画の文字 25
for i=0 to ((Moji_18)-1)
if (name$=buf_char_hiragana18$(i)) then
buffer_count=18:goto Moji_count_check:
endif
next i
'19画の文字 17
for i=0 to ((Moji_19)-1)
if (name$=buf_char_hiragana19$(i)) then
buffer_count=19:goto Moji_count_check:
endif
next i
'20画の文字 13
for i=0 to ((Moji_20)-1)
if (name$=buf_char_hiragana20$(i)) then
buffer_count=20:goto Moji_count_check:
endif
next i
'21画の文字 6
for i=0 to ((Moji_21)-1)
if (name$=buf_char_hiragana21$(i)) then
buffer_count=21:goto Moji_count_check:
endif
next i
'22画の文字 4
for i=0 to ((Moji_22)-1)
if (name$=buf_char_hiragana22$(i)) then
buffer_count=22:goto Moji_count_check:
endif
next i
'23画の文字 3
for i=0 to ((Moji_23)-1)
if (name$=buf_char_hiragana23$(i)) then
buffer_count=23:goto Moji_count_check:
endif
next i
'24画の文字
for i=0 to ((Moji_24)-1)
if (name$=buf_char_hiragana24$(i)) then
buffer_count=24:goto Moji_count_check:
endif
next i
'Menu3 結果表示 画数の登録確認
Moji_count_check:
bg=0:init"kb:4"
if (buffer_count = 0) then
'登録文字がない場合の処理
'グラフィック領域　ここから
'Moji_count_check:
cls 3:talk ""
'1行
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
'2行目
line (0,60)-(1080,165),rgb(127,255,212),bf
pen 5:line (0,57)-(1077,162),rgb(0,0,255),b
'3行目
line (0,165)-(1080,370),rgb(0,0,255),bf
pen 5:line (0,162)-(1077,367),rgb(0,255,0),b
'4行目
line (0,370)-(1080,450),rgb(0,255,0),bf
pen 5:line(0,367)-(1077,447),rgb(0,0,0),b
'グラフィック領域　ここまで
color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
talk "この文字は、登録されていません"
color rgb(255,255,255):print"q:トップ画面"+chr$(13)
COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
color rgb(0,0,0):print"コマンド:"
while (bg <> 2 and key$ <> chr$(13))
key$=inkey$
bg=strig(1)
pause 2.50*100
wend
if (key$=chr$(13) or bg=2) then goto Main_Screen1:
else
'グラフィック描画領域　ここから
'Entry_moji_check:
cls 3
'1行目
line (0,0)-(1080,58),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,55),rgb(127,255,212),b
'2行目
line (0,58)-(1080,100),rgb(127,255,212),bf
PEN 5:line(0,55)-(1077,97),rgb(0,0,0),b
'3行目
line (0,100)-(1080,280),rgb(0,0,255),bf
pen 5:LINE(0,103)-(1080,277),rgb(127,255,212),b
'4行目
line (0,280)-(1080,340),rgb(0,255,0),bf
pen 5:line(0,277)-(1077,337),rgb(0,0,0),b
'グラフィック描画領域　ここまで
color rgb(255,255,255):print "登録文字画数結果表示"
talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
endif
while (key$<>chr$(13) and bg <> 2)
key$=inkey$
bg=strig(1)
pause 2.50*100
wend
if (key$=chr$(13) or bg=2) then buffer_count=0:goto Main_Screen1:
'Menu2 名前の陰陽を見る
'グラフィック描画領域 ここから
name_inyo_check:
init "kb:2":talk ""
cls 3:line (0,0)-(1080,60),rgb(0,0,255),bf
PEN 5:line(0,0)-(1077,57),rgb(127,255,212),b
LINE (0,60)-(1080,250),rgb(127,255,212),bf
pen 5:line (0,57)-(1077,247),rgb(0,0,255),b
line (0,250)-(1080,350),rgb(0,255,0),bf
pen 5:line(0,247)-(1077,347),rgb(0,0,255),b
'グラフィック描画領域　ここまで
cls
color rgb(255,255,255)
print"Menu2 名前の陰陽を見る"+chr$(13)
COLOR rgb(255,0,255)
PRINT"(●:陽,○:陰)"+chr$(13)
print"調べたい名前苗字を入れてください"+chr$(13)
color rgb(0,0,0)
Input"調べたい名前の苗字:",name$
if name$="" then goto name_inyo_check:
'Menu2 陰陽の吉凶を見る 名入力
cls:color rgb(255,255,255)
print"Menu2 名前の陰陽を見る"+chr$(13)
color rgb(255,0,255)
print"(●:陽,○:陰)"+chr$(13)
print"調べたい名前の名を入れてください"+chr$(13)
color rgb(0,0,0)
Input"調べたい名前の名:",name2$
if name2$="" then goto name_inyo_check:
for i=0 to len(name$)-1
name_array$(i)=Mid$(name$,i+1,1)
if char_count(name_array$(i)) mod 2 = 1  then
name_array$(i)="○":buffer$=buffer$+name_array$(i)
else
name_array$(i)="●":buffer$=buffer$+name_array$(i)
endif
next i
for i=0 to len(name2$)-1
name_array2$(i)=Mid$(name2$,i+1,1)
if char_count(name_array2$(i)) mod 2 = 1 then
name_array2$(i) = "○":buffer2$ = buffer2$ + name_array2$(i)
else
name_array2$(i)="●":buffer2$ = buffer2$ + name_array2$(i)
endif
next i
bufname$ = buffer$ + buffer2$
'陰陽のタイプ ここから
select case (len(bufname$))
'2文字
case 2:
if ((bufname$="○●") or (bufname$="●○")) then buffer_name$ = "吉相:姓名2字の陰陽吉相"
'endif
if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
'  endif
'3文字
case 3:
if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
'4文字
case 4:
if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
'5文字
case 5:
if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
case 6:
if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
case else:
buffer_name$="例外に入りました"
end select
'陰陽のタイプ　ここまで
'グラフィック描画領域　ここから
cls 2:key$="":bg=0:init "kb:4":talk ""
line (0,0)-(1080,60),rgb(0,0,250),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,285),rgb(127,255,212),bf
pen 5:line(0,57)-(1077,282),rgb(0,0,255),b
line (0,280)-(1080,380),rgb(0,255,0),bf
pen 5:line(0,277)-(1077,377),rgb(0,0,255),b
'グラフィック描画領域 ここまで
color rgb(255,255,255)
cls:print"名前:";name$ + name2$ + chr$(13)
color rgb(255,0,255)
print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
print buffer_name$;chr$(13)
color rgb(0,0,0)
print"エンターキーを押してください"
while (bg <> 2 and key$ <> chr$(13))
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then buffer$ = "":buffer2$ = "": goto Main_Screen1:
'Menu3
'登録文字数の確認
Entry_moji_check:
totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
'グラフィック描画領域　ここから
cls 3:init "kb:4":bg = 0:key$ = "":talk ""
'1行目
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line (0,0)-(1077,57),rgb(127,255,212),b
'2行目
line (0,60)-(1080,150),rgb(157,255,212),bf
pen 5:line(0,57)-(1077,147),rgb(0,0,255),b
'3行目
line (0,150)-(1080,250),rgb(0,255,0),bf
pen 5:line(0,147)-(1077,247),rgb(0,0,255),b
'グラフィック描画領域 ここまで
color rgb(255,255,255)
PRINT"登録文字数の確認"+chr$(13)
color rgb(255,0,255)
PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
TALK"登録文字数は"+str$(totalmoji)+"もじです"
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg=2) then goto Main_Screen1:
'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
nick_name_check:
talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
'グラフィック描画領域　ここから
cls 3:init "kb:2"
line (0,0) - (1080,60),rgb(0,0,250),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,160),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
line (0,160) - (1080,270),rgb(0,255,0),bf
pen 5:line(0,157) - (1077,267),rgb(0,0,255),b
'グラフィック描画領域　ここまで
buf=0:cls
locate 0,0
color rgb(255,255,255)
Print"名前(ニックネーム)の総数で吉凶を判断します"
locate 0,2
color rgb(255,0,255)
PRINT"名前(ニックネーム)を入れてください"
locate 0,4
color rgb(0,0,0)
Input"名前:",name$
if name$="" then goto nick_name_check:
for n=0 to (len(name$)-1)
buf_Input_data$(n) = mid$(name$,n+1,1)
buf = buf + char_count(buf_Input_data$(n))
next n
if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
'結果表示　グラフィック　ここから
cls 3:init "kb:4":bg=0:key$=""
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,160),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
line (0,160) - (1080,540),rgb(0,255,0),bf
pen 5:line(0,157) - (1077,537),rgb(0,0,255),b
'結果表示 グラフィック領域 ここまで
color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
'名前2文字
'グラフィック描画領域　ここから
Result_Anzai:
CLS 3:font 32:bg = 0:ke$="":init "KB:4":talk ""
line (0,0)-(1400,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
line (0,60)-(1400,540-180),rgb(127,255,212),bf
pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
line (0,540-180)-(1400,540),rgb(0,255,0),bf
pen 5:line(0,537-180)-(1397,537),rgb(0,0,255),b
'グラフィック描画領域 ここまで
color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
color rgb(255,0,255)
print"天運";buf_tenunn;chr$(13)
print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
print"外運";buf_gaiunn;chr$(13)
print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
COLOR rgb(0,0,0)
PRINT"エンターキー:トップ画面"+chr$(13)
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if key$ = chr$(13) or bg = 2 then goto Main_Screen1:
'参考文献 表示 ここから
'グラフィック描画領域　 ここから
Document_info:
cls 3:init "kb:4":bg = 0
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,650),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,647),rgb(0,0,255),b
line (0,650) - (1080,730),rgb(0,255,0),bf
pen 5:line(0,647) - (1077,727),rgb(0,0,255),b
'グラフィック描画領域  ここまで
'参考文献１
cls
color rgb(255,255,255)
locate 0,0
print"◎参考文献"
color rgb(255,0,255)
locate 0,2
print "参考文献 １/4"
locate 0,4
print "Title:九星姓名判断"
locate 0,6
print "Author:高嶋　 美伶"
locate 0,8
print "出版社:日本文芸者"
locate 0,10
print "ISBN:4-537-20073-1"
locate 0,12
print "定価:1,200+税"
color rgb(0,0,0)
locate 0,14
print "エンターキーを押してください"
while (bg <> 2 and key$<>chr$(13))
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then
goto Document_info2:
endif
'参考文献２
Document_info2:
cls:bg = 0:key$ = ""
color rgb(255,255,255)
locate 0,0
print "◎参考文献"
color rgb(255,0,255)
locate 0,2
print "参考文献 ２/4"
locate 0,4
print "Title:究極の姓名判断"
locate 0,6
print "Author:安斎　勝洋"
locate 0,8
print "出版社:説話社"
locate 0,10
print "ISBN:978-4-916217-61-5"
locate 0,12
print "定価:1,800円+税"
color rgb(0,0,0)
locate 0,14
print"エンターキーを押してください"
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then goto Document_info3:
'参考文献３
Document_info3:
cls:bg = 0:key$ = ""
color rgb(255,255,255)
locate 0,0
print"◎参考文献"
color rgb(255,0,255)
locate 0,2
print "参考文献 3/4"
locate 0,4
print "Title:新明解現在漢和辞典"
locate 0,6
print "Author:影山輝國(編集主幹)他"
locate 0,8
print "出版社:三省堂"
locate 0,10
print "ISBN:978-4-385-13755-1"
locate 0,12
print "定価:2,800円 + 税"
color rgb(0,0,0)
locate 0,14
print "エンターキーを押してください"
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then goto Document_info4:
'参考文献４　
'描画領域　ここから
Document_info4:
cls 3:key$ = "":bg = 0
line (0,0) - (1080,60),rgb(0,0,255),bf
line (0,0) - (1077,57),rgb(0,255,0),b
line (0,60) - (1080,650),rgb(127,255,212),bf
LINE (0,60) - (1077,647),rgb(0,0,255),b
LINE (0,650) - (1080,830),rgb(0,255,0),bf
line (0,650) - (1077,833),rgb(0,0,255),b
'描画領域　ここまで
color rgb(255,255,255)
locate 0,0
print "◎参考文献"
COLOR rgb(255,0,255)
locate 0,2
print "参考文献 4/4"
locate 0,4
print "Title:姓名の暗号"
locate 0,6
print "Author:樹門　幸宰(じゅもん こうざい)"
locate 0,8
print "出版社:幻冬舎"
locate 0,10
print "定価:1400円 + 税"
locate 0,12
print "ISBN:4-344-00777-8"
color rgb(0,0,0)
locate 0,14
print "参考文献トップに行く:エンターキー"
locate 0,16
print "スペース：トップメニューに行く"
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then goto help:
'安斎流姓名判断　メニュー
'グラフィック領域　ここから
Anzai_Top:
cls 3:talk ""
No = 0:init "kb:4":y = 0:bg = 0:key$ = ""
sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:
sp_on 0,1:sp_put 0,(10,100),0,0
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
line (0,60) - (1080,475),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,472),rgb(0,0,255),b
line (0,475) - (1080,650),rgb(0,255,0),bf
pen 5:line(0,472) - (1077,647),rgb(0,0,255),b
'グラフィック描画領域　ここまで
talk "安斎流姓名判断トップ画面です、番号を選んでください。"
color rgb(255,255,255)
print "安斎流姓名判断　トップメニュー" + chr$(13)
color rgb(255,0,255)
print " :1.安斎流姓名判断 相性占い" + chr$(13)
print " :2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
print " :3.安斎流姓名判断 改名チェック" + chr$(13)
print " :4.前の画面に戻る" + chr$(13)
locate 0,10
color rgb(0,0,0)
print"1．安斎流姓名判断　相性占いを選択" + chr$(13)
Anzai_Top2:
y = 0:bg = 0:key$ = ""
while (y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and key$ <> chr$(13) and bg <> 2)
key$=inkey$
y = stick(1)
bg = strig(1)
pause 2.50 * 100
wend
'******************************************************
'1.下のキー　ここから
'******************************************************
if (y = 1 or key$ = chr$(30)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                      ":locate 0,10:print "2.安斎流姓名判断　名前の吉凶判定を選択":sp_put 1,(10,200),1,0:goto Anzai_Top2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                      ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2,0:goto Anzai_Top2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                      ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
case 3:
No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                       ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":Sp_put 0,(10,100),0,0:goto Anzai_Top2:
end select
endif
'******************************************************
'1.下のキー　ここまで
'******************************************************
'******************************************************
'2.上のキー　ここから
'******************************************************
if (y = -1 or key$ = chr$(31)) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                         ":locate 0,10:print "4.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Anzai_Top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                         ":locate 0,10:print "1.安斎流姓名判断　相性占いを選択":sp_put 0,(10,100),0,0:goto Anzai_Top2:
case 2:
No=1:sp_on 1,1:sp_on  2,0:beep:locate 0,10:print "                        ":locate 0,10:print "2．安斎流姓名判断　名前の吉凶判定を選択": sp_put 1,(10,200),1,0:goto Anzai_Top2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,10:print "                         ":locate 0,10:print "3.安斎流姓名判断　改名チェックを選択":sp_put 2,(10,300),2:goto Anzai_Top2:
end select
endif
'******************************************************
'2.上のキー　ここまで
'******************************************************
'******************************************************
'3.決定ボタン　ここから
'******************************************************
if (key$ = chr$(13) or bg = 2) then
select case No
case 0:
sp_on 0,0:init "kb:2":goto Anzai_Aishou_Top1:
case 1:
sp_on 1,0:goto Anzai_Top_Screen:
case 2:
sp_on 2,0:goto Anzai_Kaimei_Check:
case 3:
sp_on 3,0:goto seimeihandan_top:
end select
endif
'******************************************************
'3.決定ボタン　ここまで
'******************************************************
'2.安斎流姓名判断　男女の相性占い　ここから
'グラフィック描画領域 ここから
cls 3
'1行目
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,252),b
'2行目
line (0,60) - (1080,160),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
'3行目
line (0,160) - (1080,300),rgb(0,255,0),bf
pen 5:line(0,157) - (1077,297),rgb(0,0,255),b
'グラフィック描画領域　男女の相性占い ここまで
'1.名前の姓を入力  男性
Anzai_Aishou_Top1:
cls 3
'1行目
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,252),b
'2行目
line (0,60) - (1080,160),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
'3行目
line (0,160) - (1080,300),rgb(0,255,0),bf
pen 5:line(0,157) - (1077,297),rgb(0,0,255),b
color rgb(255,255,255)
print "安斎流姓名判断　相性占い(男性)"+chr$(13)
color rgb(255,0,255)
print "男性の名前(姓)を入れてください"+chr$(13)
color rgb(0,0,0)
Input "男性の名前(姓):",name$
'2.名前の名を入力  男性
cls 3:talk ""
'1行目
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,252),b
'2行目
line (0,60) - (1080,160),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,157),rgb(0,0,255),b
'3行目
line (0,160) - (1080,300),rgb(0,255,0),bf
pen 5:line(0,157) - (1077,297),rgb(0,0,255),b
color rgb(255,255,255)
print "安斎流姓名判断 相性占い(男性)"+chr$(13)
color rgb(255,0,255)
print "男性の名前（名）をいれてください"+chr$(13)
color rgb(0,0,0)
Input "男性の名前(名):",name2$
'3.名前(姓)入力 女性
Anzai_Aishou_Top2:
cls:init "kb:2":talk ""
color rgb(255,255,255)
print "安斎流姓名判断 相性占い(女性)"+chr$(13)
color rgb(255,0,255)
print "女性の名前(姓)を入れてください"+chr$(13)
color rgb(0,0,0)
Input"女性の名前:",name3$
'4.名前（名)入力 女性
cls:init "kb:2":talk ""
color rgb(255,255,255)
print "安斎流姓名判断 相性占い(女性)"+chr$(13)
color rgb(255,0,255)
print "女性の名前（名）を入れてください"+chr$(13)
color rgb(0,0,0)
Input "女性の名前(名):",name4$
'男性　の地運 を求める
'姓名の合計数
'1.男性 名前の文字数を求める
'地運を求める
buf_male_name1 = len(name$)
buf_male_name2 = len(name2$)
buf_male_count = buf_male_name1 + buf_male_name2
'2.女性 名前の文字数を求める
buf_female_name1 = len(name3$)
buf_female_name2 = len(name4$)
buf_female_count = buf_female_name1 + buf_female_name2
'goto Anzai_Aishou_Check:
'1.男性の地運を求める
select case buf_male_count
case 2:
'男性の地運を求める
buf_chiunn = char_count(name2$)
case 3:
'姓が一文字 名が2文字
if buf_male_name1 = 1 and buf_male_name2 = 2 then
buf_Input_name$(0) = mid$(name2$,1,1)
buf_Input_name$(1) = mid$(name2$,2,1)
'地運を計算
buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
endif
if buf_male_name1 = 2 and buf_male_name2 = 1 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_chiunn = char_count(buf_Input_name$(0))
endif
case 4:
'1.姓１，名３
if bufmale_name1 = 1 and buf_male_name2 = 3 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_Input_name$(1) = Mid$(name2$,2,1)
buf_Input_name$(2) = Mid$(name2$,3,1)
buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1)) + char_count(buf_Input_name$(2))
endif
'2.姓２,名２
if buf_male_name1 = 2 and buf_male_name2 = 2 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_Input_name$(1) = Mid$(name2$,2,1)
buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
endif
'3.姓３、名１
if buf_male_name1 = 3 and buf_male_name2 = 1 then
buf_Input_name$(0) = Mid$(name2$,1,1)
'地運を求める
buf_chiunn = char_count(buf_Input_name$(0))
endif
case 5:
'1.姓２，名３
if buf_male_name1 = 2 and buf_male_name2 = 3 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_Input_name$(1) = Mid$(name2$,2,1)
buf_Input_name$(2) = Mid$(name2$,3,1)
'地運を求める
buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1)) + char_count(buf_Input_name$(2))
endif
'2.姓３，名２
if buf_male_name1 = 3 and buf_male_name2 = 2 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_Input_name$(1) = Mid$(name2$,2,1)
'地運を求める
buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
endif
'3.姓４、名１
buf_Input_name$(0) = Mid$(name2$,1,1)
'地運を求める
buf_chiunn = char_count(buf_Input_name$(0))
case 6:
'1.姓３，名３
if buf_male_name1 = 3 and buf_male_name2 = 3 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_Input_name$(1) = Mid$(name2$,2,1)
buf_Input_name$(2) = Mid$(name2$,3,1)
'地運を求める
buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
endif
'２.姓４，名２
if buf_male_name1 = 4 and buf_male_name2 = 2 then
buf_Input_name$(0) = Mid$(name2$,1,1)
buf_Input_name$(1) = Mid$(name2$,2,1)
'地運を求める
buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
endif
case else:
end select
'2.女性　外運を求める
select case buf_female_count
'姓と名の合計数
case 2:
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name4$,1,1)
buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
case 3:
if buf_female_name1 = 2 and buf_female_name2 = 1 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name4$,1,1)
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2))
endif
if buf_female_name1 = 1 and buf_female_name2 = 2 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name4$,1,1)
buf_Input_name2$(2) = Mid$(name4$,2,1)
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2))
endif
case 4:
'姓１、名３
if buf_female_name1 = 1 and buf_female_name2 = 3 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name4$,1,1)
buf_Input_name2$(2) = Mid$(name4$,2,1)
buf_Input_name2$(3) = Mid$(name4$,3,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(2)) + char_count(buf_Input_name2$(3))
endif
'姓２,名２
if buf_female_name1 = 2 and buf_female_name2 = 2 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name4$,1,1)
buf_Input_name2$(3) = Mid$(name4$,2,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(3))
endif
'姓３，名１
if buf_female_name1 = 3 and buf_female_name2 = 1 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name3$,3,1)
buf_Input_name2$(3) = Mid$(name4$,1,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name2$(3))
endif
case 5:
'姓 3,名2
if buf_female_name1 = 3 and buf_female_name2 = 2 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name3$,3,1)
buf_Input_name2$(3) = Mid$(name4$,1,1)
buf_Input_name2$(4) = Mid$(name4$,2,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name2$(4))
endif
'姓４、名１
if buf_female_name1 = 4 and buf_female_name2 = 1 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name3$,3,1)
buf_Input_name2$(3) = Mid$(name3$,4,1)
buf_Input_name2$(4) = Mid$(name4$,1,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name$(4))
endif
'姓２、名３
if buf_female_name1 = 2 and buf_female_name2 = 3 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name4$,1,1)
buf_Input_name2$(3) = Mid$(name4$,2,1)
buf_Input_name2$(4) = Mid$(name4$,3,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(3)) + char_count(buf_Input_name$(4))
endif
case 6:
'1.姓３，名３
if buf_female_name1=3 and buf_female_name2=3 then
buf_Input_name2$(0)=Mid$(name3$,1,1)
buf_Input_name2$(1)=Mid$(name3$,2,1)
buf_Input_name2$(2)=Mid$(name3$,3,1)
buf_Input_name2$(3)=Mid$(name4$,1,1)
buf_Input_name2$(4)=Mid$(name4$,2,1)
buf_Input_name2$(5)=Mid$(name4$,3,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name2$(4)) + char_count(buf_Input_name$(5))
endif
'2.姓４，名２
if buf_female_name1 = 4 and buf_female_name2 = 2 then
buf_Input_name2$(0) = Mid$(name3$,1,1)
buf_Input_name2$(1) = Mid$(name3$,2,1)
buf_Input_name2$(2) = Mid$(name3$,3,1)
buf_Input_name2$(3) = Mid$(name3$,4,1)
buf_Input_name2$(4) = Mid$(name4$,1,1)
buf_Input_name2$(5) = Mid$(name4$,2,1)
'外運を求める
buf_gaiunn = char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1)) + char_count(buf_Input_name$(5))
endif
case 7:
'1姓４，名３
'外運を求める
end select
func buf_number(a)
if a < 10 then
buf_tansu = a
endif
if a > 9 and a < 20 then
buf_tansu = a - 10
endif
if a > 19 and a < 30 then
buf_tansu = a - 20
endif
buffer = buf_tansu
endfunc buffer
check$ = "No Data"
func Aisyou_type$(man,woman)
Result$="No data"
'check$="No data"
'1.理解し合える最良のカップル
'1のFor文
for i=0 to 19
if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
Result$ = "1.理解し合える最良のカップル"
check$="○"
ResultNo = 0
endif
if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
Result$="2.互いに自然体でつきあえるカップル"
ResultNo=1
check$="○"
endif
'3.男性にとって居心地の良いカップル
if buf_good_for_man1(i) = man AND buf_good_for_man2(i) = woman then
Result$ = "3.男性にとって居心地の良いカップル"
ResultNo = 2
check$ = "△"
endif
'4.女性にとって居心地の良いカップル
if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
Result$ = "4.女性にとって居心地の良いカップル"
ResultNo = 3
check$ = "△"
endif
'5.恋愛経験を重ねた後なら愛を育める
if buf_short_of_experience1(i) = man AND buf_short_of_experience2(i) = woman then
Result$ = "5.恋愛経験を重ねた後なら愛を育める"
ResultNo = 4
check$ = "×"
endif
'6
if buf_difficult_for_couple1(i) = man AND  buf_difficult_for_couple2(i) = woman then
Result$ = "6.結婚への発展が困難なカップル"
check$ = "×"
endif
'7
if buf_difference_of_love1(i) = man AND buf_difference_of_love2(i) = woman then
Result$ = "7.愛し方にずれが出てくる二人"
check$ = "×"
endif
'8
if buf_difference_of_KachiKan1(i) = man AND buf_difference_of_KachiKan2(i) = woman  then
Result$ = "8.互いに価値観が噛み合わない相性"
check$ = "×"
endif
next i
endfunc  Result$
Anzai_Aishou_Check:
cls 3:init "kb:2":bg = 0
buf_t_chiunn = buf_number(buf_chiunn)
buf_t_gaiunn = buf_number(buf_gaiunn)
bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
'グラフィック描画領域　ここから
'Title欄
line(0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
'結果表示欄
line(0,60) - (1080,700-120-20),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,700-120-3-20),rgb(0,0,255),b
'ボタン選択欄
LINE(0,700-120-20) - (1080,640),rgb(0,255,0),bf
pen 5:line(0,697-120-20) - (1077,637),rgb(0,0,255),b
'グラフィック描画領域　ここまで
'ここから削除　↓
'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
'ここまで削除　↑
color rgb(255,255,255):font 40:init"kb:4"
print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
color rgb(255,0,255)
print "男性の名前:";name$+name2$;chr$(13)
print "地運の単数";buf_t_chiunn;chr$(13)
print "女性の名前:";name3$+name4$;chr$(13)
print "外運の単数";buf_t_gaiunn;chr$(13)
print"二人の相性:";bufferAisyou$;chr$(13)
print"相性判定:";check$;chr$(13)
color rgb(0,0,0)
print "エンターキー:トップ" + chr$(13)
while (bg <> 2)
bg = strig(1)
pause 2.50 * 100
wend
if (bg = 2) then goto Main_Screen1:
'改名チェック
'グラフィック描画領域 ここから
Anzai_Kaimei_Check:
cls 3:init "kb:2":talk ""
line (0,0) - (1080,60),rgb(0,0,255),bf
pen 5:line(0,0) - (1077,57),rgb(125,255,212),b
line (0,60) - (1080,370+50),rgb(127,255,212),bf
pen 5:line (0,57) - (1077,367+50),rgb(0,0,255),b
line (0,370+50) - (1080,450+50),rgb(0,255,0),bf
pen 5:line(0,367+50) - (1077,447+50),rgb(0,0,255),b
'グラフィック描画領域 ここまで
talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
color rgb(255,255,255)
print "安斎流姓名判断 改名チェッカー" + chr$(13)
color rgb(255,0,255)
print "総数で、改名が、必要か否かを調べます" + chr$(13)
print "名前(ニックネーム or 会社名等)を入れてください" + chr$(13)
print "10文字までで入れてください"
locate 0,9
color rgb(0,0,0)
Input "名前:",name$
'計算領域　ここから
'名前から総運を計算
'1.名前の文字数を出す
n = len(name$)
if n > 10 or n = 0 then
'文字数が10個までという表示
'トーストで表示
if n > 10 then
ui_msg "文字は10個までです"
else
ui_msg "文字が空っぽです"
endif
goto Anzai_Aishou_Check:
endif
'それ以外
'総数を出す処理を出す
'画面消去　データー初期化
cls 3:bufer_total=0:init"kb:4":bg=0:key$=""
'グラフィック描画領域 ここから
line(0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
line(0,60)-(1080,300),rgb(127,255,212),bf
pen 5:line(0,57)-(1077,297),rgb(0,0,255),b
line(0,300)-(1080,440),rgb(0,255,0),bf
pen 5:line(0,297)-(1077,437),rgb(0,0,255),b
'グラフィック描画領域 ここまで
color rgb(255,255,255)
print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
for i=0 to len(name$)-1
buf_Input_name$(i)=Mid$(name$,i+1,1)
bufer_total = char_count(buf_Input_name$(i)) + bufer_total
next i
buf_Kikkyo$ = buf_Kikkyo_Anzai_total$(bufer_total-2)
color rgb(255,0,255)
print "名前:";name$
print "この名前の総数:";bufer_total
print "この名前の吉凶:";buf_Kikkyo$;"です"
color rgb(255,0,255)
buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
print bufer_total$+chr$(13)
color rgb(0,0,0)
locate 0,7
print"エンターキーを押してください"
while (key$ <> chr$(13) and bg <> 2)
key$ = inkey$
bg = strig(1)
pause 2.50 * 100
wend
if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
'改名チェック関数
func Kaimei_check$(r$)
if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
'改名の必要なし
talk "この名前は改名の必要がございません。"
print "この名前は、改名の必要はありません"+chr$(13)
'改名の必要ナシの場合
K=0
buffer_K=K
else
'改名の必要あり
Kaimei_check:
talk"この名前は、改名の必要があります"
print"この名前は、改名の必要があります"+chr$(13)
color rgb(0,0,0)
print"改名しますか？"
K=1
buffer_K=K
'◎表示パターン
'パターン１
endif
endfunc result$
'ui_msg="1件追加しました,残り9件追加できます"
'ファイルの存在確認 設定ファイル:mydata.dat
'Config_Folder="config/Parsonal_data/"
Config_Folder$ = "config/Parsonal_data/"
'Config_File="mydata.dat"
Config_File$ = "mydata.dat"
cls
'設定ファイルの確認
if dir$(Config_Folder$ + Config_File$) = "" then
'1.ファイルがない時
goto Kaimei_check:
else
'ファイルがある時
goto sex_type_female:
endif
'1-1.ファイルがない時の処理
'1-1.自分の姓名判断を入力
'グラフィック描画領域 ここから
cls 3
'1行目
line(0,0) - (1080,60),rgb(0,0,250),bf
pen 5:line(0,0) - (1077,57),rgb(127,255,212),b
'2行目
line(0,60) - (1080,80),rgb(127,255,212),bf
pen 5:line(0,57) - (1077,77),rgb(0,0,255),b
'3行目
line(0,80) - (1080,120),rgb(0,255,0),bf
pen 5:line(0,77) - (1077,117),rgb(0,0,255),b
'グラフィック描画領域 ここまで
'1.名前の姓の入力
'1行目 Title
color rgb(255,255,255)
print"安斎流姓名判断　相性占い　自分のプロフィール入力" + chr$(13)
'2行目 名前の姓を入力
color rgb(255,0,255)
print "自分の名前の姓を入れてください" + chr$(13)
color rgb(0,0,0)
'buf_name1$:自分の名前の姓
Input"名前の姓:",buf_name1$
'2.名前の名の入力
'画面消去
Anzai_myProfile2:
cls
'1行目 Title
color rgb(255,255,255)
print "安斎流姓名判断 相性占い 自分のプロフィール入力" + chr$(13)
'2行目 名前の名の入力
color rgb(255,0,255)
print "自分の名前の名を入れてください" + chr$(13)
color rgb(0,0,0)
'buf_name2$:自分の名前の名
input "名前の名:",buf_name2$
'3.性別入力
cls
'1行目 Title
color rgb(255,255,255)
print "安斎流姓名判断 相性占い 自分のプロフィール入力" + chr$(13)
'2行目 性別入力
color rgb(255,0,255)
print"自分の性別を入れてください(女性 or 男性)" + chr$(13)
sex_type$(0) = "女性"
sex_type$(1) = "男性"
type = ui_select("sex_type$","性別を選んでください")
'3行目
'性別変数 sex_type$
if type = 1 then
print "自分の性別(女性 or 男性):";sex_type$(1) + chr$(13):sex_type$ = sex_type$(1):goto Anzai_myProfile2:
else
print "自分の性別(女性 or 男性):";sex_type$(0) + chr$(13):sex_type$ = sex_type$(0):goto Anzai_myProfile2:
endif
if sex_type$="男性" then
name$ = buf_name1$
name2$ = buf_name2$
s=1
goto Anzai_Aishou_Top1:
endif
sex_type_female:
If sex_type$="女性" then
name3$=buf_name1$
name4$=buf_name2$
s=2
goto Anzai_Aishou_Top2:
endif
'登録プロフィール確認画面
Entry_Profile:
cls 3:talk ""
'グラフィック描画領域　ここから
'1行目
line(0,0)-(1200,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
'2行目
line(0,60)-(1200,360),rgb(127,255,212),bf
pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
'3行目
line(0,100)-(1200,420),rgb(0,255,0),bf
pen 5:line(0,97)-(1197,417)
if s2=2 then goto Entry_Profile:
'グラフィック描画領域　ここまで
'1行目 Title
color rgb(255,255,255)
print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
color rgb(255,0,255)
print"名前:";buf_name1$+buf_name2$;chr$(13)
PRINT"性別:";sex_type$;chr$(13)
if sex_type$="女性" then
print"外運:";buf_gaiunn;chr$(13)
buffer$="外運:"+str$(buf_gaiunn)
endif
if sex_type$="男性" then
print"地運:";buf_chiunn;chr$(13)
buffer$="地運:"+str$(buf_chiunn)
endif
color rgb(0,0,0)
input"(登録する:Yes/登録しない:No):",key$
if key$="Yes" or key$="yes" then
open "config/Parsonal_data/mydata.dat" for output as #1
print #1,"名前:";buf_name1$+buf_name2$
print #1,"性別:";sex_type$
print #1,buffer$
close #1
ui_msg"データーを保存しました"
goto Main_Screen1:
endif
'２．設定ファイルが存在する場合
'ファイル読み込み 自分のデーターを表示
cls
open "Config/Parsonal_data/mydata.dat" for input as #2
line input #2,a$
line input #2,b$
line input #2,c$
close #2
buffername$=a$
buffername2$=b$
buffername3$=c$
bufff$=Mid$(buffername$,1,3)
buff2$=Mid$(buffername2$,1,3)
buff3$=Mid$(buffername3$,1,3)
n=len(a$)
sextype$=Mid$(buffername2$,4,2)
if sextype$="男性" then
'男性:s2
s2=1
'女性のデーター入力
goto Anzai_Top:
endif
if sextype$="女性" then
s2=2
'男性のデーター入力
goto Anzai_Top:
endif
'女性のデーター結果表示
'1.プロフィール性別男性の場合 ここから
Result_Anzai_Aisyou:
cls:talk ""
color rgb(255,255,255)
print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
name_length = len(bufername$)
myname$ = Mid$(buffername$,4,4)
chiunn = val(Mid$(buffername3$,4,2))
tansuu1 = buf_number(chiunn)
bufname$ = name3$ + name4$
bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
color rgb(255,0,255)
print "自分の名前(男性):";myname$;chr$(13)
print "地運の端数:";tansuu1;chr$(13)
print "相手の名前(女性):";bufname$;chr$(13)
print "外運の端数:";buf_t_gaiunn;chr$(13)
print "二人の相性:";bufferAisyou$;chr$(13)
talk "二人の相性は" + bufferAisyou$
color rgb(0,0,0)
print"エンターキーを押してください"
key$=Input$(1)
'トップ画面に行く
if key$ = chr$(13) then goto Main_Screen1:
'1.プロフィール性別男性の場合　ここまで
'2.プロフィール性別女性の場合　ここから
cls 3
'描画領域　ここから
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
line (0,60)-(1080,460),rgb(127,255,212),bf
pen 5:line(0,57)-(1077,457),rgb(0,0,255),b
LINE (0,460)-(1080,520),rgb(0,255,0),bf
pen 5:line(0,457)-(1077,517),rgb(0,0,255),b
'描画領域 ここまで
color rgb(255,255,255)
print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
'計算領域　ここから
myname$ = Mid$(buffername$,4,4)
gaiunn = val(Mid$(buffername3$,4,2))
buf_t_gaiunn = buf_number(buf_gaiunn)
buf_t_chiunn = buf_number(buf_chiunn)
bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
bufname$ = name$ + name2$
'計算領域 ここまで
color rgb(255,0,255)
print "自分の名前(女性):";myname$;chr$(13)
print "外運の端数";buf_t_gaiunn;chr$(13)
print "相手の名前(男性):";bufname$;chr$(13)
print "地運の端数:";buf_t_chiunn;chr$(13)
print "二人の相性:";bufferAisyou$;chr$(13)
color rgb(0,0,0)
print "エンターキーを押してください"
key$ = Input$(1)
if key$=chr$(13) then goto Main_Screen1:
'2.プロフィール性別女性の場合　ここまで
'取扱説明書
'相性占い　トップメニュー ここから
'グラフィック ここから
Anzai_Aishou_Top_Menu:
cls 3:talk ""
'1行目
line(0,0)-(1080,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1077,57),rgb(127,255,212),b
'2行目
line(0,60)-(1080,380),rgb(127,255,212),bf
pen 5:line(0,57)-(1077,377),rgb(0,0,255),b
'3行目
line(0,360)-(1080,540),rgb(0,255,0),bf
pen 5:line(0,357)-(1077,537),rgb(0,0,255),b
'グラフィック　ここまで
color rgb(255,255,255)
print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
color rgb(255,0,255)
print"1.男女の相性"+chr$(13)
print"2.前の画面に戻る"+chr$(13)
print"3.トップ画面に戻る"+chr$(13)
color rgb(0,0,0)
print"番号を選んでください:"+chr$(13)
Input"番号:",key
if key = 1 then goto Anzai_Aishou_Top1:
if key = 2 then goto Anzai_Top:
if key = 3 then goto Main_Screen1:
if key > 3 or key = 0  then goto Anzai_Aishou_Top_Menu:
'グラフィック領域　ここから
Life_Tenki:
cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
line(0,60)-(1150,180),rgb(127,255,212),bf
pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
line(0,120)-(1150,200),rgb(0,255,0),bf
pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
'グラフィック領域　ここまで
'誕生日入力　生まれた年
color rgb(255,255,255)
print"誕生日入力　生まれた年" + chr$(13)
COLOR rgb(255,0,255)
print"生まれた年を入れてください" + chr$(13)
color rgb(0,0,0)
Input"生まれた年:",year
'誕生日入力 生まれた月
cls
color rgb(255,255,255)
print"誕生日入力 生まれた月" + chr$(13)
color rgb(255,0,255)
print"生まれた月を入力してください" + chr$(13)
color rgb(0,0,0)
Input"生まれた月:",month
'誕生日入力 生まれた日を入力
cls
color rgb(255,255,255)
print"誕生日入力 生まれた日入力" + chr$(13)
color rgb(255,0,255)
print"生まれた日を入力してください" + chr$(13)
color rgb(0,0,0)
Input"生まれた日:",day
'人生の転機を見る
'グラフィック領域　ここから
cls 3:talk ""
line(0,0)-(1150,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
line(0,60)-(1150,470),rgb(127,255,212),bf
pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
line(0,470)-(1150,520),rgb(0,255,0),bf
pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
'グラフィック描画領域  ここまで
cls
buffername$ = bufname$ + bufname2$
color rgb(255,255,255)
print buffername$;"さんの人生の転機を見る1"+chr$(13)
color rgb(255,0,255)
buf_total2 = buf_total - (fix(buf_total/10)*10)
tenki1_year = year + buf_total2
tenki2_year = year + buf_total2+5
tenki3_year = year + buf_total2+5+5
tenki4_year = year + buf_total2+5+5+5
tenki1 = buf_total2
tenki2 = buf_total2 + 5
tenki3 = buf_total2 + 5 + 5
tenki4 = buf_total2 + 5 + 5 + 5
print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
print tenki1_year;"年";tenki1;"歳"+chr$(13)
print tenki2_year;"年";tenki2;"歳"+chr$(13)
print tenki3_year;"年";tenki3;"歳"+chr$(13)
print tenki4_year;"年";tenki4;"歳"+chr$(13)
color rgb(0,0,0)
print"エンターキーを押してください"
key$=Input$(1)
if key$=chr$(13) then goto Life_Tenki:
'2ページ目
cls
color rgb(255,255,255)
print buffername$;"さんの人生の転機2"+chr$(13)
color rgb(255,0,255)
tenki5_year = tenki4_year + 5
tenki6_year = tenki4_year + 5 + 5
tenki7_year = tenki4_year + 5 + 5 + 5
tenki8_year = tenki4_year + 5 + 5 + 5+5
tenki5 = tenki4 + 5
tenki6 = tenki4 + 5 + 5
tenki7 = tenki4 + 5 + 5 + 5
tenki8 = tenki4 + 5 + 5 + 5 + 5
print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
print tenki5_year;"年";tenki5;"歳"+chr$(13)
print tenki6_year;"年";tenki6;"歳"+chr$(13)
print tenki7_year;"年";tenki7;"歳"+chr$(13)
print tenki8_year;"年";tenki8;"歳"+chr$(13)
color rgb(0,0,0)
print"エンターキーを押してください",key$
key$=Input$(1)
if key$ = chr$(13) then goto Life_Tenki3:
'3ページ目
Life_Tenki3:
cls
color rgb(255,255,255)
print buffername$;"さんの人生の転機3"+chr$(13)
'計算部分
tenki_year9 = tenki8_year + 5
tenki_year10 = tenki8_year + 5 + 5
tenki_year11 = tenki8_year + 5 + 5 + 5
tenki_year12 = tenki8_year + 5 + 5 + 5 + 5
tenki9 = tenki8 + 5
tenki10 = tenki8 + 5 + 5
tenki11 = tenki8 + 5  + 5 + 5
tenki12 = tenki8 + 5 + 5 + 5 + 5
color rgb(255,0,255)
print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
print tenki_year9;"年";tenki9;"歳"+chr$(13)
print tenki_year10;"年";tenki10;"歳"+chr$(13)
print tenki_year11;"年";tenki11;"歳"+chr$(13)
print tenki_year12;"年";tenki12;"歳"+chr$(13)
color rgb(0,0,0)
print"エンターキーを押してください"
key$=Input$(1)
if key$=chr$(13) then goto Life_Tenki4:
'グラフィック描画領域 ここから
Life_Tenki4:
cls 3
line(0,0)-(1150,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
line(0,60)-(1150,470),rgb(127,255,212),bf
pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
line(0,470)-(1150,850),rgb(0,255,0),bf
pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
'グラフィック描画領域 ここまで
'4回目
cls
color rgb(255,255,255)
print buffername$;"さんの人生の転機４"+chr$(13)
color rgb(255,0,255)
print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
'計算部分
tenki_year13 = tenki_year12 + 5
tenki_year14 = tenki_year12 + 5 + 5
tenki_year15 = tenki_year12 + 5 + 5 + 5
tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
tenki13 = tenki12 + 5
tenki14 = tenki12 + 5 + 5
tenki15 = tenki12 + 5 + 5 + 5
tenki16 = tenki12 + 5 + 5 + 5 + 5
color rgb(255,0,255)
print tenki_year13;"年";tenki13;"歳"+chr$(13)
print tenki_year14;"年";tenki14;"歳"+chr$(13)
print tenki_year15;"年";tenki15;"歳"+chr$(13)
print tenki_year16;"年";tenki16;"歳"+chr$(13)
color rgb(0,0,0)
print"コマンドを入れてください"+chr$(13)
print"q+エンターキー:トップ画面"+chr$(13)
Print"エンターキー:次へ行く"+chr$(13)
print"コマンド:"
key$=Input$(1)
if key$=chr$(13) then goto Life_Tenki5:
IF key$="q" then goto Main_Screen1:
'
Life_Tenki5:
cls
color rgb(255,255,255)
print buffername$;"さんの人生の転機5" + chr$(13)
color rgb(255,0,255)
print"誕生日";year;"年";month;"月";day;"日" + chr$(13)
tenki_year17=tenki_year16+5
tenki_year18=tenki_year16+5+5
tenki_year19=tenki_year16+5+5+5
tenki_year20=tenki_year16+5+5+5+5
tenki17=tenki16+5
tenki18=tenki16+5+5
tenki19=tenki16+5+5+5
tenki20=tenki16+5+5+5+5
print tenki_year17;"年";tenki17;"歳"+chr$(13)
print tenki_year18;"年";tenki18;"歳"+chr$(13)
print tenki_year19;"年";tenki19;"歳"+chr$(13)
print tenki_year20;"年";tenki20;"歳"+chr$(13)
color rgb(0,0,0)
print"コマンドを入れてください"+chr$(13)
print"トップに戻る:q+エンターキー"+chr$(13)
print"最初から:エンターキー"+chr$(13)
print"コマンド:"
key$=Input$(1)
if key$=chr$(13) then goto Life_Tenki:
if key$="q" then goto Main_Screen1:
'改名チェック 改名候補を入力
'グラフィック　領域　ここから
'左側 部分
cls 3:talk ""
line(0,0)-(1100,60),rgb(0,0,255),bf
pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
line(0,60)-(1100,380),rgb(127,255,212),bf
pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
line(0,380)-(790,470),rgb(0,255,0),bf
pen 5:line(0,377)-(787,467),rgb(0,0,255),b
'中央の縦の線 ここから
'line(1100,0)-(1112,370),rgb(0,0,0),b
'中央の縦の線 ここまで
'右側 部分
line(1103,0)-(1700,60),rgb(0,0,255),bf
LINE(790,60)-(1700,470),rgb(127,255,212),bf
'グラフィック 領域　ここまで
'吉凶判定
if buffer_K=0 then
buffer_check$="○"
else
buffer_check$="☓"
endif
'Title 左側の文字
'rgb(255,255,255):白
color rgb(255,255,255)
locate 1,0
print"安斎流姓名判断 改名チェッカー"
'Title 右側の文字
locate size(2)-16,0
print"改名候補リスト(3件まで)"
'候補リストの名前部分 (右側)
'1行目
'locate 22,2
locate size(2)-18,2
color rgb(0,0,0)
print "番号"
'locate 26,2
locate size(2)-14,2
print"名前"
'locate 32,2
locate size(2)-8,2
print"吉凶"
'locate 36,2
locate size(2)-4,2
print"判定"
'2行目
select case kaimei_count
case 0:
'データー1件 の時
kaimei_count = kaimei_count + 1
buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
buffer_Kaimei$(0,1,0,0)=name$
buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
buffer_Kaimei$(0,0,0,1)=buffer_check$
'cls
color rgb(255,0,255)
'locate 23,3
locate size(2)-17,3
print buffer_Kaimei$(1,0,0,0)
'locate 25,3
locate size(2)-15,3
print buffer_Kaimei$(0,1,0,0)
'locate 32,3
locate size(2)-8,3
print buffer_Kaimei$(0,0,1,0)
locate size(2)-3,3
print buffer_Kaimei$(0,0,0,1)
case 1:
'データー2件の時
color rgb(255,0,255)
kaimei_count = kaimei_count + 1
buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
buffer_Kaimei$(0,2,0,0)=name$
buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
buffer_Kaimei$(0,0,0,2)=buffer_check$
'cls
'1行目
'locate 23,3
locate size(2)-17,3
print buffer_Kaimei$(1,0,0,0)
'locate 25,3
locate size(2)-15,3
print buffer_Kaimei$(0,1,0,0)
'locate 32,3
locate size(2)-8,3
print buffer_Kaimei$(0,0,1,0)
'locate 37,3
locate size(2)-3,3
print buffer_Kaimei$(0,0,0,1)
'2行目
'locate 23,4
locate size(2)-17,4
print buffer_Kaimei$(2,0,0,0)
'locate 25,4
locate size(2)-15,4
print buffer_Kaimei$(0,2,0,0)
'locate 32,4
locate size(2)-8,4
print buffer_Kaimei$(0,0,2,0)
'locate 37,4
locate size(2)-3,4
print buffer_Kaimei$(0,0,0,2)
case 2:
'データー3件の時
'1
color rgb(255,0,255)
kaimei_count = kaimei_count + 1
buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
buffer_Kaimei$(0,3,0,0)=name$
buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
buffer_Kaimei$(0,0,0,3)=buffer_check$
'2  1行目
'locate 23,3
locate size(2) - 17 , 3
print buffer_Kaimei$(1,0,0,0)
'locate 25,3
locate size(2) - 15 , 3
print buffer_Kaimei$(0,1,0,0)
'locate 32,3
locate size(2) - 8 , 3
print buffer_Kaimei$(0,0,1,0)
'locate 37,3
locate size(2) - 3 , 3
print buffer_Kaimei$(0,0,0,1)
'3  2行目
'locate 23,4
locate size(2) - 17 , 4
print buffer_Kaimei$(2,0,0,0)
'locate 25,4
locate size(2) - 15 , 4
print buffer_Kaimei$(0,2,0,0)
'locate 32,4
locate size(2) - 8 , 4
print buffer_Kaimei$(0,0,2,0)
'locate 37,4
locate size(2) - 3 , 4
print buffer_Kaimei$(0,0,0,2)
'4  3行目
'locate 23,5
locate size(2) - 17 , 5
print buffer_Kaimei$(3,0,0,0)
'locate 25,5
locate size(2) - 15 , 5
print  buffer_Kaimei$(0,3,0,0)
'locate 32,5
locate size(2)-8,5
print buffer_Kaimei$(0,0,3,0)
'locate 37,5
locate size(2)-3,5
print buffer_Kaimei$(0,0,0,3)
case 3:
'データー4件の時
'1
'2
'3
'4
'5
end select
'説明部分　左側
locate 0,2
color rgb(255,0,255)
print"思いついた候補の名前"
locate 0,4
print"(ニックネーム　or 会社名)を"
locate 0,6
print"10文字以内で入力してください"
color rgb(0,0,0)
locate 0,8
if kaimei_count = 1 or kaimei_count = 2 then
Input"名前:",kouho_name$
name$=kouho_name$
n=len(name$)
if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 36820
'else
if n =< 10 then goto 31770
endif
if kaimei_count = 3 then
Input"エンターキーを押してください",key$
if key$ = "" then
'データーを初期化して、トップ画面に行く
'1.データーを初期化
kaimei_count = 0
for i=1 to 3
buffer_Kaimei$(i,0,0,0) = ""
buffer_Kaimei$(0,i,0,0) = ""
buffer_Kaimei$(0,0,i,0) = ""
buffer_Kaimei$(0,0,0,i) = ""
next i
'2.トップ画面に行く
goto Main_Screen1:
endif
endif
'霊遺伝姓名学 ここから
'グラフィック領域　ここから
'性別入力
Reiden_Top_Input_Sextype:
cls 3:talk ""
No = 1:y = 0:key$ = "":bg = 0:init "kb:4"
sp_on 1,1:sp_put 1,(10,200),1,0
'Line1
line (0,0)-(1080,60),rgb(0,0,255),bf
line (0,0)-(1077,57),rgb(0,255,0),b
'Line 2
line (0,63)-(1080,537),rgb(127,255,212),bf
line (0,60)-(1077,540),rgb(0,0,0),b
'Line 3
line (0,540)-(1080,630),rgb(0,255,0),bf
line (0,543)-(1077,633),rgb(0,0,255),b
'グラフィック領域　ここまで
'音声表示
talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
'性別変数:sex_type=0
'文字色： 白
color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
'文字色：赤
color rgb(255,0,255)
print"占う人の性別の番号を入れてください" + chr$(13)
print" :1.女 性" + chr$(13)
print" :2.男 性" + chr$(13)
print" :3.前の画面に戻る" + chr$(13)
locate 0,12
color rgb(0,0,0)
print "1.女性を選択しました"
Reiden_Top_Input_Sextype2:
y = 0:key$ = "":bg = 0
while (key$ <> chr$(30) and bg <> 2 and y <> 1 and y <> -1 and key$ <> chr$(13) and key$ <> chr$(31))
key$=inkey$
y=stick(1)
bg=strig(1)
pause 2.50*100
wend
if (key$=chr$(31) or y=1) then
select case No
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,12:print "                                                           ":locate 0,12:print "3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
case 3:
No=1:sp_on 1,1:sp_on 3,0:beep:locate 0,12:print "                                                          ":locate 0,12:print "1.女性を選択しました":sp_put 1,(10,200),0,0:goto Reiden_Top_Input_Sextype2:
end select
endif
if (key$ = chr$(30) or y = -1) then
select case No
case 1:
No=3:sp_on 3,1:sp_on 1,0:beep:locate 0,12:print "                                                            ":locate 0,12:print"3.前の画面に戻るを選択":sp_put 3,(10,400),3,0:goto Reiden_Top_Input_Sextype2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,12:print"                                                           ":locate 0,12:PRINT"1.女性を選択しました":sp_put 1,(10,200),1,0:goto Reiden_Top_Input_Sextype2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:beep:locate 0,12:print "                                                        ":locate 0,12:print "2.男性を選択しました":sp_put 2,(10,300),2,0:goto Reiden_Top_Input_Sextype2:
end select
endif
if (bg=2 or key$=chr$(13)) then
select case No
case 1:
sp_on 1,0:sex_type=1:goto ReiIden_Input_female:
case 2:
sp_on 2,0:sex_type=2:goto ReiIden_Input_male:
case 3:
sp_on 3,0:goto Main_Screen1:
end select
endif
'描画領域　ここから
ReiIden_Input_male:
cls 3:init"kb:2":talk ""
'Line 1 Title
line (0,0)-(850,60),rgb(0,0,255),bf
line (0,0)-(850,57),rgb(0,255,0),b
'Line2 Input name
line (0,60)-(850,300),rgb(0,255,0),bf
line (0,60)-(850,303),rgb(0,0,255),b
'描画領域 ここまで
'文字色：白
color rgb(255,255,255)
print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
'文字色：黒
color rgb(0,0,0)
print "名前の姓の部分を入れてください" + chr$(13)
Input"名前(姓の部分):",name1$
'名の入力部分
cls
color rgb(255,255,255)
print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
color rgb(0,0,0)
print "名前の名の部分を入れてください"+chr$(13)
Input"名前(名の部分):",name2$:goto check:
'2.女性の場合　既婚か未婚か確認する
'2-2-1女性の姓の入力
'グラフィック領域　ここから
ReiIden_Input_female:
cls 3:init"kb:2":talk ""
'Line1 Title
line (0,0)-(850,60),rgb(0,0,255),bf
line (0,0)-(850,57),rgb(0,255,0),b
'Line 2 入力欄
line (0,60)-(850,360),rgb(0,255,0),bf
line (0,60)-(850,357),rgb(0,0,255),b
'Line 2 入力欄(名前入力)
'グラフィック領域 ここまで
cls:init"kb:2"
color rgb(255,255,255)
print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
color rgb(255,0,0)
print"既婚者の方は、旧姓を入れてください"+chr$(13)
color rgb(0,0,0)
print "名前の姓の部分を入れてください"+chr$(13)
Input "名前(姓の部分):",name3$
'2-2-2女性の名の入力
cls:init"kb:2"
color rgb(255,255,255)
print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
color rgb(0,0,0)
print "名前の名の部分を入れてください"+chr$(13)
Input "名前(名の部分):",name4$
'計算領域　ここから
check:
'苗字の画数:buffer_name1_count
'name1$,name2$:男性
if sex_type = 1 then
'sex_type=1 :女性のとき
buf_male_female_name1$=name3$
buf_male_female_name2$=name4$
endif
if sex_type = 2 then
'sex_type=2 :男性のとき
buf_male_female_name1$=name1$
buf_male_female_name2$=name2$
endif
buffer_name1_count=len(buf_male_female_name1$)
buffer_name2_count=len(buf_male_female_name2$)
select case buffer_name1_count
'AとBを求める
case 1:
'1.苗字の画数が1つのとき
'A:霊数 1
A=1
buf_name1$ = Mid$(buf_male_female_name1$,1,1)
B = char_count(buf_name1$)
case 2:
'2.苗字の画数が2つのとき
'2-1:苗字の1文字目:buf_name1$
buf_name1$ = Mid$(buf_male_female_name1$,1,1)
'2-2:苗字の2文字目:buf_name2$
buf_name2$ = Mid$(buf_male_female_name1$,2,1)
A=char_count(buf_name1$)
B=char_count(buf_name2$)
'B=char_count(buf_name2$)
case 3:
'3.苗字の画数が3つの時
'3-1:苗字の1文字目:buf_name1$
buf_name1$=Mid$(buf_male_female_name1$,1,1)
'3-2:苗字が3つのときの2つ目の文字をもとめる
'3-2:苗字の2つ目:buf_name2$
buf_name2$=Mid$(buf_male_female_name1$,2,1)
'3-3:苗字が3つのときの3文字目
'3-3:苗字の3文字目buf_name3$(name1$,3,1)
buf_name3$ = Mid$(buf_male_female_name1$,3,1)
if buf_name2$="々" then
A = char_count(buf_name1$) * 2
B = char_count(buf_name3$)
else
A = char_count(buf_name1$) + char_count(buf_name2$)
B = char_count(buf_name3$)
endif
'姓が4文字
case 4:
buf_name1$=Mid$(buf_male_female_name1$,1,1)
buf_name2$=Mid$(buf_male_female_name1$,2,1)
buf_name3$=Mid$(buf_male_female_name1$,3,1)
buf_name4$=Mid$(buf_male_female_name1$,4,1)
A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
B=char_count(buf_name4$)
case else:
end select
'2.C,Dを求める
select case buffer_name2_count
case 1:
'名が1文字の時
'CとDを求める
buff_name1$ = Mid$(buf_male_female_name2$,1,1)
C = char_count(buff_name1$)
'D=1:霊数
D = 1
case 2:
'名が2文字の時
'CとDを求める
'名の1文字目:buff_name1$
buff_name1$ = Mid$(buf_male_female_name2$,1,1)
'名の2文字目:buff_name2$
buff_name2$ = Mid$(buf_male_female_name2$,2,1)
C = char_count(buff_name1$)
D = char_count(buff_name2$)
case 3:
'名が3文字の時
'CとDを求める
'名の1文字目:buff_name1$
buff_name1$ = Mid$(buf_male_female_name2$,1,1)
'名の2文字目:buff_name2$
buff_name2$ = Mid$(buf_male_female_name2$,2,1)
if buff_name2$ = "々" then
buff_name2$ = buff_name1$
endif
'名の3文字目:buff_name3$
buff_name3$ = Mid$(buf_male_female_name2$,3,1)
C = char_count(buff_name1$)
D = char_count(buff_name2$) + char_count(buff_name3$)
end select
'1.先祖運を求める
buffer_Senzo = A + B
'2.性格運を求める
buffer_Seikaku = B + C
'3.愛情運を求める
buffer_Aijyou = C + D
'4.行動運を求める
buffer_Kouzou = A + D
'1.生数を求める
func buf_Seisu(buffer)
if buffer < 10 then
seisu=buffer
endif
if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
seisu = 0
endif
if buffer > 10 then
if buffer=20 then
seisu = 0
else
n = buffer - (fix(buffer / 10) * 10)
seisu = n
endif
endif
endfunc seisu
func buf_Wasu(buffer)
buf_wasu = 0:wasu = 0
if buffer < 10 then
'
wasu = buffer:goto wasu:
else
if buffer = 10 then
wasu = 1:goto wasu:
else
if buffer > 10  then
if buffer=19 or buffer=28 or buffer=37 then
wasu=1:goto wasu:
else
if buffer = 29 then
wasu=2:goto wasu:
'endif
else
a = fix(buffer / 10)
b = buffer - a * 10
c = a + b
if c = 19 or c=28 then
wasu=1
'
else
wasu=c
endif
endif
endif
endif
endif
if c < 10 then
wasu = c
'endif
endif
else
if buffer=19 or buffer=28 then
wasu = 1
endif
endif
wasu:
buf_wasu=wasu
endfunc buf_wasu
func buf_kyoudai$(buf_sex_type,buf_Sa$)
select case buf_sex_type
'1.女性の場合
case 1:
if (buf_Sa$ = "連続") then
buffer_kyoudai$="長女"
endif
if (buf_Sa$ = "1差") then
buffer_kyoudai$="次女"
endif
if (buf_Sa$ = "2差") then
buffer_kyoudai$="三女"
endif
if (buf_Sa$ = "3差") then
buffer_kyoudai$="四女"
endif
if (buf_Sa$ = "4差") then
buffer_kyoudai$="五女"
endif
'男性の場合
case 2:
if (buf_Sa$ = "連続") then
buffer_kyoudai$="長男"
endif
if (buf_Sa$ = "1差") then
buffer_kyoudai$="次男"
endif
if (buf_Sa$ = "2差") then
buffer_kyoudai$="三男"
endif
if (buf_Sa$ = "3差") then
buffer_kyoudai$="四男"
endif
if (buf_Sa$ = "4差") then
buffer_kyoudai$="五男"
endif
case else:
end select
kyoudai$=buffer_kyoudai$
endfunc kyoudai$
'1.タテ型
'1.同じ数字が2組ある場合
func Tate_gata$()
if Senzo_wasu = Seikaku_wasu  then
if Aijyou_wasu - Seikaku_wasu > 1 then
Spirit_type$="タテ型"
Sa_count = Aijyou_wasu - Seikaku_wasu - 1
Sa$ = str$(Sa_count) + "差"
else
Spirit_type$="タテ型"
Sa$="連続"
endif
endif
endfunc
'2. ナナメ型
'同じ数字が2組ある場合
func Naname_gata$()
if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
Spirit_type$="斜め型"
endif
if Seikaku_wasu - Senzo_wasu > 1 then
Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
Sa$=str$(Sa_count)+" 差"
else
Sa$="連続"
endif
endfunc
'3.表十字型
'同じ数字が2組ある場合
func Omote_jyuji_gata1$()
if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
Spirit_type$ = "表十字型"
endif
if Senzo _wasu - Seikaku_wasu > 1 then
Sa_count = Senzo_wasu - Seikaku_wasu - 1
else
if Senzo_wasu  -  Seikaku_wasu = 1  then
Sa$="連続"
endif
endif
endfunc
'3-1.表十字型(ヨコ系)
func Omote_jyuji_gata_yoko$()
endfunc
'3-2.表十字型(上下型)
func Omote_jyuji_gata_jyouge()
endfunc
'4.ヨコ型
func Yoko_gata$()
endfunc
'5.上下型
func Jyouge_gata$()
endfunc
'6.1.中広型(タテ系)
func Nakahiro_Tate$()
endfunc
'6.2中広型(ナナメ系)
func Nakahiro_Naname$()
endfunc
'6.3中広型(表十字型)
func Nakahiro_Omotejyuji$()
endfunc
'7.1.中一差(タテ系)
func Chuissa_Tate$()
endfunc
'7.2中一差(ナナメ系)
func Chuissa_Naname$()
endfunc
'8.1.中二差(タテ系)
func Chunissa_Tate$()
endfunc
'8.2.中二差(ナナメ系)
'9.1.順序型(タテ上下系)
func Chunissa_Tate_jyouge$()
endfunc
'9.2.順序型(タテ、ヨコ系)
func Jyunjyo_Tate_yoko$()
endfunc
'9.3.順序型(ナナメ、上下系)
func Jyunjyo_Naname_jyouge$()
endfunc
'9.4.順序型(ナナメ、ヨコ系)
'10.1.中順序型(ヨコ系)
func Nakajyunjyo_yoko$()
endfunc
'10.2.中順序型(上下系)
func Nakajyunjyo_jyouge$()
endfunc
'11.1.隔離型(タテ、上下系)
func Kakuri_tate_jyouge$()
endfunc
'11.2.隔離型(タテ、ヨコ系)
func Kakuri_tate_yoko$()
endfunc
'11.3.隔離型(ナナメ、上下系)
func Kakuri_Naname_jyouge$()
endfunc
'11.4.隔離型(ナナメ、ヨコ系)
func Kakuri_Naname_yoko$()
endfunc
'11.5.隔離型(タテ系)
func Kakuri_tate$()
endfunc
'11.6.隔離型(ナナメ系)
func Kakuri_naname$()
endfunc
'11.7.隔離型(上下、ヨコ系)
func Kakuri_Jyouge_yoko$()
endfunc
Spirit_type$="No data"
'1.先祖運　和数
Senzo_wasu = buf_Wasu(buffer_Senzo)
'2.先祖運 生数
Senzo_seisu = buf_Seisu(buffer_Senzo)
'3.性格運 和数
Seikaku_wasu = buf_Wasu(buffer_Seikaku)
'4.性格運 生数
Seikaku_seisu = buf_Seisu(buffer_Seikaku)
'5.愛情運 和数
Aijyou_wasu = buf_Wasu(buffer_Aijyou)
'6.愛情運 生数
Aijyou_seisu = buf_Seisu(buffer_Aijyou)
'7.行動運 和数
Koudou_wasu = buf_Wasu(buffer_Kouzou)
'8.行動運 生数
Koudou_seisu = buf_Seisu(buffer_Kouzou)
'計算領域 ここまで
'描画領域　ここから
Result_ReiIden1:
cls 3:key$ = "":bg = 0:init "kb:4":talk ""
'Title
line (0,0)-(1080,60),rgb(0,0,255),bf
pen 3:line (0,0)-(1080,57),rgb(255,255,255),b
'name
line (0,60)-(1080,165),rgb(0,255,0),bf
pen 5:line (0,63)-(1080,162),rgb(255,0,255),b
'生数、和数
line (0,165)-(1080,550),rgb(125,255,212),bf
pen 3:line(0,168)-(1080,547),rgb(0,0,255),b
'プッシュメッセージ
line (0,550)-(1080,650),rgb(0,255,0),bf
pen 5:line (0,553)-(1080,653),rgb(0,0,0),b
'描画領域　ここまで
color rgb(255,255,255)
print "霊遺伝姓名学　診断結果１/3"+chr$(13)
color rgb(0,0,0)
print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
color rgb(255,0,255)
print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
talk "診断結果１です、あなたのわすうとせいすうです。"
color rgb(0,0,0)
print"エンターキーを押してください"
while (bg <> 2 and key$ <> chr$(13))
key$=inkey$
bg=strig(1)
pause 2.50*100
wend
if (key$=chr$(13) or bg=2) then goto Result_ReiIden2:
'描画領域　ここから
Result_ReiIden2:
cls 3:init"kb:4"
'Title Color:青
line (0,0)-(860,60),rgb(0,0,255),bf
'Title 枠
line (0,0)-(860,57),rgb(255,0,255),b
'Message
line (0,60)-(860,650),rgb(127,255,212),bf
'Message 枠
Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
'
'描画領域　ここまで
color rgb(255,255,255)
print "霊遺伝姓名 診断結果2/3" + chr$(13)
'十二運の基礎運
'1.四大主流型
'パターン１ 同じ数字の場合
'1.オール同数化 全部同じ
'1-if
sa_count=0
if (Senzo_wasu = Aijyou_wasu ) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
Spirit_type$ = "オール同数化"
Sa$="3差"
else
'パターン１ 同じ数字2つの場合
'2.タテ型
'数字が２つ同じ
'2-if
if (Senzo_wasu = Aijyou_wasu) And abs(Aijyou_wasu - Koudou_wasu) and abs(Aijyou_wasu-Seikaku_wasu=1) then
Spirit_type$ = "タテ型"
'2.タテ型　1
if Koudou_wasu - Senzo_wasu = 1 then
Sa$="連続"
else
'2.タテ型　2
if abs(Senzo_wasu - Koudou_wasu) > 1 then
Sa_count =abs(Koudou_wasu - Senzo_wasu - 1)
Sa$=str$(Sa_count) + "差"
endif
endif
endif
endif
'2.タテ型　3
'1.type
'Spirit_type$ = "四大主流型 タテ型"
'3.斜め型
'数字が２つ同じ
'先祖=愛情 性格、（先祖＝愛情）、行動で連数
if (Senzo_wasu=Aijyou_wasu) and ((Senzo_wasu - Seikaku_wasu = 1) and (Aijyou_wasu-Seikaku_wasu=1) and (Koudou_wasu-Aijyou_wasu=1) and (Koudou_wasu-Seikaku_wasu=2)) then
Sa$="連続"
else
'先祖＝行動　性格運=愛情運
'3-if
if ((Senzo_wasu - Koudou_wasu = 0) And (Seikaku_wasu - Aijyou_wasu = 0)) then
Spirit_type$="斜め型"
'3.斜め型 1
if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
Sa$ = "連続"
else
if (Seikaku_wasu - Koudou_wasu) < 1 then
Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
endif
endif
if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
Sa_count = 3
Sa$ = str$(Sa_count - 1) + "差"
else
if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
Sa_count = Senzo_wasu - Seikaku_wasu
Sa$ = str$(Sa_count-1) + "差"
endif
endif
endif
'3-if
endif
'3.斜め型 2
'3.斜め型 3
'数字が２つ同じ
'表十字型
'先祖運＝愛情運　　行動運＝性格運
if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
Spirit_type$="表十字型"
Sa_coun = Senzo_wasu - Seikaku_wasu
if Sa_count > 1 then
Sa$ = str$(Sa_count) + "差"
else
if Sa_count = 1 then
Sa$ = "連続"
endif
endif
endif
'endif
'数字が２つ同じ
'表十字型(横型)
if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
Spirit_type$="表十字型(ヨコ型)"
'Sa$を後で書く
endif
'数字が２つ同じ
'表十字型(上下型)
if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
Spirit_type$="表十字型(上下型)"
'Sa$を後で書く
endif
'ヨコ型
if Koudou_wasu = Seikaku_wasu then
n=abs(Senzo_wasu - Seikaku_wasu)
n2 = abs(Aijyou_wasu-Seikaku_wasu)
Spirit_type$="ヨコ型"
if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
Sa$="連続"
endif
if n = n2 then
if n > 1 then
Sa_count = n - 1
Sa$=str$(Sa_count)+"差"
else
Sa_Count = abs(n - n2)
if Sa_Count > 1 then
Sa$ = str$(Sa_Count) + "差"
endif
endif
endif
endif
'上下型
'同じ数字が1組みある場合
if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
Spirit_type$ = "上下型"
if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
Sa$="連続"
endif
endif
'連続した数字が2組みある場合
if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
Spirit_type$="中広（なかこう)型(表十字型)"
n=Min(Koudou_wasu , Seikaku_wasu)
n2=Max(Aijyou_wasu , Senzo_wasu)
Sa_count = n - n2
if Sa_count > 1 then
Sa$ = str$(Sa_count - 1) + "差"
else
if Sa_count = 1 then
Sa$ = "連続"
endif
endif
endif
'中一差（タテ系)
'連続した数字が2組みある場合
if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
'Spirit_type$="中一差（タテ系)"
if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
n = Max(Koudou_wasu,Aijyou_wasu)
n2 = Max(Senzo_wasu,Seikaku_wasu)
else
n = Max(Koudou_wasu,Aijyou_wasu)
n2 = Min(Senzo_wasu,Seikaku_wasu)
endif
Sa_count2 = abs(n2 - n) - 1
if Sa_count2 >= 0 then
select case Sa_count2
case 1:
'中一差（タテ系)
Sa$ = "連続"
Spirit_type$="中一差型（タテ系)*"
case 2:
'中二差型（タテ系)
Sa$ = "1差"
Spirit_type$="中二差型（タテ系)"
case 3:
'中広（なかこう)型(タテ系)
Sa$ = "2差"
Spirit_type$="中三差型（タテ系)"
case 4:
Sa$ = "3差"
Spirit_type$="中広型(タテ系)"
case  else:
cls 3:print"例外に入りました"
end select
'
else
cls 3:print"例外に入りました"
endif
endif
'endif
'中一差（斜め系)
'連続した数字が2組みある場合
if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
n = Min(Koudou_wasu,Senzo_wasu)
n2 = Max(Aijyou_wasu,Seikaku_wasu)
Sa_count = n - n2 - 1
select case Sa_count
case 1:
'中一差（斜め系)
'連続した数字が2組みある場合
Sa$="1差"
Spirit_type$="中一差（斜め系)"
case 2:
'中二差（斜め系)
'連続した数字が2組みある場合
Sa$="2差"
Spirit_type$="中二差（斜め系)"
case 3:
Sa$="3差"
Spirit_type$="中広型（斜め系）"
case else:
end select
endif
'順序型(タテ、上下系)
'数字が４つ連続してる場合
if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
Spirit_type$="順序型(タテ、上下系)"
Sa$="連続"
endif
'中順序型(ヨコ系)
if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
Spirit_type$="中順序型(ヨコ系)"
Sa$="1差"
else
'順序型(タテ、ヨコ系)
'数字が４つ連続してる場合
if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
Spirit_type$="順序型(タテ、ヨコ系)"
Sa$="連続"
endif
endif
endif
'中順序型(上下系)
if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
n=Max(Senzo_wasu,Aijyou_wasu)
n2=Min(Koudou_wasu,Seikaku_wasu)
Sa_count = n2 - n
if Sa_count > 1 then
Spirit_type$="中順序型(上下系)"
Sa$ = Str$(Sa_count) + "差"
else
'順序型(斜め、上下系)
'数字が４つ連続してる場合
if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
Spirit_type$ = "順序型(斜め、上下系)"
Sa$="連続"
endif
endif
endif
'順序型(斜め、ヨコ系)
'数字が４つ連続してる場合
if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
Spirit_type$="順序型(斜め、ヨコ系)"
Sa$="連続"
endif
'隔離型(タテ、上下系)
'数字が1つおきに飛んでる場合
if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
Spirit_type$="隔離型(タテ、上下系)"
Sa$="1差"
endif
'隔離型(タテ、ヨコ系)
'数字が1つおきに飛んでる場合
if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
Spirit_type$="隔離型(タテ、ヨコ系)"
Sa$="1差"
endif
'隔離型(斜め、上下系)
'数字が1つおきに飛んでる場合
if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
Spirit_type$="隔離型(斜め、上下系)"
Sa$="1差"
endif
'隔離型(斜め、ヨコ系)
'数字が1つおきに飛んでる場合
if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
Spirit_type$="隔離型(斜め、ヨコ系)"
Sa$="1差"
endif
'隔離型(タテ系)
'数字が2つおきに飛んでる場合
if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
Spirit_type$="隔離型(タテ系)"
Sa$="1差"
endif
'隔離型(斜め系)
'数字が2つおきに飛んでる場合
if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
Spirit_type$="隔離型(斜め系)"
Sa$="1差"
endif
'隔離型(上下、ヨコ系)
'数字が2つおきに飛んでる場合
if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
Spirit_type$="隔離型(上下、ヨコ系)"
Sa$="1差"
'endif
endif
'ここに移動
Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
bg=0:bg2=0:key$="":init"kb:4":talk ""
color rgb(255,0,255)
print "●十二の基礎運" + chr$(13)
print Spirit_type$ + Sa$;chr$(13)
print "きょうだい：";Kyoudai$ + chr$(13)
talk "あなたのきょうだいは、"+Kyoudai$+"です"
color rgb(0,0,0)
print"前の画面:左の丸"+chr$(13)
'print"保存して、もう一度やる：スペースキー"+chr$(13)
print"トップ画面に戻る:右の丸"+chr$(13)
while (key$ <> chr$(13) and bg2<>2 and bg <> 2)
key$=inkey$
bg=strig(1)
bg2=strig(0)
pause 2.50*100
wend
if (key$ = chr$(13) or bg=2) then
goto Main_Screen1:
else
if (key$ = "b" or bg2 = 2) then
goto Result_ReiIden1:
endif
endif
'ファイル保存 占いデーターを一時保存
Save_Data1:
'********************************************************************
'1.ファイル読み込みで登録件数                                       *
'2.10件かどうかをチェックして10件以下なら保存する                   *
'3.10件以上なら保存しない                                           *
'********************************************************************
'登録件数を求める
'********************************************************************
n=0
open Parsonal_data$ + "Parsonal_data.dat" for append as #3
while (eof(3) = -1)
line input #3,a$
n = n + 1
wend
close #3
'********************************************************************
'登録件数を求める
'********************************************************************
if (n < 10) then
'********************************************************************
'`ファイル読み込み件数をチェック　ここまで
'*********************************************************************
'print#3は末尾は、セミコロンはいらない
'末尾にセミコロンをつけると改行しない
print #3,"名前:" + buf_male_female_name1$ + buf_male_female_name2$;",性別:"+str$(sex_type);",先祖和数:" + str$(Senzo_wasu);",先祖生数:" + str$(Senzo_seisu);",性格和数:" + str$(Seikaku_wasu);",性格生数:" + str$(Seikaku_seisu);",愛情生数:" + str$(Aijyou_wasu);",愛情和数:" + str$(Aijyou_seisu);",行動和数:" + str$(Koudou_wasu);",行動生数:" + str$(Koudou_seisu)
ui_msg "保存しました"
close #3
else
ui_msg "10件に到達しました。"
endif
goto Reiden_Top_Input_Sextype:
'個人データーリスト  *parsonal_data
Parsonal_data_top:
cls 3:No=0:Key$="":bg=0:y=0
sp_on 0,1:sp_put 0,(10,100),0,0
line(0,0)-(800,60),rgb(0,0,255),bf
pen 5:line(3,3)-(797,57),rgb(0,255,0),b
line (0,60)-(800,440),rgb(127,255,212),bf
pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
line (0,440)-(800,670),rgb(0,255,0),bf
pen 5:line (0,443)-(797,673),rgb(0,0,0),b
color rgb(255,255,255)
print"◎個人データーリスト" + chr$(13)
color rgb(255,0,255)
print " :1.霊遺伝姓名学リスト" + chr$(13)
print " :2.霊遺伝姓名学登録件数" + chr$(13)
print " :3.霊遺伝姓名学データー検索"+chr$(13)
print " :4.メインメニューへ行く"+chr$(13)
color rgb(0,0,0):locate 0,10
print "1.霊遺伝姓名学リストを選択"
Parsonal_data_top2:
key$="":bg=0:y=0
while (key$ <> chr$(13) and y <> 1 and y <> -1 and key$ <> chr$(31) and key$ <> chr$(30) and bg<>2)
key$=inkey$
bg=strig(1)
y=stick(1)
pause 2.50*100
wend
'*****************************************************
'1.下のカーソル ここから 2024.10
'*****************************************************
if (key$=chr$(31) or y=1) then
select case No
case 0:
No=1:sp_on 0,0:sp_on 1,1:beep:locate 0,10:print "                                         ":locate 0,10:PRINT " 2.霊遺伝姓名学登録件数を選択":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                         ":locate 0,10:print "3.霊遺伝姓名学データー検索を選択":sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
case 3:
No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
end select
endif
'******************************************************
'1.下のカーソル　 ここまで 2024.10
'******************************************************
'******************************************************
'2.上のカーソル　 ここから 2024.10
'******************************************************
if (y=-1 or key$=chr$(30)) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:beep:locate 0,10:print "                                          ":locate 0,10:print "4.メインメニューへ行くを選択":sp_put 3,(10,400),3,0:goto Parsonal_data_top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                           ":locate 0,10:print "1.霊遺伝姓名学リストを選択":sp_put 0,(10,100),0,0:goto Parsonal_data_top2:
case 2:
No=1:sp_on 1,1:sp_on 2,0:beep:locate 0,10:print "                                           ":locate 0,10:print "2.霊遺伝姓名学登録件数":sp_put 1,(10,200),1,0:goto Parsonal_data_top2:
case 3:
No=2:sp_on 2,1:sp_on 3,0:locate 0,10:print "                                                 ":locate 0,10:print "3.霊遺伝姓名学データー検索":beep:sp_put 2,(10,300),2,0:goto Parsonal_data_top2:
end select
endif
'******************************************************
'2.上のカーソル　ここまで 2024.10
'******************************************************
'3.決定ボタン　ここから  2024.10
'******************************************************
if (bg=2 or key$=chr$(13)) then
select case No
case 0:
sp_on 0,0:goto Parsonal_list1:
case 1:
sp_on 1,0:goto Entry_list_count:
case 2:
sp_on 2,0:goto Parsonal_list_Search:
case 3:
sp_on 3,0:goto Main_Screen1:
end select
endif
'******************************************************
'3.決定ボタン　ここまで 2024.10
'******************************************************
'登録件数
Entry_list_count:
N = 0:bg=0:key$="":init"kb:4":talk ""
open "Config/Parsonal_data/parsonal_data.dat" for input as #5
'N=1
while eof(5) = 0
line input #5,line$:N = N + 1
wend
close #5
c=N
cls 3
line (0,0)-(680,60),rgb(0,0,255),bf
pen 3:line (0,0)-(683,63),rgb(0,255,0),b
line (0,60)-(680,180),rgb(127,255,212),bf
pen 3:line (0,63)-(683,183),rgb(0,255,0),b
LINE (0,180)-(680,280),rgb(0,255,0),bf
pen 3:line (0,183)-(683,283),rgb(0,0,0),b
color rgb(255,255,255)
print "◎霊遺伝姓名学登録件数"+chr$(13)
color rgb(255,0,255)
print "登録件数は";c;"件です"+chr$(13)
color rgb(0,0,0)
print "エンターキーを押してください"+chr$(13)
while (key$ <> chr$(13) and bg <> 2)
key$=inkey$
bg=strig(1)
pause 2.50*100
wend
if (key$ = chr$(13) or bg = 2) then goto Main_Screen1:
'パーソナルリスト ここから
Parsonal_list1:
cls 3:bN=0:n=0:a=0:bg=0:bg2=0:init"kb:2"
'Title
line (0,0)-(850,60),rgb(0,0,255),bf
line (0,0)-(850,57),rgb(255,255,255),b
'個人名
line (0,60)-(850,165),rgb(0,255,0),bf
line (0,63)-(850,162),rgb(255,0,255),b
'数値リスト
line (0,165)-(850,550),rgb(255,212,212),bf
line (0,168)-(850,547),rgb(0,0,255),b
'ボタンメッセージ
line (0,550)-(850,730),rgb(0,255,0),bf:
line (0,553)-(853,733),rgb(255,0,255),b
'Parsonal_list2:
open "config/Parsonal_data/parsonal_data.dat" for input as #7
'bN=0
while eof(7)=0
line input #7,lines$:bN = bN + 1
wend
close #7
'a=0
open "config/Parsonal_data/parsonal_data.dat" for input as #8
'while eof(8)=0
for i=0 to (bN * 10) -1
input #8,buflines$(i)
'buflines$(i) = line$
'a  =  a  +  1
Next i
'wend
close #8
Parsonal_list2:
while n <= bN * 10
'Parsonal_list2:
cls
color rgb(255,255,255)
print "霊遺伝姓名学 リスト" + chr$(13)
'性別を出す
sex$ = show_sex_type$(buflines$((10*n) + 1))
'n=0
color rgb(0,0,0):
print buflines$(10*(n)+0);" ";sex$  + chr$(13)
print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
print buflines$((10*(n) + 4));buflines$((10*(n)+5))+chr$(13)
print buflines$((10*(n)+6));buflines$((10*(n)+7))+chr$(13)
print buflines$((10*(n)+8));buflines$((10*(n)+9))+chr$(13):
print "右の丸:次へ行く" + chr$(13)
print "左の丸：トップへ戻る" + chr$(13)
key$=input$(1)
if key$= " " then n=((n+1) Mod bN)
if key$=chr$(13) then goto Main_Screen1:
wend
Parsonal_list_Search:
open "Config/Parsonal_data/Parsonal_data.dat" for input as #1
while eof(1)=0
line input #1,lines$:hit_count=hit_count + 1
wend
close #1
open "Config/Parsonal_data/Parsonal_data.dat" for input as #2
for i=0 to hit_count*10 - 1
input #2,bufname$(i):buffname$(i)=right$(bufname$(i),4)
next i
close #2
Search_find:
cls 3:init "kb:2":talk ""
'グラフィック領域　ここから
line (0,0)-(770,60),rgb(0,0,255),bf
pen 5:line(0,0)-(767,57),rgb(0,255,0),b
line (0,60)-(770,170),rgb(127,255,212),bf
line(0,63)-(767,173),rgb(0,0,255),b
line(0,170)-(770,440),rgb(0,255,0),bf
pen 5:line(0,173)-(767,443),rgb(0,0,0),b
color rgb(255,255,255)
print "霊遺伝姓名判断 データー検索"+chr$(13)
color rgb(255,0,255)
print "登録件数:";hit_count;"件です"+chr$(13)
color rgb(0,0,0)
print "調べたい人の名前を入れてください"+chr$(13)
Input "名前:",name$
cls
for i = 0 to hit_count * 10 - 1
if name$ = buffname$(i) then
hcount = hcount + 1
endif
next i
if hcount > 0 then
init "kb:4":cls
bg=0:bg2=0:key$="":Color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
color rgb(0,0,0):print"調べたい名前:";name$;chr$(13)
color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
while (key$ <> chr$(13) and bg <> 2)
key$=inkey$
bg=strig(1)
bg2=strig(0)
pause 2.50*100
wend
if (key$=chr$(13) or bg=2) then hit_count=0:goto Main_Screen1:
else
cls:color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
color rgb(0,0,0):print"検索名:";name$+chr$(13)
color rgb(0,0,0):print"この人はヒットしませんでした"+chr$(13)
color rgb(255,0,255):print"エンターキーを押してください"+chr$(13)
a$=input$(1)
IF a$=chr$(13) then goto Main_Screen1:
endif
'相性のデーターを保存する機能
'保存ファイル：bestAisyou.dat
'保存フォルダ:config/Aisyou_dat/
Save_Aisyou:
open "config/Aisyou_data" for append as #1
print #1,"男性の名前:",name$,name2$,str$(buf_chiunn),"地運の単数","女性の名前",name3$,name4$,"外数の単数",str$(buf_gaiunn),"二人の相性:",bufferAiSyou$,"相性判定:",check$
close #1
ui_msg "保存しました"
key$ = input$(1)
'設定変更項目
Config_Setting:
cls 3:y=0:bg=0:key$="":init "kb:4":No=0:talk ""
sp_on 0,1:sp_put 0,(10,100),0,0
'グラフィック領域　ここから
'Line 1
line (0,0)-(850,60),rgb(0,0,255),bf
line (0,0)-(850,57),rgb(255,255,255),b
'Line 2
line (0,60)-(850,460),rgb(127,255,212),bf
line (0,57)-(850,457),rgb(0,0,0),b
'Line 3
line (0,460)-(850,640),rgb(0,255,0),bf
line (0,457)-(850,637),rgb(0,0,0),b
'グラフィック領域　ここまで
color rgb(255,255,255)
print "設定　トップメニュー" + chr$(13)
color rgb(255,0,255)
print " :1.キーボードの設定" + chr$(13)
print " :2.トップ画面に戻る"
'print " :4.プログラムの終了"+chr$(13)
color rgb(0,0,0):locate 0,10
print "1.キーボードの設定を選択"
Config_Setting2:
y=0:bg=0:key$=""
while (y<>-1 and y<>1 and key$<>chr$(13) and key$<>chr$(30) and key$ <> chr$(31) and bg <> 2)
key$=inkey$
y=stick(1)
bg=strig(1)
pause 2.50*100
wend
if (y=1 or y=-1 or key$=chr$(31) or key$=chr$(31)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.トップ画面に戻るを選択":sp_put 1,(10,200),1,0:goto Config_Setting2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.キーボードの設定を選択":goto Config_Setting2:
end select
endif
if (key$=chr$(13) or bg=2) then
select case No
case 0:
sp_on 0,0:goto Keyboard_Setting:
case 1:
sp_on 1,0:goto Main_Screen1:
end select
endif
'1.キーボードの設定
Keyboard_Setting:
cls 3:y = 0:key$ = "":bg = 0:init "kb:3":talk ""
sp_on 0,1:sp_put 0,(10,100),0,0
'グラフィック領域　ここから
'Line 1
line (0,0)-(1050,60),rgb(0,0,255),bf
line (0,0)-(1050-3,57),rgb(255,255,255),b
'Line 2
line (0,60)-(1050,460),rgb(127,255,212),bf
line (0,57)-(1050-3,457),rgb(0,0,0),b
'Line 3
line (0,460)-(1050,640),rgb(0,255,0),bf
line (0,457)-(1050-3,637),rgb(0,0,0),b
'グラフィック領域　ここまで
'文字色　白
color rgb(255,255,255)
print "設定1 キーボードの設定" + chr$(13)
color rgb(255,0,255)
print " :1.バーチャルキーボード表示する" + chr$(13)
print " :2.バーチャルキーボードを表示しない" + chr$(13)
print " :3.トップ画面に戻る" + chr$(13)
print " :4.終了する" + chr$(13)
color rgb(0,0,0)
locate 0,10
print "1.バーチャルキーボードを表示するを選択"
Keyboard_Setting2:
y=0:bg=0:key$=""
while (y <> 1 and key$ <>chr$(13)  and key$ <> chr$(31) and bg <> 2 )
key$=inkey$
y=stick(1)
bg=strig(1)
pause 2.50*100
wend
'****************************************************************************************************************
'下のカーソル　ここから
'****************************************************************************************************************
if (y=1 or key$=chr$(31)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "2.バーチャルキーボードを表示しないを選択":sp_put 1,(10,200),1,0:goto Keyboard_Setting2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "3.トップ画面に戻るを選択":sp_put 2,(10,300),2,0:goto Keyboard_Setting2:
case 2:
No=3:sp_on 3,1:sp_on 2,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "4.終了するを選択 ":sp_put 3,(10,400),3,0:goto Keyboard_Setting2:
case 3:
No=0:sp_on 0,1:sp_on 3,0:beep:locate 0,10:print "                                                            ":locate 0,10:print "1.バーチャルキーボードを表示するを選択":sp_put 0,(10,100),0,0:goto Keyboard_Setting2:
end Select
endif
'*******************************************************************************************************************
'下のカーソル　ここまで
'*******************************************************************************************************************
'*******************************************************************************************************************
'上のカーソル　ここから
'********************************************************************************************************************
'********************************************************************************************************************
'上のカーソル　ここまで
'********************************************************************************************************************
'********************************************************************************************************************
'決定ボタン　ここから
'*********************************************************************************************************************
if (key$=chr$(13) or bg=2) then
select case No
case 0:
init "kb:2":
case 1:
sp_on 1,0:init "kb:0":
case 2:
sp_on 2,0:goto Main_Screen1:
case 3:
ui_msg "プログラムを終了いたします":talk "プログラムを終了いたします":color rgb(255,255,255):cls 3:cls 4:end
end select
endif
'*********************************************************************************************************************
'決定ボタン　ここまで
'*********************************************************************************************************************
