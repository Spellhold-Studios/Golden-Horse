BEGIN rq4waukm

IF ~NumTimesTalkedTo(0)~
    THEN BEGIN  WaukenMessenger
    SAY @0
        IF ~~ THEN DO
            ~SetGlobal("rqwaukenambush4","GLOBAL",1)
            EscapeArea()~
            UNSOLVED_JOURNAL
            @1
        EXIT
END
