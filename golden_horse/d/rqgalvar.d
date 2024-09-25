BEGIN rqgalvar

IF ~~ THEN BEGIN GalvareyIntro
    SAY @0
    IF ~~ THEN GOTO GalvareyCrimeAccused
END

IF ~~ THEN BEGIN GalvareyCrimeAccused
    SAY @1
    =
    @2
    =
    @3
    IF ~~ THEN REPLY @4 GOTO GalvareyDefense
    IF ~~ THEN REPLY @5 GOTO GalvareyLetters
    IF ~~ THEN REPLY @6 GOTO GalvareyDefense
    IF ~~ THEN REPLY @7 GOTO GalvareyWhyMeAndRevan
END

IF ~~ THEN BEGIN GalvareyWhyMeAndRevan
    SAY @8
    IF ~~ THEN REPLY @9 GOTO GalvareyDefense
    IF ~~ THEN REPLY @10 GOTO GalvareyCriminal
    IF ~~ THEN REPLY @11 GOTO GalvareyCriminal
END

IF ~~ THEN BEGIN GalvareyCriminal
    SAY @12
    IF ~~ THEN REPLY @13 GOTO GalvareyDefense
    IF ~~ THEN REPLY @14 GOTO GalvareyDefense
    IF ~~ THEN REPLY @15 GOTO GalvareyDefense
    IF ~~ THEN REPLY @16 GOTO GalvareyDefense
END

IF ~~ THEN BEGIN GalvareyLetters
    SAY @17
    IF ~~ THEN REPLY @18 GOTO GalvareyDefense
END

IF ~~ THEN BEGIN GalvareyDefense
    SAY @19
    IF ~~ THEN REPLY @20 GOTO GalvareyColor
    IF ~~ THEN REPLY @21 GOTO GalvareyPoint
    IF ~~ THEN REPLY @22 EXTERN ~rqjah1~  JaheiraAppeal
END

IF ~~ THEN BEGIN GalvareyColor
    SAY @23
    IF ~~ THEN GOTO GalvareyPoint
END

IF ~~ THEN BEGIN GalvareyPoint
    SAY @24
    IF ~~ THEN REPLY @25 GOTO GalvareyMonstrous
    IF ~~ THEN REPLY @26 EXTERN ~rqjah1~ JaheiraWhyEnemy
END

IF ~~ THEN BEGIN GalvareyMonstrous
    SAY @27
    IF ~~ THEN REPLY @28 GOTO GalvareyFight
    IF ~~ THEN REPLY @29 GOTO GalvareyFight
    IF ~~ THEN REPLY @30 GOTO GalvareyFight
END

IF ~~ THEN BEGIN GalvareyEnough
    SAY @31
    IF ~~ THEN REPLY @32 GOTO GalvareyFight
    IF ~~ THEN REPLY @33 GOTO GalvareyInprisonment
    IF ~~ THEN REPLY @34 GOTO GalvareyObjections
END

IF ~~ THEN BEGIN GalvareyBrief
    SAY @35
    =
    @36
    =
    @37
    IF ~~ THEN REPLY @38 GOTO GalvareyFight
    IF ~~ THEN REPLY @39 GOTO GalvareyInprisonment
    IF ~~ THEN REPLY @40 GOTO GalvareyObjections
END

IF ~~ THEN BEGIN GalvareyInprisonment
    SAY @41
    IF ~~ THEN REPLY @42
        DO
            ~ReallyForceSpell(Player1,WIZARD_IMPRISONMENT)
            ReallyForceSpell("rqrev",WIZARD_IMPRISONMENT)
            SetGlobal("rqJaheira1Ambush","GLOBAL",1)
            SetGlobal("rqBattle1Start","GLOBAL",1)~
        EXIT
END

IF ~~ THEN BEGIN GalvareyObjections
    SAY @43
    IF ~~ THEN GOTO GalvareyFight
END

IF ~~ THEN BEGIN GalvareyFight
    SAY @44
    IF ~~ THEN DO
        ~SetGlobal("rqJaheira1Ambush","GLOBAL",1)
        SetGlobal("rqBattle1Start","GLOBAL",1)~
    EXIT
END
