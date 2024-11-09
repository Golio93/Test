-- Tables
SettingsTable = {
	NightMode = false,

}

-- Variable
bgColor = Color3.fromRGB(168, 0, 3)
bdColor = Color3.fromRGB(139, 0, 5)

--Instances
Menu = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

MainFrame = Instance.new("Frame", Menu)

Text = Instance.new("TextLabel", MainFrame)

NightModeButton = Instance.new("TextButton", MainFrame)
NightModeButtonTitle = Instance.new("TextLabel", NightModeButton)

--Paramètres
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Size = UDim2.new(0, 375, 0, 160)
MainFrame.Position = UDim2.new(0.5, 0, 0.1, 0)
MainFrame.BackgroundColor3 = bgColor
MainFrame.BorderColor3 = bdColor
MainFrame.BorderSizePixel = 1.5
MainFrame.Active = true
MainFrame.Draggable = true

Text.AnchorPoint = Vector2.new(0.5, 0)
Text.Size = UDim2.new(0, 200, 0, 50)
Text.Position = UDim2.new(0.5, 0, 0, 0)
Text.BackgroundColor3 = bgColor
Text.BorderColor3 = bgColor
Text.Text = "Menu"
Text.TextSize = 35
Text.TextColor3 = Color3.fromRGB(255, 255, 255)

NightModeButton.AnchorPoint = Vector2.new(0.5, 1)
NightModeButton.Position = UDim2.new(0.1, 0, 0.9, 0)
NightModeButton.Size = UDim2.new(0, 50, 0, 50)
NightModeButton.BackgroundColor3 = bgColor
NightModeButton.BorderSizePixel = 1.5
NightModeButton.BorderColor3 = bdColor
NightModeButton.TextColor3 = bdColor
NightModeButton.Text = ""
NightModeButton.TextScaled = true
NightModeButton.MouseButton1Click:Connect(function()
	SettingsTable.NightMode = not SettingsTable.NightMode

	if SettingsTable.NightMode then
		NightModeButton.Text = "✔"
	else
		NightModeButton.Text = ""
	end

	NightMode()

end)

NightModeButtonTitle.Position = UDim2.new(1, 0, 0, 0)
NightModeButtonTitle.Size = UDim2.new(0, 300, 1, 0)
NightModeButtonTitle.BackgroundTransparency = 1
NightModeButtonTitle.TextScaled = true
NightModeButtonTitle.Text = "Night Mode"
NightModeButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)

--Fonction
game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Equals then
		Menu.Enabled = not Menu.Enabled
	end
end)

function NightMode()
	if SettingsTable.NightMode then
		game.Lighting.ClockTime = 0
	else
		game.Lighting.ClockTime = 14
	end
end