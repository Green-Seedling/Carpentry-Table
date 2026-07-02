# アイテム削除
    scoreboard players remove @s C_Table.Slot_Count_1 1
    scoreboard players remove @s C_Table.Slot_Count_2 1
    scoreboard players remove @s C_Table.Slot_Count_3 1
    scoreboard players remove @s C_Table.Slot_Count_4 1
    scoreboard players remove @s C_Table.Slot_Count_5 1
    scoreboard players remove @s C_Table.Slot_Count_6 1
    scoreboard players remove @s C_Table.Slot_Count_7 1
    scoreboard players remove @s C_Table.Slot_Count_8 1
    scoreboard players remove @s C_Table.Slot_Count_9 1

    execute if entity @s[scores={C_Table.Slot_Count_1=1..}] store result entity @s Items[{Slot:1b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_1
    execute if entity @s[scores={C_Table.Slot_Count_2=1..}] store result entity @s Items[{Slot:2b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_2
    execute if entity @s[scores={C_Table.Slot_Count_3=1..}] store result entity @s Items[{Slot:3b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_3
    execute if entity @s[scores={C_Table.Slot_Count_4=1..}] store result entity @s Items[{Slot:10b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_4
    execute if entity @s[scores={C_Table.Slot_Count_5=1..}] store result entity @s Items[{Slot:11b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_5
    execute if entity @s[scores={C_Table.Slot_Count_6=1..}] store result entity @s Items[{Slot:12b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_6
    execute if entity @s[scores={C_Table.Slot_Count_7=1..}] store result entity @s Items[{Slot:19b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_7
    execute if entity @s[scores={C_Table.Slot_Count_8=1..}] store result entity @s Items[{Slot:20b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_8
    execute if entity @s[scores={C_Table.Slot_Count_9=1..}] store result entity @s Items[{Slot:21b}].count byte 1.0 run scoreboard players get @s C_Table.Slot_Count_9

    execute if entity @s[scores={C_Table.Slot_Count_1=..0}] run data remove entity @s Items[{Slot:1b}]
    execute if entity @s[scores={C_Table.Slot_Count_2=..0}] run data remove entity @s Items[{Slot:2b}]
    execute if entity @s[scores={C_Table.Slot_Count_3=..0}] run data remove entity @s Items[{Slot:3b}]
    execute if entity @s[scores={C_Table.Slot_Count_4=..0}] run data remove entity @s Items[{Slot:10b}]
    execute if entity @s[scores={C_Table.Slot_Count_5=..0}] run data remove entity @s Items[{Slot:11b}]
    execute if entity @s[scores={C_Table.Slot_Count_6=..0}] run data remove entity @s Items[{Slot:12b}]
    execute if entity @s[scores={C_Table.Slot_Count_7=..0}] run data remove entity @s Items[{Slot:19b}]
    execute if entity @s[scores={C_Table.Slot_Count_8=..0}] run data remove entity @s Items[{Slot:20b}]
    execute if entity @s[scores={C_Table.Slot_Count_9=..0}] run data remove entity @s Items[{Slot:21b}]

# アイテムを出現させる
    summon item ~ ~1 ~ {CustomNameVisible:1b,Age:-32768s,Invulnerable:1b,Item:{id:"minecraft:barrier",count:1b},PickupDelay:10s,NoGravity:1b,Tags:["CraftedItem","CarpentryItemInit"]}

# アイテムのInit処理
    execute as @e[type=item,tag=CraftedItem,tag=CarpentryItemInit] run function carpentry_table:carpentry_table/crafting/item_init

# サウンド
    playsound block.note_block.pling block @a ~ ~ ~ 2 2
    playsound block.anvil.use block @a ~ ~ ~ 2 2

# パーティクル
    particle crit ~ ~0.8 ~ 0 0 0 0.1 16 normal

# タグ操作
    tag @s remove CanCrafting
    tag @s add Crafting