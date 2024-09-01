//Maya ASCII 2024 scene
//Name: FightScene.ma
//Last modified: Fri, Aug 09, 2024 07:33:34 PM
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
fileInfo "UUID" "BC04A5BA-4662-BC11-178D-329E910D9CBC";
createNode transform -s -n "persp";
	rename -uid "07EC4576-4707-D5B3-C615-EBA3349A4928";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 48.08778206095387 51.937197416094612 182.71598363330617 ;
	setAttr ".r" -type "double3" -12.938352697287415 -6104.6000000030008 -2.0618775560549373e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "22E104DF-403F-69B3-7766-E78F126434F8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 194.49987036052099;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 6.6138394232648992 -0.28668543432443316 ;
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
	rename -uid "2DAA827E-44D5-C83A-9BEA-8FBE8E77AF59";
	setAttr -s 107 ".lnk";
	setAttr -s 107 ".slnk";
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
	rename -uid "70DD51CB-4F9B-C34C-13E9-3E9656D36A2D";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 1 0 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6745CBA2-49BF-7435-7518-8085D39224EF";
createNode displayLayerManager -n "layerManager";
	rename -uid "9ABFBE2F-4DEE-A393-6644-C6A03DF68A79";
createNode displayLayer -n "defaultLayer";
	rename -uid "9C333D68-4A60-3374-190C-05B818E5E791";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7C18292E-475B-BC65-B5BC-D99565EEB0D1";
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
	setAttr -s 650 ".phl";
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
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RedDragonbornRN"
		"RedDragonbornRN" 0
		"RedDragonbornRN" 674
		2 "|RedDragonborn:Walker|RedDragonborn:Geo|RedDragonborn:Clothes" "visibility" 
		" 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl" 
		"R_Leg_IKFK" " -k 1"
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
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl" 
		"FootRoll" " -k 1"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl_Grp|RedDragonborn:L_Ft_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Ft_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl_Grp|RedDragonborn:L_Ft_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl_Grp|RedDragonborn:R_Hip_FK_Ctrl" 
		"rotate" " -type \"double3\" 9.84286416224293603 15.07549609867472107 -17.25712840263418357"
		
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl_Grp|RedDragonborn:R_Knee_FK_Ctrl" 
		"rotate" " -type \"double3\" 28.49760213092666916 0 20.38124698998000994"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl_Grp|RedDragonborn:R_Ankle_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 43.21805287922543215"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl_Grp|RedDragonborn:R_Ft_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Ft_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl_Grp|RedDragonborn:R_Ft_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "RedDragonborn:defaultRedshiftPostEffects" "version" " 2"
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.L_Arm_IKFK" 
		"RedDragonbornRN.placeHolderList[1]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.R_Arm_IKFK" 
		"RedDragonbornRN.placeHolderList[2]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.L_Leg_IKFK" 
		"RedDragonbornRN.placeHolderList[3]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.R_Leg_IKFK" 
		"RedDragonbornRN.placeHolderList[4]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.MasterScale" 
		"RedDragonbornRN.placeHolderList[5]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[6]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[7]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[8]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[9]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[10]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Transform_Ctrl_Grp|RedDragonborn:Transform_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[11]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[12]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[13]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[14]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[15]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[16]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[17]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[18]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[19]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[20]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[21]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:COG_Ctrl_Grp|RedDragonborn:COG_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[22]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[23]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[24]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[25]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[26]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[27]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[28]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[29]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[30]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[31]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[32]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Pelvis_FK_Ctrl_Grp|RedDragonborn:Pelvis_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[33]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[34]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[35]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[36]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[37]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[38]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[39]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[40]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[41]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[42]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[43]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl_Grp|RedDragonborn:Neck_01_Fk_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[44]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[45]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[46]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[47]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[48]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[49]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[50]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[51]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[52]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[53]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[54]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl_Grp|RedDragonborn:Neck_02_Fk_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[55]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[56]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[57]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[58]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[59]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[60]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[61]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[62]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[63]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[64]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[65]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[66]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.CloseMouth" 
		"RedDragonbornRN.placeHolderList[67]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.OpenMouth" 
		"RedDragonbornRN.placeHolderList[68]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.Ooo" 
		"RedDragonbornRN.placeHolderList[69]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.LeftSmile" 
		"RedDragonbornRN.placeHolderList[70]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.RightSmile" 
		"RedDragonbornRN.placeHolderList[71]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.FullSmile" 
		"RedDragonbornRN.placeHolderList[72]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.LeftClosedSmile" 
		"RedDragonbornRN.placeHolderList[73]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.RightClosedSmile" 
		"RedDragonbornRN.placeHolderList[74]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.FullClosedSmile" 
		"RedDragonbornRN.placeHolderList[75]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.F" 
		"RedDragonbornRN.placeHolderList[76]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.OW" 
		"RedDragonbornRN.placeHolderList[77]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.H" 
		"RedDragonbornRN.placeHolderList[78]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.MB" 
		"RedDragonbornRN.placeHolderList[79]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.Angry" 
		"RedDragonbornRN.placeHolderList[80]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.LeftEyebrowDown" 
		"RedDragonbornRN.placeHolderList[81]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.RightEyebrowDown" 
		"RedDragonbornRN.placeHolderList[82]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.LeftEyebrowRaise" 
		"RedDragonbornRN.placeHolderList[83]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.RightEyebrowRaise" 
		"RedDragonbornRN.placeHolderList[84]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.NostrilFlare" 
		"RedDragonbornRN.placeHolderList[85]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.UH" 
		"RedDragonbornRN.placeHolderList[86]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.TeethOpen" 
		"RedDragonbornRN.placeHolderList[87]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.TeethClosed" 
		"RedDragonbornRN.placeHolderList[88]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[89]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[90]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[91]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[92]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[93]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[94]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.visibility" 
		"RedDragonbornRN.placeHolderList[95]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[96]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[97]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl_Grp|RedDragonborn:Head_Fk_Ctrl|RedDragonborn:Face_Ctrl_Grp|RedDragonborn:Face_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[98]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[99]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[100]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[101]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:L_Eye_Ctrl_Grp|RedDragonborn:L_Eye_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[102]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:L_Eye_Ctrl_Grp|RedDragonborn:L_Eye_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[103]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:L_Eye_Ctrl_Grp|RedDragonborn:L_Eye_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[104]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:R_Eye_Ctrl_Grp|RedDragonborn:R_Eye_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[105]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:R_Eye_Ctrl_Grp|RedDragonborn:R_Eye_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[106]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Neck_Ctrl_Grp|RedDragonborn:Eye_Ctrl_Grp|RedDragonborn:Eye_Ctrl|RedDragonborn:R_Eye_Ctrl_Grp|RedDragonborn:R_Eye_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[107]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[108]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[109]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[110]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[111]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[112]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[113]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[114]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[115]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[116]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[117]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl_Grp|RedDragonborn:Spine_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[118]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[119]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[120]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[121]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[122]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[123]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[124]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[125]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[126]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[127]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[128]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl_Grp|RedDragonborn:Spine_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[129]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[130]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[131]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[132]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[133]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[134]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[135]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[136]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[137]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[138]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[139]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Spine_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl_Grp|RedDragonborn:Spine_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[140]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[141]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[142]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[143]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[144]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[145]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[146]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[147]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[148]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[149]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[150]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[151]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[152]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[153]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[154]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[155]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[156]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[157]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[158]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[159]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[160]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[161]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[162]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[163]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[164]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[165]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[166]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[167]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[168]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[169]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[170]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[171]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[172]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Thumb_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[173]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[174]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[175]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[176]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[177]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[178]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[179]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[180]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[181]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[182]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[183]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[184]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[185]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[186]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[187]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[188]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[189]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[190]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[191]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[192]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[193]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[194]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[195]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[196]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[197]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[198]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[199]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[200]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[201]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[202]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[203]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[204]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[205]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pointer_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[206]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[207]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[208]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[209]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[210]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[211]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[212]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[213]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[214]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[215]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[216]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[217]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[218]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[219]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[220]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[221]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[222]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[223]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[224]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[225]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[226]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[227]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[228]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[229]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[230]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[231]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[232]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[233]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[234]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[235]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[236]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[237]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[238]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Middle_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[239]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[240]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[241]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[242]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[243]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[244]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[245]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[246]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[247]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[248]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[249]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[250]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[251]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[252]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[253]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[254]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[255]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[256]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[257]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[258]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[259]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[260]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[261]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[262]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[263]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[264]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[265]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[266]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[267]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[268]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[269]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[270]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[271]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Ring_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[272]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[273]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[274]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[275]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[276]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[277]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[278]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[279]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[280]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[281]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[282]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[283]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[284]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[285]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[286]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[287]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[288]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[289]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[290]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[291]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[292]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[293]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[294]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[295]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[296]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[297]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[298]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[299]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[300]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[301]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[302]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[303]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[304]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Hand_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:L_Pinky_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[305]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[306]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[307]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[308]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[309]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[310]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[311]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[312]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[313]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[314]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[315]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[316]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[317]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[318]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[319]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[320]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[321]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[322]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[323]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[324]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[325]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[326]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[327]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[328]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[329]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[330]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[331]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[332]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[333]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[334]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[335]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[336]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[337]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Thumb_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[338]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[339]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[340]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[341]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[342]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[343]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[344]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[345]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[346]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[347]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[348]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[349]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[350]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[351]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[352]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[353]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[354]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[355]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[356]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[357]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[358]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[359]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[360]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[361]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[362]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[363]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[364]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[365]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[366]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[367]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[368]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[369]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[370]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pointer_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[371]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[372]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[373]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[374]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[375]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[376]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[377]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[378]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[379]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[380]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[381]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[382]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[383]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[384]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[385]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[386]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[387]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[388]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[389]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[390]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[391]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[392]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[393]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[394]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[395]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[396]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[397]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[398]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[399]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[400]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[401]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[402]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[403]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Middle_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[404]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[405]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[406]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[407]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[408]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[409]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[410]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[411]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[412]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[413]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[414]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[415]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[416]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[417]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[418]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[419]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[420]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[421]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[422]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[423]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[424]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[425]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[426]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[427]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[428]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[429]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[430]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[431]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[432]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[433]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[434]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[435]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[436]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Ring_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[437]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[438]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[439]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[440]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[441]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[442]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[443]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[444]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[445]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[446]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[447]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_01_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[448]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[449]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[450]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[451]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[452]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[453]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[454]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[455]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[456]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[457]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[458]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_02_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[459]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[460]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[461]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[462]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[463]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[464]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[465]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[466]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[467]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[468]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[469]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Hand_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl_Grp|RedDragonborn:R_Pinky_Knuckle_03_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[470]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[471]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[472]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[473]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[474]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[475]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[476]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[477]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[478]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[479]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[480]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl_Grp|RedDragonborn:L_Clav_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[481]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[482]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[483]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[484]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[485]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[486]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[487]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[488]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[489]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[490]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[491]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl_Grp|RedDragonborn:L_Shoulder_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[492]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[493]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[494]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[495]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[496]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[497]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[498]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[499]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[500]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[501]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[502]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl_Grp|RedDragonborn:L_Elbow_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[503]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[504]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[505]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[506]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[507]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[508]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[509]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[510]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[511]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[512]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[513]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:L_Arm_Ctrl_Grp|RedDragonborn:L_Arm_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl_Grp|RedDragonborn:L_Wrist_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[514]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[515]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[516]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[517]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[518]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[519]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[520]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[521]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[522]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[523]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[524]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl_Grp|RedDragonborn:R_Clav_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[525]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[526]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[527]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[528]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[529]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[530]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[531]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[532]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[533]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[534]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[535]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl_Grp|RedDragonborn:R_Shoulder_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[536]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[537]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[538]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[539]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[540]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[541]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[542]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[543]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[544]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[545]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[546]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl_Grp|RedDragonborn:R_Elbow_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[547]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[548]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[549]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[550]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[551]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[552]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[553]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[554]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[555]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[556]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[557]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Arms_Ctrl_Grp|RedDragonborn:R_Arm_Ctrl_Grp|RedDragonborn:R_Arm_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl_Grp|RedDragonborn:R_Wrist_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[558]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[559]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[560]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[561]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[562]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[563]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[564]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[565]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[566]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[567]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[568]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:L_Leg_Clav_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[569]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[570]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[571]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[572]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl_Grp|RedDragonborn:L_Leg_IK_Base_Ctrl.Follow" 
		"RedDragonbornRN.placeHolderList[573]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[574]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[575]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[576]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.Follow" 
		"RedDragonbornRN.placeHolderList[577]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.RockFoot" 
		"RedDragonbornRN.placeHolderList[578]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.HeelRotate" 
		"RedDragonbornRN.placeHolderList[579]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.HeelPivot" 
		"RedDragonbornRN.placeHolderList[580]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.HeelTwist" 
		"RedDragonbornRN.placeHolderList[581]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ToeRotate" 
		"RedDragonbornRN.placeHolderList[582]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ToePivot" 
		"RedDragonbornRN.placeHolderList[583]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ToeTwist" 
		"RedDragonbornRN.placeHolderList[584]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.BallRotate" 
		"RedDragonbornRN.placeHolderList[585]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.BallPivot" 
		"RedDragonbornRN.placeHolderList[586]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.BallTwist" 
		"RedDragonbornRN.placeHolderList[587]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ToeTapRotate" 
		"RedDragonbornRN.placeHolderList[588]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ToeTapPivot" 
		"RedDragonbornRN.placeHolderList[589]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ToeTapTwist" 
		"RedDragonbornRN.placeHolderList[590]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.FootRoll" 
		"RedDragonbornRN.placeHolderList[591]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.ControlVis" 
		"RedDragonbornRN.placeHolderList[592]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.Stretch" 
		"RedDragonbornRN.placeHolderList[593]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.MaxStretch" 
		"RedDragonbornRN.placeHolderList[594]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.LegLength" 
		"RedDragonbornRN.placeHolderList[595]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.UpperLegLength" 
		"RedDragonbornRN.placeHolderList[596]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.LowerLegLength" 
		"RedDragonbornRN.placeHolderList[597]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[598]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[599]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[600]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_PV_Ctrl_Grp|RedDragonborn:L_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:L_Leg_PV_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[601]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_PV_Ctrl_Grp|RedDragonborn:L_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:L_Leg_PV_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[602]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_PV_Ctrl_Grp|RedDragonborn:L_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:L_Leg_PV_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[603]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:L_Leg_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Grp|RedDragonborn:L_Leg_IK_Ctrl_Main_Grp|RedDragonborn:L_Leg_PV_Ctrl_Grp|RedDragonborn:L_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:L_Leg_PV_Ctrl.Follow" 
		"RedDragonbornRN.placeHolderList[604]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.FollowTranslate" 
		"RedDragonbornRN.placeHolderList[605]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.FollowRotate" 
		"RedDragonbornRN.placeHolderList[606]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[607]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[608]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[609]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[610]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[611]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[612]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.scaleX" 
		"RedDragonbornRN.placeHolderList[613]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.scaleY" 
		"RedDragonbornRN.placeHolderList[614]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl_Grp|RedDragonborn:R_Leg_Clav_FK_Ctrl.scaleZ" 
		"RedDragonbornRN.placeHolderList[615]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[616]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[617]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[618]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl_Grp|RedDragonborn:R_Leg_IK_Base_Ctrl.Follow" 
		"RedDragonbornRN.placeHolderList[619]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_PV_Ctrl_Grp|RedDragonborn:R_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:R_Leg_PV_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[620]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_PV_Ctrl_Grp|RedDragonborn:R_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:R_Leg_PV_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[621]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_PV_Ctrl_Grp|RedDragonborn:R_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:R_Leg_PV_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[622]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_PV_Ctrl_Grp|RedDragonborn:R_Leg_PV_Ctrl_Offset_Grp|RedDragonborn:R_Leg_PV_Ctrl.Follow" 
		"RedDragonbornRN.placeHolderList[623]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.translateX" 
		"RedDragonbornRN.placeHolderList[624]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.translateY" 
		"RedDragonbornRN.placeHolderList[625]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.translateZ" 
		"RedDragonbornRN.placeHolderList[626]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.Follow" 
		"RedDragonbornRN.placeHolderList[627]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.RockFoot" 
		"RedDragonbornRN.placeHolderList[628]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.HeelRotate" 
		"RedDragonbornRN.placeHolderList[629]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.HeelPivot" 
		"RedDragonbornRN.placeHolderList[630]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.HeelTwist" 
		"RedDragonbornRN.placeHolderList[631]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ToeRotate" 
		"RedDragonbornRN.placeHolderList[632]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ToePivot" 
		"RedDragonbornRN.placeHolderList[633]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ToeTwist" 
		"RedDragonbornRN.placeHolderList[634]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.BallRotate" 
		"RedDragonbornRN.placeHolderList[635]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.BallPivot" 
		"RedDragonbornRN.placeHolderList[636]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.BallTwist" 
		"RedDragonbornRN.placeHolderList[637]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ToeTapRotate" 
		"RedDragonbornRN.placeHolderList[638]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ToeTapPivot" 
		"RedDragonbornRN.placeHolderList[639]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ToeTapTwist" 
		"RedDragonbornRN.placeHolderList[640]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.FootRoll" 
		"RedDragonbornRN.placeHolderList[641]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.ControlVis" 
		"RedDragonbornRN.placeHolderList[642]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.Stretch" 
		"RedDragonbornRN.placeHolderList[643]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.MaxStretch" 
		"RedDragonbornRN.placeHolderList[644]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.LegLength" 
		"RedDragonbornRN.placeHolderList[645]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.UpperLegLength" 
		"RedDragonbornRN.placeHolderList[646]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.LowerLegLength" 
		"RedDragonbornRN.placeHolderList[647]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.rotateX" 
		"RedDragonbornRN.placeHolderList[648]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.rotateY" 
		"RedDragonbornRN.placeHolderList[649]" ""
		5 4 "RedDragonbornRN" "|RedDragonborn:Walker|RedDragonborn:Controls|RedDragonborn:Legs_Ctrl_Grp|RedDragonborn:R_Leg_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl_Main_Grp|RedDragonborn:R_Leg_IK_Ctrl_Grp|RedDragonborn:R_Leg_IK_Ctrl.rotateZ" 
		"RedDragonbornRN.placeHolderList[650]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "WalkerRN";
	rename -uid "CE8751FF-48A6-73C3-F4AE-5D8DE17C91A0";
	setAttr ".ed" -type "dataReferenceEdits" 
		"WalkerRN"
		"WalkerRN" 0
		"WalkerRN" 6
		2 "|Walker:Walker" "visibility" " 0"
		2 "|Walker:Walker|Walker:Controls|Walker:Transform_Ctrl_Grp|Walker:Transform_Ctrl" 
		"translate" " -type \"double3\" 20.80922983095957335 0 0"
		2 "|Walker:Walker|Walker:Controls|Walker:Transform_Ctrl_Grp|Walker:Transform_Ctrl" 
		"L_Leg_IKFK" " -k 1 0"
		2 "|Walker:Walker|Walker:Controls|Walker:Transform_Ctrl_Grp|Walker:Transform_Ctrl" 
		"R_Leg_IKFK" " -k 1 0"
		2 "Walker:Geo_Layer" "visibility" " 1"
		2 "Walker:defaultRedshiftPostEffects" "version" " 2";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CA6BDFF1-4AB8-060C-C1C5-B5808864CDB8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 638\n            -height 440\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2443\n            -height 1041\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n"
		+ "                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2443\\n    -height 1041\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2443\\n    -height 1041\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D54E4A08-4ED9-81DC-3652-EEB2B04CA266";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTL -n "L_Elbow_FK_Ctrl_translateX";
	rename -uid "B9C01D8A-46BC-084A-EA66-72A956ABC191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Elbow_FK_Ctrl_translateY";
	rename -uid "98DCBE0E-4413-46AF-7166-EFA0F0949393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Elbow_FK_Ctrl_translateZ";
	rename -uid "C65B2A93-4D2A-928D-1DC9-D58551188761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Shoulder_FK_Ctrl_translateX";
	rename -uid "F615175E-4345-313E-0778-4898478B211D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Shoulder_FK_Ctrl_translateY";
	rename -uid "8D4E2A7E-40E2-97CA-9B83-E2B65BA1FD9A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Shoulder_FK_Ctrl_translateZ";
	rename -uid "D877BCB7-4EBE-D1D6-FBF8-1AB2226C8D89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Wrist_FK_Ctrl_translateX";
	rename -uid "7B0FBEA7-4D9C-3BB9-E5EF-8D9369AEA35C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Wrist_FK_Ctrl_translateY";
	rename -uid "0FC2628A-4D84-86FE-EAFC-BC987D6576B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Wrist_FK_Ctrl_translateZ";
	rename -uid "008B0C68-4F0C-AE3A-07BC-B09693646BD5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Clav_FK_Ctrl_translateX";
	rename -uid "9DB8832E-4CC1-9999-7AF9-488DC3AAB791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Clav_FK_Ctrl_translateY";
	rename -uid "B9DDD7A6-4868-8F73-EA76-6E969E934D09";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Clav_FK_Ctrl_translateZ";
	rename -uid "1D6C7D05-4089-ECB2-8FB1-3297EA2F2CD9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "56A6ED81-4506-E629-42A6-ECBDEE51E4BC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "F45CD6AE-4710-48B4-6B1B-95BB37E859AA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "69F478EE-48DD-1BBF-EC76-6D8CCB2005D4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "A4D63601-4DAE-3C57-C03A-F59854DEAA1F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "9A35589A-40F3-A357-6652-029D30599739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "5D114CD8-49D9-1CD1-2421-78860089A4F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "CEE4CADA-46FD-2C6E-B2AE-EEB47CE8AF6B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "44BDEFBF-4E87-5498-AEBF-76BEF17F19A6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Middle_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "80F53010-4F05-47E4-4A43-9FA23F5AE399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "A8A75C31-452C-FD8F-F09B-F8AA2F5148C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "F373BCE0-4550-DF26-86C2-09B2C9D62D25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "75525A94-4C1D-FDAE-A100-BDB0CDEE88A6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "F28DF382-41FB-CF77-09E5-3AA2A3BB77C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "79A29E14-4264-DEF9-1CE2-539CF11BB511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "79931815-498B-8424-F9FA-DE890F2B008B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "97599D78-4429-C296-46B8-3CA5FC82EA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "E755BCD1-4B46-2DB5-746B-C7962AF46110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pinky_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "9DED8FD0-4013-4366-CABC-EEACB37338F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "524E4EB8-4497-155C-FD2B-B398B3DE1404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "45A20A1C-45B3-F2F0-F9F8-649A15A199AE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "44CE3776-4CAB-217D-3B58-7F8137523A99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "87E8B21F-4EA9-635E-7B9A-9C826E909210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "405ED544-411F-835E-20BD-7DA481AF051A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "F3D22418-4414-7542-CAB4-1A91A971F656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "368234D5-4670-B7F4-C64C-5B8E41A9FB0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "8229EF85-43CA-DC71-27C0-0398AB3B2F2A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Pointer_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "E48FFCAA-4603-48FA-D4C0-E1A6B549B99C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "7F44B9FC-4A66-9835-A265-72B49AC3102D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "010F798E-47ED-7BB3-CEFA-28A4ECCB13C1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "D76301CC-4472-FAED-7A67-D6A3B317E396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "2DB2E106-4620-A041-E551-B3ABF1CB351B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "E8C28135-4B5C-C693-929C-A1846BE1FD86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "F72C7BD8-4D73-0935-6831-F39E24021493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "A6C014EB-409C-08B3-E660-FCBD1836ACCF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "6A6D7C17-4B38-4DDB-70E4-BE9E89DFCA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Ring_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "BDEAB060-4E6F-CD3D-04D7-4989F58A4861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "BF3E98BB-46AD-8A15-CE22-669EDEEDE566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "57735774-4776-84F7-6F69-71A425482942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "37932A87-43EB-8113-632E-0197C84CD4B1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "6359507E-45E4-B758-B049-34A430A533AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "1321F697-47D2-0E48-D719-389089B90B56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "55864E71-4802-7B82-3DC9-599913E408F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "E2E65971-4C47-31F8-1276-849AD30C42E6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "25697389-4B22-22BB-87E8-1683FB2B925F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Thumb_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "F1BEDBB9-45DB-FE19-3197-EE828BFA98B1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Elbow_FK_Ctrl_translateX";
	rename -uid "AD474DC2-4BD8-268D-4B2E-E790E8B24D49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Elbow_FK_Ctrl_translateY";
	rename -uid "49354B4B-4568-2F4B-D306-51AB81159D0B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Elbow_FK_Ctrl_translateZ";
	rename -uid "7F13B2E5-41A1-C254-59FD-FF858CF17FDE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Shoulder_FK_Ctrl_translateX";
	rename -uid "E2A37ABF-4A4B-630F-906C-BF8DBD995E01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Shoulder_FK_Ctrl_translateY";
	rename -uid "05D0B41C-4315-A0EA-7EC2-BA9F635A4CE6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Shoulder_FK_Ctrl_translateZ";
	rename -uid "05EC8DDE-4D1E-C0EF-B4E9-67AAA0A3C563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Wrist_FK_Ctrl_translateX";
	rename -uid "D0151DD9-4AAA-406A-EBBA-3BA66A6321E2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Wrist_FK_Ctrl_translateY";
	rename -uid "E1A8BD3E-4F52-C6B2-B338-789D2AE6261C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Wrist_FK_Ctrl_translateZ";
	rename -uid "D6E8C9B2-43E2-88A6-AD97-D1A08A497088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Clav_FK_Ctrl_translateX";
	rename -uid "EDFAA0FD-469F-E9D6-3B84-7EBEF085FD6C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Clav_FK_Ctrl_translateY";
	rename -uid "E1439959-427B-1ED4-06AB-819EAF7A7C40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Clav_FK_Ctrl_translateZ";
	rename -uid "37D69C7B-478B-1978-2462-C1951CF06667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "A9495156-4A73-F41B-D60D-098E7E559734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "24608443-4C2A-EFE7-9489-DEA91FB52ABD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "20227BB3-4692-E68E-4C28-CCAB8E9E3B04";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "0F0A052C-4A7E-43AC-D630-34A395ED4EC2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "EB7DDEE4-4E07-9E1A-AC60-6EA406678F44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "90C8A532-4FBA-4D60-BD0A-E2BDFE916C26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "AEDB1F1A-4F2D-5F2C-92DA-BC9C879CEBC7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "E27DE9A9-4159-E308-EA0A-59BF2C6EEE92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Middle_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "CD2F9DBC-420D-B35E-2490-D1B0079338F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "61BF883C-41AC-A279-CF19-D8820F099E8E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "99DB6D07-44DF-EAAD-EE47-BEB254778EA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "3520FAE9-44A2-F13D-A3F0-E7B48C5B4887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "A5447235-4AEF-8EED-31E3-A49A0D9D8373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "FE72D3C6-4F33-3A41-42E9-41BA63A51B76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "AC737542-464A-787C-3577-4EA05E2BA20C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "612CDC2E-4B59-06AB-E377-C5823E8E420B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "318B7848-4B7F-386F-0A36-9C87A781C199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pinky_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "8459D833-4842-8624-380D-45A4992447EC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "F27EA29E-447A-F1C6-7EF8-A2BB19D969A1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "44B40C75-40B2-2D5D-4285-F18896DCBA0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "258DCF0C-4F6E-5043-E730-AE8B778AC682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "B5C265DF-4F26-4DA3-96C6-BFBBD85D8817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "316B23EA-43AF-3038-02C0-4B9541D6B673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "1325BD12-43D8-D0A2-F573-A79986E678A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "6FEE698D-4D8A-45F2-52FE-4BB76B88E347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "C238861C-4300-C495-E551-0EA3DF87AA4D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Pointer_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "F0851E31-4BBD-50A7-8C72-A6B1CD89E78F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "F05FBC2F-435E-EF99-FC34-06A44944FF25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "76190FEE-40F5-85B1-BBB2-0DB8B820A7BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "D8555D6A-4FBB-8D5F-73E7-9E8AE7130DA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "F58AD403-444B-D085-C6D7-4EAC562BC4AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "E1341862-4A09-2EEF-0494-78BA9F7AEBF7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "F3FF366E-4D8E-D905-6541-22B44DB33A82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "F38D1F6C-422B-78C3-C7E3-69A2F78EF033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "BE78A979-4EA2-8424-5188-B08E192CC0E8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Ring_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "1C0D2E5C-43E2-D224-FC8D-7DB0DD2A2BAD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_01_FK_Ctrl_translateX";
	rename -uid "C6A5CBB1-4BBB-9253-0874-BC91612FE482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_01_FK_Ctrl_translateY";
	rename -uid "458275F3-4B45-B99B-AB1E-A3B163AE35D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_01_FK_Ctrl_translateZ";
	rename -uid "DC399FA2-4D6F-FC47-8554-4293CAAE4536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_02_FK_Ctrl_translateX";
	rename -uid "AF40B856-4AF2-D5A0-83BB-98AF2C85713E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_02_FK_Ctrl_translateY";
	rename -uid "463BBA4B-4717-9149-9C0F-1EAFD00FE45C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_02_FK_Ctrl_translateZ";
	rename -uid "980F986D-47ED-8972-CF4A-14B0AA8C0BEB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_03_FK_Ctrl_translateX";
	rename -uid "74C7A786-410E-ABFA-054E-1797BEDF5CBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_03_FK_Ctrl_translateY";
	rename -uid "533AFC6F-47C0-3084-7233-019C9E55ADBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Thumb_Knuckle_03_FK_Ctrl_translateZ";
	rename -uid "CA18936A-45BF-375A-EE42-0ABDD44F795D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "COG_Ctrl_translateX";
	rename -uid "6921B413-4022-C99B-6325-A68009D6EB09";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "C0E2389C-417A-B930-E3C2-7381BC93B358";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.85303781588925176 4 -1.2416959725411321
		 8 -0.86315172514050076 20 0.39453413304641671;
	setAttr -s 4 ".kit[0:3]"  9 9 9 10;
