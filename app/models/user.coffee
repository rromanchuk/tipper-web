`import DS from 'ember-data'`

User = DS.Model.extend {
  bitcoinAddress: DS.attr('string')
  bitcoinBalanceBtc: DS.attr('string')
  twitterUsername: DS.attr('string')
}

`export default User`
