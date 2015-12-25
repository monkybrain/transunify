price =
  $: 10
  _d8364: 9.1
  _d163: 6.7
  _d165: 1209

log price

blog =
  post:
    _d9829: 4

blog.post._d9829 += 1

log "Likes: " + blog.post._d9829

$_d8594_d8364 = (input) ->
  input * 10/9

log $_d8594_d8364 10

gamepad =
    _d8592: false
    _d8595: true
    _d8600: true
    _d8594: true

_d9787 = {}
_d9787.crouch = () ->
  log "crouching..."

if gamepad._d8595 then _d9787.crouch()



# Math
series = [1,2,3,4]
_d8721 = 0
for num in series
  _d8721 += num
log _d8721

# Music
_d9834 = (note) ->
  log "Playing " + note + " for 0.05 seconds"
_d9833 = (note) ->
  log "Playing " + note + " for 0.1 seconds"

_d9834 'C'
_d9834 'E'
_d9833 'G'
