BEGIN rqjah2

IF ~Global("rqJaheira2AmbushSpawn","GLOBAL",1)~ THEN BEGIN JaheiraAccusation
    SAY @0
    IF ~~ THEN REPLY @1 GOTO JaheiraRessurectedHow
END

IF ~~ THEN BEGIN JaheiraRessurectedHow
    SAY @2
    IF ~~ THEN EXTERN ~rqberin~ BerinvarWhatIDidNot
END

IF ~~ THEN BEGIN JaheiraSaysDie
    SAY @3
    IF ~~ THEN REPLY @4 EXTERN ~rqberin~ BerinvarPleaseLeave1
END

IF ~~ THEN JaheiraWeird
    SAY @5
    IF ~~ THEN EXTERN ~rqberin~ BerinvarPleaseLeave2
END

IF ~~ THEN BEGIN JaheiraWeird2
    SAY @6
    IF ~~ THEN EXTERN ~rqberin~ BerinvarDamn
END
