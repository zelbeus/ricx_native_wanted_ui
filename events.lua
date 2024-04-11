--EXAMPLE
RegisterCommand("wanted_ui", function(source, args, raw)
    local wanted = WantedUI({showBountyHunterMessage = true}) --CALL UI
    wanted.Open()
    wanted.Update({f_2 = {switchLowerTextToIndex = 0}})-- calling f_2 array update due thats visible by default
    wanted.Update({f_2 = {upperLocText = "native_wanted_custom_text_01",upperTextStyle = 0, lowerRawText0 = "They look for you"}})
    Wait(2000)
    wanted.Update({showBountyHunterMessage = false})
    wanted.Update({f_2 = {lowerRawText0 = "They found you"}})
    Wait(4000)
    wanted.Update({showBountyHunterMessage = true})
    Wait(2000)
    wanted.Close()
end, false)

-- USAGE TO CALL UI: WantedUI(table)
-- table can contain showBountyHunterMessage as true/false or f_2/f_3/f_4 table | By default f_2 is visible at Right Top Corner
--[[
    the f_2/f_3/f_4 can contain:
    showMessage: boolean true/false
    upperLocText: string find below or Config.CustomTexts ID as string ("native_wanted_custom_text_01")
    dat.upperTextStyle : Integer 1-6
    lowerRawText0: string any
    lowerRawText1: string any
    lowerRawText2: string any
    lowerRawText3: string any
    switchLowerTextToIndex: Integer lowerRawText value 1-4
    --these booleans must be turned false before using new one:
    showKnownPulse: boolean true/false
    showUnknownPulse: boolean true/false
    showShortWantedCooldown: boolean true/false
    showLongWantedCooldown: boolean true/false
    showWarningAnimation: boolean true/false
]]

--[[
    upperLocText:

        LAW_UI_WANTED_M
        CRIME_ACCOMPLICE
        CRIME_ASSAULT
        CRIME_ASSAULT_ANIMAL
        CRIME_ASSAULT_CORPSE
        CRIME_ASSAULT_HORSE
        CRIME_ASSAULT_LAW
        CRIME_ASSAULT_LIVESTOCK
        CRIME_BANK_ROBBERY
        CRIME_BURGLARY
        CRIME_CHEATING
        CRIME_DISTURBANCE
        CRIME_EXPLOSION
        CRIME_GRAVE_ROBBERY
        CRIME_HASSLE
        CRIME_HIT_AND_RUN
        CRIME_HIT_AND_RUN_LAW
        CRIME_INTIMIDATION
        CRIME_JAIL_BREAK
        CRIME_JACK_HORSE
        CRIME_JACK_VEHICLE
        CRIME_KIDNAPPING
        CRIME_KIDNAPPING_LAW
        CRIME_LASSO_ASSAULT
        CRIME_LAW_IS_THREATENED
        CRIME_LOITERING
        CRIME_LOOTING
        CRIME_MURDER
        CRIME_MURDER_ANIMAL
        CRIME_MURDER_LAW
        CRIME_MURDER_HORSE
        CRIME_MURDER_LIVESTOCK
        CRIME_PROPERTY_DESTRUCTION
        CRIME_RESIST_ARREST
        CRIME_ROBBERY
        CRIME_UNARMED_ASSAULT
        CRIME_STAGECOACH_ROBBERY
        CRIME_STOLEN_GOODS
        CRIME_THEFT
        CRIME_THEFT_HORSE
        CRIME_THEFT_LIVESTOCK
        CRIME_THEFT_VEHICLE
        CRIME_THREATEN
        CRIME_THREATEN_LAW
        CRIME_TRAMPLE
        CRIME_TRAMPLE_LAW
        CRIME_TRAIN_ROBBERY
        CRIME_TRESPASSING
        CRIME_VANDALISM
        CRIME_VANDALISM_VEHICLE
        CRIME_VEHICLE_DESTRUCTION
]]

