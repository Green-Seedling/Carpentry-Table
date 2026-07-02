# 召喚された直後でなければ実行する
    execute unless entity @n[tag=RecipeExporterSet] run function carpentry_table:recipe_exporter/delete

# アイテムを置く
    item replace entity @s container.26 with barrier[minecraft:item_name={"text":"片付ける","color":"red","italic":false},minecraft:custom_data={GUISpace:1b}]
