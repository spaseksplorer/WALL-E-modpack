#modloaded nuclearcraft gregtech
#priority 50

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

// Remove all recipes from unused NC machine categories
mods.nuclearcraft.manufactory.removeAllRecipes();
mods.nuclearcraft.isotope_separator.removeAllRecipes();
mods.nuclearcraft.decay_hastener.removeAllRecipes();
mods.nuclearcraft.fuel_reprocessor.removeAllRecipes();
mods.nuclearcraft.alloy_furnace.removeAllRecipes();
mods.nuclearcraft.infuser.removeAllRecipes();
mods.nuclearcraft.melter.removeAllRecipes();
mods.nuclearcraft.supercooler.removeAllRecipes();
mods.nuclearcraft.electrolyser.removeAllRecipes();
mods.nuclearcraft.irradiator.removeAllRecipes();
mods.nuclearcraft.ingot_former.removeAllRecipes();
mods.nuclearcraft.pressurizer.removeAllRecipes();
mods.nuclearcraft.chemical_reactor.removeAllRecipes();
mods.nuclearcraft.salt_mixer.removeAllRecipes();
mods.nuclearcraft.crystallizer.removeAllRecipes();
mods.nuclearcraft.dissolver.removeAllRecipes();
mods.nuclearcraft.extractor.removeAllRecipes();
mods.nuclearcraft.centrifuge.removeAllRecipes();
mods.nuclearcraft.rock_crusher.removeAllRecipes();
mods.nuclearcraft.decay_generator.removeAllRecipes();
mods.nuclearcraft.fusion.removeAllRecipes();
//mods.nuclearcraft.salt_fission.removeAllRecipes();
//mods.nuclearcraft.heat_exchanger.removeAllRecipes();
//FIXME: NC lists this next one in its docs but CT doesn't like it. Disabling for now.
//mods.nuclearcraft.steam_turbine.removeAllRecipes();
//mods.nuclearcraft.condenser.removeAllRecipes();


// Hide NC categories related to Collector
mods.jei.JEI.hideCategory("nuclearcraft_collector");

function purgeFluidFromJEI(fluid as string) {
    // gtce various metal cells
    val containers = [<metaitem:large_fluid_cell.steel>,
                      <metaitem:fluid_cell>,
                      <metaitem:large_fluid_cell.tungstensteel>] as IItemStack[];

    // remove from various GT containers
    for container in containers {
        mods.jei.JEI.removeAndHide(container.withTag({Fluid: {FluidName: fluid, Amount: 1000}}));
    }

    // Different tag schemas...
//    mods.jei.JEI.removeAndHide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: fluid, Amount: 1000}}));
    mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: fluid, Amount: 1000}));
}

zenClass Removal {

    var item as IItemStack;
    var hasFurnace as bool = false;

    zenConstructor(item as IItemStack) {
        this.item = item;
    }

    zenConstructor(item as IItemStack, hasFurnace as bool) {
        this.item = item;
        this.hasFurnace = hasFurnace;
    }

}

recipes.replaceAllOccurences(<nuclearcraft:fluid_liquidhelium>,<liquid:liquid_helium>);

