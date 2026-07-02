# アイテムを返却する
    execute positioned as @p run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1b},Tags:["GUIDebugger"]}
    $data modify entity @e[type=item,tag=GUIDebugger,tag=!DebugInit,sort=nearest,limit=1] Item set from entity @s Items[{Slot:$(slot)b}]
    tag @e[type=item,tag=GUIDebugger,tag=!DebugInit,sort=nearest,limit=1] add DebugInit
