local buttonInfo = {
    { text = "Subspace tripmine", code = "loadstring(game:HttpGet('https://pastebin.com/raw/6R5vUuDK'))()" },
    { text = "lazer gun", code = "loadstring(game:HttpGet('https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun.lua'))()" },
    { text = "chocolate", code = "loadstring(game:HttpGet('https://raw.githubusercontent.com/K0t1n/Public/main/Chocolate%20Bar.lua'))()" },
    { text = "Lolcat's awesome script doors", code = "loadstring(game:HttpGet('https://lolcat.boo/awesomescript'))()" },
    { text = "c00lkid gui reborn", code = "loadstring(game:GetObjects('rbxassetid://473373681')[1].Source)()" },
    { text = "Eternity hub", code = "loadstring(game:HttpGet('https://pastebin.com/raw/KT3capVA'))()" },
    { text = "FPS AIMLOCK", code = "loadstring(game:HttpGet('https://pastebin.com/raw/d76sHsT6'))()" },
    { text = "shears script doors", code = "loadstring(game:HttpGet('https://pastebin.com/raw/rXgH5FGT'))()" },
    { text = "GUN SCRIPT FE", code = "loadstring(game:HttpGet('https://pastebin.com/raw/7p1PbrU8'))()" },
    { text = "SYNAPSE X GUI", code = "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/EHUBWINNING/SYNAPSE/main/V2.lua\"))()" },
    { text = "(Doors) Vynixiu's M249 Script", code = "loadstring(game:HttpGet('https://pastebin.com/raw/cJWSByci'))()" },
    { text = "Topkek script hub", code = "loadstring(game:HttpGet('https://pastebin.com/raw/GgC28BzK'))()" },
    { text = "infinite yield", code = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()" },
    { text = "Kohls admin house", code = "game:GetService("TeleportService"):Teleport(5268472977,player)" },
    { text = "OHIO MODE ANY GAME", code = "game.Players.LocalPlayer:Kick(\"IP. 92.28.211.234.\")" },
    { text = "Unfair hub", code = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()" },
    { text = "Blackking 2.0", code = "loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing/main/BlackKing"))()" }
}

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

gui.ResetOnSpawn = false
gui.Name = "CustomGUI"

local blackBackground = Instance.new("Frame")
blackBackground.Parent = gui
blackBackground.BackgroundColor3 = Color3.new(0, 0, 0)
blackBackground.Position = UDim2.new(0, 0, 0, 0)
blackBackground.Size = UDim2.new(1, 0, 1, 0)

local function createButton(text, code)
    local button = Instance.new("TextButton")
    button.Parent = blackBackground
    button.Size = UDim2.new(0, 200, 0, 30)
    button.Position = UDim2.new(0, 10, 0, (#blackBackground:GetChildren() - 1) * 40 + 10)
    button.Text = text
    button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.SourceSans
    button.FontSize = Enum.FontSize.Size18

    button.MouseButton1Click:Connect(function()
        loadstring(code)()
    end)
end

for _, info in ipairs(buttonInfo) do
    createButton(info.text, info.code)
end

local closeButton = Instance.new("TextButton")
closeButton.Parent = blackBackground
closeButton.Size = UDim2.new(0, 100, 0, 30)
closeButton.Position = UDim2.new(1, -110, 0, 10)
closeButton.Text = "Close"
closeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.SourceSans
closeButton.FontSize = Enum.FontSize.Size18

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
