getgenv().SettingTheme = {
    Tab = {
        Left_Color = Color3.fromRGB(203 ,156, 255),
        Right_Color = Color3.fromRGB(140, 166 ,252)
    },
    Button = {
        Left_Color = Color3.fromRGB(203 ,156, 255),
        Right_Color = Color3.fromRGB(140, 166 ,252)
    },
}
function ConvertFunctions()
  local a = {["writefile"] = "None", ["readfile"] = "None", ["isfile"] = "None"}
  if is_synapse_function then
      a["writefile"] = writefile
      a["readfile"] = readfile
      a["isfile"] = isfile
      return a
  elseif pebc_execute then
      a["writefile"] = writefile
      a["readfile"] = readfile
      a["isfile"] = function(b)
          local c, d =
              pcall(
              function()
                  a["readfile"](b)
              end
          )
          if
              c == false or d ~= nil and string.find(d, "file does not exist") or
                  d ~= nil and string.find(d, "attempt to index nil with 'readfile'")
           then
              return false
          elseif c == true and d == nil then
              return true
          end
      end
      return a
  elseif issentinelclosure then
      a["writefile"] = writefile
      a["readfile"] = readfile
      a["isfile"] = function(b)
          local c, d =
              pcall(
              function()
                  a["readfile"](b)
              end
          )
          if
              c == false or d ~= nil and string.find(d, "file does not exist") or
                  d ~= nil and string.find(d, "attempt to index nil with 'readfile'")
           then
              return false
          elseif c == true and d == nil then
              return true
          end
      end
      return a
  else
      return false
  end
end
local ConvertedFunctions = ConvertFunctions()
shared.JoJoBlox = {
  ["Player"] = {
  ["Farmlvl"] = false,
  ["GoNewWorld"] = false,
  ["Killaura"] = false,
  ["Invisible"] = false,
  ["Kill All Boss"] = false,
  ["MobSelect"] = "",
  ["FarmSelect"] = false,
  ["Weapon"] = "",
  ["Equip"] = false,
  ["teleportisland"] = false,
  ["Zamus Farm"] = false,
  ["Tusk Farm"] = false,
  ["The Emperor Farm"] = false,
  ["SPOH DUPE SKILL"] = false,
  ["Quest"] = "",
  ["Questauto"] =false,
  ["Tp Arrow"] = false,
  ["Tp Rebirth Arrow"] = false,
  ["Chest"] = false,
  ["Stat Attack"] = false,
  ["Stat Stamina"] = false,
  ["Stat Health"] = false,
  ["Dash Inf"] = false,
  ["Stat Genre"] = false,
  ["Webhook"] = false,
  },
  ["Setting Farm"] = {
    ["SelectMethod"] = "Above",
    ["Distance"] = 6,
    ["SelectMode"] = "Magnet"
  }
}
function LoadSettings()
  local a = ConvertedFunctions
  if a.readfile and a.isfile and a.writefile then
      local b = a.readfile
      local c = a.writefile
      local d = a.isfile
      if d("SKYHUB-JOJOBLOX"    .. ".txt") == false then
          c("SKYHUB-JOJOBLOX"   .. ".txt", game:GetService("HttpService"):JSONEncode(shared.JoJoBlox))
      else
          local e = game:GetService("HttpService"):JSONDecode(b("SKYHUB-JOJOBLOX" .. ".txt"))
          for f, g in pairs(e) do
              for h, i in pairs(g) do
                  shared.JoJoBlox[f][h] = i
              end
          end
      end
  else
      warn("Failed to load settings!")
      return false
  end
end
function SaveSettings()
  local a = ConvertedFunctions
  if a.readfile and a.isfile and a.writefile then
      local b = a.readfile
      local c = a.writefile
      local d = a.isfile
      if d("SKYHUB-JOJOBLOX".. ".txt") == false then
          LoadSettings()
      else
          --local e = game:GetService("HttpService"):JSONDecode(b(".txt"))
          local f = {}
          for g, h in pairs(shared.JoJoBlox) do
              f[g] = {}
              for i, j in pairs(h) do
                  f[g][i] = j
              end
          end
          c("SKYHUB-JOJOBLOX"   .. ".txt", game:GetService("HttpService"):JSONEncode(f))
      end
  else
      warn("Failed to save settings!")
      return false
  end
end


LoadSettings()

SaveSettings()

if _G.PolarNoob == true then game.Players.LocalPlayer:Kick("Dont Execute > 2") wait(1) local ts = game:GetService("TeleportService") local p = game.Players.LocalPlayer ts:Teleport(game.PlaceId, p)  end local http_request_all = http_request or request or HttpPost or syn.request
if game.PlaceId == 3400631762 then
  local lib = loadstring(game:HttpGet('http://skyhubking.xyz/script/uifolder/ui.lua'))()
  local spawnui = lib:MainWindow("JoJo Blox")
  -- Spawn Ui 
  local mainx = spawnui:Tab("Main","http://www.roblox.com/asset/?id=6023426915")
  local miscfarm = spawnui:Tab("Farm Money","http://www.roblox.com/asset/?id=6022668888")
  local setting = spawnui:Tab("Setting Farm","http://www.roblox.com/asset/?id=6022668888")
  local Misc = spawnui:Tab("Misc","http://www.roblox.com/asset/?id=6022668888")
  local Playerx = spawnui:Tab("Players","http://www.roblox.com/asset/?id=6022668888")
-- Variables Value 
local Player = game:GetService("Players").LocalPlayer
local Work = game:GetService("Workspace")
local Replicate = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
--- Variables No Value
local lvlreal = nil
local GoItaly = shared.JoJoBlox["Player"]["GoNewWorld"]
local arrow = nil
local rebirth = nil
local chestfarm = nil
local mobnotfindtp = nil
local QuestSelectx = nil
local teleportisland = nil
local zamusfarm = nil
local mobselectx = shared.JoJoBlox["Player"]["MobSelect"] 
local tuskfarm = nil
local emperrorfarm = nil
local Namemoblvl = nil
local checklvl = nil
local TeleportCFrame = nil
local farmlvl = shared.JoJoBlox["Player"]["Farmlvl"]
local farmselect = nil
local methodfarm = shared.JoJoBlox["Setting Farm"]["SelectMethod"]
local distance = shared.JoJoBlox["Setting Farm"]["Distance"]
local killaura = shared.JoJoBlox["Player"]["Killaura"]
local Invisible = shared.JoJoBlox["Player"]["Invisible"]
local modefarm = shared.JoJoBlox["Setting Farm"]["SelectMode"]
local autoquest = nil
local starploh = nil
local weaponselect = shared.JoJoBlox["Player"]["Weapon"]
local weaponequip = shared.JoJoBlox["Player"]["Equip"]
local questselectq = shared.JoJoBlox["Player"]["Quest"] 
local userteleport = nil
local killboss = shared.JoJoBlox["Player"]["Kill All Boss"]
local Webhookitem = shared.JoJoBlox["Player"]["Webhook"]
local GameTime = 0
local Hour = 0
local Minute = 0
local Second = 0
  --- Table 
  local weapon = {}
  local mobselect = {
    [3400631762] = {
      ["MobName"] = {
      "Thug [Level 5]",
      "HamonUser [Level 15]",
      "Gryphon [Level 30]",
      "Vampire [Level 40]",
      "Snow Thug [Level 50]",
       "Snowman [Level 65+]",
      "Desert Bandit [Level 95]",
      "Desert Monster [Level 120]",
      "Dio Guard [Level 165]",
      "Dio Royal Guard [Level  180]",
      "School Bully  [Level 270]",
      "City Criminal  [Level 280]",
      "Criminal Master [Level 300]",
      "Magma Guard [Level 740]",
      "Magma Monster [Level 780]",
      "Ice Beast[Level 810]",
      "Elite Beast[Level 860]",
      "Beast Master[Level 900+]"
      },
      ["Quest"] = {
        "Thug",
        "HamonUser",
        "Gryphons",
        "Vampire",
        "SnowThug",
        "Snowman",
        "Desert Bandit",
        "Desert Monster",
        "Dio Guard",
        "Dio Royal Guard",
        "School Bully",
        "City Criminal",
        "Criminal Master",
        "Magma Guard",
        "Magma Monster",
        "Ice Beast",
        "Elite Beast",
        "Beast Master"
      }
    },
    [4313854107] = {
      ["MobName"] = {
      "Police Man [Level 400]",
      "Special Force [Level 425]",
      "Gangster  [Level 450]",
      "Mafia  [Level 475]",
      "Elite Mafia [Level 500]",
      "Newbie Prisoner",
      "Prisoner",
      "Strong Prisoner",
      "Prison Guard"
      },
      ["Quest"] = {
        "Police Man",
        "Special Force",
        "Gangster",
        "Mafia",
        "Elite Mafia",
        "Newbie Prisoner",
        "Prisoner",
        "Strong Prisoner",
        "Prison Guard"
      }
    }
  }
  local teleportmap = {
    [3400631762] = {
      ["SPAWN"] =  CFrame.new(-9.63145161, 12.041152, 155.166855),
      ["FOREST"] = CFrame.new(610.230347, 8.12037373, -51.1824532),
      ["SNOWLAND"] =  CFrame.new(-40.2136078, -68.4283447, 2406.25024),
      ["MAGMALAND"] = CFrame.new(41.0915565, -23.9860153, 5595.26611),
      ["DESERT"] = CFrame.new(-197.741608, 26.0991955, -1752.75647),
      ["MORIOH"] = CFrame.new(127626.414, 398.703003, -171.807999),
      ["SP HEAVEN"] = CFrame.new(-249.153275, 14.1989784, -204.13324),
      ["INVENTORY"] = CFrame.new(-27.6116695, 4.64919853, 164.684158),
      ["BACKBACK"] = CFrame.new(-77.8702774, 4.64919853, 102.319382),
    },
    [4313854107] = {
      ["SPAWN"] =  CFrame.new(77.515831, 626.222412, -1166.46448),
      ["PRISON"] =  CFrame.new(6465.05127, 681.794006, 1659.32166),
      ["INVENTORY"] =  CFrame.new(49.4778633, 626.222229, -1207.34668),
      ["BACKBACK"] =  CFrame.new(107.4981, 626.222229, -1200.10022),
    }
  }
  local methodshow = {
    "Above",
    "Behind",
    "Under"
  }
  local modeshow = {
    "Magnet",
    "Dont Magnet",
  }
  local questshow = {}
  local mobshow = {}
  local teleportshow = {}
  for i, v in pairs(Player.Backpack:GetChildren()) do
    if v:IsA("Tool") then 
        table.insert(weapon, v.Name)
    end 
  end
