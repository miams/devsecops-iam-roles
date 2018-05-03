resource "aws_iam_policy" "GRACE_Tenant1_Admins_Policy" {
  name        = "GRACE_Tenant1_Admins_Policy"
  path        = "/"
  description = "GRACE_Tenant1_Admins_Policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "rds:*",
                "codestar:*",
                "redshift:*",
                "cloudsearch:*",
                "dynamodb:*",
                "mediastore:*",
                "athena:*",
                "glue:*",
                "codebuild:*",
                "elastictranscoder:*",
                "batch:*",
                "codedeploy:*",
                "kinesis:*",
                "xray:*",
                "storagegateway:*",
                "mediapackage:*",
                "elasticfilesystem:*",
                "kinesisanalytics:*",
                "s3:*",
                "cloud9:*",
                "kinesisvideo:*",
                "elasticbeanstalk:*",
                "es:*",
                "codecommit:*",
                "mediaconvert:*",
                "glacier:*",
                "medialive:*",
                "lambda:*",
                "ecs:*",
                "ec2:*",
                "codepipeline:*",
                "ecr:*",
                "elasticmapreduce:*",
                "elasticache:*",
                "datapipeline:*"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "GRACE_Tenant1_Power_User_Policy" {
  name        = "GRACE_Tenant1_Power_User_Policy"
  path        = "/"
  description = "GRACE_Tenant1_Power_User_Policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "NotAction": [
                "iam:*",
                "organizations:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "iam:DeleteServiceLinkedRole",
                "iam:ListRoles",
                "organizations:DescribeOrganization"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "GRACE_Tenant1_View_Only_Policy1" {
  name        = "GRACE_Tenant1_View_Only_Policy1"
  path        = "/"
  description = "GRACE_Tenant1_View_Only_Policy1"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "storagegateway:DescribeGatewayInformation",
                "elasticbeanstalk:DescribeEnvironmentManagedActionHistory",
                "lambda:GetFunctionConfiguration",
                "batch:DescribeComputeEnvironments",
                "codebuild:BatchGetBuilds",
                "ecs:DescribeTaskDefinition",
                "redshift:DescribeClusterSubnetGroups",
                "elasticbeanstalk:DescribeEnvironmentResources",
                "codecommit:GetCommentsForComparedCommit",
                "ec2:DescribeScheduledInstanceAvailability",
                "redshift:DescribeClusterVersions",
                "rds:DownloadDBLogFilePortion",
                "dynamodb:DescribeContinuousBackups",
                "codedeploy:BatchGetApplications",
                "lambda:GetAlias",
                "codebuild:ListConnectedOAuthAccounts",
                "s3:GetIpConfiguration",
                "storagegateway:DescribeNFSFileShares",
                "elasticbeanstalk:DescribePlatformVersion",
                "redshift:DescribeClusterSecurityGroups",
                "redshift:DescribeEventSubscriptions",
                "redshift:DescribeOrderableClusterOptions",
                "s3:GetBucketWebsite",
                "lambda:GetEventSourceMapping",
                "codebuild:ListCuratedEnvironmentImages",
                "ecr:GetAuthorizationToken",
                "s3:GetBucketNotification",
                "codecommit:GetObjectIdentifier",
                "s3:GetReplicationConfiguration",
                "codecommit:BatchGetPullRequests",
                "ec2:GetPasswordData",
                "redshift:DescribeSnapshotCopyGrants",
                "ec2:DescribeScheduledInstances",
                "codecommit:GetDifferences",
                "elasticbeanstalk:DescribeEvents",
                "dynamodb:GetShardIterator",
                "codecommit:GetMergeConflicts",
                "dynamodb:DescribeReservedCapacity",
                "redshift:GetClusterCredentials",
                "glacier:GetVaultLock",
                "codepipeline:ListActionTypes",
                "batch:DescribeJobQueues",
                "s3:GetLifecycleConfiguration",
                "codestar:DescribeProject",
                "s3:GetBucketTagging",
                "s3:GetInventoryConfiguration",
                "glacier:DescribeVault",
                "dynamodb:ListTagsOfResource",
                "elasticbeanstalk:ValidateConfigurationSettings",
                "codecommit:GetReferences",
                "redshift:DescribeEventCategories",
                "glacier:DescribeJob",
                "codecommit:GetCommit",
                "redshift:DescribeReservedNodeOfferings",
                "batch:DescribeJobs",
                "dynamodb:DescribeReservedCapacityOfferings",
                "lambda:ListTags",
                "storagegateway:DescribeWorkingStorage",
                "redshift:DescribeLoggingStatus",
                "redshift:DescribeTableRestoreStatus",
                "ecs:DescribeTasks",
                "dynamodb:DescribeLimits",
                "codecommit:GetPullRequest",
                "s3:ListBucketMultipartUploads",
                "storagegateway:ListTagsForResource",
                "codecommit:BatchGetRepositories",
                "dynamodb:Query",
                "dynamodb:DescribeStream",
                "s3:GetBucketVersioning",
                "codecommit:GetCommentsForPullRequest",
                "codepipeline:GetThirdPartyJobDetails",
                "dynamodb:ListStreams",
                "codedeploy:BatchGetDeployments",
                "rds:ListTagsForResource",
                "storagegateway:DescribeChapCredentials",
                "redshift:DescribeReservedNodes",
                "elasticbeanstalk:DescribeConfigurationOptions",
                "storagegateway:ListVolumeInitiators",
                "dynamodb:DescribeGlobalTable",
                "codecommit:GetBranch",
                "s3:GetBucketCORS",
                "storagegateway:DescribeUploadBuffer",
                "storagegateway:DescribeTapeArchives",
                "s3:GetObjectVersion",
                "codepipeline:GetPipelineExecution",
                "elasticfilesystem:DescribeMountTargetSecurityGroups",
                "redshift:DescribeHsmConfigurations",
                "codedeploy:BatchGetDeploymentGroups",
                "glacier:GetVaultAccessPolicy",
                "s3:GetObjectVersionTagging",
                "ec2:GetHostReservationPurchasePreview",
                "ec2:DescribeVolumesModifications",
                "storagegateway:DescribeCachediSCSIVolumes",
                "redshift:DescribeDefaultClusterParameters",
                "ec2:GetConsoleScreenshot",
                "s3:GetObjectAcl",
                "ec2:GetLaunchTemplateData",
                "codecommit:GetComment",
                "dynamodb:DescribeTable",
                "redshift:DescribeClusterSnapshots",
                "s3:GetObjectVersionAcl",
                "codepipeline:GetPipeline",
                "dynamodb:GetItem",
                "ecr:BatchCheckLayerAvailability",
                "dynamodb:BatchGetItem",
                "codecommit:GetRepositoryTriggers",
                "ec2:DescribeVpnConnections",
                "ecr:GetDownloadUrlForLayer",
                "storagegateway:ListTapes",
                "dynamodb:Scan",
                "storagegateway:DescribeBandwidthRateLimit",
                "ec2:GetReservedInstancesExchangeQuote",
                "codepipeline:GetJobDetails",
                "s3:ListMultipartUploadParts",
                "ecs:DescribeClusters",
                "codestar:GetExtendedAccess",
                "elasticbeanstalk:DescribeEnvironmentManagedActions",
                "s3:GetObject",
                "codecommit:GetUploadArchiveStatus",
                "codecommit:GetRepository",
                "storagegateway:DescribeCache",
                "storagegateway:DescribeVTLDevices",
                "storagegateway:DescribeTapes",
                "ecr:BatchGetImage",
                "ecr:DescribeImages",
                "s3:GetAnalyticsConfiguration",
                "redshift:DescribeResize",
                "batch:DescribeJobDefinitions",
                "s3:GetObjectVersionForReplication",
                "ec2:DescribeElasticGpus",
                "dynamodb:DescribeBackup",
                "elasticache:ListTagsForResource",
                "codedeploy:BatchGetOnPremisesInstances",
                "dynamodb:GetRecords",
                "s3:ListBucketByTags",
                "codestar:DescribeUserProfile",
                "s3:ListBucketVersions",
                "s3:GetBucketLogging",
                "codecommit:GetTree",
                "s3:GetAccelerateConfiguration",
                "lambda:GetAccountSettings",
                "elasticbeanstalk:CheckDNSAvailability",
                "codecommit:GetBlob",
                "s3:GetBucketPolicy",
                "glacier:GetVaultNotifications",
                "ec2:GetConsoleOutput",
                "s3:GetObjectVersionTorrent",
                "glacier:GetDataRetrievalPolicy",
                "elasticbeanstalk:RequestEnvironmentInfo",
                "codecommit:GetCommitHistory",
                "s3:GetBucketRequestPayment",
                "codecommit:GetCommitsFromMergeBase",
                "elasticbeanstalk:DescribeInstancesHealth",
                "elasticbeanstalk:DescribeEnvironmentHealth",
                "s3:GetObjectTagging",
                "s3:GetMetricsConfiguration",
                "ecs:DescribeServices",
                "codecommit:DescribePullRequestEvents",
                "ecs:DescribeContainerInstances",
                "storagegateway:DescribeTapeRecoveryPoints",
                "redshift:DescribeClusterParameters",
                "codebuild:BatchGetProjects",
                "elasticfilesystem:DescribeMountTargets",
                "storagegateway:DescribeMaintenanceStartTime",
                "ec2:DescribeTags",
                "lambda:GetFunction",
                "redshift:DescribeHsmClientCertificates",
                "redshift:DescribeTags",
                "codecommit:GitPull",
                "redshift:DescribeClusterParameterGroups",
                "glacier:GetJobOutput",
                "elasticbeanstalk:DescribeConfigurationSettings",
                "codebuild:ListRepositories",
                "s3:GetBucketAcl",
                "codecommit:CancelUploadArchive",
                "dynamodb:DescribeTimeToLive",
                "storagegateway:DescribeStorediSCSIVolumes",
                "s3:GetObjectTorrent",
                "elasticfilesystem:DescribeTags",
                "codedeploy:BatchGetApplicationRevisions",
                "codedeploy:BatchGetDeploymentInstances",
                "storagegateway:DescribeSnapshotSchedule",
                "rds:DescribeDBClusterSnapshots",
                "rds:DownloadCompleteDBLogFile",
                "codepipeline:GetPipelineState",
                "elasticbeanstalk:RetrieveEnvironmentInfo",
                "s3:GetBucketLocation",
                "lambda:GetPolicy",
                "ecr:GetRepositoryPolicy"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "GRACE_Tenant1_View_Only_Policy2" {
  name        = "GRACE_Tenant1_View_Only_Policy2"
  path        = "/"
  description = "GRACE_Tenant1_View_Only_Policy2"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "polly:SynthesizeSpeech",
                "glue:GetCrawler",
                "comprehend:ListTopicsDetectionJobs",
                "cloudsearch:search",
                "glue:GetTableVersions",
                "glue:GetPartitions",
                "mediaconvert:GetPreset",
                "athena:GetQueryResults",
                "rekognition:DetectText",
                "rekognition:DescribeStreamProcessor",
                "cloudsearch:DescribeScalingParameters",
                "glue:GetDevEndpoint",
                "medialive:DescribeInput",
                "datapipeline:EvaluateExpression",
                "glue:GetTrigger",
                "rekognition:SearchFaces",
                "athena:GetExecutionEngine",
                "glue:GetJobRun",
                "athena:GetExecutionEngines",
                "elasticmapreduce:DescribeSecurityConfiguration",
                "cloudsearch:DescribeServiceAccessPolicies",
                "glue:GetJobs",
                "xray:GetServiceGraph",
                "glue:GetTriggers",
                "rekognition:GetPersonTracking",
                "mediastore:GetObject",
                "athena:GetQueryExecutions",
                "comprehend:BatchDetectKeyPhrases",
                "lex:GetBuiltinSlotTypes",
                "rekognition:ListFaces",
                "glue:GetPartition",
                "elastictranscoder:ReadPipeline",
                "cloudsearch:DescribeAnalysisSchemes",
                "athena:GetTable",
                "athena:BatchGetNamedQuery",
                "mediapackage:ListOriginEndpoints",
                "lex:GetBuiltinIntents",
                "athena:BatchGetQueryExecution",
                "cloudsearch:suggest",
                "cloud9:DescribeEnvironmentStatus",
                "glue:GetClassifiers",
                "rekognition:DetectFaces",
                "medialive:DescribeInputSecurityGroup",
                "lex:GetBotChannelAssociation",
                "cloudsearch:ListTags",
                "datapipeline:ValidatePipelineDefinition",
                "comprehend:DetectDominantLanguage",
                "rekognition:GetLabelDetection",
                "machinelearning:GetBatchPrediction",
                "glue:GetCatalogImportStatus",
                "elasticmapreduce:DescribeStep",
                "glue:GetConnection",
                "mediaconvert:GetJobTemplate",
                "sagemaker:DescribeEndpoint",
                "xray:GetTraceSummaries",
                "kinesis:DescribeLimits",
                "sagemaker:InvokeEndpoint",
                "mediapackage:DescribeChannel",
                "mediaconvert:GetJob",
                "comprehend:DescribeTopicsDetectionJob",
                "cloudsearch:DescribeSuggesters",
                "rekognition:DetectModerationLabels",
                "datapipeline:QueryObjects",
                "es:ESHttpGet",
                "machinelearning:GetMLModel",
                "sagemaker:DescribeModel",
                "rekognition:RecognizeCelebrities",
                "glue:BatchGetPartition",
                "elastictranscoder:ReadPreset",
                "rekognition:CompareFaces",
                "kinesis:DescribeStream",
                "es:DescribeElasticsearchDomainConfig",
                "glue:GetTable",
                "glue:GetDatabase",
                "cloud9:ListEnvironments",
                "transcribe:GetTranscriptionJob",
                "glue:GetDataflowGraph",
                "rekognition:GetFaceSearch",
                "sagemaker:CreatePresignedNotebookInstanceUrl",
                "comprehend:BatchDetectDominantLanguage",
                "comprehend:DetectEntities",
                "athena:GetQueryExecution",
                "glue:GetPlan",
                "comprehend:DetectKeyPhrases",
                "glue:GetJobRuns",
                "rekognition:ListCollections",
                "sagemaker:DescribeTrainingJob",
                "comprehend:DetectSentiment",
                "cloudsearch:DescribeAvailabilityOptions",
                "es:ListTags",
                "elastictranscoder:ReadJob",
                "athena:GetNamedQuery",
                "es:ESHttpHead",
                "rekognition:GetContentModeration",
                "glue:GetUserDefinedFunction",
                "polly:GetLexicon",
                "translate:TranslateText",
                "glue:GetUserDefinedFunctions",
                "rekognition:SearchFacesByImage",
                "glue:GetClassifier",
                "medialive:DescribeChannel",
                "rekognition:DetectLabels",
                "xray:GetTraceGraph",
                "glue:GetTables",
                "rekognition:GetFaceDetection",
                "athena:GetNamespace",
                "rekognition:GetCelebrityInfo",
                "mediapackage:DescribeOriginEndpoint",
                "athena:GetCatalogs",
                "athena:GetNamespaces",
                "glue:GetDevEndpoints",
                "sagemaker:DescribeEndpointConfig",
                "kinesis:GetRecords",
                "athena:GetTables",
                "mediastore:GetContainerPolicy",
                "glue:GetJob",
                "lex:GetBuiltinIntent",
                "glue:GetConnections",
                "machinelearning:GetDataSource",
                "glue:GetCrawlers",
                "machinelearning:GetEvaluation",
                "sagemaker:DescribeNotebookInstance",
                "kinesisvideo:GetDataEndpoint",
                "kinesisvideo:GetMedia",
                "elasticmapreduce:DescribeCluster",
                "mediaconvert:GetQueue",
                "kinesisvideo:GetMediaForFragmentList",
                "kinesisvideo:ListTagsForStream",
                "cloudsearch:DescribeIndexFields",
                "es:DescribeElasticsearchDomain",
                "cloud9:DescribeEnvironmentMemberships",
                "mediastore:DescribeObject",
                "rekognition:GetCelebrityRecognition",
                "comprehend:BatchDetectSentiment",
                "cloud9:DescribeEnvironments",
                "kinesis:GetShardIterator",
                "datapipeline:DescribeObjects",
                "comprehend:BatchDetectEntities",
                "datapipeline:GetPipelineDefinition",
                "glue:GetDatabases",
                "mediapackage:ListChannels",
                "lex:GetSlotType",
                "kinesis:ListTagsForStream",
                "xray:BatchGetTraces",
                "cloud9:GetUserPublicKey",
                "lex:GetBot",
                "cloudsearch:DescribeExpressions",
                "lex:GetIntent",
                "lex:GetBotAlias",
                "glue:GetCrawlerMetrics",
                "elasticmapreduce:DescribeJobFlows"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "GRACE_Tenant1_View_Only_Policy3" {
  name        = "GRACE_Tenant1_View_Only_Policy3"
  path        = "/"
  description = "GRACE_Tenant1_View_Only_Policy3"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "a4b:GetRoom",
                "appstream:DescribeDirectoryConfigs",
                "opsworks:GetHostnameSuggestion",
                "connect:DescribeInstance",
                "devicefarm:GetRun",
                "appstream:ListAssociatedFleets",
                "mobiletargeting:GetSegment",
                "states:DescribeStateMachine",
                "route53:ListTrafficPolicyVersions",
                "cloudtrail:GetTrailStatus",
                "route53:TestDNSAnswer",
                "sqs:ReceiveMessage",
                "route53:GetHealthCheck",
                "ses:GetIdentityMailFromDomainAttributes",
                "appsync:GetResolver",
                "devicefarm:GetDevicePool",
                "devicefarm:GetNetworkProfile",
                "ses:GetIdentityDkimAttributes",
                "cloudformation:DescribeStackEvents",
                "mq:DescribeBroker",
                "ses:DescribeReceiptRuleSet",
                "workmail:GetMailUserDetails",
                "cloudfront:GetStreamingDistribution",
                "mobilehub:VerifyServiceRole",
                "devicefarm:GetProject",
                "cloudformation:DescribeChangeSet",
                "cloudfront:GetDistributionConfig",
                "workmail:GetMobileDevicesForUser",
                "appstream:DescribeStacks",
                "a4b:GetRoomSkillParameter",
                "cloudfront:GetCloudFrontOriginAccessIdentityConfig",
                "appstream:DescribeImages",
                "route53:ListVPCAssociationAuthorizations",
                "route53:GetReusableDelegationSetLimit",
                "workdocs:GetDocumentVersion",
                "devicefarm:GetSuite",
                "cloudwatch:GetMetricStatistics",
                "route53:ListTagsForResources",
                "route53:GetAccountLimit",
                "appsync:GetGraphqlApi",
                "cloudformation:GetStackPolicy",
                "a4b:ListTags",
                "states:DescribeExecution",
                "swf:CountPendingDecisionTasks",
                "cloudwatch:DescribeAlarms",
                "route53:GetTrafficPolicy",
                "sns:GetSMSAttributes",
                "swf:CountPendingActivityTasks",
                "devicefarm:GetTest",
                "workmail:ListMembersInMailGroup",
                "appstream:DescribeSessions",
                "mobilehub:GetProjectSnapshot",
                "ses:GetIdentityPolicies",
                "swf:CountClosedWorkflowExecutions",
                "mobiletargeting:GetSegmentImportJobs",
                "appstream:ListTagsForResource",
                "mobiletargeting:GetCampaignActivities",
                "ses:VerifyDomainIdentity",
                "cloudformation:EstimateTemplateCost",
                "devicefarm:GetDevicePoolCompatibility",
                "cloudwatch:DescribeAlarmHistory",
                "workspaces:DescribeWorkspacesConnectionStatus",
                "mobilehub:ExportProject",
                "route53:GetTrafficPolicyInstance",
                "ses:VerifyEmailAddress",
                "mq:DescribeConfiguration",
                "mobilehub:DescribeBundle",
                "sns:GetTopicAttributes",
                "cloudfront:GetStreamingDistributionConfig",
                "ses:GetSendStatistics",
                "swf:DescribeWorkflowType",
                "mobiletargeting:GetApnsChannel",
                "ses:GetIdentityNotificationAttributes",
                "mobiletargeting:GetImportJob",
                "appstream:ListAssociatedStacks",
                "mobiletargeting:GetEndpoint",
                "devicefarm:GetUpload",
                "route53:ListTagsForResource",
                "ses:DescribeActiveReceiptRuleSet",
                "ses:GetAccountSendingEnabled",
                "mobiletargeting:GetReports",
                "devicefarm:GetJob",
                "workmail:GetMobileDeviceDetails",
                "workdocs:GetDocument",
                "cloudtrail:ListPublicKeys",
                "appsync:GetIntrospectionSchema",
                "apigateway:HEAD",
                "connect:GetFederationToken",
                "appsync:GetType",
                "workdocs:GetFolderPath",
                "appsync:GetSchemaCreationStatus",
                "a4b:GetSkillGroup",
                "ses:VerifyEmailIdentity",
                "devicefarm:GetRemoteAccessSession",
                "cloudformation:DescribeStackResource",
                "sns:CheckIfPhoneNumberIsOptedOut",
                "cloudfront:GetDistribution",
                "workmail:GetMailDomainDetails",
                "cloudwatch:DescribeAlarmsForMetric",
                "states:GetExecutionHistory",
                "cloudtrail:ListTags",
                "mq:DescribeConfigurationRevision",
                "mobiletargeting:GetCampaignVersions",
                "workdocs:GetFolder",
                "ses:GetTemplate",
                "workmail:GetMailGroupDetails",
                "apigateway:GET",
                "mobileanalytics:GetReports",
                "a4b:GetDevice",
                "sqs:GetQueueUrl",
                "cloudwatch:GetDashboard",
                "states:DescribeActivity",
                "route53:ListTrafficPolicyInstancesByHostedZone",
                "connect:GetFederationTokens",
                "autoscaling:DescribeTags",
                "cloudformation:DescribeStackResources",
                "sns:GetPlatformApplicationAttributes",
                "ses:GetIdentityVerificationAttributes",
                "sqs:GetQueueAttributes",
                "sns:GetSubscriptionAttributes",
                "mobiletargeting:GetCampaignVersion",
                "ses:DescribeReceiptRule",
                "mobiletargeting:GetSegmentVersions",
                "mobilehub:GetProject",
                "sns:ListPhoneNumbersOptedOut",
                "sns:GetEndpointAttributes",
                "devicefarm:GetAccountSettings",
                "mobiletargeting:GetCampaign",
                "cloudfront:ListTagsForResource",
                "cloudformation:GetTemplate",
                "a4b:GetProfile",
                "route53:GetHostedZoneLimit",
                "workdocs:GetDocumentPath",
                "route53:ListTrafficPolicyInstances",
                "route53:GetTrafficPolicyInstanceCount",
                "cloudwatch:GetMetricData",
                "states:ListExecutions",
                "ses:GetSendQuota",
                "ses:DescribeConfigurationSet",
                "workdocs:CheckAlias",
                "cloudtrail:GetEventSelectors",
                "devicefarm:GetOfferingStatus",
                "ses:VerifyDomainDkim",
                "sqs:ListQueueTags",
                "swf:DescribeDomain",
                "mobiletargeting:GetSegmentVersion",
                "devicefarm:GetDevice",
                "route53:ListTrafficPolicies",
                "workmail:GetMobilePolicyDetails",
                "appstream:DescribeFleets",
                "cloudformation:DescribeAccountLimits",
                "cloudfront:GetCloudFrontOriginAccessIdentity",
                "route53:GetQueryLoggingConfig",
                "swf:DescribeActivityType",
                "appsync:GetDataSource",
                "ses:GetCustomVerificationEmailTemplate",
                "mobileanalytics:GetFinancialReports",
                "cloudfront:GetInvalidation",
                "mq:DescribeUser",
                "apigateway:OPTIONS",
                "cloudformation:GetTemplateSummary",
                "cloudformation:PreviewStackUpdate",
                "swf:GetWorkflowExecutionHistory",
                "swf:CountOpenWorkflowExecutions",
                "states:DescribeStateMachineForExecution",
                "route53:ListTrafficPolicyInstancesByPolicy",
                "sqs:ListDeadLetterSourceQueues",
                "appstream:DescribeImageBuilders",
                "mobilehub:ExportBundle",
                "workmail:SearchMembers",
                "mobiletargeting:GetGcmChannel",
                "swf:DescribeWorkflowExecution",
                "a4b:ResolveRoom"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_admins_policy_attachment_" {
  role       = "${aws_iam_role.tenant1_admin_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_Admins_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_power_user_policy_attachment" {
  role       = "${aws_iam_role.tenant1_power_user_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_Power_User_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_view_only_policy1_attachment" {
  role       = "${aws_iam_role.tenant1_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_View_Only_Policy1.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_view_only_policy2_attachment" {
  role       = "${aws_iam_role.tenant1_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_View_Only_Policy2.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_view_only_policy3_attachment" {
  role       = "${aws_iam_role.tenant1_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_View_Only_Policy3.arn}"
}
