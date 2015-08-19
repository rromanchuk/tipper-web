`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend(
  host: 'https://coinbit.tips'
  headers: {
    'Authorization': localStorage.authorizationHeader
    "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')
  }.property().volatile()
  # ajax: (url, method, hash) ->
  #   hash = hash or {}
  #   # hash may be undefined
  #   hash.crossDomain = true
  #   hash.xhrFields = withCredentials: true
  #   console.log 'DEBUG: inside RESTAdapter ajax call'
  #   @_super url, method, hash
)

`export default ApplicationAdapter`
