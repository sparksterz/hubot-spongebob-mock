# Description:
#   spongemock will change your typed text iNto SOmeThIng lIkE tHIs
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot spongemock - pastes in a random table flip gif

tweak = (letter) ->
  if Math.random() < 0.5 then letter.toLowerCase() else letter.toUpperCase();

mock = (phrase) ->
  phrase.split("").map(tweak).join("");

module.exports = (robot) ->
  robot.respond /spongemock (.*)/i, (msg) ->
    sentence = msg.match[1];
    msg.send(mock(sentence));