createNode animCurveTL -n "COG_Ctrl_translateZ";
	rename -uid "00C66438-40A3-EA10-F781-F8B61222C6C7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.24540957231339799 4 0.35996954180284924
		 8 0.11698985524162431;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_Leg_Clav_FK_Ctrl_translateX";
	rename -uid "CDC59E48-46A1-5C79-EBC7-1896023FCAA1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_Clav_FK_Ctrl_translateY";
	rename -uid "82647BB2-49D0-6D19-E28A-43B71C9B6747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_Clav_FK_Ctrl_translateZ";
	rename -uid "9999DF12-4DB9-245E-F8F9-C797AA909591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_IK_Base_Ctrl_translateX";
	rename -uid "99C3BAFB-40C4-BBDF-0E46-25B8A7674325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_IK_Base_Ctrl_translateY";
	rename -uid "FF8E7BA9-45AB-D71F-6FBC-578B51D54076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_IK_Base_Ctrl_translateZ";
	rename -uid "1C640B8B-464B-C4ED-1BF5-3AB9298C8A77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateX";
	rename -uid "1D988EE7-4DBE-C815-38E5-8B8DCBFC279B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.34343398908209927 20 -0.81867783709722075;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateY";
	rename -uid "2FA8EE86-425F-5267-8820-BF9A4D2A0FFE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateZ";
	rename -uid "05F7FDF8-4ABE-BD86-17E6-E09B5AF29D79";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.2392101917699687 20 -0.73183276470523939;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTL -n "L_Leg_PV_Ctrl_translateX";
	rename -uid "5C5BA055-45D2-BE92-7C33-ACB8E941A668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_PV_Ctrl_translateY";
	rename -uid "7A4765C7-4F1A-09B3-C2C0-F5A49033F467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Leg_PV_Ctrl_translateZ";
	rename -uid "AB92E182-473F-1D45-3761-69B497916F82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_Clav_FK_Ctrl_translateX";
	rename -uid "1D527170-426E-A30A-8C36-E6919AA1B9EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_Clav_FK_Ctrl_translateY";
	rename -uid "047A6839-4606-C9E3-CC00-9FA883F2AA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_Clav_FK_Ctrl_translateZ";
	rename -uid "3DB89462-4760-8392-6A33-0084F1C62678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_IK_Base_Ctrl_translateX";
	rename -uid "D7F8B137-462A-A2AC-F7AE-66A16C76B185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_IK_Base_Ctrl_translateY";
	rename -uid "8E0CC362-4F3E-69DA-94CA-56943F847D7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_IK_Base_Ctrl_translateZ";
	rename -uid "1EE264E3-45E1-4BCB-01AC-328CBD0E9F41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateX";
	rename -uid "CE0A7564-4EF6-0747-6942-EA92677024BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateY";
	rename -uid "11D76D22-4F05-772F-401F-36A9532BA4F9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateZ";
	rename -uid "B46B42B9-4480-1A17-81A2-47B5FD907AD5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3071605951444614;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_PV_Ctrl_translateX";
	rename -uid "C98641AE-4B3E-748A-73DA-5AB2C3716F88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.083853253880834464;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_PV_Ctrl_translateY";
	rename -uid "E74ADD22-44E0-521B-C87F-87AD5429BB2F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.053424985258162735;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Leg_PV_Ctrl_translateZ";
	rename -uid "9F8E6DDF-4E82-F70A-A50F-B195F32F7A3B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.2666542002620496;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Eye_Ctrl_translateX";
	rename -uid "24E84F22-478D-12D4-DB6A-8DB14B0FFB72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Eye_Ctrl_translateY";
	rename -uid "C18F52D3-438D-77C8-70EC-D8AC49AAE885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Eye_Ctrl_translateZ";
	rename -uid "C84717FD-4BF2-0F74-4727-4BB958E8F0AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Eye_Ctrl_translateX";
	rename -uid "6D5609E1-4D5B-BE4A-BB9A-D1BEAF6BAAD0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Eye_Ctrl_translateY";
	rename -uid "477D3D8F-4422-97CB-106F-ECBBEBFFE713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Eye_Ctrl_translateZ";
	rename -uid "AA4FA05D-4133-959F-C8B8-13B2BD61D629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Eye_Ctrl_translateX";
	rename -uid "41D46F94-497C-41C8-A376-AE822E0AA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Eye_Ctrl_translateY";
	rename -uid "70531AAA-4EA7-DFD3-2F20-9A95F5EE9BFD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_Eye_Ctrl_translateZ";
	rename -uid "2D3D0A07-4179-9C6D-ADDC-BB9E4EDDF71B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Head_Fk_Ctrl_translateX";
	rename -uid "FC0076F6-4B22-67CA-7810-C2B3B5F42732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Head_Fk_Ctrl_translateY";
	rename -uid "18FFD29B-43F8-6702-AEC7-DA97E68F29B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Head_Fk_Ctrl_translateZ";
	rename -uid "919180EB-4905-1DC8-A8D7-D99EC9EB7497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Face_Ctrl_translateX";
	rename -uid "65622A22-4E05-0240-19E3-D3BA20B2111A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Face_Ctrl_translateY";
	rename -uid "09B58AFD-4553-3FFD-CD66-8A9FA31DDE17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Face_Ctrl_translateZ";
	rename -uid "CFA2AF09-412F-F9B9-D489-5BB9D65B9C08";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Neck_01_Fk_Ctrl_translateX";
	rename -uid "86BD2103-4FE9-AE66-B91E-05BDE130329B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Neck_01_Fk_Ctrl_translateY";
	rename -uid "DF337641-405A-483A-C46A-7BBFFA21FCB1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Neck_01_Fk_Ctrl_translateZ";
	rename -uid "E8AA9A28-4AAC-3494-6CAC-09B4D158C902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Neck_02_Fk_Ctrl_translateX";
	rename -uid "674EE909-4ECE-C836-F0A1-63832E8C6B8C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Neck_02_Fk_Ctrl_translateY";
	rename -uid "45595E0B-4104-7B24-9498-998CDBB67231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Neck_02_Fk_Ctrl_translateZ";
	rename -uid "59EA916E-401B-FA15-430C-0482F33BF6EC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Pelvis_FK_Ctrl_translateX";
	rename -uid "C0DC7E9D-4FD1-D92B-0CB2-B5A7CF7D040F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Pelvis_FK_Ctrl_translateY";
	rename -uid "F9B539E1-4558-72CB-AFF1-A4B0BA305484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Pelvis_FK_Ctrl_translateZ";
	rename -uid "CAE33ED8-4616-18CD-68C5-8A8002F25BBA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_01_FK_Ctrl_translateX";
	rename -uid "245326BF-484B-F5D5-B0BB-A582490C9F4A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_01_FK_Ctrl_translateY";
	rename -uid "CC5FF362-46D8-8054-AF32-FCBB1D22F30E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_01_FK_Ctrl_translateZ";
	rename -uid "5F1FF317-4A9A-6B43-EC75-028EF14D0DF2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_02_FK_Ctrl_translateX";
	rename -uid "688C4DB7-4702-7F93-98FA-A1A32E3441DC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_02_FK_Ctrl_translateY";
	rename -uid "D2C3852A-448B-A80A-1CF8-C6A07E71DA0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_02_FK_Ctrl_translateZ";
	rename -uid "121F84DD-4493-C48C-7F79-8EB7935789A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_03_FK_Ctrl_translateX";
	rename -uid "276082CA-4382-1DCF-B2FC-BF8ECCF7C904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_03_FK_Ctrl_translateY";
	rename -uid "B4EE904A-4D81-8C36-A0A9-4B98321D5424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Spine_03_FK_Ctrl_translateZ";
	rename -uid "3F2A3699-4CB8-83D7-8DF1-38A7ADD26705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Transform_Ctrl_translateX";
	rename -uid "DD4B5819-44B2-7026-B046-CBA5474883B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Transform_Ctrl_translateY";
	rename -uid "7B0C8FBD-4E43-6483-F777-859D7A221493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Transform_Ctrl_translateZ";
	rename -uid "F4AB365B-4370-93CD-EE52-9A85EDF64542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "69CA82DB-4BF8-A032-6A29-548D54C5B400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "A7140774-4037-F7FB-A3B2-2985467EE88C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "3264CFAE-472F-5568-E2F7-8D87940ECFC6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "24A1108A-412A-7830-8DE3-DEBED6DD6BD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "C36585B3-4BBA-DA5A-B272-E5B7E15790FB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "6718DD3E-4DCF-B90A-5E57-04A5C0422B0A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "1779C0E3-4644-F6C2-44E3-93A9D9DC9CCB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "BFBDE63E-4D01-3006-9DE8-288B2251B53E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "6AFEE7FA-4D30-DF37-06C9-9084BA8EFBF2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "424C40A0-423E-3DFA-948C-22BCCA11131B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "EEDC8704-4DC1-15A6-2391-4DA3CC8AAA01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "284E1E45-462C-E3FD-26B0-AF801D17CB30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "C6B93872-4F31-F335-461B-3E91942A6D51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "C0C81C95-4267-0CD4-A324-5A981AAE8525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "4EC97A03-4A78-AED9-3F39-65A2204F8BDB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "2A3D3E6D-4C88-D941-28F3-40AE1CDF6520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "AA7C8B9A-4C6E-580B-B27F-93A4F4A88BCB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "4A1C75F0-407D-EDAF-607C-80A3827C0A93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "6E78E757-4EE2-FA28-2C6B-2A93D27BA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "0606BE4D-445C-A917-91D4-308B1FEC52C4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "2449C4EF-4506-D230-ADDF-71AEEDFE710F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "CF729ADD-461D-11CF-C614-6BBCE13DCD2D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "60A8A4C9-43EF-4549-2CFD-6FBC466C8DD7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "621604C1-450F-52DB-3ED6-429F78BF07E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "0A396F9E-4612-BD3B-DBF0-2CA6AE695417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "F2893F37-44DA-6194-EA37-33B558FCA5E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "D9175DB7-4BD7-DAED-B475-F08C4133A129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "B52476B7-444F-1185-EDB0-82AF70D360E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "4D3A6264-410D-E87A-BFC4-D08277F60249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "C2A3C823-4286-E805-C18A-B3B531B83BC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "C0EBFAB8-473B-3721-09C6-5BA4549C62FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "0ABA0A35-4FC6-13A4-D280-A997BD620B20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateX";
	rename -uid "1EC579EE-4B1D-0075-47AF-1E8A78941F25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateY";
	rename -uid "21783F79-4196-3524-09D7-8890A3F099BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateZ";
	rename -uid "BDD32D3F-4CD8-F07C-C21B-538B57506BB3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Wrist_FK_Ctrl_scaleX";
	rename -uid "C93CF638-4362-C11B-7344-6EAF6FF08229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Wrist_FK_Ctrl_scaleY";
	rename -uid "30AE8C8D-4D1E-BAEF-C932-69A5823F9076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Wrist_FK_Ctrl_scaleZ";
	rename -uid "B68A7E9F-4043-B19C-0B2E-148043360A0D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Wrist_FK_Ctrl_FollowTranslate";
	rename -uid "F867B3A1-41FE-7995-FAA5-56BA07485A5D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Wrist_FK_Ctrl_FollowRotate";
	rename -uid "34EDA37B-400A-5934-A27B-06A955AB9238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateX";
	rename -uid "3C03DF41-4856-0363-6794-518E20DE318F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -0.25370745859231797;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateY";
	rename -uid "D6F9CD5A-479D-23A4-E72B-439E13B60062";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -5.5945281792155948;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateZ";
	rename -uid "1118242D-4D90-B33D-54BC-5DA97330F61F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.3864240991148127 20 -6.4821728828169931;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "Spine_01_FK_Ctrl_scaleX";
	rename -uid "34152E0E-4A47-EEC9-54D6-2AA226E62D70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_01_FK_Ctrl_scaleY";
	rename -uid "E0DA519C-49C6-E3CE-485D-0AB69544A99D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_01_FK_Ctrl_scaleZ";
	rename -uid "1EB3E903-4CE5-4260-98E4-24B2EC826B9C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_01_FK_Ctrl_FollowTranslate";
	rename -uid "D41E8E1A-44CB-89FF-1EFB-EFAB4B43F4F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_01_FK_Ctrl_FollowRotate";
	rename -uid "0DC75303-4E49-3525-D40D-7586ED6FEB86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Leg_Clav_FK_Ctrl_rotateX";
	rename -uid "C9A4A611-4836-B788-6259-FDA7FFD007D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Leg_Clav_FK_Ctrl_rotateY";
	rename -uid "7FCA8F12-4EF6-08E8-F01C-C38DFCAB00E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Leg_Clav_FK_Ctrl_rotateZ";
	rename -uid "AA30C443-4E1D-AC72-ED11-9EA8967F430F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_scaleX";
	rename -uid "DEE35D18-4800-A19F-10F1-499250318040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_scaleY";
	rename -uid "AE3D36FD-4803-DF98-F57E-E7B717E2839A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_scaleZ";
	rename -uid "08FB93FB-4E8A-BE70-99A8-71AD60E5F3D3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "387143A9-4EC5-AD80-4926-279805BA6189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_Clav_FK_Ctrl_FollowRotate";
	rename -uid "21E654BF-4E04-E815-C68F-2F9008CC891B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "C3CEA9C4-46E5-8ADB-548B-B1B02FB8AEDB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "D3D16141-4617-239E-0049-16971A29E050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "3CE007A2-4F7D-DA99-3E69-4D8E9286CAAA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "6785CFE6-4302-9FE1-FB80-3F9BDA9987BC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "34835054-43E3-96EB-404C-94804174F56B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "BF8DE63B-4A4A-3E1E-D323-B09940A5688F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "D781D410-46A8-792D-005A-C1BD6FCABA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "CBCFB545-40A7-2395-5133-C988BF287E5B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "ACCEFFE9-4DB9-F4B5-86A9-1AA0B125C819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "7F4946F4-460A-B033-6083-8C9FF28D7F01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "7B588E7F-4C03-D737-EB87-E4826247A690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "EC4334CD-486C-B7C0-1811-98AABAB47E79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "5A644F64-4525-D726-81D8-0B93A9F0A391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "5EEE4AB6-4389-1B53-8CD5-DAAC8230ADC1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "EFCABB13-485B-0EB8-FF49-F5A83FC35F97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "70F6AE71-45B8-0189-4C38-B5996821F07D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateX";
	rename -uid "A1DE171D-4E3F-6E37-837A-8F853D053970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateY";
	rename -uid "DA33E7F8-48B9-860D-0848-22BD614B4BEC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateZ";
	rename -uid "15720BB6-4045-51DF-E5F2-60B2FF375385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Pelvis_FK_Ctrl_scaleX";
	rename -uid "24BB0EFB-4798-B5BF-6819-F682FABA0C2F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Pelvis_FK_Ctrl_scaleY";
	rename -uid "855160B4-4DA1-F753-E7FE-A29D0409FC25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Pelvis_FK_Ctrl_scaleZ";
	rename -uid "AD40C7EE-4E15-1E57-4525-E38120FF5F29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Pelvis_FK_Ctrl_FollowTranslate";
	rename -uid "908B05BE-4CBB-F5CC-7FEA-04AEC5A75E8D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Pelvis_FK_Ctrl_FollowRotate";
	rename -uid "DE7CB65F-4824-AF34-2744-569D745B8702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "CED2ADB3-4CD7-38FB-3555-DCAC0EED0E6E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "1F539B54-408E-B52E-6001-DDA290660241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Thumb_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "F61C9A90-4F2E-2A8A-76EC-3FA7390555CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "47BA1BCD-49CD-A412-3C51-2CA75CDFA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "0BA93268-43CD-C80E-B33C-B98AC2CF40C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "7C3E3170-409F-9D33-6FE2-9F98802C2CCC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "58793CAF-4A0A-F959-4C5B-37A5E91AFFAA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Thumb_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "5F69CCC6-40CF-42EE-0BD0-DFA4A93E29B3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_PV_Ctrl_Follow";
	rename -uid "602C0B01-4E64-8A3B-EDA9-5D935741117E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "21D84874-4C8F-C82E-14B7-F2B0D83F5DD8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "02447FA2-4F08-FC81-88F7-0A943F8B54E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "AE01DCE2-4367-5585-85E4-BEBBAB2F6883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "6A796470-46AF-4AD4-BC56-6A87C2D64167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "EB0E016B-487C-FCEC-21A2-7F8D37D63B68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "A3035026-4F32-57F1-EEBF-F3972460625C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "60687478-4057-ACFD-C497-CA8C62C86707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "FFDF067D-4D1B-A496-1FEC-F9BA085C6BA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "86EADD88-4FE7-26D2-B5E6-0DB68409EF21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "4FDC659D-4D54-510D-2717-74B225235EC4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "5749ABE2-4084-C33A-2BCA-E89EDB194DBD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "DA3ED14B-4188-1BC6-5ACA-1891691D15AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "EEBF91F4-42E0-EF4C-FBBE-42A3E4BE16DC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "2A01BEE1-45EC-1566-D72A-1B98AF424776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "8EB921B7-4AA2-1CDA-74E3-3FA886ACF66B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "C0527323-4CBC-6CDD-53B4-EFBF9A797BA0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "6ABF2311-4FE1-7535-91E6-10AA43010575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "F8407DA3-4D0D-BC35-219C-48BD4F3A1375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "A6FF3346-4896-72F5-C71C-CF9B4278E95C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "1BF614BE-468A-6072-E494-5B937BCC0943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "8724FC13-422F-EDA0-5E26-FFAA0F0E01C8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "F0C197C6-4D4C-8CA0-8B3D-F59DB25C456F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "584AF095-4840-C068-5D13-05986877EC4C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "D9E0CBD7-49E7-9EAB-43AA-8683561AED0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "EBFACC24-4F96-DCF7-3B35-E1B8D19AD213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "A3BDDF83-4E45-F1DD-D482-01B218C33D62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "8D23A8BB-483C-0C85-9774-82A661CC1B79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "D46DFC49-4ED4-E0BA-4953-0D924C797318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "1B6B8129-4FFF-3CDF-1307-8F833EE3EE7E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "03B3C0F8-4003-5C28-6158-949B7B5C363B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "804D4CF9-40EB-DC66-D2CC-75B494E68BB8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "D9508703-41C2-CAE4-1EF5-D1A682A2415D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "4A5EBA54-4284-A912-3AE1-1487DFDF9342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "B755F72E-4B27-3B1B-1B61-A5B156998BF3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "7E02E4A7-4B0C-BA44-9D69-05A3C8199469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "09F0E95B-4120-FA8D-A7DC-E2BD5320A615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "21AAEB45-4A23-4DCE-83CB-31AA3B7C986B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "27F44856-4001-4ABD-0F83-BFBE2736F15B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "75A4D904-4B47-DA83-7939-05AF28D4A818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "BA218FAB-4162-34FF-429E-A8BCD352C02A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "28B9AF40-46E9-621B-5DD6-96B4D286EF5F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "54908923-45D4-E0F0-CE57-0DB41C95851F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "BB708C68-43B3-4AF0-E1BD-69A5775FD6C0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "07F84FCB-46E0-5D30-ED12-9C8BA8C6B74B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "4BAA3B42-4ADB-1E66-FF07-0F92D9FA1473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "C842540F-44B8-5037-D692-F3BEFB5F6FC9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "66B86CDA-43C3-658D-BE22-6D879C5F5BB9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "57D02609-4914-D0E5-DEC6-ABBA9B7E97F6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateX";
	rename -uid "77B802B3-4D60-9772-52BF-47A43EA84D3D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -10.481302276883456;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateY";
	rename -uid "EDE76DAE-4388-B880-09B7-899EDE54A970";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 5.2055095212201463;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateZ";
	rename -uid "BA824053-4D02-71FF-38A8-948B9BD1B088";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4144125680017017 20 5.5954092012748236;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "Head_Fk_Ctrl_scaleX";
	rename -uid "277922B0-4C6E-E584-5DDB-3DAFBDFF2E9E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Head_Fk_Ctrl_scaleY";
	rename -uid "9E86CBF3-4E16-4B5A-1C27-3C870A8AD102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Head_Fk_Ctrl_scaleZ";
	rename -uid "032818D3-4B79-7DAF-80C4-BEB295351CE3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Head_Fk_Ctrl_FollowTranslate";
	rename -uid "E4EC298A-4317-2EA6-A02D-42B5231B27E6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Head_Fk_Ctrl_FollowRotate";
	rename -uid "FAEA92F2-4C1F-EEA4-43FF-A1AF4140D3A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateX";
	rename -uid "44025607-4ECE-77E4-70EC-4C91A3F66DF8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateY";
	rename -uid "4AB160EB-46DA-A501-6C53-F0B9F50035D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateZ";
	rename -uid "1116BFB2-4118-855F-A355-298DB3847522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Clav_FK_Ctrl_scaleX";
	rename -uid "F2F9F5AE-40F4-BF08-1C6A-718ED436A255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Clav_FK_Ctrl_scaleY";
	rename -uid "EAA9CA99-4145-5465-EBB9-0CBC6766CE5C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Clav_FK_Ctrl_scaleZ";
	rename -uid "CC70573B-4EA9-EF3B-F703-15950A225AC6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "92086DA8-47AD-858F-4CB3-E3BD693EDAAB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Clav_FK_Ctrl_FollowRotate";
	rename -uid "06B72070-4B2D-930F-7D44-2E958C11D619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "90B39DDC-4202-5B7E-1A6A-CB8D90AF5B4A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "52910633-404D-1F24-C5F5-A0847D283070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "5EE12FEF-497E-D32F-4628-749A68CA4E27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "60D1531C-4860-3066-1012-CE9E4401CC32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "F9FB162D-4808-6F9D-8E97-EE9B210F533C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "F13CC525-4B84-6B67-6AFE-549ED16DEA06";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "38FAEA09-4F48-062A-329F-2A87E44F8D6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "79567EF7-4752-2F0F-617D-F6B6401D31F2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "CFD65A82-44D2-7A98-3E2C-C58383099B79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "3924F5D7-48FC-300E-1009-09A7BA08B408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "4D7DFA06-4675-7C2F-29A2-198543CD2318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "0389B889-4EA9-5514-FDC2-0EBE263348F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "F382AA70-48AA-956D-D010-E9A0336D69F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "85FFD3FB-4A31-23FD-89C4-E3928C2C5913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "0E79D3A5-4050-617C-31A7-8DA4EA5AC0AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "9FFD0366-4673-FD88-680C-0D9A99E4109B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "C043AFAF-4CEA-8514-B816-A88B34F3F98B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "C6D66760-4219-0A8A-FD5E-97B341EFE518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "E5943FE0-4747-56A5-8560-228CAE1DFA2E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "BF3D15DD-4A98-6AFD-1EE0-4FB24A8D8FDB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "2B736028-46FF-33A4-1B8C-DE9E890FBE0F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "03131CE0-46E8-D558-3D43-CE9E2463B58A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "D39854D3-4798-AE98-1810-45AC094744D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "9B4C117E-48FF-A631-4DDA-4D8D87AEC7E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateX";
	rename -uid "ACA9C2DC-4F99-CFB5-E173-399CC912FD79";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -52.29594752703391 8 -52.692593032785254
		 20 -17.649588784774195;
	setAttr -s 3 ".kit[0:2]"  9 9 10;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateY";
	rename -uid "7FF68F93-47FC-DBB6-9246-3594FC746C98";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -32.281993238768898 8 -37.361705749481047
		 20 -3.548563803953209;
	setAttr -s 3 ".kit[0:2]"  9 9 10;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "408C3F2B-424C-CF5C-34B6-1CA0DCB67D9B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 56.626503269990877 8 57.122953867003822
		 20 84.419437807303126;
	setAttr -s 3 ".kit[0:2]"  9 9 10;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_scaleX";
	rename -uid "D636A419-4C3C-6BB9-B75C-4DA5A747BDCD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_scaleY";
	rename -uid "0533722D-49B1-AB3E-D371-5D8870CCBE57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_scaleZ";
	rename -uid "C1B0C46B-4A38-00AA-0307-04AB6A5348E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_FollowTranslate";
	rename -uid "FD6955ED-45EE-60E6-F547-D09BA9C74AFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Shoulder_FK_Ctrl_FollowRotate";
	rename -uid "12D10B7A-47D3-DCA1-98E4-3DA22D18DDA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateX";
	rename -uid "F501BCDA-4A90-5637-A37B-1EA444BCD618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateY";
	rename -uid "F40B81DB-4614-9F53-4295-96A17FE6E575";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.58392353609696312 20 20.001776100839937;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateZ";
	rename -uid "C5978992-47B6-5E8D-AC45-46803010BCB5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_Follow";
	rename -uid "A53443B0-40B7-4917-883C-4BB207D38860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_RockFoot";
	rename -uid "88E87842-4FB6-E731-152A-86A69DC04612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelRotate";
	rename -uid "E87D0026-4991-BDE8-AB16-D08BFC8ABE8D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelPivot";
	rename -uid "08ED58B5-4108-EF20-80A0-0B921A640791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelTwist";
	rename -uid "8E7B3C37-4E17-5329-6C13-21BDF96118B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeRotate";
	rename -uid "4FD1E78F-42A3-DF34-908B-1288C7AA55C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToePivot";
	rename -uid "4909A4FB-4F5E-9FE9-0853-0AB148A961C1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTwist";
	rename -uid "675FAFBC-4AFE-DDD9-E77C-F189A2B1E287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_BallRotate";
	rename -uid "22E69E49-447F-09F7-2752-778C818167D4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_BallPivot";
	rename -uid "A9A44397-47FD-ABDC-ECF7-6A8EBAB9BC8D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_BallTwist";
	rename -uid "2F97A48B-4EB5-3B9A-5CA8-5EA43E82F60F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTapRotate";
	rename -uid "25C73AF1-4919-A1B3-0500-3591DFC7CC30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTapPivot";
	rename -uid "E9566148-4300-C4E7-7641-3F895F4FE7CB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ToeTapTwist";
	rename -uid "7DBC0443-4435-1FC1-D9AC-54A186EBAE26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_FootRoll";
	rename -uid "48BA260F-4933-BDBE-0C8A-7394C0B4D2CD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 3;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "L_Leg_IK_Ctrl_ControlVis";
	rename -uid "6310CB19-4CA7-076E-EEEE-98B539D55B82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_Stretch";
	rename -uid "D96DC59A-4AF8-AD8A-9CC5-449BA60DCAB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_MaxStretch";
	rename -uid "3278D7C4-4A83-1798-3DAC-C8A8E9AFC148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_LegLength";
	rename -uid "65B2096B-48E9-60A0-BB20-B48466619FB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_UpperLegLength";
	rename -uid "99AC7587-4207-D7BD-56A6-6AAB9BEE8086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Ctrl_LowerLegLength";
	rename -uid "99C95122-4FD9-56FC-95AD-86B2CF6A6CC5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "6C4F0C78-47B7-05FB-ACD3-CFA28CEFCEDF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "23B34E4E-4D23-1675-49CE-83A0B14E6745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "D075BE4F-4E55-F1E4-8EF8-55B8C2116C61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "7C98EA23-4BA5-DEAD-47E3-7CB4F2079100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "240A2CB3-4312-54AF-459B-E3B400848F75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "29F07157-470E-7EDB-AD98-F2BCF319D3DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "0A17B663-4A90-ED99-6732-2299DA21575C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "715CBE0E-41B8-DDA7-57CC-ED8920F11C35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "COG_Ctrl_rotateX";
	rename -uid "8E6DFCB7-4E8F-582A-C87A-17B814CB572E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -27.673200841015124;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "COG_Ctrl_rotateY";
	rename -uid "7A52F7CD-4EFE-3AC8-DC46-17BAFBB71035";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -10.995842468270952 20 26.469944359485094;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "COG_Ctrl_rotateZ";
	rename -uid "862B9859-4002-48A9-386C-D3B0FF74235C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -29.030020093116569;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "COG_Ctrl_scaleX";
	rename -uid "E93D32C2-44CD-B38D-21F1-A3BD9386E7B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "COG_Ctrl_scaleY";
	rename -uid "955AF0FB-4E21-A80F-2CD7-9CAE1042263D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "COG_Ctrl_scaleZ";
	rename -uid "DBD75B72-4B44-5966-5F06-0288F2967C50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "COG_Ctrl_FollowTranslate";
	rename -uid "D823F436-499C-3B2B-D3B9-E89A44474076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "COG_Ctrl_FollowRotate";
	rename -uid "DD1B1E46-4ECB-B723-D11A-119801096C2D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "946C8916-4AD5-01FB-B2AB-609ABB627961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "752DDEA1-4173-AA78-9DE4-F6A7CA747639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "66836963-4FAD-38EE-55F9-E1B74D0B4DE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "C1E5E5C2-454A-8F1F-D16E-80B4E447E003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "26ACD037-4FC2-6076-EB5F-79B143678BC9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "848B1C0E-452C-33B0-C9C2-B7AF268551CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "56B7C3BA-44B8-56C9-0BE8-7EB60A5CE6C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "9566011C-4CE5-658D-5EEA-638C82A4FFA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateX";
	rename -uid "D4A8FBA2-4B4A-1021-830A-2DB8D7500F93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateY";
	rename -uid "8D790DDD-4D64-BFD9-6CFA-63AFBCBEA86C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateZ";
	rename -uid "B9A7C0B3-4828-DAFB-8D54-4D9048A7530A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_scaleX";
	rename -uid "BD6A914A-4A19-C6C8-6E3D-B8A7450EEA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_scaleY";
	rename -uid "B7CF2800-43A4-6A95-CCEE-14BE80A0209D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_scaleZ";
	rename -uid "6915EF86-47D7-5E63-67D5-349154A0145A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_FollowTranslate";
	rename -uid "06EFF3A7-4828-60DF-3642-50A2603F8EA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Wrist_FK_Ctrl_FollowRotate";
	rename -uid "5FE0E7C3-4347-1CF8-C401-4685C78D4E56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Transform_Ctrl_rotateX";
	rename -uid "42A0A817-43A8-B01C-C128-BCB8BD3943E6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Transform_Ctrl_rotateY";
	rename -uid "D6AC33F7-42FA-C4C3-C6C2-188695FA1354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 180;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Transform_Ctrl_rotateZ";
	rename -uid "644E4301-4E56-4228-7E88-17B19C5B069F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Transform_Ctrl_L_Arm_IKFK";
	rename -uid "DAE7323B-42E6-F6BB-2933-B4A67D295589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Transform_Ctrl_R_Arm_IKFK";
	rename -uid "D41EA4EF-4572-EF40-8D72-DEA878D94DE5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Transform_Ctrl_L_Leg_IKFK";
	rename -uid "DCF549B2-4FCA-8161-AED5-F4A897F109F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Transform_Ctrl_R_Leg_IKFK";
	rename -uid "29A364AA-4EB9-01E8-3D1F-C7BAC0BC3C02";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 20 1;
	setAttr -s 3 ".kit[0:2]"  9 10 10;
