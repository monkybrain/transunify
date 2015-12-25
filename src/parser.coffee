# Helper functions
log = (data) ->
  console.log data

### PARSER ###
class Parser

  constructor: (dict) ->
    @dict = dict

  unicode: (line) ->
    newLine = []
    # Exlude valid cs/js chars
    pattern = /[\w\n\s\.:=\$\+\-\*\/\(\),"'\|{}<>#\[\]]/
    for char in line
      match = char.match pattern
      if match?
        newLine.push char
      else
        code = char.charCodeAt(0)
        newLine.push "_d" + code
    newLine.join ""

  parse: (line) ->

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