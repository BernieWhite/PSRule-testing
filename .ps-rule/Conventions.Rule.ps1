

Export-PSRuleConvention 'GH-Hook' -If { ![String]::IsNullOrEmpty($Env:GITHUB_REPOSITORY) } {
    Export-GitHubRuleData -UseGitHubToken -OutputPath 'out/repo/repo.json';

    $PSRule.Import($PSrule.GetContent('out/repo/repo.json'));
}