for i,v in pairs(mobselect) do
  if i == game.PlaceId then
    for i1,v1 in pairs(v) do
      if i1 == "MobName" then
        for i2,v2 in pairs(v1) do
          table.insert(mobshow,v2)
        end
      end
    end
  end
end
for i,v in pairs(teleportmap) do
  if i == game.PlaceId then
    for i1,v1 in pairs(v) do
      table.insert(teleportshow,i1)
    end
  end
end
for i,v in pairs(mobselect) do
  if i == game.PlaceId then
    for i1,v1 in pairs(v) do
      if i1 == "Quest" then
        for i2,v2 in pairs(v1) do
          table.insert(questshow,v2)
        end
      end
    end
  end
end
  --- Ui Spawn Main
  local helpfarm = mainx:AddFolder("Help Farm")
  helpfarm:Toggle("Kill Aura",true,shared.JoJoBlox["Player"]["Killaura"],function(helptype)
    killaura = helptype
    shared.JoJoBlox["Player"]["Killaura"] = helptype
    SaveSettings()
  end)
  helpfarm:Toggle("Invisible Mode",true,shared.JoJoBlox["Player"]["Invisible"],function(helptype)
    Invisible = helptype
    shared.JoJoBlox["Player"]["Invisible"] = helptype
    SaveSettings()
  end)
  helpfarm:Toggle("Go Italy",true,shared.JoJoBlox["Player"]["GoNewWorld"],function(helptype)
    GoItaly = helptype
    shared.JoJoBlox["Player"]["GoNewWorld"] = helptype
    SaveSettings()
  end)
  mainx:Label("___________________________________________________")
  mainx:Toggle("Farm lvl",true,shared.JoJoBlox["Player"]["Farmlvl"],function(farmtype)
    farmlvl = farmtype
    shared.JoJoBlox["Player"]["Farmlvl"] = farmtype
    SaveSettings()
  end)
  mainx:Label("___________________________________________________")
  mainx:Dropdown("Select Mob",mobshow,function(farmtype)
    mobselectx = farmtype
    shared.JoJoBlox["Player"]["MobSelect"] = mobselectx
    SaveSettings()
  end)
  mainx:Toggle("Farm Select",true,shared.JoJoBlox["Player"]["FarmSelect"],function(farmtype)
    farmselect = farmtype
    shared.JoJoBlox["Player"]["FarmSelect"] = farmselect
    SaveSettings()
  end)
  mainx:Toggle("Kill All Boss",true,shared.JoJoBlox["Player"]["Kill All Boss"],function(farmtype)
    killboss = farmtype
    shared.JoJoBlox["Player"]["Kill All Boss"] = killboss
    SaveSettings()
  end)
  mainx:Label("___________________________________________________")
  local toolref = mainx:Dropdown("Select Weapons",weapon,function(farmtype)
    weaponselect = farmtype
    shared.JoJoBlox["Player"]["Weapon"] = weaponselect
    SaveSettings()
  end)
  game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
      repeat wait(1) until Player.Backpack
      pcall(function ()
        Player.Backpack.ChildAdded:connect(function(v)
          if v:IsA("Tool") then
            toolref:Clear()
            for i, v1 in pairs(Player.Backpack:GetChildren()) do
              if v1:IsA("Tool") then
                toolref:Add(v1.Name)
              end
            end
          end
        end)
        Player.Backpack.ChildRemoved:connect(function(v)
          if v:IsA("Tool") then
            toolref:Clear()
            for i, v1 in pairs(Player.Backpack:GetChildren()) do
              if v1:IsA("Tool") then
                toolref:Add(v1.Name)
              end
            end
          end
        end)
      end)
  end)
  Player.Backpack.ChildAdded:connect(function(v)
    if v:IsA("Tool") then
      toolref:Clear()
      for i, v1 in pairs(Player.Backpack:GetChildren()) do
        if v1:IsA("Tool") then
          toolref:Add(v1.Name)
        end
      end
    end
  end)
  Player.Backpack.ChildRemoved:connect(function(v)
    if v:IsA("Tool") then
      toolref:Clear()
      for i, v1 in pairs(Player.Backpack:GetChildren()) do
        if v1:IsA("Tool") then
          toolref:Add(v1.Name)
        end
      end
    end
  end)
  mainx:Toggle("Weapons Equip",true,shared.JoJoBlox["Player"]["Equip"],function(farmtype)
    weaponequip = farmtype
    shared.JoJoBlox["Player"]["Equip"] = weaponequip
    SaveSettings()
  end)
  mainx:Label("___________________________________________________")
  --- Ui Spawn Misc 
  miscfarm:Toggle("Teleport IsLand",true,shared.JoJoBlox["Player"]["teleportisland"],function(farmmoneytype)
    teleportisland = farmmoneytype
    shared.JoJoBlox["Player"]["teleportisland"] =teleportisland
    SaveSettings()
  end)
  miscfarm:Label("___________________________________________________")
  miscfarm:Toggle("Zamus Farm",true,shared.JoJoBlox["Player"]["Zamus Farm"],function(farmmoneytype)
    zamusfarm = farmmoneytype
    shared.JoJoBlox["Player"]["Zamus Farm"] = zamusfarm
    SaveSettings()
  end)
  miscfarm:Toggle("Tusk Farm",true,shared.JoJoBlox["Player"]["Tusk Farm"],function(farmmoneytype)
    tuskfarm = farmmoneytype
    shared.JoJoBlox["Player"]["Tusk Farm"] = tuskfarm
    SaveSettings()
  end)
  miscfarm:Toggle("The Emperor Farm",true,shared.JoJoBlox["Player"]["The Emperor Farm"],function(farmmoneytype)
    emperrorfarm = farmmoneytype
    shared.JoJoBlox["Player"]["The Emperor Farm"] = emperrorfarm
    SaveSettings()
  end)
  miscfarm:Toggle("SPOH DUPE SKILL",true,shared.JoJoBlox["Player"]["SPOH DUPE SKILL"],function(farmmoneytype)
    starploh = farmmoneytype
    shared.JoJoBlox["Player"]["SPOH DUPE SKILL"] = starploh
    SaveSettings()
  end)
  miscfarm:Label("___________________________________________________")
  miscfarm:Dropdown("Select Quest",questshow,function(settingfarm)
    questselectq = settingfarm
  end)
  miscfarm:Toggle("Quest Auto",true,shared.JoJoBlox["Player"]["Questauto"],function(farmmoneytype)
    autoquest = farmmoneytype
    shared.JoJoBlox["Player"]["Questauto"] = starploh
    SaveSettings()
  end)
  --- Ui Spawm teleportx
  local time = Misc:Label("nil")
  Misc:Label("___________________________________________________")
  Misc:Dropdown("Select Map",teleportshow,function(tpselection)
    userteleport = tpselection
  end)
  Misc:Button("Teleport Click",function()
    for i,v in pairs(teleportmap) do
      if i == game.PlaceId then
        for i1,v1 in pairs(v) do
          if i1 == userteleport then
            Player.Character.HumanoidRootPart.CFrame = v1
          end
        end
      end
    end
  end)
  Misc:Label("___________________________________________________")
  Misc:Button("Tp Italy",function()
    game:GetService("ReplicatedStorage").RS.Travl:FireServer("Italy")
  end)
  Misc:Button("ReJoin",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
  end)
  Misc:Label("___________________________________________________")
  Misc:Toggle("Chest Farm",true,shared.JoJoBlox["Player"]["Chest"],function(farmmoneytype)
    chestfarm = farmmoneytype
    shared.JoJoBlox["Player"]["Chest"] = chestfarm
    SaveSettings()
  end)
  Misc:Toggle("Tp Arrow",true,shared.JoJoBlox["Player"]["Tp Arrow"],function(farmmoneytype)
    arrow = farmmoneytype
    shared.JoJoBlox["Player"]["Tp Arrow"] = arrow
    SaveSettings()
  end)
  Misc:Toggle("Tp Rebirth Arrow",true,shared.JoJoBlox["Player"]["Tp Rebirth Arrow"],function(farmmoneytype)
    rebirth = farmmoneytype
    shared.JoJoBlox["Player"]["Tp Rebirth Arrow"] = rebirth
    SaveSettings()
  end)
  Misc:Label("___________________________________________________")
  local dashnos = nil
  local statattack,statstamina,stathealth,statgenre = nil , nil , nil ,nil
  Misc:Toggle("Dash Inf",true,shared.JoJoBlox["Player"]["Dash Inf"],function(Misctype)
    dashnos = Misctype
    shared.JoJoBlox["Player"]["Dash Inf"] = dashnos
    SaveSettings()
  end)
  Misc:Toggle("Stat Attack",true,shared.JoJoBlox["Player"]["Stat Attack"],function(Misctype)
    statattack = Misctype
    shared.JoJoBlox["Player"]["Stat Attack"] = statattack
    SaveSettings()
  end)
  Misc:Toggle("Stat Stamina",true, shared.JoJoBlox["Player"]["Stat Stamina"],function(Misctype)
    statstamina = Misctype
    shared.JoJoBlox["Player"]["Stat Stamina"] = statstamina
    SaveSettings()
  end)
  Misc:Toggle("Stat Health",true,shared.JoJoBlox["Player"]["Stat Health"],function(Misctype)
    stathealth = Misctype
    shared.JoJoBlox["Player"]["Stat Health"] = stathealth
    SaveSettings()
  end)
  Misc:Toggle("Stat Genre",true,shared.JoJoBlox["Player"]["Stat Genre"],function(Misctype)
    statgenre = Misctype
    shared.JoJoBlox["Player"]["Stat Genre"] = statgenre
    SaveSettings()
  end)
local function statx(v)
  game:GetService("ReplicatedStorage").RS.OnLevel:FireServer(v,1)
