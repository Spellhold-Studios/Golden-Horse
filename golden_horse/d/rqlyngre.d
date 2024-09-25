BEGIN rqlyngre

IF ~NumTimesTalkedTo(0)~ THEN BEGIN rqStoreIntro
    SAY @0
    IF ~~ THEN REPLY @1 GOTO rqStoreStart
    IF ~~ THEN REPLY @2
        EXIT
END

IF ~NumTimesTalkedToGT(0) NumTimesTalkedToLT(2)~ THEN BEGIN rqStoreSecond
    SAY @3
    IF ~~ THEN REPLY @4 GOTO rqStoreStart
    IF ~~ THEN REPLY @5
        EXIT
END

IF ~NumTimesTalkedToGT(1)~ THEN BEGIN rqStoreThird
    SAY @6
    IF ~~ THEN REPLY @7 GOTO rqStoreStart
    IF ~~ THEN REPLY @8
        EXIT
END

IF ~~ THEN BEGIN rqStoreStart
    SAY @9
        IF ~~ THEN DO ~StartStore("rqstor01",LastTalkedToBy())~  // Merchant
        EXIT
END
