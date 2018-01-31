state("okami") {
  // In Game Time
  // IGT is measured by frames in game. Time will start if you started a new
  // game from the title menu, or by loading a NG+ file. 
  int time : "main.dll", 0xB217FC;
  
  // Multi-use flags
  // Area ID list: https://docs.google.com/spreadsheets/d/1IoZ1XFeblOTb6Qq9PHfBq1KRdcpgYRz8pTObhF3qMrs/edit?usp=sharing
  // `results_money` will be used to signify boss fights have ended in 
  // specific areas. The issue with this value is that it only triggers when
  // there is a bonus value on the results screen. For most runners, there
  // will usually be a value there. Will probably find a better method later.
  int area_id : "main.dll", 0xB6B2C8;
  int results_money : "main.dll", 0xB1DBA0;
  
  // Key Items
  int canine_tracker : "main.dll", 0xB206B4;
  int duty_orb : "main.dll", 0xB206D0;
  int justice_orb : "main.dll", 0xB206CE;
  int loyalty_orb : "main.dll", 0xB206CC;
  int mask : "main.dll", 0xB206C2;
  int ogre : "main.dll", 0xB206C4;
  int lips : "main.dll", 0xB206C6;
  int eyeball : "main.dll", 0xB206C8;
  int horn : "main.dll", 0xB206CA;
  
  // Endgame
  // Timing ends on the "Final Results" screen for IGT.
  // Other possible final result values: https://my.mixtape.moe/aeoxal.png
  int final_results : "main.dll", 0xB5262C;
}

