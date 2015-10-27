`import Ember from 'ember'`

NavigationHeaderComponent = Ember.Component.extend(
  tagName: 'nav'
  classNames: ['navbar', 'navbar-default', 'tipper-nav']
  classNameBindings: ['hideBranding']
  hideBranding: true
  actions:
    signInViaTwitter: ->
      console.log "signInViaTwitter"
      #@toggleProperty("isAutomaticTippingEnabled")
      @sendAction('signInViaTwitter')

)

`export default NavigationHeaderComponent`
