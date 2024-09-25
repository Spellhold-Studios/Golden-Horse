BEGIN rqjah134

IF  ~NumTimesTalkedTo(0)~
    THEN BEGIN rq1tob1 // jaheira
    SAY @0
    IF ~~ THEN GOTO rq1tob2
END

IF ~~ THEN BEGIN rq1tob2 // ribald
    SAY @1
    IF ~~ THEN EXTERN ~rqriba~ rqriba3
END

// jaheira to cowled wizards
IF ~~ THEN BEGIN rq1tob8
    SAY @2
    IF ~~ THEN REPLY @3 EXTERN ~rqcowl~ rq1tob9
END

IF ~~ THEN BEGIN rq1tob4 // jaheira to shadow thieves
    SAY @4
    IF ~~ THEN REPLY @5 EXTERN ~rqmonliq~ rq1tob5 // Montin Liq'var
END

BEGIN rqriba

IF ~~ THEN BEGIN rqriba3 // ribald
    SAY @6
        IF ~~ THEN
            DO
                ~ApplySpell(Myself,WIZARD_HASTE)  // SPWI305.SPL (Haste)
                // ApplySpellRES("runrun",Myself)  // No such index
                EscapeArea()~
            EXTERN ~rqjah134~ rq1tob4
END

BEGIN rqmonliq

IF ~~ THEN BEGIN rq1tob5
    SAY @7
    IF ~Dead("aran")~ THEN REPLY @8 GOTO rq1tob7
    IF ~!Dead("aran") ReputationLT(Player1,7) ~ THEN REPLY @9 GOTO rq1tob7
    IF ~~ THEN REPLY @10 GOTO rq1tob6
    IF ~~ THEN REPLY @11 GOTO rq1tob6
    IF ~~ THEN REPLY @12 GOTO rq1tob6
    IF ~~ THEN REPLY @13 GOTO rq1tob6
    IF ~~ THEN REPLY @14 GOTO rq1tob6
END

IF ~~ THEN BEGIN rq1tob6
    SAY @15
        IF ~~ THEN DO
            ~SetGlobal("rqjahtob1shadowthieves","GLOBAL",1)
            Enemy()
            ActionOverride("rqvvsa",Enemy())
            ActionOverride("rqstde",Enemy())~
        EXTERN ~rqjah134~ rq1tob8
END

IF ~~ THEN BEGIN rq1tob7
    SAY @16
    IF ~~ THEN DO
            ~DropInventory()
            EscapeArea()
            ActionOverride("rqvvsa",DropInventory())
            ActionOverride("rqvvsa",EscapeArea())
            ActionOverride("rqstde",DropInventory())
            ActionOverride("rqstde",EscapeArea())~ // all thieves to drop inventoryrqvv
        EXTERN ~rqjah134~ rq1tob8
END

BEGIN rqcowl

IF ~~ THEN BEGIN rq1tob9
    SAY @17
    IF ~Global("BribedCowled","GLOBAL",1)~ THEN REPLY @18 GOTO rq1tob11
    IF ~Global("BribedCowled","GLOBAL",0)~ THEN REPLY @19 GOTO rq1tob10
    IF ~Dead("mage18z")~ THEN REPLY @20 GOTO rq1tob10
    IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @21 GOTO rq1tob10
    IF ~~ THEN REPLY @22 GOTO rq1tob11
END

IF ~~ THEN BEGIN rq1tob10
    SAY @23
        // SetGlobal("rqjahtob1cowledwizards","GLOBAL",1)
        IF ~~ THEN DO
        ~Enemy()
        ActionOverride("rqcowl2",Enemy())
        ActionOverride("rqcenf1",Enemy())
        ActionOverride("rqcenf2",Enemy())
        ActionOverride("rqcenf3",Enemy())
        ActionOverride("rqcenf4",Enemy())~
            EXTERN ~rqbael~ rq1tob12
END

