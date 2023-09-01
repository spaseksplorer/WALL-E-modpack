#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IBlockPos;
import mods.contenttweaker.BlockPos;
import crafttweaker.util.Position3f;
import crafttweaker.util.IRandom;
import mods.contenttweaker.ResourceLocation;

var trashBlockArray = [
	"trashBlock00",
	"trashBlock01",
	"trashBlock02",
	"trashBlock03",
	"trashBlock04",
	"trashBlock05",
	"trashBlock06",
	"trashBlock07",
	"trashBlock08",
	"trashBlock09",
	"trashBlock10",
	"trashBlock11",
	"trashBlock12",
	"trashBlock13",
	"trashBlock14"
] as string[];

for i, trashBlock in trashBlockArray {
	var trashvar = VanillaFactory.createBlock(trashBlockArray[i], <blockmaterial:ground>);
	trashvar.setBlockHardness(2.0);
	trashvar.setToolLevel(0);
	trashvar.setBlockSoundType(<soundtype:ground>);
	trashvar.onBlockBreak = function(world, blockPos, blockState){
		if (!world.isRemote()) {
			var shouldSpawn = world.random.nextInt(200);
			if shouldSpawn==1 {
				var blockPost = crafttweaker.util.Position3f.create(blockPos.x+0.5f, blockPos.y, blockPos.z+0.5f).asBlockPos();
				<entity:minecraft:silverfish>.spawnEntity(world, blockPost);
			}
			return;
		}
	};
	trashvar.register();
}