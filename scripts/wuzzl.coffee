# Description:
#   Messing around with Wuzzl Teams.
#
# Commands:
#   hubot wuzzl <member> - Chooses Teams for you
module.exports = (robot) ->
  robot.respond /wuzzl (.*)/i, (msg) ->
    who_wants_to_play = msg.match[1].split(" ")
    who_wants_to_play = shuffle(who_wants_to_play)

    players = [[], []]

    length = who_wants_to_play.length

    for i in [0..length]
      player = who_wants_to_play[i];
      team = i % 2
      players[team].push player

    msg.send "Team1 #{players[0]}"
    msg.send "Team2 #{players[1]}"

shuffle = (o) -> #v1.0
  j = undefined
  x = undefined
  i = o.length

  while i
    j = Math.floor(Math.random() * i)
    x = o[--i]
    o[i] = o[j]
    o[j] = x
  o
