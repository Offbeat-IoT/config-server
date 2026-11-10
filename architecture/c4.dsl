# C4 model fragment - Offbeat-IoT/config-server
# Consumed by Offbeat-IoT/information/scripts/c4/build.py.

config_server = softwareSystem "Config Server" "The shared Spring Cloud Config Server: the single place the platform's Spring Boot services read their externalised configuration from, per application name and label, so a property change does not need a rebuild." {
  tags "runtime"

  server = container "Config Server" "Serves /{application}/{profile}/{label} configuration to every service that imports configserver:http://config-server:8080/, reading the Offbeat-IoT/config-server-configs repository through the git backend with the {application} search path, so each service gets its own properties and YAML plus the shared application.* defaults. It listens on 8080 with actuator under /manage and liveness/readiness probes, and can instead run the native profile against a local checkout of the same configuration." "Java 23, Spring Boot, Spring Cloud Config Server"
}