end
  spawn(function ()
    while true do
      if statattack then
        pcall(function ()
          statx("AttackLevel")
        end)
      end
      if statstamina then
        pcall(function ()
          statx("StaminaLevel")
        end)
      end
      if stathealth then
        pcall(function ()
          statx("HealthLevel")
        end)
      end
      if statgenre then
        pcall(function ()
          statx("GenreLevel")
        end)
      end
      wait()
    end
  end)
  Misc:Label("___________________________________________________")
  Misc:Label("Notify Item")
  Misc:Textbox("Webhook Notify (Enter)",false,function(farmhelp)
    Webhookitem = farmhelp
    shared.JoJoBlox["Player"]["Webhook"] = Webhookitem
    SaveSettings()
  end)
  Misc:Button("Test Webhook",function()
    lib:notification("Done")
    local PlayerData = {
      ["content"] = "",
      ["embeds"] = {{
          ["title"] = "__**SKYHUB NOTIFY:**__",
          ["description"] = "Test Webhook Lvl",
          ["type"] = "rich",
          ["color"] = tonumber(0xFF00FF),
          ["fields"] = {
              {
                  ["name"] = "Username:",
                  ["value"] = "||" .. Player.Name .. "||" .. " " .. "<@" .. getgenv().id ..">",
                  ["inline"] = false
              },
              {
                  ["name"] = "Play Time:",
                  ["value"] = "⏱ Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .." ⏱",
                  ["inline"] = false
              },			
          },
      }}
  }
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request;
      if syn then
          HttpRequest = syn.request
          else
          HttpRequest = http_request
      end
      HttpRequest({Url=Webhookitem, Body=PlayerData, Method="POST", Headers={["content-type"] = "application/json"}})
  end)
  --- Ui Spawn Setting
  setting:Dropdown("Select Method",methodshow,function(settingfarm)
    methodfarm = settingfarm
    shared.JoJoBlox["Setting Farm"]["SelectMethod"] = methodfarm
    SaveSettings()
  end)
  setting:Dropdown("Select Mode",modeshow,function(settingfarm)
    modefarm = settingfarm
    shared.JoJoBlox["Setting Farm"]["SelectMode"] = modefarm
    SaveSettings()
  end)
  setting:Slider("Distance",0,10,function(settingfarm)
    distance = settingfarm
    shared.JoJoBlox["Setting Farm"]["Distance"] = distance
    SaveSettings()
  end)
  --- Ui Spawn Playerx
  local speed = 20
  local jumppower = 50
  Playerx:Slider("WalkSpeed",10,500,function(Speex)
    speed = Speex
  end)
  Playerx:Slider("JumpPower",10,500,function(Speex)
    jumppower = Speex
  end)
  spawn(function ()
    while true do
      pcall(function ()
        Player.Character.Humanoid.WalkSpeed = speed
        Player.Character.Humanoid.JumpPower = jumppower
      end)
      wait()
    end
  end)
  -- Function
  local function warpmob(Onemob, Namemob)
    for i,v in pairs(Work.NPCS:GetChildren()) do
        if v.Name == Namemob then
            v.HumanoidRootPart.CanCollide = false
            v.HumanoidRootPart.CFrame = Onemob
        end
    end
  end
  local function UpdateTime()
    GameTime = math.floor(workspace.DistributedGameTime+0.5)
    Hour = math.floor(GameTime/(60^2))%24
    Minute = math.floor(GameTime/(60^1))%60
    Second = math.floor(GameTime/(60^0))%60
    time:Change("|  Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .."  |")
  end
  local function taskshot(Position1)
    Replicate.RS.HKM4146Tusk4:FireServer("",Position1,Vector3.new(0,0,0),true,true)
  end
  local function theemperrorshot(Position1)
    Replicate.RS.HKM4146:FireServer("",Position1,Vector3.new(0,0,0),false,true,false)
  end
  local function checkexp()
    local lvlnumber = string.match(Player.PlayerGui.SG.Main.Main.ML.LevelText.Text,"%d+")
      lvlreal = tonumber(lvlnumber)
        if game.PlaceId == 3400631762 then
            if lvlreal >= 1 and lvlreal < 10 then
              Namemoblvl = "Thug [Level 5]"
              checklvl = "Thug"
              TeleportCFrame = CFrame.new(-33.4207344, 2.92533088, 111.467667)
            elseif lvlreal >= 10 and lvlreal < 20 then
              Namemoblvl = "HamonUser [Level 15]"
              checklvl = "HamonUser"
              TeleportCFrame = CFrame.new(-33.4207344, 2.92533088, 111.467667)
            elseif lvlreal >= 20 and lvlreal < 30 then
              Namemoblvl = "Gryphon [Level 30]"
              checklvl = "Gryphons"
              TeleportCFrame = CFrame.new(819.60345458984, 36.182655334473, 17.691034317017)
            elseif lvlreal >= 30 and lvlreal < 40 then
              Namemoblvl = "Vampire [Level 40]"
              checklvl = "Vampire"
              TeleportCFrame = CFrame.new(819.60345458984, 36.182655334473, 17.691034317017)
            elseif lvlreal >= 40 and lvlreal < 55 then
              Namemoblvl = "Snow Thug [Level 50]"
              checklvl = "SnowThug"
              TeleportCFrame = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
            elseif lvlreal >= 55 and lvlreal < 90 then
              Namemoblvl = "Snowman [Level 65+]"
              checklvl = "Snowman"
              TeleportCFrame = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
            elseif lvlreal >= 90 and lvlreal < 110 then
              Namemoblvl = "Desert Bandit [Level 95]"
              checklvl = "Desert Bandit"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 110 and lvlreal < 140 then
              Namemoblvl = "Desert Monster [Level 120]"
              checklvl = "Desert Monster"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 140 and lvlreal < 170 then
              Namemoblvl = "Dio Guard [Level 165]"
              checklvl = "Dio Guard"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 170 and lvlreal < 250 then
              Namemoblvl = "Dio Royal Guard [Level  180]"
              checklvl = "Dio Royal Guard"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 250 and lvlreal < 275  then
              Namemoblvl = "School Bully  [Level 270]"
              checklvl = "School Bully"
              TeleportCFrame = CFrame.new(127626.414, 398.703003, -171.807999)
            elseif lvlreal >= 275 and lvlreal < 300 then
              Namemoblvl = "City Criminal  [Level 280]"
              checklvl = "City Criminal"
              TeleportCFrame = CFrame.new(127704.9765625, 399.37152099609, 107.26459503174)
            elseif lvlreal >= 300 and lvlreal < 740 then
              Namemoblvl = "Criminal Master [Level 300]"
              checklvl = "Criminal Master"
              TeleportCFrame = CFrame.new(128236.5859375, 399.37142944336, 537.9013671875)
            elseif lvlreal >= 740 and lvlreal < 780 then
              Namemoblvl = "Magma Guard [Level 740]"
              checklvl = "Magma Guard"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 780 and lvlreal < 810 then
              Namemoblvl = "Magma Monster [Level 780]"
              checklvl = "Magma Monster"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 810 and lvlreal < 860 then
              Namemoblvl = "Ice Beast[Level 810]"
              checklvl = "Ice Beast"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 860 and lvlreal < 900 then
              Namemoblvl = "Elite Beast[Level 860]"
              checklvl = "Elite Beast"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 900  then
              Namemoblvl = "Beast Master[Level 900+]"
              checklvl = "Beast Master"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            end
          elseif game.PlaceId == 4313854107 then
            if lvlreal >= 400 and lvlreal < 420 then
              Namemoblvl = "Police Man [Level 400]"
               checklvl = "Police Man"
            elseif lvlreal >= 420 and lvlreal < 440 then
              Namemoblvl = "Special Force [Level 425]"
               checklvl = "Special Force"
            elseif lvlreal >= 440 and lvlreal < 460 then
              Namemoblvl = "Gangster  [Level 450]"
               checklvl = "Gangster"
            elseif lvlreal >= 460 and lvlreal < 480 then
              Namemoblvl = "Mafia  [Level 475]"
               checklvl = "Mafia"
            elseif lvlreal >= 480 and lvlreal < 600 then
              Namemoblvl = "Elite Mafia [Level 500]"
               checklvl = "Elite Mafia"
            elseif lvlreal >= 600 and lvlreal < 625 then
              Namemoblvl = "Newbie Prisoner"
               checklvl = "Newbie Prisoner"
            elseif lvlreal >= 625 and lvlreal < 650 then
              Namemoblvl = "Prisoner"
               checklvl = "Prisoner"
            elseif lvlreal >= 650 and lvlreal < 675 then
              Namemoblvl = "Strong Prisoner"
               checklvl = "Strong Prisoner"
            elseif lvlreal >= 675 then
              Namemoblvl = "Prison Guard"
              checklvl = "Prison Guard"
      end
    end
  end
  local function checkselect()
    if mobselectx == "Thug [Level 5]" then
      QuestSelectx = "Thug"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "HamonUser [Level 15]" then
      QuestSelectx = "HamonUser"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "Gryphon [Level 30]" then
      QuestSelectx = "Gryphons"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "Vampire [Level 40]" then
      QuestSelectx = "Vampire"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "Snow Thug [Level 50]" then
      QuestSelectx = "SnowThug"
      mobnotfindtp = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
    elseif mobselectx == "Snowman [Level 65+]" then
      QuestSelectx = "Snowman"
      mobnotfindtp = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
    elseif mobselectx == "Wamuu" then
      QuestSelectx = "Wamuu"
      mobnotfindtp = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
    elseif mobselectx == "Desert Bandit [Level 95]" then
      QuestSelectx = "Desert Bandit"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Desert Monster [Level 120]" then
      QuestSelectx = "Desert Monster"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Dio Guard [Level 165]" then
      QuestSelectx = "Dio Guard"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Dio Royal Guard [Level  180]" then
      QuestSelectx = "Dio Royal Guard"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Dio" then
      QuestSelectx = "Dio"
      mobnotfindtp = CFrame.new(40.619380950928, 46.328636169434, -4911.5278320313)
    elseif mobselectx == "School Bully  [Level 270]" then
      QuestSelectx = "School Bully"
      mobnotfindtp = CFrame.new(127626.414, 398.703003, -171.807999)
    elseif mobselectx == "City Criminal  [Level 280]" then
      QuestSelectx = "City Criminal"
      mobnotfindtp = CFrame.new(127704.9765625, 399.37152099609, 107.26459503174)
    elseif mobselectx == "Criminal Master [Level 300]" then
      QuestSelectx = "Criminal Master"
      mobnotfindtp = CFrame.new(128236.5859375, 399.37142944336, 537.9013671875)
    elseif mobselectx == "Kira" then
      QuestSelectx = "Kira"
      mobnotfindtp = CFrame.new(-7004.8881835938, -58.438232421875, 3112.3010253906)
    elseif mobselectx == "Magma Guard [Level 740]" then
      QuestSelectx = "Magma Guard"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Magma Monster [Level 780]" then
      QuestSelectx = "Magma Monster"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Ice Beast[Level 810]" then
      QuestSelectx = "Ice Beast"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Elite Beast[Level 860]" then
      QuestSelectx = "Elite Beast"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Beast Master[Level 900+]" then
      QuestSelectx = "Beast Master"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    end
  end
  local function questlvl()
    Replicate.RS.Quest:FireServer(checklvl)
  end
  local function questselect()
    Replicate.RS.Quest:FireServer(QuestSelectx)
  end
  local function questcancel() Replicate.RS.Quest:FireServer("Abort") end;
  local function getmoblvl(MobNamelock)
      local closestMobs = nil
      local shortestDistance = math.huge
      if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
          for i1, v1 in pairs(Work.NPCS:GetChildren()) do
              if v1.Name == MobNamelock and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and v1.Humanoid.Health > 0 then
                  local magnitude = Player:DistanceFromCharacter(v1:FindFirstChild("HumanoidRootPart").Position)
                      if tonumber(magnitude) < shortestDistance then
                      closestMobs = v1
                      shortestDistance = magnitude
                  end
              end
          end
      end
      return closestMobs
  end
  
  local function notfindcheck()
    if Work.NPCS[Namemoblvl]:FindFirstChild("HumanoidRootPart") then
    else
      Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
    end
  end
  local function notfindcheckx()
    if Work.NPCS[mobselectx]:FindFirstChild("HumanoidRootPart") then
    else
      Player.Character.HumanoidRootPart.CFrame = mobnotfindtp
    end
  end
  local function killaurax()
    local StandReally1,StandReally2 = nil,nil
    if Player.Character:FindFirstChild("Hamon") or Player.Backpack:FindFirstChild("Hamon") then
      StandReally1 = "Hamon"
      StandReally2 =  "Punch"
    elseif Player.Character:FindFirstChild("Hamon Requiem") or Player.Backpack:FindFirstChild("Hamon Requiem") then
      StandReally1 = "HamonRequiem"
      StandReally2 = "PunchRequiem"
    elseif Player.Character:FindFirstChild("Kars Hamon") or Player.Backpack:FindFirstChild("Kars Hamon") then
      StandReally1 = "KarsHamon"
      StandReally2 = "PunchKars"
    elseif Player.Character:FindFirstChild("Ultimate Life Form") or Player.Backpack:FindFirstChild("Ultimate Life Form") then
      StandReally1 = "ulf"
      StandReally2 = "PunchULF"
    elseif Player.Character:FindFirstChild("True Ultimate Life Form") or Player.Backpack:FindFirstChild("True Ultimate Life Form") then
      StandReally1 = "tulf"
      StandReally2 = "PunchTULF"
    end
    for i,v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
      if v:FindFirstChild"HumanoidRootPart" and (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 20 and v.Humanoid.Health > 0 then
        Replicate.RS.Damage:FireServer(v, 99999, 0,StandReally1, false,"Right" .. StandReally2 , game.Players.LocalPlayer.UserId * 11 - 12716)
        Replicate.RS.Damage:FireServer(v, 99999, 0, StandReally1 , false,"Left".. StandReally2, game.Players.LocalPlayer.UserId * 11 - 12716)
      end
  end
end 
  ---- Spawn Function
  spawn(function ()
    while true do
      if tuskfarm then
        pcall(function ()
          wait(0.050)
          taskshot(Vector3.new(91.2363358, 2.69755411, 148.228271))
          wait(0.050)
          taskshot(Vector3.new(-33.4615021, 24.0097408, -775.673157))
          wait(0.050)
          taskshot(Vector3.new(-183.338058, 23.005373, -1695.74512))
          wait(0.050)
          taskshot(Vector3.new(127646.125, 398.320374, 51.8569183))
          wait(0.050)
          taskshot(Vector3.new(128072.672, 397.356537, 592.755432))
          wait(0.050)
          taskshot(Vector3.new(128098.25, 398.923645, -25.6223488))
          wait(0.050)
          taskshot(Vector3.new(-211.665375, -70.2623062, 2421.49146))
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if killboss then
        pcall(function ()
            if Work.NPCS["Dio"]:FindFirstChild("HumanoidRootPart") or Work.NPCS["Wamuu"]:FindFirstChild("HumanoidRootPart") or Work.NPCS["Kira"]:FindFirstChild("HumanoidRootPart") then
              if methodfarm == "Above" then
                for i,v  in pairs(Work.NPCS:GetChildren()) do
                  if v.Name == "Dio" and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                      VirtualUser:CaptureController()
                         VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                      Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                    until v.Humanoid.Health <= 0 or not killboss 
                  elseif v.Name == "Dio" and not v:FindFirstChild("HumanoidRootPart") then
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-127.95372, 38.2173119, -4998.4917)
                  elseif v.Name == "Wamuu" and v:FindFirstChild("HumanoidRootPart")  then
                    repeat wait()
                      VirtualUser:CaptureController()
                         VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                      Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                    until v.Humanoid.Health <= 0 or not killboss 
                  elseif v.Name == "Wamuu" and not v:FindFirstChild("HumanoidRootPart")  then
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-45.5586, -46.5449, 2738.28)
                  elseif v.Name == "Kira" and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                      VirtualUser:CaptureController()
                         VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                      Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                    until v.Humanoid.Health <= 0 or not killboss 
                  elseif v.Name == "Kira" and not v:FindFirstChild("HumanoidRootPart")  then
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-7004.8881835938, -58.438232421875, 3112.3010253906)
                  end
                end
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
        if weaponequip then
        pcall(function ()
            local backpack = Player.Backpack
            local players = Player.Character.Humanoid
            players:EquipTool(backpack[weaponselect])
         end)
        end
      wait(1)
    end
  end)
  spawn(function ()
    while true do
      if chestfarm then
        pcall(function ()
            for i,v in pairs(game:GetService("Workspace").Chest1.ChestPos:GetChildren()) do
              if v:IsA("Part") then
                Player.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-2,0)
              end
            end
          end)
        end
      wait()
    end
  end)
 
  spawn(function ()
    while true do
      if GoItaly then
        pcall(function ()
            if tonumber(string.match(Player.PlayerGui.SG.Main.Main.ML.LevelText.Text,"%d+")) >= 400 and tonumber(string.match(Player.PlayerGui.SG.Main.Main.ML.LevelText.Text,"%d+")) < 740 then
              game:GetService("ReplicatedStorage").RS.Travl:FireServer("Italy")
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if arrow then
        pcall(function ()
            for i,v in pairs(game:GetService("Workspace").Arrows:GetChildren()) do
              if v.Name == "Arrow" then
                Player.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if rebirth then
        pcall(function ()
            for i,v in pairs(game:GetService("Workspace").Arrows:GetChildren()) do
              if v.Name == "Rebirth Arrow" then
                Player.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if farmselect then
        pcall(function ()
          checkselect()
            notfindcheckx()
          if modefarm == "Magnet" then
            if methodfarm == "Above" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                        VirtualUser:CaptureController()
                     VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                  warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Above" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
              end
            elseif methodfarm == "Behind"  then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                   questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                      local tpmob = getmoblvl(mobselectx)
                        repeat wait()
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,0,distance) 
                  warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Behind" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            elseif methodfarm == "Under" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                        VirtualUser:CaptureController()
                      VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                    Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                    warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                  until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Under" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
                end
              end 
          elseif modefarm == "Dont Magnet" then
            if methodfarm == "Above" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                        VirtualUser:CaptureController()
                     VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Above" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
              end
            elseif methodfarm == "Behind"  then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                   questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                      local tpmob = getmoblvl(mobselectx)
                        repeat wait()
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,0,distance) 
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Behind" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            elseif methodfarm == "Under" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                        VirtualUser:CaptureController()
                      VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                    Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                  until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Under" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
                end
              end   
            end
        end)
      end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if emperrorfarm then
        pcall(function ()
          wait(0.175)
          theemperrorshot(Vector3.new(86.2681274, 3.78871512, 137.216324))
          wait(0.175)
          theemperrorshot(Vector3.new(476.794983, 7.20328474, 129.053162))
          wait(0.175)
          theemperrorshot(Vector3.new(573.464417, 7.18064451, 74.2611694))
          wait(0.175)
          theemperrorshot(Vector3.new(-63.3632088, 25.2007675, -799.841309))
          wait(0.175)
          theemperrorshot(Vector3.new(32.7559166, -16.6108704, 5577.87549))
          wait(0.175)
          theemperrorshot(Vector3.new(-20.2614098, 73.8269501, 5867.44141))
          wait(0.175)
          theemperrorshot(Vector3.new(128024.313, 399.458832, -6.2976222))
          wait(0.175)
          theemperrorshot(Vector3.new(128168.023, 398.887329, 358.133728))
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if killaura then
        pcall(function ()
          killaurax()
        end)
      end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if starploh then
        pcall(function ()
          Replicate.RS.LightningSky:FireServer("$!@M@$!")
        end)
      end
      wait()
    end
  end)

  spawn(function ()
    while true do
      if zamusfarm then
        pcall(function ()
          for i,v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
            if v:IsA("Model") then
                Replicate.RS.SwordsRemotes.TimeSlicer:FireServer(1,{v})
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
        if teleportisland then
          pcall(function ()
            repeat wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
            wait(3)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            wait(3)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127626.414, 398.703003, -171.807999)
            wait(3)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            wait(3)
            until not teleportisland
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if Invisible then
        pcall(function ()
          if Player.Character:FindFirstChild("LowerTorso") then
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(325.303925, 3.24370503, 275.505615)
            wait()
            Player.Character:FindFirstChild("LowerTorso"):Destroy()
          end
        end)
      end
      wait()
    end
  end)
spawn(function ()
  while true do
    if autoquest then
      pcall(function ()
        if Player.PlayerGui.SG.Quest.Frame.Visible == false then
          Replicate.RS.Quest:FireServer(questselectq)
            elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,questselectq) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
              questcancel()
          end
        end)
      end
    wait()
  end
end)
spawn(function()
  while true do
    if farmlvl then
      pcall(function()
        checkexp()
          notfindcheck()
        if modefarm == "Magnet" then
          if methodfarm == "Above" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                         
                      VirtualUser:CaptureController()
                   VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Above" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
            end
          elseif methodfarm == "Behind"  then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                 questcancel()
                  elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                    local tpmob = getmoblvl(Namemoblvl)
                      repeat wait()
                      
                    VirtualUser:CaptureController()
                  VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,0,distance)
                warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Behind" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
            end
          elseif methodfarm == "Under" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                  warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Under" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            end 
        elseif modefarm == "Dont Magnet" then
          if methodfarm == "Above" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                      VirtualUser:CaptureController()
                   VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Above" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
            end
          elseif methodfarm == "Behind"  then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                 questcancel()
                  elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                    local tpmob = getmoblvl(Namemoblvl)
                      repeat wait()
                    VirtualUser:CaptureController()
                  VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,0,distance) 
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Behind" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
            end
          elseif methodfarm == "Under" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Under" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            end   
          end
        end)
      end
    wait()
  end
end)
spawn(function ()
  while true do
    if modefarm == "Magnet" then
      pcall(function ()
        setsimulationradius(math.huge,math.huge)
      end)
    end
    wait(1.5)
  end
end)
local function destroybug(indexuse)
for i,v in pairs(Work.NPCS:GetDescendants()) do
  if v:FindFirstChild("Index") and v.Index.Value == indexuse then
    v:Destroy()
  end
