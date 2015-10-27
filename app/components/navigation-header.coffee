`import Ember from 'ember'`

NavigationHeaderComponent = Ember.Component.extend(
  tagName: 'nav'
  classNames: ['navbar', 'navbar-default', 'tipper-nav']
  classNameBindings: ['hideBranding']
  hideBranding: true

)

`export default NavigationHeaderComponent`
