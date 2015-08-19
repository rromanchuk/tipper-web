`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  actions: signInViaTwitter: ->
    console.log 'signInViaTwitter'
    route = this
    @get('session').open('twitter').then (->
      route.transitionTo 'index'
      return
    ), ->
      console.log 'auth failed'
      return
    return
)

`export default ApplicationRoute`
