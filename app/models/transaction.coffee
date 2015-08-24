`import DS from 'ember-data'`

Transaction = DS.Model.extend {
  txid: DS.attr('string')
  fee: DS.attr('number')
  confirmations: DS.attr('number')
  tipAmount: DS.attr('number')
  amount: DS.attr('number')
  details: DS.attr('string')
  inputs: DS.attr('string')
  outputs: DS.attr('string')
  tip: DS.belongsTo('tip', {async: true})
  time: DS.attr('date')
  relayedBy: DS.attr('string')
  size: DS.attr('string')

  tipAmountUbtc: Ember.computed('tipAmount', ->
    Math.trunc(@get('tipAmount')/0.00000100)
  )

  detailsObject: Ember.computed('details', ->
    JSON.parse(@get('details'))
  )

  # outputsArr: Ember.computed('outputs', ->
  #   JSON.parse(@get('outputs'))
  # )

  # inputsArr: Ember.computed('inputs', ->
  #   JSON.parse(@get('inputs'))
  # )
}

`export default Transaction`
