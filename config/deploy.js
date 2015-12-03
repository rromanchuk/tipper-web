/* jshint node: true */

module.exports = function(deployTarget) {
  var ENV = {
    build: {},
    'redis': {
        host: "localhost",
        port:  49156
    },
      'ssh-tunnel': {
        username:       "ec2-user",
        host:           "54.173.214.35",
        srcPort:        49156,
        dstHost:        "tipper.7z2sws.0001.use1.cache.amazonaws.com",
        privateKeyPath: "/Users/ryan/rromanchuk-feb.pem"
      }
    // include other plugin configuration that applies to all deploy targets here
  };

  if (deployTarget === 'development') {
    ENV.build.environment = 'development';
    // configure other plugins for development deploy target here
  }

  if (deployTarget === 'staging') {
    ENV.build.environment = 'production';
    // configure other plugins for staging deploy target here
  }

  if (deployTarget === 'production') {
    ENV.build.environment = 'production';
    // ENV.redis = {
    //   'redis': {
    //     host: "localhost",
    //     port:  49156
    //   },
    //   'ssh-tunnel': {
    //     username:       "ec2-user",
    //     host:           "54.173.214.35"
    //     srcPort:        49156,
    //     dstHost:        "tipper.7z2sws.0001.use1.cache.amazonaws.com"
    //   }
    // }
    // configure other plugins for production deploy target here
  }

  // Note: if you need to build some configuration asynchronously, you can return
  // a promise that resolves with the ENV object instead of returning the
  // ENV object synchronously.
  return ENV;
};
