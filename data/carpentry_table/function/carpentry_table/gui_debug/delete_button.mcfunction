# 召喚された直後でなければ実行する
    execute unless entity @n[tag=CarpentryTableSet] run function carpentry_table:carpentry_table/delete

# アイテムを置く
    item replace entity @s container.26 with barrier[minecraft:item_name={"translate":"gui.carpentry_table.delete",fallback:"片付ける","color":"red","italic":false},minecraft:custom_data={GUISpace:1b}]
