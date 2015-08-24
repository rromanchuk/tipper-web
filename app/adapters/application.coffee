`import DS from 'ember-data'`
`import ENV from 'tipper/config/environment'`

ApplicationAdapter = DS.RESTAdapter.extend(
  unknownProperty: (key) ->
    localStorage[key]
  setUnknownProperty: (key, value) ->
    localStorage[key] = value
    @notifyPropertyChange key
    value
  host: ENV.API_HOST
  headers: (->
    {
      'Authorization': @get("authorizationHeader")
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }).property("authorizationHeader").volatile()
)

`export default ApplicationAdapter`
