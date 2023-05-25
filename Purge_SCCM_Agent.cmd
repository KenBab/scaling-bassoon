sc.exe delete CCMSetup
start /B /wait C:\Windows\ccmsetup\CCMSetup.exe /Uninstall
RD /s /q "C:\Windows\ccmsetup"
RD /s /q "C:\Windows\CCM"
RD /s /q "C:\Windows\system32\CCM"
DEL /q "C:\windows\smscfg.ini"
DEL /q "C:\windows\*.mif"
timeout /t 5
REG DELETE HKLM\software\Microsoft\ccm /f
REG DELETE HKLM\software\Microsoft\CCMSETUP /f
REG DELETE HKLM\software\Microsoft\SMS /f
REG DELETE HKLM\software\Microsoft\Systemcertificates\SMS\Certificates /f
REG DELETE "HKLM\Software\Microsoft\CCMSetup" /v LastSuccessfulInstallParams /f
Timeout /t 5
