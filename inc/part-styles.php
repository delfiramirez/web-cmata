<?php
/*
 * Copyright (c) 2005, Delfi Ramirez <delfin at segonquart.net>
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
<?php

    header("Content-type: text/css; charset: UTF-8");
	
	$black ="#000";
	$null =0;
	
	$alignLeft ="left";
	$alignRight ="right";
	$alignCenter ="center";
	
	$positionFixed = "fixed";
	$positionrelative ="relative";
	$positionAbsolute ="absolute";
	
	$fontFamily = array("Monaco", "Lucida Sans Unicode", "sans-serif");
	
?>

        body {
            margin: <?php echo $null; ?>;
            padding: <?php echo $null; ?>;
            font: 12px/1.5 <?php echo $fontFamily; ?>
            text-align: <?php echo $alignCenter; ?>;
            background-color: <?php echo $black; ?>;
        }
		
        #content {
		    margin: auto;
            position: relative;
            text-align: <?php echo $alignLeft; ?>;
            width: 820px;
            height: 600px;
            background-color: <?php echo $black; ?>
        }
		
        #info {
            margin: <?php echo $null; ?>;
            padding: <?php echo $null; ?>;
            position:<?php echo $absolute, ?>
			z-index:-2;


        }
        a{
            color:<?php echo $black; ?>
            background-color:transparent;
            text-decoration:none;
        }
		
        h1,
		h2,
		p,
		a {
            margin: <?php echo $null; ?>;
            padding: 1em;
            font-size: 12px;
            line-height: 1.5em;
            text-indent:-999999.99999px;
        }
