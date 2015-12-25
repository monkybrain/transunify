# uniqode

Transpiles uni*code* into CoffeeScript and adds a very thin layer of syntactic sugar to CoffeeScript.

### Main features
* Allows source code to include any unicode character
* Improved (or at least extended) dot and array notation (not implemented yet...)

### Unicode examples

(this was written before I had the idea of improved dot notation...)


### Source (test.uniq)

```
price =
  $: 10
  €: 9.1
  £: 6.7
  ¥: 1209

log price

blog =
  post:
    ♥: 4

blog.post.♥ += 1

log "Likes: " + blog.post.♥

$→€ = (input) ->
  input * 10/9

log $→€ 10

gamepad =
    ←: false
    ↓: true
    ↘: true
    →: true

☻ = {}
☻.crouch = () ->
  log "crouching..."

if gamepad.↓ then ☻.crouch()

# Math
series = [1,2,3,4]
∑ = 0
for num in series
  ∑ += num
log ∑

# Music
♪ = (note) ->
  log "Playing " + note + " for 0.05 seconds"
♩ = (note) ->
  log "Playing " + note + " for 0.1 seconds"

♪ 'C'
♪ 'E'
♩ 'G'`
```
### Result
