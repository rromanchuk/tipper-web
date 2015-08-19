/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'tipper',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    torii: {
      sessionServiceName: 'session',
      providers: {
        'twitter': {
          requestTokenUri: '/auth/twitter'
        }
      }
    },
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },
    contentSecurityPolicy: {
      'default-src': "'self' 'unsafe-inline' https://*.twiiter.com http://*.twitter.com *.twimg.com",
      'script-src': "'self' 'unsafe-inline' 'unsafe-eval' https://cdn.syndication.twimg.com https://*.twitter.com http://*.twitter.com https://cdn.twitter.com *.twimg.com syndication.twitter.com", // Allow scripts from https://cdn.mxpnl.com
      'font-src': "'self' d2van23dea75yy.cloudfront.net", // Allow fonts to be loaded from http://fonts.gstatic.com
      'connect-src': "'self' https://api.twilio.com", // Allow data (ajax/websocket) from api.mixpanel.com and custom-api.local
      'img-src': "'self' 'unsafe-inline' syndication.twitter.com https://*.twitter.com https://pbs.twimg.com data:",
      'style-src': "'self' 'unsafe-inline' *.twitter.com", // Allow inline styles and loaded CSS from http://fonts.googleapis.com 
      'media-src': "'self' 'unsafe-inline' *.twitter.com",
      'frame-src': "https://*.twitter.com syndication.twitter.com"
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  ENV.TWILIO_ACCOUNT_SID = process.env.TWILIO_ACCOUNT_SID
  ENV.TWILIO_AUTH_TOKEN = process.env.TWILIO_AUTH_TOKEN


  if (environment === 'development') {
    ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    ENV.APP.LOG_TRANSITIONS = true;
    ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
