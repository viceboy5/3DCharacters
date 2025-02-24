//Maya ASCII 2024 scene
//Name: WalkerRunCycleWClothes.ma
//Last modified: Fri, Feb 21, 2025 09:44:04 PM
//Codeset: 1252
file -rdi 1 -ns "BigWalker" -rfn "BigWalkerRN" -op "v=0;" -typ "mayaAscii" "D:/GitRepos/3DCharacters/Walker/Maya//scenes/Big/BigWalker.ma";
file -r -ns "BigWalker" -dr 1 -rfn "BigWalkerRN" -op "v=0;" -typ "mayaAscii" "D:/GitRepos/3DCharacters/Walker/Maya//scenes/Big/BigWalker.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -dataType "xgmGuideData" -dataType "igmDescriptionData" -dataType "xgmSplineData"
		 -dataType "xgmMeshData" -dataType "xgmSplineTweakData" -dataType "xgmSplineBoundInfoData"
		 -dataType "xgmGuideRefData" "xgenToolkit" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" "mtoa" "5.3.4.1";
requires -nodeType "AlembicNode" "AbcImport" "1.0";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.6.01";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26120)";
fileInfo "UUID" "4D1EA4CD-4395-4B30-25F9-5B847FE4A297";
createNode transform -s -n "persp";
	rename -uid "7D2E20DC-4E96-3CB5-D8E5-189F2A867703";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.9252211649176 10.919676411416521 25.527519304902327 ;
	setAttr ".r" -type "double3" -6.3383527293413753 692.19999999973572 2.2472184363180457e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EAC2D285-4582-04D2-4F7E-2BB186417911";
	setAttr -k off ".v" no;
	setAttr ".fl" 40;
	setAttr ".coi" 27.628140281038391;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.00043823242187501776 7.0789799118041996 -0.084679641723632848 ;
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
createNode transform -n "cloth_parent";
	rename -uid "5CE1C53E-4D54-8296-49AE-6AB29D7A22DF";
	setAttr ".s" -type "double3" 0.0098 0.0098 0.0098 ;
createNode mesh -n "cloth_shape_0" -p "cloth_parent";
	rename -uid "F5D7EB6A-4C0E-DAC0-1332-0CA1A4E6D029";
	addAttr -ci true -k true -sn "noNormals" -ln "noNormals" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sw" no;
	setAttr ".dr" 1;
createNode transform -n "aiSkyDomeLight1";
	rename -uid "A97CA6A1-4D86-3131-BCDA-F3BC27E54696";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "BA840763-4010-B413-0FA1-448D97D0F12D";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.15000000596046448;
	setAttr ".camera" 0;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "pPlane1";
	rename -uid "939A9D96-446F-1403-1CAB-BCBDA00151C4";
	setAttr ".s" -type "double3" 1000 1000 1000 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "33AC6AA6-48B0-84BC-D01A-98B992D9DFBD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[2]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[12]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[13]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[18]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[25]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[28]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[30]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[32]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[33]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[34]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[41]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[42]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[43]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[44]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[45]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[46]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[52]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[53]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[54]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[55]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[56]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[57]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[63]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[64]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[65]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[66]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[67]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[68]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[74]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[75]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[76]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[77]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[85]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[86]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[87]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[88]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[90]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[92]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[94]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[95]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[96]" -type "float3" 0 0.0026657805 0 ;
	setAttr ".pt[97]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[98]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[99]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[100]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[102]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[104]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[105]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[106]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[107]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[108]" -type "float3" 0 0.065366708 0 ;
	setAttr ".pt[109]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[110]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[111]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[112]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[113]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[114]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[115]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[116]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[117]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[118]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[119]" -type "float3" 0 0.19502354 0 ;
	setAttr ".pt[120]" -type "float3" 0 0.19502354 0 ;
createNode transform -n "spotLight1";
	rename -uid "DDE33429-4DA1-0677-CEF4-E1A958D5FCE5";
	setAttr ".t" -type "double3" -20.073851282203016 22.218623366343632 7.9472313390534541 ;
	setAttr ".r" -type "double3" -51.476526319709329 -62.061029118218144 24.381658747639445 ;
createNode spotLight -n "spotLightShape1" -p "spotLight1";
	rename -uid "769BBF9C-40DE-C57D-314A-6A881F33EFCF";
	setAttr -k off ".v";
	setAttr ".pa" 10;
	setAttr ".ai_exposure" 10;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 10304.34765625;
createNode transform -n "pointLight1";
	rename -uid "09CB36BF-47B8-2F44-481B-D0B934CA6131";
	setAttr ".t" -type "double3" 0 13.399765150972016 10.67678619701408 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	rename -uid "7BE98FEA-42AE-18CF-6A83-0A9630586BE7";
	setAttr -k off ".v";
	setAttr ".in" 5;
	setAttr ".us" no;
	setAttr ".ai_cast_shadows" no;
	setAttr ".ai_exposure" 6;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5782.60888671875;
createNode transform -n "pointLight2";
	rename -uid "2839B517-4125-0D84-2C08-1DB597246F65";
	setAttr ".t" -type "double3" 0 13.399765150972016 -6.4983373836673142 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	rename -uid "9A3DBA50-4B4E-EDA1-2639-5CAAEC1679AD";
	setAttr -k off ".v";
	setAttr ".in" 5;
	setAttr ".us" no;
	setAttr ".ai_cast_shadows" no;
	setAttr ".ai_exposure" 5;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5782.60888671875;
createNode transform -n "pointLight3";
	rename -uid "46497CCA-4237-7F38-DAB3-65AC219BF8F0";
	setAttr ".t" -type "double3" 17.514882722050483 13.399765150972016 -6.4983373836673142 ;
createNode pointLight -n "pointLightShape3" -p "pointLight3";
	rename -uid "D007694D-4A2D-D0B1-BFEC-D9A232D68CAE";
	setAttr -k off ".v";
	setAttr ".in" 5;
	setAttr ".us" no;
	setAttr ".ai_cast_shadows" no;
	setAttr ".ai_exposure" 5;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5782.60888671875;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2C81D7FB-4258-CC9B-8415-A79449EF308B";
	setAttr -s 55 ".lnk";
	setAttr -s 55 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "8D0F7EFD-4690-952A-127E-5BAE46B8D27E";
