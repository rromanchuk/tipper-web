`import DS from 'ember-data'`

Transaction = DS.Model.extend {
  txid: DS.attr('string')
  relayedBy: DS.attr('string')
  size: DS.attr('string')
  time: DS.attr('string')
  tip: DS.belongsTo('tip')
}

`export default Transaction`
