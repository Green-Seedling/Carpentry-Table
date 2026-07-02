# レシピの数を取得
    execute store result score #C_Table.ListCount C_Table.Global run data get storage carpentry_table: Original

# 初期値設定
    scoreboard players set #C_Table.OriginalList C_Table.Global 0

# 再起を使って導入していく
    function carpentry_table:import/original/check

# リセット
    scoreboard players reset #C_Table.ListCount
    scoreboard players reset #C_Table.OriginalList

    data remove storage carpentry_table: OriginalList
