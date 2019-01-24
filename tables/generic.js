//Focused on NG, restricting Cutscene skipping
var bingoList = [];
bingoList[0] = [
  { name: "Shinshu Turnip Digging", types: ["sidequest"] },
 ];
bingoList[1] = [
  { name: "Rejuveinate Mrs. Orange\'s Laundry Poles", types: ["sidequest"] },
  { name: "Tsuta Ruins Key", types: ["dungeon"] },
  { name: "Bloom Taka Pass", types: ["bloom"] },
  { name: "Obtain Sunrise", types: ["free","brush"] },
  { name: "Complete the Shinshu Field Monster List", types: ["monsterlist"] },
  { name: "Obtain Cherrybomb", types: ["brush","cherrybomb"] },
  { name:  "Bark 50 times", types: ["bork","free"] },
];
bingoList[2] = [
  { name: "Defeat Ida 3 times and obtain the Gimmick Gear", types: ["secret"] },
  { name: "Rescue Chun", types: ["story"] },
  { name: "Complete Komuso's Challenge in Kamiki", types: ["sidequest","fight"] },
  { name: "Catch the WHOPPER", types: ["fishing"] },
  { name: "Defeat Spider Queen", types: ["dungeon","boss","story"] },
  { name: "Complete Turnip-digging minigame in Kamiki", types: ["minigame","sidequest"] },
  { name: "Bloom the clover on the island in Kamiki Village", types: ["clover"] },
];
bingoList[5] = [
  { name: "Feed all animals in Agata Forest", types: ["feeding"] },
  { name: "Bloom the clover near Madam Fawn's hut", types: ["clover"] },
  { name: "Obtain Galestorm", types: ["brush","story"] },
  { name: "Defeat Orochi", types: ["story"] },
  { name: "Obtain the Mother Tree travel guide", types: ["travelguide"] },
  { name: "Learn Holy Eagle", types: ["dojo"] },
];
bingoList[6] = [
 { name: "Learn Digging Champ", types: ["dojo","digging"] },
 { name: "Enter Sei\'an City", types: ["story"] },
 { name: "Obtain the Stray Bead behind Mr. Flower\'s house", types: ["straybead"] },
 { name: "Obtain Veil of Mist", types: ["brush"] },
 { name: "Buy Infinity Judge", types: ["weapon"] },
 { name: "Bloom the clover behind the City Checkpoint Waterfall", types: ["clover"] },
 { name: "Obtain Inferno", types: ["brush"] }
];
bingoList[3] = [
 { name: "Feed all the animals in Hana Valley", types: ["feeding"] },
 { name: "Have Camille reward you with praise", types: ["praise"] },
 { name: "Have Sleepy reward you with praise", types: ["praise"] },
 { name: "Bring the teacup to the Tea Master in Taka Pass", types: ["teacup"] }
];
bingoList[4] = [
 { name: "Find 5 Incense Burners", types: ["treasure"] },
 { name: "Offer the vase to the Orochi Guardian Statue", types: ["guardianstatue"] },
 { name: "Defeat 3 Blue Demon Scrolls", types: ["fight"] },
 { name: "Obtain the Stray Bread from Kamiki Village Waterfall", types: ["straybead"] },
 { name: "Obtain 10 Stray Beads", types: ["straybead"] }
];
bingoList[8] = [
 { name: "Sunken Ship Stray Bead", types: ["straybead"] },
 { name: "Feed all the animals in Ryoshima Coast ", types: ["feeding"] },
 { name: "Obtain Cherrybomb 2", types: ["brush","cherrybomb"] },
 { name: "Obtain 20 Stray Beads", types: ["straybead"] }
];
bingoList[7] = [
 { name: "Obtain all Stray Beads from Tsuta Ruins", types: ["straybead"] },
 { name: "Obtain all Stray Beads from Kamiki Village", types: ["straybead"] },
 { name: "Obtain the Stray Bead from Hayate", types: ["straybead"] },
 { name: "Obtain all Stray Beads from Sasa Sanctuary", types: ["straybead"] }
];
bingoList[9] = [
 { name: "Retreive the Sun Fragment from the Gale Shrine", types: ["item"] },
 { name: "Obtain all Stray Beads from Kusa Village", types: ["straybead"] },
 { name: "Complete the Kusa Village Monster List", types: ["monsterlist"] },
 { name: "Defeat the Bandit Spider and obtain the Sun Fragment", types: ["fight",] }
];
bingoList[10] = [
 { name: "Bloom Ryoshima Coast", types: ["story"] },
 { name: "Fish a Manta", types: ["fishing"] },
 { name: "Have the Tea Customer in Taka Pass give you praise", types: ["praise"] },
 { name: "Draw five designs for the Sei\'an City girl and obtain a Stray Bead", types: ["straybead"] }
];
bingoList[11] = [
 { name: "Help Mr. Flower preform his Gura Shuffle", types: ["sidequest"] },
 { name: "Defeat Blight", types: ["story","boss"] },
 { name: "Beat a boss", types: ["boss"] },
 { name: "Complete Masu\'s Monster Manifest", types: ["monsterlist"] }
];
bingoList[12] = [
 { name: "Bloom the clover in Sasa Sanctuary", types: ["clover"] },
 { name: "Learn Mist Warp", types: ["brush"] },
 { name: "Obtain the Northern Land travel guide", types: ["travelguide"] }
];
bingoList[13] = [
 { name: "Obtain the Mark of Kabegami travel guide", types: ["travelguide"] },
 { name: "Obtain Power Slash 2", types: ["brush"] },
 { name: "Obtain Deluge", types: ["brush"] }
];
bingoList[14] = [
 { name: "Obtain Fountain", types: ["Brush"] },
 { name: "Obtain 100 Demon Fangs", types: ["demonfangs"] },
 { name: "Fish a Marlin", types: ["fishing"] },
 { name: "Bloom all the clovers in Sei\'an City' ", types: ["clover"] },
];
bingoList[15] = [
 { name: "Increase Solar Energy to the max", types: ["solarenergy"] },
 { name: "Fish a Striped Snapper", types: ["fishing"] },
 { name: "Obtain a dungeon map", types: ["dungeon"] },
 { name: "Obtain Whirlwind", types: ["brush"] }
 ];
