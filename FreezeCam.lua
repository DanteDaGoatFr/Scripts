local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local function toggleCameraFreeze()
    local player = Players.LocalPlayer
    local character = player.Character
    local camera = game.Workspace.CurrentCamera

    if character and camera then
        if camera.CameraType == Enum.CameraType.Scriptable then
            camera.CameraType = Enum.CameraType.Custom
        else
            camera.CameraType = Enum.CameraType.Scriptable
        end
    end
end

local function onInput(input)
    if input.KeyCode == Enum.KeyCode.L then -- Change L to whatever keybind you want
        toggleCameraFreeze()
    end
end

UserInputService.InputBegan:Connect(onInput)
