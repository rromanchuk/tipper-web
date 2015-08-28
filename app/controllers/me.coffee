`import Ember from 'ember'`

MeController = Ember.Controller.extend(
  isActive: true
  actions:
    toggleTab: ->
      console.log 'toggleTab'
      @set('isActive', !@get('isActive'))
)

`export default MeController`
