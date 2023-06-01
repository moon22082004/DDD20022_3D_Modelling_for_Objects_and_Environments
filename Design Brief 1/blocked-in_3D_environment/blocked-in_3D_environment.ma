//Maya ASCII 2022 scene
//Name: blocked-in_3D_environment.ma
//Last modified: Wed, May 31, 2023 08:43:03 PM
//Codeset: 1252
requires maya "2022";
requires -nodeType "polyDisc" "modelingToolkit" "0.0.0.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 "mtoa" "5.0.0.4";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202303271415-baa69b5798";
fileInfo "osv" "Windows 10 Home Single Language v2009 (Build: 22621)";
fileInfo "UUID" "14BDC1B3-4AD9-E2BE-B6F0-4EA176FD8E16";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "958BFA27-47FF-501E-64E3-31BEC21F7803";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 86.200589507576936 20.451196937534455 -36.310021984255201 ;
	setAttr ".r" -type "double3" -17.712183042917207 819.64810650575794 0 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" 2.2672712692061598e-13 -2.3380696364722136e-13 1.2106313872659544e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B92CD0B8-43EF-69D0-90DB-40A52048AF2F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 1;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 97.948362713400925;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 27.554080986111529 -7.9629937873247822 -19.360112062088454 ;
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
createNode transform -n "aiSkyDomeLight";
	rename -uid "88226D27-4E8C-3F62-1460-1C90CEF9DD68";
	setAttr ".t" -type "double3" 22.360548077899601 0.50289901390266301 2.7463982353011609 ;
createNode aiSkyDomeLight -n "aiSkyDomeLightShape" -p "aiSkyDomeLight";
	rename -uid "ED5E2764-4F8C-E42C-674F-3FB64FB21435";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.25;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
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
createNode transform -n "pasted__WallClock" -p "LivingRoom";
	rename -uid "F1AEF5FA-4613-B43F-502A-66A7FFC8F82B";
	setAttr ".t" -type "double3" 19.740856503304482 -0.8045649038019782 62.158025108347708 ;
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
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65625 0.84375 ;
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
	setAttr ".dr" 1;
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
createNode mesh -n "pasted__pCubeShape4" -p "pasted__pCube4";
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
	setAttr ".t" -type "double3" -35.80426501145444 -0.032214826054789203 16.785196360844257 ;
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
	setAttr -s 8 ".iog[0].og";
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
createNode mesh -n "pasted__pCylinderShape1" -p "pasted__pCylinder1";
	rename -uid "7C7D3DBF-4C45-59D5-9B7E-C9AA5D7C64AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "directionalLight1";
	rename -uid "7DF3C87C-45E4-65DE-33E3-06BE11F5C00C";
	setAttr ".t" -type "double3" -20.066158665216665 21.693560417881955 -18.676362774998129 ;
	setAttr ".r" -type "double3" 224.46837593025518 -83.771809248461452 -262.46506687441445 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "2D5BA261-41D1-6DE5-2C28-4E9B610ACF9F";
	setAttr -k off ".v";
	setAttr ".col" 108.32000128980192;
createNode transform -n "PreferredCamera";
	rename -uid "FD7259E5-4470-6881-A549-ACBE36E2BD62";
	setAttr ".t" -type "double3" 31.302628497379203 -3.5898939303381479 -21.093388435611821 ;
	setAttr ".r" -type "double3" 1.1999999999999762 89.999999999996774 0 ;
createNode camera -n "PreferredCameraShape" -p "PreferredCamera";
	rename -uid "E95D8D9A-4E43-30C7-A123-74963C1C81CC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.1619274399199999 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".pze" yes;
	setAttr ".zom" 0.96658187934260753;
	setAttr ".fl" 37.292890251233814;
	setAttr ".cs" 4;
	setAttr ".coi" 38.600303503306073;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode transform -n "Camera1";
	rename -uid "160FCD63-49F7-3731-D0CA-B6A2A4FFA99C";
	setAttr ".t" -type "double3" -16.733286455052223 -9.4844092733956646 -43.206937036696431 ;
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
	setAttr ".coi" 30.899560023037708;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode transform -n "Camera2";
	rename -uid "EC8F7D68-4058-4BFB-8BE8-0492EC10AB00";
	setAttr ".t" -type "double3" 92.101485425848836 9.1021477645289863 -41.823896992302878 ;
	setAttr ".r" -type "double3" -7.8000000000000238 102.79999999998824 0 ;
