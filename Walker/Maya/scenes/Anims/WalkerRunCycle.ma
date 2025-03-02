//Maya ASCII 2024 scene
//Name: WalkerRunCycle.ma
//Last modified: Tue, Feb 11, 2025 01:24:52 PM
//Codeset: 1252
file -rdi 1 -ns "BigWalker" -rfn "BigWalkerRN" -op "v=0;" -typ "mayaAscii" "D:/GitRepos/3DCharacters/Walker/Maya/scenes/Big/BigWalker.ma";
file -r -ns "BigWalker" -dr 1 -rfn "BigWalkerRN" -op "v=0;" -typ "mayaAscii" "D:/GitRepos/3DCharacters/Walker/Maya/scenes/Big/BigWalker.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -dataType "xgmGuideData" -dataType "igmDescriptionData" -dataType "xgmSplineData"
		 -dataType "xgmMeshData" -dataType "xgmSplineTweakData" -dataType "xgmSplineBoundInfoData"
		 -dataType "xgmGuideRefData" "xgenToolkit" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.6.01";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26120)";
fileInfo "UUID" "E18D7978-4DC4-95CA-5EFC-8DA828C6F11A";
createNode transform -s -n "persp";
	rename -uid "7D2E20DC-4E96-3CB5-D8E5-189F2A867703";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -59.255061894322239 8.166234119695126 2.1651491045636124 ;
	setAttr ".r" -type "double3" -0.93835272947435333 269.7999999999808 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EAC2D285-4582-04D2-4F7E-2BB186417911";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 58.127329971784413;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.37770187273695399 10.944400974292938 2.6325183942717731 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EEBFA484-427D-9613-9DE1-CCAB195AB3F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FD74E13A-4CA0-3CB9-B155-C0920DE7192A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B0D28569-4F87-BD4D-A6D4-02B1A9C7ACCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4726973730605302 6.2729990636155533 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0F719D2B-4B4D-61D8-1C41-7EBBA896CB8F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 34.546648493539472;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "28E780C4-482C-C669-6E2F-6A88791938EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 5.9730201982361226 0.61507072979548294 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CFBA15BE-41B8-3A56-705C-BDB2A7C8435A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 38.011371101360766;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "82BD5039-4BB5-9CD0-415C-72A5ECA96AA4";
	setAttr -s 54 ".lnk";
	setAttr -s 54 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "DED46B10-4F6D-96AD-114F-778B05AB5868";
