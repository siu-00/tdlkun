# Description
#   A Hubot scripts that responds 'uranai'
#
# Configuration:
#   None
#
# Commands:
#   tdlkun 運勢 -responds 今日の運勢
#   tdlkun うらない -responds 今日の運勢
#   tdlkun おみくじ -responds 今日の運勢
#   tdlkun 占い -responds 今日の運勢
# Author:
#   siu

module.exports = (robot) ->
  robot.hear /運勢|占い|うらない|おみくじ/i,(msg) ->
    greads = [
      "大吉",
      "中吉",
      "小吉",
      "末吉",
      "凶",
      "大凶",
      "めうキチ"
    ]
    color = "#{Math.floor(Math.random()*256).toString(16)}#{Math.floor(Math.random()*256).toString(16)}#{Math.floor(Math.random()*256).toString(16)}"
    gread = msg.random greads
    msg.send "今日の運勢は #{gread} です。ラッキーカラーは ##{color} です。"
