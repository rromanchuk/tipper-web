`import DS from 'ember-data'`

Me = DS.Model.extend {
  userId: DS.attr('string')
  twitterUserId: DS.attr('string')
  twitterUsername: DS.attr('string')
  bitcoinAddress: DS.attr('string')
  profileImage: DS.attr('string')
  bitcoinBalanceBtc: DS.attr('string')
  automaticTippingEnabled: DS.attr('boolean', {defaultValue: true})
}

`export default Me`


