//Varuables
val chorusBlock = <integrateddynamics:crystalized_chorus_block>;
//Energy Battery
recipes.remove(<integrateddynamics:energy_battery>);
recipes.addShaped(<integrateddynamics:energy_battery>, [[<integrateddynamics:crystalized_menril_block>, <ore:ingotSilver>, <integrateddynamics:crystalized_menril_block>], [<integrateddynamics:crystalized_menril_chunk>, <ore:blockRedstone>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_block>, <ore:ingotSilver>, <integrateddynamics:crystalized_menril_block>]]);
//Generator
recipes.remove(<integrateddynamics:coal_generator>);
recipes.addShaped(<integrateddynamics:coal_generator>, [[<integrateddynamics:crystalized_menril_brick>, <integrateddynamics:energy_battery>, <integrateddynamics:crystalized_menril_brick>], [<integrateddynamics:crystalized_menril_brick>, <minecraft:furnace>, <integrateddynamics:crystalized_menril_brick>], [<integrateddynamics:menril_log>, <integrateddynamics:menril_log>, <integrateddynamics:menril_log>]]);
//Wrench
recipes.remove(<integrateddynamics:wrench>);
recipes.addShaped(<integrateddynamics:wrench>, [[null, <integrateddynamics:crystalized_menril_chunk>, <ore:dustRedstone>], [null, <integrateddynamics:crystalized_menril_block>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:menril_log>, null, null]]);
//Labeller
recipes.remove(<integrateddynamics:labeller>);
recipes.addShaped(<integrateddynamics:labeller>, [[null, <integrateddynamics:crystalized_menril_chunk>, <minecraft:writable_book>], [null, <integrateddynamics:crystalized_menril_block>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:menril_log>, null, null]]);
//Logic Cable
recipes.remove(<integrateddynamics:cable>);
recipes.addShapedMirrored(<integrateddynamics:cable>, [[<integrateddynamics:crystalized_menril_chunk>, <ore:stickWood>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <ore:redstoneRoot>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <ore:stickWood>, <integrateddynamics:crystalized_menril_chunk>]]);
//Variable Card
recipes.remove(<integrateddynamics:variable>);
recipes.addShaped(<integrateddynamics:variable> * 4, [[<integrateddynamics:crystalized_menril_chunk>, <ore:ingotTin>, <integrateddynamics:crystalized_menril_chunk>], [<ore:ingotSilver>, <actuallyadditions:item_misc>, <ore:ingotSilver>], [<integrateddynamics:crystalized_menril_chunk>, <ore:ingotTin>, <integrateddynamics:crystalized_menril_chunk>]]);
//Variable Store
recipes.remove(<integrateddynamics:variablestore>);
recipes.addShaped(<integrateddynamics:variablestore>, [[<integrateddynamics:variable>, chorusBlock, <integrateddynamics:variable>], [<integrateddynamics:menril_log>, <ironchest:iron_chest:6>, <integrateddynamics:menril_log>], [<integrateddynamics:variable>, chorusBlock, <integrateddynamics:variable>]]);
//Input Variable Transformer
recipes.remove(<integrateddynamics:variable_transformer:1>);
recipes.addShaped(<integrateddynamics:variable_transformer:1>, [[null, <integrateddynamics:variable>, null], [<integrateddynamics:crystalized_menril_chunk>, <minecraft:iron_bars>, <integrateddynamics:crystalized_menril_chunk>], [null, <integrateddynamics:variable>, null]]);
//Logic Programmer
recipes.removeShapeless(<integrateddynamics:logic_programmer>, [<integrateddynamics:crystalized_menril_block>, <minecraft:crafting_table>]);
recipes.addShapeless(<integrateddynamics:logic_programmer>, [<integrateddynamics:crystalized_menril_block>, <ore:workbench>, <ore:redstoneRoot>]);
//Output Variable Transformer
recipes.remove(<integrateddynamics:variable_transformer>);
recipes.addShaped(<integrateddynamics:variable_transformer>, [[null, <integrateddynamics:crystalized_menril_chunk>, null], [<integrateddynamics:variable>, <minecraft:iron_bars>, <integrateddynamics:variable>], [null, <integrateddynamics:crystalized_menril_chunk>, null]]);
