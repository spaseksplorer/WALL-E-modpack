#modloaded nuclearcraft gregtech
#priority 49

import crafttweaker.game.IGame;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Fluid;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;

//////////////////////////////////////////////////////////////
/////////////////       Nuclearcraft       ///////////////////
//////////////////////////////////////////////////////////////


// Now for replacements:

recipes.replaceAllOccurences(<nuclearcraft:fluid_liquidhelium>,<liquid:liquid_helium>);
// remove table recipes for coolers and replace with canning machine recipes

recipes.remove(<nuclearcraft:cooler:1>);
fluid_canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:1>])
    .inputs([<nuclearcraft:cooler>])
    .fluidInputs([<liquid:water> * 1000])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:2>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:2>])
    .inputs([<nuclearcraft:cooler>, <ore:dustRedstone> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:3>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:3>])
    .inputs([<nuclearcraft:cooler>, <ore:dustNetherQuartz> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:4>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:4>])
    .inputs([<nuclearcraft:cooler>, <ore:dustGold> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:5>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:5>])
    .inputs([<nuclearcraft:cooler>, <ore:dustGlowstone> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:6>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:6>])
    .inputs([<nuclearcraft:cooler>, <ore:dustLapis> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:7>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:7>])
    .inputs([<nuclearcraft:cooler>, <ore:dustDiamond> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:8>);
fluid_canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:8>])
    .inputs([<nuclearcraft:cooler>])
    .fluidInputs([<liquid:helium> * 1000])
    .duration(400).EUt(2).buildAndRegister();
/*
recipes.remove(<nuclearcraft:cooler:9>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:9>])
    .inputs([<nuclearcraft:cooler>, <ore:dustEnderium> * 16])
    .duration(400).EUt(9).buildAndRegister();
*/

/*
recipes.remove(<nuclearcraft:cooler:10>);
fluid_canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:10>])
    .inputs([<nuclearcraft:cooler>])
    .fluidInputs([<liquid:cryotheum> * 1000])
    .duration(400).EUt(2).buildAndRegister();
*/

recipes.remove(<nuclearcraft:cooler:11>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:11>])
    .inputs([<nuclearcraft:cooler>, <ore:dustIron> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:12>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:12>])
    .inputs([<nuclearcraft:cooler>, <ore:dustEmerald> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:13>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:13>])
    .inputs([<nuclearcraft:cooler>, <ore:dustCopper> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:14>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:14>])
    .inputs([<nuclearcraft:cooler>, <ore:dustTin> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:15>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:15>])
    .inputs([<nuclearcraft:cooler>, <ore:dustMagnesium> * 16])
    .duration(400).EUt(2).buildAndRegister();
	
// Add tiny fuel clumps to the GTCE Packager
var clumps = [

    [<nuclearcraft:thorium:2> , <nuclearcraft:thorium>],
    [<nuclearcraft:thorium:6> , <nuclearcraft:thorium:4> ],
    [<nuclearcraft:uranium:2> , <nuclearcraft:uranium>],
    [<nuclearcraft:uranium:6> , <nuclearcraft:uranium:4> ],
    [<nuclearcraft:uranium:10> , <nuclearcraft:uranium:8>],
    [<nuclearcraft:neptunium:2> , <nuclearcraft:neptunium> ],
    [<nuclearcraft:neptunium:6> , <nuclearcraft:neptunium:4>],
    [<nuclearcraft:plutonium:2> , <nuclearcraft:plutonium>],
    [<nuclearcraft:plutonium:6> , <nuclearcraft:plutonium:4>],
    [<nuclearcraft:plutonium:10> , <nuclearcraft:plutonium:8>],
    [<nuclearcraft:plutonium:14> , <nuclearcraft:plutonium:12>],
    [<nuclearcraft:americium:2> , <nuclearcraft:americium>],
    [<nuclearcraft:americium:6> , <nuclearcraft:americium:4>],
    [<nuclearcraft:americium:10> , <nuclearcraft:americium:8>],
    [<nuclearcraft:curium:2> , <nuclearcraft:curium>],
    [<nuclearcraft:curium:6> , <nuclearcraft:curium:4>],
    [<nuclearcraft:curium:10> , <nuclearcraft:curium:8>],
    [<nuclearcraft:curium:14> , <nuclearcraft:curium:12>],
    [<nuclearcraft:berkelium:2> , <nuclearcraft:berkelium>],
    [<nuclearcraft:berkelium:6> , <nuclearcraft:berkelium:4>],
    [<nuclearcraft:californium:2> , <nuclearcraft:californium>],
    [<nuclearcraft:californium:6> , <nuclearcraft:californium:4>],
    [<nuclearcraft:californium:10> , <nuclearcraft:californium:8>],
    [<nuclearcraft:californium:14> , <nuclearcraft:californium:12>]

] as IItemStack[][];


