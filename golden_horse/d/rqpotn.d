BEGIN ~rqpotc01~

IF ~CheckStatGT(LastTalkedToBy,16,WIS) CheckStatGT(LastTalkedToBy,16,INT)~ THEN BEGIN rqPotionCase100
    SAY @0
    IF ~~ THEN REPLY @1 GOTO rqPotionCase101
    IF ~~ THEN REPLY @2
        EXIT
END

IF ~~ THEN BEGIN rqPotionCase101
    SAY @3
    IF ~RandomNum(11,1)~ THEN GOTO rqPotionCase103
    IF ~RandomNum(11,2)~ THEN GOTO rqPotionCase104
    IF ~RandomNum(11,3)~ THEN GOTO rqPotionCase105
    IF ~RandomNum(11,4)~ THEN GOTO rqPotionCase106
    IF ~RandomNum(11,5)~ THEN GOTO rqPotionCase107
    IF ~RandomNum(11,6)~ THEN GOTO rqPotionCase108
    IF ~RandomNum(11,7) AreaCheck("ar4500")~ THEN GOTO rqPotionCase110
    IF ~RandomNum(11,8) AreaCheck("ar4500")~ THEN GOTO rqPotionCase111
    IF ~RandomNum(11,9) AreaCheck("ar4500")~ THEN GOTO rqPotionCase112
    IF ~RandomNum(11,10) AreaCheck("ar4500")~ THEN GOTO rqPotionCase113
    IF ~RandomNum(11,11) AreaCheck("ar4500")~ THEN GOTO rqPotionCase114
END

