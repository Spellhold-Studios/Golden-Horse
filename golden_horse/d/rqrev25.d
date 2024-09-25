BEGIN ~rqrev25~

IF ~Global("rqRevanSummoned","GLOBAL",1)~ THEN Revansummon
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("rqRevanSummoned","GLOBAL",2)~ + RevanHelpMe
IF ~~ THEN REPLY @2 DO ~SetGlobal("rqRevanSummoned","GLOBAL",2)~ + RevanNeedYourSkills
END

IF ~~ RevanNeedYourSkills
SAY @3
IF ~~ GOTO RevanHelpMe
END

IF ~~ RevanHelpMe
SAY @4
IF ~~ THEN REPLY @5 + RevanJoinMe
END

IF ~~ RevanJoinMe
SAY @6
IF ~~ THEN REPLY @7 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @8 DO ~MoveToPointNoInterrupt([2162.1490])~ EXIT
END

IF ~Global("rqRevanSummoned","GLOBAL",2)~ Revansummoned2
SAY @9
IF ~~ THEN REPLY @10 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @11 EXIT
END

BEGIN ~rqrev25P~

IF ~Global("rqKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("rqKickedOut","LOCALS",0)
      JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @14 DO ~SetGlobal("rqKickedOut","LOCALS",1)
      MoveToPointNoInterrupt([2162.1490]) Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
      !AreaCheck("AR4000")
      !AreaCheck("AR6200")~ THEN REPLY @15 DO ~SetGlobal("rqKickedOut","LOCALS",1)
      CreateVisualEffectObject("SPDIMNDR",Myself)
      Wait(2)
      MoveBetweenAreas("AR4500",[2162.1490],0)
        ~ EXIT
  IF ~!AreaCheck("AR4500")
      !AreaCheck("AR4000")
      !AreaCheck("AR6200")~ THEN REPLY @16 DO ~SetGlobal("rqKickedOut","LOCALS",1)~ GOTO 1
END

IF ~Global("rqKickedOut","LOCALS",1)~ THEN BEGIN 2
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("rqKickedOut","LOCALS",0) JoinParty()~ EXIT
  IF ~~ THEN REPLY @19 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21
  IF ~~ THEN EXIT
END

BEGIN ~rqrev25J~

// Tob reaction to ambush in forest
IF ~Global("rqRevanTobReaction1","GLOBAL",1)~ THEN BEGIN RevanTobAttackTethyrForest
    SAY @22
    IF ~~ THEN REPLY @23 GOTO RevanReiteratesHisPoint
    IF ~~ THEN REPLY @24 GOTO RevanReiteratesHisPoint
    IF ~~ THEN REPLY @25 GOTO RevanReiteratesHisPoint
    IF ~~ THEN REPLY @26 GOTO RevanReiteratesHisPoint
    IF ~~ THEN REPLY @27 GOTO RevanReiteratesHisPoint
    IF ~~ THEN REPLY @28 GOTO RevanReiteratesHisPoint
END

IF ~~ THEN BEGIN RevanReiteratesHisPoint
    SAY @29
    =
    @30
    IF ~~ THEN DO ~SetGlobal("rqRevanTobReaction1","GLOBAL",2)~ EXIT
END

// Tob reaction to ambush in saradush
IF ~Global("rqRevanTobReaction2","GLOBAL",1)~ THEN BEGIN RevanSaradushAmbush // How would she know where are you?
    SAY @31
    IF ~~ THEN GOTO RevanSaradushAmbushTeleport
END

IF ~Global("rqRevanTobReaction2","GLOBAL",1)~ THEN BEGIN RevanSaradushAmbushTeleport
    SAY @32
    IF ~~ THEN REPLY @33 GOTO RevanSaradushAmbushFinale
END

IF ~~ THEN BEGIN RevanSaradushAmbushFinale
    SAY @34
    IF ~~ THEN DO ~SetGlobal("rqRevanTobReaction2","GLOBAL",2)~ EXIT
END

// Revan answer to Volo
IF ~~ THEN BEGIN RevanAnswerToEnemies
    SAY @35
    IF ~~ THEN EXTERN ~SARVOLO~ 9
END

// Contract no against T5 deathstalkers
IF ~~ THEN BEGIN RevanT5IntroDeath
    SAY @36
    IF ~~ THEN EXTERN ~rqtrugos~ RugosT5CloakedWoman
END

IF ~~ THEN BEGIN RevanTrapT5
    SAY @37
    IF ~~ THEN EXTERN ~rqtrugos~ RugosT5Contract25000G
END

// Rugos go back to Athkatla
IF ~~ THEN BEGIN RugosT6GoBackToAmn
    SAY @38
    IF ~~ THEN EXTERN ~rqtrugos~ RugosGoesBackToAmnRevanSent
END
// Trash talk with companions
CHAIN IF ~InParty("Cernd")
        See("Cernd")
        !StateCheck("Cernd",STATE_SLEEPING)
        Global("rqRevtCernd","LOCALS",0)~ THEN rqrev25J riddle
    @39
DO ~SetGlobal("rqRevtCernd","LOCALS",1)~
== BCERND @40
== rqrev25J @41
== BCERND @42
== rqrev25J @43
== BCERND @44
== rqrev25J @45
== BCERND @46
EXIT

CHAIN IF ~InParty("Edwin")
        See("Edwin")
        !StateCheck("Edwin",STATE_SLEEPING)
        Global("rqRevtEdwin","LOCALS",0)~ THEN rqrev25J revcooperation
    @47
DO ~SetGlobal("rqRevtEdwin","LOCALS",1)~
== BEDWIN @48
== rqrev25J @49
== BEDWIN @50
== rqrev25J @51
EXIT

CHAIN IF ~InParty("Imoen")
        See("Imoen")
        !StateCheck("Imoen",STATE_SLEEPING)
        Global("rqRevtImoen","LOCALS",0)~ THEN BIMOEN2 jokesonyou
    @52
DO ~SetGlobal("rqRevtImoen","LOCALS",1)~
== rqrev25J @53
== BIMOEN2 @54
== rqrev25J @55
== BIMOEN2 @56
== rqrev25J @57
== BIMOEN2 @58
== rqrev25J @59
== BIMOEN2 @60
EXIT

CHAIN IF ~InParty("Jan")
        See("Jan")
        !StateCheck("Jan",STATE_SLEEPING)
        Global("rqRevtJansen","LOCALS",0)~ THEN BJAN25 janmerc
    @61
DO ~SetGlobal("rqRevtJansen","LOCALS",1)~
== rqrev25J @62
== BJAN25 @63
== rqrev25J @64
== BJAN25 @65
EXIT

CHAIN IF ~InParty("HaerDalis")
        See("HaerDalis")
        !StateCheck("HaerDalis",STATE_SLEEPING)
        Global("rqRevHaerDalis","LOCALS",0)~ THEN BHAERD25 story
    @66
DO ~SetGlobal("rqRevHaerDalis","LOCALS",1)~
== rqrev25J @67
== BHAERD25 @68
== rqrev25J @69
== BHAERD25 @70
== rqrev25J @71
EXIT

CHAIN IF ~InParty("Korgan")
        See("Korgan")
        !StateCheck("Korgan",STATE_SLEEPING)
        Global("rqRevKorganBackstabs","LOCALS",0)~ THEN BKORGA25 backstabs
    @72
DO ~SetGlobal("rqRevKorganBackstabs","LOCALS",1)~
== rqrev25J @73
== BKORGA25 @74
== rqrev25J @75
== BKORGA25 @76
EXIT

CHAIN IF ~InParty("Sarevok")
        See("Sarevok")
        !StateCheck("Sarevok",STATE_SLEEPING)
        Global("rqRevKorganBackstabs","LOCALS",0)~ THEN BSAREV25 backstabs
    @77
DO ~SetGlobal("rqRevKorganBackstabs","LOCALS",1)~
== rqrev25J @78
== BSAREV25 @79
== rqrev25J @80
== BSAREV25 @81
EXIT

CHAIN IF ~InParty("Valygar")
        See("Valygar")
        !StateCheck("Valygar",STATE_SLEEPING)
        Global("rqRevtValygar","LOCALS",0)~ THEN rqrev25J valygspells
    @82
DO ~SetGlobal("rqRevtValygar","LOCALS",1)~
== BVALYG25 @83
== rqrev25J @84
== BVALYG25 @85
== rqrev25J @86
== BVALYG25 @87
== rqrev25J @88
== BVALYG25 @89
== rqrev25J @90
EXIT

CHAIN IF ~InParty("Viconia")
        See("Viconia")
        !StateCheck("Viconia",STATE_SLEEPING)
        Global("rqRevtViconia","LOCALS",0)~ THEN BVICON25 flattery
    @91
DO ~SetGlobal("rqRevtViconia","LOCALS",1)~
== rqrev25J @92
== BVICON25 @93
== rqrev25J @94
== BVICON25 @95
== rqrev25J @96
EXIT


