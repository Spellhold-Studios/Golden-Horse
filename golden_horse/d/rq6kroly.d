BEGIN rq6kroly

IF ~NumTimesTalkedTo(0)~ THEN BEGIN KrolynIntro
    SAY @0
    IF ~~ THEN REPLY @1 GOTO KrolyMercGraveyardReaction
    IF ~~ THEN REPLY @2 GOTO KrolynNotHarper
    IF ~~ THEN REPLY @3 GOTO KrolynNotHarper
    IF ~~ THEN REPLY @4 GOTO KrolynAnger
    IF ~~ THEN REPLY @5 EXTERN ~rq6merc~ BribeAttempt
END

IF ~~ THEN BEGIN KrolynAnger
    SAY @6
    IF ~~ THEN DO
        ~SetGlobal("rqBattle6Start","GLOBAL",1)
        Enemy()~
    EXIT
END

IF ~~ THEN BEGIN KrolyMercGraveyardReaction
    SAY @7
    IF ~~ THEN DO
        ~SetGlobal("rqBattle6Start","GLOBAL",1)
        Enemy()~
    EXIT
END


IF ~~ THEN BEGIN KrolynNotHarper
    SAY @8
    IF ~~ THEN DO
        ~SetGlobal("rqBattle6Start","GLOBAL",1)
        Enemy()~
    EXIT
END

IF ~~ THEN BEGIN KrolyMercBribeReaction
    SAY @9
    IF ~~ THEN GOTO KrolyMercGraveyardReaction
END

BEGIN rq6merc

IF ~~ THEN BEGIN BribeAttempt
    SAY @10
    IF ~~ THEN EXTERN ~rq6kroly~ KrolyMercBribeReaction
END
