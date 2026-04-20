local ox = exports.ox_inventory

AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() then
        return
    end

    ox:RegisterStash(
        Config.StorageStash.id,
        Config.StorageStash.label,
        Config.StorageStash.slots,
        Config.StorageStash.weight,
        false
    )

    ox:RegisterStash(
        Config.CounterStash.id,
        Config.CounterStash.label,
        Config.CounterStash.slots,
        Config.CounterStash.weight,
        false
    )
end)

RegisterNetEvent('dd-vitaristorante:server:dutyToggle', function()
    local src = source
    local Player = exports.qbx_core:GetPlayer(src)
    if not Player then
        return
    end

    local job = Player.PlayerData.job
    if not job or job.name ~= Config.Job then
        exports.qbx_core:Notify(src, 'Você não trabalha aqui.', 'error')
        return
    end

    local newDuty = not job.onduty
    Player.Functions.SetJobDuty(newDuty)

    local status = newDuty and 'em serviço' or 'fora de serviço'
    exports.qbx_core:Notify(src, 'Agora você está ' .. status .. '.', 'inform')
end)

RegisterNetEvent('dd-vitaristorante:server:finishCraft', function(recipe)
    local src = source
    if not recipe or not recipe.item or not recipe.ingredients then
        return
    end

    for item, amount in pairs(recipe.ingredients) do
        local count = ox:GetItemCount(src, item)
        if count < amount then
            exports.qbx_core:Notify(src, 'Faltam ingredientes: ' .. item, 'error')
            return
        end
    end

    for item, amount in pairs(recipe.ingredients) do
        ox:RemoveItem(src, item, amount)
    end

    ox:AddItem(src, recipe.item, 1, {
        durability = 100
    })
    exports.qbx_core:Notify(src, 'Receita concluída: ' .. recipe.item, 'success')
end)
