local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderColor3 = Color3.fromRGB(0, 170, 255)
Frame.Position = UDim2.new(0.1, 0, 0.38, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)
Frame.Active = true
Frame.Draggable = true

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(255, 255, 255)
up.TextSize = 14

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
down.Position = UDim2.new(0, 0, 0.491, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(255, 255, 255)
down.TextSize = 14

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
onof.Position = UDim2.new(0.7, 0, 0.491, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(255, 255, 255)
onof.TextSize = 14

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.Position = UDim2.new(0.47, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FLY GUI V3"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
plus.Position = UDim2.new(0.23, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(255, 255, 255)
plus.TextScaled = true
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
speed.Position = UDim2.new(0.468, 0, 0.491, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.TextScaled = true
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
mine.Position = UDim2.new(0.23, 0, 0.491, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(255, 255, 255)
mine.TextScaled = true
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = Frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = Frame
mini.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.TextColor3 = Color3.fromRGB(255, 255, 255)
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = Frame
mini2.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.TextColor3 = Color3.fromRGB(255, 255, 255)
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1
local speaker = game:GetService("Players").LocalPlayer
local chr = speaker.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
local nowe = false

onof.MouseButton1Down:Connect(function()
	if nowe == true then
		nowe = false
		for _, state in pairs(Enum.HumanoidStateType:GetEnumItems()) do
			speaker.Character.Humanoid:SetStateEnabled(state, true)
		end
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else
		nowe = true
		for i = 1, speeds do
			spawn(function()
				local hb = game:GetService("RunService").Heartbeat
				local chr = speaker.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while nowe and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end
			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = speaker.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
		for _, v in pairs(Hum:GetPlayingAnimationTracks()) do
			v:AdjustSpeed(0)
		end
		for _, state in pairs(Enum.HumanoidStateType:GetEnumItems()) do
			speaker.Character.Humanoid:SetStateEnabled(state, false)
		end
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end
end)

local tis
up.MouseButton1Down:Connect(function()
	tis = up.MouseEnter:Connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)
up.MouseLeave:Connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis
down.MouseButton1Down:Connect(function()
	dis = down.MouseEnter:Connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)
down.MouseLeave:Connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false
end)

plus.MouseButton1Down:Connect(function()
	speeds = speeds + 1
	speed.Text = speeds
end)

mine.MouseButton1Down:Connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)

