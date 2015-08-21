`import ApplicationAdapter from './application'`

SmsAdapter = DS.RESTAdapter.extend(
  host: "https://www.downloadtipper.com"
  headers: (->
    {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    })
)

`export default SmsAdapter`
