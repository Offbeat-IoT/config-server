// TODO: revert this ref to `main` once the multi-arch change
// (shared-jenkins-pipelines PR #132) is merged. Pinning a feature branch breaks
// the build when that branch is deleted.
@Library("shared-jenkins-pipelines@feat/multiarch-spring-image-stage") _
springBootDockerCiPipeline(
    runIntegrationTests: false,
    useStackDeploymentForProduction: true,
    productionStackName: 'configuration-core',
    // Config Server now runs on tools1 (aarch64) as well as the x86 build/production
    // hosts, so the image must be published for both architectures.
    platform: 'linux/amd64,linux/arm64'
)
