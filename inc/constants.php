<?php

chdir(__DIR__);

define('ROOT', dirname(dirname(__FILE__)));

/* Define REGEX */

define('REGEX_EMAIL', '/^[^\W][a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)*\@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z]{2,6}$/');
define('REGEX_DOMAIN', '/^(([a-zA-Z0-9-]+)\.?)([a-zA-Z0-9-]+)\.(([a-zA-Z]{2,6})|([a-zA-Z]{2,3}\.[a-zA-Z]{2}))$/');

/* Define CONSTANTS */

$BASEURL= htmlspecialchars("http://carlosmata.eu", ENT_NOQUOTES, 'utf-8');

$title= htmlspecialchars("Carlos Mata", ENT_NOQUOTES, 'utf-8');

$titleActivity= htmlspecialchars("Sculptures and Bijoux", ENT_NOQUOTES, 'utf-8');

$webTitle= htmlspecialchars("Official site of"  ENT_NOQUOTES, 'utf-8') .$title ;

$description= htmlspecialchars("Carlos Mata Scuptures and Bijoux", ENT_NOQUOTES, 'utf-8');

$keywords=array('carlos', 'mata', 'sculpteur', 'bijoux', 'catalogue', 'artist', 'marguerite', 'yarmats', 'segonquart', 'studio');

$copyright= $copyrightDeveloperName . date('Y') . htmlspecialchars (" and " , ENT_NOQUOTES, 'utf-8') . $title) ;

$copyrightDeveloperURL = htmlspecialchars("http://segonquart.net", ENT_NOQUOTES, 'utf-8');

$copyrightDeveloperName = htmlspecialchars("Segonquart Studio", ENT_NOQUOTES, 'utf-8');

$robots = htmlspecialchars("all,index,follow", ENT_NOQUOTES, 'utf-8');

$format = htmlspecialchars("text/html", ENT_NOQUOTES, 'utf-8');
$headers = htmlspecialchars("Content-Type: text/html; charset=ISO-8859-1\r\n", ENT_NOQUOTES, 'utf-8');

$urlIcoALink = htmlspecialchars("assets/ico/favicon.ico", ENT_NOQUOTES, 'utf-8');

$urlIcoBLink = htmlspecialchars("assets/ico/animated_favicon1.gif", ENT_NOQUOTES, 'utf-8');
?>