BEGIN rq2kamra

IF ~NumTimesTalkedTo(0)~ THEN BEGIN rq2jobppl
    SAY @0
    IF ~~ THEN REPLY @1 GOTO Job2Attacked
    IF ~~ THEN REPLY @2 GOTO Job2LeaveNow
END

IF ~~ THEN BEGIN Job2LeaveNow
    SAY @3
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Job2Attacked
    SAY @4
    IF ~~ THEN DO
        ~SetGlobal("rqcontract2battle","GLOBAL",1)~
    EXIT
END

IF ~Global("rqcontract2battle","GLOBAL",0)
    ~
    THEN BEGIN Job2RepeatedTalk
    SAY @5
    IF ~~ THEN DO
        ~SetGlobal("rqcontract2battle","GLOBAL",1)~
    EXIT
END

