`import Ember from 'ember'`

HappyfoxChatComponent = Ember.Component.extend(
  didInsertElement: ->
    window.HFCHAT_CONFIG =
      EMBED_TOKEN: ''
      ACCESS_TOKEN: ''
      HOST_URL: 'https://www.happyfoxchat.com'
      ASSETS_URL: ''
    do ->
      scriptTag = document.createElement('script')
      scriptTag.type = 'text/javascript'
      scriptTag.async = true
      scriptTag.src = window.HFCHAT_CONFIG.ASSETS_URL + '/js/widget-loader.js'
      s = document.getElementsByTagName('script')[0]
      s.parentNode.insertBefore scriptTag, s
      return

)

`export default HappyfoxChatComponent`
