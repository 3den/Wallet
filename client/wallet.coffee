Template.hello.greeting = ->
  return "Welcome to wallet."

Template.hello.events
  'click input': ->
    # template data, if any, is available in 'this'
    if console?
      alert "im alive!"
      console.log("You pressed the button")