for iso in clumps {

    packager.recipeBuilder()
        .inputs(iso[0]*9)
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
        .outputs(iso[1])
        .duration(10).EUt(12).buildAndRegister();

}

// Turbine Recipe changes
// NC turbine controller
recipes.remove(<nuclearcraft:turbine_controller>);
recipes.addShapeless("NCturbinecontroller",<nuclearcraft:turbine_controller>,[<gregtech:machine:1010>]);
recipes.addShapeless("NCturbinecontrollerR",<gregtech:machine:1010>,[<nuclearcraft:turbine_controller>]);

// NC turbine wall and frame
recipes.remove(<nuclearcraft:turbine_wall>);
recipes.remove(<nuclearcraft:turbine_frame>);
recipes.addShapeless("NCturbinewall",<nuclearcraft:turbine_wall>,[<gregtech:turbine_casing:5>]);
recipes.addShapeless("NCturbineframe",<nuclearcraft:turbine_frame>,[<nuclearcraft:turbine_wall>]);
recipes.addShapeless("NCturbinewallR",<gregtech:turbine_casing:5>,[<nuclearcraft:turbine_frame>]);

// NC turbine rotor bearing
recipes.remove(<nuclearcraft:turbine_rotor_bearing>);
recipes.addShapeless("NCturbinerotorbearing",<nuclearcraft:turbine_rotor_bearing>,[<gregtech:turbine_casing:1>]);
recipes.addShapeless("NCturbinerotorbearingR",<gregtech:turbine_casing:1>,[<nuclearcraft:turbine_rotor_bearing>]);

// NC turbine rotor shaft
recipes.remove(<nuclearcraft:turbine_rotor_shaft>);
recipes.addShapeless("NCturbinerotorshaft",<nuclearcraft:turbine_rotor_shaft>,[<gregtech:meta_stick_long:3020>]);
recipes.addShapeless("NCturbinerotorshaftR",<gregtech:meta_stick_long:3020>,[<nuclearcraft:turbine_rotor_shaft>]);

// Turbine Fluid Inlet and Outlet
recipes.remove(<nuclearcraft:turbine_inlet>);
recipes.remove(<nuclearcraft:turbine_outlet>);
recipes.addShapeless("NCturbineinlet",<nuclearcraft:turbine_inlet>,[<nuclearcraft:turbine_wall>,<gregtech:machine:1181>]);
recipes.addShapeless("NCturbineoutlet",<nuclearcraft:turbine_outlet>,[<nuclearcraft:turbine_wall>,<gregtech:machine:1196>]);

// NC turbine blades
// steel
recipes.remove(<nuclearcraft:turbine_rotor_blade_steel>);
recipes.addShapeless("NCturbinebladesteel",<nuclearcraft:turbine_rotor_blade_steel>,[<gregtech:meta_turbine_blade:324>]);
recipes.addShapeless("NCturbinebladesteelR",<gregtech:meta_turbine_blade:324>,[<nuclearcraft:turbine_rotor_blade_steel>]);

