module.exports = {
  apps : [{
    script: 'output/WebServer.js',
    watch: 'output/'
  }, {
    script: 'node output/WebServer.js',
    watch: ['./output/WebServer.js']
  }],

  deploy : {
    production : {
      user : 'SSH_USERNAME',
      host : 'SSH_HOSTMACHINE',
      ref  : 'origin/master',
      repo : 'GIT_REPOSITORY',
      path : 'DESTINATION_PATH',
      'pre-deploy-local': '',
      'post-deploy' : 'npm install && pm2 reload ecosystem.config.js --env production',
      'pre-setup': 'npx tsc -b && export $(cat .env | xargs)'
    }
  }
};
