$ReportTitle = "System info"
Get-PSDrive | ConvertTo-Html -Property Name,Used,Provider,Root,CurrentLocation -CssUri "table.css" -Title $ReportTitle -Body "<h1>$ReportTitle</h1>`n<h5>Updated: on $(Get-Date)</h5>" | Out-File Report.html
Invoke-Item "Report.html" 
