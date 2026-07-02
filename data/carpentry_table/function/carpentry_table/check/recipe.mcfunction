# パターンのデータを入手
    data modify storage carpentry_table: Check.Sample set from storage carpentry_table: Check.List[0].Pattern

# データが一致するかどうかを確認
    execute store success score #C_Table.Check C_Table.Global run data modify storage carpentry_table: Check.Sample set from storage carpentry_table: Slots

# データが一致するなら完成品を配置
    execute unless score #C_Table.Check C_Table.Global matches 1 run return run function carpentry_table:carpentry_table/check/set_result

# 一致しないのなら再起、もしくは空白に
    execute if score #C_Table.Check C_Table.Global matches 1 run return run function carpentry_table:carpentry_table/check/mismatch
