`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  model: ->
    Ember.RSVP.hash
      sms: @store.createRecord 'sms'
      settings: @store.find('settings', 1)
        # to: '16502438594'
  beforeModel: ->
    @get('session').fetch().then (->
      console.log 'Session was fetched'
      return
    ), ->
      console.log 'Session failed to fetch'
      return
  actions:
    sendSms: ->
      console.log("ApplicationRoute::actions:sendSms")
      @modelFor('application').sms.save()
    signInViaTwitter: ->
      console.log 'signInViaTwitter'
      route = this
      @get('session').open('twitter').then (authorization ->
        console.log("signInViaTwitter open callback: ")
        console.log(authorization)
        route.transitionTo 'index'
        return
      ), ->
        console.log 'signInViaTwitter authentication failed'
        return
      return
    logout: ->
      @get('session').close()
      return
    renderTemplate: ->
      console.log @get('currentPath')
      @render('application')
)

`export default ApplicationRoute`
