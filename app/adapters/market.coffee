`import ApplicationAdapter from './application'`

MarketAdapter = DS.RESTAdapter.extend(
  host: "https://api.coinbase.com/v1/prices/buy.json"
  pathForType: (modelName) ->
    ""
)

`export default MarketAdapter`
