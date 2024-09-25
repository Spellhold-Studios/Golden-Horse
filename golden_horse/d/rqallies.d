BEGIN ~rqfougi~

CHAIN
    IF ~Global("rqRevanMintiper","GLOBAL",3)
        InParty("rqrev")
        !Dead("rqrev")
        !StateCheck("rqrev",STATE_SLEEPING)~
    THEN rqfougi FougierIntro
    @0
DO ~SetGlobal("rqRevanMintiper","GLOBAL",4)~
    == rqrevJ
    @1
    == rqfougi
    @2
    == rqrevJ
    @3
    =
    @4
    == rqfougi
    @5
    == rqrevJ
    @6
    == rqfougi
    @7
    == rqrevJ
    @8
    == rqfougi
    @9
DO ~EscapeArea()~
END
IF ~~ THEN EXTERN ~rqrevJ~ MintiperEncounterToCome // SetGlobal("rqRevanMintiper","GLOBAL",5)

BEGIN ~rqrahm~

IF ~!InParty("rqrev")~ THEN BEGIN MercenaryInterestOrNot
    SAY @10
    IF ~~ THEN REPLY @11
        EXIT
    IF ~PartyGoldLT(1000)~ THEN REPLY @12
        EXIT
    IF ~PartyGoldGT(999)~ THEN REPLY @13 GOTO InterestIsThere
END

IF ~InParty("rqrev")~ THEN BEGIN MercenaryInterestRevan
    SAY @14
    IF ~~ THEN REPLY @11
        EXIT
    IF ~PartyGoldLT(1000)~ THEN REPLY @12
        EXIT
    IF ~PartyGoldGT(999)~ THEN REPLY @13 GOTO InterestIsThere
END

IF ~Dead("rqfbe") Dead("rqfbet") Dead("rqfth") Dead("rqfmc") Dead("rqfmn") Dead("rqcmi") Dead("rqsrc")~ THEN BEGIN NoMercenariesAllDead
    SAY @15
        IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN InterestIsThere
    SAY @16
    =
    @17
    =
    @18
    =
    @19
    IF ~~ THEN REPLY @20 GOTO GiveMercenaryRoosterLetter
    IF ~~ THEN REPLY @21
        EXIT
END

IF ~~ THEN BEGIN GiveMercenaryRoosterLetter
    SAY @22
    IF ~~ THEN DO ~GiveItem("rqrooste",LastTalkedToBy())~ GOTO InterestedInMercenariesRooster
END

