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

$webTitle= htmlspecialchars("Official site of", ENT_NOQUOTES, 'utf-8') .$title ;

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

/*
 * Copyright (c) 2014, Delfi Ramirez <delfin at segonquart.net>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

?>