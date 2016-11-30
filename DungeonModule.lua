local DungeonModule = {
number = 0
}

function DungeonModule.InsertMobs()
	local LoadMobs = game:GetService("InsertService"):LoadAsset(539839275)
	LoadMobs.Parent = game.ServerScriptService:WaitForChild('TemporaryAssets')
end

function DungeonModule.SpawnMob(number)
local mobs = game.ServerStorage.Mobs.Standard:GetChildren()
local spawners = workspace.Spawners:GetChildren()
	local randommob = math.random(1,#mobs)
	local mobclone = mobs[randommob]:Clone()
	wait()
	local TemporaryMob = mobclone
	TemporaryMob.Parent = game.ServerScriptService.TemporaryAssets
	TemporaryMob.HumanoidRootPart.CFrame = CFrame.new(spawners[number].Position.X,spawners[number].Position.Y+3,spawners[number].Position.Z)
	TemporaryMob:Clone().Parent = workspace
	spawners[number]:Destroy()
	TemporaryMob:Destroy()
	wait()
end

function DungeonModule.SpawnChest()
	local ChestSpawns = workspace.Chests:GetChildren()
	local Chest = game.ReplicatedStorage.Assets.Objects.Chest:Clone()
	for i, v in pairs(workspace.Chests:GetChildren()) do
	local roll = math.random(0,10)
		if roll > 7 then
			Chest.Parent = workspace
			for _,c in pairs(Chest:GetChildren()) do
				for i=1,#Chest:GetChildren() do
					if Chest[i].className == "Part" then
						Chest[i].CFrame = Chest[i].CFrame+Vector3.new(v.Position)
						Chest[i].Rotation = Vector3.new(v.Rotation)
					end
				end
			end
		end
	end
end
	
return DungeonModule