end
end
destroybug(13)
destroybug(57)
spawn(function()
  while true do
      wait()
      pcall(function ()
         UpdateTime()
         game:GetService("RunService").RenderStepped:Wait()
      end)
  end
end)

  game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
        repeat wait(1) until Player.Backpack
        Player.Backpack.ChildAdded:connect(function(v)
          if v:IsA("Tool") then
          local PlayerData = {
          ["content"] = "",
          ["embeds"] = {{
              ["title"] = "__**SKYHUB NOTIFY:**__",
              ["description"] = "Item: " ..v.Name,
              ["type"] = "rich",
              ["color"] = tonumber(0xFF00FF),
              ["fields"] = {
                  {
                      ["name"] = "Username:",
                      ["value"] = "||" .. Player.Name .. "||" .. " " .. "<@" .. getgenv().id ..">",
                      ["inline"] = false
                  },
                  {
                      ["name"] = "Play Time:",
                      ["value"] = "⏱ Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .." ⏱",
                      ["inline"] = false
                  },			
              },
          }}
        }
          local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
          local HttpRequest = http_request;
          if syn then
              HttpRequest = syn.request
              else
              HttpRequest = http_request
          end
          HttpRequest({Url=Webhookitem, Body=PlayerData, Method="POST", Headers={["content-type"] = "application/json"}})
          end
        end)
  end)
  Player.Backpack.ChildAdded:connect(function(v)
    if v:IsA("Tool") then
    local PlayerData = {
    ["content"] = "",
    ["embeds"] = {{
        ["title"] = "__**SKYHUB NOTIFY:**__",
        ["description"] = "Item: " ..v.Name,
        ["type"] = "rich",
        ["color"] = tonumber(0xFF00FF),
        ["fields"] = {
            {
                ["name"] = "Username:",
                ["value"] = "||" .. Player.Name .. "||" .. " " .. "<@" .. getgenv().id ..">",
                ["inline"] = false
            },
            {
                ["name"] = "Play Time:",
                ["value"] = "⏱ Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .." ⏱",
                ["inline"] = false
            },			
        },
    }}
  }
    local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
    local HttpRequest = http_request;
    if syn then
        HttpRequest = syn.request
        else
        HttpRequest = http_request
    end
    HttpRequest({Url=Webhookitem, Body=PlayerData, Method="POST", Headers={["content-type"] = "application/json"}})
    end
  end)
