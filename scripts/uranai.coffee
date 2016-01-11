# Description
#   A Hubot scripts that responds 'uranai'
#
# Configuration:
#   None
#
# Commands:
#   tdlkun 今日の運勢 -responds 今日の運勢
# Author:
#   siu

module.exports = (robot) ->
  robot.hear /占い|運勢|うらない|uranai|占|おみくじ/i,(msg) ->
    greads = [
      "大吉",
      "中吉",
      "小吉",
      "末吉",
      "凶",
      "大凶",
      "めうキチ"
    ]
    color = "#{("0"+Math.floor(Math.random()*256).toString(16)).slice(-2)}#{("0"+Math.floor(Math.random()*256).toString(16)).slice(-2)}#{("0"+Math.floor(Math.random()*256).toString(16)).slice(-2)}"
    gread = msg.random greads
    msg.send "今日の運勢は #{gread} です。ラッキーカラーは ##{color} です。"
