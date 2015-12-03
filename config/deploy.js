
module.exports = function(deployTarget) {
  var ENV = {};

  if (deployTarget === 'development-postbuild') {
    ENV.plugins = ['redis'];

    ENV.build = {
      environment: 'development'
    };

    ENV.redis = {
      keyPrefix: 'edd-cli',
      revisionKey: '__development__',
      allowOverwrite: true,
      host: 'localhost', // this can be omitted because it is the default
      port: 6379, // this can be omitted because it is the default
      distDir: function(context) {
        return context.commandOptions.buildDir;
      }
    };
  }

  if (deployTarget === 'staging') {
    ENV.build = {
      environment: 'staging',
    };
    // configure other plugins for staging deploy target here
    ENV.redis = {
      allowOverwrite: true,
      host: process.env['STAGING_HOST'],
      port: process.env['STAGING_PORT'],
    };
    ENV.s3 = {
      accessKeyId: process.env['AWS_ACCESS_KEY'],
      secretAccessKey: process.env['AWS_SECRET_KEY'],
      bucket: 'edd-staging',
      region: 'us-east-1'
    };
  }

  if (deployTarget === 'production') {
    ENV.build = {
      environment: 'production',
    };
    // configure other plugins for production deploy target here
    //
    ENV['ssh-tunnel'] = {
      username: process.env['SSH_USERNAME'],
      host: process.env['SSH_HOST'],
      dstHost: process.env['REDIS_HOST'],
      srcPort: process.env['REDIS_PORT'],
      privateKeyPath: process.env['SSH_KEY'],
    };

    ENV.redis = {
      allowOverwrite: true,
      //host: process.env['REDIS_HOST'],
      port: process.env['REDIS_PORT']
    };
    ENV.s3 = {
      accessKeyId: process.env['AWS_ACCESS_KEY'],
      secretAccessKey: process.env['AWS_SECRET_KEY'],
      bucket: 'tipper-assets',
      region: 'us-east-1',
      // distDir: function(context) {
      //   return context.commandOptions.buildDir;
      // }
    }
  }

  // Note: if you need to build some configuration asynchronously,ou can return
  // a promise that resolves with the ENV object instead of returning the
  // ENV object synchronously.
  return ENV;

};