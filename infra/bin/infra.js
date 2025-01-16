#!/usr/bin/env node
const cdk = require('aws-cdk-lib');
const { AuroraServerlessV2Stack } = require('../lib/infra-stack');

const app = new cdk.App();
const stack = new AuroraServerlessV2Stack(app, 'AuroraServerlessV2Stack', {
  // Optionally pass stack props like env if needed
  // env: { account: '123456789012', region: 'us-east-1' },
});
