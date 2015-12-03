var VALID_DEPLOY_TARGETS = [ //update these to match what you call your deployment targets
  'dev',
  'qa',
  'prod'
];

module.exports = function(deployTarget) {
  var ENV = {
    build: {},
    redis: {
      allowOverwrite: true,
      keyPrefix: 'tipper:index'
    },
    s3: {
      prfix: "tipper",
      region: "us-east-1",
      bucket: 'tipper-assets',
      accessKeyId: "AKIAJWITVE64CMGQYXXQ",
      secretAccessKey: "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",
    },
    'ssh-tunnel': {
        username:       "ec2-user",
        host:           "54.173.214.35",
        srcPort:        49156,
        dstHost:        "tipper.7z2sws.0001.use1.cache.amazonaws.com",
        privateKeyPath: "/Users/ryan/rromanchuk-feb.pem"
    }
  };
  if (VALID_DEPLOY_TARGETS.indexOf(deployTarget) === -1) {
    throw new Error('Invalid deployTarget ' + deployTarget);
  }

  // if (deployTarget === 'dev') {
  //   ENV.build.environment = 'development';
  //   ENV.redis.url = process.env.REDIS_URL || 'redis://0.0.0.0:6379/';
  //   ENV.plugins = ['build', 'redis']; // only care about deploying index.html into redis in dev
  // }

  if (deployTarget === 'qa' || deployTarget === 'prod') {
    ENV.build.environment = 'production';
  }

  // if (deployTarget === 'qa') {
  //   ENV.redis.url = process.env.QA_REDIS_URL;
  // }

  // if (deployTarget === 'prod') {
  //   ENV.redis.url = process.env.PROD_REDIS_URL;
  // }

  return ENV;

  /* Note: a synchronous return is show above, but ember-cli-deploy
   * does support returning a promise, in case you need to get any of
   * your configuration asynchronously. e.g.
   *
   *    var Promise = require('ember-cli/lib/ext/promise');
   *    return new Promise(function(resolve, reject){
   *      var exec = require('child_process').exec;
   *      var command = 'heroku config:get REDISTOGO_URL --app my-app-' + deployTarget;
   *      exec(command, function (error, stdout, stderr) {
   *        ENV.redis.url = stdout.replace(/\n/, '').replace(/\/\/redistogo:/, '//:');
   *        if (error) {
   *          reject(error);
   *        } else {
   *          resolve(ENV);
   *        }
   *      });
   *    });
   *
   */
}
