`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend(
  unknownProperty: (key) ->
    localStorage[key]
  setUnknownProperty: (key, value) ->
    localStorage[key] = value
    @notifyPropertyChange key
    value
  host: "https://coinbit.tips"
  serializer: DS.RESTSerializer.extend
    extractDeleteRecord: (store, type, payload) ->
      return null;
  headers: (->
    {
      'Authorization': @get("authorizationHeader")
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }).property("authorizationHeader").volatile()
)

`export default ApplicationAdapter`
