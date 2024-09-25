BEGIN rqberin

IF ~~ THEN BEGIN BerinvarWhatIDidNot
    SAY @0
    IF ~~ THEN REPLY @1 EXTERN ~rqjah2~ JaheiraSaysDie
END

IF ~~ THEN BEGIN BerinvarPleaseLeave1
    SAY @2
    IF ~~ THEN EXTERN ~rqjah2~ JaheiraWeird
END

IF ~~ THEN BEGIN BerinvarPleaseLeave2
    SAY @3
    IF ~~ THEN EXTERN ~rqjah2~ JaheiraWeird2
END

IF ~~ THEN BEGIN BerinvarDamn
    SAY @4
        IF ~~ THEN
        DO ~SetGlobal("rqBattle2Start","GLOBAL",1)
            SetGlobal("rqJaheira2Ambush","GLOBAL",1)
            Enemy()~
        EXIT
END
