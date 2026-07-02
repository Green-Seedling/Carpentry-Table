# 完成品のデータをコピーする
    data modify entity @s Item set from entity @e[tag=9977CarpentryTable,sort=nearest,limit=1] Items[{Slot:16b}]
    data remove entity @s Item.components."minecraft:custom_data".GUISpace

# カスタムデータ内が空白であれば消しちゃう
    data modify storage carpentry_table: ResultData set from entity @s Item.components."minecraft:custom_data"
    execute store success score #C_Table.DataCheck C_Table.Global run data modify storage carpentry_table: ResultData set value {}
    execute unless score #C_Table.DataCheck C_Table.Global matches 1 run data remove entity @s Item.components."minecraft:custom_data"

# 名前もコピーする
    data modify entity @s CustomName set from entity @e[tag=9977CarpentryTable,sort=nearest,limit=1] Items[{Slot:16b}].components."minecraft:item_name"
    data modify entity @s CustomName set from entity @e[tag=9977CarpentryTable,sort=nearest,limit=1] Items[{Slot:16b}].components."minecraft:custom_name"

# タグ解除
    tag @s remove CarpentryItemInit

# リセット
    scoreboard players reset #C_Table.DataCheck
    data remove storage carpentry_table: ResultData
