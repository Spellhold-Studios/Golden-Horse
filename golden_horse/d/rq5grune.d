// Grunesky
BEGIN rq5grune

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Job5LeaveNow
    SAY @0
    IF ~Global("GrovePoisoned","GLOBAL",1)~ THEN REPLY @1 EXTERN ~rq5paude~ Job5Contract
    IF ~Global("loganjob1","GLOBAL",1) // !CHARNAME Druid/Ranger
        !Class(Player1,DRUID_ALL)
        !Class(Player1,RANGER_ALL)~
        THEN REPLY @2 EXTERN ~rq5arcdr~ Job5FaldornNotDeadYet
    IF ~Global("loganjob1","GLOBAL",2) // CHARNAME Druid/Ranger
        OR (2)
            Class(Player1,DRUID_ALL)
            Class(Player1,RANGER_ALL)~
        THEN REPLY @3 EXTERN ~rq5arcdr~ Job5Druid
    IF ~Global("loganjob1","GLOBAL",1) // CHARNAME Druid/Ranger
        OR (2)
            Class(Player1,DRUID_ALL)
            Class(Player1,RANGER_ALL)~
        THEN REPLY @4 EXTERN ~rq5arcdr~ Job5Druid
    IF ~Global("GrovePoisoned","GLOBAL",1)~ THEN REPLY @5 EXTERN ~rq5paude~ Job5Contract
    IF ~~ THEN REPLY @6 EXTERN ~rq5paude~ Job5Contract
    IF ~~ THEN REPLY @7 EXTERN ~rq5paude~ Job5Contract
    IF ~Global("itonatold","GLOBAL",1)~ THEN REPLY @8 EXTERN ~rq5arcdr~ Job5Rakshasa
END
