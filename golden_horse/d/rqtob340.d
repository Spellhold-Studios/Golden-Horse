BEGIN ~rqjtob3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN rqjtob3Intro
    SAY @0
    IF ~~ THEN REPLY @1 GOTO JaheiraItsOverForMe
    IF ~~ THEN REPLY @2 GOTO JaheiraProvoked
    IF ~~ THEN REPLY @3 GOTO JaheiraProvoked
    IF ~~ THEN REPLY @4 GOTO JaheiraItsOverForMe
    IF ~~ THEN REPLY @5 GOTO JaheiraProvoked
    IF ~~ THEN REPLY @6 GOTO HarperMurderer
END

IF ~~ THEN BEGIN JaheiraItsOverForMe
    SAY @7
    IF ~~ THEN REPLY @8 GOTO JaheiraProvoked
    IF ~~ THEN REPLY @9 GOTO JaheiraWhoIsAgainstMe
END

IF ~~ THEN BEGIN JaheiraProvoked
    SAY @10
    IF ~~ THEN REPLY @11 GOTO JaheiraWhoIsAgainstMe
    IF ~~ THEN REPLY @12 GOTO JaheiraWhoIsAgainstMe
END

IF ~~ THEN BEGIN HarperMurderer
    SAY @13
    IF ~~ THEN REPLY @14 GOTO JaheiraWhoIsAgainstMe
    IF ~~ THEN REPLY @15 GOTO JaheiraWhoIsAgainstMe
    IF ~~ THEN REPLY @16 GOTO JaheiraWhoIsAgainstMe
END

IF ~~ THEN BEGIN JaheiraWhoIsAgainstMe
    SAY @17
    IF ~~ THEN REPLY @18 GOTO JaheiraTryToDoOneLastThing
    IF ~~ THEN REPLY @19 GOTO JaheiraTryToDoOneLastThing
END

IF ~~ THEN BEGIN JaheiraTryToDoOneLastThing
    SAY @20
    =
    @21
    IF ~~ THEN REPLY @22 GOTO JaheiraFinalAttack
    IF ~~ THEN REPLY @23 GOTO JaheiraFinalAttack
    IF ~~ THEN REPLY @24 GOTO JaheiraFinalAttack
    IF ~~ THEN REPLY @25 GOTO JaheiraFinalAttack
END

IF ~~ THEN BEGIN JaheiraFinalAttack
    SAY @26
    IF ~~ THEN DO
        ~CreateCreatureDoor("rqbeart3",[3686.789],11) // Bear
        CreateCreatureDoor("rqbeart3",[3535.662],11) // Bear
        CreateCreatureDoor("rqbeart3",[3447.649],11) // Bear
        CreateCreatureDoor("rqbeart3",[3350.661],11) // Bear
        CreateCreatureDoor("rqbeart3",[3290.694],11) // Bear
        CreateCreatureDoor("rqwolft3",[3421.920],11) // Wolf
        CreateCreatureDoor("rqwolft3",[3524.608],11) // Wolf
        CreateCreatureDoor("rqwolft3",[3614.1009],11) // Wolf
        CreateCreatureDoor("rqinset3",[3336.575],11) // Creeping Doom
        CreateCreatureDoor("rqnaelt3",[3210.666],11) // Corrupted Nature Elemental
        CreateCreatureDoor("rqshamt3",[3339.717],11) // Mound
        CreateCreatureDoor("rqshamt3",[3507.890],11) // Mound
        Enemy()~
    EXIT
END

BEGIN ~rqt1oasi~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1IllasersTrap
    SAY @27
    IF ~~ THEN REPLY @28 GOTO 1Illa1CourierJob
    IF ~~ THEN REPLY @29
        EXIT
END

IF ~!Dead("rq1illa") Global("rq1IllaserraAmbush1","GLOBAL",1)~ THEN BEGIN 1Illa1MerchantRejected
    SAY @30
    IF ~~ THEN REPLY @31 GOTO 1Illa1CourierJob
    IF ~~ THEN REPLY @32 GOTO 1Illa1MerchantExplains
    IF ~~ THEN REPLY @33
        EXIT
END

IF ~~ THEN BEGIN 1Illa1CourierJob
    SAY @34
    =
    @35
    IF ~~ THEN REPLY @36 GOTO 1IllaThreats
    IF ~~ THEN REPLY @37 GOTO 1Illa1MerchantExplains
    IF ~~ THEN REPLY @38 GOTO 1Illa1MerchantExplains
    IF ~~ THEN REPLY @39
        EXIT
END

IF ~~ THEN BEGIN 1IllaThreats
    SAY @40
    IF ~~ THEN REPLY @41 GOTO 1Illa1MerchantAgreeOrNot
    IF ~~ THEN REPLY @42
        EXIT
END

IF ~~ THEN BEGIN 1Illa1MerchantExplains
    SAY @43
    IF ~~ THEN REPLY @44 GOTO 1Illa1MerchantAgreeOrNot
    IF ~~ THEN REPLY @42
        EXIT
END

IF ~~ THEN BEGIN 1Illa1MerchantAgreeOrNot
    SAY @45
        IF ~~ THEN DO
            ~SetGlobal("rq1IllaserraAmbush1","GLOBAL",1)~
            UNSOLVED_JOURNAL @46
        EXIT
END

IF ~Global("rq1IllaserraAmbush1","GLOBAL",2)
    OR (2)
        Dead("rq1illa")
        Dead("rqmahraj")
    ~
    THEN BEGIN 1IllaReturned
    SAY @47
    IF ~~ THEN REPLY @48 GOTO 1IllaInterrogation
END

IF ~~ THEN BEGIN 1IllaInterrogation
    SAY @49
    IF ~~ THEN REPLY @50
        DO  %EraseJournalEntry(@46)
            EscapeArea()%
            SOLVED_JOURNAL @51
        EXIT
    IF ~~ THEN REPLY @52 GOTO IllaseraNobleWaitsLikeIdiot
    IF ~Global("rqTobIllaseraIsRakshasa","GLOBAL",1)~ THEN REPLY @53
        DO  %EraseJournalEntry(@46)
            EscapeArea()%
            SOLVED_JOURNAL @54
        EXIT
    IF ~~ THEN REPLY @55 GOTO IllaseraNobleWaitsLikeIdiot
END

IF ~~ THEN BEGIN IllaseraNobleWaitsLikeIdiot
    SAY @56
        IF ~~ THEN DO
            %EraseJournalEntry(@46)
            GiveItem("rqshld01",LastTalkedToBy) // Shield of Augthor
            EscapeArea()
            %
            SOLVED_JOURNAL @51
        EXIT
END

BEGIN ~rq1illa~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1IllaEcnounter
    SAY @57
    IF ~~ THEN REPLY @58 GOTO 1IllaObservation
    IF ~~ THEN REPLY @59 GOTO 1IllaLearnedAnything
    IF ~~ THEN REPLY @60 GOTO 1IllaSecretsHowIllaseraAlive
END

IF ~~ THEN BEGIN 1IllaObservation
    SAY @61
    IF ~~ THEN REPLY @62 GOTO 1IllaFight1
    IF ~~ THEN REPLY @63 GOTO 1IllaSecretsHowIllaseraAlive
END

