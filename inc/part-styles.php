<?php
/* 
 * 
 * 
 * 
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