IF ~~ THEN BEGIN rqPotionCase103
    SAY @4
        IF ~~ THEN DO ~GiveItemCreate("potn55",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase104
    SAY @4
        IF ~~ THEN DO ~GiveItemCreate("potn14",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase105
    SAY @4
        IF ~~ THEN DO ~GiveItemCreate("potn11",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase106
    SAY @4
        IF ~~ THEN DO ~GiveItemCreate("potn18",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase107
    SAY @4
        IF ~~ THEN DO ~GiveItemCreate("potn33",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase108
    SAY @4
        IF ~~ THEN DO ~GiveItemCreate("potn35",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase110
    SAY @5
        IF ~~ THEN DO ~GiveItemCreate("rqpotc02",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase111
    SAY @5
        IF ~~ THEN DO ~GiveItemCreate("rqpotc04",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase112
    SAY @5
        IF ~~ THEN DO ~GiveItemCreate("rqpotc05",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase113
    SAY @5
        IF ~~ THEN DO ~GiveItemCreate("rqpotc06",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

IF ~~ THEN BEGIN rqPotionCase114
    SAY @5
        IF ~~ THEN DO ~GiveItemCreate("rqpotc07",LastTalkedToBy,0,0,0)
        DestroyItem("rqpotc01")~ EXIT
END

BEGIN ~rqpotc02~

IF ~True()~ THEN BEGIN rqPotionCase200
    SAY @6
        IF ~~ THEN REPLY @7 GOTO rqPotionCase201
        IF ~~ THEN REPLY @8
            EXIT
END
// 1 - 8
IF ~~ THEN BEGIN rqPotionCase201
    SAY @9
    IF ~RandomNum(10,1)~ THEN
        DO
            ~GiveItemCreate("rqpotn1",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,2)~ THEN
        DO
            ~GiveItemCreate("rqpotn2",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,3)~ THEN
        DO
            ~GiveItemCreate("rqpotn3",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,4) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn4",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,5) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn5",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,6) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn6",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,7) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn7",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,8) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn8",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
// extra
    IF ~RandomNum(10,9)~ THEN
        DO
            ~GiveItemCreate("rqpotn2",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
    IF ~RandomNum(10,10)~ THEN
        DO
            ~GiveItemCreate("rqpotn3",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc02")~
        EXIT
END

BEGIN ~rqpotc04~

IF ~True()~ THEN BEGIN rqPotionCase400
    SAY @10
        IF ~~ THEN REPLY @7 GOTO rqPotionCase401
        IF ~~ THEN REPLY @8
            EXIT
END
// 9 - 16
IF ~~ THEN BEGIN rqPotionCase401
    SAY @9
    IF ~RandomNum(10,1)~ THEN
        DO
            ~GiveItemCreate("rqpotn2",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,2)~ THEN
        DO
            ~GiveItemCreate("rqpotn3",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
// 9 - 16
    IF ~RandomNum(10,3) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn9",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,4) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn10",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,5) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn11",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,6) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn12",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,7) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn13",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,8) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn14",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,9) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn15",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
    IF ~RandomNum(10,10) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn16",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc04")~
        EXIT
END

BEGIN ~rqpotc05~

IF ~True()~ THEN BEGIN rqPotionCase500
    SAY @11
        IF ~~ THEN REPLY @7 GOTO rqPotionCase501
        IF ~~ THEN REPLY @8
            EXIT
END
// 17 - 24
IF ~~ THEN BEGIN rqPotionCase501
    SAY @9
    IF ~RandomNum(10,1) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn17",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,2) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn18",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,3) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn19",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,4) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn20",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,5) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn21",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,6) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn22",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,7) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn23",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,8) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn24",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
// extra
    IF ~RandomNum(10,9)~ THEN
        DO
            ~GiveItemCreate("rqpotn2",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
    IF ~RandomNum(10,10)~ THEN
        DO
            ~GiveItemCreate("rqpotn3",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc05")~
        EXIT
END

BEGIN ~rqpotc06~

IF ~True()~ THEN BEGIN rqPotionCase600
    SAY @12
        IF ~~ THEN REPLY @7 GOTO rqPotionCase601
        IF ~~ THEN REPLY @8
            EXIT
END
// 25 - 32
IF ~~ THEN BEGIN rqPotionCase601
    SAY @9
    IF ~RandomNum(10,1) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn25",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,2) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn26",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,3) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn27",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,4) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn28",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,5) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn29",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,6) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn30",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,7) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn31",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,8) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn32",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
// extra
    IF ~RandomNum(10,9)~ THEN
        DO
            ~GiveItemCreate("rqpotn2",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
    IF ~RandomNum(10,10)~ THEN
        DO
            ~GiveItemCreate("rqpotn3",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc06")~
        EXIT
END

BEGIN ~rqpotc07~

IF ~True()~ THEN BEGIN rqPotionCase700
    SAY @13
        IF ~~ THEN REPLY @7 GOTO rqPotionCase701
        IF ~~ THEN REPLY @8
            EXIT
END
// 33 - 37
IF ~~ THEN BEGIN rqPotionCase701
    SAY @9
    IF ~RandomNum(8,1) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn33",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
    IF ~RandomNum(8,2) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn34",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
    IF ~RandomNum(8,3) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn35",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
    IF ~RandomNum(8,4) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn36",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
    IF ~RandomNum(8,5) Dead("chalrv01")~ THEN
        DO
            ~GiveItemCreate("rqpotn37",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
// Extra
    IF ~RandomNum(8,6)~ THEN
        DO
            ~GiveItemCreate("rqpotn1",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
    IF ~RandomNum(8,7)~ THEN
        DO
            ~GiveItemCreate("rqpotn2",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
    IF ~RandomNum(8,8)~ THEN
        DO
            ~GiveItemCreate("rqpotn3",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc07")~
        EXIT
END

BEGIN ~rqpotc03~

IF ~True()~ THEN BEGIN rqPotionCase300
    SAY @14
        IF ~~ THEN REPLY @7 GOTO rqPotionCase301
        IF ~~ THEN REPLY @8
            EXIT
END

IF ~~ THEN BEGIN rqPotionCase301
    SAY @9
    IF ~~ THEN
        DO
            ~GiveItemCreate("rqpotn1",LastTalkedToBy,0,0,0)
            DestroyItem("rqpotc03")~
        EXIT
END

BEGIN ~rqpotn1~

IF ~True()~ THEN BEGIN rqPotion100
    SAY @15
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion101
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion102
END

IF ~~ THEN BEGIN rqPotion101
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn1")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion102
    SAY @20
    IF ~~ THEN REPLY @23
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn1",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn1")~
        EXIT
END

BEGIN rqpotn4

IF ~True()~ THEN BEGIN rqPotion400
    SAY @24
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion401
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion402
END

IF ~~ THEN BEGIN rqPotion401
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb4",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn4")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion402
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn4",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn4")~
        EXIT
END

BEGIN rqpotn5

IF ~True()~ THEN BEGIN rqPotion500
    SAY @26
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion501
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion502
END

IF ~~ THEN BEGIN rqPotion501
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn5")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion502
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn5",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn5")~
        EXIT
END

BEGIN rqpotn6

IF ~True()~ THEN BEGIN rqPotion600
    SAY @27
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion601
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion602
END

IF ~~ THEN BEGIN rqPotion601
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn6")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion602
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn6",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn6")~
        EXIT
END

BEGIN rqpotn7

IF ~True()~ THEN BEGIN rqPotion700
    SAY @28
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion701
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion702
END

IF ~~ THEN BEGIN rqPotion701
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn7")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion702
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn7",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn7")~
        EXIT
END

BEGIN rqpotn8

IF ~True()~ THEN BEGIN rqPotion800
    SAY @29
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion801
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion802
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion802
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion802
END

IF ~~ THEN BEGIN rqPotion801
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn8")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion802
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn8",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn8")~
        EXIT
END

BEGIN rqpotn9

IF ~True()~ THEN BEGIN rqPotion900
    SAY @30
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion901
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion902
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion902
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion902
END

IF ~~ THEN BEGIN rqPotion901
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn9")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion902
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn9",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn9")~
        EXIT
END

BEGIN rqpotn10

IF ~True()~ THEN BEGIN rqPotion1000
    SAY @31
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1001
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1002
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1002
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1002
END

IF ~~ THEN BEGIN rqPotion1001
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn10")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1002
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn10",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn10")~
        EXIT