IF ~~ THEN BEGIN 1IllaSecretsHowIllaseraAlive
    SAY @64
    IF ~~ THEN REPLY @65 GOTO 1IllaFight1
    IF ~~ THEN REPLY @66 GOTO 1IllaFight1
    IF ~~ THEN REPLY @67 GOTO 1IllaFight1
END

IF ~~ THEN BEGIN 1IllaLearnedAnything
    SAY @68
    IF ~~ THEN REPLY @69 GOTO 1IllaFight1
END

IF ~~ THEN BEGIN 1IllaFight1
    SAY @70
        IF ~~ THEN
        DO ~SetGlobal("rq1IllaserraAmbush1","GLOBAL",2)
            Enemy()
            ActionOverride("rq1f18",Enemy())
            ActionOverride("rq1fb19",Enemy())
            ActionOverride("rq1kamra",Enemy())
            ActionOverride("rq1mage",Enemy())
            ActionOverride("rq1t12f1",Enemy())
            ActionOverride("rqt1merc",Enemy())~
        EXIT
END

BEGIN ~rq2illa~

IF ~~ THEN BEGIN IllaseraInaneBragging
    SAY @71
    IF ~~ THEN EXTERN ~rqt5dea1~ DeathstalkerGroundsIllasera
END

// Irgulis
BEGIN ~rqt5dea1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN rqdeathstalker1
    SAY @72
    IF ~~ THEN EXTERN ~rq2illa~ IllaseraInaneBragging
END

IF ~~ THEN BEGIN DeathstalkerGroundsIllasera
    SAY @73
    =
    @74
    IF ~~ THEN REPLY @75 GOTO DeathstalkerResult
    IF ~~ THEN REPLY @76 GOTO ElwychThreat
    IF ~~ THEN REPLY @77 GOTO ElwychThreat
END

IF ~~ THEN BEGIN ElwychThreat
    SAY @78
    IF ~~ THEN EXTERN ~rqt5elvy~ ElvychThread
END

IF ~~ THEN BEGIN DeathstalkerResult
    SAY @79
    =
    @80
    IF ~~ THEN DO
        ~SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",2)
        CreateCreatureDoor("rqt5bga1",[82.1167],0) // Bone Golem
        CreateCreatureDoor("rqt5bga1",[144.1183],0) // Bone Golem
        CreateCreatureDoor("rqt5bga1",[104.1189],0) // Bone Golem
        CreateCreatureDoor("rqt5bga1",[216.1174],0) // Bone Golem
        CreateCreatureDoor("rqt5bga1",[289.1165],0) // Bone Golem
        CreateCreatureDoor("rqt5bga1",[405.1100],0) // Bone Golem
        CreateCreatureDoor("rqt5pba1",[314.1010],0) // Putrid Bear
        CreateCreatureDoor("rqt5pba1",[445.1104],0) // Putrid Bear
        CreateCreatureDoor("rqt5pba1",[126.963],0) // Putrid Bear
        CreateCreatureDoor("rqt5pba1",[265.1123],0) // Putrid Bear
        CreateCreatureDoor("rqt5pba1",[413.1010],0) // Putrid Bear
        CreateCreatureDoor("rqt5pba1",[154.970],0) // Putrid Bear
        CreateCreatureDoor("rqt5fw01",[548.1304],0) // Fetid Wolf
        CreateCreatureDoor("rqt5fw01",[410.1381],0) // Fetid Wolf
        CreateCreatureDoor("rqt5fw01",[291.1325],0) // Fetid Wolf
        CreateCreatureDoor("rqt5fw01",[364.1380],0) // Fetid Wolf
        CreateCreatureDoor("rqt5fw01",[477.1390],0) // Fetid Wolf
        CreateCreatureDoor("rqt5fw01",[336.1181],0) // Fetid Wolf
        Enemy()
        ActionOverride("rqt5tf1",Enemy()) // Elvych Firetouched
        ActionOverride("rq2illa",Enemy()) // Illasera
        ActionOverride("rqt5clt1",Enemy()) // Deathstalker Ammar
        ActionOverride("rqt5clt2",Enemy())~ // Deathstalker Tylgarth
    EXIT
END

IF ~~ THEN BEGIN IrgulisAbazigalReaction
    SAY @81
    IF ~~ THEN EXTERN ~rqt7dea2~ SixtarchIntro
END

IF ~~ THEN BEGIN SendaiReaction
    SAY @82
    IF ~~ THEN EXTERN ~rqt6dea2~ SecondEncounter
END

IF ~~ THEN BEGIN BetrayalItwantos
    SAY @83
    IF ~~ THEN EXTERN ~rqt7dea2~ ReactionToItwantos
END

IF ~~ THEN BEGIN BetrayalIrgulisReaction
    SAY @84
    IF ~~ THEN EXTERN ~rqt7dea2~ ReactionToItwantos
END

IF ~~ THEN BEGIN YouTooItwantos
    SAY @85
    IF ~~ THEN EXTERN ~rqt7dea2~ ReactionToItwantos
END

IF ~~ THEN BEGIN ItwantosTreasonReac2
    SAY @86
    IF ~~ THEN EXTERN ~rqt6dea2~ ItwantoReactsToIrgulis
END
// Elvych Firetouched
BEGIN ~rqt5elvy~

IF ~~ THEN BEGIN ElvychThread
    SAY @87
    IF ~~ THEN EXTERN ~rqt5dea1~ DeathstalkerResult
END

/* -------------------------------------------- Itwantos Group -------------------------------------------------- */
BEGIN ~rqt6ded1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN DeathStalker01
    SAY @88
    IF ~!Dead("rqt5clf1")~ THEN EXTERN ~rqt5dea1~ SendaiReaction
    IF ~Dead("rqt5clf1")~ THEN EXTERN ~rqt6dea2~ SecondEncounter
END
/* ------------------------------------------------------------ Deathstalker Itwantos ----- ------ -------------------------------------------------- */
BEGIN ~rqt6dea2~ //Itwantos

IF ~~ THEN BEGIN SecondEncounter
    SAY @89
    IF ~Alignment(Player1,MASK_EVIL)~ THEN GOTO ReplyToEvilBhaalspawn
    IF ~Alignment(Player1,MASK_GOOD)~ THEN GOTO ReplyToGoodBhaalspawn
    IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN GOTO ReplyToGoodBhaalspawn
END

IF ~~ THEN BEGIN ReplyToEvilBhaalspawn
    SAY @90
    IF ~~ THEN REPLY @91 GOTO ExplainToCHARNAME
    IF ~~ THEN REPLY @92 GOTO SpawnEnemies
END

IF ~~ BEGIN ExplainToCHARNAME
    SAY @93
    IF ~~ THEN GOTO SpawnEnemies
END

IF ~~ THEN BEGIN ReplyToGoodBhaalspawn
    SAY @94
    IF ~~ THEN REPLY @95 GOTO CHARNAMEisFool
    IF ~~ THEN REPLY @96 GOTO SpawnEnemies
    IF ~~ THEN REPLY @97 GOTO SpawnEnemies
    IF ~~ THEN REPLY @98 GOTO SpawnEnemies
END

