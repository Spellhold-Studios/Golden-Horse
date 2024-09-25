// Ribald ambush Pentarch theatre
EXTEND_BOTTOM SARVOLO 9
    IF ~InParty("rqrev")~ THEN REPLY @0 GOTO VoloAboutRevan
END

APPEND SARVOLO

    IF ~~ THEN BEGIN VoloAboutRevan
        SAY @1
        IF ~!IsValidForPartyDialog("rqrev")~ THEN GOTO 9
        IF ~IsValidForPartyDialog("rqrev")~ THEN EXTERN ~rqrev25J~ RevanAnswerToEnemies
    END
END
