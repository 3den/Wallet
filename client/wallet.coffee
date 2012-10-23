class Router extends Backbone.Router
  routes:
    '': "index"

  index: ->
    console.log "i am at the index"

$ ->
  new Router()
  Backbone.history.start(pushState: true)

Template.hello.greeting = ->
  return "Welcome to wallet."

Template.hello.events
  'click input': ->
    # template data, if any, is available in 'this'
    if console?
      alert "im alive!"
      console.log("You pressed the button")
