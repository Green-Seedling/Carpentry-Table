kill @s
execute unless entity @s[tag=PlacedHere] run playsound block.anvil.destroy block @a ~ ~ ~ 2 2
loot spawn ~ ~ ~ loot carpentry_table:items/recipe_exporter
particle block{block_state:"minecraft:crafter"} ~ ~0.5 ~ 0.2 0.2 0.2 0.01 16 normal
particle block{block_state:"minecraft:iron_block"} ~ ~0.5 ~ 0.2 0.2 0.2 0.01 16 normal