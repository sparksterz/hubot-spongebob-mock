# Description:
#   spongemock will change the trailing text iNto SOmeThIng lIkE tHIs
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot spongemock - will change the trailing text iNto SOmeThIng lIkE tHIs

tweak = (letter) ->
  if Math.random() < 0.5 then letter.toLowerCase() else letter.toUpperCase();

mock = (phrase) ->
  phrase.split("").map(tweak).join("");

module.exports = (robot) ->
  robot.respond /spongemock (.*)/i, (msg) ->
    sentence = msg.match[1];
    msg.send(mock(sentence));