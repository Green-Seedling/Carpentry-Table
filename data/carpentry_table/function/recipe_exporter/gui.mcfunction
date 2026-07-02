# グリッド外に置かれることがないように
    execute unless items entity @s container.0 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:0b}
    execute unless items entity @s container.4 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:4b}
    execute unless items entity @s container.5 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:5b}
    execute unless items entity @s container.6 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:6b}
    execute unless items entity @s container.7 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:7b}
    execute unless items entity @s container.8 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:8b}
    execute unless items entity @s container.9 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:9b}
    execute unless items entity @s container.13 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:13b}
    execute unless items entity @s container.15 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:15b}
    execute unless items entity @s container.17 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:17b}
    execute unless items entity @s container.18 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:18b}
    execute unless items entity @s container.22 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:22b}
    execute unless items entity @s container.23 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:23b}
    execute unless items entity @s container.24 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:24b}
    execute unless items entity @s container.25 *[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/grid {slot:25b}

# ボタンの処理
    function carpentry_table:recipe_exporter/export/button
    execute unless items entity @s container.26 barrier[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/delete_button

# 表示
    execute unless items entity @s container.16 * run item replace entity @s container.16 with light_gray_stained_glass_pane[minecraft:item_name={translate:"gui.carpentry_table.result_place",fallback:"ここに完成品を置いてください。",color:"white"},minecraft:custom_data={GUISpace:1b}]