game:getService("RunService"):UnbindFromRenderStep("noclOppl")
  game:getService("RunService"):BindToRenderStep("noclOppl",0,function()
      pcall(function()
          local char = Player.Character or Player.CharacterAdded:Wait()
            if farmlvl == true then char.Humanoid:ChangeState(11) end
            if farmselect == true then char.Humanoid:ChangeState(11) end
          if killboss == true then char.Humanoid:ChangeState(11) end
  end)
end)
local GODBYSKYx = nil
GODBYSKYx = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...)
  if self.Name == "StaminaWaste" and dashnos == true  then
    return nil
  end
  return GODBYSKYx(self, ...)
end))
spawn(function ()
  while true do
    pcall(function ()
      VirtualUser:CaptureController()
      VirtualUser:SetKeyDown("w",key)
      wait()
      VirtualUser:CaptureController()
      VirtualUser:SetKeyUp("w",key)
    end)
    wait(120)
  end
end)

elseif game.PlaceId == 4313854107 then
  local lib = loadstring(game:HttpGet('http://skyhubking.xyz/script/uifolder/ui.lua'))()
  local spawnui = lib:MainWindow("JoJo Blox")
  -- Spawn Ui 
  local mainx = spawnui:Tab("Main","http://www.roblox.com/asset/?id=6023426915")
  local miscfarm = spawnui:Tab("Farm Money","http://www.roblox.com/asset/?id=6022668888")
  local setting = spawnui:Tab("Setting Farm","http://www.roblox.com/asset/?id=6022668888")
  local Misc = spawnui:Tab("Misc","http://www.roblox.com/asset/?id=6022668888")
  local Playerx = spawnui:Tab("Players","http://www.roblox.com/asset/?id=6022668888")
-- Variables Value 
local Player = game:GetService("Players").LocalPlayer
local Work = game:GetService("Workspace")
local Replicate = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
--- Variables No Value
local lvlreal = nil
local GoMorioh = shared.JoJoBlox["Player"]["GoNewWorld"]
local arrow = nil
local rebirth = nil
local chestfarm = nil
local mobnotfindtp = nil
local QuestSelectx = nil
local teleportisland = nil
local zamusfarm = nil
local mobselectx = shared.JoJoBlox["Player"]["MobSelect"] 
local tuskfarm = nil
local emperrorfarm = nil
local Namemoblvl = nil
local checklvl = nil
local TeleportCFrame = nil
local farmlvl = shared.JoJoBlox["Player"]["Farmlvl"]
local farmselect = nil
local methodfarm = shared.JoJoBlox["Setting Farm"]["SelectMethod"]
local distance = shared.JoJoBlox["Setting Farm"]["Distance"]
local killaura = shared.JoJoBlox["Player"]["Killaura"]
local Invisible = shared.JoJoBlox["Player"]["Invisible"]
local modefarm = shared.JoJoBlox["Setting Farm"]["SelectMode"]
local autoquest = nil
local starploh = nil
local weaponselect = shared.JoJoBlox["Player"]["Weapon"]
local weaponequip = shared.JoJoBlox["Player"]["Equip"]
local questselectq = shared.JoJoBlox["Player"]["Quest"] 
local userteleport = nil
local killboss = shared.JoJoBlox["Player"]["Kill All Boss"]
local Webhookitem = shared.JoJoBlox["Player"]["Webhook"]
local GameTime = 0
local Hour = 0
local Minute = 0
local Second = 0
  --- Table 
  local weapon = {}
  local mobselect = {
    [3400631762] = {
      ["MobName"] = {
      "Thug [Level 5]",
      "HamonUser [Level 15]",
      "Gryphon [Level 30]",
      "Vampire [Level 40]",
      "Snow Thug [Level 50]",
      "Snowman [Level 65+]",
      "Desert Bandit [Level 95]",
      "Desert Monster [Level 120]",
      "Dio Guard [Level 165]",
      "Dio Royal Guard [Level  180]",
      "School Bully  [Level 270]",
      "City Criminal  [Level 280]",
      "Criminal Master [Level 300]",
      "Magma Guard [Level 740]",
      "Magma Monster [Level 780]",
      "Ice Beast[Level 810]",
      "Elite Beast[Level 860]",
      "Beast Master[Level 900+]"
      },
      ["Quest"] = {
        "Thug",
        "HamonUser",
        "Gryphons",
        "Vampire",
        "SnowThug",
        "Snowman",
        "Desert Bandit",
        "Desert Monster",
        "Dio Guard",
        "Dio Royal Guard",
        "School Bully",
        "City Criminal",
        "Criminal Master",
        "Magma Guard",
        "Magma Monster",
        "Ice Beast",
        "Elite Beast",
        "Beast Master"
      }
    },
    [4313854107] = {
      ["MobName"] = {
      "Police Man [Level 400]",
      "Special Force [Level 425]",
      "Gangster  [Level 450]",
      "Mafia  [Level 475]",
      "Elite Mafia [Level 500]",
      "Newbie Prisoner",
      "Prisoner",
      "Strong Prisoner",
      "Prison Guard"
      },
      ["Quest"] = {
        "Police Man",
        "Special Force",
        "Gangster",
        "Mafia",
        "Elite Mafia",
        "Newbie Prisoner",
        "Prisoner",
        "Strong Prisoner",
        "Prison Guard"
      }
    }
  }
  local teleportmap = {
    [3400631762] = {
      ["SPAWN"] =  CFrame.new(-9.63145161, 12.041152, 155.166855),
      ["FOREST"] = CFrame.new(610.230347, 8.12037373, -51.1824532),
      ["SNOWLAND"] =  CFrame.new(-40.2136078, -68.4283447, 2406.25024),
      ["MAGMALAND"] = CFrame.new(41.0915565, -23.9860153, 5595.26611),
      ["DESERT"] = CFrame.new(-197.741608, 26.0991955, -1752.75647),
      ["MORIOH"] = CFrame.new(127626.414, 398.703003, -171.807999),
      ["SP HEAVEN"] = CFrame.new(-249.153275, 14.1989784, -204.13324),
      ["INVENTORY"] = CFrame.new(-27.6116695, 4.64919853, 164.684158),
      ["BACKBACK"] = CFrame.new(-77.8702774, 4.64919853, 102.319382),
    },
    [4313854107] = {
      ["SPAWN"] =  CFrame.new(77.515831, 626.222412, -1166.46448),
      ["PRISON"] =  CFrame.new(6465.05127, 681.794006, 1659.32166),
      ["INVENTORY"] =  CFrame.new(49.4778633, 626.222229, -1207.34668),
      ["BACKBACK"] =  CFrame.new(107.4981, 626.222229, -1200.10022),
    }
  }
  local methodshow = {
    "Above",
    "Behind",
    "Under"
  }
  local modeshow = {
    "Magnet",
    "Dont Magnet",
  }
  local questshow = {}
  local mobshow = {}
  local teleportshow = {}
  for i, v in pairs(Player.Backpack:GetChildren()) do
    if v:IsA("Tool") then 
        table.insert(weapon, v.Name)
    end 
  end
for i,v in pairs(mobselect) do
  if i == game.PlaceId then
    for i1,v1 in pairs(v) do
      if i1 == "MobName" then
        for i2,v2 in pairs(v1) do
          table.insert(mobshow,v2)
        end
      end
    end
  end
end
for i,v in pairs(teleportmap) do
  if i == game.PlaceId then
    for i1,v1 in pairs(v) do
      table.insert(teleportshow,i1)
    end
  end
end
for i,v in pairs(mobselect) do
  if i == game.PlaceId then
    for i1,v1 in pairs(v) do
      if i1 == "Quest" then
        for i2,v2 in pairs(v1) do
          table.insert(questshow,v2)
        end
      end
    end
  end
