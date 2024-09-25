BEGIN rq4essli

IF ~Global("rqwaukenambush4","GLOBAL",1)
    InParty("rqrev")
    !Dead("rqrev")~
    THEN BEGIN 5
    SAY @0
    IF ~~ THEN EXTERN ~rq4grosh~ 6
END

IF ~~ THEN BEGIN 7
    SAY @1
    IF ~~ THEN EXTERN ~rq4grosh~ 8
END

IF ~~ THEN BEGIN 9
    SAY @2
    IF ~~ THEN EXTERN ~rq4grosh~ EsslinsWarningGrosh
END

IF ~~ THEN BEGIN 10 // from WaukeenAmbushNegotiation11
    SAY @3
    IF ~~ THEN REPLY @4 GOTO WaukeenPoisoned
    IF ~~ THEN REPLY @5 GOTO WaukeenAmbushCourt1
    IF ~~ THEN REPLY @6 EXTERN ~rq4grosh~ 11 //GroshnakhAmbushAttackCry6
END

IF ~~ THEN BEGIN WaukeenPoisoned
    SAY @7
    IF ~~ THEN REPLY @8
        DO
            ~ApplySpellRES("rqpoiso",Player1) // poison
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
END

IF ~~ THEN BEGIN WaukeenAmbushCourt1
    SAY @9
    IF ~~ THEN REPLY @10 GOTO WaukeenAmbushCourt2
END

IF ~~ THEN BEGIN WaukeenAmbushCourt2
    SAY @11
    IF ~~ THEN REPLY @12 GOTO WaukeenAmbushCourt3
    IF ~~ THEN REPLY @13 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenAmbushCourt3
    SAY @14
    IF ~~ THEN REPLY @15 GOTO WaukeenAmbushCourt5
    IF ~~ THEN REPLY @16 GOTO WaukeenAmbushCourt4
    IF ~~ THEN REPLY @17 GOTO WaukeenAmbushCourt6
    IF ~~ THEN REPLY @18 GOTO WaukeenAmbushCourt7
    IF ~~ THEN REPLY @19 GOTO WaukeenAmbushCourt8
    IF ~~ THEN REPLY @20 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenAmbushCourt4
    SAY @21
    IF ~~ THEN REPLY @22 GOTO WaukeenAmbushCourt3
    IF ~~ THEN REPLY @23 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenAmbushCourt5
    SAY @24
    IF ~~ THEN REPLY @22 GOTO WaukeenAmbushCourt3
    IF ~~ THEN REPLY @23 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenAmbushCourt6
    SAY @25
    IF ~~ THEN REPLY @22 GOTO WaukeenAmbushCourt3
    IF ~~ THEN REPLY @23 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenAmbushCourt8
    SAY @26
    IF ~~ THEN REPLY @22 GOTO WaukeenAmbushCourt3
    IF ~~ THEN REPLY @23 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenAmbushCourt7
    SAY @27
    IF ~~ THEN REPLY @28 GOTO WaukeenAmbushCourt9
    IF ~~ THEN REPLY @29 GOTO WaukeenAmbushCourt9
END

IF ~~ THEN BEGIN WaukeenAmbushCourt9
    SAY @30
    IF ~~ THEN REPLY @31 GOTO WaukeenAmbushCourt10
    IF ~~ THEN REPLY @32 GOTO WaukeenAmbushCourt10
    IF ~~ THEN REPLY @33 GOTO WaukeenAmbushCourt10
END

IF ~~ THEN BEGIN WaukeenAmbushCourt10
    SAY @34
    IF ~~ THEN REPLY @35 GOTO WaukeenNegotiation1
END

IF ~~ THEN BEGIN WaukeenNegotiation1
    SAY @36
    IF ~~ THEN REPLY @37
        DO
            ~ApplySpellRES("rqpoiso",Player1)
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
    IF ~~ THEN REPLY @38 GOTO EsslinNegotiation2
END

IF ~~ THEN BEGIN EsslinNegotiation2
    SAY @39
    IF ~~ THEN GOTO EsslinNegotiation3
END

IF ~~ THEN BEGIN EsslinNegotiation3
    SAY @40
    IF ~~ THEN GOTO EsslinNegotiation4
END

IF ~~ THEN BEGIN EsslinNegotiation4
    SAY @41
    IF ~~ THEN REPLY @42 GOTO EsslinNegotiation5
    IF ~~ THEN REPLY @43 GOTO EsslinNegotiation5
    IF ~~ THEN REPLY @44 GOTO EsslinNegotiation5
END

IF ~~ THEN BEGIN EsslinNegotiation5
    SAY @45
    IF ~~ THEN GOTO EsslinChoice1
END

IF ~~ THEN BEGIN EsslinChoice1
    SAY @46
    IF ~~ THEN GOTO EsslinChoice2
END

IF ~~ THEN BEGIN EsslinChoice2
    SAY @47
    IF ~~ THEN GOTO EsslinChoice3
END

IF ~~ THEN BEGIN EsslinChoice3
    SAY @48
    IF ~~ THEN GOTO EsslinChoice4
END

IF ~~ THEN BEGIN EsslinChoice4
    SAY @49
    IF ~~ THEN GOTO EsslinIndictment
END

IF ~~ THEN BEGIN EsslinIndictment
    SAY @50
    IF ~~ THEN REPLY @51 GOTO WaukeenPoisoning1
    IF ~~ THEN REPLY @52 GOTO WaukeenMaze
    IF ~~ THEN REPLY @53 GOTO WaukeenPoisoning2
    IF ~~ THEN REPLY @54 GOTO WaukeenStabbing
    IF ~~ THEN REPLY @55 GOTO WaukeenEsslinLeave
END

IF ~~ THEN BEGIN WaukeenStabbing
    SAY @56
    IF ~~ THEN REPLY @57
        DO
            ~ApplySpellRES("rqlunge",Player1)
            SwingOnce()
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
END

IF ~~ THEN BEGIN WaukeenPoisoning2
    SAY @58
    IF ~~ THEN REPLY @59
        DO
            ~ApplySpellRES("rqpoiso",Player1)
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
END

IF ~~ THEN BEGIN WaukeenMaze
    SAY @60
    IF ~~ THEN REPLY @61
        DO
            ~ApplySpellRES("rqmaze",Player1)
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
END

IF ~~ THEN BEGIN WaukeenPoisoning1
    SAY @62
    IF ~~ THEN REPLY @63
        DO
            ~ApplySpellRES("rqpoiso",Player1)
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
END

IF ~~ THEN BEGIN WaukeenEsslinLeave
    SAY @64
    IF ~~ THEN REPLY @65 GOTO WaukeenAmbushHandshake
    IF ~~ THEN REPLY @66
        EXTERN ~rq4grosh~ 13 //GroshnakhAmbushPeace10
    IF ~~ THEN REPLY @67
        EXTERN ~rq4grosh~ 14 //GroshnakhAmbushNegotiationAttackHim9
END

IF ~~ THEN BEGIN WaukeenAmbushHandshake
    SAY @68
    IF ~~ THEN REPLY @8
        DO
            ~ApplySpellRES("rqpoiso",Player1)
            Enemy()~
        EXTERN ~rq4grosh~ 12 //GroshnakhDisbelief8
END

IF ~~ THEN BEGIN 15 //WaukeenAmbushEsslinReaction7
    SAY @69
        IF ~~ THEN DO
            ~SetGlobal("rq4AmbushBattle","GLOBAL",1)
            SetGlobal("rqRevanMintiper","GLOBAL",1)
            ActionOverride("rqclthie",Enemy())
            Enemy()~
        EXIT
END
