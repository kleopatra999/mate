# Description:
#   Says the link of the hubot-scripts directory
#
# Commands:
#   hubot hubot-scripts

module.exports = (robot) ->
  robot.respond /HUBOT-SCRIPTS$/i, (msg) ->
    msg.send "https://github.com/github/hubot-scripts/tree/master/src/scripts"
