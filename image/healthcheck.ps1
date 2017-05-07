try {
    curl http://localhost:5000/ -UseBasicParsing
    Write-Output 0
}
catch {
    Write-Output 1
}

