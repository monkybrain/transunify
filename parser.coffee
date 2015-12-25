# Helper functions
log = (data) ->
  console.log data

### PARSER ###
class Parser

  constructor: (dict) ->
    @dict = dict

  toDecimal = (code) ->
    "_d" + code

  unicode: (line) ->
    newLine = []
    for char in line
      code = char.charCodeAt(0)
      if code > 256
        newLine.push toDecimal(code)
      else
        newLine.push char
    newLine.join ""

  parse: (line) ->

    # Parse syntax
    ###for entry, def of @dict.syntax
      line = line.replace def.pattern, def.output
    line###

    # Parse syntax

    ### FIND NON-STRING SECTIONS ###

    # Define regular expression
    pattern = /'|"/g

    # Initialize array of position (start at 0)
    positions = [0]

    # Find position of every single/double quote -> add to array
    loop
      match = pattern.exec line
      if match?
        positions.push match.index
      else break

    # Add end of line position
    positions.push line.length

    # Initialize array of non-string sections
    sections = []

    # Parse positions and add sections
    for irrelevant, index in positions by 2
      start = positions[index]
      end = positions[index+1]
      if start isnt end - 1
        sections.push start: start, end: end

    # Parse each section for dictionary entries
    for section in sections
      for entry, def of @dict.syntax
        part = line[section.start...section.end]
        match = part.match def.pattern
        if match?
        # parsed = part.replace def.pattern, def.output
          parsed = def.process(part)
          line = line.replace part, parsed

    # Parse each section for unicode chars
    line = @unicode line

    line


module.exports = Parser