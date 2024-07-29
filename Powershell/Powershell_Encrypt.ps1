$File = "C:\Users\Metal Gear\Documents\GitHub\RandomSizzels\Powershell\secure_encrypt.txt"
$Password = "P@ssword1" | ConvertTo-SecureString -AsPlainText -Force
$Password | ConvertFrom-SecureString | Out-File $File