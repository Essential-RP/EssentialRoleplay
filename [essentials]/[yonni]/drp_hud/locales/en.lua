local Translations = {
    notify = {
        ["hud_settings_loaded"] = "HUD Settings Loaded!",
        ["hud_restart"] = "HUD Is Restarting!",
        ["hud_start"] = "HUD Is Now Started!",
        ["hud_command_info"] = "This command resets your current HUD settings!",
        ["load_square_map"] = "Square Map Loading...",
        ["loaded_square_map"] = "Square Map Has Loaded!",
        ["load_circle_map"] = "Circle Map Loading...",
        ["loaded_circle_map"] = "Circle Map Has Loaded!",
        ["cinematic_on"] = "Cinematic Mode On!",
        ["cinematic_off"] = "Cinematic Mode Off!",
        ["engine_on"] = "Engine Started!",
        ["engine_off"] = "Engine Shut Down!",
        ["low_fuel"] = "Fuel Level Low!",
        ["access_denied"] = "You Are Not Authorized!",
        ["stress_gain"] = "Feeling More Stressed!",
        ["stress_removed"] = "Feeling More Relaxed!",
        ["move_sucess"] = 'HUD location saved!',
        ["move_info"] = 'Drag around the HUD to move it, hit ESC to save and confirm. Use /resethud to move the HUD back to default position',
        ["belt_error"] = 'Too high speed to toggle seatbelt',
        ["belt_enabled"] = 'Seatbelt Enabled',
        ["belt_disabled"] = 'Seatbelt Disabled'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
