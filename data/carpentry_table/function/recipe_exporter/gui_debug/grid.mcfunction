# アイテムがあるのであればの処理
    $execute if items entity @s container.$(slot) * positioned as @p run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1b},Tags:["GUIDebugger"]}
    $execute if items entity @s container.$(slot) * run data modify entity @e[type=item,tag=GUIDebugger,tag=!DebugInit,sort=nearest,limit=1] Item set from entity @s Items[{Slot:$(slot)b}]
    $execute if items entity @s container.$(slot) * run tag @e[type=item,tag=GUIDebugger,tag=!DebugInit,sort=nearest,limit=1] add DebugInit

# 直接埋める
    $item replace entity @s container.$(slot) with white_stained_glass_pane[minecraft:item_name="",minecraft:custom_data={GUISpace:1b},minecraft:tooltip_display={hide_tooltip:1b}]