IF ~~ THEN BEGIN SpawnEnemies
    SAY @99
        IF ~~ THEN DO
             //Enemy()~
            ~CreateCreatureDoor("rqt5bga1",[1453.1131],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1462.1084],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1521.1169],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1830.1174],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1819.1103],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1671.1305],0) // Bone Golem
            CreateCreatureDoor("rqt5pba1",[1816.991],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1558.1204],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1486.1257],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1633.958],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1732.1000],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1830.957],0) // Putrid Bear
            CreateCreatureDoor("rqt5fw01",[1519.873],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1716.906],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1532.964],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1437.1228],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1717.970],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1447.925],0) // Fetid Wolf
            Enemy()~
        EXIT
END

IF ~~ THEN BEGIN CHARNAMEisFool
    SAY @100
    IF ~CheckStatLT(Player1,6,INT)~ THEN REPLY @101
            DO ~ReallyForceSpell(Player1,FIFTY_PERCENT_DAMAGE_ARROW)~ GOTO SpawnEnemies
    IF ~CheckStatGT(Player1,7,WIS)~ THEN REPLY @102 GOTO SpawnEnemies
END
// Last encounter negotiation Itwantos
IF ~Global("rqTobRetreatImpossible","Global",3)~ THEN BEGIN NegotationsDeathsHatred
    SAY @103
    IF ~~ THEN REPLY @104 GOTO EnemiesOnOurs
    IF ~~ THEN REPLY @105 GOTO EnemiesOnOurs
END

IF ~~ THEN BEGIN EnemiesOnOurs
    SAY @106
    IF ~~ THEN REPLY @107 GOTO IdoNotKnowWhoisEnemy
END

IF ~~ THEN BEGIN IdoNotKnowWhoisEnemy
    SAY @108
    IF ~~ THEN REPLY @109 GOTO EscapeAndGiveInventory
    IF ~!Dead("rqt5clf1")
        !StateCheck("rqt5clf1",STATE_HELPLESS)
        !StateCheck("rqt5clf1",STATE_STUNNED)
        !StateCheck("rqt5clf1",STATE_PANIC)
        !StateCheck("rqt5clf1",STATE_BERSERK)
        !StateCheck("rqt5clf1",STATE_SLEEPING)
        !StateCheck("rqt5clf1",STATE_SILENCED)
        !StateCheck("rqt5clf1",STATE_CHARMED)
        !StateCheck("rqt5clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt5clf1",STATE_CONFUSED)~ THEN REPLY @110 EXTERN ~rqt5dea1~ ItwantosTreasonReac2
END

IF ~~ THEN BEGIN ItwantoReactsToIrgulis
    SAY @111
    IF ~~ THEN EXTERN ~rqt6dea2~ EscapeAndGiveInventory
END

IF ~~ THEN EscapeAndGiveInventory
    SAY @112
    IF ~~ THEN REPLY @113 GOTO LeaveForVengeanceRestFirst
    IF ~~ THEN REPLY @114 GOTO TempleLocation
    IF ~~ THEN REPLY @115 GOTO ValuableGiveCharname
    IF ~~ THEN REPLY @116 GOTO GiveHolySymbols
    IF ~~ THEN REPLY @117 EXIT
END

IF ~~ THEN TempleLocation
    SAY @118
    IF ~~ THEN REPLY @119 GOTO GiveHolySymbols
    IF ~~ THEN REPLY @120 EXIT
END

IF ~~ THEN BEGIN GiveHolySymbols
    SAY @121
    IF ~~ THEN
        DO
            ~GiveItem("rqhosy1",Player1)
            ActionOverride("rqt6clt1",GiveItem("rqhosy1",Player1)
            ActionOverride("rqt6clt2",GiveItem("rqhosy1",Player1)
            ActionOverride("rqt7clf1",GiveItem("rqhosy1",Player1)
            ActionOverride("rqt7clt1",GiveItem("rqhosy1",Player1)
            ActionOverride("rqt7clt2",GiveItem("rqhosy1",Player1)~ GOTO LeaveForVengeanceRestFirst
END

IF ~~ THEN LeaveForVengeanceRestFirst
    SAY @122
    IF ~~ THEN
        DO
            ~SetGlobal("rqTobItwantosPrimaryAlly","GLOBAL",1)
            SetGlobal("rqTobChangeToAlly","GLOBAL",1)~
        EXIT
END

IF ~~ THEN BEGIN ValuableGiveCharname
    SAY @123
    IF ~~ THEN REPLY @124
        DO
            ~SetGlobal("rqTobItwantosPrimaryAlly","GLOBAL",1)
            SetGlobal("rqTobChangeToAlly","GLOBAL",1)~
        EXIT
    IF ~~ THEN REPLY @125 EXIT
END
// Ceremony with Sixtarch
IF ~~ THEN BEGIN JoinSixtarchInBetrayal
    SAY @126
    IF ~~ THEN EXTERN ~rqt7dea2~ JoinUpThenSixtarchSays
    IF ~!Dead("rqt5clf1")
        !StateCheck("rqt5clf1",STATE_HELPLESS)
        !StateCheck("rqt5clf1",STATE_STUNNED)
        !StateCheck("rqt5clf1",STATE_PANIC)
        !StateCheck("rqt5clf1",STATE_BERSERK)
        !StateCheck("rqt5clf1",STATE_SLEEPING)
        !StateCheck("rqt5clf1",STATE_SILENCED)
        !StateCheck("rqt5clf1",STATE_CHARMED)
        !StateCheck("rqt5clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt5clf1",STATE_CONFUSED)~ THEN EXTERN ~rqt5dea1~ YouTooItwantos
END

IF ~~ THEN BEGIN LoyaltyToCharnameItwantos
    SAY @127
    IF ~~ THEN EXTERN ~rqt7dea2~ LoyaltyToCharname
END

BEGIN ~rqt7ded1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN ScoutWarningSixtarch
    SAY @128
    IF ~!Dead("rqt5clf1")~ THEN EXTERN ~rqt5dea1~ IrgulisAbazigalReaction
    IF ~Dead("rqt5clf1")~ THEN EXTERN ~rqt7dea2~ SixtarchIntro
END

// Deathstalker Sixtarch
BEGIN ~rqt7dea2~

IF ~~ THEN BEGIN SixtarchIntro
    SAY @129
    IF ~~ THEN REPLY @130 GOTO BetrayalWhoDidthat
    IF ~~ THEN REPLY @131 GOTO SixtarchBattlecry
    IF ~Dead("rqjah136")~ THEN REPLY @132 GOTO CorruptedCreatures
END

IF ~Dead("rqt5clf1") Dead("rqt5clt1") Dead("rqt5clt2") Global("rqTobRetreatImpossible","GLOBAL",0)~ THEN BEGIN SixtarchIntroDeadFireGiantTemple
    SAY @133
    IF ~~ THEN REPLY @130 GOTO BetrayalWhoDidthat
    IF ~~ THEN REPLY @134 GOTO SixtarchBattlecry
    IF ~Dead("rqjah136")~ THEN REPLY @135 GOTO CorruptedCreatures
END

IF ~~ THEN BEGIN BetrayalWhoDidthat
    SAY @136
    IF ~~ THEN GOTO SixtarchBattlecry
END

IF ~~ THEN BEGIN CorruptedCreatures
    SAY @137
    IF ~~ THEN REPLY @138 GOTO SixtarchTiredofThis
    IF ~~ THEN REPLY @139 GOTO SixtarchIdoNotKnow
    IF ~~ THEN REPLY @140 GOTO SixtarchPissed
    IF ~~ THEN REPLY @141 GOTO SixtarchNonsense
END

IF ~~ THEN BEGIN SixtarchNonsense
    SAY @142
    IF ~~ THEN GOTO SixtarchBattlecry
END

IF ~~ THEN BEGIN SixtarchPissed
    SAY @143
    IF ~~ THEN GOTO SixtarchBattlecry
END

IF ~~ THEN BEGIN SixtarchIdoNotKnow
    SAY @144
    IF ~~ THEN GOTO SixtarchBattlecry
END

IF ~~ THEN BEGIN SixtarchTiredofThis
    SAY @145
    IF ~~ THEN REPLY @146 GOTO SixtarchImbelicQuestion
END

IF ~~ THEN BEGIN SixtarchImbelicQuestion
    SAY @147
    IF ~~ THEN GOTO SixtarchBattlecry
END

IF ~~ THEN BEGIN SixtarchBattlecry
    SAY @148
    IF ~~ THEN DO
            ~CreateCreatureDoor("rqt5bga1",[1574.1461],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1664.1413],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1701.1412],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1738.1384],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1714.1276],0) // Bone Golem
            CreateCreatureDoor("rqt5bga1",[1833.1332],0) // Bone Golem
            CreateCreatureDoor("rqt5fw01",[1763.1203],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1495.1367],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1568.1334],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1577.1269],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1525.1360],0) // Fetid Wolf
            CreateCreatureDoor("rqt5fw01",[1611.1304],0) // Fetid Wolf
            CreateCreatureDoor("rqt5pba1",[1699.1317],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1991.1304],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1593.1503],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1710.1454],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1478.1478],0) // Putrid Bear
            CreateCreatureDoor("rqt5pba1",[1489.1402],0) // Putrid Bear
            Enemy()~
            //ActionOverride("rqt7clt1",Enemy()) // Deathstalker Llergwyn
            //ActionOverride("rqt7clt2",Enemy()) // Deathstalker Nalgarath
    EXIT
