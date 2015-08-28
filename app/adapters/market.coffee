`import ApplicationAdapter from './application'`

MarketAdapter = DS.RESTAdapter.extend(
  host: "https://api.coinbase.com/v1/prices/buy.json"
  pathForType: (modelName) ->
    ""
  ajax: (url, method, hash) ->
    hash = hash || {}; #hash may be undefined
    hash.crossDomain = true
    hash.xhrFields = {withCredentials: true}
    return @_super(url, method, hash)
  
)

`export default MarketAdapter`
