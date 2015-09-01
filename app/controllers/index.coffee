`import Ember from 'ember'`

IndexController = Ember.Controller.extend(
  actions:
    sendSms: ->
      console.log("sendSms")
      @get('model.sms').save()

)

`export default IndexController`