createNode displayLayer -n "defaultLayer";
	rename -uid "65E39E05-4527-1005-3D89-5EB359D9BC06";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1B699A30-49E4-2A78-A3CA-CCB39D9305E6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "80A35124-47D9-90AD-68A4-BA853309FD6C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C69477C2-460F-5D17-6348-8FA09A6F569F";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A66843F7-4EB1-BC68-E115-8DA3E4F3EA15";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F610BFE7-4F45-4D96-BF3C-47A42473F777";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B378CF47-45E9-52DE-0F99-F28B8C3DC5EA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "8AB6812D-4628-26C8-D804-05819AD4B444";
	setAttr ".ai_translator" -type "string" "png";
	setAttr ".color_management" 1;
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
		"BigWalkerRN" 269
		2 "|BigWalker:HairBase" "visibility" " 0"
		2 "|BigWalker:Hair_Desc_splineDescription" "visibility" " 0"
		2 "|BigWalker:Walker|BigWalker:Geo|BigWalker:Clothes" "visibility" " 0"
		2 "|BigWalker:Walker|BigWalker:Geo|BigWalker:Body|BigWalker:BodyShape" "visibility" 
		" -k 0 1"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"L_Arm_IKFK" " -k 1 1"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"R_Arm_IKFK" " -k 1 1"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"L_Leg_IKFK" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Transform_Ctrl_Grp|BigWalker:Transform_Ctrl" 
		"R_Leg_IKFK" " -k 1 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:COG_Ctrl_Grp|BigWalker:COG_Ctrl" 
		"translate" " -type \"double3\" 0 -1.45654995210346683 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:COG_Ctrl_Grp|BigWalker:COG_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Pelvis_FK_Ctrl_Grp|BigWalker:Pelvis_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Pelvis_FK_Ctrl_Grp|BigWalker:Pelvis_FK_Ctrl" 
		"rotate" " -type \"double3\" 12.33977310557925655 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl_Grp|BigWalker:Neck_01_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -8.39782242923786448"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl_Grp|BigWalker:Neck_02_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -8.39782242923786448"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Head_Fk_Ctrl_Grp|BigWalker:Head_Fk_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Head_Fk_Ctrl_Grp|BigWalker:Head_Fk_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -8.39782242923786448"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Head_Fk_Ctrl_Grp|BigWalker:Head_Fk_Ctrl|BigWalker:Face_Ctrl_Grp|BigWalker:Face_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Head_Fk_Ctrl_Grp|BigWalker:Head_Fk_Ctrl|BigWalker:Face_Ctrl_Grp|BigWalker:Face_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Eye_Ctrl_Grp|BigWalker:Eye_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Eye_Ctrl_Grp|BigWalker:Eye_Ctrl|BigWalker:L_Eye_Ctrl_Grp|BigWalker:L_Eye_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Neck_Ctrl_Grp|BigWalker:Eye_Ctrl_Grp|BigWalker:Eye_Ctrl|BigWalker:R_Eye_Ctrl_Grp|BigWalker:R_Eye_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl_Grp|BigWalker:Spine_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl_Grp|BigWalker:Spine_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Spine_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl_Grp|BigWalker:Spine_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Thumb_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pointer_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Middle_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Ring_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Hand_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:L_Pinky_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Thumb_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pointer_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Middle_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Ring_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_01_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_02_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Hand_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl_Grp|BigWalker:R_Pinky_Knuckle_03_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl_Grp|BigWalker:L_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 1.29619463299927307 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl_Grp|BigWalker:L_Shoulder_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl_Grp|BigWalker:L_Elbow_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:L_Arm_Ctrl_Grp|BigWalker:L_Arm_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl_Grp|BigWalker:L_Wrist_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl_Grp|BigWalker:R_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl_Grp|BigWalker:R_Shoulder_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl_Grp|BigWalker:R_Elbow_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl_Grp|BigWalker:R_Wrist_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Arms_Ctrl_Grp|BigWalker:R_Arm_Ctrl_Grp|BigWalker:R_Arm_IK_Ctrl_Grp|BigWalker:R_Arm_IK_Ctrl_Main_Grp|BigWalker:R_Arm_IK_Ctrl_Grp|BigWalker:R_Arm_IK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_Clav_FK_Ctrl_Grp|BigWalker:L_Leg_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_Clav_FK_Ctrl_Grp|BigWalker:L_Leg_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Base_Ctrl_Grp|BigWalker:L_Leg_IK_Base_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Base_Ctrl_Grp|BigWalker:L_Leg_IK_Base_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Base_Ctrl_Grp|BigWalker:L_Leg_IK_Base_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Base_Ctrl_Grp|BigWalker:L_Leg_IK_Base_Ctrl" 
		"translateZ" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:L_Leg_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl_Main_Grp|BigWalker:L_Leg_IK_Ctrl_Grp|BigWalker:L_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
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
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_Clav_FK_Ctrl_Grp|BigWalker:R_Leg_Clav_FK_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_Clav_FK_Ctrl_Grp|BigWalker:R_Leg_Clav_FK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Base_Ctrl_Grp|BigWalker:R_Leg_IK_Base_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Base_Ctrl_Grp|BigWalker:R_Leg_IK_Base_Ctrl" 
		"translateX" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Base_Ctrl_Grp|BigWalker:R_Leg_IK_Base_Ctrl" 
		"translateY" " -av"
		2 "|BigWalker:Walker|BigWalker:Controls|BigWalker:Legs_Ctrl_Grp|BigWalker:R_Leg_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Grp|BigWalker:R_Leg_IK_Ctrl_Main_Grp|BigWalker:R_Leg_IK_Base_Ctrl_Grp|BigWalker:R_Leg_IK_Base_Ctrl" 
		"translateZ" " -av"
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
		"rotate" " -type \"double3\" 38.96977014046688481 0 0"
		2 "|BigWalker:Walker|BigWalker:Skeleton|BigWalker:COG_FK_Jnt|BigWalker:Spine_01_FK_Jnt|BigWalker:Spine_02_FK_Jnt|BigWalker:Spine_03_FK_Jnt|BigWalker:L_Clav_FK_Jnt|BigWalker:L_Arm_01_IK_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BigWalker:Walker|BigWalker:Skeleton|BigWalker:COG_FK_Jnt|BigWalker:Spine_01_FK_Jnt|BigWalker:Spine_02_FK_Jnt|BigWalker:Spine_03_FK_Jnt|BigWalker:L_Clav_FK_Jnt|BigWalker:L_Arm_01_IK_Jnt|BigWalker:L_Arm_02_IK_Jnt" 
		"rotate" " -type \"double3\" 0 0 8.2772751498625657e-06"
		2 "|BigWalker:Walker|BigWalker:Skeleton|BigWalker:COG_FK_Jnt|BigWalker:Spine_01_FK_Jnt|BigWalker:Spine_02_FK_Jnt|BigWalker:Spine_03_FK_Jnt|BigWalker:R_Clav_FK_Jnt|BigWalker:R_Arm_01_IK_Jnt" 
		"rotate" " -type \"double3\" -5.1753562706668794e-07 -2.2162546664702053e-06 0.00075806441096793159"
		
		2 "|BigWalker:Walker|BigWalker:Skeleton|BigWalker:COG_FK_Jnt|BigWalker:Spine_01_FK_Jnt|BigWalker:Spine_02_FK_Jnt|BigWalker:Spine_03_FK_Jnt|BigWalker:R_Clav_FK_Jnt|BigWalker:R_Arm_01_IK_Jnt|BigWalker:R_Arm_02_IK_Jnt" 
		"rotate" " -type \"double3\" 0 0 -0.001377045350608067"
		2 "|BigWalker:Sword" "visibility" " 0"
		2 "|BigWalker:Sword|BigWalker:Sword_Handle_Ctrl_Grp|BigWalker:Sword_Handle_Ctrl" 
		"translate" " -type \"double3\" -10.8153468421888288 7.56617075706834008 -3.14396899315463862"
		
		2 "BigWalker:Geo_Layer" "displayType" " 2"
		2 "BigWalker:Geo_Layer" "visibility" " 1"
		2 "BigWalker:ControlsLayer" "visibility" " 1"
		2 "BigWalker:CorrectiveBlendShapes" "envelope" " 1"
		2 "BigWalker:CorrectiveBlendShapes" "midLayerParent" " 0"
		2 "BigWalker:FacialBlendShapes" "envelope" " 1"
		2 "BigWalker:FacialBlendShapes" "midLayerParent" " 0"
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2639\n            -height 1051\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2639\\n    -height 1051\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2639\\n    -height 1051\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C2706C00-46C5-C27E-4817-148CB4B58591";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 132 -ast 0 -aet 132 ";
	setAttr ".st" 6;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateX";
	rename -uid "E4E6F5C5-4E28-B078-92D5-92997CC1918F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 12 0 23 0 34 0 45 0 56 0 67 0 78 0 89 0
		 100 0 111 0 122 0 133 0;
	setAttr -s 13 ".kit[1:12]"  1 9 1 9 1 9 1 9 
		1 9 1 9;
	setAttr -s 13 ".kot[1:12]"  1 9 1 9 1 9 1 9 
		1 9 1 1;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateY";
	rename -uid "054E5A86-48F5-E913-3D27-959683F59370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  1 0 3 0 5 0 8 2.5925243461916234 12 3.1977126097545892
		 14 2.4759826112772125 16 0.71266012997910977 19 1.4081630880936893 23 0 25 0 27 0
		 30 2.5925243461916234 34 3.1977126097545892 36 2.4759826112772125 38 0.71266012997910977
		 41 1.4081630880936893 45 0 47 0 49 0 52 2.5925243461916234 56 3.1977126097545892
		 58 2.4759826112772125 60 0.71266012997910977 63 1.4081630880936893 67 0 69 0 71 0
		 74 2.5925243461916234 78 3.1977126097545892 80 2.4759826112772125 82 0.71266012997910977
		 85 1.4081630880936893 89 0 91 0 93 0 96 2.5925243461916234 100 3.1977126097545892
		 102 2.4759826112772125 104 0.71266012997910977 107 1.4081630880936893 111 0 113 0
		 115 0 118 2.5925243461916234 122 3.1977126097545892 124 2.4759826112772125 126 0.71266012997910977
		 129 1.4081630880936893 133 0;
	setAttr -s 49 ".kit[1:48]"  3 3 9 1 9 9 9 9 
		3 3 9 1 9 9 9 9 3 3 9 1 9 9 9 9 3 
		3 9 1 9 9 9 9 3 3 9 1 9 9 9 9 3 3 
		9 1 9 9 9 9;
	setAttr -s 49 ".kot[1:48]"  3 3 9 1 9 9 9 9 
		3 3 9 1 9 9 9 9 3 3 9 1 9 9 9 9 3 
		3 9 1 9 9 9 9 3 3 9 1 9 9 9 9 3 3 
		9 1 9 9 9 1;
	setAttr -s 49 ".kix[4:48]"  1 0.066917334154621547 0.19149114911158283 
		0.37877066063607462 0.17480281054567409 1 1 0.090833970011907614 1 0.066917334154621505 
		0.19149114911158283 0.37877066063607462 0.17480281054567401 1 1 0.090833970011907683 
		1 0.066917334154621505 0.19149114911158299 0.37877066063607445 0.17480281054567401 
		1 1 0.090833970011907558 1 0.066917334154621505 0.1914911491115826 0.3787706606360749 
		0.17480281054567401 1 1 0.090833970011907683 1 0.066917334154621311 0.1914911491115826 
		0.3787706606360749 0.17480281054567401 1 1 0.090833970011907419 1 0.066917334154621672 
		0.1914911491115826 0.3787706606360749 0.11753710676428207;
	setAttr -s 49 ".kiy[4:48]"  0 -0.99775852308544022 -0.98149434018333781 
		-0.92549056539832508 -0.98460346202180971 0 0 0.99586605017536156 0 -0.99775852308544 
		-0.98149434018333781 -0.92549056539832508 -0.98460346202180971 0 0 0.99586605017536156 
		0 -0.99775852308544 -0.9814943401833377 -0.9254905653983253 -0.98460346202180971 
		0 0 0.99586605017536167 0 -0.99775852308544 -0.9814943401833377 -0.92549056539832508 
		-0.98460346202180971 0 0 0.99586605017536156 0 -0.99775852308544011 -0.9814943401833377 
		-0.92549056539832508 -0.98460346202180971 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.9814943401833377 -0.92549056539832508 -0.99306849136073283;
	setAttr -s 49 ".kox[4:48]"  1 0.066917334154621547 0.19149114911158283 
		0.37877066063607462 0.17480281054567409 1 1 0.090833970011907614 1 0.066917334154621505 
		0.19149114911158283 0.37877066063607462 0.17480281054567401 1 1 0.090833970011907683 
		1 0.066917334154621505 0.19149114911158299 0.37877066063607445 0.17480281054567401 
		1 1 0.090833970011907558 1 0.066917334154621505 0.1914911491115826 0.3787706606360749 
		0.17480281054567401 1 1 0.090833970011907683 1 0.066917334154621311 0.1914911491115826 
		0.3787706606360749 0.17480281054567401 1 1 0.090833970011907419 1 0.066917334154621672 
		0.1914911491115826 0.3787706606360749 1;
	setAttr -s 49 ".koy[4:48]"  0 -0.99775852308544022 -0.98149434018333781 
		-0.92549056539832508 -0.98460346202180971 0 0 0.99586605017536156 0 -0.99775852308544 
		-0.98149434018333781 -0.92549056539832508 -0.98460346202180971 0 0 0.99586605017536156 
		0 -0.99775852308544 -0.9814943401833377 -0.9254905653983253 -0.98460346202180971 
		0 0 0.99586605017536167 0 -0.99775852308544 -0.9814943401833377 -0.92549056539832508 
		-0.98460346202180971 0 0 0.99586605017536156 0 -0.99775852308544011 -0.9814943401833377 
		-0.92549056539832508 -0.98460346202180971 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.9814943401833377 -0.92549056539832508 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "L_Leg_IK_Ctrl_translateZ";
	rename -uid "E422B8C7-41BE-4F82-83AA-D19D5A4BD9C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  -40 0 1 4.8222678484494255 5 -3.9474244761395654
		 8 -4.6594342678063754 12 -5.2148200155281605 14 -2.5233672751281939 16 2.1886890336706712
		 19 4.2905846978593889 23 4.8222678484494255 27 -3.9474244761395654 30 -4.6594342678063754
		 34 -5.2148200155281605 36 -2.5233672751281939 38 2.1886890336706712 41 4.2905846978593889
		 45 4.8222678484494255 49 -3.9474244761395654 52 -4.6594342678063754 56 -5.2148200155281605
		 58 -2.5233672751281939 60 2.1886890336706712 63 4.2905846978593889 67 4.8222678484494255
		 71 -3.9474244761395654 74 -4.6594342678063754 78 -5.2148200155281605 80 -2.5233672751281939
		 82 2.1886890336706712 85 4.2905846978593889 89 4.8222678484494255 93 -3.9474244761395654
		 96 -4.6594342678063754 100 -5.2148200155281605 102 -2.5233672751281939 104 2.1886890336706712
		 107 4.2905846978593889 111 4.8222678484494255 115 -3.9474244761395654 118 -4.6594342678063754
		 122 -5.2148200155281605 124 -2.5233672751281939 126 2.1886890336706712 129 4.2905846978593889
		 133 4.8222678484494255;
	setAttr -s 44 ".kit[0:43]"  18 2 2 9 1 9 9 9 
		2 2 9 1 9 9 9 2 2 9 1 9 9 9 2 2 9 
		1 9 9 9 2 2 9 1 9 9 9 2 2 9 1 9 9 
		9 1;
	setAttr -s 44 ".kot[0:43]"  18 2 2 9 1 9 9 9 
		1 2 9 1 9 9 9 1 2 9 1 9 9 9 1 2 9 
		1 9 9 9 1 2 9 1 9 9 9 1 2 9 1 9 9 
		9 1;
	setAttr -s 44 ".kix[4:43]"  0.046373712197337609 0.022506145351431368 
		0.030560242752210191 0.11007616401125205 0.29911803591096808 0.019001416465221507 
		0.22426869467439214 0.046373712197337609 0.022506145351431348 0.030560242752210191 
		0.11007616401125205 0.29911803591096808 0.019001416465221497 0.22426869467439231 
		0.046373712197337609 0.022506145351431348 0.030560242752210223 0.11007616401125196 
		0.29911803591096769 0.019001416465221545 0.22426869467439195 0.046373712197337609 
		0.022506145351431348 0.030560242752210157 0.11007616401125211 0.29911803591096842 
		0.019001416465221497 0.22426869467439231 0.046373712197337609 0.022506145351431292 
		0.030560242752210157 0.11007616401125211 0.29911803591096842 0.019001416465221545 
		0.22426869467439164 0.046373712197337609 0.02250614535143141 0.030560242752210157 
		0.11007616401125211 0.29911803591096808;
	setAttr -s 44 ".kiy[4:43]"  0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.99392315503592521 0.95421611838868281 -0.99981945678823192 
		-0.97452734830226506 0.99892416069341239 0.99974670463143822 0.99953292670273053 
		0.99392315503592521 0.95421611838868281 -0.99981945678823192 -0.97452734830226506 
		0.99892416069341239 0.99974670463143822 0.99953292670273053 0.99392315503592521 0.95421611838868281 
		-0.99981945678823192 -0.97452734830226506 0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.9939231550359251 0.9542161183886827 -0.99981945678823192 -0.97452734830226506 
		0.99892416069341239 0.99974670463143822 0.99953292670273053 0.9939231550359251 0.9542161183886827 
		-0.99981945678823192 -0.97452734830226517 0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.9939231550359251 0.95421611838868281;
	setAttr -s 44 ".kox[4:43]"  0.046373724221702696 0.022506145351431368 
		0.030560242752210191 0.11007616401125205 0.019001416465221514 0.17291489196173335 
		0.22426869467439214 0.046373724221702696 0.022506145351431348 0.030560242752210191 
		0.11007616401125205 0.019001416465221514 0.17291489196173335 0.22426869467439231 
		0.046373724221702696 0.022506145351431348 0.030560242752210223 0.11007616401125196 
		0.019001416465221514 0.17291489196173335 0.22426869467439195 0.046373724221702696 
		0.022506145351431348 0.030560242752210157 0.11007616401125211 0.019001416465221514 
		0.17291489196173335 0.22426869467439231 0.046373724221702696 0.022506145351431292 
		0.030560242752210157 0.11007616401125211 0.019001416465221514 0.17291489196173335 
		0.22426869467439164 0.046373724221702696 0.02250614535143141 0.030560242752210157 
		0.11007616401125211 0.019001416465221514;
	setAttr -s 44 ".koy[4:43]"  0.99892416013519747 0.99974670463143822 
		0.99953292670273053 0.99392315503592521 -0.99981945678823192 -0.98493676961410181 
		-0.97452734830226506 0.99892416013519747 0.99974670463143822 0.99953292670273053 
		0.99392315503592521 -0.99981945678823192 -0.98493676961410181 -0.97452734830226506 
		0.99892416013519747 0.99974670463143822 0.99953292670273053 0.99392315503592521 -0.99981945678823192 
		-0.98493676961410181 -0.97452734830226506 0.99892416013519747 0.99974670463143822 
		0.99953292670273053 0.9939231550359251 -0.99981945678823192 -0.98493676961410181 
		-0.97452734830226506 0.99892416013519747 0.99974670463143822 0.99953292670273053 
		0.9939231550359251 -0.99981945678823192 -0.98493676961410181 -0.97452734830226517 
		0.99892416013519747 0.99974670463143822 0.99953292670273053 0.9939231550359251 -0.99981945678823192;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Leg_IK_Ctrl_HeelRotate";
	rename -uid "D417578C-49DF-7BBE-BB4E-8D83974F15C5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  -40 0 1 27.900000000000002 3 0 5 0 8 -51.028571428571425
		 12 -58.4 16 -10.456273478587374 23 27.900000000000002 25 0 27 0 30 -51.028571428571425
		 34 -58.4 38 -10.456273478587374 45 27.900000000000002 47 0 49 0 52 -51.028571428571425
		 56 -58.4 60 -10.456273478587374 67 27.900000000000002 69 0 71 0 74 -51.028571428571425
		 78 -58.4 82 -10.456273478587374 89 27.900000000000002 91 0 93 0 96 -51.028571428571425
		 100 -58.4 104 -10.456273478587374 111 27.900000000000002 113 0 115 0 118 -51.028571428571425
		 122 -58.4 126 -10.456273478587374 133 27.900000000000002;
	setAttr -s 38 ".kit[0:37]"  18 9 9 9 9 1 9 9 
		9 9 9 1 9 9 9 9 9 1 9 9 9 9 9 1 9 
		9 9 9 9 1 9 9 9 9 9 1 9 1;
	setAttr -s 38 ".kot[0:37]"  18 9 9 9 9 1 9 1 
		9 9 9 1 9 1 9 9 9 1 9 1 9 9 9 1 9 
		1 9 9 9 1 9 1 9 9 9 1 9 1;
	setAttr -s 38 ".kix[5:37]"  0.0034762767042637861 0.0053108559628984673 
		0.035840595654397976 0.00597360906713372 0.0040826460793208577 0.0049942299524049511 
		0.0034762767042637861 0.0053108559628984664 0.035840595654397962 0.0059736090671337174 
		0.0040826460793208577 0.0049942299524049546 0.0034762767042637861 0.0053108559628984638 
		0.035840595654397962 0.005973609067133733 0.004082646079320862 0.0049942299524049468 
		0.0034762767042637861 0.005310855962898469 0.035840595654397962 0.0059736090671337174 
		0.004082646079320862 0.0049942299524049546 0.0034762767042637861 0.0053108559628984638 
		0.035840595654397962 0.005973609067133733 0.0040826460793208707 0.004994229952404939 
		0.0034762767042637861 0.0053108559628984734 0.0076039252006886715;
	setAttr -s 38 ".kiy[5:37]"  0.99999395773188327 0.99998589730502774 
		0.99935751946094742 -0.99998215783818512 -0.9999916659657675 -0.99998752875582531 
		0.99999395773188327 0.99998589730502774 0.99935751946094742 -0.99998215783818512 
		-0.9999916659657675 -0.99998752875582531 0.99999395773188327 0.99998589730502774 
		0.99935751946094742 -0.99998215783818512 -0.9999916659657675 -0.99998752875582531 
		0.99999395773188327 0.99998589730502774 0.99935751946094742 -0.99998215783818512 
		-0.9999916659657675 -0.99998752875582531 0.99999395773188327 0.99998589730502774 
		0.99935751946094742 -0.99998215783818512 -0.99999166596576738 -0.99998752875582531 
		0.99999395773188327 0.99998589730502774 0.99997108974286975;
	setAttr -s 38 ".kox[5:37]"  0.0034762767042637861 0.0053108559628984673 
		1 0.00597360906713372 0.0040826460793208577 0.0049942299524049511 0.0034762767042637861 
		0.0053108559628984664 1 0.0059736090671337174 0.0040826460793208577 0.0049942299524049546 
		0.0034762767042637861 0.0053108559628984638 1 0.005973609067133733 0.004082646079320862 
		0.0049942299524049468 0.0034762767042637861 0.005310855962898469 1 0.0059736090671337174 
		0.004082646079320862 0.0049942299524049546 0.0034762767042637861 0.0053108559628984638 
		1 0.005973609067133733 0.0040826460793208707 0.004994229952404939 0.0034762767042637861 
		0.0053108559628984734 0.0029868445022999133;
	setAttr -s 38 ".koy[5:37]"  0.99999395773188327 0.99998589730502774 
		0 -0.99998215783818512 -0.9999916659657675 -0.99998752875582531 0.99999395773188327 
		0.99998589730502774 0 -0.99998215783818512 -0.9999916659657675 -0.99998752875582531 
		0.99999395773188327 0.99998589730502774 0 -0.99998215783818512 -0.9999916659657675 
		-0.99998752875582531 0.99999395773188327 0.99998589730502774 0 -0.99998215783818512 
		-0.9999916659657675 -0.99998752875582531 0.99999395773188327 0.99998589730502774 
		0 -0.99998215783818512 -0.99999166596576738 -0.99998752875582531 0.99999395773188327 
		0.99998589730502774 -0.99999553937001096;
	setAttr ".pst" 3;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateX";
	rename -uid "BF449DE1-49C7-BA83-5798-2CAABF34E861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 12 0 23 0 34 0 45 0 56 0 67 0 78 0 89 0
		 100 0 111 0 122 0 133 0;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateY";
	rename -uid "FD0D7742-46E4-CC75-711B-8DA1B27CDBD5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 3.1977126097545892 3 2.4759826112772125
		 5 0.71266012997910977 8 1.4081630880936893 12 0 14 0 16 0 19 2.5925243461916234 23 3.1977126097545892
		 25 2.4759826112772125 27 0.71266012997910977 30 1.4081630880936893 34 0 36 0 38 0
		 41 2.5925243461916234 45 3.1977126097545892 47 2.4759826112772125 49 0.71266012997910977
		 52 1.4081630880936893 56 0 58 0 60 0 63 2.5925243461916234 67 3.1977126097545892
		 69 2.4759826112772125 71 0.71266012997910977 74 1.4081630880936893 78 0 80 0 82 0
		 85 2.5925243461916234 89 3.1977126097545892 91 2.4759826112772125 93 0.71266012997910977
		 96 1.4081630880936893 100 0 102 0 104 0 107 2.5925243461916234 111 3.1977126097545892
		 113 2.4759826112772125 115 0.71266012997910977 118 1.4081630880936893 122 0 124 0
		 126 0 129 2.5925243461916234 133 3.1977126097545892;
	setAttr -s 50 ".kit[0:49]"  18 3 9 9 9 3 3 1 
		1 3 9 9 9 3 3 1 1 3 9 9 9 3 3 1 1 
		3 9 9 9 3 3 1 1 3 9 9 9 3 3 1 1 3 
		9 9 9 3 3 1 1 1;
	setAttr -s 50 ".kot[0:49]"  18 3 9 9 9 3 3 1 
		1 1 9 9 9 3 3 1 1 1 9 9 9 3 3 1 1 
		1 9 9 9 3 3 1 1 1 9 9 9 3 3 1 1 1 
		9 9 9 3 3 1 1 1;
	setAttr -s 50 ".kix[7:49]"  1 0.0908339700119076 1 0.066917334154621547 
		0.19149114911158283 0.37877066063607462 1 1 1 0.0908339700119076 1 0.066917334154621505 
		0.19149114911158283 0.3787706606360749 1 1 1 0.0908339700119076 1 0.066917334154621672 
		0.19149114911158299 0.37877066063607445 1 1 1 0.0908339700119076 1 0.066917334154621505 
		0.19149114911158299 0.3787706606360749 1 1 1 0.0908339700119076 1 0.066917334154621672 
		0.19149114911158338 0.3787706606360739 1 1 1 0.0908339700119076 1;
	setAttr -s 50 ".kiy[7:49]"  0 0.99586605017536167 0 -0.99775852308544022 
		-0.98149434018333781 -0.92549056539832508 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.98149434018333781 -0.92549056539832508 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.9814943401833377 -0.9254905653983253 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.9814943401833377 -0.92549056539832508 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.98149434018333759 -0.92549056539832542 0 0 0 0.99586605017536167 0;
	setAttr -s 50 ".kox[7:49]"  1 0.0908339700119076 1 0.066917334154621547 
		0.19149114911158283 0.37877066063607462 1 1 1 0.0908339700119076 1 0.066917334154621505 
		0.19149114911158283 0.3787706606360749 1 1 1 0.0908339700119076 1 0.066917334154621672 
		0.19149114911158299 0.37877066063607445 1 1 1 0.0908339700119076 1 0.066917334154621505 
		0.19149114911158299 0.3787706606360749 1 1 1 0.0908339700119076 1 0.066917334154621672 
		0.19149114911158338 0.3787706606360739 1 1 1 0.0908339700119076 1;
	setAttr -s 50 ".koy[7:49]"  0 0.99586605017536167 0 -0.99775852308544022 
		-0.98149434018333781 -0.92549056539832508 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.98149434018333781 -0.92549056539832508 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.9814943401833377 -0.9254905653983253 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.9814943401833377 -0.92549056539832508 0 0 0 0.99586605017536167 0 -0.99775852308544 
		-0.98149434018333759 -0.92549056539832542 0 0 0 0.99586605017536167 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "R_Leg_IK_Ctrl_translateZ";
	rename -uid "80FDCE60-42F1-92DC-BFC1-A1AB47460D36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  -40 0 1 -5.2148200155281605 3 -2.5233672751281939
		 5 2.1886890336706712 8 4.2905846978593889 12 4.8222678484494255 16 -3.9474244761395654
		 19 -4.6594342678063754 23 -5.2148200155281605 25 -2.5233672751281939 27 2.1886890336706712
		 30 4.2905846978593889 34 4.8222678484494255 38 -3.9474244761395654 41 -4.6594342678063754
		 45 -5.2148200155281605 47 -2.5233672751281939 49 2.1886890336706712 52 4.2905846978593889
		 56 4.8222678484494255 60 -3.9474244761395654 63 -4.6594342678063754 67 -5.2148200155281605
		 69 -2.5233672751281939 71 2.1886890336706712 74 4.2905846978593889 78 4.8222678484494255
		 82 -3.9474244761395654 85 -4.6594342678063754 89 -5.2148200155281605 91 -2.5233672751281939
		 93 2.1886890336706712 96 4.2905846978593889 100 4.8222678484494255 104 -3.9474244761395654
		 107 -4.6594342678063754 111 -5.2148200155281605 113 -2.5233672751281939 115 2.1886890336706712
		 118 4.2905846978593889 122 4.8222678484494255 126 -3.9474244761395654 129 -4.6594342678063754
		 133 -5.2148200155281605;
	setAttr -s 44 ".kit[0:43]"  18 1 9 9 9 2 2 1 
		1 9 9 9 2 2 1 1 9 9 9 2 2 1 1 9 9 
		9 2 2 1 1 9 9 9 2 2 1 1 9 9 9 2 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  18 1 9 9 9 2 2 1 
		1 9 9 9 2 2 1 1 9 9 9 2 2 1 1 9 9 
		9 2 2 1 1 9 9 9 2 2 1 1 9 9 9 2 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  0.046373712197337609 0.022506145351431375 
		0.030560242752210198 0.11007616401125203 0.29911803591096797 0.019001416465221507 
		0.22426869467439203 0.046373712197337609 0.022506145351431368 0.030560242752210191 
		0.11007616401125205 0.29911803591096808 0.019001416465221497 0.22426869467439203 
		0.046373712197337609 0.022506145351431348 0.030560242752210191 0.11007616401125211 
		0.29911803591096842 0.019001416465221497 0.22426869467439203 0.046373712197337609 
		0.02250614535143141 0.030560242752210223 0.11007616401125196 0.29911803591096769 
		0.019001416465221497 0.22426869467439203 0.046373712197337609 0.022506145351431348 
		0.030560242752210223 0.11007616401125211 0.29911803591096842 0.019001416465221445 
		0.22426869467439203 0.046373712197337609 0.02250614535143141 0.030560242752210288 
		0.1100761640112518 0.29911803591096703 0.019001416465221545 0.22426869467439203 0.046373712197337609;
	setAttr -s 44 ".kiy[1:43]"  0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.99392315503592532 0.95421611838868281 -0.99981945678823192 
		-0.97452734830226506 0.99892416069341239 0.99974670463143822 0.99953292670273053 
		0.99392315503592521 0.95421611838868281 -0.99981945678823192 -0.97452734830226506 
		0.99892416069341239 0.99974670463143822 0.99953292670273053 0.9939231550359251 0.9542161183886827 
		-0.99981945678823192 -0.97452734830226506 0.99892416069341239 0.99974670463143822 
		0.99953292670273053 0.99392315503592521 0.95421611838868281 -0.99981945678823192 
		-0.97452734830226506 0.99892416069341239 0.99974670463143822 0.99953292670273053 
		0.9939231550359251 0.9542161183886827 -0.99981945678823192 -0.97452734830226506 0.99892416069341239 
		0.99974670463143822 0.99953292670273053 0.99392315503592521 0.95421611838868325 -0.99981945678823192 
		-0.97452734830226506 0.99892416069341239;
	setAttr -s 44 ".kox[1:43]"  0.046373724221702696 0.022506145351431375 
		0.030560242752210198 0.11007616401125203 0.019001416465221507 0.17291489196173335 
		0.22426869467439203 0.046373724221702696 0.022506145351431368 0.030560242752210191 
		0.11007616401125205 0.019001416465221497 0.17291489196173335 0.22426869467439203 
		0.046373724221702696 0.022506145351431348 0.030560242752210191 0.11007616401125211 
		0.019001416465221497 0.17291489196173335 0.22426869467439203 0.046373724221702696 
		0.02250614535143141 0.030560242752210223 0.11007616401125196 0.019001416465221497 
		0.17291489196173335 0.22426869467439203 0.046373724221702696 0.022506145351431348 
		0.030560242752210223 0.11007616401125211 0.019001416465221445 0.17291489196173335 
		0.22426869467439203 0.046373724221702696 0.02250614535143141 0.030560242752210288 
		0.1100761640112518 0.019001416465221545 0.17291489196173335 0.22426869467439203 0.046373724221702696;
	setAttr -s 44 ".koy[1:43]"  0.99892416013519747 0.99974670463143822 
		0.99953292670273053 0.99392315503592532 -0.99981945678823192 -0.98493676961410181 
		-0.97452734830226506 0.99892416013519747 0.99974670463143822 0.99953292670273053 
		0.99392315503592521 -0.99981945678823192 -0.98493676961410181 -0.97452734830226506 
		0.99892416013519747 0.99974670463143822 0.99953292670273053 0.9939231550359251 -0.99981945678823192 
		-0.98493676961410181 -0.97452734830226506 0.99892416013519747 0.99974670463143822 
		0.99953292670273053 0.99392315503592521 -0.99981945678823192 -0.98493676961410181 
		-0.97452734830226506 0.99892416013519747 0.99974670463143822 0.99953292670273053 
		0.9939231550359251 -0.99981945678823192 -0.98493676961410181 -0.97452734830226506 
		0.99892416013519747 0.99974670463143822 0.99953292670273053 0.99392315503592521 -0.99981945678823192 
		-0.98493676961410181 -0.97452734830226506 0.99892416013519747;
	setAttr ".pst" 3;
