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
      type: "S3",
      accessKeyId: "AKIAJ5C5NX4CZVSQOYKQ",
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: "downloadtipper.com",
      acl: 'public-read', //optional, e.g. 'public-read', if ACL is not configured, it is not sent
      hostName: "downloadtipper.com.s3-website-us-east-1.amazonaws.com", // To be set with 'direct' indexMode
      indexMode: "direct" // Optional: 'direct' or 'indirect', 'direct' is used by default.
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
      type: "S3",
      accessKeyId: "AKIAJ5C5NX4CZVSQOYKQ",
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: "downloadtipper.com",
      acl: 'public-read', //optional, e.g. 'public-read', if ACL is not configured, it is not sent
      hostName: "downloadtipper.com.s3-website-us-east-1.amazonaws.com", // To be set with 'direct' indexMode
      indexMode: "direct" // Optional: 'direct' or 'indirect', 'direct' is used by default.
    },
    assets: {
      accessKeyId: 'AKIAJ5C5NX4CZVSQOYKQ',
      secretAccessKey: process.env['AWS_ACCESS_KEY'],
      bucket: 'downloadtipper.com',
      exclude: ['.DS_Store']
    }
  }
};