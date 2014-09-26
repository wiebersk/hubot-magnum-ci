# Description:
#   Send notifications to the Dev Rooms, just enable the webhook notification on magnum https://github.com/magnumci/documentation/blob/master/webhooks.md -> 'Webhook notification'
#
# Dependencies:
#
# Configuration:
#   None
#
# Commands:
#   None
#
# URLS:
#   POST /hubot/magnum-ci
#     - process the standard payload parameter
#
# Author:
#   wiebersk

url = require('url')
rooms = process.env.HUBOT_DEV_ROOMS.split(",")
module.exports = (robot) ->

  robot.router.post "/hubot/magnum-ci", (req, res) ->
    rooms.forEach (room, i) ->
      try
        payload = JSON.parse req.body.payload
        user = {}
        user.room = room
        user.type = payload.type if payload.type

        robot.send user, "#{payload.title}"

      catch error
        console.log "travis hook error: #{error}. Payload: #{req.body.payload}"

      res.end JSON.stringify {
        send: true #some client have problems with and empty response, sending that response ion sync makes debugging easier
      }