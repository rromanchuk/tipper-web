`import Ember from 'ember'`

MeController = Ember.Controller.extend(
  isSettingsActive: true
  actions:
    toggleTab: ->
      console.log 'toggleTab'
      @set('isSettingsActive', !@get('isSettingsActive'))
)

`export default MeController`
