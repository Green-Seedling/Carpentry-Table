# アイテムが変わっていたら
    execute unless items entity @s container.14 knowledge_book[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:recipe_exporter/gui_debug/export_button

# 直接埋める
    execute if items entity @s container.16 *[minecraft:custom_data~{GUISpace:1b}] run item replace entity @s container.14 with knowledge_book[minecraft:item_name={translate:"gui.carpentry_table.export",fallback:"レシピをエクスポート",color:"red"},minecraft:custom_data={GUISpace:1b}]
    execute unless items entity @s container.16 *[minecraft:custom_data~{GUISpace:1b}] run item replace entity @s container.14 with knowledge_book[minecraft:item_name={translate:"gui.carpentry_table.export",fallback:"レシピをエクスポート",color:"green"},minecraft:custom_data={GUISpace:1b},minecraft:enchantment_glint_override=true]
