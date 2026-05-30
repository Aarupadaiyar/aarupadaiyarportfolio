
$c = [System.IO.File]::ReadAllText('index.html')

function Check($label, $test) {
    if ($test) {
        Write-Host "[PASS] $label" -ForegroundColor Green
        return 1
    } else {
        Write-Host "[FAIL] $label" -ForegroundColor Red
        return 0
    }
}

$pass = 0
$pass += Check "Title tag optimized"          ($c.Contains('AI Engineer, ML Engineer'))
$pass += Check "Meta description w/ projects" ($c.Contains('InternshipIQ (AI internship aggregator)'))
$pass += Check "Canonical tag"                ($c.Contains('rel="canonical"'))
$pass += Check "Robots meta max-snippet"      ($c.Contains('max-snippet:-1'))
$pass += Check "Open Graph og:type"           ($c.Contains('og:type'))
$pass += Check "Open Graph og:image"          ($c.Contains('og:image'))
$pass += Check "Twitter card tag"             ($c.Contains('twitter:card'))
$pass += Check "Schema Person type"           ($c.Contains('"@type": "Person"'))
$pass += Check "Schema FAQPage type"          ($c.Contains('"@type": "FAQPage"'))
$pass += Check "Schema InternshipIQ"          ($c.Contains('InternshipIQ'))
$pass += Check "Schema Surge Prediction"      ($c.Contains('Surge Price Prediction'))
$pass += Check "JSON-LD sameAs LinkedIn"      ($c.Contains('linkedin.com/in/aarupadaiyarkj'))
$pass += Check "JSON-LD sameAs GitHub"        ($c.Contains('github.com/aarupadaiyarkj'))
$pass += Check "JSON-LD knowsAbout FastAPI"   ($c.Contains('"FastAPI"'))
$pass += Check "Visually-hidden H1"           ($c.Contains('visually-hidden'))
$pass += Check "GEO content section"          ($c.Contains('geo-content-block'))
$pass += Check "FAQ accordion block"          ($c.Contains('faq-block'))
$pass += Check "FAQ who-is"                   ($c.Contains('faq-who-is-aarupadaiyar'))
$pass += Check "FAQ InternshipIQ"             ($c.Contains('faq-internshipiq'))
$pass += Check "FAQ Surge Price"              ($c.Contains('faq-surge-price'))
$pass += Check "geo.region India"             ($c.Contains('geo.region'))
$pass += Check "AI entity ID anchor"          ($c.Contains('aarupadaiyar.netlify.app/#person'))
$pass += Check "preconnect fonts.gstatic"     ($c.Contains('fonts.gstatic.com'))

$total = 23
$fail = $total - $pass
Write-Host ""
Write-Host "==============================" -ForegroundColor Cyan
Write-Host "RESULT: $pass/$total passed, $fail failed" -ForegroundColor $(if ($fail -eq 0) { 'Cyan' } else { 'Yellow' })
Write-Host "index.html size: $([Math]::Round($c.Length/1KB, 0)) KB" -ForegroundColor Gray
