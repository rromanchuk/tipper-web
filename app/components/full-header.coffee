`import Ember from 'ember'`

FullHeaderComponent = Ember.Component.extend(
  classNames: ['header', 'row']
  actions:
    sendSms: ->
      console.log "FullHeaderComponent::actions::sendSms"
      @sendAction('sendSms')
)

`export default FullHeaderComponent`
