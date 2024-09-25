BEGIN rq4grosh

IF ~Global("rqwaukenambush4","GLOBAL",1)
    InParty("rqrev")
    !Dead("rqrev")
    ~
    THEN BEGIN 6
    SAY @0
    IF ~~ THEN EXTERN ~rq4essli~ 7 //WaukeenAmbushTheater2

END

IF ~~ THEN BEGIN 8
    SAY @1
    IF ~~ THEN EXTERN ~rq4essli~ 9
END

IF ~~ THEN BEGIN EsslinsWarningGrosh
    SAY @2
    IF ~~ THEN EXTERN ~rq4essli~ 10 //WaukeenAmbushNegotiation11
END


IF ~~ THEN BEGIN 11 //GroshnakhAmbushAttackCry6
    SAY @3
    IF ~~ THEN EXTERN ~rq4essli~ 15 //WaukeenAmbushEsslinReaction7
END

IF ~~ THEN BEGIN 12 //GroshnakhDisbelief8
    SAY @4
        IF ~~ THEN DO
            ~SetGlobal("rq4AmbushBattle","GLOBAL",1)
            SetGlobal("rqRevanMintiper","GLOBAL",1)
            Enemy()~
        EXIT
END

IF ~~ THEN BEGIN 14 //GroshnakhAmbushNegotiationAttackHim9
    SAY @5
    IF ~~ THEN EXTERN ~rq4essli~ 15 //WaukeenAmbushEsslinReaction7
END

IF ~~ THEN BEGIN 13 //GroshnakhAmbushPeace10
    SAY @6
    IF ~~ THEN EXTERN ~rq4essli~ 15 //WaukeenAmbushEsslinReaction7
END
