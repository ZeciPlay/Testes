local playerName = game.Players.LocalPlayer.Name
local texto = "Bem-vindo, " .. playerName .. "! Aprovete."

local function displayPopup()
    local popupGui = Instance.new("ScreenGui")
    popupGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    popupGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local popupFrame = Instance.new("Frame")
    popupFrame.Parent = popupGui
    popupFrame.Size = UDim2.new(0, 250, 0, 150)
    popupFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
    popupFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    popupFrame.BorderSizePixel = 2

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = popupFrame
    textLabel.Size = UDim2.new(1, 0, 0.6, 0)
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = texto
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 18

    local closeButton = Instance.new("TextButton")
    closeButton.Parent = popupFrame
    closeButton.Size = UDim2.new(0, 20, 0, 20)
    closeButton.Position = UDim2.new(1, -25, 0, 5)
    closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
    closeButton.BorderSizePixel = 0
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.TextSize = 14

    closeButton.MouseButton1Click:Connect(function()
        popupGui:Destroy()
    end)

    local okButton1 = Instance.new("TextButton")
    okButton1.Parent = popupFrame
    okButton1.Size = UDim2.new(0, 100, 0, 30)
    okButton1.Position = UDim2.new(0.5, -115, 1, -40)
    okButton1.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    okButton1.BorderSizePixel = 0
    okButton1.Text = "Script 1"
    okButton1.TextColor3 = Color3.new(1, 1, 1)
    okButton1.Font = Enum.Font.SourceSansBold
    okButton1.TextSize = 18

    local okButton2 = Instance.new("TextButton")
    okButton2.Parent = popupFrame
    okButton2.Size = UDim2.new(0, 100, 0, 30)
    okButton2.Position = UDim2.new(0.5, 15, 1, -40)
    okButton2.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    okButton2.BorderSizePixel = 0
    okButton2.Text = "Script 2"
    okButton2.TextColor3 = Color3.new(1, 1, 1)
    okButton2.Font = Enum.Font.SourceSansBold
    okButton2.TextSize = 18

    okButton1.MouseButton1Click:Connect(function()
        getgenv().Resolution = {
            [".gg/scripters"] = 0.50
        }

        local Camera = workspace.CurrentCamera
        if getgenv().gg_scripters == nil then
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
                end
            )
        end

        getgenv().gg_scripters = "Aori0001"
    end)

    okButton2.MouseButton1Click:Connect(function()
getgenv().Resolution = {
    [".gg/scripters"] = 0.50
}

local Camera = workspace.CurrentCamera
if getgenv().gg_scripters == nil then
    game:GetService("RunService").RenderStepped:Connect(
        function()
            Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
        end
    )
end

getgenv().gg_scripters = "Aori0001"

_G.Settings = {
    Players = {
        ["Ignore Me"] = false,
        ["Ignore Others"] = false,
    },
    Meshes = {
        Destroy = false,
        LowDetail = true,
    },
    Images = {
        Invisible = true,
        LowDetail = true,
        Destroy = true,
    },
    ["No Particles"] = true,
    ["No Camera Effects"] = true,
    ["No Explosions"] = true, 
    ["No Clothes"] = false, 
    ["Low Water Graphics"] = true,
    ["No Shadows"] = true,
    ["Low Rendering"] = true,
    ["Low Quality Parts"] = true,
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeciPlay/MultiOptimize0.1/main/MultiOptimize01.lua"))()
    end)
end

displayPopup()