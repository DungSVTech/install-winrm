
### 01.set up WinRM Memory Hotfix, run script Install-WMF3Hotfix.ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$file = "c:\temp\Install-WMF3Hotfix.ps1"
powershell.exe -ExecutionPolicy ByPass -File $file -Verbose



### 02.set up WinRM Setup, run script ConfigureRemotingForAnsible.ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$file = "c:\temp\ConfigureRemotingForAnsible.ps1"
powershell.exe -ExecutionPolicy ByPass -File $file

### 03.set up WinRM Setup
PS C:\Users\Administrator\Desktop> .\Setup-winrm-For-Ansible.ps1

### 04. Command check WinRM service
PS winrm enumerate winrm/config/Listener

PS winrm get winrm/config