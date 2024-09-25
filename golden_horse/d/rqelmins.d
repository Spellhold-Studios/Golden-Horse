// Ribald had no money
EXTEND_BOTTOM AMELM01 1

IF ~GlobalGT("rqRevanMintiper","GLOBAL",2)~ THEN REPLY @0 GOTO ElminsterHarperPeace
IF ~GlobalGT("rqRevanMintiper","GLOBAL",2)~ THEN REPLY @1 GOTO ElminsterHarperPeace
END

APPEND AMELM01

    IF ~~ THEN BEGIN ElminsterHarperPeace
        SAY @2
        =
        @3
        IF ~~ THEN GOTO 5
    END
END