createNode animCurveTU -n "R_Leg_IK_Ctrl_HeelRotate";
	rename -uid "60923C8B-4308-D247-E6AD-F4BD36AC44E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  -40 0 1 -58.4 5 -10.456273478587374 12 27.900000000000002
		 14 0 16 0 19 -14.434532866996307 23 -58.4 27 -10.456273478587374 34 27.900000000000002
		 36 0 38 0 41 -14.434532866996307 45 -58.4 49 -10.456273478587374 56 27.900000000000002
		 58 0 60 0 63 -14.434532866996307 67 -58.4 71 -10.456273478587374 78 27.900000000000002
		 80 0 82 0 85 -14.434532866996307 89 -58.4 93 -10.456273478587374 100 27.900000000000002
		 102 0 104 0 107 -14.434532866996307 111 -58.4 115 -10.456273478587374 122 27.900000000000002
		 124 0 126 0 129 -14.434532866996307 133 -27.135251230930791;
	setAttr -s 38 ".kit[0:37]"  18 9 9 9 3 3 1 9 
		9 9 3 3 1 9 9 9 3 3 1 9 9 9 3 3 1 
		9 9 9 3 3 1 9 9 9 3 3 1 1;
	setAttr -s 38 ".kot[0:37]"  18 9 9 9 3 3 1 1 
		9 9 3 3 1 1 9 9 3 3 1 1 9 9 3 3 1 
		1 9 9 3 3 1 1 9 9 3 3 1 1;
	setAttr -s 38 ".kix[6:37]"  0.012524045417093257 0.083496155981039891 
		0.0053108559628984673 0.035840595654397962 1 1 0.012524045417093257 0.083496155981039877 
		0.005310855962898469 0.035840595654397962 1 1 0.012524045417093257 0.083496155981039918 
		0.005310855962898469 0.035840595654397962 1 1 0.012524045417093257 0.083496155981039918 
		0.005310855962898469 0.035840595654397962 1 1 0.012524045417093257 0.083496155981040029 
		0.0053108559628984638 0.035840595654397962 1 1 0.012524045417093257 0.013121487579467291;
	setAttr -s 38 ".kiy[6:37]"  -0.99992157106764656 0.99650809928288586 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157106764656 0.99650809928288586 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157106764656 0.99650809928288586 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157106764656 0.99650809928288586 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157106764656 0.99650809928288586 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157106764656 -0.9999139095760704;
	setAttr -s 38 ".kox[6:37]"  0.012524045214978923 0.17650291231346252 
		0.0053108559628984673 0.035840595654397962 1 1 0.012524045214978923 0.17650291231346252 
		0.005310855962898469 0.035840595654397962 1 1 0.012524045214978923 0.17650291231346252 
		0.005310855962898469 0.035840595654397962 1 1 0.012524045214978923 0.17650291231346252 
		0.005310855962898469 0.035840595654397962 1 1 0.012524045214978923 0.17650291231346252 
		0.0053108559628984638 0.035840595654397962 1 1 0.012524045214978923 0.0034762767042637861;
	setAttr -s 38 ".koy[6:37]"  -0.99992157107017809 -0.98430011782223514 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157107017809 -0.98430011782223514 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157107017809 -0.98430011782223514 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157107017809 -0.98430011782223514 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157107017809 -0.98430011782223514 
		0.99998589730502774 0.99935751946094742 0 0 -0.99992157107017809 0.99999395773188327;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateX";
	rename -uid "A7C894D7-41F7-A0CA-7D08-88824137B27B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -16.086143318997138 8 48.911186047993333
		 12 43.095698172103667 19 9.4259199225050345 23 -16.086143318997138 30 48.911186047993333
		 34 43.095698172103667 41 9.4259199225050345 45 -16.086143318997138 52 48.911186047993333
		 56 43.095698172103667 63 9.4259199225050345 67 -16.086143318997138 74 48.911186047993333
		 78 43.095698172103667 85 9.4259199225050345 89 -16.086143318997138 96 48.911186047993333
		 100 43.095698172103667 107 9.4259199225050345 111 -16.086143318997138 118 48.911186047993333
		 122 43.095698172103667 129 9.4259199225050345 133 -16.086143318997138;
	setAttr -s 26 ".kit[0:25]"  18 9 9 1 9 9 9 1 
		9 9 9 1 9 9 9 1 9 9 9 1 9 9 9 1 9 
		1;
	setAttr -s 26 ".kot[0:25]"  18 9 9 1 9 1 9 1 
		9 1 9 1 9 1 9 1 9 1 9 1 9 1 9 1 9 
		1;
	setAttr -s 26 ".kix[3:25]"  0.4445806645155142 0.40559058176415896 
		0.55378090076466757 0.40559058176415896 0.4445806645155142 0.40559058176415885 0.55378090076466746 
		0.40559058176415902 0.4445806645155142 0.40559058176415863 0.55378090076466768 0.40559058176415902 
		0.4445806645155142 0.40559058176415902 0.55378090076466768 0.40559058176415902 0.4445806645155142 
		0.40559058176415863 0.55378090076466802 0.40559058176415863 0.4445806645155142 0.4055905817641593 
		0.35055284748873289;
	setAttr -s 26 ".kiy[3:25]"  -0.89573881948866318 -0.91405485611324833 
		0.83266242496480736 0.91405485611324833 -0.89573881948866318 -0.91405485611324833 
		0.83266242496480736 0.91405485611324833 -0.89573881948866318 -0.91405485611324844 
		0.83266242496480725 0.91405485611324833 -0.89573881948866318 -0.91405485611324833 
		0.83266242496480725 0.91405485611324833 -0.89573881948866318 -0.91405485611324844 
		0.83266242496480702 0.91405485611324844 -0.89573881948866318 -0.9140548561132481 
		-0.93654295209431859;
	setAttr -s 26 ".kox[3:25]"  0.4445806645155142 0.40559058176415896 
		0.91972373035858679 0.40559058176415896 0.4445806645155142 0.40559058176415885 0.91972373035858679 
		0.40559058176415902 0.4445806645155142 0.40559058176415863 0.91972373035858679 0.40559058176415902 
		0.4445806645155142 0.40559058176415902 0.91972373035858679 0.40559058176415902 0.4445806645155142 
		0.40559058176415863 0.91972373035858679 0.40559058176415863 0.4445806645155142 0.4055905817641593 
		0.24900847510912744;
	setAttr -s 26 ".koy[3:25]"  -0.89573881948866318 -0.91405485611324833 
		0.39256624895077952 0.91405485611324833 -0.89573881948866318 -0.91405485611324833 
		0.39256624895077952 0.91405485611324833 -0.89573881948866318 -0.91405485611324844 
		0.39256624895077952 0.91405485611324833 -0.89573881948866318 -0.91405485611324833 
		0.39256624895077952 0.91405485611324833 -0.89573881948866318 -0.91405485611324844 
		0.39256624895077952 0.91405485611324844 -0.89573881948866318 -0.9140548561132481 
		0.96850130579355798;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateY";
	rename -uid "3E78FFAD-4B28-DE32-7D41-94A5519F542C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -36.172551882140787 8 -34.604 12 -42.527350757134919
		 19 -45.015665085146175 23 -36.172551882140787 30 -34.604 34 -42.527350757134919 41 -45.015665085146175
		 45 -36.172551882140787 52 -34.604 56 -42.527350757134919 63 -45.015665085146175 67 -36.172551882140787
		 74 -34.604 78 -42.527350757134919 85 -45.015665085146175 89 -36.172551882140787 96 -34.604
		 100 -42.527350757134919 107 -45.015665085146175 111 -36.172551882140787 118 -34.604
		 122 -42.527350757134919 129 -45.015665085146175 133 -36.172551882140787;
	setAttr -s 26 ".kit[0:25]"  18 9 9 1 9 9 9 1 
		9 9 9 1 9 9 9 1 9 9 9 1 9 9 9 1 9 
		1;
	setAttr -s 26 ".kot[0:25]"  18 9 9 1 9 1 9 1 
		9 1 9 1 9 1 9 1 9 1 9 1 9 1 9 1 9 
		1;
	setAttr -s 26 ".kix[3:25]"  0.98909533502097591 0.97194662329206571 
		0.92960225228858984 0.97194662329206571 0.98909533502097591 0.97194662329206571 0.92960225228858984 
		0.97194662329206571 0.98909533502097591 0.97194662329206571 0.92960225228858984 0.97194662329206571 
		0.98909533502097591 0.97194662329206571 0.92960225228858984 0.97194662329206571 0.98909533502097591 
		0.97194662329206571 0.92960225228858995 0.97194662329206571 0.98909533502097591 0.97194662329206594 
		0.73371578345085686;
	setAttr -s 26 ".kiy[3:25]"  -0.1472766724221577 0.23520153373469127 
		0.36856431262397232 -0.23520153373469127 -0.1472766724221577 0.23520153373469133 
		0.36856431262397243 -0.23520153373469121 -0.1472766724221577 0.23520153373469144 
		0.36856431262397221 -0.23520153373469121 -0.1472766724221577 0.23520153373469121 
		0.36856431262397221 -0.23520153373469121 -0.1472766724221577 0.23520153373469144 
		0.36856431262397193 -0.23520153373469144 -0.1472766724221577 0.23520153373469102 
		0.67945651009839869;
	setAttr -s 26 ".kox[3:25]"  0.98909533502097591 0.97194662329206571 
		0.95730385039833799 0.97194662329206571 0.98909533502097591 0.97194662329206571 0.95730385039833799 
		0.97194662329206571 0.98909533502097591 0.97194662329206571 0.95730385039833799 0.97194662329206571 
		0.98909533502097591 0.97194662329206571 0.95730385039833799 0.97194662329206571 0.98909533502097591 
		0.97194662329206571 0.95730385039833799 0.97194662329206571 0.98909533502097591 0.97194662329206594 
		0.99562386388834012;
	setAttr -s 26 ".koy[3:25]"  -0.1472766724221577 0.23520153373469127 
		-0.28908361768269791 -0.23520153373469127 -0.1472766724221577 0.23520153373469133 
		-0.28908361768269791 -0.23520153373469121 -0.1472766724221577 0.23520153373469144 
		-0.28908361768269791 -0.23520153373469121 -0.1472766724221577 0.23520153373469121 
		-0.28908361768269791 -0.23520153373469121 -0.1472766724221577 0.23520153373469144 
		-0.28908361768269791 -0.23520153373469144 -0.1472766724221577 0.23520153373469102 
		0.093451172577190697;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "73791362-4D6A-1F01-A818-E689A6B5FD92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 55.96805730429918 8 -51.909287678129957
		 12 -46.524069708116556 19 18.184568106028017 23 55.96805730429918 30 -51.909287678129957
		 34 -46.524069708116556 41 18.184568106028017 45 55.96805730429918 52 -51.909287678129957
		 56 -46.524069708116556 63 18.184568106028017 67 55.96805730429918 74 -51.909287678129957
		 78 -46.524069708116556 85 18.184568106028017 89 55.96805730429918 96 -51.909287678129957
		 100 -46.524069708116556 107 18.184568106028017 111 55.96805730429918 118 -51.909287678129957
		 122 -46.524069708116556 129 18.184568106028017 133 55.96805730429918;
	setAttr -s 26 ".kit[0:25]"  18 9 9 1 9 9 9 1 
		9 9 9 1 9 9 9 1 9 9 9 1 9 9 9 1 9 
		1;
	setAttr -s 26 ".kot[0:25]"  18 9 9 1 9 1 9 1 
		9 1 9 1 9 1 9 1 9 1 9 1 9 1 9 1 9 
		1;
	setAttr -s 26 ".kix[3:25]"  0.2500500870216939 0.24820270422507451 
		0.35083493826438678 0.24820270422507451 0.2500500870216939 0.24820270422507451 0.35083493826438666 
		0.24820270422507457 0.2500500870216939 0.24820270422507434 0.35083493826438678 0.24820270422507457 
		0.2500500870216939 0.24820270422507457 0.35083493826438678 0.24820270422507457 0.2500500870216939 
		0.24820270422507434 0.35083493826438711 0.24820270422507434 0.2500500870216939 0.24820270422507476 
		0.24503255411793728;
	setAttr -s 26 ".kiy[3:25]"  0.96823290275658547 0.96870811786386923 
		-0.93643731562396848 -0.96870811786386923 0.96823290275658547 0.96870811786386946 
		-0.93643731562396859 -0.96870811786386923 0.96823290275658547 0.96870811786386934 
		-0.93643731562396837 -0.96870811786386923 0.96823290275658547 0.96870811786386923 
		-0.93643731562396837 -0.96870811786386923 0.96823290275658547 0.96870811786386934 
		-0.93643731562396826 -0.96870811786386934 0.96823290275658547 0.96870811786386923 
		0.96951485157394068;
	setAttr -s 26 ".kox[3:25]"  0.2500500870216939 0.24820270422507451 
		0.91089810333162924 0.24820270422507451 0.2500500870216939 0.24820270422507451 0.91089810333162924 
		0.24820270422507457 0.2500500870216939 0.24820270422507434 0.91089810333162924 0.24820270422507457 
		0.2500500870216939 0.24820270422507457 0.91089810333162924 0.24820270422507457 0.2500500870216939 
		0.24820270422507434 0.91089810333162924 0.24820270422507434 0.2500500870216939 0.24820270422507476 
		0.15308400745801098;
	setAttr -s 26 ".koy[3:25]"  0.96823290275658547 0.96870811786386923 
		-0.41263136738115358 -0.96870811786386923 0.96823290275658547 0.96870811786386946 
		-0.41263136738115358 -0.96870811786386923 0.96823290275658547 0.96870811786386934 
		-0.41263136738115358 -0.96870811786386923 0.96823290275658547 0.96870811786386923 
		-0.41263136738115358 -0.96870811786386923 0.96823290275658547 0.96870811786386934 
		-0.41263136738115358 -0.96870811786386934 0.96823290275658547 0.96870811786386923 
		-0.9882131787527404;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateX";
	rename -uid "37D0DE6B-4FAE-B05B-A1DE-10AE43567491";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 1 -33.251988165366555 8 -34.068635842677764
		 12 -17.291408318582015 23 -33.251988165366555 30 -34.068635842677764 34 -17.291408318582015
		 45 -33.251988165366555 52 -34.068635842677764 56 -17.291408318582015 67 -33.251988165366555
		 74 -34.068635842677764 78 -17.291408318582015 89 -33.251988165366555 96 -34.068635842677764
		 100 -17.291408318582015 111 -33.251988165366555 118 -34.068635842677764 122 -17.291408318582015
		 133 -33.251988165366555;
	setAttr -s 20 ".kit[0:19]"  18 9 2 2 9 2 2 9 
		2 2 9 2 2 9 2 2 9 2 2 1;
	setAttr -s 20 ".kot[0:19]"  18 9 2 2 1 2 2 1 
		2 2 1 2 2 1 2 2 1 2 2 1;
	setAttr -s 20 ".kix[19]"  0.85454685161343846;
	setAttr -s 20 ".kiy[19]"  -0.51937431434136216;
	setAttr -s 20 ".kox[4:19]"  0.95853435686958732 0.4946663994950864 
		0.85454685161343846 0.95853435686958732 0.49466639949508695 0.85454685161343813 0.95853435686958732 
		0.49466639949508595 0.85454685161343846 0.95853435686958732 0.49466639949508695 0.85454685161343813 
		0.95853435686958732 0.4946663994950849 0.8545468516134388 0.9988080896120678;
	setAttr -s 20 ".koy[4:19]"  -0.28497699328297804 0.86908293805054504 
		-0.51937431434136228 -0.28497699328297804 0.86908293805054482 -0.51937431434136239 
		-0.28497699328297804 0.86908293805054548 -0.51937431434136205 -0.28497699328297804 
		0.86908293805054482 -0.51937431434136239 -0.28497699328297804 0.86908293805054582 
		-0.51937431434136183 -0.048809836360017213;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateX";
	rename -uid "E421F210-459B-F10F-BF23-6EB7F6E0A95F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 22.501284454211113 12 0 23 22.501284454211113
		 34 0 45 22.501284454211113 56 0 67 22.501284454211113 78 0 89 22.501284454211113
		 100 0 111 22.501284454211113 122 0 133 22.501284454211113;
	setAttr -s 14 ".kit[0:13]"  18 3 1 3 1 3 1 3 
		1 3 1 3 1 1;
	setAttr -s 14 ".kot[0:13]"  18 3 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateY";
	rename -uid "26BC3CA7-4589-7F24-87C9-31922E9AC4B8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 1 -19.15943658647376 8 -4.2762665979881245
		 12 -8.8954252135541729 23 -19.15943658647376 30 -4.2762665979881245 34 -8.8954252135541729
		 45 -19.15943658647376 52 -4.2762665979881245 56 -8.8954252135541729 67 -19.15943658647376
		 74 -4.2762665979881245 78 -8.8954252135541729 89 -19.15943658647376 96 -4.2762665979881245
		 100 -8.8954252135541729 111 -19.15943658647376 118 -4.2762665979881245 122 -8.8954252135541729
		 133 -19.15943658647376;
	setAttr -s 20 ".kit[0:19]"  18 9 2 2 9 2 2 9 
		2 2 9 2 2 9 2 2 9 2 2 1;
	setAttr -s 20 ".kot[0:19]"  18 9 2 2 1 2 2 1 
		2 2 1 2 2 1 2 2 1 2 2 1;
	setAttr -s 20 ".kix[19]"  0.9313854754380122;
	setAttr -s 20 ".kiy[19]"  -0.36403447109182935;
	setAttr -s 20 ".kox[4:19]"  0.99930442976944245 0.90021353126752401 
		0.9313854754380122 0.99930442976944245 0.90021353126752424 0.93138547543801209 0.99930442976944245 
		0.90021353126752368 0.9313854754380122 0.99930442976944245 0.90021353126752424 0.93138547543801209 
		0.99930442976944245 0.90021353126752324 0.93138547543801231 0.74677195142137742;
	setAttr -s 20 ".koy[4:19]"  -0.037291508995605148 -0.43544873191095029 
		-0.36403447109182946 -0.037291508995605148 -0.43544873191094985 -0.36403447109182963 
		-0.037291508995605148 -0.43544873191095074 -0.36403447109182929 -0.037291508995605148 
		-0.43544873191094985 -0.36403447109182963 -0.037291508995605148 -0.43544873191095168 
		-0.36403447109182896 0.66508018506816746;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateY";
	rename -uid "A93F8DFF-4081-F561-38D3-8D803CDE5028";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 0 12 0 23 0 34 0 45 0 56 0 67 0
		 78 0 89 0 100 0 111 0 122 0 133 0;
	setAttr -s 14 ".kit[0:13]"  18 3 1 3 1 3 1 3 
		1 3 1 3 1 1;
	setAttr -s 14 ".kot[0:13]"  18 3 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Wrist_FK_Ctrl_rotateZ";
	rename -uid "9C74655B-479C-32C3-1221-05933136F73E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 1 12.144411364053267 8 12.835416821836676
		 12 -16.02473609568133 23 12.144411364053267 30 12.835416821836676 34 -16.02473609568133
		 45 12.144411364053267 52 12.835416821836676 56 -16.02473609568133 67 12.144411364053267
		 74 12.835416821836676 78 -16.02473609568133 89 12.144411364053267 96 12.835416821836676
		 100 -16.02473609568133 111 12.144411364053267 118 12.835416821836676 122 -16.02473609568133
		 133 12.144411364053267;
	setAttr -s 20 ".kit[0:19]"  18 9 2 2 9 2 2 9 
		2 2 9 2 2 9 2 2 9 2 2 1;
	setAttr -s 20 ".kot[0:19]"  18 9 2 2 1 2 2 1 
		2 2 1 2 2 1 2 2 1 2 2 1;
	setAttr -s 20 ".kix[19]"  0.68189294531608302;
	setAttr -s 20 ".kiy[19]"  0.73145198825907731;
	setAttr -s 20 ".kox[4:19]"  0.99378528191896487 0.31413222201905239 
		0.68189294531608291 0.99378528191896487 0.31413222201905272 0.68189294531608269 0.99378528191896487 
		0.314132222019052 0.68189294531608302 0.99378528191896487 0.31413222201905272 0.68189294531608269 
		0.99378528191896487 0.31413222201905128 0.68189294531608347 0.99914619711475994;
	setAttr -s 20 ".koy[4:19]"  0.11131403074744704 -0.94937924302639609 
		0.73145198825907742 0.11131403074744704 -0.94937924302639587 0.73145198825907765 
		0.11131403074744704 -0.94937924302639631 0.7314519882590772 0.11131403074744704 -0.94937924302639587 
		0.73145198825907765 0.11131403074744704 -0.94937924302639642 0.73145198825907698 
		0.041314365432779415;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Elbow_FK_Ctrl_rotateZ";
	rename -uid "FB999A02-4A16-9941-F666-A090507B1933";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 75.127768415901926 12 80.751781942984593
		 23 75.127768415901926 34 80.751781942984593 45 75.127768415901926 56 80.751781942984593
		 67 75.127768415901926 78 80.751781942984593 89 75.127768415901926 100 80.751781942984593
		 111 75.127768415901926 122 80.751781942984593 133 75.127768415901926;
	setAttr -s 14 ".kit[0:13]"  18 3 1 3 1 3 1 3 
		1 3 1 3 1 1;
	setAttr -s 14 ".kot[0:13]"  18 3 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateX";
	rename -uid "312BD3CD-4EE9-1246-CF16-DF925421D302";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 1 -17.291408318582015 12 -33.251988165366555
		 19 -34.068635842677764 23 -17.291408318582015 34 -33.251988165366555 41 -34.068635842677764
		 45 -17.291408318582015 56 -33.251988165366555 63 -34.068635842677764 67 -17.291408318582015
		 78 -33.251988165366555 85 -34.068635842677764 89 -17.291408318582015 100 -33.251988165366555
		 107 -34.068635842677764 111 -17.291408318582015 122 -33.251988165366555 129 -34.068635842677764
		 133 -17.291408318582015;
	setAttr -s 20 ".kit[0:19]"  18 1 9 1 1 9 1 1 
		9 1 1 9 1 1 9 1 1 9 1 1;
	setAttr -s 20 ".kot[0:19]"  18 1 9 1 1 9 1 1 
		9 1 1 9 1 1 9 1 1 9 1 1;
	setAttr -s 20 ".kix[1:19]"  0.49466639949508612 0.93152085064704349 
		0.9988080896120678 0.49466639949508612 0.93152085064704349 0.9988080896120678 0.49466639949508612 
		0.93152085064704349 0.9988080896120678 0.49466639949508612 0.93152085064704349 0.9988080896120678 
		0.49466639949508612 0.93152085064704349 0.9988080896120678 0.49466639949508612 0.93152085064704349 
		0.9988080896120678 0.49466639949508612;
	setAttr -s 20 ".kiy[1:19]"  0.86908293805054515 -0.36368792227651486 
		-0.048809836360017213 0.86908293805054515 -0.36368792227651492 -0.048809836360017213 
		0.86908293805054515 -0.36368792227651486 -0.048809836360017213 0.86908293805054515 
		-0.36368792227651486 -0.048809836360017213 0.86908293805054515 -0.36368792227651503 
		-0.048809836360017213 0.86908293805054515 -0.36368792227651486 -0.048809836360017213 
		0.86908293805054515;
	setAttr -s 20 ".kox[1:19]"  0.87357299755532347 0.93152085064704349 
		0.49466639949508612 0.87357299755532347 0.93152085064704349 0.49466639949508612 0.87357299755532347 
		0.93152085064704349 0.49466639949508612 0.87357299755532347 0.93152085064704349 0.49466639949508612 
		0.87357299755532347 0.93152085064704349 0.49466639949508612 0.87357299755532347 0.93152085064704349 
		0.49466639949508612 0.87357299755532347;
	setAttr -s 20 ".koy[1:19]"  -0.48669314556731424 -0.36368792227651486 
		0.86908293805054515 -0.48669314556731424 -0.36368792227651492 0.86908293805054515 
		-0.48669314556731424 -0.36368792227651486 0.86908293805054515 -0.48669314556731424 
		-0.36368792227651486 0.86908293805054515 -0.48669314556731424 -0.36368792227651503 
		0.86908293805054515 -0.48669314556731424 -0.36368792227651486 0.86908293805054515 
		-0.48669314556731424;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateX";
	rename -uid "1C14D6C5-4ACE-F5B8-66AB-039E5CE9620D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 43.095698172103667 8 9.4259199225050345
		 12 9.3626205462498717 19 46.245178596418228 23 43.095698172103667 30 9.4259199225050345
		 34 9.3626205462498717 41 46.245178596418228 45 43.095698172103667 52 9.4259199225050345
		 56 9.3626205462498717 63 46.245178596418228 67 43.095698172103667 74 9.4259199225050345
		 78 9.3626205462498717 85 46.245178596418228 89 43.095698172103667 96 9.4259199225050345
		 100 9.3626205462498717 107 46.245178596418228 111 43.095698172103667 118 9.4259199225050345
		 122 9.3626205462498717 129 46.245178596418228 133 43.095698172103667;
	setAttr -s 26 ".kit[0:25]"  18 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		1;
	setAttr -s 26 ".kot[0:25]"  18 9 9 9 9 1 9 9 
		9 1 9 9 9 1 9 9 9 1 9 9 9 1 9 9 9 
		1;
	setAttr -s 26 ".kix[25]"  0.94968153631934293;
	setAttr -s 26 ".kiy[25]"  -0.31321714444476456;
	setAttr -s 26 ".kox[5:25]"  0.99663399182835588 0.61428638220745779 
		0.58066842180436551 0.61428638220745779 0.99663399182835588 0.61428638220745779 0.58066842180436573 
		0.61428638220745757 0.99663399182835588 0.61428638220745779 0.58066842180436529 0.61428638220745779 
		0.99663399182835588 0.61428638220745779 0.58066842180436529 0.61428638220745757 0.99663399182835588 
		0.61428638220745757 0.58066842180436529 0.61428638220745824 0.4445806645155142;
	setAttr -s 26 ".koy[5:25]"  0.081979792219038117 -0.78908316458689776 
		0.81414015004741513 0.78908316458689776 0.081979792219038117 -0.78908316458689753 
		0.81414015004741491 0.78908316458689798 0.081979792219038117 -0.78908316458689753 
		0.81414015004741513 0.78908316458689753 0.081979792219038117 -0.78908316458689753 
		0.81414015004741513 0.78908316458689798 0.081979792219038117 -0.78908316458689798 
		0.81414015004741513 0.78908316458689731 -0.89573881948866318;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateX";
	rename -uid "1D586B3A-474A-9E3F-652B-DF9B40D5FB3F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 0 12 22.501284454211113 23 0 34 22.501284454211113
		 45 0 56 22.501284454211113 67 0 78 22.501284454211113 89 0 100 22.501284454211113
		 111 0 122 22.501284454211113 133 0;
	setAttr -s 14 ".kit[0:13]"  18 3 1 3 1 3 1 3 
		1 3 1 3 1 1;
	setAttr -s 14 ".kot[0:13]"  18 3 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateY";
	rename -uid "13F8E3E4-48EE-07E4-8010-8A8A268C9F20";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 1 -8.8954252135541729 12 -19.15943658647376
		 19 -4.2762665979881245 23 -8.8954252135541729 34 -19.15943658647376 41 -4.2762665979881245
		 45 -8.8954252135541729 56 -19.15943658647376 63 -4.2762665979881245 67 -8.8954252135541729
		 78 -19.15943658647376 85 -4.2762665979881245 89 -8.8954252135541729 100 -19.15943658647376
		 107 -4.2762665979881245 111 -8.8954252135541729 122 -19.15943658647376 129 -4.2762665979881245
		 133 -8.8954252135541729;
	setAttr -s 20 ".kit[0:19]"  18 1 9 1 1 9 1 1 
		9 1 1 9 1 1 9 1 1 9 1 1;
	setAttr -s 20 ".kot[0:19]"  18 1 9 1 1 9 1 1 
		9 1 1 9 1 1 9 1 1 9 1 1;
	setAttr -s 20 ".kix[1:19]"  0.90021353126752401 0.99427224873978537 
		0.74677195142137742 0.90021353126752401 0.99427224873978537 0.74677195142137742 0.90021353126752401 
		0.99427224873978537 0.74677195142137742 0.90021353126752401 0.99427224873978537 0.74677195142137742 
		0.90021353126752401 0.99427224873978537 0.74677195142137742 0.90021353126752401 0.99427224873978537 
		0.74677195142137742 0.90021353126752401;
	setAttr -s 20 ".kiy[1:19]"  -0.4354487319109504 0.10687701055853997 
		0.66508018506816746 -0.4354487319109504 0.10687701055853999 0.66508018506816746 -0.4354487319109504 
		0.10687701055853997 0.66508018506816746 -0.4354487319109504 0.10687701055853997 0.66508018506816746 
		-0.4354487319109504 0.10687701055854003 0.66508018506816746 -0.4354487319109504 0.10687701055853997 
		0.66508018506816746 -0.4354487319109504;
	setAttr -s 20 ".kox[1:19]"  0.94140188375283518 0.99427224873978537 
		0.90021353126752401 0.94140188375283518 0.99427224873978537 0.90021353126752401 0.94140188375283518 
		0.99427224873978537 0.90021353126752401 0.94140188375283518 0.99427224873978537 0.90021353126752401 
		0.94140188375283518 0.99427224873978537 0.90021353126752401 0.94140188375283518 0.99427224873978537 
		0.90021353126752401 0.94140188375283518;
	setAttr -s 20 ".koy[1:19]"  -0.33728695982295781 0.10687701055853997 
		-0.4354487319109504 -0.33728695982295781 0.10687701055853999 -0.4354487319109504 
		-0.33728695982295781 0.10687701055853997 -0.4354487319109504 -0.33728695982295781 
		0.10687701055853997 -0.4354487319109504 -0.33728695982295781 0.10687701055854003 
		-0.4354487319109504 -0.33728695982295781 0.10687701055853997 -0.4354487319109504 
		-0.33728695982295781;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateY";
	rename -uid "ED340425-47DF-EDA0-13A6-A0AE1595247C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -42.527350757134919 8 -45.015665085146175
		 12 -51.525163527756746 19 -34.603624202748357 23 -42.527350757134919 30 -45.015665085146175
		 34 -51.525163527756746 41 -34.603624202748357 45 -42.527350757134919 52 -45.015665085146175
		 56 -51.525163527756746 63 -34.603624202748357 67 -42.527350757134919 74 -45.015665085146175
		 78 -51.525163527756746 85 -34.603624202748357 89 -42.527350757134919 96 -45.015665085146175
		 100 -51.525163527756746 107 -34.603624202748357 111 -42.527350757134919 118 -45.015665085146175
		 122 -51.525163527756746 129 -34.603624202748357 133 -42.527350757134919;
	setAttr -s 26 ".kit[0:25]"  18 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		1;
	setAttr -s 26 ".kot[0:25]"  18 9 9 9 9 1 9 9 
		9 1 9 9 9 1 9 9 9 1 9 9 9 1 9 9 9 
		1;
	setAttr -s 26 ".kix[25]"  0.76956794529891326;
	setAttr -s 26 ".kiy[25]"  -0.63856493606242493;
	setAttr -s 26 ".kox[5:25]"  0.93075825861882666 0.94601013598991135 
		0.92959769442017592 0.94601013598991124 0.93075825861882666 0.94601013598991135 0.92959769442017592 
		0.94601013598991124 0.93075825861882666 0.94601013598991135 0.92959769442017581 0.94601013598991135 
		0.93075825861882666 0.94601013598991135 0.92959769442017581 0.94601013598991124 0.93075825861882666 
		0.94601013598991124 0.92959769442017581 0.94601013598991135 0.98909533502097591;
	setAttr -s 26 ".koy[5:25]"  -0.36563515150057652 -0.32413704293762785 
		0.36857580838776322 0.32413704293762791 -0.36563515150057652 -0.3241370429376278 
		0.36857580838776305 0.32413704293762807 -0.36563515150057652 -0.3241370429376278 
		0.36857580838776333 0.3241370429376278 -0.36563515150057652 -0.3241370429376278 0.36857580838776333 
		0.32413704293762807 -0.36563515150057652 -0.32413704293762807 0.36857580838776333 
		0.32413704293762746 -0.1472766724221577;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateY";
	rename -uid "E03D643D-43A7-CD4F-F7F4-D086652FD668";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 0 12 0 23 0 34 0 45 0 56 0 67 0
		 78 0 89 0 100 0 111 0 122 0 133 0;
	setAttr -s 14 ".kit[0:13]"  18 3 1 3 1 3 1 3 
		1 3 1 3 1 1;
	setAttr -s 14 ".kot[0:13]"  18 3 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Wrist_FK_Ctrl_rotateZ";
	rename -uid "8D17D79D-4440-BF1E-3DA7-09AA0620B119";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  -40 0 1 -16.02473609568133 12 12.144411364053267
		 19 12.835416821836676 23 -16.02473609568133 34 12.144411364053267 41 12.835416821836676
		 45 -16.02473609568133 56 12.144411364053267 63 12.835416821836676 67 -16.02473609568133
		 78 12.144411364053267 85 12.835416821836676 89 -16.02473609568133 100 12.144411364053267
		 107 12.835416821836676 111 -16.02473609568133 122 12.144411364053267 129 12.835416821836676
		 133 -16.02473609568133;
	setAttr -s 20 ".kit[0:19]"  18 1 9 1 1 9 1 1 
		9 1 1 9 1 1 9 1 1 9 1 1;
	setAttr -s 20 ".kot[0:19]"  18 1 9 1 1 9 1 1 
		9 1 1 9 1 1 9 1 1 9 1 1;
	setAttr -s 20 ".kix[1:19]"  0.31413222201905228 0.83015286061712956 
		0.99914619711475994 0.31413222201905228 0.83015286061712956 0.99914619711475994 0.31413222201905228 
		0.83015286061712956 0.99914619711475994 0.31413222201905228 0.83015286061712956 0.99914619711475994 
		0.31413222201905228 0.83015286061712945 0.99914619711475994 0.31413222201905228 0.83015286061712956 
		0.99914619711475994 0.31413222201905228;
	setAttr -s 20 ".kiy[1:19]"  -0.94937924302639609 0.55753585356387314 
		0.041314365432779415 -0.94937924302639609 0.55753585356387325 0.041314365432779415 
		-0.94937924302639609 0.55753585356387314 0.041314365432779415 -0.94937924302639609 
		0.55753585356387314 0.041314365432779415 -0.94937924302639609 0.55753585356387336 
		0.041314365432779415 -0.94937924302639609 0.55753585356387314 0.041314365432779415 
		-0.94937924302639609;
	setAttr -s 20 ".kox[1:19]"  0.71303957532289874 0.83015286061712956 
		0.31413222201905228 0.71303957532289874 0.83015286061712956 0.31413222201905228 0.71303957532289874 
		0.83015286061712956 0.31413222201905228 0.71303957532289874 0.83015286061712956 0.31413222201905228 
		0.71303957532289874 0.83015286061712945 0.31413222201905228 0.71303957532289874 0.83015286061712956 
		0.31413222201905228 0.71303957532289874;
	setAttr -s 20 ".koy[1:19]"  0.70112378651942786 0.55753585356387314 
		-0.94937924302639609 0.70112378651942786 0.55753585356387325 -0.94937924302639609 
		0.70112378651942786 0.55753585356387314 -0.94937924302639609 0.70112378651942786 
		0.55753585356387314 -0.94937924302639609 0.70112378651942786 0.55753585356387336 
		-0.94937924302639609 0.70112378651942786 0.55753585356387314 -0.94937924302639609 
		0.70112378651942786;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Shoulder_FK_Ctrl_rotateZ";
	rename -uid "4CD2532D-44D5-5F4D-7F77-8E807F56BE37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -46.524069708116556 8 18.184568106028017
		 12 24.135479534389884 19 -47.405533290068696 23 -46.524069708116556 30 18.184568106028017
		 34 24.135479534389884 41 -47.405533290068696 45 -46.524069708116556 52 18.184568106028017
		 56 24.135479534389884 63 -47.405533290068696 67 -46.524069708116556 74 18.184568106028017
		 78 24.135479534389884 85 -47.405533290068696 89 -46.524069708116556 96 18.184568106028017
		 100 24.135479534389884 107 -47.405533290068696 111 -46.524069708116556 118 18.184568106028017
		 122 24.135479534389884 129 -47.405533290068696 133 -46.524069708116556;
	setAttr -s 26 ".kit[0:25]"  18 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		1;
	setAttr -s 26 ".kot[0:25]"  18 9 9 9 9 1 9 9 
		9 1 9 9 9 1 9 9 9 1 9 9 9 1 9 9 9 
		1;
	setAttr -s 26 ".kix[25]"  0.99576677397281466;
	setAttr -s 26 ".kiy[25]"  0.091915895533763309;
	setAttr -s 26 ".kox[5:25]"  0.98764162377764875 0.34836826655635089 
		0.3716899032555871 0.34836826655635084 0.98764162377764875 0.348368266556351 0.37168990325558726 
		0.34836826655635067 0.98764162377764875 0.348368266556351 0.37168990325558693 0.348368266556351 
		0.98764162377764875 0.348368266556351 0.37168990325558693 0.34836826655635067 0.98764162377764875 
		0.34836826655635067 0.37168990325558693 0.34836826655635128 0.2500500870216939;
	setAttr -s 26 ".koy[5:25]"  0.15672913890482973 0.93735774966472807 
		-0.92835694418572234 -0.93735774966472818 0.15672913890482973 0.93735774966472818 
		-0.92835694418572234 -0.93735774966472829 0.15672913890482973 0.93735774966472818 
		-0.92835694418572234 -0.93735774966472818 0.15672913890482973 0.93735774966472818 
		-0.92835694418572234 -0.93735774966472829 0.15672913890482973 0.93735774966472829 
		-0.92835694418572234 -0.93735774966472796 0.96823290275658547;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Elbow_FK_Ctrl_rotateZ";
	rename -uid "1699C433-43DF-B264-69D6-E0AC6533DFEC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 80.751781942984593 12 75.127768415901926
		 23 80.751781942984593 34 75.127768415901926 45 80.751781942984593 56 75.127768415901926
		 67 80.751781942984593 78 75.127768415901926 89 80.751781942984593 100 75.127768415901926
		 111 80.751781942984593 122 75.127768415901926 133 80.751781942984593;
	setAttr -s 14 ".kit[0:13]"  18 3 1 3 1 3 1 3 
		1 3 1 3 1 1;
	setAttr -s 14 ".kot[0:13]"  18 3 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateX";
	rename -uid "B93F0C79-4CDA-B721-3B77-7D97DAFE4412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 10.201522430002292 3 5.0741753942310153
		 5 -1.6385893298793834 8 -2.1725146417804835 12 -7.983 14 -5.074175 16 1.638589 19 2.172515
		 23 10.201522430002292 25 5.0741753942310153 27 -1.6385893298793834 30 -2.1725146417804835
		 34 -7.983 36 -5.074175 38 1.638589 41 2.172515 45 10.201522430002292 47 5.0741753942310153
		 49 -1.6385893298793834 52 -2.1725146417804835 56 -7.983 58 -5.074175 60 1.638589
		 63 2.172515 67 10.201522430002292 69 5.0741753942310153 71 -1.6385893298793834 74 -2.1725146417804835
		 78 -7.983 80 -5.074175 82 1.638589 85 2.172515 89 10.201522430002292 91 5.0741753942310153
		 93 -1.6385893298793834 96 -2.1725146417804835 100 -7.983 102 -5.074175 104 1.638589
		 107 2.172515 111 10.201522430002292 113 5.0741753942310153 115 -1.6385893298793834
		 118 -2.1725146417804835 122 -7.983 124 -5.074175 126 1.638589 129 2.172515 133 10.201522430002292;
	setAttr -s 50 ".kit[0:49]"  18 10 10 3 3 10 10 3 
		3 10 10 3 3 10 10 3 3 10 10 3 3 10 10 3 3 
		10 10 3 3 10 10 3 3 10 10 3 3 10 10 3 3 10 
		10 3 3 10 10 3 3 1;
	setAttr -s 50 ".kot[0:49]"  18 10 10 3 3 10 10 3 
		3 1 10 3 3 10 10 3 3 1 10 3 3 10 10 3 3 
		1 10 3 3 10 10 3 3 1 10 3 3 10 10 3 3 1 
		10 3 3 10 10 3 3 1;
	setAttr -s 50 ".kix[49]"  0.76540483886211397;
	setAttr -s 50 ".kiy[49]"  0.64354909109287162;
	setAttr -s 50 ".kox[9:49]"  0.99878059961462518 0.62778508945974676 
		1 1 0.98009250892220945 0.70443530968207579 1 1 0.99878059961462518 0.62778508945974643 
		1 1 0.98009250892220945 0.70443530968207579 1 1 0.99878059961462518 0.62778508945974743 
		1 1 0.98009250892220945 0.70443530968207579 1 1 0.99878059961462518 0.62778508945974643 
		1 1 0.98009250892220945 0.7044353096820748 1 1 0.99878059961462518 0.62778508945974743 
		1 1 0.98009250892220945 0.70443530968207679 1 1 0.68148820690621947;
	setAttr -s 50 ".koy[9:49]"  0.049369158727384795 -0.77838671716057561 
		0 0 -0.1985413658524805 0.7097681977047986 0 0 0.049369158727384795 -0.77838671716057573 
		0 0 -0.1985413658524805 0.7097681977047986 0 0 0.049369158727384795 -0.77838671716057495 
		0 0 -0.1985413658524805 0.7097681977047986 0 0 0.049369158727384795 -0.77838671716057573 
		0 0 -0.1985413658524805 0.70976819770479949 0 0 0.049369158727384795 -0.77838671716057495 
		0 0 -0.1985413658524805 0.7097681977047976 0 0 -0.73182909469885515;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateX";
	rename -uid "17424065-40E8-0F2C-876A-049708D550A2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 10.201522430002292 3 5.0741753942310153
		 5 -1.6385893298793834 8 -2.1725146417804835 12 -7.983419 14 -5.074175 16 1.638589
		 19 2.172515 23 10.201522430002292 25 5.0741753942310153 27 -1.6385893298793834 30 -2.1725146417804835
		 34 -7.983419 36 -5.074175 38 1.638589 41 2.172515 45 10.201522430002292 47 5.0741753942310153
		 49 -1.6385893298793834 52 -2.1725146417804835 56 -7.983419 58 -5.074175 60 1.638589
		 63 2.172515 67 10.201522430002292 69 5.0741753942310153 71 -1.6385893298793834 74 -2.1725146417804835
		 78 -7.983419 80 -5.074175 82 1.638589 85 2.172515 89 10.201522430002292 91 5.0741753942310153
		 93 -1.6385893298793834 96 -2.1725146417804835 100 -7.983419 102 -5.074175 104 1.638589
		 107 2.172515 111 10.201522430002292 113 5.0741753942310153 115 -1.6385893298793834
		 118 -2.1725146417804835 122 -7.983419 124 -5.074175 126 1.638589 129 2.172515 133 10.201522430002292;
	setAttr -s 50 ".kit[0:49]"  18 10 10 3 3 10 10 3 
		3 10 10 3 3 10 10 3 3 10 10 3 3 10 10 3 3 
		10 10 3 3 10 10 3 3 10 10 3 3 10 10 3 3 10 
		10 3 3 10 10 3 3 1;
	setAttr -s 50 ".kot[0:49]"  18 10 10 3 3 10 10 3 
		3 1 10 3 3 10 10 3 3 1 10 3 3 10 10 3 3 
		1 10 3 3 10 10 3 3 1 10 3 3 10 10 3 3 1 
		10 3 3 10 10 3 3 1;
	setAttr -s 50 ".kix[49]"  0.76540483886211397;
	setAttr -s 50 ".kiy[49]"  0.64354909109287162;
	setAttr -s 50 ".kox[9:49]"  0.99878059961462518 0.62778508945974676 
		1 1 0.98009250892220945 0.70441985583624334 1 1 0.99878059961462518 0.62778508945974643 
		1 1 0.98009250892220945 0.70441985583624334 1 1 0.99878059961462518 0.62778508945974743 
		1 1 0.98009250892220945 0.70441985583624334 1 1 0.99878059961462518 0.62778508945974643 
		1 1 0.98009250892220945 0.70441985583624234 1 1 0.99878059961462518 0.62778508945974743 
		1 1 0.98009250892220945 0.70441985583624422 1 1 0.68148820690621947;
	setAttr -s 50 ".koy[9:49]"  0.049369158727384795 -0.77838671716057561 
		0 0 -0.1985413658524805 0.70978353510323566 0 0 0.049369158727384795 -0.77838671716057573 
		0 0 -0.1985413658524805 0.70978353510323566 0 0 0.049369158727384795 -0.77838671716057495 
		0 0 -0.1985413658524805 0.70978353510323566 0 0 0.049369158727384795 -0.77838671716057573 
		0 0 -0.1985413658524805 0.70978353510323655 0 0 0.049369158727384795 -0.77838671716057495 
		0 0 -0.1985413658524805 0.70978353510323466 0 0 -0.73182909469885515;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateX";
	rename -uid "847523DC-4DBC-FC7E-58D6-5795B45C35E7";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 10.201522430002292 3 5.0741753942310153
		 5 -1.6385893298793834 8 -2.1725146417804835 12 -7.983 14 -5.074175 16 1.638589 19 2.172515
		 23 10.201522430002292 25 5.0741753942310153 27 -1.6385893298793834 30 -2.1725146417804835
		 34 -7.983 36 -5.074175 38 1.638589 41 2.172515 45 10.201522430002292 47 5.0741753942310153
		 49 -1.6385893298793834 52 -2.1725146417804835 56 -7.983 58 -5.074175 60 1.638589
		 63 2.172515 67 10.201522430002292 69 5.0741753942310153 71 -1.6385893298793834 74 -2.1725146417804835
		 78 -7.983 80 -5.074175 82 1.638589 85 2.172515 89 10.201522430002292 91 5.0741753942310153
		 93 -1.6385893298793834 96 -2.1725146417804835 100 -7.983 102 -5.074175 104 1.638589
		 107 2.172515 111 10.201522430002292 113 5.0741753942310153 115 -1.6385893298793834
		 118 -2.1725146417804835 122 -7.983 124 -5.074175 126 1.638589 129 2.172515 133 10.201522430002292;
	setAttr -s 50 ".kit[0:49]"  18 10 10 3 3 10 10 3 
		3 10 10 3 3 10 10 3 3 10 10 3 3 10 10 3 3 
		10 10 3 3 10 10 3 3 10 10 3 3 10 10 3 3 10 
		10 3 3 10 10 3 3 1;
	setAttr -s 50 ".kot[0:49]"  18 10 10 3 3 10 10 3 
		3 1 10 3 3 10 10 3 3 1 10 3 3 10 10 3 3 
		1 10 3 3 10 10 3 3 1 10 3 3 10 10 3 3 1 
		10 3 3 10 10 3 3 1;
	setAttr -s 50 ".kix[49]"  0.76540483886211397;
	setAttr -s 50 ".kiy[49]"  0.64354909109287162;
	setAttr -s 50 ".kox[9:49]"  0.99878059961462518 0.62778508945974676 
		1 1 0.98009250892220945 0.70443530968207579 1 1 0.99878059961462518 0.62778508945974643 
		1 1 0.98009250892220945 0.70443530968207579 1 1 0.99878059961462518 0.62778508945974743 
		1 1 0.98009250892220945 0.70443530968207579 1 1 0.99878059961462518 0.62778508945974643 
		1 1 0.98009250892220945 0.7044353096820748 1 1 0.99878059961462518 0.62778508945974743 
		1 1 0.98009250892220945 0.70443530968207679 1 1 0.68148820690621947;
	setAttr -s 50 ".koy[9:49]"  0.049369158727384795 -0.77838671716057561 
		0 0 -0.1985413658524805 0.7097681977047986 0 0 0.049369158727384795 -0.77838671716057573 
		0 0 -0.1985413658524805 0.7097681977047986 0 0 0.049369158727384795 -0.77838671716057495 
		0 0 -0.1985413658524805 0.7097681977047986 0 0 0.049369158727384795 -0.77838671716057573 
		0 0 -0.1985413658524805 0.70976819770479949 0 0 0.049369158727384795 -0.77838671716057495 
		0 0 -0.1985413658524805 0.7097681977047976 0 0 -0.73182909469885515;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateY";
	rename -uid "2DCD8FD7-47E9-8717-481E-FAA6A090A17E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 -9.9392333795734899e-17 3 -0.25241566490681167
		 5 -0.13340575164642263 8 -0.15731790954093519 12 -9.9392333795734899e-17 14 0.252416
		 16 0.13340600000000002 19 0.157318 23 -9.9392333795734899e-17 25 -0.25241566490681167
		 27 -0.13340575164642263 30 -0.15731790954093519 34 -9.9392333795734899e-17 36 0.252416
		 38 0.13340600000000002 41 0.157318 45 -9.9392333795734899e-17 47 -0.25241566490681167
		 49 -0.13340575164642263 52 -0.15731790954093519 56 -9.9392333795734899e-17 58 0.252416
		 60 0.13340600000000002 63 0.157318 67 -9.9392333795734899e-17 69 -0.25241566490681167
		 71 -0.13340575164642263 74 -0.15731790954093519 78 -9.9392333795734899e-17 80 0.252416
		 82 0.13340600000000002 85 0.157318 89 -9.9392333795734899e-17 91 -0.25241566490681167
		 93 -0.13340575164642263 96 -0.15731790954093519 100 -9.9392333795734899e-17 102 0.252416
		 104 0.13340600000000002 107 0.157318 111 -9.9392333795734899e-17 113 -0.25241566490681167
		 115 -0.13340575164642263 118 -0.15731790954093519 122 -9.9392333795734899e-17 124 0.252416
		 126 0.13340600000000002 129 0.157318 133 -9.9392333795734899e-17;
	setAttr -s 50 ".kit[0:49]"  18 9 9 9 9 9 9 9 
		1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 
		9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 9 
		9 9 9 9 9 9 1 1;
	setAttr -s 50 ".kot[0:49]"  18 9 9 9 9 9 9 9 
		1 1 9 9 9 9 9 9 1 1 9 9 9 9 9 9 1 
		1 9 9 9 9 9 9 1 1 9 9 9 9 9 9 1 1 
		9 9 9 9 9 9 1 9;
	setAttr -s 50 ".kix[8:49]"  0.99996813752598934 0.99959113343041384 
		0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 
		0.99996826567189512 0.99996813752598934 0.99959113343041384 0.99990243079097374 0.99996826583515641 
		0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 
		0.99959113343041384 0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 
		0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99959113343041384 0.99990243079097374 
		0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 
		0.99996813752598934 0.99959113343041384 0.99990243079097374 0.99996826583515641 0.99996813752598934 
		0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99986432629565181;
	setAttr -s 50 ".kiy[8:49]"  0.0079827271532976647 -0.028593110486630591 
		-0.013968854580882071 0.0079666381008452643 0.0079827271532976612 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146055 0.0079827271532976647 -0.028593110486630605 
		-0.01396885458088208 0.0079666381008452643 0.0079827271532976543 0.028593127544374118 
		0.013968880580796039 -0.0079666585933145968 0.0079827271532976647 -0.028593110486630605 
		-0.013968854580882043 0.0079666381008452556 0.0079827271532976665 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146142 0.0079827271532976647 -0.028593110486630605 
		-0.01396885458088208 0.0079666381008452556 0.0079827271532976543 0.028593127544374118 
		0.013968880580796077 -0.0079666585933146142 0.0079827271532976647 -0.028593110486630605 
		-0.013968854580882043 0.0079666381008452383 0.0079827271532976786 0.028593127544374118 
		0.013968880580796003 -0.0079666585933146142 0.0079827271532976647 -0.016472067306276608;
	setAttr -s 50 ".kox[8:49]"  0.99996813752598934 0.99999697698049128 
		0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 
		0.99996826567189512 0.99996813752598934 0.99999697698049128 0.99990243079097374 0.99996826583515641 
		0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 
		0.99999697698049128 0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 
		0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99999697698049128 0.99990243079097374 
		0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 
		0.99996813752598934 0.99999697698049128 0.99990243079097374 0.99996826583515641 0.99996813752598934 
		0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99986432629565181;
	setAttr -s 50 ".koy[8:49]"  0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882071 0.0079666381008452643 0.0079827271532976612 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146055 0.0079827271532976647 -0.0024588676009502362 
		-0.01396885458088208 0.0079666381008452643 0.0079827271532976543 0.028593127544374118 
		0.013968880580796039 -0.0079666585933145968 0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882043 0.0079666381008452556 0.0079827271532976665 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146142 0.0079827271532976647 -0.0024588676009502362 
		-0.01396885458088208 0.0079666381008452556 0.0079827271532976543 0.028593127544374118 
		0.013968880580796077 -0.0079666585933146142 0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882043 0.0079666381008452383 0.0079827271532976786 0.028593127544374118 
		0.013968880580796003 -0.0079666585933146142 0.0079827271532976647 -0.016472067306276584;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateY";
	rename -uid "CD62A282-48B7-F366-7F71-A88F1DF5DCE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 -9.9392333795734899e-17 3 -0.25241566490681167
		 5 -0.13340575164642263 8 -0.15731790954093519 12 -9.9392333795734899e-17 14 0.252416
		 16 0.13340600000000002 19 0.157318 23 -9.9392333795734899e-17 25 -0.25241566490681167
		 27 -0.13340575164642263 30 -0.15731790954093519 34 -9.9392333795734899e-17 36 0.252416
		 38 0.13340600000000002 41 0.157318 45 -9.9392333795734899e-17 47 -0.25241566490681167
		 49 -0.13340575164642263 52 -0.15731790954093519 56 -9.9392333795734899e-17 58 0.252416
		 60 0.13340600000000002 63 0.157318 67 -9.9392333795734899e-17 69 -0.25241566490681167
		 71 -0.13340575164642263 74 -0.15731790954093519 78 -9.9392333795734899e-17 80 0.252416
		 82 0.13340600000000002 85 0.157318 89 -9.9392333795734899e-17 91 -0.25241566490681167
		 93 -0.13340575164642263 96 -0.15731790954093519 100 -9.9392333795734899e-17 102 0.252416
		 104 0.13340600000000002 107 0.157318 111 -9.9392333795734899e-17 113 -0.25241566490681167
		 115 -0.13340575164642263 118 -0.15731790954093519 122 -9.9392333795734899e-17 124 0.252416
		 126 0.13340600000000002 129 0.157318 133 -9.9392333795734899e-17;
	setAttr -s 50 ".kit[0:49]"  18 9 9 9 9 9 9 9 
		1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 
		9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 9 
		9 9 9 9 9 9 1 1;
	setAttr -s 50 ".kot[0:49]"  18 9 9 9 9 9 9 9 
		1 1 9 9 9 9 9 9 1 1 9 9 9 9 9 9 1 
		1 9 9 9 9 9 9 1 1 9 9 9 9 9 9 1 1 
		9 9 9 9 9 9 1 9;
	setAttr -s 50 ".kix[8:49]"  0.99996813752598934 0.99959113343041384 
		0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 
		0.99996826567189512 0.99996813752598934 0.99959113343041384 0.99990243079097374 0.99996826583515641 
		0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 
		0.99959113343041384 0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 
		0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99959113343041384 0.99990243079097374 
		0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 
		0.99996813752598934 0.99959113343041384 0.99990243079097374 0.99996826583515641 0.99996813752598934 
		0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99986432629565181;
	setAttr -s 50 ".kiy[8:49]"  0.0079827271532976647 -0.028593110486630591 
		-0.013968854580882071 0.0079666381008452643 0.0079827271532976612 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146055 0.0079827271532976647 -0.028593110486630605 
		-0.01396885458088208 0.0079666381008452643 0.0079827271532976543 0.028593127544374118 
		0.013968880580796039 -0.0079666585933145968 0.0079827271532976647 -0.028593110486630605 
		-0.013968854580882043 0.0079666381008452556 0.0079827271532976665 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146142 0.0079827271532976647 -0.028593110486630605 
		-0.01396885458088208 0.0079666381008452556 0.0079827271532976543 0.028593127544374118 
		0.013968880580796077 -0.0079666585933146142 0.0079827271532976647 -0.028593110486630605 
		-0.013968854580882043 0.0079666381008452383 0.0079827271532976786 0.028593127544374118 
		0.013968880580796003 -0.0079666585933146142 0.0079827271532976647 -0.016472067306276608;
	setAttr -s 50 ".kox[8:49]"  0.99996813752598934 0.99999697698049128 
		0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 
		0.99996826567189512 0.99996813752598934 0.99999697698049128 0.99990243079097374 0.99996826583515641 
		0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 
		0.99999697698049128 0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 
		0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99999697698049128 0.99990243079097374 
		0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 
		0.99996813752598934 0.99999697698049128 0.99990243079097374 0.99996826583515641 0.99996813752598934 
		0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99986432629565181;
	setAttr -s 50 ".koy[8:49]"  0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882071 0.0079666381008452643 0.0079827271532976612 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146055 0.0079827271532976647 -0.0024588676009502362 
		-0.01396885458088208 0.0079666381008452643 0.0079827271532976543 0.028593127544374118 
		0.013968880580796039 -0.0079666585933145968 0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882043 0.0079666381008452556 0.0079827271532976665 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146142 0.0079827271532976647 -0.0024588676009502362 
		-0.01396885458088208 0.0079666381008452556 0.0079827271532976543 0.028593127544374118 
		0.013968880580796077 -0.0079666585933146142 0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882043 0.0079666381008452383 0.0079827271532976786 0.028593127544374118 
		0.013968880580796003 -0.0079666585933146142 0.0079827271532976647 -0.016472067306276584;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateY";
	rename -uid "CB90BB74-4BEE-E16E-9F20-A48B86A8DBB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 -9.9392333795734899e-17 3 -0.25241566490681167
		 5 -0.13340575164642263 8 -0.15731790954093519 12 -9.9392333795734899e-17 14 0.252416
		 16 0.13340600000000002 19 0.157318 23 -9.9392333795734899e-17 25 -0.25241566490681167
		 27 -0.13340575164642263 30 -0.15731790954093519 34 -9.9392333795734899e-17 36 0.252416
		 38 0.13340600000000002 41 0.157318 45 -9.9392333795734899e-17 47 -0.25241566490681167
		 49 -0.13340575164642263 52 -0.15731790954093519 56 -9.9392333795734899e-17 58 0.252416
		 60 0.13340600000000002 63 0.157318 67 -9.9392333795734899e-17 69 -0.25241566490681167
		 71 -0.13340575164642263 74 -0.15731790954093519 78 -9.9392333795734899e-17 80 0.252416
		 82 0.13340600000000002 85 0.157318 89 -9.9392333795734899e-17 91 -0.25241566490681167
		 93 -0.13340575164642263 96 -0.15731790954093519 100 -9.9392333795734899e-17 102 0.252416
		 104 0.13340600000000002 107 0.157318 111 -9.9392333795734899e-17 113 -0.25241566490681167
		 115 -0.13340575164642263 118 -0.15731790954093519 122 -9.9392333795734899e-17 124 0.252416
		 126 0.13340600000000002 129 0.157318 133 -9.9392333795734899e-17;
	setAttr -s 50 ".kit[0:49]"  18 9 9 9 9 9 9 9 
		1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 
		9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 9 
		9 9 9 9 9 9 1 1;
	setAttr -s 50 ".kot[0:49]"  18 9 9 9 9 9 9 9 
		1 1 9 9 9 9 9 9 1 1 9 9 9 9 9 9 1 
		1 9 9 9 9 9 9 1 1 9 9 9 9 9 9 1 1 
		9 9 9 9 9 9 1 9;
	setAttr -s 50 ".kix[8:49]"  0.99996813752598934 0.99959113343041384 
		0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 
		0.99996826567189512 0.99996813752598934 0.99959113343041384 0.99990243079097374 0.99996826583515641 
		0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 
		0.99959113343041384 0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 
		0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99959113343041384 0.99990243079097374 
		0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 
		0.99996813752598934 0.99959113343041384 0.99990243079097374 0.99996826583515641 0.99996813752598934 
		0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99986432629565181;
	setAttr -s 50 ".kiy[8:49]"  0.0079827271532976647 -0.028593110486630591 
		-0.013968854580882071 0.0079666381008452643 0.0079827271532976612 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146055 0.0079827271532976647 -0.028593110486630605 
		-0.01396885458088208 0.0079666381008452643 0.0079827271532976543 0.028593127544374118 
		0.013968880580796039 -0.0079666585933145968 0.0079827271532976647 -0.028593110486630605 
		-0.013968854580882043 0.0079666381008452556 0.0079827271532976665 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146142 0.0079827271532976647 -0.028593110486630605 
		-0.01396885458088208 0.0079666381008452556 0.0079827271532976543 0.028593127544374118 
		0.013968880580796077 -0.0079666585933146142 0.0079827271532976647 -0.028593110486630605 
		-0.013968854580882043 0.0079666381008452383 0.0079827271532976786 0.028593127544374118 
		0.013968880580796003 -0.0079666585933146142 0.0079827271532976647 -0.016472067306276608;
	setAttr -s 50 ".kox[8:49]"  0.99996813752598934 0.99999697698049128 
		0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 
		0.99996826567189512 0.99996813752598934 0.99999697698049128 0.99990243079097374 0.99996826583515641 
		0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 
		0.99999697698049128 0.99990243079097374 0.99996826583515641 0.99996813752598934 0.99959113294248014 
		0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99999697698049128 0.99990243079097374 
		0.99996826583515641 0.99996813752598934 0.99959113294248014 0.99990243042774907 0.99996826567189512 
		0.99996813752598934 0.99999697698049128 0.99990243079097374 0.99996826583515641 0.99996813752598934 
		0.99959113294248014 0.99990243042774907 0.99996826567189512 0.99996813752598934 0.99986432629565181;
	setAttr -s 50 ".koy[8:49]"  0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882071 0.0079666381008452643 0.0079827271532976612 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146055 0.0079827271532976647 -0.0024588676009502362 
		-0.01396885458088208 0.0079666381008452643 0.0079827271532976543 0.028593127544374118 
		0.013968880580796039 -0.0079666585933145968 0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882043 0.0079666381008452556 0.0079827271532976665 0.028593127544374118 
		0.013968880580796039 -0.0079666585933146142 0.0079827271532976647 -0.0024588676009502362 
		-0.01396885458088208 0.0079666381008452556 0.0079827271532976543 0.028593127544374118 
		0.013968880580796077 -0.0079666585933146142 0.0079827271532976647 -0.0024588676009502362 
		-0.013968854580882043 0.0079666381008452383 0.0079827271532976786 0.028593127544374118 
		0.013968880580796003 -0.0079666585933146142 0.0079827271532976647 -0.016472067306276584;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_03_FK_Ctrl_rotateZ";
	rename -uid "4DE8C0B0-49F1-D24C-BCE0-268E8AB477F2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 14.427600156849923 3 15.894896204665367
		 5 14.499027838407903 8 11.441775974262857 12 14.427600156849923 14 15.894896204665367
		 16 14.499027838407903 19 11.441775974262857 23 14.427600156849923 25 15.894896204665367
		 27 14.499027838407903 30 11.441775974262857 34 14.427600156849923 36 15.894896204665367
		 38 14.499027838407903 41 11.441775974262857 45 14.427600156849923 47 15.894896204665367
		 49 14.499027838407903 52 11.441775974262857 56 14.427600156849923 58 15.894896204665367
		 60 14.499027838407903 63 11.441775974262857 67 14.427600156849923 69 15.894896204665367
		 71 14.499027838407903 74 11.441775974262857 78 14.427600156849923 80 15.894896204665367
		 82 14.499027838407903 85 11.441775974262857 89 14.427600156849923 91 15.894896204665367
		 93 14.499027838407903 96 11.441775974262857 100 14.427600156849923 102 15.894896204665367
		 104 14.499027838407903 107 11.441775974262857 111 14.427600156849923 113 15.894896204665367
		 115 14.499027838407903 118 11.441775974262857 122 14.427600156849923 124 15.894896204665367
		 126 14.499027838407903 129 11.441775974262857 133 14.427600156849923;
	setAttr -s 50 ".kit[0:49]"  18 9 3 9 3 9 3 9 
		3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 
		3 9 3 9 3 9 3 1;
	setAttr -s 50 ".kot[0:49]"  18 9 3 9 3 1 3 9 
		3 1 3 9 3 1 3 9 3 1 3 9 3 1 3 9 3 
		1 3 9 3 1 3 9 3 1 3 9 3 1 3 9 3 1 
		3 9 3 1 3 9 3 1;
	setAttr -s 50 ".kix[49]"  0.95443247467250403;
	setAttr -s 50 ".kiy[49]"  0.29842696140013864;
	setAttr -s 50 ".kox[5:49]"  0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312893 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312893 
		1 0.98822390982925734 1 0.93692425639312948 1 0.95588173185398706 1 0.93692425639312893 
		1 0.95588173185398706;
	setAttr -s 50 ".koy[5:49]"  0.29375179098657839 0 -0.34953245597824273 
		0 0.1530147183828274 0 -0.34953245597824273 0 0.29375179098657839 0 -0.34953245597824273 
		0 0.1530147183828274 0 -0.34953245597824273 0 0.29375179098657839 0 -0.3495324559782424 
		0 0.1530147183828274 0 -0.3495324559782424 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.1530147183828274 0 -0.3495324559782424 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.1530147183828274 0 -0.34953245597824173 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.29375179098657839;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_FK_Ctrl_rotateZ";
	rename -uid "0805C44F-4758-F147-2EEE-C8961B417F6D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 14.427600156849923 3 15.894896204665367
		 5 14.499027838407903 8 11.441775974262857 12 14.427600156849923 14 15.894896204665367
		 16 14.499027838407903 19 11.441775974262857 23 14.427600156849923 25 15.894896204665367
		 27 14.499027838407903 30 11.441775974262857 34 14.427600156849923 36 15.894896204665367
		 38 14.499027838407903 41 11.441775974262857 45 14.427600156849923 47 15.894896204665367
		 49 14.499027838407903 52 11.441775974262857 56 14.427600156849923 58 15.894896204665367
		 60 14.499027838407903 63 11.441775974262857 67 14.427600156849923 69 15.894896204665367
		 71 14.499027838407903 74 11.441775974262857 78 14.427600156849923 80 15.894896204665367
		 82 14.499027838407903 85 11.441775974262857 89 14.427600156849923 91 15.894896204665367
		 93 14.499027838407903 96 11.441775974262857 100 14.427600156849923 102 15.894896204665367
		 104 14.499027838407903 107 11.441775974262857 111 14.427600156849923 113 15.894896204665367
		 115 14.499027838407903 118 11.441775974262857 122 14.427600156849923 124 15.894896204665367
		 126 14.499027838407903 129 11.441775974262857 133 14.427600156849923;
	setAttr -s 50 ".kit[0:49]"  18 9 3 9 3 9 3 9 
		3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 
		3 9 3 9 3 9 3 1;
	setAttr -s 50 ".kot[0:49]"  18 9 3 9 3 1 3 9 
		3 1 3 9 3 1 3 9 3 1 3 9 3 1 3 9 3 
		1 3 9 3 1 3 9 3 1 3 9 3 1 3 9 3 1 
		3 9 3 1 3 9 3 1;
	setAttr -s 50 ".kix[49]"  0.95443247467250403;
	setAttr -s 50 ".kiy[49]"  0.29842696140013864;
	setAttr -s 50 ".kox[5:49]"  0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312893 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312893 
		1 0.98822390982925734 1 0.93692425639312948 1 0.95588173185398706 1 0.93692425639312893 
		1 0.95588173185398706;
	setAttr -s 50 ".koy[5:49]"  0.29375179098657839 0 -0.34953245597824273 
		0 0.1530147183828274 0 -0.34953245597824273 0 0.29375179098657839 0 -0.34953245597824273 
		0 0.1530147183828274 0 -0.34953245597824273 0 0.29375179098657839 0 -0.3495324559782424 
		0 0.1530147183828274 0 -0.3495324559782424 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.1530147183828274 0 -0.3495324559782424 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.1530147183828274 0 -0.34953245597824173 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.29375179098657839;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_FK_Ctrl_rotateZ";
	rename -uid "93C321D2-48F9-3199-F359-82A6F8592841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 14.427600156849923 3 15.894896204665367
		 5 14.499027838407903 8 11.441775974262857 12 14.427600156849923 14 15.894896204665367
		 16 14.499027838407903 19 11.441775974262857 23 14.427600156849923 25 15.894896204665367
		 27 14.499027838407903 30 11.441775974262857 34 14.427600156849923 36 15.894896204665367
		 38 14.499027838407903 41 11.441775974262857 45 14.427600156849923 47 15.894896204665367
		 49 14.499027838407903 52 11.441775974262857 56 14.427600156849923 58 15.894896204665367
		 60 14.499027838407903 63 11.441775974262857 67 14.427600156849923 69 15.894896204665367
		 71 14.499027838407903 74 11.441775974262857 78 14.427600156849923 80 15.894896204665367
		 82 14.499027838407903 85 11.441775974262857 89 14.427600156849923 91 15.894896204665367
		 93 14.499027838407903 96 11.441775974262857 100 14.427600156849923 102 15.894896204665367
		 104 14.499027838407903 107 11.441775974262857 111 14.427600156849923 113 15.894896204665367
		 115 14.499027838407903 118 11.441775974262857 122 14.427600156849923 124 15.894896204665367
		 126 14.499027838407903 129 11.441775974262857 133 14.427600156849923;
	setAttr -s 50 ".kit[0:49]"  18 9 3 9 3 9 3 9 
		3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 3 9 
		3 9 3 9 3 9 3 1;
	setAttr -s 50 ".kot[0:49]"  18 9 3 9 3 1 3 9 
		3 1 3 9 3 1 3 9 3 1 3 9 3 1 3 9 3 
		1 3 9 3 1 3 9 3 1 3 9 3 1 3 9 3 1 
		3 9 3 1 3 9 3 1;
	setAttr -s 50 ".kix[49]"  0.95443247467250403;
	setAttr -s 50 ".kiy[49]"  0.29842696140013864;
	setAttr -s 50 ".kox[5:49]"  0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312904 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312893 
		1 0.98822390982925734 1 0.93692425639312904 1 0.95588173185398706 1 0.93692425639312893 
		1 0.98822390982925734 1 0.93692425639312948 1 0.95588173185398706 1 0.93692425639312893 
		1 0.95588173185398706;
	setAttr -s 50 ".koy[5:49]"  0.29375179098657839 0 -0.34953245597824273 
		0 0.1530147183828274 0 -0.34953245597824273 0 0.29375179098657839 0 -0.34953245597824273 
		0 0.1530147183828274 0 -0.34953245597824273 0 0.29375179098657839 0 -0.3495324559782424 
		0 0.1530147183828274 0 -0.3495324559782424 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.1530147183828274 0 -0.3495324559782424 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.1530147183828274 0 -0.34953245597824173 0 0.29375179098657839 0 -0.34953245597824301 
		0 0.29375179098657839;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Leg_IK_Ctrl_rotateX";
	rename -uid "D1102381-4EC2-6345-0C58-BEBAABF2B52F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  -40 0 1 0 3 0 5 0 12 40.404266025842084
		 14 61.601416360566176 16 0 23 0 25 0 27 0 34 40.404266025842084 36 61.601416360566176
		 38 0 45 0 47 0 49 0 56 40.404266025842084 58 61.601416360566176 60 0 67 0 69 0 71 0
		 78 40.404266025842084 80 61.601416360566176 82 0 89 0 91 0 93 0 100 40.404266025842084
		 102 61.601416360566176 104 0 111 0 113 0 115 0 122 40.404266025842084 124 61.601416360566176
		 126 0 133 0;
	setAttr -s 38 ".kit[0:37]"  18 9 9 9 1 9 9 9 
		9 9 1 9 9 9 9 9 1 9 9 9 9 9 1 9 9 
		9 9 9 1 9 9 9 9 9 1 9 9 1;
	setAttr -s 38 ".kot[0:37]"  18 9 9 9 1 9 9 1 
		9 9 1 9 9 1 9 9 1 9 9 1 9 9 1 9 9 
		1 9 9 1 9 9 1 9 9 1 9 9 1;
	setAttr -s 38 ".kix[4:37]"  0.21974389619649964 0.23000714380221948 
		0.3293318600675833 1 1 0.46951565107130033 0.21974389619649964 0.23000714380221937 
		0.3293318600675833 1 1 0.4695156510713005 0.21974389619649964 0.23000714380221937 
		0.3293318600675833 1 1 0.46951565107130033 0.21974389619649964 0.23000714380221937 
		0.3293318600675833 1 1 0.46951565107130078 0.21974389619649964 0.23000714380221876 
		0.3293318600675833 1 1 0.46951565107130033 0.21974389619649964 0.2300071438022199 
		0.3293318600675833 1;
	setAttr -s 38 ".kiy[4:37]"  0.97555759444759704 -0.97318894044267934 
		-0.94421423731292342 0 0 0.88292414928978635 0.97555759444759704 -0.97318894044267956 
		-0.94421423731292342 0 0 0.88292414928978613 0.97555759444759704 -0.97318894044267956 
		-0.94421423731292342 0 0 0.88292414928978635 0.97555759444759704 -0.97318894044267956 
		-0.94421423731292342 0 0 0.88292414928978624 0.97555759444759704 -0.97318894044267967 
		-0.94421423731292342 0 0 0.88292414928978635 0.97555759444759704 -0.97318894044267934 
		-0.94421423731292342 0;
	setAttr -s 38 ".kox[4:37]"  0.21974389619649964 0.23000714380221948 
		0.3293318600675833 1 1 0.46951565107130033 0.21974389619649964 0.23000714380221937 
		0.3293318600675833 1 1 0.4695156510713005 0.21974389619649964 0.23000714380221937 
		0.3293318600675833 1 1 0.46951565107130033 0.21974389619649964 0.23000714380221937 
		0.3293318600675833 1 1 0.46951565107130078 0.21974389619649964 0.23000714380221876 
		0.3293318600675833 1 1 0.46951565107130033 0.21974389619649964 0.2300071438022199 
		0.3293318600675833 1;
	setAttr -s 38 ".koy[4:37]"  0.97555759444759704 -0.97318894044267934 
		-0.94421423731292342 0 0 0.88292414928978635 0.97555759444759704 -0.97318894044267956 
		-0.94421423731292342 0 0 0.88292414928978613 0.97555759444759704 -0.97318894044267956 
		-0.94421423731292342 0 0 0.88292414928978635 0.97555759444759704 -0.97318894044267956 
		-0.94421423731292342 0 0 0.88292414928978624 0.97555759444759704 -0.97318894044267967 
		-0.94421423731292342 0 0 0.88292414928978635 0.97555759444759704 -0.97318894044267934 
		-0.94421423731292342 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Pelvis_FK_Ctrl_rotateX";
	rename -uid "10CBDE4C-441D-5B6C-31D7-E38D69254F7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 12.138890796875176 12 -12.139 23 12.138890796875176
		 34 -12.139 45 12.138890796875176 56 -12.139 67 12.138890796875176 78 -12.139 89 12.138890796875176
		 100 -12.139 111 12.138890796875176 122 -12.139 133 12.138890796875176;
	setAttr -s 14 ".kit[0:13]"  18 9 9 9 9 9 9 9 
		9 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  18 9 9 1 9 1 9 1 
		9 1 9 1 9 1;
	setAttr -s 14 ".kix[13]"  0.73428245647346713;
	setAttr -s 14 ".kiy[13]"  0.67884407201896568;
	setAttr -s 14 ".kox[3:13]"  0.99525315040800566 1 0.99525315040800566 
		1 0.99525315040800566 1 0.99525315040800566 1 0.99525315040800566 1 0.73428245647346702;
	setAttr -s 14 ".koy[3:13]"  -0.097319918839565672 0 -0.097319918839565672 
		0 -0.097319918839565672 0 -0.097319918839565672 0 -0.097319918839565672 0 -0.67884407201896568;
	setAttr ".pst" 3;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "1C9089E8-4988-DF23-F3B1-5BB4196A6080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  -40 0 1 -1.4962477790045234 3 -1.6747503308428442
		 5 -1.2118108775887215 8 -0.56384089505539103 12 -1.4962477790045234 14 -1.6747503308428442
		 16 -1.2118108775887215 19 -0.56384089505539103 23 -1.4962477790045234 25 -1.6747503308428442
		 27 -1.2118108775887215 30 -0.56384089505539103 34 -1.4962477790045234 36 -1.6747503308428442
		 38 -1.2118108775887215 41 -0.56384089505539103 45 -1.4962477790045234 47 -1.6747503308428442
		 49 -1.2118108775887215 52 -0.56384089505539103 56 -1.4962477790045234 58 -1.6747503308428442
		 60 -1.2118108775887215 63 -0.56384089505539103 67 -1.4962477790045234 69 -1.6747503308428442
		 71 -1.2118108775887215 74 -0.56384089505539103 78 -1.4962477790045234 80 -1.6747503308428442
		 82 -1.2118108775887215 85 -0.56384089505539103 89 -1.4962477790045234 91 -1.6747503308428442
		 93 -1.2118108775887215 96 -0.56384089505539103 100 -1.4962477790045234 102 -1.6747503308428442
		 104 -1.2118108775887215 107 -0.56384089505539103 111 -1.4962477790045234 113 -1.6747503308428442
		 115 -1.2118108775887215 118 -0.56384089505539103 122 -1.4962477790045234 124 -1.6747503308428442
		 126 -1.2118108775887215 129 -0.56384089505539103 133 -1.4962477790045234;
	setAttr -s 50 ".kit[0:49]"  18 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1;
	setAttr -s 50 ".kot[0:49]"  18 9 9 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 
		1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 1 
		9 9 9 9 9 9 9 1;
	setAttr -s 50 ".kix[49]"  0.17595990049676191;
	setAttr -s 50 ".kiy[49]"  -0.98439733513311067;
	setAttr -s 50 ".kox[9:49]"  0.73054087467749651 0.50555648031098688 
		0.18432085439138063 0.71592418820349524 0.2195501248151695 0.50555648031098666 0.18432085439138063 
		0.71592418820349524 0.73054087467749651 0.50555648031098666 0.18432085439138063 0.71592418820349535 
		0.2195501248151695 0.50555648031098666 0.18432085439138082 0.7159241882034949 0.73054087467749651 
		0.50555648031098765 0.18432085439138082 0.7159241882034949 0.2195501248151695 0.50555648031098666 
		0.18432085439138043 0.71592418820349535 0.73054087467749651 0.50555648031098666 0.18432085439138082 
		0.71592418820349535 0.2195501248151695 0.50555648031098566 0.18432085439138043 0.71592418820349535 
		0.73054087467749651 0.50555648031098765 0.18432085439138124 0.71592418820349424 0.2195501248151695 
		0.50555648031098765 0.18432085439138043 0.71592418820349535 0.42301944468213754;
	setAttr -s 50 ".koy[9:49]"  -0.68286897017322312 0.86279351250201608 
		0.98286612650779226 -0.69817802654134464 -0.97560122114193948 0.8627935125020163 
		0.98286612650779226 -0.69817802654134464 -0.68286897017322312 0.8627935125020163 
		0.98286612650779226 -0.69817802654134431 -0.97560122114193948 0.8627935125020163 
		0.98286612650779215 -0.69817802654134486 -0.68286897017322312 0.86279351250201564 
		0.98286612650779215 -0.69817802654134486 -0.97560122114193948 0.8627935125020163 
		0.98286612650779226 -0.69817802654134431 -0.68286897017322312 0.8627935125020163 
		0.98286612650779215 -0.69817802654134431 -0.97560122114193948 0.86279351250201686 
		0.98286612650779226 -0.69817802654134431 -0.68286897017322312 0.86279351250201564 
		0.98286612650779215 -0.69817802654134542 -0.97560122114193948 0.86279351250201564 
		0.98286612650779226 -0.69817802654134431 -0.90612060423589091;
	setAttr ".pst" 3;
