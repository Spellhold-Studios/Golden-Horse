BEGIN rq3anaka

IF ~Global("rqcontractAnakarhysse","GLOBAL",1)~ THEN BEGIN rq3jobppl
    SAY @0
    IF ~~ THEN REPLY @1 GOTO Job3Scamming0
    IF ~~ THEN REPLY @2 GOTO Job3Scamming0
    IF ~~ THEN REPLY @3 GOTO Job3Scamming0
END

IF ~~ THEN BEGIN Job3Scamming0
    SAY @4
    IF ~~ THEN REPLY @5 GOTO Job3Scamming1
END

IF ~~ THEN BEGIN Job3Scamming1
    SAY @6
    IF ~~ THEN GOTO Job3Scamming2
END

IF ~~ THEN BEGIN Job3Scamming2
    SAY @7
    IF ~CheckStatLT(Player1,9,INT)~ THEN REPLY @8 GOTO Job3Scamming3
    IF ~CheckStatGT(Player1,8,INT)~ THEN REPLY @9
        DO ~SetGlobal("rqcontract3battle","GLOBAL",1)~
        EXIT
END

IF ~~ THEN BEGIN Job3Scamming3
    SAY @10
    IF ~~ THEN REPLY @11
        DO
            ~EscapeArea()
            ActionOverride("rqberkri",EscapeArea())
            SetGlobal("rqcontractAnakarhysse","GLOBAL",3)
            SetGlobal("rqcontractbotched","GLOBAL",1)~
        EXIT
END
