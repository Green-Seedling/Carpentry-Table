# 不必要な要素を全て消す
    data remove storage carpentry_table: Export.Raw[{Slot:0b}]
    data remove storage carpentry_table: Export.Raw[{Slot:4b}]
    data remove storage carpentry_table: Export.Raw[{Slot:5b}]
    data remove storage carpentry_table: Export.Raw[{Slot:6b}]
    data remove storage carpentry_table: Export.Raw[{Slot:7b}]
    data remove storage carpentry_table: Export.Raw[{Slot:8b}]
    data remove storage carpentry_table: Export.Raw[{Slot:9b}]
    data remove storage carpentry_table: Export.Raw[{Slot:13b}]
    data remove storage carpentry_table: Export.Raw[{Slot:14b}]
    data remove storage carpentry_table: Export.Raw[{Slot:15b}]
    data remove storage carpentry_table: Export.Raw[{Slot:17b}]
    data remove storage carpentry_table: Export.Raw[{Slot:18b}]
    data remove storage carpentry_table: Export.Raw[{Slot:22b}]
    data remove storage carpentry_table: Export.Raw[{Slot:23b}]
    data remove storage carpentry_table: Export.Raw[{Slot:24b}]
    data remove storage carpentry_table: Export.Raw[{Slot:25b}]
    data remove storage carpentry_table: Export.Raw[{Slot:26b}]

# 先に完成品のデータを抽出
    data modify storage carpentry_table: Export.Data.Result set from storage carpentry_table: Export.Raw[{Slot:16b}]

# さらに要らないデータを削除
    data remove storage carpentry_table: Export.Raw[{Slot:16b}]
    data remove storage carpentry_table: Export.Data.Result.Slot

# 残ったものをそのままパターンとして代入する
    data modify storage carpentry_table: Export.Data.Pattern set from storage carpentry_table: Export.Raw
    data remove storage carpentry_table: Export.Data.Pattern[].count