// Nuclearcraft Item Removals
val removals as Removal[] = [
    Removal(<nuclearcraft:accelerator_electromagnet_idle>),
    Removal(<nuclearcraft:alloy:0>), // Bronze
	Removal(<nuclearcraft:alloy:3>), // Magnesium Diboride
    Removal(<nuclearcraft:alloy:4>), // Lithium Manganese Dioxide
	Removal(<nuclearcraft:alloy:5>), // Steel
    Removal(<nuclearcraft:alloy:7>), // Shibuichi Alloy
    Removal(<nuclearcraft:alloy:8>), // Tin Silver Alloy
    Removal(<nuclearcraft:alloy:9>), // Lead Platinum Alloy
    Removal(<nuclearcraft:alloy:11>), // Thermoconducting Alloy
    Removal(<nuclearcraft:alloy:12>), // Zircaloy
    Removal(<nuclearcraft:alloy:13>), // Silicon Carbide
    Removal(<nuclearcraft:alloy:14>), // SiC SiC Ceramic Matrix Composite
    //Removal(<nuclearcraft:alloy:15>), // HSLA Steel
    Removal(<nuclearcraft:bin>),
    Removal(<nuclearcraft:boots_hazmat>),
    Removal(<nuclearcraft:boron:0>), // all boron isotopes
    Removal(<nuclearcraft:boron:1>),
    Removal(<nuclearcraft:boron:2>),
    Removal(<nuclearcraft:boron:3>),
    Removal(<nuclearcraft:chest_hazmat>),
    Removal(<nuclearcraft:compound:0>), // Calcium Sulfate
    Removal(<nuclearcraft:compound:1>), // Crystal Binder
	Removal(<nuclearcraft:compound:2>),
    Removal(<nuclearcraft:compound:3>), // Sodium Fluoride
    Removal(<nuclearcraft:compound:4>), // Potassium Fluoride
	Removal(<nuclearcraft:compound:5>), // Sodium Hydroxide
    Removal(<nuclearcraft:compound:6>), // Potassium Hydroxide
    Removal(<nuclearcraft:compound:7>), // Borax
    Removal(<nuclearcraft:compound:8>), // Dimensional Blend
    Removal(<nuclearcraft:compound:9>), // Carbon-Manganese Blend
    Removal(<nuclearcraft:compound:10>), // Alugentum Dust
    Removal(<nuclearcraft:decay_generator>),
    Removal(<nuclearcraft:dry_earth>),
	Removal(<nuclearcraft:dust:8>),
	Removal(<nuclearcraft:dust:9>),
    Removal(<nuclearcraft:dust:10>), // Zirconium Dust
    Removal(<nuclearcraft:dust:11>),
	Removal(<nuclearcraft:dust:12>),
	Removal(<nuclearcraft:dust:13>),
	Removal(<nuclearcraft:dust_oxide>),   // Thorium Oxide Dust
    Removal(<nuclearcraft:dust_oxide:1>), // Uranium Oxide Dust
    Removal(<nuclearcraft:dust_oxide:2>, true), // Manganese Oxide Dust
    Removal(<nuclearcraft:dust_oxide:3>), // Manganese Dioxide Dust
    Removal(<nuclearcraft:electromagnet_supercooler_idle>),
    Removal(<nuclearcraft:fission_controller_idle>),
	Removal(<nuclearcraft:fission_block:1>),
    Removal(<nuclearcraft:flour>),
    Removal(<nuclearcraft:fusion_connector>),
    Removal(<nuclearcraft:fusion_core>),
    Removal(<nuclearcraft:fusion_electromagnet_idle>),
    Removal(<nuclearcraft:fusion_electromagnet_transparent_idle>),
    Removal(<nuclearcraft:geiger_counter>),
    Removal(<nuclearcraft:gem:0>), // all NC gems
    Removal(<nuclearcraft:gem:1>),
    Removal(<nuclearcraft:gem:2>),
    Removal(<nuclearcraft:gem:3>),
    Removal(<nuclearcraft:gem:4>),
    Removal(<nuclearcraft:gem:5>),
    Removal(<nuclearcraft:gem:6>),
	Removal(<nuclearcraft:gem_dust:0>), // Crushed Diamond
	Removal(<nuclearcraft:gem_dust:1>), // Crushed Rhodochrosite
	Removal(<nuclearcraft:gem_dust:2>), // Crushed Quartz
	Removal(<nuclearcraft:gem_dust:3>), // Crushed Obsidian
    Removal(<nuclearcraft:gem_dust:4>), // Hexagonal Boron Nitride
    Removal(<nuclearcraft:gem_dust:5>), // Crushed Fluorite
	Removal(<nuclearcraft:gem_dust:6>), // Sulfur
	Removal(<nuclearcraft:gem_dust:7>), // Crushed Coal
    Removal(<nuclearcraft:gem_dust:8>), // Crushed Villiaumite
    Removal(<nuclearcraft:gem_dust:9>), // Crushed Carobbiite
    Removal(<nuclearcraft:gem_dust:10>),// Crushed Arsenic
    Removal(<nuclearcraft:gem_dust:11>),// Crushed End Stone
	Removal(<nuclearcraft:geiger_block>),
    //Removal(<nuclearcraft:heat_exchanger_condenser_tube_copper>),
    //Removal(<nuclearcraft:heat_exchanger_condenser_tube_hard_carbon>),
    //Removal(<nuclearcraft:heat_exchanger_condenser_tube_thermoconducting>),
    //Removal(<nuclearcraft:heat_exchanger_controller>),
    //Removal(<nuclearcraft:heat_exchanger_frame>),
    //Removal(<nuclearcraft:heat_exchanger_glass>),
    //Removal(<nuclearcraft:heat_exchanger_tube_copper>),
    //Removal(<nuclearcraft:heat_exchanger_tube_hard_carbon>),
    //Removal(<nuclearcraft:heat_exchanger_tube_thermoconducting>),
    //Removal(<nuclearcraft:heat_exchanger_vent>),
    //Removal(<nuclearcraft:heat_exchanger_wall>),
    Removal(<nuclearcraft:helm_hazmat>),
	Removal(<nuclearcraft:ingot:8>, true),  // Graphite Ingot
    Removal(<nuclearcraft:ingot:9>, true),  // Beryllium Ingot
	Removal(<nuclearcraft:ingot:10>, true), // Zirconium Ingot
    Removal(<nuclearcraft:ingot:11>, true), // Manganese Ingot
	Removal(<nuclearcraft:ingot:12>, true), // Aluminum Ingot
	Removal(<nuclearcraft:ingot:13>, true), // Silver Ingot
	Removal(<nuclearcraft:ingot_block:8>),  // Graphite Block
	Removal(<nuclearcraft:ingot_block:9>),  // Beryllium Block
	Removal(<nuclearcraft:ingot_block:10>), // Zirconium Block
	Removal(<nuclearcraft:ingot_block:11>), // Manganese Block
	Removal(<nuclearcraft:ingot_block:12>), // Aluminum Block
	Removal(<nuclearcraft:ingot_block:13>), // Silver Block
    Removal(<nuclearcraft:ingot_oxide>, true),    // Thorium Oxide Ingot
    Removal(<nuclearcraft:ingot_oxide:1>, true),  // Uranium Oxide Ingot
    Removal(<nuclearcraft:ingot_oxide:2>, true),  // Manganese Oxide Ingot
    Removal(<nuclearcraft:ingot_oxide:3>, true),  // Manganese Dioxide Ingot
    Removal(<nuclearcraft:legs_hazmat>),
    Removal(<nuclearcraft:lithium:0>), // all lithium isotopes
    Removal(<nuclearcraft:lithium:1>),
    Removal(<nuclearcraft:lithium:2>),
    Removal(<nuclearcraft:lithium:3>),
    Removal(<nuclearcraft:lithium_ion_battery_advanced>),
    Removal(<nuclearcraft:lithium_ion_battery_basic>),
    Removal(<nuclearcraft:lithium_ion_battery_du>),
    Removal(<nuclearcraft:lithium_ion_battery_elite>),
    Removal(<nuclearcraft:lithium_ion_cell>),
	Removal(<nuclearcraft:machine_interface>),
	Removal(<nuclearcraft:part:0>),
	Removal(<nuclearcraft:part:1>),
	Removal(<nuclearcraft:part:2>),
	Removal(<nuclearcraft:part:3>),
	Removal(<nuclearcraft:part:4>),  // solenoid
    Removal(<nuclearcraft:part:5>),  // Magnesium Diboride Solenoid
    Removal(<nuclearcraft:part:6>),  // Bioplastic
	Removal(<nuclearcraft:part:7>),  // servomotor
	Removal(<nuclearcraft:part:8>),  // motor
	Removal(<nuclearcraft:part:9>),  // linear actuator
	Removal(<nuclearcraft:part:10>),
    Removal(<nuclearcraft:part:11>), // Empty Frame
    Removal(<nuclearcraft:part:12>),
	Removal(<nuclearcraft:part:13>), // Silicon Carbide Fiber
    Removal(<nuclearcraft:portable_ender_chest>),
    Removal(<nuclearcraft:radiation_scrubber>),
	Removal(<nuclearcraft:radiation_badge>),
    Removal(<nuclearcraft:radaway>),
	Removal(<nuclearcraft:radaway_slow>),
    Removal(<nuclearcraft:rad_shielding:0>), // Light Rad Shielding
    Removal(<nuclearcraft:rad_shielding:1>), // Medium Rad Shielding
    Removal(<nuclearcraft:rad_shielding:2>), // Heavy Rad Shielding
    Removal(<nuclearcraft:rad_x>),
    //Removal(<nuclearcraft:salt_fission_beam>),
    //Removal(<nuclearcraft:salt_fission_computer_port>),
    //Removal(<nuclearcraft:salt_fission_distributor>),
    //Removal(<nuclearcraft:salt_fission_frame>),
    //Removal(<nuclearcraft:salt_fission_glass>),
    //Removal(<nuclearcraft:salt_fission_heater>),
    //Removal(<nuclearcraft:salt_fission_moderator>),
    //Removal(<nuclearcraft:salt_fission_redstone_port>),
    //Removal(<nuclearcraft:salt_fission_retriever>),
    //Removal(<nuclearcraft:salt_fission_vent>),
    //Removal(<nuclearcraft:salt_fission_vessel>),
    //Removal(<nuclearcraft:salt_fission_wall>),
    Removal(<nuclearcraft:solar_panel_advanced>),
    Removal(<nuclearcraft:solar_panel_basic>),
    Removal(<nuclearcraft:solar_panel_du>),
    Removal(<nuclearcraft:solar_panel_elite>),
    Removal(<nuclearcraft:tiny_dust_lead>),
    //Removal(<nuclearcraft:turbine_controller>),
    //Removal(<nuclearcraft:turbine_dynamo_coil:0>),
    //Removal(<nuclearcraft:turbine_dynamo_coil:1>),
    //Removal(<nuclearcraft:turbine_dynamo_coil:2>),
    //Removal(<nuclearcraft:turbine_dynamo_coil:3>),
    //Removal(<nuclearcraft:turbine_dynamo_coil:4>),
    //Removal(<nuclearcraft:turbine_dynamo_coil:5>),
    //Removal(<nuclearcraft:turbine_frame>),
    //Removal(<nuclearcraft:turbine_glass>),
    //Removal(<nuclearcraft:turbine_inlet>),
    //Removal(<nuclearcraft:turbine_outlet>),
    //Removal(<nuclearcraft:turbine_rotor_bearing>),
    //Removal(<nuclearcraft:turbine_rotor_blade_extreme>),
    //Removal(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>),
    //Removal(<nuclearcraft:turbine_rotor_blade_steel>),
    //Removal(<nuclearcraft:turbine_rotor_shaft>),
    //Removal(<nuclearcraft:turbine_rotor_stator>),
    //Removal(<nuclearcraft:turbine_wall>),
	Removal(<nuclearcraft:rtg_uranium>),
	Removal(<nuclearcraft:rtg_plutonium>),
	Removal(<nuclearcraft:rtg_americium>),
	Removal(<nuclearcraft:rtg_californium>),
    Removal(<nuclearcraft:upgrade:0>), // Speed Upgrade (NC Machines)
    Removal(<nuclearcraft:upgrade:1>), // Energy Upgrade (NC Machines)
    Removal(<nuclearcraft:voltaic_pile_advanced>),
    Removal(<nuclearcraft:voltaic_pile_basic>),
    Removal(<nuclearcraft:voltaic_pile_du>),
    Removal(<nuclearcraft:voltaic_pile_elite>),
	Removal(<minecraft:spawn_egg>.withTag({EntityTag: {id: "nuclearcraft:feral_ghoul"}})),
	//Removal(<nuclearcraft:helium_collector>),
	//Removal(<nuclearcraft:helium_collector_compact>),
	//Removal(<nuclearcraft:helium_collector_dense>),
	//Removal(<nuclearcraft:cobblestone_generator>),
	//Removal(<nuclearcraft:cobblestone_generator_compact>),
	//Removal(<nuclearcraft:cobblestone_generator_dense>),
	//Removal(<nuclearcraft:water_source>),
	//Removal(<nuclearcraft:water_source_compact>),
	//Removal(<nuclearcraft:water_source_dense>),
	//Removal(<nuclearcraft:nitrogen_collector>),
	//Removal(<nuclearcraft:nitrogen_collector_compact>),
	//Removal(<nuclearcraft:nitrogen_collector_dense>),
	Removal(<nuclearcraft:dominos>),
	Removal(<nuclearcraft:graham_cracker>),
	Removal(<nuclearcraft:roasted_cocoa_beans>),
	Removal(<nuclearcraft:ground_cocoa_nibs>),
	Removal(<nuclearcraft:cocoa_butter>),
	Removal(<nuclearcraft:cocoa_solids>),
	Removal(<nuclearcraft:unsweetened_chocolate>),
	Removal(<nuclearcraft:dark_chocolate>),
	Removal(<nuclearcraft:milk_chocolate>),
	Removal(<nuclearcraft:gelatin>),
	Removal(<nuclearcraft:marshmallow>),
	Removal(<nuclearcraft:smore>),
	Removal(<nuclearcraft:moresmore>)
] as Removal[];      

