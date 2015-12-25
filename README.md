# uniscript

Transpiles uni*code* into CoffeeScript/JavasSript. Leaves valid cs/js characters unaffected.

### Example
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
  
# Getting rather silly now...
clubs = 
  ⤧: 'West Ham United'
  £££: 'Manchester City'
  ₽₽₽: 'Chelsea'
  ⚠↓↓↓⚠: 'Aston Villa'
  ☠: 'St Pauli'
  🔫: 'Arsenal'
  😈: 'Manchester United'
```

### Status
Untested idea...
