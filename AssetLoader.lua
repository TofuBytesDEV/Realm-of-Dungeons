local AssetLoader = {
}

function AssetLoader.InsertCustomizationLibrary()
	local LoadAsset = game:GetService("InsertService"):LoadAsset(541642018)
	LoadAsset.Parent = game.ServerScriptService:WaitForChild('TemporaryAssets')
end

function AssetLoader.InsertMobs()
	local LoadAsset = game:GetService("InsertService"):LoadAsset(539839275)
	LoadAsset.Parent = game.ServerScriptService:WaitForChild('TemporaryAssets')
end

function AssetLoader.InsertReplicatedLibrary()
	local LoadAsset = game:GetService("InsertService"):LoadAsset(560706355)
	LoadAsset.Parent = game.ServerScriptService:WaitForChild('TemporaryAssets')
end

return AssetLoader
