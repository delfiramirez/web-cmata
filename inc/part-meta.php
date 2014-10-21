<?php
/* 
 * 
 * 
 * 
 */
?>
 
 <title>
    <?php echo $title ?></title>
    <meta name="description" content="<?php echo $description ?>" />
    <meta name="keywords" content="<?php echo $keywords ?>" />
    <meta name="copyright" content="<?php echo $copyright ?>" />

    <meta name="MSSmartTagsPreventParsing" content="true" />
    <meta http-equiv="Content-Type" content="<?php echo $format ?>, charset=ISO-8859-1\r\n" />
	
	<meta name="robots" content="<?php echo htmlspecialchars($robots, ENT_NOQUOTES, 'utf-8'); ?>" />
	<meta name="msnbot" content="<?php echo htmlspecialchars($robots, ENT_NOQUOTES, 'utf-8'); ?>" />
	<meta itemprop="url" content="<?php echo $baseHref ?>" />
	
	<meta name="DC.Title" lang="eng" content="<?php echo $title ?>">
	<meta name="DC.Title.alternative" lang="eng" content="<?php echo $title ?>">
	<meta name="DC.Creator.CorporateName" lang="eng" content="<?php echo $copyrightDeveloperURL ?>">
	<meta name="DC.Subject.keywords" scheme="DDC" lang="eng" content="<?php echo $keywords ?>" />
	<meta name="DC.Description.Abstract" lang="eng" content="<?php echo $description ?>">
	<meta name="DC.Publisher.CorporateName" lang="eng" content="<?php echo $copyrightDeveloperURL  ?>" />
	<meta name="DC.Contributor.CorporateName" lang="eng" content="<?php echo $title ?>" />>
	<meta name="DC.Date.DataGathered" content="<?php echo date('Y, m, d') ?>" />
	<meta name="DC.Format" content="<?php echo $format ?>" />
	<meta name="DC.Format.extent" content="4 Kbytes"/>
	<meta name="DC.Type" scheme="DCT" content="Data"/>
	<meta name="DC.Identifier" scheme="URI" content="<?php echo $baseHref ?>" />
	<meta name="DC.Language" content="en">
	<meta name="DC.Rights" scheme="URL" lang="eng" content="Delfi Ramirez @ Segonquart Studio"  />