createNode animCurveTU -n "L_Leg_IK_Ctrl_FootRoll";
	rename -uid "37B7B910-472B-F7C9-CE13-7FBE5FB6D8C0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  3 0 5 4.3 8 0 25 0 27 4.3 30 0 47 0 49 4.3
		 52 0 69 0 71 4.3 74 0 91 0 93 4.3 96 0 113 0 115 4.3 118 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "L_Clav_FK_Ctrl_rotateX";
	rename -uid "0A13BECB-4C41-3C68-D841-138C18F3C416";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 1.3293903318592692 12 0 23 1.3293903318592692
		 34 0 45 1.3293903318592692 56 0 67 1.3293903318592692 78 0 89 1.3293903318592692
		 100 0 111 1.3293903318592692 122 0 133 1.3293903318592692;
	setAttr -s 14 ".kit[0:13]"  18 2 2 2 2 2 2 2 
		2 2 2 2 2 1;
	setAttr -s 14 ".kot[0:13]"  18 2 2 1 2 1 2 1 
		2 1 2 1 2 1;
	setAttr -s 14 ".kix[13]"  0.99872111015076248;
	setAttr -s 14 ".kiy[13]"  0.050558324133900955;
	setAttr -s 14 ".kox[3:13]"  0.99872111015076248 0.99872111015076248 
		0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248 
		0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248;
	setAttr -s 14 ".koy[3:13]"  -0.050558324133900961 0.050558324133900968 
		-0.050558324133900961 0.050558324133900989 -0.050558324133900961 0.050558324133900941 
		-0.050558324133900961 0.050558324133900989 -0.050558324133900961 0.050558324133900892 
		-0.050558324133900955;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Clav_FK_Ctrl_rotateX";
	rename -uid "02A0DA15-43B2-9254-F5EF-068CF7A736E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  -40 0 1 0 12 1.3293903318592692 23 0 34 1.3293903318592692
		 45 0 56 1.3293903318592692 67 0 78 1.3293903318592692 89 0 100 1.3293903318592692
		 111 0 122 1.3293903318592692 133 0;
	setAttr -s 14 ".kit[0:13]"  18 2 1 2 1 2 1 2 
		1 2 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  18 2 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 14 ".kix[2:13]"  1 0.99872111015076248 1 0.99872111015076248 
		1 0.99872111015076248 1 0.99872111015076248 1 0.99872111015076248 1 0.99872111015076248;
	setAttr -s 14 ".kiy[2:13]"  0 -0.050558324133900955 0 -0.050558324133900968 
		0 -0.050558324133900989 0 -0.050558324133900941 0 -0.050558324133900989 0 -0.050558324133900955;
	setAttr -s 14 ".kox[2:13]"  0.99872111015076248 0.99872111015076248 
		0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248 
		0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248 0.99872111015076248;
	setAttr -s 14 ".koy[2:13]"  -0.050558324133900955 0.050558324133900961 
		-0.050558324133900955 0.050558324133900961 -0.050558324133900955 0.050558324133900961 
		-0.050558324133900955 0.050558324133900961 -0.050558324133900955 0.050558324133900961 
		-0.050558324133900955 0.050558324133900955;
	setAttr ".pst" 3;
