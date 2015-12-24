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
  x23: 9.1      # Option 1: hex
  d165: 6.7     # Option 2: decimal
  nYen: 1209    # Option 3: name

# Cooler examples:

blogPost =
  ♥: 2661       # likes
  ✎: 121        # comments

house.rooms[0].dimensions =
  m²: 20
  ft²: 215.28

∑ = 0
for number in series
  ∑ += number
  
reactions =
  😊: 23        # happy
  😡: 12        # angry

```

### Status
Untested idea...