END

BEGIN rqpotn11

IF ~True()~ THEN BEGIN rqPotion1100
    SAY @32
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1101
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1102
END

IF ~~ THEN BEGIN rqPotion1101
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn11")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1102
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn11",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn11")~
        EXIT
END

BEGIN rqpotn12

IF ~True()~ THEN BEGIN rqPotion1200
    SAY @33
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1201
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1202
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1202
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1202
END

IF ~~ THEN BEGIN rqPotion1201
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn12")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1202
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn12",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn12")~
        EXIT
END

BEGIN rqpotn13

IF ~True()~ THEN BEGIN rqPotion1300
    SAY @34
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1301
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1302
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1302
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1302
END

IF ~~ THEN BEGIN rqPotion1301
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn13")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1302
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn13",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn13")~
        EXIT
END


BEGIN rqpotn14

IF ~True()~ THEN BEGIN rqPotion1300
    SAY @35
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1401
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1402
END

IF ~~ THEN BEGIN rqPotion1401
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn14")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1402
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn14",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn14")~
        EXIT
END

BEGIN rqpotn15

IF ~True()~ THEN BEGIN rqPotion1500
    SAY @36
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1501
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1502
END

IF ~~ THEN BEGIN rqPotion1501
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn15")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1502
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn15",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn15")~
        EXIT
END

BEGIN rqpotn16

IF ~True()~ THEN BEGIN rqPotion1600
    SAY @37
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1601
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1602
END

IF ~~ THEN BEGIN rqPotion1601
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn16")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1602
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn16",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn16")~
        EXIT
END

BEGIN rqpotn17

IF ~True()~ THEN BEGIN rqPotion1700
    SAY @38
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1701
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1702
END

IF ~~ THEN BEGIN rqPotion1701
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn17")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1702
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn17",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn17")~
        EXIT
END

BEGIN rqpotn18

IF ~True()~ THEN BEGIN rqPotion1800
    SAY @39
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1801
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1802
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1802
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1802
END

IF ~~ THEN BEGIN rqPotion1801
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn18")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1802
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn18",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn18")~
        EXIT
END

BEGIN rqpotn19

IF ~True()~ THEN BEGIN rqPotion1900
    SAY @40
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion1901
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion1902
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion1902
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion1902
END

IF ~~ THEN BEGIN rqPotion1901
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn19")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion1902
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn19",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn19")~
        EXIT
END

BEGIN rqpotn20

IF ~True()~ THEN BEGIN rqPotion2000
    SAY @41
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2001
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2002
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2002
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2002
END

IF ~~ THEN BEGIN rqPotion2001
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn20")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2002
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn20",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn20")~
        EXIT
END

BEGIN rqpotn21

IF ~True()~ THEN BEGIN rqPotion2100
    SAY @42
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2101
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2102
END

IF ~~ THEN BEGIN rqPotion2101
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn21")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2102
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn21",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn21")~
        EXIT
END

BEGIN rqpotn22

IF ~True()~ THEN BEGIN rqPotion2200
    SAY @43
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2201
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2202
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2202
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2202
END

IF ~~ THEN BEGIN rqPotion2201
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn22")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2202
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn22",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn22")~
        EXIT
END

BEGIN rqpotn23

IF ~True()~ THEN BEGIN rqPotion2300
    SAY @44
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2301
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2302
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2302
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2302
END

IF ~~ THEN BEGIN rqPotion2301
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn23")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2302
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn23",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn23")~
        EXIT
