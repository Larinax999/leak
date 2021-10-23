
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Thief HUB")

print("Welcome to Thief Hub")
local serv = win:Server("AutoFram", "http://www.roblox.com/asset/?id=6026568189")
local placeId = game.PlaceId
Magnet = true
if placeId == 2753915549 then
   OldWorld = true
elseif placeId == 4442272183 then
   NewWorld = true
end
function Click()
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
function CheckQuest()
   local MyLevel = game.Players.LocalPlayer.Data.Level.Value
   if OldWorld then
      if MyLevel == 1 or MyLevel <= 9 then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NaemQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
      elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NaemQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
      elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NaemQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
      elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
            Ms = "Pirate [Lv. 35]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
      elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
            Ms = "Brute [Lv. 45]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
      elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NaemQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
      elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
            Ms = "Desert Officer [Lv. 70]"
            NaemQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
      elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
            Ms = "Snow Bandit [Lv. 90]"
            NaemQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
      elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NaemQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
      elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NaemQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
      elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NaemQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
      elseif MyLevel == 175 or MyLevel <= 224 then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NaemQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
      elseif MyLevel == 225 or MyLevel <= 274 then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 225]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
      elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
            Ms = "Gladiator [Lv. 275]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
      elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
      elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
            Ms = "Military Spy [Lv. 330]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
      elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
            Ms = "Fishman Warrior [Lv. 375]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
      elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
            Ms = "Fishman Commando [Lv. 400]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
      elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
            Ms = "God's Guard [Lv. 450]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
      elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
            Ms = "Shanda [Lv. 475]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
      elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
            Ms = "Royal Squad [Lv. 525]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
      elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
            Ms = "Royal Soldier [Lv. 550]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
      elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
            Ms = "Galley Pirate [Lv. 625]"
            NaemQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
      elseif MyLevel >= 650 then -- Galley Captain
            Ms = "Galley Captain [Lv. 650]"
            NaemQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
      end
   end
   if NewWorld then
      if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
            Ms = "Raider [Lv. 700]"
            NaemQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
      elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
            Ms = "Mercenary [Lv. 725]"
            NaemQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
      elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
            Ms = "Swan Pirate [Lv. 775]"
            NaemQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
      elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
            Ms = "Factory Staff [Lv. 800]"
            NaemQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
      elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
            Ms = "Marine Lieutenant [Lv. 875]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
      elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
            Ms = "Marine Captain [Lv. 900]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
      elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
            Ms = "Zombie [Lv. 950]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
      elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
            Ms = "Vampire [Lv. 975]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
      elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
            Ms = "Snow Trooper [Lv. 1000]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
      elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
            Ms = "Winter Warrior [Lv. 1050]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
      elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
            Ms = "Lab Subordinate [Lv. 1100]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
      elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
            Ms = "Horned Warrior [Lv. 1125]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
      elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
            Ms = "Magma Ninja [Lv. 1175]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
      elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
            Ms = "Lava Pirate [Lv. 1200]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
      elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
            Ms = "Ship Deckhand [Lv. 1250]"
            NaemQuest = "ShipQuest1"
            LevelQuest = 1
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
      elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
            Ms = "Ship Engineer [Lv. 1275]"
            NaemQuest = "ShipQuest1"
            LevelQuest = 2
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
      elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
            Ms = "Ship Steward [Lv. 1300]"
            NaemQuest = "ShipQuest2"
            LevelQuest = 1
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
      elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
         Ms = "Ship Officer [Lv. 1325]"
         NaemQuest = "ShipQuest2"
         LevelQuest = 2
         NameMon = "Ship Officer"
         CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
         CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
      elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
         Ms = "Arctic Warrior [Lv. 1350]"
         NaemQuest = "FrostQuest"
         LevelQuest = 1
         NameMon = "Arctic Warrior"
         CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
         CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
      elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
         Ms = "Snow Lurker [Lv. 1375]"
         NaemQuest = "FrostQuest"
         LevelQuest = 2
         NameMon = "Snow Lurker"
         CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
         CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
      elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
         Ms = "Sea Soldier [Lv. 1425]"
         NaemQuest = "ForgottenQuest"
         LevelQuest = 1
         NameMon = "Sea Soldier"
         CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
         CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
      elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
         Ms = "Water Fighter [Lv. 1450]"
         NaemQuest = "ForgottenQuest"
         LevelQuest = 2
         NameMon = "Water Fighter"
         CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
         CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
      end
   end