IF ~~ THEN BEGIN rq1tob11
    SAY @24
        IF ~~ THEN DO
        ~EscapeArea()
        ActionOverride("rqcowl2",EscapeArea())
        ActionOverride("rqcenf1",EscapeArea())
        ActionOverride("rqcenf2",EscapeArea())
        ActionOverride("rqcenf3",EscapeArea())
        ActionOverride("rqcenf4",EscapeArea())~
            //EXTERN ~rqbael~ rq1tob12
            EXTERN ~rqbar30a~ BlutdurstReaction
END

BEGIN rqbar30a

IF ~~ THEN BEGIN BlutdurstReaction
    SAY @25
    IF ~~ THEN EXTERN ~rqbael~ rq1tob12
END

BEGIN rqbael

IF ~~ THEN BEGIN rq1tob12
    SAY @26
    IF ~Dead("sudemin")~ THEN REPLY @27 GOTO rq1tob13
    IF ~Dead("sudemin")~ THEN REPLY @28 GOTO rq1tob13
    IF ~Dead("sudemin")~ THEN REPLY @29 GOTO rq1tob13
    IF ~!Dead("sudemin")~ THEN REPLY @30 GOTO rq1tob14
    IF ~!Dead("sudemin")~ THEN REPLY @31 GOTO rq1tob14
    IF ~!Dead("sudemin")~ THEN REPLY @29 GOTO rq1tob14
END

IF ~~ THEN BEGIN rq1tob13
    SAY @32
    IF ~~ THEN REPLY @33 GOTO rq1tobDeadDeminAnswer
    IF ~~ THEN REPLY @34 GOTO rq1tob14
    IF ~~ THEN REPLY @35 GOTO rq1tobDeadDeminAnswer
    IF ~~ THEN REPLY @36 GOTO rq1tob15
END

IF ~~ THEN BEGIN rq1tob15
    SAY @37
        IF ~~ THEN DO
        ~Enemy()
        ActionOverride("rqc6elf3",Enemy())
        ActionOverride("rqc6elf1",Enemy())
        ActionOverride("rqc6elf2",Enemy())
        ActionOverride("rqc6elf4",Enemy())
        ActionOverride("rqc6gen",Enemy())
        ActionOverride("rqf27",Enemy())
        ActionOverride("Keldorn",LeaveParty())
        ActionOverride("Keldorn",Enemy())
        ActionOverride("Aerie",LeaveParty())
        ActionOverride("Aerie",Enemy())
        ActionOverride("Mazzy",LeaveParty())
        ActionOverride("Mazzy",Enemy())
        ActionOverride("Minsc",LeaveParty())
        ActionOverride("Minsc",Enemy())
        ActionOverride("Valygar",LeaveParty())
        ActionOverride("Valygar",Enemy())~
        GOTO ElvesAttack
END

IF ~~ THEN BEGIN ElvesAttack
    SAY @38
    IF ~Global("rqPaladinWoodwille","GLOBAL",1)~ THEN EXTERN ~rqwoodw~ WoodwilleIntro
    IF ~Global("rqPaladinAlThon","GLOBAL",1)~ THEN EXTERN ~rqwill~ rq1tob16
END

IF ~~ THEN BEGIN rq1tob14
    SAY @39
        IF ~~ THEN DO
        ~Enemy()
        ActionOverride("rqc6elf3",EscapeArea())
        ActionOverride("rqc6elf1",EscapeArea())
        ActionOverride("rqc6elf2",EscapeArea())
        ActionOverride("rqc6elf4",EscapeArea())
        ActionOverride("rqc6gen",EscapeArea())
        ActionOverride("rqf27",EscapeArea())~
        GOTO ElvesLeave
END

IF ~~ THEN BEGIN rq1tobDeadDeminAnswer
    SAY @40
        IF ~~ THEN DO
        ~EscapeArea()
        ActionOverride("rqc6elf3",EscapeArea())
        ActionOverride("rqc6elf1",EscapeArea())
        ActionOverride("rqc6elf2",EscapeArea())
        ActionOverride("rqc6elf4",EscapeArea())
        ActionOverride("rqc6gen",EscapeArea())
        ActionOverride("rqf27",EscapeArea())~
        GOTO ElvesLeave