END

BEGIN rqpotn24

IF ~True()~ THEN BEGIN rqPotion2400
    SAY @45
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2401
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2402
END

IF ~~ THEN BEGIN rqPotion2401
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn24")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2402
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn24",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn24")~
        EXIT
END

BEGIN rqpotn25

IF ~True()~ THEN BEGIN rqPotion2500
    SAY @46
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2501
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2502
END

IF ~~ THEN BEGIN rqPotion2501
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn25")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2502
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn25",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn25")~
        EXIT
END

BEGIN rqpotn26

IF ~True()~ THEN BEGIN rqPotion2600
    SAY @47
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2601
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2602
END

IF ~~ THEN BEGIN rqPotion2601
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn26")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2602
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn26",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn26")~
        EXIT
END

BEGIN rqpotn27

IF ~True()~ THEN BEGIN rqPotion2700
    SAY @48
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2701
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2702
END

IF ~~ THEN BEGIN rqPotion2701
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn27")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2702
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn27",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn27")~
        EXIT
END

BEGIN rqpotn28

IF ~True()~ THEN BEGIN rqPotion2800
    SAY @49
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2801
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2802
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2802
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2802
END

IF ~~ THEN BEGIN rqPotion2801
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn28")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2802
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn28",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn28")~
        EXIT
END

BEGIN rqpotn29

IF ~True()~ THEN BEGIN rqPotion2900
    SAY @50
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion2901
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion2902
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion2902
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion2902
END

IF ~~ THEN BEGIN rqPotion2901
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn29")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion2902
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn29",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn29")~
        EXIT
END

BEGIN rqpotn30

IF ~True()~ THEN BEGIN rqPotion3000
    SAY @51
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3001
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3002
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3002
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3002
END

IF ~~ THEN BEGIN rqPotion3001
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn30")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3002
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn30",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn30")~
        EXIT
END

BEGIN rqpotn31

IF ~True()~ THEN BEGIN rqPotion3100
    SAY @52
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3101
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3102
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3102
END

IF ~~ THEN BEGIN rqPotion3101
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn31")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3102
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn31",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn31")~
        EXIT
END

BEGIN rqpotn32

IF ~True()~ THEN BEGIN rqPotion3200
    SAY @53
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3201
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3202
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3202
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3202
END

IF ~~ THEN BEGIN rqPotion3201
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn32")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3202
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn32",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn32")~
        EXIT
END

BEGIN rqpotn33

IF ~True()~ THEN BEGIN rqPotion3300
    SAY @54
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3301
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3302
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3302
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3302
END

IF ~~ THEN BEGIN rqPotion3301
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn33")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3302
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn33",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn33")~
        EXIT
END

BEGIN rqpotn34

IF ~True()~ THEN BEGIN rqPotion3400
    SAY @55
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3401
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3402
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3402
END

IF ~~ THEN BEGIN rqPotion3401
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn34")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3402
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn34",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn34")~
        EXIT
END

BEGIN rqpotn35

IF ~True()~ THEN BEGIN rqPotion3500
    SAY @56
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3501
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3502
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3502
END

IF ~~ THEN BEGIN rqPotion3501
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn35")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3502
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn35",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn35")~
        EXIT
END

BEGIN rqpotn36

IF ~True()~ THEN BEGIN rqPotion3600
    SAY @57
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3601
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3602
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3602
END

IF ~~ THEN BEGIN rqPotion3601
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn36")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3602
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn36",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn36")~
        EXIT
END

BEGIN rqpotn37

IF ~True()~ THEN BEGIN rqPotion3700
    SAY @58
    IF ~!InPartySlot(LastTalkedToBy,0)~ THEN REPLY @16 GOTO rqPotion3701
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_EVIL)~ THEN REPLY @17 GOTO rqPotion3702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @18 GOTO rqPotion3702
    IF ~InPartySlot(LastTalkedToBy,0) Alignment(Player1,MASK_GOOD)~ THEN REPLY @19 GOTO rqPotion3702
END

IF ~~ THEN BEGIN rqPotion3701
    SAY @20
    IF ~~ THEN REPLY @21
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotnb",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn37")~
        EXIT
END

IF ~~ THEN BEGIN rqPotion3702
    SAY @20
    IF ~~ THEN REPLY @25
        EXIT
    IF ~~ THEN REPLY @22
        DO
            ~ApplySpellRES("rqpotn37",Myself)
            ApplySpellRES("rqpotncu",Myself)
            DestroyItem("rqpotn37")~
        EXIT
END