startup {
  // Kamiki Village
  settings.Add("kamiki", true, "Kamiki Village");
  settings.Add("river_nagi", false, "Enter Cave of Nagi", "kamiki");
  settings.Add("nagi_river", false, "Exit Cave of Nagi", "kamiki");
  settings.Add("restore_kamiki", false, "Restore Kamiki Village", "kamiki");
  settings.Add("kamiki_shinshu", true, "Enter Shinshu Field", "kamiki");
  
  // Hana Valley
  settings.Add("hana", true, "Hana Valley");
  settings.Add("shinshu_hana", false, "Enter Hana Valley", "hana");
  settings.Add("hana_shinshu", true, "Exit Hana Valley", "hana");
  
  // Tsuta Ruins
  settings.Add("ruins", true, "Tsuta Ruins");
  settings.Add("shinshu_agata", true, "Enter Agata Forest", "ruins");
  settings.Add("agata_fishing", true, "Agata Fishing Minigames", "ruins");
  settings.Add("agata_ruins", true, "Enter Tsuta Ruins", "ruins");
  settings.Add("ruins_spider", false, "Enter Spider Queen", "ruins");
  settings.Add("spider_queen", true, "Defeat Spider Queen", "ruins");
  // TODO: area id for log minigame?
  
  // Kusa Village
  settings.Add("kusa", true, "Kusa Village");
  settings.Add("agata_taka", true, "Enter Taka Pass", "kusa");
  settings.Add("taka_kusa", false, "Enter Kusa Village", "kusa");
  settings.Add("canine_tracker", true, "Get Canine Tracker", "kusa");
  settings.Add("kusa_taka", true, "Exit Kusa Village", "kusa");
  
  // Sasa Sanctuary
  settings.Add("sasa", true, "Sasa Sanctuary");
  settings.Add("taka_sasa", true, "Enter Sasa Sanctuary", "sasa");
  settings.Add("sasa_digging", true, "Mr. Bamboo / Kaguya Digging Minigame", "sasa");
  settings.Add("duty_orb", true, "Get Duty Orb", "sasa");
  
  // Canine Tracking
  settings.Add("canines", true, "Canine Tracking");
  settings.Add("justice_orb", true, "Get Justice Orb", "canines");
  settings.Add("loyalty_orb", true, "Get Loyalty Orb", "canines");
  
  // Gale Shrine
  settings.Add("gale", true, "Gale Shrine");
  settings.Add("kusa_gale", true, "Enter Gale Shrine", "gale");
  settings.Add("gale_crimson", false, "Enter Crimson Helm", "gale");
  settings.Add("crimson_helm", true, "Defeat Crimson Helm", "gale");
  
  // Moon Cave
  settings.Add("moon_cave", true, "Moon Cave");
  settings.Add("enter_moon_cave", true, "Enter Moon Cave", "moon_cave");
  settings.Add("mask", false, "Get Mask", "moon_cave");
  settings.Add("calcified_moon", false, "Exit Calcified Cavern", "moon_cave");
  settings.Add("ogre", true, "Get Ogre Liver", "moon_cave");
  settings.Add("lips", true, "Get Lips of Ice", "moon_cave");
  settings.Add("eyeball", true, "Get Eyeball of Fire", "moon_cave");
  settings.Add("horn", true, "Get Black Demon Horn", "moon_cave");
  settings.Add("interior_orochi", false, "Enter Orochi", "moon_cave");
  settings.Add("orochi", true, "Defeat Orochi", "moon_cave");
  
  // Ghost Ship
  settings.Add("ghost", true, "Ryoshima Coast");
  settings.Add("checkpoint_coast", true, "Exit City Checkpoint", "ghost");
  // TODO: split for learning double jump?
  settings.Add("coast_city", false, "Enter Sei-an City", "ghost");
  settings.Add("dojo_exit", false, "Exit Dojo", "ghost");
  settings.Add("city_digging", true, "Sei-an City Digging Minigame", "ghost");
  settings.Add("city_fishing", true, "Sei-an City Fishing Minigame", "ghost");
  settings.Add("coast_ship", true, "Enter Ghost Ship", "ghost");
  settings.Add("ship_coast", true, "Exit Ghost Ship", "ghost");
  
  // Imperial Palace
  settings.Add("palace", true, "Imperial Palace");
  settings.Add("palace_garden", true, "Enter Imperial Palace", "palace");
  settings.Add("garden_blight", false, "Enter Blight", "palace");
  settings.Add("blight", true, "Defeat Blight", "palace");
  
  // Water Dragon
  settings.Add("dragon", true, "Water Dragon");
  settings.Add("ncoast_catcall", true, "Enter Catcall Tower", "dragon");
  settings.Add("exit_catcall", true, "Exit Catcall Tower", "dragon");
  settings.Add("ncoast_dpalace", true, "Enter Dragon Palace", "dragon");
  settings.Add("dpalace_dragon", false, "Enter Water Dragon", "dragon");
  settings.Add("dragon_dpalace", true, "Exit Water Dragon", "dragon");
  
  // Oni Island
  settings.Add("oni", true, "Oni Island");
  settings.Add("rao", true, "Defeat Evil Rao", "oni");
  settings.Add("ncoast_oni", true, "Enter Oni Island", "oni");
  settings.Add("oni_ex_oni_int", true, "Enter Oni Island Interior", "oni");
  settings.Add("oni_interior1", false, "Oni Island Lower Floors", "oni");
  settings.Add("oni_interior2", false, "Oni Island 2D Segment", "oni");
  settings.Add("oni_ninetails", false, "Enter Ninetails", "oni");
  settings.Add("ninetails", true, "Defeat Ninetails", "oni");
  
  // Wawku Shrine
  settings.Add("wawku", true, "Wawku Shrine");
  settings.Add("shinshu_kamui", true, "Enter Kamui", "wawku");
  settings.Add("kamui_wepkeer", true, "Enter Wep'keer", "wawku");
  settings.Add("wepkeer_ezofuji", true, "Enter Ezofuji", "wawku");
  settings.Add("ezofuji_wawku", true, "Enter Wawku Shrine", "wawku");
  settings.Add("wawku_nechku", false, "Enter Nechku", "wawku");
  settings.Add("nechku", true, "Defeat Nechku", "wawku");
  settings.Add("wawku_lechku_nechku", false, "Enter Lechku and Nechku", "wawku");
  settings.Add("lechku_nechku", true, "Defeat Lechku and Nechku", "wawku");
  
  // Ark of Yamato
  settings.Add("yamato", true, "Ark of Yamato");
  settings.Add("ezofuji_yamato", true, "Enter Ark of Yamato", "yamato");
  settings.Add("ninetails2", false, "Defeat Ninetails 2", "yamato");
  settings.Add("crimson_helm2", false, "Defeat Crimson Helm 2", "yamato");
  settings.Add("spider_queen2", false, "Defeat Spider Queen 2", "yamato");
  settings.Add("orochi3", false, "Defeat True Orochi 2", "yamato");
  settings.Add("blight2", false, "Defeat Blight 2", "yamato");
  
  // Endgame
  settings.Add("endgame", true, "End Game");
  settings.Add("yamato_yami", true, "Enter Yami", "endgame");
  settings.Add("yami", false, "Defeat Yami", "endgame");
  settings.Add("final", true, "Final Results", "endgame");
}

