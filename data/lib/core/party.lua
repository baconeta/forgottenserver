function Party.broadcastPartyLoot(self, text)
	self:getLeader():sendTextMessage(MESSAGE_INFO_DESCR, text)
	local membersList = self:getMembers()
	for i = 1, #membersList do
		local player = membersList[i]
		if player then
			player:sendTextMessage(MESSAGE_INFO_DESCR, text)
		end
	end
end

function do_sth_with_PlayerParty(playerId, membername)
    local player = Player(playerId)
    if not player then
        print("Error: Player not found")
        return
    end

    local party = player:getParty()
    if not party then
        print("Error: Player not in a party")
        return
    end

    local memberToRemove = nil
    for k,v in pairs(party:getMembers()) do
        if v:getName() == membername then
            memberToRemove = member
            break
        end
    end

    if memberToRemove then
        party:removeMember(memberToRemove)
    else
        print("Error: Member not in party")
    end
end