createNode animCurveTU -n "Transform_Ctrl_MasterScale";
	rename -uid "6DA95AA6-40F5-699F-2519-F4AEEC9C40C8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateX";
	rename -uid "3C2C2AA8-4A6F-D0DC-B3F6-36818E495A17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateY";
	rename -uid "3CAC81E4-4E06-8635-914C-E9BF023F7298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -47.64528554908587;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateZ";
	rename -uid "111D4F02-4391-2048-D9B8-329EFED02A7A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_Follow";
	rename -uid "95DD62BF-4CC4-22BD-A120-10874535C8EB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_RockFoot";
	rename -uid "FDB4D624-44DE-62FD-9F7F-319061E290FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelRotate";
	rename -uid "E71AD48E-4985-C98C-65F5-2A9D647DB655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelPivot";
	rename -uid "74D06465-4BD9-A56D-8519-458D2963F929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelTwist";
	rename -uid "8A4F4A6A-4E54-41AC-3FE7-6AA7EB0F8F6A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeRotate";
	rename -uid "BD74C622-4C42-FB99-3C15-1C9CE5594EBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToePivot";
	rename -uid "CC973A01-4E99-47D2-157C-488D7CB45BFE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTwist";
	rename -uid "0A85DADB-4754-E9AF-1420-C88DE36F9F43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_BallRotate";
	rename -uid "8D989691-4C3C-1F93-09E8-31B6107BD5A6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_BallPivot";
	rename -uid "E73DED08-412E-C988-0A2D-0195CD468CE9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_BallTwist";
	rename -uid "8176F0B6-483D-262D-A2D4-4CB387B4260A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTapRotate";
	rename -uid "CF5081C2-42F1-7C7B-8EB5-D59D6C40B376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTapPivot";
	rename -uid "EEB7BB9F-4DC1-4FD4-DAC5-DF8D032B1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ToeTapTwist";
	rename -uid "FC4ECC22-4F16-2571-A479-528FF6B75306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_FootRoll";
	rename -uid "D82C1A79-4A05-7590-4DAA-C08ECD11C4B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_ControlVis";
	rename -uid "DB5612F2-4E11-A443-2CBF-C59842C8EBE8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_Stretch";
	rename -uid "2CA66EDF-4D1C-0BE2-1894-3184B01ABB7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_MaxStretch";
	rename -uid "AA9C3853-4FB7-6F0C-D134-40BACBA4E7AA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_LegLength";
	rename -uid "D8E72161-497F-2AA0-41D0-7B8A80E6372E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_UpperLegLength";
	rename -uid "47D32FAA-4593-1B4E-7F8E-B6A1F4A0C9D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Ctrl_LowerLegLength";
	rename -uid "82C7B4B5-4404-2DA7-A2C0-03B0A76C4BB9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "3112740D-44DC-0BF8-B0C4-A19D910C091D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "B6A3DB47-4BC9-A294-AC8F-188794D61CED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Middle_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "5736AB49-483C-524A-4E79-D68E42181C87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "56DB45FC-4715-9525-674D-7EAEE323A204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "AA2F0347-4905-E9C7-E331-0D97A2FE9E8F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "6EC3F10A-4245-44E3-7394-B5B2C717DD78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "C78123D0-41C4-CE98-6C9C-BFB894D79A0F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Middle_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "1B80A85A-495D-F1FC-FB66-D78403771EEE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Leg_Clav_FK_Ctrl_rotateX";
	rename -uid "30650548-4C26-80CC-25F5-9E956304D8BD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 11.421502142537642;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "R_Leg_Clav_FK_Ctrl_rotateY";
	rename -uid "E364F4E1-4B43-7360-1299-2CB2A056595E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -48.506424104698546;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "R_Leg_Clav_FK_Ctrl_rotateZ";
	rename -uid "D6E97D78-4825-BBBE-F757-0095B0A36A87";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -77.735541420185797;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_scaleX";
	rename -uid "E4AF93BF-4865-8E2F-D903-D396EBE9E328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_scaleY";
	rename -uid "18E0A4A7-423F-6C72-5422-2389370330D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_scaleZ";
	rename -uid "D417C6A4-4044-39EA-5938-A6ADDB9EC7D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "CBED01A5-4C77-9641-B4FC-EF89EB053932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_Clav_FK_Ctrl_FollowRotate";
	rename -uid "16A9C115-45A8-2EB5-F7DF-EEA68CF6345E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateX";
	rename -uid "A33A1E6A-42F0-4089-9383-4E8B18A72AA6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -10.481302276883456;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateY";
	rename -uid "F8E76539-484B-D1DC-B82F-9A969BB2286B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 5.2055095212201463;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateZ";
	rename -uid "C641B981-4C98-6D97-2ECD-469B7B7B722D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4144125680017017 20 5.5954092012748236;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_scaleX";
	rename -uid "F75ECC36-4503-8F38-8940-9E819AADCC21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_scaleY";
	rename -uid "655D50FC-4BB6-AF90-F5D1-E0AABA59EB12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_scaleZ";
	rename -uid "27719541-456E-F4E2-AAAE-E6A9C8C75684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_FollowTranslate";
	rename -uid "DFAEBEA7-4598-71EA-1D0D-908743554075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_01_Fk_Ctrl_FollowRotate";
	rename -uid "5E234BB4-48DD-92C8-E24A-92B615E0EE32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "5A6917D4-4B91-FD6A-245C-C8BCB5783969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "722B9AD5-4645-F564-FC1B-5D9465AC8C18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "588BA647-4981-D9F5-2463-A4B4EFC7DC2A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "27225008-4D36-D442-5206-A9963F03F6AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "6B1323E6-42EF-99AC-A630-D09B172DE9B2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "2BF44729-423C-D2F1-6AC3-0AA9909AEC4A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "17E5DD1D-4F21-6E41-A6F5-54BF67E36C9D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "8255EE9A-485E-A282-5A02-F19BAFE6ECBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "45444B58-4291-FE52-541A-518D859A1B80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "2E11E4C0-4126-3C8C-C826-BCACF1E73BCB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "1DB01BA6-4020-CEE0-509D-129A5E307461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "CB4D97A2-4A17-F34F-0CC3-77B8D0130172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "DCA6F8BD-4AA8-FB16-B927-3592F7B8B02D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "FC4402B8-4143-65BE-1DA1-3B83B4AF218C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "84672CA0-4F2E-223A-5535-26B26991D470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "4590A18B-4632-B778-788A-30AE8C94E7C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_visibility";
	rename -uid "BC93113E-4ED8-760A-48D6-A9AE715696BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Face_Ctrl_rotateX";
	rename -uid "BFE7DC36-4F13-EB69-7B72-FBA85C4528B3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Face_Ctrl_rotateY";
	rename -uid "FB2F1A9F-47B1-05E5-BC56-ABA6F4479873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Face_Ctrl_rotateZ";
	rename -uid "465684EE-4B55-506E-B512-3BAFF91FC5B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_scaleX";
	rename -uid "4DD4C5FB-461E-0940-2E0B-89938F768288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_scaleY";
	rename -uid "EA827A9C-4C50-BD39-6CD6-AD9B221850C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_scaleZ";
	rename -uid "5F4227F6-4B78-C218-5854-F7BC935D8B91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_CloseMouth";
	rename -uid "627F11ED-4441-C264-007E-70BDAB411E32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_OpenMouth";
	rename -uid "0260399E-40F4-9015-07D8-C086F3810A48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_Ooo";
	rename -uid "F993549E-4CA0-E3FC-F92C-B188452C28B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_LeftSmile";
	rename -uid "5BB29AE8-4BEE-E6EA-3F9D-46AE2A240471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_RightSmile";
	rename -uid "19727343-4C6B-34F1-4731-4BB216BE5554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_FullSmile";
	rename -uid "EF1EDE0E-43A9-4D35-0044-FAA2F74B02F2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_LeftClosedSmile";
	rename -uid "BB4EE422-4B88-C1D2-072F-28BC841C4681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_RightClosedSmile";
	rename -uid "BDF3A7C2-4249-7424-65C5-85A3806998F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_FullClosedSmile";
	rename -uid "7E39AF1E-4026-9929-5803-A49F4A22A6DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_F";
	rename -uid "23D32D7B-4DB0-653D-1BAC-2BAD8F2042FB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_OW";
	rename -uid "A9319508-4D49-1CE9-1641-38B5AC862428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_H";
	rename -uid "4994A44D-42D6-442C-2B52-26819DE718CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_MB";
	rename -uid "7D8DDB54-4575-D081-FCD3-9C86E8DFC622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_Angry";
	rename -uid "986A453F-46A5-4171-D9F8-F7BD2FA640DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_LeftEyebrowDown";
	rename -uid "94F2514B-4443-5BAA-9424-E1AD479E7759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_RightEyebrowDown";
	rename -uid "1D13F5DF-4E1C-4542-66A0-F692282B512C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_LeftEyebrowRaise";
	rename -uid "DFFDDC97-4590-292C-F191-129724773F11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_RightEyebrowRaise";
	rename -uid "29D3AA5B-4BD7-AF3C-14C5-CFBEEEBF0FDA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_NostrilFlare";
	rename -uid "8336D02B-405C-086D-9998-249A11986CA0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_UH";
	rename -uid "B446D522-4802-2D40-1EBD-E3BE23A48804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_TeethOpen";
	rename -uid "1529BBCC-46A1-15C1-F1BB-C1AF55E507FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Face_Ctrl_TeethClosed";
	rename -uid "AACB5E11-4817-746F-EEC0-E1AED449DDD7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "ECA4FCCC-407D-3367-E6FD-B8A2FC5B4655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "35265A92-4337-C7D0-614C-6CB904D84DB7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Ring_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "37DF7E96-4050-2EA9-3583-B3BB541A653C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "73E0CEEB-4CA3-1C8C-FEF4-D1B55DB69596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "02CA9986-4F7F-C098-47CD-7AB5D50B5D68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "4038DDF2-495B-4D28-20D9-5DAF15B845AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "897C9CC3-47A0-7781-2857-E9A65DD79BCA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Ring_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "E1AC2FD5-4768-5AF9-3E2C-6A894DE15703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateX";
	rename -uid "0B834EBC-48F4-C978-28D6-B5B672B1605D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateY";
	rename -uid "3D9A2A33-4BE3-CAD6-238D-3CAE3DEE98E5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateZ";
	rename -uid "846B5598-4E7F-D4E7-13ED-9F8B2C13FF29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 4.1013711598368454;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "L_Clav_FK_Ctrl_scaleX";
	rename -uid "2BA02A58-4F1C-9280-433D-FAA080189632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Clav_FK_Ctrl_scaleY";
	rename -uid "A859EF7C-493B-A4FE-2ADD-51A4009A13E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Clav_FK_Ctrl_scaleZ";
	rename -uid "855D0934-4EDE-E9FC-BC68-079F08A02DA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Clav_FK_Ctrl_FollowTranslate";
	rename -uid "AE0C0E8D-4C3C-608C-B9B2-B08E16753F32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Clav_FK_Ctrl_FollowRotate";
	rename -uid "66A42315-46D2-4D95-9A25-F59FC802321F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "D0F15C85-4BA3-B935-F84C-188432B70899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "DC414E88-4D89-0E47-8884-D9BE3B4BD1AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "0F2FF475-4702-0083-27F1-16850FBED58D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "2D5498A7-4B24-9FE5-13E9-02AC2766E10B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "FB95DD1D-463C-3A1D-D03B-89A111D598EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "BBD2510E-41F4-2A81-4F6B-98830451F5DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "D3A046E1-46C1-5696-61EB-43AEA809033E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "2B0425CB-443D-162B-BB2A-71980ADCE974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "1622430D-46D7-1F5A-218D-118776802FDB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "AC39E06B-4811-3A66-D05C-59A200E1669C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pointer_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "73B2FFF4-4F43-CF05-2B31-BABBAEB38089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "17B60370-4D2A-1AD9-3DB2-7D982CBD4CBB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "F4D06D5F-450C-3960-26B6-FAA1CE9F1F14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "56058D12-4FA9-94B9-B68C-F5ABBD212172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "B51E3884-45E5-745D-F93E-089612E6EFAA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pointer_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "C1FBE208-47CE-C36D-E92D-D49843519B2D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateX";
	rename -uid "E651640D-441B-782B-8DE7-42B5163D0959";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -62.214065408455738 4 -63.748072102333332
		 8 -65.079793498350384 20 27.919737189158411;
	setAttr -s 4 ".kit[0:3]"  9 9 9 10;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateY";
	rename -uid "87ABA07C-4038-374A-48CD-9D93296EA10A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -41.279732915558938 4 -37.625350716231289
		 8 -42.511831924668165 20 -37.455325590146394;
	setAttr -s 4 ".kit[0:3]"  9 9 9 10;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "D414D83B-4B83-C142-3811-D88DAFE11876";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 55.123485829017348 4 57.536136080217581
		 8 59.427796339551669 20 2.9617332266910052;
	setAttr -s 4 ".kit[0:3]"  9 9 9 10;
