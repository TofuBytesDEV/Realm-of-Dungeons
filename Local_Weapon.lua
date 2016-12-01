script.Parent.Equipped:connect(function(mouse)
	--Right Click
	mouse.Button2Down:connect(function()
		script.Parent.IsBlocking.Value = true
		script.Parent.Block:FireServer()
	end
	mouse.Button2Up:connect(function()
		script.Parent.IsBlocking.Value = false
	end
	--Gamepad Detection
  game:GetService('UserInputService').InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.ButtonL2 then
      script.Parent.IsBlocking.Value = true
      script.Parent.block:FireServer()
    end
  game:GetService('UserInputService').InputEnded:connect(function(input)
    if input.KeyCode == Enum.KeyCode.ButtonL2 then
      script.Parent.IsBlocking.Value = false
    end
end)
