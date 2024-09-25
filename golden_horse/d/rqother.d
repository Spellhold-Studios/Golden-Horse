I_C_T BODHI 6 RevBodhiDeal
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @0
END

I_C_T HELLJON 7 RevIrenicus
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @1
END

I_C_T HELLJON 8 RevIrenicus
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @1
END

I_C_T HELLJON 9 RevIrenicus
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @1
END

I_C_T HELLJON 10 RevIrenicus
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @1
END

INTERJECT_COPY_TRANS PLAYER1 25 RevanInHell
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @2
END

INTERJECT_COPY_TRANS FINSOL01 27 RevanDivinity
== rqrev25J IF ~IsValidForPartyDialog("rqrev")~ THEN @3
END

EXTEND_TOP FATESP 6 #1
  IF ~!Dead("rqrev")
        !InMyArea("rqrev")
        !Class("rqrev",FIGHTER_MAGE_THIEF)
        Global("rqRevanSummoned","GLOBAL",0)~ THEN REPLY @4
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
        Wait(2)
        CreateCreature("rqrev25",[1999.1228],0)
        SetGlobal("rqRevanSummoned","GLOBAL",1)~ GOTO 8
  IF ~!Dead("rqrev")
        !InMyArea("rqrev")
        Class("rqrev",FIGHTER_MAGE_THIEF)
        Global("rqRevanSummoned","GLOBAL",0)~ THEN REPLY @5
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
        Wait(2)
        CreateCreature("rqrev25",[1999.1228],0)
        SetGlobal("rqRevanSummoned","GLOBAL",1)~ GOTO 8
END
/*
APPEND PLAYER1 33
IF ~~ RevanMercenary
SAY @7
++ @8 EXTERN ~rqrevJ~ reasoning
++ @9 EXTERN ~rqrevJ~ reasoning
END
END

APPEND rqrevJ
IF ~~ reasoning
SAY @10
COPY_TRANS PLAYER1 33
END
END
*/

INTERJECT_COPY_TRANS RENFELD 3 RevanRenfeld
== rqrevJ IF ~IsValidForPartyDialog("rqrev")~ THEN @6
END


EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("rqrev")~ THEN DO ~~ GOTO RevanMercenary
END

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("rqrev")~ THEN DO ~~ GOTO RevanMercenary
END

APPEND PLAYER1
IF ~~ RevanMercenary
SAY @7
++ @8 EXTERN ~rqrevJ~ reasoning
++ @9 EXTERN ~rqrevJ~ reasoning
END
END

APPEND rqrevJ
IF ~~ reasoning
SAY @10
COPY_TRANS PLAYER1 33
END
END

// Both intejections cause bugs so they are disabled
/*
// Esslin
IF ~IsValidForPartyDialogue("rqrev")~ THEN BEGIN RevanHarperLies
    SAY ~(whispers in your ear) don't trust word of his. I know who is behind this.~ THEN EXTERN ~rq4essli~ WaukeenAmbushCourt2
END

// Anakarhysse
IF ~IsValidForPartyDialogue("rqrev")~ THEN RevanIncredulence
    SAY ~Can't believe how stupid you are.~ EXIT
END
*/

//////////////////
//              //
// Tree of Life //
//              //
//////////////////
/*
EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("Hubelpot")
Global("SC#HubTOL","GLOBAL",0)~ THEN DO ~SetGlobal("SC#HubTOL","GLOBAL",1)~ GOTO HubTOL_1
END

APPEND PLAYER1
IF ~~ HubTOL_1
SAY @64
++ @65 EXTERN SC#HubJ HubTOL_2
++ @66 EXTERN SC#HubJ HubTOL_2
END
END

APPEND SC#HubJ
IF ~~ HubTOL_2
SAY @67
COPY_TRANS PLAYER1 33
END
END
*/
