`import Ember from 'ember'`
`import Twilio from 'npm:twilio'`
`import ENV from 'tipper/config/environment'`

ApplicationController = Ember.Controller.extend(
	actions:
    sendSms: ->
      console.log("sendSms");
      client = Twilio(ENV.TWILIO_ACCOUNT_SID, ENV.TWILIO_AUTH_TOKEN);
      client.sendMessage {
        to: '+16502438594'
        from: '+16504198197'
        body: 'word to your mother.'
      }, (err, responseData) ->
        #this function is executed when a response is received from Twilio
        if !err
          # "err" is an error received during the request, if any
          # "responseData" is a JavaScript object containing data received from Twilio.
          # A sample response from sending an SMS message is here (click "JSON" to see how the data appears in JavaScript):
          # http://www.twilio.com/docs/api/rest/sending-sms#example-1
          console.log responseData.from
          # outputs "+14506667788"
          console.log responseData.body
          # outputs "word to your mother."
        return
      return


)

`export default ApplicationController`
