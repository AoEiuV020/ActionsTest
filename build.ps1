# 创建输出目录
New-Item -ItemType Directory -Force -Path "build/output" | Out-Null
New-Item -ItemType Directory -Force -Path "build/output/sub" | Out-Null

# 收集系统信息
Get-Variable | Out-File "build/output/set"
Get-ChildItem env: | Out-File "build/output/export"
Get-ChildItem .. | Select-Object Mode, LastWriteTime, Length, Name | Format-Table | Out-File "build/output/list"
whoami | Out-File "build/output/.id"
Get-Date | Out-File "build/output/date"
[System.Environment]::OSVersion | Out-File "build/output/uname"
Get-ComputerInfo | Format-List | Out-File "build/output/release"

# 复制文件
Copy-Item $PSCommandPath "build/output/sub/script"
if (Test-Path "index.html") {
    Copy-Item "index.html" "build/output/"
} 