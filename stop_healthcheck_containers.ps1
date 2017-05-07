Param (
    [string] $DockerHost = "localhost"
)


$containers = $(docker -H $DockerHost ps -q --filter "label=win_healthcheck=true")

$containers | foreach {
    echo "$(date): Stoping $_";
    docker -H $DockerHost stop $_
    echo "$(date): Stoped $_. Sleeping ...";
    #Start-Sleep -s 3
}

