if game.PlaceId == 4587545091 then
    repeat wait() until game:IsLoaded()
    local ui = game:GetService("CoreGui"):FindFirstChild("HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
    if ui then
    ui:Destroy()
    end
    local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/DookDekDEE/gui/main/fairyhub.txt")()
    local win = Flux:Window("Viet Nam Piece", "Hyper X Hub", Color3.fromRGB(251, 130, 35), Enum.KeyCode.RightControl)
    local tab = win:Tab("Main", "")
  
    local TOOLS = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(TOOLS,v.Name)
        end
    end
    function equip()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v.Name == SelectedWeapon then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              end
          end
      end
  
    tab:Toggle("Farm God","",false,function(t)
        _G.FarmGod = t
    end)
    spawn(function()
    while wait() do
    if _G.FarmGod then
    pcall(function()
      equip()
    if not game:GetService("Workspace")["Dark Island (Lv.10k+)"]["LAST QUEST DARKK :V"].God:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(2432.2680664063, 110.94137573242, -3108.1435546875)
    end
    if game:GetService("Workspace")["Dark Island (Lv.10k+)"]["LAST QUEST DARKK :V"].God:FindFirstChild("HumanoidRootPart") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Dark Island (Lv.10k+)"]["LAST QUEST DARKK :V"].God.HumanoidRootPart.CFrame * CFrame.new(0,7,0) * CFrame.Angles(math.rad(-90),0,0)
    game:GetService('VirtualUser'):CaptureController()
    game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
    end
    end)
    end
    end
  end)
  
    game:GetService("RunService").RenderStepped:Connect(function()
      if _G.FarmGod then
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
      fireclickdetector(game:GetService("Workspace")["Dark Island (Lv.10k+)"]["LAST QUEST DARKK :V"].ClickPart.ClickDetector)
      wait(.1)
      game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept2.RemoteEvent:FireServer()
    end
    end)
  
    tab:Toggle("Click Chest","",false,function(t)
        chest = t
    end)
  
    spawn(function()
    while wait() do
    if chest then
    if not game:GetService("Workspace")["Starter Island (Lv 1+)"]["VIP PRO CHEST"]:FindFirstChild("Closed Chest") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(2564.3479003906, 116.34535217285, -3263.8002929688)
    end
    if game:GetService("Workspace")["Starter Island (Lv 1+)"]["VIP PRO CHEST"]:FindFirstChild("Closed Chest") then
    for i = 1,10 do
    fireclickdetector(game:GetService("Workspace")["Starter Island (Lv 1+)"]["VIP PRO CHEST"]["Closed Chest"].ClickDetector)
    end
    end
    end
    end
    end)
  
    local  rdropdwon = tab:Dropdown("Select Weapon",TOOLS,function(t)
      SelectedWeapon = t
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
  
  
  
  
    local tab = win:Tab("Stat", "")
    tab:Toggle("Melee","",false,function(t)
        melee = t
    end)
    tab:Toggle("Sword","",false,function(t)
        sword = t
    end)
    tab:Toggle("Defense","",false,function(t)
        defense = t
    end)
    tab:Toggle("Devil Fruit","",false,function(t)
        devil = t
    end)
  
    spawn(function()
    while wait() do
    if melee then
    game:GetService("ReplicatedStorage").StatSystem.Points:FireServer("Melee")
    end
    if sword then
    game:GetService("ReplicatedStorage").StatSystem.Points:FireServer("Sword")
    end
    if defense then
    game:GetService("ReplicatedStorage").StatSystem.Points:FireServer("MaxHealth")
    end
    if devil then
    game:GetService("ReplicatedStorage").StatSystem.Points:FireServer("DevilFruit")
    end
    end
    end)
  end