END

// Sixtarch Surrender
IF ~Global("rqTobRetreatImpossible","Global",3)
    !Global("rqTobItwantosPrimaryAlly","GLOBAL",1)~ THEN BEGIN NegotationsDeathsAlly
    SAY @149
    IF ~~ THEN REPLY @150 GOTO ThreatToDS
    IF ~~ THEN REPLY @151 GOTO ThreatToDS
END

IF ~~ THEN BEGIN ThreatToDS
    SAY @152
    IF ~~ THEN REPLY @153 GOTO BatlthazarIsHeNot
    IF ~~ THEN REPLY @154 GOTO DSKnowledge
END

IF ~~ THEN BEGIN BatlthazarIsHeNot
    SAY @155
    IF ~~ THEN GOTO DSKnowledge
END

// Irgulis Betrayal reaction & Joining of Sixtarch
IF ~~ THEN BEGIN DSKnowledge
    SAY @156
    IF ~~ THEN GOTO EyesandEars
    IF ~!Dead("rqt5clf1")
        !StateCheck("rqt5clf1",STATE_HELPLESS)
        !StateCheck("rqt5clf1",STATE_STUNNED)
        !StateCheck("rqt5clf1",STATE_PANIC)
        !StateCheck("rqt5clf1",STATE_BERSERK)
        !StateCheck("rqt5clf1",STATE_SLEEPING)
        !StateCheck("rqt5clf1",STATE_SILENCED)
        !StateCheck("rqt5clf1",STATE_CHARMED)
        !StateCheck("rqt5clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt5clf1",STATE_CONFUSED)~ THEN EXTERN ~rqt5dea1~ BetrayalIrgulisReaction
    IF ~!Dead("rqt6clf1")
        !StateCheck("rqt6clf1",STATE_HELPLESS)
        !StateCheck("rqt6clf1",STATE_STUNNED)
        !StateCheck("rqt6clf1",STATE_PANIC)
        !StateCheck("rqt6clf1",STATE_BERSERK)
        !StateCheck("rqt6clf1",STATE_SLEEPING)
        !StateCheck("rqt6clf1",STATE_SILENCED)
        !StateCheck("rqt6clf1",STATE_CHARMED)
        !StateCheck("rqt6clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt6clf1",STATE_CONFUSED)~ THEN EXTERN ~rqt6dea2~ JoinSixtarchInBetrayal
END

// Reaction to Irgulis
IF ~~ THEN BEGIN ReactionToItwantos
    SAY @157
    IF ~~ THEN GOTO EyesandEars
END

IF ~~ THEN BEGIN EyesandEars
    SAY @158
    IF ~~ THEN REPLY @159
            DO
                ~SetGlobal("rqTobSixtarchIsPrimaryAlly","GLOBAL",1)
                SetGlobal("rqTobRetreatImpossible","Global",4)
                SetGlobal("rqTobChangeToAlly","GLOBAL",1)~
            EXIT
    IF ~~ THEN REPLY @160 EXIT
END

IF ~~ THEN BEGIN JoinUpThenSixtarchSays
    SAY @161
    IF ~~ THEN GOTO EyesandEars
END

// Swearing in
IF ~Global("rqTobSixtarchIsPrimaryAlly","GLOBAL",2)~ THEN BEGIN YourOwnCult
    SAY @162
    IF ~~ THEN GOTO LoyaltyToCharname
    IF ~!Dead("rqt6clf1")
        !StateCheck("rqt6clf1",STATE_HELPLESS)
        !StateCheck("rqt6clf1",STATE_STUNNED)
        !StateCheck("rqt6clf1",STATE_PANIC)
        !StateCheck("rqt6clf1",STATE_BERSERK)
        !StateCheck("rqt6clf1",STATE_SLEEPING)
        !StateCheck("rqt6clf1",STATE_SILENCED)
        !StateCheck("rqt6clf1",STATE_CHARMED)
        !StateCheck("rqt6clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt6clf1",STATE_CONFUSED)~ THEN EXTERN ~rqt6dea2~ LoyaltyToCharnameItwantos
END

IF ~~ THEN BEGIN LoyaltyToCharname
    SAY @163
    IF ~~ THEN REPLY @164 GOTO GiveHolySymbols2
    IF ~~ THEN REPLY @165 GOTO AttackTemple1
    IF ~~ THEN REPLY @166 GOTO AssaultOnBaltazar
    IF ~~ THEN REPLY @167 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN LoyaltyToCharname2
    SAY @163
    IF ~~ THEN REPLY @165 GOTO AttackTemple1
    IF ~~ THEN REPLY @166 GOTO AssaultOnBaltazar
    IF ~~ THEN REPLY @167 GOTO InformationAboutDScult
END

// Holy symbols
IF ~~ THEN BEGIN GiveHolySymbols2
    SAY @168
    IF ~~ THEN
        DO
            ~GiveItem("rqhosy1",Player1)
            ActionOverride("rqmalch",StartDialogNoSet(Player1))
            ActionOverride("rqt6clf1",GiveItem("rqhosy1",Player1))
            ActionOverride("rqt6clt1",GiveItem("rqhosy1",Player1))
            ActionOverride("rqt6clt2",GiveItem("rqhosy1",Player1))
            ActionOverride("rqt7clt1",GiveItem("rqhosy1",Player1))
            ActionOverride("rqt7clt2",GiveItem("rqhosy1",Player1))~ GOTO LoyaltyToCharname2
