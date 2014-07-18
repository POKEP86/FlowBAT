Template.navbar.helpers
  quickQuery: ->
    share.Queries.findOne({isQuick: true})
  queries: ->
    share.Queries.find({isQuick: false}, {sort: {createdAt: 1}})
  ipsets: ->
    share.IPSets.find({}, {sort: {createdAt: 1}})

Template.navbar.rendered = ->

Template.navbar.events
  "click .logout": grab (event, template) ->
    Meteor.logout()

