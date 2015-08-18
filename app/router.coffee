 # import Ember from 'ember';
 # import config from './config/environment';

 # var Router = Ember.Router.extend({
 #   location: config.locationType
 # });

 # Router.map(function() {
 # });

 # export default Router;

`import Ember from 'ember'`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType
  beforeModel: ->
    @get('session').fetch().then (->
      console.log 'session fetched'
      return
    ), ->
      console.log 'no session to fetch'
      return
  actions: 
    logout: ->
      @get('session').close()
      return
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

Router.map ->
  @resource 'user', path: 'users/:user_id', ->

  @route 'privacy'
  @route 'login'

`export default Router`