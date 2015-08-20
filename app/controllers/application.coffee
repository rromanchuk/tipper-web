`import Ember from 'ember'`
`import Twilio from 'npm:twilio'`
`import ENV from 'tipper/config/environment'`

ApplicationController = Ember.Controller.extend(
	actions:
    sendSms: ->
      console.log("sendSms")
      @get('model.sms').save()
      return


)

`export default ApplicationController`
