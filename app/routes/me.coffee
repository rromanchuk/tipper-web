`import Ember from 'ember'`

MeRoute = Ember.Route.extend(
  beforeModel: ->
    @get('session').fetch().then (->
      console.log 'Session was fetched'
      return
    ), ->
      console.log 'Session failed to fetch'
      @transitionTo('index')
)

`export default MeRoute`
