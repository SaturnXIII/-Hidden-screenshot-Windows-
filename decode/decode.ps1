echo pour utiliser le fichier .\decode_image.ps1 file.b64

[System.IO.File]::WriteAllBytes(($args[0] -replace '\.b64$', '.png'), [System.Convert]::FromBase64String((Get-Content $args[0])))