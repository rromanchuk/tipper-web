`import Ember from 'ember'`

NavigationHeaderComponent = Ember.Component.extend(
  tagName: 'nav'
  classNames: ['navbar', 'navbar-default', 'tipper-nav']
  classNameBindings: ['isCompact']
  isCompact: true

)

`export default NavigationHeaderComponent`