END

IF ~~ THEN BEGIN AttackTemple1
    SAY @169
    IF ~~ THEN REPLY @170 GOTO GainFromAssaultOnTemple
    IF ~~ THEN REPLY @171 GOTO AssaultOnBaltazar
    IF ~~ THEN REPLY @172 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN AssaultOnBaltazar
    SAY @173
    IF ~~ THEN REPLY @174 GOTO TempleWhyStormWillFail
    IF ~~ THEN REPLY @175 GOTO AssaultBalthazar
    IF ~~ THEN REPLY @176 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN TempleWhyStormWillFail
    SAY @177
    IF ~~ THEN REPLY @178 GOTO AssaultTemple
    IF ~~ THEN REPLY @179 GOTO AssaultBalthazar
    IF ~~ THEN REPLY @180 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN AssaultTemple
    SAY @181
    IF ~~ THEN
        DO ~SetGlobal("rqTobAssaultTemple","GLOBAL",1)
        SetGlobal("rqTobSixtarchIsPrimaryAlly","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN AssaultBalthazar
    SAY @181
    IF ~~ THEN
        DO ~SetGlobal("rqTobAssaultBalthazar","GLOBAL",1)
        SetGlobal("rqTobSixtarchIsPrimaryAlly","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN GainFromAssaultOnTemple
    SAY @182
    IF ~~ THEN REPLY @183 GOTO AssaultTemple
    IF ~~ THEN REPLY @184 GOTO AssaultBalthazar
    IF ~~ THEN REPLY @185 GOTO InformationAboutDScult
END
// Balthering about plot
IF ~~ THEN BEGIN InformationAboutDScult
    SAY @186
    IF ~~ THEN REPLY @187 GOTO WhoAreYouLeaderSetherus
    IF ~~ THEN REPLY @188 GOTO HarperRole
    IF ~~ THEN REPLY @189 GOTO AssignmentAboutCHARNAME
    IF ~~ THEN REPLY @190 GOTO JaheiraInvolvement
    IF ~~ THEN REPLY @191 GOTO SetherusJaheiraRevival
    IF ~~ THEN REPLY @192 GOTO HolySymbols1
    IF ~~ THEN REPLY @193 GOTO SetherusWhoIsHe
    IF ~~ THEN REPLY @194 GOTO LoyaltyToCharname
END

IF ~~ THEN BEGIN SetherusWhoIsHe
    SAY @195
    IF ~~ THEN REPLY @196 GOTO SetherusLoyalty
END

IF ~~ THEN BEGIN SetherusLoyalty
    SAY @197
    IF ~~ THEN REPLY @198 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN WhoAreYouLeaderSetherus
    SAY @199
    IF ~~ THEN REPLY @198 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN HolySymbols1
    SAY @200
    IF ~~ THEN REPLY @198 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN AssignmentAboutCHARNAME
    SAY @201
    IF ~~ THEN REPLY @202 GOTO OtherThanRevival
    IF ~~ THEN REPLY @203 GOTO OtherThanRevival
END

IF ~~ THEN BEGIN OtherThanRevival
    SAY @204
    IF ~~ THEN REPLY @205 GOTO FullHistory
    IF ~~ THEN REPLY @206 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN FullHistory
    SAY @207
    IF ~Dead("rqbar30a")~ THEN REPLY @208 GOTO NoAnswersFromSixtarch
    IF ~~ THEN REPLY @209 GOTO NoAnswersFromSixtarch
END

IF ~~ THEN BEGIN NoAnswersFromSixtarch
    SAY @210
    IF ~~ THEN REPLY @211 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN SetherusJaheiraRevival
    SAY @212
    IF ~~ THEN REPLY @213 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN JaheiraInvolvement
    SAY @214
    IF ~~ THEN REPLY @215 GOTO InformationAboutDScult
    IF ~Alignment(Player1,"MASK_GOOD") Alignment(Player1,"MASK_GENEUTRAL")~ THEN REPLY @216 GOTO JaheiraGood
END

IF ~~ THEN BEGIN JaheiraGood
    SAY @217
    IF ~~ THEN REPLY @218 GOTO InformationAboutDScult
END

IF ~~ THEN BEGIN HarperRole
    SAY @219
    IF ~~ THEN REPLY @220 GOTO InformationAboutDScult
END

BEGIN ~rqtrugos~

IF ~InParty("rqrev")
    Global("rqT5DeathStalkerEncounter1","GLOBAL",0)
    ~
    THEN BEGIN RugosT5RevanIntroDialogue
    SAY @221
    IF ~~ THEN EXTERN ~rqrev25J~ RevanT5IntroDeath
END

IF ~~ THEN BEGIN RugosT5CloakedWoman
    SAY @222
    IF ~~ THEN EXTERN ~rqrev25J~ RevanTrapT5
END

IF ~~ THEN BEGIN RugosT5Contract25000G
    SAY @223
    IF ~~ THEN REPLY @224 GOTO RugosT1Accept
    IF ~~ THEN REPLY @225 GOTO RugosT5NoMoreInformationToGive
    IF ~~ THEN REPLY @226 GOTO RugosT1Rejected
END

IF ~~ THEN BEGIN RugosT5NoMoreInformationToGive
    SAY @227
    IF ~~ THEN REPLY @228 GOTO RugosT1Accept
    IF ~~ THEN REPLY @229 GOTO RugosT1Rejected
END

IF ~~ THEN BEGIN RugosT1Rejected
    SAY @230
    IF ~~ THEN DO
        ~SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",3)~ // Rejected
    EXIT
END

IF ~~ THEN BEGIN RugosT1Accept
    SAY @231
    IF ~~ THEN DO
        ~SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",1)~ // Accepted
            UNSOLVED_JOURNAL @232
    EXIT
END
/* --------------------- Deathslatker T5-1 Quest -1- No Revan --------------------- */
// test without revan
IF ~!InParty("rqrev") Global("rqT5DeathStalkerEncounter1","GLOBAL",0) //Dead("rqmararg") Global("rqcontractMarcian","GLOBAL",3)
    ~ THEN BEGIN RugosT5IntroRevanNotInParty
    SAY @233
    IF ~~ THEN REPLY @234 GOTO RugosT5DetailsNoRevan
    IF ~~ THEN REPLY @235 GOTO RugosT5RejectedNoRevan1
END

IF ~~ THEN BEGIN RugosT5DetailsNoRevan
    SAY @236
    IF ~~ THEN REPLY @237 GOTO RugosT5WhoNoRevan
END

IF ~~ THEN BEGIN RugosT5WhoNoRevan
    SAY @238
    IF ~~ THEN REPLY @239 GOTO Rugos5MageWhoHeWas
    IF ~~ THEN REPLY @240 GOTO RugosT5HowKnewHeMage
    IF ~~ THEN REPLY @241 GOTO RugosT5TrapExplain
    IF ~~ THEN REPLY @242 GOTO RugosT5TrapExplain
END

IF ~~ THEN BEGIN Rugos5MageWhoHeWas
    SAY @243
    IF ~~ THEN REPLY @240 GOTO RugosT5HowKnewHeMage
END

IF ~~ THEN BEGIN RugosT5HowKnewHeMage
    SAY @244
    IF ~~ THEN REPLY @245 GOTO RugosT5AcceptNoRevan
    IF ~~ THEN REPLY @246 GOTO RugosT5RejectedNoRevan1
END

IF ~~ THEN BEGIN RugosT5RejectedNoRevan1
    SAY @247
    IF ~~ THEN DO ~SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RugosT5TrapExplain
    SAY @248
    IF ~~ THEN REPLY @249 GOTO RugosT5AcceptNoRevan
    IF ~~ THEN REPLY @250 GOTO RugosT5Details1
    IF ~~ THEN REPLY @251 GOTO RugosT5RejectedNoRevan1
END

IF ~~ THEN BEGIN RugosT5Details1
    SAY @252
    IF ~~ THEN GOTO RugosT5AcceptNoRevan
END

IF ~Global("rqT5DeathStalkerEncounter1","GLOBAL",3)~ THEN BEGIN RugosT5UnchangedQuest
    SAY @253
    IF ~~ THEN REPLY @254 GOTO RugosT5TrapExplain
    IF ~~ THEN REPLY @255 GOTO RugosT5AcceptNoRevan
    IF ~~ THEN REPLY @256 EXIT
END

// accepted
IF ~~ THEN BEGIN RugosT5AcceptNoRevan
    SAY @257
    IF ~~ THEN REPLY @224
        DO
            ~SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",1)~
            UNSOLVED_JOURNAL @232
        EXIT
    IF ~~ THEN REPLY @258
        EXIT
END
// not done yet
IF ~Global("rqT5DeathStalkerEncounter1","GLOBAL",1)~ THEN BEGIN RugosT5UnchangedQuest
    SAY @259
    IF ~~ THEN REPLY @260 EXIT
END

IF ~Global("rqT5DeathStalkerEncounter1","GLOBAL",2)
    Dead("rqt5clf1")
    Dead("rqt5clt1")
    Dead("rqt5clt2")~ THEN BEGIN RugosT5QuestDoneNoRevan
    SAY @261
    IF ~~ THEN REPLY @262 GOTO Rutos5DoneBIGlReward
END

IF ~OR(3)
        !Dead("rqt5clf1")
        !Dead("rqt5clt1")
        !Dead("rqt5clt2")
    Global("rqT5DeathStalkerEncounter1","GLOBAL",2)~ THEN BEGIN RugosT5QuestDone
    SAY @263
    IF ~~ THEN REPLY @264 GOTO Rugos5DoneSmallReward
END

IF ~~ THEN BEGIN Rugos5DoneSmallReward
    SAY @265
    IF ~~ THEN
        DO
            %SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",4)
            GiveGoldForce(2000)
            EraseJournalEntry (@232)
            %
            SOLVED_JOURNAL @266 GOTO RugosAmulets
END

IF ~~ THEN BEGIN Rutos5DoneBIGlReward
    SAY @267
    IF ~~ THEN
        DO
            %SetGlobal("rqT5DeathStalkerEncounter1","GLOBAL",4)
            GiveGoldForce(25000)
            EraseJournalEntry (@232)
            %
            SOLVED_JOURNAL @268 GOTO RugosAmulets
END

IF ~~ THEN BEGIN RugosAmulets
    SAY @269
    IF ~~ THEN REPLY @270 GOTO RugosWhoWantsDeadDS
END

IF ~~ THEN BEGIN RugosWhoWantsDeadDS
    SAY @271
    IF ~~ THEN GOTO RugosNextContract
END

IF ~~ THEN BEGIN RugosNextContract
    SAY @272
    IF ~~ THEN REPLY @273 GOTO RugosHunting
    IF ~~ THEN REPLY @274 GOTO RugosGoesBackToAmnRevanSent
END

IF ~~ THEN BEGIN RugosHunting
    SAY @275
    IF ~~ THEN
            UNSOLVED_JOURNAL @276
        EXIT
END

IF ~PartyHasItem("rqhosy1") !HasItem("rqhosy1",Myself)~ THEN BEGIN RugosHolySymbols
    SAY @277
    IF ~NumItemsParty("rqhosy1",1)~ THEN REPLY @278 GOTO Rugos1HolySymbol
    IF ~NumItemsParty("rqhosy1",2)~ THEN REPLY @279 GOTO Rugos2HolySymbol
    IF ~NumItemsParty("rqhosy1",3)~ THEN REPLY @280 GOTO Rugos3HolySymbol
    IF ~NumItemsParty("rqhosy1",4)~ THEN REPLY @281 GOTO Rugos4HolySymbol
    IF ~NumItemsParty("rqhosy1",5)~ THEN REPLY @282 GOTO Rugos5HolySymbol
    IF ~NumItemsParty("rqhosy1",6) !InParty("rqrev")~ THEN REPLY @283 GOTO Rugos6HolySymbol
    IF ~NumItemsParty("rqhosy1",6) InParty("rqrev")~ THEN REPLY @283 GOTO Rugos6HolySymbolRevanLeadup
END

IF ~~ THEN BEGIN Rugos1HolySymbol
    SAY @284
    IF ~~ THEN DO ~GiveGoldForce(4000) TakePartyItem("rqhosy1")~ EXIT
END

IF ~~ THEN BEGIN Rugos2HolySymbol
    SAY @284
    IF ~~ THEN DO ~GiveGoldForce(8000) TakePartyItemNum("rqhosy1",2)~ EXIT
END

IF ~~ THEN BEGIN Rugos3HolySymbol
    SAY @284
    IF ~~ THEN DO ~GiveGoldForce(12000) TakePartyItemNum("rqhosy1",3)~ EXIT
END

IF ~~ THEN BEGIN Rugos4HolySymbol
    SAY @284
    IF ~~ THEN DO ~GiveGoldForce(16000) TakePartyItemNum("rqhosy1",4)~ EXIT
END

IF ~~ THEN BEGIN Rugos5HolySymbol
    SAY @284
    IF ~~ THEN DO ~GiveGoldForce(20000) TakePartyItemNum("rqhosy1",5)~ EXIT
END

IF ~NumItems("rqhosy1",Myself,6)~ THEN BEGIN Rugos5EnoughSymbols
    SAY @285
    IF ~!InParty("rqrev")~ THEN GOTO RugosGoesBackToAmnRevanSent
    IF ~InParty("rqrev")~ THEN EXTERN ~rqrev25J~ RugosT6GoBackToAmn
END

IF ~HasItem("rqhosy1",Myself) !NumItems("rqhosy1",Myself,6)~ THEN BEGIN RugosSecond
    SAY @286
    IF ~NumItemsParty("rqhosy1",1)~ THEN REPLY @287 GOTO Rugos2ndReaction111
    IF ~NumItemsParty("rqhosy1",2)~ THEN REPLY @288 GOTO Rugos2ndReaction222
    IF ~NumItemsParty("rqhosy1",3)~ THEN REPLY @289 GOTO Rugos3HolySymbol333
    IF ~NumItemsParty("rqhosy1",4)~ THEN REPLY @290 GOTO Rugos4HolySymbol444
    IF ~NumItemsParty("rqhosy1",5)~ THEN REPLY @291 GOTO Rugos5HolySymbol555
END

IF ~~ THEN BEGIN Rugos2ndReaction111
    SAY @292
    IF ~~ THEN DO ~GiveGoldForce(4000) TakePartyItem("rqhosy1")~ EXIT
END

IF ~~ THEN BEGIN Rugos2ndReaction222
    SAY @293
    IF ~~ THEN DO ~GiveGoldForce(8000) TakePartyItemNum("rqhosy1",2)~ EXIT
END

IF ~~ THEN BEGIN Rugos3HolySymbol333
    SAY @293
    IF ~~ THEN DO ~GiveGoldForce(12000) TakePartyItemNum("rqhosy1",3)~ EXIT
END

IF ~~ THEN BEGIN Rugos4HolySymbol444
    SAY @293
    IF ~~ THEN DO ~GiveGoldForce(16000) TakePartyItemNum("rqhosy1",4)~ EXIT
END

IF ~~ THEN BEGIN Rugos5HolySymbol555
    SAY @293
    IF ~~ THEN DO ~GiveGoldForce(20000) TakePartyItemNum("rqhosy1",5)~ EXIT
END

IF ~~ THEN BEGIN Rugos6HolySymbol
    SAY @294
    IF ~~ THEN
        DO
            %GiveGoldForce(24000)
            EraseJournalEntry (@276)
            EscapeArea()%
            SOLVED_JOURNAL @295
        EXIT
END

IF ~~ THEN BEGIN Rugos6HolySymbolRevanLeadup
    SAY @296
    IF ~~ THEN
        DO %GiveGoldForce(24000)
            TakePartyItemNum("rqhosy1",6)
            EraseJournalEntry (@276)
            %
            SOLVED_JOURNAL @295
        EXTERN ~rqrev25J~ RugosT6GoBackToAmn
END

IF ~~ THEN BEGIN RugosGoesBackToAmnRevanSent
    SAY @297
    IF ~~ THEN DO ~EscapeArea()~ EXIT
END
// Imp Geselarn T8
BEGIN ~rqt8imp~

IF ~Global("rqTobItwantosPrimaryAlly","GLOBAL",1)~ THEN BEGIN ImpMessenger //Global("rqTobItwantosPrimaryAlly","GLOBAL",1)
    SAY @298
    IF ~~ THEN
        DO
            ~GiveItemCreate("POTN55",Player1,15,1,0) // Potion of Superior Healing
            GiveItemCreate("POTN41",Player1,7,1,0) // Potion of Power
            GiveItemCreate("POTN07",Player1,4,1,0) // Potion of Storm Giant Strength
            GiveItem("rqletitw",Player1) // Letter from Itwantos
            GiveItem("rqbrac03",Player1) // Graal's Fist
            GiveItem("rqtome01",Player1) // Book of the Dead
            GiveItem("rqrobe01",Player1) // Iluvaskar's Robe of Defence
            CreateVisualEffectObject("ICFIRSDI",Myself)
            DestroySelf()~
        EXIT
END
// IMP in Balthazar monastery
BEGIN ~rqt8imp1~

IF ~Global("rqTobAssaultTemple","GLOBAL",1)~ THEN BEGIN ImpMessengerSixtarch //
    SAY @299
    =
    @300
    IF ~~ THEN
        DO
            ~GiveItem("rqsixsto",Player1) // Beacon Stone
            GiveItem("rqletsi1",Player1) // Letter temple information
            GiveItem("rqbrac03",Player1) // Graal's Fist
            GiveItem("rqtome01",Player1) // Book of the Dead
            GiveItem("rqrobe01",Player1) // Iluvaskar's Robe of Defence
            CreateVisualEffectObject("ICFIRSDI",Myself)
            DestroySelf()~
        EXIT
END

// IMP in Balthazar monastery
BEGIN ~rqt8imp2~

IF ~Global("rqTobAssaultBalthazar","GLOBAL",1)~ THEN BEGIN ImpMessengerSixtarch //Global("rqTobAssaultTemple","GLOBAL",1)
    SAY @301
    =
    @302
    IF ~~ THEN
        DO
            ~GiveItem("rqsixsto",Player1) // Beacon Stone
            GiveItem("rqletsi2",Player1) // Letter Baltazar help info
            CreateVisualEffectObject("ICFIRSDI",Myself)
            DestroySelf()~
        EXIT
END

// Sixtarch ---------------------------------------------------------------------------------------------------------

BEGIN ~rqt0clf1~
/*
FINSOL01 27 SixtarchDivinity
== rqt0clf1 IF ~!Dead("rqt0clf1")
        !StateCheck("rqt0clf1",STATE_HELPLESS)
        !StateCheck("rqt0clf1",STATE_STUNNED)
        !StateCheck("rqt0clf1",STATE_PANIC)
        !StateCheck("rqt0clf1",STATE_BERSERK)
        !StateCheck("rqt0clf1",STATE_SLEEPING)
        !StateCheck("rqt0clf1",STATE_SILENCED)
        !StateCheck("rqt0clf1",STATE_CHARMED)
        !StateCheck("rqt0clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clf1",STATE_CONFUSED)~ THEN ~<LADYLORD> <CHARNAME> is victorious! We shall become instruments of your divine power!~
END
*/
IF ~RandomNum(7,1)~ THEN BEGIN CultistsBow201
  SAY @303
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN PlansForNaught201
  SAY @304
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)~ THEN BEGIN OverwhelmingAndSoothing201
  SAY @305
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)~ THEN BEGIN CHARNAMEDivinityComment201
  SAY @306
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)~ THEN BEGIN Retribution201
  SAY @307
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN RevengeOnAmelissan201
  SAY @308
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,7)~ THEN BEGIN Feelings201
  SAY @309
  IF ~~ THEN EXIT
