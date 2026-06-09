Add-Type -AssemblyName System.Drawing
$file = "c:\xampp\htdocs\manajemen-stok\assets\images\logo.png"
$img = [System.Drawing.Bitmap]::FromFile($file)
$newImg = New-Object System.Drawing.Bitmap($img.Width, $img.Height)

for ($x = 0; $x -lt $img.Width; $x++) {
    for ($y = 0; $y -lt $img.Height; $y++) {
        $pixel = $img.GetPixel($x, $y)
        if ($pixel.R -gt 235 -and $pixel.G -gt 235 -and $pixel.B -gt 235) {
            $newImg.SetPixel($x, $y, [System.Drawing.Color]::Transparent)
        } else {
            $newImg.SetPixel($x, $y, $pixel)
        }
    }
}

$img.Dispose()
$newFile = "c:\xampp\htdocs\manajemen-stok\assets\images\logo_trans.png"
$newImg.Save($newFile, [System.Drawing.Imaging.ImageFormat]::Png)
$newImg.Dispose()

Copy-Item $newFile $file -Force
Remove-Item $newFile
Write-Host "Done"
