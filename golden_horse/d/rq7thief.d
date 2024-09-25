BEGIN rq7thief

IF ~NumTimesTalkedTo(0)~ THEN BEGIN rqSending
    SAY @0
    IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @1 GOTO rqCheck1
    IF ~~ THEN REPLY @2 GOTO rqYouGoofed
    IF ~~ THEN REPLY @3 GOTO rqYouGoofed
    IF ~~ THEN REPLY @4 GOTO rqYouGoofed
END

IF ~~ THEN BEGIN rqCheck1
    SAY @5
    IF ~~ THEN REPLY @6 GOTO rqPoleaxeItIS
    IF ~CheckStatLT(Player1,12,WIS)~ THEN REPLY @7 GOTO rqPoleaxeItIS
    IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY @8 GOTO rqYouGoofed
END
//
IF ~~ THEN BEGIN rqPoleaxeItIS
    SAY @9
    =
    @10
    IF ~~ THEN REPLY @11 GOTO PoleaxeDetails
END

IF ~~ THEN BEGIN PoleaxeDetails
    SAY @12
    IF ~~ THEN REPLY @13 GOTO GoldOrNothing
    IF ~!PartyHasItem("rqhamm01")~ THEN REPLY @14 GOTO rqYouGoofed
    IF ~PartyHasItem("rqhamm01") CheckStatLT(Player1,12,WIS)~ THEN REPLY @15 GOTO BadNews
    IF ~PartyHasItem("rqhamm01") CheckStatGT(Player1,12,WIS)~ THEN REPLY @16 GOTO HammerExchange
END

IF ~~ THEN BEGIN BadNews
    SAY @17
    IF ~~ THEN GOTO rqYouGoofed
END

IF ~~ THEN BEGIN HammerExchange
    SAY @18
    IF ~PartyHasItem("rqhamm01")~ THEN REPLY @19
        DO ~TakePartyItem("rqhamm01")
        GiveItem("rqhamm02",Player1)~ GOTO TradeDone
    IF ~~ THEN REPLY @20 GOTO TradeNotDone
END

IF ~~ THEN BEGIN rqYouGoofed
    SAY @21
    IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~
        EXIT
END

IF ~~ THEN BEGIN GoldOrNothing
    SAY @22
    IF ~~ THEN REPLY @23 GOTO HammerExchange
    IF ~~ THEN REPLY @24 GOTO TradeNotDone

END

IF ~~ THEN BEGIN TradeNotDone
    SAY @25
    IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~
        EXIT
END

IF ~~ THEN BEGIN TradeDone
    SAY @26
    IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~
        EXIT
END
