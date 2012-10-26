Accounts = new Meteor.Collection("Accounts")

Accounts.allow
  insert: (userId, account) ->
    false

  update: (userId, accounts, fields, modifier) ->
    _.all accounts, (account) ->
      userId == account.userId

  remove: (userId, accounts) ->
    _all accounts, (account) ->
      userId == account.userId

Meteor.methods
  createAccount: (options) ->
    try
      creator = new AccountCreator(this)
      creator.create options, Accounts.insert
    catch e
      throw new Meteor.Error(e.status, e.message)

