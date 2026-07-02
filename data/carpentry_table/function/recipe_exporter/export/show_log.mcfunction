# メッセージを表示
    tellraw @a [{translate:"chat.carpentry_table.export_success",fallback:"Recipe Exporter: レシピのエクスポートに成功しました。\nこのレシピをデータパックに組み込む場合は、以下のメッセージをgame outputからコピーして、任意のmcfunctionファイルに貼り付けてください。\n"}]
    tellraw @a [{text:"data modify storage carpentry_table: Import append value ","color":"aqua"},{nbt:"Export.Data",storage:"carpentry_table:"}]

# 一応ここでサウンドを流す
    playsound entity.player.levelup master @a ~ ~ ~ 2147483647 2
