<?php
$dir = new RecursiveDirectoryIterator(__DIR__);
$ite = new RecursiveIteratorIterator($dir);
$files = new RegexIterator($ite, '/^.+\.(php|md|css|txt|js)$/i', RecursiveRegexIterator::GET_MATCH);

$replacements = [
    'PT PORDJO<br>STEELINDO PERKASA' => 'TOKO SUMBER<br>KERAMIK BALARAJA',
    'pordjosteelindoperkasa.com' => 'sumberkeramikbalaraja.com',
    'pordjosteelindoperkasa@gmail.com' => 'sumberkeramikbalaraja@gmail.com',
    'PT PORDJO' => 'TOKO SUMBER KERAMIK',
    'STEELINDO PERKASA' => 'BALARAJA',
    'PT Pordjo' => 'Toko Sumber Keramik'
];

foreach($files as $file) {
    $path = $file[0];
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
