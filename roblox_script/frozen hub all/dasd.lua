local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SaijiKung/GG/master/New%20UI"))()
local window = library.new("Project XL", "Dark")

local Farm = window:addPage("Farming")
local Tele = window:addPage("Teleport")
local Shop = window:addPage("Shop")
local Misc = window:addPage("Misc")

--// Farming
local alldummy = {}
for i,v in pairs(game.Workspace.Live:GetChildren()) do
   table.insert(alldummy , v.Name) 
end
local selectdummy = "Wood Dummies"
Farm:addDropdown("Dummy ", alldummy, 1, function(value)
    selectdummy = value
end)

local usingweapon = ""
Farm:addTextBox("Your Weapon Name", function(value)
    usingweapon = value
end)

local farming = false
Farm:addToggle("Auto Farm", false, function(value)
    farming = value
end)

local questing = false
Farm:addToggle("Auto Quest", false, function(value)
    questing = value
end)

local attacking = false
Farm:addToggle("Auto Hit", false, function(value)
    attacking = value
end)

local distance = 3
Farm:addSlider("Distance", 0, 3, 100, function(value)
    distance = value
end)

local urning = false
Farm:addToggle("Auto Use Urns", false, function(value)
    urning = value
end)

local bagging = false
Farm:addToggle("Auto Use Bag", false, function(value)
    bagging = value
end)
--// Farming Work \\--
spawn(function()
    while wait(0) do
        if farming == true then
        repeat
            for i,mob in pairs(game.Workspace.Live[selectdummy]:GetChildren()) do
            repeat
            if game.Players.LocalPlayer.Backpack:FindFirstChild(usingweapon) then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                       v.Parent = game.Players.LocalPlayer.Backpack 
                    end
                end
                game.Players.LocalPlayer.Backpack[usingweapon].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Character[usingweapon]["Combat Script"].Debounce.Value = false
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,0,distance)
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
            wait(0)
            until farming == false or mob.Humanoid.Health <= 0
            end 
        until farming == false
        end
    end
end)
game.RunService.Stepped:Connect(function()
    if attacking == true then
        game:GetService("ReplicatedStorage").RemoteEvents.BladeCombatRemote:FireServer(false,Vector3.new(5082.95703, -921.745361, 9235.61914),CFrame.new(5082.95703, -921.745361, 9235.61914, -0.865790904, 0.0497604646, -0.497925729, -0, 0.995043516, 0.0994401872, 0.500405967, 0.0860944092, -0.861499608))
    end
    if urning == true then
        for i,urn in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if urn.Name == "Urn" then
               urn.Parent = game.Players.LocalPlayer.Character
               game:GetService("ReplicatedStorage").RemoteEvents.ItemRemote:FireServer()
            end
        end
        for i,urn in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if urn.Name == "Urn" then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                       v.Parent = game.Players.LocalPlayer.Backpack 
                    end
                end
                urn.Parent = game.Players.LocalPlayer.Character
                game:GetService("ReplicatedStorage").RemoteEvents.ItemRemote:FireServer()
            end
        end
    end
    if bagging == true then
        for i,bag in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if bag.Name == "Bag" then
               bag.Parent = game.Players.LocalPlayer.Character
               game:GetService("ReplicatedStorage").RemoteEvents.ItemRemote:FireServer()
            end
        end
        for i,bag in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if bag.Name == "Bag" then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                       v.Parent = game.Players.LocalPlayer.Backpack 
                    end
                end
                bag.Parent = game.Players.LocalPlayer.Character
                game:GetService("ReplicatedStorage").RemoteEvents.ItemRemote:FireServer()
            end
        end
    end
end)

game.RunService.Stepped:Connect(function()
    if questing == true then
        for i,v in pairs(game.Workspace.Live[selectdummy]:GetChildren()) do
            local quest = v.Quest.Value
            local accepted = game.Players.LocalPlayer.Quests[quest].Value
            local progress = game.Players.LocalPlayer.QuestValues[quest.."Progress"].Value
            local completed = game.Players.LocalPlayer.QuestValues[quest.."Completed"].Value
            if accepted == false then
                game:GetService("ReplicatedStorage").RemoteEvents.ChangeQuestRemote:FireServer(game:GetService("ReplicatedStorage").Quests[quest])
            end
        end
    end
end)

