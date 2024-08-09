//Maya ASCII 2024 scene
//Name: FightScene.ma
//Last modified: Thu, Aug 08, 2024 11:52:27 PM
//Codeset: 1252
file -rdi 1 -ns "RedDragonborn" -rfn "RedDragonbornRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitRepos/3DCharacters/Walker/Maya/scenes/RedDragonborn.ma";
file -rdi 1 -ns "Walker" -rfn "WalkerRN" -op "v=0;" -typ "mayaAscii" "D:/GitRepos/3DCharacters/Walker/Maya/scenes/Walker.ma";
file -r -ns "RedDragonborn" -dr 1 -rfn "RedDragonbornRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitRepos/3DCharacters/Walker/Maya/scenes/RedDragonborn.ma";
file -r -ns "Walker" -dr 1 -rfn "WalkerRN" -op "v=0;" -typ "mayaAscii" "D:/GitRepos/3DCharacters/Walker/Maya/scenes/Walker.ma";
requires maya "2024";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.6.01";
requires "stereoCamera" "10.0";
requires -dataType "xgmGuideData" -dataType "igmDescriptionData" -dataType "xgmSplineData"
		 -dataType "xgmMeshData" -dataType "xgmSplineTweakData" -dataType "xgmSplineBoundInfoData"
		 -dataType "xgmGuideRefData" "xgenToolkit" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26120)";
fileInfo "UUID" "04C3D98A-4794-63DB-E0B9-7FBBD99F699D";
createNode transform -s -n "persp";
	rename -uid "07EC4576-4707-D5B3-C615-EBA3349A4928";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 54.491471516790767 21.695511762560621 4.7522721401534938 ;
	setAttr ".r" -type "double3" -15.33835272962758 -273.79999999998637 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "22E104DF-403F-69B3-7766-E78F126434F8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 57.865412610322466;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CA40319A-4F1D-1E9F-7EC5-E694D03DC729";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8D45B009-4CB2-2547-575C-098F3C19D533";
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
	rename -uid "635C2753-461A-2423-D0E6-ED8AC16EF41A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8B1623D6-4F1B-E07E-42A8-9ABA664B8924";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "D73817D3-432B-213E-6468-45AACDBB618C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "97E93FA4-4BDF-C769-BD19-52B1F22FF90E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7168F0DD-4D38-1F0D-673B-CA9FE9EACA23";
	setAttr -s 161 ".lnk";
	setAttr -s 161 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "2A9BEB03-4C1E-9DBB-61D3-BEA2744432EB";
	setAttr ".version" 6;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableLegacySSSGI" no;
	setAttr ".enableLegacyVolumePhase" no;
	setAttr ".enableLegacyDispersionNestedDielectricsTechnique" no;
	setAttr ".enableLegacyTimeBehavior" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "2FF06DB3-4771-43CA-97F7-76890ECD4C3A";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8CB635AA-4E64-A05E-1E79-408E926B57C9";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 1 0 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1D0AA1EB-4A0A-8D15-CC9D-FDB66D9DE544";
createNode displayLayerManager -n "layerManager";
	rename -uid "DD568CD4-47B1-E150-755B-718EDFCD5D85";
createNode displayLayer -n "defaultLayer";
	rename -uid "9C333D68-4A60-3374-190C-05B818E5E791";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CBDA988D-4F3F-B81B-D89F-42A130021B8A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7C1AF045-4116-1916-EEF1-B3B562A2F352";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "2CD4B8E3-49C2-B623-6917-8B95F6C8C9F6";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C5FE39B1-45A9-6C99-3C52-CCBED40CC340";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C73E73E3-4180-46F5-832B-8292C0A9D93E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "63D6A62C-4652-64E5-1C8A-EDA689B7442C";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "RedDragonbornRN";
	rename -uid "B7D81AE5-4778-7FAD-6F3E-B6B50BC36D05";
	setAttr ".ed" -type "dataReferenceEdits" 
		"RedDragonbornRN"
		"RedDragonbornRN" 0
		"RedDragonbornRN" 123
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl" 
		"translate" " -type \"double3\" -7.8784997401126896e-05 0 7.22809928543469926"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl" 
		"rotate" " -type \"double3\" 0 177.14357351207303282 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:L_Eye_Ctrl_Grp|RedDragonborn:L_Eye_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:R_Eye_Ctrl_Grp|RedDragonborn:R_Eye_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_FK_Ctrl_Grp|RedDragonborn:L_Hip_FK_Ctrl_Grp|RedDragonborn:L_Hip_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_FK_Ctrl_Grp|RedDragonborn:L_Hip_FK_Ctrl_Grp|RedDragonborn:L_Hip_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_FK_Ctrl_Grp|RedDragonborn:L_Knee_FK_Ctrl_Grp|RedDragonborn:L_Knee_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_FK_Ctrl_Grp|RedDragonborn:L_Knee_FK_Ctrl_Grp|RedDragonborn:L_Knee_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_FK_Ctrl_Grp|RedDragonborn:L_Ankle_FK_Ctrl_Grp|RedDragonborn:L_Ankle_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_FK_Ctrl_Grp|RedDragonborn:L_Ankle_FK_Ctrl_Grp|RedDragonborn:L_Ankle_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "WalkerRN";
	rename -uid "CE8751FF-48A6-73C3-F4AE-5D8DE17C91A0";
	setAttr ".ed" -type "dataReferenceEdits" 
		"WalkerRN"
		"WalkerRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "E0D42408-4775-1BE1-BB02-E4A6F43B7E2B";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CA6BDFF1-4AB8-060C-C1C5-B5808864CDB8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2443\n            -height 1041\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2443\\n    -height 1041\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2443\\n    -height 1041\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D54E4A08-4ED9-81DC-3652-EEB2B04CA266";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 107 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 110 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 325 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :defaultTextureList1;
	setAttr -s 252 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 4208 ".gn";
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
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of FightScene.ma
