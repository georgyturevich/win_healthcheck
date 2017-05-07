Param (
  [switch] $UseLocal = $False,
  [string] $DockerHost = "localhost"
)

if ($UseLocal -eq $True) {
    docker build -t georgyturevich/win_healthcheck:healthcheck_win_flask .
} else {
    docker -H $DockerHost build -t georgyturevich/win_healthcheck:healthcheck_win_flask .
}