// extreme alloy
recipes.remove(<nuclearcraft:turbine_rotor_blade_extreme>);
recipes.addShapeless("NCturbinebladeextreme",<nuclearcraft:turbine_rotor_blade_extreme>,[<gregtech:meta_turbine_blade:2013>]);
recipes.addShapeless("NCturbinebladeextremeR",<gregtech:meta_turbine_blade:2013>,[<nuclearcraft:turbine_rotor_blade_extreme>]);

// SiC SiC CMC
recipes.remove(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>);
recipes.addShapeless("NCturbinebladesic",<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>,[<gregtech:meta_turbine_blade:2520>]);
recipes.addShapeless("NCturbinebladesicR",<gregtech:meta_turbine_blade:2520>,[<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>]);

// stator
recipes.remove(<nuclearcraft:turbine_rotor_stator>);
recipes.addShapeless("NCturbinebladestator",<nuclearcraft:turbine_rotor_stator>,[<gregtech:meta_turbine_blade:290>]);
recipes.addShapeless("NCturbinebladestatorR",<gregtech:meta_turbine_blade:290>,[<nuclearcraft:turbine_rotor_stator>]);


// Heat Exchanger Recipe Changes
// NC HX wall and frame
recipes.remove(<nuclearcraft:heat_exchanger_wall>);
recipes.remove(<nuclearcraft:heat_exchanger_frame>);
recipes.addShapeless("NCHXwall",<nuclearcraft:heat_exchanger_wall>,[<gcym:large_multiblock_casing:12>]);
recipes.addShapeless("NCHXframe",<nuclearcraft:heat_exchanger_frame>,[<nuclearcraft:heat_exchanger_wall>]);
recipes.addShapeless("NCHXwallR",<gcym:large_multiblock_casing:12>,[<nuclearcraft:heat_exchanger_frame>]);

// HX Controller
recipes.remove(<nuclearcraft:heat_exchanger_controller>);
recipes.addShaped("NCHXcontroller",<nuclearcraft:heat_exchanger_controller>,
				[[<gregtech:boiler_casing:1>,<gregtech:meta_item_1:143>,<gregtech:boiler_casing:1>],
				 [<ore:circuitMv>,<nuclearcraft:heat_exchanger_wall>,<ore:circuitMv>],
				 [<gregtech:boiler_casing:1>,<gregtech:meta_item_1:143>,<gregtech:boiler_casing:1>]]);

// HX Vent
recipes.remove(<nuclearcraft:heat_exchanger_vent>);
recipes.addShapeless("NCHXvent",<nuclearcraft:heat_exchanger_vent>,[<nuclearcraft:heat_exchanger_wall>,<gregtech:machine:1180>]);

// HX tubes
// copper
recipes.remove(<nuclearcraft:heat_exchanger_tube_copper>);
recipes.addShapeless("NCHXtubecopper",<nuclearcraft:heat_exchanger_tube_copper>,[<gregtech:fluid_pipe_nonuple:25>]);
recipes.addShapeless("NCHXtubecopperR",<gregtech:fluid_pipe_nonuple:25>,[<nuclearcraft:heat_exchanger_condenser_tube_copper>]);

// hard_carbon
recipes.remove(<nuclearcraft:heat_exchanger_tube_hard_carbon>);
recipes.addShapeless("NCHXtubehardcarbon",<nuclearcraft:heat_exchanger_tube_hard_carbon>,[<gregtech:fluid_pipe_nonuple:323>]);
recipes.addShapeless("NCHXtubehardcarbonR",<gregtech:fluid_pipe_nonuple:323>,[<nuclearcraft:heat_exchanger_condenser_tube_hard_carbon>]);

// thermoconducting
recipes.remove(<nuclearcraft:heat_exchanger_tube_thermoconducting>);
recipes.addShapeless("NCHXtubethermoconducting",<nuclearcraft:heat_exchanger_tube_thermoconducting>,[<gregtech:fluid_pipe_nonuple:113>]);
recipes.addShapeless("NCHXtubethermoconductingR",<gregtech:fluid_pipe_nonuple:113>,[<nuclearcraft:heat_exchanger_condenser_tube_thermoconducting>]);


