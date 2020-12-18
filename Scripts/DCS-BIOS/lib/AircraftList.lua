BIOS.ALL_PLAYABLE_AIRCRAFT = {}
BIOS.CLICKABLE_COCKPIT_AIRCRAFT = {}
BIOS.FLAMING_CLIFFS_AIRCRAFT = {}
local function a(name, hasClickableCockpit)
	BIOS.ALL_PLAYABLE_AIRCRAFT[#BIOS.ALL_PLAYABLE_AIRCRAFT+1] = name
	if hasClickableCockpit then
		BIOS.CLICKABLE_COCKPIT_AIRCRAFT[#BIOS.CLICKABLE_COCKPIT_AIRCRAFT+1] = name
	else
		BIOS.FLAMING_CLIFFS_AIRCRAFT[#BIOS.FLAMING_CLIFFS_AIRCRAFT+1] = name
	end
end

a("A-10C", true)
a("A-10C_2", true)
a("AJS37", true)
a("AV8BNA", true)
a("Bf-109K-4", true)
a("C-101CC", true)
a("C-101EB", true)
a("Christen Eagle II", true)
a("F-14B", true)
a("F-16C_50", true)
a("F-5E-3", true)
a("F-86F Sabre", true)
a("FA-18C_hornet", true)
a("FW-190A8", true)
a("FW-190D9", true)
a("Hawk", true)
a("I-16", true)
a("JF-17", true)
a("Ka-50", true)
a("L-39C", true)
a("L-39ZA", true)
a("M-2000C", true)
a("Mi-8MT", true)
a("MiG-15bis", true)
a("MiG-19P", true)
a("MiG-21Bis", true)
a("NS430", true)
a("P-47D-30", true)
a("P-47D-30bl1", true)
a("P-47D-40", true)
a("P-51D", true)
a("P-51D-30-NA", true)
a("SA342L", true)
a("SA342M", true)
a("SA342Minigun", true)
a("SA342Mistral", true)
a("SpitfireLFMkIX", true)
a("SpitfireLFMkIXCW", true)
a("TF-51D", true)
a("UH-1H", true)
a("Yak-52", true)
--FC3
a("A-10A", false)
a("F-15C", false)
a("F-16A", false)
a("J-11A", false)
a("MiG-29A", false)
a("MiG-29G", false)
a("MiG-29S", false)
a("Su-25", false)
a("Su-25T", false)
a("Su-27", false)
a("Su-33", false)
--Combined Arms (CA)
a("NONE", false)
--MODs
a("A-4E-C", true)
a("AC_130", false)
a("AH-6", true)
a("Alphajet", true)
a("Bell47_2", true)
a("Cessna_210N", false)
a("DC3", false)
a("EA-18G", true)
a("Edge540", true)
a("FA-18E", true)
a("FA-18F", true)
a("F-2A", false)
a("F-2B", false)
a("F-22A", false)
a("F4e", false)
a("FA_18D", false)
a("Hercules", true)
a("J-20A", false)
a("MB-339PAN", true)
a("Mig-23UB", false)
a("MirageF1", false)
a("MirageF1CT", false)
a("MQ9_PREDATOR", false)
a("Rafale_A_S", false)
a("Rafale_B", false)
a("Rafale_C", false)
a("Rafale_M", false)
a("REISEN52", false)
a("RST_Eurofighter", false)
a("RST_Eurofighter_AG", false)
a("Su-30M", false)
a("Su-30MK", false)
a("Su-30SM", false)
a("Su-57", false)
a("Super_Etendard", false)
a("T-4", false)
a("VNAO_Ready_Room", true)
a("VSN_AJS37Viggen", false)
a("VSN_C17A", false)
a("VSN_C5_Galaxy", false)
a("VSN_E2D", false)
a("VSN_Eurofighter", false)
a("VSN_Eurofighter_AG", false)
a("VSN_F104G", false)
a("VSN_F104G_AG", false)
a("VSN_F14A", false)
a("VSN_F14B", false)
a("VSN_F15E", false)
a("VSN_F15E_AA", false)
a("VSN_F16A", false)
a("VSN_F16AMLU", false)
a("VSN_F16CBL50", false)
a("VSN_F16CBL52D", false)
a("VSN_F16CMBL50", false)
a("VSN_F22", false)
a("VSN_F35A", false)
a("VSN_F35A_AG", false)
a("VSN_F35B", false)
a("VSN_F35B_AG", false)
a("VSN_F4E", false)
a("VSN_F4E_AG", false)
a("VSN_F5E", false)
a("VSN_F5N", false)
a("VSN_FA18C", false)
a("VSN_FA18C_AG", false)
a("VSN_FA18C_Lot20", false)
a("VSN_FA18F", false)
a("VSN_FA18F_AG", false)
a("VSN_Harrier", false)
a("VSN_M2000", false)
a("VSN_P3C", false)
a("VSN_TornadoGR4", false)
a("VSN_TornadoIDS", false)
a("VSN_Su47", false)
a("VSN_UFO", false)