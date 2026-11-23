<?php declare(strict_types=1);

use JTL\Plugin\Helper;
use Plugin\jtl_theme_editor\Editor;

if (!defined('PFAD_ROOT')) {
    require_once __DIR__ . '/../../../admin/includes/admininclude.php';
}
global $plugin;
$editor = new Editor($plugin ?? Helper::getPluginById('jtl_theme_editor'));
if (($_POST['theme_editor_api'] ?? null) === '1' && isset($_POST['action'])) {
    $editor->json($_REQUEST['action']);
    exit;
} else {
    $editor->showEditor();
}
