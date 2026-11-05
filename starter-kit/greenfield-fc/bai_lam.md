# Bài làm – GreenField FC

Họ và tên: Nguyễn Minh Tùng  
Lớp: CNTT3

## 4.2 Thao tác CLI
Lệnh đã chạy:
```powershell
pwd
ls -Recures -Force
mv .\ghi_chu_ban_giao.txt .\docs\
mkdir backup
cp .\data\danh_sach_cau_thu.xlsx .\backup\
rm .\temp_002.tmp
cd .\logs\
ls
cd ..
ls -Recures -Force

Kết quả liệt kê toàn bộ dự án (bao gồm file ẩn):
Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:32 PM                backup
d-----         11/5/2026   1:26 PM                data
d-----         11/5/2026   1:31 PM                docs
d-----         11/5/2026   1:23 PM                evidence
d-----         11/5/2026   1:26 PM                logs
d-----         11/5/2026   1:20 PM                web
-a----         11/5/2026   1:18 PM             92 .env
-a----         11/5/2026   1:35 PM            858 bai_lam.md


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM           8624 danh_sach_cau_thu.xlsx


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM           8624 danh_sach_cau_thu.xlsx


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM            554 ghi_chu_ban_giao.txt


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM            560 access.log


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:20 PM                images
-a----         11/5/2026   1:18 PM            750 app.js
-a----         11/5/2026   1:18 PM            680 index.html
-a----         11/5/2026   1:18 PM            401 style.css


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM           2115 greenfield-logo.png
-a----         11/5/2026   1:18 PM            413 greenfield-logo.svg
## 4.3 Lọc log
**a) Lệnh lọc status=500:**
Get-Content .\logs\access.log | Select-String "status=500" > .\logs\loi_500.txt
Hai dòng đầu của loi_500.txt:
2026-10-28 18:03:25 GET /api/players status=500
2026-10-28 18:05:12 GET /api/players status=500
**b) Lệnh đếm status=404 và kết quả:**
(Get-Content .\logs\access.log | Select-String "status=404").count
4
## 4.4 Script báo cáo
Lệnh chạy script:
#Tac gia: Nguyen Minh Tung
#Ngay tao: 05/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO GREENFIELD FC ===" > .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=404" >> .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=500" | Measure-Object >> .\logs\tong_hop.txt
Write-Host "Hoan thanh"
Nội dung logs/tong_hop.txt:
=== BAO CAO GREENFIELD FC ===

2026-10-28 18:03:22 GET /images/logo-sai.png status=404
2026-10-28 18:07:44 GET /fixtures status=404
2026-10-28 18:13:52 GET /favicon.ico status=404
2026-10-28 18:32:18 GET /api/players status=404




Count    : 3
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 
## 4.6 Kiểm tra website và báo cáo lỗi
| Tab | Tên file/thông báo | Cách khắc phục |
|---|---|---|
| Network | | |
| Console | | |

**Context:**

**Expected:**

**Actual:**

**Log:**

Câu tìm kiếm Google:

## Ghi chú Excel
Công thức/khó khăn đã gặp:
