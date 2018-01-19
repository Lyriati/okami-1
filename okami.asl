state("okami") {
  // In Game Time
  // IGT is measured by frames in game. Time will start if you started a new
  // game from the title menu, or by loading a NG+ file. 
  // There is, for whatever reason, a small delay to starting RTA when loading
  // from a NG+ file. This probably varies depending on your PC, and you may
  // need to adjust your start time accordingly.
  int time : "main.dll", 0xB217FC;
  int in_game : "main.dll", 0xB33D1C;
  
  // Ark of Yamato
  int blight2 : "main.dll", 0xB3552C;
  int spiderqueen2 : "main.dll", 0xB35364;
  int orochi3 : "main.dll", 0xB35448;
  int ninetails2 : "main.dll", 0xB35610;
  int crimsonhelm2 : "main.dll", 0xB356F4;
  
  // Endgame
  // Timing ends on the "Final Results" screen for IGT.
  // Other possible final result values: https://my.mixtape.moe/aeoxal.png
  int final_results : "main.dll", 0xB5262C;
}

startup {
  // Ark of Yamato
  settings.Add("yamato", true, "Ark of Yamato");
  
  settings.CurrentDefaultParent = "yamato";
  
  // Will split after defeating the boss given
  settings.Add("blight2", true, "Blight 2");
  settings.Add("spiderqueen2", true, "Spider Queen 2");
  settings.Add("orochi3", true, "True Orochi 2");
  settings.Add("ninetails2", true, "Ninetails 2");
  settings.Add("crimsonhelm2", true, "Crimson Helm 2");
  
  // Endgame
  settings.Add("endgame", true, "End Game");
  
  settings.CurrentDefaultParent = "endgame";
  
  settings.Add("final", true, "Final Results");
}

update {
}

start {
  // IGT is measured by frames, 60fps. This starts counting when the game
  // starts for the first time, and resets when a new game is loaded.
  // The previous frame count is loaded when a file is loaded as well.
  return current.in_game == 1;
}

reset {
  // Resets if you quit to title or start a new game.
  return current.in_game == 0;
}

isLoading {
  return current.in_game == 0;
}

split {
  return (settings["blight2"] && current.blight2 > old.blight2) ||
  (settings["spiderqueen2"] && current.spiderqueen2 > old.spiderqueen2) ||
  (settings["orochi3"] && current.orochi3 > old.orochi3) ||
  (settings["ninetails2"] && current.ninetails2 > old.ninetails2) ||
  (settings["crimsonhelm2"] && current.crimsonhelm2 > old.crimsonhelm2) ||
  (settings["final"] && current.final_results > old.final_results);
}

gameTime {
  // Returns the IGT in a readable format for LiveSplit. Again, IGT is measured
  // in frames, so to get an accurate time it's divided by 60 to get the
  // current amount of seconds.
  return TimeSpan.FromSeconds(current.time / 60);
}
