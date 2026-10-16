@Library("shared-jenkins-pipelines@feat/multiarch-spring-image-stage") _
springBootDockerCiPipeline(
    runIntegrationTests: false,
    useStackDeploymentForProduction: true,
    productionStackName: 'configuration-core',
    // Config Server now runs on tools1 (aarch64) as well as the x86 build/production
    // hosts, so the image must be published for both architectures.
    platform: 'linux/amd64,linux/arm64'
)
