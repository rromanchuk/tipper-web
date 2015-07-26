`import DS from 'ember-data'`

User = DS.Model.extend {
  userID: DS.attr('string')
  TwitterUsername:  DS.attr('string')
}

`export default User`