IF ~~ THEN BEGIN InterestedInMercenariesRooster
    SAY @23
    IF ~Global("rqZZmercFBESpawned","GLOBAL",1)
        !InParty("rqfbe")
        !Dead("rqfbe")~
        THEN REPLY @24 GOTO MercenaryFBERejoin

    IF ~Global("rqZZmercFBESpawned","GLOBAL",0)~
        THEN REPLY @25
            DO ~TakePartyGold(1000)
                Wait(4)
                CreateCreature("rqfbe",[265.749],13)
                SetGlobal("rqZZmercFBESpawned","GLOBAL",1)~ GOTO MercenaryArrivesFBE

    IF ~Global("rqZZmercFBETSpawned","GLOBAL",1)
        !InParty("rqfbet")
        !Dead("rqfbet")~
        THEN REPLY @26 GOTO MercenaryFBETRejoin

    IF ~Global("rqZZmercFBETSpawned","GLOBAL",0)~
        THEN REPLY @25
            DO ~TakePartyGold(1000)
                Wait(4)
                CreateCreature("rqfbet",[265.749],13)
                SetGlobal("rqZZmercFBETSpawned","GLOBAL",1)~ GOTO MercenaryArrivesFBET

    IF ~Global("rqZZmercFTHSpawned","GLOBAL",1)
        !InParty("rqfth")
        !Dead("rqfth")~
        THEN REPLY @27 GOTO MercenaryFTHRejoin

    IF ~Global("rqZZmercFTHSpawned","GLOBAL",0)~
        THEN REPLY @28
            DO ~TakePartyGold(1000)
                Wait(4)
                CreateCreature("rqfth",[265.749],13)
                SetGlobal("rqZZmercFTHSpawned","GLOBAL",1)~ GOTO MercenaryArrivesFTH

    IF ~Global("rqZZmercFMCSpawned","GLOBAL",1)
        !InParty("rqfmc")
        !Dead("rqfmc")~
        THEN REPLY @29 GOTO MercenaryFMCRejoin

    IF ~Global("rqZZmercFMCSpawned","GLOBAL",0)~
        THEN REPLY @30
            DO ~TakePartyGold(1000)
                Wait(4)
                CreateCreature("rqfmc",[265.749],13)
                SetGlobal("rqZZmercFMCSpawned","GLOBAL",1)~ GOTO MercenaryArrivesFMC

    IF ~Global("rqZZmercFMNSpawned","GLOBAL",1)
        !InParty("rqfmn")
        !Dead("rqfmn")~
        THEN REPLY @31 GOTO MercenaryFMNRejoin

    IF ~Global("rqZZmercFMNSpawned","GLOBAL",0)~
        THEN REPLY @32
            DO ~TakePartyGold(1000)
                Wait(4)
                CreateCreature("rqfmn",[265.749],13)
                SetGlobal("rqZZmercFMNSpawned","GLOBAL",1)~ GOTO MercenaryArrivesFMN

    IF ~Global("rqZZmercCMISpawned","GLOBAL",1)
        !InParty("rqcmi")
        !Dead("rqcmi")~
        THEN REPLY @33 GOTO MercenaryCMIRejoin

    IF ~Global("rqZZmercCMISpawned","GLOBAL",0)~
        THEN REPLY @34
            DO ~TakePartyGold(1000)
                Wait(4)
                CreateCreature("rqcmi",[265.749],13)
                SetGlobal("rqZZmercCMISpawned","GLOBAL",1)~ GOTO MercenaryArrivesCMI

    IF ~Global("rqZZmercSRCSpawned","GLOBAL",1)
        !InParty("rqsrc")
        !Dead("rqsrc")~
        THEN REPLY @35 GOTO MercenarySRCRejoin

    IF ~Global("rqZZmercSRCSpawned","GLOBAL",0)~
        THEN REPLY @36
            DO ~TakePartyGold(1000)
                Wait(4)
                SetGlobal("rqZZmercSRCSpawned","GLOBAL",1)
                CreateCreature("rqsrc",[265.749],13)~ GOTO MercenaryArrivesSRC
    IF ~~ THEN REPLY @37 EXIT
END

IF ~~ THEN BEGIN MercenaryFBERejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqfbeP~ rqFigBersRejoin
END

IF ~~ THEN BEGIN MercenaryFBETRejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqfbeTP~ rqFigBersTRejoin
END

IF ~~ THEN BEGIN MercenaryFTHRejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqfthP~ rqFigThiRejoin
END

IF ~~ THEN BEGIN MercenaryFMCRejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqfmcP~ rqFigMagCleRejoin
END

IF ~~ THEN BEGIN MercenaryFMNRejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqfmnP~ rqFigMageNecrRejoin
END

IF ~~ THEN BEGIN MercenaryCMIRejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqcmiP~ rqCleMageIlluRejoin
END

IF ~~ THEN BEGIN MercenarySRCRejoin
    SAY @38
        IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN ~rqsrcP~ rqSorcererRejoin
END

IF ~~ THEN BEGIN MercenaryArrivesFBE
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqfbe",MoveToPoint([540.673]))
        ActionOverride("rqfbe",StartDialogNoSet(Player1))~
    EXIT
END

IF ~~ THEN BEGIN MercenaryArrivesFBET
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqfbet",MoveToPoint([540.673]))
        ActionOverride("rqfbet",StartDialogNoSet(Player1))~
    EXIT
