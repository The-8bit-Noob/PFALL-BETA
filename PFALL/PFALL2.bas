		 5REM ON ERROR RUN
    10REM IFPAGE>&E00 THEN32000
    11REM *FX200,2
    15SL%=3:Z%=RND(-TIME)
    17REM *TV255
    18MODE7:DIM Q(6)
    19VDU23;11;0;0;0;
    20DIM S(12,15),T(12,12),T$(12),B(3,12),D$(4),P$(15),CO$(6)
    21RESTORE40
    22FOR XX=1TO6:READ Q(XX):NEXT
    23WZ=0:SA$="":QM=0:QQ=0:AR=0:G$=STRING$(25," ")
    24GOSUB1342
    26DIM M(6,3),C(6,3),P(6),G(6),N$(12)
    28C$="JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC"
    30S$="Sol VerlGwifZenoQetzFlanWephNookYttrDrunIpneCheeLingOvisJuss"
    38GOTO1400
    40DATA5000,3900,4000,4500,3300,3500
    42TIME=0:IF R=1 THEN 46
    44H3=1:H4=1:GOTO48
    46GOSUB648:GOSUB752:GOSUB914:GOTO68
    48S1=1:T1=1:L1=1:GOSUB880:PRINTTAB(10,22)"PRESS A KEY TO START"
    49PROCi
    50I1=RND(1)
    52FL=1:PQ=1:GOSUB590
    54GQ=1
    56FOR I1=1TO T9/P9
    58FOR P1=1TO P9:S7=(P1-1)*6+1:PRINTTAB(0,21)CHR$135;CHR$157;CHR$133;SPC36;TAB(3,21);N$(P1);" in ";T$(T1):GOSUB490
    60FOR GJ=20TO23:PRINTTAB(0,GJ)CHR$135;CHR$157;CHR$135:G$="10101":PROCMUSIC(1):NEXT:GOSUB1052
    61IF SW=9 PRINTTAB(22,22)CHR$129;"'A' to turn page"
    62L1=L1+6:T1=T1+1:NEXT,:PQ=0
    64IF GQ=1 GOSUB914:GQ=0
    66PROCi
    68D=T(9,1):Y=T(10,1):T1=1:FOR I=2TO T9:IF T(10,I)<Y THEN 80
    70IF (RND(1)>.93)AND(SA$="") GOSUB1370
    72K0=K0+1:IF K0>145 SA$=""
    74IF T(10,I)>Y THEN 82
    76IF T(9,I)>D THEN 82
    78IF (T(9,I)=D)AND(RND(1)>.5) THEN 82
    80D=T(9,I):Y=T(10,I):T1=I
    82NEXT
    84IF Y1=Y THEN 126
    86D1=1:Y1=Y:T2=T1:GOSUB584
    88PROCi
    90IF Y1<>2070 THEN96
    92REM
    94REM
    96T1=T2:IF Y1<Y9 THEN126
    98GOSUB592:XX=5
   100PRINTTAB(10,17)CHR$132;CHR$157;SPC(17);CHR$135;CHR$157
   101PRINTTAB(10,18)CHR$132;CHR$157;CHR$147"<,,,,,,,,,,,,,l "CHR$135;CHR$157
   102PRINTTAB(10,19)CHR$132;CHR$157;CHR$147"5"CHR$136"END OF GAME"CHR$137"j "CHR$135;CHR$157
   104PRINTTAB(10,20)CHR$132;CHR$157;CHR$147"-,,,,,,,,,,,,,. "CHR$135;CHR$157
   105PRINTTAB(10,21)CHR$132;CHR$157;SPC(17);CHR$135;CHR$157
   106PRINTTAB(11-INT(LEN(N$(WINNER))/2),23)CHR$132"*** ";N$(WINNER);" has won ***"
   107*FX15,0
   108A$=INKEY$(0):IF XX>221 THEN XX=5 ELSE XX=XX+16:SOUND1,-3*SL%,XX,2
   110IF A$="" GOTO108
   112CLS:PROCback(132,135)
   114FOR E%=0TO1:PRINTTAB(4,5+E%)CHR$141"Perhaps"CHR$129;N$(WINNER);CHR$132"won't be so":NEXT
   116FOR E%=0TO1:PRINTTAB(4,7+E%)CHR$141"lucky in the next game!!":NEXT
   118FOR E%=0TO1:PRINTTAB(2,15+E%)CHR$141;CHR$130"Do you want to set up"CHR$131"another"CHR$130"game?":NEXT
   120PROCi
   122IF A$="Y" RUN
   124GOTO1368
   126D1=D:M=INT((D1-1)/30):L=3*M+1:GOSUB1058
   128M=INT((D1-1)/30)
   130H3=L:H4=D1-30*M:L=(T1-1)*6+1
   132S1=T(8,T1):M=S(8,S1):GOSUB1084
   134FOR XX=1TO3:P$(XX)="":NEXT
   136TXT$=CHR$129:ON T(12,T1)+1 GOTO172,164,156,138
   138IF RND(1)>.5 P$(1)="3 weeks delay":P$(2)="for Customs":P$(3)="":GOTO174
   140T(11,T1)=INT(T(11,T1)/2)
   142FOR XX=1TO5:T(XX,T1)=INT(T(XX,T1)*(1-.4*RND(1))):NEXT
   144T(6,T1)=INT(T(6,T1)*RND(1))
   146T(7,T1)=T(1,T1)+T(2,T1)+T(3,T1)+T(4,T1)
   148P$(1)="3 weeks late *"
   150P$(2)="Pirate attack"
   152P$(3)=" mid voyage  "
   154GOTO174
   156P$(1)="2 weeks late *"
   158P$(2)="Navigational "
   160P$(3)="   error     "
   162GOTO174
   164P$(1)="1 week late *"
   166P$(2)="   Computer"
   168P$(3)="   error     "
   170GOTO174
   172TXT$=CHR$130:P$(2)="On Schedule  ":P$(1)="":P$(3)=""
   174FOR XX=1TO3:PRINTTAB(23,7+XX)TXT$;P$(XX);CHR$151:NEXT:WZ=0:GOSUB 1324
   176PROCi
   178FOR ZZ=1TO3:PRINTTAB(21+5*ZZ,13)STR$(T(ZZ,T1)):NEXT
   180FOR ZZ=4TO6:PRINTTAB(21+5*(ZZ-3),16)STR$(T(ZZ,T1)):NEXT
   182IF QQ=1 RETURN
   184GOSUB648:GOSUB1134
   186Z1$="Requirement:":Z2$="No. for sale:   ":Z3$="Offer is:"
   188Z4$="You ask:":J1=1
   190FORE%=0TO2:PRINTTAB(23,8+E%)CHR$136;CHR$145;"$$$$$$$$$$$$";CHR$137;CHR$151:NEXT
   192PRINTTAB(23,9)CHR$130;"  SELL CARGO ";CHR$151
   194PRINTTAB(23,10)CHR$136;CHR$145;"$$$$$$$$$$$$";CHR$137;CHR$151
   196G$="101200530710120":PROCMUSIC(3)
   198FOR I1=1TO6
   200PROCtime
   202GOSUB1152
   204FOR Q5=9TO19STEP2:PRINTTAB(3,Q5)SPC16:NEXT
   206IF (S(I1,S1)>=0)OR(T(I1,T1)<.5)OR(P(I1)<100) THEN 280
   208G$="121071290512107":PROCMUSIC(3)
   210PRINTTAB(3,9)CO$(J1):PRINTTAB(3,11)Z1$;" ";-INT(S(I1,S1))
   212PRINTTAB(3,13)Z2$;
   214XF=16:YF=13:N%=2:GOSUB728
   216PRINTTAB(3,19)SPC15
   218IF X=0 THEN 280
   220IF X<=T(I1,T1) THEN 226
   222PRINTTAB(3,19)"Only ";T(I1,T1);" in hold"
   224GOTO212
   226IF X<=-INT(S(I1,S1)) THEN 230
   228PRINTTAB(3,19)"NO DUMPING":GOTO280
   230F%=0:FOR K1=1TO K9
   232IF K1<3 G$=STRING$(14,CHR$255):PRINTTAB(3,15)CHR$145;G$;CHR$147:G$="19305":PROCMUSIC(1):PROCdelay(5):PRINTTAB(3,15)SPC16:GOTO240
   234G$="08905":PROCMUSIC(1)
   236PRINTTAB(3,19)"Last offer:";
   238GOTO246
   240PRINTTAB(11,17)SPC8
   242PRINTTAB(3,15)Z3$;
   244Y2=(L1+1)*10/3
   246PRINT;100*INT(.009*P(I1)*X+.5):PRINTTAB(11,17)SPC6
   248PRINTTAB(3,17)Z4$:YF=17:XF=11:X1=X
   250N%=6:GOSUB728:Y=X:X=X1
   252IF(Y>P(I1)*X/10)AND(Y<P(I1)*X*10) THEN 258
   254PRINTTAB(3,19)"Try again       "
   256GOTO242
   258IF Y<=P(I1)*X THEN F%=1:K1=K9:GOTO264
   260IF Y>(1+ABS(FNZ(X)))*P(I1)*X THEN K1=K9:GOTO264
   262P(I1)=.8*P(I1)+.2*Y/X
   264NEXT:IF F%=1 GOTO270
   266PRINTTAB(3,19)"No thanks       "
   268GOTO280
   270PRINTTAB(3,19)"We'll buy!!     "
   272T(I1,T1)=T(I1,T1)-X
   274T(7,T1)=T(7,T1)+X*(I1<5)
   276T(11,T1)=T(11,T1)+Y
   278S(I1,S1)=S(I1,S1)+X
   280J1=J1+1
   281PROCdelay(5)
   282AZ$="  ":GOSUB1168:AZ$=STR$(T(I1,T1)):GOSUB1168
   284NEXT
   286REM
   288REM
   290Z1$=" at ":Z2$="No. wanted:":Z3$=" asks ":Z4$="You offer:"
   292J1=1
   294FORE%=0TO2:PRINTTAB(23,8+E%)CHR$136;CHR$145;"$$$$$$$$$$$$";CHR$137;CHR$151:NEXT
   296PRINTTAB(23,9)CHR$131;"  BUY GOODS ";CHR$151
   300G$="149201010714907":PROCMUSIC(3)
   302FOR I1=1TO6
   304PROCtime
   306GOSUB1152
   308FOR Q5=9TO19STEP2:PRINTTAB(3,Q5)SPC16:NEXT
   310IF(P(I1)<100)OR(G(I1)<=0)OR(S(I1,S1)<1) THEN 410
   312IF(I1<=4)AND(T(7,T1)>=W) THEN 410
   314G$="169071770516907":PROCMUSIC(3)
   316PRINTTAB(3,9)CO$(J1)
   318PRINTTAB(3,11)STR$(INT(S(I1,S1)));Z1$;100*INT(.011*P(I1)+.5)
   320PRINTTAB(3,13)Z2$;"    ";CHR$8;CHR$8;CHR$8;CHR$8;
   322XF=14:YF=13
   324N%=2:GOSUB728:PRINTTAB(3,19)SPC16
   326IF X=0 THEN 410
   328IF(I1>4)OR(X+T(7,T1)<=W) THEN 334
   330PRINTTAB(3,19)"Max load = ";W-T(7,T1)
   332GOTO320
   334IF X<=INT(S(I1,S1)+.2) THEN 340
   336PRINTTAB(3,19)"Only ";INT(S(I1,S1));" on offer"
   338GOTO320
   340F%=0:FOR K1=1TO K9
   342IF K1<3 G$=STRING$(14,CHR$255):PRINTTAB(3,15)CHR$145;G$;CHR$147:G$="19305":PROCMUSIC(1):PROCdelay(5):PRINTTAB(3,15)SPC16:GOTO350
   344G$="08905":PROCMUSIC(1)
   346PRINTTAB(3,19)"Last offer:";
   348GOTO354
   350PRINTTAB(11,17)SPC8
   352PRINTTAB(3,15)MID$(S$,M,4);Z3$;
   354PP=ABS(P(I1))
   356PRINT;100*INT(.011*PP*X+.5):PRINTTAB(13,17)SPC6
   358PRINTTAB(3,17)Z4$:YF=17:XF=13:X1=X
   360N%=6:GOSUB728:Y=X:X=X1
   362IF(Y>PP*X/10)AND(Y<PP*X*10) THEN 366
   364PRINTTAB(3,19)"Try again       "
   366IF Y>=PP*X THEN F%=1:K1=K9:GOTO372
   368IF Y<(1-ABS(FNZ(X)))*PP*X THEN K1=K9:GOTO372
   370P(I1)=.8*P(I1)+.2*Y/X
   372NEXT:IF F%=1 GOTO380
   374PRINTTAB(3,19)"Not enough      ":PROCdelay(8):PRINTTAB(3,19)"NO SALE         "
   376G$="0812007310069150612005320":PROCMUSIC(5)
   378GOTO410
   380IF Y<=T(11,T1) THEN 400
   382T(12,T1)=0
   384PRINTTAB(3,19)"Not enough cash!":PROCdelay(8):PRINTTAB(3,19)SPC16;TAB(3,19)"_`";T(11,T1);"_":PROCdelay(6)
   386GOSUB718
   388IF(S(7,S1)<10)+(T(11,T1)+ B(1,B1)<Y) THEN 374
   390FOR XZ=1TO400:NEXT
   392PRINTTAB(3,19);Y-T(11,T1);" from Bank"
   394B(1,B1)=B(1,B1)-Y+T(11,T1):T(11,T1)=Y
   396PROCdelay(12)
   398IF Y>T(11,T1) THEN 374
   400PRINTTAB(3,19)CHR$130;" *** SOLD ***  "
   402G$="1010214904":PROCMUSIC(2):T(I1,T1)=T(I1,T1)+X
   404T(7,T1)=T(7,T1)-X*(I1<5)
   406S(I1,S1)=S(I1,S1)-X
   408T(11,T1)=T(11,T1)-Y
   410J1=J1+1
   411PROCdelay(5)
   412AZ$="  ":GOSUB1168:AZ$=STR$(T(I1,T1)):GOSUB1168
   414NEXT
   416GOSUB718
   418IF(S(7,S1)<10)+(T(11,T1)+B(1,B1)=0) THEN 422
   420GOSUB678
   422FOR E%=0TO1:PRINTTAB(2,21+E%)CHR$141;CHR$133;"You are on ";MID$(S$,M,4);CHR$140;:NEXT
   423S(7,S1)=S(7,S1)+.02+RND(1)/25
   424GOSUB490
   426J=0
   428F%=0:FOR I=1TO6:IF S(I,S1)>=0 THEN 434
   430IF S(I,S1)<G(I) THEN F%=I:I=6:GOTO434
   432J=J+1
   434NEXT:IF F%<>0 I=F%:GOTO442
   436IF J>I THEN 442
   438S(7,S1)=S(7,S1)+G9
   440G0=S(7,S1)
   442IF S9=15 THEN 68
   444J=0
   446FOR I=1TO S9:J=J+S(7,I):NEXT
   448FOR E%=0TO1:PRINTTAB(2,20+E%)CHR$141;CHR$133"Developmental status of galaxy"CHR$130;INT(J/S9*100/7);"%":NEXT
   450PROCdelay(18)
   452IF J/S9<7 THEN 68
   454S1=S9+1:S9=S9+1:GOSUB738:GOSUB462:S(9,S1)=D1:S(10,S1)=Y1:FOR J=1TO6
   456S(J,S1)=0:NEXT:GOSUB736
   458CLS:PROCback(134,132):FOR E%=0TO1:PRINTTAB(3,5+E%)CHR$141"New class <4> Star called"CHR$131;MID$(S$,S(8,S1),4):NEXT
   460PROCdelay(14):GOSUB752:GOTO68
   462X=(RND(1)-.5)*100:Y=50*RND(1)
   464IF(ABS(X)<25)AND(Y<25) THEN 462
   466F=1:GOSUB472
   468IF F=0 THEN 462
   470S(7,S1)=0:RETURN
   472ON H GOTO480,478,476,474
   474Z=X:X=-Y:Y=Z:GOTO480
   476Y=-Y:GOTO480
   478Z=X:X=Y:Y=Z
   480FOR J=1TO S1-1
   482IF SQR((X-S(11,J))^2+(Y-S(12,J))^2)>=D9 THEN 488
   484F=0
   486D%=J:J=S1-1:NEXT:J=D%:RETURN
   488NEXT:S(11,S1)=INT(X):S(12,S1)=INT(Y):H=1-(H<=3)*H:RETURN
   490PRINTTAB(0,23)CHR$135;CHR$157;SPC37
   491IF PQ=1 THEN 494
   492PRINTTAB(23,23)CHR$129;"X for Options";
   494REM *FX15,0
   495PRINTTAB(2,23)CHR$136;CHR$132;"Next Star ?";:A$=GET$
   496IF(SW=9)AND(A$="A") GOSUB986:GOTO490
   497IF PQ=1 THEN 500
   498IF A$="X" GOSUB1170:GOTO490
   500F%=0:FOR I=1TOS9:J=S(8,I)
   502IF LEFT$(A$,1)=MID$(S$,J,1) THEN F%=1:D%=I:I=S9:GOTO504
   504NEXT:IF F%=1 I=D%:GOTO518
   506GOTO512
   508GOSUB590:GOTO514
   510S2=S1:GOSUB752:GOTO514
   512FOR E%=0TO1:PRINTTAB(2,21+E%)CHR$141;CHR$129;"There is no system beginning with ";A$;" ";:NEXT
   513PROCdelay(7):PRINTTAB(2,21)SPC37;TAB(2,22)SPC37
   514REM
   516GOTO490
   518T(8,T1)=I
   520IF I<>S1 THEN 526
   522FOR E%=0TO1:PRINTTAB(2,21+E%)CHR$129;CHR$141"Choose a different system to visit  ":NEXT
   524GOTO514
   526D2=SQR((S(11,S1)-S(11,I))^2+(S(12,S1)-S(12,I))^2)/R9
   528D2=INT(D2):WZ=0:QM=0
   530S(7,S1)=S(7,S1)+.02+RND(1)/25
   532IF GQ=1 THEN 552
   534CLS:PROCback(129,135):IF RND(1)>Q/2 THEN 552
   536ON I GOTO546,542,538 ELSE GOTO538
   538FOR E%=0TO1:PRINTTAB(3,2+E%)CHR$141"Ship does not pass inspection":NEXT
   540GOTO548
   542FOR E%=0TO1:PRINTTAB(3,2+E%)CHR$141"Crewmen demand a vacation":NEXT
   544GOTO548
   546FOR E%=0TO1:PRINTTAB(3,2+E%)CHR$141"Local holiday soon":NEXT
   548FOR E%=0TO1:PRINTTAB(3,4+E%)CHR$141"..."CHR$136;I;CHR$137"week delay":NEXT
   550D2=D2+7*I
   552T(9,T1)=T(9,T1)+D2
   554IF T(9,T1)<=360 THEN 560
   556T(9,T1)=T(9,T1)-360
   558T(10,T1)=T(10,T1)+1
   559IF T(9,T1)>360 GOTO556
   560M=INT((T(9,T1)-1)/30)
   562L=3*M+1
   564IF GQ=1 THEN 570
   566FOR E%=0TO1:PRINTTAB(2,10+E%)CHR$141;CHR$130"The ETA at ";MID$(S$,J,4);" is ";MID$(C$,L,3);" ";T(9,T1)-30*M;",";T(10,T1);:NEXT
   570I=(INT(RND(1)*7+1)*(-(RND(1)>Q/2)))
   572IF I>3 THEN 570
   574T(9,T1)=T(9,T1)+I*7
   576IF T(9,T1)<=360 THEN 582
   578T(9,T1)=T(9,T1)-360
   580T(10,T1)=T(10,T1)+1
   582T(12,T1)=I:IF GQ<>1 PROCdelay(18)
   583RETURN
   584GOSUB736
   586AR=1:CLS:PRINTTAB(0,0)CHR$157;CHR$133;H4;" ";MID$(C$,H3,3);",";"Annual Report ";Y1-2070;:GOTO597
   588RETURN
   590GOTO984
   592REM
   594REM
   596CLS
   597FOR I%=1TO24:PRINTTAB(0,I%)CHR$157;CHR$132;:NEXT
   598PRINTTAB(1,1)CHR$145"````````k``````k``````k``````k```````"
   600PRINTTAB(1,2)CHR$130"Captain   Ship   Bank  Cargo   Total"
   602PRINTTAB(1,3)CHR$130"          '000s  '000s value   assets"
   604PRINTTAB(1,4)CHR$145"ppppppppzppppppzppppppzppppppzppppppp"
   606MAX=0:FOR B1=1TO P9:GOSUB724:NEXT
   608IF P9<5 PZ=4:L0=5:GOTO614
   610IF P9<6 PZ=3:L0=5:GOTO614
   611IF P9>9 PZ=1:L0=5:GOTO614
   612PZ=2:L0=5
   614FOR P1=1TO P9
   616M1=0:M2=0
   618FOR I1=0TO T9/P9-1
   620M1=M1+T(11,P9*I1+P1)
   622FOR K=1TO6
   624M2=M2+T(K,P9*I1+P1)*Q(K)
   626NEXT,
   628S7=(P1-1)*6+1
   630M3=M2+M1+B(1,P1)
   632IF M3>MAX MAX=M3:WINNER=P1
   634PRINTTAB(2,L0)N$(P1)
   636@%=7:PRINTTAB(10,L0),INT(M1/1000):PRINTTAB(17,L0),INT(B(1,P1)/1000)
   638PRINTTAB(24,L0),INT(M2/1000):@%=9:PRINTTAB(31,L0),INT(M3):@%=2570
   640L0=L0+PZ
   642NEXT
   644PROCdelay(12):PRINTTAB(1,5+(WINNER-1)*PZ)CHR$129;
   645IF AR=1 PRINTTAB(12,22)"Press a key":AR=0
   646RETURN
   648R1=1-(S(7,S1)>=5)-(S(7,S1)>=10)
   650D2=12*(Y1-S(10,S1))+(D1-S(9,S1))/30
   652F%=0:FOR I=1TO6
   654G(I)=(1+S(7,S1)/15)*(M(I,R1)*S(7,S1)+C(I,R1))
   656IF ABS(G(I))>.01 THEN 660
   658P(I)=0:F%=1:I=6:GOTO670
   660Q1=ABS(G(I)*12):Q2=ABS(S(I,S1)+D2*G(I)):IF Q1>Q2 Q3=Q2:GOTO664
   662Q3=Q1
   664S(I,S1)=SGN(G(I))*Q3
   666P(I)=Q(I)*(1-SGN(S(I,S1))*ABS(S(I,S1)/(G(I)*X9)))
   668P(I)=100*INT(P(I)/100+.5)
   670NEXT:IF F%=1 THEN 672 ELSE IF(SA$="")OR(S1<>VAL(LEFT$(SA$,1))) THEN 676
   672P(VAL(MID$(SA$,2,1)))=VAL(RIGHT$(SA$,2))*100
   674S(VAL(MID$(SA$,2,1)),S1)=-ABS(S(VAL(MID$(SA$,2,1)),S1))
   676S(9,S1)=D1:S(10,S1)=Y1:RETURN
   678CLS:PROCback(133,135):FOR E%=0TO1:PRINTTAB(3,2+E%)CHR$141"Do you wish to visit":NEXT:FOR E%=0TO1:PRINTTAB(3,4+E%)CHR$141"the local bank?":NEXT
   680PROCi
   682IF A$="Y" THEN688
   684IF A$="N" RETURN
   686GOTO680
   688GOSUB718:GOSUB724
   690FOR E%=0TO1:PRINTTAB(2,6+E%)CHR$141;CHR$132"You have"CHR$134"`";INT(B(1,B1))CHR$132"in the bank";TAB(2,8+E%)CHR$141;CHR$132"And"CHR$134"`";T(11,T1)CHR$132"on the ship":NEXT
   694IF B(1,B1)=0 THEN 708
   696PRINTTAB(2,15)CHR$129"How much do you wish"TAB(2,16)CHR$129"to withdraw? - `       ";CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;
   697INPUT""A$:Z=VAL(A$):IF Z<=B(1,B1) THEN 700
   698PRINTTAB(17,17)CHR$129"TOO MUCH":PROCdelay(12):PRINTTAB(17,17)SPC10:GOTO696
   700IF Z<=0 THEN 708
   702B(1,B1)=B(1,B1)-Z
   704T(11,T1)=T(11,T1)+Z
   706RETURN
   708PRINTTAB(2,19)CHR$130"How much do you wish"TAB(2,20)CHR$130"to deposit? - `         ";CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;CHR$8;
   709INPUT""A$:Z=VAL(A$)
   710IF Z>T(11,T1) PRINTTAB(3,21)CHR$129"You only have `";T(11,T1):PROCdelay(18):PRINTTAB(3,21)SPC25:GOTO708
   712T(11,T1)=T(11,T1)-Z
   714B(1,B1)=B(1,B1)+Z
   716RETURN
   718B1=T1:FOR I=1TO S9/P9:IF B1<=P9 THEN I=S9/P9:GOTO721
   720B1=B1-P9
   721NEXT
   722RETURN
   724B(1,B1)=B(1,B1)*(1+.05*(Y1-B(3,B1)+(D1-B(2,B1))/360))
   726B(2,B1)=D1:B(3,B1)=Y1:RETURN
   728PRINTTAB(XF-1,YF)CHR$9;:A$="":FORW%=1TO N%
   729Z$=GET$:IF ASC(Z$)<>127 A$=A$+Z$ ELSE IF W%>1 A$=LEFT$(A$,LEN(A$)-1):PRINTZ$;:W%=W%-1:GOTO729 ELSE GOTO729
   730IF ASC(Z$)=13 W%=N%
   731PRINTZ$;:NEXT
   732X=VAL(A$)
   734RETURN
   736G$="101050531010107":PROCMUSIC(3):RETURN
   738IF S1>1 THEN 742
   740I=1:GOTO750
   742I=4*INT(14*RND(1))+5
   744F%=0:FOR J=2TO S1-1
   746IF I=S(8,J) THEN F%=1:J=S1-1:GOTO748
   748NEXT:IF F%=1 GOTO742
   750S(8,S1)=I:RETURN
   752REM
   754GOTO880
   756REM
   758IK=0:FOR IJ=SW TO SX:IK=IK+1
   760IF S3=IJ THEN 770
   762D2=SQR((S(11,S3)-S(11,IJ))^2+(S(12,S3)-S(12,IJ))^2)/R9
   764NW=INT(D2/7)
   766PRINTTAB(37,2*IK-1)"ns{";
   768PRINTTAB(36,2*IK)CHR$136;CHR$134;STR$(NW)
   770NEXT:RETURN
   772CLS:PROCback(129,135):PRINTTAB(12,6)"CONFIRM !!! (Y/N)"
   774PROCi
   776IFA$="Y"THEN780
   778RETURN
   780REM *OPT1,1
   781VDU28,6,24,39,14:CLS:IF N%=FALSE T=OPENUP("P-FALL"):XX$="COMPLETE" ELSE XX$=DA$:T=OPENOUT("P-FALL")
   784FOR I=0TO12:FOR J=0TO15
   786IF N%=FALSE INPUT#T,S(I,J) ELSE PRINT#T,S(I,J)
   790NEXT,
   792FOR I=0TO12:FOR J=0TO12
   794IF N%=FALSE INPUT#T,T(I,J) ELSE PRINT#T,T(I,J)
   798NEXT,
   800FOR I=0TO3:FOR J=0TO12
   802IF N%=FALSE INPUT#T,B(I,J) ELSE PRINT#T,B(I,J)
   806NEXT,
   808FOR I=0TO6:FOR J=0TO3
   810IF N%=FALSE INPUT#T,M(I,J),C(I,J) ELSE PRINT#T,M(I,J),C(I,J)
   814NEXT,
   824FOR I=0TO12
   826IF N%=FALSE INPUT#T,T$(I),N$(I) ELSE PRINT#T,T$(I),N$(I)
   830NEXT
   840FOR I=0TO6
   842IF N%=FALSE INPUT#T,P(I),Q(I),G(I) ELSE PRINT#T,P(I),Q(I),G(I)
   846NEXT
   864IF N%=FALSE INPUT#T,W,D9,K9,X9,D1,X1,P9,T9,S9,Y9,H,Y1,R9,G9,Q,S1,T1,R,H3,H4,DA$,SW,PQ,SL%,L1 ELSE PRINT#T,W,D9,K9,X9,D1,X1,P9,T9,S9,Y9,H,Y1,R9,G9,Q,S1,T1,R,H3,H4,XX$,SW,PQ,SL%,L1
   872CLOSE#T
   874PRINT'XX$:PROCdelay(8)
   875VDU26
   876RETURN
   878RETURN
   880REM
   882S3=S1
   884CLS:FOR L0=0TO20STEP2:PRINTTAB(19,L0)CHR$147;CHR$32+"5":PRINTTAB(19,L0+1)CHR$147"(=":NEXT
   888PRINTTAB(3,11)CHR$147",,=,,=,,=,,=,,=,,=,,=,,=,,=,,=,,=,,"
   890FOR S1=1TO S9:X%=INT(S(11,S1)/3)+18:Y%=INT(10+S(12,S1)/6):IF S(8,S1)=1 GOTO892 ELSE IF Y%=11 Y%=12 ELSE IF Y%=10 Y%=9
   891IF X%=15 THEN X%=14 ELSE IF X%=16 THEN X%=17
   892PRINTTAB(X%,Y%)CHR$135;MID$(S$,S(8,S1),4);
   894PRINTCHR$10;CHR$8;CHR$8;CHR$8;
   896ON INT(S(7,S1)/5+1) GOTO898,900,902,904 ELSE GOTO904
   897GOTO904
   898PRINTCHR$145"$"CHR$147:GOTO906
   900PRINTCHR$146"$"CHR$147:GOTO906
   902PRINTCHR$150"$"CHR$147:GOTO906
   904PRINTCHR$135;CHR$255;CHR$147
   906NEXT
   908S1=S3
   910PROCdelay(8)
   912RETURN
   914REM
   916L0=4:PZ=2:IF T9>8 PZ=1
   918CLS:PROCback(146,135)
   920PRINTTAB(13,0)"_ppppppppppppp0"TAB(12,1)"x"CHR$255;CHR$132;DA$;TAB(26,1)CHR$146;CHR$255;"t"
   922PRINTTAB(3,2)"7````````````7````````7```````````5"
   924PRINTTAB(3,3)"5   "CHR$148"SHIP   "CHR$146"5  "CHR$148"TO  "CHR$146"5  "CHR$148"ETA    "CHR$146"5"
   926PRINTTAB(3,4)"uppppppppppppuppppppppuppppppppppp5"
   928GOSUB962:FOR XZ=1TO T9:F%=0:FOR S7=1TO T9
   930IF S7=T1 THEN 954
   932IF T(0,XZ)<>T(S7,0) THEN 954
   934T(S7,0)=0
   936S3=T(8,S7):S4=S(8,S3):L=(S7-1)*6+1
   938M7=INT((T(9,S7)-1)/30)
   940L7=3*M7+1
   942L8=T(9,S7)-30*M7
   944PRINTTAB(3,L0+1)CHR$129;LEFT$(T$(S7),10)
   946PRINTTAB(19,L0+1)MID$(S$,S4,4)
   948PRINTTAB(27,L0+1);L8
   950PRINTTAB(30,L0+1)MID$(C$,L7,3);" ";RIGHT$(STR$(T(10,S7)),2)
   952L0=L0+PZ:F%=1:D%=S7:S7=T9
   954NEXT:IF F%=1 S7=D%
   956NEXT
   958PRINTTAB(13,23)CHR$130;CHR$136"Press a key"
   960RETURN
   962REM
   964FOR XZ=1TO T9
   966T(0,XZ)=(T(10,XZ)-2070)*360+T(9,XZ)
   968T(XZ,0)=T(0,XZ)
   970NEXT
   972FOR XZ=T9 TO2STEP-1
   974FOR XJ=1TO XZ-1
   976IF T(0,XJ)<=T(0,XJ+1) THEN 980
   978XX=T(0,XJ):T(0,XJ)=T(0,XJ+1):T(0,XJ+1)=XX
   980NEXT,
   982RETURN
   984REM
   986S3=S1:SW=1:SX=8
   988IF S9<8 SX=S9
   990IF S9<9 SZ=S9*2-1
   992IF S9>8 SZ=15
   994CLS:PRINT"SYSTEM"+CHR$145+"jURANjIRONjMACHjMEDIjCOMPjGEMS"
   996IF SW=9 SZ=2*S9-17
  1002FOR L0=1TO SZ STEP2:PRINTTAB(0,L0)CHR$145+",,,,,,n,,,,n,,,,n,,,,n,,,,n,,,,n,,,,":PRINTTAB(0,L0+1)"      "+CHR$145+"j   "+CHR$145+"j   "+CHR$145+"j   "+CHR$145+"j   "+CHR$145+"j   "+CHR$145+"j   ":NEXT
  1004FOR S1=SW TO SX:IF WZ=0 THEN P$(S1)=""
  1006IF SW=1 SP=S1
  1008IF SW=9 SP=S1-8
  1010SC=INT(S(7,S1)/5):IF SC>3 SC=3
  1011PRINTTAB(0,SP*2)MID$(S$,S(8,S1),4);TAB(4,SP*2)CHR$133;MID$(D$(SC),2,1);CHR$145;
  1012IF S3=S1 THEN 1034
  1014IF WZ=1 THEN 1032
  1016GOSUB648
  1018FOR I=1TO6
  1020W$=STR$(P(I)/100)
  1022IF(S(I,S1)=0)OR(P(I)<1000) W$="    "
  1024IF S(I,S1)>0 W$=CHR$131+W$+CHR$145
  1026IF S(I,S1)<0 W$=CHR$130+W$+CHR$145
  1028P$(S1)=P$(S1)+"j"+W$
  1030NEXT
  1032PRINTP$(S1)
  1034NEXT:PRINTTAB(0,17)CHR$135;CHR$157;TAB(25,17)CHR$156;TAB(36,17)CHR$145;"7c{"
  1036PRINTTAB(0,18)CHR$135;CHR$157;CHR$146;CHR$255;CHR$255;CHR$132;"buying";CHR$147;CHR$255;CHR$255;CHR$132;"selling  ";CHR$156;TAB(29,18);CHR$134;"Weeks";CHR$145;"7az"
  1038PRINTTAB(0,19)CHR$135;CHR$157;TAB(25,19)CHR$156;CHR$145;"   wsssssqz":GOSUB756
  1040GOSUB1052
  1041IF SW=9 PRINTTAB(22,22)CHR$129;"'A' to turn page"
  1042IF(S9>8)AND(S1=9) WZ=QM:GOTO1046
  1044S1=S3:FL=0:QM=1:WZ=1:RETURN
  1046PRINTTAB(2,22)CHR$130;"Press a key for the other prices"
  1048PROCi
  1050SW=9:SX=S9:GOTO994
  1052PRINTTAB(0,20)CHR$135;CHR$157;CHR$132;"CARGO"
  1053FOR L0=1TO6:IF T(L0,T1)<.000001 THEN ZZ%=1 ELSE ZZ%=0
  1054PRINTTAB(L0*5+4+ZZ%,20)STR$(T(L0,T1)):NEXT
  1055PRINTTAB(0,21)CHR$135;CHR$157;CHR$130;"CASH `";T(11,T1);TAB(0,22)CHR$135;CHR$157;TAB(0,23)CHR$135;CHR$157;TAB(0,24)CHR$135;CHR$157;
  1056WZ=1:RETURN
  1058REM
  1064CLS:PRINTCHR$146;CHR$157;CHR$135:PRINTTAB(0,2)CHR$146;CHR$157;CHR$135
  1066PROCtime
  1068DA$=STR$(D1-30*M)+" "+MID$(C$,L,3)+" "+STR$(Y1)
  1070PRINT" ";DA$;" "CHR$132;
  1072J0=T1
  1074IF J0>P9 J0=J0-P9:GOTO1074
  1076N1$=N$(J0)
  1078PRINTTAB(31-INT(LEN(N1$)/2),1)N1$
  1080A$=N1$:GOSUB1352
  1082RETURN
  1084REM
  1090PRINTTAB(0,3)CHR$130;CHR$157;CHR$151"7````````````k  "CHR$156:PRINTTAB(0,6)CHR$130;CHR$157;CHR$151"uppppppppppppz  "CHR$156
  1092PRINTTAB(0,4)CHR$130;CHR$157;CHR$151"5"CHR$132;T$(T1);TAB(15,4)CHR$151;"j  "CHR$156
  1094PRINTTAB(0,5)CHR$130;CHR$157;CHR$151"5"CHR$132"on "MID$(S$,M,4);TAB(15,5);CHR$151"j  "CHR$156
  1095PRINTTAB(0,7)CHR$130;CHR$157" ////////////////"CHR$156
  1096QM=0
  1104PRINTTAB(21,5)CHR$150;"p8,,,,,,,,,,,,,,dp":PRINTTAB(21,6)CHR$150;CHR$255"}0"CHR$133"SHIP'S LOG"CHR$150"_~"CHR$255:PRINTTAB(21,7)CHR$150;CHR$255;CHR$255;CHR$255"||||||||||||"CHR$255;CHR$255;CHR$255
  1106FOR YY=8TO20:PRINTTAB(21,YY)CHR$151+"5":PRINTTAB(39,YY)"j":NEXT
  1116PRINTTAB(22,11)"=,l,,,,l,,,,l,,,,n"TAB(22,14)"5 j,,,,n,,,,n,,,,n"TAB(22,17)"=,.,,,,.,,,,.,,,,n"TAB(22,20)"uppppppppppppppppz"
  1118PRINTTAB(23,12)"CjURANjIRONjMACH"
  1120PRINTTAB(23,13)"Aj"+CHR$131+"  "+CHR$151+"j"+CHR$131+"  "+CHR$151+"j"+CHR$131+"  "+CHR$151
  1122PRINTTAB(23,14)"R"
  1124PRINTTAB(23,15)"GjMEDIjCOMPjGEMS"
  1126PRINTTAB(23,16)"Oj"+CHR$131+"  "+CHR$151+"j"+CHR$131+"  "+CHR$151+"j"+CHR$131+"  "+CHR$151
  1128PRINTTAB(23,18)CHR$130;"Cash:         ";CHR$151
  1130PRINTTAB(23,19)CHR$130;"Bank:         ";CHR$151
  1132RETURN
  1134REM
  1142PRINTTAB(0,8)CHR$147"<,,,,,,,,,,,,,,,,,,l":FOR ZZ=10TO18STEP2:PRINTTAB(0,ZZ)CHR$147"=,,,,,,,,,,,,,,,,,,n";:PRINTTAB(0,ZZ+1);CHR$147+"5"+CHR$135;
  1144PRINTTAB(19,ZZ+1);CHR$147+"j":NEXT
  1146PRINTTAB(0,20)CHR$147"uppppppppppppppppppz"
  1148PRINTTAB(0,9);CHR$147+"5"+CHR$135;SPC16;CHR$147+"j"
  1150RETURN
  1152REM
  1154PRINTTAB(30,18)SPC8
  1156PRINTTAB(30,19)SPC8
  1158GOSUB718
  1160GOSUB724
  1162PRINTTAB(30,18);T(11,T1)
  1164PRINTTAB(30,19);INT(B(1,B1))
  1166RETURN
  1168PRINTTAB(21+5*(I1+(I1>3)*3),13-(I1>3)*3)AZ$:RETURN
  1170G$="1490110502":PROCMUSIC(2)
  1172CLS:PROCback(131,132):PRINTTAB(17,1)"OPTIONS"
  1174GOSUB1332
  1176PRINTTAB(17,2)"_______"
  1178PRINTTAB(10,6)"N. New Game    "
  1180PRINTTAB(10,8)"R. Recover old game"
  1182PRINTTAB(10,10)"S. Save present game"
  1184PRINTTAB(10,12)"P. Prices of commodities"
  1186PRINTTAB(10,14)"T. Travel printout"
  1188PRINTTAB(10,16)"M. Map of Star Systems"
  1190PRINTTAB(10,18)"B. Bank statement"
  1192PRINTTAB(10,20)"X. Option selection"
  1194PRINTTAB(10,22)"!. End Game"
  1196PROCi
  1198IF A$="P" THEN 984
  1200IF A$="M" THEN 880
  1202IF A$="S" N%=TRUE:R=1:GOTO772
  1204IF A$="T" THEN 914
  1206IF A$="N" THEN 1216
  1208IF A$="B" THEN 592
  1210IF A$="R" R=1:GQ=0:N%=FALSE:GOTO772
  1212IF A$="!" THEN 98
  1214GOTO1196
  1216REM
  1218CLS:PROCback(129,135):FOR E%=0TO1:PRINTTAB(3,5+E%)CHR$141"Do you really want":PRINTTAB(3,8+E%)CHR$141"to start a new game?":NEXT
  1220PROCi
  1222IF A$="Y" THEN1226
  1224GOTO1170
  1226FOR E%=0TO1:PRINTTAB(7,18+E%)CHR$141;CHR$130"OK!! OK!! OK!!":NEXT
  1227RESTORE:FOR XX=1TO16:READ A$:NEXT
  1228R9=2/7:D9=15:S9=8:X3=2:Q=.1:GQ=1
  1230FOR XX=0TO12:FOR YY=0TO12:T(XX,YY)=0:NEXT,
  1232FOR XX=0TO3:FOR YY=0TO12:B(XX,YY)=0:NEXT,
  1234FOR XX=0TO12:FOR YY=0TO15:S(XX,YY)=0:NEXT,
  1236K9=3:W=30:X9=36:G9=1.25:R=0:D1=1:Y1=2070:DA$=" 1 JAN 2070"
  1237RESTORE1348
  1238FOR XX=1TO6:FOR YY=1TO3:READ M(XX,YY):NEXT,
  1240FOR XX=1TO6:FOR YY=1TO3:READ C(XX,YY):NEXT,
  1242CLS:PROCback(135,130)
  1243INPUTTAB(3,6)"How many players",A$
  1244P9=VAL(A$)
  1248IF(P9>1)AND(P9<13) THEN 1252 ELSE PRINTTAB(3,6)"Between 2 and 12 can play":PROCdelay(8):PRINTTAB(3,6)SPC30:GOTO1243
  1252INPUTTAB(3,9)"How many ships per player",A$
  1254X=VAL(A$)
  1256T9=P9*X:X3=X:IF X<1 THEN PRINTTAB(3,9)SPC30:GOTO1252
  1260IF T9>12 PRINTTAB(3,9)"I can't look after a total of more ";TAB(3,10)"than 12 ships":PROCdelay(12):PRINTTAB(3,9)SPC36;TAB(3,10)SPC36:GOTO1252
  1262INPUTTAB(3,12)"How many star systems",A$
  1266S9=VAL(A$):IF(S9<1)OR(S9>15) PRINTTAB(3,12)"Between 1 and 15 systems please":PROCdelay(12):PRINTTAB(3,12)SPC36:GOTO1262
  1270INPUTTAB(3,15)"Enter length of game in years",A$
  1272Y9=VAL(A$):IF Y9<1 OR Y9>99 PRINTTAB(3,15)SPC36:GOTO1270
  1273PRINTTAB(3,2)CHR$136"SOUND LEVEL :_"TAB(3,3)CHR$136"0(silent) to 5(loud)? "CHR$8;:SL%=GET:PRINTCHR$SL%;:SL%=SL%-48:IF SL%<0 OR SL%>5 THEN 1273
  1274PRINTTAB(3,2)CHR$131TAB(3,3)CHR$131TAB(2,18)CHR$131"It takes a few moments"TAB(2,19)CHR$131"to build the Universe ......"
  1276Y9=Y9+Y1
  1278S(7,1)=15:H=1:S1=2:GOSUB462
  1280S1=3:GOSUB462:S1=4:GOSUB1316
  1282FOR S1=5TO S9:ON S1-3*INT((S1-1)/3) GOSUB462,1316,1318
  1284NEXT:FOR S1=1TO S9:FOR J=1TO6:S(J,S1)=0:NEXT:IF S1>1 THEN 1288
  1286I=1:GOTO1292
  1288I=4*INT(14*RND(1))+5
  1289F%=0:FOR J=2TO S1-1:IF I=S(8,J) THEN F%=1:J=S1-1
  1290NEXT:IF F%=1 GOTO1288
  1292S(8,S1)=I:S(9,S1)=270:S(10,S1)=Y1-1:NEXT
  1294REM *FX15,0
  1295CLS:PROCback(132,131):PRINTTAB(3,6)CHR$141"Captains _ enter your names";TAB(3,7)CHR$141"Captains _ enter your names"
  1296FOR I=1TO P9
  1297PRINTTAB(3,9+I)" Captain ";I;".... ";:INPUTA$:IF LEN(A$)>8 PRINTTAB(3,9+I)CHR$129"MAXIMUM OF 8 LETTERS PLEASE        ";:PROCdelay(12):PRINTTAB(3,9+I)SPC35;:GOTO1297 ELSE PRINT
  1298N$(I)=A$:NEXT
  1300T1=1
  1302CLS:PROCback(132,131):PRINTTAB(3,6)CHR$141"Captains name your ships:_";TAB(3,7)CHR$141"Captains name your ships:_"
  1303PRINTTAB(3,9)"CAPTAIN";TAB(15,9)"NAME OF SHIP":VDU28,3,23,39,10
  1304FOR I=1TO T9/P9:PRINT:FOR P1=1TO P9
  1306T(1,T1)=0:T(2,T1)=0:T(6,T1)=0:T(3,T1)=15:T(4,T1)=10:T(5,T1)=10
  1308T(7,T1)=25:T(8,T1)=1:T(9,T1)=D1:T(10,T1)=Y1:T(11,T1)=5000:T(12,T1)=0
  1310PRINTN$(P1);TAB(12)"No.";I;" ";:INPUTA$
  1311IF LEN(A$)>10 THEN PRINTCHR$11;CHR$129"MAXIMUM OF 10 LETTERS PLEASE       ";:PROCdelay(12):PRINTCHR$13;SPC35;CHR$13;:GOTO1310 ELSE PRINT
  1312T$(T1)=A$:T1=T1+1:NEXT,:VDU26
  1314FOR B1=1TO P9:B(1,B1)=0:B(2,B1)=D1:B(3,B1)=Y1:NEXT:GOTO42
  1316E=100:GOSUB1320:S(7,S1)=5+RND(1)*5:RETURN
  1318E=50:GOSUB1320:S(7,S1)=10+RND(1)*5:RETURN
  1320X=(RND(1)-.5)*E:Y=RND(1)*E/2:F=1:GOSUB472:IF F=0 THEN 1320
  1322RETURN
  1324 REM
  1326A$="PRESS A KEY":FOR XX=1TO11:A1$=MID$(A$,XX,1):PRINTTAB(0,9+XX)A1$
  1328G$="17701":PROCMUSIC(1):PRINTTAB(XX-1,10)A1$:NEXT
  1330RETURN
  1332IF DA$="" RETURN
  1334PRINTTAB(3,3)DA$:FOR XX=3TO2+LEN(DA$):PRINTTAB(XX,2)"_"
  1336PRINTTAB(XX,4)"_":NEXT:RETURN
  1338DATA<4>,<3>,<2>,<1>,Uranium,Iron Ore,Machinery,Medic Supplies
  1340DATAComputers,Diamond Gems
  1341RESTORE1338
  1342FOR XX=0TO3:READ D$(XX):NEXT
  1344FOR XX=1TO6:READ CO$(XX):NEXT
  1346RETURN
  1348DATA-.1,-.2,-.1,0,-.1,-.1,0,.1,.1,-.1,.1,0,.1,.2,.1,.1,-.1,0,1,1.5
  1350DATA.5,.75,.75,.75,-.75,-.75,-.75,-.5,-1.5,.5,-1,-1.5,-.5,.5,1.5,-.5
  1352IF LEN(A$)<4 A$=A$+A$
  1354FOR XX=1 TO LEN(A$):XC%=ASC(MID$(A$,XX,1))+100
  1356SOUND1,-3*SL%,XC%,5
  1366NEXT:RETURN
  1368CALL!-4
  1370K0=0:CLS:PROCback(135,132):PRINTTAB(3,8);
  1372XX=INT(RND(1)*S9)+1:A$=MID$(S$,S(8,XX),4):SA$=STR$(XX)
  1373IF XX>9 THEN 1372
  1374ON INT(RND(1)*5+1) GOTO1376,1378,1380,1382,1384
  1376SA$=SA$+"175":PRINT"NUCLEAR POWER PLANT DISASTER ON ";A$:J0=1:GOTO1386
  1378SA$=SA$+"660":PRINT"RAGING INFLATION ON ";A$:J0=6:GOTO1386
  1380SA$=SA$+"275":PRINT"NEW GALACTIC RAILWAY ON ";A$:J0=2:GOTO1386
  1382SA$=SA$+"575":PRINT"DEEP THOUGHT PROJECT ON ";A$:J0=5:GOTO1386
  1384SA$=SA$+"488":PRINT"PLAGUE ON ";A$:J0=4
  1386PROCdelay(12):PRINTTAB(2,12)CHR$134"Urgent need for "CO$(J0)
  1388PRINTTAB(13,23)CHR$133;CHR$136"Press a key"
  1390PROCi
  1392RETURN
  1394PRINTTAB(15,23)"Press a key"
  1400CLS:G$="149101011010110":PROCMUSIC(3):PROCback(135,132)
  1402FOR E%=0TO1:PRINTTAB(12,5+E%)CHR$141;"Planetfall":NEXT
  1405PRINTTAB(2,11)CHR$134"N _ New game";TAB(2,13)CHR$134"R _ Recover old game from tape";TAB(2,23)CHR$131"Press"CHR$136"N"CHR$137"or"CHR$136"R"CHR$137"to start the game";
  1406PROCi
  1407I=RND(1)
  1408IF A$="N" CLS : PROCback(135,129):FOR E%=0TO1:PRINTTAB(15,11+E%)CHR$141"NEW GAME":NEXT:G$="0971010510089100411006920":PROCMUSIC(5):GOTO1227
  1410IF A$="R" R=1:GQ=0:N%=FALSE:CLS:G$="13710":PROCMUSIC(1):PROCback(129,135):PRINTTAB(3,10)"Ensure you have the tape in ...":PROCdelay(12):PRINTTAB(3,12)"and that it's rewound!"':GOSUB780:GOTO42
  1412GOTO1407
  3000REM
  4000DEF FNZ(X)=(FNY(X)*.5-(FNT(X))*X)/(2*ABS(S(I1,S1)))/K1
  4010DEF FNY(X)=-(X>=ABS(S(I1,S1)))
  4020DEF FNT(X)=-(X<ABS(S(I1,S1)))
  5000DEFPROCMUSIC(G%)
  5005L%=-3*SL%
  5010FOR Z%=0TO G%-1
  5020y$=MID$(G$,Z%*5+1,3)
  5030z$=MID$(G$,Z%*5+4,2)
  5040y%=VAL(y$)
  5050z%=VAL(z$)
  5060SOUND1,L%,y%,z%
  5062SOUND2,L%,y%-12,z%
  5064SOUND3,L%,y%-28,z%
  5070NEXT
  5080ENDPROC
  6000DEF PROCback(F%,B%)
  6010FOR I%=0TO24:PRINTTAB(0,I%)CHR$B%;CHR$157;CHR$F%;:NEXT
  6020ENDPROC
  7000DEF PROCtime
  7010S%=(TIME DIV 100)MOD 60
  7020M%=(TIME DIV 6000)MOD 60
  7030H%=(TIME DIV 360000)MOD 24
  7040h$=STR$(H%):IF h$="0" THEN h$="00" ELSE IF H%<10 THEN h$="0"+h$
  7050m$=STR$(M%):IF m$="0" THEN m$="00" ELSE IF M%<10 THEN m$="0"+m$
  7060s$=STR$(S%):IF s$="0" THEN s$="00" ELSE IF S%<10 THEN s$="0"+s$
  7065PRINTTAB(0,1)CHR$146;CHR$157;CHR$135;h$;":";m$;":";s$;CHR$131;
  7070ENDPROC
  8000DEF PROCi
  8010REM *FX15,0
  8020INPUT A$ : REM =GET$
  8030ENDPROC
 11000DEF PROCdelay(I%)
 11010FOR J%=0TOI%*1000:NEXT
 11020ENDPROC
 32000REM *TAPE
 32010RUN

