#priority 87
/*
sifter.recipeBuilder()
	.inputs(<ore:blockTrash>*1)
	.outputs(<contenttweaker:wasteplastic>*1)
	.chancedOutput(<contenttweaker:wasteplastic>, 5000, 1000)
	.chancedOutput(<contenttweaker:wastemetal>, 2000, 500)
	.chancedOutput(<contenttweaker:wasteglass>, 500, 200)
	.duration(100).EUt(16).buildAndRegister();
*/
// Glass
forge_hammer.recipeBuilder()
	.inputs(<contenttweaker:wasteglass>*1)
	.outputs(<contenttweaker:glassshardsdirty>*1)
	.duration(10).EUt(16).buildAndRegister();

ore_washer.recipeBuilder()
	.inputs(<contenttweaker:glassshardsdirty>*1)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<contenttweaker:glassshards>*1)
	.duration(8).EUt(4).buildAndRegister();

macerator.recipeBuilder()
	.inputs(<contenttweaker:glassshards>*1)
	.outputs(<metaitem:dustGlass>*1)
	.duration(400).EUt(2).buildAndRegister();
	
// Plastic
ore_washer.recipeBuilder()
	.inputs(<contenttweaker:wasteplastic>*1)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<contenttweaker:wasteplasticclean>*1)
	.duration(8).EUt(4).buildAndRegister();

macerator.recipeBuilder()
	.inputs(<contenttweaker:wasteplastic>*1)
	.outputs(<contenttweaker:dustplasticdirty>*1)
	.duration(400).EUt(2).buildAndRegister();

macerator.recipeBuilder()
	.inputs(<contenttweaker:wasteplasticclean>*1)
	.outputs(<contenttweaker:dustplastic>*1)
	.duration(400).EUt(2).buildAndRegister();

// Plastic Waste
pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:wasteplastic>*16)
	.circuit(1)
	.outputs(<metaitem:dustAsh>)
	.fluidOutputs(<liquid:oil>*3000)
	.duration(640).EUt(64).buildAndRegister();

pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:wasteplastic>*16)
	.fluidInputs(<liquid:oil>*1000)
	.circuit(2)
	.outputs(<metaitem:dustAsh>)
	.fluidOutputs(<liquid:oil>*6000)
	.duration(640).EUt(64).buildAndRegister();

// Dirty Plastic Pellets
pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:dustplasticdirty>*16)
	.circuit(1)
	.outputs(<metaitem:dustAsh>)
	.fluidOutputs(<liquid:oil>*3000)
	.duration(320).EUt(96).buildAndRegister();

pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:dustplasticdirty>*16)
	.fluidInputs(<liquid:oil>*1000)
	.circuit(2)
	.outputs(<metaitem:dustAsh>)
	.fluidOutputs(<liquid:oil>*6000)
	.duration(320).EUt(96).buildAndRegister();
	
// Clean Plastic Waste
pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:wasteplasticclean>*16)
	.circuit(1)
	.fluidOutputs(<liquid:oil>*4000)
	.duration(640).EUt(64).buildAndRegister();

pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:wasteplasticclean>*16)
	.fluidInputs(<liquid:oil>*1000)
	.circuit(2)
	.fluidOutputs(<liquid:oil>*8000)
	.duration(640).EUt(64).buildAndRegister();

// Clean Plastic Pellets
pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:dustplastic>*16)
	.circuit(1)
	.fluidOutputs(<liquid:oil>*4000)
	.duration(320).EUt(96).buildAndRegister();

pyrolyse_oven.recipeBuilder()
	.inputs(<contenttweaker:dustplastic>*16)
	.fluidInputs(<liquid:oil>*1000)
	.circuit(2)
	.fluidOutputs(<liquid:oil>*8000)
	.duration(320).EUt(96).buildAndRegister();
	
	
	
	
	
	
