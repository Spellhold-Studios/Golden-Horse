BEGIN rqjah5

IF ~~ THEN BEGIN Jaheira4Attack
    SAY @0
        IF ~~ THEN
        DO
            ~SetGlobal("rqjaheira5malchor","GLOBAL",1)
            Enemy()
            ActionOverride("rqmalch",Enemy())~
        EXIT
END

IF ~~ THEN BEGIN Jaheira4Amulet
    SAY @1
    IF ~~ THEN EXTERN ~rqmalch~ MalchorAmuletWants
END
