`import Ember from 'ember'`

TweetTimelineComponent = Ember.Component.extend(
  classNames: ['tweet-timeline']
  didInsertElement: ->
    twttr.widgets.load()
)


`export default TweetTimelineComponent`
