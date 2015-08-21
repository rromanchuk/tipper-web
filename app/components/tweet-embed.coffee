`import Ember from 'ember'`

TweetEmbedComponent = Ember.Component.extend(
  positionalParams: ['tweetId']
  didInsertElement: ->
    twttr.widgets.createTweet @get('tweetId'), document.getElementById('single-tweet'), theme: 'dark'

)

`export default TweetEmbedComponent`
