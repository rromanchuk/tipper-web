# import Ember from 'ember';
# import Resolver from 'ember/resolver';
# import loadInitializers from 'ember/load-initializers';
# import config from './config/environment';

# var App;

# Ember.MODEL_FACTORY_INJECTIONS = true;

# App = Ember.Application.extend({
#   modulePrefix: config.modulePrefix,
#   podModulePrefix: config.podModulePrefix,
#   Resolver: Resolver
# });

# loadInitializers(App, config.modulePrefix);

# export default App;



`import Ember from 'ember'`
`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`
`import config from './config/environment'`

Ember.MODEL_FACTORY_INJECTIONS = true



App = Ember.Application.extend
  modulePrefix: config.modulePrefix,
  podModulePrefix: config.podModulePrefix,
  Resolver: Resolver
  LOG_TRANSITIONS: true

loadInitializers(App, config.modulePrefix)

Ember.Inflector.inflector.irregular('me', 'me')
Ember.Inflector.inflector.irregular('settings', 'settings')

`export default App`