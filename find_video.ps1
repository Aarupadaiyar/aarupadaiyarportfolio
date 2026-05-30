
$c = [System.IO.File]::ReadAllText('index.html')
$searches = @('project-card','document_611','.mp4','video-tab','Project 1','proj-title','vid-title','video-item','proj-name','tab-content')
foreach ($s in $searches) {
    $idx = $c.IndexOf($s)
    Write-Host "$s -> $idx"
}
