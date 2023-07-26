Citizen.CreateThread(function()
    if NetworkIsSessionStarted() then SetRadioStationsForEmitters() end
end)

function SetRadioStationsForEmitters()
    local emitters = Config.Emitters

    for _, emitter in ipairs(emitters) do
        local emitterName = emitter.name
        local radioStation = emitter.radio

        if radioStation ~= "" then
            SetEmitterRadioStation(emitterName, radioStation)
        end
    end
end
