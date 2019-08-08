$ReportTitle = "System info"
$Header = @"
<style>
h1, h5, th { text-align: center; } 
table { margin: auto; font-family: Segoe UI; box-shadow: 10px 10px 5px #888; border: thin ridge grey; } 
th { background: #0046c3; color: #fff; max-width: 400px; padding: 5px 10px; } 
td { font-size: 11px; padding: 5px 20px; color: #000; } 
tr { background: #b8d1f3; } 
tr:nth-child(even) { background: #dae5f4; } 
tr:nth-child(odd) { background: #b8d1f3; }
</style>
"@

Get-PSDrive | ConvertTo-Html -Property Name,Used,Provider,Root,CurrentLocation -Head $Header  -Title $ReportTitle -Body "<h1>$ReportTitle</h1>`n<h5>Updated: on $(Get-Date)</h5>" | Out-File  Report.html

