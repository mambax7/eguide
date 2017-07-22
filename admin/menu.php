<?php
//

$adminmenu[] = array(
    'title' => _MI_EGUIDE_ABOUT,
    'link'  => 'admin/help.php'
);
$adminmenu[] = array(
    'title' => _MI_EGUIDE_EVENTS,
    'link'  => 'admin/index.php?op=events'
);
$adminmenu[] = array(
    'title' => _MI_EGUIDE_NOTIFIES,
    'link'  => 'admin/index.php?op=notifies'
);
$adminmenu[] = array(
    'title' => _MI_EGUIDE_CATEGORY,
    'link'  => 'admin/index.php?op=category'
);
$adminmenu[] = array(
    'title' => _MI_EGUIDE_SUMMARY,
    'link'  => 'admin/index.php?op=summary'
);

$path = __DIR__ . '/../options/menu.php';

if (file_exists($path)) {
    include $path;
}

$adminObject4altsys[] = array(
    'title' => _MD_A_MYMENU_MYTPLSADMIN,
    'link'  => 'admin/index.php?mode=admin&lib=altsys&page=mytplsadmin'
);
$adminObject4altsys[] = array(
    'title' => _MD_A_MYMENU_MYBLOCKSADMIN,
    'link'  => 'admin/index.php?mode=admin&lib=altsys&page=myblocksadmin'
);
$adminObject4altsys[] = array(
    'title' => _MD_A_MYMENU_MYLANGADMIN,
    'link'  => 'admin/index.php?mode=admin&lib=altsys&page=mylangadmin'
);
$adminObject4altsys[] = array(
    'title' => _MD_A_MYMENU_MYPREFERENCES,
    'link'  => 'admin/index.php?mode=admin&lib=altsys&page=mypreferences'
);
