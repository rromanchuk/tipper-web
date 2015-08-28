`import Ember from 'ember'`

MeRoute = Ember.Route.extend(
  model: ->
    Ember.RSVP.hash
      market: @store.find('market', { qty: @store.find('settings', 1).fundAmount })
        # to: '16502438594'

)

`export default MeRoute`
