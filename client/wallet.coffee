Meteor.subscribe("accounts")
Meteor.subscribe("users")

class Router extends Backbone.Router
  routes:
    '': "home"
    ':user': "account"
    ':user/:account': "account"

  home: ->
    console.log "i am at the index"

  account: (user, account = "all") ->
    console.log "user #{user} account #{account}"

$ ->
  new Router()
  Backbone.history.start(pushState: true)