END

IF ~~ THEN BEGIN ElvesLeave
    SAY @41
    IF ~Global("rqPaladinWoodwille","GLOBAL",1)~ THEN EXTERN ~rqwoodw~ WoodwilleIntro
    IF ~Global("rqPaladinAlThon","GLOBAL",1)~ THEN EXTERN ~rqwill~ rq1tob16
END

BEGIN rqwoodw

IF ~~ THEN BEGIN WoodwilleIntro
    SAY @42
    =
    @43
        IF ~~ THEN
        DO
        ~Enemy()
        ActionOverride("rqwoodw",Enemy())
        ActionOverride("rqnevill",Enemy())
        ActionOverride("rqstaf",Enemy())
        ActionOverride("rqhoward",Enemy())
        ActionOverride("rqbeauf",Enemy())
        ActionOverride("rqtalbot",Enemy())
        ActionOverride("rqjah134",Enemy())
        ActionOverride("rqbar30a",Enemy())
        ActionOverride("rqs20",Enemy())
        ActionOverride("rqc26",Enemy())
        ActionOverride("rqd18",Enemy())
        ActionOverride("Keldorn",LeaveParty())
        ActionOverride("Keldorn",Enemy())
        ActionOverride("Aerie",LeaveParty())
        ActionOverride("Aerie",Enemy())
        ActionOverride("Mazzy",LeaveParty())
        ActionOverride("Mazzy",Enemy())
        ActionOverride("Minsc",LeaveParty())
        ActionOverride("Minsc",Enemy())
        ActionOverride("Anomen",LeaveParty())
        ActionOverride("Anomen",Enemy())
        ActionOverride("Valygar",LeaveParty())
        ActionOverride("Valygar",Enemy())~
        EXIT
END

BEGIN rqwill

IF ~~ THEN BEGIN rq1tob16
    SAY @44
    IF ~Dead("rqinqhev")~ THEN GOTO rqAccusation1
    IF ~Dead("kayl2")~ THEN GOTO rqAccusation2
    IF ~Dead("hprelate")~ THEN GOTO rqAccusation3
    IF ~Dead("dawnmas")~ THEN GOTO rqAccusation4
    IF ~Dead("rqinqhev") Dead("kayl2")~ THEN GOTO rqAccusation5
    IF ~Dead("rqinqhev") Dead("hprelate")~ THEN GOTO rqAccusation6
    IF ~Dead("rqinqhev") Dead("dawnmas")~ THEN GOTO rqAccusation7
    IF ~Dead("kayl2") Dead("hprelate")~ THEN GOTO rqAccusation8
    IF ~Dead("hprelate") Dead("kayl2")~ THEN GOTO rqAccusation9
    IF ~Dead("rqinqhev") Dead("dawnmas")~ THEN GOTO rqAccusation10
    IF ~Dead("hprelate") Dead("dawnmas")~ THEN GOTO rqAccusation11
    IF ~Dead("rqinqhev") Dead("kayl2") Dead("hprelate")~ THEN GOTO rqAccusation12
    IF ~Dead("rqinqhev") Dead("kayl2") Dead("dawnmas")~ THEN GOTO rqAccusation13
    IF ~Dead("rqinqhev") Dead("hprelate") Dead("dawnmas")~ THEN GOTO rqAccusation14
    IF ~Dead("kayl2") Dead("hprelate") Dead("dawnmas")~ THEN GOTO rqAccusation15
    IF ~Dead("rqinqhev") Dead("kayl2") Dead("hprelate") Dead("dawnmas")~ THEN GOTO rqAccusation16
    IF ~OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1,MASK_GENEUTRAL) ReputationGT(Player1,9)~ THEN GOTO rq1tob18
    IF ~OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1,MASK_GENEUTRAL) ReputationLT(Player1,10)~ THEN GOTO rqProtagonistNotEvilButLowRep
    IF ~Alignment(Player1,MASK_EVIL) ReputationGT(Player1,9)~ THEN GOTO rqProtagonistEvilButGoodRep
    IF ~Alignment(Player1,MASK_EVIL) ReputationLT(Player1,10)~ THEN GOTO rq1tob17
