# 現在のデータを取得
    data modify storage carpentry_table: Slots set from entity @s Items

# データを整理
    function carpentry_table:carpentry_table/sort_recipe

# レシピのデータを一度こっちに移す
    data modify storage carpentry_table: Check.List set from storage carpentry_table: Recipes

# レシピのリストと比較
    function carpentry_table:carpentry_table/check/recipe