createNode animCurveTU -n "R_Shoulder_FK_Ctrl_scaleX";
	rename -uid "F22B780C-464E-8155-DF51-C08175F53ECB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Shoulder_FK_Ctrl_scaleY";
	rename -uid "4C54AD13-4C83-8ADB-F93A-C6A614251B08";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Shoulder_FK_Ctrl_scaleZ";
	rename -uid "43FC7DBF-4E92-953B-2342-A0B53CCF14F4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Shoulder_FK_Ctrl_FollowTranslate";
	rename -uid "B42EF069-4065-5094-4343-DB8288A400FE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Shoulder_FK_Ctrl_FollowRotate";
	rename -uid "52BBEB54-4F42-FB0E-60F5-A48029FCD354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Neck_02_Fk_Ctrl_rotateX";
	rename -uid "9B234C51-404B-D5AE-CB8A-A2B8923AAFB0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -10.481302276883456;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Neck_02_Fk_Ctrl_rotateY";
	rename -uid "8E1032CB-4DA5-0723-25F9-CA8CDED182BF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 5.2055095212201463;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Neck_02_Fk_Ctrl_rotateZ";
	rename -uid "28305A2A-4AB1-ABE3-9AD8-F297F26135EE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4144125680017017 20 5.5954092012748236;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "Neck_02_Fk_Ctrl_scaleX";
	rename -uid "B94AD1A3-4382-AE17-1AF3-BDB58038BDE3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_02_Fk_Ctrl_scaleY";
	rename -uid "197D3E1B-4985-E479-052C-0B92D8C48FAE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_02_Fk_Ctrl_scaleZ";
	rename -uid "0CE2ED30-494E-AA70-CCA4-1F9A362562C6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_02_Fk_Ctrl_FollowTranslate";
	rename -uid "F3A204B7-41A3-C8C6-1240-95BE319DF231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Neck_02_Fk_Ctrl_FollowRotate";
	rename -uid "D78EFF81-4692-22F1-28F9-569D0307F4FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "7D5AF695-486E-0D10-CD3E-2C9579054249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "34E63A45-4155-0600-FB2B-5694E7312987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pinky_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "1DAA217E-466A-5444-2584-499C7399F02D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "A9517967-4AC6-C93A-0837-109437CD0845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "4BC88E91-4F9F-151B-CB61-C3990074AE1C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "87B92902-4B50-E10D-CCF8-258A0203D2EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "FD59D344-4AFC-6DEF-A4A3-509D925C9899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pinky_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "BE2CD048-42C5-974C-C778-CEBB263F75A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_PV_Ctrl_Follow";
	rename -uid "CECE5576-46FC-6A68-629D-27AE62CFB228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateX";
	rename -uid "325A9F54-4C76-168C-A070-EA948AE3CB63";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0.57577922319179631;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateY";
	rename -uid "1033B2AC-4B0B-9A4F-3DFA-78AA16099612";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 5.9087568957032399;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateZ";
	rename -uid "C9448CD5-4B0A-0471-AA7D-8389AFE0080E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.3864240991148127 20 5.5756212379375958;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "Spine_03_FK_Ctrl_scaleX";
	rename -uid "DE3789A6-4958-AA57-7B57-1D814C62DED6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_03_FK_Ctrl_scaleY";
	rename -uid "C502203F-4A74-1587-C2EF-FC836A9DBACB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_03_FK_Ctrl_scaleZ";
	rename -uid "3909121F-47D7-DACE-5BC2-93B96932AA4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_03_FK_Ctrl_FollowTranslate";
	rename -uid "DC442606-44C5-B19E-FB93-E484F528D0D2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_03_FK_Ctrl_FollowRotate";
	rename -uid "6C95511A-4A82-8D2C-1EE6-D5A5319B0840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_02_FK_Ctrl_rotateX";
	rename -uid "FD47BABA-4E81-807E-0D04-EBA31651F8C8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_02_FK_Ctrl_rotateY";
	rename -uid "FD8392A7-46E9-AD07-A02E-14B2993678AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Pointer_Knuckle_02_FK_Ctrl_rotateZ";
	rename -uid "4228C8ED-471A-CC94-1193-A9952660D132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_scaleX";
	rename -uid "F8080CD9-4CDD-171D-FDF7-D8AE8A551A37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_scaleY";
	rename -uid "DC0D395A-4E83-D893-1761-8EBFE6C002C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_scaleZ";
	rename -uid "846E281D-487F-7A33-051B-ED83860FE2CE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate";
	rename -uid "55C232A1-45FF-9ECF-1783-8B9B884CBBC6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Pointer_Knuckle_02_FK_Ctrl_FollowRotate";
	rename -uid "4DE91F6F-4C82-46D4-B068-DDA254845B7F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateX";
	rename -uid "DD08795C-4054-B372-6A98-53AF8E71A2FE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateY";
	rename -uid "A615AE95-4CFF-6974-4BA7-5295EB7D6370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateZ";
	rename -uid "A7189A59-41ED-FF9F-264A-DBAC38F886E8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 76.411501727418951 4 80.512872887255909
		 8 76.73029765855361;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_scaleX";
	rename -uid "2803EE80-4430-E519-3247-3B9D83CC48D8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_scaleY";
	rename -uid "4FBB871C-4AC2-BC70-E7D7-4A9A85B27A54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_scaleZ";
	rename -uid "7F4506FE-409C-6BBF-F417-BABCBED62D4F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_FollowTranslate";
	rename -uid "D6AB8EFD-4972-695D-144C-99B213F528CD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Elbow_FK_Ctrl_FollowRotate";
	rename -uid "12A16349-4BFB-07FD-D718-1BA39B680D67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateX";
	rename -uid "268C7D04-4C61-B12F-DAE9-9B956C867CCA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0.57577922319179631;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateY";
	rename -uid "B45DCEC2-4F70-BB1D-2589-37A99DA462BA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 5.9087568957032399;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateZ";
	rename -uid "6EE48305-422D-5F4A-CB27-B682B08AED97";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.3864240991148127 20 5.5756212379375958;
	setAttr -s 2 ".kit[0:1]"  9 10;
