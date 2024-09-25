BEGIN rq1marca

IF ~Global("rqcontractMarcian","GLOBAL",1)~ THEN BEGIN rqMarcianArgentIntroduction
    SAY @0
    IF ~~ THEN REPLY @1 GOTO rqMarcianArgentNeutral
    IF ~OR (2)
        //Class(LastTalkedToBy,CLERIC_ALL)
        Class(Player1,CLERIC_ALL)
        Class(Player1,MAGE_ALL)
        //Class(LastTalkedToBy,MAGE_ALL)
    CheckStatGT(LastTalkedToBy,16,CHR)~ THEN REPLY @2 GOTO rqMarcianArgentBluff
    IF ~~ THEN REPLY @3 GOTO rqMarcianArgentDirect
END

IF ~~ THEN BEGIN rqMarcianArgentNeutral
    SAY @4
    IF ~~ THEN REPLY @5 GOTO rqMarcianArgentBattle
    IF ~~ THEN REPLY @6 GOTO rqMarcianArgentBattle
END

IF ~~ THEN BEGIN rqMarcianArgentBattle
    SAY @7
        IF ~~ THEN DO
            ~SetGlobal("rqcontract1battle","GLOBAL",1)~
        EXIT
END

IF ~~ THEN BEGIN rqMarcianArgentDirect
    SAY @8
        IF ~~ THEN DO
            ~SetGlobal("rqcontract1battle","GLOBAL",1)~
        EXIT
END

IF ~~ THEN BEGIN rqMarcianArgentBluff
    SAY @9
    IF ~CheckStatLT(Player1,18,CHR)~ THEN REPLY @10 GOTO rqMarcianArgentCaught
    IF ~CheckStatGT(Player1,17,CHR)
        CheckStatGT(Player1,15,DEX)
        See("rqrev")
        Inparty("rqrev")
        !StateCheck("rqrev",STATE_SLEEPING)~
        THEN REPLY @11
            DO  ~ActionOverride("rqrev",ForceSpellPointRES("rqmararf",[474.3520])
                SetGlobal("rqcontract1battle","GLOBAL",1)
                Wait(1)~
            EXIT
    IF ~CheckStatGT(Player1,17,CHR)
        CheckStatGT(Player1,15,DEX)
        !See("rqrev")
        Inparty("rqrev")
        !StateCheck("rqrev",STATE_SLEEPING)
        ~
        THEN REPLY @11 GOTO rqMarcianArgentCaught
    // Causes bugs so its disabled
END

IF ~~ THEN BEGIN rqMarcianArgentCaught
    SAY @12
        IF ~~ THEN DO
            ~SetGlobal("rqcontract1battle","GLOBAL",1)~
        EXIT
END

