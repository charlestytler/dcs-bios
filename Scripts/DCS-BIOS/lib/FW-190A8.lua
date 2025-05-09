BIOS.protocol.beginModule("FW-190A8", 0x3800)
BIOS.protocol.setExportModuleAircrafts({"FW-190A8"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document  

local parse_indication = BIOS.util.parse_indication

local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineTumb = BIOS.util.defineTumb
local defineFixedStepTumb = BIOS.util.defineFixedStepTumb
local defineIntegerFromGetter = BIOS.util.defineIntegerFromGetter
local defineRockerSwitch = BIOS.util.defineRockerSwitch
local definePushButton = BIOS.util.definePushButton

defineTumb("MAGNETO",2, 3004, 75, 0.3, {0,0.9}, nil, false, "Cockpit", "Magneto Switch")
defineTumb("STARTER_CVR",2, 3006, 104, 1, {0, 1}, nil, false, "Cockpit", "Starter Switch Cover")
defineTumb("STARTER_SWITCH",2, 3008, 105, 0.5, {0, 1}, nil, false, "Cockpit", "Starter Switch. Starter Power")
defineTumb("ING_MODE",2, 3013, 111, 1, {0, 1}, nil, false, "Cockpit", "Ingnition Mode Manual/Auto)")
defineTumb("FUEL_TNK_SEL",6, 3001, 90, 0.1, {0,0.3}, nil, false, "Cockpit", "Fuel Tank Selector Valve (CLOSE/FORWARD/BOTH/AFT)")
defineTumb("FUEL_GAUGE_SEL",6, 3002, 99, 0.5, {0, 1}, nil, false, "Cockpit", "Fuel Gauge Selector (FORWARD/NONE/AFT)")
defineTumb("FUEL_PRIM_PMPL",6, 3009, 162, 1, {0, 1}, nil, false,"Cockpit", "Primer Pump")
definePushButton("FUEL_CUTTOFF", 6, 3010, 91, "Cockpit", "Fuel Cutoff Handle")
definePushButton("STARTER_BRUSH", 6, 3017, 93, "Cockpit", "Retract starter brushes")
definePotentiometer("OXY_FLOW_VALVE", 4, 3003, 110,{0, 0.5},"Cockpit", "Oxygen Flow Valve")
defineTumb("OXY_EMG_KNOB",4, 3001, 190, 1, {0, 1}, nil, false, "Cockpit", "Oxygen Emergency Knob")
defineTumb("EL_KILL",1, 3075, 79, 1, {0, 1}, nil, false, "Cockpit", "Electric Kill-switch")
defineTumb("CANOPY_EMG_REL",3, 3006, 115, 1, {0, 1}, nil, false, "Cockpit", "Canopy Emergency Release Handle")
defineRotary("CANOPY_HAND_CRK",3, 3001, 114, "Cockpit", "Canopy Hand Crank")
defineTumb("THR_LOCK",2, 3011, 200, 1, {0, 1}, nil, false, "Cockpit", "Throttle Lock")
defineRotary("ALT_PRESS_SET",10, 3001, 34, "Cockpit", "Altimeter Pressure Set")
definePotentiometer("HOR_CAGE",12,3001, 39,{0.511, 1},"Cockpit", "Horizon Cage")
defineRotary("TURN_BEZ",13, 3004, 24, "Cockpit", "Turnable Bezel")
defineRotary("WND_SET",13, 3001, 25, "Cockpit", "Wind/Set Knob")
defineTumb("START_STOP",13, 3002, 26, 1, {0, 1}, nil, false, "Cockpit", "Start - Stop Button")
defineTumb("STOPWATCH",13, 3003, 28, 1, {0, 1}, nil, false, "Cockpit", "Stopwatch Button")
defineTumb("HOR_STAB_TRIM",8, 3012, 77, 1, {-1,1}, nil, false, "Cockpit", "Stabilizer Trimmer Up/Down")
defineRotary("INSTR_LGHT_CTRL",7, 3001, 78, "Cockpit", "Instrument Lights Brightness")

defineTumb("FLAPS_UP_TOGGLE",8, 3001, 62, 1, {0, 1}, nil, false, "Flaps", "Flaps Up")
defineTumb("FLAPS_TO",8, 3002, 63, 1, {0, 1}, nil, false, "Flaps", "Flaps Take Off")
defineTumb("FLAPS_LAND",8, 3003, 64, 1, {0, 1}, nil, false, "Flaps", "Flaps Landing")
defineRotary("COOL_FLAP_CTRL",8, 3013, 159, "Flaps", "Cooling Flaps Control")

defineTumb("LG_RET",8, 3005,65, 1, {0, 1}, nil, false, "Gear", "Landing Gears Retraction")
defineTumb("LG_RET_CVR",8, 3006, 66, 1, {0, 1}, nil, false, "Gear", "Landing Gears Retraction Cover")
defineTumb("LG_EXT",8, 3007,67, 1, {0, 1}, nil, false, "Gear", "Landing Gears Extending")
defineTumb("EMG_LG_REL",8, 3008, 89, 1, {0, 1}, nil, false, "Gear", "Landing Gear Emergency Release Handle")

defineRockerSwitch("PROP_PITCH", 2, 3014, 3014, 3015, 3015, 3, "Engine", "Propellor Pitch De/Increase")

defineTumb("MASTER_ARM",20, 3001, 48, 1, {0, 1}, nil, false, "Weapon Control", "Master Arm")
defineTumb("QUT_WING_ARM",20, 3020, 49, 1, {0, 1}, nil, false, "Weapon Control", "Outer Wing Guns Arm")
defineRotary("GUN1_AMM_C",20, 3003, 51, "Weapon Control", "Set Gun 1 Ammunition Count")
defineRotary("GUN2_AMM_C",20, 3005, 54, "Weapon Control", "Set Gun 2 Ammunition Count")
defineRotary("GUN3_AMM_C",20, 3007, 57, "Weapon Control", "Set Gun 3 Ammunition Count")
defineRotary("GUN4_AMM_C",20, 3009, 60, "Weapon Control", "Set Gun 4 Ammunition Count")
defineTumb("BMB_FUSE_SEL",20, 3011, 109, 0.1, {0,0.4}, nil, false, "Weapon Control", "Bomb Fusing Selector")
defineTumb("JETT_FUS_STORES",20, 3018, 92, 1, {0, 1}, nil, false, "Weapon Control", "Jettison Fuselage Stores")

defineRotary("SIGHT_BRIGHT",21, 3001, 133, "Gun Sight", "Gunsight Brightness Rheostat")
defineTumb("SIGHT_SMOKE",21, 3004, 134, 1, {0, 1}, nil, false, "Gun Sight", "Gun Sight Smoked Screen Controls")

defineTumb("CB_ORD_ON",1, 3005, 141, 1, {0, 1}, nil, false, "Circuit Breakers", "Drop Ordnance & Optional Armament Power On")
defineTumb("CB_ORD_OFF",1, 3040, 142, 1, {0, 1}, nil, false, "Circuit Breakers", "Drop Ordnance & Optional Armament Power Off")
defineTumb("CB_GUN_CAM_ON",1, 3006, 143, 1, {0, 1}, nil, false, "Circuit Breakers", "Gun Sight and Gun Camera Power On")
defineTumb("CB_GUN_CAM_OFF",1, 3041, 144, 1, {0, 1}, nil, false, "Circuit Breakers", "Gun Sight and Gun Camera Power Off")
defineTumb("CB_INSTRUMENTS_ON",1, 3007, 145, 1, {0, 1}, nil, false, "Circuit Breakers", "Instruments Power On")
defineTumb("CB_INSTRUMENTS_OFF",1, 3042, 146, 1, {0, 1}, nil, false, "Circuit Breakers", "Instruments Power Off")
defineTumb("CB_NAV_LIGHTS_ON",1, 3008, 147, 1, {0, 1}, nil, false, "Circuit Breakers", "Navigation Lights Power On")
defineTumb("CB_NAV_LIGHTS_OFF",1, 3043, 148, 1, {0, 1}, nil, false, "Circuit Breakers", "Navigation Lights Power Off")
defineTumb("CB_CABIN_LIGHTS_ON",1, 3009, 149, 1, {0, 1}, nil, false, "Circuit Breakers", "Cabin Illumination Power On")
defineTumb("CB_CABIN_LIGHTS_OFF",1, 3044, 150, 1, {0, 1}, nil, false, "Circuit Breakers", "Cabin Illumination Power Off")
defineTumb("CB_CLOTH_HEAT_ON",1, 3010, 151, 1, {0, 1}, nil, false, "Circuit Breakers", "Clothes Heating Power On")
defineTumb("CB_CLOTH_HEAT_OFF",1, 3045, 152, 1, {0, 1}, nil, false, "Circuit Breakers", "Clothes Heating Power Off")
defineTumb("CB_PITOT_HEAT_ON",1, 3011, 153, 1, {0, 1}, nil, false, "Circuit Breakers", "Pitot Heating Power On")
defineTumb("CB_PITOT_HEAT_OFF",1, 3046, 154, 1, {0, 1}, nil, false, "Circuit Breakers", "Pitot Heating Power Off")
defineTumb("CB_IGNITION_ON",1, 3012, 155, 1, {0, 1}, nil, false, "Circuit Breakers", "Ignition Power On")
defineTumb("CB_IGNITION_OFF",1, 3047, 156, 1, {0, 1}, nil, false, "Circuit Breakers", "Ignition Power Off")
defineTumb("CB_IFF_ON",1, 3013, 157, 1, {0, 1}, nil, false, "Circuit Breakers", "FuG 25a IFF Power On")
defineTumb("CB_IFF_OFF",1, 3048, 158, 1, {0, 1}, nil, false, "Circuit Breakers", "FuG 25a IFF Power Off")
defineTumb("CB_GEN_ON",1, 3014, 170, 1, {0, 1}, nil, false, "Circuit Breakers", "Generator Power On")
defineTumb("CB_GEN_OFF",1, 3049, 171, 1, {0, 1}, nil, false, "Circuit Breakers", "Generator Power Off")
defineTumb("CB_BATT_ON",1, 3015, 172, 1, {0, 1}, nil, false, "Circuit Breakers", "Battery Power On")
defineTumb("CB_BATT_OFF",1, 3050, 173, 1, {0, 1}, nil, false, "Circuit Breakers", "Battery Power Off")
defineTumb("CB_EXT_PW_ON",1, 3016, 120, 1, {0, 1}, nil, false, "Circuit Breakers", "Battery Power On")
defineTumb("CB_EXT_PW_OFF",1, 3051, 121, 1, {0, 1}, nil, false, "Circuit Breakers", "Battery Power Off")
defineTumb("CB_F_TANK_PUMP_ON",1, 3017, 123, 1, {0, 1}, nil, false, "Circuit Breakers", "Fore Tank Fuel Pump Power On")
defineTumb("CB_F_TANK_PUMP_OFF",1, 3052, 122, 1, {0, 1}, nil, false, "Circuit Breakers", "Fore Tank Fuel Pump Power Off")
defineTumb("CB_A_TANK_PUMP_ON",1, 3018, 125, 1, {0, 1}, nil, false, "Circuit Breakers", "Aft Tank Fuel Pump Power On")
defineTumb("CB_A_TANK_PUMP_OFF",1, 3053, 124, 1, {0, 1}, nil, false, "Circuit Breakers", "Aft Tank Fuel Pump Power Off")
defineTumb("CB_D_TANK_PUMP_ON",1, 3019, 127, 1, {0, 1}, nil, false, "Circuit Breakers", "Drop Tank Fuel Pump Power On")
defineTumb("CB_D_TANK_PUMP_OFF",1, 3054, 126, 1, {0, 1}, nil, false, "Circuit Breakers", "Drop Tank Fuel Pump Power Off")
defineTumb("CB_AUX_TANK_PUMP_ON",1, 3020, 129, 1, {0, 1}, nil, false, "Circuit Breakers", "Aux. Tank Fuel Pump Power On")
defineTumb("CB_AUX_TANK_PUMP_OFF",1, 3055, 128, 1, {0, 1}, nil, false, "Circuit Breakers", "Aux. Tank Fuel Pump Power Off")
defineTumb("CB_RADIO_ON",1, 3021, 174, 1, {0, 1}, nil, false, "Circuit Breakers", "FuG 16 ZY Radio Power On")
defineTumb("CB_RADIO_OFF",1, 3056, 175, 1, {0, 1}, nil, false, "Circuit Breakers", "FuG 16 ZY Radio Power Off")
defineTumb("CB_GEAR_ON",1, 3022, 176, 1, {0, 1}, nil, false, "Circuit Breakers", "Undercarriage Drives Power On")
defineTumb("CB_GEAR_OFF",1, 3057, 177, 1, {0, 1}, nil, false, "Circuit Breakers", "Undercarriage Drives Power Off")
defineTumb("CB_FLAPS_ON",1, 3023, 178, 1, {0, 1}, nil, false, "Circuit Breakers", "Landing Flaps Power On")
defineTumb("CB_FLAPS_OFF",1, 3058, 179, 1, {0, 1}, nil, false, "Circuit Breakers", "Landing Flaps Power Off")
defineTumb("CB_PROP_DRIVE_ON",1, 3024, 180, 1, {0, 1}, nil, false, "Circuit Breakers", "Prop. Pitch Drive Power On")
defineTumb("CB_PROP_DRIVE_OFF",1, 3059, 181, 1, {0, 1}, nil, false, "Circuit Breakers", "Prop. Pitch Drive Power Off")
defineTumb("CB_PROP_CONTR_ON",1, 3025, 182, 1, {0, 1}, nil, false, "Circuit Breakers", "Prop. Pitch Controls Power On")
defineTumb("CB_PROP_CONTR_OFF",1, 3060, 183, 1, {0, 1}, nil, false, "Circuit Breakers", "Prop. Pitch Controls Power Off")
defineTumb("CB_STAB_TRIM_ON",1, 3026, 184, 1, {0, 1}, nil, false, "Circuit Breakers", "Stabilizer Trim Power On")
defineTumb("CB_STAB_TRIM_OFF",1, 3061, 185, 1, {0, 1}, nil, false, "Circuit Breakers", "Stabilizer Trim Power Off")
defineTumb("CB_ART_HORIZON_ON",1, 3027, 186, 1, {0, 1}, nil, false, "Circuit Breakers", "Artificial Horizon Power On")
defineTumb("CB_ART_HORIZON_OFF",1, 3062, 187, 1, {0, 1}, nil, false, "Circuit Breakers", "Artificial Horizon Power Off")
defineTumb("CB_MOT_GEN_ON",1, 3028, 188, 1, {0, 1}, nil, false, "Circuit Breakers", "Motor-Generator Power On")
defineTumb("CB_MOT_GEN_OFF",1, 3062, 189, 1, {0, 1}, nil, false, "Circuit Breakers", "Motor-Generator Power Off")
defineTumb("CB_REP_COMP_ON",1, 3029, 191, 1, {0, 1}, nil, false, "Circuit Breakers", "Repeater Compass Power On")
defineTumb("CB_REP_COMP_OFF",1, 3063, 192, 1, {0, 1}, nil, false, "Circuit Breakers", "Repeater Compass Power Off")
defineTumb("CB_GEAR_CONT_ON",1, 3030, 196, 1, {0, 1}, nil, false, "Circuit Breakers", "Undercarriage Controls Power On")
defineTumb("CB_GEAR_CONT_OFF",1, 3064, 197, 1, {0, 1}, nil, false, "Circuit Breakers", "Undercarriage Controls Power Off")
defineTumb("CB_IFF_DEST_ON",1, 3031, 201, 1, {0, 1}, nil, false, "Circuit Breakers", "FuG 25a IFF Self-Destruct Power On")
defineTumb("CB_IFF_DEST_OFF",1, 3065, 202, 1, {0, 1}, nil, false, "Circuit Breakers", "FuG 25a IFF Self-Destruct Power Off")
defineTumb("CB_GUNS_OUT_ON",1, 3032, 214, 1, {0, 1}, nil, false, "Circuit Breakers", "Outer Wing Guns Power On")
defineTumb("CB_GUNS_OUT_OFF",1, 3066, 215, 1, {0, 1}, nil, false, "Circuit Breakers", "Outer Wing Guns Power Off")
defineTumb("CB_GUNS_IN_ON",1, 3033, 203, 1, {0, 1}, nil, false, "Circuit Breakers", "Inner Wing Guns Power On")
defineTumb("CB_GUNS_IN_OFF",1, 3067, 211, 1, {0, 1}, nil, false, "Circuit Breakers", "Inner Wing Guns Power Off")
defineTumb("CB_GUNS_COWL_ON",1, 3034, 212, 1, {0, 1}, nil, false, "Circuit Breakers", "Cowling Guns Power On")
defineTumb("CB_GUNS_COWL_OFF",1, 3068, 213, 1, {0, 1}, nil, false, "Circuit Breakers", "Cowling Guns Power Off")
defineTumb("CBR_COVER1",1, 3001,138, 1, {0, 1}, nil, false, "Circuit Breakers", "Circuit Breaker Cover 1")
defineTumb("CBR_COVER2",1, 3077,139, 1, {0, 1}, nil, false, "Circuit Breakers", "Circuit Breaker Cover 2")

defineTumb("IFF_CHAN_SEL",16, 3001, 86, 1, {-1,1}, nil, false, "IFF", "IFF Channel Selector")
defineTumb("IFF_CHECK",16, 3003,88, 1, {0, 1}, nil, false, "IFF", "IFF Check")

defineTumb("RADIO_MODE",15, 3001, 81, 0.1, {0,0.3}, nil, false, "Radio", "FuG 16ZY Radio Channel Selector")
defineTumb("RADIO_WIP",15, 3111, 80, 0.1, {0,0.3}, nil, false, "Radio", "FuG 16ZY Radio WIP")
defineRotary("FUG16_VOLUME",15, 3003, 83, "Radio", "Radio Volume")
defineTumb("FT_ZF_SWITCH",15, 3006,84, 1, {0, 1}, nil, false, "Radio", "FT FT / Y ZF Mode Switch")
defineFixedStepTumb("FUG16_TUNING", 15, 3008, 82, 0.01, {-1, 1}, {-0.01, 0.01}, nil,"Radio", "Radio Tuning (+/-30 kHz)")

defineRotary("CRS_SET",14, 3001, 43, "Compass", "Course Set")

defineRotary("CLOCK_SCALE",13, 3001, 25, "Clock", "Clock Scale")
defineRotary("CLOCK_PINION",13, 3004, 26, "Clock", "Clock Pinion")
defineTumb("CLOCK_ON_OFF",13, 3006, 27, 1, {0, 1}, nil, false, "Clock", "Clock Start / Stop")
definePushButton("CLOCK_STOPWATCH", 13, 3008, 28, "Clock", "Clock Stopwatch")


defineIndicatorLight("GUN_131_L_1",164, "Lamps", "Gun 131 Lamp  1")
defineIndicatorLight("GUN_131_L_2",165, "Lamps", "Gun 131 Lamp  2")
defineIndicatorLight("GUN_SZKK_L_1",50, "Lamps", "Gun SZKK Lamp  1")
defineIndicatorLight("GUN_SZKK_L_2",53, "Lamps", "Gun SZKK Lamp  2")
defineIndicatorLight("GUN_SZKK_L_3",56, "Lamps", "Gun SZKK Lamp  3")
defineIndicatorLight("GUN_SZKK_L_4",59, "Lamps", "Gun SZKK Lamp  4")
defineIndicatorLight("ZSK244_READY_L",160, "Lamps", "ZSK244 Ready Lamp")
defineIndicatorLight("PITOT_LAMP",107, "Lamps", "Pitot Lamp")
defineIndicatorLight("LG_L_UP",68, "Lamps", "Landing Gear Left Up")
defineIndicatorLight("LG_L_DOWN",69, "Lamps", "Landing Gear Left Down")
defineIndicatorLight("LG_R_UP",70, "Lamps", "Landing Gear Right Up")
defineIndicatorLight("LG_R_DOWN",71, "Lamps", "Landing Gear Right Down")
defineIndicatorLight("FLAPS_UP",72, "Lamps", "Flaps Up")
defineIndicatorLight("FLAPS_START",73, "Lamps", "Flaps Start")
defineIndicatorLight("FLAPS_DOWN",74, "Lamps", "Flaps Down")
defineIndicatorLight("AFN2_LAMP", 31, "Lamps", "AFN 2 Light")
defineIndicatorLight("FUEL_LOW_FWD", 101, "Lamps", "Fuel_Low_Fwd")
defineIndicatorLight("FUEL_LOW_REAR", 100, "Lamps", "Fuel_Low_Rear")

defineFloat("PANEL_SHAKE_Z", 205, {-0.8, 0.8}, "Indicator", "Panel_Shake_Z")
defineFloat("PANEL_SHAKE_Y", 204, {-0.8, 0.8}, "Indicator", "Panel_Shake_Y")
defineFloat("PANEL_ROT_X", 206, {-0.5, 0.5}, "Indicator", "Panel_Rot_X")
defineFloat("SIGHTSHAKEZ", 207, {-0.9, 0.9}, "Indicator", "SightShakeZ")
defineFloat("SIGHTSHAKEY", 208, {-0.5, 0.5}, "Indicator", "SightShakeY")
defineFloat("LAMPS_INTENSITY", 193, {0, 1}, "Indicator", "Lamps Intensity")
defineFloat("CANOPY", 194, {0, 1}, "Indicator", "Canopy")
defineFloat("CANOPY_CRANK", 114, {1.0, 0.0}, "Indicator", "Canopy Crank")
defineFloat("ENGINETHROTTLE", 2, {0, 1}, "Indicator", "Engine Throttle")
defineFloat("STICKPITCH", 7, {-1, 1}, "Indicator", "Stick Pitch")
defineFloat("STICKBANK", 8, {1, -1}, "Indicator", "Stick Bank")
defineFloat("RUDDERPOSITION", 1, {-1, 1}, "Indicator", "RudderPosition")
defineFloat("WHEEL_BRAKE_L", 102, {0, 1}, "Indicator", "Left Wheel Brake")
defineFloat("WHEEL_BRAKE_R", 103, {0, 1}, "Indicator", "Right Wheel Brake")
defineFloat("IAS", 36, {0.0, 0.1, 0.15, 0.2, 0.7, 0.75, 0.9, 1.0}, "Indicator", "IAS")
defineFloat("VERTICALSPEED", 42, {-1, 1.0}, "Indicator", "VerticalSpeed")
defineFloat("ALTIMETER_KM", 35, {0, 1}, "Indicator", "Altimeter_km")
defineFloat("ALTIMETER_M", 32, {0, 1}, "Indicator", "Altimeter_m")
defineFloat("ALTIMETER_PRESSURE", 33, {0, 1}, "Indicator", "Altimeter_Pressure")
defineFloat("HORIZON_PITCH", 37, {0.33, -0.33}, "Indicator", "Horizon_Pitch")
defineFloat("HORIZON_BANK", 38, {1.0, -1.0}, "Indicator", "Horizon_Bank")
defineFloat("TURNNEEDLE", 40, {-1, 1}, "Indicator", "TurnNeedle")
defineFloat("SLIPBALL", 41, {-1, 1}, "Indicator", "Slipball")
defineFloat("OXYGEN_PRESSURE", 112, {0, 1}, "Indicator", "Oxygen_Pressure")
defineFloat("OXYGEN_FLOW_BLINKER", 113, {0, 1}, "Indicator", "Oxygen_Flow_Blinker")
defineFloat("COMPASSHEADING", 45, {0, 1}, "Indicator", "CompassHeading")
defineFloat("COMMANDEDCOURSE", 44, {0, 1}, "Indicator", "CommandedCourse")
defineFloat("MANIFOLD_PRESSURE", 46, {0, 1}, "Indicator", "Manifold_Pressure")
defineFloat("ENGINE_RPM", 47, {0.0, 0.115, 0.28, 0.48, 0.663, 0.74, 0.84, 1.0}, "Indicator", "Engine_RPM")
defineFloat("PROP_PITCH_M", 116, {0, 1}, "Indicator", "Propeller Pitch Minute")
defineFloat("PROP_PITCH_H", 117, {0, 1}, "Indicator", "Propeller Pitch Hour")
defineFloat("COOLANT_TEMPERATURE", 96, {0.070, 1.0}, "Indicator", "Coolant_Temperature")
defineFloat("OIL_TEMPERATURE", 97, {0.070, 1.0}, "Indicator", "Oil_Temperature")
defineFloat("OIL_PRESSURE", 95, {0, 1.0}, "Indicator", "Oil_Pressure")
defineFloat("FUEL_PRESSURE", 94, {0, 1}, "Indicator", "Fuel_Pressure")
defineFloat("FUELMETER", 98, {0, 1}, "Indicator", "FuelMeter")
defineFloat("FLUOR_LIGHT", 195, {0, 1}, "Indicator", "Fluor_Light")
defineFloat("PILOT_DRAW", 540, {0, 1}, "Indicator", "pilot_draw")
defineFloat("CURRTIME_HOURS", 21, {0, 1}, "Indicator", "CurrTime_Hours")
defineFloat("CURRTIME_MINUTES", 22, {0, 1}, "Indicator", "CurrTime_Minutes")
defineFloat("CURRTIME_SECONDS", 23, {0, 1}, "Indicator", "CurrTime_Seconds")
defineFloat("CHRONO_MINUTES", 27, {0, 1}, "Indicator", "Chrono_Minutes")
defineFloat("AMMO_COUNTER_1", 52, {0, 1}, "Indicator", "Ammo_Counter_1")
defineFloat("AMMO_COUNTER_2", 55, {0, 1}, "Indicator", "Ammo_Counter_2")
defineFloat("AMMO_COUNTER_3", 58, {0, 1}, "Indicator", "Ammo_Counter_3")
defineFloat("AMMO_COUNTER_4", 61, {0, 1}, "Indicator", "Ammo_Counter_4")
defineFloat("GUN_FIRE_1", 50, {0, 1}, "Indicator", "Gun_Fire_1")
defineFloat("GUN_FIRE_2", 164, {0, 1}, "Indicator", "Gun_Fire_2")
defineFloat("GUN_FIRE_3", 165, {0, 1}, "Indicator", "Gun_Fire_3")
defineFloat("GUN_FIRE_4", 166, {0, 1}, "Indicator", "Gun_Fire_4")
defineFloat("TARGETDIST", 133, {0, 1}, "Indicator", "TargetDist")
defineFloat("TRIMMNEEDLE", 76, {-1, 1}, "Indicator", "TrimmNeedle")
defineFloat("ADF_VERTICAL", 29, {-1, 1}, "Indicator", "ADF_Vertical")
defineFloat("ADF_HORIZONT", 30, {-1, 1}, "Indicator", "ADF_Horizont")
defineFloat("WINDSHIELDDAMAGE", 209, {0, 1}, "Indicator", "WindshieldDamage")
defineFloat("CANOPYDAMAGE", 210, {0, 1}, "Indicator", "CanopyDamage")

defineTumb("STARTER_SWITCH2",2, 3009, 105, 0.5, {0, 1}, nil, false, "Cockpit", "Starter Switch. Magnetic Clutch")

defineTumb("ROCKET_MAIN_SW",20, 3022, 135, 1, {0, 1}, nil, false, "Weapon Control", "Main Rocket Switch")
defineTumb("ROCKET_EMERG_JETT",20, 3024, 140, 1, {0, 1}, nil, false, "Weapon Control", "Rocket Emergency Release")

--Externals
defineIntegerFromGetter("EXT_POSITION_LIGHT_LEFT", function()
	if LoGetAircraftDrawArgumentValue(190) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Left Position Light (red)")
defineIntegerFromGetter("EXT_POSITION_LIGHT_RIGHT", function()
	if LoGetAircraftDrawArgumentValue(191) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Right Position Light (green)")
defineIntegerFromGetter("EXT_POSITION_LIGHT_TAIL", function()
	if LoGetAircraftDrawArgumentValue(192) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Tail Position Light (White)")

defineIntegerFromGetter("EXT_WOW_TAIL", function()
	if LoGetAircraftDrawArgumentValue(1) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Tail Gear")
defineIntegerFromGetter("EXT_WOW_RIGHT", function()
	if LoGetAircraftDrawArgumentValue(4) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Right Gear")
defineIntegerFromGetter("EXT_WOW_LEFT", function()
	if LoGetAircraftDrawArgumentValue(6) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Left Gear")

BIOS.protocol.endModule()