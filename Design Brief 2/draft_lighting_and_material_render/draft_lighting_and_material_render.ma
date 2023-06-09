//Maya ASCII 2022 scene
//Name: draft_lighting_and_material_render.ma
//Last modified: Wed, May 31, 2023 11:11:38 AM
//Codeset: 1252
requires maya "2022";
requires -nodeType "polyDisc" "modelingToolkit" "0.0.0.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiAreaLight"
		 -nodeType "aiPhysicalSky" "mtoa" "5.0.0.4";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202303271415-baa69b5798";
fileInfo "osv" "Windows 10 Home Single Language v2009 (Build: 22621)";
fileInfo "UUID" "C249A934-4CD3-7160-D01B-7C970449B1D7";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "958BFA27-47FF-501E-64E3-31BEC21F7803";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 83.8293763188002 9.5104564088594632 -44.705776829059396 ;
	setAttr ".r" -type "double3" -9.0450126747551529 -615.40038972758384 0.001737339091807582 ;
	setAttr ".rp" -type "double3" 1.0658141036401503e-14 -1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr ".rpt" -type "double3" 3.4830287601186275e-13 -2.5011280544770179e-13 4.2321103932745584e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B92CD0B8-43EF-69D0-90DB-40A52048AF2F";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 1;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 128.50654338751352;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -17.160830834080471 -4.5676598572510931 17.365542641618347 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A926BA09-41E6-ECC6-8C67-209CE9784203";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.955003534037075 1012.8912107216374 14.444712737856644 ;
	setAttr ".r" -type "double3" -89.999999999999972 3.975693351829396e-16 -5 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "43759F42-4ADC-CDF3-E4B8-81ACF3E88F76";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 996.2596864461899;
	setAttr ".ow" 265.95306515061401;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -33.874749407729688 20.422593161398709 14.444712737846608 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "AA159BAF-4473-94FB-F596-C6BD1F602CAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -328.842239012101 376.4224617895261 866.44305900220456 ;
	setAttr ".r" -type "double3" -22.499999999999957 -19.99999999999995 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9DAFDC9D-45A0-693A-4CD9-F1A8391CC3D2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 1000.1097623921988;
	setAttr ".ow" 190.77942185353621;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 3.8403135538101196 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "RenderCamera";
	rename -uid "8FE4D20E-4688-4184-AAA9-6D9BA5ABB933";
	setAttr ".t" -type "double3" 28.272188138198239 19.448178210554161 29.268353609242205 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -21.338352729603031 43.799999999999841 2.2033319083287436e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".rp" -type "double3" -2.7755575615628914e-15 1.3322676295501878e-15 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 5.017569778945734e-15 2.4941562100348552e-15 -7.5738698553323528e-16 ;
createNode camera -n "RenderCameraShape" -p "RenderCamera";
	rename -uid "CF33A8E4-46E6-80C2-24CE-9A8CD4C0045F";
	setAttr -k off ".v";
	setAttr ".ovr" 1.3;
	setAttr ".pze" yes;
	setAttr ".zom" 1.5780813869855164;
	setAttr ".fl" 99.989683759444119;
	setAttr ".cs" 4.5;
	setAttr -l on ".coi" 45.462237827296875;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
	setAttr ".ma" no;
	setAttr ".col" -type "float3" 0.091043003 0.18099999 0.18099999 ;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "side" -p "RenderCamera";
	rename -uid "BED6998D-4112-3DFA-0546-83B1E3BAEE2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 658.61453569035405 -273.54584576859605 657.33000911161457 ;
	setAttr ".r" -type "double3" 27.438412659437937 37.84553986744644 17.669190318468285 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "74E931B2-41C1-E3B3-B9EF-71BF4550659E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 1000.1107128237506;
	setAttr ".ow" 148.54072439328579;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 3.8403135538101196 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "LivingRoom";
	rename -uid "8E4B6DDC-47CF-4957-9534-DFAC5D7BF90D";
	setAttr ".t" -type "double3" -9.5047747894682164 -3.4980240051711391 -50.314545537476867 ;
	setAttr ".rp" -type "double3" -8.2669230899823969 -1.148387656779736 30.150715884988557 ;
	setAttr ".sp" -type "double3" -8.2669230899823969 -1.148387656779736 30.150715884988557 ;
createNode transform -n "pasted__Room" -p "LivingRoom";
	rename -uid "2C2ED6C5-4EE7-2E3A-7B22-2F8463F61312";
	setAttr ".t" -type "double3" -7.6560560446119297 -16.110375450529585 30.150715884988553 ;
	setAttr ".s" -type "double3" 1.9687951174999376 1.9687951174999376 2.5019581529404449 ;
	setAttr ".rp" -type "double3" 0 10.04 0 ;
	setAttr ".sp" -type "double3" 0 10.04 0 ;
createNode transform -n "pasted__pasted__pCube1" -p "pasted__Room";
	rename -uid "1B544C4F-4392-EEEC-9A92-DD8007DBA980";
	setAttr ".t" -type "double3" 0 0.04 0 ;
	setAttr ".s" -type "double3" 30 0.08 30 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube1";
	rename -uid "DAC3D59E-4F53-7DA0-6EB6-EF9D8BDF3DD7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pasted__pasted__pCube2" -p "pasted__Room";
	rename -uid "161D7E6B-4503-CF86-EC76-2C80492D6B2D";
	setAttr ".t" -type "double3" 0 12.579999999999973 15.000000000000002 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 30 0.08 25 ;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube2";
	rename -uid "11E9DB74-40CC-51DC-BA9A-6E85D8B8C6DD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube3" -p "pasted__Room";
	rename -uid "53ACDC64-4423-DFE6-92C6-96A47194F819";
	setAttr ".t" -type "double3" 0 12.58 -15 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 30 0.08 25 ;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube3";
	rename -uid "31BC7DD5-4565-C8B6-1E7A-8BBFCB5A91AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube4" -p "pasted__Room";
	rename -uid "387B9FC3-495A-A8CE-E1D6-179193A706B1";
	setAttr ".t" -type "double3" -15 12.58 11.25 ;
	setAttr ".r" -type "double3" 89.999999999997087 -90 4.5799987413074647e-13 ;
	setAttr ".s" -type "double3" 7.5 0.08 25 ;
createNode mesh -n "pasted__pasted__pCubeShape4" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube4";
	rename -uid "AF838F61-4258-B8A3-ABC6-D3AA049F803E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube5" -p "pasted__Room";
	rename -uid "89861281-4011-EB31-22DA-21AF81010482";
	setAttr ".t" -type "double3" -15 12.58 -11.25 ;
	setAttr ".r" -type "double3" 89.999999999997087 -90 4.5799987413074647e-13 ;
	setAttr ".s" -type "double3" 7.6 0.08 25 ;
createNode mesh -n "pasted__pasted__pCubeShape5" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube5";
	rename -uid "42218CD3-4792-2AC8-9D69-BA9E3078FBCE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube6" -p "pasted__Room";
	rename -uid "903486EF-4426-5ED3-9134-22BA8EF4B36C";
	setAttr ".t" -type "double3" -15 1.58 0 ;
	setAttr ".r" -type "double3" 89.999999999997087 -90 4.5799987413074647e-13 ;
	setAttr ".s" -type "double3" 15 0.08 3 ;
createNode mesh -n "pasted__pasted__pCubeShape6" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube6";
	rename -uid "BFA48E2F-482E-15A6-7F9C-06B9EA57C9AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube7" -p "pasted__Room";
	rename -uid "8DB41DFF-4999-E368-2C4D-9EA72BB839A0";
	setAttr ".t" -type "double3" -15 22.58 0 ;
	setAttr ".r" -type "double3" 89.999999999997087 -90 4.5799987413074647e-13 ;
	setAttr ".s" -type "double3" 15 0.08 5 ;
createNode mesh -n "pasted__pasted__pCubeShape7" -p "|LivingRoom|pasted__Room|pasted__pasted__pCube7";
	rename -uid "700918DC-4D2A-E84D-EADB-3F850F4FF09F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube10" -p "pasted__Room";
	rename -uid "318522CB-4449-3E82-E824-9FA9C87F01FD";
	setAttr ".t" -type "double3" -3.6090232520607759e-15 25.04 5.679893046372735e-15 ;
	setAttr ".s" -type "double3" 30 0.08 30 ;
createNode mesh -n "pasted__pasted__pCubeShape10" -p "pasted__pasted__pCube10";
	rename -uid "97CF5BC7-4278-699F-75BF-2995CD9CACC9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Sofa" -p "LivingRoom";
	rename -uid "7245C450-43E7-D167-6D96-AB9A3484F2CF";
	setAttr ".t" -type "double3" -21.473429577056528 -28.087988760850578 36.832108911847143 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.9235121664922497 1.5116747607413008 1.4983701367685482 ;
	setAttr ".rp" -type "double3" 14.216755304036951 9.5897898439583127 20.350634109307869 ;
	setAttr ".sp" -type "double3" 14.216755304036951 9.5897898439583127 20.350634109307869 ;
createNode transform -n "pasted__pasted__pCube1" -p "pasted__Sofa";
	rename -uid "C458DBCE-424E-A9B4-94A7-6CB0726A02D1";
	setAttr ".t" -type "double3" 14.191073836371441 7.8866968234293395 21.375426488767864 ;
	setAttr ".s" -type "double3" 1.066134626384069 1 0.6605880479655194 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1";
	rename -uid "678A2FC2-4B1C-04BD-A90D-4FA5FBC8AEC1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[178]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[179]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[180]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[181]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[182]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[204]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[205]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[206]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[207]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[208]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[230]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[231]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[232]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[233]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[234]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[256]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[257]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[258]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[259]" -type "float3" 0 0.51304352 0 ;
	setAttr ".pt[260]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[282]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[283]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[284]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[285]" -type "float3" 0 0.22325857 0 ;
	setAttr ".pt[286]" -type "float3" 0 0.22325857 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "pasted__Sofa";
	rename -uid "340D4DCF-4B2A-468D-74E4-6CAAE9BB964E";
	setAttr ".t" -type "double3" 14.155725386132302 10.995445732966006 17.338906293776983 ;
	setAttr ".s" -type "double3" 13.689956924466845 8.2320771663342605 2 ;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2";
	rename -uid "388B48C0-4D70-7274-DE05-989FAC56D09B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3125 0.1250000037252903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pCube3" -p "pasted__Sofa";
	rename -uid "D153523A-405B-60AD-C7EA-25A83FC95086";
	setAttr ".t" -type "double3" 8.3269391033522115 9.1495246215112829 21.386601197315823 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 6.5339888408877345 4.5031706934952229 1.5153874400621785 ;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube3";
	rename -uid "7DF1821C-4637-A675-B028-CA88CB5815FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[25:39]" "f[81:85]" "f[104:107]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[40:49]" "f[62]" "f[74:77]" "f[94:96]" "f[109:114]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:14]" "f[89:93]" "f[97:100]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[56:61]" "f[63:65]" "f[78:80]" "f[108]" "f[125:127]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[50:55]" "f[71:73]" "f[86:88]" "f[115:118]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[15:24]" "f[66:70]" "f[101:103]" "f[119:124]";
	setAttr ".pv" -type "double2" 0.5 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.083333336 0.42500001
		 0.083333336 0.47500002 0.083333336 0.52500004 0.083333336 0.57500005 0.083333336
		 0.62500006 0.083333336 0.375 0.16666667 0.42500001 0.16666667 0.47500002 0.16666667
		 0.52500004 0.16666667 0.57500005 0.16666667 0.62500006 0.16666667 0.375 0.25 0.42500001
		 0.25 0.47500002 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.375
		 0.42500001 0.375 0.47500002 0.375 0.52500004 0.375 0.57500005 0.375 0.62500006 0.375
		 0.375 0.5 0.42500001 0.5 0.47500002 0.5 0.52500004 0.5 0.57500005 0.5 0.62500006
		 0.5 0.375 0.58333331 0.42500001 0.58333331 0.47500002 0.58333331 0.52500004 0.58333331
		 0.57500005 0.58333331 0.62500006 0.58333331 0.375 0.66666663 0.42500001 0.66666663
		 0.47500002 0.66666663 0.52500004 0.66666663 0.57500005 0.66666663 0.62500006 0.66666663
		 0.375 0.74999994 0.42500001 0.74999994 0.47500002 0.74999994 0.52500004 0.74999994
		 0.57500005 0.74999994 0.62500006 0.74999994 0.375 0.87499994 0.42500001 0.87499994
		 0.47500002 0.87499994 0.52500004 0.87499994 0.57500005 0.87499994 0.62500006 0.87499994
		 0.375 0.99999994 0.42500001 0.99999994 0.47500002 0.99999994 0.52500004 0.99999994
		 0.57500005 0.99999994 0.62500006 0.99999994 0.875 0 0.75 0 0.875 0.083333336 0.75
		 0.083333336 0.875 0.16666667 0.75 0.16666667 0.875 0.25 0.75 0.25 0.125 0 0.25 0
		 0.125 0.083333336 0.25 0.083333336 0.125 0.16666667 0.25 0.16666667 0.125 0.25 0.25
		 0.25 0.42500001 0.93867075 0.31367087 0 0.375 0.93867075 0.31367087 0.083333336 0.31367087
		 0.16666667 0.31367087 0.25 0.375 0.31132913 0.42500001 0.31132913 0.47500002 0.31132913
		 0.52500004 0.31132913 0.57500005 0.31132913 0.62500006 0.31132913 0.68632913 0.25
		 0.68632913 0.16666667 0.68632913 0.083333336 0.62500006 0.93867075 0.68632913 0 0.57500005
		 0.93867075 0.52500004 0.93867075 0.47500002 0.93867075 0.375 0.014831936 0.31367087
		 0.014831936 0.25 0.014831936 0.125 0.014831936 0.375 0.73516798 0.42500001 0.73516798
		 0.47500002 0.73516798 0.52500004 0.73516798 0.57500005 0.73516798 0.625 0.73516798
		 0.875 0.014831936 0.75 0.014831936 0.68632913 0.014831936 0.625 0.014831936 0.57500005
		 0.014831936 0.52500004 0.014831936 0.47500002 0.014831936 0.42500001 0.014831936
		 0.41585502 0.74999988 0.41585502 0.87499994 0.41585502 0.93867075 0.41585502 0 0.41585502
		 0.99999994 0.41585502 0.014831936 0.41585502 0.083333336 0.41585502 0.16666667 0.41585502
		 0.25 0.41585502 0.31132913 0.41585502 0.375 0.41585502 0.5 0.41585502 0.58333331
		 0.41585502 0.66666663 0.41585502 0.73516798 0.17249878 0.014831936 0.17249878 0 0.375
		 0.7974987 0.41585499 0.7974987 0.42500001 0.7974987 0.47500002 0.7974987 0.52500004
		 0.7974987 0.57500005 0.7974987 0.62500006 0.7974987 0.82750118 0 0.82750118 0.014831936
		 0.82750118 0.083333336 0.82750118 0.16666667 0.62500006 0.45250124 0.82750118 0.25
		 0.57500005 0.45250124 0.52500004 0.45250124 0.47500002 0.45250124 0.42500001 0.45250124
		 0.41585499 0.45250124 0.17249878 0.25 0.375 0.45250124 0.17249878 0.16666667 0.17249878
		 0.083333336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[24]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[25]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[26]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[27]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[28]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[29]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[30]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[31]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[32]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[33]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[34]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[35]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[105]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[106]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr -s 130 ".vt[0:129]"  -0.5 -0.5 0.5 -0.30000001 -0.5 0.5 -0.10000001 -0.49999994 0.5
		 0.099999994 -0.49999994 0.5 0.30000001 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.16666666 0.5
		 -0.30000001 -0.16666666 0.5 -0.10000001 -0.16666666 0.5 0.099999994 -0.16666666 0.5
		 0.30000001 -0.16666666 0.5 0.5 -0.16666666 0.5 -0.50251973 0.1345776 0.39883029 -0.30251977 0.1345776 0.39883029
		 -0.10251976 0.1345776 0.39883029 0.097480245 0.1345776 0.39883029 0.29748026 0.1345776 0.39883029
		 0.49748024 0.1345776 0.39883029 -0.51880836 0.31142572 0.31644702 -0.31880838 0.31142572 0.31644702
		 -0.11880838 0.31142572 0.31644702 0.081191622 0.31142572 0.31644702 0.28119165 0.31142572 0.31644702
		 0.48119164 0.31142572 0.31644702 -0.50664473 0.45224717 -0.084597953 -0.30664474 0.45224717 -0.084597953
		 -0.10664473 0.45224717 -0.084597953 0.093355268 0.45224717 -0.084597953 0.29335529 0.45224717 -0.084597953
		 0.49335527 0.45224717 -0.084597953 -0.49192065 0.57253999 -0.69848943 -0.29192066 0.57253999 -0.69848943
		 -0.091920666 0.57253999 -0.69848943 0.10807934 0.57253999 -0.69848943 0.30807936 0.57253999 -0.69848943
		 0.50807935 0.57253999 -0.69848943 -0.50128424 0.14502257 -0.44935888 -0.30128422 0.14502257 -0.44935888
		 -0.10128424 0.14502257 -0.44935888 0.098715767 0.14502257 -0.44935888 0.2987158 0.14502257 -0.44935888
		 0.49871579 0.14502257 -0.44935888 -0.5 -0.16666669 -0.43606606 -0.30000001 -0.16666669 -0.43606606
		 -0.10000001 -0.16666669 -0.43606606 0.099999994 -0.16666669 -0.43606606 0.30000001 -0.16666669 -0.43606606
		 0.5 -0.16666669 -0.43606606 -0.5 -0.5 -0.5 -0.30000001 -0.5 -0.5 -0.10000001 -0.5 -0.5
		 0.099999994 -0.5 -0.5 0.30000001 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 -0.30000001 -0.5 0
		 -0.10000001 -0.5 0 0.099999994 -0.5 0 0.30000001 -0.5 0 0.5 -0.5 0 0.5 -0.16666666 0
		 0.5 0.16666669 0 -0.5 -0.16666666 0 -0.5 0.16666669 0 -0.30000001 -0.5 0.25468349
		 -0.5 -0.5 0.25468349 -0.5 -0.16666666 0.25468349 -0.50128347 0.15032157 0.20315099
		 -0.51284051 0.38051736 0.11968112 -0.31284049 0.38051736 0.11968112 -0.1128405 0.38051736 0.11968112
		 0.087159514 0.38051736 0.11968112 0.28715953 0.38051736 0.11968112 0.48715952 0.38051736 0.11968112
		 0.49871653 0.15032157 0.20315099 0.5 -0.16666666 0.25468349 0.5 -0.5 0.25468349 0.30000001 -0.5 0.25468349
		 0.099999994 -0.49999997 0.25468349 -0.10000001 -0.49999997 0.25468349 -0.5 -0.44067225 0.5
		 -0.5 -0.44067225 0.25468349 -0.5 -0.44067225 0 -0.5 -0.44067225 -0.48862082 -0.30000001 -0.44067225 -0.48862082
		 -0.10000001 -0.44067225 -0.48862082 0.099999994 -0.44067225 -0.48862082 0.30000001 -0.44067225 -0.48862082
		 0.5 -0.44067225 -0.48862082 0.5 -0.44067225 0 0.5 -0.44067225 0.25468349 0.5 -0.44067225 0.5
		 0.30000001 -0.44067225 0.5 0.099999994 -0.44067219 0.5 -0.10000001 -0.44067219 0.5
		 -0.30000001 -0.44067225 0.5 -0.33657998 -0.5 -0.5 -0.33657998 -0.5 0 -0.33657998 -0.5 0.25468349
		 -0.33657998 -0.5 0.5 -0.33657998 -0.44067225 0.5 -0.33657998 -0.16666666 0.5 -0.33909971 0.1345776 0.39883029
		 -0.35538834 0.31142572 0.31644702 -0.34942043 0.38051736 0.11968112 -0.34322467 0.45224717 -0.084597953
		 -0.32850063 0.57253999 -0.69848943 -0.33786416 0.14502257 -0.44935888 -0.33657998 -0.16666669 -0.43606606
		 -0.33657998 -0.44067225 -0.48862082 -0.5 -0.44067225 -0.3029497 -0.5 -0.5 -0.31000489
		 -0.33657998 -0.5 -0.31000489 -0.30000001 -0.5 -0.31000489 -0.10000001 -0.5 -0.31000489
		 0.099999994 -0.5 -0.31000489 0.30000001 -0.5 -0.31000489 0.5 -0.5 -0.31000489 0.5 -0.44067225 -0.3029497
		 0.5 -0.16666669 -0.27036521 0.49920377 0.15324712 -0.27860689 0.50248432 0.5268299 -0.46521667
		 0.30248436 0.5268299 -0.46521667 0.10248433 0.5268299 -0.46521667 -0.097515672 0.5268299 -0.46521667
		 -0.29751566 0.5268299 -0.46521667 -0.33409563 0.5268299 -0.46521667 -0.49751568 0.5268299 -0.46521667
		 -0.5007962 0.15324712 -0.27860689 -0.5 -0.16666669 -0.27036521;
	setAttr -s 256 ".ed";
	setAttr ".ed[0:165]"  0 99 0 1 2 0 2 3 0 3 4 0 4 5 0 6 101 1 7 8 1 8 9 1
		 9 10 1 10 11 1 12 102 1 13 14 1 14 15 1 15 16 1 16 17 1 18 103 0 19 20 0 20 21 0
		 21 22 0 22 23 0 24 105 1 25 26 1 26 27 1 27 28 1 28 29 1 30 106 0 31 32 0 32 33 0
		 33 34 0 34 35 0 36 107 1 37 38 1 38 39 1 39 40 1 40 41 1 42 108 1 43 44 1 44 45 1
		 45 46 1 46 47 1 48 96 0 49 50 0 50 51 0 51 52 0 52 53 0 54 97 1 55 56 1 56 57 1 57 58 1
		 58 59 1 0 80 0 1 95 1 2 94 1 3 93 1 4 92 1 5 91 0 6 12 0 7 13 1 8 14 1 9 15 1 10 16 1
		 11 17 0 12 18 0 13 19 1 14 20 1 15 21 1 16 22 1 17 23 0 18 68 0 19 69 1 20 70 1 21 71 1
		 22 72 1 23 73 0 24 127 0 25 125 1 26 124 1 27 123 1 28 122 1 29 121 0 30 36 0 31 37 1
		 32 38 1 33 39 1 34 40 1 35 41 0 36 42 0 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 83 0
		 43 84 1 44 85 1 45 86 1 46 87 1 47 88 0 48 111 0 49 113 1 50 114 1 51 115 1 52 116 1
		 53 117 0 54 65 0 55 64 1 56 79 1 57 78 1 58 77 1 59 76 0 47 119 1 60 75 1 41 120 1
		 61 74 1 59 89 1 60 61 1 61 29 1 42 129 1 62 66 1 36 128 1 63 67 1 54 82 1 62 63 1
		 63 24 1 64 1 1 65 0 0 64 98 1 66 6 1 65 81 1 67 12 1 66 67 1 68 24 0 67 68 1 69 25 1
		 68 104 1 70 26 1 69 70 1 71 27 1 70 71 1 72 28 1 71 72 1 73 29 0 72 73 1 74 17 1
		 73 74 1 75 11 1 74 75 1 76 5 0 75 90 1 77 4 1 76 77 1 78 3 1 77 78 1 79 2 1 78 79 1
		 79 64 1 80 6 0 81 66 1 80 81 1 82 62 1 81 82 1 83 48 0 82 110 1 84 49 1 83 109 1
		 85 50 1;
	setAttr ".ed[166:255]" 84 85 1 86 51 1 85 86 1 87 52 1 86 87 1 88 53 0 87 88 1
		 89 60 1 88 118 1 90 76 1 89 90 1 91 11 0 90 91 1 92 10 1 91 92 1 93 9 1 92 93 1 94 8 1
		 93 94 1 95 7 1 94 95 1 95 100 1 96 49 0 97 55 1 96 112 1 98 65 1 97 98 1 99 1 0 98 99 1
		 100 80 1 99 100 1 101 7 1 100 101 1 102 13 1 101 102 1 103 19 0 102 103 1 104 69 1
		 103 104 1 105 25 1 104 105 1 106 31 0 105 126 1 107 37 1 106 107 1 108 43 1 107 108 1
		 109 84 1 108 109 1 109 96 1 110 83 1 111 54 0 110 111 1 112 97 1 111 112 1 113 55 1
		 112 113 1 114 56 1 113 114 1 115 57 1 114 115 1 116 58 1 115 116 1 117 59 0 116 117 1
		 118 89 1 117 118 1 119 60 1 118 119 1 120 61 1 119 120 1 121 35 0 120 121 1 122 34 1
		 121 122 1 123 33 1 122 123 1 124 32 1 123 124 1 125 31 1 124 125 1 126 106 1 125 126 1
		 127 30 0 126 127 1 128 63 1 127 128 1 129 62 1 128 129 1 129 110 1;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 196 195 -51
		mu 0 4 0 123 125 102
		f 4 1 52 186 -52
		mu 0 4 1 2 118 119
		f 4 2 53 184 -53
		mu 0 4 2 3 117 118
		f 4 3 54 182 -54
		mu 0 4 3 4 116 117
		f 4 4 55 180 -55
		mu 0 4 4 5 115 116
		f 4 5 200 -11 -57
		mu 0 4 6 126 127 12
		f 4 6 58 -12 -58
		mu 0 4 7 8 14 13
		f 4 7 59 -13 -59
		mu 0 4 8 9 15 14
		f 4 8 60 -14 -60
		mu 0 4 9 10 16 15
		f 4 9 61 -15 -61
		mu 0 4 10 11 17 16
		f 4 10 202 -16 -63
		mu 0 4 12 127 128 18
		f 4 11 64 -17 -64
		mu 0 4 13 14 20 19
		f 4 12 65 -18 -65
		mu 0 4 14 15 21 20
		f 4 13 66 -19 -66
		mu 0 4 15 16 22 21
		f 4 14 67 -20 -67
		mu 0 4 16 17 23 22
		f 4 134 206 -21 -132
		mu 0 4 88 129 130 24
		f 4 136 135 -22 -134
		mu 0 4 89 90 26 25
		f 4 138 137 -23 -136
		mu 0 4 90 91 27 26
		f 4 140 139 -24 -138
		mu 0 4 91 92 28 27
		f 4 142 141 -25 -140
		mu 0 4 92 93 29 28
		f 4 20 208 250 -75
		mu 0 4 24 130 154 156
		f 4 21 76 246 -76
		mu 0 4 25 26 152 153
		f 4 22 77 244 -77
		mu 0 4 26 27 151 152
		f 4 23 78 242 -78
		mu 0 4 27 28 150 151
		f 4 24 79 240 -79
		mu 0 4 28 29 148 150
		f 4 25 210 -31 -81
		mu 0 4 30 131 132 36
		f 4 26 82 -32 -82
		mu 0 4 31 32 38 37
		f 4 27 83 -33 -83
		mu 0 4 32 33 39 38
		f 4 28 84 -34 -84
		mu 0 4 33 34 40 39
		f 4 29 85 -35 -85
		mu 0 4 34 35 41 40
		f 4 30 212 -36 -87
		mu 0 4 36 132 133 42
		f 4 31 88 -37 -88
		mu 0 4 37 38 44 43
		f 4 32 89 -38 -89
		mu 0 4 38 39 45 44
		f 4 33 90 -39 -90
		mu 0 4 39 40 46 45
		f 4 34 91 -40 -91
		mu 0 4 40 41 47 46
		f 4 164 215 -41 -162
		mu 0 4 106 134 120 48
		f 4 166 165 -42 -164
		mu 0 4 107 108 50 49
		f 4 168 167 -43 -166
		mu 0 4 108 109 51 50
		f 4 170 169 -44 -168
		mu 0 4 109 110 52 51
		f 4 172 171 -45 -170
		mu 0 4 110 111 53 52
		f 4 220 219 -46 -218
		mu 0 4 137 138 121 54
		f 4 224 223 -47 -222
		mu 0 4 139 140 56 55
		f 4 226 225 -48 -224
		mu 0 4 140 141 57 56
		f 4 228 227 -49 -226
		mu 0 4 141 142 58 57
		f 4 230 229 -50 -228
		mu 0 4 142 143 59 58
		f 4 45 192 191 -105
		mu 0 4 54 121 122 84
		f 4 46 106 155 -106
		mu 0 4 55 56 101 82
		f 4 47 107 154 -107
		mu 0 4 56 57 100 101
		f 4 48 108 152 -108
		mu 0 4 57 58 99 100
		f 4 49 109 150 -109
		mu 0 4 58 59 97 99
		f 4 -230 232 231 -115
		mu 0 4 67 144 145 113
		f 4 -110 114 176 175
		mu 0 4 98 67 113 114
		f 4 -234 236 235 -116
		mu 0 4 69 146 147 71
		f 4 -112 115 113 146
		mu 0 4 96 69 71 95
		f 4 -236 238 -80 -117
		mu 0 4 71 147 149 73
		f 4 -114 116 -142 144
		mu 0 4 95 71 73 94
		f 4 217 121 162 218
		mu 0 4 136 75 104 135
		f 4 104 128 160 -122
		mu 0 4 75 83 103 104
		f 4 253 122 -252 254
		mu 0 4 158 77 79 157
		f 4 118 130 -121 -123
		mu 0 4 77 85 86 79
		f 4 251 123 74 252
		mu 0 4 157 79 81 155
		f 4 120 132 131 -124
		mu 0 4 79 86 87 81
		f 4 -192 194 -1 -126
		mu 0 4 84 122 124 60
		f 4 -129 125 50 158
		mu 0 4 103 83 0 102
		f 4 -131 127 56 -130
		mu 0 4 86 85 6 12
		f 4 -133 129 62 68
		mu 0 4 87 86 12 18
		f 4 15 204 -135 -69
		mu 0 4 18 128 129 88
		f 4 16 70 -137 -70
		mu 0 4 19 20 90 89
		f 4 17 71 -139 -71
		mu 0 4 20 21 91 90
		f 4 18 72 -141 -72
		mu 0 4 21 22 92 91
		f 4 19 73 -143 -73
		mu 0 4 22 23 93 92
		f 4 -144 -145 -74 -68
		mu 0 4 17 95 94 23
		f 4 -146 -147 143 -62
		mu 0 4 11 96 95 17
		f 4 -148 -176 178 -56
		mu 0 4 5 98 114 115
		f 4 -151 147 -5 -150
		mu 0 4 99 97 65 64
		f 4 -153 149 -4 -152
		mu 0 4 100 99 64 63
		f 4 -155 151 -3 -154
		mu 0 4 101 100 63 62
		f 4 -156 153 -2 -125
		mu 0 4 82 101 62 61
		f 4 -158 -159 156 -128
		mu 0 4 85 103 102 6
		f 4 -161 157 -119 -160
		mu 0 4 104 103 85 77
		f 4 255 -163 159 -254
		mu 0 4 158 135 104 77
		f 4 35 214 -165 -93
		mu 0 4 42 133 134 106
		f 4 36 94 -167 -94
		mu 0 4 43 44 108 107
		f 4 37 95 -169 -95
		mu 0 4 44 45 109 108
		f 4 38 96 -171 -96
		mu 0 4 45 46 110 109
		f 4 39 97 -173 -97
		mu 0 4 46 47 111 110
		f 4 -232 234 233 -174
		mu 0 4 113 145 146 69
		f 4 -177 173 111 148
		mu 0 4 114 113 69 96
		f 4 -179 -149 145 -178
		mu 0 4 115 114 96 11
		f 4 -181 177 -10 -180
		mu 0 4 116 115 11 10
		f 4 -183 179 -9 -182
		mu 0 4 117 116 10 9
		f 4 -185 181 -8 -184
		mu 0 4 118 117 9 8
		f 4 -187 183 -7 -186
		mu 0 4 119 118 8 7
		f 4 -196 198 -6 -157
		mu 0 4 102 125 126 6
		f 4 222 221 -190 -220
		mu 0 4 138 139 55 121
		f 4 -193 189 105 126
		mu 0 4 122 121 55 82
		f 4 -195 -127 124 -194
		mu 0 4 124 122 82 61
		f 4 -197 193 51 187
		mu 0 4 125 123 1 119
		f 4 -199 -188 185 -198
		mu 0 4 126 125 119 7
		f 4 -201 197 57 -200
		mu 0 4 127 126 7 13
		f 4 -203 199 63 -202
		mu 0 4 128 127 13 19
		f 4 -205 201 69 -204
		mu 0 4 129 128 19 89
		f 4 -207 203 133 -206
		mu 0 4 130 129 89 25
		f 4 -209 205 75 248
		mu 0 4 154 130 25 153
		f 4 -211 207 81 -210
		mu 0 4 132 131 31 37
		f 4 -213 209 87 -212
		mu 0 4 133 132 37 43
		f 4 -215 211 93 -214
		mu 0 4 134 133 43 107
		f 4 -216 213 163 -189
		mu 0 4 120 134 107 49
		f 4 98 -219 216 161
		mu 0 4 74 136 135 105
		f 4 40 190 -221 -99
		mu 0 4 48 120 138 137
		f 4 188 99 -223 -191
		mu 0 4 120 49 139 138
		f 4 41 100 -225 -100
		mu 0 4 49 50 140 139
		f 4 42 101 -227 -101
		mu 0 4 50 51 141 140
		f 4 43 102 -229 -102
		mu 0 4 51 52 142 141
		f 4 44 103 -231 -103
		mu 0 4 52 53 143 142
		f 4 -233 -104 -172 174
		mu 0 4 145 144 66 112
		f 4 -235 -175 -98 110
		mu 0 4 146 145 112 68
		f 4 -237 -111 -92 112
		mu 0 4 147 146 68 70
		f 4 -239 -113 -86 -238
		mu 0 4 149 147 70 72
		f 4 -241 237 -30 -240
		mu 0 4 150 148 35 34
		f 4 -243 239 -29 -242
		mu 0 4 151 150 34 33
		f 4 -245 241 -28 -244
		mu 0 4 152 151 33 32
		f 4 -247 243 -27 -246
		mu 0 4 153 152 32 31
		f 4 -248 -249 245 -208
		mu 0 4 131 154 153 31
		f 4 -251 247 -26 -250
		mu 0 4 156 154 131 30
		f 4 119 -253 249 80
		mu 0 4 78 157 155 80
		f 4 117 -255 -120 86
		mu 0 4 76 158 157 78
		f 4 -217 -256 -118 92
		mu 0 4 105 135 158 76;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pCube4" -p "pasted__Sofa";
	rename -uid "46F650FE-450E-C007-FC4E-718FCD010127";
	setAttr ".t" -type "double3" 20.106571504721689 9.1495246215112829 21.386601197315823 ;
	setAttr ".r" -type "double3" 0 270 0 ;
	setAttr ".s" -type "double3" 6.5339888408877345 4.5029944702376099 1.5153874400621785 ;
createNode mesh -n "pasted__pasted__pCubeShape4" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube4";
	rename -uid "025AAD42-49F2-D658-BCF9-3BB3D188596F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[25:39]" "f[81:85]" "f[104:107]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[40:49]" "f[62]" "f[74:77]" "f[94:96]" "f[109:114]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:14]" "f[89:93]" "f[97:100]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[56:61]" "f[63:65]" "f[78:80]" "f[108]" "f[125:127]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[50:55]" "f[71:73]" "f[86:88]" "f[115:118]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[15:24]" "f[66:70]" "f[101:103]" "f[119:124]";
	setAttr ".pv" -type "double2" 0.5 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.083333336 0.42500001
		 0.083333336 0.47500002 0.083333336 0.52500004 0.083333336 0.57500005 0.083333336
		 0.62500006 0.083333336 0.375 0.16666667 0.42500001 0.16666667 0.47500002 0.16666667
		 0.52500004 0.16666667 0.57500005 0.16666667 0.62500006 0.16666667 0.375 0.25 0.42500001
		 0.25 0.47500002 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.375
		 0.42500001 0.375 0.47500002 0.375 0.52500004 0.375 0.57500005 0.375 0.62500006 0.375
		 0.375 0.5 0.42500001 0.5 0.47500002 0.5 0.52500004 0.5 0.57500005 0.5 0.62500006
		 0.5 0.375 0.58333331 0.42500001 0.58333331 0.47500002 0.58333331 0.52500004 0.58333331
		 0.57500005 0.58333331 0.62500006 0.58333331 0.375 0.66666663 0.42500001 0.66666663
		 0.47500002 0.66666663 0.52500004 0.66666663 0.57500005 0.66666663 0.62500006 0.66666663
		 0.375 0.74999994 0.42500001 0.74999994 0.47500002 0.74999994 0.52500004 0.74999994
		 0.57500005 0.74999994 0.62500006 0.74999994 0.375 0.87499994 0.42500001 0.87499994
		 0.47500002 0.87499994 0.52500004 0.87499994 0.57500005 0.87499994 0.62500006 0.87499994
		 0.375 0.99999994 0.42500001 0.99999994 0.47500002 0.99999994 0.52500004 0.99999994
		 0.57500005 0.99999994 0.62500006 0.99999994 0.875 0 0.75 0 0.875 0.083333336 0.75
		 0.083333336 0.875 0.16666667 0.75 0.16666667 0.875 0.25 0.75 0.25 0.125 0 0.25 0
		 0.125 0.083333336 0.25 0.083333336 0.125 0.16666667 0.25 0.16666667 0.125 0.25 0.25
		 0.25 0.42500001 0.93867075 0.31367087 0 0.375 0.93867075 0.31367087 0.083333336 0.31367087
		 0.16666667 0.31367087 0.25 0.375 0.31132913 0.42500001 0.31132913 0.47500002 0.31132913
		 0.52500004 0.31132913 0.57500005 0.31132913 0.62500006 0.31132913 0.68632913 0.25
		 0.68632913 0.16666667 0.68632913 0.083333336 0.62500006 0.93867075 0.68632913 0 0.57500005
		 0.93867075 0.52500004 0.93867075 0.47500002 0.93867075 0.375 0.014831936 0.31367087
		 0.014831936 0.25 0.014831936 0.125 0.014831936 0.375 0.73516798 0.42500001 0.73516798
		 0.47500002 0.73516798 0.52500004 0.73516798 0.57500005 0.73516798 0.625 0.73516798
		 0.875 0.014831936 0.75 0.014831936 0.68632913 0.014831936 0.625 0.014831936 0.57500005
		 0.014831936 0.52500004 0.014831936 0.47500002 0.014831936 0.42500001 0.014831936
		 0.41585502 0.74999988 0.41585502 0.87499994 0.41585502 0.93867075 0.41585502 0 0.41585502
		 0.99999994 0.41585502 0.014831936 0.41585502 0.083333336 0.41585502 0.16666667 0.41585502
		 0.25 0.41585502 0.31132913 0.41585502 0.375 0.41585502 0.5 0.41585502 0.58333331
		 0.41585502 0.66666663 0.41585502 0.73516798 0.17249878 0.014831936 0.17249878 0 0.375
		 0.7974987 0.41585499 0.7974987 0.42500001 0.7974987 0.47500002 0.7974987 0.52500004
		 0.7974987 0.57500005 0.7974987 0.62500006 0.7974987 0.82750118 0 0.82750118 0.014831936
		 0.82750118 0.083333336 0.82750118 0.16666667 0.62500006 0.45250124 0.82750118 0.25
		 0.57500005 0.45250124 0.52500004 0.45250124 0.47500002 0.45250124 0.42500001 0.45250124
		 0.41585499 0.45250124 0.17249878 0.25 0.375 0.45250124 0.17249878 0.16666667 0.17249878
		 0.083333336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[24]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[25]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[26]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[27]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[28]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[29]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[30]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[31]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[32]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[33]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[34]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[35]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr ".pt[105]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[106]" -type "float3" 0.016992601 0.0055487817 -0.39924031 ;
	setAttr -s 130 ".vt[0:129]"  -0.5 -0.5 0.5 -0.30000001 -0.5 0.5 -0.10000001 -0.49999994 0.5
		 0.099999994 -0.49999994 0.5 0.30000001 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.16666666 0.5
		 -0.30000001 -0.16666666 0.5 -0.10000001 -0.16666666 0.5 0.099999994 -0.16666666 0.5
		 0.30000001 -0.16666666 0.5 0.5 -0.16666666 0.5 -0.50251973 0.1345776 0.39883029 -0.30251977 0.1345776 0.39883029
		 -0.10251976 0.1345776 0.39883029 0.097480245 0.1345776 0.39883029 0.29748026 0.1345776 0.39883029
		 0.49748024 0.1345776 0.39883029 -0.51880836 0.31142572 0.31644702 -0.31880838 0.31142572 0.31644702
		 -0.11880838 0.31142572 0.31644702 0.081191622 0.31142572 0.31644702 0.28119165 0.31142572 0.31644702
		 0.48119164 0.31142572 0.31644702 -0.50664473 0.45224717 -0.084597953 -0.30664474 0.45224717 -0.084597953
		 -0.10664473 0.45224717 -0.084597953 0.093355268 0.45224717 -0.084597953 0.29335529 0.45224717 -0.084597953
		 0.49335527 0.45224717 -0.084597953 -0.49192065 0.57253999 -0.69848943 -0.29192066 0.57253999 -0.69848943
		 -0.091920666 0.57253999 -0.69848943 0.10807934 0.57253999 -0.69848943 0.30807936 0.57253999 -0.69848943
		 0.50807935 0.57253999 -0.69848943 -0.50128424 0.14502257 -0.44935888 -0.30128422 0.14502257 -0.44935888
		 -0.10128424 0.14502257 -0.44935888 0.098715767 0.14502257 -0.44935888 0.2987158 0.14502257 -0.44935888
		 0.49871579 0.14502257 -0.44935888 -0.5 -0.16666669 -0.43606606 -0.30000001 -0.16666669 -0.43606606
		 -0.10000001 -0.16666669 -0.43606606 0.099999994 -0.16666669 -0.43606606 0.30000001 -0.16666669 -0.43606606
		 0.5 -0.16666669 -0.43606606 -0.5 -0.5 -0.5 -0.30000001 -0.5 -0.5 -0.10000001 -0.5 -0.5
		 0.099999994 -0.5 -0.5 0.30000001 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 -0.30000001 -0.5 0
		 -0.10000001 -0.5 0 0.099999994 -0.5 0 0.30000001 -0.5 0 0.5 -0.5 0 0.5 -0.16666666 0
		 0.5 0.16666669 0 -0.5 -0.16666666 0 -0.5 0.16666669 0 -0.30000001 -0.5 0.25468349
		 -0.5 -0.5 0.25468349 -0.5 -0.16666666 0.25468349 -0.50128347 0.15032157 0.20315099
		 -0.51284051 0.38051736 0.11968112 -0.31284049 0.38051736 0.11968112 -0.1128405 0.38051736 0.11968112
		 0.087159514 0.38051736 0.11968112 0.28715953 0.38051736 0.11968112 0.48715952 0.38051736 0.11968112
		 0.49871653 0.15032157 0.20315099 0.5 -0.16666666 0.25468349 0.5 -0.5 0.25468349 0.30000001 -0.5 0.25468349
		 0.099999994 -0.49999997 0.25468349 -0.10000001 -0.49999997 0.25468349 -0.5 -0.44067225 0.5
		 -0.5 -0.44067225 0.25468349 -0.5 -0.44067225 0 -0.5 -0.44067225 -0.48862082 -0.30000001 -0.44067225 -0.48862082
		 -0.10000001 -0.44067225 -0.48862082 0.099999994 -0.44067225 -0.48862082 0.30000001 -0.44067225 -0.48862082
		 0.5 -0.44067225 -0.48862082 0.5 -0.44067225 0 0.5 -0.44067225 0.25468349 0.5 -0.44067225 0.5
		 0.30000001 -0.44067225 0.5 0.099999994 -0.44067219 0.5 -0.10000001 -0.44067219 0.5
		 -0.30000001 -0.44067225 0.5 -0.33657998 -0.5 -0.5 -0.33657998 -0.5 0 -0.33657998 -0.5 0.25468349
		 -0.33657998 -0.5 0.5 -0.33657998 -0.44067225 0.5 -0.33657998 -0.16666666 0.5 -0.33909971 0.1345776 0.39883029
		 -0.35538834 0.31142572 0.31644702 -0.34942043 0.38051736 0.11968112 -0.34322467 0.45224717 -0.084597953
		 -0.32850063 0.57253999 -0.69848943 -0.33786416 0.14502257 -0.44935888 -0.33657998 -0.16666669 -0.43606606
		 -0.33657998 -0.44067225 -0.48862082 -0.5 -0.44067225 -0.3029497 -0.5 -0.5 -0.31000489
		 -0.33657998 -0.5 -0.31000489 -0.30000001 -0.5 -0.31000489 -0.10000001 -0.5 -0.31000489
		 0.099999994 -0.5 -0.31000489 0.30000001 -0.5 -0.31000489 0.5 -0.5 -0.31000489 0.5 -0.44067225 -0.3029497
		 0.5 -0.16666669 -0.27036521 0.49920377 0.15324712 -0.27860689 0.50248432 0.5268299 -0.46521667
		 0.30248436 0.5268299 -0.46521667 0.10248433 0.5268299 -0.46521667 -0.097515672 0.5268299 -0.46521667
		 -0.29751566 0.5268299 -0.46521667 -0.33409563 0.5268299 -0.46521667 -0.49751568 0.5268299 -0.46521667
		 -0.5007962 0.15324712 -0.27860689 -0.5 -0.16666669 -0.27036521;
	setAttr -s 256 ".ed";
	setAttr ".ed[0:165]"  0 99 0 1 2 0 2 3 0 3 4 0 4 5 0 6 101 1 7 8 1 8 9 1
		 9 10 1 10 11 1 12 102 1 13 14 1 14 15 1 15 16 1 16 17 1 18 103 0 19 20 0 20 21 0
		 21 22 0 22 23 0 24 105 1 25 26 1 26 27 1 27 28 1 28 29 1 30 106 0 31 32 0 32 33 0
		 33 34 0 34 35 0 36 107 1 37 38 1 38 39 1 39 40 1 40 41 1 42 108 1 43 44 1 44 45 1
		 45 46 1 46 47 1 48 96 0 49 50 0 50 51 0 51 52 0 52 53 0 54 97 1 55 56 1 56 57 1 57 58 1
		 58 59 1 0 80 0 1 95 1 2 94 1 3 93 1 4 92 1 5 91 0 6 12 0 7 13 1 8 14 1 9 15 1 10 16 1
		 11 17 0 12 18 0 13 19 1 14 20 1 15 21 1 16 22 1 17 23 0 18 68 0 19 69 1 20 70 1 21 71 1
		 22 72 1 23 73 0 24 127 0 25 125 1 26 124 1 27 123 1 28 122 1 29 121 0 30 36 0 31 37 1
		 32 38 1 33 39 1 34 40 1 35 41 0 36 42 0 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 83 0
		 43 84 1 44 85 1 45 86 1 46 87 1 47 88 0 48 111 0 49 113 1 50 114 1 51 115 1 52 116 1
		 53 117 0 54 65 0 55 64 1 56 79 1 57 78 1 58 77 1 59 76 0 47 119 1 60 75 1 41 120 1
		 61 74 1 59 89 1 60 61 1 61 29 1 42 129 1 62 66 1 36 128 1 63 67 1 54 82 1 62 63 1
		 63 24 1 64 1 1 65 0 0 64 98 1 66 6 1 65 81 1 67 12 1 66 67 1 68 24 0 67 68 1 69 25 1
		 68 104 1 70 26 1 69 70 1 71 27 1 70 71 1 72 28 1 71 72 1 73 29 0 72 73 1 74 17 1
		 73 74 1 75 11 1 74 75 1 76 5 0 75 90 1 77 4 1 76 77 1 78 3 1 77 78 1 79 2 1 78 79 1
		 79 64 1 80 6 0 81 66 1 80 81 1 82 62 1 81 82 1 83 48 0 82 110 1 84 49 1 83 109 1
		 85 50 1;
	setAttr ".ed[166:255]" 84 85 1 86 51 1 85 86 1 87 52 1 86 87 1 88 53 0 87 88 1
		 89 60 1 88 118 1 90 76 1 89 90 1 91 11 0 90 91 1 92 10 1 91 92 1 93 9 1 92 93 1 94 8 1
		 93 94 1 95 7 1 94 95 1 95 100 1 96 49 0 97 55 1 96 112 1 98 65 1 97 98 1 99 1 0 98 99 1
		 100 80 1 99 100 1 101 7 1 100 101 1 102 13 1 101 102 1 103 19 0 102 103 1 104 69 1
		 103 104 1 105 25 1 104 105 1 106 31 0 105 126 1 107 37 1 106 107 1 108 43 1 107 108 1
		 109 84 1 108 109 1 109 96 1 110 83 1 111 54 0 110 111 1 112 97 1 111 112 1 113 55 1
		 112 113 1 114 56 1 113 114 1 115 57 1 114 115 1 116 58 1 115 116 1 117 59 0 116 117 1
		 118 89 1 117 118 1 119 60 1 118 119 1 120 61 1 119 120 1 121 35 0 120 121 1 122 34 1
		 121 122 1 123 33 1 122 123 1 124 32 1 123 124 1 125 31 1 124 125 1 126 106 1 125 126 1
		 127 30 0 126 127 1 128 63 1 127 128 1 129 62 1 128 129 1 129 110 1;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 196 195 -51
		mu 0 4 0 123 125 102
		f 4 1 52 186 -52
		mu 0 4 1 2 118 119
		f 4 2 53 184 -53
		mu 0 4 2 3 117 118
		f 4 3 54 182 -54
		mu 0 4 3 4 116 117
		f 4 4 55 180 -55
		mu 0 4 4 5 115 116
		f 4 5 200 -11 -57
		mu 0 4 6 126 127 12
		f 4 6 58 -12 -58
		mu 0 4 7 8 14 13
		f 4 7 59 -13 -59
		mu 0 4 8 9 15 14
		f 4 8 60 -14 -60
		mu 0 4 9 10 16 15
		f 4 9 61 -15 -61
		mu 0 4 10 11 17 16
		f 4 10 202 -16 -63
		mu 0 4 12 127 128 18
		f 4 11 64 -17 -64
		mu 0 4 13 14 20 19
		f 4 12 65 -18 -65
		mu 0 4 14 15 21 20
		f 4 13 66 -19 -66
		mu 0 4 15 16 22 21
		f 4 14 67 -20 -67
		mu 0 4 16 17 23 22
		f 4 134 206 -21 -132
		mu 0 4 88 129 130 24
		f 4 136 135 -22 -134
		mu 0 4 89 90 26 25
		f 4 138 137 -23 -136
		mu 0 4 90 91 27 26
		f 4 140 139 -24 -138
		mu 0 4 91 92 28 27
		f 4 142 141 -25 -140
		mu 0 4 92 93 29 28
		f 4 20 208 250 -75
		mu 0 4 24 130 154 156
		f 4 21 76 246 -76
		mu 0 4 25 26 152 153
		f 4 22 77 244 -77
		mu 0 4 26 27 151 152
		f 4 23 78 242 -78
		mu 0 4 27 28 150 151
		f 4 24 79 240 -79
		mu 0 4 28 29 148 150
		f 4 25 210 -31 -81
		mu 0 4 30 131 132 36
		f 4 26 82 -32 -82
		mu 0 4 31 32 38 37
		f 4 27 83 -33 -83
		mu 0 4 32 33 39 38
		f 4 28 84 -34 -84
		mu 0 4 33 34 40 39
		f 4 29 85 -35 -85
		mu 0 4 34 35 41 40
		f 4 30 212 -36 -87
		mu 0 4 36 132 133 42
		f 4 31 88 -37 -88
		mu 0 4 37 38 44 43
		f 4 32 89 -38 -89
		mu 0 4 38 39 45 44
		f 4 33 90 -39 -90
		mu 0 4 39 40 46 45
		f 4 34 91 -40 -91
		mu 0 4 40 41 47 46
		f 4 164 215 -41 -162
		mu 0 4 106 134 120 48
		f 4 166 165 -42 -164
		mu 0 4 107 108 50 49
		f 4 168 167 -43 -166
		mu 0 4 108 109 51 50
		f 4 170 169 -44 -168
		mu 0 4 109 110 52 51
		f 4 172 171 -45 -170
		mu 0 4 110 111 53 52
		f 4 220 219 -46 -218
		mu 0 4 137 138 121 54
		f 4 224 223 -47 -222
		mu 0 4 139 140 56 55
		f 4 226 225 -48 -224
		mu 0 4 140 141 57 56
		f 4 228 227 -49 -226
		mu 0 4 141 142 58 57
		f 4 230 229 -50 -228
		mu 0 4 142 143 59 58
		f 4 45 192 191 -105
		mu 0 4 54 121 122 84
		f 4 46 106 155 -106
		mu 0 4 55 56 101 82
		f 4 47 107 154 -107
		mu 0 4 56 57 100 101
		f 4 48 108 152 -108
		mu 0 4 57 58 99 100
		f 4 49 109 150 -109
		mu 0 4 58 59 97 99
		f 4 -230 232 231 -115
		mu 0 4 67 144 145 113
		f 4 -110 114 176 175
		mu 0 4 98 67 113 114
		f 4 -234 236 235 -116
		mu 0 4 69 146 147 71
		f 4 -112 115 113 146
		mu 0 4 96 69 71 95
		f 4 -236 238 -80 -117
		mu 0 4 71 147 149 73
		f 4 -114 116 -142 144
		mu 0 4 95 71 73 94
		f 4 217 121 162 218
		mu 0 4 136 75 104 135
		f 4 104 128 160 -122
		mu 0 4 75 83 103 104
		f 4 253 122 -252 254
		mu 0 4 158 77 79 157
		f 4 118 130 -121 -123
		mu 0 4 77 85 86 79
		f 4 251 123 74 252
		mu 0 4 157 79 81 155
		f 4 120 132 131 -124
		mu 0 4 79 86 87 81
		f 4 -192 194 -1 -126
		mu 0 4 84 122 124 60
		f 4 -129 125 50 158
		mu 0 4 103 83 0 102
		f 4 -131 127 56 -130
		mu 0 4 86 85 6 12
		f 4 -133 129 62 68
		mu 0 4 87 86 12 18
		f 4 15 204 -135 -69
		mu 0 4 18 128 129 88
		f 4 16 70 -137 -70
		mu 0 4 19 20 90 89
		f 4 17 71 -139 -71
		mu 0 4 20 21 91 90
		f 4 18 72 -141 -72
		mu 0 4 21 22 92 91
		f 4 19 73 -143 -73
		mu 0 4 22 23 93 92
		f 4 -144 -145 -74 -68
		mu 0 4 17 95 94 23
		f 4 -146 -147 143 -62
		mu 0 4 11 96 95 17
		f 4 -148 -176 178 -56
		mu 0 4 5 98 114 115
		f 4 -151 147 -5 -150
		mu 0 4 99 97 65 64
		f 4 -153 149 -4 -152
		mu 0 4 100 99 64 63
		f 4 -155 151 -3 -154
		mu 0 4 101 100 63 62
		f 4 -156 153 -2 -125
		mu 0 4 82 101 62 61
		f 4 -158 -159 156 -128
		mu 0 4 85 103 102 6
		f 4 -161 157 -119 -160
		mu 0 4 104 103 85 77
		f 4 255 -163 159 -254
		mu 0 4 158 135 104 77
		f 4 35 214 -165 -93
		mu 0 4 42 133 134 106
		f 4 36 94 -167 -94
		mu 0 4 43 44 108 107
		f 4 37 95 -169 -95
		mu 0 4 44 45 109 108
		f 4 38 96 -171 -96
		mu 0 4 45 46 110 109
		f 4 39 97 -173 -97
		mu 0 4 46 47 111 110
		f 4 -232 234 233 -174
		mu 0 4 113 145 146 69
		f 4 -177 173 111 148
		mu 0 4 114 113 69 96
		f 4 -179 -149 145 -178
		mu 0 4 115 114 96 11
		f 4 -181 177 -10 -180
		mu 0 4 116 115 11 10
		f 4 -183 179 -9 -182
		mu 0 4 117 116 10 9
		f 4 -185 181 -8 -184
		mu 0 4 118 117 9 8
		f 4 -187 183 -7 -186
		mu 0 4 119 118 8 7
		f 4 -196 198 -6 -157
		mu 0 4 102 125 126 6
		f 4 222 221 -190 -220
		mu 0 4 138 139 55 121
		f 4 -193 189 105 126
		mu 0 4 122 121 55 82
		f 4 -195 -127 124 -194
		mu 0 4 124 122 82 61
		f 4 -197 193 51 187
		mu 0 4 125 123 1 119
		f 4 -199 -188 185 -198
		mu 0 4 126 125 119 7
		f 4 -201 197 57 -200
		mu 0 4 127 126 7 13
		f 4 -203 199 63 -202
		mu 0 4 128 127 13 19
		f 4 -205 201 69 -204
		mu 0 4 129 128 19 89
		f 4 -207 203 133 -206
		mu 0 4 130 129 89 25
		f 4 -209 205 75 248
		mu 0 4 154 130 25 153
		f 4 -211 207 81 -210
		mu 0 4 132 131 31 37
		f 4 -213 209 87 -212
		mu 0 4 133 132 37 43
		f 4 -215 211 93 -214
		mu 0 4 134 133 43 107
		f 4 -216 213 163 -189
		mu 0 4 120 134 107 49
		f 4 98 -219 216 161
		mu 0 4 74 136 135 105
		f 4 40 190 -221 -99
		mu 0 4 48 120 138 137
		f 4 188 99 -223 -191
		mu 0 4 120 49 139 138
		f 4 41 100 -225 -100
		mu 0 4 49 50 140 139
		f 4 42 101 -227 -101
		mu 0 4 50 51 141 140
		f 4 43 102 -229 -102
		mu 0 4 51 52 142 141
		f 4 44 103 -231 -103
		mu 0 4 52 53 143 142
		f 4 -233 -104 -172 174
		mu 0 4 145 144 66 112
		f 4 -235 -175 -98 110
		mu 0 4 146 145 112 68
		f 4 -237 -111 -92 112
		mu 0 4 147 146 68 70
		f 4 -239 -113 -86 -238
		mu 0 4 149 147 70 72
		f 4 -241 237 -30 -240
		mu 0 4 150 148 35 34
		f 4 -243 239 -29 -242
		mu 0 4 151 150 34 33
		f 4 -245 241 -28 -244
		mu 0 4 152 151 33 32
		f 4 -247 243 -27 -246
		mu 0 4 153 152 32 31
		f 4 -248 -249 245 -208
		mu 0 4 131 154 153 31
		f 4 -251 247 -26 -250
		mu 0 4 156 154 131 30
		f 4 119 -253 249 80
		mu 0 4 78 157 155 80
		f 4 117 -255 -120 86
		mu 0 4 76 158 157 78
		f 4 -217 -256 -118 92
		mu 0 4 105 135 158 76;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pCube5" -p "pasted__Sofa";
	rename -uid "F68DE1EB-468B-5F13-96BB-24A77C5D1109";
	setAttr ".t" -type "double3" 14.221724949411151 6.5119551107749309 20.454711011991314 ;
	setAttr ".s" -type "double3" -1.0956041408533839 1.1094779127295713 0.70251905331807196 ;
createNode mesh -n "pasted__pasted__pCubeShape5" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube5";
	rename -uid "796B77B8-4ECC-BA6C-933B-F782FBC9A0DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pCube6" -p "pasted__Sofa";
	rename -uid "FA65C3CE-4EA9-71F9-ABE3-459A64A6A9B9";
	setAttr ".t" -type "double3" 8.3506348550599743 5.3898296643670207 17.155910414017125 ;
	setAttr ".s" -type "double3" 1 1.2071422664147216 1 ;
createNode mesh -n "pasted__pasted__pCubeShape6" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube6";
	rename -uid "1F15471E-4FC8-DD7B-703D-479E7E047367";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pCube7" -p "pasted__Sofa";
	rename -uid "5B97D70C-4966-CD6B-C57A-9DA2C5BFAEEA";
	setAttr ".t" -type "double3" 8.3506348550599743 5.3898296643670207 23.948220784628333 ;
	setAttr ".s" -type "double3" 1 1.2071422664147216 1 ;
createNode mesh -n "pasted__pasted__pCubeShape7" -p "|LivingRoom|pasted__Sofa|pasted__pasted__pCube7";
	rename -uid "85EC6BC6-444C-1C3D-7DE6-54AD220010DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[4]" "f[21]" "f[23:25]" "f[27]" "f[30]" "f[36]" "f[40]" "f[54:56]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[1:3]" "f[6]" "f[31]" "f[42:44]" "f[46]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[0]" "f[5]" "f[7]" "f[9]" "f[11]" "f[14:16]" "f[19]" "f[28]" "f[34]" "f[38]" "f[45]" "f[47:50]" "f[52]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[8]" "f[17]" "f[33]" "f[37]" "f[41]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[10]" "f[12]" "f[22]" "f[26]" "f[32]" "f[35]" "f[39]" "f[57]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[13]" "f[18]" "f[20]" "f[29]" "f[51]" "f[53]";
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.35257909 0.016736982
		 0.37500063 0.96926427 0.40138486 0.97361577 0.60859525 0.99999994 0.37500069 0.74479663
		 0.3750003 0.71395999 0.59861511 0.97361577 0.59861505 0.77638417 0.62499928 0.78073561
		 0.35310718 0.067490853 0.14720044 0.067540869 0.1582458 0.048319355 0.40824687 0.048319701
		 0.60235894 0.048456501 0.875 0.0056725224 0.87499994 0.036287419 0.65824574 0.048319388
		 0.85235804 0.0484569 0.38071156 0.26947832 0.3807888 0.48025775 0.36123332 0.23541854
		 0.39793786 0.23522109 0.39733633 0.12004569 0.60274893 0.12004571 0.36133087 0.13345537
		 0.14739795 0.13342771 0.61928844 0.26947832 0.61123282 0.23541847 0.61137533 0.13342787
		 0.39091301 0.48408699 0.60908699 0.48408699 0.375 0.52022558 0.38876721 0.51458144
		 0.375 0.6210233 0.64726377 0.12006202 0.625 0.52189773 0.625 0.62209624 0.375 0.62996465
		 0.375 0.68248546 0.38866881 0.6165446 0.60260195 0.61657208 0.87500006 0.12003524
		 0.85282123 0.120062 0.85310721 0.067490883 0.87499994 0.067514345 0.39711344 0.682459
		 0.60279942 0.68245906 0.59207523 0.70154345 0.39739799 0.13342786 0.39091301 0.26591301
		 0.60908699 0.26591301 0.60206217 0.51477891 0.40138495 0.77638417 0.64739799 0.13342768
		 0.86133093 0.13345538 0.86104661 0.23522116 0.64763153 0.23541853 0.14793839 0.23522115
		 0.39697963 0.067490846 0.60310668 0.067490846 0.64697909 0.067490861 0.3971791 0.62993795
		 0.60273594 0.62993795 0.35274807 0.12004568 0.14726375 0.120062 0.40760636 0.016737394
		 0.60257775 0.016737394 0.65760446 0.016737001 0.85257876 0.01673699 0.39764124 0.70154333
		 0.39551112 0.73468918 0.1548253 0.015310446 0.35235798 0.048456881 0.40573713 0.99999994
		 0.37500075 0.76507854 0.62499934 0.98359638 0.59239346 0.73326266 0.6192112 0.48025775
		 0.375 0.62499982 0.625 0.62499988 0.38293797 0.68551534 0.86713189 0.06446711;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.23358154 -0.45077991 0.17926311 -0.1642952 -0.48460674 0.1642971
		 -0.17926025 -0.45077991 0.2335844 -0.1642952 -0.48460674 -0.16429615 -0.23142242 -0.45366287 -0.18173409
		 -0.18173218 -0.45366287 -0.23142433 0.17926025 -0.45077991 0.2335844 0.1642952 -0.48460674 0.1642971
		 0.23358154 -0.45077991 0.17926311 -0.30294418 -0.32586956 0.24969578 -0.28158951 -0.38667393 0.22673225
		 -0.2259903 -0.38695049 0.28138065 -0.24969482 -0.32586956 0.30294514 0.23358154 -0.45077991 -0.17926216
		 0.1642952 -0.48460674 -0.16429615 0.17926025 -0.45077991 -0.23358345 0.24969482 -0.32586956 0.30294514
		 0.22673416 -0.38667393 0.2815876 0.2813797 -0.38695049 0.22599125 0.30294418 -0.32586956 0.24969578
		 -0.47715378 0.44724083 0.42208767 -0.42103195 0.44652653 0.47684479 -0.43634796 0.5 0.43634892
		 -0.26285553 0.078214645 0.31735325 -0.31739807 0.078313828 0.26272011 -0.30404663 0.015536308 0.24990177
		 -0.24990463 0.015536308 0.30404472 0.43634796 0.5 0.43634892 0.42208481 0.44724083 0.47715378
		 0.47715378 0.44724083 0.42208767 -0.42208481 0.44724083 -0.47715282 -0.47684479 0.44652653 -0.42103004
		 -0.43634796 0.5 -0.43634701 0.24990463 0.015536308 0.30404472 0.30404663 0.015642166 0.25008011
		 0.31735229 0.078214645 0.26285458 0.26285553 0.078214645 0.31735325 0.42103195 0.44652653 -0.47684288
		 0.43634796 0.5 -0.43634701 0.47684479 0.44652653 -0.42103004 -0.30404663 0.015642166 -0.25008011
		 -0.31735229 0.078214645 -0.26285458 -0.26272202 0.078313828 -0.31739616 -0.25008011 0.015642166 -0.30404568
		 0.25008011 0.015642166 -0.30404568 0.26285553 0.078214645 -0.31735325 0.31739807 0.078313828 -0.26272011
		 0.30404663 0.015642166 -0.25008011 -0.22673416 -0.38667393 -0.2815876 -0.2813797 -0.38695049 -0.22599125
		 -0.302948 -0.32554436 -0.24916077 -0.24916077 -0.32554436 -0.30294609 0.24916077 -0.32554436 -0.30294609
		 0.30294418 -0.32586956 -0.24969578 0.28158951 -0.38667393 -0.22673225 0.22673416 -0.38667393 -0.2815876;
	setAttr -s 112 ".ed[0:111]"  0 2 1 2 11 0 11 10 1 10 0 0 1 0 1 0 4 1 4 3 1
		 3 1 1 2 1 1 1 7 0 7 6 1 6 2 1 3 5 1 5 15 1 15 14 1 14 3 1 5 4 1 4 49 0 49 48 1 48 5 0
		 6 8 1 8 18 0 18 17 1 17 6 0 8 7 1 7 14 0 14 13 1 13 8 1 9 12 1 12 26 0 26 25 1 25 9 0
		 10 9 0 9 50 1 50 49 0 49 10 1 12 11 0 11 17 1 17 16 0 16 12 1 13 15 1 15 55 0 55 54 1
		 54 13 0 16 19 1 19 34 0 34 33 1 33 16 0 19 18 0 18 54 1 54 53 0 53 19 1 20 22 0 22 32 0
		 32 31 0 31 20 0 21 20 0 20 24 0 24 23 1 23 21 0 22 21 0 21 28 0 28 27 0 27 22 0 23 26 0
		 26 33 1 33 36 0 36 23 1 25 24 0 24 41 1 41 40 0 40 25 1 27 29 0 29 39 0 39 38 0 38 27 0
		 29 28 0 28 36 0 36 35 1 35 29 0 30 32 0 32 38 0 38 37 0 37 30 0 31 30 0 30 42 0 42 41 1
		 41 31 0 35 34 0 34 47 1 47 46 0 46 35 1 37 39 0 39 46 0 46 45 1 45 37 0 40 43 1 43 51 0
		 51 50 1 50 40 0 43 42 0 42 45 1 45 44 0 44 43 1 44 47 1 47 53 0 53 52 1 52 44 0 48 51 0
		 51 52 1 52 55 0 55 48 1;
	setAttr -s 58 -ch 224 ".fc[0:57]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 12 72
		f 4 4 5 6 7
		mu 0 4 2 1 74 52
		f 4 8 9 10 11
		mu 0 4 73 2 6 3
		f 4 12 13 14 15
		mu 0 4 52 70 76 7
		f 4 16 17 18 19
		mu 0 4 70 4 5 69
		f 4 20 21 22 23
		mu 0 4 66 67 16 13
		f 4 24 25 26 27
		mu 0 4 75 6 7 8
		f 4 28 29 30 31
		mu 0 4 9 58 22 63
		f 4 32 33 34 35
		mu 0 4 72 9 10 11
		f 4 36 37 38 39
		mu 0 4 58 12 13 59
		f 4 40 41 42 43
		mu 0 4 68 14 15 17
		f 4 44 45 46 47
		mu 0 4 59 60 34 23
		f 4 48 49 50 51
		mu 0 4 60 16 17 43
		f 4 52 53 54 55
		mu 0 4 18 49 29 19
		f 4 56 57 58 59
		mu 0 4 21 20 24 48
		f 4 60 61 62 63
		mu 0 4 49 21 27 50
		f 4 64 65 66 67
		mu 0 4 48 22 23 28
		f 4 68 69 70 71
		mu 0 4 63 24 25 64
		f 4 72 73 74 75
		mu 0 4 50 26 77 30
		f 4 76 77 78 79
		mu 0 4 56 27 28 53
		f 4 80 81 82 83
		mu 0 4 32 29 30 51
		f 4 84 85 86 87
		mu 0 4 31 32 39 33
		f 4 88 89 90 91
		mu 0 4 53 34 42 54
		f 4 92 93 94 95
		mu 0 4 51 35 36 40
		f 4 96 97 98 99
		mu 0 4 37 61 45 38
		f 4 100 101 102 103
		mu 0 4 61 39 40 62
		f 4 104 105 106 107
		mu 0 4 41 42 43 44
		f 4 108 109 110 111
		mu 0 4 69 45 46 47
		f 4 -68 -78 -62 -60
		mu 0 4 48 28 27 21
		f 4 -64 -76 -82 -54
		mu 0 4 49 50 30 29
		f 4 -84 -96 -102 -86
		mu 0 4 32 51 40 39
		f 4 -16 -26 -10 -8
		mu 0 4 52 7 6 2
		f 4 -92 -94 -74 -80
		mu 0 4 53 54 55 56
		f 4 -70 -58 -56 -88
		mu 0 4 25 24 20 57
		f 4 -40 -48 -66 -30
		mu 0 4 58 59 23 22
		f 4 -52 -106 -90 -46
		mu 0 4 60 43 42 34
		f 4 -104 -108 -110 -98
		mu 0 4 61 62 46 45
		f 4 -34 -32 -72 -100
		mu 0 4 10 9 63 64
		f 4 -12 -24 -38 -2
		mu 0 4 65 66 13 12
		f 4 -28 -44 -50 -22
		mu 0 4 67 68 17 16
		f 4 -112 -42 -14 -20
		mu 0 4 69 47 76 70
		f 4 -6 -4 -36 -18
		mu 0 4 71 0 72 11
		f 3 -5 -9 -1
		mu 0 3 1 2 73
		f 3 -7 -17 -13
		mu 0 3 52 74 70
		f 3 -11 -25 -21
		mu 0 3 3 6 75
		f 4 -33 -3 -37 -29
		mu 0 4 9 72 12 58
		f 3 -27 -15 -41
		mu 0 3 8 7 76
		f 4 -39 -23 -49 -45
		mu 0 4 59 13 16 60
		f 3 -57 -61 -53
		mu 0 3 20 21 49
		f 4 -59 -69 -31 -65
		mu 0 4 48 24 63 22
		f 3 -63 -77 -73
		mu 0 3 50 27 56
		f 3 -85 -55 -81
		mu 0 3 32 19 29
		f 4 -47 -89 -79 -67
		mu 0 4 23 34 53 28
		f 3 -83 -75 -93
		mu 0 3 51 30 77
		f 4 -71 -87 -101 -97
		mu 0 4 78 33 39 61
		f 4 -103 -95 -91 -105
		mu 0 4 62 40 36 79
		f 4 -19 -35 -99 -109
		mu 0 4 69 80 38 45
		f 4 -107 -51 -43 -111
		mu 0 4 44 43 17 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube8" -p "pasted__Sofa";
	rename -uid "94FB8B3D-41DC-1EDA-FAED-5EAF3F86FD53";
	setAttr ".t" -type "double3" 20.112490407365485 5.3898296643670207 23.948220784628333 ;
	setAttr ".s" -type "double3" 1 1.2071422664147216 1 ;
createNode mesh -n "pasted__pasted__pCubeShape8" -p "pasted__pasted__pCube8";
	rename -uid "558F44BF-4EF3-90D6-86B3-4987CB265F0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[4]" "f[21]" "f[23:25]" "f[27]" "f[30]" "f[36]" "f[40]" "f[54:56]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[1:3]" "f[6]" "f[31]" "f[42:44]" "f[46]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[0]" "f[5]" "f[7]" "f[9]" "f[11]" "f[14:16]" "f[19]" "f[28]" "f[34]" "f[38]" "f[45]" "f[47:50]" "f[52]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[8]" "f[17]" "f[33]" "f[37]" "f[41]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[10]" "f[12]" "f[22]" "f[26]" "f[32]" "f[35]" "f[39]" "f[57]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[13]" "f[18]" "f[20]" "f[29]" "f[51]" "f[53]";
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.35257909 0.016736982
		 0.37500063 0.96926427 0.40138486 0.97361577 0.60859525 0.99999994 0.37500069 0.74479663
		 0.3750003 0.71395999 0.59861511 0.97361577 0.59861505 0.77638417 0.62499928 0.78073561
		 0.35310718 0.067490853 0.14720044 0.067540869 0.1582458 0.048319355 0.40824687 0.048319701
		 0.60235894 0.048456501 0.875 0.0056725224 0.87499994 0.036287419 0.65824574 0.048319388
		 0.85235804 0.0484569 0.38071156 0.26947832 0.3807888 0.48025775 0.36123332 0.23541854
		 0.39793786 0.23522109 0.39733633 0.12004569 0.60274893 0.12004571 0.36133087 0.13345537
		 0.14739795 0.13342771 0.61928844 0.26947832 0.61123282 0.23541847 0.61137533 0.13342787
		 0.39091301 0.48408699 0.60908699 0.48408699 0.375 0.52022558 0.38876721 0.51458144
		 0.375 0.6210233 0.64726377 0.12006202 0.625 0.52189773 0.625 0.62209624 0.375 0.62996465
		 0.375 0.68248546 0.38866881 0.6165446 0.60260195 0.61657208 0.87500006 0.12003524
		 0.85282123 0.120062 0.85310721 0.067490883 0.87499994 0.067514345 0.39711344 0.682459
		 0.60279942 0.68245906 0.59207523 0.70154345 0.39739799 0.13342786 0.39091301 0.26591301
		 0.60908699 0.26591301 0.60206217 0.51477891 0.40138495 0.77638417 0.64739799 0.13342768
		 0.86133093 0.13345538 0.86104661 0.23522116 0.64763153 0.23541853 0.14793839 0.23522115
		 0.39697963 0.067490846 0.60310668 0.067490846 0.64697909 0.067490861 0.3971791 0.62993795
		 0.60273594 0.62993795 0.35274807 0.12004568 0.14726375 0.120062 0.40760636 0.016737394
		 0.60257775 0.016737394 0.65760446 0.016737001 0.85257876 0.01673699 0.39764124 0.70154333
		 0.39551112 0.73468918 0.1548253 0.015310446 0.35235798 0.048456881 0.40573713 0.99999994
		 0.37500075 0.76507854 0.62499934 0.98359638 0.59239346 0.73326266 0.6192112 0.48025775
		 0.375 0.62499982 0.625 0.62499988 0.38293797 0.68551534 0.86713189 0.06446711;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.23358154 -0.45077991 0.17926311 -0.1642952 -0.48460674 0.1642971
		 -0.17926025 -0.45077991 0.2335844 -0.1642952 -0.48460674 -0.16429615 -0.23142242 -0.45366287 -0.18173409
		 -0.18173218 -0.45366287 -0.23142433 0.17926025 -0.45077991 0.2335844 0.1642952 -0.48460674 0.1642971
		 0.23358154 -0.45077991 0.17926311 -0.30294418 -0.32586956 0.24969578 -0.28158951 -0.38667393 0.22673225
		 -0.2259903 -0.38695049 0.28138065 -0.24969482 -0.32586956 0.30294514 0.23358154 -0.45077991 -0.17926216
		 0.1642952 -0.48460674 -0.16429615 0.17926025 -0.45077991 -0.23358345 0.24969482 -0.32586956 0.30294514
		 0.22673416 -0.38667393 0.2815876 0.2813797 -0.38695049 0.22599125 0.30294418 -0.32586956 0.24969578
		 -0.47715378 0.44724083 0.42208767 -0.42103195 0.44652653 0.47684479 -0.43634796 0.5 0.43634892
		 -0.26285553 0.078214645 0.31735325 -0.31739807 0.078313828 0.26272011 -0.30404663 0.015536308 0.24990177
		 -0.24990463 0.015536308 0.30404472 0.43634796 0.5 0.43634892 0.42208481 0.44724083 0.47715378
		 0.47715378 0.44724083 0.42208767 -0.42208481 0.44724083 -0.47715282 -0.47684479 0.44652653 -0.42103004
		 -0.43634796 0.5 -0.43634701 0.24990463 0.015536308 0.30404472 0.30404663 0.015642166 0.25008011
		 0.31735229 0.078214645 0.26285458 0.26285553 0.078214645 0.31735325 0.42103195 0.44652653 -0.47684288
		 0.43634796 0.5 -0.43634701 0.47684479 0.44652653 -0.42103004 -0.30404663 0.015642166 -0.25008011
		 -0.31735229 0.078214645 -0.26285458 -0.26272202 0.078313828 -0.31739616 -0.25008011 0.015642166 -0.30404568
		 0.25008011 0.015642166 -0.30404568 0.26285553 0.078214645 -0.31735325 0.31739807 0.078313828 -0.26272011
		 0.30404663 0.015642166 -0.25008011 -0.22673416 -0.38667393 -0.2815876 -0.2813797 -0.38695049 -0.22599125
		 -0.302948 -0.32554436 -0.24916077 -0.24916077 -0.32554436 -0.30294609 0.24916077 -0.32554436 -0.30294609
		 0.30294418 -0.32586956 -0.24969578 0.28158951 -0.38667393 -0.22673225 0.22673416 -0.38667393 -0.2815876;
	setAttr -s 112 ".ed[0:111]"  0 2 1 2 11 0 11 10 1 10 0 0 1 0 1 0 4 1 4 3 1
		 3 1 1 2 1 1 1 7 0 7 6 1 6 2 1 3 5 1 5 15 1 15 14 1 14 3 1 5 4 1 4 49 0 49 48 1 48 5 0
		 6 8 1 8 18 0 18 17 1 17 6 0 8 7 1 7 14 0 14 13 1 13 8 1 9 12 1 12 26 0 26 25 1 25 9 0
		 10 9 0 9 50 1 50 49 0 49 10 1 12 11 0 11 17 1 17 16 0 16 12 1 13 15 1 15 55 0 55 54 1
		 54 13 0 16 19 1 19 34 0 34 33 1 33 16 0 19 18 0 18 54 1 54 53 0 53 19 1 20 22 0 22 32 0
		 32 31 0 31 20 0 21 20 0 20 24 0 24 23 1 23 21 0 22 21 0 21 28 0 28 27 0 27 22 0 23 26 0
		 26 33 1 33 36 0 36 23 1 25 24 0 24 41 1 41 40 0 40 25 1 27 29 0 29 39 0 39 38 0 38 27 0
		 29 28 0 28 36 0 36 35 1 35 29 0 30 32 0 32 38 0 38 37 0 37 30 0 31 30 0 30 42 0 42 41 1
		 41 31 0 35 34 0 34 47 1 47 46 0 46 35 1 37 39 0 39 46 0 46 45 1 45 37 0 40 43 1 43 51 0
		 51 50 1 50 40 0 43 42 0 42 45 1 45 44 0 44 43 1 44 47 1 47 53 0 53 52 1 52 44 0 48 51 0
		 51 52 1 52 55 0 55 48 1;
	setAttr -s 58 -ch 224 ".fc[0:57]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 12 72
		f 4 4 5 6 7
		mu 0 4 2 1 74 52
		f 4 8 9 10 11
		mu 0 4 73 2 6 3
		f 4 12 13 14 15
		mu 0 4 52 70 76 7
		f 4 16 17 18 19
		mu 0 4 70 4 5 69
		f 4 20 21 22 23
		mu 0 4 66 67 16 13
		f 4 24 25 26 27
		mu 0 4 75 6 7 8
		f 4 28 29 30 31
		mu 0 4 9 58 22 63
		f 4 32 33 34 35
		mu 0 4 72 9 10 11
		f 4 36 37 38 39
		mu 0 4 58 12 13 59
		f 4 40 41 42 43
		mu 0 4 68 14 15 17
		f 4 44 45 46 47
		mu 0 4 59 60 34 23
		f 4 48 49 50 51
		mu 0 4 60 16 17 43
		f 4 52 53 54 55
		mu 0 4 18 49 29 19
		f 4 56 57 58 59
		mu 0 4 21 20 24 48
		f 4 60 61 62 63
		mu 0 4 49 21 27 50
		f 4 64 65 66 67
		mu 0 4 48 22 23 28
		f 4 68 69 70 71
		mu 0 4 63 24 25 64
		f 4 72 73 74 75
		mu 0 4 50 26 77 30
		f 4 76 77 78 79
		mu 0 4 56 27 28 53
		f 4 80 81 82 83
		mu 0 4 32 29 30 51
		f 4 84 85 86 87
		mu 0 4 31 32 39 33
		f 4 88 89 90 91
		mu 0 4 53 34 42 54
		f 4 92 93 94 95
		mu 0 4 51 35 36 40
		f 4 96 97 98 99
		mu 0 4 37 61 45 38
		f 4 100 101 102 103
		mu 0 4 61 39 40 62
		f 4 104 105 106 107
		mu 0 4 41 42 43 44
		f 4 108 109 110 111
		mu 0 4 69 45 46 47
		f 4 -68 -78 -62 -60
		mu 0 4 48 28 27 21
		f 4 -64 -76 -82 -54
		mu 0 4 49 50 30 29
		f 4 -84 -96 -102 -86
		mu 0 4 32 51 40 39
		f 4 -16 -26 -10 -8
		mu 0 4 52 7 6 2
		f 4 -92 -94 -74 -80
		mu 0 4 53 54 55 56
		f 4 -70 -58 -56 -88
		mu 0 4 25 24 20 57
		f 4 -40 -48 -66 -30
		mu 0 4 58 59 23 22
		f 4 -52 -106 -90 -46
		mu 0 4 60 43 42 34
		f 4 -104 -108 -110 -98
		mu 0 4 61 62 46 45
		f 4 -34 -32 -72 -100
		mu 0 4 10 9 63 64
		f 4 -12 -24 -38 -2
		mu 0 4 65 66 13 12
		f 4 -28 -44 -50 -22
		mu 0 4 67 68 17 16
		f 4 -112 -42 -14 -20
		mu 0 4 69 47 76 70
		f 4 -6 -4 -36 -18
		mu 0 4 71 0 72 11
		f 3 -5 -9 -1
		mu 0 3 1 2 73
		f 3 -7 -17 -13
		mu 0 3 52 74 70
		f 3 -11 -25 -21
		mu 0 3 3 6 75
		f 4 -33 -3 -37 -29
		mu 0 4 9 72 12 58
		f 3 -27 -15 -41
		mu 0 3 8 7 76
		f 4 -39 -23 -49 -45
		mu 0 4 59 13 16 60
		f 3 -57 -61 -53
		mu 0 3 20 21 49
		f 4 -59 -69 -31 -65
		mu 0 4 48 24 63 22
		f 3 -63 -77 -73
		mu 0 3 50 27 56
		f 3 -85 -55 -81
		mu 0 3 32 19 29
		f 4 -47 -89 -79 -67
		mu 0 4 23 34 53 28
		f 3 -83 -75 -93
		mu 0 3 51 30 77
		f 4 -71 -87 -101 -97
		mu 0 4 78 33 39 61
		f 4 -103 -95 -91 -105
		mu 0 4 62 40 36 79
		f 4 -19 -35 -99 -109
		mu 0 4 69 80 38 45
		f 4 -107 -51 -43 -111
		mu 0 4 44 43 17 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube9" -p "pasted__Sofa";
	rename -uid "2A446455-477F-3392-26C4-CFB864010588";
	setAttr ".t" -type "double3" 20.112490407365485 5.3898296643670207 17.155910414017125 ;
	setAttr ".s" -type "double3" 1 1.2071422664147216 1 ;
createNode mesh -n "pasted__pasted__pCubeShape9" -p "pasted__pasted__pCube9";
	rename -uid "855F5F2E-4C5C-B59C-432F-98A9758F26B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[4]" "f[21]" "f[23:25]" "f[27]" "f[30]" "f[36]" "f[40]" "f[54:56]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[1:3]" "f[6]" "f[31]" "f[42:44]" "f[46]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[0]" "f[5]" "f[7]" "f[9]" "f[11]" "f[14:16]" "f[19]" "f[28]" "f[34]" "f[38]" "f[45]" "f[47:50]" "f[52]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[8]" "f[17]" "f[33]" "f[37]" "f[41]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[10]" "f[12]" "f[22]" "f[26]" "f[32]" "f[35]" "f[39]" "f[57]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[13]" "f[18]" "f[20]" "f[29]" "f[51]" "f[53]";
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.35257909 0.016736982
		 0.37500063 0.96926427 0.40138486 0.97361577 0.60859525 0.99999994 0.37500069 0.74479663
		 0.3750003 0.71395999 0.59861511 0.97361577 0.59861505 0.77638417 0.62499928 0.78073561
		 0.35310718 0.067490853 0.14720044 0.067540869 0.1582458 0.048319355 0.40824687 0.048319701
		 0.60235894 0.048456501 0.875 0.0056725224 0.87499994 0.036287419 0.65824574 0.048319388
		 0.85235804 0.0484569 0.38071156 0.26947832 0.3807888 0.48025775 0.36123332 0.23541854
		 0.39793786 0.23522109 0.39733633 0.12004569 0.60274893 0.12004571 0.36133087 0.13345537
		 0.14739795 0.13342771 0.61928844 0.26947832 0.61123282 0.23541847 0.61137533 0.13342787
		 0.39091301 0.48408699 0.60908699 0.48408699 0.375 0.52022558 0.38876721 0.51458144
		 0.375 0.6210233 0.64726377 0.12006202 0.625 0.52189773 0.625 0.62209624 0.375 0.62996465
		 0.375 0.68248546 0.38866881 0.6165446 0.60260195 0.61657208 0.87500006 0.12003524
		 0.85282123 0.120062 0.85310721 0.067490883 0.87499994 0.067514345 0.39711344 0.682459
		 0.60279942 0.68245906 0.59207523 0.70154345 0.39739799 0.13342786 0.39091301 0.26591301
		 0.60908699 0.26591301 0.60206217 0.51477891 0.40138495 0.77638417 0.64739799 0.13342768
		 0.86133093 0.13345538 0.86104661 0.23522116 0.64763153 0.23541853 0.14793839 0.23522115
		 0.39697963 0.067490846 0.60310668 0.067490846 0.64697909 0.067490861 0.3971791 0.62993795
		 0.60273594 0.62993795 0.35274807 0.12004568 0.14726375 0.120062 0.40760636 0.016737394
		 0.60257775 0.016737394 0.65760446 0.016737001 0.85257876 0.01673699 0.39764124 0.70154333
		 0.39551112 0.73468918 0.1548253 0.015310446 0.35235798 0.048456881 0.40573713 0.99999994
		 0.37500075 0.76507854 0.62499934 0.98359638 0.59239346 0.73326266 0.6192112 0.48025775
		 0.375 0.62499982 0.625 0.62499988 0.38293797 0.68551534 0.86713189 0.06446711;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.23358154 -0.45077991 0.17926311 -0.1642952 -0.48460674 0.1642971
		 -0.17926025 -0.45077991 0.2335844 -0.1642952 -0.48460674 -0.16429615 -0.23142242 -0.45366287 -0.18173409
		 -0.18173218 -0.45366287 -0.23142433 0.17926025 -0.45077991 0.2335844 0.1642952 -0.48460674 0.1642971
		 0.23358154 -0.45077991 0.17926311 -0.30294418 -0.32586956 0.24969578 -0.28158951 -0.38667393 0.22673225
		 -0.2259903 -0.38695049 0.28138065 -0.24969482 -0.32586956 0.30294514 0.23358154 -0.45077991 -0.17926216
		 0.1642952 -0.48460674 -0.16429615 0.17926025 -0.45077991 -0.23358345 0.24969482 -0.32586956 0.30294514
		 0.22673416 -0.38667393 0.2815876 0.2813797 -0.38695049 0.22599125 0.30294418 -0.32586956 0.24969578
		 -0.47715378 0.44724083 0.42208767 -0.42103195 0.44652653 0.47684479 -0.43634796 0.5 0.43634892
		 -0.26285553 0.078214645 0.31735325 -0.31739807 0.078313828 0.26272011 -0.30404663 0.015536308 0.24990177
		 -0.24990463 0.015536308 0.30404472 0.43634796 0.5 0.43634892 0.42208481 0.44724083 0.47715378
		 0.47715378 0.44724083 0.42208767 -0.42208481 0.44724083 -0.47715282 -0.47684479 0.44652653 -0.42103004
		 -0.43634796 0.5 -0.43634701 0.24990463 0.015536308 0.30404472 0.30404663 0.015642166 0.25008011
		 0.31735229 0.078214645 0.26285458 0.26285553 0.078214645 0.31735325 0.42103195 0.44652653 -0.47684288
		 0.43634796 0.5 -0.43634701 0.47684479 0.44652653 -0.42103004 -0.30404663 0.015642166 -0.25008011
		 -0.31735229 0.078214645 -0.26285458 -0.26272202 0.078313828 -0.31739616 -0.25008011 0.015642166 -0.30404568
		 0.25008011 0.015642166 -0.30404568 0.26285553 0.078214645 -0.31735325 0.31739807 0.078313828 -0.26272011
		 0.30404663 0.015642166 -0.25008011 -0.22673416 -0.38667393 -0.2815876 -0.2813797 -0.38695049 -0.22599125
		 -0.302948 -0.32554436 -0.24916077 -0.24916077 -0.32554436 -0.30294609 0.24916077 -0.32554436 -0.30294609
		 0.30294418 -0.32586956 -0.24969578 0.28158951 -0.38667393 -0.22673225 0.22673416 -0.38667393 -0.2815876;
	setAttr -s 112 ".ed[0:111]"  0 2 1 2 11 0 11 10 1 10 0 0 1 0 1 0 4 1 4 3 1
		 3 1 1 2 1 1 1 7 0 7 6 1 6 2 1 3 5 1 5 15 1 15 14 1 14 3 1 5 4 1 4 49 0 49 48 1 48 5 0
		 6 8 1 8 18 0 18 17 1 17 6 0 8 7 1 7 14 0 14 13 1 13 8 1 9 12 1 12 26 0 26 25 1 25 9 0
		 10 9 0 9 50 1 50 49 0 49 10 1 12 11 0 11 17 1 17 16 0 16 12 1 13 15 1 15 55 0 55 54 1
		 54 13 0 16 19 1 19 34 0 34 33 1 33 16 0 19 18 0 18 54 1 54 53 0 53 19 1 20 22 0 22 32 0
		 32 31 0 31 20 0 21 20 0 20 24 0 24 23 1 23 21 0 22 21 0 21 28 0 28 27 0 27 22 0 23 26 0
		 26 33 1 33 36 0 36 23 1 25 24 0 24 41 1 41 40 0 40 25 1 27 29 0 29 39 0 39 38 0 38 27 0
		 29 28 0 28 36 0 36 35 1 35 29 0 30 32 0 32 38 0 38 37 0 37 30 0 31 30 0 30 42 0 42 41 1
		 41 31 0 35 34 0 34 47 1 47 46 0 46 35 1 37 39 0 39 46 0 46 45 1 45 37 0 40 43 1 43 51 0
		 51 50 1 50 40 0 43 42 0 42 45 1 45 44 0 44 43 1 44 47 1 47 53 0 53 52 1 52 44 0 48 51 0
		 51 52 1 52 55 0 55 48 1;
	setAttr -s 58 -ch 224 ".fc[0:57]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 12 72
		f 4 4 5 6 7
		mu 0 4 2 1 74 52
		f 4 8 9 10 11
		mu 0 4 73 2 6 3
		f 4 12 13 14 15
		mu 0 4 52 70 76 7
		f 4 16 17 18 19
		mu 0 4 70 4 5 69
		f 4 20 21 22 23
		mu 0 4 66 67 16 13
		f 4 24 25 26 27
		mu 0 4 75 6 7 8
		f 4 28 29 30 31
		mu 0 4 9 58 22 63
		f 4 32 33 34 35
		mu 0 4 72 9 10 11
		f 4 36 37 38 39
		mu 0 4 58 12 13 59
		f 4 40 41 42 43
		mu 0 4 68 14 15 17
		f 4 44 45 46 47
		mu 0 4 59 60 34 23
		f 4 48 49 50 51
		mu 0 4 60 16 17 43
		f 4 52 53 54 55
		mu 0 4 18 49 29 19
		f 4 56 57 58 59
		mu 0 4 21 20 24 48
		f 4 60 61 62 63
		mu 0 4 49 21 27 50
		f 4 64 65 66 67
		mu 0 4 48 22 23 28
		f 4 68 69 70 71
		mu 0 4 63 24 25 64
		f 4 72 73 74 75
		mu 0 4 50 26 77 30
		f 4 76 77 78 79
		mu 0 4 56 27 28 53
		f 4 80 81 82 83
		mu 0 4 32 29 30 51
		f 4 84 85 86 87
		mu 0 4 31 32 39 33
		f 4 88 89 90 91
		mu 0 4 53 34 42 54
		f 4 92 93 94 95
		mu 0 4 51 35 36 40
		f 4 96 97 98 99
		mu 0 4 37 61 45 38
		f 4 100 101 102 103
		mu 0 4 61 39 40 62
		f 4 104 105 106 107
		mu 0 4 41 42 43 44
		f 4 108 109 110 111
		mu 0 4 69 45 46 47
		f 4 -68 -78 -62 -60
		mu 0 4 48 28 27 21
		f 4 -64 -76 -82 -54
		mu 0 4 49 50 30 29
		f 4 -84 -96 -102 -86
		mu 0 4 32 51 40 39
		f 4 -16 -26 -10 -8
		mu 0 4 52 7 6 2
		f 4 -92 -94 -74 -80
		mu 0 4 53 54 55 56
		f 4 -70 -58 -56 -88
		mu 0 4 25 24 20 57
		f 4 -40 -48 -66 -30
		mu 0 4 58 59 23 22
		f 4 -52 -106 -90 -46
		mu 0 4 60 43 42 34
		f 4 -104 -108 -110 -98
		mu 0 4 61 62 46 45
		f 4 -34 -32 -72 -100
		mu 0 4 10 9 63 64
		f 4 -12 -24 -38 -2
		mu 0 4 65 66 13 12
		f 4 -28 -44 -50 -22
		mu 0 4 67 68 17 16
		f 4 -112 -42 -14 -20
		mu 0 4 69 47 76 70
		f 4 -6 -4 -36 -18
		mu 0 4 71 0 72 11
		f 3 -5 -9 -1
		mu 0 3 1 2 73
		f 3 -7 -17 -13
		mu 0 3 52 74 70
		f 3 -11 -25 -21
		mu 0 3 3 6 75
		f 4 -33 -3 -37 -29
		mu 0 4 9 72 12 58
		f 3 -27 -15 -41
		mu 0 3 8 7 76
		f 4 -39 -23 -49 -45
		mu 0 4 59 13 16 60
		f 3 -57 -61 -53
		mu 0 3 20 21 49
		f 4 -59 -69 -31 -65
		mu 0 4 48 24 63 22
		f 3 -63 -77 -73
		mu 0 3 50 27 56
		f 3 -85 -55 -81
		mu 0 3 32 19 29
		f 4 -47 -89 -79 -67
		mu 0 4 23 34 53 28
		f 3 -83 -75 -93
		mu 0 3 51 30 77
		f 4 -71 -87 -101 -97
		mu 0 4 78 33 39 61
		f 4 -103 -95 -91 -105
		mu 0 4 62 40 36 79
		f 4 -19 -35 -99 -109
		mu 0 4 69 80 38 45
		f 4 -107 -51 -43 -111
		mu 0 4 44 43 17 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pCube11" -p "pasted__Sofa";
	rename -uid "AB2E596C-44E3-6A7D-B001-329ED899CCCC";
	setAttr ".t" -type "double3" 14.155725386132302 10.995445732966006 17.338906293776983 ;
	setAttr ".s" -type "double3" 0.59175758988220639 8.3785284785485938 2.0355806461128072 ;
createNode mesh -n "pasted__pasted__pCubeShape11" -p "pasted__pasted__pCube11";
	rename -uid "CB528E92-4D57-614D-40DC-2DB06FA0FFE1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[25:39]" "f[81:85]" "f[104:107]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[40:49]" "f[62]" "f[74:77]" "f[94:96]" "f[109:114]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:14]" "f[89:93]" "f[97:100]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[56:61]" "f[63:65]" "f[78:80]" "f[108]" "f[125:127]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[50:55]" "f[71:73]" "f[86:88]" "f[115:118]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[15:24]" "f[66:70]" "f[101:103]" "f[119:124]";
	setAttr ".pv" -type "double2" 0.3125 0.1250000037252903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.083333336 0.42500001
		 0.083333336 0.47500002 0.083333336 0.52500004 0.083333336 0.57500005 0.083333336
		 0.62500006 0.083333336 0.375 0.16666667 0.42500001 0.16666667 0.47500002 0.16666667
		 0.52500004 0.16666667 0.57500005 0.16666667 0.62500006 0.16666667 0.375 0.25 0.42500001
		 0.25 0.47500002 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.375
		 0.42500001 0.375 0.47500002 0.375 0.52500004 0.375 0.57500005 0.375 0.62500006 0.375
		 0.375 0.5 0.42500001 0.5 0.47500002 0.5 0.52500004 0.5 0.57500005 0.5 0.62500006
		 0.5 0.375 0.58333331 0.42500001 0.58333331 0.47500002 0.58333331 0.52500004 0.58333331
		 0.57500005 0.58333331 0.62500006 0.58333331 0.375 0.66666663 0.42500001 0.66666663
		 0.47500002 0.66666663 0.52500004 0.66666663 0.57500005 0.66666663 0.62500006 0.66666663
		 0.375 0.74999994 0.42500001 0.74999994 0.47500002 0.74999994 0.52500004 0.74999994
		 0.57500005 0.74999994 0.62500006 0.74999994 0.375 0.87499994 0.42500001 0.87499994
		 0.47500002 0.87499994 0.52500004 0.87499994 0.57500005 0.87499994 0.62500006 0.87499994
		 0.375 0.99999994 0.42500001 0.99999994 0.47500002 0.99999994 0.52500004 0.99999994
		 0.57500005 0.99999994 0.62500006 0.99999994 0.875 0 0.75 0 0.875 0.083333336 0.75
		 0.083333336 0.875 0.16666667 0.75 0.16666667 0.875 0.25 0.75 0.25 0.125 0 0.25 0
		 0.125 0.083333336 0.25 0.083333336 0.125 0.16666667 0.25 0.16666667 0.125 0.25 0.25
		 0.25 0.42500001 0.93867075 0.31367087 0 0.375 0.93867075 0.31367087 0.083333336 0.31367087
		 0.16666667 0.31367087 0.25 0.375 0.31132913 0.42500001 0.31132913 0.47500002 0.31132913
		 0.52500004 0.31132913 0.57500005 0.31132913 0.62500006 0.31132913 0.68632913 0.25
		 0.68632913 0.16666667 0.68632913 0.083333336 0.62500006 0.93867075 0.68632913 0 0.57500005
		 0.93867075 0.52500004 0.93867075 0.47500002 0.93867075 0.375 0.014831936 0.31367087
		 0.014831936 0.25 0.014831936 0.125 0.014831936 0.375 0.73516798 0.42500001 0.73516798
		 0.47500002 0.73516798 0.52500004 0.73516798 0.57500005 0.73516798 0.625 0.73516798
		 0.875 0.014831936 0.75 0.014831936 0.68632913 0.014831936 0.625 0.014831936 0.57500005
		 0.014831936 0.52500004 0.014831936 0.47500002 0.014831936 0.42500001 0.014831936
		 0.41585502 0.74999988 0.41585502 0.87499994 0.41585502 0.93867075 0.41585502 0 0.41585502
		 0.99999994 0.41585502 0.014831936 0.41585502 0.083333336 0.41585502 0.16666667 0.41585502
		 0.25 0.41585502 0.31132913 0.41585502 0.375 0.41585502 0.5 0.41585502 0.58333331
		 0.41585502 0.66666663 0.41585502 0.73516798 0.17249878 0.014831936 0.17249878 0 0.375
		 0.7974987 0.41585499 0.7974987 0.42500001 0.7974987 0.47500002 0.7974987 0.52500004
		 0.7974987 0.57500005 0.7974987 0.62500006 0.7974987 0.82750118 0 0.82750118 0.014831936
		 0.82750118 0.083333336 0.82750118 0.16666667 0.62500006 0.45250124 0.82750118 0.25
		 0.57500005 0.45250124 0.52500004 0.45250124 0.47500002 0.45250124 0.42500001 0.45250124
		 0.41585499 0.45250124 0.17249878 0.25 0.375 0.45250124 0.17249878 0.16666667 0.17249878
		 0.083333336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 130 ".vt[0:129]"  -0.5 -0.5 0.5 -0.30000001 -0.5 0.5 -0.10000001 -0.49999994 0.5
		 0.099999994 -0.49999994 0.5 0.30000001 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.16666666 0.5
		 -0.30000001 -0.16666666 0.5 -0.10000001 -0.16666666 0.5 0.099999994 -0.16666666 0.5
		 0.30000001 -0.16666666 0.5 0.5 -0.16666666 0.5 -0.50251973 0.1345776 0.39883029 -0.30251977 0.1345776 0.39883029
		 -0.10251976 0.1345776 0.39883029 0.097480245 0.1345776 0.39883029 0.29748026 0.1345776 0.39883029
		 0.49748024 0.1345776 0.39883029 -0.51880836 0.31142572 0.31644702 -0.31880838 0.31142572 0.31644702
		 -0.11880838 0.31142572 0.31644702 0.081191622 0.31142572 0.31644702 0.28119165 0.31142572 0.31644702
		 0.48119164 0.31142572 0.31644702 -0.50664473 0.45224717 -0.084597953 -0.30664474 0.45224717 -0.084597953
		 -0.10664473 0.45224717 -0.084597953 0.093355268 0.45224717 -0.084597953 0.29335529 0.45224717 -0.084597953
		 0.49335527 0.45224717 -0.084597953 -0.49192065 0.57253999 -0.69848943 -0.29192066 0.57253999 -0.69848943
		 -0.091920666 0.57253999 -0.69848943 0.10807934 0.57253999 -0.69848943 0.30807936 0.57253999 -0.69848943
		 0.50807935 0.57253999 -0.69848943 -0.50128424 0.14502257 -0.44935888 -0.30128422 0.14502257 -0.44935888
		 -0.10128424 0.14502257 -0.44935888 0.098715767 0.14502257 -0.44935888 0.2987158 0.14502257 -0.44935888
		 0.49871579 0.14502257 -0.44935888 -0.5 -0.16666669 -0.43606606 -0.30000001 -0.16666669 -0.43606606
		 -0.10000001 -0.16666669 -0.43606606 0.099999994 -0.16666669 -0.43606606 0.30000001 -0.16666669 -0.43606606
		 0.5 -0.16666669 -0.43606606 -0.5 -0.5 -0.5 -0.30000001 -0.5 -0.5 -0.10000001 -0.5 -0.5
		 0.099999994 -0.5 -0.5 0.30000001 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 -0.30000001 -0.5 0
		 -0.10000001 -0.5 0 0.099999994 -0.5 0 0.30000001 -0.5 0 0.5 -0.5 0 0.5 -0.16666666 0
		 0.5 0.16666669 0 -0.5 -0.16666666 0 -0.5 0.16666669 0 -0.30000001 -0.5 0.25468349
		 -0.5 -0.5 0.25468349 -0.5 -0.16666666 0.25468349 -0.50128347 0.15032157 0.20315099
		 -0.51284051 0.38051736 0.11968112 -0.31284049 0.38051736 0.11968112 -0.1128405 0.38051736 0.11968112
		 0.087159514 0.38051736 0.11968112 0.28715953 0.38051736 0.11968112 0.48715952 0.38051736 0.11968112
		 0.49871653 0.15032157 0.20315099 0.5 -0.16666666 0.25468349 0.5 -0.5 0.25468349 0.30000001 -0.5 0.25468349
		 0.099999994 -0.49999997 0.25468349 -0.10000001 -0.49999997 0.25468349 -0.5 -0.44067225 0.5
		 -0.5 -0.44067225 0.25468349 -0.5 -0.44067225 0 -0.5 -0.44067225 -0.48862082 -0.30000001 -0.44067225 -0.48862082
		 -0.10000001 -0.44067225 -0.48862082 0.099999994 -0.44067225 -0.48862082 0.30000001 -0.44067225 -0.48862082
		 0.5 -0.44067225 -0.48862082 0.5 -0.44067225 0 0.5 -0.44067225 0.25468349 0.5 -0.44067225 0.5
		 0.30000001 -0.44067225 0.5 0.099999994 -0.44067219 0.5 -0.10000001 -0.44067219 0.5
		 -0.30000001 -0.44067225 0.5 -0.33657998 -0.5 -0.5 -0.33657998 -0.5 0 -0.33657998 -0.5 0.25468349
		 -0.33657998 -0.5 0.5 -0.33657998 -0.44067225 0.5 -0.33657998 -0.16666666 0.5 -0.33909971 0.1345776 0.39883029
		 -0.35538834 0.31142572 0.31644702 -0.34942043 0.38051736 0.11968112 -0.34322467 0.45224717 -0.084597953
		 -0.32850063 0.57253999 -0.69848943 -0.33786416 0.14502257 -0.44935888 -0.33657998 -0.16666669 -0.43606606
		 -0.33657998 -0.44067225 -0.48862082 -0.5 -0.44067225 -0.3029497 -0.5 -0.5 -0.31000489
		 -0.33657998 -0.5 -0.31000489 -0.30000001 -0.5 -0.31000489 -0.10000001 -0.5 -0.31000489
		 0.099999994 -0.5 -0.31000489 0.30000001 -0.5 -0.31000489 0.5 -0.5 -0.31000489 0.5 -0.44067225 -0.3029497
		 0.5 -0.16666669 -0.27036521 0.49920377 0.15324712 -0.27860689 0.50248432 0.5268299 -0.46521667
		 0.30248436 0.5268299 -0.46521667 0.10248433 0.5268299 -0.46521667 -0.097515672 0.5268299 -0.46521667
		 -0.29751566 0.5268299 -0.46521667 -0.33409563 0.5268299 -0.46521667 -0.49751568 0.5268299 -0.46521667
		 -0.5007962 0.15324712 -0.27860689 -0.5 -0.16666669 -0.27036521;
	setAttr -s 256 ".ed";
	setAttr ".ed[0:165]"  0 99 0 1 2 0 2 3 0 3 4 0 4 5 0 6 101 1 7 8 1 8 9 1
		 9 10 1 10 11 1 12 102 1 13 14 1 14 15 1 15 16 1 16 17 1 18 103 0 19 20 0 20 21 0
		 21 22 0 22 23 0 24 105 1 25 26 1 26 27 1 27 28 1 28 29 1 30 106 0 31 32 0 32 33 0
		 33 34 0 34 35 0 36 107 1 37 38 1 38 39 1 39 40 1 40 41 1 42 108 1 43 44 1 44 45 1
		 45 46 1 46 47 1 48 96 0 49 50 0 50 51 0 51 52 0 52 53 0 54 97 1 55 56 1 56 57 1 57 58 1
		 58 59 1 0 80 0 1 95 1 2 94 1 3 93 1 4 92 1 5 91 0 6 12 0 7 13 1 8 14 1 9 15 1 10 16 1
		 11 17 0 12 18 0 13 19 1 14 20 1 15 21 1 16 22 1 17 23 0 18 68 0 19 69 1 20 70 1 21 71 1
		 22 72 1 23 73 0 24 127 0 25 125 1 26 124 1 27 123 1 28 122 1 29 121 0 30 36 0 31 37 1
		 32 38 1 33 39 1 34 40 1 35 41 0 36 42 0 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 83 0
		 43 84 1 44 85 1 45 86 1 46 87 1 47 88 0 48 111 0 49 113 1 50 114 1 51 115 1 52 116 1
		 53 117 0 54 65 0 55 64 1 56 79 1 57 78 1 58 77 1 59 76 0 47 119 1 60 75 1 41 120 1
		 61 74 1 59 89 1 60 61 1 61 29 1 42 129 1 62 66 1 36 128 1 63 67 1 54 82 1 62 63 1
		 63 24 1 64 1 1 65 0 0 64 98 1 66 6 1 65 81 1 67 12 1 66 67 1 68 24 0 67 68 1 69 25 1
		 68 104 1 70 26 1 69 70 1 71 27 1 70 71 1 72 28 1 71 72 1 73 29 0 72 73 1 74 17 1
		 73 74 1 75 11 1 74 75 1 76 5 0 75 90 1 77 4 1 76 77 1 78 3 1 77 78 1 79 2 1 78 79 1
		 79 64 1 80 6 0 81 66 1 80 81 1 82 62 1 81 82 1 83 48 0 82 110 1 84 49 1 83 109 1
		 85 50 1;
	setAttr ".ed[166:255]" 84 85 1 86 51 1 85 86 1 87 52 1 86 87 1 88 53 0 87 88 1
		 89 60 1 88 118 1 90 76 1 89 90 1 91 11 0 90 91 1 92 10 1 91 92 1 93 9 1 92 93 1 94 8 1
		 93 94 1 95 7 1 94 95 1 95 100 1 96 49 0 97 55 1 96 112 1 98 65 1 97 98 1 99 1 0 98 99 1
		 100 80 1 99 100 1 101 7 1 100 101 1 102 13 1 101 102 1 103 19 0 102 103 1 104 69 1
		 103 104 1 105 25 1 104 105 1 106 31 0 105 126 1 107 37 1 106 107 1 108 43 1 107 108 1
		 109 84 1 108 109 1 109 96 1 110 83 1 111 54 0 110 111 1 112 97 1 111 112 1 113 55 1
		 112 113 1 114 56 1 113 114 1 115 57 1 114 115 1 116 58 1 115 116 1 117 59 0 116 117 1
		 118 89 1 117 118 1 119 60 1 118 119 1 120 61 1 119 120 1 121 35 0 120 121 1 122 34 1
		 121 122 1 123 33 1 122 123 1 124 32 1 123 124 1 125 31 1 124 125 1 126 106 1 125 126 1
		 127 30 0 126 127 1 128 63 1 127 128 1 129 62 1 128 129 1 129 110 1;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 196 195 -51
		mu 0 4 0 123 125 102
		f 4 1 52 186 -52
		mu 0 4 1 2 118 119
		f 4 2 53 184 -53
		mu 0 4 2 3 117 118
		f 4 3 54 182 -54
		mu 0 4 3 4 116 117
		f 4 4 55 180 -55
		mu 0 4 4 5 115 116
		f 4 5 200 -11 -57
		mu 0 4 6 126 127 12
		f 4 6 58 -12 -58
		mu 0 4 7 8 14 13
		f 4 7 59 -13 -59
		mu 0 4 8 9 15 14
		f 4 8 60 -14 -60
		mu 0 4 9 10 16 15
		f 4 9 61 -15 -61
		mu 0 4 10 11 17 16
		f 4 10 202 -16 -63
		mu 0 4 12 127 128 18
		f 4 11 64 -17 -64
		mu 0 4 13 14 20 19
		f 4 12 65 -18 -65
		mu 0 4 14 15 21 20
		f 4 13 66 -19 -66
		mu 0 4 15 16 22 21
		f 4 14 67 -20 -67
		mu 0 4 16 17 23 22
		f 4 134 206 -21 -132
		mu 0 4 88 129 130 24
		f 4 136 135 -22 -134
		mu 0 4 89 90 26 25
		f 4 138 137 -23 -136
		mu 0 4 90 91 27 26
		f 4 140 139 -24 -138
		mu 0 4 91 92 28 27
		f 4 142 141 -25 -140
		mu 0 4 92 93 29 28
		f 4 20 208 250 -75
		mu 0 4 24 130 154 156
		f 4 21 76 246 -76
		mu 0 4 25 26 152 153
		f 4 22 77 244 -77
		mu 0 4 26 27 151 152
		f 4 23 78 242 -78
		mu 0 4 27 28 150 151
		f 4 24 79 240 -79
		mu 0 4 28 29 148 150
		f 4 25 210 -31 -81
		mu 0 4 30 131 132 36
		f 4 26 82 -32 -82
		mu 0 4 31 32 38 37
		f 4 27 83 -33 -83
		mu 0 4 32 33 39 38
		f 4 28 84 -34 -84
		mu 0 4 33 34 40 39
		f 4 29 85 -35 -85
		mu 0 4 34 35 41 40
		f 4 30 212 -36 -87
		mu 0 4 36 132 133 42
		f 4 31 88 -37 -88
		mu 0 4 37 38 44 43
		f 4 32 89 -38 -89
		mu 0 4 38 39 45 44
		f 4 33 90 -39 -90
		mu 0 4 39 40 46 45
		f 4 34 91 -40 -91
		mu 0 4 40 41 47 46
		f 4 164 215 -41 -162
		mu 0 4 106 134 120 48
		f 4 166 165 -42 -164
		mu 0 4 107 108 50 49
		f 4 168 167 -43 -166
		mu 0 4 108 109 51 50
		f 4 170 169 -44 -168
		mu 0 4 109 110 52 51
		f 4 172 171 -45 -170
		mu 0 4 110 111 53 52
		f 4 220 219 -46 -218
		mu 0 4 137 138 121 54
		f 4 224 223 -47 -222
		mu 0 4 139 140 56 55
		f 4 226 225 -48 -224
		mu 0 4 140 141 57 56
		f 4 228 227 -49 -226
		mu 0 4 141 142 58 57
		f 4 230 229 -50 -228
		mu 0 4 142 143 59 58
		f 4 45 192 191 -105
		mu 0 4 54 121 122 84
		f 4 46 106 155 -106
		mu 0 4 55 56 101 82
		f 4 47 107 154 -107
		mu 0 4 56 57 100 101
		f 4 48 108 152 -108
		mu 0 4 57 58 99 100
		f 4 49 109 150 -109
		mu 0 4 58 59 97 99
		f 4 -230 232 231 -115
		mu 0 4 67 144 145 113
		f 4 -110 114 176 175
		mu 0 4 98 67 113 114
		f 4 -234 236 235 -116
		mu 0 4 69 146 147 71
		f 4 -112 115 113 146
		mu 0 4 96 69 71 95
		f 4 -236 238 -80 -117
		mu 0 4 71 147 149 73
		f 4 -114 116 -142 144
		mu 0 4 95 71 73 94
		f 4 217 121 162 218
		mu 0 4 136 75 104 135
		f 4 104 128 160 -122
		mu 0 4 75 83 103 104
		f 4 253 122 -252 254
		mu 0 4 158 77 79 157
		f 4 118 130 -121 -123
		mu 0 4 77 85 86 79
		f 4 251 123 74 252
		mu 0 4 157 79 81 155
		f 4 120 132 131 -124
		mu 0 4 79 86 87 81
		f 4 -192 194 -1 -126
		mu 0 4 84 122 124 60
		f 4 -129 125 50 158
		mu 0 4 103 83 0 102
		f 4 -131 127 56 -130
		mu 0 4 86 85 6 12
		f 4 -133 129 62 68
		mu 0 4 87 86 12 18
		f 4 15 204 -135 -69
		mu 0 4 18 128 129 88
		f 4 16 70 -137 -70
		mu 0 4 19 20 90 89
		f 4 17 71 -139 -71
		mu 0 4 20 21 91 90
		f 4 18 72 -141 -72
		mu 0 4 21 22 92 91
		f 4 19 73 -143 -73
		mu 0 4 22 23 93 92
		f 4 -144 -145 -74 -68
		mu 0 4 17 95 94 23
		f 4 -146 -147 143 -62
		mu 0 4 11 96 95 17
		f 4 -148 -176 178 -56
		mu 0 4 5 98 114 115
		f 4 -151 147 -5 -150
		mu 0 4 99 97 65 64
		f 4 -153 149 -4 -152
		mu 0 4 100 99 64 63
		f 4 -155 151 -3 -154
		mu 0 4 101 100 63 62
		f 4 -156 153 -2 -125
		mu 0 4 82 101 62 61
		f 4 -158 -159 156 -128
		mu 0 4 85 103 102 6
		f 4 -161 157 -119 -160
		mu 0 4 104 103 85 77
		f 4 255 -163 159 -254
		mu 0 4 158 135 104 77
		f 4 35 214 -165 -93
		mu 0 4 42 133 134 106
		f 4 36 94 -167 -94
		mu 0 4 43 44 108 107
		f 4 37 95 -169 -95
		mu 0 4 44 45 109 108
		f 4 38 96 -171 -96
		mu 0 4 45 46 110 109
		f 4 39 97 -173 -97
		mu 0 4 46 47 111 110
		f 4 -232 234 233 -174
		mu 0 4 113 145 146 69
		f 4 -177 173 111 148
		mu 0 4 114 113 69 96
		f 4 -179 -149 145 -178
		mu 0 4 115 114 96 11
		f 4 -181 177 -10 -180
		mu 0 4 116 115 11 10
		f 4 -183 179 -9 -182
		mu 0 4 117 116 10 9
		f 4 -185 181 -8 -184
		mu 0 4 118 117 9 8
		f 4 -187 183 -7 -186
		mu 0 4 119 118 8 7
		f 4 -196 198 -6 -157
		mu 0 4 102 125 126 6
		f 4 222 221 -190 -220
		mu 0 4 138 139 55 121
		f 4 -193 189 105 126
		mu 0 4 122 121 55 82
		f 4 -195 -127 124 -194
		mu 0 4 124 122 82 61
		f 4 -197 193 51 187
		mu 0 4 125 123 1 119
		f 4 -199 -188 185 -198
		mu 0 4 126 125 119 7
		f 4 -201 197 57 -200
		mu 0 4 127 126 7 13
		f 4 -203 199 63 -202
		mu 0 4 128 127 13 19
		f 4 -205 201 69 -204
		mu 0 4 129 128 19 89
		f 4 -207 203 133 -206
		mu 0 4 130 129 89 25
		f 4 -209 205 75 248
		mu 0 4 154 130 25 153
		f 4 -211 207 81 -210
		mu 0 4 132 131 31 37
		f 4 -213 209 87 -212
		mu 0 4 133 132 37 43
		f 4 -215 211 93 -214
		mu 0 4 134 133 43 107
		f 4 -216 213 163 -189
		mu 0 4 120 134 107 49
		f 4 98 -219 216 161
		mu 0 4 74 136 135 105
		f 4 40 190 -221 -99
		mu 0 4 48 120 138 137
		f 4 188 99 -223 -191
		mu 0 4 120 49 139 138
		f 4 41 100 -225 -100
		mu 0 4 49 50 140 139
		f 4 42 101 -227 -101
		mu 0 4 50 51 141 140
		f 4 43 102 -229 -102
		mu 0 4 51 52 142 141
		f 4 44 103 -231 -103
		mu 0 4 52 53 143 142
		f 4 -233 -104 -172 174
		mu 0 4 145 144 66 112
		f 4 -235 -175 -98 110
		mu 0 4 146 145 112 68
		f 4 -237 -111 -92 112
		mu 0 4 147 146 68 70
		f 4 -239 -113 -86 -238
		mu 0 4 149 147 70 72
		f 4 -241 237 -30 -240
		mu 0 4 150 148 35 34
		f 4 -243 239 -29 -242
		mu 0 4 151 150 34 33
		f 4 -245 241 -28 -244
		mu 0 4 152 151 33 32
		f 4 -247 243 -27 -246
		mu 0 4 153 152 32 31
		f 4 -248 -249 245 -208
		mu 0 4 131 154 153 31
		f 4 -251 247 -26 -250
		mu 0 4 156 154 131 30
		f 4 119 -253 249 80
		mu 0 4 78 157 155 80
		f 4 117 -255 -120 86
		mu 0 4 76 158 157 78
		f 4 -217 -256 -118 92
		mu 0 4 105 135 158 76;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pCube12" -p "pasted__Sofa";
	rename -uid "957796AA-4DE0-80E6-8DC6-38B34A7DFE2F";
	setAttr ".t" -type "double3" 14.191073836371441 8.4554381180024762 21.375426488767825 ;
	setAttr ".s" -type "double3" 0.050559397645436155 1.0576440681511725 0.69866703042229428 ;
createNode mesh -n "pasted__pasted__pCubeShape12" -p "pasted__pasted__pCube12";
	rename -uid "FB419BDD-4AB7-53AC-D096-C5BA5EFD1374";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 13 "f[25:27]" "f[30:31]" "f[34:35]" "f[38]" "f[70:71]" "f[78:79]" "f[87:90]" "f[94:97]" "f[187:190]" "f[213:216]" "f[239:242]" "f[265:268]" "f[291:294]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 19 "f[0:1]" "f[5]" "f[10:11]" "f[33]" "f[39]" "f[43:44]" "f[49:50]" "f[84:85]" "f[92:93]" "f[105:109]" "f[121:125]" "f[137:141]" "f[153:157]" "f[169:173]" "f[191:198]" "f[217:224]" "f[243:250]" "f[269:276]" "f[295:302]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 14 "f[3:4]" "f[7:8]" "f[12:13]" "f[19:20]" "f[36]" "f[45:48]" "f[52:55]" "f[59:62]" "f[66:69]" "f[199:203]" "f[225:229]" "f[251:255]" "f[277:281]" "f[303:307]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 13 "f[2]" "f[6]" "f[15]" "f[24]" "f[41:42]" "f[58]" "f[72]" "f[86]" "f[102:104]" "f[118:120]" "f[134:136]" "f[150:152]" "f[166:168]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 14 "f[9]" "f[14]" "f[23]" "f[32]" "f[40]" "f[51]" "f[63]" "f[77]" "f[91]" "f[110:112]" "f[126:128]" "f[142:144]" "f[158:160]" "f[174:176]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 18 "f[16:18]" "f[21:22]" "f[28:29]" "f[37]" "f[56:57]" "f[64:65]" "f[73:76]" "f[80:83]" "f[98:101]" "f[113:117]" "f[129:133]" "f[145:149]" "f[161:165]" "f[177:186]" "f[204:212]" "f[230:238]" "f[256:264]" "f[282:290]";
	setAttr ".pv" -type "double2" 0.56749948859214783 0.25083115696907043 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 353 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.38499898 0.99000102 0.38499901
		 0.049994949 0.61500102 0.99000096 0.63499898 0.049994949 0.38499898 0.20000505 0.61500102
		 0.20000505 0.63499898 0.20000505 0.13499899 0.049994949 0.38499898 0.49000102 0.61500102
		 0.49000099 0.86500102 0.20000505 0.86500102 0.049994946 0.61500102 0.75999898 0.38499898
		 0.70000505 0.61500102 0.70000505 0.61500102 0.049994946 0.38499901 0.25999901 0.61500102
		 0.25999898 0.38499901 0.54999495 0.61500102 0.54999495 0.38499901 0.75999898 0.36500102
		 0.049994946 0.36500099 0.20000505 0.13499899 0.20000505 0.45564353 0.75 0.36693063
		 -2.5262181e-16 0.42126068 0.86695427 0.38132441 -2.6045384e-16 0.46044147 0.75 0.38315168
		 0.034840848 0.37827677 0.11854428 0.37167495 0.075246751 0.57873929 0.86695421 0.6330694
		 -1.4067334e-16 0.54435647 0.75 0.62832505 0.045034386 0.62172329 0.04692667 0.61684835
		 0.024845654 0.53955853 0.75 0.61867559 -1.4853926e-16 0.38001239 0.25713274 0.37035576
		 0.25 0.375 0.25464424 0.37241825 0.20618783 0.3789115 0.20442735 0.38500884 0.22026354
		 0.38501322 0.24022377 0.625 0.25464427 0.62964427 0.25 0.61998761 0.25712922 0.61498678
		 0.24020793 0.61499119 0.22023831 0.62108856 0.20205753 0.62758178 0.20452803 0.38009042
		 0.54062605 0.125 0.22146384 0.375 0.52853614 0.375 0.49535576 0.12964423 0.25 0.38001412
		 0.49285996 0.38502109 0.50974315 0.38502139 0.52968371 0.625 0.5285362 0.875 0.2214638
		 0.61990964 0.54062599 0.61497861 0.52968371 0.61497891 0.50974309 0.61998588 0.49285993
		 0.87035578 0.25 0.625 0.49535576 0.38078517 0.75479406 0.1295794 -4.7817702e-18 0.37652647
		 0.75 0.375 0.72146386 0.125 0.028536161 0.38009721 0.7093522 0.3850266 0.72030038
		 0.38502935 0.74023175 0.62347353 0.75 0.87042058 -2.6627504e-18 0.61921483 0.75479406
		 0.61497068 0.74023175 0.61497343 0.72030038 0.61990285 0.70935225 0.875 0.028536202
		 0.625 0.7214638 0.37151006 -2.574036e-16 0.45717001 0.75 0.37674496 -2.6286985e-16
		 0.458915 0.75 0.37808517 0.43668959 0.62325507 -1.4637999e-16 0.541085 0.75 0.62848991
		 -1.4333611e-16 0.54282999 0.75 0.62191486 0.019456783 0.38073549 0.2447778 0.375
		 0.25 0.38046387 0.22553526 0.625 0.25 0.61926454 0.24463114 0.61953616 0.22480483
		 0.38082728 0.52293998 0.375 0.5 0.125 0.25 0.38080844 0.50491595 0.625 0.5 0.875
		 0.25 0.61917275 0.52293998 0.61919159 0.50491589 0.38104644 0.74435979 0.375 0.75
		 0.125 0 0.38087675 0.7269091 0.625 0.75 0.875 0 0.61895359 0.74435985 0.61912328
		 0.72690916 0.61998618 0.45357147 0.61500102 0.45166734 0.38499898 0.45166734 0.38001382
		 0.45357209 0.16976282 0.25 0.375 0.45523718 0.17333266 0.20000505 0.17333266 0.049994949
		 0.38971266 0.75 0.16913794 -4.6088446e-17 0.3875311 0.77348745 0.38499898 0.79833269
		 0.61500102 0.79833269 0.61246896 0.77348745 0.83086205 -2.5664518e-17 0.61028731
		 0.75 0.82666737 0.049994946 0.82666737 0.20000505 0.625 0.45523718 0.83023721 0.25
		 0.61998647 0.41428304 0.61500102 0.41333365 0.38499898 0.41333368 0.38001356 0.41428423
		 0.2098814 0.25 0.375 0.41511858 0.21166633 0.20000505 0.21166635 0.049994949 0.40289885
		 0.75 0.20869648 -8.7395112e-17 0.39427704 0.79218084 0.38499898 0.83666635 0.61500102
		 0.83666635 0.60572302 0.79218078 0.79130352 -4.8666278e-17 0.59710115 0.75 0.78833371
		 0.049994946 0.78833371 0.20000505 0.625 0.4151186 0.79011858 0.25 0.61998677 0.37499458
		 0.61500102 0.375 0.38499898 0.37500003 0.38001326 0.37499636 0.24999997 0.25 0.375
		 0.375 0.25 0.20000505 0.25 0.049994949 0.41608503 0.75 0.24825501 -1.2870179e-16
		 0.40102294 0.81087422 0.38499898 0.875 0.61500102 0.875 0.59897709 0.8108741 0.75174499
		 -7.166804e-17 0.583915 0.75 0.75000006 0.049994946 0.75000006 0.20000505 0.625 0.37500003
		 0.75 0.25 0.61998707 0.33570611 0.61500102 0.33666632 0.38499898 0.33666635 0.38001296
		 0.33570847 0.29011858 0.25 0.375 0.33488142 0.28833365 0.20000505 0.28833368 0.049994946
		 0.42927122 0.75 0.28781357 -1.7000846e-16 0.40776885 0.82956755 0.38499898 0.91333365
		 0.61500102 0.91333365 0.59223115 0.82956749 0.71218646 -9.4669809e-17 0.57072884
		 0.75 0.71166635 0.049994946 0.71166635 0.20000505 0.625 0.33488142 0.70988142 0.25
		 0.61998737 0.29641765 0.61500102 0.29833263 0.38499898 0.29833269 0.38001269 0.2964206
		 0.33023715 0.25 0.375 0.29476285 0.32666731 0.20000505 0.32666737 0.049994946 0.44245738
		 0.75 0.3273721 -2.1131513e-16 0.41451478 0.84826088 0.38499898 0.95166731 0.61500102
		 0.95166731 0.58548522 0.84826088 0.67262793 -1.1767158e-16 0.55754268 0.75 0.67333269
		 0.049994946 0.67333269 0.20000505 0.625 0.29476285 0.66976285 0.25 0.57665783 0.24021058
		 0.57666731 0.25999898 0.57666731 0.29833263 0.57666731 0.33666632 0.57666731 0.375
		 0.57666731 0.41333365 0.57666731 0.45166734 0.57666731 0.49000102 0.57665259 0.50974309
		 0.57665241 0.52968371 0.57666731 0.54999495 0.57666731 0.70000505 0.57664895 0.72030038
		 0.5766471 0.74023175 0.57666731 0.75999904 0.57666731 0.79833269 0.57666731 0.83666635
		 0.57666731 0.875 0.57666731 0.91333365 0.57666731 0.95166731 0.57666731 0.99000096
		 0.57911706 -1.6719169e-16 0.52637237 0.75 0.57789892 0.02651152 0.57666731 0.049994946
		 0.57666731 0.20000505 0.57666081 0.22024252 0.53832889 0.24021322 0.53833365 0.25999898
		 0.53833365 0.29833263 0.53833365 0.33666635 0.53833365 0.375;
	setAttr ".uvst[0].uvsp[250:352]" 0.53833365 0.41333365 0.53833365 0.45166734
		 0.53833365 0.49000102 0.53832626 0.50974309 0.5383262 0.52968371 0.53833365 0.54999495
		 0.53833365 0.70000505 0.53832448 0.72030038 0.53832352 0.74023175 0.53833365 0.75999904
		 0.53833365 0.79833269 0.53833365 0.83666635 0.53833365 0.875 0.53833365 0.91333365
		 0.53833365 0.95166731 0.53833365 0.99000096 0.53955853 -1.8584412e-16 0.51318622
		 0.75 0.53894949 0.028177384 0.53833365 0.049994946 0.53833365 0.20000505 0.53833044
		 0.22024672 0.49999997 0.24021585 0.5 0.25999898 0.5 0.29833263 0.5 0.33666635 0.5
		 0.375 0.5 0.41333365 0.5 0.45166734 0.5 0.49000102 0.49999997 0.50974309 0.5 0.52968371
		 0.5 0.54999495 0.5 0.70000505 0.5 0.72030038 0.49999997 0.74023175 0.5 0.75999904
		 0.5 0.79833269 0.5 0.83666635 0.5 0.875 0.5 0.91333365 0.5 0.95166731 0.5 0.99000096
		 0.5 -2.0449656e-16 0.5 0.75 0.50000006 0.029843252 0.5 0.049994946 0.5 0.20000505
		 0.50000006 0.22025092 0.46167105 0.24021849 0.46166635 0.25999898 0.46166632 0.29833263
		 0.46166632 0.33666635 0.46166632 0.375 0.46166632 0.41333365 0.46166632 0.45166737
		 0.46166632 0.49000102 0.46167368 0.50974309 0.4616738 0.52968371 0.46166635 0.54999495
		 0.46166632 0.70000505 0.46167552 0.72030038 0.46167642 0.74023175 0.46166635 0.75999904
		 0.46166632 0.79833269 0.46166632 0.83666635 0.46166632 0.875 0.46166632 0.91333365
		 0.46166632 0.95166731 0.46166632 0.99000096 0.46044147 -2.2314898e-16 0.48681384
		 0.75 0.46105057 0.031509116 0.46166635 0.049994946 0.46166632 0.20000505 0.46166962
		 0.22025514 0.42334214 0.24022113 0.42333269 0.25999898 0.42333263 0.29833266 0.42333263
		 0.33666635 0.42333263 0.375 0.42333263 0.41333365 0.42333263 0.45166737 0.42333263
		 0.49000102 0.42334738 0.50974309 0.42334759 0.52968371 0.42333269 0.54999495 0.42333263
		 0.70000505 0.42335105 0.72030038 0.4233529 0.74023175 0.42333269 0.75999904 0.42333263
		 0.79833269 0.42333263 0.83666635 0.42333263 0.875 0.42333263 0.91333365 0.42333263
		 0.95166731 0.42333263 0.99000096 0.42088294 -2.4180141e-16 0.47362766 0.75 0.42210114
		 0.033174984 0.42333269 0.049994946 0.42333263 0.20000505 0.42333925 0.22025934;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 29 ".pt";
	setAttr ".pt[157]" -type "float3" 0 -0.13253956 -1.0214052e-14 ;
	setAttr ".pt[158]" -type "float3" 0 -0.13253956 -1.0214052e-14 ;
	setAttr ".pt[173]" -type "float3" 0 -0.13253956 -1.0214052e-14 ;
	setAttr ".pt[174]" -type "float3" 0 -0.13253956 -1.0214052e-14 ;
	setAttr ".pt[178]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[179]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[180]" -type "float3" 0 0.090718947 -1.0181039e-14 ;
	setAttr ".pt[181]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[182]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[204]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[205]" -type "float3" 0 0.13642575 -2.0428104e-14 ;
	setAttr ".pt[206]" -type "float3" 0 0.13642575 -2.0362077e-14 ;
	setAttr ".pt[207]" -type "float3" 0 0.13642575 -2.0428104e-14 ;
	setAttr ".pt[208]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[230]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[231]" -type "float3" 0 0.13642575 -2.0428104e-14 ;
	setAttr ".pt[232]" -type "float3" 0 0.13642575 -2.0362077e-14 ;
	setAttr ".pt[233]" -type "float3" 0 0.13642575 -2.0428104e-14 ;
	setAttr ".pt[234]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[256]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[257]" -type "float3" 0 0.13642575 -2.0428104e-14 ;
	setAttr ".pt[258]" -type "float3" 0 0.13642575 -2.0362077e-14 ;
	setAttr ".pt[259]" -type "float3" 0 0.13642575 -2.0428104e-14 ;
	setAttr ".pt[260]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[282]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[283]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[284]" -type "float3" 0 0.090718947 -1.0181039e-14 ;
	setAttr ".pt[285]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr ".pt[286]" -type "float3" 0 0.090718947 -1.0214052e-14 ;
	setAttr -s 306 ".vt";
	setAttr ".vt[0:165]"  -4.94641495 -0.80002022 4.60004044 -4.80001831 -0.94641495 4.60004044
		 -4.60004044 -1 4.60004044 -4.60004044 -0.94641495 4.80002022 -4.60004044 -0.80002022 4.94641495
		 -4.60004044 -0.60004044 5 -4.80001831 -0.60004044 4.94641495 -4.94641495 -0.60004044 4.80002022
		 -5 -0.60004044 4.60004044 4.80002022 -0.94641495 4.60004044 4.94641495 -0.80002022 4.60004044
		 5 -0.60004044 4.60004044 4.94641495 -0.60004044 4.80002022 4.80002022 -0.60004044 4.94641495
		 4.60004044 -0.60004044 5 4.60004044 -0.80002022 4.94641495 4.60004044 -0.94641495 4.80002022
		 4.60004044 -1 4.60004044 -4.80001831 0.94641495 4.60004044 -4.94641495 0.80002022 4.60004044
		 -5 0.60004044 4.60004044 -4.94641495 0.60004044 4.80002022 -4.80001831 0.60004044 4.94641495
		 -4.60004044 0.60004044 5 -4.60004044 0.80002022 4.94641495 -4.60004044 0.94641495 4.80002022
		 -4.60004044 1 4.60004044 4.94641495 0.80002022 4.60004044 4.80002022 0.94641495 4.60004044
		 4.60004044 1 4.60004044 4.60004044 0.94641495 4.80002022 4.60004044 0.80002022 4.94641495
		 4.60004044 0.60004044 5 4.80002022 0.60004044 4.94641495 4.94641495 0.60004044 4.80002022
		 5 0.60004044 4.60004044 -4.80001831 0.60004044 -4.9464159 -4.94641495 0.60004044 -4.80002022
		 -5 0.60004044 -4.60004044 -4.94641495 0.80002022 -4.60004044 -4.80001831 0.94641495 -4.60004044
		 -4.60004044 1 -4.60004044 -4.60004044 0.94641495 -4.80002022 -4.60004044 0.80002022 -4.9464159
		 -4.60004044 0.60004044 -5 4.94641495 0.60004044 -4.80002022 4.80002022 0.60004044 -4.9464159
		 4.60004044 0.60004044 -5 4.60004044 0.80002022 -4.9464159 4.60004044 0.94641495 -4.80002022
		 4.60004044 1 -4.60004044 4.80002022 0.94641495 -4.60004044 4.94641495 0.80002022 -4.60004044
		 5 0.60004044 -4.60004044 -4.80001831 -0.94641495 -4.60004044 -4.94641495 -0.80002022 -4.60004044
		 -5 -0.60004044 -4.60004044 -4.94641495 -0.60004044 -4.80002022 -4.80001831 -0.60004044 -4.9464159
		 -4.60004044 -0.60004044 -5 -4.60004044 -0.80002022 -4.9464159 -4.60004044 -0.94641495 -4.80002022
		 -4.60004044 -1 -4.60004044 4.94641495 -0.80002022 -4.60004044 4.80002022 -0.94641495 -4.60004044
		 4.60004044 -1 -4.60004044 4.60004044 -0.94641495 -4.80002022 4.60004044 -0.80002022 -4.9464159
		 4.60004044 -0.60004044 -5 4.80002022 -0.60004044 -4.9464159 4.94641495 -0.60004044 -4.80002022
		 5 -0.60004044 -4.60004044 -4.91633987 -0.77285767 4.77285767 -4.77285767 -0.91633797 4.77285767
		 -4.77285767 -0.77285767 4.91633797 4.77285767 -0.91633797 4.77285767 4.91633797 -0.77285767 4.77285767
		 4.77285767 -0.77285767 4.91633797 -4.77285767 0.91633797 4.77285767 -4.91633987 0.77285767 4.77285767
		 -4.77285767 0.77285767 4.91633797 4.91633797 0.77285767 4.77285767 4.77285767 0.91633797 4.77285767
		 4.77285767 0.77285767 4.91633797 -4.77285767 0.77285767 -4.91633892 -4.91633987 0.77285767 -4.77285671
		 -4.77285767 0.91633797 -4.77285671 4.91633797 0.77285767 -4.77285671 4.77285767 0.77285767 -4.91633892
		 4.77285767 0.91633797 -4.77285671 -4.77285767 -0.91633797 -4.77285671 -4.91633987 -0.77285767 -4.77285671
		 -4.77285767 -0.77285767 -4.91633892 4.91633797 -0.77285767 -4.77285671 4.77285767 -0.91633797 -4.77285671
		 4.77285767 -0.77285767 -4.91633892 4.80002022 0.94641495 -3.066693306 4.60004044 1 -3.066693306
		 -4.60004044 1 -3.066693306 -4.80001831 0.94641495 -3.066693306 -4.94641495 0.80002022 -3.066693306
		 -5 0.60004044 -3.066693306 -5 -0.60004044 -3.066693306 -4.94641495 -0.80002022 -3.066693306
		 -4.80001831 -0.94641495 -3.066693306 -4.60004044 -1 -3.066693306 4.60004044 -1 -3.066693306
		 4.80002022 -0.94641495 -3.066693306 4.94641495 -0.80002022 -3.066693306 5 -0.60004044 -3.066693306
		 5 0.60004044 -3.066693306 4.94641495 0.80002022 -3.066693306 4.80002022 0.94641495 -1.53334665
		 4.60004044 1 -1.53334665 -4.60004044 1 -1.53334665 -4.80001831 0.94641495 -1.53334665
		 -4.94641495 0.80002022 -1.53334665 -5 0.60004044 -1.53334665 -5 -0.60004044 -1.53334665
		 -4.94641495 -0.80002022 -1.53334665 -4.80001831 -0.94641495 -1.53334665 -4.60004044 -1 -1.53334665
		 4.60004044 -1 -1.53334665 4.80002022 -0.94641495 -1.53334665 4.94641495 -0.80002022 -1.53334665
		 5 -0.60004044 -1.53334665 5 0.60004044 -1.53334665 4.94641495 0.80002022 -1.53334665
		 4.80002022 0.94641495 1.1920929e-07 4.60004044 1 1.1920929e-07 -4.60004044 1 1.1920929e-07
		 -4.80001831 0.94641495 1.1920929e-07 -4.94641495 0.80002022 1.1920929e-07 -5 0.60004044 1.1920929e-07
		 -5 -0.60004044 1.1920929e-07 -4.94641495 -0.80002022 1.1920929e-07 -4.80001831 -0.94641495 1.1920929e-07
		 -4.60004044 -1 1.1920929e-07 4.60004044 -1 1.1920929e-07 4.80002022 -0.94641495 1.1920929e-07
		 4.94641495 -0.80002022 1.1920929e-07 5 -0.60004044 1.1920929e-07 5 0.60004044 1.1920929e-07
		 4.94641495 0.80002022 1.1920929e-07 4.80002022 0.94641495 1.53334713 4.60004044 1 1.53334713
		 -4.60004044 1 1.53334713 -4.80001831 0.94641495 1.53334713 -4.94641495 0.80002022 1.53334713
		 -5 0.60004044 1.53334713 -5 -0.60004044 1.53334713 -4.94641495 -0.80002022 1.53334713
		 -4.80001831 -0.94641495 1.53334713 -4.60004044 -1 1.53334713 4.60004044 -1 1.53334713
		 4.80002022 -0.94641495 1.53334713 4.94641495 -0.80002022 1.53334713 5 -0.60004044 1.53334713
		 5 0.60004044 1.53334713 4.94641495 0.80002022 1.53334713 4.80002022 0.94641495 3.066693783
		 4.60004044 1 3.066693783 -4.60004044 1 3.066693783 -4.80001831 0.94641495 3.066693783
		 -4.94641495 0.80002022 3.066693783 -5 0.60004044 3.066693783;
	setAttr ".vt[166:305]" -5 -0.60004044 3.066693783 -4.94641495 -0.80002022 3.066693783
		 -4.80001831 -0.94641495 3.066693783 -4.60004044 -1 3.066693783 4.60004044 -1 3.066693783
		 4.80002022 -0.94641495 3.066693783 4.94641495 -0.80002022 3.066693783 5 -0.60004044 3.066693783
		 5 0.60004044 3.066693783 4.94641495 0.80002022 3.066693783 3.066693306 0.94641495 4.80002022
		 3.066693306 1 4.60004044 3.066693306 1 3.066693783 3.066693306 1 1.53334713 3.066693306 1 1.1920929e-07
		 3.066693306 1 -1.53334665 3.066693306 1 -3.066693306 3.066693306 1 -4.60004044 3.066693306 0.94641495 -4.80002022
		 3.066693306 0.80002022 -4.9464159 3.066693306 0.60004044 -5 3.066693306 -0.60004044 -5
		 3.066693306 -0.80002022 -4.9464159 3.066693306 -0.94641495 -4.80002022 3.066693306 -1 -4.60004044
		 3.066693306 -1 -3.066693306 3.066693306 -1 -1.53334665 3.066693306 -1 1.1920929e-07
		 3.066693306 -1 1.53334713 3.066693306 -1 3.066693783 3.066693306 -1 4.60004044 3.066693306 -0.94641495 4.80002022
		 3.066693306 -0.80002022 4.94641495 3.066693306 -0.60004044 5 3.066693306 0.60004044 5
		 3.066693306 0.80002022 4.94641495 1.53334665 0.94641495 4.80002022 1.53334665 1 4.60004044
		 1.53334665 1 3.066693783 1.53334665 1 1.53334713 1.53334665 1 1.1920929e-07 1.53334665 1 -1.53334665
		 1.53334665 1 -3.066693306 1.53334665 1 -4.60004044 1.53334665 0.94641495 -4.80002022
		 1.53334665 0.80002022 -4.9464159 1.53334665 0.60004044 -5 1.53334665 -0.60004044 -5
		 1.53334665 -0.80002022 -4.9464159 1.53334665 -0.94641495 -4.80002022 1.53334665 -1 -4.60004044
		 1.53334665 -1 -3.066693306 1.53334665 -1 -1.53334665 1.53334665 -1 1.1920929e-07
		 1.53334665 -1 1.53334713 1.53334665 -1 3.066693783 1.53334665 -1 4.60004044 1.53334665 -0.94641495 4.80002022
		 1.53334665 -0.80002022 4.94641495 1.53334665 -0.60004044 5 1.53334665 0.60004044 5
		 1.53334665 0.80002022 4.94641495 -1.1920929e-07 0.94641495 4.80002022 -1.1920929e-07 1 4.60004044
		 -1.1920929e-07 1 3.066693783 -1.1920929e-07 1 1.53334713 -1.1920929e-07 1 1.1920929e-07
		 -1.1920929e-07 1 -1.53334665 -1.1920929e-07 1 -3.066693306 -1.1920929e-07 1 -4.60004044
		 -1.1920929e-07 0.94641495 -4.80002022 -1.1920929e-07 0.80002022 -4.9464159 -1.1920929e-07 0.60004044 -5
		 -1.1920929e-07 -0.60004044 -5 -1.1920929e-07 -0.80002022 -4.9464159 -1.1920929e-07 -0.94641495 -4.80002022
		 -1.1920929e-07 -1 -4.60004044 -1.1920929e-07 -1 -3.066693306 -1.1920929e-07 -1 -1.53334665
		 -1.1920929e-07 -1 1.1920929e-07 -1.1920929e-07 -1 1.53334713 -1.1920929e-07 -1 3.066693783
		 -1.1920929e-07 -1 4.60004044 -1.1920929e-07 -0.94641495 4.80002022 -1.1920929e-07 -0.80002022 4.94641495
		 -1.1920929e-07 -0.60004044 5 -1.1920929e-07 0.60004044 5 -1.1920929e-07 0.80002022 4.94641495
		 -1.53334713 0.94641495 4.80002022 -1.53334713 1 4.60004044 -1.53334713 1 3.066693783
		 -1.53334713 1 1.53334713 -1.53334713 1 1.1920929e-07 -1.53334713 1 -1.53334665 -1.53334713 1 -3.066693306
		 -1.53334713 1 -4.60004044 -1.53334713 0.94641495 -4.80002022 -1.53334713 0.80002022 -4.9464159
		 -1.53334713 0.60004044 -5 -1.53334713 -0.60004044 -5 -1.53334713 -0.80002022 -4.9464159
		 -1.53334713 -0.94641495 -4.80002022 -1.53334713 -1 -4.60004044 -1.53334713 -1 -3.066693306
		 -1.53334713 -1 -1.53334665 -1.53334713 -1 1.1920929e-07 -1.53334713 -1 1.53334713
		 -1.53334713 -1 3.066693783 -1.53334713 -1 4.60004044 -1.53334713 -0.94641495 4.80002022
		 -1.53334713 -0.80002022 4.94641495 -1.53334713 -0.60004044 5 -1.53334713 0.60004044 5
		 -1.53334713 0.80002022 4.94641495 -3.066693783 0.94641495 4.80002022 -3.066693783 1 4.60004044
		 -3.066693783 1 3.066693783 -3.066693783 1 1.53334713 -3.066693783 1 1.1920929e-07
		 -3.066693783 1 -1.53334665 -3.066693783 1 -3.066693306 -3.066693783 1 -4.60004044
		 -3.066693783 0.94641495 -4.80002022 -3.066693783 0.80002022 -4.9464159 -3.066693783 0.60004044 -5
		 -3.066693783 -0.60004044 -5 -3.066693783 -0.80002022 -4.9464159 -3.066693783 -0.94641495 -4.80002022
		 -3.066693783 -1 -4.60004044 -3.066693783 -1 -3.066693306 -3.066693783 -1 -1.53334665
		 -3.066693783 -1 1.1920929e-07 -3.066693783 -1 1.53334713 -3.066693783 -1 3.066693783
		 -3.066693783 -1 4.60004044 -3.066693783 -0.94641495 4.80002022 -3.066693783 -0.80002022 4.94641495
		 -3.066693783 -0.60004044 5 -3.066693783 0.60004044 5 -3.066693783 0.80002022 4.94641495;
	setAttr -s 612 ".ed";
	setAttr ".ed[0:165]"  2 1 1 1 168 1 54 62 1 62 105 1 1 0 1 0 167 0 55 54 1
		 0 8 1 8 166 1 56 55 1 5 4 1 4 302 1 15 14 1 14 199 1 4 3 1 3 301 1 16 15 1 3 2 1
		 2 300 1 17 16 1 8 7 1 7 21 0 21 20 1 20 8 1 7 6 1 6 22 1 22 21 1 6 5 1 5 23 1 23 22 1
		 11 10 1 10 172 1 63 71 1 71 109 1 10 9 1 9 171 1 64 63 1 9 17 1 17 170 1 65 64 1
		 14 13 1 13 33 1 33 32 1 32 14 1 13 12 1 12 34 1 34 33 1 12 11 1 11 35 1 35 34 1 20 19 1
		 19 164 0 39 38 1 38 101 1 19 18 1 18 163 1 40 39 1 18 26 1 26 162 1 41 40 1 26 25 1
		 25 280 1 30 29 1 29 177 1 25 24 1 24 305 1 31 30 1 24 23 1 23 304 1 32 31 1 29 28 1
		 28 160 1 51 50 1 50 97 1 28 27 1 27 175 1 52 51 1 27 35 1 35 174 1 53 52 1 38 37 1
		 37 57 0 57 56 1 56 38 1 37 36 1 36 58 1 58 57 1 36 44 1 44 59 1 59 58 1 44 43 1 43 289 0
		 48 47 1 47 186 1 43 42 1 42 288 1 49 48 1 42 41 1 41 287 1 50 49 1 47 46 1 46 69 0
		 69 68 1 68 47 1 46 45 1 45 70 1 70 69 1 45 53 1 53 71 1 71 70 1 62 61 1 61 293 1
		 66 65 1 65 190 1 61 60 1 60 292 0 67 66 1 60 59 1 59 291 1 68 67 1 0 72 0 72 7 0
		 1 73 0 73 72 1 3 73 0 4 74 0 74 73 1 6 74 0 72 74 1 9 75 0 75 16 0 10 76 0 76 75 1
		 12 76 0 13 77 0 77 76 1 15 77 0 75 77 1 18 78 0 78 25 0 19 79 0 79 78 1 21 79 0 22 80 0
		 80 79 1 24 80 0 78 80 1 27 81 0 81 34 0 28 82 0 82 81 1 30 82 0 31 83 0 83 82 1 33 83 0
		 81 83 1 36 84 0 84 43 0 37 85 0 85 84 1 39 85 0 40 86 0 86 85 1 42 86 0 84 86 1 45 87 0;
	setAttr ".ed[166:331]" 87 52 0 46 88 0 88 87 1 48 88 0 49 89 0 89 88 1 51 89 0
		 87 89 1 54 90 0 90 61 0 55 91 0 91 90 1 57 91 0 58 92 0 92 91 1 60 92 0 90 92 1 63 93 0
		 93 70 0 64 94 0 94 93 1 66 94 0 67 95 0 95 94 1 69 95 0 93 95 1 96 51 1 97 113 1
		 96 97 1 98 41 1 97 182 1 99 40 1 98 99 1 100 39 0 99 100 1 101 117 1 100 101 1 102 56 1
		 101 102 1 103 55 0 102 103 1 104 54 1 103 104 1 105 121 1 104 105 1 106 65 1 105 295 1
		 107 64 1 106 107 1 108 63 1 107 108 1 109 125 1 108 109 1 110 53 1 109 110 1 111 52 1
		 110 111 1 111 96 1 112 96 1 113 129 1 112 113 1 114 98 1 113 181 1 115 99 1 114 115 1
		 116 100 0 115 116 1 117 133 1 116 117 1 118 102 1 117 118 1 119 103 0 118 119 1 120 104 1
		 119 120 1 121 137 1 120 121 1 122 106 1 121 296 1 123 107 1 122 123 1 124 108 1 123 124 1
		 125 141 1 124 125 1 126 110 1 125 126 1 127 111 1 126 127 1 127 112 1 128 112 1 129 145 1
		 128 129 1 130 114 1 129 180 1 131 115 1 130 131 1 132 116 0 131 132 1 133 149 1 132 133 1
		 134 118 1 133 134 1 135 119 0 134 135 1 136 120 1 135 136 1 137 153 1 136 137 1 138 122 1
		 137 297 1 139 123 1 138 139 1 140 124 1 139 140 1 141 157 1 140 141 1 142 126 1 141 142 1
		 143 127 1 142 143 1 143 128 1 144 128 1 145 161 1 144 145 1 146 130 1 145 179 1 147 131 1
		 146 147 1 148 132 0 147 148 1 149 165 1 148 149 1 150 134 1 149 150 1 151 135 0 150 151 1
		 152 136 1 151 152 1 153 169 1 152 153 1 154 138 1 153 298 1 155 139 1 154 155 1 156 140 1
		 155 156 1 157 173 1 156 157 1 158 142 1 157 158 1 159 143 1 158 159 1 159 144 1 160 144 1
		 161 29 1 160 161 1 162 146 1 161 178 1 163 147 1 162 163 1 164 148 0 163 164 1 165 20 1
		 164 165 1 166 150 1;
	setAttr ".ed[332:497]" 165 166 1 167 151 0 166 167 1 168 152 1 167 168 1 169 2 1
		 168 169 1 170 154 1 169 299 1 171 155 1 170 171 1 172 156 1 171 172 1 173 11 1 172 173 1
		 174 158 1 173 174 1 175 159 1 174 175 1 175 160 1 176 30 1 177 203 1 176 177 1 178 204 1
		 177 178 1 179 205 1 178 179 1 180 206 1 179 180 1 181 207 1 180 181 1 182 208 1 181 182 1
		 183 50 1 182 183 1 184 49 1 183 184 1 185 48 0 184 185 1 186 212 1 185 186 1 187 68 1
		 186 187 1 188 67 0 187 188 1 189 66 1 188 189 1 190 216 1 189 190 1 191 106 1 190 191 1
		 192 122 1 191 192 1 193 138 1 192 193 1 194 154 1 193 194 1 195 170 1 194 195 1 196 17 1
		 195 196 1 197 16 1 196 197 1 198 15 1 197 198 1 199 225 1 198 199 1 200 32 1 199 200 1
		 201 31 1 200 201 1 201 176 1 202 176 1 203 229 1 202 203 1 204 230 1 203 204 1 205 231 1
		 204 205 1 206 232 1 205 206 1 207 233 1 206 207 1 208 234 1 207 208 1 209 183 1 208 209 1
		 210 184 1 209 210 1 211 185 0 210 211 1 212 238 1 211 212 1 213 187 1 212 213 1 214 188 0
		 213 214 1 215 189 1 214 215 1 216 242 1 215 216 1 217 191 1 216 217 1 218 192 1 217 218 1
		 219 193 1 218 219 1 220 194 1 219 220 1 221 195 1 220 221 1 222 196 1 221 222 1 223 197 1
		 222 223 1 224 198 1 223 224 1 225 251 1 224 225 1 226 200 1 225 226 1 227 201 1 226 227 1
		 227 202 1 228 202 1 229 255 1 228 229 1 230 256 1 229 230 1 231 257 1 230 231 1 232 258 1
		 231 232 1 233 259 1 232 233 1 234 260 1 233 234 1 235 209 1 234 235 1 236 210 1 235 236 1
		 237 211 0 236 237 1 238 264 1 237 238 1 239 213 1 238 239 1 240 214 0 239 240 1 241 215 1
		 240 241 1 242 268 1 241 242 1 243 217 1 242 243 1 244 218 1 243 244 1 245 219 1 244 245 1
		 246 220 1 245 246 1 247 221 1 246 247 1 248 222 1 247 248 1 249 223 1;
	setAttr ".ed[498:611]" 248 249 1 250 224 1 249 250 1 251 277 1 250 251 1 252 226 1
		 251 252 1 253 227 1 252 253 1 253 228 1 254 228 1 255 281 1 254 255 1 256 282 1 255 256 1
		 257 283 1 256 257 1 258 284 1 257 258 1 259 285 1 258 259 1 260 286 1 259 260 1 261 235 1
		 260 261 1 262 236 1 261 262 1 263 237 0 262 263 1 264 290 1 263 264 1 265 239 1 264 265 1
		 266 240 0 265 266 1 267 241 1 266 267 1 268 294 1 267 268 1 269 243 1 268 269 1 270 244 1
		 269 270 1 271 245 1 270 271 1 272 246 1 271 272 1 273 247 1 272 273 1 274 248 1 273 274 1
		 275 249 1 274 275 1 276 250 1 275 276 1 277 303 1 276 277 1 278 252 1 277 278 1 279 253 1
		 278 279 1 279 254 1 280 254 1 281 26 1 280 281 1 282 162 1 281 282 1 283 146 1 282 283 1
		 284 130 1 283 284 1 285 114 1 284 285 1 286 98 1 285 286 1 287 261 1 286 287 1 288 262 1
		 287 288 1 289 263 0 288 289 1 290 44 1 289 290 1 291 265 1 290 291 1 292 266 0 291 292 1
		 293 267 1 292 293 1 294 62 1 293 294 1 295 269 1 294 295 1 296 270 1 295 296 1 297 271 1
		 296 297 1 298 272 1 297 298 1 299 273 1 298 299 1 300 274 1 299 300 1 301 275 1 300 301 1
		 302 276 1 301 302 1 303 5 1 302 303 1 304 278 1 303 304 1 305 279 1 304 305 1 305 280 1;
	setAttr -s 308 -ch 1224 ".fc[0:307]" -type "polyFaces" 
		f 4 0 1 338 337
		mu 0 4 0 26 208 209
		f 4 4 5 336 -2
		mu 0 4 26 24 206 208
		f 4 7 8 334 -6
		mu 0 4 25 21 205 207
		f 4 10 11 606 605
		mu 0 4 1 29 349 350
		f 4 14 15 604 -12
		mu 0 4 29 27 347 349
		f 4 17 18 602 -16
		mu 0 4 28 0 346 348
		f 4 20 21 22 23
		mu 0 4 21 31 43 22
		f 4 24 25 26 -22
		mu 0 4 31 30 44 43
		f 4 27 28 29 -26
		mu 0 4 30 1 4 44
		f 4 30 31 346 345
		mu 0 4 3 33 212 214
		f 4 34 35 344 -32
		mu 0 4 34 32 211 213
		f 4 37 38 342 -36
		mu 0 4 32 2 210 211
		f 4 40 41 42 43
		mu 0 4 15 36 52 5
		f 4 44 45 46 -42
		mu 0 4 36 35 53 52
		f 4 47 48 49 -46
		mu 0 4 35 3 6 53
		f 4 50 51 330 329
		mu 0 4 22 41 202 204
		f 4 54 55 328 -52
		mu 0 4 42 40 201 203
		f 4 57 58 326 -56
		mu 0 4 40 16 200 201
		f 4 60 61 562 561
		mu 0 4 16 46 326 327
		f 4 64 65 611 -62
		mu 0 4 46 45 352 326
		f 4 67 68 610 -66
		mu 0 4 45 4 351 352
		f 4 70 71 322 321
		mu 0 4 17 49 198 199
		f 4 74 75 351 -72
		mu 0 4 49 47 216 198
		f 4 77 78 350 -76
		mu 0 4 48 6 215 217
		f 4 80 81 82 83
		mu 0 4 23 55 74 7
		f 4 84 85 86 -82
		mu 0 4 56 54 75 73
		f 4 87 88 89 -86
		mu 0 4 54 18 13 75
		f 4 90 91 580 579
		mu 0 4 18 61 335 336
		f 4 94 95 578 -92
		mu 0 4 61 60 334 335
		f 4 97 98 576 -96
		mu 0 4 60 8 333 334
		f 4 100 101 102 103
		mu 0 4 19 64 83 14
		f 4 104 105 106 -102
		mu 0 4 64 62 85 83
		f 4 107 108 109 -106
		mu 0 4 63 10 11 84
		f 4 110 111 588 587
		mu 0 4 20 77 339 340
		f 4 114 115 586 -112
		mu 0 4 77 76 338 339
		f 4 117 118 584 -116
		mu 0 4 76 13 337 338
		f 4 -606 608 -69 -29
		mu 0 4 1 350 351 4
		f 4 -562 564 563 -59
		mu 0 4 16 327 328 200
		f 4 -580 582 -119 -89
		mu 0 4 18 336 337 13
		f 4 340 600 -19 -338
		mu 0 4 209 345 346 0
		f 4 -346 348 -79 -49
		mu 0 4 3 214 215 6
		f 4 -9 -24 -330 332
		mu 0 4 205 21 22 204
		f 4 -21 -8 120 121
		mu 0 4 31 21 25 86
		f 4 -121 -5 122 123
		mu 0 4 87 24 26 89
		f 4 -1 -18 124 -123
		mu 0 4 26 0 28 89
		f 4 -125 -15 125 126
		mu 0 4 88 27 29 90
		f 4 -11 -28 127 -126
		mu 0 4 29 1 30 90
		f 4 -128 -25 -122 128
		mu 0 4 90 30 31 86
		f 3 -124 -127 -129
		mu 0 3 86 88 90
		f 4 -20 -38 129 130
		mu 0 4 38 2 32 92
		f 4 -130 -35 131 132
		mu 0 4 92 32 34 94
		f 4 -31 -48 133 -132
		mu 0 4 33 3 35 93
		f 4 -134 -45 134 135
		mu 0 4 93 35 36 95
		f 4 -41 -13 136 -135
		mu 0 4 36 15 37 95
		f 4 -137 -17 -131 137
		mu 0 4 95 37 39 91
		f 3 -133 -136 -138
		mu 0 3 91 93 95
		f 4 -61 -58 138 139
		mu 0 4 46 16 40 96
		f 4 -139 -55 140 141
		mu 0 4 96 40 42 97
		f 4 -51 -23 142 -141
		mu 0 4 41 22 43 97
		f 4 -143 -27 143 144
		mu 0 4 97 43 44 98
		f 4 -30 -68 145 -144
		mu 0 4 44 4 45 98
		f 4 -146 -65 -140 146
		mu 0 4 98 45 46 96
		f 3 -142 -145 -147
		mu 0 3 96 97 98
		f 4 -50 -78 147 148
		mu 0 4 53 6 48 99
		f 4 -148 -75 149 150
		mu 0 4 99 47 49 100
		f 4 -71 -63 151 -150
		mu 0 4 49 17 50 100
		f 4 -152 -67 152 153
		mu 0 4 100 50 51 101
		f 4 -70 -43 154 -153
		mu 0 4 51 5 52 101
		f 4 -155 -47 -149 155
		mu 0 4 101 52 53 99
		f 3 -151 -154 -156
		mu 0 3 99 100 101
		f 4 -91 -88 156 157
		mu 0 4 61 18 54 102
		f 4 -157 -85 158 159
		mu 0 4 102 54 56 103
		f 4 -81 -53 160 -159
		mu 0 4 55 23 58 104
		f 4 -161 -57 161 162
		mu 0 4 103 57 59 105
		f 4 -60 -98 163 -162
		mu 0 4 59 8 60 105
		f 4 -164 -95 -158 164
		mu 0 4 105 60 61 102
		f 3 -160 -163 -165
		mu 0 3 102 103 105
		f 4 -80 -108 165 166
		mu 0 4 68 10 63 107
		f 4 -166 -105 167 168
		mu 0 4 106 62 64 108
		f 4 -101 -93 169 -168
		mu 0 4 64 19 65 108
		f 4 -170 -97 170 171
		mu 0 4 108 65 66 109
		f 4 -100 -73 172 -171
		mu 0 4 66 9 67 109
		f 4 -173 -77 -167 173
		mu 0 4 109 67 69 106
		f 3 -169 -172 -174
		mu 0 3 106 108 109
		f 4 -111 -3 174 175
		mu 0 4 77 20 70 110
		f 4 -175 -7 176 177
		mu 0 4 110 70 72 111
		f 4 -10 -83 178 -177
		mu 0 4 71 7 74 112
		f 4 -179 -87 179 180
		mu 0 4 111 73 75 113
		f 4 -90 -118 181 -180
		mu 0 4 75 13 76 113
		f 4 -182 -115 -176 182
		mu 0 4 113 76 77 110
		f 3 -178 -181 -183
		mu 0 3 110 111 113
		f 4 -110 -33 183 184
		mu 0 4 84 11 79 115
		f 4 -184 -37 185 186
		mu 0 4 114 78 80 116
		f 4 -40 -113 187 -186
		mu 0 4 80 12 81 116
		f 4 -188 -117 188 189
		mu 0 4 116 81 82 117
		f 4 -120 -103 190 -189
		mu 0 4 82 14 83 117
		f 4 -191 -107 -185 191
		mu 0 4 117 83 85 114
		f 3 -187 -190 -192
		mu 0 3 114 116 117
		f 4 -195 192 72 73
		mu 0 4 119 118 67 9
		f 4 -572 574 -99 -196
		mu 0 4 120 332 333 8
		f 4 -199 195 59 -198
		mu 0 4 121 120 8 59
		f 4 -201 197 56 -200
		mu 0 4 123 121 59 57
		f 4 -203 199 52 53
		mu 0 4 124 122 58 23
		f 4 -204 -205 -54 -84
		mu 0 4 7 125 124 23
		f 4 -207 203 9 -206
		mu 0 4 127 125 7 71
		f 4 -209 205 6 -208
		mu 0 4 128 126 72 70
		f 4 -211 207 2 3
		mu 0 4 129 128 70 20
		f 4 -588 590 -213 -4
		mu 0 4 20 340 341 129
		f 4 -215 211 39 -214
		mu 0 4 131 130 12 80
		f 4 -217 213 36 -216
		mu 0 4 133 131 80 78
		f 4 -219 215 32 33
		mu 0 4 134 132 79 11
		f 4 -221 -34 -109 -220
		mu 0 4 135 134 11 10
		f 4 -223 219 79 -222
		mu 0 4 137 135 10 68
		f 4 -224 221 76 -193
		mu 0 4 118 136 69 67
		f 4 -227 224 194 193
		mu 0 4 139 138 118 119
		f 4 -570 572 571 -228
		mu 0 4 140 331 332 120
		f 4 -231 227 198 -230
		mu 0 4 141 140 120 121
		f 4 -233 229 200 -232
		mu 0 4 143 141 121 123
		f 4 -235 231 202 201
		mu 0 4 144 142 122 124
		f 4 -236 -237 -202 204
		mu 0 4 125 145 144 124
		f 4 -239 235 206 -238
		mu 0 4 147 145 125 127
		f 4 -241 237 208 -240
		mu 0 4 148 146 126 128
		f 4 -243 239 210 209
		mu 0 4 149 148 128 129
		f 4 212 592 -245 -210
		mu 0 4 129 341 342 149
		f 4 -247 243 214 -246
		mu 0 4 151 150 130 131
		f 4 -249 245 216 -248
		mu 0 4 153 151 131 133
		f 4 -251 247 218 217
		mu 0 4 154 152 132 134
		f 4 -253 -218 220 -252
		mu 0 4 155 154 134 135
		f 4 -255 251 222 -254
		mu 0 4 157 155 135 137
		f 4 -256 253 223 -225
		mu 0 4 138 156 136 118
		f 4 -259 256 226 225
		mu 0 4 159 158 138 139
		f 4 -568 570 569 -260
		mu 0 4 160 330 331 140
		f 4 -263 259 230 -262
		mu 0 4 161 160 140 141
		f 4 -265 261 232 -264
		mu 0 4 163 161 141 143
		f 4 -267 263 234 233
		mu 0 4 164 162 142 144
		f 4 -268 -269 -234 236
		mu 0 4 145 165 164 144
		f 4 -271 267 238 -270
		mu 0 4 167 165 145 147
		f 4 -273 269 240 -272
		mu 0 4 168 166 146 148
		f 4 -275 271 242 241
		mu 0 4 169 168 148 149
		f 4 244 594 -277 -242
		mu 0 4 149 342 343 169
		f 4 -279 275 246 -278
		mu 0 4 171 170 150 151
		f 4 -281 277 248 -280
		mu 0 4 173 171 151 153
		f 4 -283 279 250 249
		mu 0 4 174 172 152 154
		f 4 -285 -250 252 -284
		mu 0 4 175 174 154 155
		f 4 -287 283 254 -286
		mu 0 4 177 175 155 157
		f 4 -288 285 255 -257
		mu 0 4 158 176 156 138
		f 4 -291 288 258 257
		mu 0 4 179 178 158 159
		f 4 -566 568 567 -292
		mu 0 4 180 329 330 160
		f 4 -295 291 262 -294
		mu 0 4 181 180 160 161
		f 4 -297 293 264 -296
		mu 0 4 183 181 161 163
		f 4 -299 295 266 265
		mu 0 4 184 182 162 164
		f 4 -300 -301 -266 268
		mu 0 4 165 185 184 164
		f 4 -303 299 270 -302
		mu 0 4 187 185 165 167
		f 4 -305 301 272 -304
		mu 0 4 188 186 166 168
		f 4 -307 303 274 273
		mu 0 4 189 188 168 169
		f 4 276 596 -309 -274
		mu 0 4 169 343 344 189
		f 4 -311 307 278 -310
		mu 0 4 191 190 170 171
		f 4 -313 309 280 -312
		mu 0 4 193 191 171 173
		f 4 -315 311 282 281
		mu 0 4 194 192 172 174
		f 4 -317 -282 284 -316
		mu 0 4 195 194 174 175
		f 4 -319 315 286 -318
		mu 0 4 197 195 175 177
		f 4 -320 317 287 -289
		mu 0 4 178 196 176 158
		f 4 -323 320 290 289
		mu 0 4 199 198 178 179
		f 4 -564 566 565 -324
		mu 0 4 200 328 329 180
		f 4 -327 323 294 -326
		mu 0 4 201 200 180 181
		f 4 -329 325 296 -328
		mu 0 4 203 201 181 183
		f 4 -331 327 298 297
		mu 0 4 204 202 182 184
		f 4 -332 -333 -298 300
		mu 0 4 185 205 204 184
		f 4 -335 331 302 -334
		mu 0 4 207 205 185 187
		f 4 -337 333 304 -336
		mu 0 4 208 206 186 188
		f 4 -339 335 306 305
		mu 0 4 209 208 188 189
		f 4 308 598 -341 -306
		mu 0 4 189 344 345 209
		f 4 -343 339 310 -342
		mu 0 4 211 210 190 191
		f 4 -345 341 312 -344
		mu 0 4 213 211 191 193
		f 4 -347 343 314 313
		mu 0 4 214 212 192 194
		f 4 -349 -314 316 -348
		mu 0 4 215 214 194 195
		f 4 -351 347 318 -350
		mu 0 4 217 215 195 197
		f 4 -352 349 319 -321
		mu 0 4 198 216 196 178
		f 4 -355 352 62 63
		mu 0 4 219 218 50 17
		f 4 -357 -64 -322 324
		mu 0 4 220 219 17 199
		f 4 -359 -325 -290 292
		mu 0 4 221 220 199 179
		f 4 -361 -293 -258 260
		mu 0 4 222 221 179 159
		f 4 -363 -261 -226 228
		mu 0 4 223 222 159 139
		f 4 -365 -229 -194 196
		mu 0 4 224 223 139 119
		f 4 -367 -197 -74 -366
		mu 0 4 225 224 119 9
		f 4 -369 365 99 -368
		mu 0 4 226 225 9 66
		f 4 -371 367 96 -370
		mu 0 4 227 226 66 65
		f 4 -373 369 92 93
		mu 0 4 228 227 65 19
		f 4 -375 -94 -104 -374
		mu 0 4 229 228 19 14
		f 4 -377 373 119 -376
		mu 0 4 230 229 14 82
		f 4 -379 375 116 -378
		mu 0 4 231 230 82 81
		f 4 -381 377 112 113
		mu 0 4 232 231 81 12
		f 4 -383 -114 -212 -382
		mu 0 4 233 232 12 130
		f 4 -385 381 -244 -384
		mu 0 4 234 233 130 150
		f 4 -387 383 -276 -386
		mu 0 4 235 234 150 170
		f 4 -389 385 -308 -388
		mu 0 4 236 235 170 190
		f 4 -391 387 -340 -390
		mu 0 4 237 236 190 210
		f 4 -393 389 -39 -392
		mu 0 4 238 237 210 2
		f 4 -395 391 19 -394
		mu 0 4 240 238 2 38
		f 4 -397 393 16 -396
		mu 0 4 241 239 39 37
		f 4 -399 395 12 13
		mu 0 4 242 241 37 15
		f 4 -401 -14 -44 -400
		mu 0 4 243 242 15 5
		f 4 -403 399 69 -402
		mu 0 4 244 243 5 51
		f 4 -404 401 66 -353
		mu 0 4 218 244 51 50
		f 4 -407 404 354 353
		mu 0 4 246 245 218 219
		f 4 -409 -354 356 355
		mu 0 4 247 246 219 220
		f 4 -411 -356 358 357
		mu 0 4 248 247 220 221
		f 4 -413 -358 360 359
		mu 0 4 249 248 221 222
		f 4 -415 -360 362 361
		mu 0 4 250 249 222 223
		f 4 -417 -362 364 363
		mu 0 4 251 250 223 224
		f 4 -419 -364 366 -418
		mu 0 4 252 251 224 225
		f 4 -421 417 368 -420
		mu 0 4 253 252 225 226
		f 4 -423 419 370 -422
		mu 0 4 254 253 226 227
		f 4 -425 421 372 371
		mu 0 4 255 254 227 228
		f 4 -427 -372 374 -426
		mu 0 4 256 255 228 229
		f 4 -429 425 376 -428
		mu 0 4 257 256 229 230
		f 4 -431 427 378 -430
		mu 0 4 258 257 230 231
		f 4 -433 429 380 379
		mu 0 4 259 258 231 232
		f 4 -435 -380 382 -434
		mu 0 4 260 259 232 233
		f 4 -437 433 384 -436
		mu 0 4 261 260 233 234
		f 4 -439 435 386 -438
		mu 0 4 262 261 234 235
		f 4 -441 437 388 -440
		mu 0 4 263 262 235 236
		f 4 -443 439 390 -442
		mu 0 4 264 263 236 237
		f 4 -445 441 392 -444
		mu 0 4 265 264 237 238
		f 4 -447 443 394 -446
		mu 0 4 267 265 238 240
		f 4 -449 445 396 -448
		mu 0 4 268 266 239 241
		f 4 -451 447 398 397
		mu 0 4 269 268 241 242
		f 4 -453 -398 400 -452
		mu 0 4 270 269 242 243
		f 4 -455 451 402 -454
		mu 0 4 271 270 243 244
		f 4 -456 453 403 -405
		mu 0 4 245 271 244 218
		f 4 -459 456 406 405
		mu 0 4 273 272 245 246
		f 4 -461 -406 408 407
		mu 0 4 274 273 246 247
		f 4 -463 -408 410 409
		mu 0 4 275 274 247 248
		f 4 -465 -410 412 411
		mu 0 4 276 275 248 249
		f 4 -467 -412 414 413
		mu 0 4 277 276 249 250
		f 4 -469 -414 416 415
		mu 0 4 278 277 250 251
		f 4 -471 -416 418 -470
		mu 0 4 279 278 251 252
		f 4 -473 469 420 -472
		mu 0 4 280 279 252 253
		f 4 -475 471 422 -474
		mu 0 4 281 280 253 254
		f 4 -477 473 424 423
		mu 0 4 282 281 254 255
		f 4 -479 -424 426 -478
		mu 0 4 283 282 255 256
		f 4 -481 477 428 -480
		mu 0 4 284 283 256 257
		f 4 -483 479 430 -482
		mu 0 4 285 284 257 258
		f 4 -485 481 432 431
		mu 0 4 286 285 258 259
		f 4 -487 -432 434 -486
		mu 0 4 287 286 259 260
		f 4 -489 485 436 -488
		mu 0 4 288 287 260 261
		f 4 -491 487 438 -490
		mu 0 4 289 288 261 262
		f 4 -493 489 440 -492
		mu 0 4 290 289 262 263
		f 4 -495 491 442 -494
		mu 0 4 291 290 263 264
		f 4 -497 493 444 -496
		mu 0 4 292 291 264 265
		f 4 -499 495 446 -498
		mu 0 4 294 292 265 267
		f 4 -501 497 448 -500
		mu 0 4 295 293 266 268
		f 4 -503 499 450 449
		mu 0 4 296 295 268 269
		f 4 -505 -450 452 -504
		mu 0 4 297 296 269 270
		f 4 -507 503 454 -506
		mu 0 4 298 297 270 271
		f 4 -508 505 455 -457
		mu 0 4 272 298 271 245
		f 4 -511 508 458 457
		mu 0 4 300 299 272 273
		f 4 -513 -458 460 459
		mu 0 4 301 300 273 274
		f 4 -515 -460 462 461
		mu 0 4 302 301 274 275
		f 4 -517 -462 464 463
		mu 0 4 303 302 275 276
		f 4 -519 -464 466 465
		mu 0 4 304 303 276 277
		f 4 -521 -466 468 467
		mu 0 4 305 304 277 278
		f 4 -523 -468 470 -522
		mu 0 4 306 305 278 279
		f 4 -525 521 472 -524
		mu 0 4 307 306 279 280
		f 4 -527 523 474 -526
		mu 0 4 308 307 280 281
		f 4 -529 525 476 475
		mu 0 4 309 308 281 282
		f 4 -531 -476 478 -530
		mu 0 4 310 309 282 283
		f 4 -533 529 480 -532
		mu 0 4 311 310 283 284
		f 4 -535 531 482 -534
		mu 0 4 312 311 284 285
		f 4 -537 533 484 483
		mu 0 4 313 312 285 286
		f 4 -539 -484 486 -538
		mu 0 4 314 313 286 287
		f 4 -541 537 488 -540
		mu 0 4 315 314 287 288
		f 4 -543 539 490 -542
		mu 0 4 316 315 288 289
		f 4 -545 541 492 -544
		mu 0 4 317 316 289 290
		f 4 -547 543 494 -546
		mu 0 4 318 317 290 291
		f 4 -549 545 496 -548
		mu 0 4 319 318 291 292
		f 4 -551 547 498 -550
		mu 0 4 321 319 292 294
		f 4 -553 549 500 -552
		mu 0 4 322 320 293 295
		f 4 -555 551 502 501
		mu 0 4 323 322 295 296
		f 4 -557 -502 504 -556
		mu 0 4 324 323 296 297
		f 4 -559 555 506 -558
		mu 0 4 325 324 297 298
		f 4 -560 557 507 -509
		mu 0 4 299 325 298 272
		f 4 -563 560 510 509
		mu 0 4 327 326 299 300
		f 4 -565 -510 512 511
		mu 0 4 328 327 300 301
		f 4 -567 -512 514 513
		mu 0 4 329 328 301 302
		f 4 -569 -514 516 515
		mu 0 4 330 329 302 303
		f 4 -571 -516 518 517
		mu 0 4 331 330 303 304
		f 4 -573 -518 520 519
		mu 0 4 332 331 304 305
		f 4 -575 -520 522 -574
		mu 0 4 333 332 305 306
		f 4 -577 573 524 -576
		mu 0 4 334 333 306 307
		f 4 -579 575 526 -578
		mu 0 4 335 334 307 308
		f 4 -581 577 528 527
		mu 0 4 336 335 308 309
		f 4 -583 -528 530 -582
		mu 0 4 337 336 309 310
		f 4 -585 581 532 -584
		mu 0 4 338 337 310 311
		f 4 -587 583 534 -586
		mu 0 4 339 338 311 312
		f 4 -589 585 536 535
		mu 0 4 340 339 312 313
		f 4 -591 -536 538 -590
		mu 0 4 341 340 313 314
		f 4 -593 589 540 -592
		mu 0 4 342 341 314 315
		f 4 -595 591 542 -594
		mu 0 4 343 342 315 316
		f 4 -597 593 544 -596
		mu 0 4 344 343 316 317
		f 4 -599 595 546 -598
		mu 0 4 345 344 317 318
		f 4 -601 597 548 -600
		mu 0 4 346 345 318 319
		f 4 -603 599 550 -602
		mu 0 4 348 346 319 321
		f 4 -605 601 552 -604
		mu 0 4 349 347 320 322
		f 4 -607 603 554 553
		mu 0 4 350 349 322 323
		f 4 -609 -554 556 -608
		mu 0 4 351 350 323 324
		f 4 -611 607 558 -610
		mu 0 4 352 351 324 325
		f 4 -612 609 559 -561
		mu 0 4 326 352 325 299;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__WallClock" -p "LivingRoom";
	rename -uid "F1AEF5FA-4613-B43F-502A-66A7FFC8F82B";
	setAttr ".t" -type "double3" 20.93975396377677 -2.2777446037549112 62.15802510834768 ;
	setAttr ".r" -type "double3" -89.999999999999972 0 90 ;
	setAttr ".s" -type "double3" 4.3106555553362984 4.3106555553362984 4.3106555553362984 ;
	setAttr ".rp" -type "double3" -30 14.990812734222253 4.9999997615814209 ;
	setAttr ".sp" -type "double3" -30 14.990812734222253 4.9999997615814209 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "pasted__WallClock";
	rename -uid "900A2E0F-43BE-6A13-8347-6AB874CE9A8B";
	setAttr ".t" -type "double3" -30 15 5 ;
	setAttr ".s" -type "double3" 1 0.076763160873712558 1 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1";
	rename -uid "EF4F654A-4C3C-76AA-98A3-07868117B25C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42569869756698608 0.797829270362854 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".pt";
	setAttr ".pt[32]" -type "float3" -0.0024830012 -4.4408921e-16 -0.001265149 ;
	setAttr ".pt[33]" -type "float3" 0.0024830012 -4.4408921e-16 0.001265149 ;
	setAttr ".pt[60]" -type "float3" -0.056879885 0 0.018481372 ;
	setAttr ".pt[61]" -type "float3" -0.04838495 0 0.035153687 ;
	setAttr ".pt[63]" -type "float3" -0.035153721 0 0.048384905 ;
	setAttr ".pt[64]" -type "float3" -0.018481439 0 0.056879859 ;
	setAttr ".pt[65]" -type "float3" 0 0 0.059807014 ;
	setAttr ".pt[66]" -type "float3" 0.018481439 0 0.056879859 ;
	setAttr ".pt[67]" -type "float3" 0.035153721 0 0.048384886 ;
	setAttr ".pt[68]" -type "float3" 0.04838495 0 0.035153687 ;
	setAttr ".pt[69]" -type "float3" 0.056879885 0 0.018481372 ;
	setAttr ".pt[70]" -type "float3" 0.059807025 0 -1.6547974e-08 ;
	setAttr ".pt[71]" -type "float3" 0.056879885 0 -0.018481422 ;
	setAttr ".pt[72]" -type "float3" 0.04838495 0 -0.035153709 ;
	setAttr ".pt[73]" -type "float3" 0.035153721 0 -0.048384905 ;
	setAttr ".pt[74]" -type "float3" 0.018481439 0 -0.056879841 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.059807014 ;
	setAttr ".pt[76]" -type "float3" -0.018481439 0 -0.056879841 ;
	setAttr ".pt[77]" -type "float3" -0.035153721 0 -0.048384905 ;
	setAttr ".pt[78]" -type "float3" -0.04838495 0 -0.035153709 ;
	setAttr ".pt[79]" -type "float3" -0.056879885 0 -0.018481422 ;
	setAttr ".pt[80]" -type "float3" -0.059807025 0 -1.6547974e-08 ;
	setAttr ".pt[101]" -type "float3" 0.021070618 0 0.029001206 ;
	setAttr ".pt[102]" -type "float3" 0.011077468 0 0.034092903 ;
	setAttr ".pt[103]" -type "float3" 1.4443007e-08 0 0.035847411 ;
	setAttr ".pt[104]" -type "float3" -0.011077452 0 0.034092903 ;
	setAttr ".pt[105]" -type "float3" -0.021070581 0 0.029001206 ;
	setAttr ".pt[106]" -type "float3" -0.029001169 0 0.021070605 ;
	setAttr ".pt[107]" -type "float3" -0.034092925 0 0.011077463 ;
	setAttr ".pt[108]" -type "float3" -0.03584737 0 1.4323867e-08 ;
	setAttr ".pt[109]" -type "float3" -0.034092925 0 -0.011077443 ;
	setAttr ".pt[110]" -type "float3" -0.029001169 0 -0.021070551 ;
	setAttr ".pt[111]" -type "float3" -0.021070581 0 -0.029001126 ;
	setAttr ".pt[112]" -type "float3" -0.011077452 0 -0.034092903 ;
	setAttr ".pt[113]" -type "float3" 1.4443007e-08 0 -0.035847403 ;
	setAttr ".pt[114]" -type "float3" 0.011077468 0 -0.034092903 ;
	setAttr ".pt[115]" -type "float3" 0.021070618 0 -0.029001188 ;
	setAttr ".pt[116]" -type "float3" 0.029001188 0 -0.021070581 ;
	setAttr ".pt[117]" -type "float3" 0.034092948 0 -0.011077443 ;
	setAttr ".pt[118]" -type "float3" 0.035847422 0 1.4323867e-08 ;
	setAttr ".pt[119]" -type "float3" 0.034092948 0 0.011077463 ;
	setAttr ".pt[120]" -type "float3" 0.029001188 0 0.021070605 ;
	setAttr ".pt[121]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[122]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[123]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[124]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[125]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[126]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[127]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[128]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[129]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[130]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[131]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[132]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[133]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[134]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[135]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[136]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[137]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[138]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[139]" -type "float3" 0 0.2751061 0 ;
	setAttr ".pt[140]" -type "float3" 0 0.2751061 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pPlane1" -p "pasted__WallClock";
	rename -uid "7AD4ED06-4E30-1634-3B3B-33A671F800CB";
	setAttr ".t" -type "double3" -30 15 5 ;
	setAttr ".s" -type "double3" 0.093705282366440129 1 0.093705282366440129 ;
createNode mesh -n "pasted__pasted__pPlaneShape1" -p "pasted__pasted__pPlane1";
	rename -uid "14FCFA32-4D82-BC15-891D-53AD4835D55A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 -0.03766305 0 -5.5511151e-17 
		-0.03766305 0 0 -0.03766305 0 -5.5511151e-17 -0.03766305 0;
createNode transform -n "pasted__pasted__pPlane3" -p "pasted__WallClock";
	rename -uid "1819C70A-4141-17A3-D49E-06BFE59854DF";
	setAttr ".t" -type "double3" -30 14.964062831734834 5 ;
	setAttr ".s" -type "double3" 0.094 1 0.094 ;
createNode mesh -n "pasted__pasted__pPlaneShape3" -p "|LivingRoom|pasted__WallClock|pasted__pasted__pPlane3";
	rename -uid "787D9C18-4170-3DDC-0603-24A7D4B48760";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.031432513 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.031432513 ;
	setAttr ".pt[4]" -type "float3" -3.7747583e-14 -0.032399964 0 ;
	setAttr ".pt[5]" -type "float3" -3.8191672e-14 -0.032399964 0 ;
	setAttr ".pt[6]" -type "float3" -3.7747583e-14 -0.032399964 0 ;
	setAttr ".pt[7]" -type "float3" -3.8191672e-14 -0.032399964 0 ;
createNode mesh -n "pasted__pasted__polySurfaceShape1" -p "|LivingRoom|pasted__WallClock|pasted__pasted__pPlane3";
	rename -uid "CB96E669-4690-C272-27E9-28A5F112879A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 -0.083369844 6.9250813 
		0 -0.37905365 0 0 0.083369844 6.9250813 0 0.37905365;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pDisc1" -p "pasted__WallClock";
	rename -uid "8FE41968-4BF7-AA72-BC4F-309C646B97DF";
	setAttr ".t" -type "double3" -30 15 5 ;
	setAttr ".s" -type "double3" 0.020118333567790088 1 0.020118333567790088 ;
createNode mesh -n "pasted__pasted__pDiscShape1" -p "pasted__pasted__pDisc1";
	rename -uid "411C5309-4E9D-5F56-3556-AD978EDAB275";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__Window" -p "LivingRoom";
	rename -uid "0A05908B-45BD-0878-1F30-1AB15A358884";
	setAttr ".t" -type "double3" -5.0694531208715787 -23.565146553276108 41.235660225144834 ;
	setAttr ".s" -type "double3" 1 1.8928073577501983 2.3827757916621906 ;
	setAttr ".rp" -type "double3" -32.590265207491825 20.533425608892131 -10.629717919469442 ;
	setAttr ".sp" -type "double3" -32.590265207491825 20.533425608892131 -10.629717919469442 ;
createNode transform -n "pasted__pasted__pCube1" -p "pasted__Window";
	rename -uid "9EC32418-4294-EFEB-CC47-B3AFCD029B18";
	setAttr ".t" -type "double3" -32.590258054934452 20.533422390241313 -10.629717442632284 ;
	setAttr ".s" -type "double3" 1.5 18 16 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|LivingRoom|pasted__Window|pasted__pasted__pCube1";
	rename -uid "32C99BD6-4397-D407-9D30-EE931B868C31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.1250000037252903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[24:43]" -type "float3"  0 -2.9802322e-08 0 0 -2.9802322e-08 
		0 0 -4.4703484e-08 0 0 -4.4703484e-08 0 0 -4.4703484e-08 0 0 -4.4703484e-08 0 0 4.4703484e-08 
		0 0 4.4703484e-08 0 0 0.016151411 0.016151413 0 0.016151411 -0.01615141 0 -0.016151408 
		-0.01615141 0 -0.016151408 0.016151413 0 0.016151387 0.016151451 0 0.016151387 -0.016151465 
		0 -0.016151298 -0.016151465 0 -0.016151298 0.016151451 0 0.016151421 0.016151443 
		0 0.016151421 -0.016151398 0 -0.016151428 -0.016151398 0 -0.016151428 0.016151443;
createNode transform -n "pasted__pasted__pCube2" -p "pasted__Window";
	rename -uid "0090FF7C-4D7E-42C6-2266-5B9AE06D61C6";
	setAttr ".t" -type "double3" -32.590426467091291 20.697903738454869 -13.513612998771629 ;
	setAttr ".s" -type "double3" 0.73514991808567254 16.897856420063679 0.375 ;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|LivingRoom|pasted__Window|pasted__pasted__pCube2";
	rename -uid "DA62C076-4B6E-F58F-DB15-5C941B55ED82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pCube3" -p "pasted__Window";
	rename -uid "6380A8EB-4C17-8D95-753E-AA8EE2B837A7";
	setAttr ".t" -type "double3" -32.590426467091291 20.697903738454869 -8.0951530496790127 ;
	setAttr ".s" -type "double3" 0.73514991808567254 16.897856420063679 0.375 ;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|LivingRoom|pasted__Window|pasted__pasted__pCube3";
	rename -uid "EAA34282-4D13-51BD-C70A-DA9172F5B054";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Window_Curtains" -p "LivingRoom";
	rename -uid "DA362C83-4F33-C25E-8FEA-9C8CCBB3E149";
	setAttr ".t" -type "double3" 3.4404676637031599 -23.327503512286718 24.489922419369911 ;
	setAttr ".s" -type "double3" 1 3.2308217756417648 2.48598780581051 ;
	setAttr ".rp" -type "double3" -39.635677688116012 18.094992290310103 6.5258871606868354 ;
	setAttr ".sp" -type "double3" -39.635677688116012 18.094992290310103 6.5258871606868354 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "pasted__Window_Curtains";
	rename -uid "23F90F79-4D1D-582E-A6A2-8DA157D19493";
	setAttr ".t" -type "double3" -39.828143064121377 24.006252017975854 6.5258871606868354 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.31414536060750076 8.1273517402101447 0.31414536060750076 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pCylinder1";
	rename -uid "779DC5DF-4999-6168-6EFC-4BBC10F841D5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41562493145465851 0.811545729637146 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pPlane2" -p "pasted__Window_Curtains";
	rename -uid "4C1C5E75-4114-7249-FD9B-D7B751AB0670";
	setAttr ".t" -type "double3" -39.709145464483314 16.296653568967645 3.1093920062725973 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 12.423027925686275 1 -7.186 ;
	setAttr ".rp" -type "double3" 0.15000000596046448 0 -0.10000002384185791 ;
	setAttr ".rpt" -type "double3" -0.15000000596046448 -0.15000000596046448 0 ;
	setAttr ".sp" -type "double3" 0.15000000596046448 0 -0.10000002384185791 ;
createNode mesh -n "pasted__pasted__pPlaneShape2" -p "pasted__pasted__pPlane2";
	rename -uid "3863CA88-4475-7AF8-B0B3-9D96CC75A159";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[210:219]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 28 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209:219]";
	setAttr ".pv" -type "double2" 0.5 0.50000001862645149 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[0:120]" -type "float3"  0 0 0.0011722839 0 0 0.002055041 
		0 0 0.0036055769 0 0 0.0012881366 0 0 -0.0027562254 0 0 -0.00066555326 -1.8626451e-09 
		-4.2468309e-07 -0.0050096423 0 0 -0.00039022602 0 0 0.0010422919 0 0 0.0032897484 
		0 0 0.0045935651 0 0.64651567 0.040092885 0 0.64651567 0.042113494 0 0.64651567 0.04516533 
		0 0.64651567 0.0464123 0 0.64651567 0.05085624 0 0.64651567 0.062362786 -1.8626451e-09 
		0.64651519 0.075069897 0 0.64651567 0.061265457 0 0.64651567 0.049468812 0 0.64651567 
		0.044006515 0 0.64651567 0.038953803 0 0 0.079013437 0 0 0.082171865 0 0 0.086725026 
		0 0 0.091536544 0 0 0.10446813 0 0 0.1253911 -1.8626451e-09 -4.2468309e-07 0.15573448 
		0 0 0.12292104 0 0 0.097895339 0 0 0.084723376 0 0 0.073314056 0 0.64651567 0.11793393 
		0 0.64651567 0.12223022 0 0.64651567 0.12828487 0 0.64651567 0.1366609 0 0.64651567 
		0.15808021 0 0.64651567 0.1884194 -1.8626451e-09 0.64651519 0.23581347 0 0.64651567 
		0.18457673 0 0.64651567 0.14632198 0 0.64651567 0.12544027 0 0.64651567 0.10767429 
		0 0 0.15685442 0 0 0.16228861 0 0 0.16984469 0 0 0.18178518 0 0 0.21169184 0 0 0.25144768 
		-1.8626451e-09 -4.2468309e-07 0.31618533 0 0 0.24623224 0 0 0.19474855 0 0 0.16615716 
		0 0 0.14203455 0 0.64651567 0.19577494 0 0.64651567 0.202347 0 0.64651567 0.21140441 
		0 0.64651567 0.22690947 0 0.64651567 0.26530376 0 0.64651567 0.31447613 -1.8626451e-09 
		0.64651519 0.39655712 0 0.64651567 0.307888 0 0.64651567 0.24317512 0 0.64651567 
		0.20687404 0 0.64651567 0.17639478 0 0 0.23469549 0 0 0.24240541 0 0 0.25296417 0 
		0 0.27203393 0 0 0.31891569 0 0 0.3775045 -1.8626451e-09 -4.2468309e-07 0.47692895 
		0 0 0.36954346 0 0 0.29160175 0 0 0.2475909 0 0 0.21075507 0 0.64651567 0.27361599 
		0 0.64651567 0.28246376 0 0.64651567 0.29452375 0 0.64651567 0.31715819 0 0.64651567 
		0.37252739 0 0.64651567 0.44053283 -1.8626451e-09 0.64651519 0.55730069 0 0.64651567 
		0.43119937 0 0.64651567 0.34002832 0 0.64651567 0.28830776 0 0.64651567 0.24511524 
		0 0 0.31253642 0 0 0.32252216 0 0 0.33608368 -1.8626451e-09 0 0.36228248 0 0 0.42613941 
		0 0 0.50356096 -1.8626451e-09 -4.2468309e-07 0.63737977 0 0 0.49285492 0 0 0.38845494 
		0 0 0.32902464 0 0 0.27947554 0 0.64651567 0.35145697 0 0.64651567 0.36258054 0 0.64651567 
		0.37764344 0 0.64651567 0.40740675 0 0.64651567 0.47975123 0 0.64651567 0.56658953 
		-1.8626451e-09 0.64651519 0.71804428 0 0.64651567 0.55451059 0 0.64651567 0.43688145 
		0 0.64651567 0.36974147 0 0.64651567 0.31383583 0 0 0.39037758 0 0 0.40263888 0 0 
		0.41920313 0 0 0.45253089 0 0 0.53336364 0 0 0.62961751 -1.8626451e-09 -4.2468309e-07 
		0.79812372 0 0 0.61616635 0 0 0.48530802 0 0 0.41045824 0 0 0.34819603;
	setAttr -s 121 ".vt[0:120]"  -0.5 0 0.5 -0.40000001 0 0.5 -0.30000001 0 0.5
		 -0.19999999 0 0.5 -0.099999994 0 0.5 0 0 0.5 0.10000002 0 0.5 0.19999999 0 0.5 0.30000001 0 0.5
		 0.40000004 0 0.5 0.5 0 0.5 -0.5 0 0.40000001 -0.40000001 0 0.40000001 -0.30000001 0 0.40000001
		 -0.19999999 0 0.40000001 -0.099999994 0 0.40000001 0 0 0.40000001 0.10000002 0 0.40000001
		 0.19999999 0 0.40000001 0.30000001 0 0.40000001 0.40000004 0 0.40000001 0.5 0 0.40000001
		 -0.5 0 0.30000001 -0.40000001 0 0.30000001 -0.30000001 0 0.30000001 -0.19999999 0 0.30000001
		 -0.099999994 0 0.30000001 0 0 0.30000001 0.10000002 0 0.30000001 0.19999999 0 0.30000001
		 0.30000001 0 0.30000001 0.40000004 0 0.30000001 0.5 0 0.30000001 -0.5 0 0.19999999
		 -0.40000001 0 0.19999999 -0.30000001 0 0.19999999 -0.19999999 0 0.19999999 -0.099999994 0 0.19999999
		 0 0 0.19999999 0.10000002 0 0.19999999 0.19999999 0 0.19999999 0.30000001 0 0.19999999
		 0.40000004 0 0.19999999 0.5 0 0.19999999 -0.5 0 0.099999994 -0.40000001 0 0.099999994
		 -0.30000001 0 0.099999994 -0.19999999 0 0.099999994 -0.099999994 0 0.099999994 0 0 0.099999994
		 0.10000002 0 0.099999994 0.19999999 0 0.099999994 0.30000001 0 0.099999994 0.40000004 0 0.099999994
		 0.5 0 0.099999994 -0.5 0 0 -0.40000001 0 0 -0.30000001 0 0 -0.19999999 0 0 -0.099999994 0 0
		 0 0 0 0.10000002 0 0 0.19999999 0 0 0.30000001 0 0 0.40000004 0 0 0.5 0 0 -0.5 0 -0.10000002
		 -0.40000001 0 -0.10000002 -0.30000001 0 -0.10000002 -0.19999999 0 -0.10000002 -0.099999994 0 -0.10000002
		 0 0 -0.10000002 0.10000002 0 -0.10000002 0.19999999 0 -0.10000002 0.30000001 0 -0.10000002
		 0.40000004 0 -0.10000002 0.5 0 -0.10000002 -0.5 0 -0.19999999 -0.40000001 0 -0.19999999
		 -0.30000001 0 -0.19999999 -0.19999999 0 -0.19999999 -0.099999994 0 -0.19999999 0 0 -0.19999999
		 0.10000002 0 -0.19999999 0.19999999 0 -0.19999999 0.30000001 0 -0.19999999 0.40000004 0 -0.19999999
		 0.5 0 -0.19999999 -0.5 0 -0.30000001 -0.40000001 0 -0.30000001 -0.30000001 0 -0.30000001
		 -0.19999999 0 -0.30000001 -0.099999994 0 -0.30000001 0 0 -0.30000001 0.10000002 0 -0.30000001
		 0.19999999 0 -0.30000001 0.30000001 0 -0.30000001 0.40000004 0 -0.30000001 0.5 0 -0.30000001
		 -0.5 0 -0.40000004 -0.40000001 0 -0.40000004 -0.30000001 0 -0.40000004 -0.19999999 0 -0.40000004
		 -0.099999994 0 -0.40000004 0 0 -0.40000004 0.10000002 0 -0.40000004 0.19999999 0 -0.40000004
		 0.30000001 0 -0.40000004 0.40000004 0 -0.40000004 0.5 0 -0.40000004 -0.5 0 -0.5 -0.40000001 0 -0.5
		 -0.30000001 0 -0.5 -0.19999999 0 -0.5 -0.099999994 0 -0.5 0 0 -0.5 0.10000002 0 -0.5
		 0.19999999 0 -0.5 0.30000001 0 -0.5 0.40000004 0 -0.5 0.5 0 -0.5;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:219]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 3 -22 -2
		mu 0 4 0 1 12 11
		f 4 2 5 -24 -4
		mu 0 4 1 2 13 12
		f 4 4 7 -26 -6
		mu 0 4 2 3 14 13
		f 4 6 9 -28 -8
		mu 0 4 3 4 15 14
		f 4 8 11 -30 -10
		mu 0 4 4 5 16 15
		f 4 10 13 -32 -12
		mu 0 4 5 6 17 16
		f 4 12 15 -34 -14
		mu 0 4 6 7 18 17
		f 4 14 17 -36 -16
		mu 0 4 7 8 19 18
		f 4 16 19 -38 -18
		mu 0 4 8 9 20 19
		f 4 18 20 -40 -20
		mu 0 4 9 10 21 20
		f 4 21 24 -43 -23
		mu 0 4 11 12 23 22
		f 4 23 26 -45 -25
		mu 0 4 12 13 24 23
		f 4 25 28 -47 -27
		mu 0 4 13 14 25 24
		f 4 27 30 -49 -29
		mu 0 4 14 15 26 25
		f 4 29 32 -51 -31
		mu 0 4 15 16 27 26
		f 4 31 34 -53 -33
		mu 0 4 16 17 28 27
		f 4 33 36 -55 -35
		mu 0 4 17 18 29 28
		f 4 35 38 -57 -37
		mu 0 4 18 19 30 29
		f 4 37 40 -59 -39
		mu 0 4 19 20 31 30
		f 4 39 41 -61 -41
		mu 0 4 20 21 32 31
		f 4 42 45 -64 -44
		mu 0 4 22 23 34 33
		f 4 44 47 -66 -46
		mu 0 4 23 24 35 34
		f 4 46 49 -68 -48
		mu 0 4 24 25 36 35
		f 4 48 51 -70 -50
		mu 0 4 25 26 37 36
		f 4 50 53 -72 -52
		mu 0 4 26 27 38 37
		f 4 52 55 -74 -54
		mu 0 4 27 28 39 38
		f 4 54 57 -76 -56
		mu 0 4 28 29 40 39
		f 4 56 59 -78 -58
		mu 0 4 29 30 41 40
		f 4 58 61 -80 -60
		mu 0 4 30 31 42 41
		f 4 60 62 -82 -62
		mu 0 4 31 32 43 42
		f 4 63 66 -85 -65
		mu 0 4 33 34 45 44
		f 4 65 68 -87 -67
		mu 0 4 34 35 46 45
		f 4 67 70 -89 -69
		mu 0 4 35 36 47 46
		f 4 69 72 -91 -71
		mu 0 4 36 37 48 47
		f 4 71 74 -93 -73
		mu 0 4 37 38 49 48
		f 4 73 76 -95 -75
		mu 0 4 38 39 50 49
		f 4 75 78 -97 -77
		mu 0 4 39 40 51 50
		f 4 77 80 -99 -79
		mu 0 4 40 41 52 51
		f 4 79 82 -101 -81
		mu 0 4 41 42 53 52
		f 4 81 83 -103 -83
		mu 0 4 42 43 54 53
		f 4 84 87 -106 -86
		mu 0 4 44 45 56 55
		f 4 86 89 -108 -88
		mu 0 4 45 46 57 56
		f 4 88 91 -110 -90
		mu 0 4 46 47 58 57
		f 4 90 93 -112 -92
		mu 0 4 47 48 59 58
		f 4 92 95 -114 -94
		mu 0 4 48 49 60 59
		f 4 94 97 -116 -96
		mu 0 4 49 50 61 60
		f 4 96 99 -118 -98
		mu 0 4 50 51 62 61
		f 4 98 101 -120 -100
		mu 0 4 51 52 63 62
		f 4 100 103 -122 -102
		mu 0 4 52 53 64 63
		f 4 102 104 -124 -104
		mu 0 4 53 54 65 64
		f 4 105 108 -127 -107
		mu 0 4 55 56 67 66
		f 4 107 110 -129 -109
		mu 0 4 56 57 68 67
		f 4 109 112 -131 -111
		mu 0 4 57 58 69 68
		f 4 111 114 -133 -113
		mu 0 4 58 59 70 69
		f 4 113 116 -135 -115
		mu 0 4 59 60 71 70
		f 4 115 118 -137 -117
		mu 0 4 60 61 72 71
		f 4 117 120 -139 -119
		mu 0 4 61 62 73 72
		f 4 119 122 -141 -121
		mu 0 4 62 63 74 73
		f 4 121 124 -143 -123
		mu 0 4 63 64 75 74
		f 4 123 125 -145 -125
		mu 0 4 64 65 76 75
		f 4 126 129 -148 -128
		mu 0 4 66 67 78 77
		f 4 128 131 -150 -130
		mu 0 4 67 68 79 78
		f 4 130 133 -152 -132
		mu 0 4 68 69 80 79
		f 4 132 135 -154 -134
		mu 0 4 69 70 81 80
		f 4 134 137 -156 -136
		mu 0 4 70 71 82 81
		f 4 136 139 -158 -138
		mu 0 4 71 72 83 82
		f 4 138 141 -160 -140
		mu 0 4 72 73 84 83
		f 4 140 143 -162 -142
		mu 0 4 73 74 85 84
		f 4 142 145 -164 -144
		mu 0 4 74 75 86 85
		f 4 144 146 -166 -146
		mu 0 4 75 76 87 86
		f 4 147 150 -169 -149
		mu 0 4 77 78 89 88
		f 4 149 152 -171 -151
		mu 0 4 78 79 90 89
		f 4 151 154 -173 -153
		mu 0 4 79 80 91 90
		f 4 153 156 -175 -155
		mu 0 4 80 81 92 91
		f 4 155 158 -177 -157
		mu 0 4 81 82 93 92
		f 4 157 160 -179 -159
		mu 0 4 82 83 94 93
		f 4 159 162 -181 -161
		mu 0 4 83 84 95 94
		f 4 161 164 -183 -163
		mu 0 4 84 85 96 95
		f 4 163 166 -185 -165
		mu 0 4 85 86 97 96
		f 4 165 167 -187 -167
		mu 0 4 86 87 98 97
		f 4 168 171 -190 -170
		mu 0 4 88 89 100 99
		f 4 170 173 -192 -172
		mu 0 4 89 90 101 100
		f 4 172 175 -194 -174
		mu 0 4 90 91 102 101
		f 4 174 177 -196 -176
		mu 0 4 91 92 103 102
		f 4 176 179 -198 -178
		mu 0 4 92 93 104 103
		f 4 178 181 -200 -180
		mu 0 4 93 94 105 104
		f 4 180 183 -202 -182
		mu 0 4 94 95 106 105
		f 4 182 185 -204 -184
		mu 0 4 95 96 107 106
		f 4 184 187 -206 -186
		mu 0 4 96 97 108 107
		f 4 186 188 -208 -188
		mu 0 4 97 98 109 108
		f 4 189 192 -211 -191
		mu 0 4 99 100 111 110
		f 4 191 194 -212 -193
		mu 0 4 100 101 112 111
		f 4 193 196 -213 -195
		mu 0 4 101 102 113 112
		f 4 195 198 -214 -197
		mu 0 4 102 103 114 113
		f 4 197 200 -215 -199
		mu 0 4 103 104 115 114
		f 4 199 202 -216 -201
		mu 0 4 104 105 116 115
		f 4 201 204 -217 -203
		mu 0 4 105 106 117 116
		f 4 203 206 -218 -205
		mu 0 4 106 107 118 117
		f 4 205 208 -219 -207
		mu 0 4 107 108 119 118
		f 4 207 209 -220 -209
		mu 0 4 108 109 120 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pPlane3" -p "pasted__Window_Curtains";
	rename -uid "7F416D5A-4616-B5DD-1431-ADA026C8CEB7";
	setAttr ".t" -type "double3" -39.709145464483314 16.296653568967645 9.8771153019287166 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 12.423027925686275 1 7.186 ;
	setAttr ".rp" -type "double3" 0.15000000596046448 0 -0.10000002384185791 ;
	setAttr ".rpt" -type "double3" -0.15000000596046448 -0.15000000596046448 0 ;
	setAttr ".sp" -type "double3" 0.15000000596046448 0 -0.10000002384185791 ;
createNode mesh -n "pasted__pasted__pPlaneShape3" -p "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pPlane3";
	rename -uid "A00AF1CB-4859-B630-64F6-8BA383CDAF9F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[210:219]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 28 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209:219]";
	setAttr ".pv" -type "double2" 0.5 0.50000001862645149 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[0:120]" -type "float3"  0 0 0.0011722839 0 0 0.002055041 
		0 0 0.0036055769 0 0 0.0012881366 0 0 -0.0027562254 0 0 -0.00066555326 -1.8626451e-09 
		-4.2468309e-07 -0.0050096423 0 0 -0.00039022602 0 0 0.0010422919 0 0 0.0032897484 
		0 0 0.0045935651 0 0.64651567 0.040092885 0 0.64651567 0.042113494 0 0.64651567 0.04516533 
		0 0.64651567 0.0464123 0 0.64651567 0.05085624 0 0.64651567 0.062362786 -1.8626451e-09 
		0.64651519 0.075069897 0 0.64651567 0.061265457 0 0.64651567 0.049468812 0 0.64651567 
		0.044006515 0 0.64651567 0.038953803 0 0 0.079013437 0 0 0.082171865 0 0 0.086725026 
		0 0 0.091536544 0 0 0.10446813 0 0 0.1253911 -1.8626451e-09 -4.2468309e-07 0.15573448 
		0 0 0.12292104 0 0 0.097895339 0 0 0.084723376 0 0 0.073314056 0 0.64651567 0.11793393 
		0 0.64651567 0.12223022 0 0.64651567 0.12828487 0 0.64651567 0.1366609 0 0.64651567 
		0.15808021 0 0.64651567 0.1884194 -1.8626451e-09 0.64651519 0.23581347 0 0.64651567 
		0.18457673 0 0.64651567 0.14632198 0 0.64651567 0.12544027 0 0.64651567 0.10767429 
		0 0 0.15685442 0 0 0.16228861 0 0 0.16984469 0 0 0.18178518 0 0 0.21169184 0 0 0.25144768 
		-1.8626451e-09 -4.2468309e-07 0.31618533 0 0 0.24623224 0 0 0.19474855 0 0 0.16615716 
		0 0 0.14203455 0 0.64651567 0.19577494 0 0.64651567 0.202347 0 0.64651567 0.21140441 
		0 0.64651567 0.22690947 0 0.64651567 0.26530376 0 0.64651567 0.31447613 -1.8626451e-09 
		0.64651519 0.39655712 0 0.64651567 0.307888 0 0.64651567 0.24317512 0 0.64651567 
		0.20687404 0 0.64651567 0.17639478 0 0 0.23469549 0 0 0.24240541 0 0 0.25296417 0 
		0 0.27203393 0 0 0.31891569 0 0 0.3775045 -1.8626451e-09 -4.2468309e-07 0.47692895 
		0 0 0.36954346 0 0 0.29160175 0 0 0.2475909 0 0 0.21075507 0 0.64651567 0.27361599 
		0 0.64651567 0.28246376 0 0.64651567 0.29452375 0 0.64651567 0.31715819 0 0.64651567 
		0.37252739 0 0.64651567 0.44053283 -1.8626451e-09 0.64651519 0.55730069 0 0.64651567 
		0.43119937 0 0.64651567 0.34002832 0 0.64651567 0.28830776 0 0.64651567 0.24511524 
		0 0 0.31253642 0 0 0.32252216 0 0 0.33608368 -1.8626451e-09 0 0.36228248 0 0 0.42613941 
		0 0 0.50356096 -1.8626451e-09 -4.2468309e-07 0.63737977 0 0 0.49285492 0 0 0.38845494 
		0 0 0.32902464 0 0 0.27947554 0 0.64651567 0.35145697 0 0.64651567 0.36258054 0 0.64651567 
		0.37764344 0 0.64651567 0.40740675 0 0.64651567 0.47975123 0 0.64651567 0.56658953 
		-1.8626451e-09 0.64651519 0.71804428 0 0.64651567 0.55451059 0 0.64651567 0.43688145 
		0 0.64651567 0.36974147 0 0.64651567 0.31383583 0 0 0.39037758 0 0 0.40263888 0 0 
		0.41920313 0 0 0.45253089 0 0 0.53336364 0 0 0.62961751 -1.8626451e-09 -4.2468309e-07 
		0.79812372 0 0 0.61616635 0 0 0.48530802 0 0 0.41045824 0 0 0.34819603;
	setAttr -s 121 ".vt[0:120]"  -0.5 0 0.5 -0.40000001 0 0.5 -0.30000001 0 0.5
		 -0.19999999 0 0.5 -0.099999994 0 0.5 0 0 0.5 0.10000002 0 0.5 0.19999999 0 0.5 0.30000001 0 0.5
		 0.40000004 0 0.5 0.5 0 0.5 -0.5 0 0.40000001 -0.40000001 0 0.40000001 -0.30000001 0 0.40000001
		 -0.19999999 0 0.40000001 -0.099999994 0 0.40000001 0 0 0.40000001 0.10000002 0 0.40000001
		 0.19999999 0 0.40000001 0.30000001 0 0.40000001 0.40000004 0 0.40000001 0.5 0 0.40000001
		 -0.5 0 0.30000001 -0.40000001 0 0.30000001 -0.30000001 0 0.30000001 -0.19999999 0 0.30000001
		 -0.099999994 0 0.30000001 0 0 0.30000001 0.10000002 0 0.30000001 0.19999999 0 0.30000001
		 0.30000001 0 0.30000001 0.40000004 0 0.30000001 0.5 0 0.30000001 -0.5 0 0.19999999
		 -0.40000001 0 0.19999999 -0.30000001 0 0.19999999 -0.19999999 0 0.19999999 -0.099999994 0 0.19999999
		 0 0 0.19999999 0.10000002 0 0.19999999 0.19999999 0 0.19999999 0.30000001 0 0.19999999
		 0.40000004 0 0.19999999 0.5 0 0.19999999 -0.5 0 0.099999994 -0.40000001 0 0.099999994
		 -0.30000001 0 0.099999994 -0.19999999 0 0.099999994 -0.099999994 0 0.099999994 0 0 0.099999994
		 0.10000002 0 0.099999994 0.19999999 0 0.099999994 0.30000001 0 0.099999994 0.40000004 0 0.099999994
		 0.5 0 0.099999994 -0.5 0 0 -0.40000001 0 0 -0.30000001 0 0 -0.19999999 0 0 -0.099999994 0 0
		 0 0 0 0.10000002 0 0 0.19999999 0 0 0.30000001 0 0 0.40000004 0 0 0.5 0 0 -0.5 0 -0.10000002
		 -0.40000001 0 -0.10000002 -0.30000001 0 -0.10000002 -0.19999999 0 -0.10000002 -0.099999994 0 -0.10000002
		 0 0 -0.10000002 0.10000002 0 -0.10000002 0.19999999 0 -0.10000002 0.30000001 0 -0.10000002
		 0.40000004 0 -0.10000002 0.5 0 -0.10000002 -0.5 0 -0.19999999 -0.40000001 0 -0.19999999
		 -0.30000001 0 -0.19999999 -0.19999999 0 -0.19999999 -0.099999994 0 -0.19999999 0 0 -0.19999999
		 0.10000002 0 -0.19999999 0.19999999 0 -0.19999999 0.30000001 0 -0.19999999 0.40000004 0 -0.19999999
		 0.5 0 -0.19999999 -0.5 0 -0.30000001 -0.40000001 0 -0.30000001 -0.30000001 0 -0.30000001
		 -0.19999999 0 -0.30000001 -0.099999994 0 -0.30000001 0 0 -0.30000001 0.10000002 0 -0.30000001
		 0.19999999 0 -0.30000001 0.30000001 0 -0.30000001 0.40000004 0 -0.30000001 0.5 0 -0.30000001
		 -0.5 0 -0.40000004 -0.40000001 0 -0.40000004 -0.30000001 0 -0.40000004 -0.19999999 0 -0.40000004
		 -0.099999994 0 -0.40000004 0 0 -0.40000004 0.10000002 0 -0.40000004 0.19999999 0 -0.40000004
		 0.30000001 0 -0.40000004 0.40000004 0 -0.40000004 0.5 0 -0.40000004 -0.5 0 -0.5 -0.40000001 0 -0.5
		 -0.30000001 0 -0.5 -0.19999999 0 -0.5 -0.099999994 0 -0.5 0 0 -0.5 0.10000002 0 -0.5
		 0.19999999 0 -0.5 0.30000001 0 -0.5 0.40000004 0 -0.5 0.5 0 -0.5;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:219]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 3 -22 -2
		mu 0 4 0 1 12 11
		f 4 2 5 -24 -4
		mu 0 4 1 2 13 12
		f 4 4 7 -26 -6
		mu 0 4 2 3 14 13
		f 4 6 9 -28 -8
		mu 0 4 3 4 15 14
		f 4 8 11 -30 -10
		mu 0 4 4 5 16 15
		f 4 10 13 -32 -12
		mu 0 4 5 6 17 16
		f 4 12 15 -34 -14
		mu 0 4 6 7 18 17
		f 4 14 17 -36 -16
		mu 0 4 7 8 19 18
		f 4 16 19 -38 -18
		mu 0 4 8 9 20 19
		f 4 18 20 -40 -20
		mu 0 4 9 10 21 20
		f 4 21 24 -43 -23
		mu 0 4 11 12 23 22
		f 4 23 26 -45 -25
		mu 0 4 12 13 24 23
		f 4 25 28 -47 -27
		mu 0 4 13 14 25 24
		f 4 27 30 -49 -29
		mu 0 4 14 15 26 25
		f 4 29 32 -51 -31
		mu 0 4 15 16 27 26
		f 4 31 34 -53 -33
		mu 0 4 16 17 28 27
		f 4 33 36 -55 -35
		mu 0 4 17 18 29 28
		f 4 35 38 -57 -37
		mu 0 4 18 19 30 29
		f 4 37 40 -59 -39
		mu 0 4 19 20 31 30
		f 4 39 41 -61 -41
		mu 0 4 20 21 32 31
		f 4 42 45 -64 -44
		mu 0 4 22 23 34 33
		f 4 44 47 -66 -46
		mu 0 4 23 24 35 34
		f 4 46 49 -68 -48
		mu 0 4 24 25 36 35
		f 4 48 51 -70 -50
		mu 0 4 25 26 37 36
		f 4 50 53 -72 -52
		mu 0 4 26 27 38 37
		f 4 52 55 -74 -54
		mu 0 4 27 28 39 38
		f 4 54 57 -76 -56
		mu 0 4 28 29 40 39
		f 4 56 59 -78 -58
		mu 0 4 29 30 41 40
		f 4 58 61 -80 -60
		mu 0 4 30 31 42 41
		f 4 60 62 -82 -62
		mu 0 4 31 32 43 42
		f 4 63 66 -85 -65
		mu 0 4 33 34 45 44
		f 4 65 68 -87 -67
		mu 0 4 34 35 46 45
		f 4 67 70 -89 -69
		mu 0 4 35 36 47 46
		f 4 69 72 -91 -71
		mu 0 4 36 37 48 47
		f 4 71 74 -93 -73
		mu 0 4 37 38 49 48
		f 4 73 76 -95 -75
		mu 0 4 38 39 50 49
		f 4 75 78 -97 -77
		mu 0 4 39 40 51 50
		f 4 77 80 -99 -79
		mu 0 4 40 41 52 51
		f 4 79 82 -101 -81
		mu 0 4 41 42 53 52
		f 4 81 83 -103 -83
		mu 0 4 42 43 54 53
		f 4 84 87 -106 -86
		mu 0 4 44 45 56 55
		f 4 86 89 -108 -88
		mu 0 4 45 46 57 56
		f 4 88 91 -110 -90
		mu 0 4 46 47 58 57
		f 4 90 93 -112 -92
		mu 0 4 47 48 59 58
		f 4 92 95 -114 -94
		mu 0 4 48 49 60 59
		f 4 94 97 -116 -96
		mu 0 4 49 50 61 60
		f 4 96 99 -118 -98
		mu 0 4 50 51 62 61
		f 4 98 101 -120 -100
		mu 0 4 51 52 63 62
		f 4 100 103 -122 -102
		mu 0 4 52 53 64 63
		f 4 102 104 -124 -104
		mu 0 4 53 54 65 64
		f 4 105 108 -127 -107
		mu 0 4 55 56 67 66
		f 4 107 110 -129 -109
		mu 0 4 56 57 68 67
		f 4 109 112 -131 -111
		mu 0 4 57 58 69 68
		f 4 111 114 -133 -113
		mu 0 4 58 59 70 69
		f 4 113 116 -135 -115
		mu 0 4 59 60 71 70
		f 4 115 118 -137 -117
		mu 0 4 60 61 72 71
		f 4 117 120 -139 -119
		mu 0 4 61 62 73 72
		f 4 119 122 -141 -121
		mu 0 4 62 63 74 73
		f 4 121 124 -143 -123
		mu 0 4 63 64 75 74
		f 4 123 125 -145 -125
		mu 0 4 64 65 76 75
		f 4 126 129 -148 -128
		mu 0 4 66 67 78 77
		f 4 128 131 -150 -130
		mu 0 4 67 68 79 78
		f 4 130 133 -152 -132
		mu 0 4 68 69 80 79
		f 4 132 135 -154 -134
		mu 0 4 69 70 81 80
		f 4 134 137 -156 -136
		mu 0 4 70 71 82 81
		f 4 136 139 -158 -138
		mu 0 4 71 72 83 82
		f 4 138 141 -160 -140
		mu 0 4 72 73 84 83
		f 4 140 143 -162 -142
		mu 0 4 73 74 85 84
		f 4 142 145 -164 -144
		mu 0 4 74 75 86 85
		f 4 144 146 -166 -146
		mu 0 4 75 76 87 86
		f 4 147 150 -169 -149
		mu 0 4 77 78 89 88
		f 4 149 152 -171 -151
		mu 0 4 78 79 90 89
		f 4 151 154 -173 -153
		mu 0 4 79 80 91 90
		f 4 153 156 -175 -155
		mu 0 4 80 81 92 91
		f 4 155 158 -177 -157
		mu 0 4 81 82 93 92
		f 4 157 160 -179 -159
		mu 0 4 82 83 94 93
		f 4 159 162 -181 -161
		mu 0 4 83 84 95 94
		f 4 161 164 -183 -163
		mu 0 4 84 85 96 95
		f 4 163 166 -185 -165
		mu 0 4 85 86 97 96
		f 4 165 167 -187 -167
		mu 0 4 86 87 98 97
		f 4 168 171 -190 -170
		mu 0 4 88 89 100 99
		f 4 170 173 -192 -172
		mu 0 4 89 90 101 100
		f 4 172 175 -194 -174
		mu 0 4 90 91 102 101
		f 4 174 177 -196 -176
		mu 0 4 91 92 103 102
		f 4 176 179 -198 -178
		mu 0 4 92 93 104 103
		f 4 178 181 -200 -180
		mu 0 4 93 94 105 104
		f 4 180 183 -202 -182
		mu 0 4 94 95 106 105
		f 4 182 185 -204 -184
		mu 0 4 95 96 107 106
		f 4 184 187 -206 -186
		mu 0 4 96 97 108 107
		f 4 186 188 -208 -188
		mu 0 4 97 98 109 108
		f 4 189 192 -211 -191
		mu 0 4 99 100 111 110
		f 4 191 194 -212 -193
		mu 0 4 100 101 112 111
		f 4 193 196 -213 -195
		mu 0 4 101 102 113 112
		f 4 195 198 -214 -197
		mu 0 4 102 103 114 113
		f 4 197 200 -215 -199
		mu 0 4 103 104 115 114
		f 4 199 202 -216 -201
		mu 0 4 104 105 116 115
		f 4 201 204 -217 -203
		mu 0 4 105 106 117 116
		f 4 203 206 -218 -205
		mu 0 4 106 107 118 117
		f 4 205 208 -219 -207
		mu 0 4 107 108 119 118
		f 4 207 209 -220 -209
		mu 0 4 108 109 120 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pPlane4" -p "pasted__Window_Curtains";
	rename -uid "7E737CD6-414D-AFCA-D7C1-0DAC45D56DA4";
	setAttr ".t" -type "double3" -38.999260006250346 22.915603136834026 6.4699046464042391 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 2.7985020556084943 1 15.677804969381087 ;
createNode mesh -n "pasted__pasted__pPlaneShape4" -p "pasted__pasted__pPlane4";
	rename -uid "2D21242A-42CF-5F4A-82AD-858E492442F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001862645149 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 231 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.027349098 0 0 -0.10667426 0.66148692 
		0 -0.1859993 0 0 -0.26532438 0.66148692 0 -0.34464926 0 0 -0.42397419 0.66148692 
		0 -0.50329924 0 0 -0.58262408 0.66148692 0 -0.6619485 0 0 -0.74127412 0.66148692 
		0 -0.8205989 0 0 -0.014155064 0 0 -0.078982107 0.66148692 0 -0.14380927 0 0 -0.2086363 
		0.66148692 0 -0.27346334 0 0 -0.33829042 0.66148692 0 -0.40311757 0 0 -0.46794465 
		0.66148692 0 -0.53277171 0 0 -0.59759927 0.66148692 0 -0.66242605 0 0 -0.0056341374 
		0 0 -0.056854576 0.66148692 0 -0.10807506 0 0 -0.15929551 0.66148692 0 -0.21051604 
		0 0 -0.26173645 0.66148692 0 -0.31295696 0 0 -0.3641775 0.66148692 0 -0.41539812 
		0 0 -0.4666186 0.66148692 0 -0.51783884 0 0 0.0012851157 0 0 -0.040052086 0.66148692 
		0 -0.081389256 0 0 -0.1227264 0.66148692 0 -0.16406359 0 0 -0.20540078 0.66148692 
		0 -0.24673797 0 0 -0.28807509 0.66148692 0 -0.32941228 0 0 -0.37074947 0.66148692 
		0 -0.41208667 0 0 -0.0014410005 0 0 -0.034957588 0.66148692 0 -0.068474218 0 0 -0.10199086 
		0.66148692 0 -0.13550748 0 0 -0.16902411 0.66148692 0 -0.20254076 0 0 -0.23605737 
		0.66148692 0 -0.26957399 0 0 -0.30309063 0.66148692 0 -0.33660722 0 0 -0.0012651649 
		0 0 -0.026961207 0.66148692 0 -0.052657366 0 0 -0.078353398 0.66148692 0 -0.10404956 
		0 0 -0.1297456 0.66148692 0 -0.15544164 0 0 -0.18113771 0.66148692 0 -0.2068339 0 
		0 -0.23252994 0.66148692 0 -0.25822595 0 0 0.0073084808 0 0 -0.017270386 0.66148692 
		0 -0.041849222 0 0 -0.066428125 0.66148692 0 -0.091006964 0 0 -0.1155858 0.66148692 
		0 -0.14016469 0 0 -0.16474351 0.66148692 0 -0.1893224 0 0 -0.21390128 0.66148692 
		0 -0.23848011 0 0 0.01261251 0 0 -0.01452978 0.66148692 0 -0.041672103 0 0 -0.068814598 
		0.66148692 0 -0.095957056 0 0 -0.12309941 0.66148692 0 -0.15024181 0 0 -0.17738412 
		0.66148692 0 -0.2045266 0 0 -0.23166919 0.66148692 0 -0.25881168 0 0 0.012793956 
		0 0 -0.020185608 0.66148692 0 -0.053164985 0 0 -0.086144611 0.66148692 0 -0.11912415 
		0 0 -0.15210363 0.66148692 0 -0.18508315 0 0 -0.21806261 0.66148692 0 -0.25104225 
		0 0 -0.28402165 0.66148692 0 -0.3170011 0 0 0.006336431 0 0 -0.034420419 0.66148692 
		0 -0.075177267 0 0 -0.11593416 0.66148692 0 -0.15669103 0 0 -0.19744791 0.66148692 
		0 -0.23820482 0 0 -0.27896169 0.66148692 0 -0.31971848 0 0 -0.36047539 0.66148692 
		0 -0.40123221 0 0 0.0097189564 0 0 -0.044461627 0.66148692 0 -0.098641939 0 0 -0.15282229 
		0.66148692 0 -0.20700273 0 0 -0.2611832 0.66148692 0 -0.31536368 0 0 -0.36954415 
		0.66148692 0 -0.42372459 0 0 -0.47790512 0.66148692 0 -0.53208578 0 0 0.010185547 
		0 0 -0.032708716 0.66148692 0 -0.075603038 0 0 -0.11849728 0.66148692 0 -0.16139168 
		0 0 -0.20428592 0.66148692 0 -0.24718034 0 0 -0.29007444 0.66148692 0 -0.33296874 
		0 0 -0.37586322 0.66148692 0 -0.41875735 0 0 0.001794429 0 0 -0.030342031 0.66148692 
		0 -0.062478594 0 0 -0.094615109 0.66148692 0 -0.12675177 0 0 -0.15888821 0.66148692 
		0 -0.19102471 0 0 -0.2231611 0.66148692 0 -0.25529769 0 0 -0.28743428 0.66148692 
		0 -0.31957087 0 0 0.0036598071 0 0 -0.020884477 0.66148692 0 -0.045428872 0 0 -0.069973446 
		0.66148692 0 -0.094517685 0 0 -0.11906226 0.66148692 0 -0.14360681 0 0 -0.16815117 
		0.66148692 0 -0.19269562 0 0 -0.21723992 0.66148692 0 -0.24178402 0 0 -0.0019237217 
		0 0 -0.017571017 0.66148692 0 -0.033218216 0 0 -0.048865486 0.66148692 0 -0.064512707 
		0 0 -0.08015994 0.66148692 0 -0.095807172 0 0 -0.11145438 0.66148692 0 -0.12710157 
		0 0 -0.14274882 0.66148692 0 -0.15839617 0 0 0.0037331907 0 0;
	setAttr ".pt[166:230]" -0.008556243 0.66148692 0 -0.020845676 0 0 -0.033135105 
		0.66148692 0 -0.045424528 0 0 -0.057713963 0.66148692 0 -0.07000339 0 0 -0.082292825 
		0.66148692 0 -0.09458226 0 0 -0.10687169 0.66148692 0 -0.11916112 0 0 0.0038718167 
		0 -0.0053352509 -0.013835121 0.66148692 -0.0053352509 -0.031542055 0 -0.0053352509 
		-0.049248986 0.66148692 -0.0053352509 -0.066955939 0 -0.0053352509 -0.084662862 0.66148692 
		-0.0053352509 -0.10236978 0 -0.0053352509 -0.12007671 0.66148692 -0.0053352509 -0.13778362 
		0 -0.0053352509 -0.15549059 0.66148692 -0.0053352509 -0.17319751 0 -0.0053352509 
		0.008361157 0 -0.0098705124 -0.02258401 0.66148692 -0.0098705124 -0.053529162 0 -0.0098705124 
		-0.084474385 0.66148692 -0.0098705124 -0.11541954 0 -0.0098705124 -0.14636469 0.66148692 
		-0.0098705124 -0.17730987 0 -0.0098705124 -0.20825505 0.66148692 -0.0098705124 -0.23920028 
		0 -0.0098705124 -0.27014548 0.66148692 -0.0098705124 -0.30109066 0 -0.0098705124 
		-0.0023249392 0 -0.0211509 -0.059303131 0.66148692 -0.0211509 -0.11628152 0 -0.0211509 
		-0.17325975 0.66148692 -0.0211509 -0.23023805 0 -0.0211509 -0.28721631 0.66148692 
		-0.0211509 -0.34419459 0 -0.0211509 -0.40117288 0.66148692 -0.0211509 -0.4581511 
		0 -0.0211509 -0.51512951 0.66148692 -0.0211509 -0.57210779 0 -0.0211509 -0.0080446173 
		0 -0.027047664 -0.090992041 0.66148692 -0.027047664 -0.17393948 0 -0.027047664 -0.25688687 
		0.66148692 -0.027047664 -0.33983424 0 -0.027047664 -0.42278174 0.66148692 -0.027047664 
		-0.50572896 0 -0.027047664 -0.58867615 0.66148692 -0.027047664 -0.67162454 0 -0.027047664 
		-0.75457174 0.66148692 -0.027047664 -0.83751869 0 -0.027047664 -0.01169051 0 0 -0.10955402 
		0.66148692 0 -0.20635049 0 0 -0.3042137 0.66148692 0 -0.40100893 0 0 -0.4988744 0.66148692 
		0 -0.595667 0 0 -0.6935342 0.66148692 0 -0.79139572 0 0 -0.88926303 0.66148692 0 
		-0.9849872 0 0;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pasted__pTorus1" -p "pasted__Window_Curtains";
	rename -uid "9C4E09D5-4B6A-D04C-CC58-6D9B20E479EF";
	setAttr ".t" -type "double3" -39.635677509302077 16.755163005507075 13.213692300479531 ;
	setAttr ".s" -type "double3" 1 0.21253971022205428 0.694284935206128 ;
createNode mesh -n "pasted__pasted__pTorusShape1" -p "pasted__pasted__pTorus1";
	rename -uid "588DF8D2-4D8E-7300-39BD-319EDA5BB8A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pTorus2" -p "pasted__Window_Curtains";
	rename -uid "AAA17B8E-40A5-90B8-2A3A-3E86290C354B";
	setAttr ".t" -type "double3" -39.635677509302077 16.755163005507075 -0.46026598367214233 ;
	setAttr ".s" -type "double3" 1 0.21253971022205428 0.694284935206128 ;
createNode mesh -n "pasted__pasted__pTorusShape2" -p "pasted__pasted__pTorus2";
	rename -uid "30573F9E-4701-2A47-2A1E-D09AB36BE5B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 441 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 0 0.94999999 0.050000001 0.94999999 0.1 0.94999999
		 0.15000001 0.94999999 0.2 0.94999999 0.25 0.94999999 0.30000001 0.94999999 0.35000002
		 0.94999999 0.40000004 0.94999999 0.45000005 0.94999999 0.50000006 0.94999999 0.55000007
		 0.94999999 0.60000008 0.94999999 0.6500001 0.94999999 0.70000011 0.94999999 0.75000012
		 0.94999999 0.80000013 0.94999999 0.85000014 0.94999999 0.90000015 0.94999999 0.95000017
		 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998
		 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002
		 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007
		 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.75000012
		 0.89999998 0.80000013 0.89999998 0.85000014 0.89999998 0.90000015 0.89999998 0.95000017
		 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996
		 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002
		 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007
		 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.75000012
		 0.84999996 0.80000013 0.84999996 0.85000014 0.84999996 0.90000015 0.84999996 0.95000017
		 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995
		 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002
		 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007
		 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.75000012
		 0.79999995 0.80000013 0.79999995 0.85000014 0.79999995 0.90000015 0.79999995 0.95000017
		 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994
		 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002
		 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007
		 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.75000012
		 0.74999994 0.80000013 0.74999994 0.85000014 0.74999994 0.90000015 0.74999994 0.95000017
		 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993
		 0.15000001 0.69999993 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002
		 0.69999993 0.40000004 0.69999993 0.45000005 0.69999993 0.50000006 0.69999993 0.55000007
		 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993 0.75000012
		 0.69999993 0.80000013 0.69999993 0.85000014 0.69999993 0.90000015 0.69999993 0.95000017
		 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992
		 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992 0.35000002
		 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007
		 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992 0.75000012
		 0.64999992 0.80000013 0.64999992 0.85000014 0.64999992 0.90000015 0.64999992 0.95000017
		 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999
		 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999 0.35000002
		 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999 0.55000007
		 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999 0.75000012
		 0.5999999 0.80000013 0.5999999 0.85000014 0.5999999 0.90000015 0.5999999 0.95000017
		 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989 0.1 0.54999989
		 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989 0.35000002
		 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989 0.55000007
		 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989 0.75000012
		 0.54999989 0.80000013 0.54999989 0.85000014 0.54999989 0.90000015 0.54999989 0.95000017
		 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988 0.1 0.49999988
		 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988 0.35000002
		 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988 0.55000007
		 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988 0.75000012
		 0.49999988 0.80000013 0.49999988 0.85000014 0.49999988 0.90000015 0.49999988 0.95000017
		 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987 0.1 0.44999987
		 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987 0.35000002
		 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987 0.55000007
		 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987 0.75000012
		 0.44999987 0.80000013 0.44999987 0.85000014 0.44999987 0.90000015 0.44999987;
	setAttr ".uvst[0].uvsp[250:440]" 0.95000017 0.44999987 1.000000119209 0.44999987
		 0 0.39999986 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986
		 0.25 0.39999986 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986
		 0.45000005 0.39999986 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986
		 0.6500001 0.39999986 0.70000011 0.39999986 0.75000012 0.39999986 0.80000013 0.39999986
		 0.85000014 0.39999986 0.90000015 0.39999986 0.95000017 0.39999986 1.000000119209
		 0.39999986 0 0.34999985 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985
		 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004
		 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008
		 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985 0.75000012 0.34999985 0.80000013
		 0.34999985 0.85000014 0.34999985 0.90000015 0.34999985 0.95000017 0.34999985 1.000000119209
		 0.34999985 0 0.29999983 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983
		 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004
		 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008
		 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983 0.75000012 0.29999983 0.80000013
		 0.29999983 0.85000014 0.29999983 0.90000015 0.29999983 0.95000017 0.29999983 1.000000119209
		 0.29999983 0 0.24999984 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984
		 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004
		 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008
		 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984 0.75000012 0.24999984 0.80000013
		 0.24999984 0.85000014 0.24999984 0.90000015 0.24999984 0.95000017 0.24999984 1.000000119209
		 0.24999984 0 0.19999984 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984
		 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004
		 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008
		 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984 0.75000012 0.19999984 0.80000013
		 0.19999984 0.85000014 0.19999984 0.90000015 0.19999984 0.95000017 0.19999984 1.000000119209
		 0.19999984 0 0.14999984 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984
		 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004
		 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008
		 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984 0.75000012 0.14999984 0.80000013
		 0.14999984 0.85000014 0.14999984 0.90000015 0.14999984 0.95000017 0.14999984 1.000000119209
		 0.14999984 0 0.099999845 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845
		 0.2 0.099999845 0.25 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004
		 0.099999845 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845
		 0.60000008 0.099999845 0.6500001 0.099999845 0.70000011 0.099999845 0.75000012 0.099999845
		 0.80000013 0.099999845 0.85000014 0.099999845 0.90000015 0.099999845 0.95000017 0.099999845
		 1.000000119209 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844
		 0.15000001 0.049999844 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002
		 0.049999844 0.40000004 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844
		 0.55000007 0.049999844 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844
		 0.75000012 0.049999844 0.80000013 0.049999844 0.85000014 0.049999844 0.90000015 0.049999844
		 0.95000017 0.049999844 1.000000119209 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07
		 0.1 -1.5646219e-07 0.15000001 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07
		 0.30000001 -1.5646219e-07 0.35000002 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005
		 -1.5646219e-07 0.50000006 -1.5646219e-07 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07
		 0.6500001 -1.5646219e-07 0.70000011 -1.5646219e-07 0.75000012 -1.5646219e-07 0.80000013
		 -1.5646219e-07 0.85000014 -1.5646219e-07 0.90000015 -1.5646219e-07 0.95000017 -1.5646219e-07
		 1.000000119209 -1.5646219e-07;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 400 ".vt";
	setAttr ".vt[0:165]"  0.47552857 0 -0.15450859 0.40450877 0 -0.2938928 0.2938928 0 -0.40450874
		 0.15450858 0 -0.47552851 0 0 -0.50000024 -0.15450858 0 -0.47552848 -0.29389274 0 -0.40450865
		 -0.40450862 0 -0.29389271 -0.47552839 0 -0.15450853 -0.50000012 0 0 -0.47552839 0 0.15450853
		 -0.40450859 0 0.29389268 -0.29389268 0 0.40450856 -0.15450853 0 0.47552833 -1.4901161e-08 0 0.50000006
		 0.15450849 0 0.4755283 0.29389262 0 0.40450853 0.4045085 0 0.29389265 0.47552827 0 0.1545085
		 0.5 0 0 0.4988026 0.1545085 -0.16207078 0.42430684 0.1545085 -0.30827695 0.30827695 0.1545085 -0.42430681
		 0.16207077 0.1545085 -0.49880254 0 0.1545085 -0.524472 -0.16207077 0.1545085 -0.49880251
		 -0.30827689 0.1545085 -0.42430672 -0.42430669 0.1545085 -0.30827686 -0.49880242 0.1545085 -0.16207072
		 -0.52447188 0.1545085 0 -0.49880242 0.1545085 0.16207072 -0.42430666 0.1545085 0.30827683
		 -0.30827683 0.1545085 0.42430663 -0.16207072 0.1545085 0.49880236 -1.5630476e-08 0.1545085 0.52447182
		 0.16207068 0.1545085 0.49880233 0.30827677 0.1545085 0.4243066 0.42430657 0.1545085 0.3082768
		 0.4988023 0.1545085 0.16207069 0.52447176 0.1545085 0 0.56634647 0.29389265 -0.18401711
		 0.48176309 0.29389265 -0.35002133 0.35002133 0.29389265 -0.48176306 0.18401709 0.29389265 -0.56634641
		 0 0.29389265 -0.59549183 -0.18401709 0.29389265 -0.56634635 -0.35002127 0.29389265 -0.48176295
		 -0.48176292 0.29389265 -0.35002124 -0.56634623 0.29389265 -0.18401705 -0.59549165 0.29389265 0
		 -0.56634623 0.29389265 0.18401705 -0.48176289 0.29389265 0.35002121 -0.35002121 0.29389265 0.48176286
		 -0.18401705 0.29389265 0.56634617 -1.7747031e-08 0.29389265 0.59549159 0.18401699 0.29389265 0.56634617
		 0.35002112 0.29389265 0.4817628 0.48176277 0.29389265 0.35002118 0.56634611 0.29389265 0.184017
		 0.59549153 0.29389265 0 0.67154849 0.40450853 -0.21819931 0.57125324 0.40450853 -0.41503975
		 0.41503975 0.40450853 -0.57125324 0.2181993 0.40450853 -0.67154837 0 0.40450853 -0.70610774
		 -0.2181993 0.40450853 -0.67154831 -0.41503966 0.40450853 -0.57125306 -0.57125306 0.40450853 -0.41503963
		 -0.67154819 0.40450853 -0.21819922 -0.70610756 0.40450853 0 -0.67154819 0.40450853 0.21819922
		 -0.571253 0.40450853 0.41503957 -0.41503957 0.40450853 0.57125294 -0.21819922 0.40450853 0.67154813
		 -2.104364e-08 0.40450853 0.70610744 0.21819916 0.40450853 0.67154807 0.41503951 0.40450853 0.57125294
		 0.57125288 0.40450853 0.41503954 0.67154807 0.40450853 0.21819918 0.70610738 0.40450853 0
		 0.80411077 0.4755283 -0.26127142 0.68401748 0.4755283 -0.49696773 0.49696773 0.4755283 -0.68401742
		 0.26127139 0.4755283 -0.80411065 0 0.4755283 -0.84549195 -0.26127139 0.4755283 -0.80411059
		 -0.49696764 0.4755283 -0.6840173 -0.68401724 0.4755283 -0.49696758 -0.80411047 0.4755283 -0.2612713
		 -0.84549171 0.4755283 0 -0.80411047 0.4755283 0.2612713 -0.68401718 0.4755283 0.49696755
		 -0.49696755 0.4755283 0.68401712 -0.2612713 0.4755283 0.80411035 -2.5197611e-08 0.4755283 0.84549165
		 0.26127124 0.4755283 0.80411029 0.49696743 0.4755283 0.68401706 0.684017 0.4755283 0.49696749
		 0.80411023 0.4755283 0.26127127 0.84549153 0.4755283 0 0.95105714 0.50000006 -0.30901718
		 0.80901754 0.50000006 -0.5877856 0.5877856 0.50000006 -0.80901748 0.30901715 0.50000006 -0.95105702
		 0 0.50000006 -1.000000476837 -0.30901715 0.50000006 -0.95105696 -0.58778548 0.50000006 -0.8090173
		 -0.80901724 0.50000006 -0.58778542 -0.95105678 0.50000006 -0.30901706 -1.000000238419 0.50000006 0
		 -0.95105678 0.50000006 0.30901706 -0.80901718 0.50000006 0.58778536 -0.58778536 0.50000006 0.80901712
		 -0.30901706 0.50000006 0.95105666 -2.9802322e-08 0.50000006 1.000000119209 0.30901697 0.50000006 0.9510566
		 0.58778524 0.50000006 0.80901706 0.809017 0.50000006 0.5877853 0.95105654 0.50000006 0.309017
		 1 0.50000006 0 1.098003626 0.47552833 -0.35676301 0.93401772 0.47552833 -0.67860353
		 0.67860353 0.47552833 -0.93401766 0.35676295 0.47552833 -1.098003507 0 0.47552833 -1.15450919
		 -0.35676295 0.47552833 -1.098003387 -0.67860341 0.47552833 -0.93401742 -0.93401736 0.47552833 -0.67860329
		 -1.098003268 0.47552833 -0.35676286 -1.15450883 0.47552833 0 -1.098003268 0.47552833 0.35676286
		 -0.9340173 0.47552833 0.67860323 -0.67860323 0.47552833 0.93401724 -0.35676286 0.47552833 1.09800303
		 -3.4407037e-08 0.47552833 1.15450871 0.35676274 0.47552833 1.09800303 0.67860311 0.47552833 0.93401712
		 0.93401706 0.47552833 0.67860317 1.098002911 0.47552833 0.3567628 1.15450859 0.47552833 0
		 1.23056579 0.40450856 -0.39983505 1.046781778 0.40450856 -0.76053143 0.76053143 0.40450856 -1.046781778
		 0.39983502 0.40450856 -1.23056567 0 0.40450856 -1.29389322 -0.39983502 0.40450856 -1.23056555
		 -0.76053131 0.40450856 -1.04678154 -1.046781421 0.40450856 -0.76053125 -1.23056531 0.40450856 -0.3998349
		 -1.29389298 0.40450856 0 -1.23056531 0.40450856 0.3998349 -1.046781421 0.40450856 0.76053113
		 -0.76053113 0.40450856 1.046781301 -0.3998349 0.40450856 1.23056519 -3.8561005e-08 0.40450856 1.29389274
		 0.39983478 0.40450856 1.23056507 0.76053101 0.40450856 1.046781182 1.046781182 0.40450856 0.76053107
		 1.23056507 0.40450856 0.39983481 1.29389262 0.40450856 0 1.33576787 0.29389268 -0.4340173
		 1.13627207 0.29389268 -0.8255499 0.8255499 0.29389268 -1.13627195 0.43401724 0.29389268 -1.33576775
		 0 0.29389268 -1.40450931 -0.43401724 0.29389268 -1.33576763;
	setAttr ".vt[166:331]" -0.82554978 0.29389268 -1.13627172 -1.13627172 0.29389268 -0.82554966
		 -1.33576739 0.29389268 -0.43401712 -1.40450895 0.29389268 0 -1.33576739 0.29389268 0.43401712
		 -1.1362716 0.29389268 0.8255496 -0.8255496 0.29389268 1.13627148 -0.43401712 0.29389268 1.33576727
		 -4.1857618e-08 0.29389268 1.40450871 0.434017 0.29389268 1.33576715 0.82554942 0.29389268 1.13627136
		 1.13627136 0.29389268 0.82554948 1.33576703 0.29389268 0.43401703 1.40450859 0.29389268 0
		 1.40331173 0.15450853 -0.45596361 1.19372833 0.15450853 -0.86729431 0.86729431 0.15450853 -1.19372821
		 0.45596358 0.15450853 -1.40331161 0 0.15450853 -1.47552907 -0.45596358 0.15450853 -1.40331149
		 -0.86729413 0.15450853 -1.19372797 -1.19372785 0.15450853 -0.86729407 -1.40331125 0.15450853 -0.45596343
		 -1.47552872 0.15450853 0 -1.40331125 0.15450853 0.45596343 -1.19372785 0.15450853 0.86729395
		 -0.86729395 0.15450853 1.19372773 -0.45596343 0.15450853 1.40331101 -4.3974172e-08 0.15450853 1.47552848
		 0.45596331 0.15450853 1.40331101 0.86729378 0.15450853 1.19372761 1.19372749 0.15450853 0.86729389
		 1.40331089 0.15450853 0.45596334 1.47552836 0.15450853 0 1.42658579 0 -0.4635258
		 1.21352637 0 -0.88167846 0.88167846 0 -1.21352637 0.46352577 0 -1.42658567 0 0 -1.50000083
		 -0.46352577 0 -1.42658556 -0.88167828 0 -1.21352601 -1.21352601 0 -0.88167822 -1.42658532 0 -0.46352562
		 -1.50000048 0 0 -1.42658532 0 0.46352562 -1.21352589 0 0.8816781 -0.8816781 0 1.21352577
		 -0.46352562 0 1.42658508 -4.4703487e-08 0 1.50000036 0.4635255 0 1.42658496 0.88167793 0 1.21352565
		 1.21352565 0 0.88167804 1.42658496 0 0.46352553 1.50000012 0 0 1.40331173 -0.15450853 -0.45596361
		 1.19372833 -0.15450853 -0.86729431 0.86729431 -0.15450853 -1.19372821 0.45596358 -0.15450853 -1.40331161
		 0 -0.15450853 -1.47552907 -0.45596358 -0.15450853 -1.40331149 -0.86729413 -0.15450853 -1.19372797
		 -1.19372785 -0.15450853 -0.86729407 -1.40331125 -0.15450853 -0.45596343 -1.47552872 -0.15450853 0
		 -1.40331125 -0.15450853 0.45596343 -1.19372785 -0.15450853 0.86729395 -0.86729395 -0.15450853 1.19372773
		 -0.45596343 -0.15450853 1.40331101 -4.3974172e-08 -0.15450853 1.47552848 0.45596331 -0.15450853 1.40331101
		 0.86729378 -0.15450853 1.19372761 1.19372749 -0.15450853 0.86729389 1.40331089 -0.15450853 0.45596334
		 1.47552836 -0.15450853 0 1.33576787 -0.29389271 -0.4340173 1.13627207 -0.29389271 -0.8255499
		 0.8255499 -0.29389271 -1.13627195 0.43401724 -0.29389271 -1.33576775 0 -0.29389271 -1.40450931
		 -0.43401724 -0.29389271 -1.33576763 -0.82554978 -0.29389271 -1.13627172 -1.13627172 -0.29389271 -0.82554966
		 -1.33576739 -0.29389271 -0.43401712 -1.40450895 -0.29389271 0 -1.33576739 -0.29389271 0.43401712
		 -1.1362716 -0.29389271 0.8255496 -0.8255496 -0.29389271 1.13627148 -0.43401712 -0.29389271 1.33576727
		 -4.1857618e-08 -0.29389271 1.40450871 0.434017 -0.29389271 1.33576715 0.82554942 -0.29389271 1.13627136
		 1.13627136 -0.29389271 0.82554948 1.33576703 -0.29389271 0.43401703 1.40450859 -0.29389271 0
		 1.23056591 -0.40450865 -0.39983508 1.046781898 -0.40450865 -0.76053154 0.76053154 -0.40450865 -1.046781898
		 0.39983505 -0.40450865 -1.23056579 0 -0.40450865 -1.29389334 -0.39983505 -0.40450865 -1.23056567
		 -0.76053137 -0.40450865 -1.046781659 -1.04678154 -0.40450865 -0.76053131 -1.23056543 -0.40450865 -0.39983493
		 -1.2938931 -0.40450865 0 -1.23056543 -0.40450865 0.39983493 -1.046781421 -0.40450865 0.76053119
		 -0.76053119 -0.40450865 1.046781421 -0.39983493 -0.40450865 1.23056531 -3.8561009e-08 -0.40450865 1.29389286
		 0.39983481 -0.40450865 1.23056519 0.76053107 -0.40450865 1.046781301 1.046781182 -0.40450865 0.76053113
		 1.23056519 -0.40450865 0.39983487 1.29389274 -0.40450865 0 1.098003626 -0.47552848 -0.35676301
		 0.93401772 -0.47552848 -0.67860353 0.67860353 -0.47552848 -0.93401766 0.35676295 -0.47552848 -1.098003507
		 0 -0.47552848 -1.15450919 -0.35676295 -0.47552848 -1.098003387 -0.67860341 -0.47552848 -0.93401742
		 -0.93401736 -0.47552848 -0.67860329 -1.098003268 -0.47552848 -0.35676286 -1.15450883 -0.47552848 0
		 -1.098003268 -0.47552848 0.35676286 -0.9340173 -0.47552848 0.67860323 -0.67860323 -0.47552848 0.93401724
		 -0.35676286 -0.47552848 1.09800303 -3.4407037e-08 -0.47552848 1.15450871 0.35676274 -0.47552848 1.09800303
		 0.67860311 -0.47552848 0.93401712 0.93401706 -0.47552848 0.67860317 1.098002911 -0.47552848 0.3567628
		 1.15450859 -0.47552848 0 0.95105714 -0.50000024 -0.30901718 0.80901754 -0.50000024 -0.5877856
		 0.5877856 -0.50000024 -0.80901748 0.30901715 -0.50000024 -0.95105702 0 -0.50000024 -1.000000476837
		 -0.30901715 -0.50000024 -0.95105696 -0.58778548 -0.50000024 -0.8090173 -0.80901724 -0.50000024 -0.58778542
		 -0.95105678 -0.50000024 -0.30901706 -1.000000238419 -0.50000024 0 -0.95105678 -0.50000024 0.30901706
		 -0.80901718 -0.50000024 0.58778536 -0.58778536 -0.50000024 0.80901712 -0.30901706 -0.50000024 0.95105666
		 -2.9802322e-08 -0.50000024 1.000000119209 0.30901697 -0.50000024 0.9510566 0.58778524 -0.50000024 0.80901706
		 0.809017 -0.50000024 0.5877853 0.95105654 -0.50000024 0.309017 1 -0.50000024 0 0.80411065 -0.47552851 -0.26127136
		 0.68401736 -0.47552851 -0.49696767 0.49696767 -0.47552851 -0.6840173 0.26127136 -0.47552851 -0.80411053
		 0 -0.47552851 -0.84549183 -0.26127136 -0.47552851 -0.80411047 -0.49696758 -0.47552851 -0.68401718
		 -0.68401712 -0.47552851 -0.49696752 -0.80411035 -0.47552851 -0.26127127 -0.84549159 -0.47552851 0
		 -0.80411035 -0.47552851 0.26127127 -0.68401706 -0.47552851 0.49696746;
	setAttr ".vt[332:399]" -0.49696746 -0.47552851 0.684017 -0.26127127 -0.47552851 0.80411023
		 -2.5197608e-08 -0.47552851 0.84549153 0.26127121 -0.47552851 0.80411017 0.49696738 -0.47552851 0.684017
		 0.68401694 -0.47552851 0.49696743 0.80411011 -0.47552851 0.26127121 0.84549141 -0.47552851 0
		 0.67154831 -0.40450874 -0.21819925 0.57125312 -0.40450874 -0.41503966 0.41503966 -0.40450874 -0.57125306
		 0.21819924 -0.40450874 -0.67154819 0 -0.40450874 -0.70610756 -0.21819924 -0.40450874 -0.67154819
		 -0.41503957 -0.40450874 -0.57125294 -0.57125288 -0.40450874 -0.41503951 -0.67154801 -0.40450874 -0.21819918
		 -0.70610738 -0.40450874 0 -0.67154801 -0.40450874 0.21819918 -0.57125288 -0.40450874 0.41503948
		 -0.41503948 -0.40450874 0.57125282 -0.21819918 -0.40450874 0.67154795 -2.1043634e-08 -0.40450874 0.70610726
		 0.2181991 -0.40450874 0.67154789 0.41503939 -0.40450874 0.57125276 0.5712527 -0.40450874 0.41503942
		 0.67154789 -0.40450874 0.21819913 0.7061072 -0.40450874 0 0.56634617 -0.2938928 -0.18401702
		 0.48176286 -0.2938928 -0.35002118 0.35002118 -0.2938928 -0.48176283 0.184017 -0.2938928 -0.56634611
		 0 -0.2938928 -0.59549153 -0.184017 -0.2938928 -0.56634605 -0.35002109 -0.2938928 -0.48176271
		 -0.48176268 -0.2938928 -0.35002106 -0.56634599 -0.2938928 -0.18401696 -0.59549135 -0.2938928 0
		 -0.56634599 -0.2938928 0.18401696 -0.48176265 -0.2938928 0.35002103 -0.35002103 -0.2938928 0.48176259
		 -0.18401696 -0.2938928 0.56634587 -1.7747022e-08 -0.2938928 0.59549129 0.1840169 -0.2938928 0.56634587
		 0.35002095 -0.2938928 0.48176256 0.48176253 -0.2938928 0.350021 0.56634581 -0.2938928 0.18401691
		 0.59549123 -0.2938928 0 0.49880227 -0.15450859 -0.16207068 0.42430657 -0.15450859 -0.30827674
		 0.30827674 -0.15450859 -0.42430654 0.16207066 -0.15450859 -0.49880221 0 -0.15450859 -0.52447164
		 -0.16207066 -0.15450859 -0.49880219 -0.30827668 -0.15450859 -0.42430645 -0.42430639 -0.15450859 -0.30827665
		 -0.4988021 -0.15450859 -0.16207062 -0.52447152 -0.15450859 0 -0.4988021 -0.15450859 0.16207062
		 -0.42430636 -0.15450859 0.30827662 -0.30827662 -0.15450859 0.42430633 -0.16207062 -0.15450859 0.49880201
		 -1.5630466e-08 -0.15450859 0.52447146 0.16207057 -0.15450859 0.49880198 0.30827656 -0.15450859 0.4243063
		 0.42430627 -0.15450859 0.30827659 0.49880195 -0.15450859 0.16207059 0.5244714 -0.15450859 0;
	setAttr -s 800 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1;
	setAttr ".ed[498:663]" 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1
		 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1
		 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1
		 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1
		 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1
		 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1
		 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1
		 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1
		 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1
		 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1
		 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1
		 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1
		 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1;
	setAttr ".ed[664:799]" 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1
		 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1
		 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1
		 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1
		 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1
		 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1
		 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1
		 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1
		 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1
		 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1
		 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1
		 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1
		 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1
		 378 398 1 379 399 1 380 0 1 381 1 1 382 2 1 383 3 1 384 4 1 385 5 1 386 6 1 387 7 1
		 388 8 1 389 9 1 390 10 1 391 11 1 392 12 1 393 13 1 394 14 1 395 15 1 396 16 1 397 17 1
		 398 18 1 399 19 1;
	setAttr -s 400 -ch 1600 ".fc[0:399]" -type "polyFaces" 
		f 4 -1 400 20 -402
		mu 0 4 1 0 21 22
		f 4 -2 401 21 -403
		mu 0 4 2 1 22 23
		f 4 -3 402 22 -404
		mu 0 4 3 2 23 24
		f 4 -4 403 23 -405
		mu 0 4 4 3 24 25
		f 4 -5 404 24 -406
		mu 0 4 5 4 25 26
		f 4 -6 405 25 -407
		mu 0 4 6 5 26 27
		f 4 -7 406 26 -408
		mu 0 4 7 6 27 28
		f 4 -8 407 27 -409
		mu 0 4 8 7 28 29
		f 4 -9 408 28 -410
		mu 0 4 9 8 29 30
		f 4 -10 409 29 -411
		mu 0 4 10 9 30 31
		f 4 -11 410 30 -412
		mu 0 4 11 10 31 32
		f 4 -12 411 31 -413
		mu 0 4 12 11 32 33
		f 4 -13 412 32 -414
		mu 0 4 13 12 33 34
		f 4 -14 413 33 -415
		mu 0 4 14 13 34 35
		f 4 -15 414 34 -416
		mu 0 4 15 14 35 36
		f 4 -16 415 35 -417
		mu 0 4 16 15 36 37
		f 4 -17 416 36 -418
		mu 0 4 17 16 37 38
		f 4 -18 417 37 -419
		mu 0 4 18 17 38 39
		f 4 -19 418 38 -420
		mu 0 4 19 18 39 40
		f 4 -20 419 39 -401
		mu 0 4 20 19 40 41
		f 4 -21 420 40 -422
		mu 0 4 22 21 42 43
		f 4 -22 421 41 -423
		mu 0 4 23 22 43 44
		f 4 -23 422 42 -424
		mu 0 4 24 23 44 45
		f 4 -24 423 43 -425
		mu 0 4 25 24 45 46
		f 4 -25 424 44 -426
		mu 0 4 26 25 46 47
		f 4 -26 425 45 -427
		mu 0 4 27 26 47 48
		f 4 -27 426 46 -428
		mu 0 4 28 27 48 49
		f 4 -28 427 47 -429
		mu 0 4 29 28 49 50
		f 4 -29 428 48 -430
		mu 0 4 30 29 50 51
		f 4 -30 429 49 -431
		mu 0 4 31 30 51 52
		f 4 -31 430 50 -432
		mu 0 4 32 31 52 53
		f 4 -32 431 51 -433
		mu 0 4 33 32 53 54
		f 4 -33 432 52 -434
		mu 0 4 34 33 54 55
		f 4 -34 433 53 -435
		mu 0 4 35 34 55 56
		f 4 -35 434 54 -436
		mu 0 4 36 35 56 57
		f 4 -36 435 55 -437
		mu 0 4 37 36 57 58
		f 4 -37 436 56 -438
		mu 0 4 38 37 58 59
		f 4 -38 437 57 -439
		mu 0 4 39 38 59 60
		f 4 -39 438 58 -440
		mu 0 4 40 39 60 61
		f 4 -40 439 59 -421
		mu 0 4 41 40 61 62
		f 4 -41 440 60 -442
		mu 0 4 43 42 63 64
		f 4 -42 441 61 -443
		mu 0 4 44 43 64 65
		f 4 -43 442 62 -444
		mu 0 4 45 44 65 66
		f 4 -44 443 63 -445
		mu 0 4 46 45 66 67
		f 4 -45 444 64 -446
		mu 0 4 47 46 67 68
		f 4 -46 445 65 -447
		mu 0 4 48 47 68 69
		f 4 -47 446 66 -448
		mu 0 4 49 48 69 70
		f 4 -48 447 67 -449
		mu 0 4 50 49 70 71
		f 4 -49 448 68 -450
		mu 0 4 51 50 71 72
		f 4 -50 449 69 -451
		mu 0 4 52 51 72 73
		f 4 -51 450 70 -452
		mu 0 4 53 52 73 74
		f 4 -52 451 71 -453
		mu 0 4 54 53 74 75
		f 4 -53 452 72 -454
		mu 0 4 55 54 75 76
		f 4 -54 453 73 -455
		mu 0 4 56 55 76 77
		f 4 -55 454 74 -456
		mu 0 4 57 56 77 78
		f 4 -56 455 75 -457
		mu 0 4 58 57 78 79
		f 4 -57 456 76 -458
		mu 0 4 59 58 79 80
		f 4 -58 457 77 -459
		mu 0 4 60 59 80 81
		f 4 -59 458 78 -460
		mu 0 4 61 60 81 82
		f 4 -60 459 79 -441
		mu 0 4 62 61 82 83
		f 4 -61 460 80 -462
		mu 0 4 64 63 84 85
		f 4 -62 461 81 -463
		mu 0 4 65 64 85 86
		f 4 -63 462 82 -464
		mu 0 4 66 65 86 87
		f 4 -64 463 83 -465
		mu 0 4 67 66 87 88
		f 4 -65 464 84 -466
		mu 0 4 68 67 88 89
		f 4 -66 465 85 -467
		mu 0 4 69 68 89 90
		f 4 -67 466 86 -468
		mu 0 4 70 69 90 91
		f 4 -68 467 87 -469
		mu 0 4 71 70 91 92
		f 4 -69 468 88 -470
		mu 0 4 72 71 92 93
		f 4 -70 469 89 -471
		mu 0 4 73 72 93 94
		f 4 -71 470 90 -472
		mu 0 4 74 73 94 95
		f 4 -72 471 91 -473
		mu 0 4 75 74 95 96
		f 4 -73 472 92 -474
		mu 0 4 76 75 96 97
		f 4 -74 473 93 -475
		mu 0 4 77 76 97 98
		f 4 -75 474 94 -476
		mu 0 4 78 77 98 99
		f 4 -76 475 95 -477
		mu 0 4 79 78 99 100
		f 4 -77 476 96 -478
		mu 0 4 80 79 100 101
		f 4 -78 477 97 -479
		mu 0 4 81 80 101 102
		f 4 -79 478 98 -480
		mu 0 4 82 81 102 103
		f 4 -80 479 99 -461
		mu 0 4 83 82 103 104
		f 4 -81 480 100 -482
		mu 0 4 85 84 105 106
		f 4 -82 481 101 -483
		mu 0 4 86 85 106 107
		f 4 -83 482 102 -484
		mu 0 4 87 86 107 108
		f 4 -84 483 103 -485
		mu 0 4 88 87 108 109
		f 4 -85 484 104 -486
		mu 0 4 89 88 109 110
		f 4 -86 485 105 -487
		mu 0 4 90 89 110 111
		f 4 -87 486 106 -488
		mu 0 4 91 90 111 112
		f 4 -88 487 107 -489
		mu 0 4 92 91 112 113
		f 4 -89 488 108 -490
		mu 0 4 93 92 113 114
		f 4 -90 489 109 -491
		mu 0 4 94 93 114 115
		f 4 -91 490 110 -492
		mu 0 4 95 94 115 116
		f 4 -92 491 111 -493
		mu 0 4 96 95 116 117
		f 4 -93 492 112 -494
		mu 0 4 97 96 117 118
		f 4 -94 493 113 -495
		mu 0 4 98 97 118 119
		f 4 -95 494 114 -496
		mu 0 4 99 98 119 120
		f 4 -96 495 115 -497
		mu 0 4 100 99 120 121
		f 4 -97 496 116 -498
		mu 0 4 101 100 121 122
		f 4 -98 497 117 -499
		mu 0 4 102 101 122 123
		f 4 -99 498 118 -500
		mu 0 4 103 102 123 124
		f 4 -100 499 119 -481
		mu 0 4 104 103 124 125
		f 4 -101 500 120 -502
		mu 0 4 106 105 126 127
		f 4 -102 501 121 -503
		mu 0 4 107 106 127 128
		f 4 -103 502 122 -504
		mu 0 4 108 107 128 129
		f 4 -104 503 123 -505
		mu 0 4 109 108 129 130
		f 4 -105 504 124 -506
		mu 0 4 110 109 130 131
		f 4 -106 505 125 -507
		mu 0 4 111 110 131 132
		f 4 -107 506 126 -508
		mu 0 4 112 111 132 133
		f 4 -108 507 127 -509
		mu 0 4 113 112 133 134
		f 4 -109 508 128 -510
		mu 0 4 114 113 134 135
		f 4 -110 509 129 -511
		mu 0 4 115 114 135 136
		f 4 -111 510 130 -512
		mu 0 4 116 115 136 137
		f 4 -112 511 131 -513
		mu 0 4 117 116 137 138
		f 4 -113 512 132 -514
		mu 0 4 118 117 138 139
		f 4 -114 513 133 -515
		mu 0 4 119 118 139 140
		f 4 -115 514 134 -516
		mu 0 4 120 119 140 141
		f 4 -116 515 135 -517
		mu 0 4 121 120 141 142
		f 4 -117 516 136 -518
		mu 0 4 122 121 142 143
		f 4 -118 517 137 -519
		mu 0 4 123 122 143 144
		f 4 -119 518 138 -520
		mu 0 4 124 123 144 145
		f 4 -120 519 139 -501
		mu 0 4 125 124 145 146
		f 4 -121 520 140 -522
		mu 0 4 127 126 147 148
		f 4 -122 521 141 -523
		mu 0 4 128 127 148 149
		f 4 -123 522 142 -524
		mu 0 4 129 128 149 150
		f 4 -124 523 143 -525
		mu 0 4 130 129 150 151
		f 4 -125 524 144 -526
		mu 0 4 131 130 151 152
		f 4 -126 525 145 -527
		mu 0 4 132 131 152 153
		f 4 -127 526 146 -528
		mu 0 4 133 132 153 154
		f 4 -128 527 147 -529
		mu 0 4 134 133 154 155
		f 4 -129 528 148 -530
		mu 0 4 135 134 155 156
		f 4 -130 529 149 -531
		mu 0 4 136 135 156 157
		f 4 -131 530 150 -532
		mu 0 4 137 136 157 158
		f 4 -132 531 151 -533
		mu 0 4 138 137 158 159
		f 4 -133 532 152 -534
		mu 0 4 139 138 159 160
		f 4 -134 533 153 -535
		mu 0 4 140 139 160 161
		f 4 -135 534 154 -536
		mu 0 4 141 140 161 162
		f 4 -136 535 155 -537
		mu 0 4 142 141 162 163
		f 4 -137 536 156 -538
		mu 0 4 143 142 163 164
		f 4 -138 537 157 -539
		mu 0 4 144 143 164 165
		f 4 -139 538 158 -540
		mu 0 4 145 144 165 166
		f 4 -140 539 159 -521
		mu 0 4 146 145 166 167
		f 4 -141 540 160 -542
		mu 0 4 148 147 168 169
		f 4 -142 541 161 -543
		mu 0 4 149 148 169 170
		f 4 -143 542 162 -544
		mu 0 4 150 149 170 171
		f 4 -144 543 163 -545
		mu 0 4 151 150 171 172
		f 4 -145 544 164 -546
		mu 0 4 152 151 172 173
		f 4 -146 545 165 -547
		mu 0 4 153 152 173 174
		f 4 -147 546 166 -548
		mu 0 4 154 153 174 175
		f 4 -148 547 167 -549
		mu 0 4 155 154 175 176
		f 4 -149 548 168 -550
		mu 0 4 156 155 176 177
		f 4 -150 549 169 -551
		mu 0 4 157 156 177 178
		f 4 -151 550 170 -552
		mu 0 4 158 157 178 179
		f 4 -152 551 171 -553
		mu 0 4 159 158 179 180
		f 4 -153 552 172 -554
		mu 0 4 160 159 180 181
		f 4 -154 553 173 -555
		mu 0 4 161 160 181 182
		f 4 -155 554 174 -556
		mu 0 4 162 161 182 183
		f 4 -156 555 175 -557
		mu 0 4 163 162 183 184
		f 4 -157 556 176 -558
		mu 0 4 164 163 184 185
		f 4 -158 557 177 -559
		mu 0 4 165 164 185 186
		f 4 -159 558 178 -560
		mu 0 4 166 165 186 187
		f 4 -160 559 179 -541
		mu 0 4 167 166 187 188
		f 4 -161 560 180 -562
		mu 0 4 169 168 189 190
		f 4 -162 561 181 -563
		mu 0 4 170 169 190 191
		f 4 -163 562 182 -564
		mu 0 4 171 170 191 192
		f 4 -164 563 183 -565
		mu 0 4 172 171 192 193
		f 4 -165 564 184 -566
		mu 0 4 173 172 193 194
		f 4 -166 565 185 -567
		mu 0 4 174 173 194 195
		f 4 -167 566 186 -568
		mu 0 4 175 174 195 196
		f 4 -168 567 187 -569
		mu 0 4 176 175 196 197
		f 4 -169 568 188 -570
		mu 0 4 177 176 197 198
		f 4 -170 569 189 -571
		mu 0 4 178 177 198 199
		f 4 -171 570 190 -572
		mu 0 4 179 178 199 200
		f 4 -172 571 191 -573
		mu 0 4 180 179 200 201
		f 4 -173 572 192 -574
		mu 0 4 181 180 201 202
		f 4 -174 573 193 -575
		mu 0 4 182 181 202 203
		f 4 -175 574 194 -576
		mu 0 4 183 182 203 204
		f 4 -176 575 195 -577
		mu 0 4 184 183 204 205
		f 4 -177 576 196 -578
		mu 0 4 185 184 205 206
		f 4 -178 577 197 -579
		mu 0 4 186 185 206 207
		f 4 -179 578 198 -580
		mu 0 4 187 186 207 208
		f 4 -180 579 199 -561
		mu 0 4 188 187 208 209
		f 4 -181 580 200 -582
		mu 0 4 190 189 210 211
		f 4 -182 581 201 -583
		mu 0 4 191 190 211 212
		f 4 -183 582 202 -584
		mu 0 4 192 191 212 213
		f 4 -184 583 203 -585
		mu 0 4 193 192 213 214
		f 4 -185 584 204 -586
		mu 0 4 194 193 214 215
		f 4 -186 585 205 -587
		mu 0 4 195 194 215 216
		f 4 -187 586 206 -588
		mu 0 4 196 195 216 217
		f 4 -188 587 207 -589
		mu 0 4 197 196 217 218
		f 4 -189 588 208 -590
		mu 0 4 198 197 218 219
		f 4 -190 589 209 -591
		mu 0 4 199 198 219 220
		f 4 -191 590 210 -592
		mu 0 4 200 199 220 221
		f 4 -192 591 211 -593
		mu 0 4 201 200 221 222
		f 4 -193 592 212 -594
		mu 0 4 202 201 222 223
		f 4 -194 593 213 -595
		mu 0 4 203 202 223 224
		f 4 -195 594 214 -596
		mu 0 4 204 203 224 225
		f 4 -196 595 215 -597
		mu 0 4 205 204 225 226
		f 4 -197 596 216 -598
		mu 0 4 206 205 226 227
		f 4 -198 597 217 -599
		mu 0 4 207 206 227 228
		f 4 -199 598 218 -600
		mu 0 4 208 207 228 229
		f 4 -200 599 219 -581
		mu 0 4 209 208 229 230
		f 4 -201 600 220 -602
		mu 0 4 211 210 231 232
		f 4 -202 601 221 -603
		mu 0 4 212 211 232 233
		f 4 -203 602 222 -604
		mu 0 4 213 212 233 234
		f 4 -204 603 223 -605
		mu 0 4 214 213 234 235
		f 4 -205 604 224 -606
		mu 0 4 215 214 235 236
		f 4 -206 605 225 -607
		mu 0 4 216 215 236 237
		f 4 -207 606 226 -608
		mu 0 4 217 216 237 238
		f 4 -208 607 227 -609
		mu 0 4 218 217 238 239
		f 4 -209 608 228 -610
		mu 0 4 219 218 239 240
		f 4 -210 609 229 -611
		mu 0 4 220 219 240 241
		f 4 -211 610 230 -612
		mu 0 4 221 220 241 242
		f 4 -212 611 231 -613
		mu 0 4 222 221 242 243
		f 4 -213 612 232 -614
		mu 0 4 223 222 243 244
		f 4 -214 613 233 -615
		mu 0 4 224 223 244 245
		f 4 -215 614 234 -616
		mu 0 4 225 224 245 246
		f 4 -216 615 235 -617
		mu 0 4 226 225 246 247
		f 4 -217 616 236 -618
		mu 0 4 227 226 247 248
		f 4 -218 617 237 -619
		mu 0 4 228 227 248 249
		f 4 -219 618 238 -620
		mu 0 4 229 228 249 250
		f 4 -220 619 239 -601
		mu 0 4 230 229 250 251
		f 4 -221 620 240 -622
		mu 0 4 232 231 252 253
		f 4 -222 621 241 -623
		mu 0 4 233 232 253 254
		f 4 -223 622 242 -624
		mu 0 4 234 233 254 255
		f 4 -224 623 243 -625
		mu 0 4 235 234 255 256
		f 4 -225 624 244 -626
		mu 0 4 236 235 256 257
		f 4 -226 625 245 -627
		mu 0 4 237 236 257 258
		f 4 -227 626 246 -628
		mu 0 4 238 237 258 259
		f 4 -228 627 247 -629
		mu 0 4 239 238 259 260
		f 4 -229 628 248 -630
		mu 0 4 240 239 260 261
		f 4 -230 629 249 -631
		mu 0 4 241 240 261 262
		f 4 -231 630 250 -632
		mu 0 4 242 241 262 263
		f 4 -232 631 251 -633
		mu 0 4 243 242 263 264
		f 4 -233 632 252 -634
		mu 0 4 244 243 264 265
		f 4 -234 633 253 -635
		mu 0 4 245 244 265 266
		f 4 -235 634 254 -636
		mu 0 4 246 245 266 267
		f 4 -236 635 255 -637
		mu 0 4 247 246 267 268
		f 4 -237 636 256 -638
		mu 0 4 248 247 268 269
		f 4 -238 637 257 -639
		mu 0 4 249 248 269 270
		f 4 -239 638 258 -640
		mu 0 4 250 249 270 271
		f 4 -240 639 259 -621
		mu 0 4 251 250 271 272
		f 4 -241 640 260 -642
		mu 0 4 253 252 273 274
		f 4 -242 641 261 -643
		mu 0 4 254 253 274 275
		f 4 -243 642 262 -644
		mu 0 4 255 254 275 276
		f 4 -244 643 263 -645
		mu 0 4 256 255 276 277
		f 4 -245 644 264 -646
		mu 0 4 257 256 277 278
		f 4 -246 645 265 -647
		mu 0 4 258 257 278 279
		f 4 -247 646 266 -648
		mu 0 4 259 258 279 280
		f 4 -248 647 267 -649
		mu 0 4 260 259 280 281
		f 4 -249 648 268 -650
		mu 0 4 261 260 281 282
		f 4 -250 649 269 -651
		mu 0 4 262 261 282 283
		f 4 -251 650 270 -652
		mu 0 4 263 262 283 284
		f 4 -252 651 271 -653
		mu 0 4 264 263 284 285
		f 4 -253 652 272 -654
		mu 0 4 265 264 285 286
		f 4 -254 653 273 -655
		mu 0 4 266 265 286 287
		f 4 -255 654 274 -656
		mu 0 4 267 266 287 288
		f 4 -256 655 275 -657
		mu 0 4 268 267 288 289
		f 4 -257 656 276 -658
		mu 0 4 269 268 289 290
		f 4 -258 657 277 -659
		mu 0 4 270 269 290 291
		f 4 -259 658 278 -660
		mu 0 4 271 270 291 292
		f 4 -260 659 279 -641
		mu 0 4 272 271 292 293
		f 4 -261 660 280 -662
		mu 0 4 274 273 294 295
		f 4 -262 661 281 -663
		mu 0 4 275 274 295 296
		f 4 -263 662 282 -664
		mu 0 4 276 275 296 297
		f 4 -264 663 283 -665
		mu 0 4 277 276 297 298
		f 4 -265 664 284 -666
		mu 0 4 278 277 298 299
		f 4 -266 665 285 -667
		mu 0 4 279 278 299 300
		f 4 -267 666 286 -668
		mu 0 4 280 279 300 301
		f 4 -268 667 287 -669
		mu 0 4 281 280 301 302
		f 4 -269 668 288 -670
		mu 0 4 282 281 302 303
		f 4 -270 669 289 -671
		mu 0 4 283 282 303 304
		f 4 -271 670 290 -672
		mu 0 4 284 283 304 305
		f 4 -272 671 291 -673
		mu 0 4 285 284 305 306
		f 4 -273 672 292 -674
		mu 0 4 286 285 306 307
		f 4 -274 673 293 -675
		mu 0 4 287 286 307 308
		f 4 -275 674 294 -676
		mu 0 4 288 287 308 309
		f 4 -276 675 295 -677
		mu 0 4 289 288 309 310
		f 4 -277 676 296 -678
		mu 0 4 290 289 310 311
		f 4 -278 677 297 -679
		mu 0 4 291 290 311 312
		f 4 -279 678 298 -680
		mu 0 4 292 291 312 313
		f 4 -280 679 299 -661
		mu 0 4 293 292 313 314
		f 4 -281 680 300 -682
		mu 0 4 295 294 315 316
		f 4 -282 681 301 -683
		mu 0 4 296 295 316 317
		f 4 -283 682 302 -684
		mu 0 4 297 296 317 318
		f 4 -284 683 303 -685
		mu 0 4 298 297 318 319
		f 4 -285 684 304 -686
		mu 0 4 299 298 319 320
		f 4 -286 685 305 -687
		mu 0 4 300 299 320 321
		f 4 -287 686 306 -688
		mu 0 4 301 300 321 322
		f 4 -288 687 307 -689
		mu 0 4 302 301 322 323
		f 4 -289 688 308 -690
		mu 0 4 303 302 323 324
		f 4 -290 689 309 -691
		mu 0 4 304 303 324 325
		f 4 -291 690 310 -692
		mu 0 4 305 304 325 326
		f 4 -292 691 311 -693
		mu 0 4 306 305 326 327
		f 4 -293 692 312 -694
		mu 0 4 307 306 327 328
		f 4 -294 693 313 -695
		mu 0 4 308 307 328 329
		f 4 -295 694 314 -696
		mu 0 4 309 308 329 330
		f 4 -296 695 315 -697
		mu 0 4 310 309 330 331
		f 4 -297 696 316 -698
		mu 0 4 311 310 331 332
		f 4 -298 697 317 -699
		mu 0 4 312 311 332 333
		f 4 -299 698 318 -700
		mu 0 4 313 312 333 334
		f 4 -300 699 319 -681
		mu 0 4 314 313 334 335
		f 4 -301 700 320 -702
		mu 0 4 316 315 336 337
		f 4 -302 701 321 -703
		mu 0 4 317 316 337 338
		f 4 -303 702 322 -704
		mu 0 4 318 317 338 339
		f 4 -304 703 323 -705
		mu 0 4 319 318 339 340
		f 4 -305 704 324 -706
		mu 0 4 320 319 340 341
		f 4 -306 705 325 -707
		mu 0 4 321 320 341 342
		f 4 -307 706 326 -708
		mu 0 4 322 321 342 343
		f 4 -308 707 327 -709
		mu 0 4 323 322 343 344
		f 4 -309 708 328 -710
		mu 0 4 324 323 344 345
		f 4 -310 709 329 -711
		mu 0 4 325 324 345 346
		f 4 -311 710 330 -712
		mu 0 4 326 325 346 347
		f 4 -312 711 331 -713
		mu 0 4 327 326 347 348
		f 4 -313 712 332 -714
		mu 0 4 328 327 348 349
		f 4 -314 713 333 -715
		mu 0 4 329 328 349 350
		f 4 -315 714 334 -716
		mu 0 4 330 329 350 351
		f 4 -316 715 335 -717
		mu 0 4 331 330 351 352
		f 4 -317 716 336 -718
		mu 0 4 332 331 352 353
		f 4 -318 717 337 -719
		mu 0 4 333 332 353 354
		f 4 -319 718 338 -720
		mu 0 4 334 333 354 355
		f 4 -320 719 339 -701
		mu 0 4 335 334 355 356
		f 4 -321 720 340 -722
		mu 0 4 337 336 357 358
		f 4 -322 721 341 -723
		mu 0 4 338 337 358 359
		f 4 -323 722 342 -724
		mu 0 4 339 338 359 360
		f 4 -324 723 343 -725
		mu 0 4 340 339 360 361
		f 4 -325 724 344 -726
		mu 0 4 341 340 361 362
		f 4 -326 725 345 -727
		mu 0 4 342 341 362 363
		f 4 -327 726 346 -728
		mu 0 4 343 342 363 364
		f 4 -328 727 347 -729
		mu 0 4 344 343 364 365
		f 4 -329 728 348 -730
		mu 0 4 345 344 365 366
		f 4 -330 729 349 -731
		mu 0 4 346 345 366 367
		f 4 -331 730 350 -732
		mu 0 4 347 346 367 368
		f 4 -332 731 351 -733
		mu 0 4 348 347 368 369
		f 4 -333 732 352 -734
		mu 0 4 349 348 369 370
		f 4 -334 733 353 -735
		mu 0 4 350 349 370 371
		f 4 -335 734 354 -736
		mu 0 4 351 350 371 372
		f 4 -336 735 355 -737
		mu 0 4 352 351 372 373
		f 4 -337 736 356 -738
		mu 0 4 353 352 373 374
		f 4 -338 737 357 -739
		mu 0 4 354 353 374 375
		f 4 -339 738 358 -740
		mu 0 4 355 354 375 376
		f 4 -340 739 359 -721
		mu 0 4 356 355 376 377
		f 4 -341 740 360 -742
		mu 0 4 358 357 378 379
		f 4 -342 741 361 -743
		mu 0 4 359 358 379 380
		f 4 -343 742 362 -744
		mu 0 4 360 359 380 381
		f 4 -344 743 363 -745
		mu 0 4 361 360 381 382
		f 4 -345 744 364 -746
		mu 0 4 362 361 382 383
		f 4 -346 745 365 -747
		mu 0 4 363 362 383 384
		f 4 -347 746 366 -748
		mu 0 4 364 363 384 385
		f 4 -348 747 367 -749
		mu 0 4 365 364 385 386
		f 4 -349 748 368 -750
		mu 0 4 366 365 386 387
		f 4 -350 749 369 -751
		mu 0 4 367 366 387 388
		f 4 -351 750 370 -752
		mu 0 4 368 367 388 389
		f 4 -352 751 371 -753
		mu 0 4 369 368 389 390
		f 4 -353 752 372 -754
		mu 0 4 370 369 390 391
		f 4 -354 753 373 -755
		mu 0 4 371 370 391 392
		f 4 -355 754 374 -756
		mu 0 4 372 371 392 393
		f 4 -356 755 375 -757
		mu 0 4 373 372 393 394
		f 4 -357 756 376 -758
		mu 0 4 374 373 394 395
		f 4 -358 757 377 -759
		mu 0 4 375 374 395 396
		f 4 -359 758 378 -760
		mu 0 4 376 375 396 397
		f 4 -360 759 379 -741
		mu 0 4 377 376 397 398
		f 4 -361 760 380 -762
		mu 0 4 379 378 399 400
		f 4 -362 761 381 -763
		mu 0 4 380 379 400 401
		f 4 -363 762 382 -764
		mu 0 4 381 380 401 402
		f 4 -364 763 383 -765
		mu 0 4 382 381 402 403
		f 4 -365 764 384 -766
		mu 0 4 383 382 403 404
		f 4 -366 765 385 -767
		mu 0 4 384 383 404 405
		f 4 -367 766 386 -768
		mu 0 4 385 384 405 406
		f 4 -368 767 387 -769
		mu 0 4 386 385 406 407
		f 4 -369 768 388 -770
		mu 0 4 387 386 407 408
		f 4 -370 769 389 -771
		mu 0 4 388 387 408 409
		f 4 -371 770 390 -772
		mu 0 4 389 388 409 410
		f 4 -372 771 391 -773
		mu 0 4 390 389 410 411
		f 4 -373 772 392 -774
		mu 0 4 391 390 411 412
		f 4 -374 773 393 -775
		mu 0 4 392 391 412 413
		f 4 -375 774 394 -776
		mu 0 4 393 392 413 414
		f 4 -376 775 395 -777
		mu 0 4 394 393 414 415
		f 4 -377 776 396 -778
		mu 0 4 395 394 415 416
		f 4 -378 777 397 -779
		mu 0 4 396 395 416 417
		f 4 -379 778 398 -780
		mu 0 4 397 396 417 418
		f 4 -380 779 399 -761
		mu 0 4 398 397 418 419
		f 4 -381 780 0 -782
		mu 0 4 400 399 420 421
		f 4 -382 781 1 -783
		mu 0 4 401 400 421 422
		f 4 -383 782 2 -784
		mu 0 4 402 401 422 423
		f 4 -384 783 3 -785
		mu 0 4 403 402 423 424
		f 4 -385 784 4 -786
		mu 0 4 404 403 424 425
		f 4 -386 785 5 -787
		mu 0 4 405 404 425 426
		f 4 -387 786 6 -788
		mu 0 4 406 405 426 427
		f 4 -388 787 7 -789
		mu 0 4 407 406 427 428
		f 4 -389 788 8 -790
		mu 0 4 408 407 428 429
		f 4 -390 789 9 -791
		mu 0 4 409 408 429 430
		f 4 -391 790 10 -792
		mu 0 4 410 409 430 431
		f 4 -392 791 11 -793
		mu 0 4 411 410 431 432
		f 4 -393 792 12 -794
		mu 0 4 412 411 432 433
		f 4 -394 793 13 -795
		mu 0 4 413 412 433 434
		f 4 -395 794 14 -796
		mu 0 4 414 413 434 435
		f 4 -396 795 15 -797
		mu 0 4 415 414 435 436
		f 4 -397 796 16 -798
		mu 0 4 416 415 436 437
		f 4 -398 797 17 -799
		mu 0 4 417 416 437 438
		f 4 -399 798 18 -800
		mu 0 4 418 417 438 439
		f 4 -400 799 19 -781
		mu 0 4 419 418 439 440;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TV" -p "LivingRoom";
	rename -uid "8B25E7AA-4126-9BBA-F1DF-7098A971EB11";
	setAttr ".t" -type "double3" -37.168029195373435 2.9408164835176214 -1.9658892543297952 ;
	setAttr ".s" -type "double3" 0.57240602694655551 0.57240602694655551 0.57240602694655551 ;
	setAttr ".rp" -type "double3" 28.620303871596839 -1.5503535660093426 0 ;
	setAttr ".sp" -type "double3" 50.000004409927449 -2.7084857479218964 0 ;
	setAttr ".spt" -type "double3" -21.37970053833061 1.1581321819125538 0 ;
createNode transform -n "pasted__pCube1" -p "TV";
	rename -uid "6B6BD990-4480-26B6-24B1-34996D56E2CF";
	setAttr ".t" -type "double3" 50 0 0 ;
	setAttr ".s" -type "double3" 49.324203543440795 28.594993900122283 2.1115119395891764 ;
createNode mesh -n "pasted__pCubeShape1" -p "|LivingRoom|TV|pasted__pCube1";
	rename -uid "D446E859-4D0A-5F17-DDB8-32B7B2336C9D";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 -0.0090682507 -1.0996825 
		0 -0.0090682507 -1.0996825 0 0.0090682507 -1.0996825 0 0.0090682507 -1.0996825;
createNode transform -n "pasted__pCube2" -p "TV";
	rename -uid "ADFDBD57-4FDC-2070-EC92-3A9B84817A43";
	setAttr ".t" -type "double3" 50 -16.566394897178355 0 ;
	setAttr ".s" -type "double3" 5.9494253727856563 5.6466200905956629 1 ;
createNode mesh -n "pasted__pCubeShape2" -p "|LivingRoom|TV|pasted__pCube2";
	rename -uid "E0242FF7-4BE3-BD53-2433-13810CA747DC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube3" -p "TV";
	rename -uid "8EDA8953-4A18-5734-87B1-9E8BEB81BB39";
	setAttr ".t" -type "double3" 50 -19.348627996679671 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 20.098934943213894 10.076263625963994 0.73167578526716603 ;
createNode mesh -n "pasted__pCubeShape3" -p "|LivingRoom|TV|pasted__pCube3";
	rename -uid "75F4C06D-4546-83A3-972F-E48101B5ABDF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "|LivingRoom|TV|pasted__pCube3";
	rename -uid "4A7DA049-47B1-4DF0-7473-31AED1A77E33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cabinet" -p "LivingRoom";
	rename -uid "8003EED8-4578-F42F-04F7-DCA2EE1232C5";
	setAttr ".t" -type "double3" -66.365123758628116 -17.938430503474265 -5.5298811009266942 ;
	setAttr ".s" -type "double3" 1.4830362313944891 1.4623462661201503 1 ;
	setAttr ".rp" -type "double3" 57.332864742794257 0.94893272183528243 5.0706449342358955 ;
	setAttr ".sp" -type "double3" 38.659112656259609 0.64891109843153627 5.0706449342358955 ;
	setAttr ".spt" -type "double3" 18.673752086534648 0.30002162340374616 0 ;
createNode transform -n "pasted__pCube1" -p "Cabinet";
	rename -uid "59DADA5C-466C-3281-6AB4-74B9F8A42B70";
	setAttr ".t" -type "double3" 38.659116052438414 0.6489107453982399 5.0642056180947179 ;
	setAttr ".s" -type "double3" 28.48921271728388 11.845831737664435 11.845831737664435 ;
createNode mesh -n "pasted__pCubeShape1" -p "|LivingRoom|Cabinet|pasted__pCube1";
	rename -uid "88D02879-4075-D192-661C-129FCADD8C4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.1250000037252903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[32:35]" -type "float3"  0 0 -0.97414947 0 0 -0.97414947 
		0 0 -0.97414947 0 0 -0.97414947;
createNode transform -n "pasted__pCube2" -p "Cabinet";
	rename -uid "8D8A3DBA-42EC-A2AE-BA18-69A590E48C72";
	setAttr ".t" -type "double3" 32.778799868136275 0.71899289360360985 5.0500086365143666 ;
	setAttr ".s" -type "double3" 0.82480617241429988 11.431097214053967 11.579547211908043 ;
createNode mesh -n "pasted__pCubeShape2" -p "|LivingRoom|Cabinet|pasted__pCube2";
	rename -uid "822A2D5D-48E3-A494-BAFB-C58F769EEEE2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube3" -p "Cabinet";
	rename -uid "1DE155A8-4D4B-CA8F-507B-6A88D62748D1";
	setAttr ".t" -type "double3" 44.824972691741657 0.71899289360360985 5.0500086365143666 ;
	setAttr ".s" -type "double3" 0.82480617241429988 11.431097214053967 11.579547211908043 ;
createNode mesh -n "pasted__pCubeShape3" -p "|LivingRoom|Cabinet|pasted__pCube3";
	rename -uid "E5FF04D1-4829-4CAB-1C5F-C79D89858211";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube4" -p "Cabinet";
	rename -uid "E669BEFB-45FE-51E6-8BAF-FA8F658C671D";
	setAttr ".t" -type "double3" 38.611116703217668 0.49634046369839169 5.0500086365143666 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.82480617241429988 12.074950980746635 11.579547211908043 ;
createNode mesh -n "pasted__pCubeShape4" -p "|LivingRoom|Cabinet|pasted__pCube4";
	rename -uid "5321015B-4432-6B07-E0DA-2CA2BF1662A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube5" -p "Cabinet";
	rename -uid "7707557B-43DC-EC2E-1861-51A43D8AC4AC";
	setAttr ".t" -type "double3" 28.908801044590724 0.71899289360360985 10.086239593572895 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.82480617241429988 11.431097214053967 7.6798755478795684 ;
createNode mesh -n "pasted__pCubeShape5" -p "pasted__pCube5";
	rename -uid "2C73AE8F-4A42-FE6B-77BB-C29C627287A7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube6" -p "Cabinet";
	rename -uid "2FA3F3FF-4F6A-6262-488F-3992564CE03F";
	setAttr ".t" -type "double3" 48.436633858847031 0.71899289360360985 10.086239593572895 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.82480617241429988 11.431097214053967 7.6798755478795684 ;
createNode mesh -n "pasted__pCubeShape6" -p "pasted__pCube6";
	rename -uid "9F485969-47A2-B15D-0A4E-D59C71555B6A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pSphere1" -p "Cabinet";
	rename -uid "B921B5C7-4145-3BBB-95F6-4DB621884595";
	setAttr ".t" -type "double3" 31.022266982236182 4.5 10 ;
createNode mesh -n "pasted__pSphereShape1" -p "pasted__pSphere1";
	rename -uid "C42A6279-4CBB-4C3B-4BE0-9BA4F2154F08";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pSphere2" -p "Cabinet";
	rename -uid "B5AE1A7B-4D26-A861-3F13-0DAE9D0D9D1F";
	setAttr ".t" -type "double3" 46.764619127021078 4.5 10 ;
createNode mesh -n "pasted__pSphereShape2" -p "pasted__pSphere2";
	rename -uid "B07F81B3-4B1A-3843-862A-06A20A675764";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Portraits" -p "LivingRoom";
	rename -uid "5CA0E858-439C-19A4-9F01-20A709F59344";
	setAttr ".t" -type "double3" 9.5047747894682164 3.4980240051711391 50.314545537476867 ;
	setAttr ".rp" -type "double3" -17.643224760778228 0 16.785196360844257 ;
	setAttr ".sp" -type "double3" -17.643224760778228 0 16.785196360844257 ;
createNode transform -n "pasted__pCube1" -p "Portraits";
	rename -uid "BB3CAAB3-4945-4AED-62F5-DEA1C2609499";
	setAttr ".t" -type "double3" 0 0 16.785196360844257 ;
	setAttr ".s" -type "double3" 12.445508468229539 18.144131309415297 1 ;
createNode mesh -n "pasted__pCubeShape1" -p "|LivingRoom|Portraits|pasted__pCube1";
	rename -uid "28C7D55E-4D34-D524-FAB0-0C875507F2E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.62499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[32:35]" -type "float3"  0.022869084 -0.023440018 
		0.41129076 -0.022869084 -0.023440018 0.41129076 -0.022869084 0.023440018 0.41129076 
		0.022869084 0.023440018 0.41129076;
createNode transform -n "pasted__pCube2" -p "Portraits";
	rename -uid "0772D7F3-413C-8639-8719-C7B19EA1598E";
	setAttr ".t" -type "double3" -18.707308059207776 -2.7516161946153219 16.785196360844257 ;
	setAttr ".s" -type "double3" 11.40987742670514 10.067242384944082 1 ;
createNode mesh -n "pasted__pCubeShape2" -p "|LivingRoom|Portraits|pasted__pCube2";
	rename -uid "8DA57EC8-44AE-0AAB-1FA5-AA94BAD195C6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[12:20]" "f[30:33]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[21:23]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[27:29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[24:26]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[9:11]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.62499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336
		 0.625 0.083333336 0.375 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.625
		 0.16666667 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375 0.5 0.45833334
		 0.5 0.54166669 0.5 0.625 0.5 0.375 0.58333331 0.45833334 0.58333331 0.54166669 0.58333331
		 0.625 0.58333331 0.375 0.66666663 0.45833334 0.66666663 0.54166669 0.66666663 0.625
		 0.66666663 0.375 0.74999994 0.45833334 0.74999994 0.54166669 0.74999994 0.625 0.74999994
		 0.375 0.99999994 0.45833334 0.99999994 0.54166669 0.99999994 0.625 0.99999994 0.875
		 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.125 0 0.125 0.083333336 0.125 0.16666667
		 0.125 0.25 0.45833334 0.58333331 0.54166669 0.58333331 0.54166669 0.66666663 0.45833334
		 0.66666663;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[32:35]" -type "float3"  0.022869084 -0.023440018 
		0.41129076 -0.022869084 -0.023440018 0.41129076 -0.022869084 0.023440018 0.41129076 
		0.022869084 0.023440018 0.41129076;
	setAttr -s 36 ".vt[0:35]"  -0.49999997 -0.49999997 0.5 -0.44315225 -0.49999994 0.5
		 0.44315231 -0.49999994 0.5 0.49999997 -0.49999997 0.5 -0.49999994 -0.45421571 0.5
		 -0.44315225 -0.45421571 0.5 0.44315231 -0.45421571 0.5 0.49999994 -0.45421571 0.5
		 -0.49999994 0.45421585 0.5 -0.44315225 0.45421585 0.5 0.44315231 0.45421585 0.5 0.49999994 0.45421585 0.5
		 -0.49999997 0.49999997 0.5 -0.44315225 0.49999994 0.5 0.44315231 0.49999994 0.5 0.49999997 0.49999997 0.5
		 -0.49999997 0.49999997 -0.5 -0.44315225 0.49999994 -0.5 0.44315231 0.49999994 -0.5
		 0.49999997 0.49999997 -0.5 -0.49999994 0.45421571 -0.5 -0.44315225 0.45421571 -0.49999994
		 0.44315231 0.45421571 -0.49999994 0.49999994 0.45421571 -0.5 -0.49999994 -0.45421585 -0.5
		 -0.44315225 -0.45421585 -0.49999994 0.44315231 -0.45421585 -0.49999994 0.49999994 -0.45421585 -0.5
		 -0.49999997 -0.49999997 -0.5 -0.44315225 -0.49999994 -0.5 0.44315231 -0.49999994 -0.5
		 0.49999997 -0.49999997 -0.5 -0.44315225 0.45421571 -0.49999994 0.44315231 0.45421571 -0.49999994
		 0.44315231 -0.45421585 -0.49999994 -0.44315225 -0.45421585 -0.49999994;
	setAttr -s 68 ".ed[0:67]"  0 1 0 1 2 0 2 3 0 4 5 1 5 6 1 6 7 1 8 9 1
		 9 10 1 10 11 1 12 13 0 13 14 0 14 15 0 16 17 0 17 18 0 18 19 0 20 21 1 21 22 0 22 23 1
		 24 25 1 25 26 0 26 27 1 28 29 0 29 30 0 30 31 0 0 4 0 1 5 1 2 6 1 3 7 0 4 8 0 5 9 1
		 6 10 1 7 11 0 8 12 0 9 13 1 10 14 1 11 15 0 12 16 0 13 17 1 14 18 1 15 19 0 16 20 0
		 17 21 1 18 22 1 19 23 0 20 24 0 21 25 0 22 26 0 23 27 0 24 28 0 25 29 1 26 30 1 27 31 0
		 28 0 0 29 1 1 30 2 1 31 3 0 27 7 1 23 11 1 24 4 1 20 8 1 21 32 0 22 33 0 32 33 0
		 26 34 0 33 34 0 25 35 0 35 34 0 32 35 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 25 -4 -25
		mu 0 4 0 1 5 4
		f 4 1 26 -5 -26
		mu 0 4 1 2 6 5
		f 4 2 27 -6 -27
		mu 0 4 2 3 7 6
		f 4 3 29 -7 -29
		mu 0 4 4 5 9 8
		f 4 4 30 -8 -30
		mu 0 4 5 6 10 9
		f 4 5 31 -9 -31
		mu 0 4 6 7 11 10
		f 4 6 33 -10 -33
		mu 0 4 8 9 13 12
		f 4 7 34 -11 -34
		mu 0 4 9 10 14 13
		f 4 8 35 -12 -35
		mu 0 4 10 11 15 14
		f 4 9 37 -13 -37
		mu 0 4 12 13 17 16
		f 4 10 38 -14 -38
		mu 0 4 13 14 18 17
		f 4 11 39 -15 -39
		mu 0 4 14 15 19 18
		f 4 12 41 -16 -41
		mu 0 4 16 17 21 20
		f 4 13 42 -17 -42
		mu 0 4 17 18 22 21
		f 4 14 43 -18 -43
		mu 0 4 18 19 23 22
		f 4 15 45 -19 -45
		mu 0 4 20 21 25 24
		f 4 62 64 -67 -68
		mu 0 4 44 45 46 47
		f 4 17 47 -21 -47
		mu 0 4 22 23 27 26
		f 4 18 49 -22 -49
		mu 0 4 24 25 29 28
		f 4 19 50 -23 -50
		mu 0 4 25 26 30 29
		f 4 20 51 -24 -51
		mu 0 4 26 27 31 30
		f 4 21 53 -1 -53
		mu 0 4 28 29 33 32
		f 4 22 54 -2 -54
		mu 0 4 29 30 34 33
		f 4 23 55 -3 -55
		mu 0 4 30 31 35 34
		f 4 -56 -52 56 -28
		mu 0 4 3 36 37 7
		f 4 -57 -48 57 -32
		mu 0 4 7 37 38 11
		f 4 -58 -44 -40 -36
		mu 0 4 11 38 39 15
		f 4 52 24 -59 48
		mu 0 4 40 0 4 41
		f 4 58 28 -60 44
		mu 0 4 41 4 8 42
		f 4 59 32 36 40
		mu 0 4 42 8 12 43
		f 4 16 61 -63 -61
		mu 0 4 21 22 45 44
		f 4 46 63 -65 -62
		mu 0 4 22 26 46 45
		f 4 -20 65 66 -64
		mu 0 4 26 25 47 46
		f 4 -46 60 67 -66
		mu 0 4 25 21 44 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube3" -p "Portraits";
	rename -uid "DE69500C-4D0F-DF0F-B26A-148D4DF1F55A";
	setAttr ".t" -type "double3" -35.80426501145444 -0.032214826054789203 16.645476485583167 ;
	setAttr ".s" -type "double3" 11.40987742670514 17.516667140055848 1.3854988629416445 ;
createNode mesh -n "pasted__pCubeShape3" -p "|LivingRoom|Portraits|pasted__pCube3";
	rename -uid "1B1817BE-4829-80EC-50CC-DB97883F4E92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[12:20]" "f[30:33]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[21:23]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[27:29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[24:26]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[9:11]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.62499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336
		 0.625 0.083333336 0.375 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.625
		 0.16666667 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375 0.5 0.45833334
		 0.5 0.54166669 0.5 0.625 0.5 0.375 0.58333331 0.45833334 0.58333331 0.54166669 0.58333331
		 0.625 0.58333331 0.375 0.66666663 0.45833334 0.66666663 0.54166669 0.66666663 0.625
		 0.66666663 0.375 0.74999994 0.45833334 0.74999994 0.54166669 0.74999994 0.625 0.74999994
		 0.375 0.99999994 0.45833334 0.99999994 0.54166669 0.99999994 0.625 0.99999994 0.875
		 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.125 0 0.125 0.083333336 0.125 0.16666667
		 0.125 0.25 0.45833334 0.58333331 0.54166669 0.58333331 0.54166669 0.66666663 0.45833334
		 0.66666663;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[32:35]" -type "float3"  0.022869084 -0.023440018 
		0.41129076 -0.022869084 -0.023440018 0.41129076 -0.022869084 0.023440018 0.41129076 
		0.022869084 0.023440018 0.41129076;
	setAttr -s 36 ".vt[0:35]"  -0.49999997 -0.49999997 0.5 -0.44315225 -0.49999994 0.5
		 0.44315231 -0.49999994 0.5 0.49999997 -0.49999997 0.5 -0.49999994 -0.45421571 0.5
		 -0.44315225 -0.45421571 0.5 0.44315231 -0.45421571 0.5 0.49999994 -0.45421571 0.5
		 -0.49999994 0.45421585 0.5 -0.44315225 0.45421585 0.5 0.44315231 0.45421585 0.5 0.49999994 0.45421585 0.5
		 -0.49999997 0.49999997 0.5 -0.44315225 0.49999994 0.5 0.44315231 0.49999994 0.5 0.49999997 0.49999997 0.5
		 -0.49999997 0.49999997 -0.5 -0.44315225 0.49999994 -0.5 0.44315231 0.49999994 -0.5
		 0.49999997 0.49999997 -0.5 -0.49999994 0.45421571 -0.5 -0.44315225 0.45421571 -0.49999994
		 0.44315231 0.45421571 -0.49999994 0.49999994 0.45421571 -0.5 -0.49999994 -0.45421585 -0.5
		 -0.44315225 -0.45421585 -0.49999994 0.44315231 -0.45421585 -0.49999994 0.49999994 -0.45421585 -0.5
		 -0.49999997 -0.49999997 -0.5 -0.44315225 -0.49999994 -0.5 0.44315231 -0.49999994 -0.5
		 0.49999997 -0.49999997 -0.5 -0.44315225 0.45421571 -0.49999994 0.44315231 0.45421571 -0.49999994
		 0.44315231 -0.45421585 -0.49999994 -0.44315225 -0.45421585 -0.49999994;
	setAttr -s 68 ".ed[0:67]"  0 1 0 1 2 0 2 3 0 4 5 1 5 6 1 6 7 1 8 9 1
		 9 10 1 10 11 1 12 13 0 13 14 0 14 15 0 16 17 0 17 18 0 18 19 0 20 21 1 21 22 0 22 23 1
		 24 25 1 25 26 0 26 27 1 28 29 0 29 30 0 30 31 0 0 4 0 1 5 1 2 6 1 3 7 0 4 8 0 5 9 1
		 6 10 1 7 11 0 8 12 0 9 13 1 10 14 1 11 15 0 12 16 0 13 17 1 14 18 1 15 19 0 16 20 0
		 17 21 1 18 22 1 19 23 0 20 24 0 21 25 0 22 26 0 23 27 0 24 28 0 25 29 1 26 30 1 27 31 0
		 28 0 0 29 1 1 30 2 1 31 3 0 27 7 1 23 11 1 24 4 1 20 8 1 21 32 0 22 33 0 32 33 0
		 26 34 0 33 34 0 25 35 0 35 34 0 32 35 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 25 -4 -25
		mu 0 4 0 1 5 4
		f 4 1 26 -5 -26
		mu 0 4 1 2 6 5
		f 4 2 27 -6 -27
		mu 0 4 2 3 7 6
		f 4 3 29 -7 -29
		mu 0 4 4 5 9 8
		f 4 4 30 -8 -30
		mu 0 4 5 6 10 9
		f 4 5 31 -9 -31
		mu 0 4 6 7 11 10
		f 4 6 33 -10 -33
		mu 0 4 8 9 13 12
		f 4 7 34 -11 -34
		mu 0 4 9 10 14 13
		f 4 8 35 -12 -35
		mu 0 4 10 11 15 14
		f 4 9 37 -13 -37
		mu 0 4 12 13 17 16
		f 4 10 38 -14 -38
		mu 0 4 13 14 18 17
		f 4 11 39 -15 -39
		mu 0 4 14 15 19 18
		f 4 12 41 -16 -41
		mu 0 4 16 17 21 20
		f 4 13 42 -17 -42
		mu 0 4 17 18 22 21
		f 4 14 43 -18 -43
		mu 0 4 18 19 23 22
		f 4 15 45 -19 -45
		mu 0 4 20 21 25 24
		f 4 62 64 -67 -68
		mu 0 4 44 45 46 47
		f 4 17 47 -21 -47
		mu 0 4 22 23 27 26
		f 4 18 49 -22 -49
		mu 0 4 24 25 29 28
		f 4 19 50 -23 -50
		mu 0 4 25 26 30 29
		f 4 20 51 -24 -51
		mu 0 4 26 27 31 30
		f 4 21 53 -1 -53
		mu 0 4 28 29 33 32
		f 4 22 54 -2 -54
		mu 0 4 29 30 34 33
		f 4 23 55 -3 -55
		mu 0 4 30 31 35 34
		f 4 -56 -52 56 -28
		mu 0 4 3 36 37 7
		f 4 -57 -48 57 -32
		mu 0 4 7 37 38 11
		f 4 -58 -44 -40 -36
		mu 0 4 11 38 39 15
		f 4 52 24 -59 48
		mu 0 4 40 0 4 41
		f 4 58 28 -60 44
		mu 0 4 41 4 8 42
		f 4 59 32 36 40
		mu 0 4 42 8 12 43
		f 4 16 61 -63 -61
		mu 0 4 21 22 45 44
		f 4 46 63 -65 -62
		mu 0 4 22 26 46 45
		f 4 -20 65 66 -64
		mu 0 4 26 25 47 46
		f 4 -46 60 67 -66
		mu 0 4 25 21 44 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pic1" -p "Portraits";
	rename -uid "8850FE07-4726-D429-D31E-05B2DD41FE38";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" 0 0 8.1096476476750574 ;
	setAttr ".sp" -type "double3" 0 0 8.1096476476750574 ;
createNode transform -n "pasted__pPlane1" -p "|LivingRoom|Portraits|Pic1";
	rename -uid "8F4F588A-4EC3-76D8-0EC9-1ABCD9E6E9A3";
	setAttr ".t" -type "double3" 0 0 16.276417869052953 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 10.869795168814221 1 16.157521521615692 ;
createNode mesh -n "pasted__pPlaneShape1" -p "|LivingRoom|Portraits|Pic1|pasted__pPlane1";
	rename -uid "BFCA4A06-48F9-0D26-0B0E-EEAAEEFB9196";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__photo_1591969851586_adbbd4accf81" -p "|LivingRoom|Portraits|Pic1|pasted__pPlane1";
	rename -uid "3F98ADD8-4B9C-C36C-6F5F-8BA8F567BD4C";
	setAttr ".t" -type "double3" 0 0.048713319475023997 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "pasted__photo_1591969851586_adbbd4accf81Mesh" -p "pasted__photo_1591969851586_adbbd4accf81";
	rename -uid "8F714570-431A-B2CF-A62C-10AFF83C70FC";
	addAttr -s false -ci true -sn "cnv" -ln "converterNode" -at "message";
	setAttr -k off ".v";
	setAttr -s 24 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.34815840423107147 0.27533334493637085 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "Pic1" -p "|LivingRoom|Portraits|Pic1|pasted__pPlane1";
	rename -uid "69645F30-4370-5D1F-8199-0A8AE6D771DE";
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Pic1Mesh" -p "|LivingRoom|Portraits|Pic1|pasted__pPlane1|Pic1";
	rename -uid "9DBE25D1-4B6C-C685-9AEC-6EBEB9A2A725";
	addAttr -s false -ci true -sn "cnv" -ln "converterNode" -at "message";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Pic2" -p "Portraits";
	rename -uid "42D92EDF-43FC-ED33-FE8C-3BB565CBFAFD";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" -18.713237635787134 -2.5842141039271698 16.377127156077332 ;
	setAttr ".sp" -type "double3" -18.713237635787134 -2.5842141039271698 16.377127156077332 ;
createNode transform -n "pasted__pPlane1" -p "|LivingRoom|Portraits|Pic2";
	rename -uid "B03D136D-41C7-A527-AE1A-82852B590B26";
	setAttr ".t" -type "double3" -18.713237635787134 -2.5842141039271698 16.502134614052508 ;
	setAttr ".r" -type "double3" -90.000000000000014 -7.9513867036587899e-16 180 ;
	setAttr ".s" -type "double3" 10.07480609106344 1 9.4299603317231693 ;
createNode mesh -n "pasted__pPlaneShape1" -p "|LivingRoom|Portraits|Pic2|pasted__pPlane1";
	rename -uid "232B350A-402F-97B6-2189-17A5F11D6E0C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Pic2" -p "|LivingRoom|Portraits|Pic2|pasted__pPlane1";
	rename -uid "29A30E9D-4A40-B1B4-19C0-F4B4AB363FA3";
createNode mesh -n "Pic2Mesh" -p "|LivingRoom|Portraits|Pic2|pasted__pPlane1|Pic2";
	rename -uid "B6237727-44B2-8664-27C3-DE8CF13405FC";
	addAttr -s false -ci true -sn "cnv" -ln "converterNode" -at "message";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Pic3" -p "Portraits";
	rename -uid "7C0E3C80-4411-ED1F-E890-81BDDBC10BA6";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" -35.868535378984518 -0.0019842611721392345 16.465128946648036 ;
	setAttr ".sp" -type "double3" -35.868535378984518 -0.0019842611721392345 16.465128946648036 ;
createNode transform -n "pasted__pPlane2" -p "|LivingRoom|Portraits|Pic3";
	rename -uid "59954763-427F-966E-01F3-E4A19AA0BD9C";
	setAttr ".t" -type "double3" -35.868535378984518 -0.0019842611721392345 16.470128946536278 ;
	setAttr ".r" -type "double3" 90 180 0 ;
	setAttr ".s" -type "double3" 9.8339083688915636 1 15.174185243025391 ;
createNode mesh -n "pasted__pPlaneShape2" -p "|LivingRoom|Portraits|Pic3|pasted__pPlane2";
	rename -uid "DC3516E9-4D92-0217-ACCF-428506AD6B17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__images" -p "|LivingRoom|Portraits|Pic3|pasted__pPlane2";
	rename -uid "5E2C27FD-48A0-020C-396F-959F9A702954";
createNode mesh -n "pasted__imagesMesh" -p "pasted__images";
	rename -uid "2E7269BF-40C7-B68B-814F-B0BD0091CC5B";
	addAttr -s false -ci true -sn "cnv" -ln "converterNode" -at "message";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Pic3" -p "|LivingRoom|Portraits|Pic3|pasted__pPlane2";
	rename -uid "AD8089A4-40EE-2B96-E4A5-3CA0537D5B67";
createNode mesh -n "Pic3Mesh" -p "|LivingRoom|Portraits|Pic3|pasted__pPlane2|Pic3";
	rename -uid "A8361BF4-4498-9024-DE7C-E98ABE865986";
	addAttr -s false -ci true -sn "cnv" -ln "converterNode" -at "message";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Decorative_Light" -p "LivingRoom";
	rename -uid "3C20A990-443A-C124-D8D3-BAAB836D6D84";
	setAttr ".t" -type "double3" 2.7361431320851768 19.608630541263999 28.786550515798048 ;
	setAttr ".s" -type "double3" 0.74381452524116398 1 0.74381452524116398 ;
	setAttr ".rp" -type "double3" 0 0.95326858219584598 -4.4334800555775407e-07 ;
	setAttr ".sp" -type "double3" 0 0.95326858219584598 -5.9604644775390625e-07 ;
	setAttr ".spt" -type "double3" 0 0 1.5269844219615218e-07 ;
createNode transform -n "pasted__pCube1" -p "Decorative_Light";
	rename -uid "2B145A57-4B02-2821-53CF-528F816FA9D5";
	setAttr ".s" -type "double3" -40 2.5 -20 ;
createNode mesh -n "pasted__pCubeShape1" -p "|LivingRoom|Decorative_Light|pasted__pCube1";
	rename -uid "EC931A8E-4FF2-45B8-02FA-988392848414";
	setAttr -k off ".v";
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49968655407428741 0.93639087677001953 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[88:99]" -type "float3"  0 -0.23812613 0 0 -0.23812613 
		0 0 -0.23812614 0 0 -0.23812613 0 0 -0.23812613 0 0 -0.23812613 0 0 -0.23812613 0 
		0 -0.23812613 0 0 -0.23812614 0 0 -0.23812613 0 0 -0.23812613 0 0 -0.23812613 0;
createNode transform -n "pasted__pCylinder1" -p "Decorative_Light";
	rename -uid "E24B9A49-4C2E-7728-DD0E-B7884BA8A5F3";
	setAttr ".t" -type "double3" 0 2.309533337353169 0 ;
	setAttr ".s" -type "double3" 1.7315207487058251 1.4423201178939307 1.7315207487058251 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|LivingRoom|Decorative_Light|pasted__pCylinder1";
	rename -uid "7C7D3DBF-4C45-59D5-9B7E-C9AA5D7C64AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Lamp" -p "LivingRoom";
	rename -uid "D6C1113B-49CE-EC54-8086-3E9742498AD6";
	setAttr ".t" -type "double3" -27.925609646186999 -75.398295115112717 57.492252668513913 ;
	setAttr ".rp" -type "double3" -2.8973654231378987e-07 61.896655549698252 -8.6920962605319119e-07 ;
	setAttr ".sp" -type "double3" -2.8973654231378987e-07 61.896655549698252 -8.6920962605319119e-07 ;
createNode transform -n "pasted__pCylinder1" -p "Lamp";
	rename -uid "048CD1B4-4AEE-4ED9-44B7-E2A2D7F8A004";
	setAttr ".t" -type "double3" 0 50 0 ;
	setAttr ".s" -type "double3" 4.3070669940320645 0.33338811203523949 4.3070669940320645 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|LivingRoom|Lamp|pasted__pCylinder1";
	rename -uid "E0C5B23C-4687-D132-CEEA-CEB4DA565894";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pCylinder2" -p "Lamp";
	rename -uid "3FD1B9D1-480C-FD24-F8A5-1892357C55F9";
	setAttr ".t" -type "double3" 0 61.415692430432209 0 ;
	setAttr ".s" -type "double3" 0.33933953653336307 11.609970618476224 0.33933953653336307 ;
createNode mesh -n "pasted__pCylinderShape2" -p "|LivingRoom|Lamp|pasted__pCylinder2";
	rename -uid "36E7F412-4D13-2E0E-EB1A-679FF0CD87A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pCone1" -p "Lamp";
	rename -uid "8C0F8048-49D7-060E-319A-2C8ADDF0921E";
	setAttr ".t" -type "double3" 0 73.06601313691479 0 ;
	setAttr ".s" -type "double3" 4.8609725484008006 6.4459497940970998 4.8609725484008006 ;
createNode mesh -n "pasted__pConeShape1" -p "pasted__pCone1";
	rename -uid "2E2AF85E-4F96-A279-F9DA-39881A956A4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pCube1" -p "Lamp";
	rename -uid "1FC5D092-451D-C44C-9E42-F9B27CD9E57E";
	setAttr ".t" -type "double3" 3.25 69.103843276301959 0 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode mesh -n "pasted__pCubeShape1" -p "|LivingRoom|Lamp|pasted__pCube1";
	rename -uid "2A23D8E5-4F26-A828-0A99-A68E575C28AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pCube2" -p "Lamp";
	rename -uid "D762EEFB-4698-E911-2915-46A774198D90";
	setAttr ".t" -type "double3" -3.25 69.103843276301959 0 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode mesh -n "pasted__pCubeShape2" -p "|LivingRoom|Lamp|pasted__pCube2";
	rename -uid "3A4F1FAD-4AA8-82A5-B747-8BAE5FCA4E65";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.43749374 0.93750626
		 0.375 0.93750626 0.375 0.81249374 0.43749374 0 0.43749374 0.062493742 0.625 0.93750626
		 0.56250626 0.93750626 0.625 0.81249374 0.68749374 0.062493742 0.375 0.31249374 0.375
		 0.43750626 0.43749374 0.18750626 0.56250626 0.18750626 0.625 0.31249374 0.375 0.56249374
		 0.375 0.68750626 0.43749374 0.43750626 0.56250626 0.43750626 0.625 0.56249374 0.625
		 0.68750626 0.43749374 0.68750626 0.56250626 0.68750626 0.56250626 0.81249374 0.56250626
		 0.062493742 0.43749374 0.31249374 0.56250626 0.31249374 0.43749374 0.56249374 0.56250626
		 0.56249374 0.43749374 0.81249374 0.81250626 0.062493742 0.81250626 0.18750626 0.18749374
		 0.062493742 0.31250626 0.062493742 0.31250626 0.18750626 0.18749374 0.18750626 0.56250626
		 0 0.68749374 0.18750626 0.625 0.43750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.250025 -0.5 0.250025 -0.250025 -0.250025 0.5
		 -0.5 -0.250025 0.250025 0.5 -0.250025 0.250025 0.250025 -0.250025 0.5 0.250025 -0.5 0.250025
		 -0.5 0.250025 0.250025 -0.250025 0.250025 0.5 -0.250025 0.5 0.250025 0.250025 0.5 0.250025
		 0.250025 0.250025 0.5 0.5 0.250025 0.250025 -0.5 0.250025 -0.250025 -0.250025 0.5 -0.250025
		 -0.250025 0.250025 -0.5 0.250025 0.250025 -0.5 0.250025 0.5 -0.250025 0.5 0.250025 -0.250025
		 -0.5 -0.250025 -0.250025 -0.250025 -0.250025 -0.5 -0.250025 -0.5 -0.250025 0.250025 -0.5 -0.250025
		 0.250025 -0.250025 -0.5 0.5 -0.250025 -0.250025;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pCube3" -p "Lamp";
	rename -uid "5CCCCBCB-46AB-647B-1EC5-148CAB0935C5";
	setAttr ".t" -type "double3" 0 69.103843276301959 -3.25 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode mesh -n "pasted__pCubeShape3" -p "|LivingRoom|Lamp|pasted__pCube3";
	rename -uid "06B6140B-4DB7-6E16-D7FC-EF83167DDFC1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.43749374 0.93750626
		 0.375 0.93750626 0.375 0.81249374 0.43749374 0 0.43749374 0.062493742 0.625 0.93750626
		 0.56250626 0.93750626 0.625 0.81249374 0.68749374 0.062493742 0.375 0.31249374 0.375
		 0.43750626 0.43749374 0.18750626 0.56250626 0.18750626 0.625 0.31249374 0.375 0.56249374
		 0.375 0.68750626 0.43749374 0.43750626 0.56250626 0.43750626 0.625 0.56249374 0.625
		 0.68750626 0.43749374 0.68750626 0.56250626 0.68750626 0.56250626 0.81249374 0.56250626
		 0.062493742 0.43749374 0.31249374 0.56250626 0.31249374 0.43749374 0.56249374 0.56250626
		 0.56249374 0.43749374 0.81249374 0.81250626 0.062493742 0.81250626 0.18750626 0.18749374
		 0.062493742 0.31250626 0.062493742 0.31250626 0.18750626 0.18749374 0.18750626 0.56250626
		 0 0.68749374 0.18750626 0.625 0.43750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.250025 -0.5 0.250025 -0.250025 -0.250025 0.5
		 -0.5 -0.250025 0.250025 0.5 -0.250025 0.250025 0.250025 -0.250025 0.5 0.250025 -0.5 0.250025
		 -0.5 0.250025 0.250025 -0.250025 0.250025 0.5 -0.250025 0.5 0.250025 0.250025 0.5 0.250025
		 0.250025 0.250025 0.5 0.5 0.250025 0.250025 -0.5 0.250025 -0.250025 -0.250025 0.5 -0.250025
		 -0.250025 0.250025 -0.5 0.250025 0.250025 -0.5 0.250025 0.5 -0.250025 0.5 0.250025 -0.250025
		 -0.5 -0.250025 -0.250025 -0.250025 -0.250025 -0.5 -0.250025 -0.5 -0.250025 0.250025 -0.5 -0.250025
		 0.250025 -0.250025 -0.5 0.5 -0.250025 -0.250025;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pCube4" -p "Lamp";
	rename -uid "419162B0-4FCE-97D2-4331-DABCC2C93395";
	setAttr ".t" -type "double3" 0 69.103843276301959 3.25 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode mesh -n "pasted__pCubeShape4" -p "|LivingRoom|Lamp|pasted__pCube4";
	rename -uid "6D5D7AAE-4091-A3E7-6EEE-53BE0B353551";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.43749374 0.93750626
		 0.375 0.93750626 0.375 0.81249374 0.43749374 0 0.43749374 0.062493742 0.625 0.93750626
		 0.56250626 0.93750626 0.625 0.81249374 0.68749374 0.062493742 0.375 0.31249374 0.375
		 0.43750626 0.43749374 0.18750626 0.56250626 0.18750626 0.625 0.31249374 0.375 0.56249374
		 0.375 0.68750626 0.43749374 0.43750626 0.56250626 0.43750626 0.625 0.56249374 0.625
		 0.68750626 0.43749374 0.68750626 0.56250626 0.68750626 0.56250626 0.81249374 0.56250626
		 0.062493742 0.43749374 0.31249374 0.56250626 0.31249374 0.43749374 0.56249374 0.56250626
		 0.56249374 0.43749374 0.81249374 0.81250626 0.062493742 0.81250626 0.18750626 0.18749374
		 0.062493742 0.31250626 0.062493742 0.31250626 0.18750626 0.18749374 0.18750626 0.56250626
		 0 0.68749374 0.18750626 0.625 0.43750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.250025 -0.5 0.250025 -0.250025 -0.250025 0.5
		 -0.5 -0.250025 0.250025 0.5 -0.250025 0.250025 0.250025 -0.250025 0.5 0.250025 -0.5 0.250025
		 -0.5 0.250025 0.250025 -0.250025 0.250025 0.5 -0.250025 0.5 0.250025 0.250025 0.5 0.250025
		 0.250025 0.250025 0.5 0.5 0.250025 0.250025 -0.5 0.250025 -0.250025 -0.250025 0.5 -0.250025
		 -0.250025 0.250025 -0.5 0.250025 0.250025 -0.5 0.250025 0.5 -0.250025 0.5 0.250025 -0.250025
		 -0.5 -0.250025 -0.250025 -0.250025 -0.250025 -0.5 -0.250025 -0.5 -0.250025 0.250025 -0.5 -0.250025
		 0.250025 -0.250025 -0.5 0.5 -0.250025 -0.250025;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pasted__pTorus1" -p "Lamp";
	rename -uid "84EEFD34-4800-FED7-5AEE-7995CF94D1DA";
	setAttr ".t" -type "double3" 0 72.855882222128173 0 ;
	setAttr ".s" -type "double3" 1.7402570154153152 0.55318172784233266 1.7402570154153152 ;
createNode mesh -n "pasted__pTorusShape1" -p "pasted__pTorus1";
	rename -uid "D9B9595C-40C3-A789-9CD8-34A40AEF2B17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "Carpet" -p "LivingRoom";
	rename -uid "816BDE26-44C5-CBEE-8D4D-FFAE4DE417ED";
	setAttr ".t" -type "double3" 9.5047747894682164 3.4980240051711391 50.314545537476867 ;
	setAttr ".rp" -type "double3" -17.339423872204414 -28.603037683270511 -19.987787331461572 ;
	setAttr ".sp" -type "double3" -17.339423872204414 -28.603037683270511 -19.987787331461572 ;
createNode transform -n "pasted__Carpet" -p "Carpet";
	rename -uid "68CAD0B0-466C-A9CF-2EEE-FC94A257239D";
	setAttr ".t" -type "double3" -17.430524987873916 -29.084691075585422 -20.084730988693231 ;
	setAttr ".s" -type "double3" 36.012466463912922 1 36.825926814455116 ;
createNode mesh -n "pasted__CarpetShape" -p "pasted__Carpet";
	rename -uid "D404E2B5-4B02-7EF6-C3F2-71B4FA9D9ED9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "group" -p "LivingRoom";
	rename -uid "BC95109A-48EA-CDB7-526A-C0A4B53AC174";
	setAttr ".t" -type "double3" 9.5047747894682164 3.4980240051711391 50.314545537476867 ;
	setAttr ".rp" -type "double3" -17.001015650072052 19.687502263438851 -18.676396134512711 ;
	setAttr ".sp" -type "double3" -17.001015650072052 19.687502263438851 -18.676396134512711 ;
createNode transform -n "pasted__pPlane1" -p "group";
	rename -uid "BB3265C4-4730-AFC6-2A95-E3ADE5024812";
	setAttr ".t" -type "double3" -17.001015650072052 19.883684544217736 0 ;
	setAttr ".s" -type "double3" 58.867138215060628 1 1.1090351029275674 ;
createNode mesh -n "pasted__pPlaneShape1" -p "|LivingRoom|group|pasted__pPlane1";
	rename -uid "F8FF8CC5-4EA7-A35E-8A72-D3AB62AA7558";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.39236456 0 0 -0.39236456 
		0 0 -0.39236456 0 0 -0.39236456 0 0 -0.39236456 0 0 -0.39236456 0;
createNode transform -n "pasted__pPlane2" -p "group";
	rename -uid "27048B68-4A9E-FAD7-3BEC-B9A9FE287064";
	setAttr ".t" -type "double3" -17.001015650072052 19.883684544217736 -11.47063981109256 ;
	setAttr ".s" -type "double3" 58.867138215060628 1 1.1090351029275674 ;
createNode mesh -n "pasted__pPlaneShape2" -p "|LivingRoom|group|pasted__pPlane2";
	rename -uid "8D613AB0-4E76-342D-D98E-33B82A31520E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.32048342 0 0 -0.32048342 
		0 0 -0.32048342 0 0 -0.32048342 0 0 -0.32048342 0 0 -0.32048342 0;
createNode mesh -n "pasted__polySurfaceShape2" -p "|LivingRoom|group|pasted__pPlane2";
	rename -uid "D64E5E37-472E-A7D3-E725-31ACDE8B4072";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[5:6]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[0]" "e[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "e[0:2]" "e[4:6]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 0.5 0 1 0 0 1
		 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  0 0 0.1257748 0.20659328 
		-2.3841858e-07 0 0 0 -8.2098866 0 0 0.1257748 0.20659328 -2.3841858e-07 0 0 0 -8.2098866;
	setAttr -s 6 ".vt[0:5]"  -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0 -0.5
		 0 0 -0.5 0.5 0 -0.5;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -7 -4
		mu 0 4 1 2 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pPlane3" -p "group";
	rename -uid "5E84F593-47B1-2A22-7DD5-6CAD921D3BC0";
	setAttr ".t" -type "double3" -17.001015650072052 19.883684544217736 -35.663779664189207 ;
	setAttr ".s" -type "double3" 58.867138215060628 1 1.1090351029275674 ;
createNode mesh -n "pasted__pPlaneShape3" -p "pasted__pPlane3";
	rename -uid "F0DC3E43-44A5-B416-92D8-A1BE562AF2B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 -0.36965179 0 0 -0.36965179 
		0 0 -0.36965179 0 0 -0.36965179 0 0 -0.36965179 0 0 -0.36965179 0;
createNode mesh -n "pasted__polySurfaceShape3" -p "pasted__pPlane3";
	rename -uid "CB95C49F-4DF7-F529-FCDE-668007271A0B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[5:6]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[0]" "e[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "e[0:2]" "e[4:6]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 0.5 0 1 0 0 1
		 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  0 0 -9.4399891 -0.14048086 
		-2.3841858e-07 1.5668997 0 0 -3.0015349 0 0 -9.4399891 -0.14048086 -2.3841858e-07 
		1.5668997 0 0 -3.0015349;
	setAttr -s 6 ".vt[0:5]"  -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0 -0.5
		 0 0 -0.5 0.5 0 -0.5;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -7 -4
		mu 0 4 1 2 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Table" -p "LivingRoom";
	rename -uid "E61B8F75-40D7-A5B3-65AA-BDA5CFAF4AAF";
	setAttr ".t" -type "double3" -8.4696430885056717 -104.25129279312783 31.022414650587336 ;
	setAttr ".s" -type "double3" 9.6172816814236111 9.6172816814236111 9.6172816814236111 ;
	setAttr ".rp" -type "double3" -0.22611361235852739 82.643351898556688 -0.47541836444613472 ;
	setAttr ".sp" -type "double3" -0.22611361235852739 82.643351898556688 -0.47541836444613472 ;
createNode transform -n "pasted__pPlane1" -p "Table";
	rename -uid "46BCBA3C-4632-9C87-E818-46A3C74B864A";
	setAttr ".t" -type "double3" -0.22611361235852742 82.366684239500131 -0.47541836444613467 ;
	setAttr ".s" -type "double3" 1.8571144462411715 1 1.4285495698245478 ;
createNode mesh -n "pasted__pPlaneShape1" -p "|LivingRoom|Table|pasted__pPlane1";
	rename -uid "AA0EFD26-453D-FF08-67D2-2F8B5D913320";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[121:241]" -type "float3"  0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 
		0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 
		0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 0 0.041572209 0 
		0 0.041572209 0 0 0.041572209 0;
createNode transform -n "pasted__pCylinder1" -p "Table";
	rename -uid "AA68E22A-4366-8F34-1FF6-D5B13B3B885C";
	setAttr ".t" -type "double3" 0.4144326842935524 82.635288587841131 0.015241458829803933 ;
	setAttr ".s" -type "double3" 0.068106430280044233 0.35608479072773908 0.068106430280044233 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|LivingRoom|Table|pasted__pCylinder1";
	rename -uid "F2828EF8-415A-EB24-09E1-71A85E4F8734";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt";
	setAttr ".pt[20]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[21]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[22]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[23]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[24]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[25]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[26]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[27]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[28]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[29]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[30]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[31]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[32]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[33]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[34]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[35]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[36]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[37]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[38]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[39]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[60]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[61]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[62]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[63]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[64]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[65]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[66]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[67]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[68]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[69]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[70]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[71]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[72]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[73]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[74]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[75]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[76]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[77]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[78]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[79]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[100]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[101]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[102]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[103]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[104]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[105]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[106]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[107]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[108]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[109]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[110]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[111]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[112]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[113]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[114]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[115]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[116]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[117]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[118]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[119]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
createNode mesh -n "pasted__pCylinderShape1Orig1" -p "|LivingRoom|Table|pasted__pCylinder1";
	rename -uid "85F24567-420A-F589-360B-6C90F4A7B478";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCylinder2" -p "Table";
	rename -uid "F3908717-4359-1A39-E65B-4FB535A54919";
	setAttr ".t" -type "double3" 0.4144326842935524 82.635288587841131 -0.9948974677962612 ;
	setAttr ".s" -type "double3" 0.068106430280044233 0.35608479072773908 0.068106430280044233 ;
createNode mesh -n "pasted__pCylinderShape2" -p "|LivingRoom|Table|pasted__pCylinder2";
	rename -uid "8D7DC9C0-4A87-0D26-2D80-CBA54C4531B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[120:139]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[140]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:139]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[120:139]" "vtx[141]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[120:139]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:119]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[140:159]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[120:139]";
	setAttr ".pv" -type "double2" 0.49999988079071045 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.375 0.38749999
		 0.375 0.39999998 0.375 0.41249996 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993
		 0.375 0.46249992 0.375 0.4749999 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987
		 0.375 0.52499986 0.375 0.53749985 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981
		 0.375 0.5874998 0.375 0.59999979 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.4375
		 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994
		 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988
		 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982
		 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977 0.4375 0.62499976
		 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987
		 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.5625 0.38749999 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994 0.625 0.44999993
		 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988 0.625 0.51249987
		 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982 0.625 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.62499976 0.625 0.375 0.6875
		 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393
		 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107
		 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107
		 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146
		 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt";
	setAttr ".pt[20]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[21]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[22]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[23]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[24]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[25]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[26]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[27]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[28]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[29]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[30]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[31]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[32]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[33]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[34]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[35]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[36]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[37]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[38]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[39]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[60]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[61]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[62]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[63]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[64]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[65]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[66]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[67]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[68]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[69]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[70]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[71]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[72]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[73]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[74]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[75]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[76]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[77]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[78]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[79]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[100]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[101]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[102]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[103]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[104]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[105]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[106]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[107]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[108]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[109]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[110]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[111]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[112]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[113]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[114]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[115]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[116]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[117]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[118]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[119]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr -s 142 ".vt[0:141]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 -0.66666663 -0.30901718
		 0.80901754 -0.66666663 -0.5877856 0.5877856 -0.66666663 -0.80901748 0.30901715 -0.66666663 -0.95105702
		 0 -0.66666663 -1.000000476837 -0.30901715 -0.66666663 -0.95105696 -0.58778548 -0.66666663 -0.8090173
		 -0.80901724 -0.66666663 -0.58778542 -0.95105678 -0.66666663 -0.30901706 -1.000000238419 -0.66666663 0
		 -0.95105678 -0.66666663 0.30901706 -0.80901718 -0.66666663 0.58778536 -0.58778536 -0.66666663 0.80901712
		 -0.30901706 -0.66666663 0.95105666 -2.9802322e-08 -0.66666663 1.000000119209 0.30901697 -0.66666663 0.9510566
		 0.58778524 -0.66666663 0.80901706 0.809017 -0.66666663 0.5877853 0.95105654 -0.66666663 0.309017
		 1 -0.66666663 0 0.95105714 -0.33333328 -0.30901718 0.80901754 -0.33333328 -0.5877856
		 0.5877856 -0.33333328 -0.80901748 0.30901715 -0.33333328 -0.95105702 0 -0.33333328 -1.000000476837
		 -0.30901715 -0.33333328 -0.95105696 -0.58778548 -0.33333328 -0.8090173 -0.80901724 -0.33333328 -0.58778542
		 -0.95105678 -0.33333328 -0.30901706 -1.000000238419 -0.33333328 0 -0.95105678 -0.33333328 0.30901706
		 -0.80901718 -0.33333328 0.58778536 -0.58778536 -0.33333328 0.80901712 -0.30901706 -0.33333328 0.95105666
		 -2.9802322e-08 -0.33333328 1.000000119209 0.30901697 -0.33333328 0.9510566 0.58778524 -0.33333328 0.80901706
		 0.809017 -0.33333328 0.5877853 0.95105654 -0.33333328 0.309017 1 -0.33333328 0 0.95105714 5.9604645e-08 -0.30901718
		 0.80901754 5.9604645e-08 -0.5877856 0.5877856 5.9604645e-08 -0.80901748 0.30901715 5.9604645e-08 -0.95105702
		 0 5.9604645e-08 -1.000000476837 -0.30901715 5.9604645e-08 -0.95105696 -0.58778548 5.9604645e-08 -0.8090173
		 -0.80901724 5.9604645e-08 -0.58778542 -0.95105678 5.9604645e-08 -0.30901706 -1.000000238419 5.9604645e-08 0
		 -0.95105678 5.9604645e-08 0.30901706 -0.80901718 5.9604645e-08 0.58778536 -0.58778536 5.9604645e-08 0.80901712
		 -0.30901706 5.9604645e-08 0.95105666 -2.9802322e-08 5.9604645e-08 1.000000119209
		 0.30901697 5.9604645e-08 0.9510566 0.58778524 5.9604645e-08 0.80901706 0.809017 5.9604645e-08 0.5877853
		 0.95105654 5.9604645e-08 0.309017 1 5.9604645e-08 0 0.95105714 0.3333334 -0.30901718
		 0.80901754 0.3333334 -0.5877856 0.5877856 0.3333334 -0.80901748 0.30901715 0.3333334 -0.95105702
		 0 0.3333334 -1.000000476837 -0.30901715 0.3333334 -0.95105696 -0.58778548 0.3333334 -0.8090173
		 -0.80901724 0.3333334 -0.58778542 -0.95105678 0.3333334 -0.30901706 -1.000000238419 0.3333334 0
		 -0.95105678 0.3333334 0.30901706 -0.80901718 0.3333334 0.58778536 -0.58778536 0.3333334 0.80901712
		 -0.30901706 0.3333334 0.95105666 -2.9802322e-08 0.3333334 1.000000119209 0.30901697 0.3333334 0.9510566
		 0.58778524 0.3333334 0.80901706 0.809017 0.3333334 0.5877853 0.95105654 0.3333334 0.309017
		 1 0.3333334 0 0.95105714 0.66666675 -0.30901718 0.80901754 0.66666675 -0.5877856
		 0.5877856 0.66666675 -0.80901748 0.30901715 0.66666675 -0.95105702 0 0.66666675 -1.000000476837
		 -0.30901715 0.66666675 -0.95105696 -0.58778548 0.66666675 -0.8090173 -0.80901724 0.66666675 -0.58778542
		 -0.95105678 0.66666675 -0.30901706 -1.000000238419 0.66666675 0 -0.95105678 0.66666675 0.30901706
		 -0.80901718 0.66666675 0.58778536 -0.58778536 0.66666675 0.80901712 -0.30901706 0.66666675 0.95105666
		 -2.9802322e-08 0.66666675 1.000000119209 0.30901697 0.66666675 0.9510566 0.58778524 0.66666675 0.80901706
		 0.809017 0.66666675 0.5877853 0.95105654 0.66666675 0.309017 1 0.66666675 0 0.95105714 1 -0.30901718
		 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837
		 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706
		 -1.000000238419 1 0 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712
		 -0.30901706 1 0.95105666 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706
		 0.809017 1 0.5877853 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:299]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 140 0 1 140 1 1 140 2 1
		 140 3 1 140 4 1 140 5 1 140 6 1 140 7 1 140 8 1 140 9 1 140 10 1 140 11 1 140 12 1
		 140 13 1 140 14 1 140 15 1 140 16 1 140 17 1 140 18 1 140 19 1 120 141 1 121 141 1
		 122 141 1 123 141 1 124 141 1 125 141 1 126 141 1 127 141 1 128 141 1 129 141 1 130 141 1
		 131 141 1 132 141 1 133 141 1 134 141 1 135 141 1 136 141 1 137 141 1 138 141 1 139 141 1;
	setAttr -s 160 -ch 600 ".fc[0:159]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 20 21 42 41
		f 4 1 142 -22 -142
		mu 0 4 21 22 43 42
		f 4 2 143 -23 -143
		mu 0 4 22 23 44 43
		f 4 3 144 -24 -144
		mu 0 4 23 24 45 44
		f 4 4 145 -25 -145
		mu 0 4 24 25 46 45
		f 4 5 146 -26 -146
		mu 0 4 25 26 47 46
		f 4 6 147 -27 -147
		mu 0 4 26 27 48 47
		f 4 7 148 -28 -148
		mu 0 4 27 28 49 48
		f 4 8 149 -29 -149
		mu 0 4 28 29 50 49
		f 4 9 150 -30 -150
		mu 0 4 29 30 51 50
		f 4 10 151 -31 -151
		mu 0 4 30 31 52 51
		f 4 11 152 -32 -152
		mu 0 4 31 32 53 52
		f 4 12 153 -33 -153
		mu 0 4 32 33 54 53
		f 4 13 154 -34 -154
		mu 0 4 33 34 55 54
		f 4 14 155 -35 -155
		mu 0 4 34 35 56 55
		f 4 15 156 -36 -156
		mu 0 4 35 36 57 56
		f 4 16 157 -37 -157
		mu 0 4 36 37 58 57
		f 4 17 158 -38 -158
		mu 0 4 37 38 59 58
		f 4 18 159 -39 -159
		mu 0 4 38 39 60 59
		f 4 19 140 -40 -160
		mu 0 4 39 40 61 60
		f 4 20 161 -41 -161
		mu 0 4 41 42 63 62
		f 4 21 162 -42 -162
		mu 0 4 42 43 64 63
		f 4 22 163 -43 -163
		mu 0 4 43 44 65 64
		f 4 23 164 -44 -164
		mu 0 4 44 45 66 65
		f 4 24 165 -45 -165
		mu 0 4 45 46 67 66
		f 4 25 166 -46 -166
		mu 0 4 46 47 68 67
		f 4 26 167 -47 -167
		mu 0 4 47 48 69 68
		f 4 27 168 -48 -168
		mu 0 4 48 49 70 69
		f 4 28 169 -49 -169
		mu 0 4 49 50 71 70
		f 4 29 170 -50 -170
		mu 0 4 50 51 72 71
		f 4 30 171 -51 -171
		mu 0 4 51 52 73 72
		f 4 31 172 -52 -172
		mu 0 4 52 53 74 73
		f 4 32 173 -53 -173
		mu 0 4 53 54 75 74
		f 4 33 174 -54 -174
		mu 0 4 54 55 76 75
		f 4 34 175 -55 -175
		mu 0 4 55 56 77 76
		f 4 35 176 -56 -176
		mu 0 4 56 57 78 77
		f 4 36 177 -57 -177
		mu 0 4 57 58 79 78
		f 4 37 178 -58 -178
		mu 0 4 58 59 80 79
		f 4 38 179 -59 -179
		mu 0 4 59 60 81 80
		f 4 39 160 -60 -180
		mu 0 4 60 61 82 81
		f 4 40 181 -61 -181
		mu 0 4 62 63 84 83
		f 4 41 182 -62 -182
		mu 0 4 63 64 85 84
		f 4 42 183 -63 -183
		mu 0 4 64 65 86 85
		f 4 43 184 -64 -184
		mu 0 4 65 66 87 86
		f 4 44 185 -65 -185
		mu 0 4 66 67 88 87
		f 4 45 186 -66 -186
		mu 0 4 67 68 89 88
		f 4 46 187 -67 -187
		mu 0 4 68 69 90 89
		f 4 47 188 -68 -188
		mu 0 4 69 70 91 90
		f 4 48 189 -69 -189
		mu 0 4 70 71 92 91
		f 4 49 190 -70 -190
		mu 0 4 71 72 93 92
		f 4 50 191 -71 -191
		mu 0 4 72 73 94 93
		f 4 51 192 -72 -192
		mu 0 4 73 74 95 94
		f 4 52 193 -73 -193
		mu 0 4 74 75 96 95
		f 4 53 194 -74 -194
		mu 0 4 75 76 97 96
		f 4 54 195 -75 -195
		mu 0 4 76 77 98 97
		f 4 55 196 -76 -196
		mu 0 4 77 78 99 98
		f 4 56 197 -77 -197
		mu 0 4 78 79 100 99
		f 4 57 198 -78 -198
		mu 0 4 79 80 101 100
		f 4 58 199 -79 -199
		mu 0 4 80 81 102 101
		f 4 59 180 -80 -200
		mu 0 4 81 82 103 102
		f 4 60 201 -81 -201
		mu 0 4 83 84 105 104
		f 4 61 202 -82 -202
		mu 0 4 84 85 106 105
		f 4 62 203 -83 -203
		mu 0 4 85 86 107 106
		f 4 63 204 -84 -204
		mu 0 4 86 87 108 107
		f 4 64 205 -85 -205
		mu 0 4 87 88 109 108
		f 4 65 206 -86 -206
		mu 0 4 88 89 110 109
		f 4 66 207 -87 -207
		mu 0 4 89 90 111 110
		f 4 67 208 -88 -208
		mu 0 4 90 91 112 111
		f 4 68 209 -89 -209
		mu 0 4 91 92 113 112
		f 4 69 210 -90 -210
		mu 0 4 92 93 114 113
		f 4 70 211 -91 -211
		mu 0 4 93 94 115 114
		f 4 71 212 -92 -212
		mu 0 4 94 95 116 115
		f 4 72 213 -93 -213
		mu 0 4 95 96 117 116
		f 4 73 214 -94 -214
		mu 0 4 96 97 118 117
		f 4 74 215 -95 -215
		mu 0 4 97 98 119 118
		f 4 75 216 -96 -216
		mu 0 4 98 99 120 119
		f 4 76 217 -97 -217
		mu 0 4 99 100 121 120
		f 4 77 218 -98 -218
		mu 0 4 100 101 122 121
		f 4 78 219 -99 -219
		mu 0 4 101 102 123 122
		f 4 79 200 -100 -220
		mu 0 4 102 103 124 123
		f 4 80 221 -101 -221
		mu 0 4 104 105 126 125
		f 4 81 222 -102 -222
		mu 0 4 105 106 127 126
		f 4 82 223 -103 -223
		mu 0 4 106 107 128 127
		f 4 83 224 -104 -224
		mu 0 4 107 108 129 128
		f 4 84 225 -105 -225
		mu 0 4 108 109 130 129
		f 4 85 226 -106 -226
		mu 0 4 109 110 131 130
		f 4 86 227 -107 -227
		mu 0 4 110 111 132 131
		f 4 87 228 -108 -228
		mu 0 4 111 112 133 132
		f 4 88 229 -109 -229
		mu 0 4 112 113 134 133
		f 4 89 230 -110 -230
		mu 0 4 113 114 135 134
		f 4 90 231 -111 -231
		mu 0 4 114 115 136 135
		f 4 91 232 -112 -232
		mu 0 4 115 116 137 136
		f 4 92 233 -113 -233
		mu 0 4 116 117 138 137
		f 4 93 234 -114 -234
		mu 0 4 117 118 139 138
		f 4 94 235 -115 -235
		mu 0 4 118 119 140 139
		f 4 95 236 -116 -236
		mu 0 4 119 120 141 140
		f 4 96 237 -117 -237
		mu 0 4 120 121 142 141
		f 4 97 238 -118 -238
		mu 0 4 121 122 143 142
		f 4 98 239 -119 -239
		mu 0 4 122 123 144 143
		f 4 99 220 -120 -240
		mu 0 4 123 124 145 144
		f 4 100 241 -121 -241
		mu 0 4 125 126 147 146
		f 4 101 242 -122 -242
		mu 0 4 126 127 148 147
		f 4 102 243 -123 -243
		mu 0 4 127 128 149 148
		f 4 103 244 -124 -244
		mu 0 4 128 129 150 149
		f 4 104 245 -125 -245
		mu 0 4 129 130 151 150
		f 4 105 246 -126 -246
		mu 0 4 130 131 152 151
		f 4 106 247 -127 -247
		mu 0 4 131 132 153 152
		f 4 107 248 -128 -248
		mu 0 4 132 133 154 153
		f 4 108 249 -129 -249
		mu 0 4 133 134 155 154
		f 4 109 250 -130 -250
		mu 0 4 134 135 156 155
		f 4 110 251 -131 -251
		mu 0 4 135 136 157 156
		f 4 111 252 -132 -252
		mu 0 4 136 137 158 157
		f 4 112 253 -133 -253
		mu 0 4 137 138 159 158
		f 4 113 254 -134 -254
		mu 0 4 138 139 160 159
		f 4 114 255 -135 -255
		mu 0 4 139 140 161 160
		f 4 115 256 -136 -256
		mu 0 4 140 141 162 161
		f 4 116 257 -137 -257
		mu 0 4 141 142 163 162
		f 4 117 258 -138 -258
		mu 0 4 142 143 164 163
		f 4 118 259 -139 -259
		mu 0 4 143 144 165 164
		f 4 119 240 -140 -260
		mu 0 4 144 145 166 165
		f 3 -1 -261 261
		mu 0 3 1 0 187
		f 3 -2 -262 262
		mu 0 3 2 1 187
		f 3 -3 -263 263
		mu 0 3 3 2 187
		f 3 -4 -264 264
		mu 0 3 4 3 187
		f 3 -5 -265 265
		mu 0 3 5 4 187
		f 3 -6 -266 266
		mu 0 3 6 5 187
		f 3 -7 -267 267
		mu 0 3 7 6 187
		f 3 -8 -268 268
		mu 0 3 8 7 187
		f 3 -9 -269 269
		mu 0 3 9 8 187
		f 3 -10 -270 270
		mu 0 3 10 9 187
		f 3 -11 -271 271
		mu 0 3 11 10 187
		f 3 -12 -272 272
		mu 0 3 12 11 187
		f 3 -13 -273 273
		mu 0 3 13 12 187
		f 3 -14 -274 274
		mu 0 3 14 13 187
		f 3 -15 -275 275
		mu 0 3 15 14 187
		f 3 -16 -276 276
		mu 0 3 16 15 187
		f 3 -17 -277 277
		mu 0 3 17 16 187
		f 3 -18 -278 278
		mu 0 3 18 17 187
		f 3 -19 -279 279
		mu 0 3 19 18 187
		f 3 -20 -280 260
		mu 0 3 0 19 187
		f 3 120 281 -281
		mu 0 3 185 184 188
		f 3 121 282 -282
		mu 0 3 184 183 188
		f 3 122 283 -283
		mu 0 3 183 182 188
		f 3 123 284 -284
		mu 0 3 182 181 188
		f 3 124 285 -285
		mu 0 3 181 180 188
		f 3 125 286 -286
		mu 0 3 180 179 188
		f 3 126 287 -287
		mu 0 3 179 178 188
		f 3 127 288 -288
		mu 0 3 178 177 188
		f 3 128 289 -289
		mu 0 3 177 176 188
		f 3 129 290 -290
		mu 0 3 176 175 188
		f 3 130 291 -291
		mu 0 3 175 174 188
		f 3 131 292 -292
		mu 0 3 174 173 188
		f 3 132 293 -293
		mu 0 3 173 172 188
		f 3 133 294 -294
		mu 0 3 172 171 188
		f 3 134 295 -295
		mu 0 3 171 170 188
		f 3 135 296 -296
		mu 0 3 170 169 188
		f 3 136 297 -297
		mu 0 3 169 168 188
		f 3 137 298 -298
		mu 0 3 168 167 188
		f 3 138 299 -299
		mu 0 3 167 186 188
		f 3 139 280 -300
		mu 0 3 186 185 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__pCylinderShape1Orig2" -p "|LivingRoom|Table|pasted__pCylinder2";
	rename -uid "2F19369B-480A-9949-5FE0-44A6F922C29A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.375 0.38749999
		 0.375 0.39999998 0.375 0.41249996 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993
		 0.375 0.46249992 0.375 0.4749999 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987
		 0.375 0.52499986 0.375 0.53749985 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981
		 0.375 0.5874998 0.375 0.59999979 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.4375
		 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994
		 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988
		 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982
		 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977 0.4375 0.62499976
		 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987
		 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.5625 0.38749999 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994 0.625 0.44999993
		 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988 0.625 0.51249987
		 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982 0.625 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.62499976 0.625 0.375 0.6875
		 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393
		 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107
		 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107
		 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146
		 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 142 ".vt[0:141]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 -0.66666663 -0.30901718
		 0.80901754 -0.66666663 -0.5877856 0.5877856 -0.66666663 -0.80901748 0.30901715 -0.66666663 -0.95105702
		 0 -0.66666663 -1.000000476837 -0.30901715 -0.66666663 -0.95105696 -0.58778548 -0.66666663 -0.8090173
		 -0.80901724 -0.66666663 -0.58778542 -0.95105678 -0.66666663 -0.30901706 -1.000000238419 -0.66666663 0
		 -0.95105678 -0.66666663 0.30901706 -0.80901718 -0.66666663 0.58778536 -0.58778536 -0.66666663 0.80901712
		 -0.30901706 -0.66666663 0.95105666 -2.9802322e-08 -0.66666663 1.000000119209 0.30901697 -0.66666663 0.9510566
		 0.58778524 -0.66666663 0.80901706 0.809017 -0.66666663 0.5877853 0.95105654 -0.66666663 0.309017
		 1 -0.66666663 0 0.95105714 -0.33333328 -0.30901718 0.80901754 -0.33333328 -0.5877856
		 0.5877856 -0.33333328 -0.80901748 0.30901715 -0.33333328 -0.95105702 0 -0.33333328 -1.000000476837
		 -0.30901715 -0.33333328 -0.95105696 -0.58778548 -0.33333328 -0.8090173 -0.80901724 -0.33333328 -0.58778542
		 -0.95105678 -0.33333328 -0.30901706 -1.000000238419 -0.33333328 0 -0.95105678 -0.33333328 0.30901706
		 -0.80901718 -0.33333328 0.58778536 -0.58778536 -0.33333328 0.80901712 -0.30901706 -0.33333328 0.95105666
		 -2.9802322e-08 -0.33333328 1.000000119209 0.30901697 -0.33333328 0.9510566 0.58778524 -0.33333328 0.80901706
		 0.809017 -0.33333328 0.5877853 0.95105654 -0.33333328 0.309017 1 -0.33333328 0 0.95105714 5.9604645e-08 -0.30901718
		 0.80901754 5.9604645e-08 -0.5877856 0.5877856 5.9604645e-08 -0.80901748 0.30901715 5.9604645e-08 -0.95105702
		 0 5.9604645e-08 -1.000000476837 -0.30901715 5.9604645e-08 -0.95105696 -0.58778548 5.9604645e-08 -0.8090173
		 -0.80901724 5.9604645e-08 -0.58778542 -0.95105678 5.9604645e-08 -0.30901706 -1.000000238419 5.9604645e-08 0
		 -0.95105678 5.9604645e-08 0.30901706 -0.80901718 5.9604645e-08 0.58778536 -0.58778536 5.9604645e-08 0.80901712
		 -0.30901706 5.9604645e-08 0.95105666 -2.9802322e-08 5.9604645e-08 1.000000119209
		 0.30901697 5.9604645e-08 0.9510566 0.58778524 5.9604645e-08 0.80901706 0.809017 5.9604645e-08 0.5877853
		 0.95105654 5.9604645e-08 0.309017 1 5.9604645e-08 0 0.95105714 0.3333334 -0.30901718
		 0.80901754 0.3333334 -0.5877856 0.5877856 0.3333334 -0.80901748 0.30901715 0.3333334 -0.95105702
		 0 0.3333334 -1.000000476837 -0.30901715 0.3333334 -0.95105696 -0.58778548 0.3333334 -0.8090173
		 -0.80901724 0.3333334 -0.58778542 -0.95105678 0.3333334 -0.30901706 -1.000000238419 0.3333334 0
		 -0.95105678 0.3333334 0.30901706 -0.80901718 0.3333334 0.58778536 -0.58778536 0.3333334 0.80901712
		 -0.30901706 0.3333334 0.95105666 -2.9802322e-08 0.3333334 1.000000119209 0.30901697 0.3333334 0.9510566
		 0.58778524 0.3333334 0.80901706 0.809017 0.3333334 0.5877853 0.95105654 0.3333334 0.309017
		 1 0.3333334 0 0.95105714 0.66666675 -0.30901718 0.80901754 0.66666675 -0.5877856
		 0.5877856 0.66666675 -0.80901748 0.30901715 0.66666675 -0.95105702 0 0.66666675 -1.000000476837
		 -0.30901715 0.66666675 -0.95105696 -0.58778548 0.66666675 -0.8090173 -0.80901724 0.66666675 -0.58778542
		 -0.95105678 0.66666675 -0.30901706 -1.000000238419 0.66666675 0 -0.95105678 0.66666675 0.30901706
		 -0.80901718 0.66666675 0.58778536 -0.58778536 0.66666675 0.80901712 -0.30901706 0.66666675 0.95105666
		 -2.9802322e-08 0.66666675 1.000000119209 0.30901697 0.66666675 0.9510566 0.58778524 0.66666675 0.80901706
		 0.809017 0.66666675 0.5877853 0.95105654 0.66666675 0.309017 1 0.66666675 0 0.95105714 1 -0.30901718
		 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837
		 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706
		 -1.000000238419 1 0 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712
		 -0.30901706 1 0.95105666 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706
		 0.809017 1 0.5877853 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:299]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 140 0 1 140 1 1 140 2 1
		 140 3 1 140 4 1 140 5 1 140 6 1 140 7 1 140 8 1 140 9 1 140 10 1 140 11 1 140 12 1
		 140 13 1 140 14 1 140 15 1 140 16 1 140 17 1 140 18 1 140 19 1 120 141 1 121 141 1
		 122 141 1 123 141 1 124 141 1 125 141 1 126 141 1 127 141 1 128 141 1 129 141 1 130 141 1
		 131 141 1 132 141 1 133 141 1 134 141 1 135 141 1 136 141 1 137 141 1 138 141 1 139 141 1;
	setAttr -s 160 -ch 600 ".fc[0:159]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 20 21 42 41
		f 4 1 142 -22 -142
		mu 0 4 21 22 43 42
		f 4 2 143 -23 -143
		mu 0 4 22 23 44 43
		f 4 3 144 -24 -144
		mu 0 4 23 24 45 44
		f 4 4 145 -25 -145
		mu 0 4 24 25 46 45
		f 4 5 146 -26 -146
		mu 0 4 25 26 47 46
		f 4 6 147 -27 -147
		mu 0 4 26 27 48 47
		f 4 7 148 -28 -148
		mu 0 4 27 28 49 48
		f 4 8 149 -29 -149
		mu 0 4 28 29 50 49
		f 4 9 150 -30 -150
		mu 0 4 29 30 51 50
		f 4 10 151 -31 -151
		mu 0 4 30 31 52 51
		f 4 11 152 -32 -152
		mu 0 4 31 32 53 52
		f 4 12 153 -33 -153
		mu 0 4 32 33 54 53
		f 4 13 154 -34 -154
		mu 0 4 33 34 55 54
		f 4 14 155 -35 -155
		mu 0 4 34 35 56 55
		f 4 15 156 -36 -156
		mu 0 4 35 36 57 56
		f 4 16 157 -37 -157
		mu 0 4 36 37 58 57
		f 4 17 158 -38 -158
		mu 0 4 37 38 59 58
		f 4 18 159 -39 -159
		mu 0 4 38 39 60 59
		f 4 19 140 -40 -160
		mu 0 4 39 40 61 60
		f 4 20 161 -41 -161
		mu 0 4 41 42 63 62
		f 4 21 162 -42 -162
		mu 0 4 42 43 64 63
		f 4 22 163 -43 -163
		mu 0 4 43 44 65 64
		f 4 23 164 -44 -164
		mu 0 4 44 45 66 65
		f 4 24 165 -45 -165
		mu 0 4 45 46 67 66
		f 4 25 166 -46 -166
		mu 0 4 46 47 68 67
		f 4 26 167 -47 -167
		mu 0 4 47 48 69 68
		f 4 27 168 -48 -168
		mu 0 4 48 49 70 69
		f 4 28 169 -49 -169
		mu 0 4 49 50 71 70
		f 4 29 170 -50 -170
		mu 0 4 50 51 72 71
		f 4 30 171 -51 -171
		mu 0 4 51 52 73 72
		f 4 31 172 -52 -172
		mu 0 4 52 53 74 73
		f 4 32 173 -53 -173
		mu 0 4 53 54 75 74
		f 4 33 174 -54 -174
		mu 0 4 54 55 76 75
		f 4 34 175 -55 -175
		mu 0 4 55 56 77 76
		f 4 35 176 -56 -176
		mu 0 4 56 57 78 77
		f 4 36 177 -57 -177
		mu 0 4 57 58 79 78
		f 4 37 178 -58 -178
		mu 0 4 58 59 80 79
		f 4 38 179 -59 -179
		mu 0 4 59 60 81 80
		f 4 39 160 -60 -180
		mu 0 4 60 61 82 81
		f 4 40 181 -61 -181
		mu 0 4 62 63 84 83
		f 4 41 182 -62 -182
		mu 0 4 63 64 85 84
		f 4 42 183 -63 -183
		mu 0 4 64 65 86 85
		f 4 43 184 -64 -184
		mu 0 4 65 66 87 86
		f 4 44 185 -65 -185
		mu 0 4 66 67 88 87
		f 4 45 186 -66 -186
		mu 0 4 67 68 89 88
		f 4 46 187 -67 -187
		mu 0 4 68 69 90 89
		f 4 47 188 -68 -188
		mu 0 4 69 70 91 90
		f 4 48 189 -69 -189
		mu 0 4 70 71 92 91
		f 4 49 190 -70 -190
		mu 0 4 71 72 93 92
		f 4 50 191 -71 -191
		mu 0 4 72 73 94 93
		f 4 51 192 -72 -192
		mu 0 4 73 74 95 94
		f 4 52 193 -73 -193
		mu 0 4 74 75 96 95
		f 4 53 194 -74 -194
		mu 0 4 75 76 97 96
		f 4 54 195 -75 -195
		mu 0 4 76 77 98 97
		f 4 55 196 -76 -196
		mu 0 4 77 78 99 98
		f 4 56 197 -77 -197
		mu 0 4 78 79 100 99
		f 4 57 198 -78 -198
		mu 0 4 79 80 101 100
		f 4 58 199 -79 -199
		mu 0 4 80 81 102 101
		f 4 59 180 -80 -200
		mu 0 4 81 82 103 102
		f 4 60 201 -81 -201
		mu 0 4 83 84 105 104
		f 4 61 202 -82 -202
		mu 0 4 84 85 106 105
		f 4 62 203 -83 -203
		mu 0 4 85 86 107 106
		f 4 63 204 -84 -204
		mu 0 4 86 87 108 107
		f 4 64 205 -85 -205
		mu 0 4 87 88 109 108
		f 4 65 206 -86 -206
		mu 0 4 88 89 110 109
		f 4 66 207 -87 -207
		mu 0 4 89 90 111 110
		f 4 67 208 -88 -208
		mu 0 4 90 91 112 111
		f 4 68 209 -89 -209
		mu 0 4 91 92 113 112
		f 4 69 210 -90 -210
		mu 0 4 92 93 114 113
		f 4 70 211 -91 -211
		mu 0 4 93 94 115 114
		f 4 71 212 -92 -212
		mu 0 4 94 95 116 115
		f 4 72 213 -93 -213
		mu 0 4 95 96 117 116
		f 4 73 214 -94 -214
		mu 0 4 96 97 118 117
		f 4 74 215 -95 -215
		mu 0 4 97 98 119 118
		f 4 75 216 -96 -216
		mu 0 4 98 99 120 119
		f 4 76 217 -97 -217
		mu 0 4 99 100 121 120
		f 4 77 218 -98 -218
		mu 0 4 100 101 122 121
		f 4 78 219 -99 -219
		mu 0 4 101 102 123 122
		f 4 79 200 -100 -220
		mu 0 4 102 103 124 123
		f 4 80 221 -101 -221
		mu 0 4 104 105 126 125
		f 4 81 222 -102 -222
		mu 0 4 105 106 127 126
		f 4 82 223 -103 -223
		mu 0 4 106 107 128 127
		f 4 83 224 -104 -224
		mu 0 4 107 108 129 128
		f 4 84 225 -105 -225
		mu 0 4 108 109 130 129
		f 4 85 226 -106 -226
		mu 0 4 109 110 131 130
		f 4 86 227 -107 -227
		mu 0 4 110 111 132 131
		f 4 87 228 -108 -228
		mu 0 4 111 112 133 132
		f 4 88 229 -109 -229
		mu 0 4 112 113 134 133
		f 4 89 230 -110 -230
		mu 0 4 113 114 135 134
		f 4 90 231 -111 -231
		mu 0 4 114 115 136 135
		f 4 91 232 -112 -232
		mu 0 4 115 116 137 136
		f 4 92 233 -113 -233
		mu 0 4 116 117 138 137
		f 4 93 234 -114 -234
		mu 0 4 117 118 139 138
		f 4 94 235 -115 -235
		mu 0 4 118 119 140 139
		f 4 95 236 -116 -236
		mu 0 4 119 120 141 140
		f 4 96 237 -117 -237
		mu 0 4 120 121 142 141
		f 4 97 238 -118 -238
		mu 0 4 121 122 143 142
		f 4 98 239 -119 -239
		mu 0 4 122 123 144 143
		f 4 99 220 -120 -240
		mu 0 4 123 124 145 144
		f 4 100 241 -121 -241
		mu 0 4 125 126 147 146
		f 4 101 242 -122 -242
		mu 0 4 126 127 148 147
		f 4 102 243 -123 -243
		mu 0 4 127 128 149 148
		f 4 103 244 -124 -244
		mu 0 4 128 129 150 149
		f 4 104 245 -125 -245
		mu 0 4 129 130 151 150
		f 4 105 246 -126 -246
		mu 0 4 130 131 152 151
		f 4 106 247 -127 -247
		mu 0 4 131 132 153 152
		f 4 107 248 -128 -248
		mu 0 4 132 133 154 153
		f 4 108 249 -129 -249
		mu 0 4 133 134 155 154
		f 4 109 250 -130 -250
		mu 0 4 134 135 156 155
		f 4 110 251 -131 -251
		mu 0 4 135 136 157 156
		f 4 111 252 -132 -252
		mu 0 4 136 137 158 157
		f 4 112 253 -133 -253
		mu 0 4 137 138 159 158
		f 4 113 254 -134 -254
		mu 0 4 138 139 160 159
		f 4 114 255 -135 -255
		mu 0 4 139 140 161 160
		f 4 115 256 -136 -256
		mu 0 4 140 141 162 161
		f 4 116 257 -137 -257
		mu 0 4 141 142 163 162
		f 4 117 258 -138 -258
		mu 0 4 142 143 164 163
		f 4 118 259 -139 -259
		mu 0 4 143 144 165 164
		f 4 119 240 -140 -260
		mu 0 4 144 145 166 165
		f 3 -1 -261 261
		mu 0 3 1 0 187
		f 3 -2 -262 262
		mu 0 3 2 1 187
		f 3 -3 -263 263
		mu 0 3 3 2 187
		f 3 -4 -264 264
		mu 0 3 4 3 187
		f 3 -5 -265 265
		mu 0 3 5 4 187
		f 3 -6 -266 266
		mu 0 3 6 5 187
		f 3 -7 -267 267
		mu 0 3 7 6 187
		f 3 -8 -268 268
		mu 0 3 8 7 187
		f 3 -9 -269 269
		mu 0 3 9 8 187
		f 3 -10 -270 270
		mu 0 3 10 9 187
		f 3 -11 -271 271
		mu 0 3 11 10 187
		f 3 -12 -272 272
		mu 0 3 12 11 187
		f 3 -13 -273 273
		mu 0 3 13 12 187
		f 3 -14 -274 274
		mu 0 3 14 13 187
		f 3 -15 -275 275
		mu 0 3 15 14 187
		f 3 -16 -276 276
		mu 0 3 16 15 187
		f 3 -17 -277 277
		mu 0 3 17 16 187
		f 3 -18 -278 278
		mu 0 3 18 17 187
		f 3 -19 -279 279
		mu 0 3 19 18 187
		f 3 -20 -280 260
		mu 0 3 0 19 187
		f 3 120 281 -281
		mu 0 3 185 184 188
		f 3 121 282 -282
		mu 0 3 184 183 188
		f 3 122 283 -283
		mu 0 3 183 182 188
		f 3 123 284 -284
		mu 0 3 182 181 188
		f 3 124 285 -285
		mu 0 3 181 180 188
		f 3 125 286 -286
		mu 0 3 180 179 188
		f 3 126 287 -287
		mu 0 3 179 178 188
		f 3 127 288 -288
		mu 0 3 178 177 188
		f 3 128 289 -289
		mu 0 3 177 176 188
		f 3 129 290 -290
		mu 0 3 176 175 188
		f 3 130 291 -291
		mu 0 3 175 174 188
		f 3 131 292 -292
		mu 0 3 174 173 188
		f 3 132 293 -293
		mu 0 3 173 172 188
		f 3 133 294 -294
		mu 0 3 172 171 188
		f 3 134 295 -295
		mu 0 3 171 170 188
		f 3 135 296 -296
		mu 0 3 170 169 188
		f 3 136 297 -297
		mu 0 3 169 168 188
		f 3 137 298 -298
		mu 0 3 168 167 188
		f 3 138 299 -299
		mu 0 3 167 186 188
		f 3 139 280 -300
		mu 0 3 186 185 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCylinder3" -p "Table";
	rename -uid "C7972622-4A7B-4D38-1212-BF8242AA1F99";
	setAttr ".t" -type "double3" -0.87381930675911268 82.635288587841131 -0.9948974677962612 ;
	setAttr ".s" -type "double3" 0.068106430280044233 0.35608479072773908 0.068106430280044233 ;
createNode mesh -n "pasted__pCylinderShape3" -p "|LivingRoom|Table|pasted__pCylinder3";
	rename -uid "8FA8B26F-4A26-0571-E577-96857C6C46A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[120:139]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[140]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:139]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[120:139]" "vtx[141]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[120:139]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:119]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[140:159]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[120:139]";
	setAttr ".pv" -type "double2" 0.49999988079071045 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.375 0.38749999
		 0.375 0.39999998 0.375 0.41249996 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993
		 0.375 0.46249992 0.375 0.4749999 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987
		 0.375 0.52499986 0.375 0.53749985 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981
		 0.375 0.5874998 0.375 0.59999979 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.4375
		 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994
		 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988
		 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982
		 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977 0.4375 0.62499976
		 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987
		 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.5625 0.38749999 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994 0.625 0.44999993
		 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988 0.625 0.51249987
		 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982 0.625 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.62499976 0.625 0.375 0.6875
		 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393
		 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107
		 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107
		 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146
		 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt";
	setAttr ".pt[20]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[21]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[22]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[23]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[24]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[25]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[26]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[27]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[28]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[29]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[30]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[31]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[32]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[33]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[34]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[35]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[36]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[37]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[38]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[39]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[60]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[61]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[62]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[63]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[64]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[65]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[66]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[67]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[68]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[69]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[70]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[71]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[72]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[73]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[74]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[75]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[76]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[77]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[78]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[79]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[100]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[101]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[102]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[103]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[104]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[105]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[106]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[107]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[108]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[109]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[110]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[111]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[112]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[113]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[114]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[115]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[116]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[117]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[118]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[119]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr -s 142 ".vt[0:141]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 -0.66666663 -0.30901718
		 0.80901754 -0.66666663 -0.5877856 0.5877856 -0.66666663 -0.80901748 0.30901715 -0.66666663 -0.95105702
		 0 -0.66666663 -1.000000476837 -0.30901715 -0.66666663 -0.95105696 -0.58778548 -0.66666663 -0.8090173
		 -0.80901724 -0.66666663 -0.58778542 -0.95105678 -0.66666663 -0.30901706 -1.000000238419 -0.66666663 0
		 -0.95105678 -0.66666663 0.30901706 -0.80901718 -0.66666663 0.58778536 -0.58778536 -0.66666663 0.80901712
		 -0.30901706 -0.66666663 0.95105666 -2.9802322e-08 -0.66666663 1.000000119209 0.30901697 -0.66666663 0.9510566
		 0.58778524 -0.66666663 0.80901706 0.809017 -0.66666663 0.5877853 0.95105654 -0.66666663 0.309017
		 1 -0.66666663 0 0.95105714 -0.33333328 -0.30901718 0.80901754 -0.33333328 -0.5877856
		 0.5877856 -0.33333328 -0.80901748 0.30901715 -0.33333328 -0.95105702 0 -0.33333328 -1.000000476837
		 -0.30901715 -0.33333328 -0.95105696 -0.58778548 -0.33333328 -0.8090173 -0.80901724 -0.33333328 -0.58778542
		 -0.95105678 -0.33333328 -0.30901706 -1.000000238419 -0.33333328 0 -0.95105678 -0.33333328 0.30901706
		 -0.80901718 -0.33333328 0.58778536 -0.58778536 -0.33333328 0.80901712 -0.30901706 -0.33333328 0.95105666
		 -2.9802322e-08 -0.33333328 1.000000119209 0.30901697 -0.33333328 0.9510566 0.58778524 -0.33333328 0.80901706
		 0.809017 -0.33333328 0.5877853 0.95105654 -0.33333328 0.309017 1 -0.33333328 0 0.95105714 5.9604645e-08 -0.30901718
		 0.80901754 5.9604645e-08 -0.5877856 0.5877856 5.9604645e-08 -0.80901748 0.30901715 5.9604645e-08 -0.95105702
		 0 5.9604645e-08 -1.000000476837 -0.30901715 5.9604645e-08 -0.95105696 -0.58778548 5.9604645e-08 -0.8090173
		 -0.80901724 5.9604645e-08 -0.58778542 -0.95105678 5.9604645e-08 -0.30901706 -1.000000238419 5.9604645e-08 0
		 -0.95105678 5.9604645e-08 0.30901706 -0.80901718 5.9604645e-08 0.58778536 -0.58778536 5.9604645e-08 0.80901712
		 -0.30901706 5.9604645e-08 0.95105666 -2.9802322e-08 5.9604645e-08 1.000000119209
		 0.30901697 5.9604645e-08 0.9510566 0.58778524 5.9604645e-08 0.80901706 0.809017 5.9604645e-08 0.5877853
		 0.95105654 5.9604645e-08 0.309017 1 5.9604645e-08 0 0.95105714 0.3333334 -0.30901718
		 0.80901754 0.3333334 -0.5877856 0.5877856 0.3333334 -0.80901748 0.30901715 0.3333334 -0.95105702
		 0 0.3333334 -1.000000476837 -0.30901715 0.3333334 -0.95105696 -0.58778548 0.3333334 -0.8090173
		 -0.80901724 0.3333334 -0.58778542 -0.95105678 0.3333334 -0.30901706 -1.000000238419 0.3333334 0
		 -0.95105678 0.3333334 0.30901706 -0.80901718 0.3333334 0.58778536 -0.58778536 0.3333334 0.80901712
		 -0.30901706 0.3333334 0.95105666 -2.9802322e-08 0.3333334 1.000000119209 0.30901697 0.3333334 0.9510566
		 0.58778524 0.3333334 0.80901706 0.809017 0.3333334 0.5877853 0.95105654 0.3333334 0.309017
		 1 0.3333334 0 0.95105714 0.66666675 -0.30901718 0.80901754 0.66666675 -0.5877856
		 0.5877856 0.66666675 -0.80901748 0.30901715 0.66666675 -0.95105702 0 0.66666675 -1.000000476837
		 -0.30901715 0.66666675 -0.95105696 -0.58778548 0.66666675 -0.8090173 -0.80901724 0.66666675 -0.58778542
		 -0.95105678 0.66666675 -0.30901706 -1.000000238419 0.66666675 0 -0.95105678 0.66666675 0.30901706
		 -0.80901718 0.66666675 0.58778536 -0.58778536 0.66666675 0.80901712 -0.30901706 0.66666675 0.95105666
		 -2.9802322e-08 0.66666675 1.000000119209 0.30901697 0.66666675 0.9510566 0.58778524 0.66666675 0.80901706
		 0.809017 0.66666675 0.5877853 0.95105654 0.66666675 0.309017 1 0.66666675 0 0.95105714 1 -0.30901718
		 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837
		 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706
		 -1.000000238419 1 0 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712
		 -0.30901706 1 0.95105666 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706
		 0.809017 1 0.5877853 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:299]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 140 0 1 140 1 1 140 2 1
		 140 3 1 140 4 1 140 5 1 140 6 1 140 7 1 140 8 1 140 9 1 140 10 1 140 11 1 140 12 1
		 140 13 1 140 14 1 140 15 1 140 16 1 140 17 1 140 18 1 140 19 1 120 141 1 121 141 1
		 122 141 1 123 141 1 124 141 1 125 141 1 126 141 1 127 141 1 128 141 1 129 141 1 130 141 1
		 131 141 1 132 141 1 133 141 1 134 141 1 135 141 1 136 141 1 137 141 1 138 141 1 139 141 1;
	setAttr -s 160 -ch 600 ".fc[0:159]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 20 21 42 41
		f 4 1 142 -22 -142
		mu 0 4 21 22 43 42
		f 4 2 143 -23 -143
		mu 0 4 22 23 44 43
		f 4 3 144 -24 -144
		mu 0 4 23 24 45 44
		f 4 4 145 -25 -145
		mu 0 4 24 25 46 45
		f 4 5 146 -26 -146
		mu 0 4 25 26 47 46
		f 4 6 147 -27 -147
		mu 0 4 26 27 48 47
		f 4 7 148 -28 -148
		mu 0 4 27 28 49 48
		f 4 8 149 -29 -149
		mu 0 4 28 29 50 49
		f 4 9 150 -30 -150
		mu 0 4 29 30 51 50
		f 4 10 151 -31 -151
		mu 0 4 30 31 52 51
		f 4 11 152 -32 -152
		mu 0 4 31 32 53 52
		f 4 12 153 -33 -153
		mu 0 4 32 33 54 53
		f 4 13 154 -34 -154
		mu 0 4 33 34 55 54
		f 4 14 155 -35 -155
		mu 0 4 34 35 56 55
		f 4 15 156 -36 -156
		mu 0 4 35 36 57 56
		f 4 16 157 -37 -157
		mu 0 4 36 37 58 57
		f 4 17 158 -38 -158
		mu 0 4 37 38 59 58
		f 4 18 159 -39 -159
		mu 0 4 38 39 60 59
		f 4 19 140 -40 -160
		mu 0 4 39 40 61 60
		f 4 20 161 -41 -161
		mu 0 4 41 42 63 62
		f 4 21 162 -42 -162
		mu 0 4 42 43 64 63
		f 4 22 163 -43 -163
		mu 0 4 43 44 65 64
		f 4 23 164 -44 -164
		mu 0 4 44 45 66 65
		f 4 24 165 -45 -165
		mu 0 4 45 46 67 66
		f 4 25 166 -46 -166
		mu 0 4 46 47 68 67
		f 4 26 167 -47 -167
		mu 0 4 47 48 69 68
		f 4 27 168 -48 -168
		mu 0 4 48 49 70 69
		f 4 28 169 -49 -169
		mu 0 4 49 50 71 70
		f 4 29 170 -50 -170
		mu 0 4 50 51 72 71
		f 4 30 171 -51 -171
		mu 0 4 51 52 73 72
		f 4 31 172 -52 -172
		mu 0 4 52 53 74 73
		f 4 32 173 -53 -173
		mu 0 4 53 54 75 74
		f 4 33 174 -54 -174
		mu 0 4 54 55 76 75
		f 4 34 175 -55 -175
		mu 0 4 55 56 77 76
		f 4 35 176 -56 -176
		mu 0 4 56 57 78 77
		f 4 36 177 -57 -177
		mu 0 4 57 58 79 78
		f 4 37 178 -58 -178
		mu 0 4 58 59 80 79
		f 4 38 179 -59 -179
		mu 0 4 59 60 81 80
		f 4 39 160 -60 -180
		mu 0 4 60 61 82 81
		f 4 40 181 -61 -181
		mu 0 4 62 63 84 83
		f 4 41 182 -62 -182
		mu 0 4 63 64 85 84
		f 4 42 183 -63 -183
		mu 0 4 64 65 86 85
		f 4 43 184 -64 -184
		mu 0 4 65 66 87 86
		f 4 44 185 -65 -185
		mu 0 4 66 67 88 87
		f 4 45 186 -66 -186
		mu 0 4 67 68 89 88
		f 4 46 187 -67 -187
		mu 0 4 68 69 90 89
		f 4 47 188 -68 -188
		mu 0 4 69 70 91 90
		f 4 48 189 -69 -189
		mu 0 4 70 71 92 91
		f 4 49 190 -70 -190
		mu 0 4 71 72 93 92
		f 4 50 191 -71 -191
		mu 0 4 72 73 94 93
		f 4 51 192 -72 -192
		mu 0 4 73 74 95 94
		f 4 52 193 -73 -193
		mu 0 4 74 75 96 95
		f 4 53 194 -74 -194
		mu 0 4 75 76 97 96
		f 4 54 195 -75 -195
		mu 0 4 76 77 98 97
		f 4 55 196 -76 -196
		mu 0 4 77 78 99 98
		f 4 56 197 -77 -197
		mu 0 4 78 79 100 99
		f 4 57 198 -78 -198
		mu 0 4 79 80 101 100
		f 4 58 199 -79 -199
		mu 0 4 80 81 102 101
		f 4 59 180 -80 -200
		mu 0 4 81 82 103 102
		f 4 60 201 -81 -201
		mu 0 4 83 84 105 104
		f 4 61 202 -82 -202
		mu 0 4 84 85 106 105
		f 4 62 203 -83 -203
		mu 0 4 85 86 107 106
		f 4 63 204 -84 -204
		mu 0 4 86 87 108 107
		f 4 64 205 -85 -205
		mu 0 4 87 88 109 108
		f 4 65 206 -86 -206
		mu 0 4 88 89 110 109
		f 4 66 207 -87 -207
		mu 0 4 89 90 111 110
		f 4 67 208 -88 -208
		mu 0 4 90 91 112 111
		f 4 68 209 -89 -209
		mu 0 4 91 92 113 112
		f 4 69 210 -90 -210
		mu 0 4 92 93 114 113
		f 4 70 211 -91 -211
		mu 0 4 93 94 115 114
		f 4 71 212 -92 -212
		mu 0 4 94 95 116 115
		f 4 72 213 -93 -213
		mu 0 4 95 96 117 116
		f 4 73 214 -94 -214
		mu 0 4 96 97 118 117
		f 4 74 215 -95 -215
		mu 0 4 97 98 119 118
		f 4 75 216 -96 -216
		mu 0 4 98 99 120 119
		f 4 76 217 -97 -217
		mu 0 4 99 100 121 120
		f 4 77 218 -98 -218
		mu 0 4 100 101 122 121
		f 4 78 219 -99 -219
		mu 0 4 101 102 123 122
		f 4 79 200 -100 -220
		mu 0 4 102 103 124 123
		f 4 80 221 -101 -221
		mu 0 4 104 105 126 125
		f 4 81 222 -102 -222
		mu 0 4 105 106 127 126
		f 4 82 223 -103 -223
		mu 0 4 106 107 128 127
		f 4 83 224 -104 -224
		mu 0 4 107 108 129 128
		f 4 84 225 -105 -225
		mu 0 4 108 109 130 129
		f 4 85 226 -106 -226
		mu 0 4 109 110 131 130
		f 4 86 227 -107 -227
		mu 0 4 110 111 132 131
		f 4 87 228 -108 -228
		mu 0 4 111 112 133 132
		f 4 88 229 -109 -229
		mu 0 4 112 113 134 133
		f 4 89 230 -110 -230
		mu 0 4 113 114 135 134
		f 4 90 231 -111 -231
		mu 0 4 114 115 136 135
		f 4 91 232 -112 -232
		mu 0 4 115 116 137 136
		f 4 92 233 -113 -233
		mu 0 4 116 117 138 137
		f 4 93 234 -114 -234
		mu 0 4 117 118 139 138
		f 4 94 235 -115 -235
		mu 0 4 118 119 140 139
		f 4 95 236 -116 -236
		mu 0 4 119 120 141 140
		f 4 96 237 -117 -237
		mu 0 4 120 121 142 141
		f 4 97 238 -118 -238
		mu 0 4 121 122 143 142
		f 4 98 239 -119 -239
		mu 0 4 122 123 144 143
		f 4 99 220 -120 -240
		mu 0 4 123 124 145 144
		f 4 100 241 -121 -241
		mu 0 4 125 126 147 146
		f 4 101 242 -122 -242
		mu 0 4 126 127 148 147
		f 4 102 243 -123 -243
		mu 0 4 127 128 149 148
		f 4 103 244 -124 -244
		mu 0 4 128 129 150 149
		f 4 104 245 -125 -245
		mu 0 4 129 130 151 150
		f 4 105 246 -126 -246
		mu 0 4 130 131 152 151
		f 4 106 247 -127 -247
		mu 0 4 131 132 153 152
		f 4 107 248 -128 -248
		mu 0 4 132 133 154 153
		f 4 108 249 -129 -249
		mu 0 4 133 134 155 154
		f 4 109 250 -130 -250
		mu 0 4 134 135 156 155
		f 4 110 251 -131 -251
		mu 0 4 135 136 157 156
		f 4 111 252 -132 -252
		mu 0 4 136 137 158 157
		f 4 112 253 -133 -253
		mu 0 4 137 138 159 158
		f 4 113 254 -134 -254
		mu 0 4 138 139 160 159
		f 4 114 255 -135 -255
		mu 0 4 139 140 161 160
		f 4 115 256 -136 -256
		mu 0 4 140 141 162 161
		f 4 116 257 -137 -257
		mu 0 4 141 142 163 162
		f 4 117 258 -138 -258
		mu 0 4 142 143 164 163
		f 4 118 259 -139 -259
		mu 0 4 143 144 165 164
		f 4 119 240 -140 -260
		mu 0 4 144 145 166 165
		f 3 -1 -261 261
		mu 0 3 1 0 187
		f 3 -2 -262 262
		mu 0 3 2 1 187
		f 3 -3 -263 263
		mu 0 3 3 2 187
		f 3 -4 -264 264
		mu 0 3 4 3 187
		f 3 -5 -265 265
		mu 0 3 5 4 187
		f 3 -6 -266 266
		mu 0 3 6 5 187
		f 3 -7 -267 267
		mu 0 3 7 6 187
		f 3 -8 -268 268
		mu 0 3 8 7 187
		f 3 -9 -269 269
		mu 0 3 9 8 187
		f 3 -10 -270 270
		mu 0 3 10 9 187
		f 3 -11 -271 271
		mu 0 3 11 10 187
		f 3 -12 -272 272
		mu 0 3 12 11 187
		f 3 -13 -273 273
		mu 0 3 13 12 187
		f 3 -14 -274 274
		mu 0 3 14 13 187
		f 3 -15 -275 275
		mu 0 3 15 14 187
		f 3 -16 -276 276
		mu 0 3 16 15 187
		f 3 -17 -277 277
		mu 0 3 17 16 187
		f 3 -18 -278 278
		mu 0 3 18 17 187
		f 3 -19 -279 279
		mu 0 3 19 18 187
		f 3 -20 -280 260
		mu 0 3 0 19 187
		f 3 120 281 -281
		mu 0 3 185 184 188
		f 3 121 282 -282
		mu 0 3 184 183 188
		f 3 122 283 -283
		mu 0 3 183 182 188
		f 3 123 284 -284
		mu 0 3 182 181 188
		f 3 124 285 -285
		mu 0 3 181 180 188
		f 3 125 286 -286
		mu 0 3 180 179 188
		f 3 126 287 -287
		mu 0 3 179 178 188
		f 3 127 288 -288
		mu 0 3 178 177 188
		f 3 128 289 -289
		mu 0 3 177 176 188
		f 3 129 290 -290
		mu 0 3 176 175 188
		f 3 130 291 -291
		mu 0 3 175 174 188
		f 3 131 292 -292
		mu 0 3 174 173 188
		f 3 132 293 -293
		mu 0 3 173 172 188
		f 3 133 294 -294
		mu 0 3 172 171 188
		f 3 134 295 -295
		mu 0 3 171 170 188
		f 3 135 296 -296
		mu 0 3 170 169 188
		f 3 136 297 -297
		mu 0 3 169 168 188
		f 3 137 298 -298
		mu 0 3 168 167 188
		f 3 138 299 -299
		mu 0 3 167 186 188
		f 3 139 280 -300
		mu 0 3 186 185 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__pCylinderShape1Orig3" -p "|LivingRoom|Table|pasted__pCylinder3";
	rename -uid "8D64BF7A-4B8D-FAD2-99D0-E8ABB9AAA5E0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.375 0.38749999
		 0.375 0.39999998 0.375 0.41249996 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993
		 0.375 0.46249992 0.375 0.4749999 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987
		 0.375 0.52499986 0.375 0.53749985 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981
		 0.375 0.5874998 0.375 0.59999979 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.4375
		 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994
		 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988
		 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982
		 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977 0.4375 0.62499976
		 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987
		 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.5625 0.38749999 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994 0.625 0.44999993
		 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988 0.625 0.51249987
		 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982 0.625 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.62499976 0.625 0.375 0.6875
		 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393
		 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107
		 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107
		 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146
		 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 142 ".vt[0:141]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 -0.66666663 -0.30901718
		 0.80901754 -0.66666663 -0.5877856 0.5877856 -0.66666663 -0.80901748 0.30901715 -0.66666663 -0.95105702
		 0 -0.66666663 -1.000000476837 -0.30901715 -0.66666663 -0.95105696 -0.58778548 -0.66666663 -0.8090173
		 -0.80901724 -0.66666663 -0.58778542 -0.95105678 -0.66666663 -0.30901706 -1.000000238419 -0.66666663 0
		 -0.95105678 -0.66666663 0.30901706 -0.80901718 -0.66666663 0.58778536 -0.58778536 -0.66666663 0.80901712
		 -0.30901706 -0.66666663 0.95105666 -2.9802322e-08 -0.66666663 1.000000119209 0.30901697 -0.66666663 0.9510566
		 0.58778524 -0.66666663 0.80901706 0.809017 -0.66666663 0.5877853 0.95105654 -0.66666663 0.309017
		 1 -0.66666663 0 0.95105714 -0.33333328 -0.30901718 0.80901754 -0.33333328 -0.5877856
		 0.5877856 -0.33333328 -0.80901748 0.30901715 -0.33333328 -0.95105702 0 -0.33333328 -1.000000476837
		 -0.30901715 -0.33333328 -0.95105696 -0.58778548 -0.33333328 -0.8090173 -0.80901724 -0.33333328 -0.58778542
		 -0.95105678 -0.33333328 -0.30901706 -1.000000238419 -0.33333328 0 -0.95105678 -0.33333328 0.30901706
		 -0.80901718 -0.33333328 0.58778536 -0.58778536 -0.33333328 0.80901712 -0.30901706 -0.33333328 0.95105666
		 -2.9802322e-08 -0.33333328 1.000000119209 0.30901697 -0.33333328 0.9510566 0.58778524 -0.33333328 0.80901706
		 0.809017 -0.33333328 0.5877853 0.95105654 -0.33333328 0.309017 1 -0.33333328 0 0.95105714 5.9604645e-08 -0.30901718
		 0.80901754 5.9604645e-08 -0.5877856 0.5877856 5.9604645e-08 -0.80901748 0.30901715 5.9604645e-08 -0.95105702
		 0 5.9604645e-08 -1.000000476837 -0.30901715 5.9604645e-08 -0.95105696 -0.58778548 5.9604645e-08 -0.8090173
		 -0.80901724 5.9604645e-08 -0.58778542 -0.95105678 5.9604645e-08 -0.30901706 -1.000000238419 5.9604645e-08 0
		 -0.95105678 5.9604645e-08 0.30901706 -0.80901718 5.9604645e-08 0.58778536 -0.58778536 5.9604645e-08 0.80901712
		 -0.30901706 5.9604645e-08 0.95105666 -2.9802322e-08 5.9604645e-08 1.000000119209
		 0.30901697 5.9604645e-08 0.9510566 0.58778524 5.9604645e-08 0.80901706 0.809017 5.9604645e-08 0.5877853
		 0.95105654 5.9604645e-08 0.309017 1 5.9604645e-08 0 0.95105714 0.3333334 -0.30901718
		 0.80901754 0.3333334 -0.5877856 0.5877856 0.3333334 -0.80901748 0.30901715 0.3333334 -0.95105702
		 0 0.3333334 -1.000000476837 -0.30901715 0.3333334 -0.95105696 -0.58778548 0.3333334 -0.8090173
		 -0.80901724 0.3333334 -0.58778542 -0.95105678 0.3333334 -0.30901706 -1.000000238419 0.3333334 0
		 -0.95105678 0.3333334 0.30901706 -0.80901718 0.3333334 0.58778536 -0.58778536 0.3333334 0.80901712
		 -0.30901706 0.3333334 0.95105666 -2.9802322e-08 0.3333334 1.000000119209 0.30901697 0.3333334 0.9510566
		 0.58778524 0.3333334 0.80901706 0.809017 0.3333334 0.5877853 0.95105654 0.3333334 0.309017
		 1 0.3333334 0 0.95105714 0.66666675 -0.30901718 0.80901754 0.66666675 -0.5877856
		 0.5877856 0.66666675 -0.80901748 0.30901715 0.66666675 -0.95105702 0 0.66666675 -1.000000476837
		 -0.30901715 0.66666675 -0.95105696 -0.58778548 0.66666675 -0.8090173 -0.80901724 0.66666675 -0.58778542
		 -0.95105678 0.66666675 -0.30901706 -1.000000238419 0.66666675 0 -0.95105678 0.66666675 0.30901706
		 -0.80901718 0.66666675 0.58778536 -0.58778536 0.66666675 0.80901712 -0.30901706 0.66666675 0.95105666
		 -2.9802322e-08 0.66666675 1.000000119209 0.30901697 0.66666675 0.9510566 0.58778524 0.66666675 0.80901706
		 0.809017 0.66666675 0.5877853 0.95105654 0.66666675 0.309017 1 0.66666675 0 0.95105714 1 -0.30901718
		 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837
		 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706
		 -1.000000238419 1 0 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712
		 -0.30901706 1 0.95105666 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706
		 0.809017 1 0.5877853 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:299]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 140 0 1 140 1 1 140 2 1
		 140 3 1 140 4 1 140 5 1 140 6 1 140 7 1 140 8 1 140 9 1 140 10 1 140 11 1 140 12 1
		 140 13 1 140 14 1 140 15 1 140 16 1 140 17 1 140 18 1 140 19 1 120 141 1 121 141 1
		 122 141 1 123 141 1 124 141 1 125 141 1 126 141 1 127 141 1 128 141 1 129 141 1 130 141 1
		 131 141 1 132 141 1 133 141 1 134 141 1 135 141 1 136 141 1 137 141 1 138 141 1 139 141 1;
	setAttr -s 160 -ch 600 ".fc[0:159]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 20 21 42 41
		f 4 1 142 -22 -142
		mu 0 4 21 22 43 42
		f 4 2 143 -23 -143
		mu 0 4 22 23 44 43
		f 4 3 144 -24 -144
		mu 0 4 23 24 45 44
		f 4 4 145 -25 -145
		mu 0 4 24 25 46 45
		f 4 5 146 -26 -146
		mu 0 4 25 26 47 46
		f 4 6 147 -27 -147
		mu 0 4 26 27 48 47
		f 4 7 148 -28 -148
		mu 0 4 27 28 49 48
		f 4 8 149 -29 -149
		mu 0 4 28 29 50 49
		f 4 9 150 -30 -150
		mu 0 4 29 30 51 50
		f 4 10 151 -31 -151
		mu 0 4 30 31 52 51
		f 4 11 152 -32 -152
		mu 0 4 31 32 53 52
		f 4 12 153 -33 -153
		mu 0 4 32 33 54 53
		f 4 13 154 -34 -154
		mu 0 4 33 34 55 54
		f 4 14 155 -35 -155
		mu 0 4 34 35 56 55
		f 4 15 156 -36 -156
		mu 0 4 35 36 57 56
		f 4 16 157 -37 -157
		mu 0 4 36 37 58 57
		f 4 17 158 -38 -158
		mu 0 4 37 38 59 58
		f 4 18 159 -39 -159
		mu 0 4 38 39 60 59
		f 4 19 140 -40 -160
		mu 0 4 39 40 61 60
		f 4 20 161 -41 -161
		mu 0 4 41 42 63 62
		f 4 21 162 -42 -162
		mu 0 4 42 43 64 63
		f 4 22 163 -43 -163
		mu 0 4 43 44 65 64
		f 4 23 164 -44 -164
		mu 0 4 44 45 66 65
		f 4 24 165 -45 -165
		mu 0 4 45 46 67 66
		f 4 25 166 -46 -166
		mu 0 4 46 47 68 67
		f 4 26 167 -47 -167
		mu 0 4 47 48 69 68
		f 4 27 168 -48 -168
		mu 0 4 48 49 70 69
		f 4 28 169 -49 -169
		mu 0 4 49 50 71 70
		f 4 29 170 -50 -170
		mu 0 4 50 51 72 71
		f 4 30 171 -51 -171
		mu 0 4 51 52 73 72
		f 4 31 172 -52 -172
		mu 0 4 52 53 74 73
		f 4 32 173 -53 -173
		mu 0 4 53 54 75 74
		f 4 33 174 -54 -174
		mu 0 4 54 55 76 75
		f 4 34 175 -55 -175
		mu 0 4 55 56 77 76
		f 4 35 176 -56 -176
		mu 0 4 56 57 78 77
		f 4 36 177 -57 -177
		mu 0 4 57 58 79 78
		f 4 37 178 -58 -178
		mu 0 4 58 59 80 79
		f 4 38 179 -59 -179
		mu 0 4 59 60 81 80
		f 4 39 160 -60 -180
		mu 0 4 60 61 82 81
		f 4 40 181 -61 -181
		mu 0 4 62 63 84 83
		f 4 41 182 -62 -182
		mu 0 4 63 64 85 84
		f 4 42 183 -63 -183
		mu 0 4 64 65 86 85
		f 4 43 184 -64 -184
		mu 0 4 65 66 87 86
		f 4 44 185 -65 -185
		mu 0 4 66 67 88 87
		f 4 45 186 -66 -186
		mu 0 4 67 68 89 88
		f 4 46 187 -67 -187
		mu 0 4 68 69 90 89
		f 4 47 188 -68 -188
		mu 0 4 69 70 91 90
		f 4 48 189 -69 -189
		mu 0 4 70 71 92 91
		f 4 49 190 -70 -190
		mu 0 4 71 72 93 92
		f 4 50 191 -71 -191
		mu 0 4 72 73 94 93
		f 4 51 192 -72 -192
		mu 0 4 73 74 95 94
		f 4 52 193 -73 -193
		mu 0 4 74 75 96 95
		f 4 53 194 -74 -194
		mu 0 4 75 76 97 96
		f 4 54 195 -75 -195
		mu 0 4 76 77 98 97
		f 4 55 196 -76 -196
		mu 0 4 77 78 99 98
		f 4 56 197 -77 -197
		mu 0 4 78 79 100 99
		f 4 57 198 -78 -198
		mu 0 4 79 80 101 100
		f 4 58 199 -79 -199
		mu 0 4 80 81 102 101
		f 4 59 180 -80 -200
		mu 0 4 81 82 103 102
		f 4 60 201 -81 -201
		mu 0 4 83 84 105 104
		f 4 61 202 -82 -202
		mu 0 4 84 85 106 105
		f 4 62 203 -83 -203
		mu 0 4 85 86 107 106
		f 4 63 204 -84 -204
		mu 0 4 86 87 108 107
		f 4 64 205 -85 -205
		mu 0 4 87 88 109 108
		f 4 65 206 -86 -206
		mu 0 4 88 89 110 109
		f 4 66 207 -87 -207
		mu 0 4 89 90 111 110
		f 4 67 208 -88 -208
		mu 0 4 90 91 112 111
		f 4 68 209 -89 -209
		mu 0 4 91 92 113 112
		f 4 69 210 -90 -210
		mu 0 4 92 93 114 113
		f 4 70 211 -91 -211
		mu 0 4 93 94 115 114
		f 4 71 212 -92 -212
		mu 0 4 94 95 116 115
		f 4 72 213 -93 -213
		mu 0 4 95 96 117 116
		f 4 73 214 -94 -214
		mu 0 4 96 97 118 117
		f 4 74 215 -95 -215
		mu 0 4 97 98 119 118
		f 4 75 216 -96 -216
		mu 0 4 98 99 120 119
		f 4 76 217 -97 -217
		mu 0 4 99 100 121 120
		f 4 77 218 -98 -218
		mu 0 4 100 101 122 121
		f 4 78 219 -99 -219
		mu 0 4 101 102 123 122
		f 4 79 200 -100 -220
		mu 0 4 102 103 124 123
		f 4 80 221 -101 -221
		mu 0 4 104 105 126 125
		f 4 81 222 -102 -222
		mu 0 4 105 106 127 126
		f 4 82 223 -103 -223
		mu 0 4 106 107 128 127
		f 4 83 224 -104 -224
		mu 0 4 107 108 129 128
		f 4 84 225 -105 -225
		mu 0 4 108 109 130 129
		f 4 85 226 -106 -226
		mu 0 4 109 110 131 130
		f 4 86 227 -107 -227
		mu 0 4 110 111 132 131
		f 4 87 228 -108 -228
		mu 0 4 111 112 133 132
		f 4 88 229 -109 -229
		mu 0 4 112 113 134 133
		f 4 89 230 -110 -230
		mu 0 4 113 114 135 134
		f 4 90 231 -111 -231
		mu 0 4 114 115 136 135
		f 4 91 232 -112 -232
		mu 0 4 115 116 137 136
		f 4 92 233 -113 -233
		mu 0 4 116 117 138 137
		f 4 93 234 -114 -234
		mu 0 4 117 118 139 138
		f 4 94 235 -115 -235
		mu 0 4 118 119 140 139
		f 4 95 236 -116 -236
		mu 0 4 119 120 141 140
		f 4 96 237 -117 -237
		mu 0 4 120 121 142 141
		f 4 97 238 -118 -238
		mu 0 4 121 122 143 142
		f 4 98 239 -119 -239
		mu 0 4 122 123 144 143
		f 4 99 220 -120 -240
		mu 0 4 123 124 145 144
		f 4 100 241 -121 -241
		mu 0 4 125 126 147 146
		f 4 101 242 -122 -242
		mu 0 4 126 127 148 147
		f 4 102 243 -123 -243
		mu 0 4 127 128 149 148
		f 4 103 244 -124 -244
		mu 0 4 128 129 150 149
		f 4 104 245 -125 -245
		mu 0 4 129 130 151 150
		f 4 105 246 -126 -246
		mu 0 4 130 131 152 151
		f 4 106 247 -127 -247
		mu 0 4 131 132 153 152
		f 4 107 248 -128 -248
		mu 0 4 132 133 154 153
		f 4 108 249 -129 -249
		mu 0 4 133 134 155 154
		f 4 109 250 -130 -250
		mu 0 4 134 135 156 155
		f 4 110 251 -131 -251
		mu 0 4 135 136 157 156
		f 4 111 252 -132 -252
		mu 0 4 136 137 158 157
		f 4 112 253 -133 -253
		mu 0 4 137 138 159 158
		f 4 113 254 -134 -254
		mu 0 4 138 139 160 159
		f 4 114 255 -135 -255
		mu 0 4 139 140 161 160
		f 4 115 256 -136 -256
		mu 0 4 140 141 162 161
		f 4 116 257 -137 -257
		mu 0 4 141 142 163 162
		f 4 117 258 -138 -258
		mu 0 4 142 143 164 163
		f 4 118 259 -139 -259
		mu 0 4 143 144 165 164
		f 4 119 240 -140 -260
		mu 0 4 144 145 166 165
		f 3 -1 -261 261
		mu 0 3 1 0 187
		f 3 -2 -262 262
		mu 0 3 2 1 187
		f 3 -3 -263 263
		mu 0 3 3 2 187
		f 3 -4 -264 264
		mu 0 3 4 3 187
		f 3 -5 -265 265
		mu 0 3 5 4 187
		f 3 -6 -266 266
		mu 0 3 6 5 187
		f 3 -7 -267 267
		mu 0 3 7 6 187
		f 3 -8 -268 268
		mu 0 3 8 7 187
		f 3 -9 -269 269
		mu 0 3 9 8 187
		f 3 -10 -270 270
		mu 0 3 10 9 187
		f 3 -11 -271 271
		mu 0 3 11 10 187
		f 3 -12 -272 272
		mu 0 3 12 11 187
		f 3 -13 -273 273
		mu 0 3 13 12 187
		f 3 -14 -274 274
		mu 0 3 14 13 187
		f 3 -15 -275 275
		mu 0 3 15 14 187
		f 3 -16 -276 276
		mu 0 3 16 15 187
		f 3 -17 -277 277
		mu 0 3 17 16 187
		f 3 -18 -278 278
		mu 0 3 18 17 187
		f 3 -19 -279 279
		mu 0 3 19 18 187
		f 3 -20 -280 260
		mu 0 3 0 19 187
		f 3 120 281 -281
		mu 0 3 185 184 188
		f 3 121 282 -282
		mu 0 3 184 183 188
		f 3 122 283 -283
		mu 0 3 183 182 188
		f 3 123 284 -284
		mu 0 3 182 181 188
		f 3 124 285 -285
		mu 0 3 181 180 188
		f 3 125 286 -286
		mu 0 3 180 179 188
		f 3 126 287 -287
		mu 0 3 179 178 188
		f 3 127 288 -288
		mu 0 3 178 177 188
		f 3 128 289 -289
		mu 0 3 177 176 188
		f 3 129 290 -290
		mu 0 3 176 175 188
		f 3 130 291 -291
		mu 0 3 175 174 188
		f 3 131 292 -292
		mu 0 3 174 173 188
		f 3 132 293 -293
		mu 0 3 173 172 188
		f 3 133 294 -294
		mu 0 3 172 171 188
		f 3 134 295 -295
		mu 0 3 171 170 188
		f 3 135 296 -296
		mu 0 3 170 169 188
		f 3 136 297 -297
		mu 0 3 169 168 188
		f 3 137 298 -298
		mu 0 3 168 167 188
		f 3 138 299 -299
		mu 0 3 167 186 188
		f 3 139 280 -300
		mu 0 3 186 185 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCylinder4" -p "Table";
	rename -uid "F1815C69-4423-7CCC-8835-99BCA012A542";
	setAttr ".t" -type "double3" -0.87381930675911268 82.635288587841131 0.0096347295409289768 ;
	setAttr ".s" -type "double3" 0.068106430280044233 0.35608479072773908 0.068106430280044233 ;
createNode mesh -n "pasted__pCylinderShape4" -p "pasted__pCylinder4";
	rename -uid "15177C75-44F6-A18F-A7F0-22860F05A6BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[120:139]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[140]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:139]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[120:139]" "vtx[141]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[120:139]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:119]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[140:159]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[120:139]";
	setAttr ".pv" -type "double2" 0.49999988079071045 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.375 0.38749999
		 0.375 0.39999998 0.375 0.41249996 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993
		 0.375 0.46249992 0.375 0.4749999 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987
		 0.375 0.52499986 0.375 0.53749985 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981
		 0.375 0.5874998 0.375 0.59999979 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.4375
		 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994
		 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988
		 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982
		 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977 0.4375 0.62499976
		 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987
		 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.5625 0.38749999 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994 0.625 0.44999993
		 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988 0.625 0.51249987
		 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982 0.625 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.62499976 0.625 0.375 0.6875
		 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393
		 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107
		 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107
		 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146
		 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt";
	setAttr ".pt[20]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[21]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[22]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[23]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[24]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[25]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[26]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[27]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[28]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[29]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[30]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[31]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[32]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[33]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[34]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[35]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[36]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[37]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[38]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[39]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[60]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[61]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[62]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[63]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[64]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[65]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[66]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[67]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[68]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[69]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[70]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[71]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[72]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[73]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[74]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[75]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[76]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[77]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[78]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[79]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[100]" -type "float3" -0.39743519 -5.9604645e-08 0.12913437 ;
	setAttr ".pt[101]" -type "float3" -0.33807847 -5.9604645e-08 0.24562821 ;
	setAttr ".pt[102]" -type "float3" -0.24562845 -5.9604645e-08 0.33807826 ;
	setAttr ".pt[103]" -type "float3" -0.12913451 -5.9604645e-08 0.39743483 ;
	setAttr ".pt[104]" -type "float3" -4.9816084e-08 -5.9604645e-08 0.41788787 ;
	setAttr ".pt[105]" -type "float3" 0.1291344 -5.9604645e-08 0.39743477 ;
	setAttr ".pt[106]" -type "float3" 0.24562816 -5.9604645e-08 0.3380782 ;
	setAttr ".pt[107]" -type "float3" 0.3380782 -5.9604645e-08 0.24562816 ;
	setAttr ".pt[108]" -type "float3" 0.39743471 -5.9604645e-08 0.12913433 ;
	setAttr ".pt[109]" -type "float3" 0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr ".pt[110]" -type "float3" 0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[111]" -type "float3" 0.33807814 -5.9604645e-08 -0.24562833 ;
	setAttr ".pt[112]" -type "float3" 0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[113]" -type "float3" 0.12913436 -5.9604645e-08 -0.39743483 ;
	setAttr ".pt[114]" -type "float3" -3.736206e-08 -5.9604645e-08 -0.41788787 ;
	setAttr ".pt[115]" -type "float3" -0.12913443 -5.9604645e-08 -0.39743477 ;
	setAttr ".pt[116]" -type "float3" -0.24562816 -5.9604645e-08 -0.33807826 ;
	setAttr ".pt[117]" -type "float3" -0.3380782 -5.9604645e-08 -0.24562827 ;
	setAttr ".pt[118]" -type "float3" -0.39743471 -5.9604645e-08 -0.12913448 ;
	setAttr ".pt[119]" -type "float3" -0.41788772 -5.9604645e-08 -7.472412e-08 ;
	setAttr -s 142 ".vt[0:141]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 -0.66666663 -0.30901718
		 0.80901754 -0.66666663 -0.5877856 0.5877856 -0.66666663 -0.80901748 0.30901715 -0.66666663 -0.95105702
		 0 -0.66666663 -1.000000476837 -0.30901715 -0.66666663 -0.95105696 -0.58778548 -0.66666663 -0.8090173
		 -0.80901724 -0.66666663 -0.58778542 -0.95105678 -0.66666663 -0.30901706 -1.000000238419 -0.66666663 0
		 -0.95105678 -0.66666663 0.30901706 -0.80901718 -0.66666663 0.58778536 -0.58778536 -0.66666663 0.80901712
		 -0.30901706 -0.66666663 0.95105666 -2.9802322e-08 -0.66666663 1.000000119209 0.30901697 -0.66666663 0.9510566
		 0.58778524 -0.66666663 0.80901706 0.809017 -0.66666663 0.5877853 0.95105654 -0.66666663 0.309017
		 1 -0.66666663 0 0.95105714 -0.33333328 -0.30901718 0.80901754 -0.33333328 -0.5877856
		 0.5877856 -0.33333328 -0.80901748 0.30901715 -0.33333328 -0.95105702 0 -0.33333328 -1.000000476837
		 -0.30901715 -0.33333328 -0.95105696 -0.58778548 -0.33333328 -0.8090173 -0.80901724 -0.33333328 -0.58778542
		 -0.95105678 -0.33333328 -0.30901706 -1.000000238419 -0.33333328 0 -0.95105678 -0.33333328 0.30901706
		 -0.80901718 -0.33333328 0.58778536 -0.58778536 -0.33333328 0.80901712 -0.30901706 -0.33333328 0.95105666
		 -2.9802322e-08 -0.33333328 1.000000119209 0.30901697 -0.33333328 0.9510566 0.58778524 -0.33333328 0.80901706
		 0.809017 -0.33333328 0.5877853 0.95105654 -0.33333328 0.309017 1 -0.33333328 0 0.95105714 5.9604645e-08 -0.30901718
		 0.80901754 5.9604645e-08 -0.5877856 0.5877856 5.9604645e-08 -0.80901748 0.30901715 5.9604645e-08 -0.95105702
		 0 5.9604645e-08 -1.000000476837 -0.30901715 5.9604645e-08 -0.95105696 -0.58778548 5.9604645e-08 -0.8090173
		 -0.80901724 5.9604645e-08 -0.58778542 -0.95105678 5.9604645e-08 -0.30901706 -1.000000238419 5.9604645e-08 0
		 -0.95105678 5.9604645e-08 0.30901706 -0.80901718 5.9604645e-08 0.58778536 -0.58778536 5.9604645e-08 0.80901712
		 -0.30901706 5.9604645e-08 0.95105666 -2.9802322e-08 5.9604645e-08 1.000000119209
		 0.30901697 5.9604645e-08 0.9510566 0.58778524 5.9604645e-08 0.80901706 0.809017 5.9604645e-08 0.5877853
		 0.95105654 5.9604645e-08 0.309017 1 5.9604645e-08 0 0.95105714 0.3333334 -0.30901718
		 0.80901754 0.3333334 -0.5877856 0.5877856 0.3333334 -0.80901748 0.30901715 0.3333334 -0.95105702
		 0 0.3333334 -1.000000476837 -0.30901715 0.3333334 -0.95105696 -0.58778548 0.3333334 -0.8090173
		 -0.80901724 0.3333334 -0.58778542 -0.95105678 0.3333334 -0.30901706 -1.000000238419 0.3333334 0
		 -0.95105678 0.3333334 0.30901706 -0.80901718 0.3333334 0.58778536 -0.58778536 0.3333334 0.80901712
		 -0.30901706 0.3333334 0.95105666 -2.9802322e-08 0.3333334 1.000000119209 0.30901697 0.3333334 0.9510566
		 0.58778524 0.3333334 0.80901706 0.809017 0.3333334 0.5877853 0.95105654 0.3333334 0.309017
		 1 0.3333334 0 0.95105714 0.66666675 -0.30901718 0.80901754 0.66666675 -0.5877856
		 0.5877856 0.66666675 -0.80901748 0.30901715 0.66666675 -0.95105702 0 0.66666675 -1.000000476837
		 -0.30901715 0.66666675 -0.95105696 -0.58778548 0.66666675 -0.8090173 -0.80901724 0.66666675 -0.58778542
		 -0.95105678 0.66666675 -0.30901706 -1.000000238419 0.66666675 0 -0.95105678 0.66666675 0.30901706
		 -0.80901718 0.66666675 0.58778536 -0.58778536 0.66666675 0.80901712 -0.30901706 0.66666675 0.95105666
		 -2.9802322e-08 0.66666675 1.000000119209 0.30901697 0.66666675 0.9510566 0.58778524 0.66666675 0.80901706
		 0.809017 0.66666675 0.5877853 0.95105654 0.66666675 0.309017 1 0.66666675 0 0.95105714 1 -0.30901718
		 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837
		 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706
		 -1.000000238419 1 0 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712
		 -0.30901706 1 0.95105666 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706
		 0.809017 1 0.5877853 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:299]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 140 0 1 140 1 1 140 2 1
		 140 3 1 140 4 1 140 5 1 140 6 1 140 7 1 140 8 1 140 9 1 140 10 1 140 11 1 140 12 1
		 140 13 1 140 14 1 140 15 1 140 16 1 140 17 1 140 18 1 140 19 1 120 141 1 121 141 1
		 122 141 1 123 141 1 124 141 1 125 141 1 126 141 1 127 141 1 128 141 1 129 141 1 130 141 1
		 131 141 1 132 141 1 133 141 1 134 141 1 135 141 1 136 141 1 137 141 1 138 141 1 139 141 1;
	setAttr -s 160 -ch 600 ".fc[0:159]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 20 21 42 41
		f 4 1 142 -22 -142
		mu 0 4 21 22 43 42
		f 4 2 143 -23 -143
		mu 0 4 22 23 44 43
		f 4 3 144 -24 -144
		mu 0 4 23 24 45 44
		f 4 4 145 -25 -145
		mu 0 4 24 25 46 45
		f 4 5 146 -26 -146
		mu 0 4 25 26 47 46
		f 4 6 147 -27 -147
		mu 0 4 26 27 48 47
		f 4 7 148 -28 -148
		mu 0 4 27 28 49 48
		f 4 8 149 -29 -149
		mu 0 4 28 29 50 49
		f 4 9 150 -30 -150
		mu 0 4 29 30 51 50
		f 4 10 151 -31 -151
		mu 0 4 30 31 52 51
		f 4 11 152 -32 -152
		mu 0 4 31 32 53 52
		f 4 12 153 -33 -153
		mu 0 4 32 33 54 53
		f 4 13 154 -34 -154
		mu 0 4 33 34 55 54
		f 4 14 155 -35 -155
		mu 0 4 34 35 56 55
		f 4 15 156 -36 -156
		mu 0 4 35 36 57 56
		f 4 16 157 -37 -157
		mu 0 4 36 37 58 57
		f 4 17 158 -38 -158
		mu 0 4 37 38 59 58
		f 4 18 159 -39 -159
		mu 0 4 38 39 60 59
		f 4 19 140 -40 -160
		mu 0 4 39 40 61 60
		f 4 20 161 -41 -161
		mu 0 4 41 42 63 62
		f 4 21 162 -42 -162
		mu 0 4 42 43 64 63
		f 4 22 163 -43 -163
		mu 0 4 43 44 65 64
		f 4 23 164 -44 -164
		mu 0 4 44 45 66 65
		f 4 24 165 -45 -165
		mu 0 4 45 46 67 66
		f 4 25 166 -46 -166
		mu 0 4 46 47 68 67
		f 4 26 167 -47 -167
		mu 0 4 47 48 69 68
		f 4 27 168 -48 -168
		mu 0 4 48 49 70 69
		f 4 28 169 -49 -169
		mu 0 4 49 50 71 70
		f 4 29 170 -50 -170
		mu 0 4 50 51 72 71
		f 4 30 171 -51 -171
		mu 0 4 51 52 73 72
		f 4 31 172 -52 -172
		mu 0 4 52 53 74 73
		f 4 32 173 -53 -173
		mu 0 4 53 54 75 74
		f 4 33 174 -54 -174
		mu 0 4 54 55 76 75
		f 4 34 175 -55 -175
		mu 0 4 55 56 77 76
		f 4 35 176 -56 -176
		mu 0 4 56 57 78 77
		f 4 36 177 -57 -177
		mu 0 4 57 58 79 78
		f 4 37 178 -58 -178
		mu 0 4 58 59 80 79
		f 4 38 179 -59 -179
		mu 0 4 59 60 81 80
		f 4 39 160 -60 -180
		mu 0 4 60 61 82 81
		f 4 40 181 -61 -181
		mu 0 4 62 63 84 83
		f 4 41 182 -62 -182
		mu 0 4 63 64 85 84
		f 4 42 183 -63 -183
		mu 0 4 64 65 86 85
		f 4 43 184 -64 -184
		mu 0 4 65 66 87 86
		f 4 44 185 -65 -185
		mu 0 4 66 67 88 87
		f 4 45 186 -66 -186
		mu 0 4 67 68 89 88
		f 4 46 187 -67 -187
		mu 0 4 68 69 90 89
		f 4 47 188 -68 -188
		mu 0 4 69 70 91 90
		f 4 48 189 -69 -189
		mu 0 4 70 71 92 91
		f 4 49 190 -70 -190
		mu 0 4 71 72 93 92
		f 4 50 191 -71 -191
		mu 0 4 72 73 94 93
		f 4 51 192 -72 -192
		mu 0 4 73 74 95 94
		f 4 52 193 -73 -193
		mu 0 4 74 75 96 95
		f 4 53 194 -74 -194
		mu 0 4 75 76 97 96
		f 4 54 195 -75 -195
		mu 0 4 76 77 98 97
		f 4 55 196 -76 -196
		mu 0 4 77 78 99 98
		f 4 56 197 -77 -197
		mu 0 4 78 79 100 99
		f 4 57 198 -78 -198
		mu 0 4 79 80 101 100
		f 4 58 199 -79 -199
		mu 0 4 80 81 102 101
		f 4 59 180 -80 -200
		mu 0 4 81 82 103 102
		f 4 60 201 -81 -201
		mu 0 4 83 84 105 104
		f 4 61 202 -82 -202
		mu 0 4 84 85 106 105
		f 4 62 203 -83 -203
		mu 0 4 85 86 107 106
		f 4 63 204 -84 -204
		mu 0 4 86 87 108 107
		f 4 64 205 -85 -205
		mu 0 4 87 88 109 108
		f 4 65 206 -86 -206
		mu 0 4 88 89 110 109
		f 4 66 207 -87 -207
		mu 0 4 89 90 111 110
		f 4 67 208 -88 -208
		mu 0 4 90 91 112 111
		f 4 68 209 -89 -209
		mu 0 4 91 92 113 112
		f 4 69 210 -90 -210
		mu 0 4 92 93 114 113
		f 4 70 211 -91 -211
		mu 0 4 93 94 115 114
		f 4 71 212 -92 -212
		mu 0 4 94 95 116 115
		f 4 72 213 -93 -213
		mu 0 4 95 96 117 116
		f 4 73 214 -94 -214
		mu 0 4 96 97 118 117
		f 4 74 215 -95 -215
		mu 0 4 97 98 119 118
		f 4 75 216 -96 -216
		mu 0 4 98 99 120 119
		f 4 76 217 -97 -217
		mu 0 4 99 100 121 120
		f 4 77 218 -98 -218
		mu 0 4 100 101 122 121
		f 4 78 219 -99 -219
		mu 0 4 101 102 123 122
		f 4 79 200 -100 -220
		mu 0 4 102 103 124 123
		f 4 80 221 -101 -221
		mu 0 4 104 105 126 125
		f 4 81 222 -102 -222
		mu 0 4 105 106 127 126
		f 4 82 223 -103 -223
		mu 0 4 106 107 128 127
		f 4 83 224 -104 -224
		mu 0 4 107 108 129 128
		f 4 84 225 -105 -225
		mu 0 4 108 109 130 129
		f 4 85 226 -106 -226
		mu 0 4 109 110 131 130
		f 4 86 227 -107 -227
		mu 0 4 110 111 132 131
		f 4 87 228 -108 -228
		mu 0 4 111 112 133 132
		f 4 88 229 -109 -229
		mu 0 4 112 113 134 133
		f 4 89 230 -110 -230
		mu 0 4 113 114 135 134
		f 4 90 231 -111 -231
		mu 0 4 114 115 136 135
		f 4 91 232 -112 -232
		mu 0 4 115 116 137 136
		f 4 92 233 -113 -233
		mu 0 4 116 117 138 137
		f 4 93 234 -114 -234
		mu 0 4 117 118 139 138
		f 4 94 235 -115 -235
		mu 0 4 118 119 140 139
		f 4 95 236 -116 -236
		mu 0 4 119 120 141 140
		f 4 96 237 -117 -237
		mu 0 4 120 121 142 141
		f 4 97 238 -118 -238
		mu 0 4 121 122 143 142
		f 4 98 239 -119 -239
		mu 0 4 122 123 144 143
		f 4 99 220 -120 -240
		mu 0 4 123 124 145 144
		f 4 100 241 -121 -241
		mu 0 4 125 126 147 146
		f 4 101 242 -122 -242
		mu 0 4 126 127 148 147
		f 4 102 243 -123 -243
		mu 0 4 127 128 149 148
		f 4 103 244 -124 -244
		mu 0 4 128 129 150 149
		f 4 104 245 -125 -245
		mu 0 4 129 130 151 150
		f 4 105 246 -126 -246
		mu 0 4 130 131 152 151
		f 4 106 247 -127 -247
		mu 0 4 131 132 153 152
		f 4 107 248 -128 -248
		mu 0 4 132 133 154 153
		f 4 108 249 -129 -249
		mu 0 4 133 134 155 154
		f 4 109 250 -130 -250
		mu 0 4 134 135 156 155
		f 4 110 251 -131 -251
		mu 0 4 135 136 157 156
		f 4 111 252 -132 -252
		mu 0 4 136 137 158 157
		f 4 112 253 -133 -253
		mu 0 4 137 138 159 158
		f 4 113 254 -134 -254
		mu 0 4 138 139 160 159
		f 4 114 255 -135 -255
		mu 0 4 139 140 161 160
		f 4 115 256 -136 -256
		mu 0 4 140 141 162 161
		f 4 116 257 -137 -257
		mu 0 4 141 142 163 162
		f 4 117 258 -138 -258
		mu 0 4 142 143 164 163
		f 4 118 259 -139 -259
		mu 0 4 143 144 165 164
		f 4 119 240 -140 -260
		mu 0 4 144 145 166 165
		f 3 -1 -261 261
		mu 0 3 1 0 187
		f 3 -2 -262 262
		mu 0 3 2 1 187
		f 3 -3 -263 263
		mu 0 3 3 2 187
		f 3 -4 -264 264
		mu 0 3 4 3 187
		f 3 -5 -265 265
		mu 0 3 5 4 187
		f 3 -6 -266 266
		mu 0 3 6 5 187
		f 3 -7 -267 267
		mu 0 3 7 6 187
		f 3 -8 -268 268
		mu 0 3 8 7 187
		f 3 -9 -269 269
		mu 0 3 9 8 187
		f 3 -10 -270 270
		mu 0 3 10 9 187
		f 3 -11 -271 271
		mu 0 3 11 10 187
		f 3 -12 -272 272
		mu 0 3 12 11 187
		f 3 -13 -273 273
		mu 0 3 13 12 187
		f 3 -14 -274 274
		mu 0 3 14 13 187
		f 3 -15 -275 275
		mu 0 3 15 14 187
		f 3 -16 -276 276
		mu 0 3 16 15 187
		f 3 -17 -277 277
		mu 0 3 17 16 187
		f 3 -18 -278 278
		mu 0 3 18 17 187
		f 3 -19 -279 279
		mu 0 3 19 18 187
		f 3 -20 -280 260
		mu 0 3 0 19 187
		f 3 120 281 -281
		mu 0 3 185 184 188
		f 3 121 282 -282
		mu 0 3 184 183 188
		f 3 122 283 -283
		mu 0 3 183 182 188
		f 3 123 284 -284
		mu 0 3 182 181 188
		f 3 124 285 -285
		mu 0 3 181 180 188
		f 3 125 286 -286
		mu 0 3 180 179 188
		f 3 126 287 -287
		mu 0 3 179 178 188
		f 3 127 288 -288
		mu 0 3 178 177 188
		f 3 128 289 -289
		mu 0 3 177 176 188
		f 3 129 290 -290
		mu 0 3 176 175 188
		f 3 130 291 -291
		mu 0 3 175 174 188
		f 3 131 292 -292
		mu 0 3 174 173 188
		f 3 132 293 -293
		mu 0 3 173 172 188
		f 3 133 294 -294
		mu 0 3 172 171 188
		f 3 134 295 -295
		mu 0 3 171 170 188
		f 3 135 296 -296
		mu 0 3 170 169 188
		f 3 136 297 -297
		mu 0 3 169 168 188
		f 3 137 298 -298
		mu 0 3 168 167 188
		f 3 138 299 -299
		mu 0 3 167 186 188
		f 3 139 280 -300
		mu 0 3 186 185 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__pCylinderShape1Orig4" -p "pasted__pCylinder4";
	rename -uid "D9F1D7B8-475C-B988-A05E-DF985A71FAA6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.375 0.38749999
		 0.375 0.39999998 0.375 0.41249996 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993
		 0.375 0.46249992 0.375 0.4749999 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987
		 0.375 0.52499986 0.375 0.53749985 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981
		 0.375 0.5874998 0.375 0.59999979 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.4375
		 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994
		 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988
		 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982
		 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977 0.4375 0.62499976
		 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987
		 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.5625 0.38749999 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994 0.625 0.44999993
		 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988 0.625 0.51249987
		 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982 0.625 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.62499976 0.625 0.375 0.6875
		 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393
		 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107
		 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107
		 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146
		 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 142 ".vt[0:141]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 -0.66666663 -0.30901718
		 0.80901754 -0.66666663 -0.5877856 0.5877856 -0.66666663 -0.80901748 0.30901715 -0.66666663 -0.95105702
		 0 -0.66666663 -1.000000476837 -0.30901715 -0.66666663 -0.95105696 -0.58778548 -0.66666663 -0.8090173
		 -0.80901724 -0.66666663 -0.58778542 -0.95105678 -0.66666663 -0.30901706 -1.000000238419 -0.66666663 0
		 -0.95105678 -0.66666663 0.30901706 -0.80901718 -0.66666663 0.58778536 -0.58778536 -0.66666663 0.80901712
		 -0.30901706 -0.66666663 0.95105666 -2.9802322e-08 -0.66666663 1.000000119209 0.30901697 -0.66666663 0.9510566
		 0.58778524 -0.66666663 0.80901706 0.809017 -0.66666663 0.5877853 0.95105654 -0.66666663 0.309017
		 1 -0.66666663 0 0.95105714 -0.33333328 -0.30901718 0.80901754 -0.33333328 -0.5877856
		 0.5877856 -0.33333328 -0.80901748 0.30901715 -0.33333328 -0.95105702 0 -0.33333328 -1.000000476837
		 -0.30901715 -0.33333328 -0.95105696 -0.58778548 -0.33333328 -0.8090173 -0.80901724 -0.33333328 -0.58778542
		 -0.95105678 -0.33333328 -0.30901706 -1.000000238419 -0.33333328 0 -0.95105678 -0.33333328 0.30901706
		 -0.80901718 -0.33333328 0.58778536 -0.58778536 -0.33333328 0.80901712 -0.30901706 -0.33333328 0.95105666
		 -2.9802322e-08 -0.33333328 1.000000119209 0.30901697 -0.33333328 0.9510566 0.58778524 -0.33333328 0.80901706
		 0.809017 -0.33333328 0.5877853 0.95105654 -0.33333328 0.309017 1 -0.33333328 0 0.95105714 5.9604645e-08 -0.30901718
		 0.80901754 5.9604645e-08 -0.5877856 0.5877856 5.9604645e-08 -0.80901748 0.30901715 5.9604645e-08 -0.95105702
		 0 5.9604645e-08 -1.000000476837 -0.30901715 5.9604645e-08 -0.95105696 -0.58778548 5.9604645e-08 -0.8090173
		 -0.80901724 5.9604645e-08 -0.58778542 -0.95105678 5.9604645e-08 -0.30901706 -1.000000238419 5.9604645e-08 0
		 -0.95105678 5.9604645e-08 0.30901706 -0.80901718 5.9604645e-08 0.58778536 -0.58778536 5.9604645e-08 0.80901712
		 -0.30901706 5.9604645e-08 0.95105666 -2.9802322e-08 5.9604645e-08 1.000000119209
		 0.30901697 5.9604645e-08 0.9510566 0.58778524 5.9604645e-08 0.80901706 0.809017 5.9604645e-08 0.5877853
		 0.95105654 5.9604645e-08 0.309017 1 5.9604645e-08 0 0.95105714 0.3333334 -0.30901718
		 0.80901754 0.3333334 -0.5877856 0.5877856 0.3333334 -0.80901748 0.30901715 0.3333334 -0.95105702
		 0 0.3333334 -1.000000476837 -0.30901715 0.3333334 -0.95105696 -0.58778548 0.3333334 -0.8090173
		 -0.80901724 0.3333334 -0.58778542 -0.95105678 0.3333334 -0.30901706 -1.000000238419 0.3333334 0
		 -0.95105678 0.3333334 0.30901706 -0.80901718 0.3333334 0.58778536 -0.58778536 0.3333334 0.80901712
		 -0.30901706 0.3333334 0.95105666 -2.9802322e-08 0.3333334 1.000000119209 0.30901697 0.3333334 0.9510566
		 0.58778524 0.3333334 0.80901706 0.809017 0.3333334 0.5877853 0.95105654 0.3333334 0.309017
		 1 0.3333334 0 0.95105714 0.66666675 -0.30901718 0.80901754 0.66666675 -0.5877856
		 0.5877856 0.66666675 -0.80901748 0.30901715 0.66666675 -0.95105702 0 0.66666675 -1.000000476837
		 -0.30901715 0.66666675 -0.95105696 -0.58778548 0.66666675 -0.8090173 -0.80901724 0.66666675 -0.58778542
		 -0.95105678 0.66666675 -0.30901706 -1.000000238419 0.66666675 0 -0.95105678 0.66666675 0.30901706
		 -0.80901718 0.66666675 0.58778536 -0.58778536 0.66666675 0.80901712 -0.30901706 0.66666675 0.95105666
		 -2.9802322e-08 0.66666675 1.000000119209 0.30901697 0.66666675 0.9510566 0.58778524 0.66666675 0.80901706
		 0.809017 0.66666675 0.5877853 0.95105654 0.66666675 0.309017 1 0.66666675 0 0.95105714 1 -0.30901718
		 0.80901754 1 -0.5877856 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837
		 -0.30901715 1 -0.95105696 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706
		 -1.000000238419 1 0 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712
		 -0.30901706 1 0.95105666 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706
		 0.809017 1 0.5877853 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0
		 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1;
	setAttr ".ed[166:299]" 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 140 0 1 140 1 1 140 2 1
		 140 3 1 140 4 1 140 5 1 140 6 1 140 7 1 140 8 1 140 9 1 140 10 1 140 11 1 140 12 1
		 140 13 1 140 14 1 140 15 1 140 16 1 140 17 1 140 18 1 140 19 1 120 141 1 121 141 1
		 122 141 1 123 141 1 124 141 1 125 141 1 126 141 1 127 141 1 128 141 1 129 141 1 130 141 1
		 131 141 1 132 141 1 133 141 1 134 141 1 135 141 1 136 141 1 137 141 1 138 141 1 139 141 1;
	setAttr -s 160 -ch 600 ".fc[0:159]" -type "polyFaces" 
		f 4 0 141 -21 -141
		mu 0 4 20 21 42 41
		f 4 1 142 -22 -142
		mu 0 4 21 22 43 42
		f 4 2 143 -23 -143
		mu 0 4 22 23 44 43
		f 4 3 144 -24 -144
		mu 0 4 23 24 45 44
		f 4 4 145 -25 -145
		mu 0 4 24 25 46 45
		f 4 5 146 -26 -146
		mu 0 4 25 26 47 46
		f 4 6 147 -27 -147
		mu 0 4 26 27 48 47
		f 4 7 148 -28 -148
		mu 0 4 27 28 49 48
		f 4 8 149 -29 -149
		mu 0 4 28 29 50 49
		f 4 9 150 -30 -150
		mu 0 4 29 30 51 50
		f 4 10 151 -31 -151
		mu 0 4 30 31 52 51
		f 4 11 152 -32 -152
		mu 0 4 31 32 53 52
		f 4 12 153 -33 -153
		mu 0 4 32 33 54 53
		f 4 13 154 -34 -154
		mu 0 4 33 34 55 54
		f 4 14 155 -35 -155
		mu 0 4 34 35 56 55
		f 4 15 156 -36 -156
		mu 0 4 35 36 57 56
		f 4 16 157 -37 -157
		mu 0 4 36 37 58 57
		f 4 17 158 -38 -158
		mu 0 4 37 38 59 58
		f 4 18 159 -39 -159
		mu 0 4 38 39 60 59
		f 4 19 140 -40 -160
		mu 0 4 39 40 61 60
		f 4 20 161 -41 -161
		mu 0 4 41 42 63 62
		f 4 21 162 -42 -162
		mu 0 4 42 43 64 63
		f 4 22 163 -43 -163
		mu 0 4 43 44 65 64
		f 4 23 164 -44 -164
		mu 0 4 44 45 66 65
		f 4 24 165 -45 -165
		mu 0 4 45 46 67 66
		f 4 25 166 -46 -166
		mu 0 4 46 47 68 67
		f 4 26 167 -47 -167
		mu 0 4 47 48 69 68
		f 4 27 168 -48 -168
		mu 0 4 48 49 70 69
		f 4 28 169 -49 -169
		mu 0 4 49 50 71 70
		f 4 29 170 -50 -170
		mu 0 4 50 51 72 71
		f 4 30 171 -51 -171
		mu 0 4 51 52 73 72
		f 4 31 172 -52 -172
		mu 0 4 52 53 74 73
		f 4 32 173 -53 -173
		mu 0 4 53 54 75 74
		f 4 33 174 -54 -174
		mu 0 4 54 55 76 75
		f 4 34 175 -55 -175
		mu 0 4 55 56 77 76
		f 4 35 176 -56 -176
		mu 0 4 56 57 78 77
		f 4 36 177 -57 -177
		mu 0 4 57 58 79 78
		f 4 37 178 -58 -178
		mu 0 4 58 59 80 79
		f 4 38 179 -59 -179
		mu 0 4 59 60 81 80
		f 4 39 160 -60 -180
		mu 0 4 60 61 82 81
		f 4 40 181 -61 -181
		mu 0 4 62 63 84 83
		f 4 41 182 -62 -182
		mu 0 4 63 64 85 84
		f 4 42 183 -63 -183
		mu 0 4 64 65 86 85
		f 4 43 184 -64 -184
		mu 0 4 65 66 87 86
		f 4 44 185 -65 -185
		mu 0 4 66 67 88 87
		f 4 45 186 -66 -186
		mu 0 4 67 68 89 88
		f 4 46 187 -67 -187
		mu 0 4 68 69 90 89
		f 4 47 188 -68 -188
		mu 0 4 69 70 91 90
		f 4 48 189 -69 -189
		mu 0 4 70 71 92 91
		f 4 49 190 -70 -190
		mu 0 4 71 72 93 92
		f 4 50 191 -71 -191
		mu 0 4 72 73 94 93
		f 4 51 192 -72 -192
		mu 0 4 73 74 95 94
		f 4 52 193 -73 -193
		mu 0 4 74 75 96 95
		f 4 53 194 -74 -194
		mu 0 4 75 76 97 96
		f 4 54 195 -75 -195
		mu 0 4 76 77 98 97
		f 4 55 196 -76 -196
		mu 0 4 77 78 99 98
		f 4 56 197 -77 -197
		mu 0 4 78 79 100 99
		f 4 57 198 -78 -198
		mu 0 4 79 80 101 100
		f 4 58 199 -79 -199
		mu 0 4 80 81 102 101
		f 4 59 180 -80 -200
		mu 0 4 81 82 103 102
		f 4 60 201 -81 -201
		mu 0 4 83 84 105 104
		f 4 61 202 -82 -202
		mu 0 4 84 85 106 105
		f 4 62 203 -83 -203
		mu 0 4 85 86 107 106
		f 4 63 204 -84 -204
		mu 0 4 86 87 108 107
		f 4 64 205 -85 -205
		mu 0 4 87 88 109 108
		f 4 65 206 -86 -206
		mu 0 4 88 89 110 109
		f 4 66 207 -87 -207
		mu 0 4 89 90 111 110
		f 4 67 208 -88 -208
		mu 0 4 90 91 112 111
		f 4 68 209 -89 -209
		mu 0 4 91 92 113 112
		f 4 69 210 -90 -210
		mu 0 4 92 93 114 113
		f 4 70 211 -91 -211
		mu 0 4 93 94 115 114
		f 4 71 212 -92 -212
		mu 0 4 94 95 116 115
		f 4 72 213 -93 -213
		mu 0 4 95 96 117 116
		f 4 73 214 -94 -214
		mu 0 4 96 97 118 117
		f 4 74 215 -95 -215
		mu 0 4 97 98 119 118
		f 4 75 216 -96 -216
		mu 0 4 98 99 120 119
		f 4 76 217 -97 -217
		mu 0 4 99 100 121 120
		f 4 77 218 -98 -218
		mu 0 4 100 101 122 121
		f 4 78 219 -99 -219
		mu 0 4 101 102 123 122
		f 4 79 200 -100 -220
		mu 0 4 102 103 124 123
		f 4 80 221 -101 -221
		mu 0 4 104 105 126 125
		f 4 81 222 -102 -222
		mu 0 4 105 106 127 126
		f 4 82 223 -103 -223
		mu 0 4 106 107 128 127
		f 4 83 224 -104 -224
		mu 0 4 107 108 129 128
		f 4 84 225 -105 -225
		mu 0 4 108 109 130 129
		f 4 85 226 -106 -226
		mu 0 4 109 110 131 130
		f 4 86 227 -107 -227
		mu 0 4 110 111 132 131
		f 4 87 228 -108 -228
		mu 0 4 111 112 133 132
		f 4 88 229 -109 -229
		mu 0 4 112 113 134 133
		f 4 89 230 -110 -230
		mu 0 4 113 114 135 134
		f 4 90 231 -111 -231
		mu 0 4 114 115 136 135
		f 4 91 232 -112 -232
		mu 0 4 115 116 137 136
		f 4 92 233 -113 -233
		mu 0 4 116 117 138 137
		f 4 93 234 -114 -234
		mu 0 4 117 118 139 138
		f 4 94 235 -115 -235
		mu 0 4 118 119 140 139
		f 4 95 236 -116 -236
		mu 0 4 119 120 141 140
		f 4 96 237 -117 -237
		mu 0 4 120 121 142 141
		f 4 97 238 -118 -238
		mu 0 4 121 122 143 142
		f 4 98 239 -119 -239
		mu 0 4 122 123 144 143
		f 4 99 220 -120 -240
		mu 0 4 123 124 145 144
		f 4 100 241 -121 -241
		mu 0 4 125 126 147 146
		f 4 101 242 -122 -242
		mu 0 4 126 127 148 147
		f 4 102 243 -123 -243
		mu 0 4 127 128 149 148
		f 4 103 244 -124 -244
		mu 0 4 128 129 150 149
		f 4 104 245 -125 -245
		mu 0 4 129 130 151 150
		f 4 105 246 -126 -246
		mu 0 4 130 131 152 151
		f 4 106 247 -127 -247
		mu 0 4 131 132 153 152
		f 4 107 248 -128 -248
		mu 0 4 132 133 154 153
		f 4 108 249 -129 -249
		mu 0 4 133 134 155 154
		f 4 109 250 -130 -250
		mu 0 4 134 135 156 155
		f 4 110 251 -131 -251
		mu 0 4 135 136 157 156
		f 4 111 252 -132 -252
		mu 0 4 136 137 158 157
		f 4 112 253 -133 -253
		mu 0 4 137 138 159 158
		f 4 113 254 -134 -254
		mu 0 4 138 139 160 159
		f 4 114 255 -135 -255
		mu 0 4 139 140 161 160
		f 4 115 256 -136 -256
		mu 0 4 140 141 162 161
		f 4 116 257 -137 -257
		mu 0 4 141 142 163 162
		f 4 117 258 -138 -258
		mu 0 4 142 143 164 163
		f 4 118 259 -139 -259
		mu 0 4 143 144 165 164
		f 4 119 240 -140 -260
		mu 0 4 144 145 166 165
		f 3 -1 -261 261
		mu 0 3 1 0 187
		f 3 -2 -262 262
		mu 0 3 2 1 187
		f 3 -3 -263 263
		mu 0 3 3 2 187
		f 3 -4 -264 264
		mu 0 3 4 3 187
		f 3 -5 -265 265
		mu 0 3 5 4 187
		f 3 -6 -266 266
		mu 0 3 6 5 187
		f 3 -7 -267 267
		mu 0 3 7 6 187
		f 3 -8 -268 268
		mu 0 3 8 7 187
		f 3 -9 -269 269
		mu 0 3 9 8 187
		f 3 -10 -270 270
		mu 0 3 10 9 187
		f 3 -11 -271 271
		mu 0 3 11 10 187
		f 3 -12 -272 272
		mu 0 3 12 11 187
		f 3 -13 -273 273
		mu 0 3 13 12 187
		f 3 -14 -274 274
		mu 0 3 14 13 187
		f 3 -15 -275 275
		mu 0 3 15 14 187
		f 3 -16 -276 276
		mu 0 3 16 15 187
		f 3 -17 -277 277
		mu 0 3 17 16 187
		f 3 -18 -278 278
		mu 0 3 18 17 187
		f 3 -19 -279 279
		mu 0 3 19 18 187
		f 3 -20 -280 260
		mu 0 3 0 19 187
		f 3 120 281 -281
		mu 0 3 185 184 188
		f 3 121 282 -282
		mu 0 3 184 183 188
		f 3 122 283 -283
		mu 0 3 183 182 188
		f 3 123 284 -284
		mu 0 3 182 181 188
		f 3 124 285 -285
		mu 0 3 181 180 188
		f 3 125 286 -286
		mu 0 3 180 179 188
		f 3 126 287 -287
		mu 0 3 179 178 188
		f 3 127 288 -288
		mu 0 3 178 177 188
		f 3 128 289 -289
		mu 0 3 177 176 188
		f 3 129 290 -290
		mu 0 3 176 175 188
		f 3 130 291 -291
		mu 0 3 175 174 188
		f 3 131 292 -292
		mu 0 3 174 173 188
		f 3 132 293 -293
		mu 0 3 173 172 188
		f 3 133 294 -294
		mu 0 3 172 171 188
		f 3 134 295 -295
		mu 0 3 171 170 188
		f 3 135 296 -296
		mu 0 3 170 169 188
		f 3 136 297 -297
		mu 0 3 169 168 188
		f 3 137 298 -298
		mu 0 3 168 167 188
		f 3 138 299 -299
		mu 0 3 167 186 188
		f 3 139 280 -300
		mu 0 3 186 185 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube1" -p "Table";
	rename -uid "CC4D59D6-4CB5-55CE-2D75-CEA622704123";
	setAttr ".t" -type "double3" -0.226 82.938497029154576 -0.475 ;
	setAttr ".s" -type "double3" 1.6724907505737892 0.11799440360479387 1.3667666169739403 ;
createNode mesh -n "pasted__pCubeShape1" -p "|LivingRoom|Table|pasted__pCube1";
	rename -uid "BD336782-4DE2-1130-A716-D2B71C7FC0BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube2" -p "Table";
	rename -uid "63F945BE-4F2E-39F3-209C-04B405138FF7";
	setAttr ".t" -type "double3" -0.226 83 -0.475 ;
	setAttr ".s" -type "double3" 1.625 0.015 1.325 ;
createNode mesh -n "pasted__pCubeShape2" -p "|LivingRoom|Table|pasted__pCube2";
	rename -uid "2B9B98AC-4EA2-97DA-99E2-94BA0AF5D888";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 3
		f 4 10 4 6 8
		mu 0 4 10 0 2 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Glasses" -p "LivingRoom";
	rename -uid "FAE0A5FD-460F-24EF-5BDE-8A913EA2DE8D";
	setAttr ".t" -type "double3" 9.5047747894682164 3.4980240051711391 50.314545537476867 ;
	setAttr ".rp" -type "double3" -16.962630094453939 -21.067018141863187 -18.800634904798578 ;
	setAttr ".sp" -type "double3" -16.962630094453939 -21.067018141863187 -18.800634904798578 ;
createNode transform -n "pasted__pCylinder1" -p "Glasses";
	rename -uid "DB4DAE51-4DDD-B3EC-0D7F-CFA177E59754";
	setAttr ".t" -type "double3" -17.773060267360929 -21.059847778402776 -19.766100706472947 ;
	setAttr ".s" -type "double3" 0.37313525911211942 0.53641344930129664 0.37313525911211942 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|LivingRoom|Glasses|pasted__pCylinder1";
	rename -uid "15407A64-40D4-7214-7A77-6ABEC193E533";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59999978542327881 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[41:60]" -type "float3"  -0.072551265 0 0.023573309 
		-0.061715782 0 0.044839129 -0.044839129 0 0.061715752 -0.023573333 0 0.072551221 
		-7.0984658e-09 0 0.076284915 0.023573324 0 0.072551221 0.044839129 0 0.061715752 
		0.061715722 0 0.044839129 0.072551191 0 0.023573309 0.076284871 0 -1.0647693e-08 
		0.072551191 0 -0.023573339 0.061715722 0 -0.044839144 0.044839092 0 -0.061715707 
		0.023573324 0 -0.072551236 -7.0984658e-09 0 -0.076284811 -0.023573333 0 -0.072551236 
		-0.044839107 0 -0.061715707 -0.061715767 0 -0.044839084 -0.072551206 0 -0.023573339 
		-0.076284841 0 -1.0647693e-08;
createNode transform -n "pasted__pCylinder2" -p "Glasses";
	rename -uid "562D2C18-4AF9-F31C-B250-E3B8097B9E68";
	setAttr ".t" -type "double3" -16.152199743622191 -21.059847778402776 -19.766100706472947 ;
	setAttr ".s" -type "double3" 0.37313525911211942 0.53641344930129664 0.37313525911211942 ;
createNode mesh -n "pasted__pCylinderShape2" -p "|LivingRoom|Glasses|pasted__pCylinder2";
	rename -uid "E972BC2D-4723-66BC-67B5-CA868CB77825";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:19]" "f[40:59]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.59999978542327881 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 143 ".uvst[0].uvsp[0:142]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.5
		 0.15625 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[41:60]" -type "float3"  -0.072551265 0 0.023573309 
		-0.061715782 0 0.044839129 -0.044839129 0 0.061715752 -0.023573333 0 0.072551221 
		-7.0984658e-09 0 0.076284915 0.023573324 0 0.072551221 0.044839129 0 0.061715752 
		0.061715722 0 0.044839129 0.072551191 0 0.023573309 0.076284871 0 -1.0647693e-08 
		0.072551191 0 -0.023573339 0.061715722 0 -0.044839144 0.044839092 0 -0.061715707 
		0.023573324 0 -0.072551236 -7.0984658e-09 0 -0.076284811 -0.023573333 0 -0.072551236 
		-0.044839107 0 -0.061715707 -0.061715767 0 -0.044839084 -0.072551206 0 -0.023573339 
		-0.076284841 0 -1.0647693e-08;
	setAttr -s 61 ".vt[0:60]"  0.95105696 -1 -0.30901718 0.80901766 -1 -0.58778572
		 0.58778572 -1 -0.80901718 0.30901718 -1 -0.95105743 0 -1 -1.000000953674 -0.30901718 -1 -0.95105648
		 -0.58778572 -1 -0.80901718 -0.80901718 -1 -0.58778572 -0.95105696 -1 -0.30901718
		 -1 -1 0 -0.95105696 -1 0.30901718 -0.80901718 -1 0.58778572 -0.58778524 -1 0.80901718
		 -0.30901718 -1 0.95105648 0 -1 1 0.30901718 -1 0.95105648 0.58778524 -1 0.80901718
		 0.80901718 -1 0.58778572 0.95105648 -1 0.30901718 1 -1 0 1.21840143 1 -0.39588261
		 1.036434174 1 -0.75301361 0.75301361 1 -1.036434174 0.39588261 1 -1.21840096 0 1 -1.28110313
		 -0.39588261 1 -1.21840096 -0.75301361 1 -1.036434174 -1.036433697 1 -0.75301361 -1.21840096 1 -0.39588261
		 -1.28110266 1 0 -1.21840096 1 0.39588261 -1.036433697 1 0.75301361 -0.75301313 1 1.03643322
		 -0.39588261 1 1.21840096 0 1 1.28110218 0.39588261 1 1.21840096 0.75301313 1 1.03643322
		 1.036433697 1 0.75301266 1.21840096 1 0.39588261 1.28110218 1 0 0 -1 0 1.21840143 1 -0.39588261
		 1.036434174 1 -0.75301361 0.75301361 1 -1.036434174 0.39588261 1 -1.21840096 0 1 -1.28110313
		 -0.39588261 1 -1.21840096 -0.75301361 1 -1.036434174 -1.036433697 1 -0.75301361 -1.21840096 1 -0.39588261
		 -1.28110266 1 0 -1.21840096 1 0.39588261 -1.036433697 1 0.75301361 -0.75301313 1 1.03643322
		 -0.39588261 1 1.21840096 0 1 1.28110218 0.39588261 1 1.21840096 0.75301313 1 1.03643322
		 1.036433697 1 0.75301266 1.21840096 1 0.39588261 1.28110218 1 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 0 21 42 0 41 42 0 22 43 0 42 43 0
		 23 44 0 43 44 0 24 45 0 44 45 0 25 46 0 45 46 0 26 47 0 46 47 0 27 48 0 47 48 0 28 49 0
		 48 49 0 29 50 0 49 50 0 30 51 0 50 51 0 31 52 0 51 52 0 32 53 0 52 53 0 33 54 0 53 54 0
		 34 55 0 54 55 0 35 56 0 55 56 0 36 57 0 56 57 0 37 58 0 57 58 0 38 59 0 58 59 0 39 60 0
		 59 60 0 60 41 0;
	setAttr -s 60 -ch 220 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 62
		f 3 -2 -62 62
		mu 0 3 2 1 62
		f 3 -3 -63 63
		mu 0 3 3 2 62
		f 3 -4 -64 64
		mu 0 3 4 3 62
		f 3 -5 -65 65
		mu 0 3 5 4 62
		f 3 -6 -66 66
		mu 0 3 6 5 62
		f 3 -7 -67 67
		mu 0 3 7 6 62
		f 3 -8 -68 68
		mu 0 3 8 7 62
		f 3 -9 -69 69
		mu 0 3 9 8 62
		f 3 -10 -70 70
		mu 0 3 10 9 62
		f 3 -11 -71 71
		mu 0 3 11 10 62
		f 3 -12 -72 72
		mu 0 3 12 11 62
		f 3 -13 -73 73
		mu 0 3 13 12 62
		f 3 -14 -74 74
		mu 0 3 14 13 62
		f 3 -15 -75 75
		mu 0 3 15 14 62
		f 3 -16 -76 76
		mu 0 3 16 15 62
		f 3 -17 -77 77
		mu 0 3 17 16 62
		f 3 -18 -78 78
		mu 0 3 18 17 62
		f 3 -19 -79 79
		mu 0 3 19 18 62
		f 3 -20 -80 60
		mu 0 3 0 19 62
		f 4 20 81 -83 -81
		mu 0 4 63 64 65 66
		f 4 21 83 -85 -82
		mu 0 4 67 68 69 70
		f 4 22 85 -87 -84
		mu 0 4 71 72 73 74
		f 4 23 87 -89 -86
		mu 0 4 75 76 77 78
		f 4 24 89 -91 -88
		mu 0 4 79 80 81 82
		f 4 25 91 -93 -90
		mu 0 4 83 84 85 86
		f 4 26 93 -95 -92
		mu 0 4 87 88 89 90
		f 4 27 95 -97 -94
		mu 0 4 91 92 93 94
		f 4 28 97 -99 -96
		mu 0 4 95 96 97 98
		f 4 29 99 -101 -98
		mu 0 4 99 100 101 102
		f 4 30 101 -103 -100
		mu 0 4 103 104 105 106
		f 4 31 103 -105 -102
		mu 0 4 107 108 109 110
		f 4 32 105 -107 -104
		mu 0 4 111 112 113 114
		f 4 33 107 -109 -106
		mu 0 4 115 116 117 118
		f 4 34 109 -111 -108
		mu 0 4 119 120 121 122
		f 4 35 111 -113 -110
		mu 0 4 123 124 125 126
		f 4 36 113 -115 -112
		mu 0 4 127 128 129 130
		f 4 37 115 -117 -114
		mu 0 4 131 132 133 134
		f 4 38 117 -119 -116
		mu 0 4 135 136 137 138
		f 4 39 80 -120 -118
		mu 0 4 139 140 141 142;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCylinder3" -p "Glasses";
	rename -uid "E50202C8-4517-EDE0-3FA3-5EBD2C6E2905";
	setAttr ".t" -type "double3" -16.152199743622191 -21.074601954624896 -17.8351687472747 ;
	setAttr ".s" -type "double3" 0.37313525911211942 -0.536 0.37313525911211942 ;
createNode mesh -n "pasted__pCylinderShape3" -p "|LivingRoom|Glasses|pasted__pCylinder3";
	rename -uid "ED481C4D-4CB7-AA35-CE10-C085DC2F3506";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:19]" "f[40:59]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.59999978542327881 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 143 ".uvst[0].uvsp[0:142]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.5
		 0.15625 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[41:60]" -type "float3"  -0.072551265 0 0.023573309 
		-0.061715782 0 0.044839129 -0.044839129 0 0.061715752 -0.023573333 0 0.072551221 
		-7.0984658e-09 0 0.076284915 0.023573324 0 0.072551221 0.044839129 0 0.061715752 
		0.061715722 0 0.044839129 0.072551191 0 0.023573309 0.076284871 0 -1.0647693e-08 
		0.072551191 0 -0.023573339 0.061715722 0 -0.044839144 0.044839092 0 -0.061715707 
		0.023573324 0 -0.072551236 -7.0984658e-09 0 -0.076284811 -0.023573333 0 -0.072551236 
		-0.044839107 0 -0.061715707 -0.061715767 0 -0.044839084 -0.072551206 0 -0.023573339 
		-0.076284841 0 -1.0647693e-08;
	setAttr -s 61 ".vt[0:60]"  0.95105696 -1 -0.30901718 0.80901766 -1 -0.58778572
		 0.58778572 -1 -0.80901718 0.30901718 -1 -0.95105743 0 -1 -1.000000953674 -0.30901718 -1 -0.95105648
		 -0.58778572 -1 -0.80901718 -0.80901718 -1 -0.58778572 -0.95105696 -1 -0.30901718
		 -1 -1 0 -0.95105696 -1 0.30901718 -0.80901718 -1 0.58778572 -0.58778524 -1 0.80901718
		 -0.30901718 -1 0.95105648 0 -1 1 0.30901718 -1 0.95105648 0.58778524 -1 0.80901718
		 0.80901718 -1 0.58778572 0.95105648 -1 0.30901718 1 -1 0 1.21840143 1 -0.39588261
		 1.036434174 1 -0.75301361 0.75301361 1 -1.036434174 0.39588261 1 -1.21840096 0 1 -1.28110313
		 -0.39588261 1 -1.21840096 -0.75301361 1 -1.036434174 -1.036433697 1 -0.75301361 -1.21840096 1 -0.39588261
		 -1.28110266 1 0 -1.21840096 1 0.39588261 -1.036433697 1 0.75301361 -0.75301313 1 1.03643322
		 -0.39588261 1 1.21840096 0 1 1.28110218 0.39588261 1 1.21840096 0.75301313 1 1.03643322
		 1.036433697 1 0.75301266 1.21840096 1 0.39588261 1.28110218 1 0 0 -1 0 1.21840143 1 -0.39588261
		 1.036434174 1 -0.75301361 0.75301361 1 -1.036434174 0.39588261 1 -1.21840096 0 1 -1.28110313
		 -0.39588261 1 -1.21840096 -0.75301361 1 -1.036434174 -1.036433697 1 -0.75301361 -1.21840096 1 -0.39588261
		 -1.28110266 1 0 -1.21840096 1 0.39588261 -1.036433697 1 0.75301361 -0.75301313 1 1.03643322
		 -0.39588261 1 1.21840096 0 1 1.28110218 0.39588261 1 1.21840096 0.75301313 1 1.03643322
		 1.036433697 1 0.75301266 1.21840096 1 0.39588261 1.28110218 1 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 0 21 42 0 41 42 0 22 43 0 42 43 0
		 23 44 0 43 44 0 24 45 0 44 45 0 25 46 0 45 46 0 26 47 0 46 47 0 27 48 0 47 48 0 28 49 0
		 48 49 0 29 50 0 49 50 0 30 51 0 50 51 0 31 52 0 51 52 0 32 53 0 52 53 0 33 54 0 53 54 0
		 34 55 0 54 55 0 35 56 0 55 56 0 36 57 0 56 57 0 37 58 0 57 58 0 38 59 0 58 59 0 39 60 0
		 59 60 0 60 41 0;
	setAttr -s 60 -ch 220 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 62
		f 3 -2 -62 62
		mu 0 3 2 1 62
		f 3 -3 -63 63
		mu 0 3 3 2 62
		f 3 -4 -64 64
		mu 0 3 4 3 62
		f 3 -5 -65 65
		mu 0 3 5 4 62
		f 3 -6 -66 66
		mu 0 3 6 5 62
		f 3 -7 -67 67
		mu 0 3 7 6 62
		f 3 -8 -68 68
		mu 0 3 8 7 62
		f 3 -9 -69 69
		mu 0 3 9 8 62
		f 3 -10 -70 70
		mu 0 3 10 9 62
		f 3 -11 -71 71
		mu 0 3 11 10 62
		f 3 -12 -72 72
		mu 0 3 12 11 62
		f 3 -13 -73 73
		mu 0 3 13 12 62
		f 3 -14 -74 74
		mu 0 3 14 13 62
		f 3 -15 -75 75
		mu 0 3 15 14 62
		f 3 -16 -76 76
		mu 0 3 16 15 62
		f 3 -17 -77 77
		mu 0 3 17 16 62
		f 3 -18 -78 78
		mu 0 3 18 17 62
		f 3 -19 -79 79
		mu 0 3 19 18 62
		f 3 -20 -80 60
		mu 0 3 0 19 62
		f 4 20 81 -83 -81
		mu 0 4 63 64 65 66
		f 4 21 83 -85 -82
		mu 0 4 67 68 69 70
		f 4 22 85 -87 -84
		mu 0 4 71 72 73 74
		f 4 23 87 -89 -86
		mu 0 4 75 76 77 78
		f 4 24 89 -91 -88
		mu 0 4 79 80 81 82
		f 4 25 91 -93 -90
		mu 0 4 83 84 85 86
		f 4 26 93 -95 -92
		mu 0 4 87 88 89 90
		f 4 27 95 -97 -94
		mu 0 4 91 92 93 94
		f 4 28 97 -99 -96
		mu 0 4 95 96 97 98
		f 4 29 99 -101 -98
		mu 0 4 99 100 101 102
		f 4 30 101 -103 -100
		mu 0 4 103 104 105 106
		f 4 31 103 -105 -102
		mu 0 4 107 108 109 110
		f 4 32 105 -107 -104
		mu 0 4 111 112 113 114
		f 4 33 107 -109 -106
		mu 0 4 115 116 117 118
		f 4 34 109 -111 -108
		mu 0 4 119 120 121 122
		f 4 35 111 -113 -110
		mu 0 4 123 124 125 126
		f 4 36 113 -115 -112
		mu 0 4 127 128 129 130
		f 4 37 115 -117 -114
		mu 0 4 131 132 133 134
		f 4 38 117 -119 -116
		mu 0 4 135 136 137 138
		f 4 39 80 -120 -118
		mu 0 4 139 140 141 142;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "directionalLight1";
	rename -uid "7DF3C87C-45E4-65DE-33E3-06BE11F5C00C";
	setAttr ".t" -type "double3" -20.066158665216665 21.693560417881955 -18.676362774998129 ;
	setAttr ".r" -type "double3" 224.46837593025518 -83.771809248461452 -262.46506687441445 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "F738E6C0-4F78-6121-B100-42BF79C3F2F4";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".col" 108.32000128980192;
createNode transform -n "PreferredCamera";
	rename -uid "FD7259E5-4470-6881-A549-ACBE36E2BD62";
	setAttr ".t" -type "double3" 29 -3 -20 ;
	setAttr ".r" -type "double3" -2 90 0 ;
createNode camera -n "PreferredCameraShape" -p "PreferredCamera";
	rename -uid "E95D8D9A-4E43-30C7-A123-74963C1C81CC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".pze" yes;
	setAttr ".zom" 0.96658187934260753;
	setAttr ".cs" 4;
	setAttr ".coi" 38.600303503328043;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode transform -n "Camera1";
	rename -uid "160FCD63-49F7-3731-D0CA-B6A2A4FFA99C";
	setAttr ".t" -type "double3" 15.353790508110418 -9.4844092733956646 -158.12993281340124 ;
	setAttr ".r" -type "double3" 0 164.399999999984 0 ;
createNode camera -n "Camera1Shape" -p "Camera1";
	rename -uid "22EC20CF-41FC-5E02-329E-A5B9F1B916AA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".pze" yes;
	setAttr ".zom" 1.8888290110583781;
	setAttr ".fl" 50;
	setAttr ".coi" 150.21793860040705;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode transform -n "Camera2";
	rename -uid "EC8F7D68-4058-4BFB-8BE8-0492EC10AB00";
	setAttr ".t" -type "double3" -8.5385648269823378 -19.197380459153514 -61.724162702104778 ;
	setAttr ".r" -type "double3" 5.9999999999999831 162.79999999998995 0 ;
createNode camera -n "Camera2Shape" -p "Camera2";
	rename -uid "3F84F5B1-46CC-3FD4-5E99-D18261B2E7EC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".pze" yes;
	setAttr ".zom" 0.96658187934260753;
	setAttr ".coi" 47.468375202784529;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode transform -n "Camera3";
	rename -uid "3565A2B7-44D0-C41B-9D66-668E61A03CEA";
	setAttr ".t" -type "double3" 84.735513228476449 0.70471580806532108 -42.569313290257973 ;
	setAttr ".r" -type "double3" -3.644999999994099 -255.39999999998045 0 ;
createNode camera -n "CameraShape3" -p "Camera3";
	rename -uid "A6B1310C-49FE-4DC5-10A1-A99C9F74C93E";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 30.862122195942071;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".ai_exposure" 1;
createNode transform -n "pointLight1";
	rename -uid "475F49AE-4A69-5264-1114-1581768D6228";
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	rename -uid "95D402A0-42EE-B549-3862-75B75BB416BF";
	setAttr -k off ".v";
	setAttr ".in" 0.48192772269248962;
	setAttr ".us" no;
	setAttr ".ai_exposure" 5;
	setAttr ".ai_samples" 0;
	setAttr ".ai_normalize" no;
	setAttr ".ai_camera" 1;
createNode transform -n "aiAreaLight1";
	rename -uid "1BB79310-47CC-0C5B-34CE-A8B45E1CA23F";
	setAttr ".t" -type "double3" -61.161639515193009 -3.2175718212783941 -26.336137822471741 ;
	setAttr ".r" -type "double3" 7.6995551536360978 -70.107502783236043 -31.503381716491628 ;
	setAttr ".s" -type "double3" 11.441968814789208 11.441968814789208 4.5786262056565441 ;
createNode aiAreaLight -n "aiAreaLightShape1" -p "aiAreaLight1";
	rename -uid "03AB4C83-4E96-AE75-B721-6EAD8B18EF20";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_normalize" no;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "08B4AF50-4C2F-5560-0889-799B1067553A";
	setAttr -s 205 ".lnk";
	setAttr -s 205 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3F5CB7D7-4521-B807-EA19-22A186035011";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "005A10FD-4C89-B5F1-6F25-E9A31A6D9F02";
createNode displayLayerManager -n "layerManager";
	rename -uid "C2AFAF48-4C00-CDAF-3B87-DEAB2D580FB0";
	setAttr ".cdl" 1;
	setAttr -s 4 ".dli[1:3]"  2 3 1;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "62F2454E-45B1-B943-7869-F9A3447BAE9C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FBB14D6E-4D28-37BD-5AB9-00BB7A42560E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B214CD7D-4B86-C5B3-D101-CF9AF84AB12C";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "E335B951-4DF3-F33F-DCFD-918243EFA55F";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".img" -type "string" "";
	setAttr ".thr_auto" no;
	setAttr ".thrds" -20;
	setAttr ".bucket_size" 32;
	setAttr ".AA_samples" 2;
	setAttr ".GI_diffuse_samples" 1;
	setAttr ".GI_specular_samples" 1;
	setAttr ".GI_transmission_samples" 1;
	setAttr ".GI_volume_samples" 1;
	setAttr ".fltr" -type "string" "";
	setAttr ".autotx" no;
	setAttr ".igl" -type "string" "";
	setAttr ".file" -type "string" "";
	setAttr ".ai_user_options" -type "string" "";
	setAttr ".kick_render_flags" -type "string" "";
	setAttr ".version" -type "string" "4.2.1";
	setAttr ".post_translation" -type "string" "";
	setAttr ".ipr_refinement_started" -type "string" "";
	setAttr ".ipr_refinement_finished" -type "string" "";
	setAttr ".ipr_step_started" -type "string" "";
	setAttr ".ipr_step_finished" -type "string" "";
	setAttr ".output_overscan" -type "string" "";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=RenderCameraShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1  1;Background.Offset=0  0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1  1;Foreground.Offset=0  0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "BFF6EC13-4479-69AE-4B2A-DBA1F1ABD320";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "3DF641BF-474F-389F-CF38-4D9CA1E64761";
	setAttr ".merge_AOVs" yes;
	setAttr ".half_precision" yes;
	setAttr ".autocrop" yes;
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5B13BE81-4461-C4B7-8F3F-018BB949B573";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode displayLayer -n "ground_layer";
	rename -uid "A7932AD1-4941-E302-DBDF-6ABFA492F696";
	setAttr ".do" 1;
createNode lambert -n "lambert_ground";
	rename -uid "BA5544E0-48C5-A8D8-713E-C2A0F93A22FB";
	setAttr ".c" -type "float3" 0.25709999 0.5043 0.5043 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "76B65ADB-432A-A1B2-E64B-EC8A5F6DC193";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "1FE40DD3-4152-01F9-F42D-EF827DE6BF7D";
createNode displayLayer -n "lights_layer";
	rename -uid "75668EB4-4D4A-F0F6-BE58-AB90A4D0F637";
	setAttr ".do" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "7C6FC049-4AB6-40F7-694C-9180EACF5006";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1601.3127367190461 -879.97156835329861 ;
	setAttr ".tgi[0].vh" -type "double2" 1587.3372021061887 880.04146786996193 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FD478C4D-401B-08D4-4740-038C33753349";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|RenderCamera|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 762\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|Camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F61FD829-4A2B-B580-68A8-E5B68A84E443";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "cube_layer";
	rename -uid "941B3D59-48D0-9C99-EC63-E5B14111C5AA";
	setAttr ".do" 3;
createNode lambert -n "lambert3";
	rename -uid "894611E8-4ED8-DCD9-FF9E-B1B25D3C2D89";
	setAttr ".c" -type "float3" 0.93379998 0.39899999 0 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "024E2F60-44E2-407F-D988-6E9D7345F11D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "EC88AE0F-4815-2101-EDD5-A8A55D0373BC";
createNode lambert -n "lambert4";
	rename -uid "9D55A65B-4785-6428-6F38-16A3E511C6FA";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "A1DDB9F0-4BE6-098F-3E31-42890093AA1D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "BE9118DC-47B2-FED0-C8FE-48B707F7E9DC";
createNode blinn -n "blinn1";
	rename -uid "767CE331-432D-D744-D421-9C9839ED3825";
	setAttr ".c" -type "float3" 0.161 0.068677232 0 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "85933EF4-4440-CFD2-478C-A9B074CDD566";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "46E07176-4548-FFE9-8853-B98BEB6608F2";
createNode lambert -n "lambert5";
	rename -uid "91B18A8D-4DE5-E7C7-D91F-22BFF6F4CC08";
	setAttr ".c" -type "float3" 0.61930001 0.26409999 0 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "74AF84D9-443C-763B-8DCA-DD8DD8E57FE5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "E5DEC513-4616-9B5F-66E6-9EAA55FBB8F9";
createNode lambert -n "lambert6";
	rename -uid "299F0687-4B00-33DB-9316-27A9ACC7CC23";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "577D5A5C-421C-ECD3-2289-25BD666FDF1C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "922D3810-428C-73CA-4A19-D783F05BE162";
createNode phong -n "phong1";
	rename -uid "CBA25BED-4EC5-320B-3B54-CEB987523BB7";
createNode shadingEngine -n "phong1SG";
	rename -uid "D77645C1-4C74-0436-44BF-5DB18F26F608";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "2DB5ED5F-44EA-857E-8937-F2BBA0C13339";
createNode lambert -n "lambert7";
	rename -uid "A584B0E1-4F8E-ED66-9F25-90AE4CAC5E5A";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "C04BC4DA-4B5D-9D1E-7132-829692698A5F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "26116BFB-47EE-4FB1-0B26-F5800BB29C67";
createNode shadingMap -n "shadingMap1";
	rename -uid "E7757233-48FD-BA3E-1BF2-3694EC3710ED";
	setAttr ".sc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "shadingMap1SG";
	rename -uid "C0E669BA-487E-F187-A7C5-B0B6A3E5B478";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "1FF1BA9B-48F2-265E-3BAB-09BCC24983A0";
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "C3DBA598-420D-1CC0-5E73-028ED5A77E89";
createNode shadingEngine -n "pasted__lambert3SG";
	rename -uid "494C9C28-4796-4DE3-6BF2-829D344D87D2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert3";
	rename -uid "46FB0F14-487A-B703-06A6-FC9BA0D6EFAF";
	setAttr ".c" -type "float3" 0.93379998 0.39899999 0 ;
createNode materialInfo -n "pasted__materialInfo9";
	rename -uid "5D49CAD5-4DB2-5C12-44CF-9B85DD117E86";
createNode shadingEngine -n "pasted__shadingMap1SG";
	rename -uid "EA7347D1-415A-93EE-CB7D-369E88633C2D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__shadingMap1";
	rename -uid "1BE58F1B-42CF-2B24-1786-14B18C402B4C";
	setAttr ".sc" -type "float3" 1 1 1 ;
createNode materialInfo -n "pasted__materialInfo10";
	rename -uid "376B9381-43DA-EFF5-7ACF-B4BC633FCB06";
createNode shadingEngine -n "pasted__lambert3SG1";
	rename -uid "92DF571E-49F2-00AC-A705-8D948C5D8908";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert4";
	rename -uid "2DE1A316-4FFD-1AEF-54BF-8D85048EC87A";
	setAttr ".c" -type "float3" 0.93379998 0.39899999 0 ;
createNode materialInfo -n "pasted__pasted__materialInfo2";
	rename -uid "8EF75E4F-4AD0-4D66-E8DE-91801C305EAC";
createNode shadingEngine -n "pasted__pasted__lambert3SG";
	rename -uid "3B3A7F16-4EE2-A65C-44BC-94B241F9663F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__pasted__lambert3";
	rename -uid "1321CF4A-47C9-DE7E-57EB-588BC732BF2B";
	setAttr ".c" -type "float3" 0.93379998 0.39899999 0 ;
createNode materialInfo -n "pasted__pasted__materialInfo9";
	rename -uid "7DEA6F17-4A6A-4FD6-2AF5-78BD734C543F";
createNode shadingEngine -n "pasted__pasted__shadingMap1SG";
	rename -uid "CB98A7A7-426B-4FA0-9A46-D8B9C12241C5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__pasted__shadingMap1";
	rename -uid "4123F6F7-4D95-C6B5-8B62-4FA9043C7520";
	setAttr ".sc" -type "float3" 1 1 1 ;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo9";
	rename -uid "03815433-49C9-DC1D-B7C4-3993C06DC99B";
createNode shadingEngine -n "pasted__pasted__pasted__shadingMap1SG";
	rename -uid "9BB65229-43A5-6E50-CD94-D0A4508F575B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__pasted__pasted__shadingMap1";
	rename -uid "EB303805-447A-6409-34F8-0A843522DF3F";
	setAttr ".sc" -type "float3" 1 1 1 ;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo2";
	rename -uid "03B27D14-42CB-E0FB-B19B-3592D362037F";
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG";
	rename -uid "8B8E3DB3-430E-17F9-47AC-16B8B082C5EB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__pasted__pasted__lambert3";
	rename -uid "CB0B46BB-4632-C22F-CC62-CB8A1C19799C";
	setAttr ".c" -type "float3" 0.93379998 0.39899999 0 ;
createNode materialInfo -n "pasted__pasted__materialInfo10";
	rename -uid "3641A49D-4ABB-BB67-6703-B486F31DEF2F";
createNode shadingEngine -n "pasted__pasted__lambert3SG1";
	rename -uid "CE695258-42E7-04BE-0993-F1B88A2DB17D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__pasted__lambert4";
	rename -uid "F0E03CFD-4D8F-C5BE-83FC-25A046C538A8";
	setAttr ".c" -type "float3" 0.93379998 0.39899999 0 ;
createNode lambert -n "lambert8";
	rename -uid "610752DF-49A4-E111-E8DD-7BAC82972226";
createNode shadingEngine -n "lambert8SG";
	rename -uid "2DAABDC5-4BE3-924F-E817-CDA3BE3F3962";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "1DD7EB71-41E9-DC0F-56AC-669EC6F0F967";
createNode lambert -n "lambert9";
	rename -uid "48297FB6-4D80-ECEE-029F-F98A158B7DBC";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "0C76E96F-4C73-8597-E334-528C52782E7A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "0334070D-4E58-7233-C6EB-3EB36822CB11";
createNode shadingMap -n "shadingMap2";
	rename -uid "8BF53614-4A8E-148A-1E3A-8E95E3EFB1D0";
	setAttr ".sc" -type "float3" 0.3344 0.3344 0.3344 ;
createNode shadingEngine -n "shadingMap2SG";
	rename -uid "01AAA0D6-41FB-E7A5-4EAE-7FB28DDE273F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "F75DBED4-46DD-4E27-C00D-CBA3E8BBC0F6";
createNode shadingMap -n "shadingMap3";
	rename -uid "78D32936-4910-1A27-1C31-C9AF0067D866";
	setAttr ".sc" -type "float3" 0.3123 0.3123 0.3123 ;
createNode shadingEngine -n "shadingMap3SG";
	rename -uid "B3006570-4F15-A6E3-A7DC-73B4B485F843";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "7C4279B9-42F0-ED8B-8A65-ACBEF50CD66B";
createNode shadingMap -n "shadingMap4";
	rename -uid "7BF39498-4B16-06BC-0033-068436038932";
	setAttr ".sc" -type "float3" 0.3581 0.3581 0.3581 ;
createNode shadingEngine -n "shadingMap4SG";
	rename -uid "6F6AFA4C-4523-4E7A-D5DB-029803E9FA37";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "08368D00-4E8E-7430-DFE0-5E9A586E91A1";
createNode shadingMap -n "shadingMap5";
	rename -uid "4394D788-483D-C336-0B2B-088E41335B95";
	setAttr ".sc" -type "float3" 0.3581 0.3581 0.3581 ;
createNode shadingEngine -n "shadingMap5SG";
	rename -uid "AF587F17-4462-BD86-A775-D6ABBBFF61D9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "8D29EF49-4BDC-F84D-5F56-2FA25A5EB177";
createNode materialInfo -n "pasted__materialInfo12";
	rename -uid "2E892762-4C5F-6A73-3B9E-73B3617C534E";
createNode shadingEngine -n "pasted__shadingMap2SG";
	rename -uid "291AA5D2-4428-4256-8716-F78F9A641D5A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__shadingMap2";
	rename -uid "519D41F1-4592-4D71-9C52-58BB0A9EEF64";
	setAttr ".sc" -type "float3" 0.3344 0.3344 0.3344 ;
createNode materialInfo -n "pasted__materialInfo13";
	rename -uid "1592434E-46FB-18BE-C7E7-83828827BFD5";
createNode shadingEngine -n "pasted__shadingMap3SG";
	rename -uid "FD729AD8-4FB9-E9D0-5491-7D8351F14D34";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__shadingMap3";
	rename -uid "E4E8843D-4F44-38EB-9D0B-8AA4BAD118F6";
	setAttr ".sc" -type "float3" 0.3123 0.3123 0.3123 ;
createNode materialInfo -n "pasted__materialInfo14";
	rename -uid "891E7A49-4E71-2E00-986D-1F856D11837A";
createNode shadingEngine -n "pasted__shadingMap4SG";
	rename -uid "24E5B05D-46D2-6B08-36DF-E4A6A4F4ECB6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__shadingMap4";
	rename -uid "75E48F39-4D0E-3E87-756E-FF813D1E2514";
	setAttr ".sc" -type "float3" 0.3581 0.3581 0.3581 ;
createNode materialInfo -n "pasted__materialInfo15";
	rename -uid "BD697105-425C-D655-36D2-9AB64A22CF42";
createNode shadingEngine -n "pasted__shadingMap5SG";
	rename -uid "B9F99803-444F-9183-9174-CBB9BAC55C3C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__shadingMap5";
	rename -uid "5B15B9E8-4D25-B21D-2BE2-CE99E20A5EE8";
	setAttr ".sc" -type "float3" 0.3581 0.3581 0.3581 ;
createNode surfaceShader -n "surfaceShader1";
	rename -uid "16C7FF24-4BD2-BB9C-DAFC-0CBF0E3B870D";
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "1086E1C3-4321-6EEE-1A0F-C7945E011AD7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "48832281-4FBE-6205-6164-F08D82FE1626";
createNode surfaceShader -n "surfaceShader2";
	rename -uid "9C00139A-40EB-4152-F57F-CD8F10A6F872";
createNode shadingEngine -n "surfaceShader2SG";
	rename -uid "CBEC22FA-4E80-FC6E-53EB-2181C2985EF0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "25174B01-40A0-2230-8568-6598AFA33CE9";
createNode surfaceShader -n "surfaceShader3";
	rename -uid "F6D970EE-4AFF-7419-4ADE-60B069447EA7";
createNode shadingEngine -n "surfaceShader3SG";
	rename -uid "27CDBE37-4DBF-9163-3329-4E9F6ECE7CC3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "D7763DE5-4544-A0FE-E450-3CBBB2F42777";
createNode surfaceShader -n "surfaceShader4";
	rename -uid "82B5AF1B-4EE5-5281-052D-DC95DD8C24AA";
createNode shadingEngine -n "surfaceShader4SG";
	rename -uid "8445BFF1-4806-5D7A-16D3-BA9FCEDA4D5E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "E0F61E94-48CB-7112-0638-B3BD188237CD";
createNode lambert -n "lambert10";
	rename -uid "296900F8-4F01-E22D-3989-17AF213C7F41";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert10SG";
	rename -uid "2D40CCC7-4346-59DA-82BD-52BB419E4A6E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "3E5558D0-4DB0-D4CD-2DBE-7BA754482BC0";
createNode surfaceShader -n "surfaceShader5";
	rename -uid "FD1FD954-48D1-3269-14BC-499F52E779D2";
createNode shadingEngine -n "surfaceShader5SG";
	rename -uid "7ED3B731-4901-312E-5286-139F9F676925";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "EDDB6125-4F17-5173-9A3B-2285E0558CAB";
createNode surfaceShader -n "surfaceShader6";
	rename -uid "29C8BDB5-4D1C-4AC2-73BB-9F9275C8E50F";
createNode shadingEngine -n "surfaceShader6SG";
	rename -uid "A9866F4F-4BEC-0A8A-95D8-008BDBB59880";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
	rename -uid "328CA83C-4F66-8624-4CFC-6AA93ABEB911";
createNode shadingMap -n "shadingMap6";
	rename -uid "C85B51D3-4B2C-870A-4108-20ACEFE8CCE7";
createNode shadingEngine -n "shadingMap6SG";
	rename -uid "3C8E9356-42CB-AA3B-1FEC-0FB9C29001F3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
	rename -uid "33FF89FA-4466-4831-C88D-66915AA623E6";
createNode surfaceShader -n "surfaceShader7";
	rename -uid "C41F3F13-4A55-12C3-891D-18A49C4A5582";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "surfaceShader7SG";
	rename -uid "311EAD4C-4F21-39FE-E171-77B5862ACB80";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "26F127C4-4D7A-204C-062B-1B9402A261EF";
createNode materialInfo -n "pasted__materialInfo16";
	rename -uid "61F1108F-48DF-209E-2D4C-B29D864EC90A";
createNode shadingEngine -n "pasted__surfaceShader1SG";
	rename -uid "E9E32191-4B69-8840-586C-C789D6DAB868";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "pasted__surfaceShader1";
	rename -uid "C3538A87-4608-0D71-880E-6588DFAE2FB3";
createNode materialInfo -n "pasted__materialInfo21";
	rename -uid "CF5FE9E4-4678-54FA-CB47-4A8B595FF82C";
createNode shadingEngine -n "pasted__surfaceShader5SG";
	rename -uid "85BCE6A9-4376-DB46-7FFC-C7BE7F29F493";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "pasted__surfaceShader5";
	rename -uid "994D5A7C-4CFE-34C8-EAA6-B68DE528DD6E";
createNode materialInfo -n "pasted__materialInfo24";
	rename -uid "59B906D0-4633-74E6-E2A4-1187ED39201E";
createNode shadingEngine -n "pasted__surfaceShader7SG";
	rename -uid "CA9A6DDD-4945-2D56-3B42-7BBD7F6B46AB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "pasted__surfaceShader7";
	rename -uid "A2E4FF43-4681-CF91-3919-24AC4D6C5C59";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode shadingMap -n "shadingMap7";
	rename -uid "3799319E-4FD7-CB50-0FD5-7F9E97D4BFFB";
createNode shadingEngine -n "shadingMap7SG";
	rename -uid "4F68CB85-4811-0FD7-9025-5EA47F2E87BF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "4C65FF25-43FD-AF29-BBA1-B9920D47DB35";
createNode lambert -n "lambert11";
	rename -uid "509FE060-4D8E-8648-5208-F79296206F67";
	setAttr ".c" -type "float3" 0.3581 0.3581 0.3581 ;
createNode shadingEngine -n "lambert11SG";
	rename -uid "D9CD06F4-4F34-78BE-F806-01B4223C3679";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
	rename -uid "1B12DB75-42D9-1A79-DB3C-6D945D023EBE";
createNode materialInfo -n "pasted__materialInfo26";
	rename -uid "E41C0692-46F1-932E-3E03-DABC94325C55";
createNode shadingEngine -n "pasted__lambert11SG";
	rename -uid "DF969E72-465C-CFE9-423E-9D98D643B66A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert11";
	rename -uid "27A3F3FE-4C61-A4CA-A275-9D97E65E8212";
	setAttr ".c" -type "float3" 0.3581 0.3581 0.3581 ;
createNode lambert -n "lambert12";
	rename -uid "C9E3FA8B-4368-7833-7457-76B9B567A232";
	setAttr ".c" -type "float3" 0.1934 0.1934 0.1934 ;
createNode shadingEngine -n "lambert12SG";
	rename -uid "B064B2D6-497B-3825-C2D3-9293752B4500";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo27";
	rename -uid "980E460B-404D-B1BB-FC56-3F8C0F3A4960";
createNode phongE -n "phongE1";
	rename -uid "39B6A589-4876-4E87-6D6A-BD836ED6B981";
createNode shadingEngine -n "phongE1SG";
	rename -uid "416896CD-484E-D4CB-CC84-C8AC5F981B85";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo28";
	rename -uid "30AEB002-4160-3798-D01A-048F33A5D979";
createNode phongE -n "phongE2";
	rename -uid "BEAC3D27-4935-E932-3970-EF9F2ADDC98C";
	setAttr ".c" -type "float3" 0.2543 0.2493 0.2493 ;
createNode shadingEngine -n "phongE2SG";
	rename -uid "0BCE5F36-487C-7316-7B29-41AC0223A637";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo29";
	rename -uid "FE80F6FC-4FA7-778B-35FC-7099D180007C";
createNode phongE -n "phongE3";
	rename -uid "F2CD04F2-45B3-1500-5463-FFA6F94F3560";
createNode shadingEngine -n "phongE3SG";
	rename -uid "15B9BE21-4036-50A3-B573-6FAB35961F80";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo30";
	rename -uid "1E004B7D-4822-2D0F-39DD-70B9AFD92F10";
createNode materialInfo -n "pasted__materialInfo29";
	rename -uid "5DDDAB9A-405A-B158-D393-A78B8E9B8C2B";
createNode shadingEngine -n "pasted__phongE2SG";
	rename -uid "88BABC31-4D82-89C6-78EE-E8ACD577CA60";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE2";
	rename -uid "6576FF26-43CB-4BC0-F3A5-5396F8F1E251";
	setAttr ".c" -type "float3" 0.2543 0.2493 0.2493 ;
createNode materialInfo -n "pasted__materialInfo27";
	rename -uid "F95F43AB-4DA3-023B-81CA-1C925291B43E";
createNode shadingEngine -n "pasted__lambert12SG";
	rename -uid "6BECA371-4321-D871-96BE-D48CA6B237C6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert12";
	rename -uid "76986698-4C01-0F4F-A7B7-6CA26FE40102";
	setAttr ".c" -type "float3" 0.1934 0.1934 0.1934 ;
createNode polyCube -n "pasted__pasted__polyCube1";
	rename -uid "AB31E917-44CB-9441-C78E-81BA887C5DD5";
	setAttr ".cuv" 4;
createNode polySplitRing -n "pasted__pasted__polySplitRing2";
	rename -uid "9773A855-4C32-FE9D-D9C7-FB8C338DC6AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 26 "e[11]" "e[13]" "e[15]" "e[18]" "e[61]" "e[63]" "e[65]" "e[68]" "e[91]" "e[93]" "e[95]" "e[98]" "e[111]" "e[113]" "e[115]" "e[118]" "e[196]" "e[212]" "e[228]" "e[244]" "e[260]" "e[276]" "e[292]" "e[308]" "e[324]" "e[340]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -32.969841959822759 17.918645709383842 20.385994501529055 1;
	setAttr ".wt" 0.90544366836547852;
	setAttr ".dr" no;
	setAttr ".re" 61;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 5;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing1";
	rename -uid "557F590B-4CB2-4E2F-0F7C-F8BDC45D9807";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[1]" "e[3]" "e[5]" "e[8]" "e[31]" "e[33]" "e[35]" "e[38]" "e[51]" "e[53]" "e[55]" "e[58]" "e[71]" "e[73]" "e[75]" "e[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -32.969841959822759 17.918645709383842 20.385994501529055 1;
	setAttr ".wt" 0.23876383900642395;
	setAttr ".re" 71;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 5;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "pasted__pasted__polyBevel1";
	rename -uid "78037184-4B4A-0814-8EA8-58A6C4BFB928";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -32.969841959822759 24.724036187309963 20.385994501529055 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "pasted__pasted__polyCube2";
	rename -uid "EE7F265A-4EF1-49E9-97BB-0EB351010414";
	setAttr ".w" 10;
	setAttr ".h" 2;
	setAttr ".d" 10;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__materialInfo12";
	rename -uid "695080C2-4151-2E32-6755-ED9BBF511984";
createNode shadingEngine -n "pasted__pasted__shadingMap2SG";
	rename -uid "CE8368EB-4A12-0A61-3859-99BC5B544CAD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__pasted__shadingMap2";
	rename -uid "B9CC7F9A-4180-F5F9-9CF6-A0A61E74E320";
	setAttr ".sc" -type "float3" 0.3344 0.3344 0.3344 ;
createNode polySplitRing -n "pasted__pasted__polySplitRing6";
	rename -uid "70EA743D-4727-9446-D115-10BB4939AFE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[74:79]" "e[98:103]" "e[110]" "e[112]" "e[117]" "e[119]" "e[162]" "e[174]" "e[190]" "e[208]";
	setAttr ".ix" -type "matrix" 14 0 0 0 0 7 0 0 0 0 2 0 -33.025279124602775 20.524717464737055 14.444712737846608 1;
	setAttr ".wt" 0.62000977993011475;
	setAttr ".dr" no;
	setAttr ".re" 162;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing5";
	rename -uid "17F7A48C-4CD1-D3A1-6A07-36A241416F13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[0]" "e[5]" "e[10]" "e[15]" "e[20]" "e[25]" "e[30]" "e[35]" "e[40]" "e[45]" "e[126]" "e[134]" "e[164]" "e[187]";
	setAttr ".ix" -type "matrix" 14 0 0 0 0 7 0 0 0 0 2 0 -33.025279124602775 20.524717464737055 14.444712737846608 1;
	setAttr ".wt" 0.81710022687911987;
	setAttr ".dr" no;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing4";
	rename -uid "128FB31B-4E8E-BBB1-8F04-6BB3C3EAB9FE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[50:55]" "e[92:97]" "e[114]" "e[121]" "e[128]" "e[148]";
	setAttr ".ix" -type "matrix" 14 0 0 0 0 7 0 0 0 0 2 0 -33.025279124602775 20.524717464737055 14.444712737846608 1;
	setAttr ".wt" 0.17798322439193726;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing3";
	rename -uid "8591F199-4CD7-8980-C81E-9FA1B1DECE5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[68:73]" "e[104:109]" "e[111]" "e[113]" "e[118]" "e[120]";
	setAttr ".ix" -type "matrix" 14 0 0 0 0 7 0 0 0 0 2 0 -33.025279124602775 20.524717464737055 14.444712737846608 1;
	setAttr ".wt" 0.50936698913574219;
	setAttr ".dr" no;
	setAttr ".re" 105;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__pasted__polyTweak1";
	rename -uid "758ACC0A-43FF-AC1B-7CEE-BD96E992D07F";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk";
	setAttr ".tk[2]" -type "float3" 0 4.4703484e-08 0 ;
	setAttr ".tk[3]" -type "float3" 0 4.4703484e-08 0 ;
	setAttr ".tk[12]" -type "float3" -0.0025197486 -0.032089081 -0.10116969 ;
	setAttr ".tk[13]" -type "float3" -0.0025197486 -0.032089081 -0.10116969 ;
	setAttr ".tk[14]" -type "float3" -0.0025197486 -0.032089081 -0.10116969 ;
	setAttr ".tk[15]" -type "float3" -0.0025197486 -0.032089081 -0.10116969 ;
	setAttr ".tk[16]" -type "float3" -0.0025197486 -0.032089081 -0.10116969 ;
	setAttr ".tk[17]" -type "float3" -0.0025197486 -0.032089081 -0.10116969 ;
	setAttr ".tk[18]" -type "float3" -0.018808374 -0.18857428 -0.18355298 ;
	setAttr ".tk[19]" -type "float3" -0.018808374 -0.18857428 -0.18355298 ;
	setAttr ".tk[20]" -type "float3" -0.018808374 -0.18857428 -0.18355298 ;
	setAttr ".tk[21]" -type "float3" -0.018808374 -0.18857428 -0.18355298 ;
	setAttr ".tk[22]" -type "float3" -0.018808374 -0.18857428 -0.18355298 ;
	setAttr ".tk[23]" -type "float3" -0.018808374 -0.18857428 -0.18355298 ;
	setAttr ".tk[24]" -type "float3" -0.0066447253 -0.047752839 -0.084597953 ;
	setAttr ".tk[25]" -type "float3" -0.0066447253 -0.047752839 -0.084597953 ;
	setAttr ".tk[26]" -type "float3" -0.0066447253 -0.047752839 -0.084597953 ;
	setAttr ".tk[27]" -type "float3" -0.0066447253 -0.047752839 -0.084597953 ;
	setAttr ".tk[28]" -type "float3" -0.0066447253 -0.047752839 -0.084597953 ;
	setAttr ".tk[29]" -type "float3" -0.0066447253 -0.047752839 -0.084597953 ;
	setAttr ".tk[30]" -type "float3" 0.0080793398 0.072539985 -0.19848944 ;
	setAttr ".tk[31]" -type "float3" 0.0080793398 0.072539985 -0.19848944 ;
	setAttr ".tk[32]" -type "float3" 0.0080793398 0.072539985 -0.19848944 ;
	setAttr ".tk[33]" -type "float3" 0.0080793398 0.072539985 -0.19848944 ;
	setAttr ".tk[34]" -type "float3" 0.0080793398 0.072539985 -0.19848944 ;
	setAttr ".tk[35]" -type "float3" 0.0080793398 0.072539985 -0.19848944 ;
	setAttr ".tk[36]" -type "float3" -0.0012842256 -0.021644078 0.050641131 ;
	setAttr ".tk[37]" -type "float3" -0.0012842256 -0.021644078 0.050641131 ;
	setAttr ".tk[38]" -type "float3" -0.0012842256 -0.021644078 0.050641131 ;
	setAttr ".tk[39]" -type "float3" -0.0012842256 -0.021644078 0.050641131 ;
	setAttr ".tk[40]" -type "float3" -0.0012842256 -0.021644078 0.050641131 ;
	setAttr ".tk[41]" -type "float3" -0.0012842256 -0.021644078 0.050641131 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.063933931 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.063933931 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.063933931 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.063933931 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.063933931 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.063933931 ;
createNode polyCube -n "pasted__pasted__polyCube3";
	rename -uid "33A4A889-42F5-F2A3-0A8E-C8B38AE29C78";
	setAttr ".sw" 5;
	setAttr ".sh" 3;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__materialInfo13";
	rename -uid "26431D89-42A9-148D-71A1-8BAC79260B4D";
createNode shadingEngine -n "pasted__pasted__shadingMap3SG";
	rename -uid "AFE4ABD0-48DF-7328-44CC-94B08BAD3668";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__pasted__shadingMap3";
	rename -uid "7AE4034A-4403-9344-2F1A-E59F98A39873";
	setAttr ".sc" -type "float3" 0.3123 0.3123 0.3123 ;
createNode polyBevel3 -n "pasted__pasted__polyBevel3";
	rename -uid "F4EE4466-4FB4-5167-AE19-1396D2B57324";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" -1.0956041408533839 0 0 0 0 1.1094779127295713 0 0 0 0 0.70251905331807196 0
		 -32.939190846783049 16.543903996729433 17.618592322037845 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "pasted__pasted__polyBevel2";
	rename -uid "2448B621-4932-29FE-FEF4-32A5C993FA44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.1002434952733506 0 0 0 0 1.1094779127295713 0 0 0 0 0.70251905331807196 0
		 -32.878808362684509 16.543903996729433 17.618592322037845 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "pasted__pasted__polyCube4";
	rename -uid "14E79246-425F-7320-9013-7E8117A0149B";
	setAttr ".w" 12;
	setAttr ".d" 12;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__materialInfo14";
	rename -uid "10C5F5B2-4F42-989F-20FC-878E81D5CA4A";
createNode shadingEngine -n "pasted__pasted__shadingMap4SG";
	rename -uid "C83028AE-4C48-5D74-2254-57A62FE2DDA6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__pasted__shadingMap4";
	rename -uid "4D95343D-4049-B437-9A73-1F944E591D3F";
	setAttr ".sc" -type "float3" 0.3581 0.3581 0.3581 ;
createNode polyBevel3 -n "pasted__pasted__polyBevel5";
	rename -uid "F423C009-4FAF-8D01-82DA-8CA8E6087D02";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2071422664147216 0 0 0 0 1 0 -38.331170400992505 16.682437011231084 11.608094519674717 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "pasted__pasted__polyBevel4";
	rename -uid "DBB4AA53-4009-BA0C-63E6-B894FC4EB6BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2071422664147216 0 0 0 0 1 0 -38.331170400992505 16.682437011231084 11.608094519674717 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "pasted__pasted__polyTweak4";
	rename -uid "2615C7AA-40F0-07D0-40F3-0690F6420DA9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0.087500989 0.015393255 -0.087500989 ;
	setAttr ".tk[1]" -type "float3" -0.087500989 0.015393255 -0.087500989 ;
	setAttr ".tk[6]" -type "float3" 0.087500989 0.015393255 0.087500989 ;
	setAttr ".tk[7]" -type "float3" -0.087500989 0.015393255 0.087500989 ;
	setAttr ".tk[12]" -type "float3" -0.0028891456 -0.1321518 0.0028891456 ;
	setAttr ".tk[13]" -type "float3" 0.0028891456 -0.1321518 0.0028891456 ;
	setAttr ".tk[14]" -type "float3" 0.0028891456 -0.1321518 -0.0028891456 ;
	setAttr ".tk[15]" -type "float3" -0.0028891456 -0.1321518 -0.0028891456 ;
createNode polyConnectComponents -n "pasted__pasted__polyConnectComponents2";
	rename -uid "CCA9FD13-46A6-2076-292D-DCB288861560";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[14:15]";
createNode polyTweak -n "pasted__pasted__polyTweak3";
	rename -uid "DABB5EB0-4C43-CDCE-579C-3CB09BF1B619";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.093728662 0.047720648 -0.093728662
		 -0.093728662 0.047720648 -0.093728662 -0.093728662 0.047720648 0.093728662 0.093728662
		 0.047720648 0.093728662;
createNode polyConnectComponents -n "pasted__pasted__polyConnectComponents1";
	rename -uid "E97D2CC6-431F-7A76-C78B-4D841A1D326F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
createNode polyTweak -n "pasted__pasted__polyTweak2";
	rename -uid "DBF8E8A1-4896-8D36-EF20-EF9B61444DF5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0.20424601 0 -0.20424601 ;
	setAttr ".tk[1]" -type "float3" -0.20424601 0 -0.20424601 ;
	setAttr ".tk[6]" -type "float3" 0.20424601 0 0.20424601 ;
	setAttr ".tk[7]" -type "float3" -0.20424601 0 0.20424601 ;
createNode polyCube -n "pasted__pasted__polyCube5";
	rename -uid "672CBBB3-47C1-1994-93CA-FB86D44F2ACD";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__materialInfo15";
	rename -uid "28ADD91C-469B-5685-EC3A-6CA6F27CD5B0";
createNode shadingEngine -n "pasted__pasted__shadingMap5SG";
	rename -uid "28A61BC5-43F9-3D9E-637C-059DC265969A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__pasted__shadingMap5";
	rename -uid "BF5D192E-4F28-A3FE-6BEA-EFB45ADFB73D";
	setAttr ".sc" -type "float3" 0.3581 0.3581 0.3581 ;
createNode polySplitRing -n "pasted__pasted__polySplitRing8";
	rename -uid "BA7A73E9-4CF7-8230-F69C-3F9973FD3F38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.076763160873712558 0 0 0 0 1 0 -29.631700620646704 16.024490170801744 4.1285490940212952 1;
	setAttr ".wt" 0.48949456214904785;
	setAttr ".re" 91;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing7";
	rename -uid "226766E0-4832-B584-3453-A7A38D1BEB20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[160:179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.076763160873712558 0 0 0 0 1 0 -29.631700620646704 16.024490170801744 4.1285490940212952 1;
	setAttr ".wt" 0.43165400624275208;
	setAttr ".re" 176;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__pasted__polyTweak7";
	rename -uid "35E9FCD6-4F45-0168-C07C-BC84B8DD048D";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[81:100]" -type "float3"  0.046598118 0 -0.015140616
		 0.039638709 0 -0.028799169 0.028799197 0 -0.039638709 0.015140626 0 -0.046597991
		 0 0 -0.048996083 -0.015140626 0 -0.046597991 -0.028799197 0 -0.039638609 -0.039638709
		 0 -0.02879918 -0.046598118 0 -0.015140616 -0.048996117 0 1.168158e-08 -0.046598118
		 0 0.015140634 -0.039638709 0 0.028799169 -0.028799197 0 0.039638679 -0.015140626
		 0 0.046597991 0 0 0.048996083 0.015140626 0 0.046597991 0.028799197 0 0.039638679
		 0.039638709 0 0.028799169 0.046598118 0 0.015140634 0.048996117 0 1.168158e-08;
createNode polyConnectComponents -n "pasted__pasted__polyConnectComponents3";
	rename -uid "3909467B-41B1-D95B-FA7F-B49CE2DF38C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
createNode polyTweak -n "pasted__pasted__polyTweak6";
	rename -uid "6AC1D7F5-4A22-771C-B38B-EAB31DBEB347";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[0]" -type "float3" 0.10213028 -0.5144726 -0.033184104 ;
	setAttr ".tk[1]" -type "float3" 0.08687716 -0.5144726 -0.063119948 ;
	setAttr ".tk[2]" -type "float3" 0.063119978 -0.5144726 -0.08687716 ;
	setAttr ".tk[3]" -type "float3" 0.033184133 -0.5144726 -0.10213022 ;
	setAttr ".tk[4]" -type "float3" 0 -0.5144726 -0.10738607 ;
	setAttr ".tk[5]" -type "float3" -0.033184133 -0.5144726 -0.10213022 ;
	setAttr ".tk[6]" -type "float3" -0.063119978 -0.5144726 -0.086877137 ;
	setAttr ".tk[7]" -type "float3" -0.08687716 -0.5144726 -0.063119933 ;
	setAttr ".tk[8]" -type "float3" -0.10213028 -0.5144726 -0.033184104 ;
	setAttr ".tk[9]" -type "float3" -0.10738604 -0.5144726 2.5602828e-08 ;
	setAttr ".tk[10]" -type "float3" -0.10213028 -0.5144726 0.033184156 ;
	setAttr ".tk[11]" -type "float3" -0.08687716 -0.5144726 0.063119948 ;
	setAttr ".tk[12]" -type "float3" -0.063119978 -0.5144726 0.08687719 ;
	setAttr ".tk[13]" -type "float3" -0.033184133 -0.5144726 0.10213022 ;
	setAttr ".tk[14]" -type "float3" 0 -0.5144726 0.10738607 ;
	setAttr ".tk[15]" -type "float3" 0.033184133 -0.5144726 0.10213022 ;
	setAttr ".tk[16]" -type "float3" 0.063119978 -0.5144726 0.08687719 ;
	setAttr ".tk[17]" -type "float3" 0.08687716 -0.5144726 0.063119948 ;
	setAttr ".tk[18]" -type "float3" 0.10213028 -0.5144726 0.033184156 ;
	setAttr ".tk[19]" -type "float3" 0.10738604 -0.5144726 2.5602828e-08 ;
	setAttr ".tk[60]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[61]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[62]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[63]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[64]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[65]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[66]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[67]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[68]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[69]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[70]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[71]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[72]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[73]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[74]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[75]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[76]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[77]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[78]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[79]" -type "float3" 0 -1.9098915 0 ;
	setAttr ".tk[80]" -type "float3" 0 -1.9098915 0 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace2";
	rename -uid "A54A8763-47A6-D271-80FD-D69BF82765DD";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.076763160873712558 0 0 0 0 1 0 -29.631700620646704 16.024490170801744 4.1285490940212952 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -29.631701 16.101254 4.1285491 ;
	setAttr ".rs" 36415;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -30.493383333678473 16.101253340826339 3.2668660829663025 ;
	setAttr ".cbx" -type "double3" -28.77001796721958 16.101253340826339 4.9902316878437745 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__pasted__polyTweak5";
	rename -uid "574A711D-4CAD-87B0-107A-80B173000B74";
	setAttr ".uopa" yes;
	setAttr -s 35 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[21]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[23]" -type "float3" 1.8626451e-09 0 -7.4505806e-09 ;
	setAttr ".tk[24]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[25]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[26]" -type "float3" -3.7252903e-09 0 -7.4505806e-09 ;
	setAttr ".tk[28]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[29]" -type "float3" 0 0 -8.8817842e-16 ;
	setAttr ".tk[30]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[33]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[34]" -type "float3" -4.4408921e-16 0 7.4505806e-09 ;
	setAttr ".tk[36]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".tk[38]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[39]" -type "float3" 0 0 -8.8817842e-16 ;
	setAttr ".tk[40]" -type "float3" -0.13154772 1.1920929e-07 0.042742398 ;
	setAttr ".tk[41]" -type "float3" -0.11190112 1.1920929e-07 0.081300966 ;
	setAttr ".tk[42]" -type "float3" -1.6488713e-08 1.1920929e-07 -2.4733062e-08 ;
	setAttr ".tk[43]" -type "float3" -0.081300899 1.1920929e-07 0.1119011 ;
	setAttr ".tk[44]" -type "float3" -0.042742454 1.1920929e-07 0.13154763 ;
	setAttr ".tk[45]" -type "float3" -1.6488713e-08 1.1920929e-07 0.13831744 ;
	setAttr ".tk[46]" -type "float3" 0.042742372 1.1920929e-07 0.13154763 ;
	setAttr ".tk[47]" -type "float3" 0.081300966 1.1920929e-07 0.11190102 ;
	setAttr ".tk[48]" -type "float3" 0.11190108 1.1920929e-07 0.081300817 ;
	setAttr ".tk[49]" -type "float3" 0.13154767 1.1920929e-07 0.042742398 ;
	setAttr ".tk[50]" -type "float3" 0.13831729 1.1920929e-07 -2.4733062e-08 ;
	setAttr ".tk[51]" -type "float3" 0.13154767 1.1920929e-07 -0.042742498 ;
	setAttr ".tk[52]" -type "float3" 0.11190108 1.1920929e-07 -0.081300907 ;
	setAttr ".tk[53]" -type "float3" 0.081300966 1.1920929e-07 -0.11190113 ;
	setAttr ".tk[54]" -type "float3" 0.042742372 1.1920929e-07 -0.13154773 ;
	setAttr ".tk[55]" -type "float3" -1.6488713e-08 1.1920929e-07 -0.13831741 ;
	setAttr ".tk[56]" -type "float3" -0.042742454 1.1920929e-07 -0.13154773 ;
	setAttr ".tk[57]" -type "float3" -0.081300899 1.1920929e-07 -0.11190113 ;
	setAttr ".tk[58]" -type "float3" -0.11190112 1.1920929e-07 -0.081300907 ;
	setAttr ".tk[59]" -type "float3" -0.13154772 1.1920929e-07 -0.042742498 ;
	setAttr ".tk[60]" -type "float3" -0.13831738 1.1920929e-07 -2.4733062e-08 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace1";
	rename -uid "A36C93A1-4E4A-EE07-ECB7-A289295D30FF";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.076763160873712558 0 0 0 0 1 0 -29.631700620646704 16.024490170801744 4.1285490940212952 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -29.631701 16.101254 4.1285491 ;
	setAttr ".rs" 51787;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -30.631700859065283 16.101253331675458 3.128548617184137 ;
	setAttr ".cbx" -type "double3" -28.631700620646704 16.101253331675458 5.1285492132305848 ;
	setAttr ".raf" no;
createNode deleteComponent -n "pasted__pasted__deleteComponent1";
	rename -uid "EAD21613-40C2-3FFE-A6F5-EBA327A1A8CC";
	setAttr ".dc" -type "componentList" 1 "f[20:39]";
createNode polyCylinder -n "pasted__pasted__polyCylinder1";
	rename -uid "B98248FC-4378-5345-A9EA-028B901F2B71";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__materialInfo25";
	rename -uid "743E948C-49A9-15C7-C960-A3A184F55326";
createNode shadingEngine -n "pasted__shadingMap7SG";
	rename -uid "AFCD1682-4042-5D87-F689-CBAA13F13786";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingMap -n "pasted__shadingMap7";
	rename -uid "F5E6D714-4BAB-99BD-A1D3-0D8F64886711";
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge1";
	rename -uid "433E65FD-4D46-963C-DD45-89BADF8BB132";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.093705282366440129 0 0 0 0 1 0 0 0 0 0.093705282366440129 0
		 -30 15 5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -30.203356 14.963325 5 ;
	setAttr ".rs" 39402;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -30.453563964821036 14.963324584066868 4.9531473588167803 ;
	setAttr ".cbx" -type "double3" -29.953147358816778 14.963324584066868 5.0468526411832197 ;
createNode polyTweak -n "pasted__pasted__polyTweak8";
	rename -uid "D73E921A-4F19-0936-D3BE-C5945D5CA5D3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  -4.3403244 -0.036675416 -0.38343894
		 3.7858605e-14 -0.036675416 0 -4.3403244 -0.036675416 0.38343894 3.7858605e-14 -0.036675416
		 0;
createNode polyPlane -n "pasted__pasted__polyPlane2";
	rename -uid "14724303-4F75-267B-9096-419599B63484";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode materialInfo -n "pasted__pasted__materialInfo16";
	rename -uid "8B3645B4-430B-04AC-8A79-26BD0127D7D3";
createNode shadingEngine -n "pasted__pasted__surfaceShader1SG";
	rename -uid "B81DD0E1-46A6-6E0E-F70F-969B732C2EC1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "pasted__pasted__surfaceShader1";
	rename -uid "5B9E4F23-4B6B-B19D-0455-2DA8989F64AD";
createNode polyExtrudeEdge -n "pasted__pasted__polyExtrudeEdge2";
	rename -uid "FD06EFFC-4A25-FF82-FF85-9A997F6465A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.094 0 0 0 0 1 0 0 0 0 0.094 0 -30 14.964062831734834 5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -29.67452 14.964063 5 ;
	setAttr ".rs" 45866;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -30.047 14.964062831734834 4.9608367660045625 ;
	setAttr ".cbx" -type "double3" -29.302042362213136 14.964062831734834 5.0391632339954375 ;
createNode materialInfo -n "pasted__pasted__materialInfo21";
	rename -uid "1399D7FA-46EE-744D-2509-369CBCE3284A";
createNode shadingEngine -n "pasted__pasted__surfaceShader5SG";
	rename -uid "D34BC01F-4515-5C52-DF11-D08C0EFDFE2F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "pasted__pasted__surfaceShader5";
	rename -uid "E7B83EE3-4BB0-9F67-6ECD-8CBB3658C284";
createNode polyDisc -n "pasted__pasted__polyDisc1";
	rename -uid "39BF9580-41A9-D38C-775E-BD85995E196F";
createNode materialInfo -n "pasted__pasted__materialInfo24";
	rename -uid "3527EFB0-423E-3B68-472F-18871CB5AD5F";
createNode shadingEngine -n "pasted__pasted__surfaceShader7SG";
	rename -uid "171DE97B-4A41-8EFD-C3A4-42ADA6D0E62C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "pasted__pasted__surfaceShader7";
	rename -uid "19A70BA3-46CA-8782-F034-2890155AEBCC";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent6";
	rename -uid "438F14D9-414C-A25F-ACEB-0FBB929B03B8";
	setAttr ".dc" -type "componentList" 1 "e[68:69]";
createNode polyConnectComponents -n "pasted__pasted__polyConnectComponents6";
	rename -uid "31C2FE44-4EB6-947E-C19F-859E7C800CF4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64:67]";
	setAttr ".aef" 2;
createNode polyConnectComponents -n "pasted__pasted__polyConnectComponents5";
	rename -uid "A0E2D3B4-4F72-26D5-C0B8-8AB065429347";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60:63]";
	setAttr ".aef" 2;
createNode deleteComponent -n "pasted__pasted__deleteComponent5";
	rename -uid "A35E2A28-49DE-7FB7-C9E0-97BC420CAFBF";
	setAttr ".dc" -type "componentList" 1 "e[69]";
createNode deleteComponent -n "pasted__pasted__deleteComponent4";
	rename -uid "E1E1F18B-4DF4-2DEC-0276-70A0F62D9D89";
	setAttr ".dc" -type "componentList" 1 "e[68]";
createNode polyConnectComponents -n "pasted__pasted__polyConnectComponents4";
	rename -uid "76FCFDCD-4B1A-7089-40A5-F5B0580D41CC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60:63]";
	setAttr ".aef" 2;
createNode polyBridgeEdge -n "pasted__pasted__polyBridgeEdge4";
	rename -uid "CE98CBE3-4A5F-B589-EBA2-28A18482E266";
	setAttr ".ics" -type "componentList" 2 "e[40]" "e[52]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 18 0 0 0 0 16 0 -32.590258054934452 20.533422390241313 -10.629717442632284 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 26;
	setAttr ".sv2" 31;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "pasted__pasted__polyBridgeEdge3";
	rename -uid "036E292B-4F73-73B3-49C5-CAA64CDD3588";
	setAttr ".ics" -type "componentList" 2 "e[45]" "e[57]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 18 0 0 0 0 16 0 -32.590258054934452 20.533422390241313 -10.629717442632284 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 27;
	setAttr ".sv2" 29;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "pasted__pasted__polyBridgeEdge2";
	rename -uid "C000A12A-4458-CD30-87B4-EC80AFCC69EA";
	setAttr ".ics" -type "componentList" 4 "e[37]" "e[44]" "e[49]" "e[56]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 18 0 0 0 0 16 0 -32.590258054934452 20.533422390241313 -10.629717442632284 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 24;
	setAttr ".sv2" 30;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "pasted__pasted__polyBridgeEdge1";
	rename -uid "5EF52A7D-46D9-380B-6FF6-C2BBAEDE133E";
	setAttr ".ics" -type "componentList" 2 "e[37]" "e[49]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 18 0 0 0 0 16 0 -32.590258054934452 20.533422390241313 -10.629717442632284 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 25;
	setAttr ".sv2" 28;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyTweak -n "pasted__pasted__polyTweak9";
	rename -uid "F58D1B9A-4619-E1E6-F2B4-1CA95BE4F68E";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[2]" -type "float3" 0 1.6763806e-08 -1.4901161e-08 ;
	setAttr ".tk[3]" -type "float3" 0 2.0861626e-07 0 ;
	setAttr ".tk[4]" -type "float3" 0 -4.6566129e-08 -1.4901161e-08 ;
	setAttr ".tk[5]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".tk[8]" -type "float3" 0 -1.4901161e-08 -2.3003668e-07 ;
	setAttr ".tk[9]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".tk[10]" -type "float3" 0 -1.4901161e-08 2.59839e-07 ;
	setAttr ".tk[11]" -type "float3" 0 0 -4.4703484e-07 ;
	setAttr ".tk[14]" -type "float3" 0 -1.6763806e-08 1.4901161e-08 ;
	setAttr ".tk[15]" -type "float3" 0 -2.0861626e-07 0 ;
	setAttr ".tk[16]" -type "float3" 0 4.6566129e-08 1.4901161e-08 ;
	setAttr ".tk[17]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[20]" -type "float3" 0 1.4901161e-08 2.3003668e-07 ;
	setAttr ".tk[21]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".tk[22]" -type "float3" 0 1.4901161e-08 -2.59839e-07 ;
	setAttr ".tk[23]" -type "float3" 0 0 4.4703484e-07 ;
	setAttr ".tk[24]" -type "float3" 0 -0.28285274 -0.28285286 ;
	setAttr ".tk[25]" -type "float3" 0 -0.28285274 0.28285357 ;
	setAttr ".tk[26]" -type "float3" 0 0.28285271 -0.28285286 ;
	setAttr ".tk[27]" -type "float3" 0 0.28285271 0.28285357 ;
	setAttr ".tk[28]" -type "float3" 0 -0.28285322 -0.28285292 ;
	setAttr ".tk[29]" -type "float3" 0 -0.28285322 0.28285223 ;
	setAttr ".tk[30]" -type "float3" 0 0.28285319 -0.28285292 ;
	setAttr ".tk[31]" -type "float3" 0 0.28285319 0.28285223 ;
	setAttr ".tk[32]" -type "float3" 0 3.3527613e-08 -1.3969839e-08 ;
	setAttr ".tk[33]" -type "float3" 0 3.3527613e-08 1.3969839e-08 ;
	setAttr ".tk[34]" -type "float3" 0 -2.6077032e-08 1.3969839e-08 ;
	setAttr ".tk[35]" -type "float3" 0 -2.6077032e-08 -1.3969839e-08 ;
	setAttr ".tk[36]" -type "float3" 0 -2.6077032e-08 4.0978193e-08 ;
	setAttr ".tk[37]" -type "float3" 0 -2.6077032e-08 -1.3969839e-08 ;
	setAttr ".tk[38]" -type "float3" 0 -1.0244548e-08 -1.3969839e-08 ;
	setAttr ".tk[39]" -type "float3" 0 -1.0244548e-08 4.0978193e-08 ;
	setAttr ".tk[40]" -type "float3" 0 -2.6077032e-08 1.3969839e-08 ;
	setAttr ".tk[41]" -type "float3" 0 -2.6077032e-08 -1.1175871e-08 ;
	setAttr ".tk[42]" -type "float3" 0 -1.0244548e-08 -1.1175871e-08 ;
	setAttr ".tk[43]" -type "float3" 0 -1.0244548e-08 1.3969839e-08 ;
	setAttr ".tk[44]" -type "float3" 0 -1.0244548e-08 -1.3969839e-08 ;
	setAttr ".tk[45]" -type "float3" 0 -1.0244548e-08 1.3969839e-08 ;
	setAttr ".tk[46]" -type "float3" 0 -2.2351742e-08 1.5832484e-08 ;
	setAttr ".tk[47]" -type "float3" 0 -2.2351742e-08 -1.3969839e-08 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent3";
	rename -uid "EB8DAFBE-4C64-C5BA-7E0B-E788D0F8FE7B";
	setAttr ".dc" -type "componentList" 1 "f[24]";
createNode deleteComponent -n "pasted__pasted__deleteComponent2";
	rename -uid "6DCF5C8D-459A-F3EE-456F-3AB9A102355D";
	setAttr ".dc" -type "componentList" 1 "f[16]";
createNode polyCube -n "pasted__pasted__polyCube6";
	rename -uid "D0B291CA-4445-8C14-8080-828355E17634";
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__materialInfo26";
	rename -uid "63EDD1CB-4C58-9791-8B79-1BB77B040DCF";
createNode shadingEngine -n "pasted__pasted__lambert11SG";
	rename -uid "6224F932-4E22-85B2-A727-758095388A92";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__pasted__lambert11";
	rename -uid "DA2A0A4D-4F0B-5F46-427D-6A9D84D0D742";
	setAttr ".c" -type "float3" 0.3581 0.3581 0.3581 ;
createNode polyCube -n "pasted__pasted__polyCube7";
	rename -uid "FF755AA3-4E44-FE91-430D-BC96AA8F18EA";
	setAttr ".cuv" 4;
createNode polyCylinder -n "pasted__pasted__polyCylinder2";
	rename -uid "F2AF7510-4750-CCDB-3BB8-F694F14D4385";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__pasted__materialInfo27";
	rename -uid "4B65E484-47CE-DF6F-F0D9-D3912AA54D73";
createNode shadingEngine -n "pasted__pasted__lambert12SG";
	rename -uid "00C14F40-468C-3A66-1591-CC906D1407F5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__pasted__lambert12";
	rename -uid "EAFDB03E-48A8-8722-7E88-DEA4D70940FF";
	setAttr ".c" -type "float3" 0.1934 0.1934 0.1934 ;
createNode materialInfo -n "pasted__pasted__materialInfo29";
	rename -uid "6A987427-4CBF-AB64-4A4E-C5B5E0B06964";
createNode shadingEngine -n "pasted__pasted__phongE2SG";
	rename -uid "CA3B69B8-4282-F067-A36E-2DBB6B82340A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__pasted__phongE2";
	rename -uid "00D55502-4971-661B-AD03-A8AF28BBC879";
createNode polyTorus -n "pasted__pasted__polyTorus1";
	rename -uid "B81A7203-44EE-B4E5-1982-BDB10B33436D";
createNode shadingMap -n "shadingMap8";
	rename -uid "7DCD2AF4-4622-712B-499E-6A80416BD501";
createNode shadingEngine -n "shadingMap8SG";
	rename -uid "22A5880A-4691-74B9-6619-C28E05A42C5A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo31";
	rename -uid "2B3E462F-4378-1CBD-CFEA-CE82CB8600C4";
createNode phongE -n "phongE4";
	rename -uid "EB0E76E6-4654-F7A0-D56B-9BB49F1523D1";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "phongE4SG";
	rename -uid "E91E2498-437F-62D1-2A1B-D286E25D9C9D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo32";
	rename -uid "A851624B-48FB-9548-9766-559DBBC91559";
createNode phongE -n "phongE5";
	rename -uid "F916CBA2-4E95-64C3-D8A5-91B5D48A9306";
	setAttr ".c" -type "float3" 0.1178 0.1178 0.1178 ;
createNode shadingEngine -n "phongE5SG";
	rename -uid "7AD3D12A-4515-F671-43EE-BF924D70DE6C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo33";
	rename -uid "7B4AD1AB-42FC-9A06-A4E6-2181E2296D30";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace1";
	rename -uid "6EB9A2C0-47CE-E48E-D3BC-F2B81404E52E";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 28.48921271728388 0 0 0 0 11.845831737664435 0 0 0 0 11.845831737664435 0
		 38.659116052438414 0.6489107453982399 5.0642056180947179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.659115 0.64891112 10.987119 ;
	setAttr ".rs" 53900;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 25.159309536305159 -4.5379183442823843 10.987118309627267 ;
	setAttr ".cbx" -type "double3" 52.158923417616364 5.8357405411454568 10.987118309627267 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak1";
	rename -uid "D441AC56-420A-0B2C-27FC-6DB2C5FDB5D4";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[1]" -type "float3" -0.30719012 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.30719012 0 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.27119446 0 ;
	setAttr ".tk[5]" -type "float3" -0.30719012 -0.27119446 -2.682209e-07 ;
	setAttr ".tk[6]" -type "float3" 0.30719012 -0.27119446 -2.682209e-07 ;
	setAttr ".tk[7]" -type "float3" 0 -0.27119446 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.27119449 0 ;
	setAttr ".tk[9]" -type "float3" -0.30719012 0.27119449 -2.682209e-07 ;
	setAttr ".tk[10]" -type "float3" 0.30719012 0.27119449 -2.682209e-07 ;
	setAttr ".tk[11]" -type "float3" 0 0.27119449 0 ;
	setAttr ".tk[13]" -type "float3" -0.30719012 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.30719012 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.30719012 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.30719012 0 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.27119446 0 ;
	setAttr ".tk[21]" -type "float3" -0.30719012 0.27119446 0 ;
	setAttr ".tk[22]" -type "float3" 0.30719012 0.27119446 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.27119446 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.27119449 0 ;
	setAttr ".tk[25]" -type "float3" -0.30719012 -0.27119449 0 ;
	setAttr ".tk[26]" -type "float3" 0.30719012 -0.27119449 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.27119449 0 ;
	setAttr ".tk[29]" -type "float3" -0.30719012 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.30719012 0 0 ;
createNode polyCube -n "pasted__polyCube1";
	rename -uid "2DE25577-4DA4-DAF8-614E-7AA2E0CA5188";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo33";
	rename -uid "C0B7D64E-42E9-5773-11DD-1CB3E5316256";
createNode shadingEngine -n "pasted__phongE5SG";
	rename -uid "320680D5-4750-F802-82B1-0A91F524C62D";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE5";
	rename -uid "39D31496-43F6-54DB-56F8-DCAF12C68035";
createNode polyCube -n "pasted__polyCube2";
	rename -uid "15D77CD0-405C-5B4D-5CA5-3D9EA5584AAC";
	setAttr ".cuv" 4;
createNode polySphere -n "pasted__polySphere1";
	rename -uid "1FFAB711-43B6-EA2C-90A6-3AB92E976612";
createNode materialInfo -n "pasted__materialInfo32";
	rename -uid "53686672-4CF3-D857-9E09-48879DF0704F";
createNode shadingEngine -n "pasted__phongE4SG";
	rename -uid "549109F9-444B-790E-404B-D1A9963389C2";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE4";
	rename -uid "5AAEF34C-45BD-E46D-F5BE-3AB9A23D1F65";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode phongE -n "phongE6";
	rename -uid "CFA99F7C-43A0-9BB6-A4FE-C28A83AFC188";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "phongE6SG";
	rename -uid "5E619A2A-46AA-491E-DA76-C7801718F38F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo34";
	rename -uid "2B19BD4F-4B8D-3957-4487-35A95B1F1571";
createNode groupId -n "groupId2";
	rename -uid "4BD96B36-4F27-A963-A021-60BCFE9B8924";
	setAttr ".ihi" 0;
createNode phong -n "phong2";
	rename -uid "194075DC-4E97-8B6E-DCEA-7EA710AFED20";
createNode shadingEngine -n "phong2SG";
	rename -uid "D34C4C79-4F7A-EA56-FDE0-39BFEE3CAD76";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo35";
	rename -uid "A8045C26-4482-2F5F-3142-B6AAD4D954BC";
createNode polyCube -n "pasted__polyCube4";
	rename -uid "A68202D8-4734-F1C7-ED36-7894D0498E4B";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace4";
	rename -uid "FF760387-4051-F0A8-68B6-4EB596F125B9";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 49.324203543440795 0 0 0 0 28.594993900122283 0 0 0 0 2.1115119395891764 0
		 43.967438321945032 -5.6410702434098319 -27.39854210853359 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 43.967442 -5.6410713 -28.454298 ;
	setAttr ".rs" 65262;
	setAttr ".off" 6.5;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.305336550224634 -19.938567193470973 -28.454298078328179 ;
	setAttr ".cbx" -type "double3" 68.629548913520324 8.6564250022568565 -28.454298078328179 ;
createNode polyTweak -n "pasted__polyTweak2";
	rename -uid "B68EC148-436E-66C9-AB45-12993151FA8D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.01242018 0.011959681 -0.41051641
		 -0.01242018 0.011959681 -0.41051641 -0.01242018 -0.011959681 -0.41051641 0.01242018
		 -0.011959681 -0.41051641;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace3";
	rename -uid "E088CB58-4B61-FE86-D8D5-F589C5E8AE7F";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 49.324203543440795 0 0 0 0 28.594993900122283 0 0 0 0 2.1115119395891764 0
		 43.967438321945032 -5.6410702434098319 -27.39854210853359 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 43.967442 -5.6410699 -26.342787 ;
	setAttr ".rs" 39961;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 20.505336607464539 -18.738566121165427 -26.342786138739001 ;
	setAttr ".cbx" -type "double3" 67.429542976377149 7.4564264865429895 -26.342786138739001 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace2";
	rename -uid "4639CAEF-401D-2D46-8948-9EB2527C8500";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 49.324203543440795 0 0 0 0 28.594993900122283 0 0 0 0 2.1115119395891764 0
		 43.967438321945032 -5.6410702434098319 -27.39854210853359 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 43.967438 -5.6410704 -26.342787 ;
	setAttr ".rs" 40154;
	setAttr ".off" 1.2000000476837158;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.305336550224634 -19.938567193470973 -26.342786138739001 ;
	setAttr ".cbx" -type "double3" 68.629540093665426 8.6564267066513096 -26.342786138739001 ;
createNode polyCube -n "pasted__polyCube3";
	rename -uid "68900C0B-473F-47C3-1D98-568AB49B8775";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo35";
	rename -uid "48C51A73-489D-A1B0-F3B4-FB874772744C";
createNode shadingEngine -n "pasted__phong2SG";
	rename -uid "FAE63733-4F49-C2F2-7E3B-E583D2EC1BD1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "pasted__phong2";
	rename -uid "34084AC3-4B08-0229-979F-6A908E1C2B7B";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "E5B5D9F1-4A02-29A6-514D-5E98C38EA2C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 11.504751496702358 0 0 0 0 0 5.7677140286041437 0 0 -0.4188156292577796 0 0
		 -18.052502637513875 -11.63247880009982 -49.858044787086051 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPlane -n "pasted__pasted__polyPlane3";
	rename -uid "583CE794-43D8-F82B-A024-55ADE3FEE293";
	setAttr ".sh" 20;
	setAttr ".cuv" 2;
createNode phong -n "phong3";
	rename -uid "2A6ECC65-4ED1-BC20-0EA8-46AE18AE530B";
createNode shadingEngine -n "phong3SG";
	rename -uid "C5EE5443-4B25-27D0-E172-49832AB67E45";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo36";
	rename -uid "0AC35615-4A75-C002-806B-5F8A6A05B11F";
createNode phong -n "phong4";
	rename -uid "3AB4AB89-43F4-1A7C-C447-B99A31D79CD6";
	setAttr ".c" -type "float3" 0.077200003 0.077200003 0.077200003 ;
createNode shadingEngine -n "phong4SG";
	rename -uid "735B582B-46ED-EF8B-5769-C281BD021B59";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo37";
	rename -uid "BD110D9F-42D1-028F-B0BF-81ACD75F888B";
createNode phongE -n "phongE7";
	rename -uid "31CC2E8D-4DDD-D49C-63AE-DFA5C693E9D1";
createNode shadingEngine -n "phongE7SG";
	rename -uid "9B0258A1-492D-5335-1F2F-F393E6A27346";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo38";
	rename -uid "63544F1F-4B93-3B24-49AF-2D851A2072BD";
createNode phong -n "phong5";
	rename -uid "A315C3EE-4A02-B07D-FDF2-5883FC7338A1";
	setAttr ".c" -type "float3" 0.2071 0.2071 0.2071 ;
createNode shadingEngine -n "phong5SG";
	rename -uid "BF8DE66F-4E81-B2D7-FC6E-1F803A806B4B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo39";
	rename -uid "8793E2FB-4BCF-A644-698B-99BB8265D78B";
createNode lambert -n "lambert13";
	rename -uid "ED072D3F-4311-F2C2-A03F-62A2F3BFFB18";
createNode shadingEngine -n "lambert13SG";
	rename -uid "8BD56256-4EFA-03E1-E851-D39B87ADDE96";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo40";
	rename -uid "6B3A43DE-4EA4-130B-C997-59A6A29F33AE";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace5";
	rename -uid "279DC7F1-48FB-6ECB-11D4-FEAC0D44C1AF";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 12.445508468229539 0 0 0 0 18.144131309415297 0 0 0 0 1 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5635758e-07 -1.6222117e-06 -0.49999994 ;
	setAttr ".rs" 34386;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.5152550658946957 -8.241352645904449 -0.49999994039535522 ;
	setAttr ".cbx" -type "double3" 5.5152561786098619 8.2413494014809441 -0.49999994039535522 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak3";
	rename -uid "BDB9D174-454B-D96B-D99D-7E9C4171CE73";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[1]" -type "float3" -0.27648559 2.9802322e-08 0 ;
	setAttr ".tk[2]" -type "float3" 0.27648565 2.9802322e-08 0 ;
	setAttr ".tk[4]" -type "float3" 2.9802322e-08 -0.28754905 0 ;
	setAttr ".tk[5]" -type "float3" -0.27648559 -0.28754905 0 ;
	setAttr ".tk[6]" -type "float3" 0.27648565 -0.28754905 0 ;
	setAttr ".tk[7]" -type "float3" -2.9802322e-08 -0.28754905 0 ;
	setAttr ".tk[8]" -type "float3" 2.9802322e-08 0.2875492 0 ;
	setAttr ".tk[9]" -type "float3" -0.27648559 0.2875492 0 ;
	setAttr ".tk[10]" -type "float3" 0.27648565 0.2875492 0 ;
	setAttr ".tk[11]" -type "float3" -2.9802322e-08 0.2875492 0 ;
	setAttr ".tk[13]" -type "float3" -0.27648559 -2.9802322e-08 0 ;
	setAttr ".tk[14]" -type "float3" 0.27648565 -2.9802322e-08 0 ;
	setAttr ".tk[17]" -type "float3" -0.27648559 -2.9802322e-08 0 ;
	setAttr ".tk[18]" -type "float3" 0.27648565 -2.9802322e-08 0 ;
	setAttr ".tk[20]" -type "float3" 2.9802322e-08 0.28754905 0 ;
	setAttr ".tk[21]" -type "float3" -0.27648559 0.28754905 5.9604645e-08 ;
	setAttr ".tk[22]" -type "float3" 0.27648565 0.28754905 5.9604645e-08 ;
	setAttr ".tk[23]" -type "float3" -2.9802322e-08 0.28754905 0 ;
	setAttr ".tk[24]" -type "float3" 2.9802322e-08 -0.2875492 0 ;
	setAttr ".tk[25]" -type "float3" -0.27648559 -0.2875492 5.9604645e-08 ;
	setAttr ".tk[26]" -type "float3" 0.27648565 -0.2875492 5.9604645e-08 ;
	setAttr ".tk[27]" -type "float3" -2.9802322e-08 -0.2875492 0 ;
	setAttr ".tk[29]" -type "float3" -0.27648559 2.9802322e-08 0 ;
	setAttr ".tk[30]" -type "float3" 0.27648565 2.9802322e-08 0 ;
createNode polyCube -n "pasted__polyCube5";
	rename -uid "8D328948-4167-0139-DF39-6DA6812DD378";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode phong -n "phong6";
	rename -uid "0BF427DD-4A3A-E035-44CC-C9B86F64B9A6";
	setAttr ".c" -type "float3" 0.61930001 0.61930001 0.61930001 ;
createNode shadingEngine -n "phong6SG";
	rename -uid "1F64C7E1-4644-7FD6-691A-7893C6E085D7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo41";
	rename -uid "0E2C925C-422E-F1D2-0EE1-2FA22BD1C6F6";
createNode phongE -n "phongE8";
	rename -uid "64A7EA13-45C2-44CA-4116-708AC68B54D4";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "phongE8SG";
	rename -uid "71DC6974-41C5-2637-FF29-2C9A69547056";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo42";
	rename -uid "961C14CA-4ADA-646E-7C65-CD9719EC63AC";
createNode phongE -n "phongE9";
	rename -uid "275918F5-40AC-ED5B-4478-BB85A2E70506";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "phongE9SG";
	rename -uid "B5117EE4-47B7-4193-6C6C-DBA9C816FC57";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo43";
	rename -uid "901C141B-42F5-C0C0-C0E6-F1B3FCFA8BE1";
createNode phongE -n "phongE10";
	rename -uid "2BF26924-493D-3C13-3785-EE893B7320E5";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "phongE10SG";
	rename -uid "1B8F1C3F-4D58-A38B-598B-9493A6E3B5A2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo44";
	rename -uid "45B2B33A-43FF-6A89-835C-898BBD2235A7";
createNode phongE -n "phongE11";
	rename -uid "F86B48B5-4B8A-D4FC-5DE0-6FAD36944506";
	setAttr ".c" -type "float3" 0.61930001 0.61930001 0.61930001 ;
createNode shadingEngine -n "phongE11SG";
	rename -uid "59DD756A-480F-521E-A8D3-898C110D94EF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo45";
	rename -uid "2BBC7372-413C-5088-4EF9-BFAA6E52C15A";
createNode phongE -n "phongE12";
	rename -uid "EF6AC631-473F-E6B3-3EC9-9B954270D1B7";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "phongE12SG";
	rename -uid "F7DE3AB5-48FC-E0AA-FBF7-1CA6593D4AC6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo46";
	rename -uid "B7E71D4B-4CC9-5E66-F187-13B9EFAB4532";
createNode polyCylinder -n "pasted__polyCylinder1";
	rename -uid "9CEEC633-4626-700F-CA98-A597D57CCDC3";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__materialInfo46";
	rename -uid "2A33DC56-4F7F-1CC1-58C3-CFB78B37DECA";
createNode shadingEngine -n "pasted__phongE12SG";
	rename -uid "940AFB29-4D53-E12F-98A6-1184716F5261";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE12";
	rename -uid "01217CFB-4EBE-A3AF-9B63-75A55272350A";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode groupId -n "pasted__groupId3";
	rename -uid "42E4ED60-4B34-D556-199C-C78D373FA282";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phong6SG";
	rename -uid "0EA5457B-4819-3F98-1C04-C7B397EED1C6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "pasted__materialInfo41";
	rename -uid "8312E19F-463F-D814-E16E-21983BEBCCF3";
createNode phong -n "pasted__phong6";
	rename -uid "AD253977-445F-C3B4-2FC9-DF83401F7AB3";
createNode groupId -n "pasted__groupId5";
	rename -uid "C53DBF70-4834-4482-DC48-02BD0C6D2806";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phongE9SG";
	rename -uid "4EEFA495-47DF-A927-8C61-27B19504E65B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "pasted__materialInfo43";
	rename -uid "846DB032-4D22-59EC-DFD5-F687945246FA";
createNode phongE -n "pasted__phongE9";
	rename -uid "A9F00C24-453E-4496-EC1D-CDB40A26406D";
createNode groupId -n "pasted__groupId6";
	rename -uid "21047994-4544-8DED-6DA2-98ADAD02B4C5";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId7";
	rename -uid "12AE6B12-4CDA-35EE-634A-4C8729695310";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phongE10SG";
	rename -uid "483842FB-482A-CF5E-916E-6F8FFDA40CED";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo44";
	rename -uid "BB3910C6-4F11-23E3-9BE1-FE9969854661";
createNode phongE -n "pasted__phongE10";
	rename -uid "7F27142F-429A-B125-742C-59A06BCB13EA";
	setAttr ".c" -type "float3" 0.15463203 0.085077003 0.207 ;
createNode groupParts -n "pasted__groupParts4";
	rename -uid "E40030BE-4C42-0312-7E99-D1AC00AD7C36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[90:91]" "f[93:101]";
createNode groupParts -n "pasted__groupParts3";
	rename -uid "9DBE5817-496E-9993-3C52-D4BB8EBD03D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[4]" "f[9]" "f[14]" "f[17]" "f[20]" "f[32]" "f[34]" "f[39]" "f[45]" "f[55]" "f[63:64]";
createNode groupParts -n "pasted__groupParts2";
	rename -uid "6D842BEB-44A2-9B3F-0A9D-B190FC89609F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[57]" "f[59]" "f[61]";
createNode groupParts -n "pasted__groupParts1";
	rename -uid "3BEBB159-4C78-4711-B5FF-A3BFBE648602";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 24 "f[0:2]" "f[7]" "f[10:12]" "f[16]" "f[26:28]" "f[30]" "f[33]" "f[35]" "f[37]" "f[40]" "f[44]" "f[46:54]" "f[56]" "f[58]" "f[60]" "f[62]" "f[65:66]" "f[69:70]" "f[73]" "f[76]" "f[78]" "f[81:82]" "f[85]" "f[92]";
	setAttr ".irc" -type "componentList" 24 "f[3:6]" "f[8:9]" "f[13:15]" "f[17:25]" "f[29]" "f[31:32]" "f[34]" "f[36]" "f[38:39]" "f[41:43]" "f[45]" "f[55]" "f[57]" "f[59]" "f[61]" "f[63:64]" "f[67:68]" "f[71:72]" "f[74:75]" "f[77]" "f[79:80]" "f[83:84]" "f[86:91]" "f[93:101]";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace6";
	rename -uid "E688D9ED-40C1-1E28-FAFE-BAA9A383F1C5";
	setAttr ".ics" -type "componentList" 3 "f[57]" "f[59]" "f[61]";
	setAttr ".ix" -type "matrix" -39.383869590967386 0 0 0 0 -2.5151242330302819 0 0
		 0 0 -21.514513392962211 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.00095072191 1.2575625 0.00085918448 ;
	setAttr ".rs" 45459;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.077464432093436 1.2575621165151409 -10.1406379325313 ;
	setAttr ".cbx" -type "double3" 19.075562988232388 1.2575630159936597 10.142356301535225 ;
	setAttr ".raf" no;
createNode polyBevel3 -n "pasted__polyBevel2";
	rename -uid "AD617DC9-452D-FD44-6226-B5941A293BFA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" -39.383869590967386 0 0 0 0 -2.5151242330302819 0 0
		 0 0 -21.514513392962211 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "pasted__polyTweak4";
	rename -uid "787DE61D-46A2-7D52-D855-68BDD56F1DA5";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[1]" -type "float3" -0.12802139 -3.5762787e-07 3.3527613e-08 ;
	setAttr ".tk[17]" -type "float3" -0.021812662 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.083853394 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.067480542 0 -0.088418245 ;
	setAttr ".tk[22]" -type "float3" -0.059952416 3.7747583e-15 -0.21027024 ;
createNode polyCube -n "pasted__polyCube6";
	rename -uid "3039F626-46DA-1DE8-8E98-80A6388F1DB0";
	setAttr ".sw" 3;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId4";
	rename -uid "59F185E1-4612-215C-BA9C-538557D37435";
	setAttr ".ihi" 0;
createNode phongE -n "phongE13";
	rename -uid "8B5A4C36-4CD0-80C6-0CD3-C2B7E739A603";
createNode shadingEngine -n "phongE13SG";
	rename -uid "FE1209DD-45D3-40BC-50D5-638EF38DF717";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo47";
	rename -uid "2EDAE2FC-4EDE-B023-9653-38A966E91691";
createNode standardSurface -n "standardSurface2";
	rename -uid "90EADFEA-4791-956B-09F5-4F852335991E";
	setAttr ".bc" -type "float3" 0.61930001 0.61930001 0.61930001 ;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "99A8C01A-437F-79AB-B8B9-1BB92ACDE7E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo48";
	rename -uid "DA458907-46FD-0778-5E66-859B52C83FC1";
createNode phong -n "phong7";
	rename -uid "A3570681-471D-B1EE-4469-8B875067D637";
	setAttr ".c" -type "float3" 0.61930001 0.61930001 0.61930001 ;
createNode shadingEngine -n "phong7SG";
	rename -uid "040C82DA-459E-3282-0C47-2E8A00898A28";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo49";
	rename -uid "C2C733B3-4890-0BED-C8AD-1DAC66E6E4F1";
createNode shadingMap -n "shadingMap9";
	rename -uid "851B54E3-4ED9-FF48-1403-CFB94EC00AB2";
createNode shadingEngine -n "shadingMap9SG";
	rename -uid "7C669F37-4115-4263-2A8E-BD925AD77BA0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo50";
	rename -uid "23A05E5D-4740-E817-E755-7BBF53461629";
createNode phong -n "phong8";
	rename -uid "C3AD0691-4C1D-A2E1-F606-ABA790A078E8";
createNode shadingEngine -n "phong8SG";
	rename -uid "33F6CB37-42B8-5744-0F25-B2901753DA3B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo51";
	rename -uid "094BC55A-4570-58A6-E150-ACB05E39B84B";
createNode phongE -n "phongE14";
	rename -uid "5644CA94-4B28-EB7E-7778-84820AD34DD9";
	setAttr ".c" -type "float3" 0.1069 0.1069 0.1069 ;
createNode shadingEngine -n "phongE14SG";
	rename -uid "4C8D5D2C-4428-E6CD-7660-8DB6150457B1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo52";
	rename -uid "D1FC1CBF-4C8A-6B5B-8038-DA84649A90B5";
createNode phongE -n "phongE15";
	rename -uid "7FBEC7D4-4261-CE3A-B1A4-B88671A983BA";
	setAttr ".c" -type "float3" 0.1069 0.1069 0.1069 ;
createNode shadingEngine -n "phongE15SG";
	rename -uid "CCA42526-4491-D71F-9EE3-EBBD5C21A1F6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo53";
	rename -uid "0D944B17-45A4-0D3A-735F-5391FD1C1836";
createNode phongE -n "phongE16";
	rename -uid "A442E876-42C6-9DB5-3A4D-4CA69FB2F5EC";
	setAttr ".c" -type "float3" 0.1934 0.1934 0.1934 ;
createNode shadingEngine -n "phongE16SG";
	rename -uid "A1A3FFCE-4503-4D99-779B-F89D6BEB7ACF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo54";
	rename -uid "90670CBE-4348-489A-D134-5EA921F1E161";
createNode phongE -n "phongE17";
	rename -uid "5C7AD23F-4268-D71F-DC12-D39DBED2E794";
	setAttr ".c" -type "float3" 0.1293 0.1293 0.1293 ;
createNode shadingEngine -n "phongE17SG";
	rename -uid "4067BA07-4DB8-EF32-4665-8AA988C26453";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo55";
	rename -uid "53D6810F-4BC8-9D7F-949A-EEB1B44B0D18";
createNode polyCylinder -n "pasted__polyCylinder2";
	rename -uid "8F84F2BA-43E3-4F8F-8CE6-B9A94BC9F52C";
	setAttr ".sa" 40;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__materialInfo52";
	rename -uid "31D89326-40E7-BCD3-B77F-758D6DBFBF05";
createNode shadingEngine -n "pasted__phongE14SG";
	rename -uid "7916CA13-417C-70FD-FD97-BEB1421B43C6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE14";
	rename -uid "A1FC459C-458D-CA76-A727-009DE19C27D6";
	setAttr ".c" -type "float3" 0.1069 0.1069 0.1069 ;
createNode polyCylinder -n "pasted__polyCylinder3";
	rename -uid "09AA7EA7-4A89-1995-74EF-6FA87504F19D";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__materialInfo53";
	rename -uid "7B42F5A8-41E1-1C1F-11C8-CA9D1469A987";
createNode shadingEngine -n "pasted__phongE15SG";
	rename -uid "FFD94B96-42DF-1672-EAF2-8D9D7CD56F80";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE15";
	rename -uid "E05C2DA7-4977-6D05-D078-B68375D4CCB3";
	setAttr ".c" -type "float3" 0.1069 0.1069 0.1069 ;
createNode polyBevel3 -n "pasted__polyBevel3";
	rename -uid "6FE00D09-4FD5-215A-EF16-CD865DBA565A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 73.06601313691479 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCone -n "pasted__polyCone1";
	rename -uid "017E7827-45B8-1CEF-6D44-279D648948FF";
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__materialInfo51";
	rename -uid "753EB28E-43D0-3AD3-2D7D-83ADCCCB5099";
createNode shadingEngine -n "pasted__phong8SG";
	rename -uid "0941D567-4CBC-899A-E80F-94840F7AEC5D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "pasted__phong8";
	rename -uid "8A3FB556-45C9-6263-08C9-C8BCB943E566";
createNode polyBevel3 -n "pasted__polyBevel4";
	rename -uid "7FB27EFC-4BA3-EB68-9048-98B8C5E11AF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "pasted__polyCube7";
	rename -uid "AFB929D2-4B3E-623C-FDBF-909623C5A6BA";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo54";
	rename -uid "B41922FF-4AE4-EFAA-1303-F280E55113DC";
createNode shadingEngine -n "pasted__phongE16SG";
	rename -uid "FE4151D6-48ED-AD91-676C-34879CB7B6B5";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE16";
	rename -uid "0A6BAFCC-47AE-7DBB-17AC-4ABB3316905E";
createNode polyTorus -n "pasted__polyTorus1";
	rename -uid "938D28AA-4B6D-0999-2457-5A929BDA1288";
createNode materialInfo -n "pasted__materialInfo55";
	rename -uid "A8131933-4187-5271-BC76-0FBC6346ACCD";
createNode shadingEngine -n "pasted__phongE17SG";
	rename -uid "B3567198-488D-C233-43B3-22B3FDBF7989";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE17";
	rename -uid "A704C930-48D6-F4A5-C76D-A9939E8531D5";
	setAttr ".c" -type "float3" 0.1293 0.1293 0.1293 ;
createNode phongE -n "phongE18";
	rename -uid "E867B169-4BAD-13D7-06F2-55A313C284B4";
	setAttr ".c" -type "float3" 0.1506 0.1539 0.012 ;
createNode shadingEngine -n "phongE18SG";
	rename -uid "B38DF85A-4DB1-A766-5886-52970B7A0483";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo56";
	rename -uid "4C1D092C-4E42-02C5-DCD6-ABB73F949032";
createNode phongE -n "phongE19";
	rename -uid "D310EA45-48D6-52BB-0C80-538623FE5C89";
createNode shadingEngine -n "phongE19SG";
	rename -uid "4211B4CC-46DE-366B-8187-9E9257F828F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo57";
	rename -uid "5D6B7534-424E-1ABE-EF60-C29485A8D1A3";
createNode phongE -n "phongE20";
	rename -uid "6688BFA6-4BD8-E38C-3C75-AB9C966C1417";
	setAttr ".c" -type "float3" 0.0451 0.0451 0.0451 ;
createNode shadingEngine -n "phongE20SG";
	rename -uid "D08E6D30-47F4-AF9C-04DD-289854D726D9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo58";
	rename -uid "A960FB6C-4B3F-0ABA-70D3-90A8BFB44AAE";
createNode phongE -n "phongE21";
	rename -uid "356FB947-4BBE-6B71-8A69-ADB39848B3C3";
	setAttr ".c" -type "float3" 0.0096000005 0.0096000005 0.0096000005 ;
createNode shadingEngine -n "phongE21SG";
	rename -uid "8CC33FA7-49CE-A261-8851-C1809AB05076";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo59";
	rename -uid "C74CB156-4E29-6258-272C-A9979FBFDFEF";
createNode phongE -n "phongE22";
	rename -uid "D64FBF77-4030-BE9A-0E73-C89039FFA825";
	setAttr ".c" -type "float3" 0.052299999 0.052299999 0.052299999 ;
createNode shadingEngine -n "phongE22SG";
	rename -uid "D5C5E508-4118-0F59-4CE3-0C92B0502004";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo60";
	rename -uid "005E4CF0-4638-3C83-ED4B-159A2906B045";
createNode phongE -n "phongE23";
	rename -uid "29E54E0E-488B-D7FC-243A-4D8257F123BE";
	setAttr ".c" -type "float3" 0.0601 0.0601 0.0601 ;
createNode shadingEngine -n "phongE23SG";
	rename -uid "CC3507CF-4BC7-86F4-287B-80AB1C0462AA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo61";
	rename -uid "7F9131B8-4768-5333-17A2-94967E117FAE";
createNode phongE -n "phongE24";
	rename -uid "84984A97-4D30-35B9-BEC3-94A111FF79D5";
	setAttr ".c" -type "float3" 0.077200003 0.077200003 0.077200003 ;
createNode shadingEngine -n "phongE24SG";
	rename -uid "40EAC4E3-43F5-2BC8-BC4C-5DA0DB0E77D6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo62";
	rename -uid "C468CA89-41F2-A6DA-DBF5-4C93C2EAEE00";
createNode phongE -n "phongE25";
	rename -uid "14D4053E-4732-9991-1600-4382A572FAD3";
	setAttr ".c" -type "float3" 0.54000002 0.54000002 0.54000002 ;
createNode shadingEngine -n "phongE25SG";
	rename -uid "1D6EAB36-44A6-5803-437C-399B78D12D31";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo63";
	rename -uid "DBCA8C88-4CC1-D70F-62E9-17A8E49894B2";
createNode phongE -n "phongE26";
	rename -uid "1A322AB8-4413-7093-4C7D-5F82E0E60E47";
	setAttr ".c" -type "float3" 0.032299999 0.032299999 0.032299999 ;
createNode shadingEngine -n "phongE26SG";
	rename -uid "1ED226E4-4B93-8157-2EF0-039C4909361B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo64";
	rename -uid "382D566B-483F-5F41-CB93-948AA86D6FD0";
createNode phongE -n "phongE27";
	rename -uid "C01F22D6-4A32-8CC7-1AFD-6191BB5777F7";
	setAttr ".c" -type "float3" 0.086599998 0.086599998 0.086599998 ;
createNode shadingEngine -n "phongE27SG";
	rename -uid "64E65428-4FC3-3829-E994-97BDD07C6A07";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo65";
	rename -uid "EE909437-4221-FB75-3E8B-A79043B5133E";
createNode phongE -n "phongE28";
	rename -uid "015719EE-4DD0-B0ED-EDD3-06A9F0680537";
	setAttr ".c" -type "float3" 0.1178 0.1178 0.1178 ;
createNode shadingEngine -n "phongE28SG";
	rename -uid "AE9F7069-4FF7-49CB-F1DA-7A9748556127";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo66";
	rename -uid "71A8B936-460A-219B-627C-3FA46AFC5EDF";
createNode phongE -n "phongE29";
	rename -uid "A7707A12-4718-44E5-C0D5-C99450ECB732";
	setAttr ".c" -type "float3" 0.077200003 0.077200003 0.077200003 ;
createNode shadingEngine -n "phongE29SG";
	rename -uid "61224B76-4FDF-32FF-B74E-58B30177AAA8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo67";
	rename -uid "A510F715-4158-D41A-2DE2-F588F9ED6E83";
createNode phongE -n "phongE30";
	rename -uid "39089D05-41D1-E224-BC00-6FA7F90B60AD";
	setAttr ".c" -type "float3" 0.1293 0.1293 0.1293 ;
createNode shadingEngine -n "phongE30SG";
	rename -uid "CD826C07-4CBD-F000-12CC-8E8AB6030CAA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo68";
	rename -uid "0B561962-4049-11BB-5C9B-8CA780A0E289";
createNode shadingEngine -n "pasted__phongE25SG";
	rename -uid "570FD647-4D94-E51C-29F1-6483B0065742";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo63";
	rename -uid "2020A833-4514-0CE3-A4F4-DD8B9FFCB13E";
createNode phongE -n "pasted__phongE25";
	rename -uid "8B544956-49D9-BCF7-A377-10A8C37E3C07";
createNode shadingEngine -n "pasted__phongE26SG";
	rename -uid "B6D82FEB-4D47-BF33-7036-EDB7907404F5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo64";
	rename -uid "F1AF5FCB-4EBB-84A6-132B-43919B6FFE0F";
createNode phongE -n "pasted__phongE26";
	rename -uid "295C329F-4D86-3CBA-5513-309225907EDB";
createNode shadingEngine -n "pasted__phongE27SG";
	rename -uid "600A1F8B-41EF-E944-90B9-F79BA3D6E524";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo65";
	rename -uid "02653868-45D4-B981-83D2-FF9F540B41BE";
createNode phongE -n "pasted__phongE27";
	rename -uid "B199DC2C-44FB-DCB1-A94E-A69E4EBBDD44";
createNode shadingEngine -n "pasted__phongE28SG";
	rename -uid "872EA0D6-456B-EFC4-9525-1B930CC0EBD0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo66";
	rename -uid "AEF213B3-4B86-572E-A8D4-E7968A553505";
createNode phongE -n "pasted__phongE28";
	rename -uid "19640761-44AB-2555-3D37-6B9ED509408E";
createNode shadingEngine -n "pasted__phongE29SG";
	rename -uid "FD1740B8-49D6-4067-B9D2-AEA29353CA74";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo67";
	rename -uid "77CE6C2F-4E76-9399-2730-20AB16995F8E";
createNode phongE -n "pasted__phongE29";
	rename -uid "BFB51454-4ECF-E93B-590B-E89213288A93";
createNode shadingEngine -n "pasted__phongE30SG";
	rename -uid "F233200E-4F82-4D7A-662F-90A36F23D3A1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo68";
	rename -uid "2E437B38-428B-65F9-0FD7-2EB45307FF90";
createNode phongE -n "pasted__phongE30";
	rename -uid "3562CAD6-43E4-80B0-A427-C2B123425603";
	setAttr ".c" -type "float3" 1 0.056200001 0 ;
createNode phongE -n "phongE31";
	rename -uid "B22FAE68-484B-565C-A3D4-DE8984A177BF";
createNode shadingEngine -n "phongE31SG";
	rename -uid "526A081C-477E-48FC-6A73-C2A969C49BBF";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo69";
	rename -uid "F28508BB-4231-2DC1-6F9D-79A4D6970F12";
createNode phong -n "phong9";
	rename -uid "6512A5C3-47B1-F041-A404-5EA50A78E5A4";
createNode shadingEngine -n "phong9SG";
	rename -uid "94EDE001-4234-7A7E-7C95-17B544165588";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo70";
	rename -uid "FE32694E-4B3A-D388-C0E9-64912A26AC54";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader0";
	rename -uid "6D66C712-458C-AABD-C88E-69A40CF03112";
	setAttr ".c" -type "float3" 0 0.011764706 0.015686275 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG0";
	rename -uid "C1BFE213-4F24-EBA6-7382-3A93FC5DFDEE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo71";
	rename -uid "507E6D70-47ED-9FA9-0F3C-F2A2198ED3B1";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader1";
	rename -uid "21107A8F-433E-C56C-D367-188AC317F9E5";
	setAttr ".c" -type "float3" 0.98431373 0.97647059 0.95294118 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG1";
	rename -uid "F36CD888-4580-CB5A-2DC0-07B9BCB5FFB6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo72";
	rename -uid "EDEEAB72-4D9A-E2F8-3949-3EA47CC4E67F";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader2";
	rename -uid "E8E3AD2A-4C1A-338F-170A-69BAF059BC6E";
	setAttr ".c" -type "float3" 0.6901961 0.43137255 0.13725491 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG2";
	rename -uid "4ABE5EB0-4389-7508-5078-E0B049F1460B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo73";
	rename -uid "4FBF9BBC-4524-70F4-EC6F-F380852FBDF9";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader3";
	rename -uid "A0994A6E-4357-3B41-F05B-4C85578F6EB9";
	setAttr ".c" -type "float3" 0.97254902 0.96862745 0.95294118 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG3";
	rename -uid "45D83920-477D-B499-A569-DAAD3B9B62DB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo74";
	rename -uid "9ADA3359-48F7-3EDD-980F-D4A33231D6AC";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader4";
	rename -uid "A5D167D1-4F03-C825-4970-01943FBC4F77";
	setAttr ".c" -type "float3" 0.70588237 0.44313726 0.19215687 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG4";
	rename -uid "7A05DB8B-47CD-6EAF-4FAB-4C993982AD7A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo75";
	rename -uid "807C801F-48DE-BB76-6C00-AE8E91F2A150";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader5";
	rename -uid "E27C4C1A-4DE7-ABA1-BFE8-ADB1AD09CC99";
	setAttr ".c" -type "float3" 0.81176472 0.74117649 0.63529414 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG5";
	rename -uid "A0738B86-4F02-AC80-7C10-439358F00A53";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo76";
	rename -uid "0E25E11B-45A7-1BA9-BA19-7E8921731D31";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader6";
	rename -uid "C021E9C2-4489-FD9A-798A-89BF685F684A";
	setAttr ".c" -type "float3" 0.062745102 0.05882353 0.019607844 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG6";
	rename -uid "CAEBCED9-4A01-7507-F8B1-04AA80324BF8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo77";
	rename -uid "E55E5CF7-4305-341B-2907-11A80B226DE8";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader7";
	rename -uid "2D8B9058-4D2D-7EE7-2183-E0B89819FE5C";
	setAttr ".c" -type "float3" 0.17254902 0.12156863 0.039215688 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG7";
	rename -uid "245A86BD-4661-17A3-9F00-A7AA751C6835";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo78";
	rename -uid "319C5214-4E55-AA8F-5C78-798924ED35D7";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader8";
	rename -uid "EBF72AC4-4B0E-DE68-99BA-A09C8F920610";
	setAttr ".c" -type "float3" 0.22745098 0.2 0.13725491 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG8";
	rename -uid "874BB0DB-4DF9-DA5C-2CB9-D8B28040CE93";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo79";
	rename -uid "3A487DD5-47B3-8656-F1B8-69ADB30D1B13";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader9";
	rename -uid "B3C3A1A6-44FD-3F60-7B83-23ACAC235412";
	setAttr ".c" -type "float3" 0.96470588 0.96862745 0.96470588 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG9";
	rename -uid "7054239F-44B4-DC84-BADE-669D350F2A4F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo80";
	rename -uid "B3BCDC8B-4B18-4D64-F64E-618CFB8C22E0";
createNode lambert -n "photo_1591969851586_adbbd4accf81ConverterShader10";
	rename -uid "A1EC32DE-481C-E2D5-EDD5-E1B6C15BD3C4";
	setAttr ".c" -type "float3" 0.91764706 0.85882354 0.78823531 ;
createNode shadingEngine -n "photo_1591969851586_adbbd4accf81ConverterSG10";
	rename -uid "79A7A5EE-48F3-3C9E-6696-999527C90289";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo81";
	rename -uid "71BB005A-41AC-DDE5-5CE5-A8BCF4A1258A";
createNode textureToGeom -n "pasted__photo_1591969851586_adbbd4accf81Converter";
	rename -uid "FBCAEB8A-4151-64C0-409B-3991963B27F7";
	addAttr -ci true -sn "sas" -ln "shaderAssignment" -dt "string";
	addAttr -ci true -sn "sht" -ln "shaderTemplate" -dt "string";
	setAttr -s 11 ".sgi";
	setAttr -s 11 ".sgi";
	setAttr ".iuv" -type "string" "";
	setAttr ".if" -type "string" "";
	setAttr ".shs" -type "string" "TGcolorChange";
	setAttr ".sas" -type "string" "shaders";
	setAttr ".sht" -type "string" "";
createNode polyPlane -n "pasted__polyPlane1";
	rename -uid "B4086355-45B9-11ED-0565-2E8A92CF0FCE";
	setAttr ".cuv" 2;
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment0";
	rename -uid "4ED6722F-4CC6-A086-CAE7-07A7FEA2F92F";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment1";
	rename -uid "6442C476-4165-729F-637B-7796E243D8F2";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment2";
	rename -uid "95C35BAC-4520-2A1B-54F0-8B9117DDB405";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment3";
	rename -uid "48D28796-4C99-3690-C4EC-A9B9FC5D62D7";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment4";
	rename -uid "B9439EB3-40BF-D81D-6BC1-2B9FDFA5B245";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment5";
	rename -uid "F74BDF37-4636-F522-00D2-6CA9EB38A478";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment6";
	rename -uid "BA7E8F74-4CF2-2194-20BC-F583927E9871";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment7";
	rename -uid "5B104B36-44B7-05CF-09E6-00A3455F06CE";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment8";
	rename -uid "CFE69824-4970-6F84-5FE5-C5AB95CA43FC";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment9";
	rename -uid "F4733AC6-4555-494D-250E-40B292F67221";
createNode groupId -n "pasted__photo_1591969851586_adbbd4accf81Segment10";
	rename -uid "698DCBF9-456E-7CFF-4A11-E0BB56976E1E";
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG0";
	rename -uid "A24CFDEA-4D43-0B85-4E51-2FA78D0BC672";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo71";
	rename -uid "357C7356-4BB5-2F9A-BDFD-408FE1E1C66D";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader0";
	rename -uid "2149EDD0-4C18-D46E-19B5-D5B7FA3171EA";
	setAttr ".c" -type "float3" 0 0.011764706 0.015686275 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG1";
	rename -uid "ABB9558D-4F72-6C0E-CEA1-E4B4202032C9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo72";
	rename -uid "5EDC319F-42DD-C1E6-C13A-639E7C307822";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader1";
	rename -uid "D1CB35F9-4C98-7BDA-979D-62808829AF6B";
	setAttr ".c" -type "float3" 0.98431373 0.97647059 0.95294118 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG2";
	rename -uid "44C49EAC-4EE4-DEE8-F4EC-B18784950CF1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo73";
	rename -uid "70930990-4E0C-C097-8E88-6E9CA2F1C4E1";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader2";
	rename -uid "73450ABD-4263-5231-528D-2BA250EEC953";
	setAttr ".c" -type "float3" 0.6901961 0.43137255 0.13725491 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG3";
	rename -uid "2EE8D51E-44D3-FC6F-46DA-86BAE1F9B260";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo74";
	rename -uid "2F5CAB0D-4A39-26D6-A84B-5DB60467675A";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader3";
	rename -uid "88DAC3FF-4EA1-C2F5-CFA8-588DE63D4D86";
	setAttr ".c" -type "float3" 0.97254902 0.96862745 0.95294118 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG4";
	rename -uid "0167C862-4254-8DEC-A244-D584D9B2461E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo75";
	rename -uid "08FB679F-4047-0478-A73D-25AA77A099E5";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader4";
	rename -uid "14A6F1B2-46F0-331F-5032-9B824BBA0EF5";
	setAttr ".c" -type "float3" 0.70588237 0.44313726 0.19215687 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG5";
	rename -uid "23F3F219-4F5A-9E99-F98B-9B9779A493E6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo76";
	rename -uid "93CA123C-45DA-A0A3-DA64-E19D13FF4939";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader5";
	rename -uid "47FDD73A-47DD-0865-2A09-ACA2C94E9E4D";
	setAttr ".c" -type "float3" 0.81176472 0.74117649 0.63529414 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG6";
	rename -uid "E7E7B0B6-4353-D7BD-7EE5-6B821E804CD0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo77";
	rename -uid "62748FDD-493F-ED01-7CE3-F8A840177EFB";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader6";
	rename -uid "D832E799-470A-47D3-FD97-4D941FBECE07";
	setAttr ".c" -type "float3" 0.062745102 0.05882353 0.019607844 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG7";
	rename -uid "6ADB9C9D-4036-E169-8E0E-55A54E97C50B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo78";
	rename -uid "2DBEB38D-4014-F183-5749-92BB84270F2B";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader7";
	rename -uid "B091E355-4DF4-94B0-8D0E-FF917C495D1B";
	setAttr ".c" -type "float3" 0.17254902 0.12156863 0.039215688 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG8";
	rename -uid "624CC9EB-4B06-41AC-0728-E0A0DFC8FA94";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo79";
	rename -uid "37418DB8-4549-67A6-0779-619E25F60B40";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader8";
	rename -uid "DEF6BB3D-46F9-B94E-8C1A-D7833E99B710";
	setAttr ".c" -type "float3" 0.22745098 0.2 0.13725491 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG9";
	rename -uid "8A636298-4285-96D4-051C-3388C83CE8C2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo80";
	rename -uid "DF0DC029-4516-59AC-28A7-C2B441A612FF";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader9";
	rename -uid "358FDA4B-479A-513F-6629-D09E2D469F5A";
	setAttr ".c" -type "float3" 0.96470588 0.96862745 0.96470588 ;
createNode shadingEngine -n "pasted__photo_1591969851586_adbbd4accf81ConverterSG10";
	rename -uid "A24EB801-4EFB-E563-A9CE-72995BDC332E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo81";
	rename -uid "9C5A6634-4A5F-6B77-9ADC-38B08C8D2582";
createNode lambert -n "pasted__photo_1591969851586_adbbd4accf81ConverterShader10";
	rename -uid "FCC1FE58-413F-9558-D5F5-6CA1FEE8A555";
	setAttr ".c" -type "float3" 0.91764706 0.85882354 0.78823531 ;
createNode lambert -n "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0";
	rename -uid "C047C10F-4196-D446-40BC-EC994135F21D";
	setAttr ".c" -type "float3" 0.74509805 0.71372551 0.63921571 ;
createNode shadingEngine -n "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0";
	rename -uid "6BD2FF6F-4641-7BCA-6B22-81939C097619";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo82";
	rename -uid "3808FA7D-43C3-80CB-4F97-68ADB210BBA7";
createNode lambert -n "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1";
	rename -uid "D7CAD0EC-452C-E7C3-9877-739CFEB8BF89";
	setAttr ".c" -type "float3" 0.16862746 0.17647059 0.1882353 ;
createNode shadingEngine -n "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1";
	rename -uid "CC7F9663-474C-F924-B2FD-D19E0A110C5E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo83";
	rename -uid "417FDC11-4DBA-D1A8-2FDF-DBB12DED1EE0";
createNode lambert -n "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2";
	rename -uid "AD47DE4E-4BE1-56AA-C125-2A9A67D1E7ED";
	setAttr ".c" -type "float3" 0.86666667 0.82352942 0.75294119 ;
createNode shadingEngine -n "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2";
	rename -uid "12F73A2B-427B-5A1D-0E0D-50900B64857B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo84";
	rename -uid "C2F626DE-42BA-B608-FF7D-CBAD9EC0A437";
createNode phongE -n "phongE32";
	rename -uid "CD7BC2FC-4CE8-096C-6560-3D8B66827165";
createNode shadingEngine -n "phongE32SG";
	rename -uid "62DABC21-491D-7939-9736-948D1C6CC43C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo85";
	rename -uid "E067A858-40FE-3B12-7CB9-41BBC5D4E212";
createNode groupId -n "groupId3";
	rename -uid "A6E056FC-40CD-577E-2321-32940542A16A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A4795196-4E66-78F8-E47B-AF8C65FCEFCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[20:39]";
	setAttr ".irc" -type "componentList" 2 "f[0:19]" "f[40:139]";
createNode groupId -n "groupId4";
	rename -uid "D21234AD-4C91-EE39-3C82-94B7FA0474C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "7FFB08A1-4907-E574-F5F4-B387E361DBCA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "0D67209D-4B48-9ABF-6008-119DEDF6684A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:19]" "f[40:139]";
createNode phongE -n "phongE33";
	rename -uid "7854B219-4AE9-032C-A449-749FEC8D3012";
createNode shadingEngine -n "phongE33SG";
	rename -uid "80C14AF8-4FF7-4034-DE9B-BB8721B5044A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo86";
	rename -uid "5D47ADE4-499E-12FB-A957-7CB5D52492E5";
createNode groupId -n "groupId6";
	rename -uid "1E83DC3C-43BE-B042-ED2F-E49B6099BD72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "050D1E7D-438D-ED63-D4A2-0AB0B80689AE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[2]" "f[14:17]";
	setAttr ".irc" -type "componentList" 2 "f[0:1]" "f[3:13]";
createNode groupId -n "groupId7";
	rename -uid "AFF6E928-4FAF-85AC-9DB6-6FA722C6286A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "6ACA39CD-419E-DF2B-9B89-D0B9C39BF171";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "8A5CF180-45B4-964E-6941-7AA8F18818C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1]" "f[3:13]";
createNode phongE -n "phongE34";
	rename -uid "A2B95D16-47F8-9D52-3403-F2BE21372C5C";
	setAttr ".c" -type "float3" 0.29159999 0.29159999 0.29159999 ;
createNode shadingEngine -n "phongE34SG";
	rename -uid "4411EA00-4635-C588-476D-B3ACDFB93500";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo87";
	rename -uid "10041174-4E92-5FFA-68A7-86A4769CBD44";
createNode lambert -n "imagesConverterShader0";
	rename -uid "6E221250-49DB-4F93-C57F-8AB9D03AC661";
	setAttr ".c" -type "float3" 0.44313726 0.43921569 0.43137255 ;
createNode shadingEngine -n "imagesConverterSG0";
	rename -uid "E052E0D6-423C-94CA-8E71-A78017D5233E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo88";
	rename -uid "388B04B8-4A57-2E05-554B-96B636540E56";
createNode lambert -n "imagesConverterShader1";
	rename -uid "6ED1BDF0-40F0-4751-0D77-D89522A5ED1A";
	setAttr ".c" -type "float3" 0.72156864 0.65098041 0.5529412 ;
createNode shadingEngine -n "imagesConverterSG1";
	rename -uid "5EE5F8D4-49B1-BCD2-D54F-C09CF5465D46";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo89";
	rename -uid "3DFFA834-474A-2FD7-EA80-43A8F8EBE3C4";
createNode lambert -n "imagesConverterShader2";
	rename -uid "9D608F6F-4A4C-F481-C740-24809926BC8A";
	setAttr ".c" -type "float3" 0.63137257 0.58431375 0.52941179 ;
createNode shadingEngine -n "imagesConverterSG2";
	rename -uid "CE05E948-4C65-D8F8-6894-4AADBBDBCDAB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo90";
	rename -uid "D01F36A3-4332-144C-28A6-C18A3D98004E";
createNode polyPlane -n "pasted__polyPlane2";
	rename -uid "0F5C5095-44D4-EDAA-6A2B-14BA0E804235";
	setAttr ".cuv" 2;
createNode textureToGeom -n "pasted__imagesConverter";
	rename -uid "36CF5F0C-45C0-8CAF-840E-70B351F3AE8E";
	addAttr -ci true -sn "sas" -ln "shaderAssignment" -dt "string";
	addAttr -ci true -sn "sht" -ln "shaderTemplate" -dt "string";
	setAttr -s 3 ".sgi";
	setAttr -s 3 ".sgi";
	setAttr ".iuv" -type "string" "";
	setAttr ".if" -type "string" "";
	setAttr ".shs" -type "string" "TGcolorChange";
	setAttr ".sas" -type "string" "shaders";
	setAttr ".sht" -type "string" "";
createNode groupId -n "pasted__imagesSegment0";
	rename -uid "DA90522F-4B17-7EF2-31B5-2796D4DCD45C";
createNode groupId -n "pasted__imagesSegment1";
	rename -uid "F2059E75-4D0D-A985-7635-C189301DDD35";
createNode groupId -n "pasted__imagesSegment2";
	rename -uid "AC6C8083-4DAC-83D0-10FD-1EB54FA287FC";
createNode shadingEngine -n "pasted__imagesConverterSG0";
	rename -uid "10C4F536-4E58-18AF-C2EC-34ACDE3147EA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo88";
	rename -uid "9F28362B-4EF4-2E6B-9DA8-01BEE7674622";
createNode lambert -n "pasted__imagesConverterShader0";
	rename -uid "CD5AFE21-45BA-EF6F-0DDD-15A51265B95F";
	setAttr ".c" -type "float3" 0.44313726 0.43921569 0.43137255 ;
createNode shadingEngine -n "pasted__imagesConverterSG1";
	rename -uid "E562D1AD-4810-E83C-B819-5E93FB84E5AE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo89";
	rename -uid "86D579FA-44DC-1A26-96DE-6EA590DDAC6E";
createNode lambert -n "pasted__imagesConverterShader1";
	rename -uid "FE34F799-480A-30E5-02E8-85BB8ACABD77";
	setAttr ".c" -type "float3" 0.72156864 0.65098041 0.5529412 ;
createNode shadingEngine -n "pasted__imagesConverterSG2";
	rename -uid "41B9E2FD-431A-D0A0-5E38-AF9C37E63599";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo90";
	rename -uid "AB929AC6-4CE6-BEE3-DD3C-56BF7100B154";
createNode lambert -n "pasted__imagesConverterShader2";
	rename -uid "4512D232-41E6-7C8B-6168-62B19CF67823";
	setAttr ".c" -type "float3" 0.63137257 0.58431375 0.52941179 ;
createNode polyPlane -n "pasted__polyPlane3";
	rename -uid "37FCF133-4C5B-DD04-4E05-8CA68F775D08";
	setAttr ".cuv" 2;
createNode shadingEngine -n "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0";
	rename -uid "757FFFB2-4EC3-DBB3-54EE-2C960F2AA70C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo82";
	rename -uid "F736B594-4FEC-3E2F-71BB-3AB88D0FA990";
createNode lambert -n "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0";
	rename -uid "1DE985C9-42E3-F1BD-C1A2-AF82476B055D";
	setAttr ".c" -type "float3" 0.74509805 0.71372551 0.63921571 ;
createNode shadingEngine -n "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1";
	rename -uid "CF3BFBE8-46DE-3960-A009-E49C6EA605F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo83";
	rename -uid "8BB9B180-4D61-635C-3FAC-1B99D47FA67B";
createNode lambert -n "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1";
	rename -uid "1605EEAC-4759-1849-BFE7-A1BD23556E93";
	setAttr ".c" -type "float3" 0.16862746 0.17647059 0.1882353 ;
createNode shadingEngine -n "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2";
	rename -uid "53DE929D-4788-7D5E-D816-29AC09AD648B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo84";
	rename -uid "FC2567CF-42FC-4236-B800-20921F797ADF";
createNode lambert -n "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2";
	rename -uid "22D3C4F8-4744-2E38-4AAF-0EA1C7947225";
	setAttr ".c" -type "float3" 0.86666667 0.82352942 0.75294119 ;
createNode phongE -n "phongE35";
	rename -uid "6764365A-4DAA-1B48-5479-ADA7A899E50F";
	setAttr ".c" -type "float3" 0.3344 0.3344 0.3344 ;
createNode shadingEngine -n "phongE35SG";
	rename -uid "DE53B061-4217-AED0-BD2B-BA9D57EDEF16";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo91";
	rename -uid "94EC0924-4AEB-D937-525E-52A5521A2637";
createNode groupParts -n "groupParts5";
	rename -uid "5D844909-4DBF-39AF-4A1F-D082EBC273C1";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[618]";
createNode groupId -n "groupId9";
	rename -uid "266A29BF-458A-EF17-9CCE-76AF54B11C46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "DED73558-41D9-F4CD-0CEE-11A412649FAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 79 "f[84]" "f[87]" "f[109]" "f[115]" "f[118]" "f[120]" "f[123:124]" "f[142]" "f[144]" "f[169]" "f[172:173]" "f[179:180]" "f[193]" "f[211:212]" "f[214]" "f[220]" "f[229]" "f[231]" "f[236]" "f[242]" "f[253:256]" "f[261]" "f[266]" "f[269]" "f[273]" "f[276:277]" "f[280]" "f[282]" "f[285:287]" "f[295:296]" "f[298]" "f[302:303]" "f[310]" "f[314]" "f[316]" "f[320]" "f[323]" "f[328]" "f[332:333]" "f[338]" "f[341]" "f[345]" "f[351]" "f[357:358]" "f[360:361]" "f[371]" "f[374]" "f[377:378]" "f[381:383]" "f[387:390]" "f[392]" "f[394]" "f[396]" "f[400:401]" "f[409]" "f[419:422]" "f[431]" "f[433:434]" "f[436]" "f[438]" "f[455]" "f[458]" "f[462:464]" "f[478]" "f[482]" "f[485]" "f[488]" "f[492]" "f[498]" "f[503]" "f[513]" "f[517]" "f[519:520]" "f[523:524]" "f[531]" "f[618]" "f[621]" "f[727]" "f[731:732]";
createNode groupParts -n "groupParts7";
	rename -uid "82E770F6-42FD-55D8-BCF2-7C825A3FC54E";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 42 "f[314]" "f[316]" "f[320]" "f[323]" "f[328]" "f[332:333]" "f[338]" "f[341]" "f[345]" "f[351]" "f[357:358]" "f[360:361]" "f[371]" "f[374]" "f[377:378]" "f[381:383]" "f[387:390]" "f[392]" "f[394]" "f[396]" "f[400:401]" "f[409]" "f[419:422]" "f[431]" "f[433:434]" "f[436]" "f[438]" "f[455]" "f[458]" "f[462:464]" "f[478]" "f[482]" "f[485]" "f[488]" "f[492]" "f[498]" "f[503]" "f[513]" "f[517]" "f[519:520]" "f[523:524]" "f[531]";
createNode groupParts -n "groupParts8";
	rename -uid "B3C0B1D4-4946-5DD4-9C59-EEB8F6F5CE7D";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 36 "f[84]" "f[87]" "f[109]" "f[115]" "f[118]" "f[120]" "f[123:124]" "f[142]" "f[144]" "f[169]" "f[172:173]" "f[179:180]" "f[193]" "f[211:212]" "f[214]" "f[220]" "f[229]" "f[231]" "f[236]" "f[242]" "f[253:256]" "f[261]" "f[266]" "f[269]" "f[273]" "f[276:277]" "f[280]" "f[282]" "f[285:287]" "f[295:296]" "f[298]" "f[302:303]" "f[310]" "f[621]" "f[727]" "f[731:732]";
createNode phongE -n "phongE36";
	rename -uid "DAA3AD93-4666-62A3-DA3B-6CAC23BCCB0F";
	setAttr ".c" -type "float3" 0.54000002 0.54000002 0.54000002 ;
createNode shadingEngine -n "phongE36SG";
	rename -uid "3957EE90-47DA-2F70-78DA-7E8A0BB1E090";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo92";
	rename -uid "277A8C5C-4BF3-6CC2-DF3D-AD8D501A78CA";
createNode textureToGeom -n "Pic2Converter";
	rename -uid "5AF20C54-4ACC-D3BC-E32A-91AB601827F7";
	addAttr -ci true -sn "sas" -ln "shaderAssignment" -dt "string";
	addAttr -ci true -sn "sht" -ln "shaderTemplate" -dt "string";
	setAttr -s 3 ".sgi";
	setAttr -s 3 ".sgi";
	setAttr ".iuv" -type "string" "";
	setAttr ".if" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 1/3D_environment_wireframe/Pic2.jpeg";
	setAttr ".shs" -type "string" "TGcolorChange";
	setAttr ".sas" -type "string" "shaders";
	setAttr ".sht" -type "string" "";
createNode groupId -n "Pic2Segment0";
	rename -uid "1B7F57AF-4079-A7AB-A68D-1DA990AC4E76";
createNode groupId -n "Pic2Segment1";
	rename -uid "A87171C4-41CC-513B-9B98-8CB37FD28EC3";
createNode groupId -n "Pic2Segment2";
	rename -uid "7973731B-4174-00CD-124F-EBB8FA2E19FB";
createNode lambert -n "Pic2ConverterShader0";
	rename -uid "6571C4C4-4964-7E5A-DF92-FCAB954AE4D2";
	setAttr ".c" -type "float3" 0.75294119 0.72941178 0.63921571 ;
createNode shadingEngine -n "Pic2ConverterSG0";
	rename -uid "A2A8D21C-4C0A-0331-58BB-028A1F9C22DA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo93";
	rename -uid "E87D19BC-4D27-C7AE-3CC1-60902887CAB7";
createNode lambert -n "Pic2ConverterShader1";
	rename -uid "1DD6E5D0-4E42-2B4F-9FC4-C1931EDD7317";
	setAttr ".c" -type "float3" 0.16470589 0.18039216 0.19607843 ;
createNode shadingEngine -n "Pic2ConverterSG1";
	rename -uid "D28908E2-44DB-402B-7F73-3FB2592BCF43";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo94";
	rename -uid "9AA93C0C-43F0-5FF3-CF35-0E893B95AF40";
createNode lambert -n "Pic2ConverterShader2";
	rename -uid "96B3234E-4652-8046-0C78-8D98C7622D63";
	setAttr ".c" -type "float3" 0.85882354 0.81568629 0.74509805 ;
createNode shadingEngine -n "Pic2ConverterSG2";
	rename -uid "83F8AF22-4B8B-CDB7-43AF-76A3C169AEBE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo95";
	rename -uid "18BC7B40-444D-6AB1-12A1-4D8414FD6BEC";
createNode textureToGeom -n "Pic1Converter";
	rename -uid "A176ED90-4EC8-F488-9A77-369A7DAEA079";
	addAttr -ci true -sn "sas" -ln "shaderAssignment" -dt "string";
	addAttr -ci true -sn "sht" -ln "shaderTemplate" -dt "string";
	setAttr -s 6 ".sgi";
	setAttr -s 6 ".sgi";
	setAttr ".iuv" -type "string" "";
	setAttr ".if" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 1/3D_environment_wireframe/Pic1.jpeg";
	setAttr ".shs" -type "string" "TGcolorChange";
	setAttr ".sas" -type "string" "shaders";
	setAttr ".sht" -type "string" "";
createNode groupId -n "Pic1Segment0";
	rename -uid "6BFEDF87-489B-62AF-D0D2-618B7ADA2879";
createNode groupId -n "Pic1Segment1";
	rename -uid "22A56931-4AFA-B87A-43B5-3A8956C0FE93";
createNode groupId -n "Pic1Segment2";
	rename -uid "F60C7332-4806-5F9F-5C43-6E8D0A0E25DE";
createNode groupId -n "Pic1Segment3";
	rename -uid "CD8ABBF1-43FD-AAB5-FAFA-4080C34AEAF8";
createNode groupId -n "Pic1Segment4";
	rename -uid "34E99F51-42D5-6898-4827-39A93523BA87";
createNode groupId -n "Pic1Segment5";
	rename -uid "D4B15DEA-4918-35F6-877C-F0A61146B13D";
createNode lambert -n "Pic1ConverterShader0";
	rename -uid "B30C8EE6-4A11-E777-3B69-24989FCF28DD";
	setAttr ".c" -type "float3" 0.39215687 0.39215687 0.39215687 ;
createNode shadingEngine -n "Pic1ConverterSG0";
	rename -uid "1CB1BD0D-473D-7A08-46D8-5D8636EAAB14";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo96";
	rename -uid "4504522D-4E3C-4D8A-6F4E-BA9A846F403A";
createNode lambert -n "Pic1ConverterShader1";
	rename -uid "2D292E31-4E37-15BA-D4B8-2DA15AE84162";
	setAttr ".c" -type "float3" 0.64313728 0.64313728 0.64313728 ;
createNode shadingEngine -n "Pic1ConverterSG1";
	rename -uid "01C9DC80-4FA8-75F6-F13C-5798EEBCD3F3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo97";
	rename -uid "D2FE4C08-4942-F108-2E0A-E3991E786E33";
createNode lambert -n "Pic1ConverterShader2";
	rename -uid "5F5FFDD3-4FE7-6F98-A51B-B28765DC10B7";
	setAttr ".c" -type "float3" 0.10196079 0.10196079 0.10196079 ;
createNode shadingEngine -n "Pic1ConverterSG2";
	rename -uid "61732ACE-4CFC-AE36-771B-FABA7DED9A96";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo98";
	rename -uid "BE239EE5-418B-B27D-03FC-D9B456A613D2";
createNode lambert -n "Pic1ConverterShader3";
	rename -uid "5735195F-4358-AA95-0E8D-179BAB4003D3";
	setAttr ".c" -type "float3" 0.49019608 0.49019608 0.49019608 ;
createNode shadingEngine -n "Pic1ConverterSG3";
	rename -uid "0275BB31-437D-F969-59A8-11B60AF45825";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo99";
	rename -uid "F7109A6B-4A1A-41D4-BC51-1B84DF664943";
createNode lambert -n "Pic1ConverterShader4";
	rename -uid "0C5CD19D-4CC4-4EC1-3EA9-8CA732363B97";
	setAttr ".c" -type "float3" 0.627451 0.627451 0.627451 ;
createNode shadingEngine -n "Pic1ConverterSG4";
	rename -uid "AA86B8E2-40C3-6C17-3CD8-2EB0D56FC2CF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo100";
	rename -uid "C05F574F-4735-F6AF-2A8E-678FD2EBB9A2";
createNode lambert -n "Pic1ConverterShader5";
	rename -uid "5AFE0E0D-4E46-CD1D-0E0F-F59F5659C97C";
	setAttr ".c" -type "float3" 0.54509807 0.54509807 0.54509807 ;
createNode shadingEngine -n "Pic1ConverterSG5";
	rename -uid "80E7B6BA-4745-88DA-D56F-57BBCE4D9A42";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo101";
	rename -uid "FD2366BA-48CC-D831-2A0B-ADAA6042BBE9";
createNode textureToGeom -n "Pic3Converter";
	rename -uid "1F9B9AD8-49D6-812E-C5C9-D38078CE3076";
	addAttr -ci true -sn "sas" -ln "shaderAssignment" -dt "string";
	addAttr -ci true -sn "sht" -ln "shaderTemplate" -dt "string";
	setAttr -s 6 ".sgi";
	setAttr -s 6 ".sgi";
	setAttr ".iuv" -type "string" "";
	setAttr ".if" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 1/3D_environment_wireframe/Pic3.jpg";
	setAttr ".shs" -type "string" "TGcolorChange";
	setAttr ".sas" -type "string" "shaders";
	setAttr ".sht" -type "string" "";
createNode groupId -n "Pic3Segment0";
	rename -uid "87A2321D-43BC-B4C7-E9CB-26923A5EFA63";
createNode groupId -n "Pic3Segment1";
	rename -uid "61ABC80C-41C7-97CF-72E7-DEBD82FAFDF3";
createNode groupId -n "Pic3Segment2";
	rename -uid "863624AA-40A0-4352-B1E4-298824F6169E";
createNode groupId -n "Pic3Segment3";
	rename -uid "867836C4-4BED-464C-D3B0-0F9E375BBDA4";
createNode groupId -n "Pic3Segment4";
	rename -uid "0616DD0A-4894-5EB0-991D-61845DF982E5";
createNode groupId -n "Pic3Segment5";
	rename -uid "E37082B1-43A4-F067-11F6-56829B5361BE";
createNode lambert -n "Pic3ConverterShader0";
	rename -uid "A187760E-47EA-D9CF-9FE9-C9BB361A1796";
	setAttr ".c" -type "float3" 0.023529412 0.019607844 0.035294119 ;
createNode shadingEngine -n "Pic3ConverterSG0";
	rename -uid "D79E9E3A-4CDE-738E-CA4D-66A2B987F5EE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo102";
	rename -uid "1E36E6E6-47E7-493F-C709-20B251EA1278";
createNode lambert -n "Pic3ConverterShader1";
	rename -uid "EAB3845B-4AA8-B249-252D-F98EBBF0E858";
	setAttr ".c" -type "float3" 0.17647059 0.11764706 0.043137256 ;
createNode shadingEngine -n "Pic3ConverterSG1";
	rename -uid "243CDF97-415F-06F7-A6E5-19A27403A6DA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo103";
	rename -uid "A087773C-45EB-7127-E9CC-08A685963221";
createNode lambert -n "Pic3ConverterShader2";
	rename -uid "FF75FA08-473A-133D-58FC-A796C0134337";
	setAttr ".c" -type "float3" 0.51372552 0.38431373 0.16862746 ;
createNode shadingEngine -n "Pic3ConverterSG2";
	rename -uid "FCA8FD33-458D-15D4-1674-A39E21534849";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo104";
	rename -uid "9F2394F3-458B-E5F7-F231-4DB482DB3869";
createNode lambert -n "Pic3ConverterShader3";
	rename -uid "8D651FF3-4824-033A-61AF-F3815257EC5A";
	setAttr ".c" -type "float3" 0.035294119 0.035294119 0.035294119 ;
createNode shadingEngine -n "Pic3ConverterSG3";
	rename -uid "F7052787-4C51-8B29-4026-C4BCDE5D1BB4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo105";
	rename -uid "A44AD90A-4F40-C621-CFD3-0687AE21BC40";
createNode lambert -n "Pic3ConverterShader4";
	rename -uid "C620B172-49BF-280D-2EFF-A9969502C275";
	setAttr ".c" -type "float3" 0.54509807 0.41568628 0.1882353 ;
createNode shadingEngine -n "Pic3ConverterSG4";
	rename -uid "15CCA878-4C93-8180-0405-FE9F5EAE2741";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo106";
	rename -uid "B009610A-46E7-5951-B6F8-53804E69CB6F";
createNode lambert -n "Pic3ConverterShader5";
	rename -uid "1E8B7486-4050-0E2F-03A2-5AB89B693491";
	setAttr ".c" -type "float3" 0.34901962 0.23921569 0.10196079 ;
createNode shadingEngine -n "Pic3ConverterSG5";
	rename -uid "37A1F095-493B-E622-92EC-CA85580ED143";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo107";
	rename -uid "472B8D84-4BDB-BF8E-E4CB-8BAC5E4D0D25";
createNode groupId -n "pasted__groupId19";
	rename -uid "A923FEF8-42F4-F112-6862-81854DD75B84";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId21";
	rename -uid "4F15D435-42AB-2BA5-EE20-C7B4AFEFC506";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phongE36SG";
	rename -uid "EDC9BDD8-4D89-F1A2-8C82-D6A7576F031E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo92";
	rename -uid "B04B91AC-456E-100C-70B0-7C8EEF72C279";
createNode phongE -n "pasted__phongE36";
	rename -uid "D11EA33A-465A-9B42-E1ED-FBA02BB27CED";
createNode polyBevel3 -n "pasted__polyBevel5";
	rename -uid "447BC3A2-40A2-B9E5-328B-78813AB66303";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 33.480721571245205 0 0 0 0 1 0 0 0 0 33.480721571245205 0
		 -17.430524987873916 -29.243804660805598 -18.575831214217597 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "pasted__polyTweak6";
	rename -uid "6A04A90D-40F0-DFEA-4DD2-6D99750A3570";
	setAttr ".uopa" yes;
	setAttr -s 231 ".tk";
	setAttr ".tk[231:396]" -type "float3"  0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0;
	setAttr ".tk[397:461]" 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557 0 0 0.24787557
		 0 0 0.24787557 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace7";
	rename -uid "031D322E-42BB-F9A9-BD8B-73A63F257E56";
	setAttr ".ics" -type "componentList" 1 "f[0:199]";
	setAttr ".ix" -type "matrix" 33.480721571245205 0 0 0 0 1 0 0 0 0 33.480721571245205 0
		 0 48.469326495934617 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.08469753 48.827042 0.088137954 ;
	setAttr ".rs" 49351;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.98267930244387 48.469326495934617 -16.740360785622602 ;
	setAttr ".cbx" -type "double3" 17.152074365954618 49.184757947732102 16.91663670040079 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak5";
	rename -uid "2445F035-44B7-9144-47FF-9BBA44C7A47B";
	setAttr ".uopa" yes;
	setAttr -s 183 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.0052650208 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.0052650208 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.0053198873 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.0053198873 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.0049610273 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.0049610273 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.0049610273 ;
	setAttr ".tk[11]" -type "float3" 0.0083038518 0.21169662 0.015559761 ;
	setAttr ".tk[12]" -type "float3" 0 0.357443 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.357443 -0.0051844069 ;
	setAttr ".tk[14]" -type "float3" 0 0.357443 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.357443 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.357443 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.357443 -0.0071695293 ;
	setAttr ".tk[18]" -type "float3" 0 0.357443 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.357443 -0.0087242015 ;
	setAttr ".tk[20]" -type "float3" 0 0.357443 0.0049610273 ;
	setAttr ".tk[21]" -type "float3" -0.0035613098 0.357443 -0.015454374 ;
	setAttr ".tk[22]" -type "float3" 0.020288805 0 0 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.0026628654 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.0025597545 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.010210499 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.0049878792 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.0074447123 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.0074447123 ;
	setAttr ".tk[33]" -type "float3" 0.017406218 0.53956014 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.53956014 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.53956014 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.53956014 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.53956014 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.53956014 0.0099010002 ;
	setAttr ".tk[39]" -type "float3" 0 0.53956014 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.53956014 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.53956014 -0.01104021 ;
	setAttr ".tk[42]" -type "float3" 0 0.53956014 -0.01104021 ;
	setAttr ".tk[43]" -type "float3" 0.0034795832 0.53956014 0 ;
	setAttr ".tk[44]" -type "float3" 0.010708707 0 0 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.010562176 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.0097660273 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.0097660273 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.0067944825 ;
	setAttr ".tk[54]" -type "float3" 0.012297021 0 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.33564004 -0.0076030474 ;
	setAttr ".tk[62]" -type "float3" 0 0.33564004 -0.0069978135 ;
	setAttr ".tk[63]" -type "float3" 0 0.33564004 -0.0069978135 ;
	setAttr ".tk[64]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.33564004 0 ;
	setAttr ".tk[66]" -type "float3" 0.016449772 0.19186325 0.011469187 ;
	setAttr ".tk[69]" -type "float3" 0 0 -0.0076403897 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.0024017256 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.01189015 ;
	setAttr ".tk[76]" -type "float3" -0.0036287687 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.00072902441 0.40837711 0.0080106352 ;
	setAttr ".tk[78]" -type "float3" 0 0.40837711 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.40837711 -0.0080460859 ;
	setAttr ".tk[80]" -type "float3" 0 0.40837711 -0.0080460859 ;
	setAttr ".tk[81]" -type "float3" 0 0.40837711 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.40837711 -0.0046981107 ;
	setAttr ".tk[83]" -type "float3" 0 0.40837711 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.40837711 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.40837711 0.0045344783 ;
	setAttr ".tk[86]" -type "float3" 0 0.40837711 0.0045344783 ;
	setAttr ".tk[87]" -type "float3" 0.0048554838 0.40837711 0.011598741 ;
	setAttr ".tk[88]" -type "float3" -0.0072375401 0.14406317 -0.0047170129 ;
	setAttr ".tk[92]" -type "float3" 0 0 -0.0077528642 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.0077528642 ;
	setAttr ".tk[99]" -type "float3" 0 0.71543145 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.71543145 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.71543145 0.013192229 ;
	setAttr ".tk[102]" -type "float3" 0 0.71543145 0.013192229 ;
	setAttr ".tk[103]" -type "float3" 0 0.71543145 0.013192229 ;
	setAttr ".tk[104]" -type "float3" 0 0.71543145 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.71543145 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.71543145 -0.0091082314 ;
	setAttr ".tk[107]" -type "float3" 0 0.71543145 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.71543145 0 ;
	setAttr ".tk[109]" -type "float3" -0.0086238682 0.71543145 0.0088831391 ;
	setAttr ".tk[110]" -type "float3" -0.0017596767 0.047860768 0.005517879 ;
	setAttr ".tk[111]" -type "float3" 0 0 -0.0025818918 ;
	setAttr ".tk[112]" -type "float3" 0 0 -0.0025818918 ;
	setAttr ".tk[113]" -type "float3" 0 0 0.0071963472 ;
	setAttr ".tk[114]" -type "float3" 0 0 0.0071963472 ;
	setAttr ".tk[115]" -type "float3" 0 0 0.0071963472 ;
	setAttr ".tk[117]" -type "float3" 0 0 -0.0053839721 ;
	setAttr ".tk[118]" -type "float3" 0 0 -0.0053839721 ;
	setAttr ".tk[119]" -type "float3" 0 0 -0.0053839721 ;
	setAttr ".tk[121]" -type "float3" 0 0.2903648 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.2903648 -0.0054878984 ;
	setAttr ".tk[123]" -type "float3" 0 0.2903648 -0.0054878984 ;
	setAttr ".tk[124]" -type "float3" 0 0.2903648 -0.0054878984 ;
	setAttr ".tk[125]" -type "float3" 0 0.2903648 0.0085548135 ;
	setAttr ".tk[126]" -type "float3" 0 0.2903648 0.0085548135 ;
	setAttr ".tk[127]" -type "float3" 0 0.2903648 0 ;
	setAttr ".tk[128]" -type "float3" 0 0.2903648 0.003203806 ;
	setAttr ".tk[129]" -type "float3" 0 0.2903648 0 ;
	setAttr ".tk[130]" -type "float3" 0 0.2903648 -0.0014899811 ;
	setAttr ".tk[131]" -type "float3" -0.0045819883 0.2903648 -0.0014899811 ;
	setAttr ".tk[133]" -type "float3" 0 0 -0.012835957 ;
	setAttr ".tk[134]" -type "float3" 0 0 -0.012835957 ;
	setAttr ".tk[135]" -type "float3" 0 0 -0.012700039 ;
	setAttr ".tk[136]" -type "float3" 0 0 -0.0035433955 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.0048454348 ;
	setAttr ".tk[139]" -type "float3" 0 0 -0.0048454348 ;
	setAttr ".tk[140]" -type "float3" 0 0 -0.0048454348 ;
	setAttr ".tk[141]" -type "float3" 0 0 0.0045301979 ;
	setAttr ".tk[142]" -type "float3" -0.0045819883 0 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.47549605 -0.0036966989 ;
	setAttr ".tk[145]" -type "float3" 0 0.47549605 -0.0036966989 ;
	setAttr ".tk[146]" -type "float3" 0 0.47549605 -0.0051286272 ;
	setAttr ".tk[147]" -type "float3" 0 0.47549605 -0.0018082323 ;
	setAttr ".tk[148]" -type "float3" 0 0.47549605 0.0033203952 ;
	setAttr ".tk[149]" -type "float3" 0 0.47549605 0.0033203952 ;
	setAttr ".tk[150]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[151]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[153]" -type "float3" 0.00012153839 0.47549605 -0.0029829522 ;
	setAttr ".tk[155]" -type "float3" 0 0 -0.0036966989 ;
	setAttr ".tk[156]" -type "float3" 0 0 -0.00023936643 ;
	setAttr ".tk[157]" -type "float3" 0 0 0.0099890605 ;
	setAttr ".tk[158]" -type "float3" 0 0 0.0099890605 ;
	setAttr ".tk[159]" -type "float3" 0 0 0.0099890605 ;
	setAttr ".tk[161]" -type "float3" 0 0 0.0034573325 ;
	setAttr ".tk[162]" -type "float3" 0 0 0.010208825 ;
	setAttr ".tk[163]" -type "float3" 0 0 0.0067514931 ;
	setAttr ".tk[164]" -type "float3" 0.00012153839 0 -0.0029829522 ;
	setAttr ".tk[165]" -type "float3" 0 0.65642476 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.65642476 -0.0051286272 ;
	setAttr ".tk[167]" -type "float3" 0 0.65642476 -0.0016712953 ;
	setAttr ".tk[168]" -type "float3" 0 0.65642476 0.0034573325 ;
	setAttr ".tk[169]" -type "float3" 0 0.65642476 0 ;
	setAttr ".tk[170]" -type "float3" 0 0.65642476 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.65642476 -0.0051286272 ;
	setAttr ".tk[172]" -type "float3" 0 0.65642476 -0.0051286272 ;
	setAttr ".tk[173]" -type "float3" 0 0.65642476 0.0061131199 ;
	setAttr ".tk[174]" -type "float3" 0 0.65642476 0.0061131199 ;
	setAttr ".tk[175]" -type "float3" -0.0060380213 0.65642476 0 ;
	setAttr ".tk[177]" -type "float3" 0 0 -0.0088079404 ;
	setAttr ".tk[178]" -type "float3" 0 0 -0.0053506084 ;
	setAttr ".tk[179]" -type "float3" 0 0 0.0034573325 ;
	setAttr ".tk[180]" -type "float3" 0 0 0.0034573325 ;
	setAttr ".tk[181]" -type "float3" 0 0 0.0034573325 ;
	setAttr ".tk[182]" -type "float3" 0 0 -0.0051286272 ;
	setAttr ".tk[183]" -type "float3" 0 0 0.0016228656 ;
	setAttr ".tk[184]" -type "float3" 0 0 0.0060759508 ;
	setAttr ".tk[185]" -type "float3" 0 0 0.011204578 ;
	setAttr ".tk[186]" -type "float3" -0.0060380213 0 0.0044530854 ;
	setAttr ".tk[187]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[189]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[190]" -type "float3" 0 0.47549605 0.0067514931 ;
	setAttr ".tk[191]" -type "float3" 0 0.47549605 0.0067514931 ;
	setAttr ".tk[192]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[194]" -type "float3" 0 0.47549605 0.0016228656 ;
	setAttr ".tk[195]" -type "float3" 0 0.47549605 -0.0051286272 ;
	setAttr ".tk[196]" -type "float3" 0 0.47549605 0 ;
	setAttr ".tk[197]" -type "float3" -0.0060380213 0.47549605 0 ;
	setAttr ".tk[199]" -type "float3" 0 0 -0.0053506084 ;
	setAttr ".tk[200]" -type "float3" 0 0 -0.0053506084 ;
	setAttr ".tk[201]" -type "float3" 0 0 -0.0036793132 ;
	setAttr ".tk[202]" -type "float3" 0 0 0.0099890605 ;
	setAttr ".tk[203]" -type "float3" 0 0 0.0048604337 ;
	setAttr ".tk[204]" -type "float3" 0 0 -0.0051286272 ;
	setAttr ".tk[207]" -type "float3" 0 0 -0.011861368 ;
	setAttr ".tk[208]" -type "float3" 0 0 -0.011861368 ;
	setAttr ".tk[209]" -type "float3" 0 0.16680121 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.16680121 0.0067514931 ;
	setAttr ".tk[211]" -type "float3" 0 0.16680121 0.0067514931 ;
	setAttr ".tk[212]" -type "float3" 0 0.16680121 0.0067514931 ;
	setAttr ".tk[213]" -type "float3" 0 0.16680121 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.16680121 -0.0051286272 ;
	setAttr ".tk[215]" -type "float3" 0 0.16680121 -0.0051286272 ;
	setAttr ".tk[216]" -type "float3" 0 0.16680121 0.0099890605 ;
	setAttr ".tk[217]" -type "float3" 0 0.16680121 0.0099890605 ;
	setAttr ".tk[218]" -type "float3" 0 0.16680121 0.0060087177 ;
	setAttr ".tk[219]" -type "float3" -0.0030765696 0.16680121 0.005836112 ;
createNode groupParts -n "pasted__groupParts10";
	rename -uid "EA8A7F0C-4D21-9E4C-CCE9-28A41C092996";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[10:29]" "f[50:69]" "f[90:109]" "f[130:149]" "f[170:189]";
createNode groupParts -n "pasted__groupParts9";
	rename -uid "4285B238-4220-FAD3-D34B-AB8E678C527A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0:9]" "f[30:49]" "f[70:89]" "f[110:129]" "f[150:169]" "f[190:199]";
	setAttr ".irc" -type "componentList" 5 "f[10:29]" "f[50:69]" "f[90:109]" "f[130:149]" "f[170:189]";
createNode polyPlane -n "pasted__polyPlane4";
	rename -uid "FF5AF78B-46A4-380B-A411-2D89888B569A";
	setAttr ".sh" 20;
	setAttr ".cuv" 2;
createNode groupId -n "pasted__groupId20";
	rename -uid "FE130165-41A8-3CAD-BE4C-CCAE18B8DAB6";
	setAttr ".ihi" 0;
createNode materialInfo -n "pasted__pasted__materialInfo51";
	rename -uid "11960F37-42CA-4052-2C54-F189592E6F1B";
createNode shadingEngine -n "pasted__pasted__phong8SG";
	rename -uid "AA9B8B68-497E-C430-8443-B380936B0493";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "pasted__pasted__phong8";
	rename -uid "85F6C036-4A4B-D1F6-3E41-3E98F4B83882";
createNode shadingMap -n "shadingMap10";
	rename -uid "ADB619CA-4854-3368-4997-2CA6D8EB7100";
createNode shadingEngine -n "shadingMap10SG";
	rename -uid "08D61083-4965-A648-4D58-64AD01F7B6D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo108";
	rename -uid "42FF7A54-458A-1F26-3E22-E9AB1825DACD";
createNode shadingMap -n "shadingMap11";
	rename -uid "B1A227FB-4B01-6B8C-F8DE-92A4F5993321";
createNode shadingEngine -n "shadingMap11SG";
	rename -uid "8668A119-4A8D-9290-8CD3-489B8110795D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo109";
	rename -uid "3E3B3789-4FA1-5363-3E30-56B4303E934E";
createNode shadingMap -n "shadingMap12";
	rename -uid "0B00434F-4F2B-51C2-08D8-F384B2EC22ED";
createNode shadingEngine -n "shadingMap12SG";
	rename -uid "A73753FC-4192-4122-0C33-4B813BBA41D4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo110";
	rename -uid "2C7C5BF6-4A64-D9FA-09C9-D1B748889665";
createNode shadingMap -n "shadingMap13";
	rename -uid "31A1859F-41CA-96D0-6739-54B4874B5327";
createNode shadingEngine -n "shadingMap13SG";
	rename -uid "2F0D8F5E-44EB-B0D0-FB1B-1488DC3681AA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo111";
	rename -uid "66177668-4B3C-B0B2-BA0B-418288474CC6";
createNode shadingEngine -n "pasted__shadingMap10SG";
	rename -uid "91B78B01-4D51-5AAA-A46F-CB8635501EE6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo108";
	rename -uid "D6E2EDB0-421E-D071-C03E-0890A5E91C67";
createNode shadingMap -n "pasted__shadingMap10";
	rename -uid "E2E80101-46AF-C3D5-A3B5-458E13C64AF1";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace8";
	rename -uid "F09D607C-4DD8-E83A-3ACC-C887891A2A78";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 58.867138215060628 0 0 0 0 1 0 0 0 0 1.1090351029275674 0
		 -17.001015650072052 19.883684544217736 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -17.001015 19.883684 4.3901324 ;
	setAttr ".rs" 48118;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -46.434584757602366 19.883684544217736 -0.55451755146378368 ;
	setAttr ".cbx" -type "double3" 12.432553457458262 19.883684544217736 9.3347821033363392 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak7";
	rename -uid "8AD6441A-4B0C-40D1-EB68-DCB77208773B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 2.5177281 ;
	setAttr ".tk[2]" -type "float3" 0 0 7.9170299 ;
	setAttr ".tk[3]" -type "float3" 0 0 2.5177281 ;
	setAttr ".tk[5]" -type "float3" 0 0 7.9170299 ;
createNode polyPlane -n "pasted__polyPlane5";
	rename -uid "F6532F4B-4B2C-8C7D-5205-B4A337A06B8D";
	setAttr ".sw" 2;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode groupId -n "pasted__groupId34";
	rename -uid "C2615686-41E1-4A6F-5190-E388BCF20ADA";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId35";
	rename -uid "7BB4BD3B-4067-49BD-2492-BDA1E5679E4A";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__shadingMap12SG";
	rename -uid "12624134-4F70-D226-91AD-51934A15045A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo110";
	rename -uid "AFCCAA9C-4B52-0E9C-A070-3B981E617EEC";
createNode shadingMap -n "pasted__shadingMap12";
	rename -uid "356F5B16-4FD6-6ADE-B736-70931BCDE57C";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace9";
	rename -uid "8CCE55D6-4FD9-2EF7-54D8-4DA81CB89321";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 58.867138215060628 0 0 0 0 1 0 0 0 0 1.1090351029275674 0
		 -17.001015650072052 19.883684544217736 -11.47063981109256 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -17.001015 19.883684 -15.953422 ;
	setAttr ".rs" 52167;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -46.434584757602366 19.883684305799157 -21.130209738561057 ;
	setAttr ".cbx" -type "double3" 12.432553457458262 19.883684544217736 -10.776633590502879 ;
	setAttr ".raf" no;
createNode groupId -n "pasted__groupId36";
	rename -uid "FFC99D50-4560-C9FD-4E91-B380D1C3CA18";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__shadingMap13SG";
	rename -uid "E2741095-4F89-613A-1D39-4D8D72F6DC16";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo111";
	rename -uid "16470755-4AB6-BA38-743C-DAAC1AEED532";
createNode shadingMap -n "pasted__shadingMap13";
	rename -uid "D58B129A-48DF-32A0-3548-2BB2864A7BE2";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace10";
	rename -uid "43FC8DEC-46F8-BAD5-FCEE-6B92AD0C5C6E";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 58.867138215060628 0 0 0 0 1 0 0 0 0 1.1090351029275674 0
		 -17.001015650072052 19.883684544217736 -35.663779664189207 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -17.001015 19.883684 -40.029545 ;
	setAttr ".rs" 45878;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -46.434584757602366 19.883684305799157 -46.687576487678349 ;
	setAttr ".cbx" -type "double3" 12.432553457458262 19.883684544217736 -33.371515257863322 ;
	setAttr ".raf" no;
createNode phongE -n "phongE37";
	rename -uid "C3EC9A9D-42F0-794F-7618-1E908BBC39F2";
createNode shadingEngine -n "phongE37SG";
	rename -uid "BA48684E-439B-5E29-6A48-8E9B015FA9DE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo112";
	rename -uid "FD53F6FE-4D12-3BDF-4C59-639CF77823E8";
createNode phongE -n "phongE38";
	rename -uid "BE25868C-49E6-C95B-218A-FF94CC9A64C4";
	setAttr ".c" -type "float3" 0.1293 0.1293 0.1293 ;
createNode shadingEngine -n "phongE38SG";
	rename -uid "C5AD84DE-4E7C-6AED-4FDC-4CBE5ED06F14";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo113";
	rename -uid "506C2EC1-419B-08CC-E0C7-71A0397E7727";
createNode shadingMap -n "shadingMap14";
	rename -uid "1CD22FAC-4261-DBE4-6F59-8DA21071820C";
createNode shadingEngine -n "shadingMap14SG";
	rename -uid "F6AD844D-438B-47F8-A02D-7CBE321338D0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo114";
	rename -uid "C63A0335-41BA-C192-914F-72BDE4865746";
createNode phongE -n "phongE39";
	rename -uid "A9B2F850-457E-988A-26B1-48BE044625BC";
	setAttr ".c" -type "float3" 0.2375 0.2375 0.2375 ;
createNode shadingEngine -n "phongE39SG";
	rename -uid "4999BA33-4AF5-3BCB-FA08-438F54EB7354";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo115";
	rename -uid "F6B8C6F1-4C3E-6F50-D94A-BE966F07C2B8";
createNode phong -n "phong10";
	rename -uid "EA4D576C-4DB4-8F14-B913-E996BA7E3369";
	setAttr ".c" -type "float3" 0.41069999 0.41069999 0.41069999 ;
createNode shadingEngine -n "phong10SG";
	rename -uid "0821441E-464A-9551-5CA8-098449CD4A27";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo116";
	rename -uid "22EE8C4B-4DAF-37B5-0E6D-A0B543307082";
createNode shadingMap -n "shadingMap15";
	rename -uid "ACA71391-460A-69F5-7634-FDAAF05AA9D1";
createNode shadingEngine -n "shadingMap15SG";
	rename -uid "EC87189A-4542-9401-E013-B49AE1A2CD65";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo117";
	rename -uid "053056C9-45FA-3797-DAE0-1395240C7D06";
createNode phongE -n "phongE40";
	rename -uid "0EE734AB-4097-D553-7442-07872C937519";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".it" -type "float3" 0.87199998 0.87199998 0.87199998 ;
createNode shadingEngine -n "phongE40SG";
	rename -uid "53C63042-417C-E941-5891-0BADF2241044";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo118";
	rename -uid "F4149FB9-4159-21FB-9553-1EAD01FE6E77";
createNode materialInfo -n "pasted__materialInfo118";
	rename -uid "1F03AE33-47BF-D6F6-E5CF-72A56418E1F4";
createNode shadingEngine -n "pasted__phongE40SG";
	rename -uid "CFA8F472-4410-2096-9E44-34B892432F32";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE40";
	rename -uid "21142657-4A3F-9EA0-11C4-7C8B7438BB9E";
	setAttr ".c" -type "float3" 1 0.36979997 0 ;
	setAttr ".it" -type "float3" 0.87199998 0.87199998 0.87199998 ;
createNode deleteComponent -n "pasted__deleteComponent1";
	rename -uid "604A419E-4CBA-2504-539C-E9AC42474504";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyCube -n "pasted__polyCube8";
	rename -uid "886A6BFA-48E7-2A61-88EC-0889DDCDE901";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo115";
	rename -uid "7C00CA65-46C0-3AD7-8A5E-5EA93863F9CA";
createNode shadingEngine -n "pasted__phongE39SG";
	rename -uid "4EE77516-4505-52B5-39AF-EE8F21B8854F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE39";
	rename -uid "70A5353D-423B-A4DF-23FB-FAB3337C68D0";
createNode materialInfo -n "pasted__materialInfo113";
	rename -uid "3F044538-4A4B-0EF3-98D8-2CAF341D73FC";
createNode shadingEngine -n "pasted__phongE38SG";
	rename -uid "465AE74C-4A3D-76DB-5D75-04971078F0CA";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE38";
	rename -uid "162BE024-4EC5-FEE1-4F8E-14B405FDB890";
createNode polyCylinder -n "pasted__polyCylinder4";
	rename -uid "C7B21376-491B-7D64-455D-9CB675900D6E";
	setAttr ".sh" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace11";
	rename -uid "75A9B584-4FF0-76C1-B98A-AC9536DDE23C";
	setAttr ".ics" -type "componentList" 1 "f[0:99]";
	setAttr ".ix" -type "matrix" 1.8571144462411715 0 0 0 0 1 0 0 0 0 1.4285495698245478 0
		 -0.22611361235852742 82.366684239500131 -0.47541836444613467 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.22611362 82.369469 -0.47541836 ;
	setAttr ".rs" 40931;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1546708354791131 82.32884904756483 -1.1896931493584086 ;
	setAttr ".cbx" -type "double3" 0.7024436107620583 82.410082999759283 0.23885642046613925 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak8";
	rename -uid "330443FA-41A2-C5A2-AE76-8386E67920B7";
	setAttr ".uopa" yes;
	setAttr -s 85 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[3]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[5]" -type "float3" 1.4945539e-17 0.04339876 0 ;
	setAttr ".tk[7]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[14]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[16]" -type "float3" 1.4945539e-17 0.0055635571 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[18]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[25]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[27]" -type "float3" 1.4945539e-17 0.04339876 0 ;
	setAttr ".tk[29]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[36]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[38]" -type "float3" 1.4945539e-17 0.0055635571 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[40]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[47]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[49]" -type "float3" 1.4945539e-17 0.04339876 0 ;
	setAttr ".tk[51]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[58]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[60]" -type "float3" 1.4945539e-17 0.0055635571 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[62]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[69]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[71]" -type "float3" 1.4945539e-17 0.04339876 0 ;
	setAttr ".tk[73]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[80]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[82]" -type "float3" 1.4945539e-17 0.0055635571 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[84]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[89]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[91]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[93]" -type "float3" 1.4945539e-17 0.04339876 0 ;
	setAttr ".tk[95]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[102]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[104]" -type "float3" 1.4945539e-17 0.0055635571 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[106]" -type "float3" 2.7755576e-17 0.0055635571 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.0055635571 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.037835192 0 ;
	setAttr ".tk[111]" -type "float3" 0 0.04339876 0 ;
	setAttr ".tk[113]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[115]" -type "float3" 1.4945539e-17 0.04339876 0 ;
	setAttr ".tk[117]" -type "float3" 2.7755576e-17 0.04339876 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.04339876 0 ;
createNode polyPlane -n "pasted__polyPlane6";
	rename -uid "97567F60-42B3-4FBE-4B42-10B946D174B5";
	setAttr ".cuv" 2;
createNode materialInfo -n "pasted__materialInfo116";
	rename -uid "95861781-42E0-61BF-0A7F-C89A39267765";
createNode shadingEngine -n "pasted__phong10SG";
	rename -uid "BB3708CC-4C10-471A-F2B2-4FAA31B4F08F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "pasted__phong10";
	rename -uid "ED779485-4B89-AABE-9050-97A9E773BE6B";
	setAttr ".c" -type "float3" 0.70999998 0.41695911 0.30600998 ;
createNode phongE -n "phongE41";
	rename -uid "D74A9B66-443F-2E95-0F77-1BB7D803CCA4";
createNode shadingEngine -n "phongE41SG";
	rename -uid "D4F1FB5A-4EAA-608A-84D5-0DA738D808F7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo119";
	rename -uid "8BD08283-442D-D427-A892-568AB27C0D01";
createNode phongE -n "phongE42";
	rename -uid "5CEC24B5-4751-60A3-2C28-7C941999F6CF";
	setAttr ".c" -type "float3" 0.6631 0.6631 0.6631 ;
createNode shadingEngine -n "phongE42SG";
	rename -uid "E8726D6F-42F9-0660-CA64-6683FDB6A43E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo120";
	rename -uid "2E7658AC-4585-2DC6-7925-7E81B1FDDC14";
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge1";
	rename -uid "2F59C4EA-4AC2-3612-FC73-2CAE516602A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.3956268541708852 -3.4362830649361591 -11.320793785302676 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.3956265 -2.4362831 -11.320794 ;
	setAttr ".rs" 41428;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.1145241968527699 -2.4362830649361591 -12.601896681039371 ;
	setAttr ".cbx" -type "double3" 6.6767292730704213 -2.4362830649361591 -10.039691247193851 ;
createNode deleteComponent -n "pasted__deleteComponent2";
	rename -uid "B9EC8D84-461A-F5C6-EEA3-77B2430A91A3";
	setAttr ".dc" -type "componentList" 1 "f[40:59]";
createNode polyTweak -n "pasted__polyTweak9";
	rename -uid "4BDB6DCA-461E-7E00-8AC4-9291E47335B0";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[20:39]" -type "float3"  0.26734444 0 -0.086865403
		 0.22741675 0 -0.16522786 0.16522792 0 -0.22741663 0.086865462 0 -0.26734427 3.3510013e-08
		 0 -0.28110242 -0.08686541 0 -0.26734424 -0.16522786 0 -0.22741656 -0.22741657 0 -0.1652278
		 -0.26734424 0 -0.086865351 -0.28110239 0 5.0265012e-08 -0.26734424 0 0.086865455
		 -0.22741657 0 0.16522786 -0.1652278 0 0.22741663 -0.086865395 0 0.26734427 2.5132506e-08
		 0 0.28110242 0.086865425 0 0.26734427 0.16522786 0 0.2274166 0.22741657 0 0.16522786
		 0.26734424 0 0.08686544 0.28110239 0 5.0265012e-08;
createNode polyCylinder -n "pasted__polyCylinder5";
	rename -uid "5CAE8141-4CFB-F233-4C2E-F9AEE20E932A";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "pasted__materialInfo120";
	rename -uid "65E4B0C0-4B56-B473-53CF-58ADCFD87379";
createNode shadingEngine -n "pasted__phongE42SG";
	rename -uid "405B7707-4272-43FA-13E9-5CB84D0FE34C";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE42";
	rename -uid "2803014F-411C-3C27-4291-EF9965E394A5";
	setAttr ".c" -type "float3" 0.048282009 0.19765791 0.61900002 ;
createNode phongE -n "phongE43";
	rename -uid "3FC5F58F-4DA6-0A99-BFD1-3499D4377E65";
createNode shadingEngine -n "phongE43SG";
	rename -uid "EE0AD7E6-4B15-A150-62C3-05B95283BE27";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo121";
	rename -uid "02B8DA99-4A6F-1A7D-643A-CA86D47EF7FE";
createNode groupId -n "groupId43";
	rename -uid "BEE2A423-4E3B-A4BA-4FFC-478F95F67D7C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "C50EFB80-448A-6932-493A-F9ABD2F56CC3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 19 "f[3]" "f[5:6]" "f[8]" "f[13]" "f[15]" "f[18:19]" "f[21:25]" "f[29]" "f[31]" "f[36]" "f[38]" "f[41:43]" "f[67:68]" "f[71:72]" "f[74:75]" "f[77]" "f[79:80]" "f[83:84]" "f[86:89]";
createNode phongE -n "phongE44";
	rename -uid "D59E120B-4D1C-4B45-86A4-35B7800A5F3A";
createNode shadingEngine -n "phongE44SG";
	rename -uid "A031B06F-410F-15B5-E292-2288FC92AF5A";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo122";
	rename -uid "045A8AF1-4541-9865-8217-E7A55D4F987B";
createNode phongE -n "phongE45";
	rename -uid "7F24A3A3-448C-55FF-516B-4A8E87E0AF51";
	setAttr ".c" -type "float3" 1 0.78359997 0.745 ;
createNode shadingEngine -n "phongE45SG";
	rename -uid "8BD35A02-4608-3ABC-DD34-BBB0594AEAD4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo123";
	rename -uid "597BD554-4A3F-FDB5-D527-4DA6386B5FD7";
createNode phongE -n "phongE46";
	rename -uid "D90241CB-41B9-2295-E1D2-DDA3F0003192";
createNode shadingEngine -n "phongE46SG";
	rename -uid "0FCC36A2-4437-7566-B0FB-A3B6C516844B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo124";
	rename -uid "1DA1E362-4305-2B8D-A9EF-D59407206396";
createNode file -n "file1";
	rename -uid "F1F1A471-4A14-6FDF-2C16-61A2A2A135B4";
	setAttr ".co" -type "float3" 0.35350001 0.43979999 0.4366 ;
	setAttr ".dc" -type "float3" 0.2543 0.2344 0.2344 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/white-plaster-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "28DBBAFE-4CF3-4AEF-83F5-C195E3E29AF0";
createNode file -n "file2";
	rename -uid "4C2A6CB5-4185-7C2F-4926-89BDE55AB83F";
	setAttr ".cg" -type "float3" 0.95529997 1 0.50980002 ;
	setAttr ".ag" 0.72611463069915771;
	setAttr ".dc" -type "float3" 0.23566879 0.23566879 0.23566879 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/simple-smooth-fabric-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "307D1DB2-4341-605E-624B-198D9F91DA84";
createNode file -n "file3";
	rename -uid "0DB9620B-4DFA-CC8D-ED9F-0C9689790407";
	setAttr ".cg" -type "float3" 0.5043 0.37270001 0.3263 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/simple-smooth-fabric-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "3FC23653-43C7-30D7-3975-B4A85335F289";
createNode lambert -n "lambert14";
	rename -uid "53079764-418E-48B5-81FA-F48F9B8F13E9";
createNode shadingEngine -n "lambert14SG";
	rename -uid "FD1C8678-41AC-3585-12D9-9F925FA790A8";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo125";
	rename -uid "A74A9ACA-4525-852B-12A2-B59B4696ABE9";
createNode file -n "file4";
	rename -uid "DE7EED29-4E8D-7AE8-4ACE-65B92621469B";
	setAttr ".co" -type "float3" 0.4709 0.3344 0.28619999 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "F30CD1ED-4350-A4EE-C88F-47AC29A5C40E";
createNode lambert -n "lambert15";
	rename -uid "9DC66169-4D2C-F506-FC90-20936D2D1101";
	setAttr ".c" -type "float3" 0.2071 0.2071 0.2071 ;
createNode shadingEngine -n "lambert15SG";
	rename -uid "7D936827-433B-4BCA-D01D-87A3A7E82BD4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo126";
	rename -uid "155FDF16-44D0-4038-3EB6-9CBB6CDE1250";
createNode file -n "file5";
	rename -uid "A51D5466-4F3F-A7AD-5A02-45A098A57EE9";
	setAttr ".cg" -type "float3" 0.98860002 0.41170001 1 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/simple-smooth-fabric-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "B43335C1-422E-003F-6411-8081205116EA";
createNode file -n "file6";
	rename -uid "D6FBF0A6-4CF1-B37D-1F3E-3EB3DFAD0FB4";
	setAttr ".cg" -type "float3" 0.4709 0.4709 0.4709 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/simple-smooth-fabric-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "F8F4DA18-47DC-55F9-AC10-6A97A01FF9AC";
createNode file -n "file7";
	rename -uid "D0BEE91D-4A81-0514-D327-F78E94F768C1";
	setAttr ".cg" -type "float3" 1 0.73750001 0.294 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-flooring-textured-background-design.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "B2B82024-43D6-C82C-BC7D-B0B2089A2FA2";
createNode file -n "file8";
	rename -uid "A4D923BC-4FB0-D192-886A-F0BDBB9E7521";
	setAttr ".cg" -type "float3" 0.54000002 0.33919999 0 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "F0384856-467B-2631-4EDB-39AD76E5201F";
createNode file -n "file9";
	rename -uid "E8546749-446B-5E8A-9CBA-E5B539685D78";
	setAttr ".cg" -type "float3" 0.95990002 1 0 ;
	setAttr ".co" -type "float3" 0.83700001 0.87199998 0 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-flooring-textured-background-design.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "BEA59451-43E2-D6DB-71E4-00AB4147ABBD";
createNode file -n "file10";
	rename -uid "56D676FE-4B80-C169-3251-38A5072FA6A5";
	setAttr ".cg" -type "float3" 0.93379998 0.78729999 0.90789998 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/stone-floor-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "BBDD32D6-4750-1AAD-4792-DEB95E85CEC6";
createNode file -n "file11";
	rename -uid "62AC15E5-4F32-D2FC-B1DC-8592707B3D8B";
	setAttr ".cg" -type "float3" 1 0.41170001 0.42219999 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/stone-floor-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "C612252B-4070-256B-2715-3DBE617FD935";
createNode file -n "file12";
	rename -uid "09E874BD-4DCB-A886-2B6B-118DF4C3692C";
	setAttr ".cg" -type "float3" 1 0.63380003 0.33329999 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "62553892-4811-0E34-4496-8099036703B6";
createNode file -n "file13";
	rename -uid "68CA6B39-4C9E-2C00-9D9E-83B16B823BAC";
	setAttr ".cg" -type "float3" 0.84450001 1 0 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/grunge-concrete-material-background-texture-wall-concept.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "D225B5F7-442C-0829-49E4-98A23D2266D7";
createNode file -n "file14";
	rename -uid "0B2E5C50-4361-8FAD-85DF-B2BD218C9743";
	setAttr ".cg" -type "float3" 0.8143 0.079000004 0 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/grunge-concrete-material-background-texture-wall-concept.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "53C77C4A-41B0-9BB9-BFC2-F4B831E1081D";
createNode file -n "file15";
	rename -uid "636B837B-4FA8-58D4-05C5-E897EAA135AE";
	setAttr ".cg" -type "float3" 0 0.22409999 1 ;
	setAttr ".ag" 1.3757961988449097;
	setAttr ".dc" -type "float3" 0 0.047360532 0.36942676 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/gray-wall-textures-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture15";
	rename -uid "34DAA152-492A-706F-8099-9DA7D38B3472";
createNode file -n "file16";
	rename -uid "200CBB47-4EC2-BA2A-A57B-4F8D9FB1947A";
	setAttr ".cg" -type "float3" 1 0.097999997 0.83740002 ;
	setAttr ".ag" 0.35668790340423584;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/gray-wall-textures-background.jpg";
	setAttr ".exp" -0.095541402697563171;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture16";
	rename -uid "90AC5112-4848-DF82-6C52-02815206332F";
createNode file -n "file17";
	rename -uid "A1E4DD58-4DB6-460A-0108-30B822DFCD61";
	setAttr ".cg" -type "float3" 0.73040003 0.7604 0.14910001 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/gray-wall-textures-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "5E374DB6-4E29-2E4A-1F1C-D7941F8530A0";
createNode file -n "file18";
	rename -uid "46E4F82F-4C08-41AE-85F6-0FBBA2E577BF";
	setAttr ".cg" -type "float3" 1 0.39930001 0 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-flooring-textured-background-design.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture18";
	rename -uid "5329DA75-4A7A-714C-8DAA-7C98FBEBDCCA";
createNode file -n "file19";
	rename -uid "98CE8A5A-41AB-C4AE-A58A-689EE26CF7A9";
	setAttr ".cg" -type "float3" 1 0.97439998 0.31369999 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/simple-smooth-fabric-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture19";
	rename -uid "89A3C676-43AA-E2A4-EE8A-D9A997A88083";
createNode file -n "file20";
	rename -uid "FAC9799D-4F03-D806-BF45-9ABC26FE8135";
	setAttr ".cg" -type "float3" 0.5043 0.48539999 0 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/pastel-brown-linen-textile-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture20";
	rename -uid "24EBE767-4171-68A5-4346-1D925816EFF1";
createNode file -n "file21";
	rename -uid "E148481E-4F18-A6C3-3B1D-E6B54B025276";
	setAttr ".cg" -type "float3" 0.2218 0.2172 0.1 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/pastel-brown-linen-textile-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture21";
	rename -uid "B87D4D6E-4603-FEB0-9406-AEAFE3F0EB17";
createNode file -n "file22";
	rename -uid "FCF95D28-48C2-C804-8434-189684606270";
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture22";
	rename -uid "23A19D3D-4AB3-21C1-FEBF-0590998FEB27";
createNode file -n "file23";
	rename -uid "BEBF08F4-4327-367C-2866-31923A217BE9";
	setAttr ".cg" -type "float3" 0.0942 0.14139999 0.1189 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/stone-floor-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture23";
	rename -uid "2776384E-45EA-91AC-E4AA-DDB79F755828";
createNode file -n "file24";
	rename -uid "430C07B8-4A22-59B4-2A90-3BA9CDF253AC";
	setAttr ".cg" -type "float3" 0.40000001 0.25126001 0.1336 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/stone-floor-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture24";
	rename -uid "347CE127-4F97-3D80-7D41-9F960482E159";
createNode file -n "file25";
	rename -uid "F0F425BD-4D28-7AA8-243D-5A90820BCF90";
	setAttr ".cg" -type "float3" 0.40000001 0.25126001 0.1336 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/stone-floor-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture25";
	rename -uid "1128D40E-4B54-4A6B-0893-FE8EB131A917";
createNode file -n "file26";
	rename -uid "763AC2FD-45DE-5517-37D8-55B4438643DA";
	setAttr ".cg" -type "float3" 0.40000001 0.25126001 0.1336 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/stone-floor-texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture26";
	rename -uid "94BBB1A1-433C-ABEE-8ACF-57B6580FF17E";
createNode file -n "file27";
	rename -uid "416A5225-4CC5-F3C9-FE74-F4AFCEFAE599";
	setAttr ".cg" -type "float3" 0.41100001 0.39307961 0.37894201 ;
	setAttr ".ag" 2;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/wooden-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture27";
	rename -uid "94901548-4D39-3893-B718-08ADECF61666";
createNode file -n "file28";
	rename -uid "C44239F0-4D16-4BA4-1F06-2E9077AF86A3";
	setAttr ".cg" -type "float3" 0 0 0 ;
	setAttr ".ag" 0.73885351419448853;
	setAttr ".ao" 0.21656051278114319;
	setAttr ".dc" -type "float3" 0.34394905 0.34394905 0.34394905 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/silver-metallic-textured-background.jpg";
	setAttr ".exp" -1.2420382499694824;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture28";
	rename -uid "1D18C93A-4E81-1D62-D80E-EF8DBCD981E4";
createNode file -n "file29";
	rename -uid "C7AF7F9B-46DC-7991-5026-AEADB5A697E4";
	setAttr ".cg" -type "float3" 0.207 0.207 0.207 ;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/silver-metallic-textured-background.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture29";
	rename -uid "12B4CE4C-43C6-F6CE-ED02-8FB1C9EA60E4";
createNode standardSurface -n "standardSurface3";
	rename -uid "739D1087-4467-8336-1591-9F83710F4CFD";
createNode shadingEngine -n "standardSurface3SG";
	rename -uid "F416A8C4-4402-8BB4-28D3-5A9AF2F5A0C5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo127";
	rename -uid "6753623D-43E3-89E6-EA6B-628453AAE11B";
createNode groupId -n "groupId44";
	rename -uid "D47FA4AA-45B3-7EBB-5D9D-ED9FCEC5ADDC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "9EA14E21-4A5E-6B5C-9648-31B220F0C61B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode blinn -n "blinn2";
	rename -uid "2C77E420-4426-1CD9-E7C9-1A9C36FB50CF";
createNode shadingEngine -n "blinn2SG";
	rename -uid "05544DE8-46FE-2352-3FE9-DBAFE3D1797D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo128";
	rename -uid "FEBC5D33-41A6-12AE-57B5-29BEF8CE1EBA";
createNode file -n "file30";
	rename -uid "0E02029A-44BC-2B22-6FF5-CEAC6EC176AE";
	setAttr ".co" -type "float3" 0.15923567 0.15923567 0.15923567 ;
	setAttr ".ag" 0.57324838638305664;
	setAttr ".ao" 0.81528663635253906;
	setAttr ".ftn" -type "string" "E:/DDD20022_3D_Modelling_for_Objects_and_Environments/Design Brief 2/draft_lighting_and_material_render/glass-background-with-frosted-pattern.jpg";
	setAttr ".exp" 0.031847134232521057;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture30";
	rename -uid "7EFB9842-4F4A-BBB5-25E1-ACAD05FFEA84";
createNode phong -n "phong11";
	rename -uid "C11CFE66-487E-8B28-39F0-438F8494EFFE";
createNode shadingEngine -n "phong11SG";
	rename -uid "D35E84DF-4060-08D1-9C88-5FB95FC7C73F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo129";
	rename -uid "BF5AA262-470D-CE05-F0CC-14B05D24A32C";
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "D4F415C2-4090-6E78-70D6-6180BFD09632";
createNode aiPhysicalSky -n "aiPhysicalSky2";
	rename -uid "270A04D5-4586-B980-99DF-77BE634B2EA8";
select -ne :time1;
	setAttr ".o" 120;
	setAttr ".unw" 120;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 205 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 208 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 30 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -s 30 ".tx";
select -ne :lambert1;
	setAttr ".it" -type "float3" 0.14139999 0.1332 0.122 ;
select -ne :initialShadingGroup;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".sdf" -type "string" "";
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".ofe" -type "string" "";
	setAttr ".efe" -type "string" "";
	setAttr ".oft" -type "string" "";
	setAttr ".ifp" -type "string" "";
	setAttr ".rv" -type "string" "";
	setAttr ".pram" -type "string" "";
	setAttr ".poam" -type "string" "";
	setAttr ".prlm" -type "string" "";
	setAttr ".polm" -type "string" "";
	setAttr ".prm" -type "string" "";
	setAttr ".pom" -type "string" "";
	setAttr ".pfrm" -type "string" "";
	setAttr ".pfom" -type "string" "";
	setAttr ".hbl" -type "string" "";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 4962;
	setAttr ".h" 3507;
	setAttr ".pa" 1;
	setAttr ".dar" 1.4148845672607422;
	setAttr ".dpi" 300;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "pasted__pasted__polyCube1.out" "|LivingRoom|pasted__Room|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__pasted__polySplitRing2.out" "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__pasted__polySplitRing6.out" "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__polyBevel3.out" "|LivingRoom|pasted__Sofa|pasted__pasted__pCube5|pasted__pasted__pCubeShape5.i"
		;
connectAttr "pasted__pasted__polyBevel5.out" "|LivingRoom|pasted__Sofa|pasted__pasted__pCube6|pasted__pasted__pCubeShape6.i"
		;
connectAttr "groupParts2.og" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "groupId3.id" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gid"
		;
connectAttr "phong11SG.mwc" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gco"
		;
connectAttr "groupId5.id" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gid"
		;
connectAttr "phongE32SG.mwc" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gco"
		;
connectAttr "groupId4.id" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__pasted__polyExtrudeEdge1.out" "pasted__pasted__pPlaneShape1.i"
		;
connectAttr "pasted__pasted__polyExtrudeEdge2.out" "|LivingRoom|pasted__WallClock|pasted__pasted__pPlane3|pasted__pasted__pPlaneShape3.i"
		;
connectAttr "pasted__pasted__polyDisc1.output" "pasted__pasted__pDiscShape1.i";
connectAttr "pasted__pasted__deleteComponent6.og" "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__pasted__polyCube7.out" "|LivingRoom|pasted__Window|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__polyCylinder2.out" "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__pasted__polyPlane3.out" "pasted__pasted__pPlaneShape4.i";
connectAttr "pasted__pasted__polyTorus1.out" "pasted__pasted__pTorusShape1.i";
connectAttr "groupParts30.og" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "groupId6.id" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr "phongE7SG.mwc" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[1].gid"
		;
connectAttr "phongE33SG.mwc" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[1].gco"
		;
connectAttr "groupId44.id" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[2].gid"
		;
connectAttr "blinn2SG.mwc" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[2].gco"
		;
connectAttr "groupId7.id" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__polyCube4.out" "|LivingRoom|TV|pasted__pCube2|pasted__pCubeShape2.i"
		;
connectAttr "polyBevel1.out" "|LivingRoom|TV|pasted__pCube3|pasted__pCubeShape3.i"
		;
connectAttr "pasted__polyExtrudeFace1.out" "|LivingRoom|Cabinet|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "pasted__polyCube2.out" "|LivingRoom|Cabinet|pasted__pCube2|pasted__pCubeShape2.i"
		;
connectAttr "pasted__polySphere1.out" "pasted__pSphereShape1.i";
connectAttr "pasted__polyExtrudeFace5.out" "|LivingRoom|Portraits|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "pasted__polyPlane1.out" "|LivingRoom|Portraits|Pic1|pasted__pPlane1|pasted__pPlaneShape1.i"
		;
connectAttr "groupParts8.og" "pasted__photo_1591969851586_adbbd4accf81Mesh.i";
connectAttr "pasted__photo_1591969851586_adbbd4accf81Converter.msg" "pasted__photo_1591969851586_adbbd4accf81Mesh.cnv"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment0.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[0].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[0].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment1.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[1].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[1].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment2.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[2].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[2].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment3.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[3].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[3].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment4.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[4].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[4].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment5.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[5].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[5].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment6.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[6].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[6].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment7.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[7].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[7].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment8.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[8].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[8].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment9.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[9].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[9].gco"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment10.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[10].gid"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[10].gco"
		;
connectAttr "groupId9.id" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[11].gid"
		;
connectAttr "phongE35SG.mwc" "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[11].gco"
		;
connectAttr "Pic1Converter.out" "Pic1Mesh.i";
connectAttr "Pic1Converter.msg" "Pic1Mesh.cnv";
connectAttr "Pic1Segment0.id" "Pic1Mesh.iog.og[0].gid";
connectAttr "Pic1ConverterSG0.mwc" "Pic1Mesh.iog.og[0].gco";
connectAttr "Pic1Segment1.id" "Pic1Mesh.iog.og[1].gid";
connectAttr "Pic1ConverterSG1.mwc" "Pic1Mesh.iog.og[1].gco";
connectAttr "Pic1Segment2.id" "Pic1Mesh.iog.og[2].gid";
connectAttr "Pic1ConverterSG2.mwc" "Pic1Mesh.iog.og[2].gco";
connectAttr "Pic1Segment3.id" "Pic1Mesh.iog.og[3].gid";
connectAttr "Pic1ConverterSG3.mwc" "Pic1Mesh.iog.og[3].gco";
connectAttr "Pic1Segment4.id" "Pic1Mesh.iog.og[4].gid";
connectAttr "Pic1ConverterSG4.mwc" "Pic1Mesh.iog.og[4].gco";
connectAttr "Pic1Segment5.id" "Pic1Mesh.iog.og[5].gid";
connectAttr "Pic1ConverterSG5.mwc" "Pic1Mesh.iog.og[5].gco";
connectAttr "pasted__polyPlane3.out" "|LivingRoom|Portraits|Pic2|pasted__pPlane1|pasted__pPlaneShape1.i"
		;
connectAttr "Pic2Converter.out" "Pic2Mesh.i";
connectAttr "Pic2Converter.msg" "Pic2Mesh.cnv";
connectAttr "Pic2Segment0.id" "Pic2Mesh.iog.og[0].gid";
connectAttr "Pic2ConverterSG0.mwc" "Pic2Mesh.iog.og[0].gco";
connectAttr "Pic2Segment1.id" "Pic2Mesh.iog.og[1].gid";
connectAttr "Pic2ConverterSG1.mwc" "Pic2Mesh.iog.og[1].gco";
connectAttr "Pic2Segment2.id" "Pic2Mesh.iog.og[2].gid";
connectAttr "Pic2ConverterSG2.mwc" "Pic2Mesh.iog.og[2].gco";
connectAttr "pasted__polyPlane2.out" "|LivingRoom|Portraits|Pic3|pasted__pPlane2|pasted__pPlaneShape2.i"
		;
connectAttr "pasted__imagesConverter.out" "pasted__imagesMesh.i";
connectAttr "pasted__imagesConverter.msg" "pasted__imagesMesh.cnv";
connectAttr "pasted__imagesSegment0.id" "pasted__imagesMesh.iog.og[0].gid";
connectAttr "pasted__imagesConverterSG0.mwc" "pasted__imagesMesh.iog.og[0].gco";
connectAttr "pasted__imagesSegment1.id" "pasted__imagesMesh.iog.og[1].gid";
connectAttr "pasted__imagesConverterSG1.mwc" "pasted__imagesMesh.iog.og[1].gco";
connectAttr "pasted__imagesSegment2.id" "pasted__imagesMesh.iog.og[2].gid";
connectAttr "pasted__imagesConverterSG2.mwc" "pasted__imagesMesh.iog.og[2].gco";
connectAttr "Pic3Converter.out" "Pic3Mesh.i";
connectAttr "Pic3Converter.msg" "Pic3Mesh.cnv";
connectAttr "Pic3Segment0.id" "Pic3Mesh.iog.og[0].gid";
connectAttr "Pic3ConverterSG0.mwc" "Pic3Mesh.iog.og[0].gco";
connectAttr "Pic3Segment1.id" "Pic3Mesh.iog.og[1].gid";
connectAttr "Pic3ConverterSG1.mwc" "Pic3Mesh.iog.og[1].gco";
connectAttr "Pic3Segment2.id" "Pic3Mesh.iog.og[2].gid";
connectAttr "Pic3ConverterSG2.mwc" "Pic3Mesh.iog.og[2].gco";
connectAttr "Pic3Segment3.id" "Pic3Mesh.iog.og[3].gid";
connectAttr "Pic3ConverterSG3.mwc" "Pic3Mesh.iog.og[3].gco";
connectAttr "Pic3Segment4.id" "Pic3Mesh.iog.og[4].gid";
connectAttr "Pic3ConverterSG4.mwc" "Pic3Mesh.iog.og[4].gco";
connectAttr "Pic3Segment5.id" "Pic3Mesh.iog.og[5].gid";
connectAttr "Pic3ConverterSG5.mwc" "Pic3Mesh.iog.og[5].gco";
connectAttr "pasted__groupId3.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr "pasted__phong6SG.mwc" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId5.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[1].gid"
		;
connectAttr "pasted__phongE9SG.mwc" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId6.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[2].gid"
		;
connectAttr "pasted__phongE9SG.mwc" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[2].gco"
		;
connectAttr "pasted__groupId7.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[3].gid"
		;
connectAttr "pasted__phongE10SG.mwc" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[3].gco"
		;
connectAttr "groupId43.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[4].gid"
		;
connectAttr "phongE43SG.mwc" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[4].gco"
		;
connectAttr "groupParts29.og" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId4.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__polyCylinder1.out" "|LivingRoom|Decorative_Light|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "pasted__polyCylinder2.out" "|LivingRoom|Lamp|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "pasted__polyCylinder3.out" "|LivingRoom|Lamp|pasted__pCylinder2|pasted__pCylinderShape2.i"
		;
connectAttr "pasted__polyBevel3.out" "pasted__pConeShape1.i";
connectAttr "pasted__polyBevel4.out" "|LivingRoom|Lamp|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "pasted__polyTorus1.out" "pasted__pTorusShape1.i";
connectAttr "pasted__groupId19.id" "pasted__CarpetShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__CarpetShape.iog.og[0].gco";
connectAttr "pasted__groupId21.id" "pasted__CarpetShape.iog.og[1].gid";
connectAttr "pasted__phongE36SG.mwc" "pasted__CarpetShape.iog.og[1].gco";
connectAttr "pasted__polyBevel5.out" "pasted__CarpetShape.i";
connectAttr "pasted__groupId20.id" "pasted__CarpetShape.ciog.cog[0].cgid";
connectAttr "pasted__polyExtrudeFace8.out" "|LivingRoom|group|pasted__pPlane1|pasted__pPlaneShape1.i"
		;
connectAttr "pasted__polyExtrudeFace9.out" "|LivingRoom|group|pasted__pPlane2|pasted__pPlaneShape2.i"
		;
connectAttr "pasted__polyExtrudeFace10.out" "pasted__pPlaneShape3.i";
connectAttr "pasted__polyExtrudeFace11.out" "|LivingRoom|Table|pasted__pPlane1|pasted__pPlaneShape1.i"
		;
connectAttr "pasted__pCylinderShape1Orig1.w" "|LivingRoom|Table|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "pasted__polyCylinder4.out" "pasted__pCylinderShape1Orig1.i";
connectAttr "pasted__deleteComponent1.og" "|LivingRoom|Table|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "pasted__polyExtrudeEdge1.out" "|LivingRoom|Glasses|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__shadingMap1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__shadingMap1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__surfaceShader5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__surfaceShader7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__shadingMap2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__shadingMap3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__shadingMap4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__shadingMap5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__surfaceShader5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__surfaceShader7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__phongE2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE15SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE16SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE17SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE15SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE16SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE17SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE18SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE19SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE20SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE21SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE22SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE23SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE24SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE25SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE26SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE27SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE28SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE29SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE30SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE25SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE26SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE27SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE28SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE29SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE30SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE31SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE32SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE33SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE34SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "imagesConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "imagesConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "imagesConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__imagesConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__imagesConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__imagesConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE35SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE36SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic2ConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic2ConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic2ConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic1ConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic1ConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic1ConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic1ConverterSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic1ConverterSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic1ConverterSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic3ConverterSG0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic3ConverterSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic3ConverterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic3ConverterSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic3ConverterSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Pic3ConverterSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE36SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__phong8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__shadingMap13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE37SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE38SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE39SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shadingMap15SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE40SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE38SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE39SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE40SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE41SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE42SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phongE42SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE43SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE44SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE45SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE46SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__shadingMap1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__shadingMap1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__surfaceShader5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__surfaceShader7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__shadingMap2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__shadingMap3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__shadingMap4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__shadingMap5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__surfaceShader5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__surfaceShader7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__phongE2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE16SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE17SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE16SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE17SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE18SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE19SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE20SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE21SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE22SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE23SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE24SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE25SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE26SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE27SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE28SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE29SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE30SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE25SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE26SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE27SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE28SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE29SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE30SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE31SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "photo_1591969851586_adbbd4accf81ConverterSG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE32SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE33SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE34SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "imagesConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "imagesConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "imagesConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__imagesConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__imagesConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__imagesConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE35SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE36SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic2ConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic2ConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic2ConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic1ConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic1ConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic1ConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic1ConverterSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic1ConverterSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic1ConverterSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic3ConverterSG0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic3ConverterSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic3ConverterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic3ConverterSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic3ConverterSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Pic3ConverterSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE36SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__phong8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__shadingMap13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE37SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE38SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE39SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shadingMap15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE40SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE38SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE39SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE40SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE41SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE42SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phongE42SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE43SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE44SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE45SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE46SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong11SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[1]" "ground_layer.id";
connectAttr "lambert_ground.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert_ground.msg" "materialInfo1.m";
connectAttr "layerManager.dli[2]" "lights_layer.id";
connectAttr "layerManager.dli[3]" "cube_layer.id";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo4.sg";
connectAttr "blinn1.msg" "materialInfo4.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "lambert5.msg" "materialInfo5.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "lambert6SG.msg" "materialInfo6.sg";
connectAttr "lambert6.msg" "materialInfo6.m";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "phong1SG.msg" "materialInfo7.sg";
connectAttr "phong1.msg" "materialInfo7.m";
connectAttr "lambert7.oc" "lambert7SG.ss";
connectAttr "lambert7SG.msg" "materialInfo8.sg";
connectAttr "lambert7.msg" "materialInfo8.m";
connectAttr "shadingMap1.oc" "shadingMap1SG.ss";
connectAttr "shadingMap1SG.msg" "materialInfo9.sg";
connectAttr "shadingMap1.msg" "materialInfo9.m";
connectAttr "shadingMap1.msg" "materialInfo9.t" -na;
connectAttr "pasted__lambert3SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__lambert3.msg" "pasted__materialInfo2.m";
connectAttr "pasted__lambert3.oc" "pasted__lambert3SG.ss";
connectAttr "pasted__shadingMap1SG.msg" "pasted__materialInfo9.sg";
connectAttr "pasted__shadingMap1.msg" "pasted__materialInfo9.m";
connectAttr "pasted__shadingMap1.msg" "pasted__materialInfo9.t" -na;
connectAttr "pasted__shadingMap1.oc" "pasted__shadingMap1SG.ss";
connectAttr "pasted__lambert3SG1.msg" "pasted__materialInfo10.sg";
connectAttr "pasted__lambert4.msg" "pasted__materialInfo10.m";
connectAttr "pasted__lambert4.oc" "pasted__lambert3SG1.ss";
connectAttr "pasted__pasted__lambert3SG.msg" "pasted__pasted__materialInfo2.sg";
connectAttr "pasted__pasted__lambert3.msg" "pasted__pasted__materialInfo2.m";
connectAttr "pasted__pasted__lambert3.oc" "pasted__pasted__lambert3SG.ss";
connectAttr "pasted__pasted__shadingMap1SG.msg" "pasted__pasted__materialInfo9.sg"
		;
connectAttr "pasted__pasted__shadingMap1.msg" "pasted__pasted__materialInfo9.m";
connectAttr "pasted__pasted__shadingMap1.msg" "pasted__pasted__materialInfo9.t" 
		-na;
connectAttr "pasted__pasted__shadingMap1.oc" "pasted__pasted__shadingMap1SG.ss";
connectAttr "pasted__pasted__pasted__shadingMap1SG.msg" "pasted__pasted__pasted__materialInfo9.sg"
		;
connectAttr "pasted__pasted__pasted__shadingMap1.msg" "pasted__pasted__pasted__materialInfo9.m"
		;
connectAttr "pasted__pasted__pasted__shadingMap1.msg" "pasted__pasted__pasted__materialInfo9.t"
		 -na;
connectAttr "pasted__pasted__pasted__shadingMap1.oc" "pasted__pasted__pasted__shadingMap1SG.ss"
		;
connectAttr "pasted__pasted__pasted__lambert3SG.msg" "pasted__pasted__pasted__materialInfo2.sg"
		;
connectAttr "pasted__pasted__pasted__lambert3.msg" "pasted__pasted__pasted__materialInfo2.m"
		;
connectAttr "pasted__pasted__pasted__lambert3.oc" "pasted__pasted__pasted__lambert3SG.ss"
		;
connectAttr "pasted__pasted__lambert3SG1.msg" "pasted__pasted__materialInfo10.sg"
		;
connectAttr "pasted__pasted__lambert4.msg" "pasted__pasted__materialInfo10.m";
connectAttr "pasted__pasted__lambert4.oc" "pasted__pasted__lambert3SG1.ss";
connectAttr "lambert8.oc" "lambert8SG.ss";
connectAttr "lambert8SG.msg" "materialInfo10.sg";
connectAttr "lambert8.msg" "materialInfo10.m";
connectAttr "lambert9.oc" "lambert9SG.ss";
connectAttr "lambert9SG.msg" "materialInfo11.sg";
connectAttr "lambert9.msg" "materialInfo11.m";
connectAttr "shadingMap2.oc" "shadingMap2SG.ss";
connectAttr "shadingMap2SG.msg" "materialInfo12.sg";
connectAttr "shadingMap2.msg" "materialInfo12.m";
connectAttr "shadingMap2.msg" "materialInfo12.t" -na;
connectAttr "shadingMap3.oc" "shadingMap3SG.ss";
connectAttr "shadingMap3SG.msg" "materialInfo13.sg";
connectAttr "shadingMap3.msg" "materialInfo13.m";
connectAttr "shadingMap3.msg" "materialInfo13.t" -na;
connectAttr "shadingMap4.oc" "shadingMap4SG.ss";
connectAttr "shadingMap4SG.msg" "materialInfo14.sg";
connectAttr "shadingMap4.msg" "materialInfo14.m";
connectAttr "shadingMap4.msg" "materialInfo14.t" -na;
connectAttr "shadingMap5.oc" "shadingMap5SG.ss";
connectAttr "shadingMap5SG.msg" "materialInfo15.sg";
connectAttr "shadingMap5.msg" "materialInfo15.m";
connectAttr "shadingMap5.msg" "materialInfo15.t" -na;
connectAttr "pasted__shadingMap2SG.msg" "pasted__materialInfo12.sg";
connectAttr "pasted__shadingMap2.msg" "pasted__materialInfo12.m";
connectAttr "pasted__shadingMap2.msg" "pasted__materialInfo12.t" -na;
connectAttr "pasted__shadingMap2.oc" "pasted__shadingMap2SG.ss";
connectAttr "pasted__shadingMap3SG.msg" "pasted__materialInfo13.sg";
connectAttr "pasted__shadingMap3.msg" "pasted__materialInfo13.m";
connectAttr "pasted__shadingMap3.msg" "pasted__materialInfo13.t" -na;
connectAttr "pasted__shadingMap3.oc" "pasted__shadingMap3SG.ss";
connectAttr "pasted__shadingMap4SG.msg" "pasted__materialInfo14.sg";
connectAttr "pasted__shadingMap4.msg" "pasted__materialInfo14.m";
connectAttr "pasted__shadingMap4.msg" "pasted__materialInfo14.t" -na;
connectAttr "pasted__shadingMap4.oc" "pasted__shadingMap4SG.ss";
connectAttr "pasted__shadingMap5SG.msg" "pasted__materialInfo15.sg";
connectAttr "pasted__shadingMap5.msg" "pasted__materialInfo15.m";
connectAttr "pasted__shadingMap5.msg" "pasted__materialInfo15.t" -na;
connectAttr "pasted__shadingMap5.oc" "pasted__shadingMap5SG.ss";
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "surfaceShader1SG.msg" "materialInfo16.sg";
connectAttr "surfaceShader1.msg" "materialInfo16.m";
connectAttr "surfaceShader1.msg" "materialInfo16.t" -na;
connectAttr "surfaceShader2.oc" "surfaceShader2SG.ss";
connectAttr "surfaceShader2SG.msg" "materialInfo17.sg";
connectAttr "surfaceShader2.msg" "materialInfo17.m";
connectAttr "surfaceShader2.msg" "materialInfo17.t" -na;
connectAttr "surfaceShader3.oc" "surfaceShader3SG.ss";
connectAttr "surfaceShader3SG.msg" "materialInfo18.sg";
connectAttr "surfaceShader3.msg" "materialInfo18.m";
connectAttr "surfaceShader3.msg" "materialInfo18.t" -na;
connectAttr "surfaceShader4.oc" "surfaceShader4SG.ss";
connectAttr "surfaceShader4SG.msg" "materialInfo19.sg";
connectAttr "surfaceShader4.msg" "materialInfo19.m";
connectAttr "surfaceShader4.msg" "materialInfo19.t" -na;
connectAttr "lambert10.oc" "lambert10SG.ss";
connectAttr "lambert10SG.msg" "materialInfo20.sg";
connectAttr "lambert10.msg" "materialInfo20.m";
connectAttr "surfaceShader5.oc" "surfaceShader5SG.ss";
connectAttr "surfaceShader5SG.msg" "materialInfo21.sg";
connectAttr "surfaceShader5.msg" "materialInfo21.m";
connectAttr "surfaceShader5.msg" "materialInfo21.t" -na;
connectAttr "surfaceShader6.oc" "surfaceShader6SG.ss";
connectAttr "surfaceShader6SG.msg" "materialInfo22.sg";
connectAttr "surfaceShader6.msg" "materialInfo22.m";
connectAttr "surfaceShader6.msg" "materialInfo22.t" -na;
connectAttr "shadingMap6.oc" "shadingMap6SG.ss";
connectAttr "shadingMap6SG.msg" "materialInfo23.sg";
connectAttr "shadingMap6.msg" "materialInfo23.m";
connectAttr "shadingMap6.msg" "materialInfo23.t" -na;
connectAttr "surfaceShader7.oc" "surfaceShader7SG.ss";
connectAttr "surfaceShader7SG.msg" "materialInfo24.sg";
connectAttr "surfaceShader7.msg" "materialInfo24.m";
connectAttr "surfaceShader7.msg" "materialInfo24.t" -na;
connectAttr "pasted__surfaceShader1SG.msg" "pasted__materialInfo16.sg";
connectAttr "pasted__surfaceShader1.msg" "pasted__materialInfo16.m";
connectAttr "pasted__surfaceShader1.msg" "pasted__materialInfo16.t" -na;
connectAttr "pasted__surfaceShader1.oc" "pasted__surfaceShader1SG.ss";
connectAttr "pasted__surfaceShader5SG.msg" "pasted__materialInfo21.sg";
connectAttr "pasted__surfaceShader5.msg" "pasted__materialInfo21.m";
connectAttr "pasted__surfaceShader5.msg" "pasted__materialInfo21.t" -na;
connectAttr "pasted__surfaceShader5.oc" "pasted__surfaceShader5SG.ss";
connectAttr "pasted__surfaceShader7SG.msg" "pasted__materialInfo24.sg";
connectAttr "pasted__surfaceShader7.msg" "pasted__materialInfo24.m";
connectAttr "pasted__surfaceShader7.msg" "pasted__materialInfo24.t" -na;
connectAttr "pasted__surfaceShader7.oc" "pasted__surfaceShader7SG.ss";
connectAttr "shadingMap7.oc" "shadingMap7SG.ss";
connectAttr "shadingMap7SG.msg" "materialInfo25.sg";
connectAttr "shadingMap7.msg" "materialInfo25.m";
connectAttr "shadingMap7.msg" "materialInfo25.t" -na;
connectAttr "lambert11.oc" "lambert11SG.ss";
connectAttr "lambert11SG.msg" "materialInfo26.sg";
connectAttr "lambert11.msg" "materialInfo26.m";
connectAttr "pasted__lambert11SG.msg" "pasted__materialInfo26.sg";
connectAttr "pasted__lambert11.msg" "pasted__materialInfo26.m";
connectAttr "pasted__lambert11.oc" "pasted__lambert11SG.ss";
connectAttr "lambert12.oc" "lambert12SG.ss";
connectAttr "lambert12SG.msg" "materialInfo27.sg";
connectAttr "lambert12.msg" "materialInfo27.m";
connectAttr "phongE1.oc" "phongE1SG.ss";
connectAttr "phongE1SG.msg" "materialInfo28.sg";
connectAttr "phongE1.msg" "materialInfo28.m";
connectAttr "phongE2.oc" "phongE2SG.ss";
connectAttr "phongE2SG.msg" "materialInfo29.sg";
connectAttr "phongE2.msg" "materialInfo29.m";
connectAttr "phongE3.oc" "phongE3SG.ss";
connectAttr "phongE3SG.msg" "materialInfo30.sg";
connectAttr "phongE3.msg" "materialInfo30.m";
connectAttr "pasted__phongE2SG.msg" "pasted__materialInfo29.sg";
connectAttr "pasted__phongE2.msg" "pasted__materialInfo29.m";
connectAttr "pasted__phongE2.oc" "pasted__phongE2SG.ss";
connectAttr "pasted__lambert12SG.msg" "pasted__materialInfo27.sg";
connectAttr "pasted__lambert12.msg" "pasted__materialInfo27.m";
connectAttr "pasted__lambert12.oc" "pasted__lambert12SG.ss";
connectAttr "pasted__pasted__polySplitRing1.out" "pasted__pasted__polySplitRing2.ip"
		;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polySplitRing2.mp"
		;
connectAttr "pasted__pasted__polyBevel1.out" "pasted__pasted__polySplitRing1.ip"
		;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polySplitRing1.mp"
		;
connectAttr "pasted__pasted__polyCube2.out" "pasted__pasted__polyBevel1.ip";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel1.mp"
		;
connectAttr "pasted__pasted__shadingMap2SG.msg" "pasted__pasted__materialInfo12.sg"
		;
connectAttr "pasted__pasted__shadingMap2.msg" "pasted__pasted__materialInfo12.m"
		;
connectAttr "pasted__pasted__shadingMap2.msg" "pasted__pasted__materialInfo12.t"
		 -na;
connectAttr "pasted__pasted__shadingMap2.oc" "pasted__pasted__shadingMap2SG.ss";
connectAttr "pasted__pasted__polySplitRing5.out" "pasted__pasted__polySplitRing6.ip"
		;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.wm" "pasted__pasted__polySplitRing6.mp"
		;
connectAttr "pasted__pasted__polySplitRing4.out" "pasted__pasted__polySplitRing5.ip"
		;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.wm" "pasted__pasted__polySplitRing5.mp"
		;
connectAttr "pasted__pasted__polySplitRing3.out" "pasted__pasted__polySplitRing4.ip"
		;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.wm" "pasted__pasted__polySplitRing4.mp"
		;
connectAttr "pasted__pasted__polyTweak1.out" "pasted__pasted__polySplitRing3.ip"
		;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.wm" "pasted__pasted__polySplitRing3.mp"
		;
connectAttr "pasted__pasted__polyCube3.out" "pasted__pasted__polyTweak1.ip";
connectAttr "pasted__pasted__shadingMap3SG.msg" "pasted__pasted__materialInfo13.sg"
		;
connectAttr "pasted__pasted__shadingMap3.msg" "pasted__pasted__materialInfo13.m"
		;
connectAttr "pasted__pasted__shadingMap3.msg" "pasted__pasted__materialInfo13.t"
		 -na;
connectAttr "pasted__pasted__shadingMap3.oc" "pasted__pasted__shadingMap3SG.ss";
connectAttr "pasted__pasted__polyBevel2.out" "pasted__pasted__polyBevel3.ip";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube5|pasted__pasted__pCubeShape5.wm" "pasted__pasted__polyBevel3.mp"
		;
connectAttr "pasted__pasted__polyCube4.out" "pasted__pasted__polyBevel2.ip";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube5|pasted__pasted__pCubeShape5.wm" "pasted__pasted__polyBevel2.mp"
		;
connectAttr "pasted__pasted__shadingMap4SG.msg" "pasted__pasted__materialInfo14.sg"
		;
connectAttr "pasted__pasted__shadingMap4.msg" "pasted__pasted__materialInfo14.m"
		;
connectAttr "pasted__pasted__shadingMap4.msg" "pasted__pasted__materialInfo14.t"
		 -na;
connectAttr "pasted__pasted__shadingMap4.oc" "pasted__pasted__shadingMap4SG.ss";
connectAttr "pasted__pasted__polyBevel4.out" "pasted__pasted__polyBevel5.ip";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube6|pasted__pasted__pCubeShape6.wm" "pasted__pasted__polyBevel5.mp"
		;
connectAttr "pasted__pasted__polyTweak4.out" "pasted__pasted__polyBevel4.ip";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube6|pasted__pasted__pCubeShape6.wm" "pasted__pasted__polyBevel4.mp"
		;
connectAttr "pasted__pasted__polyConnectComponents2.out" "pasted__pasted__polyTweak4.ip"
		;
connectAttr "pasted__pasted__polyTweak3.out" "pasted__pasted__polyConnectComponents2.ip"
		;
connectAttr "pasted__pasted__polyConnectComponents1.out" "pasted__pasted__polyTweak3.ip"
		;
connectAttr "pasted__pasted__polyTweak2.out" "pasted__pasted__polyConnectComponents1.ip"
		;
connectAttr "pasted__pasted__polyCube5.out" "pasted__pasted__polyTweak2.ip";
connectAttr "pasted__pasted__shadingMap5SG.msg" "pasted__pasted__materialInfo15.sg"
		;
connectAttr "pasted__pasted__shadingMap5.msg" "pasted__pasted__materialInfo15.m"
		;
connectAttr "pasted__pasted__shadingMap5.msg" "pasted__pasted__materialInfo15.t"
		 -na;
connectAttr "pasted__pasted__shadingMap5.oc" "pasted__pasted__shadingMap5SG.ss";
connectAttr "pasted__pasted__polySplitRing7.out" "pasted__pasted__polySplitRing8.ip"
		;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polySplitRing8.mp"
		;
connectAttr "pasted__pasted__polyTweak7.out" "pasted__pasted__polySplitRing7.ip"
		;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polySplitRing7.mp"
		;
connectAttr "pasted__pasted__polyConnectComponents3.out" "pasted__pasted__polyTweak7.ip"
		;
connectAttr "pasted__pasted__polyTweak6.out" "pasted__pasted__polyConnectComponents3.ip"
		;
connectAttr "pasted__pasted__polyExtrudeFace2.out" "pasted__pasted__polyTweak6.ip"
		;
connectAttr "pasted__pasted__polyTweak5.out" "pasted__pasted__polyExtrudeFace2.ip"
		;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace2.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace1.out" "pasted__pasted__polyTweak5.ip"
		;
connectAttr "pasted__pasted__deleteComponent1.og" "pasted__pasted__polyExtrudeFace1.ip"
		;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace1.mp"
		;
connectAttr "pasted__pasted__polyCylinder1.out" "pasted__pasted__deleteComponent1.ig"
		;
connectAttr "pasted__shadingMap7SG.msg" "pasted__materialInfo25.sg";
connectAttr "pasted__shadingMap7.msg" "pasted__materialInfo25.m";
connectAttr "pasted__shadingMap7.msg" "pasted__materialInfo25.t" -na;
connectAttr "pasted__shadingMap7.oc" "pasted__shadingMap7SG.ss";
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0]" "pasted__shadingMap7SG.dsm"
		 -na;
connectAttr "groupId4.msg" "pasted__shadingMap7SG.gn" -na;
connectAttr "pasted__pasted__polyTweak8.out" "pasted__pasted__polyExtrudeEdge1.ip"
		;
connectAttr "pasted__pasted__pPlaneShape1.wm" "pasted__pasted__polyExtrudeEdge1.mp"
		;
connectAttr "pasted__pasted__polyPlane2.out" "pasted__pasted__polyTweak8.ip";
connectAttr "pasted__pasted__surfaceShader1SG.msg" "pasted__pasted__materialInfo16.sg"
		;
connectAttr "pasted__pasted__surfaceShader1.msg" "pasted__pasted__materialInfo16.m"
		;
connectAttr "pasted__pasted__surfaceShader1.msg" "pasted__pasted__materialInfo16.t"
		 -na;
connectAttr "pasted__pasted__surfaceShader1.oc" "pasted__pasted__surfaceShader1SG.ss"
		;
connectAttr "pasted__pasted__pPlaneShape1.iog" "pasted__pasted__surfaceShader1SG.dsm"
		 -na;
connectAttr "pasted__pasted__polySurfaceShape1.o" "pasted__pasted__polyExtrudeEdge2.ip"
		;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pPlane3|pasted__pasted__pPlaneShape3.wm" "pasted__pasted__polyExtrudeEdge2.mp"
		;
connectAttr "pasted__pasted__surfaceShader5SG.msg" "pasted__pasted__materialInfo21.sg"
		;
connectAttr "pasted__pasted__surfaceShader5.msg" "pasted__pasted__materialInfo21.m"
		;
connectAttr "pasted__pasted__surfaceShader5.msg" "pasted__pasted__materialInfo21.t"
		 -na;
connectAttr "pasted__pasted__surfaceShader5.oc" "pasted__pasted__surfaceShader5SG.ss"
		;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pPlane3|pasted__pasted__pPlaneShape3.iog" "pasted__pasted__surfaceShader5SG.dsm"
		 -na;
connectAttr "pasted__pasted__surfaceShader7SG.msg" "pasted__pasted__materialInfo24.sg"
		;
connectAttr "pasted__pasted__surfaceShader7.msg" "pasted__pasted__materialInfo24.m"
		;
connectAttr "pasted__pasted__surfaceShader7.msg" "pasted__pasted__materialInfo24.t"
		 -na;
connectAttr "pasted__pasted__surfaceShader7.oc" "pasted__pasted__surfaceShader7SG.ss"
		;
connectAttr "pasted__pasted__pDiscShape1.iog" "pasted__pasted__surfaceShader7SG.dsm"
		 -na;
connectAttr "pasted__pasted__polyConnectComponents6.out" "pasted__pasted__deleteComponent6.ig"
		;
connectAttr "pasted__pasted__polyConnectComponents5.out" "pasted__pasted__polyConnectComponents6.ip"
		;
connectAttr "pasted__pasted__deleteComponent5.og" "pasted__pasted__polyConnectComponents5.ip"
		;
connectAttr "pasted__pasted__deleteComponent4.og" "pasted__pasted__deleteComponent5.ig"
		;
connectAttr "pasted__pasted__polyConnectComponents4.out" "pasted__pasted__deleteComponent4.ig"
		;
connectAttr "pasted__pasted__polyBridgeEdge4.out" "pasted__pasted__polyConnectComponents4.ip"
		;
connectAttr "pasted__pasted__polyBridgeEdge3.out" "pasted__pasted__polyBridgeEdge4.ip"
		;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBridgeEdge4.mp"
		;
connectAttr "pasted__pasted__polyBridgeEdge2.out" "pasted__pasted__polyBridgeEdge3.ip"
		;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBridgeEdge3.mp"
		;
connectAttr "pasted__pasted__polyBridgeEdge1.out" "pasted__pasted__polyBridgeEdge2.ip"
		;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBridgeEdge2.mp"
		;
connectAttr "pasted__pasted__polyTweak9.out" "pasted__pasted__polyBridgeEdge1.ip"
		;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBridgeEdge1.mp"
		;
connectAttr "pasted__pasted__deleteComponent3.og" "pasted__pasted__polyTweak9.ip"
		;
connectAttr "pasted__pasted__deleteComponent2.og" "pasted__pasted__deleteComponent3.ig"
		;
connectAttr "pasted__pasted__polyCube6.out" "pasted__pasted__deleteComponent2.ig"
		;
connectAttr "pasted__pasted__lambert11SG.msg" "pasted__pasted__materialInfo26.sg"
		;
connectAttr "pasted__pasted__lambert11.msg" "pasted__pasted__materialInfo26.m";
connectAttr "pasted__pasted__lambert11.oc" "pasted__pasted__lambert11SG.ss";
connectAttr "pasted__pasted__lambert12SG.msg" "pasted__pasted__materialInfo27.sg"
		;
connectAttr "pasted__pasted__lambert12.msg" "pasted__pasted__materialInfo27.m";
connectAttr "pasted__pasted__lambert12.oc" "pasted__pasted__lambert12SG.ss";
connectAttr "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog" "pasted__pasted__lambert12SG.dsm"
		 -na;
connectAttr "pasted__pasted__phongE2SG.msg" "pasted__pasted__materialInfo29.sg";
connectAttr "pasted__pasted__phongE2.msg" "pasted__pasted__materialInfo29.m";
connectAttr "file2.msg" "pasted__pasted__materialInfo29.t" -na;
connectAttr "pasted__pasted__phongE2.oc" "pasted__pasted__phongE2SG.ss";
connectAttr "pasted__pasted__pPlaneShape2.iog" "pasted__pasted__phongE2SG.dsm" -na
		;
connectAttr "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pPlane3|pasted__pasted__pPlaneShape3.iog" "pasted__pasted__phongE2SG.dsm"
		 -na;
connectAttr "file2.oc" "pasted__pasted__phongE2.c";
connectAttr "shadingMap8.oc" "shadingMap8SG.ss";
connectAttr "shadingMap8SG.msg" "materialInfo31.sg";
connectAttr "shadingMap8.msg" "materialInfo31.m";
connectAttr "shadingMap8.msg" "materialInfo31.t" -na;
connectAttr "phongE4.oc" "phongE4SG.ss";
connectAttr "phongE4SG.msg" "materialInfo32.sg";
connectAttr "phongE4.msg" "materialInfo32.m";
connectAttr "phongE5.oc" "phongE5SG.ss";
connectAttr "phongE5SG.msg" "materialInfo33.sg";
connectAttr "phongE5.msg" "materialInfo33.m";
connectAttr "pasted__polyTweak1.out" "pasted__polyExtrudeFace1.ip";
connectAttr "|LivingRoom|Cabinet|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyExtrudeFace1.mp"
		;
connectAttr "pasted__polyCube1.out" "pasted__polyTweak1.ip";
connectAttr "pasted__phongE5SG.msg" "pasted__materialInfo33.sg";
connectAttr "pasted__phongE5.msg" "pasted__materialInfo33.m";
connectAttr "file7.msg" "pasted__materialInfo33.t" -na;
connectAttr "pasted__phongE5.oc" "pasted__phongE5SG.ss";
connectAttr "|LivingRoom|Cabinet|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__phongE5SG.dsm"
		 -na;
connectAttr "|LivingRoom|Cabinet|pasted__pCube3|pasted__pCubeShape3.iog" "pasted__phongE5SG.dsm"
		 -na;
connectAttr "|LivingRoom|Cabinet|pasted__pCube2|pasted__pCubeShape2.iog" "pasted__phongE5SG.dsm"
		 -na;
connectAttr "|LivingRoom|Cabinet|pasted__pCube1|pasted__pCubeShape1.iog" "pasted__phongE5SG.dsm"
		 -na;
connectAttr "file7.oc" "pasted__phongE5.c";
connectAttr "pasted__phongE4SG.msg" "pasted__materialInfo32.sg";
connectAttr "pasted__phongE4.msg" "pasted__materialInfo32.m";
connectAttr "pasted__phongE4.oc" "pasted__phongE4SG.ss";
connectAttr "pasted__pSphereShape2.iog" "pasted__phongE4SG.dsm" -na;
connectAttr "pasted__pSphereShape1.iog" "pasted__phongE4SG.dsm" -na;
connectAttr "phongE6.oc" "phongE6SG.ss";
connectAttr "phongE6SG.msg" "materialInfo34.sg";
connectAttr "phongE6.msg" "materialInfo34.m";
connectAttr "phong2.oc" "phong2SG.ss";
connectAttr "phong2SG.msg" "materialInfo35.sg";
connectAttr "phong2.msg" "materialInfo35.m";
connectAttr "pasted__polyTweak2.out" "pasted__polyExtrudeFace4.ip";
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyExtrudeFace4.mp"
		;
connectAttr "pasted__polyExtrudeFace3.out" "pasted__polyTweak2.ip";
connectAttr "pasted__polyExtrudeFace2.out" "pasted__polyExtrudeFace3.ip";
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyExtrudeFace3.mp"
		;
connectAttr "pasted__polyCube3.out" "pasted__polyExtrudeFace2.ip";
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyExtrudeFace2.mp"
		;
connectAttr "pasted__phong2SG.msg" "pasted__materialInfo35.sg";
connectAttr "pasted__phong2.msg" "pasted__materialInfo35.m";
connectAttr "pasted__phong2.oc" "pasted__phong2SG.ss";
connectAttr "polySurfaceShape1.o" "polyBevel1.ip";
connectAttr "|LivingRoom|TV|pasted__pCube3|pasted__pCubeShape3.wm" "polyBevel1.mp"
		;
connectAttr "file3.oc" "phong3.c";
connectAttr "phong3.oc" "phong3SG.ss";
connectAttr "pasted__pasted__pPlaneShape4.iog" "phong3SG.dsm" -na;
connectAttr "phong3SG.msg" "materialInfo36.sg";
connectAttr "phong3.msg" "materialInfo36.m";
connectAttr "file3.msg" "materialInfo36.t" -na;
connectAttr "phong4.oc" "phong4SG.ss";
connectAttr "|LivingRoom|TV|pasted__pCube3|pasted__pCubeShape3.iog" "phong4SG.dsm"
		 -na;
connectAttr "phong4SG.msg" "materialInfo37.sg";
connectAttr "phong4.msg" "materialInfo37.m";
connectAttr "file29.oc" "phongE7.c";
connectAttr "phongE7.oc" "phongE7SG.ss";
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[0]" "phongE7SG.dsm"
		 -na;
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.ciog.cog[0]" "phongE7SG.dsm"
		 -na;
connectAttr "groupId6.msg" "phongE7SG.gn" -na;
connectAttr "groupId7.msg" "phongE7SG.gn" -na;
connectAttr "phongE7SG.msg" "materialInfo38.sg";
connectAttr "phongE7.msg" "materialInfo38.m";
connectAttr "file29.msg" "materialInfo38.t" -na;
connectAttr "phong5.oc" "phong5SG.ss";
connectAttr "phong5SG.msg" "materialInfo39.sg";
connectAttr "phong5.msg" "materialInfo39.m";
connectAttr "file1.oc" "lambert13.c";
connectAttr "lambert13.oc" "lambert13SG.ss";
connectAttr "pasted__pasted__pCubeShape10.iog" "lambert13SG.dsm" -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube7|pasted__pasted__pCubeShape7.iog" "lambert13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube6|pasted__pasted__pCubeShape6.iog" "lambert13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube5|pasted__pasted__pCubeShape5.iog" "lambert13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube4|pasted__pasted__pCubeShape4.iog" "lambert13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" "lambert13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" "lambert13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Room|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "lambert13SG.dsm"
		 -na;
connectAttr "lambert13SG.msg" "materialInfo40.sg";
connectAttr "lambert13.msg" "materialInfo40.m";
connectAttr "file1.msg" "materialInfo40.t" -na;
connectAttr "pasted__polyTweak3.out" "pasted__polyExtrudeFace5.ip";
connectAttr "|LivingRoom|Portraits|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyExtrudeFace5.mp"
		;
connectAttr "pasted__polyCube5.out" "pasted__polyTweak3.ip";
connectAttr "phong6.oc" "phong6SG.ss";
connectAttr "phong6SG.msg" "materialInfo41.sg";
connectAttr "phong6.msg" "materialInfo41.m";
connectAttr "phongE8.oc" "phongE8SG.ss";
connectAttr "phongE8SG.msg" "materialInfo42.sg";
connectAttr "phongE8.msg" "materialInfo42.m";
connectAttr "phongE9.oc" "phongE9SG.ss";
connectAttr "phongE9SG.msg" "materialInfo43.sg";
connectAttr "phongE9.msg" "materialInfo43.m";
connectAttr "phongE10.oc" "phongE10SG.ss";
connectAttr "phongE10SG.msg" "materialInfo44.sg";
connectAttr "phongE10.msg" "materialInfo44.m";
connectAttr "phongE11.oc" "phongE11SG.ss";
connectAttr "phongE11SG.msg" "materialInfo45.sg";
connectAttr "phongE11.msg" "materialInfo45.m";
connectAttr "phongE12.oc" "phongE12SG.ss";
connectAttr "phongE12SG.msg" "materialInfo46.sg";
connectAttr "phongE12.msg" "materialInfo46.m";
connectAttr "pasted__phongE12SG.msg" "pasted__materialInfo46.sg";
connectAttr "pasted__phongE12.msg" "pasted__materialInfo46.m";
connectAttr "pasted__phongE12.oc" "pasted__phongE12SG.ss";
connectAttr "|LivingRoom|Decorative_Light|pasted__pCylinder1|pasted__pCylinderShape1.iog" "pasted__phongE12SG.dsm"
		 -na;
connectAttr "pasted__phong6.oc" "pasted__phong6SG.ss";
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[0]" "pasted__phong6SG.dsm"
		 -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.ciog.cog[0]" "pasted__phong6SG.dsm"
		 -na;
connectAttr "pasted__groupId3.msg" "pasted__phong6SG.gn" -na;
connectAttr "pasted__groupId4.msg" "pasted__phong6SG.gn" -na;
connectAttr "pasted__phong6SG.msg" "pasted__materialInfo41.sg";
connectAttr "pasted__phong6.msg" "pasted__materialInfo41.m";
connectAttr "file15.msg" "pasted__materialInfo41.t" -na;
connectAttr "file15.oc" "pasted__phong6.c";
connectAttr "pasted__phongE9.oc" "pasted__phongE9SG.ss";
connectAttr "pasted__groupId6.msg" "pasted__phongE9SG.gn" -na;
connectAttr "pasted__groupId5.msg" "pasted__phongE9SG.gn" -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[2]" "pasted__phongE9SG.dsm"
		 -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[1]" "pasted__phongE9SG.dsm"
		 -na;
connectAttr "pasted__phongE9SG.msg" "pasted__materialInfo43.sg";
connectAttr "pasted__phongE9.msg" "pasted__materialInfo43.m";
connectAttr "file16.msg" "pasted__materialInfo43.t" -na;
connectAttr "file16.oc" "pasted__phongE9.c";
connectAttr "pasted__phongE10.oc" "pasted__phongE10SG.ss";
connectAttr "pasted__groupId7.msg" "pasted__phongE10SG.gn" -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[3]" "pasted__phongE10SG.dsm"
		 -na;
connectAttr "pasted__phongE10SG.msg" "pasted__materialInfo44.sg";
connectAttr "pasted__phongE10.msg" "pasted__materialInfo44.m";
connectAttr "pasted__groupParts3.og" "pasted__groupParts4.ig";
connectAttr "pasted__groupId7.id" "pasted__groupParts4.gi";
connectAttr "pasted__groupParts2.og" "pasted__groupParts3.ig";
connectAttr "pasted__groupId6.id" "pasted__groupParts3.gi";
connectAttr "pasted__groupParts1.og" "pasted__groupParts2.ig";
connectAttr "pasted__groupId5.id" "pasted__groupParts2.gi";
connectAttr "pasted__polyExtrudeFace6.out" "pasted__groupParts1.ig";
connectAttr "pasted__groupId3.id" "pasted__groupParts1.gi";
connectAttr "pasted__polyBevel2.out" "pasted__polyExtrudeFace6.ip";
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyExtrudeFace6.mp"
		;
connectAttr "pasted__polyTweak4.out" "pasted__polyBevel2.ip";
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyBevel2.mp"
		;
connectAttr "pasted__polyCube6.out" "pasted__polyTweak4.ip";
connectAttr "file19.oc" "phongE13.c";
connectAttr "phongE13.oc" "phongE13SG.ss";
connectAttr "pasted__pasted__pCubeShape9.iog" "phongE13SG.dsm" -na;
connectAttr "pasted__pasted__pCubeShape8.iog" "phongE13SG.dsm" -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube7|pasted__pasted__pCubeShape7.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube6|pasted__pasted__pCubeShape6.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "phongE13SG.dsm"
		 -na;
connectAttr "phongE13SG.msg" "materialInfo47.sg";
connectAttr "phongE13.msg" "materialInfo47.m";
connectAttr "file19.msg" "materialInfo47.t" -na;
connectAttr "standardSurface2.oc" "standardSurface2SG.ss";
connectAttr "standardSurface2SG.msg" "materialInfo48.sg";
connectAttr "standardSurface2.msg" "materialInfo48.m";
connectAttr "standardSurface2.msg" "materialInfo48.t" -na;
connectAttr "phong7.oc" "phong7SG.ss";
connectAttr "phong7SG.msg" "materialInfo49.sg";
connectAttr "phong7.msg" "materialInfo49.m";
connectAttr "shadingMap9.oc" "shadingMap9SG.ss";
connectAttr "shadingMap9SG.msg" "materialInfo50.sg";
connectAttr "shadingMap9.msg" "materialInfo50.m";
connectAttr "shadingMap9.msg" "materialInfo50.t" -na;
connectAttr "phong8.oc" "phong8SG.ss";
connectAttr "phong8SG.msg" "materialInfo51.sg";
connectAttr "phong8.msg" "materialInfo51.m";
connectAttr "phongE14.oc" "phongE14SG.ss";
connectAttr "phongE14SG.msg" "materialInfo52.sg";
connectAttr "phongE14.msg" "materialInfo52.m";
connectAttr "phongE15.oc" "phongE15SG.ss";
connectAttr "phongE15SG.msg" "materialInfo53.sg";
connectAttr "phongE15.msg" "materialInfo53.m";
connectAttr "phongE16.oc" "phongE16SG.ss";
connectAttr "phongE16SG.msg" "materialInfo54.sg";
connectAttr "phongE16.msg" "materialInfo54.m";
connectAttr "phongE17.oc" "phongE17SG.ss";
connectAttr "phongE17SG.msg" "materialInfo55.sg";
connectAttr "phongE17.msg" "materialInfo55.m";
connectAttr "pasted__phongE14SG.msg" "pasted__materialInfo52.sg";
connectAttr "pasted__phongE14.msg" "pasted__materialInfo52.m";
connectAttr "pasted__phongE14.oc" "pasted__phongE14SG.ss";
connectAttr "|LivingRoom|Lamp|pasted__pCylinder1|pasted__pCylinderShape1.iog" "pasted__phongE14SG.dsm"
		 -na;
connectAttr "pasted__phongE15SG.msg" "pasted__materialInfo53.sg";
connectAttr "pasted__phongE15.msg" "pasted__materialInfo53.m";
connectAttr "pasted__phongE15.oc" "pasted__phongE15SG.ss";
connectAttr "|LivingRoom|Lamp|pasted__pCylinder2|pasted__pCylinderShape2.iog" "pasted__phongE15SG.dsm"
		 -na;
connectAttr "pasted__polyCone1.out" "pasted__polyBevel3.ip";
connectAttr "pasted__pConeShape1.wm" "pasted__polyBevel3.mp";
connectAttr "pasted__phong8SG.msg" "pasted__materialInfo51.sg";
connectAttr "pasted__phong8.msg" "pasted__materialInfo51.m";
connectAttr "file13.msg" "pasted__materialInfo51.t" -na;
connectAttr "pasted__phong8.oc" "pasted__phong8SG.ss";
connectAttr "pasted__pConeShape1.iog" "pasted__phong8SG.dsm" -na;
connectAttr "file13.oc" "pasted__phong8.c";
connectAttr "pasted__polyCube7.out" "pasted__polyBevel4.ip";
connectAttr "|LivingRoom|Lamp|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyBevel4.mp"
		;
connectAttr "pasted__phongE16SG.msg" "pasted__materialInfo54.sg";
connectAttr "pasted__phongE16.msg" "pasted__materialInfo54.m";
connectAttr "file14.msg" "pasted__materialInfo54.t" -na;
connectAttr "pasted__phongE16.oc" "pasted__phongE16SG.ss";
connectAttr "|LivingRoom|Lamp|pasted__pCube1|pasted__pCubeShape1.iog" "pasted__phongE16SG.dsm"
		 -na;
connectAttr "|LivingRoom|Lamp|pasted__pCube2|pasted__pCubeShape2.iog" "pasted__phongE16SG.dsm"
		 -na;
connectAttr "|LivingRoom|Lamp|pasted__pCube3|pasted__pCubeShape3.iog" "pasted__phongE16SG.dsm"
		 -na;
connectAttr "|LivingRoom|Lamp|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__phongE16SG.dsm"
		 -na;
connectAttr "file14.oc" "pasted__phongE16.c";
connectAttr "pasted__phongE17SG.msg" "pasted__materialInfo55.sg";
connectAttr "pasted__phongE17.msg" "pasted__materialInfo55.m";
connectAttr "pasted__phongE17.oc" "pasted__phongE17SG.ss";
connectAttr "pasted__pTorusShape1.iog" "pasted__phongE17SG.dsm" -na;
connectAttr "phongE18.oc" "phongE18SG.ss";
connectAttr "pasted__pasted__pCubeShape11.iog" "phongE18SG.dsm" -na;
connectAttr "phongE18SG.msg" "materialInfo56.sg";
connectAttr "phongE18.msg" "materialInfo56.m";
connectAttr "file21.oc" "phongE19.c";
connectAttr "phongE19.oc" "phongE19SG.ss";
connectAttr "pasted__pasted__pCubeShape12.iog" "phongE19SG.dsm" -na;
connectAttr "phongE19SG.msg" "materialInfo57.sg";
connectAttr "phongE19.msg" "materialInfo57.m";
connectAttr "file21.msg" "materialInfo57.t" -na;
connectAttr "phongE20.oc" "phongE20SG.ss";
connectAttr "phongE20SG.msg" "materialInfo58.sg";
connectAttr "phongE20.msg" "materialInfo58.m";
connectAttr "phongE21.oc" "phongE21SG.ss";
connectAttr "phongE21SG.msg" "materialInfo59.sg";
connectAttr "phongE21.msg" "materialInfo59.m";
connectAttr "phongE22.oc" "phongE22SG.ss";
connectAttr "phongE22SG.msg" "materialInfo60.sg";
connectAttr "phongE22.msg" "materialInfo60.m";
connectAttr "phongE23.oc" "phongE23SG.ss";
connectAttr "phongE23SG.msg" "materialInfo61.sg";
connectAttr "phongE23.msg" "materialInfo61.m";
connectAttr "phongE24.oc" "phongE24SG.ss";
connectAttr "phongE24SG.msg" "materialInfo62.sg";
connectAttr "phongE24.msg" "materialInfo62.m";
connectAttr "phongE25.oc" "phongE25SG.ss";
connectAttr "phongE25SG.msg" "materialInfo63.sg";
connectAttr "phongE25.msg" "materialInfo63.m";
connectAttr "phongE26.oc" "phongE26SG.ss";
connectAttr "phongE26SG.msg" "materialInfo64.sg";
connectAttr "phongE26.msg" "materialInfo64.m";
connectAttr "phongE27.oc" "phongE27SG.ss";
connectAttr "phongE27SG.msg" "materialInfo65.sg";
connectAttr "phongE27.msg" "materialInfo65.m";
connectAttr "phongE28.oc" "phongE28SG.ss";
connectAttr "phongE28SG.msg" "materialInfo66.sg";
connectAttr "phongE28.msg" "materialInfo66.m";
connectAttr "phongE29.oc" "phongE29SG.ss";
connectAttr "phongE29SG.msg" "materialInfo67.sg";
connectAttr "phongE29.msg" "materialInfo67.m";
connectAttr "phongE30.oc" "phongE30SG.ss";
connectAttr "phongE30SG.msg" "materialInfo68.sg";
connectAttr "phongE30.msg" "materialInfo68.m";
connectAttr "pasted__phongE25.oc" "pasted__phongE25SG.ss";
connectAttr "pasted__phongE25SG.msg" "pasted__materialInfo63.sg";
connectAttr "pasted__phongE25.msg" "pasted__materialInfo63.m";
connectAttr "file10.msg" "pasted__materialInfo63.t" -na;
connectAttr "file10.oc" "pasted__phongE25.c";
connectAttr "pasted__phongE26.oc" "pasted__phongE26SG.ss";
connectAttr "pasted__phongE26SG.msg" "pasted__materialInfo64.sg";
connectAttr "pasted__phongE26.msg" "pasted__materialInfo64.m";
connectAttr "file11.msg" "pasted__materialInfo64.t" -na;
connectAttr "file11.oc" "pasted__phongE26.c";
connectAttr "pasted__phongE27.oc" "pasted__phongE27SG.ss";
connectAttr "pasted__phongE27SG.msg" "pasted__materialInfo65.sg";
connectAttr "pasted__phongE27.msg" "pasted__materialInfo65.m";
connectAttr "file24.msg" "pasted__materialInfo65.t" -na;
connectAttr "file24.oc" "pasted__phongE27.c";
connectAttr "pasted__phongE28.oc" "pasted__phongE28SG.ss";
connectAttr "pasted__phongE28SG.msg" "pasted__materialInfo66.sg";
connectAttr "pasted__phongE28.msg" "pasted__materialInfo66.m";
connectAttr "file25.msg" "pasted__materialInfo66.t" -na;
connectAttr "file25.oc" "pasted__phongE28.c";
connectAttr "pasted__phongE29.oc" "pasted__phongE29SG.ss";
connectAttr "pasted__phongE29SG.msg" "pasted__materialInfo67.sg";
connectAttr "pasted__phongE29.msg" "pasted__materialInfo67.m";
connectAttr "file26.msg" "pasted__materialInfo67.t" -na;
connectAttr "file26.oc" "pasted__phongE29.c";
connectAttr "pasted__phongE30.oc" "pasted__phongE30SG.ss";
connectAttr "pasted__phongE30SG.msg" "pasted__materialInfo68.sg";
connectAttr "pasted__phongE30.msg" "pasted__materialInfo68.m";
connectAttr "file20.oc" "phongE31.c";
connectAttr "phongE31.oc" "phongE31SG.ss";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube4|pasted__pasted__pCubeShape4.iog" "phongE31SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" "phongE31SG.dsm"
		 -na;
connectAttr "phongE31SG.msg" "materialInfo69.sg";
connectAttr "phongE31.msg" "materialInfo69.m";
connectAttr "file20.msg" "materialInfo69.t" -na;
connectAttr "file22.oc" "phong9.c";
connectAttr "phong9.oc" "phong9SG.ss";
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube5|pasted__pasted__pCubeShape5.iog" "phong9SG.dsm"
		 -na;
connectAttr "phong9SG.msg" "materialInfo70.sg";
connectAttr "phong9.msg" "materialInfo70.m";
connectAttr "file22.msg" "materialInfo70.t" -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader0.oc" "photo_1591969851586_adbbd4accf81ConverterSG0.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG0.msg" "materialInfo71.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader0.msg" "materialInfo71.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader1.oc" "photo_1591969851586_adbbd4accf81ConverterSG1.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG1.msg" "materialInfo72.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader1.msg" "materialInfo72.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader2.oc" "photo_1591969851586_adbbd4accf81ConverterSG2.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG2.msg" "materialInfo73.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader2.msg" "materialInfo73.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader3.oc" "photo_1591969851586_adbbd4accf81ConverterSG3.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG3.msg" "materialInfo74.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader3.msg" "materialInfo74.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader4.oc" "photo_1591969851586_adbbd4accf81ConverterSG4.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG4.msg" "materialInfo75.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader4.msg" "materialInfo75.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader5.oc" "photo_1591969851586_adbbd4accf81ConverterSG5.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG5.msg" "materialInfo76.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader5.msg" "materialInfo76.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader6.oc" "photo_1591969851586_adbbd4accf81ConverterSG6.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG6.msg" "materialInfo77.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader6.msg" "materialInfo77.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader7.oc" "photo_1591969851586_adbbd4accf81ConverterSG7.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG7.msg" "materialInfo78.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader7.msg" "materialInfo78.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader8.oc" "photo_1591969851586_adbbd4accf81ConverterSG8.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG8.msg" "materialInfo79.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader8.msg" "materialInfo79.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader9.oc" "photo_1591969851586_adbbd4accf81ConverterSG9.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG9.msg" "materialInfo80.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader9.msg" "materialInfo80.m"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader10.oc" "photo_1591969851586_adbbd4accf81ConverterSG10.ss"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG10.msg" "materialInfo81.sg"
		;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader10.msg" "materialInfo81.m"
		;
connectAttr "|LivingRoom|Portraits|Pic1|pasted__pPlane1|pasted__pPlaneShape1.o" "pasted__photo_1591969851586_adbbd4accf81Converter.im"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment0.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[0]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment1.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[1]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment2.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[2]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment3.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[3]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment4.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[4]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment5.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[5]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment6.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[6]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment7.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[7]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment8.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[8]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment9.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[9]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment10.id" "pasted__photo_1591969851586_adbbd4accf81Converter.sgi[10]"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader0.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[0]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment0.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.msg" "pasted__materialInfo71.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader0.msg" "pasted__materialInfo71.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader1.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[1]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment1.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.msg" "pasted__materialInfo72.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader1.msg" "pasted__materialInfo72.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader2.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[2]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment2.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.msg" "pasted__materialInfo73.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader2.msg" "pasted__materialInfo73.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader3.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[3]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment3.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.msg" "pasted__materialInfo74.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader3.msg" "pasted__materialInfo74.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader4.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[4]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment4.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.msg" "pasted__materialInfo75.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader4.msg" "pasted__materialInfo75.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader5.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[5]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment5.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.msg" "pasted__materialInfo76.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader5.msg" "pasted__materialInfo76.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader6.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[6]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment6.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.msg" "pasted__materialInfo77.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader6.msg" "pasted__materialInfo77.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader7.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[7]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment7.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.msg" "pasted__materialInfo78.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader7.msg" "pasted__materialInfo78.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader8.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[8]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment8.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.msg" "pasted__materialInfo79.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader8.msg" "pasted__materialInfo79.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader9.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[9]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment9.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.msg" "pasted__materialInfo80.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader9.msg" "pasted__materialInfo80.m"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader10.oc" "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.ss"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[10]" "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.dsm"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment10.msg" "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.gn"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.msg" "pasted__materialInfo81.sg"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader10.msg" "pasted__materialInfo81.m"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0.oc" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.ss"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.msg" "materialInfo82.sg"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0.msg" "materialInfo82.m"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1.oc" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.ss"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.msg" "materialInfo83.sg"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1.msg" "materialInfo83.m"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2.oc" "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.ss"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.msg" "materialInfo84.sg"
		;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2.msg" "materialInfo84.m"
		;
connectAttr "file9.oc" "phongE32.c";
connectAttr "phongE32.oc" "phongE32SG.ss";
connectAttr "groupId5.msg" "phongE32SG.gn" -na;
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1]" "phongE32SG.dsm"
		 -na;
connectAttr "phongE32SG.msg" "materialInfo85.sg";
connectAttr "phongE32.msg" "materialInfo85.m";
connectAttr "file9.msg" "materialInfo85.t" -na;
connectAttr "pasted__pasted__polySplitRing8.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "file28.oc" "phongE33.c";
connectAttr "phongE33.oc" "phongE33SG.ss";
connectAttr "groupId8.msg" "phongE33SG.gn" -na;
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[1]" "phongE33SG.dsm"
		 -na;
connectAttr "phongE33SG.msg" "materialInfo86.sg";
connectAttr "phongE33.msg" "materialInfo86.m";
connectAttr "file28.msg" "materialInfo86.t" -na;
connectAttr "pasted__polyExtrudeFace4.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "phongE34.oc" "phongE34SG.ss";
connectAttr "pasted__pCubeShape5.iog" "phongE34SG.dsm" -na;
connectAttr "pasted__pCubeShape6.iog" "phongE34SG.dsm" -na;
connectAttr "phongE34SG.msg" "materialInfo87.sg";
connectAttr "phongE34.msg" "materialInfo87.m";
connectAttr "imagesConverterShader0.oc" "imagesConverterSG0.ss";
connectAttr "imagesConverterSG0.msg" "materialInfo88.sg";
connectAttr "imagesConverterShader0.msg" "materialInfo88.m";
connectAttr "imagesConverterShader1.oc" "imagesConverterSG1.ss";
connectAttr "imagesConverterSG1.msg" "materialInfo89.sg";
connectAttr "imagesConverterShader1.msg" "materialInfo89.m";
connectAttr "imagesConverterShader2.oc" "imagesConverterSG2.ss";
connectAttr "imagesConverterSG2.msg" "materialInfo90.sg";
connectAttr "imagesConverterShader2.msg" "materialInfo90.m";
connectAttr "|LivingRoom|Portraits|Pic3|pasted__pPlane2|pasted__pPlaneShape2.o" "pasted__imagesConverter.im"
		;
connectAttr "pasted__imagesSegment0.id" "pasted__imagesConverter.sgi[0]";
connectAttr "pasted__imagesSegment1.id" "pasted__imagesConverter.sgi[1]";
connectAttr "pasted__imagesSegment2.id" "pasted__imagesConverter.sgi[2]";
connectAttr "pasted__imagesConverterShader0.oc" "pasted__imagesConverterSG0.ss";
connectAttr "pasted__imagesMesh.iog.og[0]" "pasted__imagesConverterSG0.dsm" -na;
connectAttr "pasted__imagesSegment0.msg" "pasted__imagesConverterSG0.gn" -na;
connectAttr "pasted__imagesConverterSG0.msg" "pasted__materialInfo88.sg";
connectAttr "pasted__imagesConverterShader0.msg" "pasted__materialInfo88.m";
connectAttr "pasted__imagesConverterShader1.oc" "pasted__imagesConverterSG1.ss";
connectAttr "pasted__imagesMesh.iog.og[1]" "pasted__imagesConverterSG1.dsm" -na;
connectAttr "pasted__imagesSegment1.msg" "pasted__imagesConverterSG1.gn" -na;
connectAttr "pasted__imagesConverterSG1.msg" "pasted__materialInfo89.sg";
connectAttr "pasted__imagesConverterShader1.msg" "pasted__materialInfo89.m";
connectAttr "pasted__imagesConverterShader2.oc" "pasted__imagesConverterSG2.ss";
connectAttr "pasted__imagesMesh.iog.og[2]" "pasted__imagesConverterSG2.dsm" -na;
connectAttr "pasted__imagesSegment2.msg" "pasted__imagesConverterSG2.gn" -na;
connectAttr "pasted__imagesConverterSG2.msg" "pasted__materialInfo90.sg";
connectAttr "pasted__imagesConverterShader2.msg" "pasted__materialInfo90.m";
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0.oc" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.ss"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.msg" "pasted__materialInfo82.sg"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0.msg" "pasted__materialInfo82.m"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1.oc" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.ss"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.msg" "pasted__materialInfo83.sg"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1.msg" "pasted__materialInfo83.m"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2.oc" "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.ss"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.msg" "pasted__materialInfo84.sg"
		;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2.msg" "pasted__materialInfo84.m"
		;
connectAttr "phongE35.oc" "phongE35SG.ss";
connectAttr "groupId9.msg" "phongE35SG.gn" -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Mesh.iog.og[11]" "phongE35SG.dsm"
		 -na;
connectAttr "phongE35SG.msg" "materialInfo91.sg";
connectAttr "phongE35.msg" "materialInfo91.m";
connectAttr "pasted__photo_1591969851586_adbbd4accf81Converter.out" "groupParts5.ig"
		;
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment1.id" "groupParts5.gi"
		;
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment2.id" "groupParts7.gi"
		;
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "pasted__photo_1591969851586_adbbd4accf81Segment4.id" "groupParts8.gi"
		;
connectAttr "phongE36.oc" "phongE36SG.ss";
connectAttr "phongE36SG.msg" "materialInfo92.sg";
connectAttr "phongE36.msg" "materialInfo92.m";
connectAttr "|LivingRoom|Portraits|Pic1|pasted__pPlane1|pasted__pPlaneShape1.o" "Pic2Converter.im"
		;
connectAttr "Pic2Segment0.id" "Pic2Converter.sgi[0]";
connectAttr "Pic2Segment1.id" "Pic2Converter.sgi[1]";
connectAttr "Pic2Segment2.id" "Pic2Converter.sgi[2]";
connectAttr "Pic2ConverterShader0.oc" "Pic2ConverterSG0.ss";
connectAttr "Pic2Mesh.iog.og[0]" "Pic2ConverterSG0.dsm" -na;
connectAttr "Pic2Segment0.msg" "Pic2ConverterSG0.gn" -na;
connectAttr "Pic2ConverterSG0.msg" "materialInfo93.sg";
connectAttr "Pic2ConverterShader0.msg" "materialInfo93.m";
connectAttr "Pic2ConverterShader1.oc" "Pic2ConverterSG1.ss";
connectAttr "Pic2Mesh.iog.og[1]" "Pic2ConverterSG1.dsm" -na;
connectAttr "Pic2Segment1.msg" "Pic2ConverterSG1.gn" -na;
connectAttr "Pic2ConverterSG1.msg" "materialInfo94.sg";
connectAttr "Pic2ConverterShader1.msg" "materialInfo94.m";
connectAttr "Pic2ConverterShader2.oc" "Pic2ConverterSG2.ss";
connectAttr "Pic2Mesh.iog.og[2]" "Pic2ConverterSG2.dsm" -na;
connectAttr "Pic2Segment2.msg" "Pic2ConverterSG2.gn" -na;
connectAttr "Pic2ConverterSG2.msg" "materialInfo95.sg";
connectAttr "Pic2ConverterShader2.msg" "materialInfo95.m";
connectAttr "|LivingRoom|Portraits|Pic1|pasted__pPlane1|pasted__pPlaneShape1.o" "Pic1Converter.im"
		;
connectAttr "Pic1Segment0.id" "Pic1Converter.sgi[0]";
connectAttr "Pic1Segment1.id" "Pic1Converter.sgi[1]";
connectAttr "Pic1Segment2.id" "Pic1Converter.sgi[2]";
connectAttr "Pic1Segment3.id" "Pic1Converter.sgi[3]";
connectAttr "Pic1Segment4.id" "Pic1Converter.sgi[4]";
connectAttr "Pic1Segment5.id" "Pic1Converter.sgi[5]";
connectAttr "Pic1ConverterShader0.oc" "Pic1ConverterSG0.ss";
connectAttr "Pic1Mesh.iog.og[0]" "Pic1ConverterSG0.dsm" -na;
connectAttr "Pic1Segment0.msg" "Pic1ConverterSG0.gn" -na;
connectAttr "Pic1ConverterSG0.msg" "materialInfo96.sg";
connectAttr "Pic1ConverterShader0.msg" "materialInfo96.m";
connectAttr "Pic1ConverterShader1.oc" "Pic1ConverterSG1.ss";
connectAttr "Pic1Mesh.iog.og[1]" "Pic1ConverterSG1.dsm" -na;
connectAttr "Pic1Segment1.msg" "Pic1ConverterSG1.gn" -na;
connectAttr "Pic1ConverterSG1.msg" "materialInfo97.sg";
connectAttr "Pic1ConverterShader1.msg" "materialInfo97.m";
connectAttr "Pic1ConverterShader2.oc" "Pic1ConverterSG2.ss";
connectAttr "Pic1Mesh.iog.og[2]" "Pic1ConverterSG2.dsm" -na;
connectAttr "Pic1Segment2.msg" "Pic1ConverterSG2.gn" -na;
connectAttr "Pic1ConverterSG2.msg" "materialInfo98.sg";
connectAttr "Pic1ConverterShader2.msg" "materialInfo98.m";
connectAttr "Pic1ConverterShader3.oc" "Pic1ConverterSG3.ss";
connectAttr "Pic1Mesh.iog.og[3]" "Pic1ConverterSG3.dsm" -na;
connectAttr "Pic1Segment3.msg" "Pic1ConverterSG3.gn" -na;
connectAttr "Pic1ConverterSG3.msg" "materialInfo99.sg";
connectAttr "Pic1ConverterShader3.msg" "materialInfo99.m";
connectAttr "Pic1ConverterShader4.oc" "Pic1ConverterSG4.ss";
connectAttr "Pic1Mesh.iog.og[4]" "Pic1ConverterSG4.dsm" -na;
connectAttr "Pic1Segment4.msg" "Pic1ConverterSG4.gn" -na;
connectAttr "Pic1ConverterSG4.msg" "materialInfo100.sg";
connectAttr "Pic1ConverterShader4.msg" "materialInfo100.m";
connectAttr "Pic1ConverterShader5.oc" "Pic1ConverterSG5.ss";
connectAttr "Pic1Mesh.iog.og[5]" "Pic1ConverterSG5.dsm" -na;
connectAttr "Pic1Segment5.msg" "Pic1ConverterSG5.gn" -na;
connectAttr "Pic1ConverterSG5.msg" "materialInfo101.sg";
connectAttr "Pic1ConverterShader5.msg" "materialInfo101.m";
connectAttr "|LivingRoom|Portraits|Pic3|pasted__pPlane2|pasted__pPlaneShape2.o" "Pic3Converter.im"
		;
connectAttr "Pic3Segment0.id" "Pic3Converter.sgi[0]";
connectAttr "Pic3Segment1.id" "Pic3Converter.sgi[1]";
connectAttr "Pic3Segment2.id" "Pic3Converter.sgi[2]";
connectAttr "Pic3Segment3.id" "Pic3Converter.sgi[3]";
connectAttr "Pic3Segment4.id" "Pic3Converter.sgi[4]";
connectAttr "Pic3Segment5.id" "Pic3Converter.sgi[5]";
connectAttr "Pic3ConverterShader0.oc" "Pic3ConverterSG0.ss";
connectAttr "Pic3Mesh.iog.og[0]" "Pic3ConverterSG0.dsm" -na;
connectAttr "Pic3Segment0.msg" "Pic3ConverterSG0.gn" -na;
connectAttr "Pic3ConverterSG0.msg" "materialInfo102.sg";
connectAttr "Pic3ConverterShader0.msg" "materialInfo102.m";
connectAttr "Pic3ConverterShader1.oc" "Pic3ConverterSG1.ss";
connectAttr "Pic3Mesh.iog.og[1]" "Pic3ConverterSG1.dsm" -na;
connectAttr "Pic3Segment1.msg" "Pic3ConverterSG1.gn" -na;
connectAttr "Pic3ConverterSG1.msg" "materialInfo103.sg";
connectAttr "Pic3ConverterShader1.msg" "materialInfo103.m";
connectAttr "Pic3ConverterShader2.oc" "Pic3ConverterSG2.ss";
connectAttr "Pic3Mesh.iog.og[2]" "Pic3ConverterSG2.dsm" -na;
connectAttr "Pic3Segment2.msg" "Pic3ConverterSG2.gn" -na;
connectAttr "Pic3ConverterSG2.msg" "materialInfo104.sg";
connectAttr "Pic3ConverterShader2.msg" "materialInfo104.m";
connectAttr "Pic3ConverterShader3.oc" "Pic3ConverterSG3.ss";
connectAttr "Pic3Mesh.iog.og[3]" "Pic3ConverterSG3.dsm" -na;
connectAttr "Pic3Segment3.msg" "Pic3ConverterSG3.gn" -na;
connectAttr "Pic3ConverterSG3.msg" "materialInfo105.sg";
connectAttr "Pic3ConverterShader3.msg" "materialInfo105.m";
connectAttr "Pic3ConverterShader4.oc" "Pic3ConverterSG4.ss";
connectAttr "Pic3Mesh.iog.og[4]" "Pic3ConverterSG4.dsm" -na;
connectAttr "Pic3Segment4.msg" "Pic3ConverterSG4.gn" -na;
connectAttr "Pic3ConverterSG4.msg" "materialInfo106.sg";
connectAttr "Pic3ConverterShader4.msg" "materialInfo106.m";
connectAttr "Pic3ConverterShader5.oc" "Pic3ConverterSG5.ss";
connectAttr "Pic3Mesh.iog.og[5]" "Pic3ConverterSG5.dsm" -na;
connectAttr "Pic3Segment5.msg" "Pic3ConverterSG5.gn" -na;
connectAttr "Pic3ConverterSG5.msg" "materialInfo107.sg";
connectAttr "Pic3ConverterShader5.msg" "materialInfo107.m";
connectAttr "pasted__phongE36.oc" "pasted__phongE36SG.ss";
connectAttr "pasted__groupId21.msg" "pasted__phongE36SG.gn" -na;
connectAttr "pasted__CarpetShape.iog.og[1]" "pasted__phongE36SG.dsm" -na;
connectAttr "pasted__phongE36SG.msg" "pasted__materialInfo92.sg";
connectAttr "pasted__phongE36.msg" "pasted__materialInfo92.m";
connectAttr "file5.msg" "pasted__materialInfo92.t" -na;
connectAttr "file5.oc" "pasted__phongE36.c";
connectAttr "pasted__polyTweak6.out" "pasted__polyBevel5.ip";
connectAttr "pasted__CarpetShape.wm" "pasted__polyBevel5.mp";
connectAttr "pasted__polyExtrudeFace7.out" "pasted__polyTweak6.ip";
connectAttr "pasted__polyTweak5.out" "pasted__polyExtrudeFace7.ip";
connectAttr "pasted__CarpetShape.wm" "pasted__polyExtrudeFace7.mp";
connectAttr "pasted__groupParts10.og" "pasted__polyTweak5.ip";
connectAttr "pasted__groupParts9.og" "pasted__groupParts10.ig";
connectAttr "pasted__groupId21.id" "pasted__groupParts10.gi";
connectAttr "pasted__polyPlane4.out" "pasted__groupParts9.ig";
connectAttr "pasted__groupId19.id" "pasted__groupParts9.gi";
connectAttr "pasted__pasted__phong8SG.msg" "pasted__pasted__materialInfo51.sg";
connectAttr "pasted__pasted__phong8.msg" "pasted__pasted__materialInfo51.m";
connectAttr "file12.msg" "pasted__pasted__materialInfo51.t" -na;
connectAttr "pasted__pasted__phong8.oc" "pasted__pasted__phong8SG.ss";
connectAttr "file12.oc" "pasted__pasted__phong8.c";
connectAttr "shadingMap10.oc" "shadingMap10SG.ss";
connectAttr "shadingMap10SG.msg" "materialInfo108.sg";
connectAttr "shadingMap10.msg" "materialInfo108.m";
connectAttr "shadingMap10.msg" "materialInfo108.t" -na;
connectAttr "shadingMap11.oc" "shadingMap11SG.ss";
connectAttr "shadingMap11SG.msg" "materialInfo109.sg";
connectAttr "shadingMap11.msg" "materialInfo109.m";
connectAttr "shadingMap11.msg" "materialInfo109.t" -na;
connectAttr "shadingMap12.oc" "shadingMap12SG.ss";
connectAttr "shadingMap12SG.msg" "materialInfo110.sg";
connectAttr "shadingMap12.msg" "materialInfo110.m";
connectAttr "shadingMap12.msg" "materialInfo110.t" -na;
connectAttr "shadingMap13.oc" "shadingMap13SG.ss";
connectAttr "shadingMap13SG.msg" "materialInfo111.sg";
connectAttr "shadingMap13.msg" "materialInfo111.m";
connectAttr "shadingMap13.msg" "materialInfo111.t" -na;
connectAttr "pasted__shadingMap10.oc" "pasted__shadingMap10SG.ss";
connectAttr "pasted__shadingMap10SG.msg" "pasted__materialInfo108.sg";
connectAttr "pasted__shadingMap10.msg" "pasted__materialInfo108.m";
connectAttr "pasted__shadingMap10.msg" "pasted__materialInfo108.t" -na;
connectAttr "pasted__polyTweak7.out" "pasted__polyExtrudeFace8.ip";
connectAttr "|LivingRoom|group|pasted__pPlane1|pasted__pPlaneShape1.wm" "pasted__polyExtrudeFace8.mp"
		;
connectAttr "pasted__polyPlane5.out" "pasted__polyTweak7.ip";
connectAttr "pasted__shadingMap12.oc" "pasted__shadingMap12SG.ss";
connectAttr "pasted__shadingMap12SG.msg" "pasted__materialInfo110.sg";
connectAttr "pasted__shadingMap12.msg" "pasted__materialInfo110.m";
connectAttr "pasted__shadingMap12.msg" "pasted__materialInfo110.t" -na;
connectAttr "pasted__polySurfaceShape2.o" "pasted__polyExtrudeFace9.ip";
connectAttr "|LivingRoom|group|pasted__pPlane2|pasted__pPlaneShape2.wm" "pasted__polyExtrudeFace9.mp"
		;
connectAttr "pasted__shadingMap13.oc" "pasted__shadingMap13SG.ss";
connectAttr "pasted__shadingMap13SG.msg" "pasted__materialInfo111.sg";
connectAttr "pasted__shadingMap13.msg" "pasted__materialInfo111.m";
connectAttr "pasted__shadingMap13.msg" "pasted__materialInfo111.t" -na;
connectAttr "pasted__polySurfaceShape3.o" "pasted__polyExtrudeFace10.ip";
connectAttr "pasted__pPlaneShape3.wm" "pasted__polyExtrudeFace10.mp";
connectAttr "phongE37.oc" "phongE37SG.ss";
connectAttr "phongE37SG.msg" "materialInfo112.sg";
connectAttr "phongE37.msg" "materialInfo112.m";
connectAttr "phongE38.oc" "phongE38SG.ss";
connectAttr "phongE38SG.msg" "materialInfo113.sg";
connectAttr "phongE38.msg" "materialInfo113.m";
connectAttr "shadingMap14.oc" "shadingMap14SG.ss";
connectAttr "shadingMap14SG.msg" "materialInfo114.sg";
connectAttr "shadingMap14.msg" "materialInfo114.m";
connectAttr "shadingMap14.msg" "materialInfo114.t" -na;
connectAttr "phongE39.oc" "phongE39SG.ss";
connectAttr "phongE39SG.msg" "materialInfo115.sg";
connectAttr "phongE39.msg" "materialInfo115.m";
connectAttr "phong10.oc" "phong10SG.ss";
connectAttr "phong10SG.msg" "materialInfo116.sg";
connectAttr "phong10.msg" "materialInfo116.m";
connectAttr "shadingMap15.oc" "shadingMap15SG.ss";
connectAttr "shadingMap15SG.msg" "materialInfo117.sg";
connectAttr "shadingMap15.msg" "materialInfo117.m";
connectAttr "shadingMap15.msg" "materialInfo117.t" -na;
connectAttr "phongE40.oc" "phongE40SG.ss";
connectAttr "phongE40SG.msg" "materialInfo118.sg";
connectAttr "phongE40.msg" "materialInfo118.m";
connectAttr "pasted__phongE40SG.msg" "pasted__materialInfo118.sg";
connectAttr "pasted__phongE40.msg" "pasted__materialInfo118.m";
connectAttr "pasted__phongE40.oc" "pasted__phongE40SG.ss";
connectAttr "|LivingRoom|Table|pasted__pCube2|pasted__pCubeShape2.iog" "pasted__phongE40SG.dsm"
		 -na;
connectAttr "pasted__polyCube8.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__phongE39SG.msg" "pasted__materialInfo115.sg";
connectAttr "pasted__phongE39.msg" "pasted__materialInfo115.m";
connectAttr "file18.msg" "pasted__materialInfo115.t" -na;
connectAttr "pasted__phongE39.oc" "pasted__phongE39SG.ss";
connectAttr "|LivingRoom|Table|pasted__pCube1|pasted__pCubeShape1.iog" "pasted__phongE39SG.dsm"
		 -na;
connectAttr "file18.oc" "pasted__phongE39.c";
connectAttr "pasted__phongE38SG.msg" "pasted__materialInfo113.sg";
connectAttr "pasted__phongE38.msg" "pasted__materialInfo113.m";
connectAttr "file8.msg" "pasted__materialInfo113.t" -na;
connectAttr "pasted__phongE38.oc" "pasted__phongE38SG.ss";
connectAttr "pasted__pCylinderShape4.iog" "pasted__phongE38SG.dsm" -na;
connectAttr "|LivingRoom|Table|pasted__pCylinder3|pasted__pCylinderShape3.iog" "pasted__phongE38SG.dsm"
		 -na;
connectAttr "|LivingRoom|Table|pasted__pCylinder2|pasted__pCylinderShape2.iog" "pasted__phongE38SG.dsm"
		 -na;
connectAttr "|LivingRoom|Table|pasted__pCylinder1|pasted__pCylinderShape1.iog" "pasted__phongE38SG.dsm"
		 -na;
connectAttr "file8.oc" "pasted__phongE38.c";
connectAttr "pasted__polyTweak8.out" "pasted__polyExtrudeFace11.ip";
connectAttr "|LivingRoom|Table|pasted__pPlane1|pasted__pPlaneShape1.wm" "pasted__polyExtrudeFace11.mp"
		;
connectAttr "pasted__polyPlane6.out" "pasted__polyTweak8.ip";
connectAttr "pasted__phong10SG.msg" "pasted__materialInfo116.sg";
connectAttr "pasted__phong10.msg" "pasted__materialInfo116.m";
connectAttr "pasted__phong10.oc" "pasted__phong10SG.ss";
connectAttr "|LivingRoom|Table|pasted__pPlane1|pasted__pPlaneShape1.iog" "pasted__phong10SG.dsm"
		 -na;
connectAttr "phongE41.oc" "phongE41SG.ss";
connectAttr "phongE41SG.msg" "materialInfo119.sg";
connectAttr "phongE41.msg" "materialInfo119.m";
connectAttr "phongE42.oc" "phongE42SG.ss";
connectAttr "phongE42SG.msg" "materialInfo120.sg";
connectAttr "phongE42.msg" "materialInfo120.m";
connectAttr "pasted__deleteComponent2.og" "pasted__polyExtrudeEdge1.ip";
connectAttr "|LivingRoom|Glasses|pasted__pCylinder1|pasted__pCylinderShape1.wm" "pasted__polyExtrudeEdge1.mp"
		;
connectAttr "pasted__polyTweak9.out" "pasted__deleteComponent2.ig";
connectAttr "pasted__polyCylinder5.out" "pasted__polyTweak9.ip";
connectAttr "pasted__phongE42SG.msg" "pasted__materialInfo120.sg";
connectAttr "pasted__phongE42.msg" "pasted__materialInfo120.m";
connectAttr "pasted__phongE42.oc" "pasted__phongE42SG.ss";
connectAttr "|LivingRoom|Glasses|pasted__pCylinder1|pasted__pCylinderShape1.iog" "pasted__phongE42SG.dsm"
		 -na;
connectAttr "|LivingRoom|Glasses|pasted__pCylinder2|pasted__pCylinderShape2.iog" "pasted__phongE42SG.dsm"
		 -na;
connectAttr "|LivingRoom|Glasses|pasted__pCylinder3|pasted__pCylinderShape3.iog" "pasted__phongE42SG.dsm"
		 -na;
connectAttr "file17.oc" "phongE43.c";
connectAttr "phongE43.oc" "phongE43SG.ss";
connectAttr "groupId43.msg" "phongE43SG.gn" -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[4]" "phongE43SG.dsm"
		 -na;
connectAttr "phongE43SG.msg" "materialInfo121.sg";
connectAttr "phongE43.msg" "materialInfo121.m";
connectAttr "file17.msg" "materialInfo121.t" -na;
connectAttr "pasted__groupParts4.og" "groupParts29.ig";
connectAttr "groupId43.id" "groupParts29.gi";
connectAttr "file23.oc" "phongE44.c";
connectAttr "phongE44.oc" "phongE44SG.ss";
connectAttr "|LivingRoom|group|pasted__pPlane1|pasted__pPlaneShape1.iog" "phongE44SG.dsm"
		 -na;
connectAttr "pasted__pPlaneShape3.iog" "phongE44SG.dsm" -na;
connectAttr "|LivingRoom|group|pasted__pPlane2|pasted__pPlaneShape2.iog" "phongE44SG.dsm"
		 -na;
connectAttr "phongE44SG.msg" "materialInfo122.sg";
connectAttr "phongE44.msg" "materialInfo122.m";
connectAttr "file23.msg" "materialInfo122.t" -na;
connectAttr "phongE45.oc" "phongE45SG.ss";
connectAttr "phongE45SG.msg" "materialInfo123.sg";
connectAttr "phongE45.msg" "materialInfo123.m";
connectAttr "file27.oc" "phongE46.c";
connectAttr "phongE46.oc" "phongE46SG.ss";
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "phongE46SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" "phongE46SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" "phongE46SG.dsm"
		 -na;
connectAttr "phongE46SG.msg" "materialInfo124.sg";
connectAttr "phongE46.msg" "materialInfo124.m";
connectAttr "file27.msg" "materialInfo124.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "lambert14.c";
connectAttr "lambert14.oc" "lambert14SG.ss";
connectAttr "|LivingRoom|Portraits|pasted__pCube3|pasted__pCubeShape3.iog" "lambert14SG.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|pasted__pCube1|pasted__pCubeShape1.iog" "lambert14SG.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|pasted__pCube2|pasted__pCubeShape2.iog" "lambert14SG.dsm"
		 -na;
connectAttr "lambert14SG.msg" "materialInfo125.sg";
connectAttr "lambert14.msg" "materialInfo125.m";
connectAttr "file4.msg" "materialInfo125.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "lambert15.oc" "lambert15SG.ss";
connectAttr "|LivingRoom|TV|pasted__pCube2|pasted__pCubeShape2.iog" "lambert15SG.dsm"
		 -na;
connectAttr "lambert15SG.msg" "materialInfo126.sg";
connectAttr "lambert15.msg" "materialInfo126.m";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture10.c" "file10.c";
connectAttr "place2dTexture10.tf" "file10.tf";
connectAttr "place2dTexture10.rf" "file10.rf";
connectAttr "place2dTexture10.mu" "file10.mu";
connectAttr "place2dTexture10.mv" "file10.mv";
connectAttr "place2dTexture10.s" "file10.s";
connectAttr "place2dTexture10.wu" "file10.wu";
connectAttr "place2dTexture10.wv" "file10.wv";
connectAttr "place2dTexture10.re" "file10.re";
connectAttr "place2dTexture10.of" "file10.of";
connectAttr "place2dTexture10.r" "file10.ro";
connectAttr "place2dTexture10.n" "file10.n";
connectAttr "place2dTexture10.vt1" "file10.vt1";
connectAttr "place2dTexture10.vt2" "file10.vt2";
connectAttr "place2dTexture10.vt3" "file10.vt3";
connectAttr "place2dTexture10.vc1" "file10.vc1";
connectAttr "place2dTexture10.o" "file10.uv";
connectAttr "place2dTexture10.ofs" "file10.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "place2dTexture11.c" "file11.c";
connectAttr "place2dTexture11.tf" "file11.tf";
connectAttr "place2dTexture11.rf" "file11.rf";
connectAttr "place2dTexture11.mu" "file11.mu";
connectAttr "place2dTexture11.mv" "file11.mv";
connectAttr "place2dTexture11.s" "file11.s";
connectAttr "place2dTexture11.wu" "file11.wu";
connectAttr "place2dTexture11.wv" "file11.wv";
connectAttr "place2dTexture11.re" "file11.re";
connectAttr "place2dTexture11.of" "file11.of";
connectAttr "place2dTexture11.r" "file11.ro";
connectAttr "place2dTexture11.n" "file11.n";
connectAttr "place2dTexture11.vt1" "file11.vt1";
connectAttr "place2dTexture11.vt2" "file11.vt2";
connectAttr "place2dTexture11.vt3" "file11.vt3";
connectAttr "place2dTexture11.vc1" "file11.vc1";
connectAttr "place2dTexture11.o" "file11.uv";
connectAttr "place2dTexture11.ofs" "file11.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "place2dTexture12.c" "file12.c";
connectAttr "place2dTexture12.tf" "file12.tf";
connectAttr "place2dTexture12.rf" "file12.rf";
connectAttr "place2dTexture12.mu" "file12.mu";
connectAttr "place2dTexture12.mv" "file12.mv";
connectAttr "place2dTexture12.s" "file12.s";
connectAttr "place2dTexture12.wu" "file12.wu";
connectAttr "place2dTexture12.wv" "file12.wv";
connectAttr "place2dTexture12.re" "file12.re";
connectAttr "place2dTexture12.of" "file12.of";
connectAttr "place2dTexture12.r" "file12.ro";
connectAttr "place2dTexture12.n" "file12.n";
connectAttr "place2dTexture12.vt1" "file12.vt1";
connectAttr "place2dTexture12.vt2" "file12.vt2";
connectAttr "place2dTexture12.vt3" "file12.vt3";
connectAttr "place2dTexture12.vc1" "file12.vc1";
connectAttr "place2dTexture12.o" "file12.uv";
connectAttr "place2dTexture12.ofs" "file12.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "place2dTexture13.c" "file13.c";
connectAttr "place2dTexture13.tf" "file13.tf";
connectAttr "place2dTexture13.rf" "file13.rf";
connectAttr "place2dTexture13.mu" "file13.mu";
connectAttr "place2dTexture13.mv" "file13.mv";
connectAttr "place2dTexture13.s" "file13.s";
connectAttr "place2dTexture13.wu" "file13.wu";
connectAttr "place2dTexture13.wv" "file13.wv";
connectAttr "place2dTexture13.re" "file13.re";
connectAttr "place2dTexture13.of" "file13.of";
connectAttr "place2dTexture13.r" "file13.ro";
connectAttr "place2dTexture13.n" "file13.n";
connectAttr "place2dTexture13.vt1" "file13.vt1";
connectAttr "place2dTexture13.vt2" "file13.vt2";
connectAttr "place2dTexture13.vt3" "file13.vt3";
connectAttr "place2dTexture13.vc1" "file13.vc1";
connectAttr "place2dTexture13.o" "file13.uv";
connectAttr "place2dTexture13.ofs" "file13.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "place2dTexture14.c" "file14.c";
connectAttr "place2dTexture14.tf" "file14.tf";
connectAttr "place2dTexture14.rf" "file14.rf";
connectAttr "place2dTexture14.mu" "file14.mu";
connectAttr "place2dTexture14.mv" "file14.mv";
connectAttr "place2dTexture14.s" "file14.s";
connectAttr "place2dTexture14.wu" "file14.wu";
connectAttr "place2dTexture14.wv" "file14.wv";
connectAttr "place2dTexture14.re" "file14.re";
connectAttr "place2dTexture14.of" "file14.of";
connectAttr "place2dTexture14.r" "file14.ro";
connectAttr "place2dTexture14.n" "file14.n";
connectAttr "place2dTexture14.vt1" "file14.vt1";
connectAttr "place2dTexture14.vt2" "file14.vt2";
connectAttr "place2dTexture14.vt3" "file14.vt3";
connectAttr "place2dTexture14.vc1" "file14.vc1";
connectAttr "place2dTexture14.o" "file14.uv";
connectAttr "place2dTexture14.ofs" "file14.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "place2dTexture15.c" "file15.c";
connectAttr "place2dTexture15.tf" "file15.tf";
connectAttr "place2dTexture15.rf" "file15.rf";
connectAttr "place2dTexture15.mu" "file15.mu";
connectAttr "place2dTexture15.mv" "file15.mv";
connectAttr "place2dTexture15.s" "file15.s";
connectAttr "place2dTexture15.wu" "file15.wu";
connectAttr "place2dTexture15.wv" "file15.wv";
connectAttr "place2dTexture15.re" "file15.re";
connectAttr "place2dTexture15.of" "file15.of";
connectAttr "place2dTexture15.r" "file15.ro";
connectAttr "place2dTexture15.n" "file15.n";
connectAttr "place2dTexture15.vt1" "file15.vt1";
connectAttr "place2dTexture15.vt2" "file15.vt2";
connectAttr "place2dTexture15.vt3" "file15.vt3";
connectAttr "place2dTexture15.vc1" "file15.vc1";
connectAttr "place2dTexture15.o" "file15.uv";
connectAttr "place2dTexture15.ofs" "file15.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "place2dTexture16.c" "file16.c";
connectAttr "place2dTexture16.tf" "file16.tf";
connectAttr "place2dTexture16.rf" "file16.rf";
connectAttr "place2dTexture16.mu" "file16.mu";
connectAttr "place2dTexture16.mv" "file16.mv";
connectAttr "place2dTexture16.s" "file16.s";
connectAttr "place2dTexture16.wu" "file16.wu";
connectAttr "place2dTexture16.wv" "file16.wv";
connectAttr "place2dTexture16.re" "file16.re";
connectAttr "place2dTexture16.of" "file16.of";
connectAttr "place2dTexture16.r" "file16.ro";
connectAttr "place2dTexture16.n" "file16.n";
connectAttr "place2dTexture16.vt1" "file16.vt1";
connectAttr "place2dTexture16.vt2" "file16.vt2";
connectAttr "place2dTexture16.vt3" "file16.vt3";
connectAttr "place2dTexture16.vc1" "file16.vc1";
connectAttr "place2dTexture16.o" "file16.uv";
connectAttr "place2dTexture16.ofs" "file16.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "place2dTexture17.c" "file17.c";
connectAttr "place2dTexture17.tf" "file17.tf";
connectAttr "place2dTexture17.rf" "file17.rf";
connectAttr "place2dTexture17.mu" "file17.mu";
connectAttr "place2dTexture17.mv" "file17.mv";
connectAttr "place2dTexture17.s" "file17.s";
connectAttr "place2dTexture17.wu" "file17.wu";
connectAttr "place2dTexture17.wv" "file17.wv";
connectAttr "place2dTexture17.re" "file17.re";
connectAttr "place2dTexture17.of" "file17.of";
connectAttr "place2dTexture17.r" "file17.ro";
connectAttr "place2dTexture17.n" "file17.n";
connectAttr "place2dTexture17.vt1" "file17.vt1";
connectAttr "place2dTexture17.vt2" "file17.vt2";
connectAttr "place2dTexture17.vt3" "file17.vt3";
connectAttr "place2dTexture17.vc1" "file17.vc1";
connectAttr "place2dTexture17.o" "file17.uv";
connectAttr "place2dTexture17.ofs" "file17.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file18.ws";
connectAttr "place2dTexture18.c" "file18.c";
connectAttr "place2dTexture18.tf" "file18.tf";
connectAttr "place2dTexture18.rf" "file18.rf";
connectAttr "place2dTexture18.mu" "file18.mu";
connectAttr "place2dTexture18.mv" "file18.mv";
connectAttr "place2dTexture18.s" "file18.s";
connectAttr "place2dTexture18.wu" "file18.wu";
connectAttr "place2dTexture18.wv" "file18.wv";
connectAttr "place2dTexture18.re" "file18.re";
connectAttr "place2dTexture18.of" "file18.of";
connectAttr "place2dTexture18.r" "file18.ro";
connectAttr "place2dTexture18.n" "file18.n";
connectAttr "place2dTexture18.vt1" "file18.vt1";
connectAttr "place2dTexture18.vt2" "file18.vt2";
connectAttr "place2dTexture18.vt3" "file18.vt3";
connectAttr "place2dTexture18.vc1" "file18.vc1";
connectAttr "place2dTexture18.o" "file18.uv";
connectAttr "place2dTexture18.ofs" "file18.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file19.ws";
connectAttr "place2dTexture19.c" "file19.c";
connectAttr "place2dTexture19.tf" "file19.tf";
connectAttr "place2dTexture19.rf" "file19.rf";
connectAttr "place2dTexture19.mu" "file19.mu";
connectAttr "place2dTexture19.mv" "file19.mv";
connectAttr "place2dTexture19.s" "file19.s";
connectAttr "place2dTexture19.wu" "file19.wu";
connectAttr "place2dTexture19.wv" "file19.wv";
connectAttr "place2dTexture19.re" "file19.re";
connectAttr "place2dTexture19.of" "file19.of";
connectAttr "place2dTexture19.r" "file19.ro";
connectAttr "place2dTexture19.n" "file19.n";
connectAttr "place2dTexture19.vt1" "file19.vt1";
connectAttr "place2dTexture19.vt2" "file19.vt2";
connectAttr "place2dTexture19.vt3" "file19.vt3";
connectAttr "place2dTexture19.vc1" "file19.vc1";
connectAttr "place2dTexture19.o" "file19.uv";
connectAttr "place2dTexture19.ofs" "file19.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file20.ws";
connectAttr "place2dTexture20.c" "file20.c";
connectAttr "place2dTexture20.tf" "file20.tf";
connectAttr "place2dTexture20.rf" "file20.rf";
connectAttr "place2dTexture20.mu" "file20.mu";
connectAttr "place2dTexture20.mv" "file20.mv";
connectAttr "place2dTexture20.s" "file20.s";
connectAttr "place2dTexture20.wu" "file20.wu";
connectAttr "place2dTexture20.wv" "file20.wv";
connectAttr "place2dTexture20.re" "file20.re";
connectAttr "place2dTexture20.of" "file20.of";
connectAttr "place2dTexture20.r" "file20.ro";
connectAttr "place2dTexture20.n" "file20.n";
connectAttr "place2dTexture20.vt1" "file20.vt1";
connectAttr "place2dTexture20.vt2" "file20.vt2";
connectAttr "place2dTexture20.vt3" "file20.vt3";
connectAttr "place2dTexture20.vc1" "file20.vc1";
connectAttr "place2dTexture20.o" "file20.uv";
connectAttr "place2dTexture20.ofs" "file20.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file21.ws";
connectAttr "place2dTexture21.c" "file21.c";
connectAttr "place2dTexture21.tf" "file21.tf";
connectAttr "place2dTexture21.rf" "file21.rf";
connectAttr "place2dTexture21.mu" "file21.mu";
connectAttr "place2dTexture21.mv" "file21.mv";
connectAttr "place2dTexture21.s" "file21.s";
connectAttr "place2dTexture21.wu" "file21.wu";
connectAttr "place2dTexture21.wv" "file21.wv";
connectAttr "place2dTexture21.re" "file21.re";
connectAttr "place2dTexture21.of" "file21.of";
connectAttr "place2dTexture21.r" "file21.ro";
connectAttr "place2dTexture21.n" "file21.n";
connectAttr "place2dTexture21.vt1" "file21.vt1";
connectAttr "place2dTexture21.vt2" "file21.vt2";
connectAttr "place2dTexture21.vt3" "file21.vt3";
connectAttr "place2dTexture21.vc1" "file21.vc1";
connectAttr "place2dTexture21.o" "file21.uv";
connectAttr "place2dTexture21.ofs" "file21.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file22.ws";
connectAttr "place2dTexture22.c" "file22.c";
connectAttr "place2dTexture22.tf" "file22.tf";
connectAttr "place2dTexture22.rf" "file22.rf";
connectAttr "place2dTexture22.mu" "file22.mu";
connectAttr "place2dTexture22.mv" "file22.mv";
connectAttr "place2dTexture22.s" "file22.s";
connectAttr "place2dTexture22.wu" "file22.wu";
connectAttr "place2dTexture22.wv" "file22.wv";
connectAttr "place2dTexture22.re" "file22.re";
connectAttr "place2dTexture22.of" "file22.of";
connectAttr "place2dTexture22.r" "file22.ro";
connectAttr "place2dTexture22.n" "file22.n";
connectAttr "place2dTexture22.vt1" "file22.vt1";
connectAttr "place2dTexture22.vt2" "file22.vt2";
connectAttr "place2dTexture22.vt3" "file22.vt3";
connectAttr "place2dTexture22.vc1" "file22.vc1";
connectAttr "place2dTexture22.o" "file22.uv";
connectAttr "place2dTexture22.ofs" "file22.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "place2dTexture23.c" "file23.c";
connectAttr "place2dTexture23.tf" "file23.tf";
connectAttr "place2dTexture23.rf" "file23.rf";
connectAttr "place2dTexture23.mu" "file23.mu";
connectAttr "place2dTexture23.mv" "file23.mv";
connectAttr "place2dTexture23.s" "file23.s";
connectAttr "place2dTexture23.wu" "file23.wu";
connectAttr "place2dTexture23.wv" "file23.wv";
connectAttr "place2dTexture23.re" "file23.re";
connectAttr "place2dTexture23.of" "file23.of";
connectAttr "place2dTexture23.r" "file23.ro";
connectAttr "place2dTexture23.n" "file23.n";
connectAttr "place2dTexture23.vt1" "file23.vt1";
connectAttr "place2dTexture23.vt2" "file23.vt2";
connectAttr "place2dTexture23.vt3" "file23.vt3";
connectAttr "place2dTexture23.vc1" "file23.vc1";
connectAttr "place2dTexture23.o" "file23.uv";
connectAttr "place2dTexture23.ofs" "file23.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
connectAttr "place2dTexture24.c" "file24.c";
connectAttr "place2dTexture24.tf" "file24.tf";
connectAttr "place2dTexture24.rf" "file24.rf";
connectAttr "place2dTexture24.mu" "file24.mu";
connectAttr "place2dTexture24.mv" "file24.mv";
connectAttr "place2dTexture24.s" "file24.s";
connectAttr "place2dTexture24.wu" "file24.wu";
connectAttr "place2dTexture24.wv" "file24.wv";
connectAttr "place2dTexture24.re" "file24.re";
connectAttr "place2dTexture24.of" "file24.of";
connectAttr "place2dTexture24.r" "file24.ro";
connectAttr "place2dTexture24.n" "file24.n";
connectAttr "place2dTexture24.vt1" "file24.vt1";
connectAttr "place2dTexture24.vt2" "file24.vt2";
connectAttr "place2dTexture24.vt3" "file24.vt3";
connectAttr "place2dTexture24.vc1" "file24.vc1";
connectAttr "place2dTexture24.o" "file24.uv";
connectAttr "place2dTexture24.ofs" "file24.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file25.ws";
connectAttr "place2dTexture25.c" "file25.c";
connectAttr "place2dTexture25.tf" "file25.tf";
connectAttr "place2dTexture25.rf" "file25.rf";
connectAttr "place2dTexture25.mu" "file25.mu";
connectAttr "place2dTexture25.mv" "file25.mv";
connectAttr "place2dTexture25.s" "file25.s";
connectAttr "place2dTexture25.wu" "file25.wu";
connectAttr "place2dTexture25.wv" "file25.wv";
connectAttr "place2dTexture25.re" "file25.re";
connectAttr "place2dTexture25.of" "file25.of";
connectAttr "place2dTexture25.r" "file25.ro";
connectAttr "place2dTexture25.n" "file25.n";
connectAttr "place2dTexture25.vt1" "file25.vt1";
connectAttr "place2dTexture25.vt2" "file25.vt2";
connectAttr "place2dTexture25.vt3" "file25.vt3";
connectAttr "place2dTexture25.vc1" "file25.vc1";
connectAttr "place2dTexture25.o" "file25.uv";
connectAttr "place2dTexture25.ofs" "file25.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file26.ws";
connectAttr "place2dTexture26.c" "file26.c";
connectAttr "place2dTexture26.tf" "file26.tf";
connectAttr "place2dTexture26.rf" "file26.rf";
connectAttr "place2dTexture26.mu" "file26.mu";
connectAttr "place2dTexture26.mv" "file26.mv";
connectAttr "place2dTexture26.s" "file26.s";
connectAttr "place2dTexture26.wu" "file26.wu";
connectAttr "place2dTexture26.wv" "file26.wv";
connectAttr "place2dTexture26.re" "file26.re";
connectAttr "place2dTexture26.of" "file26.of";
connectAttr "place2dTexture26.r" "file26.ro";
connectAttr "place2dTexture26.n" "file26.n";
connectAttr "place2dTexture26.vt1" "file26.vt1";
connectAttr "place2dTexture26.vt2" "file26.vt2";
connectAttr "place2dTexture26.vt3" "file26.vt3";
connectAttr "place2dTexture26.vc1" "file26.vc1";
connectAttr "place2dTexture26.o" "file26.uv";
connectAttr "place2dTexture26.ofs" "file26.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file27.ws";
connectAttr "place2dTexture27.c" "file27.c";
connectAttr "place2dTexture27.tf" "file27.tf";
connectAttr "place2dTexture27.rf" "file27.rf";
connectAttr "place2dTexture27.mu" "file27.mu";
connectAttr "place2dTexture27.mv" "file27.mv";
connectAttr "place2dTexture27.s" "file27.s";
connectAttr "place2dTexture27.wu" "file27.wu";
connectAttr "place2dTexture27.wv" "file27.wv";
connectAttr "place2dTexture27.re" "file27.re";
connectAttr "place2dTexture27.of" "file27.of";
connectAttr "place2dTexture27.r" "file27.ro";
connectAttr "place2dTexture27.n" "file27.n";
connectAttr "place2dTexture27.vt1" "file27.vt1";
connectAttr "place2dTexture27.vt2" "file27.vt2";
connectAttr "place2dTexture27.vt3" "file27.vt3";
connectAttr "place2dTexture27.vc1" "file27.vc1";
connectAttr "place2dTexture27.o" "file27.uv";
connectAttr "place2dTexture27.ofs" "file27.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file28.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file28.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file28.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file28.ws";
connectAttr "place2dTexture28.c" "file28.c";
connectAttr "place2dTexture28.tf" "file28.tf";
connectAttr "place2dTexture28.rf" "file28.rf";
connectAttr "place2dTexture28.mu" "file28.mu";
connectAttr "place2dTexture28.mv" "file28.mv";
connectAttr "place2dTexture28.s" "file28.s";
connectAttr "place2dTexture28.wu" "file28.wu";
connectAttr "place2dTexture28.wv" "file28.wv";
connectAttr "place2dTexture28.re" "file28.re";
connectAttr "place2dTexture28.of" "file28.of";
connectAttr "place2dTexture28.r" "file28.ro";
connectAttr "place2dTexture28.n" "file28.n";
connectAttr "place2dTexture28.vt1" "file28.vt1";
connectAttr "place2dTexture28.vt2" "file28.vt2";
connectAttr "place2dTexture28.vt3" "file28.vt3";
connectAttr "place2dTexture28.vc1" "file28.vc1";
connectAttr "place2dTexture28.o" "file28.uv";
connectAttr "place2dTexture28.ofs" "file28.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file29.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file29.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file29.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file29.ws";
connectAttr "place2dTexture29.c" "file29.c";
connectAttr "place2dTexture29.tf" "file29.tf";
connectAttr "place2dTexture29.rf" "file29.rf";
connectAttr "place2dTexture29.mu" "file29.mu";
connectAttr "place2dTexture29.mv" "file29.mv";
connectAttr "place2dTexture29.s" "file29.s";
connectAttr "place2dTexture29.wu" "file29.wu";
connectAttr "place2dTexture29.wv" "file29.wv";
connectAttr "place2dTexture29.re" "file29.re";
connectAttr "place2dTexture29.of" "file29.of";
connectAttr "place2dTexture29.r" "file29.ro";
connectAttr "place2dTexture29.n" "file29.n";
connectAttr "place2dTexture29.vt1" "file29.vt1";
connectAttr "place2dTexture29.vt2" "file29.vt2";
connectAttr "place2dTexture29.vt3" "file29.vt3";
connectAttr "place2dTexture29.vc1" "file29.vc1";
connectAttr "place2dTexture29.o" "file29.uv";
connectAttr "place2dTexture29.ofs" "file29.fs";
connectAttr "standardSurface3.oc" "standardSurface3SG.ss";
connectAttr "standardSurface3SG.msg" "materialInfo127.sg";
connectAttr "standardSurface3.msg" "materialInfo127.m";
connectAttr "standardSurface3.msg" "materialInfo127.t" -na;
connectAttr "groupParts4.og" "groupParts30.ig";
connectAttr "groupId44.id" "groupParts30.gi";
connectAttr "file30.oc" "blinn2.c";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog.og[2]" "blinn2SG.dsm"
		 -na;
connectAttr "groupId44.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo128.sg";
connectAttr "blinn2.msg" "materialInfo128.m";
connectAttr "file30.msg" "materialInfo128.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file30.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file30.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file30.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file30.ws";
connectAttr "place2dTexture30.c" "file30.c";
connectAttr "place2dTexture30.tf" "file30.tf";
connectAttr "place2dTexture30.rf" "file30.rf";
connectAttr "place2dTexture30.mu" "file30.mu";
connectAttr "place2dTexture30.mv" "file30.mv";
connectAttr "place2dTexture30.s" "file30.s";
connectAttr "place2dTexture30.wu" "file30.wu";
connectAttr "place2dTexture30.wv" "file30.wv";
connectAttr "place2dTexture30.re" "file30.re";
connectAttr "place2dTexture30.of" "file30.of";
connectAttr "place2dTexture30.r" "file30.ro";
connectAttr "place2dTexture30.n" "file30.n";
connectAttr "place2dTexture30.vt1" "file30.vt1";
connectAttr "place2dTexture30.vt2" "file30.vt2";
connectAttr "place2dTexture30.vt3" "file30.vt3";
connectAttr "place2dTexture30.vc1" "file30.vc1";
connectAttr "place2dTexture30.o" "file30.uv";
connectAttr "place2dTexture30.ofs" "file30.fs";
connectAttr "phong11.oc" "phong11SG.ss";
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0]" "phong11SG.dsm"
		 -na;
connectAttr "groupId3.msg" "phong11SG.gn" -na;
connectAttr "phong11SG.msg" "materialInfo129.sg";
connectAttr "phong11.msg" "materialInfo129.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__shadingMap1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__shadingMap1SG.pa" ":renderPartition.st" -na
		;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap2SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap3SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap4SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap4SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap5SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader2SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader3SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader5SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader6SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap6SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader7SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__surfaceShader5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__surfaceShader7SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "phongE1SG.pa" ":renderPartition.st" -na;
connectAttr "phongE2SG.pa" ":renderPartition.st" -na;
connectAttr "phongE3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__shadingMap2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__shadingMap3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__shadingMap4SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__shadingMap5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__surfaceShader5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__surfaceShader7SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap7SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__phongE2SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap8SG.pa" ":renderPartition.st" -na;
connectAttr "phongE4SG.pa" ":renderPartition.st" -na;
connectAttr "phongE5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE4SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE5SG.pa" ":renderPartition.st" -na;
connectAttr "phongE6SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG.pa" ":renderPartition.st" -na;
connectAttr "phong3SG.pa" ":renderPartition.st" -na;
connectAttr "phong4SG.pa" ":renderPartition.st" -na;
connectAttr "phongE7SG.pa" ":renderPartition.st" -na;
connectAttr "phong5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "phong6SG.pa" ":renderPartition.st" -na;
connectAttr "phongE8SG.pa" ":renderPartition.st" -na;
connectAttr "phongE9SG.pa" ":renderPartition.st" -na;
connectAttr "phongE10SG.pa" ":renderPartition.st" -na;
connectAttr "phongE11SG.pa" ":renderPartition.st" -na;
connectAttr "phongE12SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong6SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE9SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE10SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE12SG.pa" ":renderPartition.st" -na;
connectAttr "phongE13SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "phong7SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap9SG.pa" ":renderPartition.st" -na;
connectAttr "phong8SG.pa" ":renderPartition.st" -na;
connectAttr "phongE14SG.pa" ":renderPartition.st" -na;
connectAttr "phongE15SG.pa" ":renderPartition.st" -na;
connectAttr "phongE16SG.pa" ":renderPartition.st" -na;
connectAttr "phongE17SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong8SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE14SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE15SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE16SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE17SG.pa" ":renderPartition.st" -na;
connectAttr "phongE18SG.pa" ":renderPartition.st" -na;
connectAttr "phongE19SG.pa" ":renderPartition.st" -na;
connectAttr "phongE20SG.pa" ":renderPartition.st" -na;
connectAttr "phongE21SG.pa" ":renderPartition.st" -na;
connectAttr "phongE22SG.pa" ":renderPartition.st" -na;
connectAttr "phongE23SG.pa" ":renderPartition.st" -na;
connectAttr "phongE24SG.pa" ":renderPartition.st" -na;
connectAttr "phongE25SG.pa" ":renderPartition.st" -na;
connectAttr "phongE26SG.pa" ":renderPartition.st" -na;
connectAttr "phongE27SG.pa" ":renderPartition.st" -na;
connectAttr "phongE28SG.pa" ":renderPartition.st" -na;
connectAttr "phongE29SG.pa" ":renderPartition.st" -na;
connectAttr "phongE30SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE25SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE26SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE27SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE28SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE29SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE30SG.pa" ":renderPartition.st" -na;
connectAttr "phongE31SG.pa" ":renderPartition.st" -na;
connectAttr "phong9SG.pa" ":renderPartition.st" -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG0.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG1.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG3.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG4.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG5.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG6.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG7.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG8.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG9.pa" ":renderPartition.st"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterSG10.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG0.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG1.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG3.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG4.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG5.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG6.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG7.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG8.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG9.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterSG10.pa" ":renderPartition.st"
		 -na;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.pa" ":renderPartition.st"
		 -na;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.pa" ":renderPartition.st"
		 -na;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "phongE32SG.pa" ":renderPartition.st" -na;
connectAttr "phongE33SG.pa" ":renderPartition.st" -na;
connectAttr "phongE34SG.pa" ":renderPartition.st" -na;
connectAttr "imagesConverterSG0.pa" ":renderPartition.st" -na;
connectAttr "imagesConverterSG1.pa" ":renderPartition.st" -na;
connectAttr "imagesConverterSG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__imagesConverterSG0.pa" ":renderPartition.st" -na;
connectAttr "pasted__imagesConverterSG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__imagesConverterSG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG0.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG1.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "phongE35SG.pa" ":renderPartition.st" -na;
connectAttr "phongE36SG.pa" ":renderPartition.st" -na;
connectAttr "Pic2ConverterSG0.pa" ":renderPartition.st" -na;
connectAttr "Pic2ConverterSG1.pa" ":renderPartition.st" -na;
connectAttr "Pic2ConverterSG2.pa" ":renderPartition.st" -na;
connectAttr "Pic1ConverterSG0.pa" ":renderPartition.st" -na;
connectAttr "Pic1ConverterSG1.pa" ":renderPartition.st" -na;
connectAttr "Pic1ConverterSG2.pa" ":renderPartition.st" -na;
connectAttr "Pic1ConverterSG3.pa" ":renderPartition.st" -na;
connectAttr "Pic1ConverterSG4.pa" ":renderPartition.st" -na;
connectAttr "Pic1ConverterSG5.pa" ":renderPartition.st" -na;
connectAttr "Pic3ConverterSG0.pa" ":renderPartition.st" -na;
connectAttr "Pic3ConverterSG1.pa" ":renderPartition.st" -na;
connectAttr "Pic3ConverterSG2.pa" ":renderPartition.st" -na;
connectAttr "Pic3ConverterSG3.pa" ":renderPartition.st" -na;
connectAttr "Pic3ConverterSG4.pa" ":renderPartition.st" -na;
connectAttr "Pic3ConverterSG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE36SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__phong8SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap10SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap11SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap12SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap13SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap10SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap12SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__shadingMap13SG.pa" ":renderPartition.st" -na;
connectAttr "phongE37SG.pa" ":renderPartition.st" -na;
connectAttr "phongE38SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap14SG.pa" ":renderPartition.st" -na;
connectAttr "phongE39SG.pa" ":renderPartition.st" -na;
connectAttr "phong10SG.pa" ":renderPartition.st" -na;
connectAttr "shadingMap15SG.pa" ":renderPartition.st" -na;
connectAttr "phongE40SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE38SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE39SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong10SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE40SG.pa" ":renderPartition.st" -na;
connectAttr "phongE41SG.pa" ":renderPartition.st" -na;
connectAttr "phongE42SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phongE42SG.pa" ":renderPartition.st" -na;
connectAttr "phongE43SG.pa" ":renderPartition.st" -na;
connectAttr "phongE44SG.pa" ":renderPartition.st" -na;
connectAttr "phongE45SG.pa" ":renderPartition.st" -na;
connectAttr "phongE46SG.pa" ":renderPartition.st" -na;
connectAttr "lambert14SG.pa" ":renderPartition.st" -na;
connectAttr "lambert15SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "phong11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert_ground.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__shadingMap1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__shadingMap1.msg" ":defaultShaderList1.s" -na
		;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap2.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap3.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap4.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap5.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader6.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap6.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__surfaceShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__surfaceShader7.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE1.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE2.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__shadingMap2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__shadingMap3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__shadingMap4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__shadingMap5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__surfaceShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__surfaceShader7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__phongE2.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap8.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE4.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE5.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE6.msg" ":defaultShaderList1.s" -na;
connectAttr "phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong3.msg" ":defaultShaderList1.s" -na;
connectAttr "phong4.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE7.msg" ":defaultShaderList1.s" -na;
connectAttr "phong5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert13.msg" ":defaultShaderList1.s" -na;
connectAttr "phong6.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE8.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE9.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE10.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE11.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE9.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE12.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE13.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong7.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap9.msg" ":defaultShaderList1.s" -na;
connectAttr "phong8.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE14.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE15.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE16.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE17.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong8.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE14.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE15.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE16.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE17.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE18.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE19.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE20.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE21.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE22.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE23.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE24.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE25.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE26.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE27.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE28.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE29.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE30.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE25.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE26.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE27.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE28.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE29.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE30.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE31.msg" ":defaultShaderList1.s" -na;
connectAttr "phong9.msg" ":defaultShaderList1.s" -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader0.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader4.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader5.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader6.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader7.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader8.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader9.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "photo_1591969851586_adbbd4accf81ConverterShader10.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader0.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader4.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader5.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader6.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader7.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader8.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader9.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__photo_1591969851586_adbbd4accf81ConverterShader10.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "phongE32.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE33.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE34.msg" ":defaultShaderList1.s" -na;
connectAttr "imagesConverterShader0.msg" ":defaultShaderList1.s" -na;
connectAttr "imagesConverterShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "imagesConverterShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__imagesConverterShader0.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__imagesConverterShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__imagesConverterShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader0.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "pasted__e2a82a00ab292d71710a45fc3fb5cbb0__shadow_pictures_beach_picturesConverterShader2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "phongE35.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE36.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic2ConverterShader0.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic2ConverterShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic2ConverterShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic1ConverterShader0.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic1ConverterShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic1ConverterShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic1ConverterShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic1ConverterShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic1ConverterShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic3ConverterShader0.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic3ConverterShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic3ConverterShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic3ConverterShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic3ConverterShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "Pic3ConverterShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE36.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__phong8.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap10.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap11.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap12.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap13.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__shadingMap13.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE37.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE38.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap14.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE39.msg" ":defaultShaderList1.s" -na;
connectAttr "phong10.msg" ":defaultShaderList1.s" -na;
connectAttr "shadingMap15.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE40.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE38.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE39.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE40.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE41.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE42.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phongE42.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE43.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE44.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE45.msg" ":defaultShaderList1.s" -na;
connectAttr "phongE46.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert14.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert15.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong11.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture30.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "file29.msg" ":defaultTextureList1.tx" -na;
connectAttr "file30.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.oc" ":lambert1.c";
connectAttr "pasted__pasted__pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pasted__pTorusShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|LivingRoom|Portraits|Pic1|pasted__pPlane1|pasted__pPlaneShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|Pic3|pasted__pPlane2|pasted__pPlaneShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|Pic2|pasted__pPlane1|pasted__pPlaneShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__CarpetShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__CarpetShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "file6.msg" ":initialMaterialInfo.t" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
// End of draft_lighting_and_material_render.ma
