$root = 'd:\Code Library\ForgeOS\Framework'
$skills = Get-ChildItem "$root\05-Skills" -Recurse -Filter SKILL.md | ForEach-Object {
  (Select-String -Path $_.FullName -Pattern '"skill"\s*:\s*"([^"]+)"').Matches | ForEach-Object { $_.Groups[1].Value }
} | Sort-Object -Unique
$refs = Get-ChildItem $root -Recurse -Filter *.md | Select-String -Pattern '\bForge-[A-Z][a-z]+(-[A-Z][a-z]+)*\b' -AllMatches |
  ForEach-Object { $_.Matches } | ForEach-Object { $_.Value } | Sort-Object -Unique
"authoredSkills=$($skills.Count) distinctRefs=$($refs.Count)"
'MISSING refs:'
$refs | Where-Object { $skills -notcontains $_ }
'--- structural check (Security category):'
foreach ($s in 'Forge-Security-Surface-Review','Forge-Security-Review','Forge-Security-Testing','Forge-Secrets-Management') {
  $p = "$root\05-Skills\05-Security\$s\SKILL.md"
  $c = Get-Content $p -Raw
  $fm = if ($c -match '"skill"\s*:\s*"([^"]+)"') { $Matches[1] } else { 'NO-FM' }
  $secs = @('Purpose','Responsibility','When To Use','When Not To Use','Inputs','Method','Outputs','Standards Applied','Interaction With Other Skills','Success Criteria') |
    Where-Object { $c -notmatch [regex]::Escape($_) }
  $tpl = [regex]::Matches($c, '([A-Za-z\-]+-template\.md)') | ForEach-Object { $_.Value } | Sort-Object -Unique |
    Where-Object { -not (Get-ChildItem "$root\07-Templates" -Recurse -Filter $_) }
  $lines = (Get-Content $p).Count
  "$s fmMatch=$($fm -eq $s) lines=$lines missingSections=[$($secs -join ',')] badTemplates=[$($tpl -join ',')]"
}
'--- frontmatter vs folder (all categories):'
$bad = Get-ChildItem "$root\05-Skills" -Recurse -Filter SKILL.md | Where-Object {
  $dir = $_.Directory.Name
  $c = Get-Content $_.FullName -Raw
  $c -notmatch ('"skill"\s*:\s*"' + [regex]::Escape($dir) + '"')
}
if ($bad) { $bad.FullName } else { 'all frontmatter match folders' }
