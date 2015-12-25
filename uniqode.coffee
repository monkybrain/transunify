readline = require "linebyline"
args = require("yargs").argv._
dictionary = require "./dictionary"
Parser = require "./parser"

parser = new Parser dictionary

uniqode =
  log: (data) ->
    output = []
    # if typeof data is "object"
    # TODO: CREATE UNPARSER!

filename = args[0]
lines = readline filename

log = (data) ->
  console.log data

lines.on 'line', (line, count) ->
  # log '# ' + line
  log parser.parse line
  # log ""
