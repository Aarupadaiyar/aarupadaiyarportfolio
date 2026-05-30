
$srcFile = "c:\Users\aarup\OneDrive\Desktop\repository folder\aarupadaiyarportfolio\aarav_portfolio.html"
$outDir  = "c:\Users\aarup\OneDrive\Desktop\repository folder\aarupadaiyarportfolio"

Write-Host "Reading file..."
$content = [System.IO.File]::ReadAllText($srcFile)

# ── 1. Extract CSS ──────────────────────────────────────────────────────
Write-Host "Extracting CSS..."
$styleOpen  = "<style>"
$styleClose = "</style>"
$cssStart = $content.IndexOf($styleOpen) + $styleOpen.Length
$cssEnd   = $content.IndexOf($styleClose)
$css = $content.Substring($cssStart, $cssEnd - $cssStart)

# ── 2. Extract JS ──────────────────────────────────────────────────────
Write-Host "Extracting JS..."
$scriptOpen  = "<script>"
$scriptClose = "</script>"
$jsBuilder = [System.Text.StringBuilder]::new()
$pos = 0
while ($true) {
    $jsStart = $content.IndexOf($scriptOpen, $pos)
    if ($jsStart -lt 0) { break }
    $jsEnd = $content.IndexOf($scriptClose, $jsStart)
    $block = $content.Substring($jsStart + $scriptOpen.Length, $jsEnd - $jsStart - $scriptOpen.Length)
    [void]$jsBuilder.AppendLine($block.Trim())
    [void]$jsBuilder.AppendLine("")
    $pos = $jsEnd + $scriptClose.Length
}

# Hamburger JS to wire up the mobile nav drawer
$hamburgerJs = @"
// ── Hamburger / Mobile Nav Drawer ──
(function() {
  var btn      = document.getElementById('nav-hamburger');
  var drawer   = document.getElementById('nav-mobile-drawer');
  var overlay  = document.getElementById('nav-mobile-overlay');
  var closeBtn = document.getElementById('nav-drawer-close');
  if (!btn || !drawer || !overlay) return;

  function openDrawer() {
    btn.classList.add('open');
    btn.setAttribute('aria-expanded', 'true');
    drawer.classList.add('open');
    drawer.setAttribute('aria-hidden', 'false');
    overlay.classList.add('active');
    document.body.style.overflow = 'hidden';
  }
  function closeDrawer() {
    btn.classList.remove('open');
    btn.setAttribute('aria-expanded', 'false');
    drawer.classList.remove('open');
    drawer.setAttribute('aria-hidden', 'true');
    overlay.classList.remove('active');
    document.body.style.overflow = '';
  }

  btn.addEventListener('click', openDrawer);
  overlay.addEventListener('click', closeDrawer);
  if (closeBtn) closeBtn.addEventListener('click', closeDrawer);
  drawer.querySelectorAll('.nav-drawer-link').forEach(function(link) {
    link.addEventListener('click', closeDrawer);
  });
})();
"@

[void]$jsBuilder.AppendLine($hamburgerJs)
$js = $jsBuilder.ToString()

# ── 3. Build the new index.html ────────────────────────────────────────
Write-Host "Building index.html..."

# Find where <body> starts (after </head>)
$headEnd     = $content.IndexOf("</head>")
$bodyStart   = $content.IndexOf("<body>")
$bodyEnd     = $content.IndexOf("</body>")

# The body content is everything from after <body> to before the first <script>
# We need to remove all <script>...</script> blocks from the body
$bodyRaw = $content.Substring($bodyStart + "<body>".Length, $bodyEnd - $bodyStart - "<body>".Length)

# Remove all <script>...</script> blocks from body
$bodyClean = [System.Text.RegularExpressions.Regex]::Replace($bodyRaw, "<script>[\s\S]*?</script>", "", [System.Text.RegularExpressions.RegexOptions]::Singleline)

$indexHtml = @"
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Aarupadaiyar KJ — AI/ML Engineer &amp; Developer</title>
  <meta name="description" content="Portfolio of Aarupadaiyar KJ — AI/ML Engineer, Developer, and Open-Source Contributor. Explore projects, skills, and certifications." />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link
    href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400;500;600;700;800;900&family=Space+Mono:wght@400;700&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="style.css" />
</head>

<body>
$($bodyClean.Trim())
  <script src="script.js"></script>
</body>

</html>
"@

# ── 4. Write files ─────────────────────────────────────────────────────
Write-Host "Writing style.css..."
[System.IO.File]::WriteAllText("$outDir\style.css", $css, [System.Text.Encoding]::UTF8)

Write-Host "Writing script.js..."
[System.IO.File]::WriteAllText("$outDir\script.js", $js, [System.Text.Encoding]::UTF8)

Write-Host "Writing index.html..."
[System.IO.File]::WriteAllText("$outDir\index.html", $indexHtml, [System.Text.Encoding]::UTF8)

Write-Host ""
Write-Host "Done! Files created:"
Write-Host "  index.html : $([System.IO.File]::ReadAllBytes("$outDir\index.html").Length) bytes"
Write-Host "  style.css  : $([System.IO.File]::ReadAllBytes("$outDir\style.css").Length) bytes"
Write-Host "  script.js  : $([System.IO.File]::ReadAllBytes("$outDir\script.js").Length) bytes"