END

// Itwantos ---------------------------------------------------------------------------------------------------------
BEGIN ~rqt0clf2~
/*
INTERJECT_COPY_TRANS FINSOL01 27 SixtarchAllyItwantos
== rqt0clf2 IF ~GlobalLT("SixtarchDivinity","GLOBAL",1)
        !Dead("rqt0clf2")
        !StateCheck("rqt0clf2",STATE_HELPLESS)
        !StateCheck("rqt0clf2",STATE_STUNNED)
        !StateCheck("rqt0clf2",STATE_PANIC)
        !StateCheck("rqt0clf2",STATE_BERSERK)
        !StateCheck("rqt0clf2",STATE_SLEEPING)
        !StateCheck("rqt0clf2",STATE_SILENCED)
        !StateCheck("rqt0clf2",STATE_CHARMED)
        !StateCheck("rqt0clf2",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clf2",STATE_CONFUSED)~ THEN ~<LADYLORD> <CHARNAME> you are victorious! Hopefully you will not forget your allies.~
END
*/
IF ~RandomNum(7,1)~ THEN BEGIN CultistsBow202
  SAY @310
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN PlansForNaught202
  SAY @311
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)~ THEN BEGIN OverwhelmingAndSoothing202
  SAY @312
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)~ THEN BEGIN CHARNAMEDivinityComment202
  SAY @313
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)~ THEN BEGIN Retribution202
  SAY @314
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN RevengeOnAmelissan202
  SAY @315
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,7)~ THEN BEGIN Feelings202
  SAY @316
  IF ~~ THEN EXIT
