`import Ember from 'ember'`
#`import Switchery from 'switchery'`

SwitchControlComponent = Ember.Component.extend(
  tagName: 'input'
  classNames: ['js-switch']
  attributeBindings: ['checked', 'type']
  type: "checkbox"
  checked: "checked"
  didInsertElement: ->
    console.log("didInsertElement")
    elem = document.querySelector('.js-switch')
    console.log("found elem")
    console.log elem
    switchControl = new Switchery(elem,  { color: '#faab43', secondaryColor: '#fC73d0', jackColor: '#fcf45e', jackSecondaryColor: '#c8ff77' })
    console.log switchControl

)

`export default SwitchControlComponent`
