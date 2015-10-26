`import Ember from 'ember'`

TweetEmbedComponent = Ember.Component.extend(
  didInsertElement: ->
    console.log "TweetEmbedComponent::didInsertElement"
    console.log @get('tweetId')
    twttr.widgets.createTweet @get('tweetId'), document.getElementById('single-tweet'), {align: 'center', width: '550'}

)

`export default TweetEmbedComponent`
