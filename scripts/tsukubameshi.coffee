# Description
#   A Hubot scripts that responds 'uranai'
#
# Configuration:
#   None
#
# Commands:
#   tdlkun つくばめし -responds つくばのおすすめレストラン
# Author:
#   siu

module.exports = (robot) ->
  robot.hear /飯屋|つくば飯|つくばめし|ご飯/i,(msg) ->
    days = ["日", "月", "火", "水", "木", "金", "土"]
    d = new Date
    day = d.getDay()
    time = d.getHours()*100 + d.getMinutes()
    meshi = ""
    meshiya = []
    
    
    meshiya[0] = [null, "17002245", "17002245", "17002245", "17002245", "17002245", null, "ranran"]
    meshiya[1] = [null, "11301345", "11301345", "11301345", "11301345", "11301345", "11301345", "夢屋"]
    meshiya[2] = ["18002100", "18002200", "18002200", "18002200", "18002200", "18002200", "18002200", "夢屋"]
    meshiya[3] = ["00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "東大通りの松屋"]
    meshiya[4] = ["00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "西大通りの松屋"]
    meshiya[5] = ["00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "清六屋"]
    meshiya[6] = ["00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "00002400", "ジョイフル"]


    while meshi == ""
      where = Math.floor(Math.random()*(meshiya.length))
      continue if meshiya[where][day] == null
      meshi = meshiya[where][7] if parseInt(meshiya[where][day].slice(0, -4), 10) <= time && time <= parseInt(meshiya[where][day].slice(4), 10)
    msg.send "#{meshi} に行きたい気分ですっ！"