

if ($psISE) {$BaseDir = Split-Path -Path $psISE.CurrentFile.FullPath    #IF running in ISE, with line by line execution this will work
} else {$BaseDir = $PSScriptRoot}

$RepoPath = "C:\ASN_GitRepos\Public"
set-location "$($RepoPath)"

git add --all
git commit -m "$(get-date -f `"MM_dd_yyyy_HH_mm`")"
git push -u origin main