createNode animCurveTU -n "Spine_02_FK_Ctrl_scaleX";
	rename -uid "A409729D-4EF9-B0C8-5226-D79AEEB2D28B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_02_FK_Ctrl_scaleY";
	rename -uid "DC78E235-4161-4C2E-EA57-728267F0E25C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_02_FK_Ctrl_scaleZ";
	rename -uid "5036921B-4A8F-00E8-CAE1-2D81CF800BC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_02_FK_Ctrl_FollowTranslate";
	rename -uid "1E5DCC16-4CA1-0E6B-57B5-F0975EE90914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Spine_02_FK_Ctrl_FollowRotate";
	rename -uid "C4974B48-4C30-1FFD-A9AE-5D9C52D9B6BF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "5D36C0DC-48B3-8740-E464-908A9094936B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "C73FBAC8-480C-2A55-F983-9A8612F5D39A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Middle_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "411A036C-4D7B-65A2-CB75-C7A98F563D57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "155C2ACC-4E3C-3F04-1719-ECA7E565F0AB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "7422048E-4514-5307-2770-42898FCEB9DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "FE76CE2F-4AC4-D5A5-3C35-6DA81041298D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "989587D7-4405-5CE3-E4D2-91863F29BE55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Middle_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "D42152F2-46CD-F2B8-4C2B-C2AB28EA1E2A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Leg_IK_Base_Ctrl_Follow";
	rename -uid "57A62A7D-4505-B78F-AC63-C99692F9CE14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Leg_IK_Base_Ctrl_Follow";
	rename -uid "3BD114D4-4368-47F5-B926-09B50AF9198C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "3055B8F7-4290-5E95-0B49-A3A4575C786F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "3CA1B4E6-45FE-CBC0-486D-93885A5228E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Pinky_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "94DDD8B3-4712-F231-2DD1-A5B5E0286A96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "FF32587B-4E3C-6F1C-185C-A98E5FAC7E1D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "1CE291FF-4ADE-CE26-D021-2B9E509563FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "33523486-456E-0501-D6C1-61B06452CA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "32533A78-4D9D-8A34-1996-92A82796B4EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Pinky_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "037D9B66-4F13-8004-E1E6-62862F23E3BF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_03_FK_Ctrl_rotateX";
	rename -uid "CCA4E3E1-4754-C6D2-9F22-B2800742C7E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_03_FK_Ctrl_rotateY";
	rename -uid "8EDCB012-4121-D9CE-1239-1387E993B786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Thumb_Knuckle_03_FK_Ctrl_rotateZ";
	rename -uid "E6EBAA0E-47F7-0552-6FBF-E38DDCD01867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_scaleX";
	rename -uid "1959158C-4E2B-4632-53C3-3DAC3CCFD12F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_scaleY";
	rename -uid "AEAAD60C-4300-9A05-31BC-C7B72EC6F67A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_scaleZ";
	rename -uid "F06F6AF4-47D1-88D4-579A-4496F88EECDE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate";
	rename -uid "BB6738F7-4989-94BD-93A5-4BA2F106E5BA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Thumb_Knuckle_03_FK_Ctrl_FollowRotate";
	rename -uid "1F34A3D6-432C-74CF-78F0-4396DAB8ECEC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_01_FK_Ctrl_rotateX";
	rename -uid "7F2709F1-4539-32FB-78F1-F7B433F81EA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_01_FK_Ctrl_rotateY";
	rename -uid "233E6A83-4498-5BEE-65C6-B8A881C7EF62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "L_Ring_Knuckle_01_FK_Ctrl_rotateZ";
	rename -uid "0ECB2DA8-422F-0BFF-3F6C-0A826F753771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_scaleX";
	rename -uid "1F0E638A-4C89-520F-54AB-3386185CB9B8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_scaleY";
	rename -uid "9C475CD0-472E-8EC8-3AEA-93A5B931D6A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_scaleZ";
	rename -uid "2103F27C-44C3-9ADD-2A76-B8B7DF42D427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_FollowTranslate";
	rename -uid "6DAB14C4-479D-86FE-0DD7-898D5A1A81A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "L_Ring_Knuckle_01_FK_Ctrl_FollowRotate";
	rename -uid "B5AA42FD-4E11-B16B-DC19-B8B24229F252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateX";
	rename -uid "01783178-4745-38A3-696A-F38E8A745F13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateY";
	rename -uid "C97F87D5-4D88-0DDC-E190-9A86CB9D5F9A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateZ";
	rename -uid "68292579-4877-13BA-C9C9-A0AEDB1A78BE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 86.833832024306744 4 90.935203184143575
		 8 87.152627955441261 20 0;
	setAttr -s 4 ".kit[0:3]"  9 9 9 10;
