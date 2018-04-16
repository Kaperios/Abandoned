//Mixed Metal Compound
recipes.addShaped(<contenttweaker:mixed_metal_compound> * 2, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateSteel>, <ore:plateSteel> , <ore:plateSteel>], [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);
//Compressed Iron
mods.immersiveengineering.MetalPress.addRecipe(<pneumaticcraft:ingot_iron_compressed>, <contenttweaker:mixed_metal_compound>, <materialpart:steel:plate>, 2400);
//Air Compressor
recipes.remove(<pneumaticcraft:air_compressor>);
recipes.addShaped(<pneumaticcraft:air_compressor>, [[<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>], [<ore:ingotIronCompressed>, null, <pneumaticcraft:pressure_tube>], [<ore:ingotIronCompressed>, <ic2:te:46>, <ore:ingotIronCompressed>]]);
