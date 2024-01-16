-- Get services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- Function to handle flying
local function onKeyPress(input)
    local player = Players.localPlayer
    local character = player.Character

    if character and input.KeyCode == Enum.KeyCode.Space then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        
        -- Check if the humanoid exists
        if humanoid then
            humanoid:Move(Vector3.new(0, 50, 0)) -- Adjust the Vector3 values for desired flying height
        end
    end
end

-- Connect the function to the input
UserInputService.InputBegan:Connect(onKeyPress)
