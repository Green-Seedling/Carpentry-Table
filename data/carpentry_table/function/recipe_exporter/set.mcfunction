#ここにブロックとか作業台があるかどうか
execute if entity @e[tag=9977RecipeExporter,distance=..0.05] run tag @s add PlacedHere
execute unless block ~ ~ ~ #carpentry_table:no_collision run tag @s add PlacedHere

#召喚
execute unless entity @s[tag=PlacedHere] run summon chest_minecart ~ ~ ~ {CustomName:{"text":"Recipe Exporter"},CustomNameVisible:1b,DisplayOffset:4,Tags:["9977RecipeExporter"],NoGravity:1b,Silent:1b,Invulnerable:1b,DisplayState:{Name:"minecraft:crafter"}}
execute unless entity @s[tag=PlacedHere] run execute as @e[tag=9977RecipeExporter,sort=nearest,limit=1] at @s run function carpentry_table:recipe_exporter/gui
execute unless entity @s[tag=PlacedHere] run setblock ~ ~ ~ air

#サウンド
execute unless entity @s[tag=PlacedHere] run playsound block.anvil.place block @a ~ ~ ~ 2 1.5

#もしすでに設置されていたら
execute if entity @s[tag=PlacedHere] run tellraw @p {"text":"<警告> ここには設置できません。","color":"red"}
execute if entity @s[tag=PlacedHere] run playsound block.note_block.harp block @a ~ ~ ~ 2 0
execute if entity @s[tag=PlacedHere] run loot spawn ~ ~ ~ loot carpentry_table:items/recipe_exporter

#コアのキル
tag @s remove PlacedHere
kill @s[tag=RecipeExporterSet]
