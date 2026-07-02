# アイテムが変わっていたら
    execute if entity @s[tag=CanCrafting] unless items entity @s container.14 crafting_table[minecraft:custom_data~{GUISpace:1b}] run function carpentry_table:carpentry_table/gui_debug/crafting_button

# 直接埋める
    execute unless entity @s[tag=CanCrafting] run item replace entity @s container.14 with crafting_table[minecraft:item_name={text:"クラフト不可！",color:"red"},minecraft:custom_data={GUISpace:1b}]
    execute if entity @s[tag=CanCrafting] run item replace entity @s container.14 with crafting_table[minecraft:item_name={text:"クラフト可！",color:"green"},minecraft:custom_data={GUISpace:1b},minecraft:enchantment_glint_override=true]
