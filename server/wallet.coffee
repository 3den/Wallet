Meteor.publish "accounts", ->
  return Accounts.find({
    $or: [
      {"public": true},
      {invited: this.userId}, {owner: this.userId}
    ]
  })

Meteor.publish "users", ->
  return Meteor.users.find({})


console.log("im alive")