END

// Llergwyn ---------------------------------------------------------------------------------------------------------
BEGIN ~rqt0clt1~
/*
INTERJECT_COPY_TRANS FINSOL01 27 Sixtarch
== rqt0clt1 IF ~GlobalLT("SixtarchDivinity","GLOBAL",1)
        GlobalLT("SixtarchAllyItwantos","GLOBAL",1)
        !Dead("rqt0clt1")
        !StateCheck("rqt0clt1",STATE_HELPLESS)
        !StateCheck("rqt0clt1",STATE_STUNNED)
        !StateCheck("rqt0clt1",STATE_PANIC)
        !StateCheck("rqt0clt1",STATE_BERSERK)
        !StateCheck("rqt0clt1",STATE_SLEEPING)
        !StateCheck("rqt0clt1",STATE_SILENCED)
        !StateCheck("rqt0clt1",STATE_CHARMED)
        !StateCheck("rqt0clt1",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt1",STATE_CONFUSED)~ THEN ~<LADYLORD> <CHARNAME> you are victorious! Hopefully you will not forget your allies.~
END
*/
IF ~RandomNum(7,1)~ THEN BEGIN CultistsBow101
  SAY @317
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN PlansForNaught101
  SAY @318
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)~ THEN BEGIN OverwhelmingAndSoothing101
  SAY @319
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)~ THEN BEGIN CHARNAMEDivinityComment101
  SAY @320
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)~ THEN BEGIN Retribution101
  SAY @321
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN RevengeOnAmelissan101
  SAY @322
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,7)~ THEN BEGIN Feelings101
  SAY @323
  IF ~~ THEN EXIT
