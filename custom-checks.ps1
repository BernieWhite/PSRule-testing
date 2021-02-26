

$uri = "https://api.github.com/repos/$Env:GITHUB_REPOSITORY/check-runs"

$create = @{
    name = 'custom-check'
    head_sha = $Env:GITHUB_SHA
}

$headers = @{
    Authorization = "token $Env:GITHUB_TOKEN"
    Accept = 'application/vnd.github.v3+json'
}


Invoke-RestMethod -Method Post -Uri $uri -Headers $headers -Body ($create | ConvertTo-Json -Depth 100);
