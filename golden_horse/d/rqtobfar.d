// Ribald setup
EXTEND_BOTTOM SARTEM01 0

IF ~Dead("rqjah135")~ THEN REPLY @0 GOTO JaheiraTobAmbushTalk1
END

APPEND SARTEM01

    IF ~~ THEN BEGIN JaheiraTobAmbushTalk1
        SAY @1
        IF ~~ THEN REPLY @2 GOTO JaheiraTobAmbushTalk2
    END

    IF ~~ THEN BEGIN JaheiraTobAmbushTalk2
        SAY @3
        IF ~~ THEN REPLY @4 GOTO JaheiraTobAmbushTalk3
    END

    IF ~~ THEN BEGIN JaheiraTobAmbushTalk3
        SAY @5
        IF ~~ THEN REPLY @6
            DO ~SetGlobal("rqJaheiraSaradushReaction","GLOBAL",1)~
                EXIT
        IF ~~ THEN REPLY @7
            DO
                ~SetGlobal("rqJaheiraSaradushReaction","GLOBAL",1)
                StartStore("sartem01",LastTalkedToBy())~ // Waukeen's Wares
            EXIT
        IF ~~ THEN REPLY @8
            DO
                ~SetGlobal("rqJaheiraSaradushReaction","GLOBAL",1)
                ActionOverride("sartem01",Enemy())~
            EXIT
    END
END