createNode displayLayer -n "defaultLayer";
	rename -uid "65E39E05-4527-1005-3D89-5EB359D9BC06";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "16538142-4001-A4A7-5B7E-39AC71384AB6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "80A35124-47D9-90AD-68A4-BA853309FD6C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E8F9D944-4364-FC97-6244-7D818FC9B196";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7800F14C-4712-C9BA-D2F2-82B81ACD7326";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F610BFE7-4F45-4D96-BF3C-47A42473F777";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B378CF47-45E9-52DE-0F99-F28B8C3DC5EA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "8AB6812D-4628-26C8-D804-05819AD4B444";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "F0192ACA-4477-F94C-672A-55B15CDF34BD";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "BigWalkerRN";
	rename -uid "58936590-4F17-A097-E481-7F9FECDF86C6";
	setAttr -s 46 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"BigWalkerRN"
		"BigWalkerRN" 5
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Eye_Ctrl_Grp|BigWalker:Eye_Ctrl" 
		"visibility" " 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Eye_Ctrl_Grp|BigWalker:Eye_Ctrl|BigWalker:L_Eye_Ctrl_Grp|BigWalker:L_Eye_Ctrl" 
		"visibility" " 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Eye_Ctrl_Grp|BigWalker:Eye_Ctrl|BigWalker:R_Eye_Ctrl_Grp|BigWalker:R_Eye_Ctrl" 
		"visibility" " 0"
		2 "|BigWalker:aiSkyDomeLight1" "visibility" " 0"
		2 "|BigWalker:aiSkyDomeLight1" "translate" " -type \"double3\" 0 0 0"
		"BigWalkerRN" 97
		2 "|BigWalker:HairBase" "visibility" " 0"
		2 "|BigWalker:Hair_Desc_splineDescription" "visibility" " 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"L_Arm_IKFK" " -k 1 1"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"R_Arm_IKFK" " -k 1 1"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"L_Leg_IKFK" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"R_Leg_IKFK" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:COG_Ctrl_Grp|BigWalker:COG_Ctrl" 
		"translate" " -type \"double3\" 0 -1.22705833090576166 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:COG_Ctrl_Grp|BigWalker:COG_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Pelvis_FK_Ctrl_Grp|BigWalker:Pelvis_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Pelvis_FK_Ctrl_Grp|BigWalker:Pelvis_FK_Ctrl" 
		"rotate" " -type \"double3\" 9.74940642843742822 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -8.27110052197073031"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -8.27110052197073031"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Head_Fk_Ctrl_Grp|BigWalker:Head_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -8.27115440965323145"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 1.20853666532660831 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0.12085366653266101 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_IK_Ctrl_Grp|BigWalker:R_Arm_IK_Ctrl_Main_Grp|BigWalker:R_Arm_IK_Ctrl_Grp|BigWalker:R_Arm_IK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" -0.83811450830702861 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl" 
		"HeelPivot" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_PV_Ctrl_Grp|BigWalker:L_Leg_PV_Ctrl_Offset_Grp|BigWalker:L_Leg_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_PV_Ctrl_Grp|BigWalker:L_Leg_PV_Ctrl_Offset_Grp|BigWalker:L_Leg_PV_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_PV_Ctrl_Grp|BigWalker:L_Leg_PV_Ctrl_Offset_Grp|BigWalker:L_Leg_PV_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_PV_Ctrl_Grp|BigWalker:L_Leg_PV_Ctrl_Offset_Grp|BigWalker:L_Leg_PV_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_PV_Ctrl_Grp|BigWalker:L_Leg_PV_Ctrl_Offset_Grp|BigWalker:L_Leg_PV_Ctrl" 
		"Follow" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_PV_Ctrl_Grp|BigWalker:R_Leg_PV_Ctrl_Offset_Grp|BigWalker:R_Leg_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_PV_Ctrl_Grp|BigWalker:R_Leg_PV_Ctrl_Offset_Grp|BigWalker:R_Leg_PV_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_PV_Ctrl_Grp|BigWalker:R_Leg_PV_Ctrl_Offset_Grp|BigWalker:R_Leg_PV_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_PV_Ctrl_Grp|BigWalker:R_Leg_PV_Ctrl_Offset_Grp|BigWalker:R_Leg_PV_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_PV_Ctrl_Grp|BigWalker:R_Leg_PV_Ctrl_Offset_Grp|BigWalker:R_Leg_PV_Ctrl" 
		"Follow" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" 34.22545630100421477 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl" 
		"HeelRotate" " -k 1"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl" 
		"FootRoll" " -k 1"
		2 "|BigWalker:Sword" "visibility" " 0"
		2 "|BigWalker:Sword|BigWalker:Sword_Handle_Ctrl_Grp|BigWalker:Sword_Handle_Ctrl" 
		"translate" " -type \"double3\" -10.8153468421888288 7.56617075706834008 -3.14396899315463862"
		
		2 "BigWalker:Geo_Layer" "displayType" " 2"
		2 "BigWalker:Geo_Layer" "visibility" " 1"
		2 "BigWalker:ControlsLayer" "visibility" " 1"
		2 "BigWalker:R_Eye_Ctrl_R_Eye_Close" "postInfinity" " 0"
		2 "BigWalker:L_Eye_Ctrl_L_Eye_Close" "postInfinity" " 0"
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:COG_Ctrl_Grp|BigWalker:COG_Ctrl.translateY" 
		"BigWalkerRN.placeHolderList[1]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Pelvis_FK_Ctrl_Grp|BigWalker:Pelvis_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[2]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[3]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[4]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Head_Fk_Ctrl_Grp|BigWalker:Head_Fk_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[5]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[6]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[7]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[8]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[9]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[10]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[11]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[12]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[13]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[14]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[15]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[16]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[17]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[18]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[19]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[20]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[21]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[22]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[23]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[24]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[25]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[26]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[27]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[28]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[29]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[30]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[31]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[32]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl.rotateY" 
		"BigWalkerRN.placeHolderList[33]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl.rotateZ" 
		"BigWalkerRN.placeHolderList[34]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl.translateX" 
		"BigWalkerRN.placeHolderList[35]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl.translateY" 
		"BigWalkerRN.placeHolderList[36]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl.translateZ" 
		"BigWalkerRN.placeHolderList[37]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl.HeelRotate" 
		"BigWalkerRN.placeHolderList[38]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl.FootRoll" 
		"BigWalkerRN.placeHolderList[39]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[40]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl.translateX" 
		"BigWalkerRN.placeHolderList[41]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl.translateY" 
		"BigWalkerRN.placeHolderList[42]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl.translateZ" 
		"BigWalkerRN.placeHolderList[43]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl.HeelRotate" 
		"BigWalkerRN.placeHolderList[44]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl.FootRoll" 
		"BigWalkerRN.placeHolderList[45]" ""
		5 4 "BigWalkerRN" "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl.rotateX" 
		"BigWalkerRN.placeHolderList[46]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8E05B3E1-4E9B-14DC-38FF-388590B56998";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2735\n            -height 1050\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2735\\n    -height 1050\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2735\\n    -height 1050\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C2706C00-46C5-C27E-4817-148CB4B58591";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 132 -ast 1 -aet 132 ";
	setAttr ".st" 6;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateX";
	rename -uid "E4E6F5C5-4E28-B078-92D5-92997CC1918F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 23 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateY";
	rename -uid "054E5A86-48F5-E913-3D27-959683F59370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 8 2.5925243461916234 12 3.1977126097545892
		 14 2.4759826112772125 16 0.71266012997910977 19 1.4081630880936893 23 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 1 9 9 9 9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 1 9 9 9 1;
	setAttr -s 9 ".kix[4:8]"  1 0.066917334154621547 0.19149114911158283 
		0.37877066063607462 0.11753710676428192;
	setAttr -s 9 ".kiy[4:8]"  0 -0.99775852308544022 -0.98149434018333781 
		-0.92549056539832508 -0.99306849136073283;
	setAttr -s 9 ".kox[4:8]"  1 0.066917334154621547 0.19149114911158283 
		0.37877066063607462 1;
	setAttr -s 9 ".koy[4:8]"  0 -0.99775852308544022 -0.98149434018333781 
		-0.92549056539832508 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateZ";
	rename -uid "E422B8C7-41BE-4F82-83AA-D19D5A4BD9C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 4.8222678484494255 5 -3.9474244761395654
		 8 -4.6594342678063754 12 -5.2148200155281605 14 -2.5233672751281939 16 2.1886890336706712
		 19 4.2905846978593889 23 4.8222678484494255;
	setAttr -s 8 ".kit[0:7]"  2 2 9 1 9 9 9 2;
	setAttr -s 8 ".kot[0:7]"  2 2 9 1 9 9 9 1;
	setAttr -s 8 ".kix[3:7]"  0.046373712197337609 0.022506145351431368 
		0.030560242752210191 0.11007616401125205 0.29911803591096808;
	setAttr -s 8 ".kiy[3:7]"  0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.99392315503592521 0.95421611838868281;
	setAttr -s 8 ".kox[3:7]"  0.046373724221702696 0.022506145351431368 
		0.030560242752210191 0.11007616401125205 0.019001416465221514;
	setAttr -s 8 ".koy[3:7]"  0.99892416013519747 0.99974670463143822 
		0.99953292670273053 0.99392315503592521 -0.99981945678823192;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelRotate";
	rename -uid "D417578C-49DF-7BBE-BB4E-8D83974F15C5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 27.900000000000002 3 0 5 0 8 -51.028571428571425
		 12 -58.4 16 -10.456273478587374 23 27.900000000000002;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 1;
	setAttr -s 7 ".kix[4:6]"  0.0034762767042637861 0.0053108559628984673 
		0.0076039252006886715;
	setAttr -s 7 ".kiy[4:6]"  0.99999395773188327 0.99998589730502774 
		0.99997108974286975;
	setAttr -s 7 ".kox[4:6]"  0.0034762767042637861 0.0053108559628984673 
		0.0029868445022999133;
	setAttr -s 7 ".koy[4:6]"  0.99999395773188327 0.99998589730502774 
		-0.99999553937001096;
	setAttr ".pst" 3;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateX";
	rename -uid "BF449DE1-49C7-BA83-5798-2CAABF34E861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 23 0;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateY";
	rename -uid "FD0D7742-46E4-CC75-711B-8DA1B27CDBD5";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 3.1977126097545892 3 2.4759826112772125
		 5 0.71266012997910977 8 1.4081630880936893 12 0 14 0 16 0 19 2.5925243461916234 23 3.1977126097545892;
	setAttr -s 9 ".kit[1:8]"  9 9 9 3 3 1 1 3;
	setAttr -s 9 ".kot[1:8]"  9 9 9 3 3 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 0.0908339700119076 1;
	setAttr -s 9 ".kiy[6:8]"  0 0.99586605017536167 0;
	setAttr -s 9 ".kox[6:8]"  1 0.0908339700119076 1;
	setAttr -s 9 ".koy[6:8]"  0 0.99586605017536167 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateZ";
	rename -uid "80FDCE60-42F1-92DC-BFC1-A1AB47460D36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -5.2148200155281605 3 -2.5233672751281939
		 5 2.1886890336706712 8 4.2905846978593889 12 4.8222678484494255 16 -3.9474244761395654
		 19 -4.6594342678063754 23 -5.2148200155281605;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 2 2 1 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 2 2 1 1;
	setAttr -s 8 ".kix[0:7]"  0.046373712197337609 0.022506145351431375 
		0.030560242752210198 0.11007616401125203 0.29911803591096797 0.019001416465221507 
		0.22426869467439203 0.046373712197337609;
	setAttr -s 8 ".kiy[0:7]"  0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.99392315503592532 0.95421611838868281 -0.99981945678823192 
		-0.97452734830226506 0.99892416069341239;
	setAttr -s 8 ".kox[0:7]"  0.046373724221702696 0.022506145351431375 
		0.030560242752210198 0.11007616401125203 0.019001416465221507 0.17291489196173335 
		0.22426869467439203 0.046373724221702696;
	setAttr -s 8 ".koy[0:7]"  0.99892416013519747 0.99974670463143822 
		0.99953292670273053 0.99392315503592532 -0.99981945678823192 -0.98493676961410181 
		-0.97452734830226506 0.99892416013519747;
	setAttr ".pst" 3;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelRotate";
	rename -uid "60923C8B-4308-D247-E6AD-F4BD36AC44E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -58.4 5 -10.456273478587374 12 27.900000000000002
		 14 0 16 0 19 -14.434532866996307 23 -27.135251230930791;
	setAttr -s 7 ".kit[3:6]"  3 3 1 9;
	setAttr -s 7 ".kot[3:6]"  3 3 1 1;
	setAttr -s 7 ".kix[5:6]"  0.012524045417093257 0.013121487579467291;
	setAttr -s 7 ".kiy[5:6]"  -0.99992157106764656 -0.9999139095760704;
	setAttr -s 7 ".kox[5:6]"  0.012524045214978923 0.0034762767042637861;
	setAttr -s 7 ".koy[5:6]"  -0.99992157107017809 0.99999395773188327;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateX";
	rename -uid "A7C894D7-41F7-A0CA-7D08-88824137B27B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -16.086143318997138 8 48.911186047993333
		 12 43.095698172103667 19 9.4259199225050345 23 -16.086143318997138;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 1;
	setAttr -s 5 ".kix[2:4]"  0.4445806645155142 0.40559058176415896 
		0.35055284748873289;
	setAttr -s 5 ".kiy[2:4]"  -0.89573881948866318 -0.91405485611324833 
		-0.93654295209431859;
	setAttr -s 5 ".kox[2:4]"  0.4445806645155142 0.40559058176415896 
		0.24900847510912744;
	setAttr -s 5 ".koy[2:4]"  -0.89573881948866318 -0.91405485611324833 
		0.96850130579355798;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateY";
	rename -uid "3E78FFAD-4B28-DE32-7D41-94A5519F542C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -36.172551882140787 8 -34.604 12 -42.527350757134919
		 19 -45.015665085146175 23 -36.172551882140787;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 1;
	setAttr -s 5 ".kix[2:4]"  0.98909533502097591 0.97194662329206571 
		0.73371578345085686;
	setAttr -s 5 ".kiy[2:4]"  -0.1472766724221577 0.23520153373469127 
		0.67945651009839869;
	setAttr -s 5 ".kox[2:4]"  0.98909533502097591 0.97194662329206571 
		0.99562386388834012;
	setAttr -s 5 ".koy[2:4]"  -0.1472766724221577 0.23520153373469127 
		0.093451172577190697;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "73791362-4D6A-1F01-A818-E689A6B5FD92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 55.96805730429918 8 -51.909287678129957
		 12 -46.524069708116556 19 18.184568106028017 23 55.96805730429918;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 1;
	setAttr -s 5 ".kix[2:4]"  0.2500500870216939 0.24820270422507451 
		0.24503255411793728;
	setAttr -s 5 ".kiy[2:4]"  0.96823290275658547 0.96870811786386923 
		0.96951485157394068;
	setAttr -s 5 ".kox[2:4]"  0.2500500870216939 0.24820270422507451 
		0.15308400745801098;
	setAttr -s 5 ".koy[2:4]"  0.96823290275658547 0.96870811786386923 
		-0.9882131787527404;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateX";
	rename -uid "37D0DE6B-4FAE-B05B-A1DE-10AE43567491";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -33.251988165366555 8 -34.068635842677764
		 12 -17.291408318582015 23 -33.251988165366555;
	setAttr -s 4 ".kit[0:3]"  9 2 2 9;
	setAttr -s 4 ".kot[0:3]"  9 2 2 1;
	setAttr -s 4 ".kox[3]"  0.9988080896120678;
	setAttr -s 4 ".koy[3]"  -0.048809836360017213;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateX";
	rename -uid "E421F210-459B-F10F-BF23-6EB7F6E0A95F";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 22.501284454211113 12 0 23 22.501284454211113;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateY";
	rename -uid "26BC3CA7-4589-7F24-87C9-31922E9AC4B8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -19.15943658647376 8 -4.2762665979881245
		 12 -8.8954252135541729 23 -19.15943658647376;
	setAttr -s 4 ".kit[0:3]"  9 2 2 9;
	setAttr -s 4 ".kot[0:3]"  9 2 2 1;
	setAttr -s 4 ".kox[3]"  0.74677195142137742;
	setAttr -s 4 ".koy[3]"  0.66508018506816746;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateY";
	rename -uid "A93F8DFF-4081-F561-38D3-8D803CDE5028";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 23 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateZ";
	rename -uid "9C74655B-479C-32C3-1221-05933136F73E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 12.144411364053267 8 12.835416821836676
		 12 -16.02473609568133 23 12.144411364053267;
	setAttr -s 4 ".kit[0:3]"  9 2 2 9;
	setAttr -s 4 ".kot[0:3]"  9 2 2 1;
	setAttr -s 4 ".kox[3]"  0.99914619711475994;
	setAttr -s 4 ".koy[3]"  0.041314365432779415;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateZ";
	rename -uid "FB999A02-4A16-9941-F666-A090507B1933";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.127768415901926 12 80.751781942984593
		 23 75.127768415901926;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateX";
	rename -uid "312BD3CD-4EE9-1246-CF16-DF925421D302";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -17.291408318582015 12 -33.251988165366555
		 19 -34.068635842677764 23 -17.291408318582015;
	setAttr -s 4 ".kit[1:3]"  9 1 1;
	setAttr -s 4 ".kot[1:3]"  9 1 1;
	setAttr -s 4 ".kix[0:3]"  0.49466639949508612 0.93152085064704349 
		0.9988080896120678 0.49466639949508612;
	setAttr -s 4 ".kiy[0:3]"  0.86908293805054515 -0.36368792227651492 
		-0.048809836360017213 0.86908293805054515;
	setAttr -s 4 ".kox[0:3]"  0.87357299755532347 0.93152085064704349 
		0.49466639949508612 0.87357299755532347;
	setAttr -s 4 ".koy[0:3]"  -0.48669314556731424 -0.36368792227651492 
		0.86908293805054515 -0.48669314556731424;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateX";
	rename -uid "1C14D6C5-4ACE-F5B8-66AB-039E5CE9620D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 43.095698172103667 8 9.4259199225050345
		 12 9.3626205462498717 19 46.245178596418228 23 43.095698172103667;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kox[4]"  0.4445806645155142;
	setAttr -s 5 ".koy[4]"  -0.89573881948866318;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateX";
	rename -uid "1D586B3A-474A-9E3F-652B-DF9B40D5FB3F";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 22.501284454211113 23 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateY";
	rename -uid "13F8E3E4-48EE-07E4-8010-8A8A268C9F20";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -8.8954252135541729 12 -19.15943658647376
		 19 -4.2762665979881245 23 -8.8954252135541729;
	setAttr -s 4 ".kit[1:3]"  9 1 1;
	setAttr -s 4 ".kot[1:3]"  9 1 1;
	setAttr -s 4 ".kix[0:3]"  0.90021353126752401 0.99427224873978537 
		0.74677195142137742 0.90021353126752401;
	setAttr -s 4 ".kiy[0:3]"  -0.4354487319109504 0.10687701055853997 
		0.66508018506816746 -0.4354487319109504;
	setAttr -s 4 ".kox[0:3]"  0.94140188375283518 0.99427224873978537 
		0.90021353126752401 0.94140188375283518;
	setAttr -s 4 ".koy[0:3]"  -0.33728695982295781 0.10687701055853997 
		-0.4354487319109504 -0.33728695982295781;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateY";
	rename -uid "ED340425-47DF-EDA0-13A6-A0AE1595247C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -42.527350757134919 8 -45.015665085146175
		 12 -51.525163527756746 19 -34.603624202748357 23 -42.527350757134919;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kox[4]"  0.98909533502097591;
	setAttr -s 5 ".koy[4]"  -0.1472766724221577;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateY";
	rename -uid "E03D643D-43A7-CD4F-F7F4-D086652FD668";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 23 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateZ";
	rename -uid "8D17D79D-4440-BF1E-3DA7-09AA0620B119";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -16.02473609568133 12 12.144411364053267
		 19 12.835416821836676 23 -16.02473609568133;
	setAttr -s 4 ".kit[1:3]"  9 1 1;
	setAttr -s 4 ".kot[1:3]"  9 1 1;
	setAttr -s 4 ".kix[0:3]"  0.31413222201905228 0.83015286061712956 
		0.99914619711475994 0.31413222201905228;
	setAttr -s 4 ".kiy[0:3]"  -0.94937924302639609 0.55753585356387314 
		0.041314365432779415 -0.94937924302639609;
	setAttr -s 4 ".kox[0:3]"  0.71303957532289874 0.83015286061712956 
		0.31413222201905228 0.71303957532289874;
	setAttr -s 4 ".koy[0:3]"  0.70112378651942786 0.55753585356387314 
		-0.94937924302639609 0.70112378651942786;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "4CD2532D-44D5-5F4D-7F77-8E807F56BE37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -46.524069708116556 8 18.184568106028017
		 12 24.135479534389884 19 -47.405533290068696 23 -46.524069708116556;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kox[4]"  0.2500500870216939;
	setAttr -s 5 ".koy[4]"  0.96823290275658547;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateZ";
	rename -uid "1699C433-43DF-B264-69D6-E0AC6533DFEC";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 80.751781942984593 12 75.127768415901926
		 23 80.751781942984593;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateX";
	rename -uid "B93F0C79-4CDA-B721-3B77-7D97DAFE4412";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 10.201522430002292 3 5.0741753942310153
		 5 -1.6385893298793834 8 -2.1725146417804835 12 -7.983 14 -5.074175 16 1.638589 19 2.172515
		 23 10.201522430002292;
	setAttr -s 9 ".kit[2:8]"  3 3 10 10 3 3 9;
	setAttr -s 9 ".kot[2:8]"  3 3 10 10 3 3 1;
	setAttr -s 9 ".kox[8]"  0.68148820690621947;
	setAttr -s 9 ".koy[8]"  -0.73182909469885515;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateX";
	rename -uid "17424065-40E8-0F2C-876A-049708D550A2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 10.201522430002292 3 5.0741753942310153
		 5 -1.6385893298793834 8 -2.1725146417804835 12 -7.983419 14 -5.074175 16 1.638589
		 19 2.172515 23 10.201522430002292;
	setAttr -s 9 ".kit[2:8]"  3 3 10 10 3 3 9;
	setAttr -s 9 ".kot[2:8]"  3 3 10 10 3 3 1;
	setAttr -s 9 ".kox[8]"  0.68148820690621947;
	setAttr -s 9 ".koy[8]"  -0.73182909469885515;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateX";
	rename -uid "847523DC-4DBC-FC7E-58D6-5795B45C35E7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 10.201522430002292 3 5.0741753942310153
		 5 -1.6385893298793834 8 -2.1725146417804835 12 -7.983 14 -5.074175 16 1.638589 19 2.172515
		 23 10.201522430002292;
	setAttr -s 9 ".kit[2:8]"  3 3 10 10 3 3 9;
	setAttr -s 9 ".kot[2:8]"  3 3 10 10 3 3 1;
	setAttr -s 9 ".kox[8]"  0.68148820690621947;
	setAttr -s 9 ".koy[8]"  -0.73182909469885515;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateY";
	rename -uid "2DCD8FD7-47E9-8717-481E-FAA6A090A17E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -9.9392333795734899e-17 3 -0.25241566490681167
		 5 -0.13340575164642263 8 -0.15731790954093519 12 -9.9392333795734899e-17 14 0.252416
		 16 0.13340600000000002 19 0.157318 23 -9.9392333795734899e-17;
	setAttr -s 9 ".kit[7:8]"  1 9;
	setAttr -s 9 ".kot[7:8]"  1 9;
	setAttr -s 9 ".kix[7:8]"  0.99996813752598934 0.99986432629565181;
	setAttr -s 9 ".kiy[7:8]"  0.0079827271532976647 -0.016472067306276608;
	setAttr -s 9 ".kox[7:8]"  0.99996813752598934 0.99986432629565181;
	setAttr -s 9 ".koy[7:8]"  0.0079827271532976647 -0.016472067306276608;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateY";
	rename -uid "CD62A282-48B7-F366-7F71-A88F1DF5DCE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -9.9392333795734899e-17 3 -0.25241566490681167
		 5 -0.13340575164642263 8 -0.15731790954093519 12 -9.9392333795734899e-17 14 0.252416
		 16 0.13340600000000002 19 0.157318 23 -9.9392333795734899e-17;
	setAttr -s 9 ".kit[7:8]"  1 9;
	setAttr -s 9 ".kot[7:8]"  1 9;
	setAttr -s 9 ".kix[7:8]"  0.99996813752598934 0.99986432629565181;
	setAttr -s 9 ".kiy[7:8]"  0.0079827271532976647 -0.016472067306276608;
	setAttr -s 9 ".kox[7:8]"  0.99996813752598934 0.99986432629565181;
	setAttr -s 9 ".koy[7:8]"  0.0079827271532976647 -0.016472067306276608;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateY";
	rename -uid "CB90BB74-4BEE-E16E-9F20-A48B86A8DBB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -9.9392333795734899e-17 3 -0.25241566490681167
		 5 -0.13340575164642263 8 -0.15731790954093519 12 -9.9392333795734899e-17 14 0.252416
		 16 0.13340600000000002 19 0.157318 23 -9.9392333795734899e-17;
	setAttr -s 9 ".kit[7:8]"  1 9;
	setAttr -s 9 ".kot[7:8]"  1 9;
	setAttr -s 9 ".kix[7:8]"  0.99996813752598934 0.99986432629565181;
	setAttr -s 9 ".kiy[7:8]"  0.0079827271532976647 -0.016472067306276608;
	setAttr -s 9 ".kox[7:8]"  0.99996813752598934 0.99986432629565181;
	setAttr -s 9 ".koy[7:8]"  0.0079827271532976647 -0.016472067306276608;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateZ";
	rename -uid "4DE8C0B0-49F1-D24C-BCE0-268E8AB477F2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 14.427600156849923 3 15.894896204665367
		 5 14.499027838407903 8 11.441775974262857 12 14.427600156849923 14 15.894896204665367
		 16 14.499027838407903 19 11.441775974262857 23 14.427600156849923;
	setAttr -s 9 ".kit[0:8]"  9 3 9 3 9 3 9 3 
		9;
	setAttr -s 9 ".kot[0:8]"  9 3 9 3 1 3 9 3 
		1;
	setAttr -s 9 ".kox[4:8]"  0.95588173185398706 1 0.93692425639312904 
		1 0.95588173185398706;
	setAttr -s 9 ".koy[4:8]"  0.29375179098657839 0 -0.34953245597824273 
		0 0.29375179098657839;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateZ";
	rename -uid "0805C44F-4758-F147-2EEE-C8961B417F6D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 14.427600156849923 3 15.894896204665367
		 5 14.499027838407903 8 11.441775974262857 12 14.427600156849923 14 15.894896204665367
		 16 14.499027838407903 19 11.441775974262857 23 14.427600156849923;
	setAttr -s 9 ".kit[0:8]"  9 3 9 3 9 3 9 3 
		9;
	setAttr -s 9 ".kot[0:8]"  9 3 9 3 1 3 9 3 
		1;
	setAttr -s 9 ".kox[4:8]"  0.95588173185398706 1 0.93692425639312904 
		1 0.95588173185398706;
	setAttr -s 9 ".koy[4:8]"  0.29375179098657839 0 -0.34953245597824273 
		0 0.29375179098657839;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateZ";
	rename -uid "93C321D2-48F9-3199-F359-82A6F8592841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 14.427600156849923 3 15.894896204665367
		 5 14.499027838407903 8 11.441775974262857 12 14.427600156849923 14 15.894896204665367
		 16 14.499027838407903 19 11.441775974262857 23 14.427600156849923;
	setAttr -s 9 ".kit[0:8]"  9 3 9 3 9 3 9 3 
		9;
	setAttr -s 9 ".kot[0:8]"  9 3 9 3 1 3 9 3 
		1;
	setAttr -s 9 ".kox[4:8]"  0.95588173185398706 1 0.93692425639312904 
		1 0.95588173185398706;
	setAttr -s 9 ".koy[4:8]"  0.29375179098657839 0 -0.34953245597824273 
		0 0.29375179098657839;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateX";
	rename -uid "D1102381-4EC2-6345-0C58-BEBAABF2B52F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 5 0 12 40.404266025842084 14 61.601416360566176
		 16 0 23 0;
	setAttr -s 7 ".kit[3:6]"  1 9 9 9;
	setAttr -s 7 ".kot[3:6]"  1 9 9 1;
	setAttr -s 7 ".kix[3:6]"  0.21974389619649964 0.23000714380221948 
		0.3293318600675833 1;
	setAttr -s 7 ".kiy[3:6]"  0.97555759444759704 -0.97318894044267934 
		-0.94421423731292342 0;
	setAttr -s 7 ".kox[3:6]"  0.21974389619649964 0.23000714380221948 
		0.3293318600675833 1;
	setAttr -s 7 ".koy[3:6]"  0.97555759444759704 -0.97318894044267934 
		-0.94421423731292342 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateX";
	rename -uid "10CBDE4C-441D-5B6C-31D7-E38D69254F7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.138890796875176 12 -12.139 23 12.138890796875176;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kox[2]"  0.73428245647346702;
	setAttr -s 3 ".koy[2]"  -0.67884407201896568;
	setAttr ".pst" 3;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "1C9089E8-4988-DF23-F3B1-5BB4196A6080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.4962477790045234 3 -1.6747503308428442
		 5 -1.2118108775887215 8 -0.56384089505539103 12 -1.4962477790045234 14 -1.6747503308428442
		 16 -1.2118108775887215 19 -0.56384089505539103 23 -1.4962477790045234;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kox[8]"  0.42301944468213754;
	setAttr -s 9 ".koy[8]"  -0.90612060423589091;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Leg_IK_Ctrl_FootRoll";
	rename -uid "37B7B910-472B-F7C9-CE13-7FBE5FB6D8C0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 4.3 8 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateX";
	rename -uid "0A13BECB-4C41-3C68-D841-138C18F3C416";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3293903318592692 12 0 23 1.3293903318592692;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kox[2]"  0.99872111015076248;
	setAttr -s 3 ".koy[2]"  -0.050558324133900955;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateX";
	rename -uid "02A0DA15-43B2-9254-F5EF-068CF7A736E6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 1.3293903318592692 23 0;
	setAttr -s 3 ".kit[1:2]"  1 2;
	setAttr -s 3 ".kot[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.99872111015076248;
	setAttr -s 3 ".kiy[1:2]"  0 -0.050558324133900955;
	setAttr -s 3 ".kox[1:2]"  0.99872111015076248 0.99872111015076248;
	setAttr -s 3 ".koy[1:2]"  -0.050558324133900955 0.050558324133900955;
	setAttr ".pst" 3;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateZ";
	rename -uid "4EA8F4BB-4AE6-BBF6-68FF-B2B305CE1818";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.6128916613914122 3 -5.5367714066052898
		 12 -8.6128916613914122 14 -5.5367714066052898 23 -8.6128916613914122;
	setAttr ".pst" 3;
