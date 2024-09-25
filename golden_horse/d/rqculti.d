// Sixtarch ---------------------------------------------------------------------------------------------------------

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchDivinity
== rqt0clf1 IF ~!Dead("rqt0clf1")
        !StateCheck("rqt0clf1",STATE_HELPLESS)
        !StateCheck("rqt0clf1",STATE_STUNNED)
        !StateCheck("rqt0clf1",STATE_PANIC)
        !StateCheck("rqt0clf1",STATE_BERSERK)
        !StateCheck("rqt0clf1",STATE_SLEEPING)
        !StateCheck("rqt0clf1",STATE_SILENCED)
        !StateCheck("rqt0clf1",STATE_CHARMED)
        !StateCheck("rqt0clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clf1",STATE_CONFUSED)~ THEN @0
END

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchDivinity
== rqt0clf1 IF ~!Dead("rqt0clf1")
        !StateCheck("rqt0clf1",STATE_HELPLESS)
        !StateCheck("rqt0clf1",STATE_STUNNED)
        !StateCheck("rqt0clf1",STATE_PANIC)
        !StateCheck("rqt0clf1",STATE_BERSERK)
        !StateCheck("rqt0clf1",STATE_SLEEPING)
        !StateCheck("rqt0clf1",STATE_SILENCED)
        !StateCheck("rqt0clf1",STATE_CHARMED)
        !StateCheck("rqt0clf1",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clf1",STATE_CONFUSED)~ THEN @0
END

// Itwantos ---------------------------------------------------------------------------------------------------------

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchAllyItwantos
== rqt0clf2 IF ~!Dead("rqt0clf2")
        Global("SixtarchDivinity","GLOBAL",0)
        !StateCheck("rqt0clf2",STATE_HELPLESS)
        !StateCheck("rqt0clf2",STATE_STUNNED)
        !StateCheck("rqt0clf2",STATE_PANIC)
        !StateCheck("rqt0clf2",STATE_BERSERK)
        !StateCheck("rqt0clf2",STATE_SLEEPING)
        !StateCheck("rqt0clf2",STATE_SILENCED)
        !StateCheck("rqt0clf2",STATE_CHARMED)
        !StateCheck("rqt0clf2",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clf2",STATE_CONFUSED)~ THEN @1
END

// Llergwyn ---------------------------------------------------------------------------------------------------------

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchAllyLlergwyn
== rqt0clt1 IF ~!Dead("rqt0clt1")
        Global("SixtarchDivinity","GLOBAL",0)
        Global("SixtarchAllyItwantos","GLOBAL",0)
        !StateCheck("rqt0clt1",STATE_HELPLESS)
        !StateCheck("rqt0clt1",STATE_STUNNED)
        !StateCheck("rqt0clt1",STATE_PANIC)
        !StateCheck("rqt0clt1",STATE_BERSERK)
        !StateCheck("rqt0clt1",STATE_SLEEPING)
        !StateCheck("rqt0clt1",STATE_SILENCED)
        !StateCheck("rqt0clt1",STATE_CHARMED)
        !StateCheck("rqt0clt1",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt1",STATE_CONFUSED)~ THEN @1
END

// Nalgarath ---------------------------------------------------------------------------------------------------------

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchAllyNalgarath
== rqt0clt2 IF ~Global("SixtarchDivinity","GLOBAL",0)
        Global("SixtarchAllyItwantos","GLOBAL",0)
        Global("SixtarchAllyLlergwyn","GLOBAL",0)
        !Dead("rqt0clt2")
        !StateCheck("rqt0clt2",STATE_HELPLESS)
        !StateCheck("rqt0clt2",STATE_STUNNED)
        !StateCheck("rqt0clt2",STATE_PANIC)
        !StateCheck("rqt0clt2",STATE_BERSERK)
        !StateCheck("rqt0clt2",STATE_SLEEPING)
        !StateCheck("rqt0clt2",STATE_SILENCED)
        !StateCheck("rqt0clt2",STATE_CHARMED)
        !StateCheck("rqt0clt2",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt2",STATE_CONFUSED)~ THEN @1
END

// Rengarn ---------------------------------------------------------------------------------------------------------

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchAllyRengarn
== rqt0clt3 IF ~Global("SixtarchDivinity","GLOBAL",0)
        Global("SixtarchAllyItwantos","GLOBAL",0)
        Global("SixtarchAllyLlergwyn","GLOBAL",0)
        Global("SixtarchAllyNalgarath","GLOBAL",0)
        !Dead("rqt0clt3")
        !StateCheck("rqt0clt3",STATE_HELPLESS)
        !StateCheck("rqt0clt3",STATE_STUNNED)
        !StateCheck("rqt0clt3",STATE_PANIC)
        !StateCheck("rqt0clt3",STATE_BERSERK)
        !StateCheck("rqt0clt3",STATE_SLEEPING)
        !StateCheck("rqt0clt3",STATE_SILENCED)
        !StateCheck("rqt0clt3",STATE_CHARMED)
        !StateCheck("rqt0clt3",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt3",STATE_CONFUSED)~ THEN @1
END

// Jatwalg ---------------------------------------------------------------------------------------------------------

INTERJECT_COPY_TRANS FINSOL01 27 SixtarchAllyJatwalg
== rqt0clt4 IF ~Global("SixtarchDivinity","GLOBAL",0)
        Global("SixtarchAllyItwantos","GLOBAL",0)
        Global("SixtarchAllyLlergwyn","GLOBAL",0)
        Global("SixtarchAllyNalgarath","GLOBAL",0)
        Global("SixtarchAllyRengarn","GLOBAL",0)
        !Dead("rqt0clt4")
        !StateCheck("rqt0clt4",STATE_HELPLESS)
        !StateCheck("rqt0clt4",STATE_STUNNED)
        !StateCheck("rqt0clt4",STATE_PANIC)
        !StateCheck("rqt0clt4",STATE_BERSERK)
        !StateCheck("rqt0clt4",STATE_SLEEPING)
        !StateCheck("rqt0clt4",STATE_SILENCED)
        !StateCheck("rqt0clt4",STATE_CHARMED)
        !StateCheck("rqt0clt4",STATE_FEEBLEMINDED)
        !StateCheck("rqt0clt4",STATE_CONFUSED)~ THEN @1
END




