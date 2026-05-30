
$f = "index.html"
$c = [System.IO.File]::ReadAllText($f)
$old = "Aarupadaiyar KJ " + [char]0xC3 + [char]0xA2 + [char]0xE2 + [char]0x80 + [char]0x9C + " AI/ML Engineer"
$new = "Aarupadaiyar KJ " + [char]0x2014 + " AI/ML Engineer"
$c2 = $c.Replace("Aarupadaiyar KJ â€" AI/ML Engineer", "Aarupadaiyar KJ — AI/ML Engineer")
[System.IO.File]::WriteAllText($f, $c2, [System.Text.Encoding]::UTF8)
Write-Host "Done. Replaced:" ($c.Contains("â€""))
