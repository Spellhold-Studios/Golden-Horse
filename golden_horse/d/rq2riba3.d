// Ribald setup
EXTEND_BOTTOM RIBALD 0

IF ~Global("rqRevanAfterAccusingRibald","GLOBAL",1)~
    THEN REPLY @0 GOTO RevanAfterRibaldTalk3
END

APPEND RIBALD

    IF ~~ THEN BEGIN RevanAfterRibaldTalk3
        SAY @1
        IF ~PartyHasItem("rqletpen")~ THEN REPLY @2 GOTO RevanAfterRibaldProof1
        IF ~!PartyHasItem("rqletpen")~ THEN REPLY @3 GOTO RevanAfterRibaldTalk4
    END

    IF ~~ THEN BEGIN RevanAfterRibaldProof1
        SAY @4
        IF ~~ THEN REPLY @5 GOTO RevanAfterRibaldProof2
    END

    IF ~~ THEN BEGIN RevanAfterRibaldProof2
        SAY @6
        IF ~~ THEN REPLY @7 GOTO RevanAfterRibaldProof3
    END

    IF ~~ THEN BEGIN RevanAfterRibaldProof3
        SAY @8
        IF ~~ THEN REPLY @9 GOTO RevanAfterRibaldProof4
    END

    IF ~~ THEN BEGIN RevanAfterRibaldProof4
        SAY @10
        IF ~~ THEN REPLY @11 GOTO RevanAfterRibaldProof5
        IF ~~ THEN REPLY @12
            DO ~ActionOverride("Ribald",Enemy())~ EXIT
        IF ~~ THEN REPLY @13 GOTO RevanAfterRibaldProof5
        IF ~~ THEN REPLY @14 GOTO RevanAfterRibaldProof5
    END

    IF ~~ THEN BEGIN RevanAfterRibaldProof5
        SAY @15
        IF ~~ THEN REPLY @16 GOTO RevanAfterRibaldProof6
        IF ~~ THEN REPLY @17 GOTO RevanAfterRibaldProof6
        IF ~~ THEN REPLY @18 GOTO RevanAfterRibaldProofDiscount
        IF ~~ THEN REPLY @19 GOTO RevanAfterRibaldProof6
    END

     IF ~~ THEN BEGIN RevanAfterRibaldProof6
        SAY @20
        IF ~~ THEN REPLY @21 GOTO RevanAfterRibaldProofDiscount
        IF ~~ THEN REPLY @22 GOTO RevanAfterRibaldDiscount1
    END

    IF ~~ THEN BEGIN RevanAfterRibaldProofDiscount
        SAY @23
        IF ~~ THEN REPLY @24 GOTO RevanAfterRibaldDiscount1
    END

    IF ~~ THEN BEGIN RevanAfterRibaldDiscount1
        SAY @25
        IF ~~ THEN DO
                ~GiveGoldForce(3141)
                SetGlobal("rqRevanAfterAccusingRibald","GLOBAL",2)
                SetGlobal("rqRevanAfterAmbush2Talk","GLOBAL",3)~
            EXIT
    END

    IF ~~ THEN BEGIN RevanAfterRibaldTalk4
        SAY @26
        IF ~~ THEN GOTO RevanAfterRibaldTalk5
    END

    IF ~~ THEN BEGIN RevanAfterRibaldTalk5
        SAY @27
        IF ~~ THEN REPLY @28 GOTO RibaldRelieved
        IF ~~ THEN REPLY @29 GOTO RibaldBegging
        IF ~~ THEN REPLY @30 GOTO RibaldBegging
        IF ~~ THEN REPLY @31 GOTO RibaldRelieved
    END

    IF ~~ THEN BEGIN RibaldRelieved
        SAY @32
            IF ~~ THEN DO
                ~SetGlobal("rqRevanAfterAccusingRibald","GLOBAL",2)
                SetGlobal("rqRevanAfterAmbush2Talk","GLOBAL",3)~
            EXIT
    END

    IF ~~ THEN BEGIN RibaldBegging
        SAY @33
        IF ~~ THEN REPLY @34 GOTO RibaldProtests
        IF ~~ THEN REPLY @35 GOTO RibaldProtests
        IF ~~ THEN REPLY @36
            DO ~ActionOverride("Ribald",Enemy())~
        EXIT
    END

    IF ~~ THEN BEGIN RibaldProtests
        SAY @37
        IF ~~ THEN REPLY @38 GOTO RibaldEscalation
        IF ~~ THEN REPLY @39 GOTO RibaldEscalation
        IF ~~ THEN REPLY @40 GOTO RibaldRelieved
    END

    IF ~~ THEN BEGIN RibaldEscalation
        SAY @41
        IF ~~ THEN REPLY @42 GOTO RibaldRelieved
        IF ~~ THEN REPLY @43 GOTO RibaldRelieved
        IF ~~ THEN REPLY @44 GOTO RibaldRelieved
    END
END

