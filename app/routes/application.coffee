`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  beforeModel: ->
    @get('session').fetch().then (->
      console.log 'Session was fetched'
      return
    ), ->
      console.log 'Session failed to fetch'
      return
  actions: 
    signInViaTwitter: ->
      console.log 'signInViaTwitter'
      route = this
      @get('session').open('twitter').then (authorization ->
        console.log("signInViaTwitter open callback: ")
        console.log(authorization)
        route.transitionTo 'index'
        return
      ), ->
        console.log 'signInViaTwitter authentication failed'
        return
      return
    logout: ->
      @get('session').close()
      return
)

`export default ApplicationRoute`
