`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend( 
  host: "https://coinbit.tips"
  headers: (->
    {
      'Authorization': @get("localStorage.authorizationHeader")
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }).property("localStorage.authorizationHeader").volatile()
)

`export default ApplicationAdapter`
