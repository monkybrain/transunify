// Generated by CoffeeScript 1.10.0
(function() {
  var Parser, log;

  log = function(data) {
    return console.log(data);
  };


  /* PARSER */

  Parser = (function() {
    function Parser(dict) {
      this.dict = dict;
    }

    Parser.prototype.unicode = function(line) {
      var char, code, i, len, match, newLine, pattern;
      newLine = [];
      pattern = /[\w\n\s\.:=\$\+\-\*\/\(\),"'\|{}<>%&!#\[\]]/;
      for (i = 0, len = line.length; i < len; i++) {
        char = line[i];
        match = char.match(pattern);
        if (match != null) {
          newLine.push(char);
        } else {
          code = char.charCodeAt(0);
          newLine.push("_u" + code);
        }
      }
      return newLine.join("");
    };

    Parser.prototype.parse = function(line) {

      /* FIND NON-STRING SECTIONS */
      var end, i, index, irrelevant, len, match, pattern, positions, sections, start;
      pattern = /'|"/g;
      positions = [0];
      while (true) {
        match = pattern.exec(line);
        if (match != null) {
          positions.push(match.index);
        } else {
          break;
        }
      }
      positions.push(line.length);
      sections = [];
      for (index = i = 0, len = positions.length; i < len; index = i += 2) {
        irrelevant = positions[index];
        start = positions[index];
        end = positions[index + 1];
        if (start !== end - 1) {
          sections.push({
            start: start,
            end: end
          });
        }
      }

      /* CURRENTLY DISABLED */

      /*for section in sections
        for entry, def of @dict.syntax
          part = line[section.start...section.end]
          match = part.match def.pattern
          if match?
           * parsed = part.replace def.pattern, def.output
            parsed = def.process(part)
            line = line.replace part, parsed
       */
      return this.unicode(line);
    };

    return Parser;

  })();

  module.exports = Parser;

}).call(this);
