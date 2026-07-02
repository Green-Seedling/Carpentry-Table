# 常にTPさせ、動かないように
    execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0

# GUI操作
    function carpentry_table:carpentry_table/gui

# タグ削除
    tag @s remove CanCrafting
