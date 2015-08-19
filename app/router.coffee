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

Router.map ->
  @resource 'user', path: 'users/:user_id', ->

  @route 'privacy'
  @route 'login'

`export default Router`