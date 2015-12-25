log = (data) ->
  console.log data

dictionary =
  syntax:
    ###dot:
      pattern: /\s?\|\s?/g
      output: '.'
      process: (part) ->
        part.replace this.pattern, this.output
    arrow:
      pattern: /\s?>>\s?/g
      output: '.'
      process: (part) ->
        part.replace this.pattern, this.output
    array:
      # pattern: /#\d(...)?\d\s/g
      pattern: /\s?#(\d+)|(-)(-)?\d?/g
      process: (part) ->
        console.log "array"
        part = part.replace "#", "["
        part = part.replace "-", "..."
        match = part.match /(\d+\s)|((\.\.\.)?\d+)/g
        part = part.replace match, match + "]"
        # index = part.indexOf "\s"
        # log index
        # part = part.slice(0, index) + "]"
        part###
    log:
      pattern: /(^|\s)log /
      output: "console.log "
      process: (part) ->
        part.replace this.pattern, this.output
    ###bOR:
      pattern: /OR/g
      output: '|'
      process: (part) ->
        part.replace this.pattern, this.output
    bAND:
      pattern: /AND/g
      output: '&'
      process: (part) ->
        part.replace this.pattern, this.output###

module.exports = dictionary