// Ribald ambush Pentarch theatre
EXTEND_BOTTOM RIBALD 0
    IF ~True()
    Global("rqPentachBridgeAmbush2","GLOBAL",2)
    !PartyHasItem("rq2wedrn")
    ~ THEN REPLY @0 GOTO RibaldTheathre1
END

APPEND RIBALD

    IF ~~ THEN BEGIN RibaldTheathre1
        SAY @1
            IF ~~ THEN GOTO RibaldTheathre2
    END

    IF ~~ THEN BEGIN RibaldTheathre2
        SAY @2
        IF ~~ THEN REPLY @3 GOTO RibaldTheathre3
    END

    IF ~~ THEN BEGIN RibaldTheathre3
        SAY @4
        IF ~~ THEN REPLY @5 GOTO RibaldTheathre4
    END

    IF ~~ THEN BEGIN RibaldTheathre4
        SAY @6
        IF ~~ THEN REPLY @7 GOTO RibaldRingSell
        IF ~~ THEN REPLY @8 GOTO RibaldRingSell
        IF ~~ THEN REPLY @9 GOTO RibaldRingSell
    END

    IF ~~ THEN BEGIN RibaldRingSell
        SAY @10
        IF ~PartyGoldGT(119)~ THEN REPLY @11 GOTO RibaldGetRing
        IF ~PartyGoldLT(120)~ THEN REPLY @12 GOTO RibaldNoMoney
    END

    IF ~~ THEN BEGIN RibaldGetRing
        SAY @13
            IF ~~ THEN DO
                ~TakePartyGold(120)
                GiveItemCreate("rq2wedrn",LastTalkedToBy,0,0,0)
                //SetGlobal("rqGotPentarchRing2","GLOBAL",1)~
            EXIT
    END

    IF ~~ THEN BEGIN RibaldNoMoney
        SAY @14
        IF ~~ THEN DO
            ~SetGlobal("rqRingPurchaseFailed2","GLOBAL",1)~
        EXIT
    END
END