END

IF ~~ THEN BEGIN MercenaryArrivesFTH
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqfth",MoveToPoint([540.673]))
        ActionOverride("rqfth",StartDialogNoSet(Player1))~
    EXIT
END

IF ~~ THEN BEGIN MercenaryArrivesFMC
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqfmc",MoveToPoint([540.673]))
        ActionOverride("rqfmc",StartDialogNoSet(Player1))~
    EXIT
END

IF ~~ THEN BEGIN MercenaryArrivesFMN
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqfmn",MoveToPoint([540.673]))
        ActionOverride("rqfmn",StartDialogNoSet(Player1))~
    EXIT
END

IF ~~ THEN BEGIN MercenaryArrivesCMI
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqcmi",MoveToPoint([540.673]))
        ActionOverride("rqcmi",StartDialogNoSet(Player1))~
    EXIT
END

IF ~~ THEN BEGIN MercenaryArrivesSRC
    SAY @39
    IF ~~ THEN DO
        ~Wait(1)
        ActionOverride("rqsrc",MoveToPoint([540.673]))
        ActionOverride("rqsrc",StartDialogNoSet(Player1))~
    EXIT
END

/*----------------------------------------------------------------rqfbe---------------------------------------------------------------*/
BEGIN rqfbe // Jorgur

IF ~True()~ THEN BEGIN rqfbeJoining
    SAY @40
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfbe","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([540.673])~
        EXIT
END

BEGIN rqfbeP
// Battlerager dismissal
IF ~Global("rqmerc_rqfbe","LOCALS",1)~ THEN BEGIN rqfbeRemoval
    SAY @43
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~
        EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfbe","LOCALS",0)
            MoveToPoint([540.673])
            ~
        EXIT
    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfbe","LOCALS",0)
            EscapeAreaMove("AR0704",540,673,5)~
        EXIT
END
// Battlerager rejoin
IF ~~ THEN BEGIN rqFigBersRejoin
    SAY @46
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfbe","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([540.673])~
        EXIT
END

/*----------------------------------------------------------------rqfbet---------------------------------------------------------------*/

BEGIN rqfbet // Breneke

IF ~True()~ THEN BEGIN rqfbeJoining
    SAY @47
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfbet","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([540.673])~
        EXIT
END

BEGIN rqfbetP
// Battlerager dismissal
IF ~Global("rqmerc_rqfbet","LOCALS",1)~ THEN BEGIN rqfbeTRemoval
    SAY @48
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~
        EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfbet","LOCALS",0)
            MoveToPoint([540.673])
            ~
        EXIT
    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfbet","LOCALS",0)
            EscapeAreaMove("AR0704",540,673,5)~
        EXIT
END
// Battlerager rejoin
IF ~~ THEN BEGIN rqFigBersTRejoin
    SAY @49
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfbet","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([540.673])~
        EXIT
END
/*---------------------------------------------------------------rqfth----------------------------------------------------------------*/
BEGIN rqfth

IF ~True()~ THEN BEGIN rqfthJoining
    SAY @50
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfth","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([715.542])~
        EXIT
END

BEGIN rqfthP
// Fighter/Thief dismissal
IF ~Global("rqmerc_rqfth","LOCALS",1)~ THEN BEGIN rqfthRemoval
    SAY @51
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~
        EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfth","LOCALS",0)
            MoveToPoint([715.542])~
        EXIT
    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfth","LOCALS",0)
            EscapeAreaMove("AR0704",715,542,5)~
        EXIT
END
// Fighter/Thief rejoin
IF ~~ THEN BEGIN rqFigThiRejoin
    SAY @52
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfth","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([715.542])~
        EXIT
END
/*---------------------------------------------------------------rqfmc-----------------------------------------------------------------*/
BEGIN rqfmc

IF ~True()~ THEN BEGIN rqfmcJoining
    SAY @53
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfmc","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([588.592])~
        EXIT
