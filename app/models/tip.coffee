`import DS from 'ember-data'`

Tip = DS.Model.extend {
  txid: DS.attr('string')
  fromTwitterId: DS.attr('string')
  toTwitterId: DS.attr('string')
  fromTwitterUsername: DS.attr('string')
  toTwitterUsername: DS.attr('string')
  toTwitterProfileImage: DS.attr('string')
  fromTwitterProfileImage: DS.attr('string')
  objectId: DS.attr('string')
  transaction: DS.belongsTo('transaction', {async: true})
  fromUser: DS.belongsTo('user', {async: true})
  toUser: DS.belongsTo('user', {async: true})
  tippedAt:  attr('date')
}

`export default Tip`
