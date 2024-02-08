local Players = game:GetService("Players")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Text = "Texto de Exemplo"
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 24
textLabel.TextColor3 = Color3.new(1, 1, 1) -- cor branca
textLabel.BackgroundTransparency = 1
textLabel.Size = UDim2.new(1, 0, 0, 50)
textLabel.Position = UDim2.new(0, 0, 0, -50) -- posição acima da tela
textLabel.Parent = playerGui

local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

local tween = TweenService:Create(textLabel, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)})
tween:Play()

wait(5)

tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

tween = TweenService:Create(textLabel, tweenInfo, {Position = UDim2.new(0, 0, 0, -50)})
tween:Play()

wait(1)

textLabel:Destroy()
