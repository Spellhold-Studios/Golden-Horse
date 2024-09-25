BEGIN rqrevia

IF ~Global("rqharper3reviane","GLOBAL",0)~ THEN BEGIN rqrevia1
    SAY @0
    =
    @1
    IF ~~ THEN REPLY @2 GOTO rqrevia2
    IF ~~ THEN REPLY @3 GOTO rqrevia4
    IF ~~ THEN REPLY @4 GOTO rqrevia4
    IF ~~ THEN REPLY @5 GOTO rqrevia3
END

IF ~~ THEN BEGIN rqrevia2
    SAY @6
    IF ~~ THEN REPLY  @7 GOTO rqrevia5
    IF ~~ THEN REPLY  @8 GOTO rqrevia5
    IF ~~ THEN REPLY  @9 GOTO rqrevia4
END

IF ~~ THEN BEGIN rqrevia3
    SAY @10
    IF ~~ THEN DO
        ~SetGlobal("rqBattle3Start","GLOBAL",1)
        SetGlobal("rqharper3reviane","GLOBAL",1)
        Enemy()~
    EXIT
END

IF ~~ THEN BEGIN rqrevia4
    SAY @11
    IF ~~ THEN DO
        ~SetGlobal("rqBattle3Start","GLOBAL",1)
        SetGlobal("rqharper3reviane","GLOBAL",1)
        Enemy()~
    EXIT
END

IF ~~ THEN BEGIN rqrevia5
    SAY @12
    IF ~~ THEN DO
        ~SetGlobal("rqBattle3Start","GLOBAL",1)
        SetGlobal("rqharper3reviane","GLOBAL",1)
        Enemy()~
    EXIT
END
