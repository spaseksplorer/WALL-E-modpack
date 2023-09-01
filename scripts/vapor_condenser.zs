import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

global vapor_condenser as RecipeMap = FactoryRecipeMap.start("vapor_condenser")
        .minInputs(0)
        .maxInputs(0)
        .minOutputs(0)
        .maxOutputs(0)
        .maxFluidInputs(1)
        .maxFluidOutputs(1)
        .build();
		
val id = 32001;
val loc = "vapor_condenser";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(" B ", " B ", "   ", "   ", " B ")
            .aisle("BCB", "BSB", " C ", " B ", "BBB")
            .aisle(" B ", "   ", "   ", "   ", " B ")
            .where("S", controller.self())
            .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:1>) | controller.autoAbilities())
			.where("B", <minecraft:iron_bars>)
            .where(" ", IBlockInfo.EMPTY)
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(vapor_condenser)
    .withBaseTexture(<metastate:gregtech:machine_casing:1>)
    .buildAndRegister();

recipes.addShaped("vapor_condenser", <metaitem:multiblocktweaker:vapor_condenser>, [
    [null, <minecraft:iron_bars>, null],
    [<minecraft:iron_bars>, <metaitem:hull.lv>, <minecraft:iron_bars>],
    [null, <minecraft:iron_bars>, null]
]);

vapor_condenser.recipeBuilder()
	.fluidInputs(<liquid:air>*1000)
	.fluidOutputs(<liquid:water>*100)
	.EUt(1)
	.duration(20)
	.buildAndRegister();

vapor_condenser.recipeBuilder()
	.fluidInputs(<liquid:air>*8000)
	.fluidOutputs(<liquid:water>*1000)
	.EUt(1)
	.duration(20)
	.buildAndRegister();