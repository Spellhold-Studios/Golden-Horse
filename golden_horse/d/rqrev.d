BEGIN rqrev

IF ~Global("rqRevanKnowsTask","GLOBAL",0)~ THEN BEGIN FirstMeeting
    SAY @0
    IF ~!InParty("Jaheira")~ THEN REPLY @1 GOTO rqProposition
    IF ~InParty("Jaheira")~ THEN REPLY @2
        EXIT
    IF ~!InParty("Jaheira")~ THEN REPLY @3 GOTO OfferGold
END

IF ~~ THEN BEGIN OfferGold
    SAY  @4
    IF ~~ THEN REPLY @5 GOTO rqProposition
    IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN rqProposition
    SAY @7
    IF ~~ THEN REPLY @8 GOTO ProtectionDetails
    IF ~~ THEN REPLY @9 GOTO rqNoBounty
    IF ~~ THEN REPLY @10 GOTO OrganizationReward
END

IF ~~ THEN BEGIN rqNoBounty
    SAY @11
    IF ~~ THEN REPLY @12 GOTO ProtectionDetails
END

IF ~~ THEN BEGIN ProtectionDetails
    SAY @13
    IF ~~ THEN REPLY @14 GOTO DirectlyAfterYouRevan
END

IF ~~ THEN BEGIN DirectlyAfterYouRevan
    SAY @15
    IF ~~ THEN GOTO OrganizationReward
END

IF ~~ THEN BEGIN OrganizationReward
    SAY @16
    IF ~~ THEN REPLY @17 GOTO rqRevanSkills
    IF ~~ THEN REPLY @18 GOTO RewardNegotiation
    IF ~~ THEN REPLY @19 GOTO RewardNegotiation
    IF ~~ THEN REPLY @20 GOTO RewardNegotiation
    IF ~~ THEN REPLY @21 GOTO RewardNegotiation
    IF ~~ THEN REPLY @22 GOTO RejectedRevan
END