END

// Nalgarath ---------------------------------------------------------------------------------------------------------
BEGIN ~rqt0clt2~
/*
INTERJECT_COPY_TRANS FINSOL01 27 SixtarchItwantos
== rqt0clt2 IF ~GlobalLT("SixtarchDivinity","GLOBAL",1)
        GlobalLT("SixtarchAllyItwantos","GLOBAL",1)
        GlobalLT("SixtarchAllyLlergwyn","GLOBAL",1)
        !Dead("rqt0clt2")
        !StateCheck("rqt0clt2",STATE_HELPLESS)
        !StateCheck("rqt0clt2",STATE_STUNNED)
        !StateCheck("rqt0clt2",STATE_PANIC)
        !StateCheck("rqt0clt2",STATE_BERSERK)
        !StateCheck("rqt0clt2",STATE_SLEEPING)
        !StateCheck("rqt0clt2",STATE_SILENCED)
        !StateCheck("rqt0clt2",STATE_CHARMED)
        !StateCheck("rqt0clt2",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt2",STATE_CONFUSED)~ THEN ~<LADYLORD> <CHARNAME> you are victorious! Hopefully you will not forget your allies.~
END
*/
IF ~RandomNum(7,1)~ THEN BEGIN CultistsBow102
  SAY @303
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN PlansForNaught102
  SAY @304
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)~ THEN BEGIN OverwhelmingAndSoothing102
  SAY @305
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)~ THEN BEGIN CHARNAMEDivinityComment102
  SAY @306
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)~ THEN BEGIN Retribution102
  SAY @307
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN RevengeOnAmelissan102
  SAY @324
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,7)~ THEN BEGIN Feelings102
  SAY @325
  IF ~~ THEN EXIT
END

// Rengarn ---------------------------------------------------------------------------------------------------------
BEGIN ~rqt0clt3~
/*
INTERJECT_COPY_TRANS FINSOL01 27 SixtarchItwantos
== rqt0clt3 IF ~GlobalLT("SixtarchDivinity","GLOBAL",1)
        GlobalLT("SixtarchAllyItwantos","GLOBAL",1)
        GlobalLT("SixtarchAllyLlergwyn","GLOBAL",1)
        GlobalLT("SixtarchAllyNalgarath","GLOBAL",1)
        !Dead("rqt0clt3")
        !StateCheck("rqt0clt3",STATE_HELPLESS)
        !StateCheck("rqt0clt3",STATE_STUNNED)
        !StateCheck("rqt0clt3",STATE_PANIC)
        !StateCheck("rqt0clt3",STATE_BERSERK)
        !StateCheck("rqt0clt3",STATE_SLEEPING)
        !StateCheck("rqt0clt3",STATE_SILENCED)
        !StateCheck("rqt0clt3",STATE_CHARMED)
        !StateCheck("rqt0clt3",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt3",STATE_CONFUSED)~ THEN ~<LADYLORD> <CHARNAME> you are victorious! Hopefully you will not forget your allies.~
END
*/
IF ~RandomNum(7,1)~ THEN BEGIN CultistsBow103
  SAY @326
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN PlansForNaught103
  SAY @327
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)~ THEN BEGIN OverwhelmingAndSoothing103
  SAY @328
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)~ THEN BEGIN CHARNAMEDivinityComment103
  SAY @329
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)~ THEN BEGIN Retribution103
  SAY @330
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN RevengeOnAmelissan103
  SAY @331
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,7)~ THEN BEGIN Feelings103
  SAY @332
  IF ~~ THEN EXIT
END

// Jatwalg ---------------------------------------------------------------------------------------------------------
BEGIN ~rqt0clt4~
/*
INTERJECT_COPY_TRANS FINSOL01 27 SixtarchItwantos
== rqt0clt4 IF ~GlobalLT("SixtarchDivinity","GLOBAL",1)
        GlobalLT("SixtarchAllyItwantos","GLOBAL",1)
        GlobalLT("SixtarchAllyLlergwyn","GLOBAL",1)
        GlobalLT("SixtarchAllyNalgarath","GLOBAL",1)
        GlobalLT("SixtarchAllyRengarn","GLOBAL",1)
        !Dead("rqt0clt4")
        !StateCheck("rqt0clt4",STATE_HELPLESS)
        !StateCheck("rqt0clt4",STATE_STUNNED)
        !StateCheck("rqt0clt4",STATE_PANIC)
        !StateCheck("rqt0clt4",STATE_BERSERK)
        !StateCheck("rqt0clt4",STATE_SLEEPING)
        !StateCheck("rqt0clt4",STATE_SILENCED)
        !StateCheck("rqt0clt4",STATE_CHARMED)
        !StateCheck("rqt0clt4",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt4",STATE_CONFUSED)~ THEN ~<LADYLORD> <CHARNAME> you are victorious! Hopefully you will not forget your allies.~
END
*/
IF ~RandomNum(7,1)~ THEN BEGIN CultistsBow104
  SAY @333
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN PlansForNaught104
  SAY @334
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)~ THEN BEGIN OverwhelmingAndSoothing104
  SAY @335
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)~ THEN BEGIN CHARNAMEDivinityComment104
  SAY @336
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)~ THEN BEGIN Retribution104
  SAY @337
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN RevengeOnAmelissan104
  SAY @338
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,7)~ THEN BEGIN Feelings104
  SAY @339
  IF ~~ THEN EXIT
END
