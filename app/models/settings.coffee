`import DS from 'ember-data'`

Settings = DS.Model.extend {
  version: DS.attr('string')
  feeAmount: DS.attr('string')
  tipAmount: DS.attr('string')
  fundAmount: DS.attr('string')
  marketPrice: DS.attr('string')

  fundAmountInCents: Ember.computed('tipAmount', ->
    Math.trunc(@get('tipAmount')/0.00000100)
  )
}

`export default Settings`
