BEGIN rqjtob2

IF ~Global("rqjaheira2tobambush","GLOBAL",1)~ THEN BEGIN rq2tob2
    SAY @0
    =
    @1
    =
    @2
    IF ~~ THEN REPLY @3 GOTO rq2jaheiraintro
END

IF ~~ THEN BEGIN rq2jaheiraintro
    SAY @4
    IF ~~ THEN REPLY @5 GOTO rq2jaheirarocky
    IF ~~ THEN REPLY @6 GOTO rq2jaheirarocky
    IF ~~ THEN REPLY @7 GOTO rq2jahieracontrol
    IF ~~ THEN REPLY @8 GOTO rq2jahieracontrol
    IF ~~ THEN REPLY @9 GOTO rq2jahamends
    IF ~~ THEN REPLY @10 GOTO rq2AccuseLevel1
    IF ~Global("hectan","GLOBAL",2) Global("lazarus","GLOBAL",2)~ THEN REPLY @11 GOTO rq2AccuseLevel2
    IF ~Dead("rqjah134")~ THEN REPLY @12 GOTO rq2AccuseLevel2
END

IF ~~ THEN BEGIN rq2jahieracontrol
    SAY @13
    IF ~~ THEN REPLY @14 GOTO rq2jahquestions
END

IF ~~ THEN BEGIN rq2jahquestions
    SAY @15
    IF ~~ THEN REPLY @16 GOTO rq2jahmalchorres
    IF ~~ THEN REPLY @17 GOTO rq2jahwhyposses
    IF ~~ THEN REPLY @18 GOTO rq2jahharpconnections
    IF ~~ THEN REPLY @19 GOTO rq2jahmalchorres
    IF ~~ THEN REPLY @20 GOTO rq2jaheiraintro
END

IF ~~ THEN BEGIN rq2jahmalchorres
    SAY @21
    IF ~~ THEN REPLY @22 GOTO rq2jahquestions
END

IF ~~ THEN BEGIN rq2jahwhyposses
    SAY @23
    IF ~~ THEN REPLY @22 GOTO rq2jahquestions
END

IF ~~ THEN BEGIN rq2jahharpconnections
    SAY @24
    IF ~~ THEN REPLY @22 GOTO rq2jahquestions
END

IF ~~ THEN BEGIN rq2AccuseLevel1
    SAY @25
    IF ~~ THEN REPLY @26 GOTO rq2jaheirarocky
    IF ~~ THEN REPLY @27 GOTO rq2jaheirarocky
    IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @28 GOTO rq2jaheirarocky
    IF ~CheckStatLT(Player1,9,INT)~ THEN REPLY @29 GOTO rq2jahieracontrol
END

IF ~~ THEN BEGIN rq2AccuseLevel2
    SAY @30
    IF ~~ THEN REPLY @31 GOTO rq2jaheirarocky
END

IF ~~ THEN BEGIN rq2jaheirarocky
    SAY @32
    =
    @33
        IF ~~ THEN DO
            ~SetGlobal("rqjaheira2tobambush","GLOBAL",2)
            Enemy()
            CreateCreatureDoor("rqfb19t",[529.663],0) // Aumar Freespirited
            CreateCreatureDoor("rqanakat",[600.622],0) // Hegri Balanced
            CreateCreatureDoor("rqs20t",[547.504],0) // Perog the Courageous
            CreateCreatureDoor("rqc26t",[511.561],0) // Prinski Prideculler
            CreateCreatureDoor("rqharpar",[520.542],0) // Agram the Comrade
            CreateCreatureDoor("rqbs21",[535.594],0) // Junthor Talesinger
            CreateCreatureDoor("rqberkrt",[594.546],0) // Leventhern Lawgiver
            CreateCreatureDoor("rqgrunt",[420.629],0) // Lessi Selfless
            CreateCreatureDoor("rqmo22t",[529.736],0) // Lestor the Adjudicator
            CreateCreatureDoor("rqpi20",[711.678],0) // Losbellon Sanctifier
            CreateCreatureDoor("rqds19",[542.777],0) // Grath Fearless
            CreateCreatureDoor("rqf4a18",[724.708],0)~ // Punisher Usshagh
        EXIT
END

IF ~~ THEN BEGIN rq2jahamends
    SAY @34
        IF ~~ THEN DO
            ~SetGlobal("rqjaheira2tobambush","GLOBAL",2)
            DisplayStringHead(Myself,31971)  // uses a wand
            ReallyForceSpellRES("rqmaze",Player1) // ApplySpell(Player1,rqmaze)
            Enemy()
            CreateCreatureDoor("rqfb19t",[529.663],0) // Aumar Freespirited
            CreateCreatureDoor("rqanakat",[600.622],0) // Hegri Balanced
            CreateCreatureDoor("rqs20t",[547.504],0) // Perog the Courageous
            CreateCreatureDoor("rqc26t",[511.561],0) // Prinski Prideculler
            CreateCreatureDoor("rqharpar",[520.542],0) // Agram the Comrade
            CreateCreatureDoor("rqbs21",[535.594],0) // Junthor Talesinger
            CreateCreatureDoor("rqberkrt",[594.546],0) // Leventhern Lawgiver
            CreateCreatureDoor("rqgrunt",[420.629],0) // Lessi Selfless
            CreateCreatureDoor("rqmo22t",[529.736],0) // Lestor the Adjudicator
            CreateCreatureDoor("rqpi20",[711.678],0) // Losbellon Sanctifier
            CreateCreatureDoor("rqds19",[542.777],0) // Grath Fearless
            CreateCreatureDoor("rqf4a18",[724.708],0)~ // Punisher Usshagh
        EXIT
END
