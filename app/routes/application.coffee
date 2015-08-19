`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  beforeModel: ->
    @get('session').fetch().then (->
      console.log 'session fetched'
      return
    ), ->
      console.log 'no session to fetch'
      return
  actions: 
    signInViaTwitter: ->
      console.log 'signInViaTwitter'
      route = this
      @get('session').open('twitter').then (->
        route.transitionTo 'index'
        return
      ), ->
        console.log 'auth failed'
        return
      return
    logout: ->
      @get('session').close()
      return
)

`export default ApplicationRoute`
