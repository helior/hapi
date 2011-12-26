<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" <?php print $html_attributes;?>> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" <?php print $html_attributes;?>> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" <?php print $html_attributes;?>> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!--> <html <?php print $html_attributes;?>> <!--<![endif]-->
<head>
  <?php print $head; ?>
  <title><?php print $head_title; ?></title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <?php print $styles; ?>
  <?php print $scripts; ?>
  <script type="text/javascript"><?php /* Needed to avoid Flash of Unstyled Content in IE */ ?> </script>
</head>
<body class="<?php print $body_classes; ?>">
  <?php print $content; ?>
  <?php print $closure; ?>
</body>
</html>
