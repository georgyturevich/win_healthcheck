Param (
  [switch] $UseLocal = $False,
  [string] $DockerHost = "localhost"
)

if ($UseLocal -eq $True) {
    docker push georgyturevich/win_healthcheck:healthcheck_win_flask
} else {
    docker -H $DockerHost push georgyturevich/win_healthcheck:healthcheck_win_flask
}


