Wallets = new Meteor.Collection("wallets")

Wallets.allow
  insert: (userId, document) ->
    false

  update: (userId, documents, fields, modifier) ->
    _.all accounts, (account) ->
      userId == account.userId

  remove: (userId, documents) ->
    _all documents, (document) ->
      userId == document.userId

Meteor.methods
  createWallet: (options) ->
    try
      creator = new WalletCreator(this)
      creator.create options, Wallets.insert
    catch e
      throw new Meteor.Error(e.status, e.message)