createNode animCurveTA -n "Neck_01_Fk_Ctrl_rotateZ";
	rename -uid "4EA8F4BB-4AE6-BBF6-68FF-B2B305CE1818";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -8.6128916613914122 3 -5.5367714066052898
		 12 -8.6128916613914122 14 -5.5367714066052898 23 -8.6128916613914122 25 -5.5367714066052898
		 34 -8.6128916613914122 36 -5.5367714066052898 45 -8.6128916613914122 47 -5.5367714066052898
		 56 -8.6128916613914122 58 -5.5367714066052898 67 -8.6128916613914122 69 -5.5367714066052898
		 78 -8.6128916613914122 80 -5.5367714066052898 89 -8.6128916613914122 91 -5.5367714066052898
		 100 -8.6128916613914122 102 -5.5367714066052898 111 -8.6128916613914122 113 -5.5367714066052898
		 122 -8.6128916613914122 124 -5.5367714066052898 133 -8.6128916613914122;
	setAttr -s 26 ".kit[0:25]"  18 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		1;
	setAttr -s 26 ".kot[0:25]"  18 2 2 2 2 1 2 2 
		2 1 2 2 2 1 2 2 2 1 2 2 2 1 2 2 2 
		2;
	setAttr -s 26 ".kix[25]"  0.98990620900501636;
	setAttr -s 26 ".kiy[25]"  -0.14172401833604958;
	setAttr -s 26 ".kox[5:25]"  0.84064120043970203 0.98990620900501636 
		0.84064120043970181 0.98990620900501636 0.84064120043970203 0.98990620900501636 0.84064120043970103 
		0.98990620900501636 0.84064120043970203 0.98990620900501636 0.84064120043970247 0.98990620900501636 
		0.84064120043970203 0.98990620900501636 0.84064120043970103 0.98990620900501636 0.84064120043970203 
		0.98990620900501636 0.84064120043970381 0.98990620900501636 1;
	setAttr -s 26 ".koy[5:25]"  0.54159244097688142 -0.14172401833604958 
		0.54159244097688175 -0.14172401833604958 0.54159244097688142 -0.1417240183360495 
		0.54159244097688275 -0.14172401833604958 0.54159244097688142 -0.14172401833604958 
		0.54159244097688075 -0.14172401833604958 0.54159244097688142 -0.14172401833604942 
		0.54159244097688275 -0.14172401833604958 0.54159244097688142 -0.14172401833604958 
		0.54159244097687875 -0.14172401833604958 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Neck_02_Fk_Ctrl_rotateZ";
	rename -uid "2C2F9C17-4C05-DAEB-40D6-7C9A6E729E5D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -8.6128916613914122 3 -5.5367714066052898
		 12 -8.6128916613914122 14 -5.5367714066052898 23 -8.6128916613914122 25 -5.5367714066052898
		 34 -8.6128916613914122 36 -5.5367714066052898 45 -8.6128916613914122 47 -5.5367714066052898
		 56 -8.6128916613914122 58 -5.5367714066052898 67 -8.6128916613914122 69 -5.5367714066052898
		 78 -8.6128916613914122 80 -5.5367714066052898 89 -8.6128916613914122 91 -5.5367714066052898
		 100 -8.6128916613914122 102 -5.5367714066052898 111 -8.6128916613914122 113 -5.5367714066052898
		 122 -8.6128916613914122 124 -5.5367714066052898 133 -8.6128916613914122;
	setAttr -s 26 ".kit[0:25]"  18 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		1;
	setAttr -s 26 ".kot[0:25]"  18 2 2 2 2 1 2 2 
		2 1 2 2 2 1 2 2 2 1 2 2 2 1 2 2 2 
		2;
	setAttr -s 26 ".kix[25]"  0.98990620900501636;
	setAttr -s 26 ".kiy[25]"  -0.14172401833604958;
	setAttr -s 26 ".kox[5:25]"  0.84064120043970203 0.98990620900501636 
		0.84064120043970181 0.98990620900501636 0.84064120043970203 0.98990620900501636 0.84064120043970103 
		0.98990620900501636 0.84064120043970203 0.98990620900501636 0.84064120043970247 0.98990620900501636 
		0.84064120043970203 0.98990620900501636 0.84064120043970103 0.98990620900501636 0.84064120043970203 
		0.98990620900501636 0.84064120043970381 0.98990620900501636 1;
	setAttr -s 26 ".koy[5:25]"  0.54159244097688142 -0.14172401833604958 
		0.54159244097688175 -0.14172401833604958 0.54159244097688142 -0.1417240183360495 
		0.54159244097688275 -0.14172401833604958 0.54159244097688142 -0.14172401833604958 
		0.54159244097688075 -0.14172401833604958 0.54159244097688142 -0.14172401833604942 
		0.54159244097688275 -0.14172401833604958 0.54159244097688142 -0.14172401833604958 
		0.54159244097687875 -0.14172401833604958 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Head_Fk_Ctrl_rotateZ";
	rename -uid "EA24277D-4178-BD87-897C-4A91782AD96D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -40 0 1 -8.6128916613914122 3 -5.5372563957478
		 12 -8.6128916613914122 14 -5.5372563957478 23 -8.6128916613914122 25 -5.5372563957478
		 34 -8.6128916613914122 36 -5.5372563957478 45 -8.6128916613914122 47 -5.5372563957478
		 56 -8.6128916613914122 58 -5.5372563957478 67 -8.6128916613914122 69 -5.5372563957478
		 78 -8.6128916613914122 80 -5.5372563957478 89 -8.6128916613914122 91 -5.5372563957478
		 100 -8.6128916613914122 102 -5.5372563957478 111 -8.6128916613914122 113 -5.5372563957478
		 122 -8.6128916613914122 124 -5.5372563957478 133 -8.6128916613914122;
	setAttr -s 26 ".kit[0:25]"  18 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		1;
	setAttr -s 26 ".kot[0:25]"  18 2 2 2 2 1 2 2 
		2 1 2 2 2 1 2 2 2 1 2 2 2 1 2 2 2 
		2;
	setAttr -s 26 ".kix[25]"  0.98990934357157179;
	setAttr -s 26 ".kiy[25]"  -0.14170212246010999;
	setAttr -s 26 ".kox[5:25]"  0.84068007633955588 0.98990934357157179 
		0.84068007633955555 0.98990934357157179 0.84068007633955588 0.98990934357157179 0.84068007633955488 
		0.98990934357157179 0.84068007633955588 0.98990934357157179 0.84068007633955621 0.98990934357157179 
		0.84068007633955588 0.98990934357157179 0.84068007633955488 0.98990934357157179 0.84068007633955588 
		0.98990934357157179 0.84068007633955755 0.98990934357157179 1;
	setAttr -s 26 ".koy[5:25]"  0.54153209438196614 -0.14170212246010999 
		0.54153209438196648 -0.14170212246010999 0.54153209438196614 -0.14170212246010991 
		0.54153209438196748 -0.14170212246010999 0.54153209438196614 -0.14170212246010999 
		0.54153209438196537 -0.14170212246010999 0.54153209438196614 -0.14170212246010983 
		0.54153209438196748 -0.14170212246010999 0.54153209438196614 -0.14170212246010999 
		0.54153209438196348 -0.14170212246010999 0;
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
	setAttr -s 18 ".ktv[0:17]"  14 0 16 4.3 19 0 36 0 38 4.3 41 0 58 0 60 4.3
		 63 0 80 0 82 4.3 85 0 102 0 104 4.3 107 0 124 0 126 4.3 129 0;
	setAttr -s 18 ".kit[0:17]"  9 1 1 9 1 1 9 1 
		1 9 1 1 9 1 1 9 1 1;
	setAttr -s 18 ".kot[0:17]"  9 1 1 9 1 1 9 1 
		1 9 1 1 9 1 1 9 1 1;
	setAttr -s 18 ".kix[1:17]"  1 0.029057492497498054 0.18106540761337742 
		1 0.029057492497498054 0.18106540761337744 1 0.029057492497498054 0.18106540761337739 
		1 0.029057492497498054 0.18106540761337739 1 0.029057492497498054 0.1810654076133775 
		1 0.029057492497498054;
	setAttr -s 18 ".kiy[1:17]"  0 -0.99957774191393323 0.98347105608950258 
		0 -0.99957774191393323 0.98347105608950258 0 -0.99957774191393323 0.98347105608950258 
		0 -0.99957774191393323 0.98347105608950258 0 -0.99957774191393323 0.98347105608950258 
		0 -0.99957774191393323;
	setAttr -s 18 ".kox[1:17]"  1 0.029057492497498054 0.18106540761337742 
		1 0.029057492497498054 0.18106540761337744 1 0.029057492497498054 0.18106540761337739 
		1 0.029057492497498054 0.18106540761337739 1 0.029057492497498054 0.1810654076133775 
		1 0.029057492497498054;
	setAttr -s 18 ".koy[1:17]"  0 -0.99957774191393323 0.98347105608950258 
		0 -0.99957774191393323 0.98347105608950258 0 -0.99957774191393323 0.98347105608950258 
		0 -0.99957774191393323 0.98347105608950258 0 -0.99957774191393323 0.98347105608950258 
		0 -0.99957774191393323;
	setAttr ".pst" 3;