for removal in removals {
    if(removal.hasFurnace) {
        furnace.remove(removal.item);
    }
    mods.jei.JEI.removeAndHide(removal.item);
}

zenClass Material {
    var name as string = "";
    var fissileMetas as int[] = [];
    var fuelMetas as int[] = [];
    var depletedFuelMetas as int[] = [];

    zenConstructor(
        name as string,
        fissileMetas as int[],
        fuelMetas as int[],
        depletedFuelMetas as int[])
    {
        this.name = name;
        this.fissileMetas = fissileMetas;
        this.fuelMetas = fuelMetas;
        this.depletedFuelMetas = depletedFuelMetas;
    }

    function fissileItem(meta as int) as IItemStack {
        return itemUtils.getItem("nuclearcraft:" + this.name, meta);
    }

    function fuelItem(meta as int) as IItemStack {
        return itemUtils.getItem("nuclearcraft:fuel_" + this.name, meta);
    }

    function depletedFuelItem(meta as int) as IItemStack {
        return itemUtils.getItem("nuclearcraft:depleted_fuel_" + this.name, meta);
    }

}

// oxides are odd-valued metadata values beginning with 1.
var fuelObjs as Material[] = [
    Material("americium",   [1,3,5,7,9,11], [1,3], [1,3]),
    Material("berkelium",   [1,3,5,7],      [1,3], [1,3]),
    Material("californium", [1,3,5,7,9,11,13,15], [1,3,5,7], [1,3,5,7]),
    Material("curium",      [1,3,5,7,9,11,13,15], [1,3,5,7,9,11], [1,3,5,7,9,11]),
    Material("neptunium",   [1,3,5,7], [1,3], [1,3]),
    Material("plutonium",   [1,3,5,7,9,11,13,15], [1,3,5,7], [1,3,5,7]),
    Material("thorium",     [1,3,5,7], [1,], [1,]),
    Material("uranium",     [1,3,5,7,9,11], [1,3,5,7], [1,3,5,7]),
    Material("mixed_oxide", [], [0,1], [0,1]),
    Material("ic2",         [], [], [0,1]),
];

