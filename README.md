# uniqode

Transpiles uni*code* into CoffeeScript and adds a very thin layer of syntactic sugar to CoffeeScript.

### Main features
* Allows source code to include any unicode character
* Improved (or at least extended) dot and array notation (see examples below)

### Unicode examples

(this was written before I had the idea of improved dot notation...)

```
# The following...

price =
  $: 10
  €: 9.1
  £: 6.7
  ¥: 1209
  
# ...should result in:

price =
  $: 10         # Yupp, as all jQuery and AngularJS users know, '$' is valid...
  x20AC: 9.1    # Option 1: hex
  d165: 6.7     # Option 2: decimal
  nYen: 1209    # Option 3: name
  
# Other example: show USD price in EUR
$→€ = 10/9
console.log price * $→€

# JavaScript output:
$_x2192_x20AC = 10/9
console.log(price * $_x2192_x20AC)



# Cooler examples:

# Likes and comments
console.log blog.posts[3]    # I realize you won't be able to output
> {♥: 2661, ✎: 121}          # unicode characters to the console

# Sub/superscript
room.size =
  m²: 20
  ft²: 215.28
  
# Gamepad
if ↑ then jump
if ↓ then crouch
if ↓↘→ and 👊 then Ryu.hadouken()

# Maths
∑ = 0
for number in series
  ∑ += number

# Music
melody = [
  [ ♪('D'), ♪('G') ],
  [ ♪('F'), ♪('Bb') ],      # Smoke on the water,
  [ ♩('G'), ♩('C') ],       # in case you're wondering...
]                       

# Making amends...
friends.😊 += 1
friends.😡 -= 1
  
```

### Dot notation
```
# Replace dot with pipe for clarity and beauty (clarity == beauty)

person.name = 'John'
person | name = 'John'

# Replace array [] with #
blog.post[3].likes += 1
blog | post #3 | ♥ += 1     # No white space allowed. 'post # 3' will result in comment ('# 3')

# 

```

### Status
Untested idea...
