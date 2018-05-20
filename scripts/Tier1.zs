//Imports
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
//Variables
val powders = [<minecraft:concrete_powder>, <minecraft:concrete_powder:1>, <minecraft:concrete_powder:2>, <minecraft:concrete_powder:3>, <minecraft:concrete_powder:4>, <minecraft:concrete_powder:5>, <minecraft:concrete_powder:6>, <minecraft:concrete_powder:7>, <minecraft:concrete_powder:8>, <minecraft:concrete_powder:9>, <minecraft:concrete_powder:10>, <minecraft:concrete_powder:11>, <minecraft:concrete_powder:12>, <minecraft:concrete_powder:13>, <minecraft:concrete_powder:14>, <minecraft:concrete_powder:15>] as IItemStack[];
val dyes = [<ore:dyeWhite>, <ore:dyeOrange>, <ore:dyeMagenta>, <ore:dyeLightBlue>, <ore:dyeYellow>, <ore:dyeLime>, <ore:dyePink>, <ore:dyeGray>, <ore:dyeLightGray>, <ore:dyeCyan>, <ore:dyePurple>, <ore:dyeBlue>, <ore:dyeBrown>, <ore:dyeGreen>, <ore:dyeRed>, <ore:dyeBlack>] as IOreDictEntry[];
val ingots = [<ore:ingotIron>, <ore:ingotCopper>, <ore:ingotSteel>] as IOreDictEntry[];
val partPlates = [<materialpart:iron:crude_plate>, <materialpart:copper:crude_plate>, <materialpart:steel:crude_plate>] as IItemStack[];
val partGears = [<materialpart:iron:crude_gear>, <materialpart:copper:crude_gear>, <materialpart:steel:crude_gear>] as IItemStack[];
val partRods = [<materialpart:iron:crude_rod>, <materialpart:copper:crude_rod>, <materialpart:steel:crude_rod>] as IItemStack[];
val plates = [<materialpart:iron:plate>, <materialpart:copper:plate>, <materialpart:steel:plate>] as IItemStack[];
val gears = [<materialpart:iron:gear>, <materialpart:copper:gear>, <materialpart:steel:gear>] as IItemStack[];
val rods = [<materialpart:iron:rod>, <materialpart:copper:rod> ,<materialpart:steel:rod>] as IItemStack[];
val creosoteBucket = <ore:creosoteBucket>;
creosoteBucket.add(<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}));
creosoteBucket.add(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}));
creosoteBucket.add(<forestry:capsule:1>.withTag({Fluid: {FluidName: "creosote", Amount: 1000}}));
//Treated Planks
recipes.remove(<immersiveengineering:treated_wood>);
recipes.addShapeless(<immersiveengineering:treated_wood>, [<immersiveengineering:treated_wood_slab>, <immersiveengineering:treated_wood_slab>]);
recipes.addShapeless(<immersiveengineering:treated_wood>, [<immersiveengineering:treated_wood:2>]);
recipes.addShaped(<immersiveengineering:treated_wood>, [[<integrateddynamics:menril_planks>, <integrateddynamics:menril_planks>, <integrateddynamics:menril_planks>], [<integrateddynamics:menril_planks>, creosoteBucket, <integrateddynamics:menril_planks>], [<integrateddynamics:menril_planks>, <integrateddynamics:menril_planks>, <integrateddynamics:menril_planks>]]);
//Mining World Portal
recipes.addShaped(<contenttweaker:mining_world_portal>, [[<ore:sandstone>, <ore:ingotCopper>, <ore:sandstone>], [<ore:ingotIron>, <clayindirt:basic_firestarter>, <ore:ingotTin>], [<ore:sandstone>, <ore:flint>, <ore:sandstone>]]);
//Pickaxe Head Schematic
recipes.addShaped(<toolbox:schematic>.withTag({Type: "pickaxe_head"}), [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], [null, <minecraft:cactus>, null], [null, <minecraft:cactus>, null]]);
//Furnace
recipes.removeShaped(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:sandstone>, <ore:sandstone>, <ore:sandstone>]]);
//Coke Brick
recipes.remove(<immersiveengineering:stone_decoration>);
var cokeBrick = RecipeBuilder.get("mason");
cokeBrick.setShaped([[<magneticraft:burnt_limestone>, <ore:hardenedClay>, <magneticraft:burnt_limestone>], [<ore:hardenedClay>, <ore:sandstone>, <ore:hardenedClay>], [<magneticraft:burnt_limestone>, <ore:hardenedClay>, <magneticraft:burnt_limestone>]]);
cokeBrick.addTool(<ore:artisansTrowel>, 5);
cokeBrick.setFluid(<fluid:water> * 500);
cokeBrick.addOutput(<immersiveengineering:stone_decoration> * 3);
cokeBrick.create();
//Crushing Table
recipes.remove(<magneticraft:crushing_table>);
recipes.addShaped(<magneticraft:crushing_table>, [[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:plankWood>, <ore:logWood>, <ore:plankWood>]]);
//Concrete Powder
for powder in powders {
    recipes.remove(powder);
}
for d, powder in powders {
    recipes.addShapeless(powder, [<minecraft:clay>, <magneticraft:burnt_limestone:2>, dyes[d]]);
}
//Hempstone Bricks
recipes.remove(<immersivehempcraft:hempstone_bricks>);
var hempBrick = RecipeBuilder.get("mason");
hempBrick.setShaped([[<immersivehempcraft:hempstone_brick>, <immersivehempcraft:hempstone_brick>, <immersivehempcraft:hempstone_brick>], [<immersivehempcraft:hempstone_brick>, <minecraft:concrete_powder:8>, <immersivehempcraft:hempstone_brick>], [<immersivehempcraft:hempstone_brick>, <immersivehempcraft:hempstone_brick>, <immersivehempcraft:hempstone_brick>]]);
hempBrick.addTool(<ore:artisansTrowel>, 5);
hempBrick.setFluid(<fluid:water> * 250);
hempBrick.addOutput(<immersivehempcraft:hempstone_bricks> * 2);
hempBrick.create();
//Basic Worktable
recipes.addShaped(<artisanworktables:worktable:5>, [[<ore:plankWood>, <forestry:worktable>, <ore:plankWood>], [<ore:plankWood>, <minecraft:item_frame>, <ore:plankWood>], [<ore:dyeBlack>, <magneticraft:crushing_table>, <ore:dyeBlack>]]);
//Mason Worktable
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>], [null, <artisanworktables:worktable:5>]]);
//Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
var blastBrick = RecipeBuilder.get("mason");
blastBrick.setShaped([[<immersivehempcraft:hempstone_bricks>, <ceramics:clay_hard:3>, <immersivehempcraft:hempstone_bricks>], [<ceramics:clay_hard:3>, <ore:fuelCoke>, <ceramics:clay_hard:3>], [<immersivehempcraft:hempstone_bricks>, <ceramics:clay_hard:3>, <immersivehempcraft:hempstone_bricks>]]);
blastBrick.addTool(<ore:artisansTrowel>, 5);
blastBrick.setFluid(<fluid:water> * 500);
blastBrick.addOutput(<immersiveengineering:stone_decoration:1> * 3);
blastBrick.create();
//Engineers Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [[null, <ore:ingotAluminum>, <minecraft:string>], [null, <integrateddynamics:menril_log>, <ore:ingotAluminum>], [<integrateddynamics:menril_log>, null, null]]);
//Kiln Brick
recipes.remove(<immersiveengineering:stone_decoration:10>);
var kilnBrick = RecipeBuilder.get("mason");
kilnBrick.setShaped([[<minecraft:brick_block>, <quark:sandy_bricks>, <minecraft:brick_block>], [<quark:sandy_bricks>, <ore:plateSteel>, <quark:sandy_bricks>], [<minecraft:brick_block>, <quark:sandy_bricks>, <minecraft:brick_block>]]);
kilnBrick.addTool(<ore:artisansTrowel>, 5);
kilnBrick.setFluid(<fluid:water> * 1000);
kilnBrick.addOutput(<immersiveengineering:stone_decoration:10> * 2);
kilnBrick.create();
//Iron Mechanical Component
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8> * 2, [[<ore:ingotIron>, <ore:ingotTin>, <ore:ingotIron>], [<ore:ingotLead>, <ore:ingotCopper>, <ore:ingotLead>], [<ore:ingotIron>, <ore:ingotTin>, <ore:ingotIron>]]);
//Steel Mechanical Component
recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9> * 2, [[<ore:ingotSteel>, <ore:ingotConstantan>, <ore:ingotSteel>], [<ore:ingotElectrum>, <ore:ingotInvar>, <ore:ingotElectrum>], [<ore:ingotSteel>, <ore:ingotConstantan>, <ore:ingotSteel>]]);
//Blacksmith Worktable
recipes.addShaped(<artisanworktables:worktable:3>, [[<ore:ingotIron>, <minecraft:iron_trapdoor>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <artisanworktables:worktable:5>, null]]);
//Low Quality Parts
for i, part1 in partGears {
    RecipeBuilder.get("blacksmith")
    .setShaped([[null, ingots[i], null], [ingots[i], <ore:ingotIron>, ingots[i]], [null, ingots[i], null]])
    .addTool(<ore:artisansHammer>, 5)
    .setFluid(<fluid:lava> * 250)
    .addOutput(part1)
    .create();
}
for i, part2 in partRods {
    RecipeBuilder.get("blacksmith")
    .setShaped([[null, ingots[i], null], [null, ingots[i], null], [null, ingots[i], null]])
    .addTool(<ore:artisansHammer>, 5)
    .setFluid(<fluid:lava> * 250)
    .addOutput(part2)
    .create();
}
for i, part3 in partPlates {
    RecipeBuilder.get("blacksmith")
    .setShaped([[ingots[i], ingots[i], null]])
    .addTool(<ore:artisansHammer>, 5)
    .setFluid(<fluid:lava> * 250)
    .addOutput(part3)
    .create();
}  
for i, plate in plates {
    RecipeBuilder.get("blacksmith")
    .setShapeless([partPlates[i], partPlates[i]])
    .addTool(<ore:artisansHammer>, 5)
    .setFluid(<fluid:lava> * 500)
    .addOutput(plate)
    .create();
}
for i, gear in gears {
    RecipeBuilder.get("blacksmith")
    .setShapeless([partGears[i], partGears[i]])
    .addTool(<ore:artisansHammer>, 5)
    .setFluid(<fluid:lava> * 500)
    .addOutput(gear)
    .create();
}
for i, rod in rods {
    RecipeBuilder.get("blacksmith")
    .setShapeless([partRods[i], partRods[i]])
    .addTool(<ore:artisansHammer>, 5)
    .setFluid(<fluid:lava> * 500)
    .addOutput(rod)
    .create();
}
//Redstone Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2, [[<ore:ingotIron>, <ore:redstoneRoot>, <ore:ingotIron>], [<ore:redstoneRoot>, <ore:gearCopper>, <ore:redstoneRoot>], [<ore:ingotIron>, <ore:redstoneRoot>, <ore:ingotIron>]]);
//Light Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>], [<ore:plateCopper>, <ore:gearCopper>, <ore:plateCopper>], [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>]]);
//Heavy Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [[<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>], [<ore:ingotElectrum>, <ore:gearSteel>, <ore:ingotElectrum>], [<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>]]);
//Clockwork Engine
recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_clockwork>, [[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], [null, <ore:blockGlass>, null], [<ore:gearIron>, <minecraft:piston>, <minecraft:clock>]]);
//Clock
recipes.remove(<minecraft:clock>);
recipes.addShaped(<minecraft:clock>, [[<ore:rodCopper>, <ore:ingotGold>, <ore:rodCopper>], [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>], [<ore:rodCopper>, <ore:ingotGold> ,<ore:rodCopper>]]);
//Farmers Worktable
recipes.addShaped(<artisanworktables:worktable:10>, [[<ore:dirt>, <minecraft:tallgrass>, <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>], [null, <artisanworktables:worktable:5>]]);
//Menril Sapling
var menrilSapling = RecipeBuilder.get("farmer");
menrilSapling.setShapeless([<minecraft:sapling>, <ore:blockLapis>]);
menrilSapling.addTool(<ore:artisansTrowel>, 5);
menrilSapling.setFluid(<fluid:water> * 1000);
menrilSapling.addOutput(<integrateddynamics:menril_sapling>);
menrilSapling.create();
//Squeezer
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [[<ic2:crafting:31>, <minecraft:iron_trapdoor>, <ic2:crafting:31>], [<ic2:crafting:31>, null, <ic2:crafting:31>], [<forestry:wood_pile>, <minecraft:iron_trapdoor>, <forestry:wood_pile>]]);
//Drying Basin
recipes.remove(<integrateddynamics:drying_basin>);
recipes.addShaped(<integrateddynamics:drying_basin>, [[<ore:nuggetIron>, null, <ore:nuggetIron>], [<minecraft:iron_bars>, null, <minecraft:iron_bars>], [<forestry:wood_pile>, <forestry:wood_pile>, <forestry:wood_pile>]]);
//Scribe Worktable
recipes.addShaped(<artisanworktables:8>, [[<leatherworks:debarked_log_oak>, <minecraft:paper>, <leath:debarked_log_oak>], [<minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>], [null, <artisanworktables:worktable:5>]]);
//Engineers Manual
RecipeBuilder.get("scribe")
    .setShapeless([<minecraft:book>, <minecraft:lever>])
    .addTool(<ore:artisansQuill>, 50)
    .addOutput(<immersiveengineering:tool:3>)
    .create();