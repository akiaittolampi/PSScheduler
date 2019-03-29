[Cmdletbinding()]
Param(
    [string]$rootPath = 'C:\PSScheduler\Scheduler\'
)


# One Minute
function OneMinute() {

    $Path = -Join ($rootPath, "OneMinute\")

    $Files = Get-ChildItem $Path

    foreach ($File in  $Files) {

        $FilesPath = -Join ($Path, $File)

        & $FilesPath

    }
    Start-Sleep -Seconds 60
}

# Five Minutes
function FiveMinutes() {

    $Path = -Join ($rootPath, "FiveMinutes\")

    $Files = Get-ChildItem $Path

    foreach ($File in  $Files) {

        $FilesPath = -Join ($Path, $File)

        & $FilesPath

    }
    Start-Sleep -Seconds 300
}

#Hourly
function Hourly() {

    $Path = -Join ($rootPath, "Hourly\")

    $Files = Get-ChildItem $Path

    foreach ($File in  $Files) {

        $FilesPath = -Join ($Path, $File)

        & $FilesPath
    }
    Start-Sleep -Seconds 3600
}


# Daily
function Daily() {

    $Path = -Join ($rootPath, "Daily\")

    $Files = Get-ChildItem $Path

    foreach ($File in  $Files) {

        $FilesPath = -Join ($Path, $File)

        & $FilesPath
    }

    Start-Sleep -Seconds 84600
}


# Run functions
while ($true) {

    OneMinute
    FiveMinutes
    Hourly
    Daily
}