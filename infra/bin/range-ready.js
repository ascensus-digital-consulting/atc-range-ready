#!/usr/bin/env node
import { App } from 'aws-cdk-lib';
import { RangeReadyStack } from '../lib/range-ready-stack.js';

/*** Setup ***/
const app = new App();

// Define context schema
const schema = defineSchema();

// Obtain the context from the command line
const context = readContext(app, schema);

// Configure resource names
const namespace = context.namespace;
const resourceNames = RangeReadyStack.configureResourceNames(namespace);
context.resourceNames = resourceNames;

// Fetch stack name
const stackName = resourceNames.stack;

// Configure props
const props = {
  env: {
    account: process.env.CDK_DEFAULT_ACCOUNT,
    region: process.env.CDK_DEFAULT_REGION,
    context: context,
  },
};

/*** Create stack ***/
const stack = new RangeReadyStack(app, stackName, props);

function readContext(app, schema) {
  const parameters = Object.keys(schema);
  const context = {};

  parameters.forEach((parameter) => {
    const required = schema[parameter].required;
    const value = app.node.tryGetContext(parameter);

    if (required && value === undefined) {
      throw new Error(
        `Parameter ${parameter} is not defined. Please specify it in the cdk.json file or on the command line (e.g. --context ${key}=value).`
      );
    }

    context[parameter] = value;
  });
  return context;
}

function defineSchema() {
  return {
    domain: {
      required: true,
    },
    subdomain: {
      required: false,
    },
  };
}
