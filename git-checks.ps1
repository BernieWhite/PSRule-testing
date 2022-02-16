
"---"
"git diff --name-only main...FETCH_HEAD"
git diff --name-only main...FETCH_HEAD

"---"
"git diff --name-only main...HEAD~1"
git diff --name-only main...HEAD~1

"---"

"GITHUB_REF"
$Env:GITHUB_REF

"GITHUB_HEAD_REF"
$Env:GITHUB_HEAD_REF

"GITHUB_BASE_REF"
$Env:GITHUB_BASE_REF

"GITHUB_REPOSITORY"
$Env:GITHUB_REPOSITORY

"Get-Content HEAD"
Get-Content -Path ./.git/HEAD -ErrorAction Continue;

"dir .git/refs/"
Get-ChildItem -Path './.git/refs/' -Recurse -ErrorAction Continue;

