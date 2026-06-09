<?php
$dir = new RecursiveDirectoryIterator(__DIR__);
$ite = new RecursiveIteratorIterator($dir);
$files = new RegexIterator($ite, '/^.+\.(php|md|css|txt|js)$/i', RecursiveRegexIterator::GET_MATCH);

$replacements = [
    'Toko Sumber Keramik Balaraja' => 'TOKO SUMBER KERAMIK BALARAJA',
    'Toko Sumber Keramik' => 'TOKO SUMBER KERAMIK',
];

foreach($files as $file) {
    $path = $file[0];
    // Skip git, vendor, and our own replace scripts so we don't accidentally modify them
    if (strpos($path, '.git') !== false || strpos($path, 'vendor') !== false || strpos($path, 'replace_text') !== false) continue;
    $content = file_get_contents($path);
    $new_content = $content;
    foreach ($replacements as $search => $replace) {
        $new_content = str_replace($search, $replace, $new_content);
    }
    if ($new_content !== $content) {
        file_put_contents($path, $new_content);
        echo "Updated: $path\n";
    }
}
echo "Done.\n";
?>
