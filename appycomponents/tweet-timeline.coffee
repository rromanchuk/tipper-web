`import Ember from 'ember'`

TweetTimelineComponent = Ember.Component.extend(
  didInsertElement: ->
    twttr.widgets.load()
)


`export default TweetTimelineComponent`
