local function releaseStorage(player)
    player:setStorageValue(1000, -1)
end

function onLogout(player)
    if not player then
        print("Player doesn't exist in this context")
        return false
    end
    if nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = nil
    if player:getStorageValue(1000) == 1 then
        releaseStorage(player)
    end
    return true
end