BEGIN rqdermin

IF ~~ THEN BEGIN DerminWhatYouDone
    SAY @0
    IF ~~ THEN REPLY @1 GOTO DerminSlayer
    IF ~~ THEN REPLY @2 GOTO DerminThreats
    IF ~~ THEN REPLY @3 GOTO DerminRemorse
    IF ~~ THEN REPLY @4 GOTO DerminRemorse
    IF ~~ THEN REPLY @5 GOTO DerminThreats
END

IF ~~ THEN BEGIN DerminSlayer
    SAY @6
    IF ~~ THEN REPLY @7 GOTO DerminKilledFew
    IF ~~ THEN REPLY @8 GOTO DerminThreats
END

IF ~~ THEN BEGIN DerminRemorse
    SAY @9
    =
    @10
    IF ~~ THEN REPLY @11 GOTO DerminSurrender
    IF ~~ THEN REPLY @12 GOTO DerminDeal
END

IF ~~ THEN BEGIN DerminThreats
    SAY @13
    =
    @14
    IF ~~ THEN REPLY @15 GOTO DerminKilledFew
    IF ~~ THEN REPLY @16 GOTO DerminSurrender
END

IF ~~ THEN BEGIN DerminSurrender
    SAY @17
    IF ~~ THEN REPLY @18 GOTO DerminJaheira
    IF ~~ THEN REPLY @19 GOTO DerminBattle
END

IF ~~ THEN BEGIN DerminJaheira
    SAY @20
        IF ~~ THEN DO
            ~SetGlobal("rqjaheira4ambush","GLOBAL",1)
            SetGlobal("rqBattle4Start","GLOBAL",1)
            Enemy()~
        EXIT
END

IF ~~ THEN BEGIN DerminKilledFew
    SAY @21
        IF ~~ THEN DO
            ~SetGlobal("rqjaheira4ambush","GLOBAL",1)
            SetGlobal("rqBattle4Start","GLOBAL",1)
            Enemy()~
        EXIT
END

IF ~~ THEN BEGIN DerminBattle
    SAY @22
        IF ~~ THEN DO
            ~SetGlobal("rqjaheira4ambush","GLOBAL",1)
            SetGlobal("rqBattle4Start","GLOBAL",1)
            Enemy()~
        EXIT
END

IF ~~ THEN BEGIN DerminDeal
    SAY @23
        IF ~~ THEN DO
            ~SetGlobal("rqjaheira4ambush","GLOBAL",1)
            SetGlobal("rqBattle4Start","GLOBAL",1)
            Enemy()~
        EXIT
END
