/* ------------------------------------------------------------------- Rugos contract no.1 -------------------------------------------------------------------*/
BEGIN rqrugos

IF ~Global("rqContractsRugosAvailable","GLOBAL",3)~
    THEN BEGIN Rugos1OfferContract
    SAY @0
    IF ~~ THEN EXTERN ~rqrevJ~ ProtectionContractFinished
END

IF ~~ THEN BEGIN Rugos1ContractProlog
    SAY @1
    IF ~~ THEN DO
            %GiveGoldForce("15000")
            EraseJournalEntry(~New mercenary work for me?

            Revan has more mercenary work for me if i am interested i should go to Mithrest Inn Waukeen's Promenade.~)%
            SOLVED_JOURNAL @2 GOTO Rugos1FirstContractIntro
END

IF ~~ THEN BEGIN Rugos1FirstContractIntro
    SAY @3
    IF ~~ THEN REPLY @4 GOTO Rugos1Contract
    IF ~~ THEN REPLY @5 GOTO Rugos1Rejected
END

IF ~~ THEN BEGIN Rugos1Contract
    SAY @6
    IF ~~ THEN REPLY @7 GOTO Rugos1AgreedLocation
    IF ~~ THEN REPLY @8 GOTO Rugos1Bounty
    IF ~~ THEN REPLY @9 GOTO Rugos1TellMore
    IF ~~ THEN REPLY @10 GOTO Rugos1Rejected
END

IF ~~ THEN BEGIN Rugos1Bounty
    SAY @11
    IF ~~ THEN REPLY @12 GOTO Rugos1TellMore
    IF ~~ THEN REPLY @13 GOTO Rugos1ExplainAnonymity
END

IF ~~ THEN BEGIN Rugos1ExplainAnonymity
    SAY @14
    IF ~~ THEN REPLY @9 GOTO Rugos1TellMore
END

IF ~~ THEN BEGIN Rugos1TellMore
    SAY @15
    =
    @16
    IF ~~ THEN REPLY @52 GOTO Rugos1AgreedLocation
    IF ~~ THEN REPLY @18 GOTO Rugos1Negotitation
END

IF ~~ THEN BEGIN Rugos1AgreedLocation
    SAY @19
    IF ~~ THEN REPLY @20 GOTO Rugos1AgreedToContract
    IF ~~ THEN REPLY @21 GOTO Rugos1Negotitation
    IF ~~ THEN REPLY @22 GOTO Rugos1Rejected
END

IF ~~ THEN BEGIN Rugos1Negotitation
    SAY @23
    IF ~~ THEN REPLY @24 GOTO Rugos1AgreedToContract
    IF ~~ THEN REPLY @25 GOTO Rugos1Rejected
END

IF ~~ THEN BEGIN Rugos1Rejected
    SAY @26
    IF ~~ THEN DO
        ~SetGlobal("rqcontractMarcian","GLOBAL",2)~ // rejected
    EXIT
END

IF ~Global("rqcontractMarcian","GLOBAL",2) // rejected
    Global("rqContractsRugosAvailable","GLOBAL",3)
    ~
    THEN BEGIN Rugos1Reconsideration
    SAY @27
    IF ~~ THEN REPLY @28 GOTO Rugos1Contract
    IF ~~ THEN REPLY @29 GOTO Rugos1Rejected
END

IF ~~ THEN BEGIN Rugos1AgreedToContract
    SAY @30
    IF ~~ THEN DO
        ~SetGlobal("rqcontractMarcian","GLOBAL",1)
        SetGlobal("rqContractsRugosAvailable","GLOBAL",4)~
        UNSOLVED_JOURNAL @31
    EXIT
END

IF ~Global("rqcontractMarcian","GLOBAL",1)~ THEN BEGIN Rugos1InitiatedBattle
    SAY @32
    IF ~Dead("rq1marca") PartyHasItem("rqproof1") Global("rqcontract1battle","GLOBAL",1)~ THEN REPLY @33 GOTO Rugos1HaveHead
    IF ~Dead("rq1marca") !PartyHasItem("rqproof1") Global("rqcontract1battle","GLOBAL",1)~ THEN REPLY @34 GOTO Rugos1Unfinished
    IF ~!Dead("rqmararg")~ THEN REPLY @35 GOTO Rugos1Unfinished
END

IF ~~ THEN BEGIN Rugos1Unfinished
    SAY @36
    IF ~~THEN EXIT
END

IF ~~ THEN BEGIN Rugos1HaveHead
    SAY @37
    IF ~~ THEN DO
        %GiveGoldForce(4000)
        SetGlobal("rqcontractMarcian","GLOBAL",3)
        TakePartyItem("rqproof1")
        EraseJournalEntry(@31)
        %
        SOLVED_JOURNAL @38
    EXIT
END

/* ------------------------------------------------------------------- Rugos contract no.2 -------------------------------------------------------------------*/

IF ~Global("rqcontractMarcian","GLOBAL",3)~ THEN BEGIN Rugos2OfferContract // timer expired
    SAY @39
    IF ~~ THEN REPLY @40 GOTO Rugos2Contract
    IF ~~ THEN REPLY @41 GOTO Rugos2Rejected
END

IF ~~ THEN BEGIN Rugos2Contract
    SAY @42
    IF ~~ THEN REPLY @43 GOTO Rugos2AgreedLocation
    IF ~~ THEN REPLY @44 GOTO Rugos2WhoIsIssuer
    IF ~~ THEN REPLY @45 GOTO Rugos2TellMore
    IF ~~ THEN REPLY @10 GOTO Rugos2Rejected
END

IF ~~ THEN BEGIN Rugos2WhoIsIssuer
    SAY @46
    IF ~~ THEN REPLY @47 GOTO Rugos2TellMore
    IF ~~ THEN REPLY @48 GOTO Rugos2Ambush
END

IF ~~ THEN BEGIN Rugos2Ambush
    SAY @49
    IF ~~ THEN REPLY @45 GOTO Rugos2TellMore
END

IF ~~ THEN BEGIN Rugos2TellMore
    SAY @50
    =
    @51
    IF ~~ THEN REPLY @52 GOTO Rugos2AgreedLocation
    IF ~~ THEN REPLY @18 GOTO Rugos2Negotitation
END

IF ~~ THEN BEGIN Rugos2AgreedLocation
    SAY @53
    IF ~~ THEN REPLY @20 GOTO Rugos2AgreedToContract
    IF ~~ THEN REPLY @54 GOTO Rugos2Negotitation
    IF ~~ THEN REPLY @22 GOTO Rugos2Rejected
END

IF ~~ THEN BEGIN Rugos2Negotitation
    SAY @23
    IF ~~ THEN REPLY @55 GOTO Rugos2AgreedToContract
    IF ~~ THEN REPLY @25 GOTO Rugos2Rejected
END

IF ~~ THEN BEGIN Rugos2Rejected
    SAY @56
    IF ~~ THEN DO
        ~SetGlobal("rqcontractKamraarn","GLOBAL",2)
        SetGlobal("rqcontractMarcian","GLOBAL",4)~
    EXIT
END

IF ~Global("rqcontractKamraarn","GLOBAL",2)~ THEN BEGIN Rugos2Reconsideration
    SAY @27
    IF ~~ THEN REPLY @28 GOTO Rugos2Contract
    IF ~~ THEN REPLY @57 GOTO Rugos2Rejected
END

IF ~~ THEN BEGIN Rugos2AgreedToContract
    SAY @58
    IF ~~ THEN DO
        ~SetGlobal("rqcontractKamraarn","GLOBAL",1)
        SetGlobal("rqcontractMarcian","GLOBAL",4)~
        UNSOLVED_JOURNAL @59
    EXIT
END

IF ~Global("rqcontractKamraarn","GLOBAL",1)~
    THEN BEGIN Rugos2InitiatedBattle
    SAY @60
    IF ~Dead("rqkamraa") PartyHasItem("rqproof2") Global("rqcontract2battle","GLOBAL",1)~ THEN REPLY @61 GOTO Rugos2HaveAmulet
    IF ~Dead("rqkamraa") !PartyHasItem("rqproof2") Global("rqcontract2battle","GLOBAL",1)~ THEN REPLY @62 GOTO Rugos2Unfinished
    IF ~!Dead("rqkamraa")~ THEN REPLY @35 GOTO Rugos2Unfinished
END

IF ~~ THEN BEGIN Rugos2Unfinished
    SAY @36
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Rugos2HaveAmulet
    SAY @63
    IF ~~ THEN DO
        %TakePartyItem("rqproof2") // amuletproof2
        GiveGoldForce(14000)
        SetGlobal("rqcontractKamraarn","GLOBAL",3)
        EraseJournalEntry(@59)
        %
        SOLVED_JOURNAL @64
    EXIT
END

/* ------------------------------------------------------------------- Rugos contract no.3 -------------------------------------------------------------------*/

IF ~Global("rqcontractKamraarn","GLOBAL",3)~ THEN BEGIN Rugos3OfferContract
    SAY @65
    IF ~~ THEN REPLY @66 GOTO Rugos3Contract
    IF ~~ THEN REPLY @67 GOTO Rugos3Contract
    IF ~~ THEN REPLY @41 GOTO Rugos3Rejected
END

IF ~~ THEN BEGIN Rugos3Contract
    SAY @68
    IF ~~ THEN REPLY @69 GOTO Rugos3AgreedLocation
    IF ~~ THEN REPLY @70 GOTO Rugos3WhoIsIssuer
    IF ~~ THEN REPLY @71 GOTO Rugos3TellMore
    IF ~~ THEN REPLY @10 GOTO Rugos3Rejected
END

IF ~~ THEN BEGIN Rugos3WhoIsIssuer
    SAY @72
    IF ~~ THEN REPLY @73 GOTO Rugos3TellMore
    IF ~~ THEN REPLY @48 GOTO Rugos3Ambush
END

IF ~~ THEN BEGIN Rugos3Ambush
    SAY @74
    IF ~~ THEN REPLY @75 GOTO Rugos3TellMore
END

IF ~~ THEN BEGIN Rugos3TellMore
    SAY @76
    =
    @77
    IF ~~ THEN REPLY @52 GOTO Rugos3AgreedLocation
    IF ~~ THEN REPLY @18 GOTO Rugos3Negotitation
END

IF ~~ THEN BEGIN Rugos3AgreedLocation
    SAY @78
    IF ~~ THEN REPLY @79 GOTO Rugos3AgreedToContract
    IF ~~ THEN REPLY @80 GOTO Rugos3Negotitation
    IF ~~ THEN REPLY @81 GOTO Rugos3Rejected
END

IF ~~ THEN BEGIN Rugos3Negotitation
    SAY @82
    IF ~~ THEN REPLY @24 GOTO Rugos3AgreedToContract
    IF ~~ THEN REPLY @25 GOTO Rugos3Rejected
END

IF ~~ THEN BEGIN Rugos3Rejected
    SAY @83
    IF ~~ THEN DO
        ~SetGlobal("rqcontractAnakarhysse","GLOBAL",2)
        SetGlobal("rqcontractKamraarn","GLOBAL",4)~
    EXIT
END

IF ~Global("rqcontractAnakarhysse","GLOBAL",2)~ THEN BEGIN Rugos3Reconsideration
    SAY @27
    IF ~~ THEN REPLY @84 GOTO Rugos3Contract
    IF ~~ THEN REPLY @85 GOTO Rugos3Rejected
END

IF ~~ THEN BEGIN Rugos3AgreedToContract
    SAY @86
    IF ~~ THEN DO
        ~SetGlobal("rqcontractAnakarhysse","GLOBAL",1)
        SetGlobal("rqcontractKamraarn","GLOBAL",4)~
        UNSOLVED_JOURNAL @87
    EXIT
END

IF ~Global("rqcontractAnakarhysse","GLOBAL",1)~
    THEN BEGIN Rugos3InitiatedBattle
    SAY @32
    IF ~Dead("rqberkri") Dead("rqanakar") PartyHasItem("rqproof3") Global("rqcontract3battle","GLOBAL",1)~ THEN REPLY @88 GOTO Rugos3HaveHead
    IF ~!Dead("rqanakar") !Dead("rqberkri") Global("rqcontract3battle","GLOBAL",1)~ THEN REPLY @35 GOTO Rugos3Unfinished
    IF ~Global("rqcontractAnakarhysse","GLOBAL",3)~ THEN REPLY @89 GOTO Rugos3Failed
    IF ~!PartyHasItem("rqproof3") Dead("rqanakar") Dead("rqberkri")~ THEN REPLY @90 GOTO Rugos3Unfinished
END

IF ~~ THEN BEGIN Rugos3Unfinished
    SAY @36
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Rugos3HaveHead
    SAY @91
    IF ~~ THEN DO
        %GiveGoldForce(4000)
        TakePartyItem("rqproof3")
        SetGlobal("rqcontractAnakarhysse","GLOBAL",3)
        EraseJournalEntry (@87)
        %
        SOLVED_JOURNAL @92
    EXIT
END

IF ~Global("rqcontractbotched","GLOBAL",1)~ THEN BEGIN Rugos3Failed
    SAY @93
    IF ~~ THEN DO
        %EraseJournalEntry (@87)
        %
        SOLVED_JOURNAL @94
    EXIT
END

/* ------------------------------------------------------------------- Rugos contract no.4 -------------------------------------------------------------------*/

IF ~Global("rqcontractAnakarhysse","GLOBAL",3)~ THEN BEGIN Rugos4OfferContract
    SAY @95
    IF ~~ THEN REPLY @96 GOTO Rugos4Contract
    IF ~~ THEN REPLY @97 GOTO Rugos4Contract
    IF ~~ THEN REPLY @41 GOTO Rugos4Rejected
END

IF  ~Global("rqcontractHevguris","GLOBAL",1) // failed
    OR(3)
        Class(Player1,PALADIN)
        Class(Player1,RANGER)
        Alignment(Player1,MASK_GOOD)~
    THEN BEGIN Rugos4OfferContract
    SAY @98
        IF ~~ THEN REPLY @99
            DO
                ~SetGlobal("rqcontractbotched","GLOBAL",1)~
            EXIT
END

IF ~~ THEN BEGIN Rugos4Contract
    SAY @100
    IF ~~ THEN REPLY @101 GOTO Rugos4AgreedLocation
    IF ~~ THEN REPLY @70 GOTO Rugos4WhoIsIssuer
    IF ~~ THEN REPLY @102 GOTO Rugos4TellMore
    IF ~~ THEN REPLY @10 GOTO Rugos4Rejected
END

IF ~~ THEN BEGIN Rugos4WhoIsIssuer
    SAY @103
    IF ~~ THEN REPLY @104 GOTO Rugos4TellMore
    IF ~~ THEN REPLY @105 GOTO Rugos4Ambush
END

IF ~~ THEN BEGIN Rugos4Ambush
    SAY @106
    IF ~~ THEN REPLY @75 GOTO Rugos4TellMore
END

IF ~~ THEN BEGIN Rugos4TellMore
    SAY @107
    =
    @108
    IF ~~ THEN REPLY @52 GOTO Rugos4AgreedLocation
    IF ~~ THEN REPLY @18 GOTO Rugos4Negotitation
END

IF ~~ THEN BEGIN Rugos4AgreedLocation
    SAY @109
    IF ~~ THEN REPLY @79 GOTO Rugos4AgreedToContract
    IF ~~ THEN REPLY @110 GOTO Rugos4Negotitation
    IF ~~ THEN REPLY @22 GOTO Rugos4Rejected
END

IF ~~ THEN BEGIN Rugos4Negotitation
    SAY @111
    IF ~~ THEN REPLY @112 GOTO Rugos4AgreedToContract
    IF ~~ THEN REPLY @113 GOTO Rugos4Rejected
END

IF ~~ THEN BEGIN Rugos4Rejected
    SAY @56
        IF ~~ THEN DO
            ~SetGlobal("rqcontractHevguris","GLOBAL",2)
            SetGlobal("rqcontractAnakarhysse","GLOBAL",4)~
        EXIT
END

IF ~Global("rqcontractHevguris","GLOBAL",2)~ THEN BEGIN Rugos4Reconsideration
    SAY @27
    IF ~~ THEN REPLY @84 GOTO Rugos4Contract
    IF ~~ THEN REPLY @114 GOTO Rugos4Rejected
END

IF ~~ THEN BEGIN Rugos4AgreedToContract
    SAY @115
        IF ~!IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Mazzy")~ THEN DO
            ~SetGlobal("rqcontractHevguris","GLOBAL",1)
            SetGlobal("rqcontractAnakarhysse","GLOBAL",4)~
            UNSOLVED_JOURNAL @116
        EXIT
            IF ~IsValidForPartyDialogue("Mazzy")~ THEN DO
            ~SetGlobal("rqcontractHevguris","GLOBAL",1)
            SetGlobal("rqcontractAnakarhysse","GLOBAL",4)
            SetGlobal("rqcontract4MazzyReinfSends","GLOBAL",1)
            DisplayStringHead("Mazzy",49810)~
            UNSOLVED_JOURNAL @116
        EXIT
            IF ~IsValidForPartyDialogue("Keldorn")~ THEN DO
            ~SetGlobal("rqcontractHevguris","GLOBAL",1)
            SetGlobal("rqcontractAnakarhysse","GLOBAL",4)
            SetGlobal("rqcontract4KeldornReinfSends","GLOBAL",1)
            DisplayStringHead("Keldorn",52298)~
            UNSOLVED_JOURNAL @116
        EXIT
END

IF ~Global("rqcontractHevguris","GLOBAL",1)~
    THEN BEGIN Rugos4InitiatedBattle
    SAY @32
    IF ~Dead("rqinqhev") PartyHasItem("rqproof4") Global("rqcontract4battle","GLOBAL",1)~ THEN REPLY @117 GOTO Rugos4HaveHead
    IF ~Dead("rqinqhev") !PartyHasItem("rqproof4") Global("rqcontract4battle","GLOBAL",1)~ THEN REPLY @118 GOTO Rugos4Forgot
    IF ~!Dead("rqinqhev")~ THEN REPLY @35 EXIT
END

IF ~~ THEN BEGIN Rugos4Forgot
    SAY @119
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Rugos4HaveHead
    SAY @120
        IF ~~ THEN DO
            %GiveGoldForce(20000)
            TakePartyItem("rqproof4")
            GiveItem("sw1h27",Player1) // Arbane's Sword +2
            SetGlobal("rqcontractHevguris","GLOBAL",3)
            EraseJournalEntry (@116)
            %
            SOLVED_JOURNAL @121
        EXIT
END

/* ------------------------------------------------------------------- Rugos contract no.5 -------------------------------------------------------------------*/
//After solving druid grove do check with rugos
IF ~Global("rqcontractHevguris","GLOBAL",3)
    ~ THEN BEGIN Rugos5OfferContract
    SAY @122
    IF ~~ THEN REPLY @123 GOTO Rugos5Contract
    IF ~~ THEN REPLY @124 GOTO Rugos5Contract
    IF ~~ THEN REPLY @41 GOTO Rugos5Rejected
END

IF ~Global("rqcontractHevguris","GLOBAL",3)
    OR (2)
        Class(Player1,RANGER)
        Class(Player1,DRUID)~
    THEN BEGIN CharnameIsNatureLover
    SAY @125
    =
    @126
    IF ~~ THEN REPLY @127 GOTO Rugos5Rejected
    IF ~~ THEN REPLY @128 GOTO Rugo5ComeBackToMe
    IF ~~ THEN REPLY @129 GOTO Rugos5Contract
    IF ~~ THEN REPLY @130 GOTO Rugo5ComeBackToMe
END

IF ~~ THEN BEGIN Rugo5ComeBackToMe
    SAY @131
    IF ~~ THEN REPLY @132 GOTO Rugos5Contract
    IF ~~ THEN REPLY @133 GOTO Rugos5Rejected
END

IF ~~ THEN BEGIN Rugos5Contract
    SAY @134
    IF ~~ THEN REPLY @135 GOTO Rugos5AgreedLocation
    IF ~~ THEN REPLY @70 GOTO Rugos5WhoIsIssuer
    IF ~~ THEN REPLY @102 GOTO Rugos5TellMore
    IF ~~ THEN REPLY @10 GOTO Rugos5Rejected
END

IF ~~ THEN BEGIN Rugos5WhoIsIssuer
    SAY @136
    IF ~~ THEN REPLY @104 GOTO Rugos5TellMore
    IF ~~ THEN REPLY @137 GOTO Rugos5Ambush
END

IF ~~ THEN BEGIN Rugos5Ambush
    SAY @138
    IF ~~ THEN REPLY @75 GOTO Rugos5TellMore
END

IF ~~ THEN BEGIN Rugos5TellMore
    SAY @139
    IF ~~ THEN REPLY @52 GOTO Rugos5AgreedLocation
    IF ~~ THEN REPLY @18 GOTO Rugos5Negotitation
END

IF ~~ THEN BEGIN Rugos5AgreedLocation
    SAY @140
    IF ~~ THEN REPLY @141 GOTO Rugos5AgreedToContract
    IF ~~ THEN REPLY @142 GOTO Rugos5Negotitation
    IF ~~ THEN REPLY @22 GOTO Rugos5Rejected
END

IF ~~ THEN BEGIN Rugos5Negotitation
    SAY @143
    IF ~~ THEN REPLY @144 GOTO Rugos5AgreedToContract
    IF ~~ THEN REPLY @113 GOTO Rugos5Rejected
END

IF ~~ THEN BEGIN Rugos5Rejected
    SAY @145
        IF ~~ THEN DO
            ~SetGlobal("rqcontractGrunelensky","GLOBAL",2)~
        EXIT
END

IF ~Global("rqcontractGrunelensky","GLOBAL",2)~ THEN BEGIN Rugos5Reconsideration
    SAY @27
    IF ~~ THEN REPLY @84 GOTO Rugos5Contract
    IF ~~ THEN REPLY @85 GOTO Rugos5Rejected
END

IF ~~ THEN BEGIN Rugos5AgreedToContract
    SAY @146
        IF ~~ THEN DO
            ~SetGlobal("rqcontractGrunelensky","GLOBAL",1)
            SetGlobal("rqcontractHevguris","GLOBAL",4)~
            UNSOLVED_JOURNAL @147
        EXIT
END

IF ~Global("rqcontractGrunelensky","GLOBAL",1)~ THEN BEGIN Rugos1InitiatedBattle
    SAY @148
    IF ~!Dead("rqarcdrd") !Dead("rqpaud") !Dead("rqgrune") Global("rqcontractGrunelensky","GLOBAL",3)~ THEN REPLY @149 GOTO Rugos5HaveProof
    IF ~!Dead("rqarcdrd")~ THEN REPLY @35 EXIT
    IF ~Dead("rqarcdrd") Dead("rqarcdrd") Dead("rqarcdrd") Global("rqcontract5battle","GLOBAL",1)~ THEN REPLY @150 GOTO Rugos5HaveProof
END

IF ~~ THEN BEGIN Rugos5HaveProof
    SAY @151
        IF ~~ THEN DO
            %SetGlobal("rqcontractGrunelensky","GLOBAL",3)
            SetGlobal("rqcontractHevguris","GLOBAL",4)
            GiveGoldForce(10000)
            GiveItem("sw1h36",Player1) // Namarra +2
            GiveItem("quiver06",Player1) // bag of plenty
            EraseJournalEntry (@147)
            %
            SOLVED_JOURNAL @152
        EXIT
END

IF ~Global("rqcontractbotched","GLOBAL",1)~ THEN BEGIN RugosBotched
    SAY @153
        IF ~~ THEN EXIT
END

IF ~Global("rqcontractHevguris","GLOBAL",4) Global("rqcontractGrunelensky","GLOBAL",3)~ THEN BEGIN RugosEnding
    SAY @154
    IF ~~ THEN EXIT
END
// only for testing return back for normal playtrhough
/*
IF ~Global("rqcontractHevguris","GLOBAL",3) !Dead("Faldorn")~ THEN BEGIN RugosLast5ContractDruids
    SAY ~I have contacts between some strange sect named Ashbrought they are interested about Druid Grove located near Trademeet. They could give us antother contract come back later maybe it will be up.~
    IF ~~ THEN EXIT
END
*/
