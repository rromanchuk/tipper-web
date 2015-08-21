`import Ember from 'ember'`

TweetTimelineComponent = Ember.Component.extend(
  didInsertElement: ->
    # console.log("TweetTimelineComponent::didInsertElement")
    # !((d, s, id) ->
    #   js = undefined
    #   fjs = d.getElementsByTagName(s)[0]
    #   p = if /^http:/.test(d.location) then 'http' else 'https'
    #   if true #!d.getElementById(id)
    #     js = d.createElement(s)
    #     js.id = id
    #     js.src = p + '://platform.twitter.com/widgets.js'
    #     fjs.parentNode.insertBefore js, fjs
    #   return
    # )(document, 'script', 'twitter-wjs')
    # return
)


`export default TweetTimelineComponent`