createNode camera -n "Camera2Shape" -p "Camera2";
	rename -uid "3F84F5B1-46CC-3FD4-5E99-D18261B2E7EC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".pze" yes;
	setAttr ".zom" 0.96658187934260753;
	setAttr ".coi" 106.46845005019766;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "10CD3B2D-4F76-7A16-E50A-B29013CE5551";
	setAttr -s 85 ".lnk";
	setAttr -s 85 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "ADAACD5A-459B-D7CE-E970-678D9772ED02";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B0294D97-4D28-A61C-DA82-98B3CEC203E2";
createNode displayLayerManager -n "layerManager";
	rename -uid "54464ECE-4DB5-6499-3EFF-BFA35C1472A3";
	setAttr ".cdl" 1;
	setAttr -s 4 ".dli[1:3]"  2 3 1;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "62F2454E-45B1-B943-7869-F9A3447BAE9C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "02EE1280-4C89-05D1-280E-1EB0A18AE24D";
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
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=RenderCameraShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
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
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|Camera2\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Camera2\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Camera2\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr ".c" -type "float3" 0.2543 0.2493 0.2493 ;
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
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode phongE -n "pasted__phongE5";
	rename -uid "39D31496-43F6-54DB-56F8-DCAF12C68035";
	setAttr ".c" -type "float3" 0.1178 0.1178 0.1178 ;
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
	setAttr ".c" -type "float3" 0.4709 0.4709 0.4709 ;
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
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "phongE7SG";
	rename -uid "9B0258A1-492D-5335-1F2F-F393E6A27346";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
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
	setAttr ".c" -type "float3" 0.9411 1 0.99699998 ;
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
	setAttr ".c" -type "float3" 0.61930001 0.61930001 0.61930001 ;
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
	setAttr ".c" -type "float3" 0 0 0 ;
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
	setAttr ".c" -type "float3" 0 0 0 ;
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
	setAttr ".ic" -type "componentList" 16 "f[0:3]" "f[5:8]" "f[10:13]" "f[15:16]" "f[18:19]" "f[21:31]" "f[33]" "f[35:38]" "f[40:44]" "f[46:54]" "f[56]" "f[58]" "f[60]" "f[62]" "f[65:89]" "f[92]";
	setAttr ".irc" -type "componentList" 16 "f[4]" "f[9]" "f[14]" "f[17]" "f[20]" "f[32]" "f[34]" "f[39]" "f[45]" "f[55]" "f[57]" "f[59]" "f[61]" "f[63:64]" "f[90:91]" "f[93:101]";
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
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo47";
	rename -uid "2EDAE2FC-4EDE-B023-9653-38A966E91691";
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
	setAttr -s 85 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 88 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.5043 0.5043 0.5043 ;
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "mayaHardware2";
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
	setAttr ".w" 3507;
	setAttr ".h" 4962;
	setAttr ".pa" 1;
	setAttr ".dar" 0.70677143335342407;
	setAttr ".dpi" 300;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "pasted__pasted__polySplitRing8.out" "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
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
connectAttr "pasted__polyExtrudeFace4.out" "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.i"
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
connectAttr "pasted__groupParts4.og" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId4.id" "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__polyCylinder1.out" "pasted__pCylinderShape1.i";
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
connectAttr "|LivingRoom|pasted__WallClock|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog" "pasted__shadingMap7SG.dsm"
		 -na;
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
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "pasted__pasted__lambert11SG.dsm"
		 -na;
connectAttr "pasted__pasted__lambert12SG.msg" "pasted__pasted__materialInfo27.sg"
		;
connectAttr "pasted__pasted__lambert12.msg" "pasted__pasted__materialInfo27.m";
connectAttr "pasted__pasted__lambert12.oc" "pasted__pasted__lambert12SG.ss";
connectAttr "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog" "pasted__pasted__lambert12SG.dsm"
		 -na;
connectAttr "pasted__pasted__phongE2SG.msg" "pasted__pasted__materialInfo29.sg";
connectAttr "pasted__pasted__phongE2.msg" "pasted__pasted__materialInfo29.m";
connectAttr "pasted__pasted__phongE2.oc" "pasted__pasted__phongE2SG.ss";
connectAttr "pasted__pasted__pPlaneShape2.iog" "pasted__pasted__phongE2SG.dsm" -na
		;
