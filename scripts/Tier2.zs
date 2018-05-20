//Imports
import mods.artisanworktables.builder.RecipeBuilder;
//Mixed Metal Compound
recipes.addShaped(<contenttweaker:mixed_metal_compound> * 2, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateSteel>, <ore:plateSteel> , <ore:plateSteel>], [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);
//Compressed Iron
mods.immersiveengineering.MetalPress.addRecipe(<pneumaticcraft:ingot_iron_compressed>, <contenttweaker:mixed_metal_compound>, <materialpart:steel:plate>, 2400);
//Air Compressor
recipes.remove(<pneumaticcraft:air_compressor>);
recipes.addShaped(<pneumaticcraft:air_compressor>, [[<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>], [<ore:ingotIronCompressed>, null, <pneumaticcraft:pressure_tube>], [<ore:ingotIronCompressed>, <ic2:te:46>, <ore:ingotIronCompressed>]]);
//Blue Paper
recipes.addShapeless(<contenttweaker:blue_paper>, [<minecraft:paper>, <ore:dyeBlue>]);
//Designer Worktable
recipes.addShaped(<artisanworktables:worktable:12>, [[<ore:dyeWhite>, <contenttweaker:blue_paper>, <ore:dyeWhite>], [<minecraft:concrete:3>, <minecraft:cocnrete:3>, <minecraft:concrete:3>], [null, <artisanworktables:worktable5>]]);
//Hydraulic Press
recipes.removeShaped(<magneticraft:hydraulic_press>);
RecipeBuilder.get("designer")
    .setShapeless([<contenttweaker:blue_paper>, <ore:plateSteel>])
    .addTool(<ore:artisansCompass>, 50)
    .addOutput(<magneticraft:hydraulic_press>)
    .create();
//Mages Worktable
recipes.addShaped(<artisanworktables:worktable:7>, [[<minecraft:concrete:11>, <ore:heavyPlateSteel>, <minecraft:concrete:11>], [<minecraft:concrete:11>, <minecraft:concrete:11>, <minecraft:concrete:11>], [null, <artisanworktables:worktable:5>]]);
//Dark Ingot 
RecipeBuilder.get("mage")
    .setShaped([[<ore:coal>, <ore:dustBedrock>, <ore:coal>], [<ore:dustBedrock>, <ore:ingotZinc>, <ore:dustBedrock>], [<ore:coal>, <ore:dustBedrock>, <ore:coal>]])
    .addTool(<ore:artisansGrimoire>, 10)
    .addOutput(<redstonefluxarsenal:itemrfdarkingot> * 2)
    .create();
//Pressure Chamber Glass
recipes.removeShaped(<pneumaticcraft:pressure_chamber_glass>);
recipes.addShaped(<pneumaticcraft:pressure_chamber_glass> * 8, [[<redstonefluxarsenal:itemrfdarkingot>, <ore:ingotIronCompressed>, <redstonefluxarsenal:itemrfdarkingot>], [<ore:ingotIronCompressed>, <ore:blockGlass>, <ore:ingotIronCompressed>], [<redstonefluxarsenal:itemrfdarkingot>, <ore:ingotIronCompressed>, <redstonefluxarsenal:itemrfdarkingot>]]);
//Pressure Chamber Wall
recipes.removeShaped(<pneumaticcraft:pressure_chamber_wall>);
recipes.addShaped(<pneumaticcraft:pressure_chamber_wall> * 8, [[<redstonefluxarsenal:itemrfdarkingot>, <ore:ingotIronCompressed>, <redstonefluxarsenal:itemrfdarkingot>], [<ore:ingotIronCompressed>, null, <ore:ingotIronCompressed>], [<redstonefluxarsenal:itemrfdarkingot>, <ore:ingotIronCompressed>, <redstonefluxarsenal:itemrfdarkingot>]]);
//Pressure Chamber Valve
recipes.removeShaped(<pneumaticcraft:pressure_chamber_valve>);
recipes.addShaped(<pneumaticcraft:pressure_chamber_valve> * 8, [[<redstonefluxarsenal:itemrfdarkingot>, <ore:ingotIronCompressed>, <redstonefluxarsenal:itemrfdarkingot>], [<ore:ingotIronCompressed>, <pneumaticcraft:pressure_tube>, <ore:ingotIronCompressed>], [<redstonefluxarsenal:itemrfdarkingot>, <ore:ingotIronCompressed>, <redstonefluxarsenal:itemrfdarkingot>]]);