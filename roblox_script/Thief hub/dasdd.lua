        _G.Setting = {

            Tab = {
               LeftColor = Color3.fromRGB(255, 107, 242),
              RightColor = Color3.fromRGB(129, 242, 233)
        },
          Toggle = {
              LeftColor = Color3.fromRGB(197, 255, 253),
              RightColor = Color3.fromRGB(197, 255, 253)
          },
            Slider = {
                LeftColor = Color3.fromRGB(172, 27, 255),
              RightColor = Color3.fromRGB(255, 171, 255)
          }
        }

         ColorMainI = _G.Setting.Tab.LeftColor or Color3.fromRGB(255, 185, 0)
         ColorMainII = _G.Setting.Tab.RightColor or Color3.fromRGB(255, 104, 0)
         ColorMainIII = _G.Setting.Toggle.LeftColor or Color3.fromRGB(255, 185, 0)
         ColorMainIIII = _G.Setting.Toggle.RightColor or Color3.fromRGB(255, 104, 0)
         ColorMainIIIII = _G.Setting.Slider.LeftColor or Color3.fromRGB(255, 104, 0)
         ColorMainIIIIII = _G.Setting.Slider.RightColor or Color3.fromRGB(255, 185, 0)

         local games = {
            [4442272183] = {
               Title = "Blox Fruits",
               Icons = "C",
               Welcome = function()
                     return tostring(
                        "<Color=White>Welcome " ..
                           "<Color=Blue>" ..
                                 game:GetService("Players").LocalPlayer.Name .. "!" .. " \n<Color=Red>To MagMaHub Paid"
                     )
               end
            }
         }
         if games[game.PlaceId] then
            if games[game.PlaceId].Title == "Blox Fruits" then
               local function notify(types, ...)
                     if types == "Notify" then
                        require(game.ReplicatedStorage.Notification).new(...):Display()
                     end
               end
               notify("Notify", games[game.PlaceId].Welcome())
            end
         end

         if game.CoreGui:FindFirstChild("Library") then
            game.CoreGui:FindFirstChild("Library"):Destroy()
         end
         local VLib = {RainbowColorValue = 0, HueSelectionPosition = 0}
         local UserInputService = game:GetService("UserInputService")
         local TweenService = game:GetService("TweenService")
                           TweenService:Create(
                                 Button,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
                           ):Play()
                        end
                     )
                     Button.MouseLeave:Connect(
                        function()
                           TweenService:Create(
                                 Button,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
                           ):Play()
                        end
                     )

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

                     Button.MouseButton1Click:Connect(
                        function()
                           pcall(callback)
                           Button.TextSize = 0
                           TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 17}):Play()
                           wait(.2)
                           TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 14}):Play()
                        end
                     )
               end
               function ContainerItems:Toggle(text, Default, callback)
                     local Toggled = Default or false
         local RunService = game:GetService("RunService")
         local LocalPlayer = game:GetService("Players").LocalPlayer
         local Mouse = LocalPlayer:GetMouse()

         coroutine.wrap(
            function()
               while wait() do
                     VLib.RainbowColorValue = VLib.RainbowColorValue + 1 / 255
                     VLib.HueSelectionPosition = VLib.HueSelectionPosition + 1

                     if VLib.RainbowColorValue >= 1 then
                        VLib.RainbowColorValue = 0
                     end

                     if VLib.HueSelectionPosition == 80 then
                        VLib.HueSelectionPosition = 0
                     end
               end
            end
         )()

         local function MakeDraggable(topbarobject, object)
            local Dragging = nil
            local DragInput = nil
            local DragStart = nil
            local StartPosition = nil

            local function Update(input)
               local Delta = input.Position - DragStart
               local pos =
                     UDim2.new(
                     StartPosition.X.Scale,
                     StartPosition.X.Offset + Delta.X,
                     StartPosition.Y.Scale,
                     StartPosition.Y.Offset + Delta.Y
               )
               local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
               Tween:Play()
            end

            topbarobject.InputBegan:Connect(
               function(input)
                     if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        Dragging = true
                        DragStart = input.Position
                        StartPosition = object.Position

                        input.Changed:Connect(
                           function()
                                 if input.UserInputState == Enum.UserInputState.End then
                                    Dragging = false
                                 end
                           end
                        )
                     end
               end
            )

            topbarobject.InputChanged:Connect(
               function(input)
                     if
                        input.UserInputType == Enum.UserInputType.MouseMovement or
                           input.UserInputType == Enum.UserInputType.Touch
                     then
                        DragInput = input
                     end
               end
            )

            UserInputService.InputChanged:Connect(
               function(input)
                     if input == DragInput and Dragging then
                        Update(input)
                     end
               end
            )
         end

         local Library = Instance.new("ScreenGui")
         Library.Name = "Library"
         Library.Parent = game.CoreGui
         Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

         local uitoggled = false
         UserInputService.InputBegan:Connect(
            function(io, p)
               if io.KeyCode == Enum.KeyCode.RightControl then
                     if uitoggled == false then
                        Library.Enabled = false
                        uitoggled = true
                     else
                        Library.Enabled = true
                        uitoggled = false
                     end
               end
            end
         )

         function VLib:Window(text, textgame, textcircle, NumberTab)
            local FirstTab = false
            local MainFrame = Instance.new("Frame")
            local MainCorner = Instance.new("UICorner")
            local LeftFrame = Instance.new("Frame")
            local LeftFrameCorner = Instance.new("UICorner")
            local MainTitle = Instance.new("TextLabel")
            local Circle = Instance.new("Frame")
            local CircleCorner = Instance.new("UICorner")
            local CircleName = Instance.new("TextLabel")
            local GameTitle = Instance.new("TextLabel")
            local TabHolder = Instance.new("ScrollingFrame")
            local TabHoldLayout = Instance.new("UIListLayout")
            local RainbowLine = Instance.new("Frame")
            local RainbowLineCorner = Instance.new("UICorner")
            local ContainerHold = Instance.new("Folder")
            local DragFrame = Instance.new("Frame")
            local Glow = Instance.new("ImageLabel")

            MainFrame.Name = "MainFrame"
            MainFrame.Parent = Library
            MainFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            MainFrame.Position = UDim2.new(0.5, -325, 0.5, -250)
            MainFrame.Size = UDim2.new(0, 650, 0, 500)

            MainCorner.CornerRadius = UDim.new(0, 5)
            MainCorner.Name = "MainCorner"
            MainCorner.Parent = MainFrame

            LeftFrame.Name = "LeftFrame"
            LeftFrame.Parent = MainFrame
            LeftFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            LeftFrame.Position = UDim2.new(-0.000674468291, 0, -0.000149806539, 0)
            LeftFrame.Size = UDim2.new(0, 190, 0, 500)

            LeftFrameCorner.CornerRadius = UDim.new(0, 5)
            LeftFrameCorner.Name = "LeftFrameCorner"
            LeftFrameCorner.Parent = LeftFrame

            local TitleName = Instance.new("Frame")
            local LeftFrameCorner = Instance.new("UICorner")

            --Properties:

            TitleName.Name = "TitleName"
            TitleName.Parent = LeftFrame
            TitleName.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            TitleName.BorderSizePixel = 0
            TitleName.Position = UDim2.new(0, 0, -0.0010000458, 0)
            TitleName.Size = UDim2.new(0, 190, 0, 82)

            LeftFrameCorner.CornerRadius = UDim.new(0, 5)
            LeftFrameCorner.Name = "LeftFrameCorner"
            LeftFrameCorner.Parent = TitleName

            MainTitle.Name = "MainTitle"
            MainTitle.Parent = LeftFrame
            MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainTitle.BackgroundTransparency = 1.000
            MainTitle.Position = UDim2.new(0.168, 0, 0.043, 0)
            MainTitle.Size = UDim2.new(0, 71, 0, 20)
            MainTitle.Font = Enum.Font.Gotham
            MainTitle.Text = text
            MainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            MainTitle.TextSize = 25.000
            MainTitle.TextXAlignment = Enum.TextXAlignment.Left

            GameTitle.Name = "GameTitle"
            GameTitle.Parent = LeftFrame
            GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            GameTitle.BackgroundTransparency = 1.000
            GameTitle.Position = UDim2.new(0.168, 0, 0.089, 6)
            GameTitle.Size = UDim2.new(0, 71, 0, 20)
            GameTitle.Font = Enum.Font.Gotham
            GameTitle.Text = textgame
            GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            GameTitle.TextSize = 17.000
            GameTitle.TextTransparency = 0.400
            GameTitle.TextXAlignment = Enum.TextXAlignment.Left

            TabHolder.Name = "TabHolder"
            TabHolder.Parent = LeftFrame
            TabHolder.Active = true
            TabHolder.BackgroundColor3 = Color3.new(1, 1, 1)
            TabHolder.BackgroundTransparency = 1
            TabHolder.BorderSizePixel = 0
            TabHolder.Position = UDim2.new(0.0810000747, 0, 0.188999996, 0)
            TabHolder.Size = UDim2.new(0, 169, 0, 355)
            TabHolder.CanvasPosition = Vector2.new(0, 0)
            TabHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
            TabHolder.ScrollBarThickness = 3

            TabHoldLayout.Name = "TabHoldLayout"
            TabHoldLayout.Parent = TabHolder
            TabHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
            TabHoldLayout.Padding = UDim.new(0, 5)

            local About = Instance.new("Frame")
            local ImageLabel = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            local GameName = Instance.new("TextLabel")
            local TimeZone = Instance.new("TextLabel")

            About.Name = "About"
            About.Parent = LeftFrame
            About.BackgroundColor3 = Color3.fromRGB(30,30,30)
            About.BorderSizePixel = 0
            About.Position = UDim2.new(0, 0, 0.908999979, 0)
            About.Size = UDim2.new(0, 190, 0, 45)



            if NumberTab > 9 then
               TabHolder.CanvasSize = UDim2.new(0, 0, 0, 400)
            elseif NumberTab > 10 then
               NumberTabHolder = 400
               for i = 1, NumberTab - 9 do
                     TabHolder.CanvasSize = UDim2.new(0, 0, 0, NumberTabHolder + 40)
               end
            end

            ContainerHold.Name = "ContainerHold"
            ContainerHold.Parent = MainFrame

            DragFrame.Name = "DragFrame"
            DragFrame.Parent = MainFrame
            DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DragFrame.BackgroundTransparency = 1.000
            DragFrame.Position = UDim2.new(0.30130294, 0, 0.00253164559, 0)
            DragFrame.Size = UDim2.new(0, 428, 0, 21)

            Glow.Name = "Glow"
            Glow.Parent = LeftFrame
            Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Glow.BackgroundTransparency = 1.000
            Glow.BorderSizePixel = 0
            Glow.Position = UDim2.new(0, -15, 0, -15)
            Glow.Size = UDim2.new(1, 30, 1, 30)
            Glow.ZIndex = 0
            Glow.Image = "rbxassetid://4996891970"
            Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
            Glow.ScaleType = Enum.ScaleType.Slice
            Glow.SliceCenter = Rect.new(20, 20, 280, 280)

            MakeDraggable(DragFrame, MainFrame)

            function VLib:Notification(textdesc)
               local NotificationHold = Instance.new("TextButton")
               local NotificationFrame = Instance.new("Frame")
               local OkayBtn = Instance.new("TextButton")
               local OkayBtnCorner = Instance.new("UICorner")
               local OkayBtnTitle = Instance.new("TextLabel")
               local NotificationTitle = Instance.new("TextLabel")
               local NotificationDesc = Instance.new("TextLabel")

               NotificationHold.Name = "NotificationHold"
               NotificationHold.Parent = MainFrame
               NotificationHold.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
               NotificationHold.BackgroundTransparency = 0.700
               NotificationHold.BorderSizePixel = 0
               NotificationHold.Size = UDim2.new(0, 650, 0, 500)
               NotificationHold.AutoButtonColor = false
               NotificationHold.Font = Enum.Font.SourceSans
               NotificationHold.Text = ""
               NotificationHold.TextColor3 = Color3.fromRGB(0, 0, 0)
               NotificationHold.TextSize = 14.000

               TweenService:Create(
                     NotificationHold,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundTransparency = 0.7}
               ):Play()
               wait(0.4)

               NotificationFrame.Name = "NotificationFrame"
               NotificationFrame.Parent = NotificationHold
               NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
               NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
               NotificationFrame.BorderSizePixel = 0
               NotificationFrame.ClipsDescendants = true
               NotificationFrame.Position = UDim2.new(0.5, 0, 0.498432577, 0)
               NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

               NotificationFrame:TweenSize(
                     UDim2.new(0, 305, 0, 283),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     .6,
                     true
               )

               OkayBtn.Name = "OkayBtn"
               OkayBtn.Parent = NotificationFrame
               OkayBtn.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
               OkayBtn.Position = UDim2.new(0.171131134, 0, 0.759717345, 0)
               OkayBtn.Size = UDim2.new(0, 200, 0, 42)
               OkayBtn.AutoButtonColor = false
               OkayBtn.Font = Enum.Font.SourceSans
               OkayBtn.Text = ""
               OkayBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
               OkayBtn.TextSize = 14.000

               OkayBtnCorner.CornerRadius = UDim.new(0, 5)
               OkayBtnCorner.Name = "OkayBtnCorner"
               OkayBtnCorner.Parent = OkayBtn

               OkayBtnTitle.Name = "OkayBtnTitle"
               OkayBtnTitle.Parent = OkayBtn
               OkayBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
               OkayBtnTitle.BackgroundTransparency = 1.000
               OkayBtnTitle.Size = UDim2.new(0, 200, 0, 42)
               OkayBtnTitle.Text = "Okey"
               OkayBtnTitle.Font = Enum.Font.Gotham
               OkayBtnTitle.TextColor3 = Color3.fromRGB(202, 202, 202)
               OkayBtnTitle.TextSize = 24.000

               NotificationTitle.Name = "NotificationTitle"
               NotificationTitle.Parent = NotificationFrame
               NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
               NotificationTitle.BackgroundTransparency = 1.000
               NotificationTitle.Position = UDim2.new(0.0559394211, 0, 0.0652336925, 0)
               NotificationTitle.Size = UDim2.new(0, 272, 0, 26)
               NotificationTitle.ZIndex = 3
               NotificationTitle.Font = Enum.Font.Gotham
               NotificationTitle.Text = "Notification"
               NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
               NotificationTitle.TextSize = 24.000

               NotificationDesc.Name = "NotificationDesc"
               NotificationDesc.Parent = NotificationFrame
               NotificationDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
               NotificationDesc.BackgroundTransparency = 1.000
               NotificationDesc.Position = UDim2.new(0.0670000017, 0, 0.218999997, 0)
               NotificationDesc.Size = UDim2.new(0, 274, 0, 146)
               NotificationDesc.Font = Enum.Font.Gotham
               NotificationDesc.Text = textdesc
               NotificationDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
               NotificationDesc.TextSize = 20.000
               NotificationDesc.TextWrapped = true
               NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
               NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

               for i = 1, string.len(textdesc) do
                  NotificationDesc.Text = string.sub(textdesc, 1, i)
                  if string.sub(textdesc, i, i) == "!" or string.sub(textdesc, i, i) == "." or string.sub(textdesc, i, i) == "?" then
                     wait(1)
                  elseif string.sub(textdesc, i, i) == "," then
                     wait(.5)
                  else
                     wait(.05)
                  end
               end

               OkayBtn.MouseEnter:Connect(
                  function()
                     TweenService:Create(
                        OkayBtn,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
                     ):Play()
                  end
               )

               OkayBtn.MouseLeave:Connect(
                     function()
                        TweenService:Create(
                           OkayBtn,
                           TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                           {BackgroundColor3 = Color3.fromRGB(34, 34, 34)}
                        ):Play()
                     end
               )

               OkayBtn.MouseButton1Click:Connect(
                     function()
                        NotificationFrame:TweenSize(
                           UDim2.new(0, 0, 0, 0),
                           Enum.EasingDirection.Out,
                           Enum.EasingStyle.Quart,
                           .6,
                           true
                        )

                        wait(0.4)

                        TweenService:Create(
                           NotificationHold,
                           TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                           {BackgroundTransparency = 1}
                        ):Play()

                        wait(.3)

                        NotificationHold:Destroy()
                     end
               )
            end

            coroutine.wrap(
               function()
                     while wait() do
                     end
               end
            )()
            local Tabs = {}
            function Tabs:Tab(text)
               local Tab = Instance.new("TextButton")
               local TabCorner = Instance.new("UICorner")
               local Title = Instance.new("TextLabel")
               local UIGradient = Instance.new("UIGradient")
               Tab.Name = "Tab"
               Tab.Parent = TabHolder
               Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
               Tab.Size = UDim2.new(0, 170, 0, 35)
               Tab.AutoButtonColor = false
               Tab.Font = Enum.Font.SourceSans
               Tab.Text = ""
               Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
               Tab.TextSize = 15.000
               Tab.BackgroundTransparency = 1

               UIGradient.Color =
                     ColorSequence.new {
                     ColorSequenceKeypoint.new(0.00, ColorMainI),
                     ColorSequenceKeypoint.new(1.00, ColorMainII)
               }
               UIGradient.Parent = Tab

               TabCorner.CornerRadius = UDim.new(0, 3)
               TabCorner.Name = "TabCorner"
               TabCorner.Parent = Tab

               Title.Name = "Title"
               Title.Parent = Tab
               Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
               Title.BackgroundTransparency = 1.000
               Title.Position = UDim2.new(0.0566037744, 0, 0.1, 0)
               Title.Size = UDim2.new(0, 150, 0, 29)
               Title.Font = Enum.Font.Gotham
               Title.Text = text
               Title.TextColor3 = Color3.fromRGB(255, 255, 255)
               Title.TextSize = 17.000
               Title.TextXAlignment = Enum.TextXAlignment.Left

               local Container = Instance.new("ScrollingFrame")
               local ContainerLayout = Instance.new("UIListLayout")

               Container.Name = "Container"
               Container.Parent = ContainerHold
               Container.Active = true
               Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
               Container.BackgroundTransparency = 1.000
               Container.BorderSizePixel = 0
               Container.Position = UDim2.new(0.34, 0, 0.0506329127, 0)
               Container.Size = UDim2.new(0, 420, 0, 450)
               Container.ScrollBarThickness = 5
               Container.CanvasSize = UDim2.new(0, 0, 0, 0)
               Container.Visible = false
               Container.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)

               ContainerLayout.Name = "ContainerLayout"
               ContainerLayout.Parent = Container
               ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
               ContainerLayout.Padding = UDim.new(0, 15)

               if FirstTab == false then
                     FirstTab = true
                     Tab.BackgroundTransparency = 0
                     Container.Visible = true
               end
               Tab.MouseButton1Click:Connect(
                     function()
                        for i, v in next, ContainerHold:GetChildren() do
                           if v.Name == "Container" then
                                 v.Visible = false
                           end
                        end

                        for i, v in next, TabHolder:GetChildren() do
                           if v.ClassName == "TextButton" then
                                 TweenService:Create(
                                    v,
                                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundTransparency = 1}
                                 ):Play()
                                 TweenService:Create(
                                    Tab,
                                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundTransparency = 0}
                                 ):Play()
                           end
                        end
                        Container.Visible = true
                     end
               )
               local ContainerItems = {}
               function ContainerItems:Button(text, callback)
                     local Button = Instance.new("TextButton")
                     local ButtonCorner = Instance.new("UICorner")

                     Button.Name = "Button"
                     Button.Parent = Container
                     Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Button.Size = UDim2.new(0, 405, 0, 40)
                     Button.AutoButtonColor = false
                     Button.Font = Enum.Font.Gotham
                     Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Button.TextSize = 15.000
                     Button.Text = text

                     ButtonCorner.CornerRadius = UDim.new(0, 5)
                     ButtonCorner.Name = "ButtonCorner"
                     ButtonCorner.Parent = Button

                     Button.MouseEnter:Connect(
                        function()
                     local ValueToggle = ValueTogglea or false
                     local Toggle = Instance.new("TextButton")
                     local ToggleCorner = Instance.new("UICorner")
                     local Title = Instance.new("TextLabel")
                     local ToggleFrame = Instance.new("Frame")
                     local ToggleFrameCorner = Instance.new("UICorner")
                     local ToggleFrameRainbow = Instance.new("Frame")
                     local ToggleFrameRainbowCorner = Instance.new("UICorner")
                     local ToggleDot = Instance.new("Frame")
                     local ToggleDotCorner = Instance.new("UICorner")
                     local UIGradient_2 = Instance.new("UIGradient")
                     Toggle.Name = "Toggle"
                     Toggle.Parent = Container
                     Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Toggle.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
                     Toggle.Size = UDim2.new(0, 405, 0, 40)
                     Toggle.AutoButtonColor = false
                     Toggle.Font = Enum.Font.Gotham
                     Toggle.Text = ""
                     Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Toggle.TextSize = 14.000

                     ToggleCorner.CornerRadius = UDim.new(0, 5)
                     ToggleCorner.Name = "ToggleCorner"
                     ToggleCorner.Parent = Toggle

                     Title.Name = "Title"
                     Title.Parent = Toggle
                     Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Title.BackgroundTransparency = 1.000
                     Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
                     Title.Size = UDim2.new(0, 430, 0, 40)
                     Title.Font = Enum.Font.Gotham
                     Title.Text = text
                     Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Title.TextSize = 15.000
                     Title.TextXAlignment = Enum.TextXAlignment.Left

                     ToggleFrame.Name = "ToggleFrame"
                     ToggleFrame.Parent = Toggle
                     ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
                     ToggleFrame.Position = UDim2.new(0.88, 0, 0.21, 0)
                     ToggleFrame.Size = UDim2.new(0, 40, 0, 22)

                     ToggleFrameCorner.CornerRadius = UDim.new(1, 0)
                     ToggleFrameCorner.Name = "ToggleFrameCorner"
                     ToggleFrameCorner.Parent = ToggleFrame

                     ToggleFrameRainbow.Name = "ToggleFrameRainbow"
                     ToggleFrameRainbow.Parent = ToggleFrame
                     ToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
                     ToggleFrameRainbow.BackgroundTransparency = 1.000
                     ToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
                     ToggleFrameRainbow.Size = UDim2.new(0, 40, 0, 22)

                     ToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
                     ToggleFrameRainbowCorner.Name = "ToggleFrameRainbowCorner"
                     ToggleFrameRainbowCorner.Parent = ToggleFrameRainbow

                     ToggleDot.Name = "ToggleDot"
                     ToggleDot.Parent = ToggleFrameRainbow
                     ToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     ToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
                     ToggleDot.Size = UDim2.new(0, 16, 0, 16)

                     UIGradient_2.Color =
                        ColorSequence.new {
                        ColorSequenceKeypoint.new(0.00, ColorMainIII),
                        ColorSequenceKeypoint.new(1.00, ColorMainIIII)
                     }
                     UIGradient_2.Parent = ToggleDot

                     ToggleDotCorner.CornerRadius = UDim.new(1, 0)
                     ToggleDotCorner.Name = "ToggleDotCorner"
                     ToggleDotCorner.Parent = ToggleDot

                     Toggle.MouseEnter:Connect(
                        function()
                           TweenService:Create(
                                 Toggle,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
                           ):Play()
                        end
                     )
                     Toggle.MouseLeave:Connect(
                        function()
                           TweenService:Create(
                                 Toggle,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
                           ):Play()
                        end
                     )

                     if Toggled == true then
                        UIGradient_2.Color =
                           ColorSequence.new {
                           ColorSequenceKeypoint.new(0.00, ColorMainIII),
                           ColorSequenceKeypoint.new(1.00, ColorMainIIII)
                        }

                        TweenService:Create(
                           ToggleFrameRainbow,
                           TweenInfo.new(.2, Enum.EasingStyle.Quad),
                           {BackgroundTransparency = 0}
                        ):Play()
                        TweenService:Create(
                           ToggleDot,
                           TweenInfo.new(.2, Enum.EasingStyle.Quad),
                           {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                        ):Play()
                        pcall(callback, Toggled)
                     else
                        UIGradient_2.Color =
                           ColorSequence.new {
                           ColorSequenceKeypoint.new(0.00, ColorMainIII),
                           ColorSequenceKeypoint.new(1.00, ColorMainIIII)
                        }

                        TweenService:Create(
                           ToggleFrameRainbow,
                           TweenInfo.new(.2, Enum.EasingStyle.Quad),
                           {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                           ToggleDot,
                           TweenInfo.new(.2, Enum.EasingStyle.Quad),
                           {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                        ):Play()
                     end

                     Toggle.MouseButton1Click:Connect(
                        function()
                           if Toggled == false then
                                 UIGradient_2.Color =
                                    ColorSequence.new {
                                    ColorSequenceKeypoint.new(0.00, ColorMainIII),
                                    ColorSequenceKeypoint.new(1.00, ColorMainIIII)
                                 }

                                 TweenService:Create(
                                    ToggleFrameRainbow,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundTransparency = 0}
                                 ):Play()
                                 TweenService:Create(
                                    ToggleDot,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                                 ):Play()
                           else
                                 UIGradient_2.Color =
                                    ColorSequence.new {
                                    ColorSequenceKeypoint.new(0.00, ColorMainIII),
                                    ColorSequenceKeypoint.new(1.00, ColorMainIIII)
                                 }

                                 TweenService:Create(
                                    ToggleFrameRainbow,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundTransparency = 1}
                                 ):Play()
                                 TweenService:Create(
                                    ToggleDot,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                                 ):Play()
                           end
                           Toggled = not Toggled
                           pcall(callback, Toggled)
                        end
                     )

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
               function ContainerItems:Slider(text, min, max, start, callback)
                     local dragging = false
                     local Slider = Instance.new("TextButton")
                     local Title = Instance.new("TextLabel")
                     local SliderFrame = Instance.new("Frame")
                     local SliderFrameCorner = Instance.new("UICorner")
                     local SliderIndicator = Instance.new("Frame")
                     local SliderIndicatorCorner = Instance.new("UICorner")
                     local SliderCorner = Instance.new("UICorner")
                     local Value = Instance.new("TextLabel")
                     local UIGradient_3 = Instance.new("UIGradient")

                     Slider.Name = "Slider"
                     Slider.Parent = Container
                     Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Slider.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
                     Slider.Size = UDim2.new(0, 405, 0, 49)
                     Slider.AutoButtonColor = false
                     Slider.Font = Enum.Font.Gotham
                     Slider.Text = ""
                     Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Slider.TextSize = 14.000

                     Title.Name = "Title"
                     Title.Parent = Slider
                     Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Title.BackgroundTransparency = 1.000
                     Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
                     Title.Size = UDim2.new(0, 192, 0, 28)
                     Title.Font = Enum.Font.Gotham
                     Title.Text = text
                     Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Title.TextSize = 14.000
                     Title.TextXAlignment = Enum.TextXAlignment.Left

                     SliderFrame.Name = "SliderFrame"
                     SliderFrame.Parent = Slider
                     SliderFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                     SliderFrame.Position = UDim2.new(0.0223324299, 0, 0.563266039, 0)
                     SliderFrame.Size = UDim2.new(0, 384, 0, 11)

                     SliderFrameCorner.Name = "SliderFrameCorner"
                     SliderFrameCorner.Parent = SliderFrame

                     SliderIndicator.Name = "SliderIndicator"
                     SliderIndicator.Parent = SliderFrame
                     SliderIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     SliderIndicator.BorderSizePixel = 0
                     SliderIndicator.Position = UDim2.new(-0.00260408712, 0, 0.0363603085, 0)
                     SliderIndicator.Size = UDim2.new((start or 0) / max, 0, 0, 11)

                     UIGradient_3.Color =
                        ColorSequence.new {
                        ColorSequenceKeypoint.new(0.00, ColorMainIIIII),
                        ColorSequenceKeypoint.new(1.00, ColorMainIIIIII)
                     }
                     UIGradient_3.Parent = SliderIndicator

                     SliderIndicatorCorner.Name = "SliderIndicatorCorner"
                     SliderIndicatorCorner.Parent = SliderIndicator

                     SliderCorner.CornerRadius = UDim.new(0, 6)
                     SliderCorner.Name = "SliderCorner"
                     SliderCorner.Parent = Slider

                     Value.Name = "Value"
                     Value.Parent = Slider
                     Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Value.BackgroundTransparency = 1.000
                     Value.Position = UDim2.new(0.496277869, 0, 0, 0)
                     Value.Size = UDim2.new(0, 192, 0, 28)
                     Value.Font = Enum.Font.Gotham
                     Value.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
                     Value.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Value.TextSize = 14.000
                     Value.TextXAlignment = Enum.TextXAlignment.Right

                     local function slide(input)
                        local pos =
                           UDim2.new(
                           math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                           0,
                           0,
                           11
                        )
                        SliderIndicator:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                        local val = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        Value.Text = tostring(val)
                        pcall(callback, val)
                     end

                     SliderFrame.InputBegan:Connect(
                        function(input)
                           if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                 slide(input)
                                 dragging = true
                           end
                        end
                     )

                     SliderFrame.InputEnded:Connect(
                        function(input)
                           if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                 dragging = false
                           end
                        end
                     )

                     UserInputService.InputChanged:Connect(
                        function(input)
                           if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                 slide(input)
                           end
                        end
                     )

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
               function ContainerItems:Dropdown(text, list, callback)
                     local dropfunc = {}
                     local DropToggled = false
                     local FrameSize = 0
                     local ItemCount = 0

                     local Dropdown = Instance.new("TextButton")
                     local Title = Instance.new("TextLabel")
                     local DropdownCorner = Instance.new("UICorner")
                     local Arrow = Instance.new("ImageLabel")

                     Dropdown.Name = "Dropdown"
                     Dropdown.Parent = Container
                     Dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Dropdown.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
                     Dropdown.Size = UDim2.new(0, 405, 0, 45)
                     Dropdown.AutoButtonColor = false
                     Dropdown.Font = Enum.Font.Gotham
                     Dropdown.Text = ""
                     Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Dropdown.TextSize = 15.000

                     Title.Name = "Title"
                     Title.Parent = Dropdown
                     Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Title.BackgroundTransparency = 1.000
                     Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
                     Title.Size = UDim2.new(0, 192, 0, 40)
                     Title.Font = Enum.Font.Gotham
                     Title.Text = text
                     Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Title.TextSize = 15.000
                     Title.TextXAlignment = Enum.TextXAlignment.Left

                     DropdownCorner.CornerRadius = UDim.new(0, 6)
                     DropdownCorner.Name = "DropdownCorner"
                     DropdownCorner.Parent = Dropdown

                     Arrow.Name = "Arrow"
                     Arrow.Parent = Dropdown
                     Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Arrow.BackgroundTransparency = 1.000
                     Arrow.Position = UDim2.new(0.9, 0, 0.2, 0)
                     Arrow.Size = UDim2.new(0, 27, 0, 27)
                     Arrow.Image = "http://www.roblox.com/asset/?id=6034818372"

                     local DropdownFrame = Instance.new("Frame")
                     local DropdownFrameCorner = Instance.new("UICorner")
                     local DropdownHolder = Instance.new("ScrollingFrame")
                     local DropdownItemLayout = Instance.new("UIListLayout")
                     local DropdownItemHolder = Instance.new("UIPadding")

                     DropdownFrame.Name = "DropdownFrame"
                     DropdownFrame.Parent = Container
                     DropdownFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                     DropdownFrame.BorderSizePixel = 0
                     DropdownFrame.Position = UDim2.new(0.334374994, 0, 0.604166687, 0)
                     DropdownFrame.Size = UDim2.new(0, 403, 0, 0)
                     DropdownFrame.Visible = false

                     DropdownFrameCorner.Name = "DropdownFrameCorner"
                     DropdownFrameCorner.Parent = DropdownFrame

                     DropdownHolder.Name = "DropdownHolder"
                     DropdownHolder.Parent = DropdownFrame
                     DropdownHolder.Active = true
                     DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     DropdownHolder.BackgroundTransparency = 1.000
                     DropdownHolder.BorderSizePixel = 0
                     DropdownHolder.Position = UDim2.new(0.0263156947, 0, 0.00326599111, 0)
                     DropdownHolder.Size = UDim2.new(0, 386, 0, 0)
                     DropdownHolder.ScrollBarThickness = 5
                     DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
                     DropdownHolder.ScrollBarImageColor3 = Color3.fromRGB(48, 48, 48)

                     DropdownItemLayout.Name = "DropdownItemLayout"
                     DropdownItemLayout.Parent = DropdownHolder
                     DropdownItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
                     DropdownItemLayout.Padding = UDim.new(0, 5)

                     DropdownItemHolder.Name = "DropdownItemHolder"
                     DropdownItemHolder.Parent = DropdownHolder
                     DropdownItemHolder.PaddingBottom = UDim.new(0, 5)
                     DropdownItemHolder.PaddingTop = UDim.new(0, 5)

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

                     Dropdown.MouseEnter:Connect(
                        function()
                           TweenService:Create(
                                 Dropdown,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
                           ):Play()
                        end
                     )
                     Dropdown.MouseLeave:Connect(
                        function()
                           TweenService:Create(
                                 Dropdown,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
                           ):Play()
                        end
                     )

                     Dropdown.MouseButton1Click:Connect(
                        function()
                           if DropToggled == false then
                                 DropdownFrame.Visible = true
                                 DropdownFrame:TweenSize(
                                    UDim2.new(0, 403, 0, FrameSize),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 DropdownHolder:TweenSize(
                                    UDim2.new(0, 386, 0, FrameSize),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 TweenService:Create(
                                    Arrow,
                                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {Rotation = 180}
                                 ):Play()
                                 repeat
                                    wait()
                                 until DropdownFrame.Size == UDim2.new(0, 403, 0, FrameSize)
                                 Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                           else
                                 DropdownFrame:TweenSize(
                                    UDim2.new(0, 403, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 DropdownHolder:TweenSize(
                                    UDim2.new(0, 386, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 TweenService:Create(
                                    Arrow,
                                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {Rotation = 0}
                                 ):Play()
                                 repeat
                                    wait()
                                 until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                                 DropdownFrame.Visible = false
                                 Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                           end
                           DropToggled = not DropToggled
                        end
                     )

                     for i, v in next, list do
                        ItemCount = ItemCount + 1

                        if ItemCount == 1 then
                           FrameSize = 39
                        elseif ItemCount == 2 then
                           FrameSize = 69
                        elseif ItemCount >= 3 then
                           FrameSize = 100
                        end

                        local Item = Instance.new("TextButton")
                        local ItemCorner = Instance.new("UICorner")

                        Item.Name = "Item"
                        Item.Parent = DropdownHolder
                        Item.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                        Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
                        Item.Size = UDim2.new(0, 405, 0, 24)
                        Item.AutoButtonColor = false
                        Item.Font = Enum.Font.Gotham
                        Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Item.TextSize = 14.000
                        Item.Text = v

                        ItemCorner.Name = "ItemCorner"
                        ItemCorner.Parent = Item

                        Item.MouseEnter:Connect(
                           function()
                                 TweenService:Create(
                                    Item,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
                                 ):Play()
                           end
                        )
                        Item.MouseLeave:Connect(
                           function()
                                 TweenService:Create(
                                    Item,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}
                                 ):Play()
                           end
                        )

                        Item.MouseButton1Click:Connect(
                           function()
                                 Title.Text = text .. " - " .. v
                                 pcall(callback, v)
                                 DropToggled = false
                                 DropdownFrame:TweenSize(
                                    UDim2.new(0, 403, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 DropdownHolder:TweenSize(
                                    UDim2.new(0, 386, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 TweenService:Create(
                                    Arrow,
                                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {Rotation = 0}
                                 ):Play()
                                 repeat
                                    wait()
                                 until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                                 DropdownFrame.Visible = false
                                 Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                           end
                        )

                        DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
                     end

                     function dropfunc:Clear()
                        Title.Text = text
                        FrameSize = 0
                        ItemCount = 0

                        for i, v in next, DropdownHolder:GetChildren() do
                           if v.Name == "Item" then
                                 v:Destroy()
                           end
                        end

                        DropdownFrame:TweenSize(
                           UDim2.new(0, 403, 0, 0),
                           Enum.EasingDirection.Out,
                           Enum.EasingStyle.Quart,
                           0.1,
                           true
                        )
                        DropdownHolder:TweenSize(
                           UDim2.new(0, 386, 0, 0),
                           Enum.EasingDirection.Out,
                           Enum.EasingStyle.Quart,
                           0.1,
                           true
                        )
                        TweenService:Create(
                           Arrow,
                           TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                           {Rotation = 0}
                        ):Play()
                        repeat
                           wait()
                        until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                        DropdownFrame.Visible = false
                        Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                     end

                     function dropfunc:Add(toadd)
                        ItemCount = ItemCount + 1

                        if ItemCount == 1 then
                           FrameSize = 39
                        elseif ItemCount == 2 then
                           FrameSize = 69
                        elseif ItemCount >= 3 then
                           FrameSize = 100
                        end

                        local Item = Instance.new("TextButton")
                        local ItemCorner = Instance.new("UICorner")

                        Item.Name = "Item"
                        Item.Parent = DropdownHolder
                        Item.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                        Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
                        Item.Size = UDim2.new(0, 405, 0, 24)
                        Item.AutoButtonColor = false
                        Item.Font = Enum.Font.Gotham
                        Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Item.TextSize = 14.000
                        Item.Text = toadd

                        ItemCorner.Name = "ItemCorner"
                        ItemCorner.Parent = Item

                        Item.MouseEnter:Connect(
                           function()
                                 TweenService:Create(
                                    Item,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
                                 ):Play()
                           end
                        )
                        Item.MouseLeave:Connect(
                           function()
                                 TweenService:Create(
                                    Item,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}
                                 ):Play()
                           end
                        )

                        Item.MouseButton1Click:Connect(
                           function()
                                 Title.Text = text .. " - " .. toadd
                                 pcall(callback, toadd)
                                 DropToggled = false
                                 DropdownFrame:TweenSize(
                                    UDim2.new(0, 403, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 DropdownHolder:TweenSize(
                                    UDim2.new(0, 386, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 TweenService:Create(
                                    Arrow,
                                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {Rotation = 0}
                                 ):Play()
                                 repeat
                                    wait()
                                 until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                                 DropdownFrame.Visible = false
                                 Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                           end
                        )

                        DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
                     end

                     return dropfunc
               end
               function ContainerItems:Colorpicker(text, preset, callback)
                     local ColorPickerToggled = false
                     local OldToggleColor = Color3.fromRGB(0, 0, 0)
                     local OldColor = Color3.fromRGB(0, 0, 0)
                     local OldColorSelectionPosition = nil
                     local OldHueSelectionPosition = nil
                     local ColorH, ColorS, ColorV = 1, 1, 1
                     local RainbowColorPicker = false
                     local ColorPickerInput = nil
                     local ColorInput = nil
                     local HueInput = nil

                     local Colorpicker = Instance.new("TextButton")
                     local Title = Instance.new("TextLabel")
                     local BoxColor = Instance.new("Frame")
                     local BoxcolorCorner = Instance.new("UICorner")
                     local ColorpickerCorner = Instance.new("UICorner")

                     Colorpicker.Name = "Colorpicker"
                     Colorpicker.Parent = Container
                     Colorpicker.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Colorpicker.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
                     Colorpicker.Size = UDim2.new(0, 405, 0, 40)
                     Colorpicker.AutoButtonColor = false
                     Colorpicker.Font = Enum.Font.Gotham
                     Colorpicker.Text = ""
                     Colorpicker.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Colorpicker.TextSize = 14.000

                     Title.Name = "Title"
                     Title.Parent = Colorpicker
                     Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Title.BackgroundTransparency = 1.000
                     Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
                     Title.Size = UDim2.new(0, 405, 0, 40)
                     Title.Font = Enum.Font.Gotham
                     Title.Text = text
                     Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Title.TextSize = 15.000
                     Title.TextXAlignment = Enum.TextXAlignment.Left

                     BoxColor.Name = "Boxcolor"
                     BoxColor.Parent = Colorpicker
                     BoxColor.BackgroundColor3 = preset
                     BoxColor.Position = UDim2.new(0.88, 0, 0.3, 0)
                     BoxColor.Size = UDim2.new(0, 36, 0, 19)

                     BoxcolorCorner.CornerRadius = UDim.new(0, 6)
                     BoxcolorCorner.Name = "BoxcolorCorner"
                     BoxcolorCorner.Parent = BoxColor

                     ColorpickerCorner.CornerRadius = UDim.new(0, 4)
                     ColorpickerCorner.Name = "ColorpickerCorner"
                     ColorpickerCorner.Parent = Colorpicker

                     local ColorpickerFrame = Instance.new("Frame")
                     local DropdownFrameCorner = Instance.new("UICorner")
                     local Hue = Instance.new("ImageLabel")
                     local HueCorner = Instance.new("UICorner")
                     local HueGradient = Instance.new("UIGradient")
                     local HueSelection = Instance.new("ImageLabel")
                     local Color = Instance.new("ImageLabel")
                     local ColorCorner = Instance.new("UICorner")
                     local ColorSelection = Instance.new("ImageLabel")
                     local Confirm = Instance.new("TextButton")
                     local ButtonCorner = Instance.new("UICorner")
                     local RainbowToggle = Instance.new("TextButton")
                     local RainbowToggleCorner = Instance.new("UICorner")
                     local RainbowTitle = Instance.new("TextLabel")
                     local RainbowToggleFrame = Instance.new("Frame")
                     local RainbowToggleFrameCorner = Instance.new("UICorner")
                     local RainbowToggleFrameRainbow = Instance.new("Frame")
                     local RainbowToggleFrameRainbowCorner = Instance.new("UICorner")
                     local RainbowToggleDot = Instance.new("Frame")
                     local RainbowToggleDotCorner = Instance.new("UICorner")

                     ColorpickerFrame.Name = "ColorpickerFrame"
                     ColorpickerFrame.Parent = Container
                     ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                     ColorpickerFrame.BorderSizePixel = 0
                     ColorpickerFrame.Position = UDim2.new(0.165624991, 0, 0.671052635, 0)
                     ColorpickerFrame.Size = UDim2.new(0, 403, 0, 0)
                     ColorpickerFrame.Visible = false
                     ColorpickerFrame.ClipsDescendants = true

                     DropdownFrameCorner.Name = "DropdownFrameCorner"
                     DropdownFrameCorner.Parent = ColorpickerFrame

                     Hue.Name = "Hue"
                     Hue.Parent = ColorpickerFrame
                     Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Hue.Position = UDim2.new(0, 209, 0, 9)
                     Hue.Size = UDim2.new(0, 25, 0, 80)

                     HueCorner.CornerRadius = UDim.new(0, 3)
                     HueCorner.Name = "HueCorner"
                     HueCorner.Parent = Hue

                     HueGradient.Color =
                        ColorSequence.new {
                        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                        ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
                        ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
                        ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
                        ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
                        ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
                        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
                     }
                     HueGradient.Rotation = 270
                     HueGradient.Name = "HueGradient"
                     HueGradient.Parent = Hue

                     HueSelection.Name = "HueSelection"
                     HueSelection.Parent = Hue
                     HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
                     HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     HueSelection.BackgroundTransparency = 1.000
                     HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
                     HueSelection.Size = UDim2.new(0, 18, 0, 18)
                     HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

                     Color.Name = "Color"
                     Color.Parent = ColorpickerFrame
                     Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                     Color.Position = UDim2.new(0, 9, 0, 9)
                     Color.Size = UDim2.new(0, 194, 0, 80)
                     Color.ZIndex = 10
                     Color.Image = "rbxassetid://4155801252"

                     ColorCorner.CornerRadius = UDim.new(0, 3)
                     ColorCorner.Name = "ColorCorner"
                     ColorCorner.Parent = Color

                     ColorSelection.Name = "ColorSelection"
                     ColorSelection.Parent = Color
                     ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
                     ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     ColorSelection.BackgroundTransparency = 1.000
                     ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
                     ColorSelection.Size = UDim2.new(0, 18, 0, 18)
                     ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
                     ColorSelection.ScaleType = Enum.ScaleType.Fit

                     Confirm.Name = "Confirm"
                     Confirm.Parent = ColorpickerFrame
                     Confirm.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                     Confirm.BackgroundTransparency = 0.010
                     Confirm.Position = UDim2.new(0.612244904, 0, 0.0900000036, 0)
                     Confirm.Size = UDim2.new(0, 145, 0, 27)
                     Confirm.AutoButtonColor = false
                     Confirm.Font = Enum.Font.Gotham
                     Confirm.Text = "Confirm"
                     Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Confirm.TextSize = 14.000

                     ButtonCorner.Name = "ButtonCorner"
                     ButtonCorner.Parent = Confirm

                     RainbowToggle.Name = "RainbowToggle"
                     RainbowToggle.Parent = ColorpickerFrame
                     RainbowToggle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                     RainbowToggle.Position = UDim2.new(0.610732794, 0, 0.431324542, 0)
                     RainbowToggle.Size = UDim2.new(0, 145, 0, 27)
                     RainbowToggle.AutoButtonColor = false
                     RainbowToggle.Font = Enum.Font.Gotham
                     RainbowToggle.Text = ""
                     RainbowToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                     RainbowToggle.TextSize = 14.000

                     RainbowToggleCorner.Name = "RainbowToggleCorner"
                     RainbowToggleCorner.Parent = RainbowToggle

                     RainbowTitle.Name = "RainbowTitle"
                     RainbowTitle.Parent = RainbowToggle
                     RainbowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     RainbowTitle.BackgroundTransparency = 1.000
                     RainbowTitle.Position = UDim2.new(0.0204080511, 0, 0, 0)
                     RainbowTitle.Size = UDim2.new(0, 29, 0, 27)
                     RainbowTitle.Font = Enum.Font.Gotham
                     RainbowTitle.Text = "Rainbow"
                     RainbowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                     RainbowTitle.TextSize = 14.000
                     RainbowTitle.TextXAlignment = Enum.TextXAlignment.Left

                     RainbowToggleFrame.Name = "RainbowToggleFrame"
                     RainbowToggleFrame.Parent = RainbowToggle
                     RainbowToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
                     RainbowToggleFrame.Position = UDim2.new(0.693, 0, 0.142857149, 0)
                     RainbowToggleFrame.Size = UDim2.new(0, 36, 0, 19)

                     RainbowToggleFrameCorner.CornerRadius = UDim.new(1, 0)
                     RainbowToggleFrameCorner.Name = "RainbowToggleFrameCorner"
                     RainbowToggleFrameCorner.Parent = RainbowToggleFrame

                     RainbowToggleFrameRainbow.Name = "RainbowToggleFrameRainbow"
                     RainbowToggleFrameRainbow.Parent = RainbowToggleFrame
                     RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(67, 136, 246)
                     RainbowToggleFrameRainbow.BackgroundTransparency = 1.000
                     RainbowToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
                     RainbowToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)

                     RainbowToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
                     RainbowToggleFrameRainbowCorner.Name = "RainbowToggleFrameRainbowCorner"
                     RainbowToggleFrameRainbowCorner.Parent = RainbowToggleFrameRainbow

                     RainbowToggleDot.Name = "RainbowToggleDot"
                     RainbowToggleDot.Parent = RainbowToggleFrameRainbow
                     RainbowToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     RainbowToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
                     RainbowToggleDot.Size = UDim2.new(0, 16, 0, 16)

                     RainbowToggleDotCorner.CornerRadius = UDim.new(1, 0)
                     RainbowToggleDotCorner.Name = "RainbowToggleDotCorner"
                     RainbowToggleDotCorner.Parent = RainbowToggleDot

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

                     Colorpicker.MouseEnter:Connect(
                        function()
                           TweenService:Create(
                                 Colorpicker,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
                           ):Play()
                        end
                     )
                     Colorpicker.MouseLeave:Connect(
                        function()
                           TweenService:Create(
                                 Colorpicker,
                                 TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                 {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
                           ):Play()
                        end
                     )

                     local function UpdateColorPicker(nope)
                        BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
                        Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

                        pcall(callback, BoxColor.BackgroundColor3)
                     end

                     ColorH =
                        1 -
                        (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                           Hue.AbsoluteSize.Y)
                     ColorS =
                        (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                        Color.AbsoluteSize.X)
                     ColorV =
                        1 -
                        (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                           Color.AbsoluteSize.Y)

                     BoxColor.BackgroundColor3 = preset
                     Color.BackgroundColor3 = preset
                     pcall(callback, BoxColor.BackgroundColor3)

                     Color.InputBegan:Connect(
                        function(input)
                           if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                 if RainbowColorPicker then
                                    return
                                 end

                                 if ColorInput then
                                    ColorInput:Disconnect()
                                 end

                                 ColorInput =
                                    RunService.RenderStepped:Connect(
                                    function()
                                       local ColorX =
                                             (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                             Color.AbsoluteSize.X)
                                       local ColorY =
                                             (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                             Color.AbsoluteSize.Y)

                                       ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                                       ColorS = ColorX
                                       ColorV = 1 - ColorY

                                       UpdateColorPicker(true)
                                    end
                                 )
                           end
                        end
                     )

                     Color.InputEnded:Connect(
                        function(input)
                           if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                 if ColorInput then
                                    ColorInput:Disconnect()
                                 end
                           end
                        end
                     )

                     Hue.InputBegan:Connect(
                        function(input)
                           if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                 if RainbowColorPicker then
                                    return
                                 end

                                 if HueInput then
                                    HueInput:Disconnect()
                                 end

                                 HueInput =
                                    RunService.RenderStepped:Connect(
                                    function()
                                       local HueY =
                                             (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                             Hue.AbsoluteSize.Y)

                                       HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
                                       ColorH = 1 - HueY

                                       UpdateColorPicker(true)
                                    end
                                 )
                           end
                        end
                     )

                     Hue.InputEnded:Connect(
                        function(input)
                           if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                 if HueInput then
                                    HueInput:Disconnect()
                                 end
                           end
                        end
                     )

                     RainbowToggle.MouseButton1Down:Connect(
                        function()
                           RainbowColorPicker = not RainbowColorPicker

                           if ColorInput then
                                 ColorInput:Disconnect()
                           end

                           if HueInput then
                                 HueInput:Disconnect()
                           end

                           if RainbowColorPicker then
                                 TweenService:Create(
                                    RainbowToggleFrameRainbow,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundTransparency = 0}
                                 ):Play()
                                 TweenService:Create(
                                    RainbowToggleDot,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                                 ):Play()

                                 OldToggleColor = BoxColor.BackgroundColor3
                                 OldColor = Color.BackgroundColor3
                                 OldColorSelectionPosition = ColorSelection.Position
                                 OldHueSelectionPosition = HueSelection.Position

                                 while RainbowColorPicker do
                                    BoxColor.BackgroundColor3 = Color3.fromHSV(VLib.RainbowColorValue, 1, 1)
                                    Color.BackgroundColor3 = Color3.fromHSV(VLib.RainbowColorValue, 1, 1)

                                    ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                                    HueSelection.Position = UDim2.new(0.48, 0, 0, VLib.HueSelectionPosition)

                                    pcall(callback, BoxColor.BackgroundColor3)
                                    wait()
                                 end
                           elseif not RainbowColorPicker then
                                 TweenService:Create(
                                    RainbowToggleFrameRainbow,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {BackgroundTransparency = 1}
                                 ):Play()
                                 TweenService:Create(
                                    RainbowToggleDot,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad),
                                    {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                                 ):Play()

                                 BoxColor.BackgroundColor3 = OldToggleColor
                                 Color.BackgroundColor3 = OldColor

                                 ColorSelection.Position = OldColorSelectionPosition
                                 HueSelection.Position = OldHueSelectionPosition

                                 pcall(callback, BoxColor.BackgroundColor3)
                           end
                        end
                     )

                     Colorpicker.MouseButton1Click:Connect(
                        function()
                           if ColorPickerToggled == false then
                                 ColorPickerToggled = not ColorPickerToggled
                                 ColorpickerFrame.Visible = true
                                 ColorpickerFrame:TweenSize(
                                    UDim2.new(0, 403, 0, 100),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 repeat
                                    wait()
                                 until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 100)
                                 Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                           else
                                 ColorPickerToggled = not ColorPickerToggled
                                 ColorpickerFrame:TweenSize(
                                    UDim2.new(0, 403, 0, 0),
                                    Enum.EasingDirection.Out,
                                    Enum.EasingStyle.Quart,
                                    0.1,
                                    true
                                 )
                                 repeat
                                    wait()
                                 until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 0)
                                 ColorpickerFrame.Visible = false
                                 Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                           end
                        end
                     )

                     Confirm.MouseButton1Click:Connect(
                        function()
                           ColorPickerToggled = not ColorPickerToggled
                           ColorpickerFrame:TweenSize(
                                 UDim2.new(0, 403, 0, 0),
                                 Enum.EasingDirection.Out,
                                 Enum.EasingStyle.Quart,
                                 0.1,
                                 true
                           )
                           repeat
                                 wait()
                           until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 0)
                           ColorpickerFrame.Visible = false
                           Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                        end
                     )

                     coroutine.wrap(
                        function()
                           while wait() do
                           end
                        end
                     )()
               end
               function ContainerItems:Label(text)
                     local labelfunc = {}
                     local Label = Instance.new("TextButton")
                     local LabelCorner = Instance.new("UICorner")

                     Label.Name = "Label"
                     Label.Parent = Container
                     Label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Label.Size = UDim2.new(0, 405, 0, 40)
                     Label.AutoButtonColor = false
                     Label.Font = Enum.Font.Gotham
                     Label.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Label.TextSize = 17.000
                     Label.Text = text

                     LabelCorner.CornerRadius = UDim.new(0, 5)
                     LabelCorner.Name = "LabelCorner"
                     LabelCorner.Parent = Label

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

                     function labelfunc:Refresh(tochange)
                        Label.Text = tochange
                     end

                     return labelfunc
               end

               function ContainerItems:Time()
                     local labelfunc = {}
                     local Label = Instance.new("TextButton")
                     local LabelCorner = Instance.new("UICorner")

                     Label.Name = "Label"
                     Label.Parent = Container
                     Label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Label.Size = UDim2.new(0, 405, 0, 40)
                     Label.AutoButtonColor = false
                     Label.Font = Enum.Font.Gotham
                     Label.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Label.TextSize = 17.000
                     Label.Text = text

                     LabelCorner.CornerRadius = UDim.new(0, 5)
                     LabelCorner.Name = "LabelCorner"
                     LabelCorner.Parent = Label

                     function getTime()
                        date = os.date("*t")
                        return ("%02d:%02d"):format(((date.hour % 24) - 1) % 24 + 1, date.min)
                     end
                     spawn(
                        function()
                           while wait() do
                                 local stringToFormat = "%x"
                                 local timestamp = os.time()
                                 -- The specifiers %x, %A, and %X are replaced with their values in stringToFormat:
                                 local result = os.date(stringToFormat, timestamp)
                                 Label.Text = "Day : " .. result .. " | Time : " .. getTime()
                           end
                        end
                     )
                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end

               function ContainerItems:line()
                     local labelfunc = {}
                     local Label = Instance.new("TextButton")
                     local LabelCorner = Instance.new("UICorner")

                     Label.Name = "Label"
                     Label.Parent = Container
                     Label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Label.Size = UDim2.new(0, 405, 0, 5)
                     Label.AutoButtonColor = false
                     Label.Font = Enum.Font.Gotham
                     Label.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Label.TextSize = 17.000
                     Label.Text = ""

                     LabelCorner.CornerRadius = UDim.new(0, 5)
                     LabelCorner.Name = "LabelCorner"
                     LabelCorner.Parent = Label

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)

                     function labelfunc:Refresh(tochange)
                        Label.Text = tochange
                     end

                     return labelfunc
               end

               function ContainerItems:Bind(Title, keybind_options, callback)
                     local keybind_data = {}

                     local Keybind = Instance.new("TextButton")
                     local Title = Instance.new("TextLabel")
                     local KeybindFrame = Instance.new("Frame")
                     local KeybindFrameCorner = Instance.new("UICorner")
                     local TextButton = Instance.new("TextButton")
                     local KeybindCorner = Instance.new("UICorner")
                     local ContainerLayout = Instance.new("UIListLayout")

                     Keybind.Name = "Keybind"
                     Keybind.Parent = Container
                     Keybind.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Keybind.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
                     Keybind.Size = UDim2.new(0, 405, 0, 40)
                     Keybind.AutoButtonColor = false
                     Keybind.Font = Enum.Font.Gotham
                     Keybind.Text = ""
                     Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Keybind.TextSize = 14.000

                     Title.Name = "Title"
                     Title.Parent = Keybind
                     Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Title.BackgroundTransparency = 1.000
                     Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
                     Title.Size = UDim2.new(0, 405, 0, 40)
                     Title.Font = Enum.Font.Gotham
                     Title.Text = "Keybind"
                     Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Title.TextSize = 15.000
                     Title.TextXAlignment = Enum.TextXAlignment.Left

                     KeybindFrame.Name = "KeybindFrame"
                     KeybindFrame.Parent = Keybind
                     KeybindFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
                     KeybindFrame.Position = UDim2.new(0.650124013, 0, 0.159999996, 0)
                     KeybindFrame.Size = UDim2.new(0, 134, 0, 24)

                     KeybindFrameCorner.CornerRadius = UDim.new(0, 6)
                     KeybindFrameCorner.Name = "KeybindFrameCorner"
                     KeybindFrameCorner.Parent = KeybindFrame

                     TextButton.Parent = KeybindFrame
                     TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     TextButton.BackgroundTransparency = 1.000
                     TextButton.Size = UDim2.new(0, 134, 0, 23)
                     TextButton.Font = Enum.Font.Gotham
                     TextButton.Text = "Keybind"
                     TextButton.TextColor3 = Color3.fromRGB(178, 178, 178)
                     TextButton.TextSize = 15.000

                     KeybindCorner.CornerRadius = UDim.new(0, 6)
                     KeybindCorner.Name = "KeybindCorner"
                     KeybindCorner.Parent = Keybind

                     ContainerLayout.Name = "ContainerLayout"
                     ContainerLayout.Parent = Container
                     ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
                     ContainerLayout.Padding = UDim.new(0, 15)

                     local UIS = game:GetService("UserInputService")

                     keybind_name = tostring(keybind_name or "New Keybind")
                     callback = typeof(callback) == "function" and callback or function()
                        end
                     keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
                     keybind_options = {
                        ["standard"] = keybind_options.standard or Enum.KeyCode.RightShift
                     }

                     callback = typeof(callback) == "function" and callback or function()
                        end
                     keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
                     keybind_options = {
                        ["standard"] = keybind_options.standard or Enum.KeyCode.RightShift
                     }

                     local shortkeys = {
                        -- thanks to stroketon for helping me out with this
                        RightControl = "RightCtrl",
                        LeftControl = "LeftCtrl",
                        LeftShift = "LShift",
                        RightShift = "RShift",
                        MouseButton1 = "Mouse1",
                        MouseButton2 = "Mouse2"
                     }
                     local checks = {
                        binding = false
                     }
                     function keybind_data:SetKeybind(Keybind)
                        local key = shortkeys[Keybind.Name] or Keybind.Name
                        TextButton.Text = key
                        keybind = Keybind
                     end

                     UIS.InputBegan:Connect(
                        function(a, b)
                           if checks.binding then
                                 spawn(
                                    function()
                                       wait()
                                       checks.binding = false
                                    end
                                 )
                                 return
                           end
                           if a.KeyCode == keybind and not b then
                                 pcall(callback, keybind)
                           end
                        end
                     )

                     keybind_data:SetKeybind(keybind_options.standard)

                     TextButton.MouseButton1Click:Connect(
                        function()
                           if checks.binding then
                                 return
                           end
                           TextButton.Text = "..."
                           checks.binding = true
                           local a, b = UIS.InputBegan:Wait()
                           keybind_data:SetKeybind(a.KeyCode)
                        end
                     )
                     return keybind_data
               end

               function ContainerItems:Textbox(text, disapper, callback)
                     local Textbox = Instance.new("TextButton")
                     local Title = Instance.new("TextLabel")
                     local TextboxFrame = Instance.new("Frame")
                     local TextboxFrameCorner = Instance.new("UICorner")
                     local TextBox = Instance.new("TextBox")
                     local TextboxCorner = Instance.new("UICorner")

                     Textbox.Name = "Textbox"
                     Textbox.Parent = Container
                     Textbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                     Textbox.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
                     Textbox.Size = UDim2.new(0, 405, 0, 40)
                     Textbox.AutoButtonColor = false
                     Textbox.Font = Enum.Font.Gotham
                     Textbox.Text = ""
                     Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Textbox.TextSize = 14.000

                     Title.Name = "Title"
                     Title.Parent = Textbox
                     Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     Title.BackgroundTransparency = 1.000
                     Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
                     Title.Size = UDim2.new(0, 405, 0, 40)
                     Title.Font = Enum.Font.Gotham
                     Title.Text = text
                     Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                     Title.TextSize = 15.000
                     Title.TextXAlignment = Enum.TextXAlignment.Left

                     TextboxFrame.Name = "TextboxFrame"
                     TextboxFrame.Parent = Textbox
                     TextboxFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
                     TextboxFrame.Position = UDim2.new(0.650124013, 0, 0.16, 0)
                     TextboxFrame.Size = UDim2.new(0, 134, 0, 24)

                     TextboxFrameCorner.CornerRadius = UDim.new(0, 6)
                     TextboxFrameCorner.Name = "TextboxFrameCorner"
                     TextboxFrameCorner.Parent = TextboxFrame

                     TextBox.Parent = TextboxFrame
                     TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                     TextBox.BackgroundTransparency = 1.000
                     TextBox.Size = UDim2.new(0, 134, 0, 19)
                     TextBox.Font = Enum.Font.Gotham
                     TextBox.Text = ""
                     TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                     TextBox.TextSize = 15.000

                     TextboxCorner.CornerRadius = UDim.new(0, 6)
                     TextboxCorner.Name = "TextboxCorner"
                     TextboxCorner.Parent = Textbox

                     TextBox.FocusLost:Connect(
                        function(ep)
                           if ep then
                                 if #TextBox.Text > 0 then
                                    pcall(callback, TextBox.Text)
                                    if disapper then
                                       TextBox.Text = ""
                                    end
                                 end
                           end
                        end
                     )

                     Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
               return ContainerItems
            end
            return Tabs
         end
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local win = VLib:Window("MAZI HUB", "Blox Fruit Paids", Color3.fromRGB(0, 255, 255),9)
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
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local AutoFram = win:Tab("Auto Farm")
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
                                             v.HumanoidRootPart.Transparency = 0.75
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
                                    v.HumanoidRootPart.Transparency = 0.5
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
         AutoFram:line()
         AutoFram:Label("-- Auto Accessories --")
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
         AutoFram:line()
         -- Mastery Tab
         AutoFram:Label("-- Auto Fram Mastery --")
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
                                             v.HumanoidRootPart.Transparency = 0.75
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
                                                v.HumanoidRootPart.Transparency = 0.75
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
         AutoFram:line()
         -- Fram Boss Tab
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
                                    v.HumanoidRootPart.Transparency = 0.75
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
                                 v.HumanoidRootPart.Transparency = 0.75
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
                                    v.HumanoidRootPart.Transparency = 0.75
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
         AutoFram:line()
         -- Auto Quest Bartilo
         AutoFram:Label("-- Auto Quest Bartilo --")
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
                                          v.HumanoidRootPart.Transparency = 0.75
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
                                    v.HumanoidRootPart.Transparency = 0.75
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
         AutoFram:line()
         -- Auto Fram Near Mods
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
                                 v.HumanoidRootPart.Transparency = 0.75
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
         AutoFram:line()
         -- Auto Rengoku
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
         AutoFram:line()
         -- Auto Sharkman Katate
         AutoFram:Label("-- Auto Sharkman Katate -- ")
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
                                       v.HumanoidRootPart.Transparency = 0.75
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
         AutoFram:line()
         -- Auto Fram Ectoplasm
         AutoFram:Label("-- Auto Fram Ectoplasm -- ")
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
         AutoFram:line()
         -- Auto Fram Observation
         AutoFram:Label("-- Auto Fram Observation (Daly 40 sce) -- ")
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
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Stats = win:Tab("Stats")
         local Point = Stats:Label("Point :")
         Point:Refresh("Point : "..game.Players.localPlayer.Data.Points.Value)
         melee = false
         Stats:Toggle("Melee",false,function(Value)
            melee = Value    
         end)
         defense = false
         Stats:Toggle("Defense",false,function(value)
            defense = value
         end)
         sword = false
         Stats:Toggle("Sword",false,function(value)
            sword = value
         end)
         gun = false
         Stats:Toggle("Gun",false,function(value)
            gun = value
         end)
         demonfruit = false
         Stats:Toggle("Demon Fruit",false,function(value)
            demonfruit = value
         end)
         PointStats = 1
         Stats:Slider("Point",1,10,PointStats,function(a)
            PointStats = a
         end)
         spawn(function()
            while wait() do
               if game.Players.localPlayer.Data.Points.Value >= PointStats then
                  if melee then
                     local args = {
                     [1] = "AddPoint",
                     [2] = "Melee",
                     [3] = PointStats
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end 
                  if defense then
                     local args = {
                     [1] = "AddPoint",
                     [2] = "Defense",
                     [3] = PointStats
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end 
                  if sword then
                     local args = {
                     [1] = "AddPoint",
                     [2] = "Sword",
                     [3] = PointStats
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end 
                  if gun then
                     local args = {
                     [1] = "AddPoint",
                     [2] = "Gun",
                     [3] = PointStats
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end 
                  if demonfruit then
                     local args = {
                     [1] = "AddPoint",
                     [2] = "Demon Fruit",
                     [3] = PointStats
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end
               end
               Point:Refresh("Point : "..game.Players.localPlayer.Data.Points.Value) 
            end
         end)
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Teleport = win:Tab("Teleport")
         Teleport:Toggle("Ctrl + Click = TP",false,function(vu)
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
         Teleport:Button("Current Quest",function()
            CheckQuest()
            wait(0.25)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
         end)
         if NewWorld then
            Teleport:Button("Teleport To Old World",function()
               local args = {
                  [1] = "TravelMain" -- OLD WORLD to NEW WORLD
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
         else
            Teleport:Button("Teleport To NewWorld",function()
               local args = {
                  [1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
         end
         Teleport:Button("Teleport to SeaBeasts",function()
            for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
               if v:FindFirstChild("HumanoidRootPart") then
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,100,0)
               end
            end
         end)
         Teleport:line()
         Teleport:Label("Teleport Island")
         if NewWorld then
            Teleport:Button("First Spot",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
            end)
            Teleport:Button("Kingdom of Rose",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame
            end)
            Teleport:Button("Dark Ares",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame
            end)
            Teleport:Button("Flamingo Mansion",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390.096313, 331.886475, 673.464966)
            end)
            Teleport:Button("Flamingo Room",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2302.19019, 15.1778421, 663.811035)
            end)
            Teleport:Button("Green bit",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)
            end)
            Teleport:Button("Cafe",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)
            end)
            Teleport:Button("Factroy",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.42569, 210.019623, -432.504791)
            end)
            Teleport:Button("Colosseum",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836.58191, 44.5890656, 1360.30652)
            end)
            Teleport:Button("Ghost Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5571.84424, 195.182297, -795.432922)
            end)
            Teleport:Button("Ghost Island 2nd",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5931.77979, 5.19706631, -1189.6908)
            end)
            Teleport:Button("Snow Mountain",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1384.68298, 453.569031, -4990.09766)
            end)
            Teleport:Button("Hot and Cold",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)
            end)
            Teleport:Button("Magma Side",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
            end)
            Teleport:Button("Cursed Ship",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
            end)
            Teleport:Button("Frosted Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)
            end)
            Teleport:Button("Forgotten Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3043.31543, 238.881271, -10191.5791)
            end)
            Teleport:Button("Usoapp Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4748.78857, 8.35370827, 2849.57959)
            end)
            Teleport:Button("Raids Low",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5554.95313, 329.075623, -5930.31396)
            end)
            Teleport:Button("Minisky Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.358917, 49325.7031, -35259.3008)
            end)
         else
            Teleport:Button("Start Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)
            end)
            Teleport:Button("Marine Start",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374, 6.88881969, 2046.99817)
            end)
            Teleport:Button("Middle Town",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)
            end)
            Teleport:Button("Jungle",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)
            end)
            Teleport:Button("Pirate Village",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)
            end)
            Teleport:Button("Desert",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)
            end)
            Teleport:Button("Frozen Village",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)
            end)
            Teleport:Button("MarineFord",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)
            end)
            Teleport:Button("Colosseum",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1428.35474, 7.38933945, -3014.37305)
            end)
            Teleport:Button("Sky 1st Floor",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)
            end)
            Teleport:Button("Sky 2st Floor",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)
            end)
            Teleport:Button("Sky 3st Floor",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)
            end)
            Teleport:Button("Prison",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4854.16455, 5.68742752, 740.194641)
            end)
            Teleport:Button("Magma Village",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)
            end)
            Teleport:Button("UndeyWater City",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)
            end)
            Teleport:Button("Fountain City",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)
            end)
            Teleport:Button("House Cyborg's",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)
            end)
            Teleport:Button("Shank's Room",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
            end)
            Teleport:Button("Mob Island",function()
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
            end)
         end
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Raids = win:Tab("Esp - Raids")
         function isnil(thing)
            return (thing == nil)
         end
         local function round(n)
            return math.floor(tonumber(n) + 0.5)
         end
         Number = math.random(1, 1000000)
         function UpdatePlayerChams()
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
                                 name.TextColor3 = Color3.new(0,255,0)
                           else
                                 name.TextColor3 = Color3.new(255,0,0)
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
         function UpdateChestChams() 
            for i,v in pairs(game.Workspace:GetChildren()) do
               pcall(function()
                     if string.find(v.Name,"Chest") then
                        if ChestESP then
                           if string.find(v.Name,"Chest") then
                                 if not v:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    if v.Name == "Chest1" then
                                       name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                       name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    end
                                    if v.Name == "Chest2" then
                                       name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                       name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    end
                                    if v.Name == "Chest3" then
                                       name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                       name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    end
                                 else
                                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                 end
                           end
                        else
                           if v:FindFirstChild('NameEsp'..Number) then
                           v:FindFirstChild('NameEsp'..Number):Destroy()
                           end
                        end
                     end
               end)
            end
         end
         function UpdateDevilChams() 
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
         function UpdateFlowerChams() 
            for i,v in pairs(game.Workspace:GetChildren()) do
               pcall(function()
                     if v.Name == "Flower2" or v.Name == "Flower1" then
                        if FlowerESP then 
                           if not v:FindFirstChild('NameEsp'..Number) then
                                 local bill = Instance.new('BillboardGui',v)
                                 bill.Name = 'NameEsp'..Number
                                 bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                 bill.Size = UDim2.new(1,200,1,30)
                                 bill.Adornee = v
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
                                 if v.Name == "Flower1" then 
                                    name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    name.TextColor3 = Color3.fromRGB(0, 0, 255)
                                 end
                                 if v.Name == "Flower2" then
                                    name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                 end
                           else
                                 v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                           end
                        else
                           if v:FindFirstChild('NameEsp'..Number) then
                           v:FindFirstChild('NameEsp'..Number):Destroy()
                           end
                        end
                     end   
               end)
            end
         end
         Raids:Toggle("ESP Player",false,function(a)
            ESPPlayer = a
            while ESPPlayer do wait()
               UpdatePlayerChams()
            end
         end)
         Raids:Toggle("ESP Chest",false,function(a)
            ChestESP = a
            while ChestESP do wait()
               UpdateChestChams() 
            end
         end)
         Raids:Toggle("ESP Devil Fruit",false,function(a)
            DevilFruitESP = a
            while DevilFruitESP do wait()
               UpdateDevilChams() 
            end
         end)
         Raids:Toggle("ESP Flower",false,function(a)
            FlowerESP = a
            while FlowerESP do wait()
               UpdateFlowerChams() 
            end
         end)
         Raids:line()
         Raids:Label("Use In Raid Only",true)
         Distance = 500
         Raids:Toggle("Kill Arua",false,function(value)
            if NewWorld then
               RaidsArua = value
            elseif OldWorld then
               VLib:Notification("Use In New World")
            end
         end)
         Raids:Toggle("Auto Next Island",false,function(value)
            if NewWorld then
               NextIsland = value
            elseif OldWorld then
               VLib:Notification("Use In New World")
            end
         end)
         Raids:Toggle("Auto Awakener",false,function(value)
            if NewWorld then
               Awakener = value
            elseif OldWorld then
               VLib:Notification("Use In New World")
            end
         end)
         Raids:Button("Dungeon",function()
            if NewWorld then
               game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
            elseif OldWorld then
               VLib:Notification("Use In New World","Button")
            end
         end)
         Raids:Button("Awakening Room",function()
            if NewWorld then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783, 1.39509034, 1857.00732)
            elseif OldWorld then
               VLib:Notification("Use In New World","Button")
            end
         end)
         spawn(function()
            while wait(.1) do
               if Awakener then
                     local args = {
                        [1] = "Awakener",
                        [2] = "Check"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     local args = {
                        [1] = "Awakener",
                        [2] = "Awaken"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         end)
         spawn(function()
            while wait(.1) do
               if NextIsland then
                  game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                  if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                     if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,40,0)
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,40,0)
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,40,0)
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,40,0)
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,40,0)
                     end
                  else
                     game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
                  end 
               end
            end
         end)
         spawn(function()
            while wait(.1) do
               if RaidsArua then
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if RaidsArua and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                        pcall(function()
                           repeat wait(.1)
                              if setsimulationradius then
                                 setsimulationradius(1e+1598, 1e+1599)
                              end
                              v.HumanoidRootPart.Transparency = 0.75
                              v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                              v.HumanoidRootPart.CanCollide = false
                              v.Humanoid.Health = 0
                           until not RaidsArua or not v.Parent or v.Humanoid.Health <= 0
                        end)
                     end
                  end
               end
            end
         end)
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Players = win:Tab("Players")
         local SelectedPly = Players:Label("Selected Player : nil")
         PlayerName = {}
         for i,v in pairs(game.Players:GetChildren()) do  
            table.insert(PlayerName ,v.Name)
         end
         SelectedKillPlayer = ""
         local Player = Players:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
            SelectedKillPlayer = plys
            SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
         end)
         Players:Button("Refrsh Player",function()
            PlayerName = {}
            Player:Clear()
            for i,v in pairs(game.Players:GetChildren()) do  
               Player:Add(v.Name)
            end
         end)
         game:GetService("RunService").Heartbeat:Connect(
            function()
               if KillPlayer then
                  game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
               end
            end
         )
         Players:Toggle("Kill Player",false,function(bool)
            KillPlayer = bool
            if KillPlayer == false then
               game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
            end
            while KillPlayer do wait()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
               game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
               game:GetService'VirtualUser':CaptureController()
               game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end
         end)
         Players:Toggle("Spectate Player",false,function(bool)
            Sp = bool
            local plr1 = game.Players.LocalPlayer.Character.Humanoid
            local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
            repeat wait(.1)
               game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
            until Sp == false 
            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
         end)
         Players:Button("Teleport Player",function()
            local plr1 = game.Players.LocalPlayer.Character
            local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
            plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
         end)
         Players:line()
         Players:Toggle("Aimbot Gun",false,function(bool)
            if SelectedKillPlayer == "" and bool then
               VLib:Notification("Select Player to Aim")
            else
               Aimbot = bool
            end
         end)
         local lp = game:GetService('Players').LocalPlayer
         local mouse = lp:GetMouse()
         mouse.Button1Down:Connect(function()
            if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) then
               local args = {
                  [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
                  [2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
               }
               game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
            end 
         end)
         Players:Toggle("Aimbot Skill [Bate]",false,function(bool)
            AimbotSkill = bool
            while AimbotSkill do wait()
               pcall(function()
                  if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                     local args = {
                     [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
                     }
                     game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                  end
               end)
            end
         end)
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Misc = win:Tab("Misc")
         local LocalPlayer = game:GetService'Players'.LocalPlayer
         local originalstam = LocalPlayer.Character.Energy.Value
         function infinitestam()
            LocalPlayer.Character.Energy.Changed:connect(function()
               if InfinitsEnergy then
                     LocalPlayer.Character.Energy.Value = originalstam
               end 
            end)
         end
         spawn(function()
            while wait(.1) do
               if InfinitsEnergy then
                     wait(0.3)
                     originalstam = LocalPlayer.Character.Energy.Value
                     infinitestam()
               end
            end
         end)
         nododgecool = false
         function NoDodgeCool()
            if nododgecool then
               for i,v in next, getgc() do
                     if game.Players.LocalPlayer.Character.Dodge then
                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                           if tostring(v2) == "0.4" then
                                 repeat wait(.1)
                                    setupvalue(v,i2,0)
                                 until not nododgecool
                           end
                        end
                        end
                     end
               end
            end
         end
         Misc:Label("Server Time")
         Time = Misc:Label("Server Time")
         local function UpdateTime()
            local GameTime = math.floor(workspace.DistributedGameTime+0.5)
            local Hour = math.floor(GameTime/(60^2))%24
            local Minute = math.floor(GameTime/(60^1))%60
            local Second = math.floor(GameTime/(60^0))%60
            Time:Refresh("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
         end
         spawn(function()
            while true do
               UpdateTime()
               game:GetService("RunService").RenderStepped:Wait()
            end
         end)
         -- Misc:Time()
         Misc:line()
         Misc:Button("Join Pirates Team",function()
            local args = {
               [1] = "SetTeam",
               [2] = "Pirates"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
            local args = {
               [1] = "BartiloQuestProgress"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "Buso"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         Misc:Button("Join Marines Team",function()
            local args = {
               [1] = "SetTeam",
               [2] = "Marines"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "BartiloQuestProgress"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "Buso"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         Misc:line()
         Misc:Button("Check Ectoplasm",function()
            VLib:Notification("You have "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check").." Ectoplasm")
         end)
         Misc:Button("Open Devil Shop",function()
            local args = {
               [1] = "GetFruits"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
         end)
         Misc:Button("Open Inventory",function()
            local args = {
               [1] = "getInventoryWeapons"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
         end)
         Misc:Button("Open Color Haki",function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
         end)
         Misc:Button("Open Title Name",function()
            local args = {
               [1] = "getTitles"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
         end)
         Misc:line()
         Misc:Toggle("Dodge No Cooldown",false,function(Value)
            nododgecool = Value
            NoDodgeCool()
         end)
         Misc:Toggle("Infinits Energy",false,function(value)
            InfinitsEnergy = value
            originalstam = LocalPlayer.Character.Energy.Value
         end)
         Misc:Toggle("Auto Click",false,function(value)
            AuctoClick = value
         end)
         Misc:Toggle("Teleport Devil Fruit",false,function(value)
            TeleportDF = value
            pcall(function()
               while TeleportDF do wait()
                  for i,v in pairs(game.Workspace:GetChildren()) do
                     if string.find(v.Name, "Fruit") then 
                     v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                     end
                  end
               end
            end)
         end)
         Fly = false  
         function activatefly()
            local mouse=game.Players.LocalPlayer:GetMouse''
            localplayer=game.Players.LocalPlayer
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
            local speedSET=25
            local keys={a=false,d=false,w=false,s=false}
            local e1
            local e2
            local function start()
               local pos = Instance.new("BodyPosition",torso)
               local gyro = Instance.new("BodyGyro",torso)
               pos.Name="EPIXPOS"
               pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
               pos.position = torso.Position
               gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
               gyro.cframe = torso.CFrame
               repeat
                     wait()
                     localplayer.Character.Humanoid.PlatformStand=true
                     local new=gyro.cframe - gyro.cframe.p + pos.position
                     if not keys.w and not keys.s and not keys.a and not keys.d then
                        speed=1
                     end
                     if keys.w then
                        new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                        speed=speed+speedSET
                     end
                     if keys.s then
                        new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                        speed=speed+speedSET
                     end
                     if keys.d then
                        new = new * CFrame.new(speed,0,0)
                        speed=speed+speedSET
                     end
                     if keys.a then
                        new = new * CFrame.new(-speed,0,0)
                        speed=speed+speedSET
                     end
                     if speed>speedSET then
                        speed=speedSET
                     end
                        pos.position=new.p
                     if keys.w then
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                     elseif keys.s then
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                     else
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                     end
               until not Fly
               if gyro then 
                        gyro:Destroy() 
               end
               if pos then 
                        pos:Destroy() 
               end
               flying=false
               localplayer.Character.Humanoid.PlatformStand=false
               speed=0
            end
            e1=mouse.KeyDown:connect(function(key)
               if not torso or not torso.Parent then 
                     flying=false e1:disconnect() e2:disconnect() return 
               end
               if key=="w" then
                  keys.w=true
               elseif key=="s" then
                  keys.s=true
               elseif key=="a" then
                  keys.a=true
               elseif key=="d" then
                  keys.d=true
               end
            end)
            e2=mouse.KeyUp:connect(function(key)
               if key=="w" then
                  keys.w=false
               elseif key=="s" then
                  keys.s=false
               elseif key=="a" then
                  keys.a=false
               elseif key=="d" then
                  keys.d=false
               end
            end)
            start()
         end
         Misc:Toggle("Fly",false,function(Value)
            Fly = Value
            activatefly()
         end)
         Misc:Toggle("No Clip",false,function(value)
            NoClip = value
         end)
         game:GetService("RunService").Heartbeat:Connect(
            function()
               if NoClip or Observation then
                     game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
               end
            end
         )
         Misc:Button("Remove Lave",function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
               if v.Name == "Lava" then   
                  v:Destroy()
               end
            end
            for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
               if v.Name == "Lava" then   
                  v:Destroy()
               end
            end
         end)
         Misc:Button("Redeem All Code",function()
            function UseCode(Text)
               game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
            end
            UseCode("FUDD10")
            UseCode("BIGNEWS")
            UseCode("THEGREATACE")
            UseCode("SUB2NOOBMASTER123")
            UseCode("Sub2Daigrock")
            UseCode("Axiore")
            UseCode("TantaiGaming")
            UseCode("STRAWHATMAINE")
            UseCode("Sub2OfficialNoobie")
         end)
         Misc:Button("FPS Boost",function()
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
         Misc:Button("Super FPS Boost",function()
            for i,v in pairs(game.Workspace.Map:GetDescendants()) do
               if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                     v:Destroy()
               end
            end 
            for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
               if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                     v:Destroy()
               end
            end
            for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
               if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
                     v:Destroy()
               end
            end
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
         Misc:line()
         Misc:Label("Auto Farm Level Lock")
         LockLevelValue = 1525
         OldLevel = game.Players.localPlayer.Data.Level.Value
         Misc:Slider("Select Level Lock",1,LockLevelValue,LockLevelValue,function(value)
            LockLevelValue = value
         end)
         Misc:Toggle("Lock Level",false,function(value)
            LockLevel = value
         end)
         spawn(function()
            while wait(.1) do
               if LockLevel then
                  if game.Players.localPlayer.Data.Level.Value >= LockLevelValue then
                     game.Players.localPlayer:Kick("\n Auto Fram Completed Level : "..game.Players.localPlayer.Data.Level.Value.."\n Old Level : "..OldLevel.."\nUsername : "..game.Players.LocalPlayer.Name)
                  end
               end
            end
         end)
         spawn(function()
            while wait(.1) do
               if AuctoClick then
                  Click()
               end
            end
         end)
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Fruit = win:Tab("Devil Fruit")
         SelectDevil = ""
         Check = false
         Fruit:Dropdown(
            "Devil Fruit Sniper",
            {
               "Bomb-Bomb",
               "Spike-Spike",
               "Chop-Chop",
               "Spring-Spring",
               "Smoke-Smoke",
               "Flame-Flame",
               "Ice-Ice",
               "Sand-Sand",
               "Dark-Dark",
               "Light-Light",
               "Rubber-Rubber",
               "Barrier-Barrier",
               "Magma-Magma",
               "Quake-Quake",
               "Human-Human: Buddha",
               "String-String",
               "Bird-Bird: Phoenix",
               "Rumble-Rumble",
               "Paw-Paw",
               "Gravity-Gravity",
               "Dough-Dough",
               "Control-Control",
               "Dragon-Dragon"
            }
            ,function(ply)
               SelectDevil = ply
            end
         )
         Fruit:Toggle("Buy Devil Fruit Sinper",false,function(value)
            if SelectDevil == "" and value then
               VLib:Notification("Select Devil Fruit Buy Sniper")
            elseif value then
               BuyFruitSinper = vu
            end	
         end)
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local BuyItem = win:Tab("Buy item")
         BuyItem:Label("-- Abilities --")
         BuyItem:Button("Skyjump ($10,000 Beli)",function()
            local args = {
               [1] = "BuyHaki",
               [2] = "Geppo"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Buso Haki ($25,000 Beli)",function()
            local args = {
               [1] = "BuyHaki",
               [2] = "Buso"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Observation haki ($750,000 Beli)",function()
            local args = {
               [1] = "KenTalk",
               [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Soru ($100,000 Beli)",function()
            local args = {
               [1] = "BuyHaki",
               [2] = "Soru"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Buy Random Devil Fruit",function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
         end)
         BuyItem:Toggle("Auto Buy Random Devil Fruit",false,function(v)
            DevilAutoBuy = v
         end)
         spawn(function()
            while wait() do
               if DevilAutoBuy then wait()
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
               end
            end
         end)
         BuyItem:line()
         BuyItem:Label("-- Fighting Style --")
         BuyItem:Button("Black Leg",function()
            local args = {
               [1] = "BuyBlackLeg"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Electro",function()
            local args = {
               [1] = "BuyElectro"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Fishman Karate",function()
            local args = {
               [1] = "BuyFishmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Dragon Claw",function()
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
         end)
         BuyItem:Button("Superhuman",function()
            local args = {
               [1] = "BuySuperhuman"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Death Step",function()
            local args = {
               [1] = "BuyDeathStep"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Sharkman Karate",function()
            local args = {
               [1] = "BuySharkmanKarate",
               [2] = true
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "BuySharkmanKarate"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:line()
         BuyItem:Label("-- Race --")
         BuyItem:Label(" Must have done this Race already ")
         BuyItem:Button("Race Ghoul",function()
            local args = {
               [1] = "Ectoplasm",
               [2] = "BuyCheck",
               [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
               [1] = "Ectoplasm",
               [2] = "Change",
               [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Race Cyborg",function()
            local args = {
               [1] = "CyborgTrainer",
               [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Random Race (Use 3000 Fragments)",function()
            local args = {
               [1] = "BlackbeardReward",
               [2] = "Reroll",
               [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         BuyItem:Button("Reset Stats (Use 2500 Fragments)",function()
            local args = {
               [1] = "BlackbeardReward",
               [2] = "Refund",
               [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end)
         -----------------------------------------------------------------------------------------------------------------------------------------------
         local Setting = win:Tab("Setting")
         Setting:Label("Credit |MAZI HUB")
         Setting:Button("Rejoin",function()
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p)
         end)
         local function HttpGet(url)
            return game:GetService("HttpService"):JSONDecode(htgetf(url))
         end
         Setting:Button("Server Hop",function()
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
         Setting:line()
         Setting:Button("Copy link discord",function()
            setclipboard("https://discord.gg/Gkefpbs42f")
         end)
         Setting:Button("Destroy Gui",function()
            Library:Destroy()
         end)
         Setting:line()
         Setting:Label("Auto Farm Setting")
         Setting:Toggle("Hide HitBlox",true,function(Value)
            HideHitBlox = Value  
         end)
         AUTOHAKI = false
         Setting:Toggle("Auto Haki",false,function(Value)
            AUTOHAKI = Value  
         end)
         Setting:Toggle("Auto Observation haki",false,function(Value)
            AUTOHAKIObs = Value  
         end)
         local vu = game:GetService("VirtualUser")
         game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
         end)
         Setting:Toggle("Anit AFK",true,function(vu)
            print("Anit AFK Start")
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
               vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
               wait(1)
               vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
         end)
         spawn(function()
            while wait(.1) do
               if AUTOHAKI then 
                  if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

                  else
                     local args = {
                        [1] = "Buso"
                     }
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end
               end
               if AUTOHAKIObs then 
                  if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

                  else wait(1)
                     local virtualUser = game:GetService('VirtualUser')
                     virtualUser:CaptureController()

                     virtualUser:SetKeyDown('0x65')
                     wait(2)  
                     virtualUser:SetKeyUp('0x65')
                  end
               end
            end
         end)
         Setting:Label("Auto Fram Mastery Skill Setting")
         Setting:Toggle("Skill Z",true,function(a)
            SkillZ = a
         end)
         Setting:Toggle("Skill X",true,function(a)
            SkillX = a
         end)
         Setting:Toggle("Skill C",true,function(a)
            SkillC = a
         end)
         Setting:Toggle("Skill V",true,function(a)
            SkillV = a
         end)