IF ~~ THEN BEGIN RejectedRevan
    SAY @23
    IF ~~ THEN DO ~SetGlobal("rqRevanKnowsTask","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN rqRevanSkills
    SAY @24
    IF ~~ THEN GOTO RewardNegotiation
END

IF ~~ THEN BEGIN RewardNegotiation
    SAY @25
    IF ~~ THEN REPLY @26
        DO
            %SetGlobal("rqrevanjoined","LOCALS",1)
            SetGlobal("rqAgreedtoJob","GLOBAL",1)
            JoinParty()%
            UNSOLVED_JOURNAL
            @27
        EXIT
    IF ~~ THEN REPLY @28 EXIT
END

IF ~Global("rqRevanKnowsTask","GLOBAL",1)
    !InParty("Jaheira")~
    THEN BEGIN rqKnowRevansOfferGold
    SAY @29
    IF ~~ THEN REPLY @30 GOTO RewardNegotiation
    IF ~~ THEN REPLY @31 GOTO OrganizationReward
    IF ~~ THEN REPLY @3 EXIT
END

IF ~InParty("Jaheira")~ THEN BEGIN rqJaheirarejection
    SAY @32
    IF ~~ THEN EXIT
END

BEGIN ~rqrevP~

IF ~Global("rqrevanjoined","LOCALS",1)~ THEN BEGIN KickOut
    SAY @33
    IF ~~ THEN REPLY @34
        DO ~JoinParty()~
        EXIT
    IF ~~ THEN REPLY @35
        DO
            ~SetGlobal("rqrevanjoined","LOCALS",0)
            EscapeAreaMove("AR0704",135,625,13)~
        EXIT
END

IF ~Global("rqrevanjoined","LOCALS",0)~ THEN BEGIN RevanRejoiningDialogue
    SAY @36
    IF ~~ THEN REPLY @37 EXIT
    IF ~!Inparty("Jaheira")~ THEN REPLY @38 GOTO RevanRejoins
    IF ~InParty("Jaheira")~ THEN REPLY @38 GOTO RevajoinJaheira
END

IF ~~ THEN BEGIN RevanRejoins
    SAY @39
    IF ~~ THEN DO
            ~SetGlobal("rqrevanjoined","LOCALS",1)
            JoinParty()~
        EXIT
END

IF ~~ THEN BEGIN RevajoinJaheira
    SAY @40
    IF ~~ THEN EXIT
END

/*
IF ~Global("rqrevanjoined","LOCALS",0)~ THEN BEGIN Rejoin
    SAY ~You have reconsidererd? Are you ready to resume protection contract?~
    IF ~~ THEN REPLY ~Yes, rejoin me.~
        DO
            ~SetGlobal("rqrevanjoined","LOCALS",1)
            JoinParty()~
        EXIT
    IF ~~ THEN REPLY ~Not yet perhaps later.~ EXIT
END
*/

BEGIN ~rqrevJ~

IF  ~Global("rqRevanAmbush1Reaction","GLOBAL",1)
    AreaCheck("AR0300")~
    THEN BEGIN Revan1AmbushReaction
    SAY @41
    IF ~~ THEN REPLY @42 GOTO PranglAngle
    IF ~~ THEN REPLY @43 GOTO MoonseaAngle
    IF ~~ THEN REPLY @44 GOTO RugosKidnappingStory
    IF ~~ THEN REPLY @45 GOTO MoonseaAngle
END

IF ~~ THEN BEGIN MoonseaAngle
    SAY @46
    IF ~~ THEN REPLY @47 GOTO PranglAngle
    IF ~~ THEN REPLY @48 GOTO RugosKidnappingStory
END

IF ~~ THEN BEGIN PranglAngle
    SAY @49
    IF ~~ THEN REPLY @50 GOTO PranglAngleFurther
END

IF ~~ THEN BEGIN PranglAngleFurther
    SAY @51
    IF ~~ THEN REPLY @52 GOTO RugosKidnappingStory
END

IF ~~ THEN BEGIN RugosKidnappingStory
    SAY @53
    IF ~~ THEN REPLY @54 GOTO PotentialEnemies
END

IF ~~ THEN BEGIN PotentialEnemies
    SAY @55
    IF ~~ THEN DO ~SetGlobal("rqRevanAmbush1Reaction","GLOBAL",2)~
        EXIT
END

// rq reaction to ambush 2 made by ribald and pentarch
IF ~Global("rqRevanAfterAmbush2Talk","GLOBAL",2)~ THEN BEGIN RevanAfterRibaldTalk
    SAY @56
        IF ~~ THEN REPLY @57 GOTO RevanConfirmsThisWasAboutHim
END

IF ~~ THEN BEGIN RevanConfirmsThisWasAboutHim
    SAY @58
    IF ~~ THEN DO ~SetGlobal("rqRevanAfterAmbush2Talk","GLOBAL",3)~ EXIT
END

IF  ~Global("rqRevanAfterAccusingRibald","GLOBAL",3)
    Global("rqRevanAfterAmbush2Talk","GLOBAL",3)
    !AreaCheck("AR0702")~
    THEN BEGIN rqrevjinterjection
    SAY @59
    IF ~~ THEN REPLY @60 GOTO rqRepliedIdiocy
    IF ~~ THEN REPLY @61 GOTO rqRepliedIdiocy
    IF ~~ THEN REPLY @62 GOTO rqRepliedIdiocy
    IF ~~ THEN REPLY @63 GOTO rqRepliedThreat
END

IF ~~ THEN BEGIN rqRepliedThreat
    SAY @64
    IF ~~ THEN REPLY @65 GOTO RevanSaysWatchYourBack
END

IF ~~ THEN BEGIN rqRepliedIdiocy
    SAY @66
    IF ~~ THEN REPLY @67 GOTO RevanSaysWatchYourBack
    IF ~~ THEN REPLY @68 GOTO RevanSaysWatchYourBack
END

IF ~~ THEN BEGIN RevanSaysWatchYourBack
    SAY @69
    IF ~~ THEN REPLY @70 GOTO PartingWords
    IF ~~ THEN REPLY @71 GOTO PartingWords
    IF ~Global("rqContractsRugosAvailable","GLOBAL",3)~ THEN REPLY @70 GOTO PartingWordsProtectionContractEnded
    IF ~Global("rqContractsRugosAvailable","GLOBAL",3)~ THEN REPLY @71 GOTO PartingWordsProtectionContractEnded
END

IF ~~ THEN BEGIN PartingWords
    SAY @72
        IF ~~ THEN DO ~SetGlobal("rqRevanAfterAccusingRibald","GLOBAL",4)~
            UNSOLVED_JOURNAL
            @73
        EXIT
END

IF ~~ THEN BEGIN PartingWordsProtectionContractEnded
    SAY @74
        IF ~~ THEN DO ~SetGlobal("rqRevanAfterAccusingRibald","GLOBAL",4)~
        EXIT
END

// Ambush 3 reaction
IF  ~Global("rqRevanAmbush3Reaction","GLOBAL",1)
    AreaCheck("AR0900")~
    THEN BEGIN Revan3AmbushReaction
    SAY @75
    IF ~~ THEN REPLY @76 GOTO MercenariesAnger3
    IF ~~ THEN REPLY @77 GOTO BewildermentOnRevanBehaviour
    IF ~~ THEN REPLY @78 GOTO MercenariesAnger3
    IF ~~ THEN REPLY @79 GOTO MercenariesAnger3
    IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @80 GOTO RevanCommendsOnYourIntellect
END

IF ~~ THEN BEGIN MercenariesAnger3
    SAY @81
    IF ~~ THEN GOTO RevanRetellsReward1
END

IF ~~ THEN BEGIN BewildermentOnRevanBehaviour
    SAY @82
    IF ~~ THEN GOTO RevanRetellsReward1
END

IF ~~ THEN BEGIN RevanCommendsOnYourIntellect
    SAY @83
    IF ~~ THEN GOTO RevanRetellsReward1
END

IF ~~ THEN BEGIN RevanRetellsReward1
    SAY @84
    IF ~~ THEN
        DO ~SetGlobal("rqRevanAmbush3Reaction","GLOBAL",2)~
    EXIT
END

// reaction after esslin and groskhnakh death create baf file in Revan personal script
IF  ~PartyHasItemIdentified("rqminlet") // mintipers letter
    Global("rqwaukenambush4","GLOBAL",1)
    Global("rqRevanMintiper","GLOBAL",2)
    !InParty("jaheira")
    InParty("rqrev")
    !Dead("rqrev")
    ~
    THEN BEGIN RevanHarpersTalk
    SAY @85
    IF ~~ THEN REPLY @86 GOTO RevanHarper
END

IF ~~ THEN BEGIN RevanHarper
    SAY @87
    IF ~~ THEN REPLY @88 GOTO RevanNegotiateHarpers
    IF ~~ THEN REPLY @89 GOTO RevanWhyAttackYou
    IF ~~ THEN REPLY @90 GOTO RevanBloodlust
END

IF ~~ THEN BEGIN RevanNegotiateHarpers
    SAY @91
    IF ~~ THEN DO ~SetGlobal("rqRevanMintiper","GLOBAL",3)~
            UNSOLVED_JOURNAL
            @92
        EXIT
END

IF ~~ THEN BEGIN RevanWhyAttackYou
    SAY @93
    =
    @94
    =
    @95
    IF ~~ THEN REPLY @96 GOTO RevanWhyDead
    IF ~~ THEN REPLY @97 GOTO RevanHarpersDiscovery
    IF ~~ THEN REPLY @98 GOTO RevanNegotiateHarpers
END

IF ~~ THEN BEGIN RevanWhyDead
    SAY @99
    IF ~~ THEN REPLY @100 GOTO RevanNoSense
    IF ~~ THEN REPLY @98 GOTO RevanNegotiateHarpers
END

IF ~~ THEN BEGIN RevanNoSense
    SAY @101
    IF ~~ THEN GOTO RevanNegotiateHarpers
END

IF ~~ THEN BEGIN RevanHarpersDiscovery
    SAY @102
    IF ~~ THEN REPLY @98 GOTO RevanNegotiateHarpers
END

IF ~~ THEN BEGIN RevanBloodlust
    SAY @103
    IF ~~ THEN GOTO RevanNegotiateHarpers
END

// Going after Mintiper in Umar Hills EXTERN from rqfougi
IF ~~ THEN BEGIN MintiperEncounterToCome
    SAY @104
    IF ~~ THEN DO ~SetGlobal("rqRevanMintiper","GLOBAL",5)~
        UNSOLVED_JOURNAL
            @105
        EXIT
END

// reaction after Mintiper dies and you are out of umar hills
IF ~Global("rqrevanmintiper","GLOBAL",5)
    Global("rqContractsRugosAvailable","GLOBAL",2)
    Dead("rqmintip")
    ~
    THEN BEGIN RevanProposal
    SAY @106
    =
    @107
    IF ~~ THEN REPLY @108 GOTO RevanMercenaryRestart
    IF ~~ THEN REPLY @109 GOTO MintiperWillContinue
END

IF ~~ THEN BEGIN MintiperWillContinue
    SAY @110
    =
    @111
        IF ~~ THEN GOTO RevanMercenaryRestart
END

IF ~~ THEN BEGIN RevanMercenaryRestart
    SAY @112
        IF ~~ THEN GOTO RevanMercenaryExplain
END

IF ~~ THEN BEGIN RevanMercenaryExplain
    SAY @113
    IF ~~ THEN REPLY @114 GOTO RevanContract
    IF ~~ THEN REPLY @115 GOTO RevanContract
    IF ~~ THEN REPLY @116 GOTO RevanMercJobRejected
END

IF ~~ THEN BEGIN RevanContract
    SAY @117
    IF ~~ THEN REPLY @118 GOTO RevanAgreedToSeeRugos
    IF ~~ THEN REPLY @119 GOTO RevanMercJobRejected
END

IF ~~ THEN BEGIN RevanMercJobRejected
    SAY @120
    IF ~~ THEN DO
        ~SetGlobal("rqcontractMarcian","GLOBAL",2) // rejected contract
        SetGlobal("rqContractsRugosAvailable","GLOBAL",3)~ // rejected in dialogue with Revan
    EXIT
END

IF ~~ THEN BEGIN RevanAgreedToSeeRugos
    SAY @121
    IF ~~ THEN DO ~SetGlobal("rqContractsRugosAvailable","GLOBAL",3)~
        UNSOLVED_JOURNAL
            @122
        UNSOLVED_JOURNAL
            @123
        EXIT
END

// Harper first Jaheira ambush reaction
IF ~Global("rqJaheira1AmbushReaction","GLOBAL",1)~ THEN BEGIN HarperChangeOfPlans
    SAY @124
    =
    @125
    IF ~~ THEN REPLY @126 GOTO JaheiraBad
    IF ~~ THEN REPLY @127 GOTO EndingofPrattle1
    IF ~~ THEN REPLY @128 GOTO EndingofPrattle1
    IF ~~ THEN REPLY @129 GOTO JaheiraBad
END

IF ~~ THEN BEGIN JaheiraBad
    SAY @130
    IF ~~ THEN REPLY @131 GOTO EndingofPrattle1
    IF ~~ THEN REPLY @132 GOTO RevanWantsGold
END

IF ~~ THEN BEGIN RevanWantsGold
    SAY @133
    IF ~~ THEN REPLY @134 GOTO EndingofPrattle1
    IF ~~ THEN REPLY @135 GOTO EndOfJourney
END

IF ~~ THEN BEGIN EndingofPrattle1
    SAY @136
    IF ~~ THEN DO ~SetGlobal("rqJaheira1AmbushReaction","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN EndOfJourney
    SAY @137
    IF ~~ THEN
        DO ~SetGlobal("rqrevanjoined","LOCALS",0)
            EscapeAreaMove("AR0704",135,625,13)
            SetGlobal("rqJaheira1AmbushReaction","GLOBAL",2)~ EXIT
END

// Dermin death leave attempt
IF ~Global("rqJaheira4AmbushReaction","GLOBAL",1)~ THEN BEGIN DerminsEnd
    SAY @138
    IF ~~ THEN REPLY @139 GOTO YourCompany
    IF ~~ THEN REPLY @140 GOTO WhyAreYouWithMe
END

IF ~~ THEN BEGIN YourCompany
    SAY @141
    IF ~~ THEN REPLY @142 GOTO WhyAreYouWithMe
END

IF ~~ THEN BEGIN WhyAreYouWithMe
    SAY @143
    IF ~~ THEN REPLY @144 GOTO UnderstandWhyRevanIsWithYou
    IF ~~ THEN REPLY @145 GOTO CHARNAMEHasDestiny
    IF ~~ THEN REPLY @146 GOTO LeaveCharnameISMoral
END

IF ~~ THEN BEGIN UnderstandWhyRevanIsWithYou
    SAY @147
    IF ~~ THEN REPLY @148 GOTO SimilarToCharname
    IF ~~ THEN REPLY @149 GOTO ShowingLoyalty
    IF ~~ THEN REPLY @150 GOTO LeaveCharnameISMoral
END

IF ~~ THEN BEGIN CHARNAMEHasDestiny
    SAY @151
    IF ~~ THEN REPLY @152 GOTO SimilarToCharname
    IF ~~ THEN REPLY @153 GOTO ShowingLoyalty
    IF ~~ THEN REPLY @150 GOTO LeaveCharnameISMoral
END

IF ~~ THEN BEGIN ShowingLoyalty
    SAY @154
    IF ~~ THEN DO ~SetGlobal("rqJaheira4AmbushReaction","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN SimilarToCharname
    SAY @155
    IF ~~ THEN DO ~SetGlobal("rqJaheira4AmbushReaction","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN LeaveCharnameISMoral
    SAY @156
    IF ~~ THEN
        DO ~SetGlobal("rqJaheira4AmbushReaction","GLOBAL",2)
            SetGlobal("rqrevanjoined","LOCALS",0)
            EscapeArea()~
        EXIT
END
// Mintiper is dead give CHARNAME his reward
IF ~~ THEN BEGIN ProtectionContractFinished
    SAY @157
    IF ~~ THEN DO
            %EraseJournalEntry(@27)

            EraseJournalEntry(@73)

            EraseJournalEntry(~Protect Revan from assassins

            Messenger in Waukeens Promenade has passed on to me invitation to appear in northwest near stall, outside the promenade itself to discuss peace. I smell an ambush.~)

            EraseJournalEntry(@92)

            EraseJournalEntry(@105)

            EraseJournalEntry(@123)
            %
        EXTERN ~rqrugos~ Rugos1ContractProlog
END

CHAIN ~rqrevJ~ RevanVSMintiper // 16
@158
== rq5minti
@159
== rqrevJ
@160
== rq5minti
@161
== rqrevJ
@162
=
@163
== rq5minti
@164
== rqrevJ
@165
=
@166
END
IF ~~ THEN EXTERN ~rq5minti~ MintiperAttack // 17

// Belmin Gergas reaction
/*
IF ~~ THEN BEGIN RevanAnswerToBelmin
    SAY ~Dog that barks doesn't bite.~
        //IF ~~ THEN EXTERN ~BELMIN~ BelminsFinalWords
END
IF ~~ THEN EXTERN ~BELMIN~ BelminsFinalWords
*/

// InParty Prattle
CHAIN IF ~InParty("Korgan")
        See("Korgan")
        !StateCheck("Korgan",STATE_SLEEPING)
        Global("rqRevKorganBackstabs","LOCALS",0)~ THEN BKORGAN backstabs
    @167
DO ~SetGlobal("rqRevKorganBackstabs","LOCALS",1)~
== rqrevJ @168
== BKORGAN @169
EXIT

CHAIN IF ~InParty("Edwin")
        See("Edwin")
        !StateCheck("Edwin",STATE_SLEEPING)
        Global("rqRevEdwinAmul","LOCALS",0)~ THEN BEDWIN amulet
    @170
DO ~SetGlobal("rqRevEdwinAmul","LOCALS",1)~ // Here i thought it
== rqrevJ @171
== BEDWIN @172
== rqrevJ @173
== BEDWIN @174
EXIT

CHAIN IF ~InParty("Viconia")
        See("Viconia")
        !StateCheck("Viconia",STATE_SLEEPING)
        Global("rqRevViconia","LOCALS",0)~ THEN BVICONI flattery
    @175
DO ~SetGlobal("rqRevViconia","LOCALS",1)~
== rqrevJ @176
== BVICONI @177
== rqrevJ @178
== BVICONI @179
EXIT

CHAIN IF ~InParty("Keldorn")
        See("Keldorn")
        !StateCheck("Keldorn",STATE_SLEEPING)
        Global("rqRevKeldorn","LOCALS",0)~ THEN BKELDOR redemption
    @180
DO ~SetGlobal("rqRevKeldorn","LOCALS",1)~
== rqrevJ @181
== BKELDOR @182
== rqrevJ @183
== BKELDOR @184
== rqrevJ @185
== BKELDOR @186
== rqrevJ @187
== BKELDOR @188
== rqrevJ @189
== BKELDOR @190
EXIT

CHAIN IF ~InParty("Valygar")
        See("Valygar")
        !StateCheck("Valygar",STATE_SLEEPING)
        Global("rqRevValygar","LOCALS",0)~ THEN BVALYGA magepower
    @191
DO ~SetGlobal("rqRevValygar","LOCALS",1)~
== rqrevJ @192
== BVALYGA @193
== rqrevJ @194
== rqrevJ @195
== BVALYGA @196
== rqrevJ @197
== BVALYGA @198
== rqrevJ @199
== BVALYGA @200
== rqrevJ @201
EXIT

CHAIN IF ~InParty("Anomen")
        See("Anomen")
        !StateCheck("Anomen",STATE_SLEEPING)
        Global("rqRevAnomen","LOCALS",0)~ THEN BANOMEN mercleader
    @202
DO ~SetGlobal("rqRevAnomen","LOCALS",1)~
== rqrevJ @203
== rqrevJ @204
== BANOMEN @205
== rqrevJ @206
== BANOMEN @207
== rqrevJ @208
EXIT

CHAIN IF ~InParty("Cernd")
        See("Cernd")
        !StateCheck("Cernd",STATE_SLEEPING)
        Global("rqRevCernd","LOCALS",0)~ THEN BCERND herbal
    @209
DO ~SetGlobal("rqRevCernd","LOCALS",1)~
== rqrevJ @210
== BCERND @211
== rqrevJ @212
== BCERND @213
== rqrevJ @214
EXIT

CHAIN IF ~InParty("Aerie")
        See("Aerie")
        !StateCheck("Aerie",STATE_SLEEPING)
        Global("rqRevAerie","LOCALS",0)~ THEN BAERIE child
    @215
DO ~SetGlobal("rqRevAerie","LOCALS",1)~
== rqrevJ @216
== BAERIE @217
== rqrevJ @218
== BAERIE @219
EXIT

CHAIN IF ~InParty("HaerDalis")
        See("HaerDalis")
        !StateCheck("HaerDalis",STATE_SLEEPING)
        Global("rqRevHaerDalis","LOCALS",0)~ THEN BHAERDA story
    @220
DO ~SetGlobal("rqRevHaerDalis","LOCALS",1)~
== rqrevJ @221
== rqrevJ @222
== rqrevJ @223
== rqrevJ @224
== rqrevJ @225
== rqrevJ @226
== rqrevJ @227
== rqrevJ @228
== rqrevJ @229
== BHAERDA @230
== rqrevJ @231
== BHAERDA @232
EXIT

CHAIN IF ~InParty("Jaheira")
        See("Jaheira")
        !StateCheck("Jaheira",STATE_SLEEPING)
        Global("rqRevJaheira","LOCALS",0)~ THEN BJAHEIR greedymerc
    @233
DO ~SetGlobal("rqRevJaheira","LOCALS",1)~
== rqrevJ @234
== BJAHEIR @235
== rqrevJ @236
== BJAHEIR @237
EXIT

CHAIN IF ~InParty("Jan")
        See("Jan")
        !StateCheck("Jan",STATE_SLEEPING)
        Global("rqRevJansen","LOCALS",0)~ THEN BJAN janstory
    @238
DO ~SetGlobal("rqRevJansen","LOCALS",1)~
== rqrevJ @239
== BJAN @240
== rqrevJ @241
== BJAN @242
== rqrevJ @243
== rqrevJ @244
== BJAN @245
== rqrevJ @246
EXIT

CHAIN IF ~InParty("Mazzy")
        See("Mazzy")
        !StateCheck("Mazzy",STATE_SLEEPING)
        Global("rqRevMazzy","LOCALS",0)~ THEN BMAZZY evilmerc
    @247
DO ~SetGlobal("rqRevMazzy","LOCALS",1)~
== rqrevJ @248
== BMAZZY @249
== rqrevJ @250
== BMAZZY @251
== rqrevJ @252
== BMAZZY @253
EXIT

CHAIN IF ~InParty("Nalia")
        See("Nalia")
        !StateCheck("Nalia",STATE_SLEEPING)
        Global("rqRevNalia","LOCALS",0)~ THEN BNALIA naliaorigins
    @254
DO ~SetGlobal("rqRevNalia","LOCALS",1)~
== rqrevJ @255
== rqrevJ @256
== BNALIA @257
== rqrevJ @258
== BNALIA @259
== rqrevJ @260
== BNALIA @261
EXIT

CHAIN IF ~InParty("Yoshimo")
        See("Yoshimo")
        !StateCheck("Yoshimo",STATE_SLEEPING)
        Global("rqRevYoshimo","LOCALS",0)~ THEN BYOSHIM yoshiact
    @262
DO ~SetGlobal("rqRevYoshimo","LOCALS",1)~
== rqrevJ @263
== BYOSHIM @264
== rqrevJ @265
== BYOSHIM @266
== rqrevJ @267
== BYOSHIM @268
== rqrevJ @269
== BYOSHIM @270
== rqrevJ @271
== BYOSHIM @272
EXIT
