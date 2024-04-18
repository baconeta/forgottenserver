function printSmallGuildNames(memberCount)
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < ?;"
    local result = db.storeQuery(selectGuildQuery, memberCount)

    if not result then
        print("SQL query empty or invalid")
        return
    end

    -- Fetch and print guild names
    local row = result.getNextRow()
    while row do
        local guildName = result.getDataString(row, "name")
        print(guildName)
        row = result.getNextRow()
    end

    result.free()
end