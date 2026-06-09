<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

if (!function_exists('imagecreatefrompng')) {
    echo "GD library is NOT enabled.";
    exit;
}

$file = __DIR__ . '/assets/images/logo.png';
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
        
        // Remove white or near-white background
        // The logo has white background. We will use a threshold.
        if ($colors['red'] > 230 && $colors['green'] > 230 && $colors['blue'] > 230) {
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
echo "SUCCESS";
?>