end
CheckQuest()
local AutoFram = serv:Channel("Auto Fram")
      -- Equip Weapon
      SelectToolWeapon = ""
      function EquipWeapon(ToolSe)
         if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.4)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
         end
      end
      -- Auto Fram 
      AutoFram:Toggle("Auto Farm",false,function(vu)
         if SelectToolWeapon == "" and vu then
            VLib:Notification("Select Weapon First")
         else
            local args = {
                  [1] = "AbandonQuest"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            AFM = vu
            AFMMain = vu 
         end	
      end)
      spawn(function()
         while wait() do
            if AFM then
               autofarm()
            end
         end
      end)
      game:GetService("RunService").Heartbeat:Connect(
         function()
            if AFM or Observation or AutoNew or Factory or Superhuman or DeathStep or Mastery or GunMastery or FramBoss or FramAllBoss or AutoBartilo or AutoNear or AutoRengoku or AutoSharkman or AutoFramEctoplasm then
               if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                  game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
               end
            end
         end
      )
      local LocalPlayer = game:GetService("Players").LocalPlayer
      local VirtualUser = game:GetService('VirtualUser')
      function autofarm()
         if AFM then
            if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
               StatrMagnet = false
               CheckQuest()
               print()
               LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
               wait(1.1)
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
               CheckQuest()
               LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
               if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                  pcall(
                     function()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                           CheckQuest()  
                           if v.Name == Ms then
                              repeat wait()
                                 EquipWeapon(SelectToolWeapon)
                                 if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                    if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                       if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                          local args = {
                                                [1] = "Buso"
                                          }
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                       end
                                       game:GetService'VirtualUser':CaptureController()
                                       game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                       game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                                       if HideHitBlox then
                                          v.HumanoidRootPart.Transparency = 1
                                       else
                                          v.HumanoidRootPart.Transparency = 70
                                       end
                                       v.HumanoidRootPart.CanCollide = false
                                       v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                       if Magnet then 
                                          if setsimulationradius then 
                                             setsimulationradius(1e+1598, 1e+1599)
                                          end
                                          PosMon = v.HumanoidRootPart.CFrame
                                          StatrMagnet = true
                                       end
                                       v.HumanoidRootPart.CanCollide = false
                                    else
                                       StatrMagnet = false
                                       CheckQuest()
                                       print()
                                       LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                       wait(1.5)
                                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                    end  
                                 else
                                    CheckQuest() 
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                 end 
                              until not v.Parent or v.Humanoid.Health <= 0 or AFM == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              StatrMagnet = false
                              CheckQuest() 
                              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                           end
                        end
                     end
                  )
               else
                  CheckQuest()
                  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
               end 
            end
         end
      end
      -- Auto New World
      AutoFram:Toggle("Auto New World",false,function(vu)
         if SelectToolWeapon == "" and vu then
            VLib:Notification("Select Weapon First")
         else
            AutoNew = vu
         end	
         while AutoNew do wait()
            while wait(.1) do
               local MyLevel = game.Players.localPlayer.Data.Level.Value
               if MyLevel >= 700 and OldWorld and AutoNew then
                  AFM = false
                  if Workspace.Map.Ice.Door.Transparency == 1 then
                     SelectToolWeapon = "Key"
                     if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        CheckBoss = true
                        SelectToolWeapon = SelectToolWeaponOld
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                           if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                           repeat wait(.1)
                              pcall(function() 
                                 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                 v.HumanoidRootPart.Transparency = 70
                                 v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                 v.HumanoidRootPart.BrickColor = BrickColor.new("White")
                                 v.HumanoidRootPart.CanCollide = false
                                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10)
                                 click()
                              end)
                           until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0 or AutoNew == false
                           end
                        end
                        CheckBoss = false
                        wait(0.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1166.23743, 7.65220165, 1728.36487)
                        wait(0.5)
                        local args = {
                           [1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     else
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                           local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                           wait(.4)
                           game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                     end 
                  else
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4849.29883, 5.65138149, 719.611877)
                     wait(0.5)
                     local args = {
                        [1] = "DressrosaQuestProgress",
                        [2] = "Detective"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     wait(0.5)
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                        wait(.4)
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                     end
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                     wait(0.5)
                  end
               end
            end 
         end
      end)
      -- Auto Factory
      AutoFram:Toggle("Auto Factory",false,function(vu)
         Factory = vu
         while Factory do wait()
            if game.Workspace.Enemies:FindFirstChild("Core") then
               Core = true
               AFM = false
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if Core and v.Name == "Core" and v.Humanoid.Health > 0 then
                     repeat wait(.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
                        EquipWeapon(SelectToolWeapon)
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                     until not Core or v.Humanoid.Health <= 0  or Factory == false
                  end
               end
            elseif game.ReplicatedStorage:FindFirstChild("Core") then
               Core = true
               AFM = false
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
            elseif AFMMain then
               Core = false
               AFM = true
            end
         end
      end)
      -- Auto Superhuman
      AutoFram:Toggle("Auto Superhuman",false,function(vu)
         Superhuman = vu
         while Superhuman do wait()
            if Superhuman then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                     local args = {
                        [1] = "BuyBlackLeg"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end   
                     if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        SelectToolWeapon = "Superhuman"
                     end  
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        SelectToolWeapon = "Black Leg"
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        SelectToolWeapon = "Electro"
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        SelectToolWeapon = "Fishman Karate"
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        SelectToolWeapon = "Dragon Claw"
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                        local args = {
                           [1] = "BuyElectro"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end
                     if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                        local args = {
                           [1] = "BuyElectro"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                        local args = {
                           [1] = "BuyFishmanKarate"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end
                     if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                        local args = {
                           [1] = "BuyFishmanKarate"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                        local args = {
                           [1] = "BlackbeardReward",
                           [2] = "DragonClaw",
                           [3] = "1"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                           [1] = "BlackbeardReward",
                           [2] = "DragonClaw",
                           [3] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                     end
                     if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                        local args = {
                              [1] = "BlackbeardReward",
                              [2] = "DragonClaw",
                              [3] = "1"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                              [1] = "BlackbeardReward",
                              [2] = "DragonClaw",
                              [3] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                     end
                     if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                        local args = {
                              [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end
                     if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                        local args = {
                              [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end 
                  end
            end
         end
      end)
      -- Auto Death Step
      AutoFram:Toggle("Auto Death Step",false,function(vu)
         DeathStep = vu
         while DeathStep do wait()
            if DeathStep then
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                     local args = {
                           [1] = "BuyDeathStep"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     SelectToolWeapon = "Death Step"
                  end  
                  if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                     local args = {
                           [1] = "BuyDeathStep"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     
                     SelectToolWeapon = "Death Step"
                  end  
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                     SelectToolWeapon = "Black Leg"
                  end 
               else 
                  local args = {
                     [1] = "BuyBlackLeg"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         end
      end)
      -- Auto Buy Legebdary Sword
      AutoFram:Toggle("Auto Buy Legebdary Sword",false,function(Value)
         LegebdarySword = Value    
         while LegebdarySword do wait()
            if LegebdarySword then
                  local args = {
                     [1] = "LegendarySwordDealer",
                     [2] = "2"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
         end
      end)
      -- Auto Buy Enhancement
      AutoFram:Toggle("Auto Buy Enhancement (Use 1500 Fragments)",false,function(Value)
         Enhancement = Value    
         while Enhancement do wait()
            if Enhancement then
               local args = {
                  [1] = "ColorsDealer",
                  [2] = "2"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
         end
      end)
      -- Weapon
      Wapon = {}
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then
            table.insert(Wapon ,v.Name)
         end
      end
      for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
         if v:IsA("Tool") then
            table.insert(Wapon, v.Name)
         end
      end
      local SelectWeapona = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
         SelectToolWeapon = Value
         SelectToolWeaponOld = Value
      end)
      AutoFram:Button("Refresh Weapon",function()
         SelectWeapona:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
               SelectWeapona:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
               SelectWeapona:Add(v.Name)
            end
         end
      end) 
      AutoFram:Label(" Auto Accessories ")
      WaponAccessories = {}
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then 
            if v.ToolTip == "Wear" then    
               table.insert(WaponAccessories, v.Name)
            end
         end
      end
      SelectTooAccessories = ""
      AutoFram:Toggle("Auto Accessories",false,function(Value)
         if SelectTooAccessories == "" and Value then
            VLib:Notification("Select Accessories First")
         else
            AutoAccessories = Value 
         end
      end)
      spawn(function()
         while wait() do
            if AutoAccessories then
               CheckAccessories = game.Players.LocalPlayer.Character 
               if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
                  if CheckAccessories:FindFirstChild("CoolShades") or CheckAccessories:FindFirstChild("BlackSpikeyCape") or CheckAccessories:FindFirstChild("BlueSpikeyCape") or CheckAccessories:FindFirstChild("RedSpikeyCape") or CheckAccessories:FindFirstChild("Chopper") or CheckAccessories:FindFirstChild("MarineCape") or CheckAccessories:FindFirstChild("GhoulMask") or CheckAccessories:FindFirstChild("MarineCap") or CheckAccessories:FindFirstChild("PinkCape") or CheckAccessories:FindFirstChild("SaboTopHat") or CheckAccessories:FindFirstChild("SwanGlasses") or CheckAccessories:FindFirstChild("UsoapHat") or CheckAccessories:FindFirstChild("Corrida") or CheckAccessories:FindFirstChild("ZebraCap") or CheckAccessories:FindFirstChild("TomoeRing") or CheckAccessories:FindFirstChild("BlackCape") or CheckAccessories:FindFirstChild("SwordsmanHat") or CheckAccessories:FindFirstChild("SantaHat") or CheckAccessories:FindFirstChild("ElfHat") or CheckAccessories:FindFirstChild("DarkCoat") then
                  else
                     EquipWeapon(SelectTooAccessories)
                     wait(0.1)
                     game:GetService'VirtualUser':CaptureController()
                     game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                     wait(0.1)
                     if game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories) then
                        game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories).Parent = game.Players.LocalPlayer:FindFirstChild("Backpack")
                     end
                     wait(1)
                  end
               end
            end
         end
      end)
      local SelectAccessories = AutoFram:Dropdown("Select Accessories",WaponAccessories,function(Value)
         SelectTooAccessories = Value
      end)
      AutoFram:Button("Refresh Accessories",function()
         SelectAccessories:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then 
               if v.ToolTip == "Wear" then    
                  SelectAccessories:Add(v.Name)
               end
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then 
               if v.ToolTip == "Wear" then    
                  SelectAccessories:Add(v.Name)
               end
            end
         end
      end)
      AutoFram:Label(" Auto Fram Mastery ")
      game:GetService("RunService").Heartbeat:Connect(
         function()
            if Mastery then
               game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if GunMastery then
               game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
         end
      )
      WeaponMastery = ""
      AutoFram:Toggle("Auto Fram Mastery Devil Fruit",false,function(v)
         if WeaponMastery == "" and v then
            VLib:Notification("Select Weapon First")
         else
            CheckQuest()
            local args = {
                  [1] = "AbandonQuest"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            Mastery = v
            Ms = ""
         end	
         while Mastery do wait()
            AutoDevilFruitMastery()
         end
      end)
      function AutoDevilFruitMastery()
         if Mastery then
            if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
               StatrMagnetDevilFruitMastery = false
               CheckQuest()
               print()
               LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
               wait(1.1)
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
               CheckQuest()
               LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
               if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                  pcall(
                     function()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                           CheckQuest()  
                           if v.Name == Ms then
                              repeat wait() CheckQuest()  
                                 if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                    if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                       if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                          local args = {
                                                [1] = "Buso"
                                          }
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                       end
                                       HealthMin = v.Humanoid.MaxHealth*Persen/100
                                       PosMon = v.HumanoidRootPart.CFrame
                                       if v.Humanoid.Health <= HealthMin then
                                          UseDF = true
                                          EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                          v.HumanoidRootPart.Transparency = 70
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,20)
                                          if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                             if SkillZ and v.Humanoid.Health <= HealthMin then
                                                local args = {
                                                   [1] = v.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                local args = {
                                                   [1] = "Z",
                                                   [2] = Vector3.new(0,0,0)
                                                }
                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                             end
                                             if SkillX and v.Humanoid.Health <= HealthMin then
                                                local args = {
                                                   [1] = v.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                local args = {
                                                   [1] = "X"
                                                }
                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                             end   
                                          elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                             if SkillZ and v.Humanoid.Health <= HealthMin then
                                                local args = {
                                                   [1] = v.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                local args = {
                                                   [1] = "Z",
                                                   [2] = Vector3.new(0,0,0)
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                             end
                                             if SkillX and v.Humanoid.Health <= HealthMin then
                                                local args = {
                                                   [1] = v.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                local args = {
                                                   [1] = "X",
                                                   [2] = Vector3.new(0,0,0)
                                                }
                                                
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                             end
                                             if SkillC and v.Humanoid.Health <= HealthMin then
                                                local args = {
                                                   [1] = v.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                local args = {
                                                   [1] = "C",
                                                   [2] = Vector3.new(0,0,0)
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                             end
                                             if SkillV and v.Humanoid.Health <= HealthMin then
                                                local args = {
                                                   [1] = v.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                local args = {
                                                   [1] = "V",
                                                   [2] = Vector3.new(0,0,0)
                                                }
                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                             end
                                          end   
                                       else
                                          UseDF = false
                                          EquipWeapon(WeaponMastery)
                                          if HideHitBlox then
                                             v.HumanoidRootPart.Transparency = 1
                                          else
                                             v.HumanoidRootPart.Transparency = 70
                                          end
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                          game:GetService'VirtualUser':CaptureController()
                                          game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))  
                                       end
                                       StatrMagnetDevilFruitMastery = true 
                                    else
                                       StatrMagnet = false
                                       CheckQuest()
                                       print()
                                       LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                       wait(1.5)
                                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                    end  
                                 else
                                    CheckQuest() 
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                 end 
                              until not v.Parent or v.Humanoid.Health <= 0 or AFM == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              StatrMagnetDevilFruitMastery = false
                              CheckQuest() 
                              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                           end
                        end
                     end
                  )
               else
                  CheckQuest()
                  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
               end 
            end
         end
      end
      spawn(function()
         while wait() do
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
               if v:IsA("Tool") then
                  if v:FindFirstChild("RemoteFunctionShoot") then 
                     SelectToolWeaponGun = v.Name
                  end
               end
            end
         end
      end)
      AutoFram:Toggle("Auto Fram Gun Mastery",false,function(v)
         if WeaponMastery == "" and v then
            VLib:Notification("Select Weapon First")
         else 
            CheckQuest()
            local args = {
                  [1] = "AbandonQuest"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            GunMastery = v
            Ms = ""
         end	
         while GunMastery do wait()
            AutoGunMastery()
         end
      end)
      function AutoGunMastery()
         if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then  
            CheckQuest()
            print()
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
            wait(1.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
         elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then  
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            CheckQuest()
                  pcall(function()
                     if game.Workspace.Enemies:FindFirstChild(Ms) then
                        if GunMastery and v.Name == Ms then
                           if setsimulationradius then 
                              setsimulationradius(1e+1598, 1e+1599)
                           end
                           repeat wait()
                              pcall(function()
                                 if game.Workspace.Enemies:FindFirstChild(Ms) then
                                    if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                       HealthMin = v.Humanoid.MaxHealth*Persen/100
                                       PosMon = v.HumanoidRootPart.CFrame
                                       if v.Humanoid.Health <= HealthMin then
                                          EquipWeapon(SelectToolWeaponGun)
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                          v.HumanoidRootPart.Transparency = 0.75
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,10,15)
                                          local args = {
                                             [1] = v.HumanoidRootPart.Position,
                                             [2] = v.HumanoidRootPart
                                          }
                                          game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                       else
                                          EquipWeapon(WeaponMastery)
                                          if HideHitBlox then
                                             v.HumanoidRootPart.Transparency = 1
                                          else
                                             v.HumanoidRootPart.Transparency = 0.75
                                          end
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                          game:GetService'VirtualUser':CaptureController()
                                          game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                       end 
                                       StatrMagnet = true
                                    else
                                       CheckQuest()
                                       print()
                                       LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                       wait(1.1)
                                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                       wait(0.5)
                                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                    end
                                 else
                                    CheckQuest()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                 end
                              end)
                           until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or GunMastery == false or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                        end
                     else
                        CheckQuest()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                     end
                  end)
            end
         end
      end
      Persen = 15
      AutoFram:Slider("Health %",1,100,Persen,function(v)
         Persen = v
      end)
      local AMS = AutoFram:Dropdown("Select Weapon",Wapon,function(v)
         WeaponMastery = v
         WeaponOldMastery = v
      end)
      AutoFram:Button("Refresh Weapon",function()
         AMS:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
               AMS:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
               AMS:Add(v.Name)
            end
         end
      end)

      --- Auto Farm Boss
      AutoFram:Label("-- Auto Fram Boss --")
      function CheckQuestBoss()
         if SelectBoss == "Diamond [Lv. 750] [Boss]" then
            MsBoss = "Diamond [Lv. 750] [Boss]"
            NaemQuestBoss = "Area1Quest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
         elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
            MsBoss = "Jeremy [Lv. 850] [Boss]"
            NaemQuestBoss = "Area2Quest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
         elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
            MsBoss = "Fajita [Lv. 925] [Boss]"
            NaemQuestBoss = "MarineQuest3"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
         elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
            MsBoss = "Don Swan [Lv. 1000] [Boss]"
            CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
         elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
            MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
            NaemQuestBoss = "IceSideQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
            CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
         elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
               MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
            elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
               MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
            CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
            elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
               MsBoss = "Order [Lv. 1250] [Raid Boss]"
            CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
         elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
            MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
            NaemQuestBoss = "FrostQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
            CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
         elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
            MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
            NaemQuestBoss = "ForgottenQuest"             
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
            CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
         -- Old World
         elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
            MsBoss = "Saber Expert [Lv. 200] [Boss]"
            CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
         elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
            MsBoss = "The Saw [Lv. 100] [Boss]"
            CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
         elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
            MsBoss = "The Gorilla King [Lv. 25] [Boss]"
            NaemQuestBoss = "JungleQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
         elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
            MsBoss = "Bobby [Lv. 55] [Boss]"
            NaemQuestBoss = "BuggyQuest1"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
         elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
            MsBoss = "Yeti [Lv. 110] [Boss]"
            NaemQuestBoss = "SnowQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
            CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
         elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
            MsBoss = "Mob Leader [Lv. 120] [Boss]"
            CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
            --The Gorilla King [Lv. 25] [Boss]
         elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
            MsBoss = "Vice Admiral [Lv. 130] [Boss]"
            NaemQuestBoss = "MarineQuest2"
            LevelQuestBoss = 2
            CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
            CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
         elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
            MsBoss = "Warden [Lv. 175] [Boss]"
            NaemQuestBoss = "ImpelQuest"
            LevelQuestBoss = 1
            CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
         elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
            MsBoss = "Chief Warden [Lv. 200] [Boss]"
            NaemQuestBoss = "ImpelQuest"
            LevelQuestBoss = 2
            CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
         elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
            MsBoss = "Swan [Lv. 225] [Boss]"
            NaemQuestBoss = "ImpelQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
         elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
            MsBoss = "Magma Admiral [Lv. 350] [Boss]"
            NaemQuestBoss = "MagmaQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
            CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
         elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
            MsBoss = "Fishman Lord [Lv. 425] [Boss]"
            NaemQuestBoss = "FishmanQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
            CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
         elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
            MsBoss = "Wysper [Lv. 500] [Boss]"
            NaemQuestBoss = "SkyExp1Quest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
            CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
         elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
            MsBoss = "Thunder God [Lv. 575] [Boss]"
            NaemQuestBoss = "SkyExp2Quest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
            CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
         elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
            MsBoss = "Cyborg [Lv. 675] [Boss]"
            NaemQuestBoss = "FountainQuest"
            LevelQuestBoss = 3
            CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
            CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
         end
      end
      local Boss = {}
      for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
         if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
            else
               table.insert(Boss, v.Name)
            end
         end
      end
      for i, v in pairs(game.workspace.Enemies:GetChildren()) do
         if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
            else
               table.insert(Boss, v.Name)
            end
         end
      end
      local BossName = AutoFram:Dropdown("Select Boss",Boss,function(Value)
         SelectBoss = Value
         Don = false
      end)
      local SelectWeaponBoss = "" 
      local SelectWeaponKillBoss = AutoFram:Dropdown("Select Weapon Kill Boss",Wapon,function(Value)
         SelectToolWeaponBoss = Value
      end)
      AutoFram:Button("Refresh Weapon Boss",function()
         SelectWeaponKillBoss:Clear()
         for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
               SelectWeaponKillBoss:Add(v.Name)
            end
         end
         for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
               SelectWeaponKillBoss:Add(v.Name)
            end
         end
      end)
      AutoFram:Button("Refresh Boss",function()
         BossName:Clear()
         for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if string.find(v.Name, "Boss") then
                  if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                  else
                     BossName:Add(v.Name)
                  end
            end
         end
         for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if string.find(v.Name, "Boss") then
                  if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                  else
                     BossName:Add(v.Name)
                  end
            end
         end
      end)
      function AutoFramBoss()
         CheckQuestBoss()
         if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
            if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                     repeat
                        pcall(function() wait() 
                           EquipWeapon(SelectToolWeaponBoss)
                           if HideHitBlox then
                              v.HumanoidRootPart.Transparency = 1
                           else
                              v.HumanoidRootPart.Transparency = 0.75
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 17, 5)
                           game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                           VirtualUser:CaptureController()
                           VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                        end)
                     until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
                  end
               end
            else
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
            end
         elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
            if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                     repeat 
                        pcall(function() wait() 
                           EquipWeapon(SelectToolWeaponBoss)
                           if HideHitBlox then
                              v.HumanoidRootPart.Transparency = 1
                           else
                              v.HumanoidRootPart.Transparency = 0.75
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 25)
                           game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                           VirtualUser:CaptureController()
                           VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                        end)
                     until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
                  end
               end
            else
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
            end
         else
            if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
               if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  print()
                  CheckQuestBoss()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuestBoss
                  wait(1.5)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
               elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                        repeat
                           pcall(function() wait() 
                              EquipWeapon(SelectToolWeaponBoss)
                              if HideHitBlox then
                                 v.HumanoidRootPart.Transparency = 1
                              else
                                 v.HumanoidRootPart.Transparency = 70
                              end
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 17, 5)
                              game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                              VirtualUser:CaptureController()
                              VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                           end)
                        until not FramBoss or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                     end
                  end
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
               end
            end
         end
      end
      AutoFram:Toggle("Auto Farm Boss",false,function(Value)
         local args = {
            [1] = "AbandonQuest"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         FramBoss = Value
         MsBoss = ""
         while FramBoss do wait()
            AutoFramBoss()
         end
      end)
      KillBossuse = true
      function AutoFramAllBoss()
         if setsimulationradius then 
            setsimulationradius(1e+1598, 1e+1599)
         end
         for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if KillBossuse then
               if v.Name == "Diamond [Lv. 750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 750 then
                  SelectBoss = "Diamond [Lv. 750] [Boss]"
               elseif v.Name == "Jeremy [Lv. 850] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 850 then
                  SelectBoss = "Jeremy [Lv. 850] [Boss]"
               elseif v.Name == "Fajita [Lv. 925] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 925  then
                  SelectBoss = "Fajita [Lv. 925] [Boss]"
               elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                  SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
               elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1150 then
                  SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
               elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]" and game.Players.localPlayer.Data.Level.Value >= 1325 then
                  SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
               elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1400  then
                  SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
               elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1475  then
                  SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
               elseif v.Name == "Saber Expert [Lv. 200] [Boss]" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
                  SelectBoss = "Saber Expert [Lv. 200] [Boss]"
               elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 20  then
                  SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
               elseif v.Name == "Bobby [Lv. 55] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 55  then
                  SelectBoss = "Bobby [Lv. 55] [Boss]" 
               elseif v.Name == "Yeti [Lv. 110] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 105  then
                  SelectBoss = "Yeti [Lv. 110] [Boss]"
               elseif v.Name == "Mob Leader [Lv. 120] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 120 then
                  SelectBoss = "Mob Leader [Lv. 120] [Boss]"
               elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 130 then
                  SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
               elseif v.Name == "Warden [Lv. 175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 175 then
                  SelectBoss = "Warden [Lv. 175] [Boss]"
               elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 200 then
                  SelectBoss = "Chief Warden [Lv. 200] [Boss]"
               elseif v.Name == "Swan [Lv. 225] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 250 then
                  SelectBoss = "Swan [Lv. 225] [Boss]"
               elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 350  then
                  SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
               elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 425  then
                  SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
               elseif v.Name == "Wysper [Lv. 500] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 500  then
                  SelectBoss = "Wysper [Lv. 500] [Boss]"
               elseif v.Name == "Thunder God [Lv. 575] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 575 then
                  SelectBoss = "Thunder God [Lv. 575] [Boss]"
               elseif v.Name == "Cyborg [Lv. 675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 675 then
                  SelectBoss = "Cyborg [Lv. 675] [Boss]"
               end
            end   
         end
         for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if KillBossuse then
               if v.Name == "Diamond [Lv. 750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 750 then
                  SelectBoss = "Diamond [Lv. 750] [Boss]"
               elseif v.Name == "Jeremy [Lv. 850] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 850 then
                  SelectBoss = "Jeremy [Lv. 850] [Boss]"
               elseif v.Name == "Fajita [Lv. 925] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 925  then
                  SelectBoss = "Fajita [Lv. 925] [Boss]"
               elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                  SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
               elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1150 then
                  SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
               elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]" and game.Players.localPlayer.Data.Level.Value >= 1325 then
                  SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
               elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1400  then
                  SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
               elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1475  then
                  SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
               elseif v.Name == "Saber Expert [Lv. 200] [Boss]" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
                  SelectBoss = "Saber Expert [Lv. 200] [Boss]"
               elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 20  then
                  SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
               elseif v.Name == "Bobby [Lv. 55] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 55  then
                  SelectBoss = "Bobby [Lv. 55] [Boss]" 
               elseif v.Name == "Yeti [Lv. 110] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 105  then
                  SelectBoss = "Yeti [Lv. 110] [Boss]"
               elseif v.Name == "Mob Leader [Lv. 120] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 120 then
                  SelectBoss = "Mob Leader [Lv. 120] [Boss]"
               elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 130 then
                  SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
               elseif v.Name == "Warden [Lv. 175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 175 then
                  SelectBoss = "Warden [Lv. 175] [Boss]"
               elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 200 then
                  SelectBoss = "Chief Warden [Lv. 200] [Boss]"
               elseif v.Name == "Swan [Lv. 225] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 250 then
                  SelectBoss = "Swan [Lv. 225] [Boss]"
               elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 350  then
                  SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
               elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 425  then
                  SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
               elseif v.Name == "Wysper [Lv. 500] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 500  then
                  SelectBoss = "Wysper [Lv. 500] [Boss]"
               elseif v.Name == "Thunder God [Lv. 575] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 575 then
                  SelectBoss = "Thunder God [Lv. 575] [Boss]"
               elseif v.Name == "Cyborg [Lv. 675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 675 then
                  SelectBoss = "Cyborg [Lv. 675] [Boss]"
               end
            end   
         end
         print(SelectBoss)
         KillBossuse = false
         if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
            if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                     repeat
                        pcall(function() wait() 
                           EquipWeapon(SelectToolWeaponBoss)
                           if HideHitBlox then
                              v.HumanoidRootPart.Transparency = 1
                           else
                              v.HumanoidRootPart.Transparency = 70
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 17, 5)
                           game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                           VirtualUser:CaptureController()
                           VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                        end)
                     until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
                     KillBossuse = true
                  end
               end
            else
               CheckQuestBoss()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
            end
         else
            if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
               if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  print()
                  CheckQuestBoss()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuestBoss
                  wait(1.5)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
               elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                        repeat
                           pcall(function() wait() 
                              EquipWeapon(SelectToolWeaponBoss)
                              if HideHitBlox then
                                 v.HumanoidRootPart.Transparency = 1
                              else
                                 v.HumanoidRootPart.Transparency = 70
                              end
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 17, 5)
                              game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                              VirtualUser:CaptureController()
                              VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                           end)
                        until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                        KillBossuse = true
                     end
                  end
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
               end
            else
               CheckQuestBoss()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
            end
         end
         KillBossuse = true
      end
      AutoFram:Toggle("Auto Farm All Boss",false,function(Value)
         wait(.1)
         local args = {
            [1] = "AbandonQuest"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         FramAllBoss = Value
         KillBossuse = true
         SelectBoss = ""
         MsBoss = ""
         while FramAllBoss do wait()
            AutoFramAllBoss()
         end
      end)
--
      AutoFram:Label(" Auto Quest Bartilo ")
      WeaponBartilo = ""
      local args = {
         [1] = "getInventoryWeapons"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      game:GetService("RunService").Heartbeat:Connect(
         function()
            if AutoBartilo then
                  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
         end
      )
      AutoFram:Toggle("Auto Quest Bartilo",false,function(v)
         Bool = v
         if game.Players.LocalPlayer.Backpack:FindFirstChild("Warrior Helmet") then
            HaveWarriorHelmet = true
         elseif game.Players.LocalPlayer.Character:FindFirstChild("Warrior Helmet") then
            HaveWarriorHelmet = true
         end
         if HaveWarriorHelmet and Bool == true then
            VLib:Notification("Quest Bartilo Successfully")
         elseif WeaponBartilo == "" and Bool == true then
            VLib:Notification("Selected Weapon First")
         elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 and Bool == true then
            VLib:Notification("Quest Bartilo Successfully")
         else
            AutoBartilo = v
         end
         while AutoBartilo do wait()
            if AutoBartilo then
               if game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                  if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                     if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                        Ms = "Swan Pirate [Lv. 775]"
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                           if v.Name == Ms then
                              pcall(function()
                                 repeat wait()
                                    if setsimulationradius then 
                                       setsimulationradius(1e+1598, 1e+1599)
                                    end
                                    if HideHitBlox then
                                       v.HumanoidRootPart.Transparency = 1
                                    else
                                       v.HumanoidRootPart.Transparency = 70
                                    end
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                    PosMonBarto =  v.HumanoidRootPart.CFrame
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    AutoBartiloBring = true
                                 until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                 AutoBartiloBring = false
                              end)
                           end
                        end
                     else
                        CFramMon = CFrame.new(1057.92761, 137.614319, 1242.08069)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFramMon
                     end
                  else
                     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
                     wait(1.1)
                     local args = {
                        [1] = "StartQuest",
                        [2] = "BartiloQuest",
                        [3] = 1
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end 
               elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                  if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                     Ms = "Jeremy [Lv. 850] [Boss]"
                     for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Ms then
                           repeat wait()
                              if setsimulationradius then 
                                 setsimulationradius(1e+1598, 1e+1599)
                              end
                              if HideHitBlox then
                                 v.HumanoidRootPart.Transparency = 1
                              else
                                 v.HumanoidRootPart.Transparency = 70
                              end
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                              game:GetService'VirtualUser':CaptureController()
                              game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                           until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false
                        end
                     end
                  elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
                     wait(1.1)
                     local args = {
                           [1] = "BartiloQuestProgress",
                           [2] = "Bartilo"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     wait(1)
                     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                     wait(2)
                  else
                     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                  end
               elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
               end
            end 
         end
      end)
      local BartiloWeapon = AutoFram:Dropdown("Select Weapon",Wapon,function(A)
         WeaponBartilo = A
      end) 
      AutoFram:Button("Refresh Weapon",function()
         BartiloWeapon:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
               BartiloWeapon:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
               BartiloWeapon:Add(v.Name)
            end
         end
      end)
      NearWeapon = ""
      AutoFram:Toggle("Auto Fram Near Mods",false,function(v)
         if NearWeapon == "" and v then
            VLib:Notification("Select Wapon First")
         else
            AutoNear = v 
         end 
         while AutoNear do wait()
            if AutoNear then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if AutoNear and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceNear then
                     repeat wait()
                           EquipWeapon(NearWeapon)
                           game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                           VirtualUser:CaptureController()
                           VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                           if HideHitBlox then
                              v.HumanoidRootPart.Transparency = 1
                           else
                              v.HumanoidRootPart.Transparency = 70
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                           if Magnet then
                              if setsimulationradius then 
                                 setsimulationradius(1e+1598, 1e+1599)
                              end
                           end
                           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                     until AutoNear == false or not v.Parent or v.Humanoid.Health <= 0
                  end
               end
            end
         end
      end)
      local WeaponNear = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
         NearWeapon = Value
      end)
      AutoFram:Button("Refresh Weapon",function()
         WeaponNear:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
               WeaponNear:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
               WeaponNear:Add(v.Name)
            end
         end
      end)
      DistanceNear = 100
      AutoFram:Slider("Distance",1,500,DistanceNear,function(A)
         DistanceNear = A
      end)
      RengokuWeapon = ""
      AutoFram:Toggle("Auto Rengoku",false,function(v)
         if OldWorld then
            VLib:Notification("Use in New World")
         elseif RengokuWeapon == "" and v then
            VLib:Notification("Select Wapon First")
         else
            AutoRengoku = v
         end 
         while AutoRengoku do wait()
            if AutoRengoku then
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or  game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                  EquipWeapon("Hidden Key")
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6571.81885, 296.689758, -6966.76514, 0.825126112, 8.412257e-10, 0.564948559, -2.42370835e-08, 1, 3.39100339e-08, -0.564948559, -4.16727595e-08, 0.825126112)
               elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if v.Name == "Snow Lurker [Lv. 1375]" and v.Humanoid.Health > 0 then
                        repeat wait()
                           if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                              EquipWeapon(RengokuWeapon)
                              PosMonRengoku = v.HumanoidRootPart.CFrame
                              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                              game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                              VirtualUser:CaptureController()
                              VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                              StatrMagnetRengoku = true
                           else
                              StatrMagnetRengoku = false
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                           end
                        until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                        StatrMagnetRengoku = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                     end
                  end
               else
                  StatrMagnetRengoku = false
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
               end
            end
         end
      end)
      local Rengoku = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
         RengokuWeapon = Value
      end)
      AutoFram:Button("Refresh Weapon",function()
         Rengoku:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
               Rengoku:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
               Rengoku:Add(v.Name)
            end
         end
      end)
      AutoFram:Label(" Auto Sharkman Katate ")
      AutoFram:Toggle("Auto Sharkman Katate",false,function(v)
         if OldWorld then
            VLib:Notification("Use in New World")
         elseif SharkmanWeapon == "" and v then
            VLib:Notification("Select Wapon First")
         else
            local args = {
               [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            AutoSharkman = v
         end 
         while AutoSharkman do wait()
            if AutoSharkman then
               if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                  if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                  elseif game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                  else 
                     Ms = "Tide Keeper [Lv. 1475] [Boss]"
                     if game.Workspace.Enemies:FindFirstChild(Ms) then   
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                           if v.Name == Ms then    
                              repeat wait()
                                 EquipWeapon(SharkmanWeapon)
                                 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                 if setsimulationradius then 
                                    setsimulationradius(1e+1598, 1e+1599)
                                 end
                                 if HideHitBlox then
                                    v.HumanoidRootPart.Transparency = 1
                                 else
                                    v.HumanoidRootPart.Transparency = 70
                                 end
                                 v.HumanoidRootPart.CanCollide = false
                                 v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                 game:GetService'VirtualUser':CaptureController()
                                 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                              until not v.Parent or v.Humanoid.Health <= 0 or AutoSharkman == false or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
                           end
                        end
                     else
                        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
                     end
                  end
               else 
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
               end
            end
         end
      end)
      local Sharkman = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
         SharkmanWeapon = Value
      end)
      AutoFram:Button("Refresh Weapon",function()
         Sharkman:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
               Sharkman:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
               Sharkman:Add(v.Name)
            end
         end
      end)
      AutoFram:Label(" Auto Fram Ectoplasm  ")
      local args = {
         [1] = "getInventoryWeapons"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Inventory.Container:GetDescendants()) do
         if v.Name == "Ghoul Mask" then
            AssGhoulMask = true
         end
         if v.Name == "Midnight Blade" then
            AssMidnightBlade = true
         end
         if v.Name == "Bizarre Rifle" then
            AssBizarreRifle = true
         end
      end
      AutoFram:Toggle("Auto Fram Ectoplasm",false,function(A)
         if NewWorld then
            AutoFramEctoplasm = A
         else
            VLib:Notification("Use in New World")
         end
         while AutoFramEctoplasm do wait()
            if AutoFramEctoplasm then
               if game.Workspace.Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game.Workspace.Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game.Workspace.Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if string.find(v.Name, "Ship") then
                        repeat wait()
                           if string.find(v.Name, "Ship") then
                              if setsimulationradius then 
                                 setsimulationradius(1e+1598, 1e+1599)
                              end
                              EquipWeapon(EctoplasmWeaponSelect)
                              game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                              VirtualUser:CaptureController()
                              VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                              -- µÕàÍ§
                              PosMonEctoplasm = v.HumanoidRootPart.CFrame
                              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                              StatrMagnetEctoplasm = true
                           else
                              StatrMagnetEctoplasm = false
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812)
                           end
                        until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoFramEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                        StatrMagnetEctoplasm = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812)
                     end
                  end
               else
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
               end
            end
         end
      end)
      AutoFram:Toggle("Auto Buy Bizarre Rifle",false,function(A)
         if NewWorld then
            AutoBuyBizarreRifle = A
            while AutoBuyBizarreRifle do wait()
               if AssBizarreRifle then
               else
                  local args = {
                     [1] = "Ectoplasm",
                     [2] = "Buy",
                     [3] = 1
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         else
            VLib:Notification("Use in New World")
         end
      end)
      AutoFram:Toggle("Auto Buy Ghoul Mask",false,function(A)
         if NewWorld then
            AutoBuyGhoulMask = A
            while AutoBuyGhoulMask do wait()
               if AssGhoulMask then
         
               else
                  local args = {
                     [1] = "Ectoplasm",
                     [2] = "Buy",
                     [3] = 2
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         else
            VLib:Notification("Use in New World")
         end
      end)
      AutoFram:Toggle("Auto Buy Midnight Blade",false,function(A)
         if NewWorld then
            AutoBuyMidnightBlade = A
            while AutoBuyMidnightBlade do wait()
               if AssMidnightBlade then
                  
               else
                  local args = {
                     [1] = "Ectoplasm",
                     [2] = "Buy",
                     [3] = 3
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         else
            VLib:Notification("Use in New World")
         end
      end)
      local EctoplasmWeapon = AutoFram:Dropdown("Select Weapon",Wapon,function(Value)
         EctoplasmWeaponSelect = Value
      end)
      AutoFram:Button("Refresh Weapon",function()
         EctoplasmWeapon:Clear()
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
               EctoplasmWeapon:Add(v.Name)
            end
         end
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
               EctoplasmWeapon:Add(v.Name)
            end
         end
      end)

      -- Auto Fram Observation
      AutoFram:Label(" Auto Fram Observation   ")
      local ObservationVirtualUser = game:GetService('VirtualUser')
      AutoFram:Toggle("Auto Fram Observation",false,function(a)
         Observation = a
         if Observation then
            ObservationVirtualUser:CaptureController()
            ObservationVirtualUser:SetKeyDown('0x65')
            wait(2)
            ObservationVirtualUser:SetKeyUp('0x65')
         end
         while Observation do wait()
            if NewWorld then
               if game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") then
                  if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                     repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                     until Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  else
                     repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(10,15,0)
                     until Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  end
               else
                  game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.558777, 40.0827065, 32766.498)
               end
            elseif OldWorld then
               if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                  if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                     repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                     until Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  else
                     repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(10,15,0)
                     until Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  end
               else
                  game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5533.29785, 88.1079102, 4852.3916)
               end
            end
         end
      end)
      spawn(function()
         while wait() do wait(40)
            pcall(function()
               if Observation and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  ObservationVirtualUser:CaptureController()
                  ObservationVirtualUser:SetKeyDown('0x65')
                  wait(2)
                  ObservationVirtualUser:SetKeyUp('0x65')
               end
            end)
         end
      end)
      AutoFram:Button("Check Observation Haki level",function()
         VLib:Notification("Observation Haki Level : "..game.Players.LocalPlayer.VisionRadius.Value)
      end)
      -- Magnet
      spawn(function()
         while wait() do
            if AFM and StatrMagnet and Magnet then
               CheckQuest()
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                     if v.Name == "Factory Staff [Lv. 800]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                        wait()
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v.HumanoidRootPart.CFrame = PosMon
                     elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                        wait()
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v.HumanoidRootPart.CFrame = PosMon
                     end
                  end
               end
            end 
            if Mastery and StatrMagnetDevilFruitMastery and Magnet then
               for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  CheckQuest()
                  if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                     if v.Name == "Factory Staff [Lv. 800]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                        wait()
                        v.HumanoidRootPart.CanCollide = false
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        if UseDF then
                           v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        elseif UseDF == false then
                           v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        end   
                        v.HumanoidRootPart.CFrame = PosMon
                     elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        wait()
                        v.HumanoidRootPart.CanCollide = false
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        if UseDF then
                           v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        elseif UseDF == false then
                           v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        end   
                        v.HumanoidRootPart.CFrame = PosMon
                     end
                  end
               end
            end
            if AutoBartilo and AutoBartiloBring and Magnet then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                     if v.Name == "Swan Pirate [Lv. 775]" then
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CFrame = PosMonBarto
                     end
                  end
               end
            end
            if AutoRengoku and StatrMagnetRengoku and Magnet then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if v.Name ==  "Snow Lurker [Lv. 1375]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                     if v.Name == "Snow Lurker [Lv. 1375]" then
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CFrame = PosMonRengoku
                     end
                  end
               end
            end
            if AutoFramEctoplasm and StatrMagnetEctoplasm and Magnet then
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                     if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if HideHitBlox then
                           v.HumanoidRootPart.Transparency = 1
                        else
                           v.HumanoidRootPart.Transparency = 0.75
                        end
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CFrame = PosMonEctoplasm
                     end
                  end
               end
            end
         end
      end)
  
  