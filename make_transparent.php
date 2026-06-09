<?php
$file = 'c:\xampp\htdocs\manajemen-stok\assets\images\logo.png';
if (!file_exists($file)) {
    die("File not found");
}
$img = imagecreatefrompng($file);

$width = imagesx($img);
$height = imagesy($img);

$new_img = imagecreatetruecolor($width, $height);
imagealphablending($new_img, false);
imagesavealpha($new_img, true);

$transparent = imagecolorallocatealpha($new_img, 0, 0, 0, 127);
imagefill($new_img, 0, 0, $transparent);

for ($x = 0; $x < $width; $x++) {
    for ($y = 0; $y < $height; $y++) {
        $rgb = imagecolorat($img, $x, $y);
        $colors = imagecolorsforindex($img, $rgb);
        
        // Check if the color is white or very close to white
        if ($colors['red'] > 240 && $colors['green'] > 240 && $colors['blue'] > 240) {
            // make it transparent
            imagesetpixel($new_img, $x, $y, $transparent);
        } else {
            $color = imagecolorallocatealpha($new_img, $colors['red'], $colors['green'], $colors['blue'], $colors['alpha']);
            imagesetpixel($new_img, $x, $y, $color);
        }
    }
}

imagepng($new_img, $file);
imagedestroy($img);
imagedestroy($new_img);
echo "Image background removed.\n";
?>
