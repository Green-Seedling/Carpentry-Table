#テーブル設置
execute if entity @n[tag=CarpentryTableSet] as @e[tag=CarpentryTableSet] at @s align xyz positioned ~0.5 ~ ~0.5 run function carpentry_table:carpentry_table/set
execute if entity @n[tag=RecipeExporterSet] as @e[tag=RecipeExporterSet] at @s align xyz positioned ~0.5 ~ ~0.5 run function carpentry_table:recipe_exporter/set

#テーブル自体の処理
execute if entity @n[tag=9977CarpentryTable] as @e[tag=9977CarpentryTable] at @s run function carpentry_table:carpentry_table/main
execute if entity @n[tag=9977RecipeExporter] as @e[tag=9977RecipeExporter] at @s run function carpentry_table:recipe_exporter/main

#アイテム削除
clear @a *[minecraft:custom_data~{GUISpace:1b}]
kill @e[type=item,predicate=carpentry_table:space_item]
