# 召喚された直後でなければ実行する
    execute unless entity @n[tag=CarpentryTableSet] run function carpentry_table:carpentry_table/crafting/success

# アイテムがあるのであればの処理
    execute if items entity @s container.14 * run return run function carpentry_table:carpentry_table/gui_debug/return_item {slot:14b}
