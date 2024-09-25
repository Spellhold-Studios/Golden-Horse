// Ribald ambush Pentarch theatre
EXTEND_BOTTOM AMCARRAS 3
    IF ~Dead("amsaemon")~ THEN REPLY @0 GOTO SaemonDead
END

APPEND AMCARRAS

    IF ~~ THEN BEGIN SaemonDead
        SAY @1
        IF ~~ THEN REPLY @2 GOTO 10
        IF ~~ THEN REPLY @3
            DO ~SetGlobalTimer("ThievesScoot","AR5504",ONE_DAY)~ EXIT
    END
END

/*
    IF ~~ THEN BEGIN CarrasEscapes
        SAY ~*Pulls out bag* We gathered most valuable things here just leave us alone.~
        IF ~~ THEN
            DO
                ~ReallyForceSpell(Myself,DRYAD_TELEPORT)
                GiveItemCreate("rqbag01")~
    END
*/



