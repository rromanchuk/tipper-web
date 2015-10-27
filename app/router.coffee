
`import Ember from 'ember'`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'tip', path: 'tip/:tip_id', ->
  @resource 'user', path: 'user/:user_id', ->
  @resource 'transaction', path: 'transaction/:transaction_id', ->

  @route 'privacy'
  @route 'about'
  @route 'login'
  @route 'me'

`export default Router`