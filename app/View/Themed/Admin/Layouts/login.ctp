<!doctype html> <!--
paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<!-- Use the .htaccess and remove these lines to avoid edge case issues.
		More info: h5bp.com/b/378 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Login :: Admin Template</title>
		<meta name="description" content="">
		<meta name="author" content="Simon Stamm & Markus Siemens">
		<!-- Mobile viewport optimized: j.mp/bplateviewport -->
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<!-- Place favicon.ico and apple-touch-icon.png in the root directory:
		mathiasbynens.be/notes/touch-icons -->
		
		<!-- CSS -->
		<?php 
			echo $this->Html->css('960gs/fluid.css');
			echo $this->Html->css('h5bp/normalize.css');
			echo $this->Html->css('h5bp/non-semantic.helper.classes.css');
			echo $this->Html->css('h5bp/print.styles.css');
			echo $this->Html->css('special-page.css');
			echo $this->Html->css('sprites.css');
			echo $this->Html->css('typographics.css');
			echo $this->Html->css('content.css');
			echo $this->Html->css('sprite.forms.css');
			echo $this->Html->css('ie.fixes.css');
			
			$this->fetch('css');
		?>
		
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<?php 
			echo $this->Html->script('jquery-latest.js');
			echo $this->Html->script('jquery.validate.js');
			echo $this->Html->script('libs/modernizr-2.0.6.min.js');
		?>
		
		<script>
			$(document).ready(function(){
  			    
		    $("#form_test").validate({
				rules:{
					"user":
					{
						required:true,
						//NameReg: true
					},
					
					"psw":{
						required: true,
					}
				},
				
				messages:{
					"user": {
						required: "Please enter Username",
		               // NameReg: "Please enter a valid Username."
		                },
					"psw":{
						required: "Please enter Password",
					}
				}
			});
		  });
		</script>
	</head>
	<body class="special_page">
		<div class="top">
			<div class="gradient"></div>
			<div class="white"></div>
			<div class="shadow"></div>
		</div>
		<div class="content">
			<h1>Admin | Login</h1>
			<div class="background"></div>
			<div class="wrapper">
				<div class="box">
					<div class="header grey">
						<?php echo $this->Html->image('icons/packs/fugue/16x16/lock.png',array('width'=>'16','height'=>'16','alt'=>''))?>
						<h3>Login</h3>
					</div>
					<?php echo $this->fetch('content');?>
					<?php //echo form_close();?>
				</div>
				<div class="shadow"></div>
			</div>
		</div>
		
		
		<!-- JavaScript at the bottom for fast page loading -->
		<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
		<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script> -->
		<?php echo $this->Html->script('jquery.min.js');?>
		<script>window.jQuery || document.write('<script src="<?php echo $this->Html->script('js/libs/jquery-1.7.1.js');?>"><\/script>')</script>
		<!-- <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script> -->
		<?php echo $this->Html->script('jquery-ui.min.js');?>
		<script>window.jQuery.ui || document.write('<script src="<?php echo $this->Html->script('js/libs/jquery-ui-1.8.16.min.js');?>"><\/script>')</script>
		
		<!-- scripts concatenated and minified via build script -->
		
		<?php 
			echo $this->Html->script('plugins.js');
			echo $this->Html->script('mylibs/jquery.jgrowl.js');
			echo $this->Html->script('mylibs/jquery.checkbox.js');
			echo $this->Html->script('mylibs/jquery.validate.js');
			echo $this->Html->script('script.js');
		?>
		<!-- end scripts -->
		
		<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to
		support IE 6.
		chromium.org/developers/how-tos/chrome-frame-getting-started -->
		<!--[if lt IE 7 ]>
		<script defer
		src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
		<script
		defer>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
		<![endif]-->
	</body>
</html>
