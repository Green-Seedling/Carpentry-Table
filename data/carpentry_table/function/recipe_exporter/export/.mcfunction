# 完成品が設定されていないとき
    execute if items entity @s container.16 *[minecraft:custom_data~{GUISpace:1b}] run return fail

# 完成品が設定されていたとき
    execute unless items entity @s container.16 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/export/main