for fuelObj in fuelObjs {
    // Clean up oxide fissiles
    for meta in fuelObj.fissileMetas {
        var oxide   = fuelObj.fissileItem(meta);
        var regular = fuelObj.fissileItem(meta - 1);

        // remove de-oxidation smelting?
        furnace.remove(regular, oxide);

        // remove the oxide fissile recipe from the Chemical Bath
        //chemical_bath.findRecipe(16, [regular], [<liquid:oxygen>]).remove();

        // base fissiles have no crafting table recipe so just hide them
        mods.jei.JEI.hide(oxide);
    }

    // Clean up oxide fissile fuels
    for meta in fuelObj.fuelMetas {
        var oxide   = fuelObj.fuelItem(meta);
        var regular = fuelObj.fuelItem(meta - 1);

        // Remove deoxidation smelting recipes
        furnace.remove(regular, oxide);

        // remove the oxide fuel split recipe from the TC
        thermal_centrifuge.findRecipe(48, [oxide], null).remove();

        // remove the oxide fuel recipe from the Chemical Bath
        //chemical_bath.findRecipe(32, [regular], [<liquid:oxygen>]).remove();

        // remove the JEI entry and crafting table recipe
        mods.jei.JEI.removeAndHide(oxide);
    }

    // Clean up oxide depleted fuels
    for meta in fuelObj.depletedFuelMetas {
        var oxide   = fuelObj.depletedFuelItem(meta);
        var regular = fuelObj.depletedFuelItem(meta - 1);

        // Remove deoxidation smelting recipes
        furnace.remove(regular, oxide);

        // hide from JEI but there's no table recipes
        mods.jei.JEI.hide(oxide);

        // remove the depleted oxide fuel recipe from the Chemical Bath
        //chemical_bath.findRecipe(32, [regular], [<liquid:oxygen>]).remove();
		
        // remove oxide recipes from the fission reactor recipe list
        mods.nuclearcraft.fission.removeRecipeWithOutput([oxide]);

        // Remove oxide depleted fuel recipes from the centrifuge
        // One of the ic2 ones threw a null here.
        val cr as Recipe = centrifuge.findRecipe(24, [oxide], null);
        if(!isNull(cr)) {
            cr.remove();
        }
    }
}