createNode animCurveTA -n "Neck_02_Fk_Ctrl_rotateZ";
	rename -uid "2C2F9C17-4C05-DAEB-40D6-7C9A6E729E5D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.6128916613914122 3 -5.5367714066052898
		 12 -8.6128916613914122 14 -5.5367714066052898 23 -8.6128916613914122;
	setAttr ".pst" 3;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateZ";
	rename -uid "EA24277D-4178-BD87-897C-4A91782AD96D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.6128916613914122 3 -5.5372563957478
		 12 -8.6128916613914122 14 -5.5372563957478 23 -8.6128916613914122;
	setAttr ".pst" 3;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "275B4047-43E1-AF09-A276-6B9E65E39F77";
	setAttr ".version" 5;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
createNode animCurveTU -n "R_Leg_IK_Ctrl_FootRoll";
	rename -uid "5DB2B8C5-422F-898D-9A20-76B938F5B50C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  14 0 16 4.3 19 0;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.029057492497498054;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99957774191393323;
	setAttr -s 3 ".kox[1:2]"  1 0.029057492497498054;
	setAttr -s 3 ".koy[1:2]"  0 -0.99957774191393323;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateX";
	rename -uid "BC2C861D-4B45-3BDD-7F93-268E955E666A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 40.404266025842084 3 61.601416360566176
		 5 0 12 0 14 0 16 0 23 40.404266025842084;
	setAttr -s 7 ".kit[5:6]"  1 9;
	setAttr -s 7 ".kot[5:6]"  1 1;
	setAttr -s 7 ".kix[5:6]"  0.69787634553045341 0.3822006931834519;
	setAttr -s 7 ".kiy[5:6]"  0.71621826725451454 0.92407934190203012;
	setAttr -s 7 ".kox[5:6]"  0.69787634553045341 0.21974389619649964;
	setAttr -s 7 ".koy[5:6]"  0.71621826725451454 0.97555759444759704;
	setAttr ".pst" 3;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4771D610-41AA-0A77-B379-DB8C2F79B956";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 132;
	setAttr ".unw" 132;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 54 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 57 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 162 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :defaultTextureList1;
	setAttr -s 126 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 2104 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "COG_Ctrl_translateY.o" "BigWalkerRN.phl[1]";
