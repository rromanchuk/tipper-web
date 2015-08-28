`import Ember from 'ember'`

SwitchControlComponent = Ember.Component.extend(
  classNames: ['switch-control']
  didInsertElement: ->
    console.log("didInsertElement")

)

`export default SwitchControlComponent`