init {
  // Variables to prevent double-splitting through multiple areas.
  vars.kamiki_shinshu = false;
  vars.taka_kusa = false;
  vars.kusa_taka = false;
  vars.coast_city = false;
}

update {
}

start {
  // IGT is measured by frames, 60fps. This starts counting when the game
  // starts for the first time, and resets when a new game is loaded.
  // The previous frame count is loaded when a file is loaded as well.
  if ((current.area_id != 65535 || current.area_id != 0) && current.time < old.time) {
    vars.kamiki_shinshu = false;
    vars.taka_kusa = false;
    vars.kusa_taka = false;
    vars.coast_city = false;
    
    return true;
  } else {
    return false;
  };
}

reset {
  // Resets if you quit to title or start a new game.
  return current.area_id == 65535 || current.area_id == 0;
}

isLoading {
  // Ensures the timer doesn't start while on the title screen.
  return current.area_id == 65535 || current.area_id == 0;
}

split {
  if ((settings["river_nagi"] && current.area_id == 2 && old.area_id == 30) ||
  (settings["nagi_river"] && current.area_id == 30 && old.area_id == 2) ||
  (settings["restore_kamiki"] && current.area_id == 3 && old.area_id == 1) ||
  (settings["shinshu_hana"] && current.area_id == 4 && old.area_id == 71) ||
  (settings["hana_shinshu"] && current.area_id == 71 && old.area_id == 4) ||
  (settings["shinshu_agata"] && current.area_id == 72 && old.area_id == 71) ||
  (settings["agata_fishing"] && current.area_id == 72 && old.area_id == 67) ||
  (settings["agata_ruins"] && current.area_id == 5 && old.area_id == 72) ||
  (settings["ruins_spider"] && current.area_id == 7 && old.area_id == 5) ||
  (settings["spider_queen"] && current.area_id == 7 && current.results_money > old.results_money) ||
  (settings["agata_taka"] && current.area_id == 74 && old.area_id == 72) ||
  (settings["canine_tracker"] && current.canine_tracker > old.canine_tracker) ||
  (settings["taka_sasa"] && current.area_id == 10 && old.area_id == 74) ||
  (settings["sasa_digging"] && current.area_id == 10 && old.area_id == 12) ||
  (settings["duty_orb"] && current.duty_orb > old.duty_orb) ||
  (settings["justice_orb"] && current.justice_orb > old.justice_orb) ||
  (settings["loyalty_orb"] && current.loyalty_orb > old.loyalty_orb) ||
  (settings["kusa_gale"] && current.area_id == 8 && old.area_id == 9) ||
  (settings["gale_crimson"] && current.area_id == 14 && old.area_id == 8) ||
  (settings["crimson_helm"] && current.area_id == 14 && current.results_money > old.results_money) ||
  (settings["enter_moon_cave"] && current.area_id == 17 && old.area_id == 73) ||
  (settings["mask"] && current.mask > old.mask) ||
  (settings["calcified_moon"] && current.area_id == 16 && old.area_id == 15) ||
  (settings["ogre"] && current.ogre > old.ogre) ||
  (settings["lips"] && current.lips > old.lips) ||
  (settings["eyeball"] && current.eyeball > old.eyeball) ||
  (settings["horn"] && current.horn > old.horn) ||
  (settings["interior_orochi"] && current.area_id == 17 && old.area_id == 16) ||
  (settings["orochi"] && current.area_id == 17 && current.results_money > old.results_money) ||
  (settings["checkpoint_coast"] && current.area_id == 75 && old.area_id == 6) ||
  (settings["dojo_exit"] && current.area_id == 75 && old.area_id == 13) ||
  (settings["city_digging"] && current.area_id == 32 && old.area_id == 12) ||
  (settings["city_fishing"] && current.area_id == 31 && old.area_id == 65) ||
  (settings["coast_ship"] && current.area_id == 36 && old.area_id == 75) ||
  (settings["ship_coast"] && current.area_id == 75 && old.area_id == 36) ||
  (settings["palace_garden"] && current.area_id == 38 && old.area_id == 37) ||
  (settings["garden_blight"] && current.area_id == 42 && old.area_id == 38) ||
  (settings["blight"] && current.area_id == 37 && current.results_money > old.results_money) ||
  (settings["ncoast_catcall"] && current.area_id == 41 && old.area_id == 77) ||
  (settings["exit_catcall"] && current.area_id != 41 && old.area_id == 41) ||
  (settings["ncoast_dpalace"] && current.area_id == 34 && old.area_id == 77) ||
  (settings["dpalace_dragon"] && current.area_id == 35 && old.area_id == 34) ||
  (settings["dragon_dpalace"] && current.area_id == 34 && old.area_id == 35) ||
  (settings["rao"] && current.area_id == 33 && current.results_money > old.results_money) ||
  (settings["ncoast_oni"] && current.area_id == 44 && old.area_id == 77) ||
  (settings["oni_ex_oni_int"] && current.area_id == 39 && old.area_id == 44) ||
  (settings["oni_interior1"] && current.area_id == 46 && old.area_id == 39) ||
  (settings["oni_interior2"] && current.area_id == 45 && old.area_id == 46) ||
  (settings["oni_ninetails"] && current.area_id == 40 && old.area_id == 45) ||
  (settings["ninetails"] && current.area_id == 40 && current.results_money > old.results_money) ||
  (settings["shinshu_kamui"] && current.area_id == 78 && old.area_id == 71) ||
  (settings["kamui_wepkeer"] && current.area_id == 47 && old.area_id == 78) ||
  (settings["wepkeer_ezofuji"] && current.area_id == 79 && old.area_id == 47) ||
  (settings["ezofuji_wawku"] && current.area_id == 49 && old.area_id == 79) ||
  (settings["wawku_nechku"] && current.area_id == 50 && old.area_id == 49) ||
  (settings["nechku"] && current.area_id == 50 && current.results_money > old.results_money) ||
  (settings["wawku_lechku_nechku"] && current.area_id == 64 && old.area_id == 49) ||
  (settings["lechku_nechku"] && current.area_id == 64 && current.results_money > old.results_money) ||
  (settings["ezofuji_yamato"] && current.area_id == 53 && old.area_id == 79) ||
  (settings["ninetails2"] && current.area_id == 57 && current.results_money > old.results_money) ||
  (settings["crimson_helm2"] && current.area_id == 58 && current.results_money > old.results_money) ||
  (settings["spider_queen2"] && current.area_id == 54 && current.results_money > old.results_money) ||
  (settings["orochi3"] && current.area_id == 55 && current.results_money > old.results_money) ||
  (settings["blight2"] && current.area_id == 56 && current.results_money > old.results_money) ||
  (settings["yamato_yami"] && current.area_id == 62 && old.area_id == 53) ||
  (settings["yami"] && current.area_id == 62 && current.results_money > old.results_money) ||
  (settings["final"] && current.final_results > old.final_results && current.final_results == 65536 && current.area_id == 62)) {
    return true;
  } else if (settings["kamiki_shinshu"] && current.area_id == 71 && old.area_id == 3 && vars.kamiki_shinshu == false) {
    vars.kamiki_shinshu = true;    
    return true;
  } else if (settings["taka_kusa"] && current.area_id == 9 && old.area_id == 74 && vars.taka_kusa == false) {
    vars.taka_kusa = true;    
    return true;
  } else if (settings["kusa_taka"] && current.area_id == 74 && old.area_id == 9 && vars.kusa_taka == false) {
    vars.kusa_taka = true;    
    return true;
  } else if (settings["coast_city"] && current.area_id == 32 && old.area_id == 75 && vars.coast_city == false) {
    vars.coast_city = true;    
    return true;
  } else {
    return false;
  };
}

gameTime {
  // Returns the IGT in a readable format for LiveSplit. Again, IGT is measured
  // in frames, so to get an accurate time it's divided by 60 to get the
  // current amount of seconds.
  return TimeSpan.FromSeconds(current.time / 60);
}