end
    --- Ui Spawn Main
    local helpfarm = mainx:AddFolder("Help Farm")
    helpfarm:Toggle("Kill Aura",true,shared.JoJoBlox["Player"]["Killaura"],function(helptype)
      killaura = helptype
      shared.JoJoBlox["Player"]["Killaura"] = helptype
      SaveSettings()
    end)
    helpfarm:Toggle("Invisible Mode",true,shared.JoJoBlox["Player"]["Invisible"],function(helptype)
      Invisible = helptype
      shared.JoJoBlox["Player"]["Invisible"] = helptype
      SaveSettings()
    end)
    helpfarm:Toggle("Go Italy",true,shared.JoJoBlox["Player"]["GoNewWorld"],function(helptype)
      GoMorioh = helptype
      shared.JoJoBlox["Player"]["GoNewWorld"] = helptype
      SaveSettings()
    end)
    mainx:Label("___________________________________________________")
    mainx:Toggle("Farm lvl",true,shared.JoJoBlox["Player"]["Farmlvl"],function(farmtype)
      farmlvl = farmtype
      shared.JoJoBlox["Player"]["Farmlvl"] = farmtype
      SaveSettings()
    end)
    mainx:Label("___________________________________________________")
    --[[mainx:Dropdown("Select Mob",mobshow,function(farmtype)
      mobselectx = farmtype
      shared.JoJoBlox["Player"]["MobSelect"] = mobselectx
      SaveSettings()
    end)
    mainx:Toggle("Farm Select",true,shared.JoJoBlox["Player"]["FarmSelect"],function(farmtype)
      farmselect = farmtype
      shared.JoJoBlox["Player"]["FarmSelect"] = farmselect
      SaveSettings()
    end)]]
    mainx:Label("___________________________________________________")
    local toolref = mainx:Dropdown("Select Weapons",weapon,function(farmtype)
      weaponselect = farmtype
      shared.JoJoBlox["Player"]["Weapon"] = weaponselect
      SaveSettings()
    end)
  game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
      repeat wait(1) until Player.Backpack
      pcall(function ()
        Player.Backpack.ChildAdded:connect(function(v)
          if v:IsA("Tool") then
            toolref:Clear()
            for i, v1 in pairs(Player.Backpack:GetChildren()) do
              if v1:IsA("Tool") then
                toolref:Add(v1.Name)
              end
            end
          end
        end)
        Player.Backpack.ChildRemoved:connect(function(v)
          if v:IsA("Tool") then
            toolref:Clear()
            for i, v1 in pairs(Player.Backpack:GetChildren()) do
              if v1:IsA("Tool") then
                toolref:Add(v1.Name)
              end
            end
          end
        end)
      end)
  end)
  Player.Backpack.ChildAdded:connect(function(v)
    if v:IsA("Tool") then
      toolref:Clear()
      for i, v1 in pairs(Player.Backpack:GetChildren()) do
        if v1:IsA("Tool") then
          toolref:Add(v1.Name)
        end
      end
    end
  end)
  Player.Backpack.ChildRemoved:connect(function(v)
    if v:IsA("Tool") then
      toolref:Clear()
      for i, v1 in pairs(Player.Backpack:GetChildren()) do
        if v1:IsA("Tool") then
          toolref:Add(v1.Name)
        end
      end
    end
  end)
  mainx:Toggle("Weapons Equip",true,true,function(farmtype)
    weaponequip = farmtype
  end)
  mainx:Label("___________________________________________________")
  --- Ui Spawn Misc 
  mainx:Toggle("Weapons Equip",true,shared.JoJoBlox["Player"]["Equip"],function(farmtype)
    weaponequip = farmtype
    shared.JoJoBlox["Player"]["Equip"] = weaponequip
    SaveSettings()
  end)
  mainx:Label("___________________________________________________")
  --- Ui Spawn Misc 
  
  miscfarm:Toggle("Zamus Farm",true,shared.JoJoBlox["Player"]["Zamus Farm"],function(farmmoneytype)
    zamusfarm = farmmoneytype
    shared.JoJoBlox["Player"]["Zamus Farm"] = zamusfarm
    SaveSettings()
  end)
  miscfarm:Toggle("SPOH DUPE SKILL",true,shared.JoJoBlox["Player"]["SPOH DUPE SKILL"],function(farmmoneytype)
    starploh = farmmoneytype
    shared.JoJoBlox["Player"]["SPOH DUPE SKILL"] = starploh
    SaveSettings()
  end)
  miscfarm:Label("___________________________________________________")
  miscfarm:Dropdown("Select Quest",questshow,function(settingfarm)
    questselectq = settingfarm
  end)
  miscfarm:Toggle("Quest Auto",true,shared.JoJoBlox["Player"]["Questauto"],function(farmmoneytype)
    autoquest = farmmoneytype
    shared.JoJoBlox["Player"]["Questauto"] = starploh
    SaveSettings()
  end)
  --- Ui Spawm teleportx
  local time = Misc:Label("nil")
  Misc:Label("___________________________________________________")
  Misc:Dropdown("Select Map",teleportshow,function(tpselection)
    userteleport = tpselection
  end)
  Misc:Button("Teleport Click",function()
    for i,v in pairs(teleportmap) do
      if i == game.PlaceId then
        for i1,v1 in pairs(v) do
          if i1 == userteleport then
            Player.Character.HumanoidRootPart.CFrame = v1
          end
        end
      end
    end
  end)
  Misc:Label("___________________________________________________")
  Misc:Button("ServerHop",function()
    game:GetService("ReplicatedStorage").RS.Travl:FireServer("Italy")
  end)
  Misc:Button("ReJoin",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
  end)
  Misc:Label("___________________________________________________")
  local dashnos = nil
  local statattack,statstamina,stathealth,statgenre = nil , nil , nil ,nil
  Misc:Toggle("Dash Inf",true,shared.JoJoBlox["Player"]["Dash Inf"],function(Misctype)
    dashnos = Misctype
    shared.JoJoBlox["Player"]["Dash Inf"] = dashnos
    SaveSettings()
  end)
  Misc:Toggle("Stat Attack",true,shared.JoJoBlox["Player"]["Stat Attack"],function(Misctype)
    statattack = Misctype
    shared.JoJoBlox["Player"]["Stat Attack"] = statattack
    SaveSettings()
  end)
  Misc:Toggle("Stat Stamina",true, shared.JoJoBlox["Player"]["Stat Stamina"],function(Misctype)
    statstamina = Misctype
    shared.JoJoBlox["Player"]["Stat Stamina"] = statstamina
    SaveSettings()
  end)
  Misc:Toggle("Stat Health",true,shared.JoJoBlox["Player"]["Stat Health"],function(Misctype)
    stathealth = Misctype
    shared.JoJoBlox["Player"]["Stat Health"] = stathealth
    SaveSettings()
  end)
  Misc:Toggle("Stat Genre",true,shared.JoJoBlox["Player"]["Stat Genre"],function(Misctype)
    statgenre = Misctype
    shared.JoJoBlox["Player"]["Stat Genre"] = statgenre
    SaveSettings()
  end)
local function statx(v)
  game:GetService("ReplicatedStorage").RS.OnLevel:FireServer(v,1)
