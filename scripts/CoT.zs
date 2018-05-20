#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Part;
import mods.contenttweaker.Item;

//Basic Metals
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(13924870).build();
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(12313081).build();
var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(12243158).build();
var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(3753571).build();
var cobalt = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(4816366).build();
var aluminium = MaterialSystem.getMaterialBuilder().setName("Aluminium").setColor(15395564).build();
var nickel = MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(15990732).build();
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(13553358).build();
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16766720).build();
var tungsten = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(3355443).build();
var mithril = MaterialSystem.getMaterialBuilder().setName("Mithril").setColor(3385545).build();
var osmium = MaterialSystem.getMaterialBuilder().setName("Osmium").setColor(8369347).build();
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(15197907).build();
var platinum = MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(7461110).build();
var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(11555714).build();
var iridium = MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(16514043).build();

//Basic Parts
var basic_metals1 = [copper, tin, iron] as Material[];
var basic_metals2 = [silver, lead, aluminium, nickel, zinc, gold, osmium, tungsten] as Material[];
var basic_metals3 = [platinum, mithril] as Material[];
var basic_metals4 = [iridium, titanium, cobalt] as Material[];
var basic_metals_parts = ["ingot", "dust", "gear", "nugget", "plate", "rod", "bolt", "casing"] as string[];

//Register
for i, b_metal1 in basic_metals1 {
    b_metal1.registerParts(basic_metals_parts);

    var b_block1Data = b_metal1.registerPart("block").getData();
    b_block1Data.addDataValue("hardness", "5");
    b_block1Data.addDataValue("resistance", "30");
    b_block1Data.addDataValue("harvestTool", "pickaxe");
    b_block1Data.addDataValue("harvestLevel", "1");
}
for i, b_metal2 in basic_metals2 {
    b_metal2.registerParts(basic_metals_parts);
	
    var b_block2Data = b_metal2.registerPart("block").getData();
    b_block2Data.addDataValue("hardness", "10");
    b_block2Data.addDataValue("resistance", "30");
    b_block2Data.addDataValue("harvestTool", "pickaxe");
    b_block2Data.addDataValue("harvestLevel", "2");
}
for i, b_metal3 in basic_metals3 {
    b_metal3.registerParts(basic_metals_parts);

    var b_block3Data = b_metal3.registerPart("block").getData();
    b_block3Data.addDataValue("hardness", "15");
    b_block3Data.addDataValue("resistance", "30");
    b_block3Data.addDataValue("harvestTool", "pickaxe");
    b_block3Data.addDataValue("harvestLevel", "3");
}
for i, b_metal4 in basic_metals4 {
    b_metal4.registerParts(basic_metals_parts);

    var b_block4Data = b_metal4.registerPart("block").getData();
    b_block4Data.addDataValue("hardness", "20");
    b_block4Data.addDataValue("resistance", "30");
    b_block4Data.addDataValue("harvestTool", "pickaxe");
    b_block4Data.addDataValue("harvestLevel", "4");
}

//BasicAlloys
var bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13542982).build();
var steel = MaterialSystem.getMaterialBuilder().setName("Steel").setColor(7303023).build();
var invar = MaterialSystem.getMaterialBuilder().setName("Invar").setColor(12304063).build();
var electrum = MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(15529070).build();
var constantan = MaterialSystem.getMaterialBuilder().setName("Constantan").setColor(16029808).build();
var signalum = MaterialSystem.getMaterialBuilder().setName("Signalum").setColor(14636313).build();
var lumium = MaterialSystem.getMaterialBuilder().setName("Lumium").setColor(15725723).build();
var enderium = MaterialSystem.getMaterialBuilder().setName("Enderium").setColor(1403731).build();
var refinedGlowstone = MaterialSystem.getMaterialBuilder().setName("Refined Glowstone").setColor(14404400).build();
var refinedObsidian = MaterialSystem.getMaterialBuilder().setName("Refined Obsidian").setColor(5910723).build();

//Basic Alloys Parts
var basic_alloys2 = [bronze, constantan, invar, electrum] as Material[];
var basic_alloys3 = [steel, lumium, signalum, refinedGlowstone] as Material[];
var basic_alloys4 = [enderium, refinedObsidian] as Material[];
var basic_alloys_parts = ["ingot", "dust", "gear", "nugget", "plate", "rod", "bolt", "casing"] as string[];

for i, b_alloy2 in basic_alloys2 {
    b_alloy2.registerParts(basic_alloys_parts);

    var b_blockAlloy2Data = b_alloy2.registerPart("block").getData();
    b_blockAlloy2Data.addDataValue("hardness", "10");
    b_blockAlloy2Data.addDataValue("resistance", "30");
    b_blockAlloy2Data.addDataValue("harvestTool", "pickaxe");
    b_blockAlloy2Data.addDataValue("harvestLevel", "2");
}
for i, b_alloy3 in basic_alloys3 {
    b_alloy3.registerParts(basic_alloys_parts);

    var b_blockAlloy3Data = b_alloy3.registerPart("block").getData();
    b_blockAlloy3Data.addDataValue("hardness", "15");
    b_blockAlloy3Data.addDataValue("resistance", "30");
    b_blockAlloy3Data.addDataValue("harvestTool", "pickaxe");
    b_blockAlloy3Data.addDataValue("harvestLevel", "3");
}
for i, b_alloy4 in basic_alloys4 {
    b_alloy4.registerParts(basic_alloys_parts);
	
    var b_blockAlloy4Data = b_alloy4.registerPart("block").getData();
    b_blockAlloy4Data.addDataValue("hardness", "20");
    b_blockAlloy4Data.addDataValue("resistance", "30");
    b_blockAlloy4Data.addDataValue("harvestTool", "pickaxe");
    b_blockAlloy4Data.addDataValue("harvestLevel", "4");
}

var miningWorldPortal = VanillaFactory.createBlock("mining_world_portal", <blockmaterial:portal>);
miningWorldPortal.setBlockHardness(5.0);
miningWorldPortal.setBlockResistance(5.0);
miningWorldPortal.setToolClass("pickaxe");
miningWorldPortal.setToolLevel(2);
miningWorldPortal.register();

//Custom Parts
var crude_plate = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("crude_plate").setPartType(MaterialSystem.getPartType("item")).setOreDictName("lowQualityPlate").build();
var crude_gear = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("crude_gear").setPartType(MaterialSystem.getPartType("item")).setOreDictName("lowQualityGear").build();
var crude_rod = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("crude_rod").setPartType(MaterialSystem.getPartType("item")).setOreDictName("lowQualityRod").build();
var crude = ["crude_plate", "crude_gear", "crude_rod"] as string[];
var crude_metals = [iron, copper, steel] as Material[];

for c_metal in crude_metals {
    c_metal.registerParts(crude);
}

VanillaFactory.createItem("mixed_metal_compound").register();
VanillaFactory.createItem("blue_paper").register();