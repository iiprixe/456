getgenv().autofarm = false;
getgenv().swing = false;
getgenv().autolevel = false;

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "[Stormzzys Script] </> Egg Farm Sim",
    Style = 1,
    SizeX = 370,
    SizeY = 300,
    Theme = "Dark", --light dark aqua mocha jester
    ColorOverrides = {
		NavBarAccent = Color3.fromRGB(130,130,130)
    }
})

local F = X.New({
    Title = "Farm"
})
local T = X.New({
    Title = "Teleports"
})
local P = X.New({
    Title = "Player"
})
local M = X.New({
    Title = "Misc"
})

local B = F.Toggle({
    Text = "Auto Level",
    Callback = function(bool)
        getgenv().autolevel = bool
        spawn(function()
        while autolevel == true do
        local ohString1 = "å›žå°ä½ä½å¦»å›žå¹³å¦»è¦æŠ„ã‹ä½ãƒ‹ãŒå¹³ã‚‚å°ãƒãƒå›žãƒæŠ„æ¿€ã¦ã‚‚"
        local ohString2 = "Next Level"

        game:GetService("ReplicatedStorage").Events.Progress:FireServer(ohString1, ohString2)
 		wait()
        end
    end)
 end,
    Enabled = false
})

local B = F.Toggle({
    Text = "Auto Attack",
    Callback = function(bool)
getgenv().swing = bool
spawn(function()
    while swing == true do
 		local ohString1 = "self"
        local ohString2 = "219629d5067eddcdce55ed7968e9b53f"

        game:GetService("ReplicatedStorage").Events.Weapon:FireServer(ohString1, ohString2)
 		wait()
    end
  end)
 end,
    Enabled = false
})

local B = F.Toggle({
    Text = "Auto Farm Chicken",
    Callback = function(bool)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-217, 8, 125)
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(-235, 8, 136)

getgenv().autofarm = bool

spawn(function()
 while autofarm == true do
 		local ohString1 = "self"
local ohString2 = "219629d5067eddcdce55ed7968e9b53f"

game:GetService("ReplicatedStorage").Events.Weapon:FireServer(ohString1, ohString2)

 		wait()
 	 end
 end)
 end,
    Enabled = false
})

B = P.Slider({
    Text = "WS / WalkSpeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
    Min = 0,
    Max = 100,
    Def = 16
})

B = P.Button({
    Text = "Reset WS",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16   
    end
})

B = P.Slider({
    Text = "JP / JumpPower",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
    Min = 0,
    Max = 100,
    Def = 40
})

B = P.Button({
    Text = "Reset JP",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 40   
    end
})

B = T.Button({
    Text = "Goto Dealer",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Dealer.HumanoidRootPart.CFrame   
    end
})

B = T.Button({
    Text = "Goto Hire",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 8, 1)   
    end
})

B = T.Button({
    Text = "Goto Farm1",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-216, 14, 125)
    end
})

B = T.Button({
    Text = "Goto Farm2",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-217, 15, -126)
    end
})

B = T.Button({
    Text = "Goto Farm3",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 14, -246)
    end
})

B = T.Button({
    Text = "Goto Farm4",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(208, 14, -120)
    end
})

B = T.Button({
    Text = "Goto Farm5",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(212, 15, 122)
    end
})

B = T.Button({
    Text = "Goto Farm6",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 15, 249)
    end
})

local B = M.Toggle({
    Text = "Auto Collect Dimands",
    Callback = function(bool)
 end,
    Enabled = false
})