END

IF ~~ THEN BEGIN rqAccusation1
    SAY @45
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation2
    SAY @46
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation3
    SAY @47
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation4
    SAY @48
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation5
    SAY @49
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation6
    SAY @50
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation7
    SAY @51
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation8
    SAY @52
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation9
    SAY @53
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation10
    SAY @51
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation11
    SAY @53
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation12
    SAY @54
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation13
    SAY @55
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation14
    SAY @56
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation15
    SAY @57
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqAccusation16
    SAY @58
    IF ~~ THEN GOTO rqDeadPeople
END

IF ~~ THEN BEGIN rqDeadPeople
    SAY @59
    IF ~~ THEN REPLY @60 GOTO rq1tob17
    IF ~~ THEN REPLY @61 GOTO rq1tob17
    IF ~~ THEN REPLY @62 GOTO rq1tob17
    IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @63 GOTO rq1tob17
    IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @64 GOTO rq1tob17
END

IF ~~ THEN BEGIN rqProtagonistNotEvilButLowRep
    SAY @65
    IF ~~ THEN GOTO rq1tob17
END

IF ~~ THEN BEGIN rqProtagonistEvilButGoodRep
    SAY @66
    IF ~~ THEN GOTO rq1tob18
END

// Global("Talonwar","GLOBAL",2)
// Global("rqcontractHevguris","GLOBAL",3)

IF ~~ THEN BEGIN rq1tob17
    SAY @67
        IF ~~ THEN DO
            ~Enemy()
            ActionOverride("rqalex",Enemy())
            //ActionOverride("rqwill",Enemy())
            ActionOverride("rqalhe",Enemy())
            ActionOverride("rqkenda",Enemy())
            ActionOverride("rqryan",Enemy())
            ActionOverride("rqjolu",Enemy())
            ActionOverride("rqjah134",Enemy())
            ActionOverride("rqbar30a",Enemy())
            ActionOverride("rqs20",Enemy())
            ActionOverride("rqc26",Enemy())
            ActionOverride("rqd18",Enemy())
            ActionOverride("Keldorn",LeaveParty())
            ActionOverride("Keldorn",Enemy())
            ActionOverride("Aerie",LeaveParty())
            ActionOverride("Aerie",Enemy())
            ActionOverride("Mazzy",LeaveParty())
            ActionOverride("Mazzy",Enemy())
            ActionOverride("Minsc",LeaveParty())
            ActionOverride("Minsc",Enemy())
            ActionOverride("Anomen",LeaveParty())
            ActionOverride("Anomen",Enemy())
            ActionOverride("Valygar",LeaveParty())
            ActionOverride("Valygar",Enemy())~
        EXIT
END

IF ~~ THEN BEGIN rq1tob18
    SAY @68
        IF ~~ THEN DO// EscapeArea()
            ~EscapeArea()
            ActionOverride("rqalex",EscapeArea())
            //ActionOverride("rqwill",EscapeArea())
            ActionOverride("rqalhe",EscapeArea())
            ActionOverride("rqkenda",EscapeArea())
            ActionOverride("rqryan",EscapeArea())
            ActionOverride("rqjolu",EscapeArea())
            ActionOverride("rqjah134",Enemy())
            ActionOverride("rqbar30a",Enemy())
            ActionOverride("rqs20",Enemy())
            ActionOverride("rqc26",Enemy())
            ActionOverride("rqd18",Enemy())~
        EXIT
END