end
  spawn(function ()
    while true do
      if statattack then
        pcall(function ()
          statx("AttackLevel")
        end)
      end
      if statstamina then
        pcall(function ()
          statx("StaminaLevel")
        end)
      end
      if stathealth then
        pcall(function ()
          statx("HealthLevel")
        end)
      end
      if statgenre then
        pcall(function ()
          statx("GenreLevel")
        end)
      end
      wait()
    end
  end)

  --- Ui Spawn Setting
  setting:Dropdown("Select Method",methodshow,function(settingfarm)
    methodfarm = settingfarm
    shared.JoJoBlox["Setting Farm"]["SelectMethod"] = methodfarm
    SaveSettings()
  end)
  setting:Dropdown("Select Mode",modeshow,function(settingfarm)
    modefarm = settingfarm
    shared.JoJoBlox["Setting Farm"]["SelectMode"] = modefarm
    SaveSettings()
  end)
  setting:Slider("Distance",0,10,function(settingfarm)
    distance = settingfarm
    shared.JoJoBlox["Setting Farm"]["Distance"] = distance
    SaveSettings()
  end)
  --- Ui Spawn Playerx
  local speed = 20
  local jumppower = 50
  Playerx:Slider("WalkSpeed",10,500,function(Speex)
    speed = Speex
  end)
  Playerx:Slider("JumpPower",10,500,function(Speex)
    jumppower = Speex
  end)
  spawn(function ()
    while true do
      pcall(function ()
        Player.Character.Humanoid.WalkSpeed = speed
        Player.Character.Humanoid.JumpPower = jumppower
      end)
      wait()
    end
  end)
  -- Function
  local function warpmob(Onemob, Namemob)
    for i,v in pairs(Work.NPCS:GetChildren()) do
        if v.Name == Namemob then
            v.HumanoidRootPart.CanCollide = false
            v.HumanoidRootPart.CFrame = Onemob
        end
    end
  end
  local function UpdateTime()
    GameTime = math.floor(workspace.DistributedGameTime+0.5)
    Hour = math.floor(GameTime/(60^2))%24
    Minute = math.floor(GameTime/(60^1))%60
    Second = math.floor(GameTime/(60^0))%60
    time:Change("|  Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .."  |")
  end
  local function taskshot(Position1)
    Replicate.RS.HKM4146Tusk4:FireServer("",Position1,Vector3.new(0,0,0),true,true)
  end
  local function theemperrorshot(Position1)
    Replicate.RS.HKM4146:FireServer("",Position1,Vector3.new(0,0,0),false,true,false)
  end
  local function checkexp()
    local lvlreal = tonumber(string.match(Player.PlayerGui.SG.Main.Main.ML.LevelText.Text,"%d+"))
        if game.PlaceId == 3400631762 then
            if lvlreal >= 1 and lvlreal < 10 then
              Namemoblvl = "Thug [Level 5]"
              checklvl = "Thug"
              TeleportCFrame = CFrame.new(-33.4207344, 2.92533088, 111.467667)
            elseif lvlreal >= 10 and lvlreal < 20 then
              Namemoblvl = "HamonUser [Level 15]"
              checklvl = "HamonUser"
              TeleportCFrame = CFrame.new(-33.4207344, 2.92533088, 111.467667)
            elseif lvlreal >= 20 and lvlreal < 30 then
              Namemoblvl = "Gryphon [Level 30]"
              checklvl = "Gryphons"
              TeleportCFrame = CFrame.new(-33.4207344, 2.92533088, 111.467667)
            elseif lvlreal >= 30 and lvlreal < 40 then
              Namemoblvl = "Vampire [Level 40]"
              checklvl = "Vampire"
              TeleportCFrame = CFrame.new(-33.4207344, 2.92533088, 111.467667)
            elseif lvlreal >= 40 and lvlreal < 55 then
              Namemoblvl = "Snow Thug [Level 50]"
              checklvl = "SnowThug"
              TeleportCFrame = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
            elseif lvlreal >= 55 and lvlreal < 90 then
              Namemoblvl = "Snowman [Level 65+]"
              checklvl = "Snowman"
              TeleportCFrame = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
            elseif lvlreal >= 90 and lvlreal < 110 then
              Namemoblvl = "Desert Bandit [Level 95]"
              checklvl = "Desert Bandit"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 110 and lvlreal < 140 then
              Namemoblvl = "Desert Monster [Level 120]"
              checklvl = "Desert Monster"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 140 and lvlreal < 170 then
              Namemoblvl = "Dio Guard [Level 165]"
              checklvl = "Dio Guard"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 170 and lvlreal < 250 then
              Namemoblvl = "Dio Royal Guard [Level  180]"
              checklvl = "Dio Royal Guard"
              TeleportCFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            elseif lvlreal >= 250 and lvlreal < 275  then
              Namemoblvl = "School Bully  [Level 270]"
              checklvl = "School Bully"
              TeleportCFrame = CFrame.new(127626.414, 398.703003, -171.807999)
            elseif lvlreal >= 275 and lvlreal < 300 then
              Namemoblvl = "City Criminal  [Level 280]"
              checklvl = "City Criminal"
              TeleportCFrame = CFrame.new(127704.9765625, 399.37152099609, 107.26459503174)
            elseif lvlreal >= 300 and lvlreal < 740 then
              Namemoblvl = "Criminal Master [Level 300]"
              checklvl = "Criminal Master"
              TeleportCFrame = CFrame.new(128236.5859375, 399.37142944336, 537.9013671875)
            elseif lvlreal >= 740 and lvlreal < 780 then
              Namemoblvl = "Magma Guard [Level 740]"
              checklvl = "Magma Guard"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 780 and lvlreal < 810 then
              Namemoblvl = "Magma Monster [Level 780]"
              checklvl = "Magma Monster"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 810 and lvlreal < 860 then
              Namemoblvl = "Ice Beast[Level 810]"
              checklvl = "Ice Beast"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 860 and lvlreal < 900 then
              Namemoblvl = "Elite Beast[Level 860]"
              checklvl = "Elite Beast"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            elseif lvlreal >= 900  then
              Namemoblvl = "Beast Master[Level 900+]"
              checklvl = "Beast Master"
              TeleportCFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            end
          elseif game.PlaceId == 4313854107 then
            if lvlreal >= 400 and lvlreal < 420 then
              Namemoblvl = "Police Man [Level 400]"
               checklvl = "Police Man"
               TeleportCFrame = CFrame.new(-56.0742455, 628.332336, -1581.67944)
            elseif lvlreal >= 420 and lvlreal < 440 then
              Namemoblvl = "Special Force [Level 425]"
               checklvl = "Special Force"
               TeleportCFrame = CFrame.new(-58.4512, 624.347, -1214.14)
            elseif lvlreal >= 440 and lvlreal < 460 then
              Namemoblvl = "Gangster  [Level 450]"
               checklvl = "Gangster"
               TeleportCFrame = CFrame.new(309.755, 624.65, -922.577)
            elseif lvlreal >= 460 and lvlreal < 480 then
              Namemoblvl = "Mafia  [Level 475]"
               checklvl = "Mafia"
               TeleportCFrame = CFrame.new(80.2669, 625.322, -877.185)
            elseif lvlreal >= 480 and lvlreal < 600 then
              Namemoblvl = "Elite Mafia [Level 500]"
               checklvl = "Elite Mafia"
               TeleportCFrame = CFrame.new(-138.315, 624.994, -784.246)
            elseif lvlreal >= 600 and lvlreal < 625 then
              Namemoblvl = "Newbie Prisoner"
               checklvl = "Newbie Prisoner"
               TeleportCFrame = CFrame.new(6500.37, 682.696, 1581.22)
            elseif lvlreal >= 625 and lvlreal < 650 then
              Namemoblvl = "Prisoner"
               checklvl = "Prisoner"
               TeleportCFrame = CFrame.new(6673.39, 684.155, 1946.94)
            elseif lvlreal >= 650 and lvlreal < 675 then
              Namemoblvl = "Strong Prisoner"
               checklvl = "Strong Prisoner"
               TeleportCFrame = CFrame.new(6407.86, 747.051, 1590.52)
            elseif lvlreal >= 675 then
              Namemoblvl = "Prison Guard"
              checklvl = "Prison Guard"
              TeleportCFrame = CFrame.new(6665.08, 682.742, 2146.97)
      end
    end
  end
  local function checkselect()
    if mobselectx == "Thug [Level 5]" then
      QuestSelectx = "Thug"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "HamonUser [Level 15]" then
      QuestSelectx = "HamonUser"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "Gryphon [Level 30]" then
      QuestSelectx = "Gryphons"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "Vampire [Level 40]" then
      QuestSelectx = "Vampire"
      mobnotfindtp = CFrame.new(-33.4207344, 2.92533088, 111.467667)
    elseif mobselectx == "Snow Thug [Level 50]" then
      QuestSelectx = "SnowThug"
      mobnotfindtp = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
    elseif mobselectx == "Snowman [Level 65+]" then
      QuestSelectx = "Snowman"
      mobnotfindtp = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
    elseif mobselectx == "Wamuu" then
      QuestSelectx = "Wamuu"
      mobnotfindtp = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
    elseif mobselectx == "Desert Bandit [Level 95]" then
      QuestSelectx = "Desert Bandit"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Desert Monster [Level 120]" then
      QuestSelectx = "Desert Monster"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Dio Guard [Level 165]" then
      QuestSelectx = "Dio Guard"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Dio Royal Guard [Level  180]" then
      QuestSelectx = "Dio Royal Guard"
      mobnotfindtp = CFrame.new(-131.277512, 24.3753262, -1677.30322)
    elseif mobselectx == "Dio" then
      QuestSelectx = "Dio"
      mobnotfindtp = CFrame.new(40.619380950928, 46.328636169434, -4911.5278320313)
    elseif mobselectx == "School Bully  [Level 270]" then
      QuestSelectx = "School Bully"
      mobnotfindtp = CFrame.new(127626.414, 398.703003, -171.807999)
    elseif mobselectx == "City Criminal  [Level 280]" then
      QuestSelectx = "City Criminal"
      mobnotfindtp = CFrame.new(127704.9765625, 399.37152099609, 107.26459503174)
    elseif mobselectx == "Criminal Master [Level 300]" then
      QuestSelectx = "Criminal Master"
      mobnotfindtp = CFrame.new(128236.5859375, 399.37142944336, 537.9013671875)
    elseif mobselectx == "Kira" then
      QuestSelectx = "Kira"
      mobnotfindtp = CFrame.new(-7004.8881835938, -58.438232421875, 3112.3010253906)
    elseif mobselectx == "Magma Guard [Level 740]" then
      QuestSelectx = "Magma Guard"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Magma Monster [Level 780]" then
      QuestSelectx = "Magma Monster"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Ice Beast[Level 810]" then
      QuestSelectx = "Ice Beast"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Elite Beast[Level 860]" then
      QuestSelectx = "Elite Beast"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Beast Master[Level 900+]" then
      QuestSelectx = "Beast Master"
      mobnotfindtp = CFrame.new(41.0915565, -23.9860153, 5595.26611)
    elseif mobselectx == "Police Man [Level 400]" then
    
    elseif  mobselectx == "" then
    elseif  mobselectx == "" then
    elseif  mobselectx == "" then
    elseif  mobselectx == "" then

    elseif  mobselectx == "" then
    end
  end
  local function questlvl()
    Replicate.RS.Quest:FireServer(checklvl)
  end
  local function questselect()
    Replicate.RS.Quest:FireServer(QuestSelectx)
  end
  local function questcancel() Replicate.RS.Quest:FireServer("Abort") end;
  local function getmoblvl(MobNamelock)
      local closestMobs = nil
      local shortestDistance = math.huge
      if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
          for i1, v1 in pairs(Work.NPCS:GetChildren()) do
              if v1.Name == MobNamelock and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and v1.Humanoid.Health > 0 then
                  local magnitude = Player:DistanceFromCharacter(v1:FindFirstChild("HumanoidRootPart").Position)
                      if tonumber(magnitude) < shortestDistance then
                      closestMobs = v1
                      shortestDistance = magnitude
                  end
              end
          end
      end
      return closestMobs
  end
  
  local function notfindcheck()
    if Work.NPCS[Namemoblvl]:FindFirstChild("HumanoidRootPart") then
    else
      Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
    end
  end
  local function notfindcheckx()
    if Work.NPCS[mobselectx]:FindFirstChild("HumanoidRootPart") then
    else
      Player.Character.HumanoidRootPart.CFrame = mobnotfindtp
    end
  end
  local function killaurax()
    local StandReally1,StandReally2 = nil,nil
    if Player.Character:FindFirstChild("Hamon") or Player.Backpack:FindFirstChild("Hamon") then
      StandReally1 = "Hamon"
      StandReally2 =  "Punch"
    elseif Player.Character:FindFirstChild("Hamon Requiem") or Player.Backpack:FindFirstChild("Hamon Requiem") then
      StandReally1 = "HamonRequiem"
      StandReally2 = "PunchRequiem"
    elseif Player.Character:FindFirstChild("Kars Hamon") or Player.Backpack:FindFirstChild("Kars Hamon") then
      StandReally1 = "KarsHamon"
      StandReally2 = "PunchKars"
    elseif Player.Character:FindFirstChild("Ultimate Life Form") or Player.Backpack:FindFirstChild("Ultimate Life Form") then
      StandReally1 = "ulf"
      StandReally2 = "PunchULF"
    elseif Player.Character:FindFirstChild("True Ultimate Life Form") or Player.Backpack:FindFirstChild("True Ultimate Life Form") then
      StandReally1 = "tulf"
      StandReally2 = "PunchTULF"
    end
    for i,v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
      if v:FindFirstChild"HumanoidRootPart" and (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 20 and v.Humanoid.Health > 0 then
        Replicate.RS.Damage:FireServer(v, 99999, 0,StandReally1, false,"Right" .. StandReally2 , game.Players.LocalPlayer.UserId * 11 - 12716)
        Replicate.RS.Damage:FireServer(v, 99999, 0, StandReally1 , false,"Left".. StandReally2, game.Players.LocalPlayer.UserId * 11 - 12716)
      end
  end
end 
  ---- Spawn Function
  spawn(function ()
    while true do
      if tuskfarm then
        pcall(function ()
          wait(0.050)
          taskshot(Vector3.new(91.2363358, 2.69755411, 148.228271))
          wait(0.050)
          taskshot(Vector3.new(-33.4615021, 24.0097408, -775.673157))
          wait(0.050)
          taskshot(Vector3.new(-183.338058, 23.005373, -1695.74512))
          wait(0.050)
          taskshot(Vector3.new(127646.125, 398.320374, 51.8569183))
          wait(0.050)
          taskshot(Vector3.new(128072.672, 397.356537, 592.755432))
          wait(0.050)
          taskshot(Vector3.new(128098.25, 398.923645, -25.6223488))
          wait(0.050)
          taskshot(Vector3.new(-211.665375, -70.2623062, 2421.49146))
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if GoMorioh then
        pcall(function ()
          if tonumber(string.match(Player.PlayerGui.SG.Main.Main.ML.LevelText.Text,"%d+")) >= 740 then
            local ts = game:GetService("TeleportService") local p = game.Players.LocalPlayer ts:Teleport(3400631762, p)
          end
        end)
      end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if killboss then
        pcall(function ()
            if Work.NPCS["Dio"]:FindFirstChild("HumanoidRootPart") or Work.NPCS["Wamuu"]:FindFirstChild("HumanoidRootPart") or Work.NPCS["Kira"]:FindFirstChild("HumanoidRootPart") then
              if methodfarm == "Above" then
                for i,v  in pairs(Work.NPCS:GetChildren()) do
                  if v.Name == "Dio" and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                      VirtualUser:CaptureController()
                         VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                      Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                    until v.Humanoid.Health <= 0 or not killboss 
                  elseif v.Name == "Dio" and not v:FindFirstChild("HumanoidRootPart") then
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-127.95372, 38.2173119, -4998.4917)
                  elseif v.Name == "Wamuu" and v:FindFirstChild("HumanoidRootPart")  then
                    repeat wait()
                      VirtualUser:CaptureController()
                         VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                      Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                    until v.Humanoid.Health <= 0 or not killboss 
                  elseif v.Name == "Wamuu" and not v:FindFirstChild("HumanoidRootPart")  then
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-45.5586, -46.5449, 2738.28)
                  elseif v.Name == "Kira" and v:FindFirstChild("HumanoidRootPart") then
                    repeat wait()
                      VirtualUser:CaptureController()
                         VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                      Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                    until v.Humanoid.Health <= 0 or not killboss 
                  elseif v.Name == "Kira" and not v:FindFirstChild("HumanoidRootPart")  then
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-7004.8881835938, -58.438232421875, 3112.3010253906)
                  end
                end
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
        if weaponequip then
        pcall(function ()
            local backpack = Player.Backpack
            local players = Player.Character.Humanoid
            players:EquipTool(backpack[weaponselect])
         end)
        end
      wait(1)
    end
  end)
  spawn(function ()
    while true do
      if chestfarm then
        pcall(function ()
            for i,v in pairs(game:GetService("Workspace").Chest1.ChestPos:GetChildren()) do
              if v:IsA("Part") then
                Player.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-2,0)
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if arrow then
        pcall(function ()
            for i,v in pairs(game:GetService("Workspace").Arrows:GetChildren()) do
              if v.Name == "Arrow" then
                Player.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if rebirth then
        pcall(function ()
            for i,v in pairs(game:GetService("Workspace").Arrows:GetChildren()) do
              if v.Name == "Rebirth Arrow" then
                Player.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if farmselect then
        pcall(function ()
          checkselect()
            notfindcheckx()
          if modefarm == "Magnet" then
            if methodfarm == "Above" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                            warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                        VirtualUser:CaptureController()
                     VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Above" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
              end
            elseif methodfarm == "Behind"  then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                   questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                      local tpmob = getmoblvl(mobselectx)
                        repeat wait()
                          warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,0,distance) 
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Behind" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            elseif methodfarm == "Under" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                            warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                        VirtualUser:CaptureController()
                      VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                    Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                  until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Under" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
                end
              end 
          elseif modefarm == "Dont Magnet" then
            if methodfarm == "Above" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                        VirtualUser:CaptureController()
                     VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Above" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
              end
            elseif methodfarm == "Behind"  then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                   questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                      local tpmob = getmoblvl(mobselectx)
                        repeat wait()
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,0,distance) 
                until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Behind" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            elseif methodfarm == "Under" then
              if Player.PlayerGui.SG.Quest.Frame.Visible == false then
                questselect()
                  elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                    questcancel()
                      elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,QuestSelectx) then
                        local tpmob = getmoblvl(mobselectx)
                          repeat wait()
                        VirtualUser:CaptureController()
                      VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                    Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                  until tpmob.Humanoid.Health <= 0 or not farmselect or methodfarm ~= "Under" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
                end
              end   
            end
        end)
      end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if emperrorfarm then
        pcall(function ()
          wait(0.175)
          theemperrorshot(Vector3.new(86.2681274, 3.78871512, 137.216324))
          wait(0.175)
          theemperrorshot(Vector3.new(476.794983, 7.20328474, 129.053162))
          wait(0.175)
          theemperrorshot(Vector3.new(573.464417, 7.18064451, 74.2611694))
          wait(0.175)
          theemperrorshot(Vector3.new(-63.3632088, 25.2007675, -799.841309))
          wait(0.175)
          theemperrorshot(Vector3.new(32.7559166, -16.6108704, 5577.87549))
          wait(0.175)
          theemperrorshot(Vector3.new(-20.2614098, 73.8269501, 5867.44141))
          wait(0.175)
          theemperrorshot(Vector3.new(128024.313, 399.458832, -6.2976222))
          wait(0.175)
          theemperrorshot(Vector3.new(128168.023, 398.887329, 358.133728))
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if killaura then
        pcall(function ()
          killaurax()
        end)
      end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if starploh then
        pcall(function ()
          Replicate.RS.LightningSky:FireServer("$!@M@$!")
        end)
      end
      wait()
    end
  end)

  spawn(function ()
    while true do
      if zamusfarm then
        pcall(function ()
          for i,v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
            if v:IsA("Model") then
                Replicate.RS.SwordsRemotes.TimeSlicer:FireServer(1,{v})
              end
            end
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
        if teleportisland then
          pcall(function ()
            repeat wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-43.8439903, -70.1464844, 2394.30518)
            wait(3)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.0915565, -23.9860153, 5595.26611)
            wait(3)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127626.414, 398.703003, -171.807999)
            wait(3)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.277512, 24.3753262, -1677.30322)
            wait(3)
            until not teleportisland
          end)
        end
      wait()
    end
  end)
  spawn(function ()
    while true do
      if Invisible then
        pcall(function ()
          if Player.Character:FindFirstChild("LowerTorso") then
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(325.303925, 3.24370503, 275.505615)
            wait()
            Player.Character:FindFirstChild("LowerTorso"):Destroy()
          end
        end)
      end
      wait()
    end
  end)
