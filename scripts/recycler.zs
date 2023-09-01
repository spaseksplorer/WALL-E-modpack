#priority 98

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

global recycler as RecipeMap = FactoryRecipeMap.start("recycler")
        .minInputs(1)
        .maxInputs(1)
        .minOutputs(1)
        .maxOutputs(9)
        .maxFluidInputs(0)
        .maxFluidOutputs(0)
        .build();

val id = 32000;
val loc = "recycler";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CCC", "CCC", "CCC")
            .aisle("CCC", "C#C", "CGC")
            .aisle("CCC", "CSC", "CCC")
            .where("S", controller.self())
            .where("G", CTPredicate.states(<metastate:gregtech:multiblock_casing:2>))
            .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:4>).setMinGlobalLimited(9) | controller.autoAbilities())
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(recycler)
    .withBaseTexture(<metastate:gregtech:metal_casing:4>)
    .buildAndRegister();

recipes.addShaped("recycler", <metaitem:multiblocktweaker:recycler>, [
    [<metaitem:conveyor.module.mv>, <metaitem:toolHeadWrenchSteel>, <metaitem:sensor.mv>],
    [<ore:circuitMv>, <metaitem:hull.mv>, <ore:circuitMv>],
    [<metaitem:robot.arm.mv>, <metaitem:rotorSteel>, <metaitem:electric.piston.mv>]
]);