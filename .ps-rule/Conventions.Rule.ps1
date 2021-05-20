

Export-PSRuleConvention 'GH-Hook' -If { ![String]::IsNullOrEmpty($Env:GITHUB_REPOSITORY) -and $TargetObject -is [PSRule.Data.RepositoryInfo] } -Begin {
    try {
        Export-GitHubRuleData -UseGitHubToken -OutputPath 'out/repo/repo.json';
        $PSRule.Import($PSRule.GetContent([System.IO.FileInfo]'out/repo/repo.json'));
    }
    catch {
        Write-Error $_
    }
}
