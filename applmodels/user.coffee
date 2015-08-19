`import DS from 'ember-data'`

User = DS.Model.extend {
  token: DS.attr('string')
}

`export default User`
