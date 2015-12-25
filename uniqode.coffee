readline = require "linebyline"
args = require("yargs").argv._
dictionary = require "./js/dictionary"
Parser = require "./js/parser"

parser = new Parser(dictionary)

filename = args[0]
lines = readline filename

log = (data) ->
  console.log data

lines.on 'line', (line, count) ->
  log parser.parse line
#  log '# ' + line
#  log parser.parse line
#  log ""
