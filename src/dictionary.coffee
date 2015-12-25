# Helper
log = (data) ->
  console.log data

dictionary =
    log:
      pattern: /(^|\s)log /
      output: "console.log "
      process: (part) ->
        part.replace this.pattern, this.output

module.exports = dictionary