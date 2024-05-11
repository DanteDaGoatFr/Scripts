local UserInputService = game:GetService("UserInputService")

local function onInput(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end

UserInputService.InputBegan:Connect(onInput)