// Fission Parts
// Fission Reactor Controller 
recipes.remove(<nuclearcraft:fission_controller_new_fixed>);
recipes.addShaped("NCfissioncontroller",<nuclearcraft:fission_controller_new_fixed>,
				[[<gregtech:wire_octal:2527>,<gregtech:meta_item_1:219>,<gregtech:wire_octal:2527>],
				 [<ore:circuitHv>,<nuclearcraft:fission_block>,<ore:circuitHv>],
				 [<gregtech:wire_octal:2527>,<gregtech:meta_item_1:219>,<gregtech:wire_octal:2527>]]);

// Fission Reactor Casing 
recipes.removeByRecipeName("nuclearcraft:tile.nuclearcraft.fission_block.casing");
recipes.removeByRecipeName("nuclearcraft:tile.nuclearcraft.reactor_casing_transparent");
recipes.addShaped("NCfissioncasing",<nuclearcraft:fission_block>*2,
				[[<gregtech:meta_plate_double:55>,<gregtech:hammer>,<gregtech:meta_plate_double:55>],
				 [<gregtech:meta_plate_double:55>,<gregtech:meta_block_frame_20:4>,<gregtech:meta_plate_double:55>],
				 [<gregtech:meta_plate_double:55>,<ore:toolWrench>,<gregtech:meta_plate_double:55>]]);
assembler.recipeBuilder()
	.outputs(<nuclearcraft:fission_block>*2)
	.inputs([<gregtech:meta_plate_double:55>*6,<gregtech:meta_block_frame_20:4>])
	.circuit(6)
	.EUt(16)
	.duration(50)
	.buildAndRegister();


// Reactor Cell <nuclearcraft:cell_block>
recipes.remove(<nuclearcraft:cell_block>);
recipes.addShaped("NCreactorcell",<nuclearcraft:cell_block>,
				[[<gregtech:transparent_casing:0>,<gregtech:meta_stick:341>,<gregtech:transparent_casing:0>],
				 [<gregtech:meta_stick:341>,<nuclearcraft:fission_block>,<gregtech:meta_stick:341>],
				 [<gregtech:transparent_casing:0>,<gregtech:meta_stick:341>,<gregtech:transparent_casing:0>]]);

// Empty Cooler <nuclearcraft:cooler>
recipes.remove(<nuclearcraft:cooler>);
recipes.addShaped("NCcooler",<nuclearcraft:cooler>,
				[[<gregtech:transparent_casing:0>,<gregtech:meta_stick:324>,<gregtech:transparent_casing:0>],
				 [<gregtech:meta_stick:324>,<nuclearcraft:fission_block>,<gregtech:meta_stick:324>],
				 [<gregtech:transparent_casing:0>,<gregtech:meta_stick:324>,<gregtech:transparent_casing:0>]]);

// Active Cooler <nuclearcraft:active_cooler>
recipes.remove(<nuclearcraft:active_cooler>);
recipes.addShaped("NCactivecooler",<nuclearcraft:active_cooler>,
				[[<gregtech:transparent_casing:0>,<gregtech:fluid_pipe_normal:324>,<gregtech:transparent_casing:0>],
				 [<gregtech:fluid_pipe_normal:324>,<nuclearcraft:fission_block>,<gregtech:fluid_pipe_normal:324>],
				 [<gregtech:transparent_casing:0>,<gregtech:fluid_pipe_normal:324>,<gregtech:transparent_casing:0>]]);


// Fission Reactor Port <nuclearcraft:fission_port>
recipes.remove(<nuclearcraft:fission_port>);
recipes.addShapeless("NCfissionport",<nuclearcraft:fission_port>,[<nuclearcraft:fission_block>,<gregtech:machine:1151>]);

// Buffer
recipes.remove(<nuclearcraft:buffer>);
recipes.addShapeless("NCBuffer",<nuclearcraft:buffer>,[<nuclearcraft:fission_block>,<gregtech:machine:1510>]);


