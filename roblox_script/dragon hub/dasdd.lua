local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/24Thmors/asd/main/README.md")()

  local win = DiscordLib:Window("Frozen Hub Next Gen | King Legacy ( V 1.2.0 )")

  local serv = win:Server("King Legacy",  "")

  local tab = serv:Channel("Auto Farm")
  function CheckLevel()
    if game.PlaceId == 4520749081 then
    local lvl = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
    if lvl >= 1 and lvl <= 9 then
      namemobs = "Soldier [Lv. 1]"
      levelquest = 1
      CFrameQuest = CFrame.new(2276.29541, 48.5389481, -1647.28113, 0.613133192, -0, -0.789979577, 0, 1, -0, 0.789979577, 0, 0.613133192)
      removequest = "Beli 250"
    elseif lvl >= 10 and lvl <=19 then
      namemobs = "Clown Pirate [Lv. 10]"
      levelquest = 10 
      CFrameQuest = CFrame.new(2495.31689, 47.7177238, -1773.83765, -0.788017035, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, -0.788017035)
      removequest = "Beli 300"
    elseif lvl >= 20 and lvl <= 29 then
        namemobs = "Smoky [Lv. 20]"
        levelquest = 20
        CFrameQuest = CFrame.new(2229.23413, 48.2397079, -1781.35217, -0.789979458, 0, -0.613133252, 0, 1, 0, 0.613133252, 0, -0.789979458)
        removequest = "Beli 500"
    elseif lvl >= 30 and lvl <= 49 then
        namemobs = "Tashi [Lv. 30]"
        levelquest = 30
        CFrameQuest = CFrame.new(2012.65454, 48.2536201, -1808.07178, 0.789979517, 0, 0.613133252, 0, 1, 0, -0.613133252, 0, 0.789979517)
        removequest = "Beli 750"
    elseif lvl >= 50 and lvl <= 74 then
        namemobs = "Clown Pirate [Lv. 50]"
        levelquest = 50
        CFrameQuest = CFrame.new(4021.25781, 37.8887329, 268.103943, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
        removequest ="Beli 1K"
    elseif lvl >= 75 and lvl <= 100 then
        namemobs = "The Clown [Lv. 75]"
        levelquest = 75
        CFrameQuest = CFrame.new(4260.06592, 69.0870895, 249.896057, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
        removequest = "Beli 1.75K"
    elseif lvl >= 100 and lvl <=119 then
        namemobs = "Commander [Lv. 100]"
        levelquest = 100
        CFrameQuest = CFrame.new(1881.1582, 38.8882942, 1156.87061, -0.913549781, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, -0.913549781)
        removequest = "Beli 1.5K"
    elseif lvl >= 120 and lvl <= 144 then
        namemobs = "Captain [Lv. 120]"
        levelquest = 120
        CFrameQuest = CFrame.new(1764.40845, 39.71521, 1230.9231, 0.913549721, -0, -0.406727046, 0, 1, -0, 0.406727046, 0, 0.913549721)
        removequest = "Beli 1.75K"
    elseif lvl >= 145 and lvl <= 179 then
        namemobs = "Axe-Hand [Lv. 145]"
        levelquest = 145
        CFrameQuest = CFrame.new(1606.30029, 68.7078476, 1361.55359, 0.917908251, 0.000253595645, -0.39679268, -0.000253595645, 0.99999994, 5.24659517e-05, 0.39679268, 5.24659517e-05, 0.917908251)
        removequest = "Beli 2K"
    elseif lvl >= 180 and lvl <= 199 then
        namemobs = "Fishman [Lv. 180]"
        levelquest = 180
        CFrameQuest = CFrame.new(3872.67358, 10.889246, 3252.62329, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
        removequest = "Beli 2.25K"
    elseif lvl >= 200 and lvl <= 229 then
        namemobs = "Karate Fishman [Lv. 200]"
        levelquest = 200
        CFrameQuest = CFrame.new(4208.9751, 10.8634539, 3285.38721, 0.573598742, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, 0.573598742)
        removequest = "Beli 2.5K"
    elseif lvl >= 230 and lvl <= 249 then
        namemobs = "SharkMan [Lv. 230]"
        levelquest = 230
        CFrameQuest = CFrame.new(4292.15088, 10.8831606, 3247.86523, -0.801726937, 0, 0.597690463, 0, 1, 0, -0.597690463, 0, -0.801726937)
        removequest = "Beli 2.75K"
    elseif lvl >= 250 and lvl <= 299 then
        namemobs = "Trainer Chef [Lv. 250]"
        levelquest = 250
        CFrameQuest = CFrame.new(-50.4521332, 49.8431091, -85.4636002, 0.854788899, 0, 0.518975854, 0, 1, 0, -0.518975854, 0, 0.854788899)
        removequest = "Beli 3K"
    elseif lvl >= 300 and lvl <= 350 then
        namemobs = "Dark Leg [Lv. 300]"
        levelquest = 300
        CFrameQuest = CFrame.new(40.3570976, 99.6126328, -45.6973267, 0.876903236, -0, -0.480666965, 0, 1, -0, 0.480666965, 0, 0.876903236)
        removequest = "Beli 3.25"
    elseif lvl >= 350 and lvl <= 399 then
        namemobs = "Weapon Man [Lv. 350]"
        levelquest = 350
        CFrameQuest = CFrame.new(-42.2680435, 49.8572884, 112.88829, -0.879374862, 0, 0.476129979, 0, 1, 0, -0.476129979, 0, -0.879374862)
        removequest = "Beli 3.5K"
    elseif lvl >= 400 and lvl <= 449 then
        namemobs = "Snow Soldier [Lv. 400]"
        levelquest = 400
        CFrameQuest = CFrame.new(-2854.47925, 18.4605579, 1421.01794, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
        removequest = "Beli 3.75K"
    elseif lvl >= 450 and lvl <= 500 then
        namemobs = "King Snow [Lv. 450]"
        levelquest = 450
        CFrameQuest = CFrame.new(-2882.75317, 18.2281208, 1187.48169, -0.984807611, 0, -0.1736494, 0, 1, 0, 0.1736494, 0, -0.984807611)
        removequest = "Beli 4K"
        elseif lvl >= 500 and lvl <= 525 then
        namemobs = "Heavy Man [Lv. 500]"
        levelquest = 500
        CFrameQuest = CFrame.new(-2634.60205, 20.232378, 1615.61584, 0.95638144, 0.0402299501, -0.289337188, -0.0151332067, 0.995964825, 0.0884590447, 0.291728348, -0.0802219808, 0.953131139)
        removequest = "Beli 4.25K"
     elseif lvl >= 525 and lvl <= 625 then
        namemobs = "Candle Man [Lv. 525]"
        levelquest = 525
        CFrameQuest = CFrame.new(1730.93481, 11.6042376, 3645.52612, 0.405821055, -0.153332084, -0.900998712, 0.0876122564, 0.987813056, -0.128644556, 0.909743667, -0.0267318692, 0.414309084)
        removequest = "Beli 4.5K"
     elseif lvl >= 625 and lvl <= 725 then
         namemobs = "Bomb Man [Lv. 625]"
         levelquest = 625
         CFrameQuest = CFrame.new(1518.93481, 16.2578449, 3433.86792, 0.909801066, 0.0318899676, -0.413817585, 0.000235149637, 0.997004032, 0.0773489922, 0.415044487, -0.0704694986, 0.907067835)
         removequest = "Beli 4.75K"
      elseif lvl >= 725 and lvl <= 800 then
         namemobs = "King of Sand [Lv. 725]"
         levelquest = 725
         CFrameQuest = CFrame.new(1509.43628, 44.4459724, 3539.62476, 0.979067743, 0.0538066104, -0.196293831, -0.0628938526, 0.997204065, -0.0403536521, 0.193573713, 0.0518546402, 0.979714394)
         removequest = "Beli 5K"
      elseif lvl >= 800 and lvl <= 850 then
         namemobs = "Sky Soldier [Lv. 800]"
         levelquest = 800
         CFrameQuest = CFrame.new(-1253.51074, 202.065659, 4578.83887, -0.875835419, -0.0831081197, -0.475400507, -0.0319075771, 0.992877364, -0.114788279, 0.48155421, -0.0853667855, -0.872249007)
         removequest = "Beli 5.25K"
      elseif lvl >= 850 and lvl <= 900 then
         namemobs = "Sky Soldier [Lv. 800]"
         levelquest = 800
         CFrameQuest = CFrame.new(-1253.51074, 202.065659, 4578.83887, -0.875835419, -0.0831081197, -0.475400507, -0.0319075771, 0.992877364, -0.114788279, 0.48155421, -0.0853667855, -0.872249007)
         removequest = "Beli 5.25K"
      elseif lvl >= 900 and lvl <= 1000 then
         namemobs = "Rumble Man [Lv. 900]"
         levelquest = 900
         CFrameQuest = CFrame.new(-859.264099, 387.104401, 4880.18457, 0.432367295, 0.0204205755, 0.901466429, -0.0061927652, 0.999787211, -0.019677585, -0.901676416, 0.00292538572, 0.432401747)
         removequest = "Beli 5.75K"
      elseif lvl >= 1000 and lvl <= 1100 then
         namemobs = "Soldier [Lv. 1000]"
         levelquest = 1000
         CFrameQuest = CFrame.new(8270.58105, 13.6778574, 5439.92529, 0.88256973, -0.0192820504, -0.469785929, -0.0392946079, 0.992638528, -0.114563502, 0.468536675, 0.119570337, 0.875315011)
         removequest = "Beli 6K"
      elseif lvl >= 1000 and lvl <= 1100 then
         namemobs = "Leader [Lv. 1100]"
         levelquest = 1100
         CFrameQuest = CFrame.new(8174.25195, 12.2141132, 5287.77686, -0.369476914, 0, -0.929239869, 0, 1, 0, 0.929239869, 0, -0.369476914)
         removequest = "Beli 6.25K"
      elseif lvl >= 1100 and lvl <= 1250 then
         namemobs = "Pasta [Lv. 1150]"
         levelquest = 1150
         CFrameQuest = CFrame.new(7996.17285, 10.4255419, 5767.40771, 0.202308223, 0.288636118, 0.935820818, -0.17098628, 0.951313257, -0.256450236, -0.964279473, -0.108130544, 0.241811335)
         removequest = "Beli 6.5K"
      elseif lvl >= 1250 and lvl <= 1325 then
         namemobs = "Wolf [Lv. 1250]"
         levelquest = 1250
         CFrameQuest = CFrame.new(4209.16943, 14.5519104, 6766.67822, -0.996276498, -0.00595686352, 0.0860107914, 0.000497628469, 0.997196376, 0.0748270899, -0.0862153992, 0.074591279, -0.993480206)
         removequest = "Beli 6.75K"
      elseif lvl >= 1325 and lvl <= 1400 then
         namemobs = "Giraffe [Lv. 1325]"
         levelquest = 1325
         CFrameQuest = CFrame.new(4311.78955, 14.3874712, 6980.81885, 0.906806409, -0.0326897502, 0.420278013, -0.000123947859, 0.996967912, 0.0778128579, -0.421547353, -0.0706133246, 0.904052854)
         removequest = "Beli 7K"
      elseif lvl >= 1400 and lvl <= 1450 then
         namemobs = "Leo [Lv. 1400]"
         levelquest = 1400
         CFrameQuest = CFrame.new(4313.43164, 13.441721, 7415.81885, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
         removequest = "Beli 7.25K"
      elseif lvl >= 1500 and lvl <= 1600 then
         namemobs = "Zombie [Lv. 1500]"
         levelquest = 1500
         CFrameQuest = CFrame.new(-777.93219, 47.1999893, 8476.06738, -0.572766006, -5.93146865e-09, -0.819719076, 3.76606607e-10, 1, -7.49912576e-09, 0.819719076, -4.60395544e-09, -0.572766006)
         removequest = "Beli 7.5K"
      elseif lvl >= 1600 and lvl <= 1750 then
         namemobs = "Shadow Master [Lv. 1600]"
         levelquest = 1600
         CFrameQuest = CFrame.new(-791.589966, 48.4205627, 8331.29004, 0.717670381, 0.0473710671, 0.694769919, -0.00413261307, 0.997955799, -0.0637741759, -0.696370721, 0.042897623, 0.716399074)
         removequest = "Beli 7.75K"
      elseif lvl >= 1750 and lvl <= 1800 then
         namemobs = "New World Pirate [Lv. 1750]"
         levelquest = 1750
         CFrameQuest = CFrame.new(8604.64063, 52.1293983, 1731.78503, 0.109754428, -0.0862798169, 0.990206838, -0.0151337748, 0.995964825, 0.0884589553, -0.993843436, -0.0246943496, 0.108005822)
         removequest = "Beli 8K"
      elseif lvl >= 1800 and lvl <= 1850 then
         namemobs = "Rear Admiral [Lv. 1800]"
         levelquest = 1800
         CFrameQuest = CFrame.new(8583.79297, 52.1117554, 1348.46204, 0.933460295, -0.0176343955, 0.358246922, -0.0151340859, 0.995964825, 0.0884593502, -0.358361185, -0.0879950151, 0.929426789)
         removequest = "Beli 8.25K"
      elseif lvl >= 1850 and lvl <= 2000 then
         namemobs = "True Karate Fishman [Lv. 1850]"
         levelquest = 1850
         CFrameQuest = CFrame.new(8557.40723, 49.0682983, 1460.91003, 0.261405498, 0.305788577, 0.915511131, -0.016542865, 0.949771047, -0.312508196, -0.965087295, 0.0665461868, 0.253334016)
         removequest = "Beli 8.5K"
      elseif lvl >= 2000 and lvl <= 2100 then
         namemobs = "Fishman [Lv. 2000]"
         levelquest = 2000
         CFrameQuest = CFrame.new(2973.40796, 41.9508362, 13350.1533, -0.460042477, 0.0735667273, 0.884844005, 0.0316808186, 0.997287035, -0.0664440617, -0.887331545, -0.00253448542, -0.461125106)
         removequest = "Beli 9K"
      elseif lvl >= 2100 and lvl <= 2150 then
         namemobs = "Sword Fishman [Lv. 2100]"
         levelquest = 2100
         CFrameQuest = CFrame.new(3294.42041, 42.4713516, 13794.4932, 0.259266078, 0.0893519968, -0.961663783, -0.0151336165, 0.995964825, 0.088459, 0.965687335, -0.00838093832, 0.259572089)
         removequest = "Beli 9.5K"
      elseif lvl >= 2150 and lvl <= 2200 then
         namemobs = "Fishman Soldier [Lv. 2150]"
         levelquest = 2150
         CFrameQuest = CFrame.new(3019.82349, 41.2185402, 13885.7314, 0.0158671886, -0.202030033, -0.979250789, -0.963101864, 0.260072201, -0.069261238, 0.26866883, 0.944217205, -0.19044891)
         removequest = "Beli 9.75K"      
      elseif lvl >= 2200 and lvl >= 3200 then
         namemobs = "Seasoned Fishman [Lv. 2200]"
         levelquest = 2200
         CFrameQuest = CFrame.new(2785.53638, 39.5822182, 13822.6357, 0.986753762, -1.58816427e-09, -0.162225112, 3.76606607e-10, 1, -7.49912576e-09, 0.162225112, 7.33869543e-09, 0.986753762)
         removequest = "Beli 10K"                                                                                                                                                                        
    end
    end
    end
    tab:Toggle("Auto-Farm Level",false,function(t)
      farm = t
    end)
    
    spawn(function()
        while wait() do
    if farm then
      pcall(function()
        equip()
        CheckLevel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
        wait(1)
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(2540, 242))
        game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl"..levelquest].Dialogue.Accept.Size = UDim2.new(15,0,15,0)
        game:GetService("Players").LocalPlayer.PlayerGui["QuestLvl"..levelquest].Dialogue.Accept.Position = UDim2.new(-5,0,-5,0)
        wait()
        game:GetService'VirtualUser':Button1Up(Vector2.new(0,0))
        game:GetService'VirtualUser':Button1Down(Vector2.new(0,0))
        elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.beli.Text ~= removequest then
        game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible = false
        elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.beli.Text == removequest then
          for i,v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
          if v.Name == namemobs and v.Humanoid.Health > 0  then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,dis,0) * CFrame.Angles(math.rad(-90), 0, 0)
          attack()
          end
        end
    end
    end
    end)
    end
    end
    end)
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if farm then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
      end
    end)
    function attack()
      game:GetService('VirtualUser'):CaptureController()
      game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
    end
  tab:Slider("Distance",0,10,0,function(t)
  dis = t
end)
local TOOLS = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(TOOLS,v.Name)
    end
end

local rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
SelectedWeapon = t
end)

function equip()
  pcall(function()
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == SelectedWeapon then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
      end
      end
  end)
end

tab:Toggle("Auto Haki",false,function(t)
   _G.Haki = t
 end)
 
 spawn(function()
 while wait(1) do
 if _G.Haki then
   pcall(function()
   if game.Players.LocalPlayer.Character.Haki.Value == 0 then
   game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
   end
 end)
 end
 end
 end)
---------------------------------------------------------------------------------------------------------

tab:Button("Refresh Weapon",function()
  rdropdwon:Clear()
  TOOLS = {}
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") then
          rdropdwon:Add(v.Name)
      end
    end
end)
--------------FPS Boost--------------
tab:Button("FPS Boost",function()
   local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
   local g = game
   local w = g.Workspace
   local l = g.Lighting
   local t = w.Terrain
   t.WaterWaveSize = 0
   t.WaterWaveSpeed = 0
   t.WaterReflectance = 0
   t.WaterTransparency = 0
   l.GlobalShadows = false
   l.FogEnd = 9e9
   l.Brightness = 0
   settings().Rendering.QualityLevel = "Level01"
   for i, v in pairs(g:GetDescendants()) do
      if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
            v.Material = "Plastic"
            v.Reflectance = 0
      elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
      elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
      elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
      elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
      elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
      end
   end
   for i, e in pairs(l:GetChildren()) do
      if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
      end
   end
end)
--------------Redeem ALL Code--------------

--------------Shop--------------

local Shop = serv:Channel("Shop")
Shop:Button("Katana $5000",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2049.4987792969, 48.143287658691, -1719.1455078125)
    end)
