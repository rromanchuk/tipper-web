`import Ember from 'ember'`
`import ENV from 'tipper/config/environment'`

ApplicationController = Ember.Controller.extend(
  isHome: (->
    @get('currentPath') == 'index'
  ).property('currentPath')
)

`export default ApplicationController`
