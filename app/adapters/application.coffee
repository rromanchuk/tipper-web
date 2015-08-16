`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend(
  host: 'https://coinbit.tips'
)

`export default ApplicationAdapter`
