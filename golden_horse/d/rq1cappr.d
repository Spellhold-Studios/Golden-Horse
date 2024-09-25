BEGIN rq1cappr

CHAIN
IF ~True()
    InParty("rqrev")
    See("rqrev")
    !StateCheck("rqrev",STATE_SLEEPING)
    Global("rqPranglGroupAmbush1","GLOBAL",0)
    ~
    THEN ~rq1cappr~ RevanPranglIntro
@0
==rqrevJ
@1
==rq1cappr
@2
==rqrevJ
@3
==rq1cappr
@4
==rqrevJ
@5
==rq1cappr
@6
=
@7
=
@8
END
    IF ~~ THEN REPLY @9 GOTO PranglRespect
    IF ~~ THEN REPLY @10 GOTO PranglThinksYouAreAnIdiot
    IF ~~ THEN REPLY @11 GOTO PranglRespect
    IF ~~ THEN REPLY @12 GOTO PranglThinksYouAreAnIdiot

CHAIN rq1cappr PranglRespect
@13
    DO
        ~Enemy()
        SetGlobal("rqPranglGroupAmbush1","GLOBAL",1)
        SetGlobal("rq1AmbushBattle","GLOBAL",1)~
EXIT

CHAIN rq1cappr PranglThinksYouAreAnIdiot
@14
    DO
        ~Enemy()
        SetGlobal("rqPranglGroupAmbush1","GLOBAL",1)
        SetGlobal("rq1AmbushBattle","GLOBAL",1)~
EXIT
