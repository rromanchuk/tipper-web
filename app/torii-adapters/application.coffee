`import Ember from 'ember'`

ToriiAdapter = Ember.Object.extend
  open: (auth) ->
    console.log 'open'
    console.log auth
    if !auth.code
      return rejectPromise()
    localStorage.token = auth.code
    pieces = auth.code.split('-')
    console.log pieces
    bufferString = pieces[0] + ':' + auth.code
    authorizationHeader = btoa(bufferString)
    localStorage.authorizationHeader = 'Basic ' + authorizationHeader
    console.log localStorage

    @get('store').find('me', 'refresh').then (me) ->
      me.get 'twitterUsername'
      { currentUser: me }
  fetch: ->
    console.log 'fetch'
    console.log localStorage
    if !localStorage.token || !localStorage.authorizationHeader
      console.log "Bailing out of fetch, no auth"
      return rejectPromise()
    @get('store').find('me', 'refresh').then (me) ->
      console.log me.get('twitterUsername')
      { currentUser: me }
  close: ->
    console.log 'close'
    authHeader = localStorage.authorizationHeader
    localStorage.token = null
    localStorage.authorizationHeader = null
    new (Ember.RSVP.Promise)((resolve, reject) ->
      Ember.$.ajax
        url: '/logout'
        headers: 'Authorization': authHeader
        type: 'POST'
        success: Ember.run.bind(null, resolve)
        error: Ember.run.bind(null, reject)
      return
)

`export default ToriiAdapter`