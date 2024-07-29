# Define the file path
$File = "C:\Users\Metal Gear\Documents\GitHub\RandomSizzels\Powershell\secure_encrypt.txt"

# Read and decrypt the password
$EncryptedPassword = Get-Content -Path $File | ConvertTo-SecureString
$PlainTextPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($EncryptedPassword))

# Output the decrypted password
Write-Output "Decrypted Password: $PlainTextPassword"
