`import Ember from 'ember'`

MeRoute = Ember.Route.extend(
  beforeModel: ->
    console.log @get('session').isAuthenticated
    if !@get('session').isAuthenticated
      @transitionTo('index')
)

`export default MeRoute`
