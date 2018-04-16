//Imports
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
//Variables	
val knifes = [<roots:wood_knife>, <roots:gold_knife>, <roots:stone_knife>, <roots:iron_knife>, <roots:diamond_knife>] as IItemStack[];
val materials = [<ore:plankWood>, <ore:ingotGold>, <ore:cobblestone>, <ore:ingotIron>, <ore:gemDiamond>] as IOreDictEntry[];
//Magnifying Glass
recipes.remove(<clayindirt:magnifying_glass>);
recipes.addShapedMirrored(<clayindirt:magnifying_glass>, [[null, <ore:blockGlass>, <ore:blockGlass>], [null, <ore:blockGlass>, <ore:blockGlass>], [<ore:stickWood>, null, null]]);
//Mortar
recipes.remove(<botany:misc_ceramic>);
recipes.addShaped(<botany:misc_ceramic> * 4, [[null, <minecraft:clay_ball>, null], [<minecraft:clay_ball>, <minecraft:gravel>, <minecraft:clay_ball>], [null, <minecraft:clay_ball>, null]]);
//Knifes
for knife in knifes {
	recipes.remove(knife);
}
for m, knife in knifes {
	recipes.addShaped(knife, [[null, null, materials[m]], [<botany:misc_ceramic>, materials[m], null], [<ore:stickWood>, <botany:misc_ceramic>, null]]);
}
//String
recipes.remove(<minecraft:string>);
for knife in knifes {
	recipes.addShapeless(<minecraft:string> * 3, [knife.anyDamage().transformDamage(), <ore:blockWool>]);
}
//Sluice Box
recipes.remove(<magneticraft:sluice_box>);
recipes.addShaped(<magneticraft:sluice_box>, [[<ore:plankWood>, <ore:stickWood>, null], [<magneticraft:crafting:6>, <ore:plankWood>, <ore:stickWood>], [<minecraft:stone_slab:4>, <minecraft:stone_slab:4>, <minecraft:stone_slab:4>]]);
//Nuggets
mods.magneticraft.SluiceBox.removeRecipe(<minecraft:gravel>);
mods.magneticraft.SluiceBox.addRecipe(<minecraft:gravel>, 0.6, <minecraft:flint>, 0.2, <materialpart:iron:nugget>, 0.2, <materialpart:copper:nugget>, 0.2, <materialpart:tin:nugget>, true);
