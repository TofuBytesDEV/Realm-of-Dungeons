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

return DungeonModule