connectAttr "|LivingRoom|pasted__Window_Curtains|pasted__pasted__pPlane3|pasted__pasted__pPlaneShape3.iog" "pasted__pasted__phongE2SG.dsm"
		 -na;
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
connectAttr "pasted__phongE5.oc" "pasted__phongE5SG.ss";
connectAttr "pasted__pCubeShape6.iog" "pasted__phongE5SG.dsm" -na;
connectAttr "pasted__pCubeShape5.iog" "pasted__phongE5SG.dsm" -na;
connectAttr "pasted__pCubeShape4.iog" "pasted__phongE5SG.dsm" -na;
connectAttr "|LivingRoom|Cabinet|pasted__pCube3|pasted__pCubeShape3.iog" "pasted__phongE5SG.dsm"
		 -na;
connectAttr "|LivingRoom|Cabinet|pasted__pCube2|pasted__pCubeShape2.iog" "pasted__phongE5SG.dsm"
		 -na;
connectAttr "|LivingRoom|Cabinet|pasted__pCube1|pasted__pCubeShape1.iog" "pasted__phongE5SG.dsm"
		 -na;
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
connectAttr "phong3.oc" "phong3SG.ss";
connectAttr "pasted__pasted__pPlaneShape4.iog" "phong3SG.dsm" -na;
connectAttr "phong3SG.msg" "materialInfo36.sg";
connectAttr "phong3.msg" "materialInfo36.m";
connectAttr "phong4.oc" "phong4SG.ss";
connectAttr "|LivingRoom|TV|pasted__pCube3|pasted__pCubeShape3.iog" "phong4SG.dsm"
		 -na;
connectAttr "phong4SG.msg" "materialInfo37.sg";
connectAttr "phong4.msg" "materialInfo37.m";
connectAttr "phongE7.oc" "phongE7SG.ss";
connectAttr "|LivingRoom|TV|pasted__pCube1|pasted__pCubeShape1.iog" "phongE7SG.dsm"
		 -na;
connectAttr "phongE7SG.msg" "materialInfo38.sg";
connectAttr "phongE7.msg" "materialInfo38.m";
connectAttr "phong5.oc" "phong5SG.ss";
connectAttr "phong5SG.msg" "materialInfo39.sg";
connectAttr "phong5.msg" "materialInfo39.m";
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
connectAttr "pasted__pCylinderShape1.iog" "pasted__phongE12SG.dsm" -na;
connectAttr "pasted__phong6.oc" "pasted__phong6SG.ss";
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[0]" "pasted__phong6SG.dsm"
		 -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.ciog.cog[0]" "pasted__phong6SG.dsm"
		 -na;
connectAttr "pasted__groupId3.msg" "pasted__phong6SG.gn" -na;
connectAttr "pasted__groupId4.msg" "pasted__phong6SG.gn" -na;
connectAttr "pasted__phong6SG.msg" "pasted__materialInfo41.sg";
connectAttr "pasted__phong6.msg" "pasted__materialInfo41.m";
connectAttr "pasted__phongE9.oc" "pasted__phongE9SG.ss";
connectAttr "pasted__groupId6.msg" "pasted__phongE9SG.gn" -na;
connectAttr "pasted__groupId5.msg" "pasted__phongE9SG.gn" -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[2]" "pasted__phongE9SG.dsm"
		 -na;
connectAttr "|LivingRoom|Decorative_Light|pasted__pCube1|pasted__pCubeShape1.iog.og[1]" "pasted__phongE9SG.dsm"
		 -na;
connectAttr "pasted__phongE9SG.msg" "pasted__materialInfo43.sg";
connectAttr "pasted__phongE9.msg" "pasted__materialInfo43.m";
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
connectAttr "phongE13.oc" "phongE13SG.ss";
connectAttr "pasted__pasted__pCubeShape9.iog" "phongE13SG.dsm" -na;
connectAttr "pasted__pasted__pCubeShape8.iog" "phongE13SG.dsm" -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube7|pasted__pasted__pCubeShape7.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube6|pasted__pasted__pCubeShape6.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube5|pasted__pasted__pCubeShape5.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube4|pasted__pasted__pCubeShape4.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" "phongE13SG.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Sofa|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "phongE13SG.dsm"
		 -na;
connectAttr "phongE13SG.msg" "materialInfo47.sg";
connectAttr "phongE13.msg" "materialInfo47.m";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|LivingRoom|pasted__Window|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pasted__pTorusShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|LivingRoom|TV|pasted__pCube2|pasted__pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|pasted__pCube1|pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|pasted__pCube2|pasted__pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|LivingRoom|Portraits|pasted__pCube3|pasted__pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "aiSkyDomeLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of blocked-in_3D_environment.ma