bingoList[16] = [
 { name: "Defeat Ninetails", types: ["story"] },
 { name: "Complete the Ryoshima Coast Devil Gate Trial Cave", types: ["deviltrial"] },
 { name: "Obtain Thunderbolt", types: ["brush"] },
 { name: "Obtain all the Stray Beads from North Ryoshima Coast", types: ["straybead"] }
];
bingoList[17] = [
 { name: "Obtain the Stray Bead from the Imperial Palace", types: ["straybead"] },
 { name: "Obtain the Lucky Mallet", types: ["item"] },
 { name: "Obtain all the Stray Beads from the Sunken Ship", types: ["straybead"] },
 { name: "Obtain all the Stray Beads from Sei\'an City\'s Aristocratic Quarters", types: ["straybead"] }
];
bingoList[18] = [
 { name: "Obtain all the Stray Beads from the Dragon Palace", types: ["straybead"] },
 { name: "Clear the North Ryoshima Coast Devil Game Trial Cave", types: ["deviltrial"] },
 { name: "Bloom all the clovers in Ryoshima Coast", types: ["clover"] }
];
bingoList[19] = [
 { name: "Bloom Kamui", types: ["story"] },
 { name: "Use a Mermaid Spring to teleport from the Dragon Palace to Shinshu Field", types: ["mermaidspring"] },
 { name: "Bloom all the clovers in Kamui", types: ["clover"] },
 { name: "Defeat the Final Bandit Spider in Kamui", types: ["fight"] }
];
bingoList[20] = [
 { name: "Complete Wali\'s Record of Penance", types: ["monsterlist"] },
 { name: "Have the boy wearing an Otter mask give you praise", types: ["praise"] },
 { name: "Obtain Power Slash 3", types: ["brush"] },
 { name: "Obtain the Sun Fragment from Kamui (Ezofuji)", types: ["item"] }
];
bingoList[21] = [
 { name: "Obtain the buried Sun Fragment from Inner Yoshpet", types: ["item"] },
 { name: "Complete the Wawku Shrine", types: ["Story"] },
 { name: "Obtain 50 Stray Beads", types: ["straybead"] },
 { name: "Obtain all the Stray Beads in Inner Yoshpet", types: ["straybead"] }
];
bingoList[22] = [
 { name: "Learn Holy Falcon", types: ["dojo"] },
 { name: "Learn Bead String", types: ["dojo"] },
 { name: "Obtain all the Stray Beads in Wep\'keer", types: ["straybead"] },
 { name: "Obtain all the Stray Beads in Ponc\'tan", types: ["straybead"] }
];
bingoList[23] = [
 { name: "Obtain the Sun Fragment from Wawku Shrine", types: ["item"] },
 { name: "Bloom all the clovers in Shinshu Field (100 years ago)", types: ["clover"] },
 { name: "Obtain all the Stray Beads in Catcall Tower", types: ["straybead"] }
];
bingoList[24] = [
 { name: "", types: ["boss"] },
 { name: "Clear the Kamui Devil Gate Trial Cave", types: ["deviltrial"] },
 { name: "Bloom all the clovers in the Wawku Shrine", types: ["clover"] },
 { name: "Fish a Yellowtail", types: ["fishing"] },
 { name: "Fish an Oarfish", types: ["fishing"] },
 { name: "Obtain all 13 Brush Techniques (No Hidden Ones)", types: ["brush"] }
];
bingoList[25] = [
  { name: "Obtain Cherrybomb 3", types: ["brush"] },
  { name: "Enter the Ark of Yamato", types: ["story"] },
  { name: "Defeat Orochi (100 years ago)", types: ["story"] },
  { name: "Obtain Blizzard", types: ["brush"] },
  { name: "Obtain all the Stray Beads in Kamui", types: ["straybead"] },
  { name: "obtain all the Stray Beads in the Gale Shrine", types: ["straybead"] },
  { name: "Defeat Yami", types: ["story"] }
];

$(function() { srl.bingo(bingoList, 5); });
