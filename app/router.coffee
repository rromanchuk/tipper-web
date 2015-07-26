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

Router.map ->
  @resource 'user', path: 'users/:user_id', ->

`export default Router`