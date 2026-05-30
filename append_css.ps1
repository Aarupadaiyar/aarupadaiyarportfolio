
# Append SEO/GEO CSS to style.css
$cssPath = "style.css"

$addCss = @"

/* ===================================================
   SEO / GEO ADDITIONS - Aarupadaiyar KJ Portfolio
   =================================================== */

/* Visually Hidden - SEO H1 */
.visually-hidden {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border: 0;
}

/* GEO Content Block */
.geo-content-block {
  max-width: 900px;
  margin: 0 auto;
  padding: 5rem 2rem 2rem;
  font-size: 1rem;
  line-height: 1.85;
  color: rgba(226,232,240,0.9);
}

.geo-content-block h2 {
  font-family: 'Kanit', sans-serif;
  font-size: clamp(1.6rem, 3vw, 2.2rem);
  font-weight: 700;
  margin-bottom: 1.2rem;
  background: linear-gradient(135deg, #a78bfa, #7c3aed);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.geo-content-block h3 {
  font-family: 'Kanit', sans-serif;
  font-size: 1.15rem;
  font-weight: 600;
  margin: 2rem 0 0.6rem;
  color: #a78bfa;
}

.geo-content-block p {
  margin-bottom: 1.1rem;
  opacity: 0.88;
}

.geo-content-block strong {
  color: #c4b5fd;
  font-weight: 600;
}

/* FAQ Block */
.faq-block {
  margin-top: 4rem;
  border-top: 1px solid rgba(124, 58, 237, 0.2);
  padding-top: 3rem;
}

.faq-block h2 {
  font-family: 'Kanit', sans-serif;
  font-size: clamp(1.5rem, 2.8vw, 2rem);
  font-weight: 700;
  margin-bottom: 2rem;
  background: linear-gradient(135deg, #a78bfa, #7c3aed);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.faq-item {
  border: 1px solid rgba(124, 58, 237, 0.22);
  border-radius: 14px;
  margin-bottom: 0.85rem;
  overflow: hidden;
  background: rgba(255,255,255,0.025);
  transition: border-color 0.3s ease, background 0.3s ease;
}

.faq-item:hover {
  background: rgba(124, 58, 237, 0.06);
}

.faq-item[open] {
  border-color: rgba(124, 58, 237, 0.55);
  background: rgba(124, 58, 237, 0.05);
}

.faq-item summary {
  padding: 1.2rem 1.6rem;
  cursor: pointer;
  list-style: none;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  user-select: none;
  transition: background 0.2s;
}

.faq-item summary:hover { background: rgba(124,58,237,0.05); }

.faq-item summary h3 {
  margin: 0;
  font-family: 'Kanit', sans-serif;
  font-size: 1rem;
  font-weight: 600;
  color: #e2e8f0;
  -webkit-text-fill-color: #e2e8f0;
  background: none;
}

.faq-item summary::-webkit-details-marker { display: none; }

.faq-item summary::after {
  content: '+';
  flex-shrink: 0;
  font-size: 1.5rem;
  font-weight: 300;
  color: #7c3aed;
  line-height: 1;
  transition: transform 0.25s ease;
}

.faq-item[open] summary::after {
  content: '-';
}

.faq-item > p {
  padding: 0 1.6rem 1.3rem;
  margin: 0;
  color: rgba(226,232,240,0.82);
  font-size: 0.95rem;
  line-height: 1.75;
}

.faq-item > p strong {
  color: #c4b5fd;
}

@media (max-width: 640px) {
  .geo-content-block { padding: 3rem 1.2rem 1.5rem; }
  .faq-item summary { padding: 1rem 1.1rem; }
  .faq-item > p { padding: 0 1.1rem 1rem; }
}
"@

Add-Content -Path $cssPath -Value $addCss -Encoding UTF8
Write-Host "CSS appended to style.css"
$size = (Get-Item $cssPath).Length
Write-Host "style.css size: $([Math]::Round($size/1KB, 1)) KB"
