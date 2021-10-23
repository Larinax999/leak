local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/24Thmors/asd/main/README.md")()

  local win = DiscordLib:Window("LimeHub")

  local serv = win:Server("KL", "")

  local tab = serv:Channel("Main")
  function CheckLevel()
    if game.PlaceId == 4520749081 then
    local lvl = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
    if lvl >= 1 and lvl <= 9 then
      namemobs = "Soldier [Lv. 1]"
      levelquest = 1
      CFrameQuest = CFrame.new(2276.29541, 48.5389481, -1647.28113, 0.613133192, -0, -0.789979577, 0, 1, -0, 0.789979577, 0, 0.613133192)
      removequest = "Beli 250"
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
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,6,0) * CFrame.Angles(math.rad(-90), 0, 0)
          end
          attack()
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