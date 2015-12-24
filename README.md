# uniscript

Transpiles uni*code* into CoffeeScript/JavasSript. Leaves valid cs/js characters unaffected.

### Example
```
# The following

price:
  $: 10
  €: 9.1
  £: 6.7
  ¥: 1209
  
# should result in:

price:
  $: 10         # Yupp, as all jQuery users know, '$' is valid...
  x23: 9.1      # Option 1) hex ('0x' replaced by 'x' for compatibility)
  d165: 6.7     # Option 2) decimal ('d' add for compatibility)
  nYen: 1209    # Option 3) name ('n' add for clarity and safety (minimizes risk of duplicate identifiers)

# Cooler examples:

blogPost:
  ♡: 2661

house.rooms[0].dimensions =
  m²: 20

∑ = 0
for number in series
  ∑ += number
  

```

### Status
Untested idea...
