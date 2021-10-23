local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/24Thmors/asd/main/README.md")()

local win = DiscordLib:Window("RyzenHub | King Legacy")

local serv = win:Server("Dungeon", "")

local tab = serv:Channel("Dungeon")

local diss1 = 20

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
      EquipWeapon(_G.SelectedWeapon2)
      autoskillheehee()
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

diss1 = 6
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