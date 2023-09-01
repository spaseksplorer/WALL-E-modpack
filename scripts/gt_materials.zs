#loader gregtech

// import the MaterialBuilder and Material classes for making new materials
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;

var graphite = MaterialRegistry.get("graphite");
graphite.addIngot();
graphite.addFlags("generate_plate","generate_rod","generate_long_rod");

/*
var beryllium = MaterialRegistry.get("beryllium");
beryllium.cableProperties(2048, 2, 4, false);

var magnesium = MaterialRegistry.get("magnesium");
magnesium.addIngot();
magnesium.cableProperties(512, 2, 4, false);
*/