END

BEGIN rqfmcP
// Fighter/Mage/Cleric dismissal
IF ~Global("rqmerc_rqfmc","LOCALS",1)~ THEN BEGIN rqfmcRemoval
    SAY @54
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~
        EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfmc","LOCALS",0)
            MoveToPoint([588.592])~
        EXIT
    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfmc","LOCALS",0)
            EscapeAreaMove("AR0704",588,592,5)~
        EXIT
END
// Fighter Fighter/Mage/Cleric Rejoin
IF ~~ THEN BEGIN rqFigMagCleRejoin
    SAY @52
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfmc","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([588.592])~
        EXIT
END

/*-------------------------------------------------------------rqfmn------------------------------------------------------------------*/
BEGIN rqfmn

IF ~True()~ THEN BEGIN rqfmnJoining
    SAY @55
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfmn","LOCALS",1) JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([680.615])~
        EXIT
END

BEGIN rqfmnP
// Fighter *Necromancer* dismissal
IF ~Global("rqmerc_rqfmn","LOCALS",1)~ THEN BEGIN rqfmnRemoval
    SAY @56
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~
        EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfmn","LOCALS",0)
            MoveToPoint([680.615])~
        EXIT
    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqfmn","LOCALS",0)
            EscapeAreaMove("AR0704",680,615,5)~
        EXIT
END
// Fighter *Necromancer* Rejoin
IF ~~ THEN BEGIN rqFigMageNecrRejoin
    SAY @52
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqfmn","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([680.615])~
        EXIT
END

/*------------------------------------------------------------rqcmi-------------------------------------------------------------------*/
BEGIN rqcmi

IF ~True()~ THEN BEGIN rqcmiJoining
    SAY @57
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqcmi","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([744.668])~
        EXIT
END

BEGIN rqcmiP
// Gnome Cleric/Mage Dismissal
IF ~Global("rqmerc_rqcmi","LOCALS",1)~ THEN BEGIN rqcmiRemoval
    SAY @58
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~
        EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqcmi","LOCALS",0)
            MoveToPoint([744.668])~
        EXIT

    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqcmi","LOCALS",0)
            EscapeAreaMove("AR0704",744,668,5)~
        EXIT
END
// Gnome Cleric/Mag Rejoin
IF ~~ THEN BEGIN rqCleMageIlluRejoin
    SAY @52
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqcmi","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([744.668])~
        EXIT
END

/*------------------------------------------------------------rqsrc-------------------------------------------------------------------*/
BEGIN ~rqsrc~
// Intro
IF ~Global("rqmerc_rqsrc","LOCALS",0)~ THEN BEGIN rqsrcJoining
    SAY @59
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqsrc","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([719.667])~
        EXIT
END

BEGIN ~rqsrcP~
// Sorcerer Dismissal
IF ~Global("rqmerc_rqsrc","LOCALS",1)~ THEN BEGIN rqsrcRemoval
    SAY @60
    IF ~~ THEN REPLY @44
        DO ~JoinParty()~ EXIT
    IF ~AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqsrc","LOCALS",0)
            MoveToPoint([719.667])~
        EXIT
    IF ~!AreaCheck("AR0704")~ THEN REPLY @45
        DO
            ~SetGlobal("rqmerc_rqsrc","LOCALS",0)
            EscapeAreaMove("AR0704",719,667,5)~
        EXIT
END
// Sorcerer Rejoin
IF ~~ THEN BEGIN rqSorcererRejoin
    SAY @52
    IF ~~ THEN REPLY @41
        DO
            ~SetGlobal("rqmerc_rqsrc","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY @42
        DO
            ~MoveToPoint([719.667])~
        EXIT
END

// Global("rqZZmercSRCSpawned","GLOBAL",1) Global("rqmerc_rqsrc","LOCALS",0)
//ActionOverride("rqsrc",MakeGlobal())
