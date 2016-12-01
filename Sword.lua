local function closestEnemyInSight(characters)
	local torso = script.Parent.Parent:findFirstChild("UpperTorso")
	if torso then
		local closestTorso,closestDist = nil,math.huge
		for _,v in pairs(characters) do
			local dist = (v.UpperTorso.Position-torso.Position).magnitude
			if dist <= 8 and dist < closestDist then
				closestTorso = v.UpperTorso
				closestDist = dist
			end
		end
		if closestTorso and closestDist then
			return closestTorso.Parent
		end
	end
end

script.Parent.Attack.OnServerEvent:connect(function(player)
	local Level = player.Stats.Level
	local enemies = {}	
	for _,v in pairs(workspace:GetChildren()) do
			if v:IsA("Model") and v:findFirstChild("Enemy") and v.Enemy.Health > 0 and v ~= script.Parent.Parent then
				table.insert(enemies,v)
			end
	end	
	wait(.5)
	script.Parent.Particles:FindFirstChild('Smoke').Enabled = true
	script.Parent.Particles:FindFirstChild('Sparkles').Enabled = true
	script.Parent.Particles:FindFirstChild('RadialSparkles').Enabled = true
	local EnemyToKill = closestEnemyInSight(enemies)
		if EnemyToKill then
		local damagemultiplier = math.random(1.5,4.5)
		EnemyToKill.Enemy:TakeDamage(Level.Value*damagemultiplier)
		end
	wait(.2)
end)

script.Parent.Block.OnServerEvent:connect(function(player)
	if script.Parent.IsBlocking.Value == true then
	
	end
end