createNode animCurveTU -n "R_Elbow_FK_Ctrl_scaleX";
	rename -uid "A9C25510-450C-42D7-CC7F-BD8004BC865A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Elbow_FK_Ctrl_scaleY";
	rename -uid "064C248A-4824-067E-5E41-198E479775B2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Elbow_FK_Ctrl_scaleZ";
	rename -uid "460EE91C-4179-9DB4-D660-10A189839419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Elbow_FK_Ctrl_FollowTranslate";
	rename -uid "C1B19BC9-4982-81DC-2EC2-D59635126BA1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "R_Elbow_FK_Ctrl_FollowRotate";
	rename -uid "7CF9DAE0-4472-A11F-441B-57B44987F2FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "17E9B3AB-4C32-65B6-0E51-4785E4E8A416";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".mbe" yes;
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
	setAttr ".cfp" -type "string" "C:/Program Files/Autodesk/Maya2024/resources/OCIO-configs/Maya2022-default/config.ocio";
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
connectAttr "Transform_Ctrl_L_Arm_IKFK.o" "RedDragonbornRN.phl[1]";
connectAttr "Transform_Ctrl_R_Arm_IKFK.o" "RedDragonbornRN.phl[2]";
connectAttr "Transform_Ctrl_L_Leg_IKFK.o" "RedDragonbornRN.phl[3]";
connectAttr "Transform_Ctrl_R_Leg_IKFK.o" "RedDragonbornRN.phl[4]";
connectAttr "Transform_Ctrl_MasterScale.o" "RedDragonbornRN.phl[5]";
connectAttr "Transform_Ctrl_translateX.o" "RedDragonbornRN.phl[6]";
connectAttr "Transform_Ctrl_translateY.o" "RedDragonbornRN.phl[7]";
connectAttr "Transform_Ctrl_translateZ.o" "RedDragonbornRN.phl[8]";
connectAttr "Transform_Ctrl_rotateX.o" "RedDragonbornRN.phl[9]";
connectAttr "Transform_Ctrl_rotateY.o" "RedDragonbornRN.phl[10]";
connectAttr "Transform_Ctrl_rotateZ.o" "RedDragonbornRN.phl[11]";
connectAttr "COG_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[12]";
connectAttr "COG_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[13]";
connectAttr "COG_Ctrl_translateX.o" "RedDragonbornRN.phl[14]";
connectAttr "COG_Ctrl_translateY.o" "RedDragonbornRN.phl[15]";
connectAttr "COG_Ctrl_translateZ.o" "RedDragonbornRN.phl[16]";
connectAttr "COG_Ctrl_rotateX.o" "RedDragonbornRN.phl[17]";
connectAttr "COG_Ctrl_rotateY.o" "RedDragonbornRN.phl[18]";
connectAttr "COG_Ctrl_rotateZ.o" "RedDragonbornRN.phl[19]";
connectAttr "COG_Ctrl_scaleX.o" "RedDragonbornRN.phl[20]";
connectAttr "COG_Ctrl_scaleY.o" "RedDragonbornRN.phl[21]";
connectAttr "COG_Ctrl_scaleZ.o" "RedDragonbornRN.phl[22]";
connectAttr "Pelvis_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[23]";
connectAttr "Pelvis_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[24]";
connectAttr "Pelvis_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[25]";
connectAttr "Pelvis_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[26]";
connectAttr "Pelvis_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[27]";
connectAttr "Pelvis_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[28]";
connectAttr "Pelvis_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[29]";
connectAttr "Pelvis_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[30]";
connectAttr "Pelvis_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[31]";
connectAttr "Pelvis_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[32]";
connectAttr "Pelvis_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[33]";
connectAttr "Neck_01_Fk_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[34]";
connectAttr "Neck_01_Fk_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[35]";
connectAttr "Neck_01_Fk_Ctrl_translateX.o" "RedDragonbornRN.phl[36]";
connectAttr "Neck_01_Fk_Ctrl_translateY.o" "RedDragonbornRN.phl[37]";
connectAttr "Neck_01_Fk_Ctrl_translateZ.o" "RedDragonbornRN.phl[38]";
connectAttr "Neck_01_Fk_Ctrl_rotateX.o" "RedDragonbornRN.phl[39]";
connectAttr "Neck_01_Fk_Ctrl_rotateY.o" "RedDragonbornRN.phl[40]";
connectAttr "Neck_01_Fk_Ctrl_rotateZ.o" "RedDragonbornRN.phl[41]";
connectAttr "Neck_01_Fk_Ctrl_scaleX.o" "RedDragonbornRN.phl[42]";
connectAttr "Neck_01_Fk_Ctrl_scaleY.o" "RedDragonbornRN.phl[43]";
connectAttr "Neck_01_Fk_Ctrl_scaleZ.o" "RedDragonbornRN.phl[44]";
connectAttr "Neck_02_Fk_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[45]";
connectAttr "Neck_02_Fk_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[46]";
connectAttr "Neck_02_Fk_Ctrl_translateX.o" "RedDragonbornRN.phl[47]";
connectAttr "Neck_02_Fk_Ctrl_translateY.o" "RedDragonbornRN.phl[48]";
connectAttr "Neck_02_Fk_Ctrl_translateZ.o" "RedDragonbornRN.phl[49]";
connectAttr "Neck_02_Fk_Ctrl_rotateX.o" "RedDragonbornRN.phl[50]";
connectAttr "Neck_02_Fk_Ctrl_rotateY.o" "RedDragonbornRN.phl[51]";
connectAttr "Neck_02_Fk_Ctrl_rotateZ.o" "RedDragonbornRN.phl[52]";
connectAttr "Neck_02_Fk_Ctrl_scaleX.o" "RedDragonbornRN.phl[53]";
connectAttr "Neck_02_Fk_Ctrl_scaleY.o" "RedDragonbornRN.phl[54]";
connectAttr "Neck_02_Fk_Ctrl_scaleZ.o" "RedDragonbornRN.phl[55]";
connectAttr "Head_Fk_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[56]";
connectAttr "Head_Fk_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[57]";
connectAttr "Head_Fk_Ctrl_translateX.o" "RedDragonbornRN.phl[58]";
connectAttr "Head_Fk_Ctrl_translateY.o" "RedDragonbornRN.phl[59]";
connectAttr "Head_Fk_Ctrl_translateZ.o" "RedDragonbornRN.phl[60]";
connectAttr "Head_Fk_Ctrl_rotateX.o" "RedDragonbornRN.phl[61]";
connectAttr "Head_Fk_Ctrl_rotateY.o" "RedDragonbornRN.phl[62]";
connectAttr "Head_Fk_Ctrl_rotateZ.o" "RedDragonbornRN.phl[63]";
connectAttr "Head_Fk_Ctrl_scaleX.o" "RedDragonbornRN.phl[64]";
connectAttr "Head_Fk_Ctrl_scaleY.o" "RedDragonbornRN.phl[65]";
connectAttr "Head_Fk_Ctrl_scaleZ.o" "RedDragonbornRN.phl[66]";
connectAttr "Face_Ctrl_CloseMouth.o" "RedDragonbornRN.phl[67]";
connectAttr "Face_Ctrl_OpenMouth.o" "RedDragonbornRN.phl[68]";
connectAttr "Face_Ctrl_Ooo.o" "RedDragonbornRN.phl[69]";
connectAttr "Face_Ctrl_LeftSmile.o" "RedDragonbornRN.phl[70]";
connectAttr "Face_Ctrl_RightSmile.o" "RedDragonbornRN.phl[71]";
connectAttr "Face_Ctrl_FullSmile.o" "RedDragonbornRN.phl[72]";
connectAttr "Face_Ctrl_LeftClosedSmile.o" "RedDragonbornRN.phl[73]";
connectAttr "Face_Ctrl_RightClosedSmile.o" "RedDragonbornRN.phl[74]";
connectAttr "Face_Ctrl_FullClosedSmile.o" "RedDragonbornRN.phl[75]";
connectAttr "Face_Ctrl_F.o" "RedDragonbornRN.phl[76]";
connectAttr "Face_Ctrl_OW.o" "RedDragonbornRN.phl[77]";
connectAttr "Face_Ctrl_H.o" "RedDragonbornRN.phl[78]";
connectAttr "Face_Ctrl_MB.o" "RedDragonbornRN.phl[79]";
connectAttr "Face_Ctrl_Angry.o" "RedDragonbornRN.phl[80]";
connectAttr "Face_Ctrl_LeftEyebrowDown.o" "RedDragonbornRN.phl[81]";
connectAttr "Face_Ctrl_RightEyebrowDown.o" "RedDragonbornRN.phl[82]";
connectAttr "Face_Ctrl_LeftEyebrowRaise.o" "RedDragonbornRN.phl[83]";
connectAttr "Face_Ctrl_RightEyebrowRaise.o" "RedDragonbornRN.phl[84]";
connectAttr "Face_Ctrl_NostrilFlare.o" "RedDragonbornRN.phl[85]";
connectAttr "Face_Ctrl_UH.o" "RedDragonbornRN.phl[86]";
connectAttr "Face_Ctrl_TeethOpen.o" "RedDragonbornRN.phl[87]";
connectAttr "Face_Ctrl_TeethClosed.o" "RedDragonbornRN.phl[88]";
connectAttr "Face_Ctrl_translateX.o" "RedDragonbornRN.phl[89]";
connectAttr "Face_Ctrl_translateY.o" "RedDragonbornRN.phl[90]";
connectAttr "Face_Ctrl_translateZ.o" "RedDragonbornRN.phl[91]";
connectAttr "Face_Ctrl_rotateX.o" "RedDragonbornRN.phl[92]";
connectAttr "Face_Ctrl_rotateY.o" "RedDragonbornRN.phl[93]";
connectAttr "Face_Ctrl_rotateZ.o" "RedDragonbornRN.phl[94]";
connectAttr "Face_Ctrl_visibility.o" "RedDragonbornRN.phl[95]";
connectAttr "Face_Ctrl_scaleX.o" "RedDragonbornRN.phl[96]";
connectAttr "Face_Ctrl_scaleY.o" "RedDragonbornRN.phl[97]";
connectAttr "Face_Ctrl_scaleZ.o" "RedDragonbornRN.phl[98]";
connectAttr "Eye_Ctrl_translateX.o" "RedDragonbornRN.phl[99]";
connectAttr "Eye_Ctrl_translateY.o" "RedDragonbornRN.phl[100]";
connectAttr "Eye_Ctrl_translateZ.o" "RedDragonbornRN.phl[101]";
connectAttr "L_Eye_Ctrl_translateX.o" "RedDragonbornRN.phl[102]";
connectAttr "L_Eye_Ctrl_translateY.o" "RedDragonbornRN.phl[103]";
connectAttr "L_Eye_Ctrl_translateZ.o" "RedDragonbornRN.phl[104]";
connectAttr "R_Eye_Ctrl_translateX.o" "RedDragonbornRN.phl[105]";
connectAttr "R_Eye_Ctrl_translateY.o" "RedDragonbornRN.phl[106]";
connectAttr "R_Eye_Ctrl_translateZ.o" "RedDragonbornRN.phl[107]";
connectAttr "Spine_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[108]";
connectAttr "Spine_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[109]";
connectAttr "Spine_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[110]";
connectAttr "Spine_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[111]";
connectAttr "Spine_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[112]";
connectAttr "Spine_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[113]";
connectAttr "Spine_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[114]";
connectAttr "Spine_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[115]";
connectAttr "Spine_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[116]";
connectAttr "Spine_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[117]";
connectAttr "Spine_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[118]";
connectAttr "Spine_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[119]";
connectAttr "Spine_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[120]";
connectAttr "Spine_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[121]";
connectAttr "Spine_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[122]";
connectAttr "Spine_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[123]";
connectAttr "Spine_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[124]";
connectAttr "Spine_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[125]";
connectAttr "Spine_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[126]";
connectAttr "Spine_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[127]";
connectAttr "Spine_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[128]";
connectAttr "Spine_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[129]";
connectAttr "Spine_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[130]";
connectAttr "Spine_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[131]";
connectAttr "Spine_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[132]";
connectAttr "Spine_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[133]";
connectAttr "Spine_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[134]";
connectAttr "Spine_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[135]";
connectAttr "Spine_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[136]";
connectAttr "Spine_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[137]";
connectAttr "Spine_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[138]";
connectAttr "Spine_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[139]";
connectAttr "Spine_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[140]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[141]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[142]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[143]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[144]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[145]"
		;
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[146]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[147]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[148]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[149]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[150]";
connectAttr "L_Thumb_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[151]";
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[152]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[153]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[154]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[155]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[156]"
		;
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[157]";
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[158]";
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[159]";
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[160]";
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[161]";
connectAttr "L_Thumb_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[162]";
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[163]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[164]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[165]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[166]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[167]"
		;
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[168]";
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[169]";
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[170]";
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[171]";
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[172]";
connectAttr "L_Thumb_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[173]";
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[174]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[175]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[176]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[177]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[178]"
		;
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[179]";
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[180]";
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[181]";
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[182]";
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[183]";
connectAttr "L_Pointer_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[184]";
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[185]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[186]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[187]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[188]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[189]"
		;
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[190]";
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[191]";
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[192]";
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[193]";
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[194]";
connectAttr "L_Pointer_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[195]";
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[196]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[197]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[198]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[199]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[200]"
		;
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[201]";
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[202]";
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[203]";
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[204]";
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[205]";
connectAttr "L_Pointer_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[206]";
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[207]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[208]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[209]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[210]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[211]"
		;
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[212]";
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[213]";
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[214]";
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[215]";
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[216]";
connectAttr "L_Middle_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[217]";
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[218]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[219]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[220]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[221]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[222]"
		;
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[223]";
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[224]";
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[225]";
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[226]";
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[227]";
connectAttr "L_Middle_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[228]";
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[229]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[230]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[231]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[232]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[233]"
		;
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[234]";
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[235]";
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[236]";
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[237]";
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[238]";
connectAttr "L_Middle_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[239]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[240]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[241]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[242]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[243]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[244]"
		;
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[245]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[246]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[247]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[248]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[249]";
connectAttr "L_Ring_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[250]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[251]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[252]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[253]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[254]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[255]"
		;
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[256]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[257]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[258]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[259]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[260]";
connectAttr "L_Ring_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[261]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[262]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[263]"
		;
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[264]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[265]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[266]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[267]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[268]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[269]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[270]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[271]";
connectAttr "L_Ring_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[272]";
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[273]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[274]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[275]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[276]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[277]"
		;
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[278]";
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[279]";
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[280]";
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[281]";
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[282]";
connectAttr "L_Pinky_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[283]";
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[284]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[285]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[286]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[287]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[288]"
		;
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[289]";
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[290]";
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[291]";
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[292]";
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[293]";
connectAttr "L_Pinky_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[294]";
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[295]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[296]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[297]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[298]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[299]"
		;
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[300]";
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[301]";
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[302]";
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[303]";
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[304]";
connectAttr "L_Pinky_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[305]";
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[306]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[307]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[308]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[309]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[310]"
		;
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[311]";
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[312]";
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[313]";
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[314]";
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[315]";
connectAttr "R_Thumb_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[316]";
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[317]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[318]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[319]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[320]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[321]"
		;
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[322]";
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[323]";
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[324]";
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[325]";
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[326]";
connectAttr "R_Thumb_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[327]";
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[328]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[329]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[330]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[331]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[332]"
		;
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[333]";
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[334]";
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[335]";
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[336]";
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[337]";
connectAttr "R_Thumb_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[338]";
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[339]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[340]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[341]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[342]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[343]"
		;
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[344]";
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[345]";
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[346]";
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[347]";
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[348]";
connectAttr "R_Pointer_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[349]";
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[350]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[351]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[352]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[353]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[354]"
		;
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[355]";
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[356]";
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[357]";
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[358]";
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[359]";
connectAttr "R_Pointer_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[360]";
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[361]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[362]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[363]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[364]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[365]"
		;
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[366]";
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[367]";
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[368]";
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[369]";
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[370]";
connectAttr "R_Pointer_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[371]";
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[372]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[373]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[374]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[375]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[376]"
		;
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[377]";
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[378]";
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[379]";
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[380]";
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[381]";
connectAttr "R_Middle_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[382]";
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[383]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[384]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[385]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[386]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[387]"
		;
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[388]";
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[389]";
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[390]";
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[391]";
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[392]";
connectAttr "R_Middle_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[393]";
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[394]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[395]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[396]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[397]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[398]"
		;
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[399]";
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[400]";
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[401]";
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[402]";
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[403]";
connectAttr "R_Middle_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[404]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[405]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[406]"
		;
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[407]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[408]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[409]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[410]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[411]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[412]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[413]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[414]";
connectAttr "R_Ring_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[415]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[416]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[417]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[418]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[419]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[420]"
		;
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[421]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[422]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[423]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[424]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[425]";
connectAttr "R_Ring_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[426]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[427]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[428]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[429]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[430]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[431]"
		;
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[432]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[433]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[434]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[435]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[436]";
connectAttr "R_Ring_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[437]";
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[438]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[439]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[440]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[441]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[442]"
		;
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[443]";
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[444]";
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[445]";
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[446]";
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[447]";
connectAttr "R_Pinky_Knuckle_01_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[448]";
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[449]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[450]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[451]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[452]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[453]"
		;
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[454]";
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[455]";
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[456]";
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[457]";
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[458]";
connectAttr "R_Pinky_Knuckle_02_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[459]";
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[460]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[461]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[462]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[463]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[464]"
		;
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[465]";
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[466]";
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[467]";
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[468]";
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[469]";
connectAttr "R_Pinky_Knuckle_03_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[470]";
connectAttr "L_Clav_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[471]";
connectAttr "L_Clav_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[472]";
connectAttr "L_Clav_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[473]";
connectAttr "L_Clav_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[474]";
connectAttr "L_Clav_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[475]";
connectAttr "L_Clav_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[476]";
connectAttr "L_Clav_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[477]";
connectAttr "L_Clav_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[478]";
connectAttr "L_Clav_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[479]";
connectAttr "L_Clav_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[480]";
connectAttr "L_Clav_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[481]";
connectAttr "L_Shoulder_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[482]";
connectAttr "L_Shoulder_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[483]";
connectAttr "L_Shoulder_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[484]";
connectAttr "L_Shoulder_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[485]";
connectAttr "L_Shoulder_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[486]";
connectAttr "L_Shoulder_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[487]";
connectAttr "L_Shoulder_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[488]";
connectAttr "L_Shoulder_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[489]";
connectAttr "L_Shoulder_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[490]";
connectAttr "L_Shoulder_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[491]";
connectAttr "L_Shoulder_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[492]";
connectAttr "L_Elbow_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[493]";
connectAttr "L_Elbow_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[494]";
connectAttr "L_Elbow_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[495]";
connectAttr "L_Elbow_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[496]";
connectAttr "L_Elbow_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[497]";
connectAttr "L_Elbow_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[498]";
connectAttr "L_Elbow_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[499]";
connectAttr "L_Elbow_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[500]";
connectAttr "L_Elbow_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[501]";
connectAttr "L_Elbow_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[502]";
connectAttr "L_Elbow_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[503]";
connectAttr "L_Wrist_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[504]";
connectAttr "L_Wrist_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[505]";
connectAttr "L_Wrist_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[506]";
connectAttr "L_Wrist_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[507]";
connectAttr "L_Wrist_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[508]";
connectAttr "L_Wrist_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[509]";
connectAttr "L_Wrist_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[510]";
connectAttr "L_Wrist_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[511]";
connectAttr "L_Wrist_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[512]";
connectAttr "L_Wrist_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[513]";
connectAttr "L_Wrist_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[514]";
connectAttr "R_Clav_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[515]";
connectAttr "R_Clav_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[516]";
connectAttr "R_Clav_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[517]";
connectAttr "R_Clav_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[518]";
connectAttr "R_Clav_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[519]";
connectAttr "R_Clav_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[520]";
connectAttr "R_Clav_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[521]";
connectAttr "R_Clav_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[522]";
connectAttr "R_Clav_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[523]";
connectAttr "R_Clav_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[524]";
connectAttr "R_Clav_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[525]";
connectAttr "R_Shoulder_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[526]";
connectAttr "R_Shoulder_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[527]";
connectAttr "R_Shoulder_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[528]";
connectAttr "R_Shoulder_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[529]";
connectAttr "R_Shoulder_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[530]";
connectAttr "R_Shoulder_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[531]";
connectAttr "R_Shoulder_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[532]";
connectAttr "R_Shoulder_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[533]";
connectAttr "R_Shoulder_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[534]";
connectAttr "R_Shoulder_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[535]";
connectAttr "R_Shoulder_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[536]";
connectAttr "R_Elbow_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[537]";
connectAttr "R_Elbow_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[538]";
connectAttr "R_Elbow_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[539]";
connectAttr "R_Elbow_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[540]";
connectAttr "R_Elbow_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[541]";
connectAttr "R_Elbow_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[542]";
connectAttr "R_Elbow_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[543]";
connectAttr "R_Elbow_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[544]";
connectAttr "R_Elbow_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[545]";
connectAttr "R_Elbow_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[546]";
connectAttr "R_Elbow_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[547]";
connectAttr "R_Wrist_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[548]";
connectAttr "R_Wrist_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[549]";
connectAttr "R_Wrist_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[550]";
connectAttr "R_Wrist_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[551]";
connectAttr "R_Wrist_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[552]";
connectAttr "R_Wrist_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[553]";
connectAttr "R_Wrist_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[554]";
connectAttr "R_Wrist_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[555]";
connectAttr "R_Wrist_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[556]";
connectAttr "R_Wrist_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[557]";
connectAttr "R_Wrist_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[558]";
connectAttr "L_Leg_Clav_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[559]";
connectAttr "L_Leg_Clav_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[560]";
connectAttr "L_Leg_Clav_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[561]";
connectAttr "L_Leg_Clav_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[562]";
connectAttr "L_Leg_Clav_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[563]";
connectAttr "L_Leg_Clav_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[564]";
connectAttr "L_Leg_Clav_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[565]";
connectAttr "L_Leg_Clav_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[566]";
connectAttr "L_Leg_Clav_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[567]";
connectAttr "L_Leg_Clav_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[568]";
connectAttr "L_Leg_Clav_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[569]";
connectAttr "L_Leg_IK_Base_Ctrl_translateX.o" "RedDragonbornRN.phl[570]";
connectAttr "L_Leg_IK_Base_Ctrl_translateY.o" "RedDragonbornRN.phl[571]";
connectAttr "L_Leg_IK_Base_Ctrl_translateZ.o" "RedDragonbornRN.phl[572]";
connectAttr "L_Leg_IK_Base_Ctrl_Follow.o" "RedDragonbornRN.phl[573]";
connectAttr "L_Leg_IK_Ctrl_translateX.o" "RedDragonbornRN.phl[574]";
connectAttr "L_Leg_IK_Ctrl_translateY.o" "RedDragonbornRN.phl[575]";
connectAttr "L_Leg_IK_Ctrl_translateZ.o" "RedDragonbornRN.phl[576]";
connectAttr "L_Leg_IK_Ctrl_Follow.o" "RedDragonbornRN.phl[577]";
connectAttr "L_Leg_IK_Ctrl_RockFoot.o" "RedDragonbornRN.phl[578]";
connectAttr "L_Leg_IK_Ctrl_HeelRotate.o" "RedDragonbornRN.phl[579]";
connectAttr "L_Leg_IK_Ctrl_HeelPivot.o" "RedDragonbornRN.phl[580]";
connectAttr "L_Leg_IK_Ctrl_HeelTwist.o" "RedDragonbornRN.phl[581]";
connectAttr "L_Leg_IK_Ctrl_ToeRotate.o" "RedDragonbornRN.phl[582]";
connectAttr "L_Leg_IK_Ctrl_ToePivot.o" "RedDragonbornRN.phl[583]";
connectAttr "L_Leg_IK_Ctrl_ToeTwist.o" "RedDragonbornRN.phl[584]";
connectAttr "L_Leg_IK_Ctrl_BallRotate.o" "RedDragonbornRN.phl[585]";
connectAttr "L_Leg_IK_Ctrl_BallPivot.o" "RedDragonbornRN.phl[586]";
connectAttr "L_Leg_IK_Ctrl_BallTwist.o" "RedDragonbornRN.phl[587]";
connectAttr "L_Leg_IK_Ctrl_ToeTapRotate.o" "RedDragonbornRN.phl[588]";
connectAttr "L_Leg_IK_Ctrl_ToeTapPivot.o" "RedDragonbornRN.phl[589]";
connectAttr "L_Leg_IK_Ctrl_ToeTapTwist.o" "RedDragonbornRN.phl[590]";
connectAttr "L_Leg_IK_Ctrl_FootRoll.o" "RedDragonbornRN.phl[591]";
connectAttr "L_Leg_IK_Ctrl_ControlVis.o" "RedDragonbornRN.phl[592]";
connectAttr "L_Leg_IK_Ctrl_Stretch.o" "RedDragonbornRN.phl[593]";
connectAttr "L_Leg_IK_Ctrl_MaxStretch.o" "RedDragonbornRN.phl[594]";
connectAttr "L_Leg_IK_Ctrl_LegLength.o" "RedDragonbornRN.phl[595]";
connectAttr "L_Leg_IK_Ctrl_UpperLegLength.o" "RedDragonbornRN.phl[596]";
connectAttr "L_Leg_IK_Ctrl_LowerLegLength.o" "RedDragonbornRN.phl[597]";
connectAttr "L_Leg_IK_Ctrl_rotateX.o" "RedDragonbornRN.phl[598]";
connectAttr "L_Leg_IK_Ctrl_rotateY.o" "RedDragonbornRN.phl[599]";
connectAttr "L_Leg_IK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[600]";
connectAttr "L_Leg_PV_Ctrl_translateX.o" "RedDragonbornRN.phl[601]";
connectAttr "L_Leg_PV_Ctrl_translateY.o" "RedDragonbornRN.phl[602]";
connectAttr "L_Leg_PV_Ctrl_translateZ.o" "RedDragonbornRN.phl[603]";
connectAttr "L_Leg_PV_Ctrl_Follow.o" "RedDragonbornRN.phl[604]";
connectAttr "R_Leg_Clav_FK_Ctrl_FollowTranslate.o" "RedDragonbornRN.phl[605]";
connectAttr "R_Leg_Clav_FK_Ctrl_FollowRotate.o" "RedDragonbornRN.phl[606]";
connectAttr "R_Leg_Clav_FK_Ctrl_translateX.o" "RedDragonbornRN.phl[607]";
connectAttr "R_Leg_Clav_FK_Ctrl_translateY.o" "RedDragonbornRN.phl[608]";
connectAttr "R_Leg_Clav_FK_Ctrl_translateZ.o" "RedDragonbornRN.phl[609]";
connectAttr "R_Leg_Clav_FK_Ctrl_rotateX.o" "RedDragonbornRN.phl[610]";
connectAttr "R_Leg_Clav_FK_Ctrl_rotateY.o" "RedDragonbornRN.phl[611]";
connectAttr "R_Leg_Clav_FK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[612]";
connectAttr "R_Leg_Clav_FK_Ctrl_scaleX.o" "RedDragonbornRN.phl[613]";
connectAttr "R_Leg_Clav_FK_Ctrl_scaleY.o" "RedDragonbornRN.phl[614]";
connectAttr "R_Leg_Clav_FK_Ctrl_scaleZ.o" "RedDragonbornRN.phl[615]";
connectAttr "R_Leg_IK_Base_Ctrl_translateX.o" "RedDragonbornRN.phl[616]";
connectAttr "R_Leg_IK_Base_Ctrl_translateY.o" "RedDragonbornRN.phl[617]";
connectAttr "R_Leg_IK_Base_Ctrl_translateZ.o" "RedDragonbornRN.phl[618]";
connectAttr "R_Leg_IK_Base_Ctrl_Follow.o" "RedDragonbornRN.phl[619]";
connectAttr "R_Leg_PV_Ctrl_translateX.o" "RedDragonbornRN.phl[620]";
connectAttr "R_Leg_PV_Ctrl_translateY.o" "RedDragonbornRN.phl[621]";
connectAttr "R_Leg_PV_Ctrl_translateZ.o" "RedDragonbornRN.phl[622]";
connectAttr "R_Leg_PV_Ctrl_Follow.o" "RedDragonbornRN.phl[623]";
connectAttr "R_Leg_IK_Ctrl_translateX.o" "RedDragonbornRN.phl[624]";
connectAttr "R_Leg_IK_Ctrl_translateY.o" "RedDragonbornRN.phl[625]";
connectAttr "R_Leg_IK_Ctrl_translateZ.o" "RedDragonbornRN.phl[626]";
connectAttr "R_Leg_IK_Ctrl_Follow.o" "RedDragonbornRN.phl[627]";
connectAttr "R_Leg_IK_Ctrl_RockFoot.o" "RedDragonbornRN.phl[628]";
connectAttr "R_Leg_IK_Ctrl_HeelRotate.o" "RedDragonbornRN.phl[629]";
connectAttr "R_Leg_IK_Ctrl_HeelPivot.o" "RedDragonbornRN.phl[630]";
connectAttr "R_Leg_IK_Ctrl_HeelTwist.o" "RedDragonbornRN.phl[631]";
connectAttr "R_Leg_IK_Ctrl_ToeRotate.o" "RedDragonbornRN.phl[632]";
connectAttr "R_Leg_IK_Ctrl_ToePivot.o" "RedDragonbornRN.phl[633]";
connectAttr "R_Leg_IK_Ctrl_ToeTwist.o" "RedDragonbornRN.phl[634]";
connectAttr "R_Leg_IK_Ctrl_BallRotate.o" "RedDragonbornRN.phl[635]";
connectAttr "R_Leg_IK_Ctrl_BallPivot.o" "RedDragonbornRN.phl[636]";
connectAttr "R_Leg_IK_Ctrl_BallTwist.o" "RedDragonbornRN.phl[637]";
connectAttr "R_Leg_IK_Ctrl_ToeTapRotate.o" "RedDragonbornRN.phl[638]";
connectAttr "R_Leg_IK_Ctrl_ToeTapPivot.o" "RedDragonbornRN.phl[639]";
connectAttr "R_Leg_IK_Ctrl_ToeTapTwist.o" "RedDragonbornRN.phl[640]";
connectAttr "R_Leg_IK_Ctrl_FootRoll.o" "RedDragonbornRN.phl[641]";
connectAttr "R_Leg_IK_Ctrl_ControlVis.o" "RedDragonbornRN.phl[642]";
connectAttr "R_Leg_IK_Ctrl_Stretch.o" "RedDragonbornRN.phl[643]";
connectAttr "R_Leg_IK_Ctrl_MaxStretch.o" "RedDragonbornRN.phl[644]";
connectAttr "R_Leg_IK_Ctrl_LegLength.o" "RedDragonbornRN.phl[645]";
connectAttr "R_Leg_IK_Ctrl_UpperLegLength.o" "RedDragonbornRN.phl[646]";
connectAttr "R_Leg_IK_Ctrl_LowerLegLength.o" "RedDragonbornRN.phl[647]";
connectAttr "R_Leg_IK_Ctrl_rotateX.o" "RedDragonbornRN.phl[648]";
connectAttr "R_Leg_IK_Ctrl_rotateY.o" "RedDragonbornRN.phl[649]";
connectAttr "R_Leg_IK_Ctrl_rotateZ.o" "RedDragonbornRN.phl[650]";
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
