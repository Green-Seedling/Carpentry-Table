# 現在のデータを取得
    data modify storage carpentry_table: Export.Raw set from entity @s Items

# データを整理する
    function carpentry_table:recipe_exporter/export/sort_recipe

# レシピ管理ストレージに整理したデータを入れる
    data modify storage carpentry_table: Export append from storage carpentry_table: Export.Data

# データをオリジナルのレシピとしてエクスポート
    data modify storage carpentry_table: Original append from storage carpentry_table: Export.Data

# メッセージを表示
    function carpentry_table:recipe_exporter/export/show_log

# レシピの再読み込み
    function carpentry_table:import/recipes

# リセット
    data remove storage carpentry_table: Export
