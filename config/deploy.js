module.exports = {
  development: {
    buildEnv: 'development', // Override the environment passed to the ember asset build. Defaults to 'production'
    store: {
      type: 'redis', // the default store is 'redis'
      host: 'localhost',
      port: 6379
    },
    assets: {
      type: 's3', // default asset-adapter is 's3'
      gzip: false, // if undefined or set to true, files are gziped
      gzipExtensions: ['js', 'css', 'svg'], // if undefined, js, css & svg files are gziped
      exclude: ['.DS_Store', '*-test.js'], // defaults to empty array
      accessKeyId: 'AKIAJ5C5NX4CZVSQOYKQ',
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: 'tipperapp'
    }
  },

  staging: {
    buildEnv: 'staging', // Override the environment passed to the ember asset build. Defaults to 'production'
    store: {
      host: 'redis://tipper.7z2sws.0001.use1.cache.amazonaws.com',
      port: 6379
    },
    assets: {
      accessKeyId: 'AKIAJ5C5NX4CZVSQOYKQ',
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: 'tipperapp'
    },
    manifestPrefix: 'stage-app' // optional, defaults to this.project.name()
  },

   production: {
    store: {
      host: 'redis://tipper.7z2sws.0001.use1.cache.amazonaws.com',
      port: 6379,
      password: '<your-redis-secret>'
    },
    assets: {
      accessKeyId: 'AKIAJ5C5NX4CZVSQOYKQ',
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: 'tipperapp'
    }
  }
};