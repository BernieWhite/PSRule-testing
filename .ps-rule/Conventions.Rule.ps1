

Export-PSRuleConvention 'GH-Hook' -If { ![String]::IsNullOrEmpty($Env:GITHUB_REPOSITORY) -and $TargetObject -is [PSRule.Data.RepositoryInfo] } -Begin {
    Write-Warning "Running convention"
    try {
        Export-GitHubRuleData -UseGitHubToken -OutputPath 'out/repo/repo.json' -Repository $Env:GITHUB_REPOSITORY;
        $outputItem = Get-Item -Path 'out/repo/repo.json';
        $PSRule.Import($PSrule.GetContent($outputItem));
    }
    catch {
        Write-Error $_
    }
}
