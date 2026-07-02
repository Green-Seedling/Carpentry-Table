# マクロを使いましょう
    execute store result storage carpentry_table: OriginalSlot int 1.0 run scoreboard players get #C_Table.OriginalList C_Table.Global

    function carpentry_table:import/original/add with storage carpentry_table:
    
# スコアの値を1づつ増加
    scoreboard players add #C_Table.OriginalList C_Table.Global 1

# 再起させる
    execute if score #C_Table.OriginalList C_Table.Global < #C_Table.ListCount C_Table.Global run function carpentry_table:import/original/check
