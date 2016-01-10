module.exports = (robot) ->

  robot.hear /(要項)/i,(msg) ->
    msg.send "・ファイル形式は 24bit 44.1kHz の WAVファイル でお願いします。

・マスターフェーダーにはエフェクトを挿さないこと。

・曲中のピークの音量が -3db 〜 -6db になるようにしてください。"