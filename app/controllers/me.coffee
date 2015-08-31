`import Ember from 'ember'`

MeController = Ember.Controller.extend(
  isSettingsActive: true
  actions:
    toggleTab: ->
      console.log 'toggleTab'
      @set('isSettingsActive', !@get('isSettingsActive'))
    toggleAutomaticTipping: ->
      console.log "toggleAutomaticTipping"
      console.log @get('session.currentUser.isAutomaticTippingEnabled')
      @get('session.currentUser').toggleProperty('isAutomaticTippingEnabled')
)

`export default MeController`
