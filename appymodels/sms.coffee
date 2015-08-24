`import DS from 'ember-data'`

Sms = DS.Model.extend {
  to: DS.attr('string')
  from: DS.attr('string')
  body: DS.attr('string')
}

`export default Sms`
