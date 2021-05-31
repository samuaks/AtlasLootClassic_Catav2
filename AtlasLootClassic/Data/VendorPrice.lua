local ALName, ALPrivate = ...

local AtlasLoot = _G.AtlasLoot
local VendorPrice = {}
AtlasLoot.Data.VendorPrice = VendorPrice
local AL = AtlasLoot.Locales

local VENDOR_PRICES = {
--@version-bcc@
    [35906] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [34129] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [33064] = "honor:15300:pvpAlterac:10",
    [33057] = "honor:15300:pvpAlterac:10",
    [33056] = "honor:15300:pvpAlterac:10",
    [32455] = "money:1200",
    [31855] = "pvpWarsong:2",
    [31854] = "pvpEye:2",
    [31853] = "pvpWarsong:2",
    [31852] = "pvpEye:2",
    [31841] = "pvpAlterac:2",
    [31840] = "pvpArathi:2",
    [31839] = "pvpAlterac:2",
    [31838] = "pvpArathi:2",
    [30780] = "BoJ:20",
    [30779] = "BoJ:20",
    [30778] = "BoJ:30",
    [30776] = "BoJ:30",
    [30774] = "BoJ:20",
    [30773] = "BoJ:30",
    [30772] = "BoJ:30",
    [30770] = "BoJ:20",
    [30769] = "BoJ:30",
    [30768] = "BoJ:20",
    [30767] = "BoJ:20",
    [30766] = "BoJ:30",
    [30764] = "BoJ:20",
    [30763] = "BoJ:20",
    [30762] = "BoJ:30",
    [30761] = "BoJ:30",
    [30351] = "honor:8000",
    [30350] = "honor:8000",
    [30349] = "honor:8000",
    [30348] = "honor:8000",
    [29617] = "honor:8415:pvpArathi:20",
    [29616] = "honor:13005:pvpAlterac:30",
    [29615] = "honor:13770:pvpArathi:30",
    [29614] = "honor:13005:pvpWarsong:30",
    [29613] = "honor:8415:pvpAlterac:20",
    [29612] = "honor:8415:pvpArathi:20",
    [29611] = "honor:8415:pvpArathi:20",
    [29610] = "honor:13005:pvpAlterac:30",
    [29609] = "honor:13770:pvpArathi:30",
    [29608] = "honor:13005:pvpWarsong:30",
    [29607] = "honor:8415:pvpAlterac:20",
    [29606] = "honor:8415:pvpArathi:20",
    [29605] = "honor:2805:pvpArathi:20",
    [29604] = "honor:4335:pvpAlterac:30",
    [29603] = "honor:4335:pvpWarsong:30",
    [29602] = "honor:4590:pvpArathi:30",
    [29601] = "honor:2805:pvpArathi:20",
    [29600] = "honor:2805:pvpAlterac:20",
    [29599] = "honor:2805:pvpArathi:20",
    [29598] = "honor:4335:pvpAlterac:30",
    [29597] = "honor:4335:pvpWarsong:30",
    [29596] = "honor:4590:pvpArathi:30",
    [29595] = "honor:2805:pvpAlterac:20",
    [29594] = "honor:2805:pvpArathi:20",
    [29593] = "honor:2805",
    [29592] = "honor:2805",
    [29472] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29471] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29470] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29469] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29468] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29467] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29466] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29465] = "pvpAlterac:30:pvpArathi:30:pvpWarsong:30",
    [29390] = "BoJ:15",
    [29389] = "BoJ:15",
    [29388] = "BoJ:15",
    [29387] = "BoJ:41",
    [29386] = "BoJ:25",
    [29385] = "BoJ:25",
    [29384] = "BoJ:25",
    [29383] = "BoJ:41",
    [29382] = "BoJ:25",
    [29381] = "BoJ:25",
    [29379] = "BoJ:25",
    [29376] = "BoJ:41",
    [29375] = "BoJ:25",
    [29374] = "BoJ:25",
    [29373] = "BoJ:25",
    [29370] = "BoJ:41",
    [29369] = "BoJ:25",
    [29368] = "BoJ:25",
    [29367] = "BoJ:25",
    [29275] = "BoJ:50",
    [29274] = "BoJ:25",
    [29273] = "BoJ:25",
    [29272] = "BoJ:25",
    [29271] = "BoJ:25",
    [29270] = "BoJ:25",
    [29269] = "BoJ:25",
    [29268] = "BoJ:33",
    [29267] = "BoJ:33",
    [29266] = "BoJ:33",
    [28960] = "honor:25500:pvpAlterac:40",
    [28959] = "honor:38250:pvpAlterac:40",
    [28957] = "honor:19125:pvpEye:20",
    [28956] = "honor:19125:pvpEye:20",
    [28955] = "honor:19125:pvpEye:20",
    [28954] = "honor:19125:pvpEye:20",
    [28953] = "honor:19125:pvpEye:20",
    [28952] = "honor:19125:pvpEye:20",
    [28951] = "honor:19125:pvpEye:20",
    [28950] = "honor:19125:pvpEye:20",
    [28949] = "honor:38250:pvpAlterac:40",
    [28948] = "honor:38250:pvpAlterac:40",
    [28947] = "honor:19125:pvpEye:20",
    [28946] = "honor:19125:pvpEye:20",
    [28945] = "honor:38250:pvpAlterac:40",
    [28944] = "honor:19125:pvpEye:20",
    [28943] = "honor:38250:pvpAlterac:40",
    [28942] = "honor:38250:pvpAlterac:40",
    [28941] = "honor:19125:pvpEye:20",
    [28940] = "honor:19125:pvpEye:20",
    [28378] = "honor:11794:pvpArathi:20",
    [28377] = "honor:11794:pvpArathi:20",
    [28363] = "honor:8500",
    [28362] = "honor:6885",
    [28247] = "honor:15300:pvpAlterac:10",
    [28246] = "honor:15300:pvpAlterac:10",
    [28245] = "honor:15300:pvpEye:10",
    [28244] = "honor:15300:pvpEye:10",
    [28238] = "honor:8000",
    [28237] = "honor:8000",
    [28236] = "honor:8000",
    [28235] = "honor:8000",
    [28123] = "honor:8500",
    [28120] = "honor:6885",
    [28119] = "honor:6885",
    [28118] = "honor:6885",
    [25829] = "honor:22950:pvpEye:10",
    [23469] = "honor:19125:pvpArathi:20",
    [23468] = "honor:19125:pvpArathi:20",
    [23467] = "honor:19125:pvpArathi:20",
    [23466] = "honor:19125:pvpArathi:20",
    [23465] = "honor:38250:pvpAlterac:40",
    [23464] = "honor:19125:pvpArathi:20",
    [23456] = "honor:19125:pvpArathi:20",
    [23455] = "honor:38250:pvpAlterac:40",
    [23454] = "honor:19125:pvpArathi:20",
    [23453] = "honor:19125:pvpArathi:20",
    [23452] = "honor:19125:pvpArathi:20",
    [23451] = "honor:19125:pvpArathi:20",
    [23319] = "honor:2805:pvpArathi:20",
    [23318] = "honor:4335:pvpAlterac:30",
    [23317] = "honor:2805:pvpArathi:20",
    [23316] = "honor:4335:pvpAlterac:30",
    [23315] = "honor:2805:pvpArathi:20",
    [23314] = "honor:4335:pvpAlterac:30",
    [23313] = "honor:2805:pvpArathi:20",
    [23312] = "honor:4335:pvpAlterac:30",
    [23311] = "honor:2805:pvpArathi:20",
    [23310] = "honor:4335:pvpAlterac:30",
    [23309] = "honor:2805:pvpArathi:20",
    [23308] = "honor:4335:pvpAlterac:30",
    [23307] = "honor:2805:pvpArathi:20",
    [23306] = "honor:4335:pvpAlterac:30",
    [23305] = "honor:4590:pvpArathi:30",
    [23304] = "honor:4335:pvpWarsong:30",
    [23303] = "honor:4590:pvpArathi:30",
    [23302] = "honor:4335:pvpWarsong:30",
    [23301] = "honor:4335:pvpWarsong:30",
    [23300] = "honor:4590:pvpArathi:30",
    [23299] = "honor:4335:pvpWarsong:30",
    [23298] = "honor:4590:pvpArathi:30",
    [23297] = "honor:4590:pvpArathi:30",
    [23296] = "honor:4335:pvpWarsong:30",
    [23295] = "honor:4335:pvpWarsong:30",
    [23294] = "honor:4590:pvpArathi:30",
    [23293] = "honor:4335:pvpWarsong:30",
    [23292] = "honor:4590:pvpArathi:30",
    [23291] = "honor:2805:pvpArathi:20",
    [23290] = "honor:2805:pvpAlterac:20",
    [23289] = "honor:2805:pvpArathi:20",
    [23288] = "honor:2805:pvpAlterac:20",
    [23287] = "honor:2805:pvpArathi:20",
    [23286] = "honor:2805:pvpAlterac:20",
    [23285] = "honor:2805:pvpArathi:20",
    [23284] = "honor:2805:pvpAlterac:20",
    [23283] = "honor:2805:pvpArathi:20",
    [23281] = "honor:2805:pvpArathi:20",
    [23280] = "honor:2805:pvpAlterac:20",
    [23279] = "honor:2805:pvpAlterac:20",
    [23278] = "honor:2805:pvpArathi:20",
    [23277] = "honor:2805:pvpArathi:20",
    [23276] = "honor:4335:pvpAlterac:30",
    [23275] = "honor:2805:pvpArathi:20",
    [23274] = "honor:2805:pvpAlterac:20",
    [23273] = "honor:4335:pvpWarsong:30",
    [23272] = "honor:4590:pvpArathi:30",
    [23264] = "honor:2805:pvpArathi:20",
    [23263] = "honor:4335:pvpAlterac:30",
    [23262] = "honor:2805:pvpArathi:20",
    [23261] = "honor:4335:pvpAlterac:30",
    [23260] = "honor:2805:pvpArathi:20",
    [23259] = "honor:4335:pvpAlterac:30",
    [23258] = "honor:2805:pvpArathi:20",
    [23257] = "honor:4335:pvpAlterac:30",
    [23256] = "honor:2805:pvpArathi:20",
    [23255] = "honor:4335:pvpAlterac:30",
    [23254] = "honor:2805:pvpArathi:20",
    [23253] = "honor:4335:pvpAlterac:30",
    [23252] = "honor:2805:pvpArathi:20",
    [23251] = "honor:4335:pvpAlterac:30",
    [23244] = "honor:4335:pvpAlterac:30",
    [23243] = "honor:2805:pvpArathi:20",
    [22887] = "honor:4335:pvpWarsong:30",
    [22886] = "honor:4590:pvpArathi:30",
    [22885] = "honor:4590:pvpArathi:30",
    [22884] = "honor:4590:pvpArathi:30",
    [22883] = "honor:4335:pvpWarsong:30",
    [22882] = "honor:4335:pvpWarsong:30",
    [22881] = "honor:4335:pvpWarsong:30",
    [22880] = "honor:4335:pvpWarsong:30",
    [22879] = "honor:4590:pvpArathi:30",
    [22878] = "honor:4335:pvpWarsong:30",
    [22877] = "honor:4590:pvpArathi:30",
    [22876] = "honor:4590:pvpArathi:30",
    [22875] = "honor:4335:pvpWarsong:30",
    [22874] = "honor:4590:pvpArathi:30",
    [22873] = "honor:4335:pvpWarsong:30",
    [22872] = "honor:4590:pvpArathi:30",
    [22870] = "honor:2805:pvpAlterac:20",
    [22869] = "honor:2805:pvpAlterac:20",
    [22868] = "honor:2805:pvpAlterac:20",
    [22867] = "honor:2805:pvpAlterac:20",
    [22865] = "honor:2805:pvpAlterac:20",
    [22864] = "honor:2805:pvpAlterac:20",
    [22863] = "honor:2805:pvpAlterac:20",
    [22862] = "honor:2805:pvpAlterac:20",
    [22860] = "honor:2805:pvpArathi:20",
    [22859] = "honor:2805:pvpArathi:20",
    [22858] = "honor:2805:pvpArathi:20",
    [22857] = "honor:2805:pvpArathi:20",
    [22856] = "honor:2805:pvpArathi:20",
    [22855] = "honor:2805:pvpArathi:20",
    [22852] = "honor:2805:pvpArathi:20",
    [22843] = "honor:2805:pvpArathi:20",
    [18877] = "honor:38250:pvpAlterac:40",
    [18876] = "honor:38250:pvpAlterac:40",
    [18874] = "honor:38250:pvpAlterac:40",
    [18873] = "honor:38250:pvpAlterac:40",
    [18871] = "honor:38250:pvpAlterac:40",
    [18869] = "honor:38250:pvpAlterac:40",
    [18868] = "honor:38250:pvpAlterac:40",
    [18867] = "honor:38250:pvpAlterac:40",
    [18866] = "honor:19125:pvpArathi:20",
    [18865] = "honor:19125:pvpArathi:20",
    [18864] = "honor:2805",
    [18863] = "honor:2805",
    [18862] = "honor:2805",
    [18860] = "honor:19125:pvpArathi:20",
    [18859] = "honor:2805",
    [18858] = "honor:2805",
    [18857] = "honor:2805",
    [18856] = "honor:2805",
    [18855] = "honor:19125:pvpArathi:20",
    [18854] = "honor:2805",
    [18853] = "honor:2805",
    [18852] = "honor:2805",
    [18851] = "honor:2805",
    [18850] = "honor:2805",
    [18849] = "honor:2805",
    [18848] = "honor:19125:pvpArathi:20",
    [18847] = "honor:19125:pvpArathi:20",
    [18846] = "honor:2805",
    [18845] = "honor:2805",
    [18844] = "honor:19125:pvpArathi:20",
    [18843] = "honor:19125:pvpArathi:20",
    [18841] = "money:1000",
    [18840] = "honor:19125:pvpArathi:20",
    [18839] = "money:1000",
    [18838] = "honor:19125:pvpArathi:20",
    [18837] = "honor:19125:pvpArathi:20",
    [18836] = "honor:19125:pvpArathi:20",
    [18835] = "honor:19125:pvpArathi:20",
    [18834] = "honor:2805",
    [18833] = "honor:19125:pvpArathi:20",
    [18831] = "honor:38250:pvpAlterac:40",
    [18830] = "honor:38250:pvpAlterac:40",
    [18828] = "honor:19125:pvpArathi:20",
    [18827] = "honor:19125:pvpArathi:20",
    [18826] = "honor:19125:pvpArathi:20",
    [18825] = "honor:19125:pvpArathi:20",
    [18607] = "honor:15300",
    [18606] = "honor:15300",
    [18461] = "honor:1530:pvpArathi:10",
    [18457] = "honor:208:pvpWarsong:10",
    [18456] = "honor:1530:pvpWarsong:10",
    [18455] = "honor:208:pvpWarsong:10",
    [18454] = "honor:1530:pvpWarsong:10",
    [18453] = "honor:208:pvpWarsong:10",
    [18452] = "honor:1530:pvpWarsong:10",
    [18449] = "honor:208:pvpWarsong:10",
    [18448] = "honor:1530:pvpWarsong:10",
    [18447] = "honor:208:pvpWarsong:10",
    [18445] = "honor:1530:pvpWarsong:10",
    [18444] = "honor:208:pvpWarsong:20",
    [18443] = "honor:1530:pvpWarsong:20",
    [18442] = "honor:95:pvpWarsong:20",
    [18441] = "honor:208:pvpArathi:10",
    [18440] = "honor:95:pvpArathi:10",
    [18437] = "honor:208:pvpWarsong:10",
    [18436] = "honor:208:pvpWarsong:10",
    [18435] = "honor:208:pvpWarsong:10",
    [18434] = "honor:1530:pvpWarsong:10",
    [18432] = "honor:208:pvpWarsong:10",
    [18430] = "honor:208:pvpWarsong:10",
    [18429] = "honor:1530:pvpWarsong:10",
    [18428] = "honor:208:pvpWarsong:20",
    [18427] = "honor:95:pvpArathi:10",
    [17625] = "honor:13005:pvpWarsong:30",
    [17624] = "honor:13770:pvpArathi:30",
    [17623] = "honor:13005:pvpAlterac:30",
    [17622] = "honor:8415:pvpArathi:20",
    [17620] = "honor:8415:pvpAlterac:20",
    [17618] = "honor:8415:pvpArathi:20",
    [17608] = "honor:8415:pvpAlterac:20",
    [17607] = "honor:8415:pvpArathi:20",
    [17605] = "honor:13770:pvpArathi:30",
    [17604] = "honor:8415:pvpArathi:20",
    [17603] = "honor:13005:pvpWarsong:30",
    [17602] = "honor:13005:pvpAlterac:30",
    [17593] = "honor:13005:pvpWarsong:30",
    [17592] = "honor:13770:pvpArathi:30",
    [17591] = "honor:13005:pvpAlterac:30",
    [17590] = "honor:8415:pvpArathi:20",
    [17588] = "honor:8415:pvpAlterac:20",
    [17586] = "honor:8415:pvpArathi:20",
    [17584] = "honor:8415:pvpAlterac:20",
    [17583] = "honor:8415:pvpArathi:20",
    [17581] = "honor:13770:pvpArathi:30",
    [17580] = "honor:8415:pvpArathi:20",
    [17579] = "honor:13005:pvpWarsong:30",
    [17578] = "honor:13005:pvpAlterac:30",
    [16580] = "honor:8415:pvpArathi:20",
    [16579] = "honor:13005:pvpWarsong:30",
    [16578] = "honor:13005:pvpAlterac:30",
    [16577] = "honor:13770:pvpArathi:30",
    [16574] = "honor:8415:pvpAlterac:20",
    [16573] = "honor:8415:pvpArathi:20",
    [16571] = "honor:8415:pvpAlterac:20",
    [16569] = "honor:8415:pvpArathi:20",
    [16568] = "honor:8415:pvpArathi:20",
    [16567] = "honor:13005:pvpWarsong:30",
    [16566] = "honor:13005:pvpAlterac:30",
    [16565] = "honor:13770:pvpArathi:30",
    [16564] = "honor:13005:pvpWarsong:30",
    [16563] = "honor:13770:pvpArathi:30",
    [16562] = "honor:8415:pvpArathi:20",
    [16561] = "honor:13005:pvpAlterac:30",
    [16560] = "honor:8415:pvpAlterac:20",
    [16558] = "honor:8415:pvpArathi:20",
    [16555] = "honor:8415:pvpAlterac:20",
    [16554] = "honor:8415:pvpArathi:20",
    [16552] = "honor:13005:pvpWarsong:30",
    [16551] = "honor:8415:pvpArathi:20",
    [16550] = "honor:13005:pvpAlterac:30",
    [16549] = "honor:13770:pvpArathi:30",
    [16548] = "honor:8415:pvpAlterac:20",
    [16545] = "honor:8415:pvpArathi:20",
    [16544] = "honor:8415:pvpArathi:20",
    [16543] = "honor:13005:pvpWarsong:30",
    [16542] = "honor:13005:pvpAlterac:30",
    [16541] = "honor:13770:pvpArathi:30",
    [16540] = "honor:8415:pvpAlterac:20",
    [16539] = "honor:8415:pvpArathi:20",
    [16536] = "honor:8415:pvpArathi:20",
    [16535] = "honor:13770:pvpArathi:30",
    [16534] = "honor:13005:pvpWarsong:30",
    [16533] = "honor:13005:pvpAlterac:30",
    [16532] = "honor:1530:pvpWarsong:10",
    [16497] = "honor:1530:pvpWarsong:10",
    [16486] = "honor:1530:pvpWarsong:10",
    [16484] = "honor:8415:pvpAlterac:20",
    [16483] = "honor:8415:pvpArathi:20",
    [16480] = "honor:8415:pvpArathi:20",
    [16479] = "honor:13005:pvpWarsong:30",
    [16478] = "honor:13005:pvpAlterac:30",
    [16477] = "honor:13770:pvpArathi:30",
    [16476] = "honor:8415:pvpArathi:20",
    [16475] = "honor:13005:pvpWarsong:30",
    [16474] = "honor:13005:pvpAlterac:30",
    [16473] = "honor:13770:pvpArathi:30",
    [16472] = "honor:8415:pvpArathi:20",
    [16471] = "honor:8415:pvpAlterac:20",
    [16468] = "honor:8415:pvpArathi:20",
    [16467] = "honor:13005:pvpWarsong:30",
    [16466] = "honor:13770:pvpArathi:30",
    [16465] = "honor:13005:pvpAlterac:30",
    [16463] = "honor:8415:pvpAlterac:20",
    [16462] = "honor:8415:pvpArathi:20",
    [16459] = "honor:8415:pvpArathi:20",
    [16457] = "honor:8415:pvpArathi:20",
    [16456] = "honor:13005:pvpWarsong:30",
    [16455] = "honor:13005:pvpAlterac:30",
    [16454] = "honor:8415:pvpAlterac:20",
    [16453] = "honor:13770:pvpArathi:30",
    [16452] = "honor:13770:pvpArathi:30",
    [16451] = "honor:13005:pvpAlterac:30",
    [16450] = "honor:13005:pvpWarsong:30",
    [16449] = "honor:8415:pvpArathi:20",
    [16448] = "honor:8415:pvpAlterac:20",
    [16446] = "honor:8415:pvpArathi:20",
    [16444] = "honor:8415:pvpArathi:20",
    [16443] = "honor:13770:pvpArathi:30",
    [16442] = "honor:13005:pvpWarsong:30",
    [16441] = "honor:13005:pvpAlterac:30",
    [16440] = "honor:8415:pvpAlterac:20",
    [16437] = "honor:8415:pvpArathi:20",
    [16345] = "honor:19125:pvpArathi:20",
    [16342] = "honor:1530:pvpArathi:10",
    [16341] = "honor:208:pvpArathi:10",
    [16335] = "honor:1530:pvpWarsong:20",
    [15200] = "honor:95:pvpWarsong:20",
    [15199] = "pvpAlterac:20:pvpArathi:20:pvpWarsong:20",
    [15198] = "pvpAlterac:20:pvpArathi:20:pvpWarsong:20",
    [15197] = "pvpArathi:3:pvpWarsong:3",
    [15196] = "pvpArathi:3:pvpWarsong:3",
    [12584] = "honor:19125:pvpArathi:20",
--@end-version-bcc@
}

function VendorPrice.ItemHasVendorPrice(itemID)
    return VENDOR_PRICES[itemID] ~= nil
end

function VendorPrice.GetVendorPriceForItem(itemID)
    return VENDOR_PRICES[itemID]
end