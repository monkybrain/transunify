readline = require "linebyline"
colors = require "colors"
fs = require "fs"
args = require("yargs").argv._
# dictionary = require "./dictionary"
Parser = require "./parser"

# Helper
log = (data) ->
  console.log data

error = (data) ->
  console.error data.red

# New parser
# parser = new Parser dictionary
parser = new Parser()

# Get filename(s)
filename = {}
if args[0]?
  filename.input = args[0]
else
  error "Error: no input file"
  return

if args[1]?
  filename.output = args[1]

# Read lines
lines = readline filename.input

parsed = []

lines.on 'error', (err) ->
  error "Error: could not read file"

# On line read -> parse line
lines.on 'line', (line, count) ->
  parsed.push parser.parse line

lines.on 'end', () ->
  output = parsed.join("\n") + "\n"
  if filename.output?
    fs.writeFileSync filename.output, output, 'utf8'
  else
    log output



