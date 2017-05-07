Param (
    [int] $Count = 40,
    [string] $DockerHost = "localhost",
    [string] $SleepTimeout = "5"
)

1..$Count | foreach {
    echo "$(date): Starting $_";
    docker -H $DockerHost run -d -l "win_healthcheck=true" -e "SLEEP_TIMEOUT=$SleepTimeout" georgyturevich/win_healthcheck:healthcheck_win_flask;
    echo "$(date): Started $_. Sleeping ...";
    #Start-Sleep -s 10
}