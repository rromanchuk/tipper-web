`import Ember from 'ember'`

CompactHeaderComponent = Ember.Component.extend(
  classNames: ['header', 'row', 'header-compact']
  actions:
    sendSms: ->
      console.log "FullHeaderComponent::actions::sendSms"
      @sendAction('sendSms')
)

`export default CompactHeaderComponent`
