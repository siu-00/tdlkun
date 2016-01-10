module.exports = (robot) ->

  robot.hear /(@tdlkun: 要項)/i,(msg) ->
    msg.send "・ファイル形式は 24bit 44.1kHz の WAVファイル でお願いします。\n・マスターフェーダーにはエフェクトを挿さないこと。\n・曲中のピークの音量が -3db 〜 -6db になるようにしてください。"