--// Teleport \\--
local allquest = {}
for i,v in pairs(game.Workspace.NPCS:GetChildren()) do
   table.insert(allquest , v.Name) 
end
Tele:addDropdown("Npc / Quest ", allquest, 1, function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.NPCS[value].HumanoidRootPart.CFrame * CFrame.new(0,0,5)
end)

local allshop = {}
for i,v in pairs(game.Workspace.Shop:GetChildren()) do
   table.insert(allshop , v.Name) 
end
Tele:addDropdown("Shop ", allshop, 1, function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Shop[value].CFrame * CFrame.new(0,0,5)
end)

local allplayer = {}
for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("Humanoid") then
        table.insert(allplayer , v.Name)
    end
end
Tele:addDropdown("Player ", allplayer, 1, function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[value].HumanoidRootPart.CFrame * CFrame.new(0,0,5)
end)

Tele:addButton("Refresh Players", function()
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("Humanoid") then
        table.insert(allplayer , v.Name)
    end
    end
end)

local iteming = false
Tele:addToggle("Auto Items", false, function(value)
    iteming = value
end)

--// Teleport Work \\--
game.RunService.Stepped:Connect(function()
    if iteming == true then
        for i,item in pairs(game.Workspace:GetChildren()) do
            if item:IsA("Tool") then
               game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = item.Handle.CFrame
            end
        end
    end
end)

--// Shop \\--
Shop:addButton("Buy Armor Bag (5 Pack)", function()
    game:GetService("ReplicatedStorage").RemoteEvents.ShopRemote:FireServer("Armor Bag (5 Pack)")
end)

Shop:addButton("Buy Armor Bag", function()
    game:GetService("ReplicatedStorage").RemoteEvents.ShopRemote:FireServer("Armor Bag")
end)

Shop:addButton("Buy Fashion Bag (5 Pack)", function()
    game:GetService("ReplicatedStorage").RemoteEvents.ShopRemote:FireServer("Fashion Bag (5 Pack)")
end)

Shop:addButton("Buy Fashion Bag", function()
    game:GetService("ReplicatedStorage").RemoteEvents.ShopRemote:FireServer("Fashion Bag")
end)

--// Misc \\--
Misc:addButton("Hide Name", function()
    for i,v in pairs(game.Players.LocalPlayer.Character.Head.Overhead:GetChildren()) do
       v:Destroy() 
    end
end)

Misc:addButton("Use All Codes", function()
    for i,code in pairs(game.Players.LocalPlayer.Codes:GetChildren()) do
       game:GetService("ReplicatedStorage").RemoteEvents.CodeRemote:FireServer(code.Name) 
    end
end)

local usingitem = ""
Misc:addTextBox("Your Item Name", function(value)
    usingitem = value
end)

Misc:addButton("Equip", function()
    for i,item in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if item.Name == usingitem then
           item.Parent = game.Players.LocalPlayer.Character
          else
              print("not found!")
        end
    end
end)


--[[Farm:addToggle("Auto Farm", false, function(value)
   print(value)
end)
Farm:addDropdown("TP Location", {"Prison", "Donut Shop", "Bank", "Jewelry Store", "Museum"}, 1, function(value)
   print(value)
end)
Farm:addButton("TP To Location", function()
   print("tped okok")
end)
Farm:addSlider("Walkspeed", 16, 16, 50, function(value)
   print(value)
end)
Farm:addTextBox("Player Name", function(value)
   print(value)
end)
Farm:addButton("TP To Player", function()
   print("tped okok")
end)
Farm:addColorPicker("Frame Color", Color3.fromRGB(255, 0, 0), function(value)
   colorFrame.BackgroundColor3 = value
end)]]

window:selectPage(window.pages[1])