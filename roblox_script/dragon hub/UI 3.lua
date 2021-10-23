if game.PlaceId == 394506555 then --GluePiece
	local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
  
	local win = DiscordLib:Window("LimeHub")
  
	local serv = win:Server("GluePiece", "")
  
	local tab = serv:Channel("Main")
  
  local plr = game.Players.LocalPlayer
  local VirtualUser = game:GetService("VirtualUser")
  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  local TOOLS = {}
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			  if v:IsA("Tool") then
				  table.insert(TOOLS,v.Name)
			  end
		  end
  
  local namemobs = ""
  local Methot = ""
  
  
  tab:Dropdown("Select Mob",{"Thug","Evil Thug","Slime","Runny","Unknown Boss [Fake Yoru]","Sneaky","Elite Noob","Cutie Noob","Cutie [Boss Raid]","King Noob","Sword Master","Sans","Nooby","Kyo","Chara"}, function(f)
	  namemobs = f
  end)
  
  tab:Toggle("Start Farm",false,function(f)
	farm = f
  end)
  
  game:GetService("RunService").Stepped:Connect(function()
	if farm then
	  equip()
	  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		  pcall(function()
			  if v.Name == namemobs  and v.Humanoid.Health > 0 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,distance,0)
				end
			end)
		end
	end
  end)
  
  game:GetService("RunService").Stepped:Connect(function()
  if farm then
  VirtualUser:CaptureController()
  VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
  end
  end)
  
  game:GetService("RunService").Stepped:Connect(function()
	if farm then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
  end)
  
  tab:Slider("Distance",0,20,0,function(t)
	  distance = t
  end)
  
  local  rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
	  SelectedWeapon = t
  end)
  
  
  tab:Button("Refresh Weapon",function()
	  rdropdwon:Clear()
		  TOOLS = {}
	  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("Tool") then
			  rdropdwon:Add(v.Name)
		  end
	  end
  end)
  
  function equip()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SelectedWeapon then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				end
			end
		end
  
  
  local tab = serv:Channel("Stats")
  
  tab:Toggle("Melee",false,function (Value)
	  melee = Value
  end)
  spawn(function()
	  while wait() do
		  if melee then
	  local number_1 = 1;
	  local string_1 = "Strength";
	  local Target = game:GetService("ReplicatedStorage").RemoteEvent.Stats.Add;
	  Target:FireServer(number_1, string_1);
  end
  end
  end)
  
  tab:Toggle("Defense",false,function (Value)
	  defense = Value
  end)
  spawn(function()
	  while wait() do
		  if defense then
	  local number_1 = 1;
	  local string_1 = "Defense";
	  local Target = game:GetService("ReplicatedStorage").RemoteEvent.Stats.Add;
	  Target:FireServer(number_1, string_1);
  end
  end
  end)
  
  tab:Toggle("Sword",false,function (Value)
	  sword = Value
  end)
  spawn(function()
	  while wait() do
		  if sword then
	  local number_1 = 1;
	  local string_1 = "Melee";
	  local Target = game:GetService("ReplicatedStorage").RemoteEvent.Stats.Add;
	  Target:FireServer(number_1, string_1);
  end
  end
  end)
  
  tab:Toggle("DevilFruit",false,function (Value)
	  devil = Value
  end)
  spawn(function()
	  while wait() do
		  if devil then
	  local number_1 = 1;
	  local string_1 = "DevilFruit";
	  local Target = game:GetService("ReplicatedStorage").RemoteEvent.Stats.Add;
	  Target:FireServer(number_1, string_1);
  end
  end
  end)
  
  local tab = serv:Channel("Teleport")
  
  tab:Button("Server-Hop",function ()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
  local HttpService, TPService = game:GetService"HttpService", game:GetService"TeleportService";
  local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
  function joinNew()
	  if not isfile('servers.sss') then
		  writefile('servers.sss',HttpService:JSONEncode({}))
	  end
	  local dontJoin = readfile('servers.sss')
	  dontJoin = HttpService:JSONDecode(dontJoin)
  
	  for Index, Server in next, OtherServers["data"] do
		  if Server ~= game.JobId then
			  local j = true
			  for a,c in pairs(dontJoin) do
				 if c == Server.id then
					 j = false
				 end
			  end
			  if j then
				  table.insert(dontJoin,Server["id"])
				  writefile("servers.sss",HttpService:JSONEncode(dontJoin))
				  wait()
				  return Server['id']
  
  
			  end
		  end
	  end
  end
  
  local server = joinNew()
  if not server then
	  writefile("servers.sss",HttpService:JSONEncode({}))
	  local server = joinNew()
	  TPService:TeleportToPlaceInstance(game.PlaceId, server)
  else
  TPService:TeleportToPlaceInstance(game.PlaceId, server)
  end
  end)
  
  tab:Button("Thug",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120.424217, 13, -11.257144)
  end)
  tab:Button("Slime",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.4214783, 12.9000034, -872.822327)
  end)
  tab:Button("Sneaky",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-646.527771, 13, -1715.22498)
  end)
  tab:Button("Elite",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1607.97998, 13, -1828.66406)
  end)
  tab:Button("WaterFall",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2603.198, 13, -119.838692)
  end)
  tab:Button("Cutie",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2639.70239, 48.0000153, 959.031006)
  end)
  tab:Button("Grave",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.0521564, 13.9999962, 569.868896)
  end)
  tab:Button("Snow",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-515.607788, 13, 1843.6687)
  end)
  tab:Button("Snow2",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(475.685883, 13, 2317.07568)
  end)
  tab:Button("Sky",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1718.3717, 438, -1176.56018)
  end)
  tab:Button("Hall",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(530.143982, 11.5736389, 375.021545)
  end)
  tab:Button("RandowFruit",function ()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1096.82971, 13, -1068.01257) * CFrame.new(0,10,0)
  end)
  
  local tab = serv:Channel("Misc")
  
  tab:Slider("Walkspeed",16,2000,0,function(value)
	  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
  end)
  tab:Slider("JumpPower",50,2000,0,function(value)
	  game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
  end)
  
  local set = 1
  
  tab:Button("Random Fruit",function()
  for i = 1,set do
  local args = {
	  [1] = "Random DF",
	  [2] = "Money"
  }
  
  game:GetService("ReplicatedStorage").RemoteEvent.Reset.Reset:FireServer(unpack(args))
  end
  end)
  tab:Slider("Set Random Fruit",1,20,0,function(t)
	set = t
  end)
  
  tab:Button("Reset Stat",function()
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "Reset Stats",
	  [2] = "Money"
  }
  
  game:GetService("ReplicatedStorage").RemoteEvent.Reset.Reset:FireServer(unpack(args))
  end)
  tab:Button("Reset DevilFruit",function()
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "Reset DF",
	  [2] = "Money"
  }
  
  game:GetService("ReplicatedStorage").RemoteEvent.Reset.Reset:FireServer(unpack(args))
  end)
  tab:Toggle("Ctrl + Click = TP",false,function(vu)
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
	  end)
	  tab:Toggle("Teleport DevilFruits",false,function(t)
			  TPF = t
			  while wait() do
				  if TPF then
			  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			  if v:IsA ("Tool") then
				  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
			  end
			  end
		  end
		  end
		  end)
  end
  
  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 5835263912 then --Millennium 3
	  local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
	  if ui then
		  ui:Destroy()
	  end
	  local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
  
  local win = Flux:Window("One Piece: Millennium 3", "LimeHubZ", Color3.fromRGB(199, 234, 70), Enum.KeyCode.RightControl)
  local tab = win:Tab("MainFarm", "http://www.roblox.com/asset/?id=6023426915")
  local plr = game.Players.LocalPlayer
  local VirtualUser = game:GetService("VirtualUser")
  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  
  local Npc_Table = {}
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	  if v:IsA("Model") and not table.find(Npc_Table,v.Name) then
		  table.insert(Npc_Table,v.Name)
	  end
  end
  
  local Quest_Table = {}
  for i,v in pairs(game:GetService("Workspace").QuestNPCs:GetChildren()) do
	  if v:IsA("Model") then
		  table.insert(Quest_Table,v.Name)
	  end
  end
  
  tab:Dropdown("Quests", Quest_Table,function(t)
  quest = t
  end)
  
  tab:Dropdown("Mobs",Npc_Table,function (t)
  mobs = t
  end)
  
  tab:Toggle("Farm", "", false , function(t)
	  _G.A = t
  if _G.A == false then return end
  while _G.A do wait()
	  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == mobs and v:FindFirstChild("HumanoidRootPart") then
	  repeat
		  wait()
		  plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,4)
	  until v.Humanoid.Health == 0 or _G.A == false
	  end
  end
  end
  end)
  
  tab:Toggle("QuestStart","",false,function(t)
	  qstart = t
  while qstart do wait()
	  pcall(function()
  
  
  
		  local args = {
	  [1] = {
		  ["Type"] = "Quest",
		  ["ID"] = quest,
		  ["MinimumLevel"] = 1,
		  ["NPCName"] = "Level1Quest",
		  ["Job"] = "AcceptDialogue"
	  }
  }
  
  game:GetService("ReplicatedStorage").Remotes.ClientE:FireServer(unpack(args))
		  end)
	  end
  end)
  
  tab:Toggle("Tp Fruit","",false,function(t)
	  _G.A = t
	  if _G.A == false then return end
	  while _G.A do wait()
	  pcall(function()
	   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		   if v:IsA("Tool") then
			 v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			  end
		   end
	  end)
  end
  end)
  
  
  
  
  local tab = win:Tab("Teleport", "http://www.roblox.com/asset/?id=6023426915")
  
  local Tp_Table = {}
  for i,v in pairs(game:GetService("Workspace").ShopNPCs:GetChildren()) do
	  if v:IsA("Model") then
		  table.insert(Tp_Table,v.Name)
	  end
  end
  
  tab:Dropdown("Teleport to NPC",Tp_Table,function (t)
	  shopnpc = t
  for i,v in pairs(game:GetService("Workspace").ShopNPCs:GetChildren()) do
	  if v.Name == shopnpc then
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
		end
	 end
  end)
  end
  
  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 6186867282 then --Project XL
  local plr = game.Players.LocalPlayer
  local VirtualUser = game:GetService("VirtualUser")
  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
  
  local win = Flux:Window("FairyHub", "LimeHubZ", Color3.fromRGB(199, 234, 70), Enum.KeyCode.RightControl)
  local tab = win:Tab("MainFarm", "http://www.roblox.com/asset/?id=6034989568")
  
  local quest = {}
	  for i,v in pairs(game:GetService("StarterGui").QuestScripts:GetChildren()) do
		  if v:IsA("LocalScript") then
			  table.insert(quest,v.Name)
		  end
	  end
  
  local bfisland = {}
	  for i,v in pairs(game:GetService("Workspace").Live:GetDescendants()) do
		  if v:IsA("Model") and not table.find(bfisland,v.Name) and v:FindFirstChild("Humanoid")    then
			  table.insert(bfisland,v.Name)
		  end
	  end
  
  tab:Dropdown("SelectDummy",bfisland,function(value)
	  bfisland = value
  end)
  
  tab:Dropdown("SelectQuest",quest,function(t)
	  quest = t
  end)
  
  tab:Toggle("Start Farm", "", false , function(t)
	  _G.A = t
	  if _G.A == false then return end
	  while _G.A do wait()
		  if game:GetService("Players").LocalPlayer.PlayerGui.Menu.QuestFrame.Visible == false then
			  local args = {
				  [1] = game:GetService("ReplicatedStorage").Quests:FindFirstChild(quest)
			  }
  
			  game:GetService("ReplicatedStorage").RemoteEvents.ChangeQuestRemote:FireServer(unpack(args))
		  elseif game:GetService("Players").LocalPlayer.PlayerGui.Menu.QuestFrame.Visible == true then
		  for i,v in pairs(game:GetService("Workspace").Live:GetDescendants()) do
		  if v.Name == bfisland and v:FindFirstChild("HumanoidRootPart") then
		  repeat
			  local args = {
				  [1] = false,
				  [2] = Vector3.new(-5049.3579101563, 339.8616027832, -8190.3984375),
				  [3] = CFrame.new(Vector3.new(-5049.3579101563, 339.8616027832, -8190.3984375), Vector3.new(-0.48214814066887, 0.02701573818922, -0.8756730556488))
			  }
  
			  game:GetService("ReplicatedStorage").RemoteEvents.BladeCombatRemote:FireServer(unpack(args))
		  wait()
		  plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,4)
	  until v.Humanoid.Health == 0 or _G.A == false
  end
  end
  end
  end
  end)
  
  
  local tab = win:Tab("Misc", "http://www.roblox.com/asset/?id=6034989568")
  
  tab:Toggle("TP Fruit","",false,function(Value)
	  tpfruit = Value
  end)
	  spawn(function()
	  while wait() do
		  if tpfruit then
	  pcall(function()
	   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		   if v:IsA("Tool") and v:FindFirstChild("Fruit") then
			 v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			  end
		   end
	  end)
  end
  end
  end)
  
  local tab = win:Tab("Credit", "http://www.roblox.com/asset/?id=6034989568")
  
  tab:Label("sHi#7507")
  tab:Label("FairyHub")
  tab:Button("Copy Link Discord","",function()
	  setclipboard("https://discord.gg/xCAr4XgHQb")
  end)
  end
  
  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 5603739866 then --Psy
	  local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
	  if ui then
		  ui:Destroy()
	  end
  local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
  
  local win = Flux:Window("LimeHubZ", "Psycho 100: Infinity", Color3.fromRGB(199, 234, 70), Enum.KeyCode.RightControl)
  local ss = win:Tab("MainFarm", "http://www.roblox.com/asset/?id=6034989568")
  local plr = game.Players.LocalPlayer
  local VirtualUser = game:GetService("VirtualUser")
  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  
  
  local TOOLS = {}
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	  if v:IsA("Tool") then
		  table.insert(TOOLS,v.Name)
	  end
  end
  
  local plrcharachter = game.Players.LocalPlayer.Character
  
  local enemy = "WeakGhost"
  
  SelectedWeapon = nil
  
  local NPCS = {"WeakGhost", "PossessedEsper","Delin", "EnragedGhost", "Crusher", "Cult", "Delin2", "Dream", "SmileLeader", "Onigawara", "Tango", "Valkyrie", "EvilEsper", "Koyama", "AwakenedEsper", "Dimple", "Sho"}
  
  ss:Dropdown("Select NPC to farm", NPCS, function(value)
	  enemys = value
  end)
  
  local rdropdown = ss:Dropdown("Select Weapon",TOOLS,function(t)
	  SelectedWeapon = t
  end)
  
  ss:Button("Refresh Weapn","",function()
	  rdropdown:Clear()
	  TOOLS = {}
	  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("Tool") then
			  rdropdown:Add(v.Name)
		  end
	  end
  end)
  
  
  ss:Toggle("RemoveFakeNPC'S","",false,function(t)
	  removfakenpc = t
	  while wait() do
		  if removfakenpc then
			  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				  if v.Name == enemy then
					  print(v)
					  v:Destroy()
				  end
			  end
		  end
	  end
  end)
  
  ss:Toggle("Autofarm","",false,function(t)
	  farm = t
	  while farm do wait()
		  game:GetService("RunService").Heartbeat:Connect(
		  function()
			  if farm then
				  pcall(function()
					  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				  end)
			  end
		  end)
		  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			  str = v.Name
			  if string.match(str, enemy) then
			  print(v)
				  if v.HumanoidRootPart and game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame and v.Humanoid.Health ~= 0 then
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,distance)
				  end
			  end
		  end
	  end
  end)
  
  ss:Toggle("Auto equip selected tool","",false,function(t)
	  Equip = t
	  while wait() do
		  if Equip then
			  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				  if v.Name == SelectedWeapon then
					  game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				  end
			  end
		  end
	  end
  end)
  
  ss:Toggle("Auto Train","",false,function(t)
	  exp = t
	  while exp do wait()
		  pcall(function()
			  game:GetService("ReplicatedStorage").Remotes.Train:FireServer(1)
		  end)
	  end
  end)
  
  ss:Toggle("Kill Aura NPC'S","",false,function(t)
	  killaura = t
	  wait()
	  while killaura do wait()
		  pcall(function()
			  game:GetService("ReplicatedStorage").PunchServer:FireServer(1,5600416316)
		  end)
	  end
  end)
  
  ss:Slider("Distance","",0,10,5,function(t)
	  distance = t
  end)
  
  
  local sss = win:Tab("Misc","http://www.roblox.com/asset/?id=6034989568")
  
  sss:Button("HideName","",function()
	  while wait() do
		  pcall(function()
			 game.Players.LocalPlayer.Character.Head.HX:Destroy()
		  end)
	  end
  end)
  end
  
  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 5303541547 then --Two Piece
	local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
  
	  local win = DiscordLib:Window("LimeHub")
  
	  local serv = win:Server("TwoPiece", "")
  
	  local tab = serv:Channel("Main")
  
  local bfisland = {}
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Model") and not table.find(bfisland,v.Name) and v:FindFirstChild("Humanoid")    then
			table.insert(bfisland,v.Name)
		end
	end
  
	tab:Dropdown("Select",{
		"Bandit",
		"Pirate",
		"Marineee",
		"Snow Bandit",
		"Island Bandit",
		"Ice Bandit",
		"Pirate Master",
		"Desert Bandit",
		"God",
		"sword Noob",
		"King",
		"Yeti",
		"Sky Bandit",
		"Fire Man",
		"DIO",
		"Jungle Bandit"
	},function(t)
		bfisland = t
	end)
  
	tab:Toggle("AutoFarm",false,function(value)
		autofarm = value
	end)
  
	spawn(function()
	while wait() do
		if autofarm then
		pcall(function()
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	if v.Name == bfisland and v.Humanoid.Health > 0 and v:FindFirstChild('HumanoidRootPart') then
		repeat
			VirtualUser:CaptureController()
			VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
			wait()
			plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,4)
		until autofarm == false or  v.Humanoid.Health <=0 or not v:FindFirstChild('HumanoidRootPart')
		end
	end
	end)
	end
  end
  end)
  
  
  local tab = serv:Channel("Quest")
  
  tab:Toggle("Bandit Quest",false,function(value)
	Banditq = value
  end)
  spawn(function()
	while wait() do
	if Banditq then
  if game:GetService("Players").LocalPlayer.PlayerGui.QuestBar.Background.Visible == false then
	workspace["Bandit Quest"].Head.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
  elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestBar.Background.Visible == true then
  end
  end
  end
  end)
  
  tab:Toggle("Sky Bandit Quest]",false,function(value)
	skyq = value
  end)
  spawn(function()
	while wait() do
	if skyq then
  if game:GetService("Players").LocalPlayer.PlayerGui.QuestBar6.Background.Visible == false then
	workspace["Sky Bandit Quest"].Head.QuestTake6.QuestTake6.Accept.RemoteEvent:FireServer()
  elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestBar6.Background.Visible == true then
  end
  end
  end
  end)
  
  tab:Toggle("Pirate Quest",false,function(value)
	pirateq = value
  end)
	spawn(function()
	while wait() do
	if  pirateq then
  if game:GetService("Players").LocalPlayer.PlayerGui.QuestBar7.Background.Visible == false then
	workspace["Pirate Quest"].Head.QuestTake7.QuestTake7.Accept.RemoteEvent:FireServer()
  elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestBar7.Background.Visible == true then
  end
  end
  end
  end)
  
  local tab = serv:Channel("Teleports")
  
  tpp:Button("Bandit Island",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(844.573853, -0.580295861, -78.4100723)
  end)
  tpp:Button("Desert Island",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1897.09888, 27.4676132, -1978.39929)
  end)
  tpp:Button("Sky Island",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1109.1333, 317.86731, 23.7007294)
  end)
  tpp:Button("Snow Island",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2109.76782, 12.4961653, 1572.9093)
  end)
  tpp:Button("Marine Island",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1027.60718, 5.72326326, 2916.16797)
  end)
  tpp:Button("Jungle Island",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1316.06335, 1.35519326, -2217.34375)
  end)
  
  local tab = serv:Channel("Fruit")
  
  misc:Dropdown("Select Fruit",{
	"OpeUse"
  },function(value)
	SelectDF = value
  end)
  
  misc:Button("Use",function()
  if SelectDF == "OpeUse" then
  game:GetService("Players").LocalPlayer.PlayerGui.DevilFruitGamePass.Back.Frame.OpeUse.RemoteEvent:FireServer()
  end
  end)
  end
  
  --------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 1499872953 then --Boku
	  local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
	  if ui then
		  ui:Destroy()
	  end
	  local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
  
	  local win = Flux:Window("Boku No", "LimeHubZ", Color3.fromRGB(199, 234, 70) ,Enum.KeyCode.RightControl)
	  local tab = win:Tab("MainFarm", "http://www.roblox.com/asset/?id=6034989568")
	  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	  function attack()
	  if _G.A == true then
		  game:GetService("Players").LocalPlayer.Character.Quirk3.E:FireServer()
	  elseif _G.A == false then
	  end
	  end
  
	  function realattack()
	  local args = {
		  [1] = CFrame.new(Vector3.new(478.04498291016, 330.65518188477, 341.27523803711), Vector3.new(0.048187721520662, -0.17608812451363, -0.98319429159164))
	  }
  
	  game:GetService("Players").LocalPlayer.Character.Main.Swing:FireServer(unpack(args))
	  end
  
	  function quest()
	  if _G.moss == "Police" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Police")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Police")
	  elseif _G.moss == "Criminal" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Criminal")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Criminal")
	  elseif _G.moss == "Pro Hero" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Pro Hero")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Pro Hero")
	  elseif _G.moss == "Hero" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Hero")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Hero")
	  elseif _G.moss == "Mount Lady" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Mount Lady")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Mount Lady")
	  elseif _G.moss == "Endeavor" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Endeavor")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Endeavor")
	  elseif _G.moss == "Villain" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Villain")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Villain")
	  elseif _G.moss == "UA Student" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Defeat UA Student")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Defeat UA Student")
	  elseif _G.moss == "Midnight" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Midnight")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Midnight")
	  elseif _G.moss == "Tomura" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Tomura")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Tomura")
	  elseif _G.moss == "Gang Orca" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Gang Orca")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Gang Orca")
	  elseif _G.moss == "All Might 1" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill All Might 1")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill All Might 1")
	  elseif _G.moss == "Forest Beast" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Forest Beast")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Forest Beast")
	  elseif _G.moss == "Dabi" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Dabi")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Dabi")
	  elseif _G.moss == "Gigantomachia" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Gigantomachia")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Gigantomachia")
	  elseif _G.moss == "Noumu" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Noumu")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Noumu")
	  elseif _G.moss == "Overhaul" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Overhaul")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Overhaul")
	  elseif _G.moss == "High End" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill High End")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill High End")
	  elseif _G.moss == "Hawks" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Hawks")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Hawks")
	  elseif _G.moss == "Weak Nomu" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Weak Nomu")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Weak Nomu")
	  elseif _G.moss == "Awakened Tomura" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Awakened Tomura")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Awakened Tomura")
	  elseif _G.moss == "Present Mic" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Present Mic")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Present Mic")
	  elseif _G.moss == "AllForOne" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill AllForOne")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill AllForOne")
	  elseif _G.moss == "Weak Villain" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Weak Villain")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Weak Villain")
	  elseif _G.moss == "Deku" then
		  game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Deku")
  
		  game:GetService("ReplicatedStorage").Remotes.Quest.CompleteQuest:FireServer("Kill Deku")
	  end
  end
  
	  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	  tab:Label("For Newbie")
  
	  tab:Toggle("Auto-Press T","",false,function (t)
		  _G.a = t
		  if _G.a == false then return end
		  while _G.a do wait()
  
	  game:GetService("Players").LocalPlayer.Character.Quirk3.T:FireServer()
		  end
	  end)
  
	  tab:Button("Go To Gym","",function ()
	  tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
  
	  tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game:GetService("Workspace")["Punching Bags"]["Punching bag"]["Punching bag"].HumanoidRootPart.Position)})
	  tween:Play()
  
	  end)
  
  
	  tab:Label("For Level 50+")
  
	  tab:Dropdown("Select V/H",{
		  "Police",
		  "Criminal",
		  "Pro Hero 1",
		  "Hero",
		  "Mount Lady",
		  "Endeavor",
		  "Villain",
		  "UA Student 1",
		  "Midnight",
		  "Tomura",
		  "Gang Orca",
		  "All Might 1",
		  "Forest Beast",
		  "Dabi",
		  "Gigantomachia",
		  "Noumu",
		  "Overhaul",
		  "High End",
		  "Hawks",
		  "Weak Nomu",
		  "Awakened Tomura",
		  "Present Mic",
		  "AllForOne",
		  "Weak Villain",
		  "Deku"
	  },function(t)
		  _G.moss = t
	  end)
  
  
	  tab:Toggle("Start Farm","",false,function(t)
  farm = t
  end)
  
  spawn(function()
	while wait() do
	  if farm then
				  quest()
				  for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
				  if v.Name == _G.moss and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
					  repeat wait()
					  realattack()
					  tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.2, Enum.EasingStyle.Linear)
					  tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,0,dis),v.HumanoidRootPart.Position)})
					  tween:Play()
					until farm == false or v.Humanoid.Health <= 0  or not v:FindFirstChild("HumanoidRootPart")
				  end
				end
			  end
		  end
  end)
  
	  tab:Slider("Distance","",0,20,0,function(t)
		  dis = t
	  end)
  
	  tab:Toggle("Auto-Press E","",false,function(t)
		  _G.A = t
		  if _G.A == false then return end
		  while _G.A do wait()
		  attack()
	  end
	  end)
  
	  local tab = win:Tab("Stats", "http://www.roblox.com/asset/?id=6034989568")
  
	  tab:Slider("Poin","",0,20,0,function(Value)
		  poin = Value
	  end)
  
	  tab:Toggle("Strength","",false,function(t)
		  Strength = t
	  end)
	  tab:Toggle("Agility","",false,function(t)
		  Agility = t
	  end)
	  tab:Toggle("Durability","",false,function(t)
		  Durability = t
	  end)
  
	  spawn(function()
		  while wait() do
	  if Strength then
	  local args = {
		  [1] = poin
	  }
  
	  game:GetService("ReplicatedStorage").Remotes.Strength:FireServer(unpack(args))
	  end
	  if Agility then
	  local args = {
		  [1] = poin
	  }
  
	  game:GetService("ReplicatedStorage").Remotes.Agility:FireServer(unpack(args))
	  end
	  if Durability then
		  local args = {
		  [1] = poin
	  }
  
	  game:GetService("ReplicatedStorage").Remotes.Durability:FireServer(unpack(args))
	  end
	  end
	  end)
  end
  
  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 6485779192 then --PP Piece
	local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
		if ui then
			ui:Destroy()
		end
	  local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
  
	  local win = Flux:Window("Phlia Piece", "LimeHubZ", Color3.fromRGB(199, 234, 70) ,Enum.KeyCode.RightControl)
	  local tab = win:Tab("MainFarm", "http://www.roblox.com/asset/?id=6034989568")
	  local plr = game.Players.LocalPlayer
	  local VirtualUser = game:GetService("VirtualUser")
	  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  
	  local TOOLS = {}
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			  if v:IsA("Tool") then
				  table.insert(TOOLS,v.Name)
			  end
		  end
  
	  tab:Dropdown("Mons",{
		"Bandit[Lv.5]",
		"BossBandit[Lv.15]",
		"MonekyFlukeZ[Lv.50]",
		"GorillaFlukeZ[Lv.60]",
		"BanditBss_Maru[Lv.90]",
		"SharkMan[Lv.120]",
		"FlukeZ[Lv.150]",
		"SkyBandit[Lv.250]",
		"[Boss]FlukeZ[Lv.350]",
		"[Boss]SkyBandit[Lv.450]",
		"Marine[Lv.500]",
		"Richman[Lv.1000]",
		"Killer[Lv.1500]",
		"KingKiller[Lv.2000]",
		"[Boss]Blackbeard[Lv.3000]",
		"[B҉o҉s҉s҉E҉v҉e҉n҉t҉]K҉i҉n҉g҉R҉o҉_҉M҉o҉n҉s҉t҉e҉r҉[L҉v҉.҉1҉0҉0҉0҉0҉]"
	  },function(t)
		mon = t
	  end)
  
  tab:Dropdown("Method",{"Over","Under","Behind"},function(a)
	Method =  a
  end)
  
  tab:Toggle("Farm","",false,function(t)
  farm = t
  end)
  
  game:GetService("RunService").Stepped:Connect(function()
	  if farm then
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == mon and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0  then
			  if Method == "Behind" then
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,dis)
			  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			  VirtualUser:CaptureController()
			  VirtualUser:ClickButton1(Vector2.new(851, 158), CFrame.new(Vector3.new(0, 0, 0)))
			  elseif Method == "Over" then
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,dis,0) * CFrame.Angles(math.rad(-90), 0, 0)
			  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			  VirtualUser:CaptureController()
			  VirtualUser:ClickButton1(Vector2.new(851, 158), CFrame.new(Vector3.new(0, 0, 0)))
			  elseif Method == "Under" then
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,dis,0)
			  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			  VirtualUser:CaptureController()
			  VirtualUser:ClickButton1(Vector2.new(851, 158), CFrame.new(Vector3.new(0, 0, 0)))
			  end
			end
		end
	  end
  end)
  
	  tab:Slider("Distance","",0,20,0,function(t)
		dis = t
	  end)
  
	  local  rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
		  SelectedWeapon = t
	  end)
  
	  tab:Toggle("Auto Equip","",false,function(t)
	  _G.A = t
	  if _G.A == false then return end
	  while _G.A do wait()
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				  if v.Name == SelectedWeapon then
				  game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				  end
			  end
		  end
	  end)
  
	  tab:Button("Refresh Weapon","",function()
		  rdropdwon:Clear()
			  TOOLS = {}
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			  if v:IsA("Tool") then
				  rdropdwon:Add(v.Name)
			  end
		  end
	  end)
  
	  local tab = win:Tab("OP FARM", "http://www.roblox.com/asset/?id=6034989568")
	  tab:Toggle("Spam Gryphons","",false,function(t)
		_G.A = t
		if _G.A == false then return end
		while _G.A do wait()
  local args = {
	  [1] = game:GetService("Players").LocalPlayer
  }
  
  game:GetService("Players").LocalPlayer.Character.Gryphon.SkillX.Fire:FireServer(unpack(args))
  end
  end)
  tab:Toggle("Spam TripleKatana","",false,function(t)
	_G.A = t
	if _G.A == false then return end
	while _G.A do wait()
	  local args = {
		  [1] = game:GetService("Players").LocalPlayer
	  }
  
	  game:GetService("Players").LocalPlayer.Character.TripleKatana.SkillX.Fire:FireServer(unpack(args))
  
  end
  end)
  
	  local tab = win:Tab("Stats", "http://www.roblox.com/asset/?id=6034989568")
  
	  tab:Toggle("Melee","",false,function(t)
		melee = t
	  end)
	  tab:Toggle("Defense","",false,function(t)
		defense = t
	  end)
	  tab:Toggle("DevilFruit","",false,function(t)
		devilfruit = t
	  end)
	  tab:Toggle("Sword","",false,function(t)
		sword = t
	  end)
  
	  spawn(function()
		while wait() do
			if melee then
				-- Script generated by SimpleSpy - credits to exx#9394
  
	  local args = {
		[1] = "Melee"
	  }
  
	  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
	  end
	  if defense then
		-- Script generated by SimpleSpy - credits to exx#9394
  
	  local args = {
		[1] = "MaxHealth"
	  }
  
	  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
	  end
	  if devilfruit then
		-- Script generated by SimpleSpy - credits to exx#9394
  
	  local args = {
		[1] = "DevilFruit"
	  }
  
	  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
	  end
	  if sword then
		-- Script generated by SimpleSpy - credits to exx#9394
  
	  local args = {
		[1] = "Sword"
	  }
  
	  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
	  end
	  end
	  end)
  
	  local tab = win:Tab("Teleport", "http://www.roblox.com/asset/?id=6034989568")
  
	  tab:Dropdown("Island",{
		  "one",
		  "two",
		  "three",
		  "four",
		  "five",
		  "six",
		  "seven",
		  "eight"
	  },function(places)
	  island = places
		  local char = game.Players.LocalPlayer.Character
  
		  if places == "one" then char:MoveTo(Vector3.new(532.90863, 0.0669662952, 319.806458)) end
		  if places == "two" then char:MoveTo(Vector3.new(1273.72595, 0.0257096291, -594.63916)) end
		  if places == "three" then char:MoveTo(Vector3.new(488.338654, -2.67108917, -1766.8269)) end
		  if places == "four" then char:MoveTo(Vector3.new(-299.927856, 2.11392164, -1219.42114)) end
		  if places == "five" then char:MoveTo(Vector3.new(-797.856689, -2.08657932, 695.890625)) end
		  if places == "six" then char:MoveTo(Vector3.new(197.328033, 0.257701397, 1046.56506)) end
		  if places == "seven" then char:MoveTo(Vector3.new(49.0822792, 3.30326939, -302.393738)) end
		  if places == "eight" then char:MoveTo(Vector3.new(1345.74878, 230.638641, 950.538513)) end
	  end)
  
	  local fplr = {}
			for _,v in pairs(game.Players:GetPlayers()) do
				table.insert(fplr,v.Name)
			end
  
  
  local rselectplr = tab:Dropdown("Teleport To Players",fplr,function(PPP)
		  local target = game.Players:FindFirstChild(PPP).Character.HumanoidRootPart
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.CFrame * CFrame.new(0,3,0)
		  end)
  
  tab:Button("Refresh Players","",function()
	  rselectplr:Clear()
	  plrs = {}
	  for i,v in pairs(game.Players:GetPlayers()) do
		  rselectplr:Add(v.Name)
	  end
  end)
	  local tab = win:Tab("Misc", "http://www.roblox.com/asset/?id=6034989568")
  
	  tab:Slider("Walkspeed", "",16,2000,0,function(value)
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	  end)
	  tab:Slider("JumpPower", "",50,2000,0,function(value)
		  game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	  end)
  
	  tab:Toggle("NoClip","",false,function(t)
		  _G.A = t
	  if _G.A == false then return end
	  while _G.A do wait()
	  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	  end
	  end)
  end
  
  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  if game.PlaceId == 6329844902 then --Last Piece
	local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
  
	  local win = DiscordLib:Window("LimeHub")
  
	  local serv = win:Server("LastPirates", "")
  
	  local tab = serv:Channel("Main")
  local plr = game.Players.LocalPlayer
  local VirtualUser = game:GetService("VirtualUser")
  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  
  local TOOLS = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			table.insert(TOOLS,v.Name)
		end
	end
  
  function quest()
  if mon == "Bandit [Lv:5]" then
  qu = CFrame.new(32.9741249, 4.83882618, -624.245605)
  tee = CFrame.new(42.6371117, 27.3692169, -949.20813)
  end
  if mon == "Pirates [Lv:15]" then
  qu = CFrame.new(42.1472702, 4.83882618, -624.492188)
  tee = CFrame.new(47.657711, 11.5359821, -1230.7428)
  end
  if mon == "Revolutionary Troop [Lv:50]" then
  qu = CFrame.new(-2411.80493, 9.14271545, -1792.9248)
  tee = CFrame.new(-2466.66406, 9.14271545, -1696.5481)
  end
  if mon == "Marines [Lv:100]" then
  qu = CFrame.new(-1522.0752, 27.2191238, 657.93457)
  tee = CFrame.new(-1696.17126, 27.4427929, 578.370605)
  end
  if mon == "MarineBoss [Lv:150]" then
  qu = CFrame.new(-1522.03442, 27.2191238, 649.539246)
  tee = CFrame.new(-1983.48096, 27.3239727, 848.504822)
  end
  if mon == "Desert Bandit [Lv:200]" then
  qu = CFrame.new(2944.16357, 8.7699604, -1450.05835)
  tee = CFrame.new(3180.32935, 8.38046837, -1456.4585)
  end
  if mon == "YetiBoss [Lv:250]" then
  qu = CFrame.new(-1132.02576, 19.8852081, 2369.87817)
  tee = CFrame.new(-1494.69812, 19.9873276, 2482.87744)
  end
  if mon == "Cyborg [Lv:300]" then
  qu = CFrame.new(1607.49426, 31.3531246, 3309.29614)
  tee = CFrame.new(1456.05737, 31.3531246, 3482.85718)
  end
  if mon == "Rear Admiral [Lv:370]" then
  qu = CFrame.new(-5304.72021, 44.8341751, 770.470215)
  tee = CFrame.new(-5516.06348, 44.8334427, 625.205811)
  end
  if mon == "fishman [Lv:450]" then
  qu = CFrame.new(4625.78076, 13.0129471, 1203.88245)
  tee = CFrame.new(4891.4502, 13.2988081, 1352.86755)
  end
  if mon == "FishmanBoss [Lv:500]" then
  qu = CFrame.new(4616.78369, 13.0129471, 1204.8479)
  tee = CFrame.new(5046.51953, 35.1751595, 1048.28052)
  end
  if mon == "BossFlame [Lv:400]" then
  tee = CFrame.new(556.957092, 38.6225471, -4203.73828)
  end
  if mon == "SharkMan [Lv:570]" then
  qu = CFrame.new(-3013.38354, 9.77563572, 4667.27393)
  tee = CFrame.new(-3087.45288, 9.48030663, 4604.61963)
  end
  if mon == "SkypieanBandit [Lv:600]" then
  qu = CFrame.new(54.2553749, 3910.58765, 1248.78467)
  tee = CFrame.new(116.678192, 3991.9187, 569.671509)
  end
  if mon == "Castle Guardian [Lv:700]" then
  qu = CFrame.new(48.0376892, 3910.58765, 1252.42419)
  tee = CFrame.new(-651.113037, 3780.56958, 1237.68921)
  end
  if mon == "SkypieanBandit [Lv:600]" then
  qu = CFrame.new(51.775753, 3910.58765, 1250.53931)
  tee = CFrame.new(116.598427, 3991.9187, 562.381104)
  end
  if mon == "God of Thunder [Lv:800]" then
  qu = CFrame.new(44.6297493, 3910.58765, 1254.24304)
  tee = CFrame.new(77.7282791, 4038.27832, 2563.84521)
  end
  end
  
  tab:Dropdown("Select Mons/Quest",{
	"Bandit [Lv:5]",
	"Pirates [Lv:15]",
	"Revolutionary Troop [Lv:50]",
	"Marines [Lv:100]",
	"MarineBoss [Lv:150]",
	"Desert Bandit [Lv:200]",
	"YetiBoss [Lv:250]",
	"Cyborg [Lv:300]",
	"Rear Admiral [Lv:370]",
	"BossFlame [Lv:400]",
	"fishman [Lv:450]",
	"FishmanBoss [Lv:500]",
	"SharkMan [Lv:570]",
	"SkypieanBandit [Lv:600]",
	"Castle Guardian [Lv:700]",
	"God of Thunder [Lv:800]"
  },function(t)
  mon = t
  end)
  
  tab:Toggle("Auto Farm",false,function(t)
  farm = t
  end)
  
  spawn(function()
  while wait() do
  if farm then
	  if game:GetService("Players").LocalPlayer.Quest.Doing.Value == "None" then
	  quest()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = qu
	  wait()
	  game:GetService('VirtualUser'):SetKeyDown('0x65')
	  game:GetService('VirtualUser'):SetKeyUp('0x65')
	 elseif game:GetService("Players").LocalPlayer.Quest.Doing.Value ~= "None" then
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tee
  equip()
  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	  pcall(function()
	  if v.Name == mon and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
		  repeat wait()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,dis,0) * CFrame.Angles(math.rad(-90), 0, 0)
		  if v.Humanoid.Health ~= v.Humanoid.MaxHealth then
		  v.Head:Destroy()
		  end
		  until farm == false or v.Humanoid.Health <= 0
	  end
  end)
  end
  end
  end
  end
  end)
  
  game:GetService("RunService").RenderStepped:Connect(function()
  if farm then
  game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
  end
  end)
  game:GetService("RunService").RenderStepped:Connect(function()
  if farm then
  VirtualUser:CaptureController()
  VirtualUser:ClickButton1(Vector2.new(851, 158), CFrame.new(Vector3.new(0, 0, 0)))
  end
  end)
  
  
  tab:Slider("Distance",0,10,0,function(t)
	dis = t
  end)
  
  local rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
	SelectedWeapon = t
  end)
  
  function equip()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SelectedWeapon then
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
		end
	end
  
  tab:Button("Refresh Weapon",function()
	rdropdwon:Clear()
		TOOLS = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			rdropdwon:Add(v.Name)
		end
	end
  end)
  
  
  
  local tab = serv:Channel("Stats")
  
  
  tab:Toggle("Melee",false,function(t)
	  Melee = t
  end)
  tab:Toggle("Sword",false,function(t)
	  Sword = t
  end)
  tab:Toggle("Defense",false,function(t)
	  Defense = t
  end)
  tab:Toggle("Devil Fruit",false,function(t)
	  Devil = t
  end)
  
  spawn(function()
	  while wait() do
		  if Melee then
			  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = 1,
	  [2] = "1"
  }
  
  game:GetService("ReplicatedStorage").okStats:FireServer(unpack(args))
  end
  if Sword then
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = 1,
	  [2] = "2"
  }
  
  game:GetService("ReplicatedStorage").okStats:FireServer(unpack(args))
  end
  if Defense then
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = 1,
	  [2] = "3"
  }
  
  game:GetService("ReplicatedStorage").okStats:FireServer(unpack(args))
  end
  if Devil then
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = 1,
	  [2] = "4"
  }
  
  game:GetService("ReplicatedStorage").okStats:FireServer(unpack(args))
  end
  end
  end)
  
	  local tab = serv:Channel("Teleports")
  tab:Button("Inventory",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(1550.70422, 10.0250502, 2054.76147, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  end)
  tab:Button("Starter",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(-72.5999222, 8.86068058, -725.230713)
  end)
  tab:Button("Buggy",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(1369.63562, 15.5065908, 152.764465)
  end)
  tab:Button("Rock island",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(1508.625, 12.3852196, 2083.63965)
  end)
  tab:Button("Marine",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(-1512.62488, 27.6955662, 622.570374)
  end)
  tab:Button("Revolutionary",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(-2418.73218, 18.2067146, -1795.55676)
  end)
  tab:Button("Alabasta",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(2960.39722, 14.1248579, -1556.10449)
  end)
  tab:Button("Cyborg island",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(1590.88892, 34.668148, 3253.4436)
  end)
  tab:Button("Yeti",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(-1161.68982, 28.9163189, 2513.19727)
  end)
  tab:Button("MarineFord",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(-5100.86035, 14.0761595, 569.569885)
  end)
  tab:Button("Flame Island",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(611.335876, 18.1760387, -3095.37451)
  end)
  tab:Button("Fishmen Island",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(4625.55615, 13.0129471, 1167.02942)
  end)
  tab:Button("Shark",function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame .new(-2955.37964, 15.9339905, 4630.72168)
  end)
  
  
  local tab = serv:Channel("Misc")
  
  tab:Slider("Walkspeed",16,2000,0,function(value)
	  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
  end)
  tab:Slider("JumpPower",50,2000,0,function(value)
	  game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
  end)
  tab:Toggle("Ctrl + Click = TP",false,function(vu)
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
	  end)
  
  tab:Dropdown("Buy Power",{"Haki (300K)","Soru (50K)"},function(t)
	  power = t
  end)
  
  tab:Button("Buy",function()
	 if power == "Haki (300K)" then
		 -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "BusoHaki",
	  [2] = game:GetService("Players").LocalPlayer.PlayerGui.BusoHakiShop
  }
  
  game:GetService("ReplicatedStorage").AlrPowerBuy:FireServer(unpack(args))
  
  elseif power == "Soru (50K)" then
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "Soru",
	  [2] = game:GetService("Players").LocalPlayer.PlayerGui.SoruShop
  }
  
  game:GetService("ReplicatedStorage").AlrPowerBuy:FireServer(unpack(args))
  end
  end)
  end
  
  if game.PlaceId == 6696107654 then --Max Ghoul
	local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
  if ui then
	  ui:Destroy()
  end
  local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
  
  local win = Flux:Window("Max Ghoul", "LimeHubZ", Color3.fromRGB(199, 234, 70) ,Enum.KeyCode.RightControl)
  local tab = win:Tab("MainFarm", "http://www.roblox.com/asset/?id=6034989568")
  local plr = game.Players.LocalPlayer
  local VirtualUser = game:GetService("VirtualUser")
  local self = game.Players.LocalPlayer.Character.HumanoidRootPart
  
  local mon = {}
	  for i,v in pairs(game:GetService("Workspace").Boss:GetChildren()) do
		  if v:IsA("Model") then
		  table.insert(mon,v.Name)
	  end
  end
  
	local TOOLS = {}
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			  if v:IsA("Tool") then
				  table.insert(TOOLS,v.Name)
			  end
		  end
  
  tab:Dropdown("Select Mon",{
	  "Low Rank Ghoul",
	  "High Rank Ghoul",
	  "Extra Rank Ghoul",
	  "C-Rank Investigator",
	  "B-Rank Investigator",
	  "A-Rank Investigator"
  },function(t)
	  mon = t
  end)
  
  
  tab:Toggle("Start Farm","",false,function(t)
  farm = t
  end)
  spawn(function()
	while wait() do
	  if farm then
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if game:GetService("Workspace"):FindFirstChild(mon) then
			if v.Name == mon and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0  then
				repeat wait()
				VirtualUser:CaptureController()
				VirtualUser:ClickButton1(Vector2.new(851, 158), CFrame.new(Vector3.new(0, 0, 0)))
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,dis,0) * CFrame.Angles(math.rad(-90), 0, 0)
			until  farm == false or v.Humanoid.Health <=0 or not v:FindFirstChild("Humanoid")
		  end
		  end
	  end
	end
	  end
  end)
  
  tab:Slider("Distance","",0,20,0,function(t)
	  dis = t
  end)
  
  local  rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
	  SelectedWeapon = t
  end)
  
  tab:Toggle("Auto Equip","",false,function(t)
  _G.A = t
  if _G.A == false then return end
  while _G.A do wait()
	  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			  if v.Name == SelectedWeapon then
			  game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			  end
		  end
	  end
  end)
  
  tab:Button("Refresh Weapon","",function()
	  rdropdwon:Clear()
		  TOOLS = {}
	  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("Tool") then
			  rdropdwon:Add(v.Name)
		  end
	  end
  end)
  
  local tab = win:Tab("Stats", "http://www.roblox.com/asset/?id=6034989568")
  
  tab:Label("Lag")
  
  tab:Toggle("Health","",false,function(t)
	  Health = t
  end)
  tab:Toggle("Kagune","",false,function(t)
	  Kagune = t
  end)
  tab:Toggle("Quinque","",false,function(t)
	  Quinque = t
  end)
  
  spawn(function()
	  while wait() do
	  if Health then
		  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "MaxHealth"
  }
  
  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
  end
  if Kagune then
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "Kagune"
  }
  
  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
  end
  if Quinque then
	  -- Script generated by SimpleSpy - credits to exx#9394
  
  local args = {
	  [1] = "Sword"
  }
  
  game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
  end
  end
  end)
  
  local Misc = win:Tab("Stats", "http://www.roblox.com/asset/?id=6034989568")
  
		 Misc:Button("FPS Boost","",function()
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
	  end
  