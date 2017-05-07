Param (
  [string] $DockerHost = "localhost",
  [string] $ExternalPort = "18080"
)


docker -H $DockerHost stop aurea-central-test-healthcheck;
docker -H $DockerHost rm aurea-central-test-healthcheck;
docker -H $DockerHost run -d -p "$ExternalPort`:5000" --ip 172.17.2.250 -e "SLEEP_TIMEOUT=6" -l "centralhealthcheck=true" --name=aurea-central-test-healthcheck georgyturevich/win_healthcheck:healthcheck_win_flask;
docker -H $DockerHost logs aurea-central-test-healthcheck;