// Unused NC fluid tile things to purge from JEI
val ncFluids as string[] = [
    "alugentum",
    "alumina",
    "aluminum",
    "arsenic",
    "bas",
    "bef2",
    "borax_solution",
    "boric_acid",
    "boron",
    "boron10",
    "boron11",
    "boron_nitride_solution",
    "calcium_sulfate_solution",
    //"condensate_water",
    "diborane",
    "ethanol",
    "ethene",
    //"exhaust_steam",
    "ferroboron",
    "flibe",
    "fluorite_water",
    "fluoromethane",
    "hard_carbon",
    //"high_pressure_steam",
    "hydrofluoric_acid",
    "koh",
    "lif",
    "liquidhelium",
    "liquid_nitrogen",
    "lithium",
    "lithium6",
    "lithium7",
    //"low_pressure_steam",
    //"low_quality_steam",
    "manganese_dioxide",
    "milk",
    "nak",
    "nak_hot",
    "naoh",
    "neutron",
    "oxygen_difluoride",
    "plasma",
    "potassium_fluoride_solution",
    "potassium_hydroxide_solution",
    //"preheated_water",
    "radaway",
    "radaway_slow",
    "sic_vapor",
    "sodium_fluoride_solution",
    "sodium_hydroxide_solution",
    "sulfur",
    "tough"
] as string[];

