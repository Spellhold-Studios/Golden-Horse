// belmins reaction
/*
EXTEND_BOTTOM BELMIN 0
    IF ~See("rqrev")
    Inparty("rqrev")
    !StateCheck("rqrev",STATE_SLEEPING)
    Global("belminrevan","AR0700",0)
    ~
    THEN GOTO BelminIntro

END

APPEND BELMIN
    IF ~~ THEN BEGIN BelminIntro
        SAY ~You! Vile and prideful! You dare to enter the city?!~
            IF ~~ THEN DO ~SetGlobal("belminrevan","AR0700",1)~ GOTO BelminDisbelief
    END

    IF ~~ THEN BEGIN BelminDisbelief
        SAY ~You! ELF! ARE YOU LISTENING TO ME?!~
            IF ~~ THEN EXTERN ~rqrevJ~ RevanAnswerToBelmin
    END

//    IF ~Global("belminrevan","AR0700",1)~ THEN BEGIN RevanAnswerToBelmin
//        SAY ~Dog that barks doesn't bite.~
//            IF ~~ THEN EXTERN ~BELMIN~ BelminsFinalWords
//    END

    IF ~~ THEN BEGIN RevanAnswer
        SAY ~Dog that barks doesn't bite.~
            IF ~~ THEN EXTERN ~BELMIN~ BelminsFinalWords
    END

    IF ~~ THEN BEGIN BelminsFinalWords
        SAY ~YOU SHALL PAY FOR YOUR SINS ELF FILTH!!!~
        IF ~~ THEN DO
        ~Enemy()
        Attack("rqrev")~
        EXIT
    END
END
*/

/*
EXTEND_BOTTOM BELMIN 0

    IF ~See("rqrev")
    Inparty("rqrev")
    !StateCheck("rqrev",STATE_SLEEPING)
    Global("belminrevan","AR0700",0)
    ~
    THEN GOTO BelminIntro
END

APPEND BELMIN

    CHAIN ~BELMIN~ BelminIntro
        ~You! Vile and prideful elf! You dare to enter the city?!~
        == BELMIN
        ~You! ELF! ARE YOU LISTENING TO ME?!~
        == rqrevJ
        ~Dog that barks doesn't bite.~
        == BELMIN
        ~I BELMIN GERGAS SHALL MAKE YOU PAY FOR YOUR SINS ELF FILTH!!!~
        IF ~~ THEN DO
            ~Enemy()
            Attack("rqrev")~
    EXIT
END
*/




