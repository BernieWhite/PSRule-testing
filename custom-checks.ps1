param (
    [string]$Token
)



$uri = "https://api.github.com/repos/$Env:GITHUB_REPOSITORY/check-runs"

$create = @{
    name = 'PSRule'
    head_sha = $Env:GITHUB_SHA
    status = 'completed'
    conclusion = 'success'
    output = @{
        title = 'Using custom checks'
        summary = '**Go custom checks**'
        text = "Some additional **test**"
    }
}

$headers = @{
    Authorization = "Bearer $Token"
    Accept = 'application/vnd.github.v3+json'
}


Invoke-RestMethod -Method Post -Uri $uri -Headers $headers -Body ($create | ConvertTo-Json -Depth 100);
