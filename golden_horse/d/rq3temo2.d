BEGIN rq3temo2

IF ~~ THEN BEGIN 4
  SAY @0
    IF ~~ THEN DO
      ~SetGlobal("rq3AmbushBattle","GLOBAL",1)
      OpenDoor("Door0901")
      Enemy()
      ActionOverride("rq3temm1",EscapeArea())
      ActionOverride("rq3temm2",EscapeArea())
      ActionOverride("rq3temp1",EscapeArea())
      //ActionOverride("rq3temo2",EscapeArea())~
    EXIT
END

//druff1.cre Ruffian Alright you and me lets go
