// Dubovy Archdruid
BEGIN rq5arcdr

IF ~~ THEN BEGIN Job5Rakshasa
    SAY @0
        IF ~~ THEN DO
            ~SetGlobal("rqcontractGrunelensky","GLOBAL",3)~
        EXIT
END

IF ~Dead("CEDRUID2") Dead("CEFGT01") Dead("CEFGT02")~ THEN BEGIN Job5FaldornNotDeadYet
    SAY @1
    IF ~~ THEN GOTO Job5DeadShadowDruids
END

IF ~~ THEN BEGIN Job5DeadShadowDruids
    SAY @2
    IF ~~ THEN GOTO Job5Escalation
END

IF ~~ THEN BEGIN Job5Escalation
    SAY @3
    IF ~~ THEN REPLY @4 GOTO Job5Attacked
    IF ~~ THEN REPLY @5 GOTO Job5Attacked
    IF ~~ THEN REPLY @6 GOTO Job5Attacked
END

// Dubovy Archdruid
IF ~~ THEN BEGIN Job5Druid
    SAY @7
    IF ~~ THEN REPLY @8 GOTO Job5Druid2
    IF ~~ THEN REPLY @9 GOTO Job5Druid2
END

// Dubovy Archdruid
IF ~~ THEN BEGIN Job5Druid2
    SAY @10
        IF ~~ THEN DO
            ~SetGlobal("rqcontractGrunelensky","GLOBAL",3)~
        EXIT
END

IF ~~ THEN BEGIN Job5Attacked
    SAY @11
        IF ~IsValidForPartyDialog("Cernd")~ THEN DO
            ~DisplayStringHead("Cernd",56426)  // No!  What have you done!  You have destroyed everything... this is not what I had intended!  You evil fool... who will stand with me!  This must be punished!
            LeaveParty()
            Enemy()
            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
            ActionOverride("Cernd",LeaveParty())
            ActionOverride("Cernd",Enemy())
            ActionOverride("Valygar",LeaveParty())
            ActionOverride("Valygar",Enemy())
            ActionOverride("Jaheira",LeaveParty())
            ActionOverride("Jaheira",Enemy())
            ActionOverride("Minsc",LeaveParty())
            ActionOverride("Minsc",Enemy())
            ActionOverride("Keldorn",LeaveParty())
            ActionOverride("Keldorn",Enemy())
            ActionOverride("Mazzy",LeaveParty())
            ActionOverride("Mazzy",Enemy())
            SetGlobal("rqcontract5battle","GLOBAL",1)~ // trigger other neutrals to enemies
        EXIT
        IF ~~ THEN DO
            ~ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
            ActionOverride("Cernd",LeaveParty())
            ActionOverride("Cernd",Enemy())
            ActionOverride("Valygar",LeaveParty())
            ActionOverride("Valygar",Enemy())
            ActionOverride("Jaheira",LeaveParty())
            ActionOverride("Jaheira",Enemy())
            ActionOverride("Minsc",LeaveParty())
            ActionOverride("Minsc",Enemy())
            ActionOverride("Keldorn",LeaveParty())
            ActionOverride("Keldorn",Enemy())
            ActionOverride("Mazzy",LeaveParty())
            ActionOverride("Mazzy",Enemy())
            SetGlobal("rqcontract5battle","GLOBAL",1) // trigger other neutrals to enemies
            Enemy()~
        EXIT
END
