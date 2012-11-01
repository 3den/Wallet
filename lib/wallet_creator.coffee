class WalletCreator
  initialize: (@delegator) ->

  valid: (options) ->
    unless @delegator.userId
      @_throw_error 403, "You must be logged in to create an account."

    true

  _throw_error: (status, message) ->
    throw {status: status, message: message}

  create: (options, saveCallback) ->
    options =
      title: options.title
      userId: @delegator.userId
      createdAt: Date.now()

    @valid options
    saveCallback options

