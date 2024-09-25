// Amelissan Bragging
EXTEND_BOTTOM MELISS01 8
    IF ~Dead("rqessl")~ THEN GOTO AmelissanBragging
    IF ~Dead("rqessl")
        OR(2)
            Global("rqTobAssaultTemple","GLOBAL",1)
            Global("rqTobItwantosPrimaryAlly","GLOBAL",1)~ THEN GOTO AmelissanBragging2
    IF ~!Dead("rqessl")
        Global("rqT6DeathStalkerSendai","GLOBAL",1)
        Global("rqT7DeathStalkerAbazigal","GLOBAL",1)~ THEN GOTO AmelissanBragging3
END

APPEND MELISS01
    IF ~~ THEN BEGIN AmelissanBragging
        SAY @0
        IF ~~ THEN GOTO 9
    END

    IF ~~ THEN BEGIN AmelissanBragging2
        SAY @1
        IF ~~ THEN GOTO 9
    END

    IF ~~ THEN BEGIN AmelissanBragging3 // ToB only game bragging
        SAY @2
        IF ~~ THEN GOTO 9
    END
END
/*
EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("rqrev")~ THEN DO ~~ GOTO RevanMercenary
END

APPEND PLAYER1
IF ~~ RevanMercenary
SAY ~You eye the mercenary Revan Artecratos will he risk his life this time or will he leave not wanting to risk his neck?~
++ ~It is for you to decide Revan are you with me or are you not?~ EXTERN ~rqrevJ~ reasoning
++ ~Revan you don't need to do this..~ EXTERN ~rqrevJ~ reasoning
END
END
*/
