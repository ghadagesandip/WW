<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
?>
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
		<!-- DNS prefetch -->
		<link rel=dns-prefetch href="//fonts.googleapis.com">
		<!-- Use the .htaccess and remove these lines to avoid edge case issues.
		More info: h5bp.com/b/378 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>Admin Panel</title>
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Mobile viewport optimized: j.mp/bplateviewport -->
		<meta name="viewport" content="width=device-width,initial-scale=1">

		<!-- Place favicon.ico and apple-touch-icon.png in the root directory:
		mathiasbynens.be/notes/touch-icons -->

		<!-- CSS -->
		<?php
		echo $this -> Html -> css('960gs/fluid.css');
		echo $this -> Html -> css('h5bp/normalize.css');
		echo $this -> Html -> css('h5bp/non-semantic.helper.classes.css');
		echo $this -> Html -> css('print.styles.css');
		echo $this -> Html -> css('sprites.css');
		echo $this -> Html -> css('header.css');
		echo $this -> Html -> css('navigation.css');
		echo $this -> Html -> css('sidebar.css');
		echo $this -> Html -> css('content.css');
		echo $this -> Html -> css('footer.css');
		echo $this -> Html -> css('typographics.css');
		echo $this -> Html -> css('ie.fixes.css');
		echo $this -> Html -> css('sprite.forms.css');
		echo $this -> Html -> css('icons.css');
		echo $this -> Html -> css('external/jquery-ui-1.8.16.custom.css');
		echo $this -> Html -> css('footer.css');
		echo $this -> Html -> css('sprite.tables.css');
		echo $this -> fetch('css');
		?>
		<?php echo $this->Html->script('jquery.min.js');?>
		<script>window.jQuery || document.write('<script src="jquery-1.7.1.js"><\/script>')</script>
		<!-- <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script> -->
		<?php echo $this->Html->script('jquery-ui.min.js');?>
		<script>window.jQuery.ui || document.write('<script src="jquery-ui-1.8.16.min.js"><\/script>')</script>
	
		<?php
		echo $this -> Html -> script('libs/modernizr-2.0.6.min.js');
		
		

		echo $this -> fetch('script');
		?>

	</head>

	<body>

		<!-- Begin of #height-wrapper -->
		<div id="height-wrapper">
			<!-- Begin of header -->
			<header>
				<!-- Begin of the header toolbar -->
				<div id="header_toolbar">
					<div class="container_12">
						<h1 class="grid_8">Admin Panel</h1>
						<!-- Start of right part -->
						<div class="grid_4">
							<!-- A large toolbar button -->
							<div class="toolbar_large">
								<div class="toolbutton">
									<div class="toolicon">
										<?php echo $this -> Html -> image('icons/16x16/user.png', array('width' => '16', 'height' => '16', 'alt' => 'user')); ?>

									</div>
									<div class="toolmenu">
										<div class="toolcaption">
											<span>Administrator</span>
										</div>
										<!-- Start of menu -->
										<div class="dropdown">
											<ul>
												<li>
													<?php echo $this->Html->link('Frontend','/',array('target'=>'_blank'));?>
												</li>
												<li>
													<?php echo $this->Html->link('Logout',array('controller'=>'users','action'=>'logout','admin'=>true))?>
												</li>
											</ul>
										</div>
										<!-- End of menu -->
									</div>
								</div>
							</div>
							<!-- End of large toolbar button -->
						</div>
						<!-- End of right part -->
					</div>
				</div>
				<!-- End of the header toolbar -->

				<!-- Start of the main header bar -->
				<nav id="header_main">
					<div class="container_12">
						<!-- Start of the main navigation -->
						
						<?php //$current = strpos($this->request->url,'vehicles');
							//echo strpos($this->request->url,'vehicles');
							$home = $categories = $vendors = $faqs = $advertisements = '';
							
							if(strpos($this->request->url,'states') || strpos($this->request->url,'cities') || strpos($this->request->url,'towns'))
							{
								$home = "current";
							}
							
							if(strpos($this->request->url,'types') || strpos($this->request->url,'VehicleModels') || strpos($this->request->url,'categories') || strpos($this->request->url,'VehicleTypes'))
							{
								$categories = "current";
							}
							
							if(strpos($this->request->url,'photos') || strpos($this->request->url,'vehicles') || strpos($this->request->url,'vendors'))
							{
								$vendors = "current";
							}
							if(strpos($this->request->url,'faqs') )
							{
								$faqs = "current";
							}
							if(strpos($this->request->url,'advertisements') )
							{
								$advertisements = "current";
							}
						?>
						
						<ul id="nav_main">
							<li class="<?php echo $home;?>">
								<a href="#"> <?php echo $this -> Html -> image('icons/25x25/dark/computer-imac.png', array('width' => '25', 'height' => '25', 'alt' => '')); ?>
								Dashboard</a>
								<ul>
									<!-- <li>
										<?php print_r($post_menu);?>
									</li> -->
									<!-- <li class="current"> -->
									<li class="">	
										<?php echo $this -> Html -> link('States', array('controller' => 'states', 'action' => 'index','admin'=>true)); ?>
									</li>
									<li class="">
										<?php echo $this -> Html -> link('Cities', array('controller' => 'cities', 'action' => 'index','admin'=>true)); ?>
									</li>
									<li>
										<?php echo $this -> Html -> link('Towns', array('controller' => 'towns', 'action' => 'index','admin'=>true)); ?>
									</li>
								</ul>
							</li>
							<li class="<?php echo $categories;?>">
								<!-- <a href="<?php echo $this -> Html -> url('Categories', array('controller' => 'categories', 'action' => 'index','admin'=>true)); ?>">
									 <?php echo $this -> Html -> image('icons/25x25/dark/computer-imac.png', array('width' => '25', 'height' => '25', 'alt' => '')); ?>
								Categories</a> -->
								
								
								<?php 
									echo $this->Html->link(
									    $this->Html->image("icons/25x25/dark/computer-imac.png", array('width' => '25', 'height' => '25', 'alt' => '')).'Categories',
									    array('controller' => 'categories', 'action' => 'index','admin'=>true),array('escape'=>FALSE));
								?>
								<ul>
									
									<li class="">
										<?php echo $this -> Html -> link('Vehicle Type', array('controller' => 'types', 'action' => 'index','admin'=>true)); ?>
									</li>
									<li>
										<?php echo $this -> Html -> link('Vehicle Model', array('controller' => 'VehicleModels', 'action' => 'index','admin'=>true)); ?>
									</li>
									<li>
										<?php echo $this -> Html -> link('Type', array('controller' => 'VehicleTypes', 'action' => 'index','admin'=>true)); ?>
									</li>
								</ul>
							</li>
							
							<li class="<?php echo $vendors;?>">
								<!-- <a href="<?php echo $this -> Html -> url('Categories', array('controller' => 'categories', 'action' => 'index','admin'=>true)); ?>">
									 <?php echo $this -> Html -> image('icons/25x25/dark/computer-imac.png', array('width' => '25', 'height' => '25', 'alt' => '')); ?>
								Categories</a> -->
								
								
								<?php 
									echo $this->Html->link(
									    $this->Html->image("icons/25x25/dark/computer-imac.png", array('width' => '25', 'height' => '25', 'alt' => '')).'Vendors',
									    array('controller' => 'vendors', 'action' => 'index','admin'=>true),array('escape'=>FALSE));
								?>
								<ul>
									
									<!-- <li class="">
										<?php echo $this -> Html -> link('Vehicles', array('controller' => 'vehicles', 'action' => 'index','admin'=>true)); ?>
									</li>
									<li>
										<?php echo $this -> Html -> link('Gallery', array('controller' => 'photos', 'action' => 'index','admin'=>true)); ?>
									</li> -->
								</ul>
							</li>
							
							<li class="<?php echo $faqs;?>">
								<?php 
									echo $this->Html->link(
									    $this->Html->image("icons/25x25/dark/computer-imac.png", array('width' => '25', 'height' => '25', 'alt' => '')).'Faqs',
									    array('controller' => 'faqs', 'action' => 'index','admin'=>true),array('escape'=>FALSE));
								?>
								<ul>
									
								</ul>
							</li>
							
							<li class="<?php echo $advertisements;?>">
								
								
								<?php 
									echo $this->Html->link(
									    $this->Html->image("icons/25x25/dark/computer-imac.png", array('width' => '25', 'height' => '25', 'alt' => '')).'Advertisements',
									    array('controller' => 'advertisements', 'action' => 'index','admin'=>true),array('escape'=>FALSE));
								?>
								<ul>
									
								</ul>
							</li>
						</ul>
						<!-- End of the main navigation -->
					</div>
				</nav>
				<div id="nav_sub"></div>
			</header>

			<!-- Start of the content -->
			<div role="main" class="container_12" id="content-wrapper">
				

				<!-- Start of the main content -->
				<div id="main_content">

					

					<div class="grid_12">
						<?php echo $this -> fetch('content'); ?>
						<!-- End of .box -->
					</div>
					<!-- End of .grid_12 -->
					<div class="clear"></div>

				</div>
				<!-- End of #main_content -->
				<div class="push clear"></div>

			</div>
			<!-- End of #content-wrapper -->
			<div class="clear"></div>
			<div class="push"></div>
			<!-- BUGFIX if problems with sidebar in Chrome -->

		</div>
		<!-- End of #height-wrapper -->

		<!-- Start of footer-->
		<footer>
			<div class="container_12">
				<!--Copyright &copy; 2011 YourCompany, all rights reserved.-->
				<div id="button_bar">
					<ul>
						<li>
							<span><a href="#">Dashboard</a></span>
						</li>
						<li>
							<span><a href="#">Settings</a></span>
						</li>
					</ul>
				</div>
			</div>
		</footer><!-- End of footer-->

		<!-- JavaScript at the bottom for fast page loading -->
		<!-- Grab Google CDN's jQuery + jQueryUI, with a protocol relative URL; fall back to local -->
		<?php echo $this->Html->script('jquery.min.js');?>
		<script>window.jQuery || document.write('<script src="jquery-1.7.1.js"><\/script>')</script>
		<!-- <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script> -->
		<?php echo $this->Html->script('jquery-ui.min.js');?>
		<script>window.jQuery.ui || document.write('<script src="jquery-ui-1.8.16.min.js"><\/script>')</script>

		<!-- scripts concatenated and minified via build script -->
		<?php
		echo $this -> Html -> script('plugins.js');
		echo $this -> Html -> script('mylibs/jquery.ba-resize.js');
		echo $this -> Html -> script('mylibs/jquery.easing.1.3.js');
		echo $this -> Html -> script('mylibs/jquery.ui.touch-punch.js');
		echo $this -> Html -> script('mylibs/jquery.chosen.js');
		echo $this -> Html -> script('mylibs/jquery.validate.js');
		echo $this -> Html -> script('mylibs/jquery.dataTables.js');
		echo $this -> Html -> script('script.js');
		?>

		<script>
			$(window).load(function() {
				$('#accordion').accordion();
				$(window).resize();
			});
		</script>

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