Shop:Button("Cyborg $1000000",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4577.1977539063, 123.65245819092, 3224.4995117188)
    end)
Shop:Button("DarKLeg $150000",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6456.65625, 168.45036315918, -2374.0812988281)
end)


local Misc = serv:Channel("Misc")

Misc:Button("No Cooldown",function ()
       Timer =
           hookfunction(
           wait,
           function(time)
               if time then
                   return Timer()
               end
               return Timer(time)
           end
       )
   end
)

Misc:Slider("Walkspeed",16,2000,0,function(value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
Misc:Slider("JumpPower",50,2000,0,function(value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)
Misc:Button("Redeem ALL Code",function ()
-- Script generated by TurtleSpy, made by Intrer#0421

 game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("200MVISITS")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("300KFAV")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("NewDragon")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("Brachio")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("DinoxLive")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("REDBIRD")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("BeckyStyle")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("Peodiz")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("KingPieceComeBack")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("SORRYFORSHUTDOWN")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("300MVISITS")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("500KFAV")
  game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("GasGas")
end)

tab:Dropdown("Method",{"Over","Under","Behind"},function(a)
  Method =  a
end)
local TP = serv:Channel("Teleport")
TP:Toggle("[ ! ] Ctrl + Click = TP",false,function(vu)
 CTRL = vu
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(
 function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
       return
    end
    if not Mouse.Target then
       return
    end
    if CTRL then
       Plr.Character:MoveTo(Mouse.Hit.p)
    end
 end
)
TP:Button("A - Town",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2222.798828125, 48.217567443848, -1755.4344482422)
end)
TP:Button("B - Pirate Island",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4018.5754394531, 37.868427276611, 326.14840698242)
end)
TP:Button("C - Soldier Town",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1681.0186767578, 68.619071960449, 1242.8004150391)
end)
TP:Button("D - Shark Island",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3941.6325683594, 10.566205978394, 3228.8093261719)
end)
TP:Button("E - Chef Ship",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(104.73770904541, 12.964610099792, -145.74780273438)
end)
TP:Button("F - Snow Island",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2824.9541015625, 18.14605140686, 1410.3936767578)
end)
TP:Button("G - Desert Island",function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1636.9338378906, 13.269888877869, 3480.7963867188)
end)
TP:Button("H - Skyland",function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1231.2655029297, 200.67687988281, 4618.2275390625)
 end)
TP:Button("I - Bubbleland",function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8056.2368164063, 13.389360427856, 5555.2104492188)
end)
TP:Button("J - Lobby Island",function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4252.2373046875, 13.413521766663, 6880.1655273438)
end)
TP:Button("K - Zombie Island",function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-931.52960205078, 48.181209564209, 8328.90234375)
end)
TP:Button("L - War Island",function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8581.783203125, 81.803428649902, 1592.5651855469)
end)
TP:Button("M - Fishland",function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2933.6862792969, 40.583614349365, 13371.825195313)
end)

 end