<?php
$dir = new RecursiveDirectoryIterator(__DIR__);
$ite = new RecursiveIteratorIterator($dir);
$files = new RegexIterator($ite, '/^.+\.(php|md|css|txt|js)$/i', RecursiveRegexIterator::GET_MATCH);

$replacements = [
    'Sistem Manajemen Barang PT Pordjo Steelindo Perkasa' => 'Sistem Manajemen Stok Toko Sumber Keramik Balaraja',
    'PT. Pordjo Steelindo Perkasa' => 'Toko Sumber Keramik Balaraja',
    'PT Pordjo Steelindo Perkasa' => 'Toko Sumber Keramik Balaraja',
    'PT Pordjo Steelindo' => 'Toko Sumber Keramik Balaraja',
    'PT Pordjo' => 'Toko Sumber Keramik',
    'baja dan besi' => 'keramik',
    'Baja & Besi' => 'Keramik',
    'baja & besi' => 'keramik',
    'Baja dan Besi' => 'Keramik',
    'Distributor Baja & Besi' => 'Toko Keramik',
    'distributor baja dan besi' => 'toko keramik'
];

foreach($files as $file) {
    $path = $file[0];
    if (strpos($path, '.git') !== false || strpos($path, 'vendor') !== false || strpos($path, 'replace_text.php') !== false) continue;
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