spawn(function ()
  while true do
    if autoquest then
      pcall(function ()
        if Player.PlayerGui.SG.Quest.Frame.Visible == false then
          Replicate.RS.Quest:FireServer(questselectq)
            elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,questselectq) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
              questcancel()
          end
        end)
      end
    wait()
  end
end)
spawn(function()
  while true do
    if farmlvl then
      pcall(function()
        checkexp()
          notfindcheck()
        if modefarm == "Magnet" then
          if methodfarm == "Above" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                          warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                      VirtualUser:CaptureController()
                   VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Above" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
            end
          elseif methodfarm == "Behind"  then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                 questcancel()
                  elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                    local tpmob = getmoblvl(Namemoblvl)
                      repeat wait()
                        warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                    VirtualUser:CaptureController()
                  VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,0,distance)
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Behind" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
            end
          elseif methodfarm == "Under" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                          warpmob(tpmob.HumanoidRootPart.CFrame, tpmob.Name)
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Under" or modefarm ~= "Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            end 
        elseif modefarm == "Dont Magnet" then
          if methodfarm == "Above" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                      VirtualUser:CaptureController()
                   VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) 
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Above" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false 
            end
          elseif methodfarm == "Behind"  then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                 questcancel()
                  elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                    local tpmob = getmoblvl(Namemoblvl)
                      repeat wait()
                    VirtualUser:CaptureController()
                  VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame* CFrame.new(0,0,distance) 
              until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Behind" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
            end
          elseif methodfarm == "Under" then
            if Player.PlayerGui.SG.Quest.Frame.Visible == false then
              questlvl()
                elseif not string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) and Player.PlayerGui.SG.Quest.Frame.Label.Text ~= "NaN" then
                  questcancel()
                    elseif Player.PlayerGui.SG.Quest.Frame.Visible == true and  string.match(Player.PlayerGui.SG.Quest.Frame.Label.Text,checklvl) then
                      local tpmob = getmoblvl(Namemoblvl)
                        repeat wait()
                      VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  Player.Character.HumanoidRootPart.CFrame = tpmob.HumanoidRootPart.CFrame * CFrame.new(0,-distance,0) * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90)) 
                until tpmob.Humanoid.Health <= 0 or not farmlvl or methodfarm ~= "Under" or modefarm ~= "Dont Magnet" or Player.PlayerGui.SG.Quest.Frame.Visible == false
              end
            end   
          end
        end)
      end
    wait()
  end
end)
spawn(function ()
  while true do
    if modefarm == "Magnet" then
      pcall(function ()
        setsimulationradius(math.huge,math.huge)
      end)
    end
    wait(1.5)
  end
end)
spawn(function()
  while true do
      wait()
      pcall(function ()
         UpdateTime()
         game:GetService("RunService").RenderStepped:Wait()
      end)
  end
end)

game:getService("RunService"):UnbindFromRenderStep("noclOppl")
  game:getService("RunService"):BindToRenderStep("noclOppl",0,function()
      pcall(function()
          local char = Player.Character or Player.CharacterAdded:Wait()
            if farmlvl == true then char.Humanoid:ChangeState(11) end
            if farmselect == true then char.Humanoid:ChangeState(11) end
          if killboss == true then char.Humanoid:ChangeState(11) end
  end)
end)
local GODBYSKYx = nil
GODBYSKYx = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...)
  if self.Name == "StaminaWaste" and dashnos == true  then
    return nil
  end
  return GODBYSKYx(self, ...)
end))
spawn(function ()
  while true do
    pcall(function ()
      VirtualUser:CaptureController()
      VirtualUser:SetKeyDown("w",key)
      wait()
      VirtualUser:CaptureController()
      VirtualUser:SetKeyUp("w",key)
    end)
    wait(120)
  end
end)
end
