`import Ember from 'ember'`

SwitchControlComponent = Ember.Component.extend(
  classNames: ['switch-control', 'pull-right']
  didInsertElement: ->
    console.log("didInsertElement")

)

`export default SwitchControlComponent`
