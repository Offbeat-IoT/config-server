def sharedPipelinesVersion = env.SHARED_JENKINS_PIPELINES_VERSION ?: 'feat/provision-maven-settings'
def runIntegrationTests = env.BRANCH_NAME != 'main'

library "shared-jenkins-pipelines@${sharedPipelinesVersion}"

def integrationTestParams = [
    string(name: 'SHARED_JENKINS_PIPELINES_VERSION', value: sharedPipelinesVersion),
    string(name: 'APPLICATION_VERSIONS_REF', value: env.APPLICATION_VERSIONS_REF ?: 'main'),
    string(name: 'MAX_ALLOWED_TEST_FAILURES', value: '0'),
]

if (env.CHANGE_BRANCH) {
    env.BRANCH_NAME = env.CHANGE_BRANCH
}

springBootDockerCiPipeline(
    runIntegrationTests: runIntegrationTests,
    integrationTestJob: 'deployAndRunIntegrationTests',
    integrationTestParams: integrationTestParams,
    useStackDeploymentForTests: true,
    sourceRepo: 'Offbeat-IoT/config-server',
    stackMembershipVersion: 'main',
    runCanaryDeploy: false,
    runProductionDeploy: true
)
