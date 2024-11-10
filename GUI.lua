-- Tables
SettingsTable = {
	ModeNuit = false,

}

--Variables : 
fondEcranCouleur = Color3.fromRGB(106, 31, 171)
bordCouleur = Color3.fromRGB(80, 23, 129)

--Instances : 
Fichier = Instance.new("Folder", game.Players.LocalPlayer.PlayerGui)

MenuPrincipale = Instance.new("ScreenGui", Fichier)

FramePrincipale = Instance.new("Frame", MenuPrincipale)

TextMenuPrincipale = Instance.new("TextLabel", FramePrincipale)

FrameCheat = Instance.new("Frame", FramePrincipale)

TextListeCheat = Instance.new("TextLabel", FrameCheat)

BouttonJourNuit = Instance.new("TextButton", FrameCheat)

TextBoutonJourNuit = Instance.new("TextLabel", BouttonJourNuit)

--Propriétés : 
FramePrincipale.AnchorPoint = Vector2.new(0.5, 0.5)
FramePrincipale.Position = UDim2.new(0.5, 0, 0.14, 0)
FramePrincipale.Size = UDim2.new(0, 256, 0, 40)
FramePrincipale.BackgroundColor3 = fondEcranCouleur
FramePrincipale.BorderSizePixel = 2
FramePrincipale.BorderColor3 = bordCouleur
FramePrincipale.Active = true
FramePrincipale.Draggable = true

TextMenuPrincipale.AnchorPoint = Vector2.new(0.5, 0.5)
TextMenuPrincipale.Position = UDim2.new(0.5, 0, 0.4, 0)
TextMenuPrincipale.Size = UDim2.new(1, 0, 0.3, 0)
TextMenuPrincipale.Text = "Menu Principale"
TextMenuPrincipale.TextSize = 18
TextMenuPrincipale.TextColor3 = Color3.fromRGB(255, 255, 255)
TextMenuPrincipale.BackgroundColor3 = fondEcranCouleur
TextMenuPrincipale.BorderSizePixel = 0

FrameCheat.AnchorPoint = Vector2.new(0.5, 0)
FrameCheat.Position = UDim2.new(0.5, 0, 1, 0)
FrameCheat.Size = UDim2.new(0, 256, 0, 150)
FrameCheat.BackgroundColor3 = fondEcranCouleur
FrameCheat.BorderSizePixel = 2
FrameCheat.BorderColor3 = bordCouleur

TextListeCheat.AnchorPoint = Vector2.new(0.5, 0)
TextListeCheat.Position = UDim2.new(0.5, 0, 0.1, 0)
TextListeCheat.Text = "Liste cheat :"
TextListeCheat.TextColor3 = Color3.fromRGB(255, 255, 255)
TextListeCheat.TextSize = 16

BouttonJourNuit.AnchorPoint = Vector2.new(0.5, 0)
BouttonJourNuit.Position = UDim2.new(0.3, 0, 0.3, 0)
BouttonJourNuit.Size = UDim2.new(0, 25, 0, 25)
BouttonJourNuit.BackgroundColor3 = fondEcranCouleur
BouttonJourNuit.BorderSizePixel = 1
BouttonJourNuit.BorderColor3 = bordCouleur
BouttonJourNuit.TextColor3 = bordCouleur
BouttonJourNuit.Text = ""
BouttonJourNuit.TextScaled = true
BouttonJourNuit.MouseButton1Click:Connect(function()
	SettingsTable.ModeNuit = not SettingsTable.ModeNuit

	if SettingsTable.ModeNuit then
		BouttonJourNuit.Text = "✔"
	else
		BouttonJourNuit.Text = ""
	end

	ModeNuit()

end)

TextBoutonJourNuit.Position = UDim2.new(1, 0, 0, 0)
TextBoutonJourNuit.Size = UDim2.new(0, 125, 1, 0)
TextBoutonJourNuit.BackgroundTransparency = 1
TextBoutonJourNuit.TextScaled = true
TextBoutonJourNuit.Text = "Mode nuit"
TextBoutonJourNuit.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Fonctions :
game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Equals then
		MenuPrincipale.Enabled = not MenuPrincipale.Enabled
	end
end)

function ModeNuit()
	if SettingsTable.ModeNuit then
		game.Lighting.ClockTime = 0
	else
		game.Lighting.ClockTime = 14
	end
end
