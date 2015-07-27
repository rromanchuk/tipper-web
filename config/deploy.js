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
      type: 'redis',
      host: 'tipper.7z2sws.0001.use1.cache.amazonaws.com',
      port: 6379,
      ssh: {
        username: 'ec2-user',
        privateKey: '/Users/ryan/rromanchuk-feb.pem',
        host: 'coinbit.tips',
        port: 22
      }
    },
    assets: {
      accessKeyId: 'AKIAJ5C5NX4CZVSQOYKQ',
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: 'downloadtipper.com'
    },
    manifestPrefix: 'stage-app' // optional, defaults to this.project.name()
  },

   production: {
    store: {
      type: 'redis',
      ssh: {
        username: 'ec2-user',
        privateKey: '/Users/ryan/rromanchuk-feb.pem',
        dstPort: 6379, // redis port
        dstHost: 'tipper.7z2sws.0001.use1.cache.amazonaws.com', // redis host
        username: 'ec2-user',
        host: '54.173.214.35',
        port: 22
      }
    },
    assets: {
      accessKeyId: 'AKIAJ5C5NX4CZVSQOYKQ',
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: 'downloadtipper.com'
    }
  }
};