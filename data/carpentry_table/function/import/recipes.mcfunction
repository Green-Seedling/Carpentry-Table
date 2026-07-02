# 他のデータパックからレシピを導入
    function #carpentry_table:import_recipes

# 直接エクスポートしたレシピを導入
    function carpentry_table:import/original/

# レシピを導入
    data modify storage carpentry_table: Recipes set from storage carpentry_table: Import

# Importタグを削除
    data remove storage carpentry_table: Import
    