// Molten Salt Reactor Parts
// MSR Reactor Controller <nuclearcraft:salt_fission_controller>
recipes.remove(<nuclearcraft:salt_fission_controller>);
recipes.addShaped("NCMSRcontroller",<nuclearcraft:salt_fission_controller>,
				[[<gregtech:wire_octal:2011>,<gregtech:meta_item_1:220>,<gregtech:wire_octal:2011>],
				 [<ore:circuitEv>,<nuclearcraft:salt_fission_wall>,<ore:circuitEv>],
				 [<gregtech:wire_octal:2011>,<gregtech:meta_item_1:145>,<gregtech:wire_octal:2011>]]);

// MSR Vent <nuclearcraft:salt_fission_vent>
recipes.remove(<nuclearcraft:salt_fission_vent>);
recipes.addShapeless("NCMSRvent",<nuclearcraft:salt_fission_vent>,[<nuclearcraft:salt_fission_wall>,<gregtech:machine:1183>]);

// MSR Fuel Distributor and Retriever <nuclearcraft:salt_fission_distributor> <nuclearcraft:salt_fission_retriever>
recipes.remove(<nuclearcraft:salt_fission_distributor>);
recipes.remove(<nuclearcraft:salt_fission_retriever>);
recipes.addShaped("NCMSRfueldist",<nuclearcraft:salt_fission_distributor>,[[<gregtech:fluid_pipe_large:115>,<nuclearcraft:salt_fission_vent>,<gregtech:meta_item_1:145>]]);
recipes.addShaped("NCMSRfuelret",<nuclearcraft:salt_fission_retriever>,[[<gregtech:meta_item_1:145>,<nuclearcraft:salt_fission_vent>,<gregtech:fluid_pipe_large:115>]]);

// MSR Moderator Housing <nuclearcraft:salt_fission_moderator>
recipes.remove(<nuclearcraft:salt_fission_moderator>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:salt_fission_moderator>])
    .inputs([<nuclearcraft:salt_fission_wall>, <ore:dustGraphite> * 16])
    .duration(400).EUt(20).buildAndRegister();
canner.recipeBuilder()
    .outputs([<nuclearcraft:salt_fission_moderator>])
    .inputs([<nuclearcraft:salt_fission_wall>, <ore:dustBeryllium> * 16])
    .duration(400).EUt(20).buildAndRegister();

// MSR Redstone Port <nuclearcraft:salt_fission_redstone_port>
recipes.remove(<nuclearcraft:salt_fission_redstone_port>);
recipes.addShapeless("NCMSRredstoneport",<nuclearcraft:salt_fission_redstone_port>,[<nuclearcraft:salt_fission_wall>,<gregtech:meta_item_1:301>]);


// MSR Fission Vessel <nuclearcraft:salt_fission_vessel>
recipes.remove(<nuclearcraft:salt_fission_vessel>);
recipes.addShapeless("NCMSRfissionvessel",<nuclearcraft:salt_fission_vessel>,[<nuclearcraft:salt_fission_wall>,<gregtech:fluid_pipe_large:115>]);

// MSR Coolant Heater <nuclearcraft:salt_fission_heater>
recipes.remove(<nuclearcraft:salt_fission_heater>);
recipes.addShapeless("NCMSRcoolantheater",<nuclearcraft:salt_fission_heater>,[<nuclearcraft:salt_fission_wall>,<gregtech:item_pipe_huge:274>]);


// NC MSR wall, frame, beam
// Order GCYM->wall->frame->beam->GCYM
recipes.removeByRecipeName("nuclearcraft:tile.nuclearcraft.salt_fission_wall");
recipes.removeByRecipeName("nuclearcraft:tile.nuclearcraft.salt_fission_wall_2");
recipes.remove(<nuclearcraft:salt_fission_frame>);
recipes.remove(<nuclearcraft:salt_fission_beam>);