connectAttr "Pelvis_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[2]";
connectAttr "Neck_01_Fk_Ctrl_rotateZ.o" "BigWalkerRN.phl[3]";
connectAttr "Neck_02_Fk_Ctrl_rotateZ.o" "BigWalkerRN.phl[4]";
connectAttr "Head_Fk_Ctrl_rotateZ.o" "BigWalkerRN.phl[5]";
connectAttr "Spine_01_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[6]";
connectAttr "Spine_01_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[7]";
connectAttr "Spine_01_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[8]";
connectAttr "Spine_03_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[9]";
connectAttr "Spine_03_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[10]";
connectAttr "Spine_03_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[11]";
connectAttr "Spine_02_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[12]";
connectAttr "Spine_02_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[13]";
connectAttr "Spine_02_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[14]";
connectAttr "L_Clav_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[15]";
connectAttr "L_Shoulder_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[16]";
connectAttr "L_Shoulder_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[17]";
connectAttr "L_Shoulder_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[18]";
connectAttr "L_Elbow_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[19]";
connectAttr "L_Elbow_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[20]";
connectAttr "L_Elbow_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[21]";
connectAttr "L_Wrist_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[22]";
connectAttr "L_Wrist_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[23]";
connectAttr "L_Wrist_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[24]";
connectAttr "R_Clav_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[25]";
connectAttr "R_Shoulder_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[26]";
connectAttr "R_Shoulder_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[27]";
connectAttr "R_Shoulder_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[28]";
connectAttr "R_Elbow_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[29]";
connectAttr "R_Elbow_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[30]";
connectAttr "R_Elbow_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[31]";
connectAttr "R_Wrist_FK_Ctrl_rotateX.o" "BigWalkerRN.phl[32]";
connectAttr "R_Wrist_FK_Ctrl_rotateY.o" "BigWalkerRN.phl[33]";
connectAttr "R_Wrist_FK_Ctrl_rotateZ.o" "BigWalkerRN.phl[34]";
connectAttr "L_Leg_IK_Ctrl_translateX.o" "BigWalkerRN.phl[35]";
connectAttr "L_Leg_IK_Ctrl_translateY.o" "BigWalkerRN.phl[36]";
connectAttr "L_Leg_IK_Ctrl_translateZ.o" "BigWalkerRN.phl[37]";
connectAttr "L_Leg_IK_Ctrl_HeelRotate.o" "BigWalkerRN.phl[38]";
connectAttr "L_Leg_IK_Ctrl_FootRoll.o" "BigWalkerRN.phl[39]";
connectAttr "L_Leg_IK_Ctrl_rotateX.o" "BigWalkerRN.phl[40]";
connectAttr "R_Leg_IK_Ctrl_translateX.o" "BigWalkerRN.phl[41]";
connectAttr "R_Leg_IK_Ctrl_translateY.o" "BigWalkerRN.phl[42]";
connectAttr "R_Leg_IK_Ctrl_translateZ.o" "BigWalkerRN.phl[43]";
connectAttr "R_Leg_IK_Ctrl_HeelRotate.o" "BigWalkerRN.phl[44]";
connectAttr "R_Leg_IK_Ctrl_FootRoll.o" "BigWalkerRN.phl[45]";
connectAttr "R_Leg_IK_Ctrl_rotateX.o" "BigWalkerRN.phl[46]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of WalkerRunCycle.ma
