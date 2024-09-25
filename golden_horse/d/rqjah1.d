BEGIN rqjah1

IF ~OR (2)
        OpenState("Cell01",FALSE)
        Global("JaheiraReleased","GLOBAL",0)~ THEN BEGIN JaheiraOpenedCellDoor
    SAY @0
    IF ~~ THEN EXTERN ~rqgalvar~ GalvareyBrief
END

IF ~!OpenState("Cell01",FALSE)
    OR (3)
        Global("JaheiraJerk","GLOBAL",1)
        Global("JaheiraHunt","GLOBAL",1)
        ReputationLT([PC],13)
    ~
    THEN BEGIN JaheiraDisapproval
    SAY @1
    IF ~~ THEN REPLY @2 GOTO JaheiraWhy
    IF ~~ THEN REPLY @3 GOTO JaheiraWhy
END

IF ~~ THEN BEGIN JaheiraWhy
    SAY @4
    IF ~~ THEN EXTERN ~rqgalvar~ GalvareyIntro
END

IF ~~ THEN BEGIN JaheiraAppeal
    SAY @5
    IF ~~ THEN EXTERN ~rqgalvar~ GalvareyPoint
END

IF ~~ THEN BEGIN JaheiraWhyEnemy
    SAY @6
    IF ~~ THEN REPLY @7 EXTERN ~rqgalvar~ GalvareyEnough
    IF ~~ THEN REPLY @8 EXTERN ~rqgalvar~ GalvareyEnough
    IF ~~ THEN REPLY @9 EXTERN ~rqgalvar~ GalvareyEnough
    IF ~~ THEN REPLY @10 EXTERN ~rqgalvar~ GalvareyEnough
END
