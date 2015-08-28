`import DS from 'ember-data'`

MarketSerializer = DS.RESTSerializer.extend(
  normalizePayload: (payload) ->
    console.log payload
    {market: {amount: payload.amount}}
)

`export default MarketSerializer`
