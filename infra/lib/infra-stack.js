const { SecretValue, Stack } = require('aws-cdk-lib');
const { Vpc, SubnetType } = require('aws-cdk-lib/aws-ec2');
const {
  DatabaseCluster,
  AuroraPostgresEngineVersion,
  DatabaseClusterEngine,
  ClusterInstance,
  DBClusterStorageType,
  Credentials,
} = require('aws-cdk-lib/aws-rds');

class AuroraServerlessV2Stack extends Stack {
  constructor(scope, id, props) {
    super(scope, id, props);

    // 1. Create a new VPC with public and private subnets
    const vpc = new Vpc(this, 'AuroraVPC', {
      maxAzs: 3,
      subnetConfiguration: [
        {
          cidrMask: 24,
          name: 'public',
          subnetType: SubnetType.PUBLIC,
        },
        {
          cidrMask: 24,
          name: 'private',
          subnetType: SubnetType.PRIVATE_WITH_EGRESS,
        },
      ],
    });

    new DatabaseCluster(this, 'AuroraServerlessV2', {
      engine: DatabaseClusterEngine.auroraPostgres({
        version: AuroraPostgresEngineVersion.VER_16_6,
      }),
      // capacity applies to all serverless instances in the cluster
      serverlessV2MaxCapacity: 1,
      serverlessV2MinCapacity: 0.5,
      writer: ClusterInstance.serverlessV2('writer', {
        autoMinorVersionUpgrade: true,
      }),
      vpc: vpc,
      vpcSubnets: {
        subnetType: SubnetType.PRIVATE_WITH_EGRESS,
      },
      credentials: Credentials.fromUsername('postgres', {
        password: SecretValue.unsafePlainText('Untrusted99!'),
      }),
      storageType: DBClusterStorageType.AURORA_IOPT1,

      // readers: [
      //   // puts it in promition tier 0-1
      //   ClusterInstance.serverlessV2('reader1', { scaleWithWriter: true }),
      // ],
    });
  }
}

module.exports = { AuroraServerlessV2Stack };
