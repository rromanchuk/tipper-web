`import ApplicationAdapter from './application'`
`import ENV from 'tipper/config/environment'`

SmsAdapter = DS.RESTAdapter.extend(
  host: ENV.API_HOST
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
