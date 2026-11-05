#Tac gia: Nguyen Minh Tung
#Ngay tao: 05/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO GREENFIELD FC ===" > .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=404" >> .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=500" | Measure-Object >> .\logs\tong_hop.txt
Write-Host "Hoan thanh"