# 先にスコアをリセット
    scoreboard players reset #C_Table.Check C_Table.Global

# 完成品を置く
    data modify entity @s Items[{Slot:16b}] merge from storage carpentry_table: Check.List[0].Result

# GUISpaceのタグを付けておく
    data modify entity @s Items[{Slot:16b}].components."minecraft:custom_data".GUISpace set value 1b

# タグを与える
    tag @s add CanCrafting

# 終了処理を加える
    data remove storage carpentry_table: Check