recipes.addShapeless("NCMSRwall",<nuclearcraft:salt_fission_wall>,[<gcym:large_multiblock_casing:4>]);
recipes.addShapeless("NCMSRframe",<nuclearcraft:salt_fission_frame>,[<nuclearcraft:salt_fission_wall>]);
recipes.addShapeless("NCMSRbeam",<nuclearcraft:salt_fission_beam>,[<nuclearcraft:salt_fission_frame>]);
recipes.addShapeless("NCMSRwallR",<gcym:large_multiblock_casing:4>,[<nuclearcraft:salt_fission_beam>]);


// NC block recipe dupes
recipes.removeByRecipeName("nuclearcraft:tile.compressed_3");
recipes.removeByRecipeName("nuclearcraft:tile.compressed_4");
recipes.removeByRecipeName("nuclearcraft:tile.compressed_5");
recipes.removeByRecipeName("nuclearcraft:tile.compressed_6");
recipes.removeByRecipeName("nuclearcraft:tile.compressed_7");
recipes.removeByRecipeName("nuclearcraft:tile.compressed_8");


// TODO



// Turbine Parts
// Dynamo Coils <nuclearcraft:turbine_dynamo_coil:x>
// magnesium 0, beryllium 1, aluminum 2, gold 3, copper 4, silver 5
recipes.remove(<nuclearcraft:turbine_dynamo_coil:1>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:2>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:3>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:4>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:5>);

recipes.addShaped("NCturbcoilmag",<nuclearcraft:turbine_dynamo_coil:0>,
				[[<gregtech:wire_double:425>,<gregtech:wire_double:425>,<gregtech:wire_double:425>],
				 [<gregtech:wire_double:425>,null,<gregtech:wire_double:425>],
				 [<gregtech:wire_double:425>,<gregtech:wire_double:425>,<gregtech:wire_double:425>]]);
recipes.addShaped("NCturbcoilber",<nuclearcraft:turbine_dynamo_coil:1>,
				[[<gregtech:wire_double:424>,<gregtech:wire_double:424>,<gregtech:wire_double:424>],
				 [<gregtech:wire_double:424>,null,<gregtech:wire_double:424>],
				 [<gregtech:wire_double:424>,<gregtech:wire_double:424>,<gregtech:wire_double:424>]]);
recipes.addShaped("NCturbcoilalu",<nuclearcraft:turbine_dynamo_coil:2>,
				[[<gregtech:wire_double:2>,<gregtech:wire_double:2>,<gregtech:wire_double:2>],
				 [<gregtech:wire_double:2>,null,<gregtech:wire_double:2>],
				 [<gregtech:wire_double:2>,<gregtech:wire_double:2>,<gregtech:wire_double:2>]]);
recipes.addShaped("NCturbcoilgold",<nuclearcraft:turbine_dynamo_coil:3>,
				[[<gregtech:wire_double:41>,<gregtech:wire_double:41>,<gregtech:wire_double:41>],
				 [<gregtech:wire_double:41>,null,<gregtech:wire_double:41>],
				 [<gregtech:wire_double:41>,<gregtech:wire_double:41>,<gregtech:wire_double:41>]]);
recipes.addShaped("NCturbcoilcop",<nuclearcraft:turbine_dynamo_coil:4>,
				[[<gregtech:wire_double:25>,<gregtech:wire_double:25>,<gregtech:wire_double:25>],
				 [<gregtech:wire_double:25>,null,<gregtech:wire_double:25>],
				 [<gregtech:wire_double:25>,<gregtech:wire_double:25>,<gregtech:wire_double:25>]]);
recipes.addShaped("NCturbcoilsil",<nuclearcraft:turbine_dynamo_coil:5>,
				[[<gregtech:wire_double:100>,<gregtech:wire_double:100>,<gregtech:wire_double:100>],
				 [<gregtech:wire_double:100>,null,<gregtech:wire_double:100>],
				 [<gregtech:wire_double:100>,<gregtech:wire_double:100>,<gregtech:wire_double:100>]]);














	
