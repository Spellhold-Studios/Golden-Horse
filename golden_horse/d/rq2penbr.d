BEGIN rq2penbr

IF ~NumTimesTalkedTo(0)~ THEN BEGIN PentarchBridgeIntro
    SAY @0
    IF ~~ THEN REPLY @1 GOTO PentarchBridgeName
    IF ~~ THEN REPLY @2 GOTO PentarchBridgeName
    IF ~~ THEN REPLY @3 GOTO PentarchBridgeName
    IF ~~ THEN REPLY @4 GOTO PentarchBridgeName
END

IF ~~ THEN BEGIN PentarchBridgeName
    SAY @5
    IF ~~ THEN GOTO PentarchBridgePlea
END

IF ~~ THEN BEGIN PentarchBridgePlea
    SAY @6
    IF ~~ THEN REPLY @7 GOTO PentarchBridgeExplains
END

IF ~~ THEN BEGIN PentarchBridgeExplains
    SAY @8
    IF ~~ THEN REPLY @9 GOTO PentarchBridgeReward
    IF ~~ THEN REPLY @10 GOTO PentarchBridgeBegging1
END

IF ~~ THEN BEGIN PentarchBridgeBegging1 // 1
    SAY @11
    IF ~~ THEN REPLY @12 GOTO PentarchBridgeReward
    IF ~~ THEN REPLY @13 GOTO PentarchBridgeQuestBegging3
END

IF ~~ THEN BEGIN PentarchBridgeReward
    SAY @14
    IF ~~ THEN REPLY @15 GOTO PentarchBridgeCoinsDo
    IF ~~ THEN REPLY @16 GOTO PentarchBridgeBegging2
END

IF ~~ THEN BEGIN PentarchBridgeBegging2 // 2
    SAY @17
    IF ~~ THEN REPLY @18 GOTO PentarchBridgeCoinsDo
END

IF ~~ THEN BEGIN PentarchBridgeCoinsDo
    SAY @19
    IF ~~ THEN REPLY @20 GOTO PentarchBridgeAgreed
    IF ~~ THEN REPLY @21 GOTO PentarchBridgeBegging3
END

IF ~~ THEN BEGIN PentarchBridgeQuestBegging3
    SAY @22
    IF ~~ THEN REPLY @23 GOTO PentarchBridgeAgreed
    IF ~~ THEN REPLY @24 GOTO PentarchBridgeCoinsDo
    IF ~~ THEN REPLY @25 GOTO PentarchBridgeBegging3
END

IF ~~ THEN BEGIN PentarchBridgeAgreed
    SAY @26
    IF ~~ THEN
        DO
            ~SetGlobal("rqPentachBridgeAmbush2","GLOBAL",2)~
            UNSOLVED_JOURNAL
            @27
        EXIT
END

// Interactions after agreeing to quest GLOBAL,2
IF ~True()
    !PartyHasItem("rq2wedrn")
    Global("rqPentachBridgeAmbush2","GLOBAL",2)
    ~
    THEN BEGIN  PentarchBridgeNotHaveRingFromRibald
    SAY @28
    IF ~~ THEN REPLY @29 GOTO PentarchBridgeRetellsQuest
    IF ~~ THEN REPLY @30 GOTO PentarchBridgeBegging3
END

IF ~~ THEN BEGIN PentarchBridgeRetellsQuest
    SAY @31
    IF ~~ THEN REPLY @32
        DO
            ~SetGlobal("rqPentachBridgeAmbush2","GLOBAL",2)~
        EXIT
    IF ~~ THEN REPLY @33
        DO
            ~SetGlobal("rqPentachBridgeAmbush2","GLOBAL",4)~
        EXIT
END

IF ~~ THEN BEGIN PentarchBridgeBegging3
    SAY @34
    IF ~~ THEN REPLY @35
        DO
            ~SetGlobal("rqPentachBridgeAmbush2","GLOBAL",2)~
        EXIT
    IF ~~ THEN REPLY @36
        DO
            ~SetGlobal("rqPentachBridgeAmbush2","GLOBAL",4)~
        EXIT
END

// Pentarch you have ring
IF ~True()
    Global("rqPentachBridgeAmbush2","GLOBAL",2)
    PartyHasItem("rq2wedrn")
    ~
    THEN BEGIN PentarchBridgeAmbush1
    SAY @37
    IF ~PartyHasItem("rq2wedrn")~ THEN REPLY @38
        DO
            ~TakePartyItem("rq2wedrn")
            SetGlobal("rqPentachBridgeAmbush2","GLOBAL",3)
            SetGlobal("rqRevanAfterAmbush2Talk","GLOBAL",1)~
        GOTO PentarchBridgeAmbush2
    IF ~~ THEN REPLY @39 GOTO PentarchBridgeRetellsQuest
    IF ~~ THEN REPLY @40
        EXIT
END

IF ~~ THEN BEGIN PentarchBridgeAmbush2
    SAY @41
        IF ~~ THEN
        DO
            %SetGlobal("rqSpawnPentarchAmbush","GLOBAL",1)
            EraseJournalEntry
            (@27)
            EscapeArea()
            %
            SOLVED_JOURNAL
            @42
        EXIT
END


IF ~Global("rqPentachBridgeAmbush2","GLOBAL",4)~ THEN BEGIN  PentarchBridgeRetellsQuest2
    SAY @43
    IF ~~ THEN REPLY @32
        DO
            ~SetGlobal("rqPentachBridgeAmbush2","GLOBAL",2)~
        EXIT
    IF ~~ THEN REPLY @33
        EXIT
END
