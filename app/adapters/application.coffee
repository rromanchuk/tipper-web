`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend( 
  host: "https://coinbit.tips"
  headers: (->
  {
    'Authorization': localStorage.authorizationHeader
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
  ).property().volatile()
)
`export default ApplicationAdapter`
