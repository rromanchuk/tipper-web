`import Ember from 'ember'`

SwitchControlComponent = Ember.Component.extend(
  classNames: ['switch-control', 'pull-right']
  actions:
    toggleAutomaticTipping: ->
      console.log "toggle automatic tipping"
      #@toggleProperty("isAutomaticTippingEnabled")
      @sendAction('toggleAutomaticTipping')
  didInsertElement: ->
    #console.log(@get("isAutomaticTippingEnabled"))
    console.log("didInsertElement")

)

`export default SwitchControlComponent`
