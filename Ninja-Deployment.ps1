Start-BitsTransfer -Source "<PASTE Agent URL HERE>" -Destination "C:\Users\Agent.msi" 

Start-Process msiexec.exe -Wait -ArgumentList '/I C:\Agent.msi /quiet'

Remove-Item -Path C:\Agent.msi


