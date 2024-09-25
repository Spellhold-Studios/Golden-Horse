BEGIN rqmalch

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Malchor
    SAY @0
    =
    @1
    IF ~~ THEN REPLY @2 GOTO MalchorDifficult
    IF ~~ THEN REPLY @3 GOTO MalchorDifficult
    IF ~~ THEN REPLY @4
        DO
            ~TakePartyItem("misc5x") // Harper Pin
            TakePartyItem("amul28") // Amulet of Master Harper
            TakePartyItem("sw1h50")~ // Shazzelim + 1
        GOTO MalchorEasy
END

IF ~~ THEN BEGIN MalchorDifficult
    SAY @5
    IF ~~ THEN EXTERN ~rqjah5~ Jaheira4Attack
END

IF ~~ THEN BEGIN MalchorEasy
    SAY @6
    IF ~~ THEN EXTERN ~rqjah5~ Jaheira4Amulet
END

IF ~~ THEN BEGIN MalchorBattle
    SAY @7
    IF ~~ THEN EXTERN ~rqjah5~ Jaheira4Attack
END

IF ~~ THEN BEGIN MalchorAmuletWants
    SAY @8
    IF ~~ THEN REPLY @9 GOTO MalchorBattle
    IF ~~ THEN REPLY @10 EXTERN ~rqjah5~ Jaheira4Attack
    IF ~~ THEN REPLY @11 GOTO MalchorBattle
    IF ~~ THEN REPLY @12 GOTO MalchorBattle
    IF ~~ THEN REPLY @13 EXTERN ~rqjah5~ Jaheira4Attack
END