for fluid in ncFluids {

    // get rid of NC's weird fluid tile things
    var item = itemUtils.getItem("nuclearcraft:fluid_" + fluid);
    if(!isNull(item)) {
        mods.jei.JEI.hide(item);
    }

    purgeFluidFromJEI(fluid);
}

val sharedFluids as string[] = [
    "ammonia",
    "beryllium",
    "carbon_dioxide",
    "carbon_monoxide",
    "corium",
    "deuterium",
    "fluorine",
    "helium",
    "helium3",
    "hydrogen",
    "manganese",
    "methanol",
    "nitrogen",
    "oxygen",
    "potassium",
    "silver",
    "sodium",
    "sulfur_dioxide",
    "sulfuric_acid",
    "sulfur_trioxide",
    "tritium",
	"steel",
	"coal",
	"chocolate_liquor",
	"cocoa_butter",
	"unsweetened_chocolate",
	"dark_chocolate",
	"milk_chocolate",
	"sugar",
	"gelatin",
	"hydrated_gelatin",
	"marshmallow"
] as string[];

// these ones overlap other mods's fluids. Just remove the weird tile item
for fluid in sharedFluids {
    // get rid of NC's weird fluid tile things
    var item = itemUtils.getItem("nuclearcraft:fluid_" + fluid);
    if(!isNull(item)) {
        mods.jei.JEI.hide(item);
    }
}

// End of mass removals.