Meteor.publish "wallets", ->
  return Accounts.find
    userId: @userId

Meteor.publish "users", ->
  return Meteor.users.find()

