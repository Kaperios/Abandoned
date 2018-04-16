//Fluid Pipe
recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 4, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<integrateddynamics:cable>, <integrateddynamics:cable>, <integrateddynamics:cable>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
//Waterwheel
recipes.remove(<immersiveengineering:wooden_device1>);
recipes.addShaped(<immersiveengineering:wooden_device1>, [[null, <immersiveengineering:material:10>, null], [<immersiveengineering:material:10>, <ic2:rotor_wood>, <immersiveengineering:material:10>], [null, <immersiveengineering:material:10>, null]]);
//Windmill
recipes.remove(<immersiveengineering:wooden_device1:1>);
recipes.addShaped(<immersiveengineering:wooden_device1:1>, [[<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>], [<immersiveengineering:material:11>, <ic2:rotor_wood>, <immersiveengineering:material:11>], [<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>]]);
//Garden Cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<botania:bifrostperm>, <actuallyadditions:item_growth_ring>, <botania:bifrostperm>], [<botania:bifrostperm>, <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.spirit.neutral", Amount: 1000}}), <botania:bifrostperm>], [<botania:storage:4>, <botania:specialflower>.withTag({type: "shulk_me_not"}), <minecraft:diamond_block>]]);
//Copper Coil Block
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.addShaped(<immersiveengineering:metal_decoration0>, [[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>], [<immersiveengineering:wirecoil>, <ore:stickSteel>, <immersiveengineering:wirecoil>], [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);
//Electrum Coil Block
recipes.remove(<immersiveengineering:metal_decoration0:1>);
recipes.addShaped(<immersiveengineering:metal_decoration0:1>, [[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:wirecoil:1>, <ore:stickSteel>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]]);
//High-Voltage Coil Block
recipes.remove(<immersiveengineering:metal_decoration0:2>);
recipes.addShaped(<immersiveengineering:metal_decoration0:2>, [[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:wirecoil:2>, <ore:stickSteel>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]]);
//LV Capacitor Bank
recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<integrateddynamics:crystalized_menril_block>, <ore:blockIron>, <integrateddynamics:crystalized_menril_block>], [<ore:blockLead>, null, <ore:blockCopper>], [<ore:plankTreatedWood>, <integrateddynamics:energy_battery>.withTag({capacity: 100000}), <ore:plankTreatedWood>]]);
//MV Capacitor Bank
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [[<integrateddynamics:crystalized_menril_block>, <ore:blockInvar>, <integrateddynamics:crystalized_menril_block>], [<ore:blockElectrum>, <ore:blockLead>, <ore:blockElectrum>], [<immersiveengineering:metal_device0>, <integrateddynamics:energy_battery>.withTag({capacity: 400000}), <immersiveengineering:metal_device0>]]);
//HV Capacitor Bank
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>, [[<integrateddynamics:crystalized_menril_block>, <ore:blockSteel>, <integrateddynamics:crystalized_menril_block>], [<ore:blockAluminum>, <ore:blockLead>, <ore:blockAluminum>], [<immersiveengineering:metal_device0:1>, <integrateddynamics:energy_battery>.withTag({capacity: 1600000}), <immersiveengineering:metal_device0:1>]]);




