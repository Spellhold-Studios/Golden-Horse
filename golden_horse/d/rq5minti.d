// mintiper vs revan interaction in umar hills
BEGIN rq5minti

IF ~NumTimesTalkedTo(0)
    //Global("rqRevanMintiper","GLOBAL",5)
    See("rqrev")
    Inparty("rqrev")
    !Dead("rqrev")
    !StateCheck("rqrev",STATE_SLEEPING)
    ~
    THEN BEGIN MintiperIntro
    SAY @0
    IF ~~ THEN REPLY @1 GOTO MintiperAttack //17
    IF ~~ THEN REPLY @2 GOTO MintiperExplains
    IF ~~ THEN REPLY @3 GOTO MintiperBribeAttempt
    IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @4 GOTO MintiperAttack //17
END

IF ~~ THEN BEGIN MintiperBribeAttempt
    SAY @5
    IF ~~ THEN REPLY @2 GOTO MintiperExplains
    IF ~~ THEN REPLY @6 GOTO MintiperAttack
END

IF ~~ THEN BEGIN MintiperExplains
    SAY @7
    =
    @8
    =
    @9
    =
    @10
    IF ~~ THEN EXTERN ~rqrevJ~ RevanVSMintiper // 16
END

IF ~~ THEN BEGIN MintiperAttack // 17
    SAY @11
    IF ~~ THEN DO
        ~SetGlobal("rqContractsRugosAvailable","GLOBAL",1)
        SetGlobal("rq5MintipBattle","GLOBAL",1)
        Enemy()~
    EXIT
END
