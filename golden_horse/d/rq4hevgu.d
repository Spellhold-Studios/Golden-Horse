BEGIN rq4hevgu

IF ~True()~ THEN BEGIN rq4jobppl
    SAY @0
    IF ~~ THEN REPLY @1 GOTO Job4Details
    IF ~~ THEN REPLY @2 GOTO Job4LeaveNow
    IF ~~ THEN REPLY @3 GOTO Job4Attacked
END

IF ~~ THEN BEGIN Job4LeaveNow
    SAY @4
        IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Job4Details
    SAY @5
    IF ~~ THEN REPLY @6 GOTO Job4DetailsFollowUp
END

IF ~~ THEN BEGIN Job4DetailsFollowUp
    SAY @7
        IF ~~ THEN GOTO Job4Attacked // DO ~SetGlobal("rqcontract4battle","GLOBAL",1)~
END

IF ~~ THEN BEGIN Job4Attacked
    SAY @8
        IF ~IsValidForPartyDialog("Myself")~ THEN DO
            ~SetGlobal("rqcontract4battle","GLOBAL",1)
            DisplayStringHead("Minsc",3171) // NOOOOO!!!  Such a vile act will not go unpunished!  Minsc will see this paladin's heart avenged!  Boo shall burrow through your black little souls!
            PlaySound("MINSC54")
            LeaveParty()
            Enemy()
            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
            ActionOverride("Valygar",LeaveParty())
            ActionOverride("Valygar",Enemy())
            ActionOverride("Jaheira",LeaveParty())
            ActionOverride("Jaheira",Enemy())
            ActionOverride("Keldorn",LeaveParty())
            ActionOverride("Keldorn",Enemy())
            ActionOverride("Mazzy",LeaveParty())
            ActionOverride("Mazzy",Enemy())
            ActionOverride("Anomen",LeaveParty())
            ActionOverride("Anomen",Enemy())~
        EXIT
        IF ~IsValidForPartyDialog("Anomen")~ THEN DO
            ~SetGlobal("rqcontract4battle","GLOBAL",1)
            DisplayStringHead("Anomen",25542) // Nooo!!  You vile dog!  I shall cut out your black heart for this!
            LeaveParty()
            Enemy()
            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
            ActionOverride("Valygar",LeaveParty())
            ActionOverride("Valygar",Enemy())
            ActionOverride("Jaheira",LeaveParty())
            ActionOverride("Jaheira",Enemy())
            ActionOverride("Minsc",LeaveParty())
            ActionOverride("Minsc",Enemy())
            ActionOverride("Keldorn",LeaveParty())
            ActionOverride("Keldorn",Enemy())
            ActionOverride("Mazzy",LeaveParty())
            ActionOverride("Mazzy",Enemy())~
        EXIT
        IF ~IsValidForPartyDialog("Mazzy")~ THEN DO
            ~SetGlobal("rqcontract4battle","GLOBAL",1)
            DisplayStringHead("Mazzy",40492)  // No!  You... you can't do this!
            LeaveParty()
            Enemy()

            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
            ActionOverride("Valygar",LeaveParty())
            ActionOverride("Valygar",Enemy())
            ActionOverride("Jaheira",LeaveParty())
            ActionOverride("Jaheira",Enemy())
            ActionOverride("Minsc",LeaveParty())
            ActionOverride("Minsc",Enemy())
            ActionOverride("Keldorn",LeaveParty())
            ActionOverride("Keldorn",Enemy())
            ActionOverride("Anomen",LeaveParty())
            ActionOverride("Anomen",Enemy())~
        EXIT
        IF ~IsValidForPartyDialog("Aerie")~
            THEN DO
            ~SetGlobal("rqcontract4battle","GLOBAL",1)
            DisplayStringHead("Aerie",56235)  // No! What are you doing?!
            LeaveParty()
            Enemy()
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
            ActionOverride("Anomen",LeaveParty())
            ActionOverride("Anomen",Enemy())~
        EXIT
        IF ~IsValidForPartyDialog("Keldorn")~
            THEN DO
            ~SetGlobal("rqcontract4battle","GLOBAL",1)
            DisplayStringHead("Keldorn",29435)  // NOOOOOO!!
            LeaveParty()
            Enemy()
            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
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
            ActionOverride("Anomen",LeaveParty())
            ActionOverride("Anomen",Enemy())~
        EXIT
        IF ~!IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Mazzy") !IsValidForPartyDialog("Anomen") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Keldorn")~
            THEN DO
            ~SetGlobal("rqcontract4battle","GLOBAL",1)
            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
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
            ActionOverride("Anomen",LeaveParty())
            ActionOverride("Anomen",Enemy())~
        EXIT
END
