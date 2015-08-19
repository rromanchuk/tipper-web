# Takes two parameters: container and app
initialize = () ->
  Ember.$.ajaxSetup crossDomain: true
  # app.register 'route', 'foo', 'service:foo'

CorsInitializer =
  name: 'cors'
  initialize: initialize

`export {initialize}`
`export default CorsInitializer`
