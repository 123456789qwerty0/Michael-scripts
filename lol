local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local gameIDs = {
    1340682542, 272941, 9246956, 1600503, 1636712, 38340147, 18164449, 
    118641, 545193, 455332, 4981994, 19549795, 14403, 1818, 281944, 
    426912, 44814, 222415472, 153850, 3075297, 10567134541, 37923834, 
    5513284357, 129775, 149466, 17346518, 12708482448, 13612627991, 6253885732
}

local function teleportToRandomGame()
    local randomIndex = math.random(1, #gameIDs)
    local targetPlaceId = gameIDs[randomIndex]

    local player = game.Players.LocalPlayer
    local placeId = game.PlaceId

    if placeId ~= targetPlaceId then
        TeleportService:Teleport(targetPlaceId, player)
    else
        local message = "Failed"

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
            warn('Failed')
        end)
    end
end

teleportToRandomGame()
