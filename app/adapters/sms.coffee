`import ApplicationAdapter from './application'`

SmsAdapter = DS.RESTAdapter.extend(
  host: "https://www.downloadtipper.com"
  unknownProperty: (key) ->
    localStorage[key]
  setUnknownProperty: (key, value) ->
    localStorage[key] = value
    @notifyPropertyChange key
    value
  headers: (->
    {
      'Authorization': @get("authorizationHeader")
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }).property("authorizationHeader").volatile()
)

`export default SmsAdapter`
