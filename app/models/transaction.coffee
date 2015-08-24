`import DS from 'ember-data'`

Transaction = DS.Model.extend {
  txid: DS.attr('string')
  fee: DS.attr('number')
  confirmations: DS.attr('number')
  tipAmount: DS.attr('number')
  amount: DS.attr('number')
  details: DS.attr('string')
  tip: DS.belongsTo('tip', {async: true})

  tipAmountUbtc: Ember.computed('tipAmount', ->
    @get('tipAmount')/0.00000100
  )
}

`export default Transaction`
