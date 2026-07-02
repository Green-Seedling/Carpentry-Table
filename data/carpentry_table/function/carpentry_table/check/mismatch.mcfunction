# 一番前のデータを削除
    data remove storage carpentry_table: Check.List[0]

# 先にスコアをリセット
    scoreboard players reset #C_Table.Check C_Table.Global

# 残っていないなら終了処理
    execute unless data storage carpentry_table: Check.List[0] run item replace entity @s container.16 with air
    execute unless data storage carpentry_table: Check.List[0] run return run data remove storage carpentry_table: Check

# データが残っているのならば再起
    execute if data storage carpentry_table: Check.List[0] run function carpentry_table:carpentry_table/check/recipe
