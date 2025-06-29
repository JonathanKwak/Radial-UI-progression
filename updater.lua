local progressHolder = script.Parent
local percentage = progressHolder.Percentage

local leftClip = progressHolder.LeftClip
local rightClip = progressHolder.RightClip

local function updateProgress()
	local rotation = percentage.Value * 360
	progressHolder.NumberText.Text = math.floor(percentage.Value * 100).."%"
	
	leftClip.DisplayImage.UIGradient.Rotation = math.clamp(rotation, 180, 360)
	rightClip.DisplayImage.UIGradient.Rotation = math.clamp(rotation, 0, 180)
end

updateProgress()
percentage.Changed:Connect(updateProgress)

-- Test code
while task.wait(0.01) do
	percentage.Value += 0.01
	
	if percentage.Value > 1 then
		percentage.Value = 0
	end
end
