Param (
  [switch] $UseLocal = $False,
  [string] $DockerHost = "localhost"
)

if ($UseLocal -eq $True) {
    docker build -t georgyturevich/win_healthcheck:win_flask_base .
} else {
    docker -H $DockerHost build -t georgyturevich/win_healthcheck:win_flask_base .
}
