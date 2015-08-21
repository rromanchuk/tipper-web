`import DS from 'ember-data'`

Tip = DS.Model.extend {
  txid: DS.attr('string')
  fromTwitterUserId: DS.attr('string')
  toTwitterUserId: DS.attr('string')
  fromTwitterUsername: DS.attr('string')
  toTwitterUsername: DS.attr('string')
  toTwitterProfileImage: DS.attr('string')
  fromTwitterProfileImage: DS.attr('string')
}

`export default Tip`
