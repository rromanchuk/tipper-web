`import Ember from 'ember'`

SwitchControlComponent = Ember.Component.extend(
  classNames: ['switch-control', 'pull-right']
  didInsertElement: ->
    console.log(@get("me"))
    console.log(@get("me").automaticTippingEnabled)
    console.log("didInsertElement")

)

`export default SwitchControlComponent`
