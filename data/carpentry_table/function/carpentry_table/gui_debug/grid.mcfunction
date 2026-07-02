# アイテムがあるのであればの処理
    $execute if items entity @s container.$(slot) * run function carpentry_table:carpentry_table/gui_debug/return_item {slot:$(slot)}

# 直接埋める
    $item replace entity @s container.$(slot) with white_stained_glass_pane[minecraft:item_name="",minecraft:custom_data={GUISpace:1b},minecraft:tooltip_display={hide_tooltip:1b}]
