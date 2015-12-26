# unicodify

Decodes unicode source files into valid CoffeeScript/JavaScript.

Might work with other languages too, such as Python (untested).

## Usage
Simple as can be...
```
unicodify <source> <output>
```
**source (required)**

- Unicode encoded source file

**output (optional)**

- File to be written
- Will *echo* if unspecified

## Installation
Even simpler...
```
npm install -g unicodify
```

## Basic principle
Decodes unicode characters in identifiers (object names etc.) into valid JavaScript. See examples below.
```
# Input
€ = 10

# Output
_u8364: 10
```

See the [demo](/demo) for more examples.

## Uses
I'm generally more of a **how** than a **why** type of guy but I can still think of some situations where this tool might come in handy. They range from the practical to the down right silly.

### Native language coding
Code in your native tongue: arabic, chinese etc.

```
# Arabic
عشوائي = Math.random(10) 		# Wrong direction I suppose...

# Chinese
随机 = Math.random(10)
```
### Brevity
Use unicode characters for brevity/clarity, e.g. to transfer notation from other domains.

*Math*

```
# Sum
∑ = 0
for num in series
  ∑ += num

# Angle
φ = 10
x = r cos φ
```

*Units*
```
# Currencies
product.price =
  $: 10
  €: 9.1
  £: 6.7
  ¥: 1209

# Super/subscript
room.dimensions =
  length: 3, width: 3, height: 2
  m²: 9
  m³: 18 
```

*Music*
```
♪ = (note) ->
  play note, 100ms
♩ = (note) ->
  play note, 200ms

♪ 'C'
♪ 'E'
♩ 'G'`
```

### Levity
Coding should be fun!

*Runicode*

ᛖᚱᚤ = 'ᚤᚤᚤ'


*Farmcode*

```
farm =
  🐄: 12
  🐑: 8
  🐓: 1
  🐔: 8
```

*Rumicode*
```
# TODO: Add persian poetry...
```

Please help me expand this section!

### Competition

I propose a competition for the most creative use of this tool. Post your contributions to [/r/unicodify](https://www.reddit.com/r/unicodify) and let the up/downvoting begin!
