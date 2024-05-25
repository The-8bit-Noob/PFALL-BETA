	 10 REM "********************************"
   20 REM "*          PLANET-FALL         *"
   30 REM "*      written in 1983 by      *"
   40 REM "*   Tim Garden & Ian Nicholls  *"
   50 REM "*   Ported to the Agon Light   *"
   60 REM "*    By Steve Lovejoy 2024     *"
   70 REM "********************************"
   80 REM "         Instructions           "
   90 :
  100 MODE 7
  120 PRINT'''CHR$130"Feel like making a million or two?  No,"CHR$130"this isn't another of those stockmarket"CHR$130"games where you buy and sell shares,   "CHR$130"but something on a much grander scale!  "
  130 TIME=0:REPEAT UNTIL TIME>400
  140 PRINT''CHR$131"You'll take charge of an interstellar  "CHR$131"trading fleet which flies between the  "CHR$131"planets buying and selling its wares. "
  143 TIME=0:REPEAT UNTIL TIME>500
  145 PRINT''CHR$134"Not that the journey will be easy. Not "CHR$134"with pirates, rogue inspectors, faulty "CHR$134"navigation computers and up to six     "CHR$134"players taking part!                   "
  150 TIME=0:REPEAT UNTIL TIME>500
  160 PRINT''CHR$132"The next two pages will show you the   "CHR$132"main trading sequence, complete with  a"CHR$132"ruthless haggling routine and the      "CHR$132"galaxy map with its full allocation of "CHR$132"15 planets. "
  170 TIME=0:REPEAT UNTIL TIME>500
  220 CLS
  230 RUN"PFALL2.bas"
  240 END