createNode animCurveTA -n "R_Leg_IK_Ctrl_rotateX";
	rename -uid "BC2C861D-4B45-3BDD-7F93-268E955E666A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  -40 0 1 40.404266025842084 3 61.601416360566176
		 5 0 12 0 14 0 16 0 23 40.404266025842084 25 61.601416360566176 27 0 34 0 36 0 38 0
		 45 40.404266025842084 47 61.601416360566176 49 0 56 0 58 0 60 0 67 40.404266025842084
		 69 61.601416360566176 71 0 78 0 80 0 82 0 89 40.404266025842084 91 61.601416360566176
		 93 0 100 0 102 0 104 0 111 40.404266025842084 113 61.601416360566176 115 0 122 0
		 124 0 126 0 133 40.404266025842084;
	setAttr -s 38 ".kit[0:37]"  18 9 9 9 9 9 1 9 
		9 9 9 9 1 9 9 9 9 9 1 9 9 9 9 9 1 
		9 9 9 9 9 1 9 9 9 9 9 1 1;
	setAttr -s 38 ".kot[0:37]"  18 9 9 9 9 9 1 1 
		9 9 9 9 1 1 9 9 9 9 1 1 9 9 9 9 1 
		1 9 9 9 9 1 1 9 9 9 9 1 1;
	setAttr -s 38 ".kix[6:37]"  0.69787634553045341 0.32933186006758342 
		0.23000714380221948 0.3293318600675833 1 1 0.69787634553045341 0.3293318600675833 
		0.23000714380221937 0.32933186006758353 1 1 0.69787634553045341 0.3293318600675833 
		0.2300071438022199 0.3293318600675833 1 1 0.69787634553045341 0.3293318600675833 
		0.23000714380221937 0.32933186006758369 1 1 0.69787634553045341 0.3293318600675833 
		0.2300071438022199 0.3293318600675833 1 1 0.69787634553045341 0.3822006931834519;
	setAttr -s 38 ".kiy[6:37]"  0.71621826725451454 0.94421423731292342 
		-0.97318894044267934 -0.94421423731292342 0 0 0.71621826725451454 0.94421423731292342 
		-0.97318894044267956 -0.94421423731292342 0 0 0.71621826725451454 0.94421423731292342 
		-0.97318894044267934 -0.94421423731292342 0 0 0.71621826725451454 0.94421423731292342 
		-0.97318894044267956 -0.94421423731292331 0 0 0.71621826725451454 0.94421423731292342 
		-0.97318894044267934 -0.94421423731292342 0 0 0.71621826725451454 0.92407934190203012;
	setAttr -s 38 ".kox[6:37]"  0.69787634553045341 0.85746177271985591 
		0.23000714380221948 0.3293318600675833 1 1 0.69787634553045341 0.85746177271985591 
		0.23000714380221937 0.32933186006758353 1 1 0.69787634553045341 0.85746177271985591 
		0.2300071438022199 0.3293318600675833 1 1 0.69787634553045341 0.85746177271985591 
		0.23000714380221937 0.32933186006758369 1 1 0.69787634553045341 0.85746177271985591 
		0.2300071438022199 0.3293318600675833 1 1 0.69787634553045341 0.21974389619649964;
	setAttr -s 38 ".koy[6:37]"  0.71621826725451454 0.51454767351929798 
		-0.97318894044267934 -0.94421423731292342 0 0 0.71621826725451454 0.51454767351929798 
		-0.97318894044267956 -0.94421423731292342 0 0 0.71621826725451454 0.51454767351929798 
		-0.97318894044267934 -0.94421423731292342 0 0 0.71621826725451454 0.51454767351929798 
		-0.97318894044267956 -0.94421423731292331 0 0 0.71621826725451454 0.51454767351929798 
		-0.97318894044267934 -0.94421423731292342 0 0 0.71621826725451454 0.97555759444759704;
	setAttr ".pst" 3;
