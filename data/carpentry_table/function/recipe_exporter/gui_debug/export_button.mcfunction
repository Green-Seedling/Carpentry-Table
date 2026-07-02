# 召喚された直後でなければ実行する
    execute unless entity @n[tag=RecipeExporterSet] run function carpentry_table:recipe_exporter/export/

# アイテムがあるのであればの処理
    execute if items entity @s container.14 * positioned as @p run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1b},Tags:["GUIDebugger"]}
    execute if items entity @s container.14 * run data modify entity @e[type=item,tag=GUIDebugger,tag=!DebugInit,sort=nearest,limit=1] Item set from entity @s Items[{Slot:14b}]
    execute if items entity @s container.14 * run tag @e[type=item,tag=GUIDebugger,tag=!DebugInit,sort=nearest,limit=1] add DebugInit
