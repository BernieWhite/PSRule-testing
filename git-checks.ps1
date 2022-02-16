
"---"
"git diff --name-only main...FETCH_HEAD"
git diff --name-only main...FETCH_HEAD

"---"
"git diff --name-only main...HEAD~1"
git diff --name-only main...HEAD~1

"---"

"Get-Content HEAD"
Get-Content -Path ./.git/HEAD -ErrorAction Continue;

"dir .git/heads/"
Get-ChildItem -Path './.git/refs/' -Recurse -ErrorAction Continue;