createNode AlembicNode -n "GarmentsRun_AlembicNode";
	rename -uid "130E9630-48FD-05D7-C308-DC987585C070";
	setAttr ".fn" -type "string" "C:/Users/newsi/Downloads/GarmentsRun.abc";
	setAttr ".fns" -type "stringArray" 1 "C:/Users/newsi/Downloads/GarmentsRun.abc"  ;
createNode polyPlane -n "polyPlane1";
	rename -uid "C24E7AE7-4C43-5103-2E40-85B4C49791F1";
	setAttr ".cuv" 2;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "5313309F-4FDE-AC4D-C1D7-EC970D374320";
	setAttr ".base_color" -type "float3" 0.29166666 0.29166666 0.29166666 ;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "45C1681B-404A-5FF1-4548-358549714CFB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "93D3EC15-4A13-A49C-57F1-E5B312E75688";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "7E686934-4FBB-2F10-DE13-E2AA8AE796E8";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 55 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 58 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 162 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :lightList1;
	setAttr -s 5 ".l";
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
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".fs" 0;
	setAttr ".ef" 132;
	setAttr ".pff" yes;
	setAttr ".ifp" -type "string" "<Scene>/<Scene>";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 2048;
	setAttr ".h" 2048;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
	setAttr -s 5 ".dsm";
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
connectAttr "GarmentsRun_AlembicNode.opoly[0]" "cloth_shape_0.i";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":time1.o" "GarmentsRun_AlembicNode.tm";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "pPlaneShape1.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "aiStandardSurface1.msg" "materialInfo1.t" -na;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape3.ltd" ":lightList1.l" -na;
connectAttr "cloth_shape_0.iog" ":initialShadingGroup.dsm" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight3.iog" ":defaultLightSet.dsm" -na;
// End of WalkerRunCycleWClothes.ma
