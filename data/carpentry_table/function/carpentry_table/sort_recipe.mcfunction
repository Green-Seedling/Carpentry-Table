# 不必要な要素を全て消す
    data remove storage carpentry_table: Slots[{Slot:0b}]
    data remove storage carpentry_table: Slots[{Slot:4b}]
    data remove storage carpentry_table: Slots[{Slot:5b}]
    data remove storage carpentry_table: Slots[{Slot:6b}]
    data remove storage carpentry_table: Slots[{Slot:7b}]
    data remove storage carpentry_table: Slots[{Slot:8b}]
    data remove storage carpentry_table: Slots[{Slot:9b}]
    data remove storage carpentry_table: Slots[{Slot:13b}]
    data remove storage carpentry_table: Slots[{Slot:14b}]
    data remove storage carpentry_table: Slots[{Slot:15b}]
    data remove storage carpentry_table: Slots[{Slot:16b}]
    data remove storage carpentry_table: Slots[{Slot:17b}]
    data remove storage carpentry_table: Slots[{Slot:18b}]
    data remove storage carpentry_table: Slots[{Slot:22b}]
    data remove storage carpentry_table: Slots[{Slot:23b}]
    data remove storage carpentry_table: Slots[{Slot:24b}]
    data remove storage carpentry_table: Slots[{Slot:25b}]
    data remove storage carpentry_table: Slots[{Slot:26b}]

# 現在の個数を取得
    execute store result score @s C_Table.Slot_Count_1 run data get storage carpentry_table: Slots[{Slot:1b}].count
    execute store result score @s C_Table.Slot_Count_2 run data get storage carpentry_table: Slots[{Slot:2b}].count
    execute store result score @s C_Table.Slot_Count_3 run data get storage carpentry_table: Slots[{Slot:3b}].count
    execute store result score @s C_Table.Slot_Count_4 run data get storage carpentry_table: Slots[{Slot:10b}].count
    execute store result score @s C_Table.Slot_Count_5 run data get storage carpentry_table: Slots[{Slot:11b}].count
    execute store result score @s C_Table.Slot_Count_6 run data get storage carpentry_table: Slots[{Slot:12b}].count
    execute store result score @s C_Table.Slot_Count_7 run data get storage carpentry_table: Slots[{Slot:19b}].count
    execute store result score @s C_Table.Slot_Count_8 run data get storage carpentry_table: Slots[{Slot:20b}].count
    execute store result score @s C_Table.Slot_Count_9 run data get storage carpentry_table: Slots[{Slot:21b}].count

# 個数のデータは消しておく
    data remove storage carpentry_table: Slots[].count