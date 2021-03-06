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
    echo $this -> Html -> css('sprite.gallery.css');

    echo $this -> Html -> css('jquery.rating.css');

    echo $this -> fetch('css');
    ?>
    <?php echo $this -> Html -> script('jquery.min.js'); ?>
    <script>
        window.jQuery || document.write('<script src="jquery-1.7.1.js"><\/script>')
        var baseUrl = '<?php echo Router::url('/',true)?>';
    </script>
    <!-- <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script> -->
    <?php echo $this -> Html -> script('jquery-ui.min.js'); ?>
    <script>
        window.jQuery.ui || document.write('<script src="jquery-ui-1.8.16.min.js"><\/script>')
    </script>


</head>

<body>

<!-- Begin of #height-wrapper -->
<div id="height-wrapper">
<!-- Begin of header -->


<!-- Start of the content -->
<div role="main" class="container_12" id="content-wrapper">
    <!-- Start of the sidebar -->


    <!-- Start of the main content -->
    <div id="main_content">

        <!-- <h2 class="grid_12">Admin Panel</h2>
        <div class="clean"></div> -->

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


<!-- JavaScript at the bottom for fast page loading -->
<!-- Grab Google CDN's jQuery + jQueryUI, with a protocol relative URL; fall back to local -->
<?php echo $this -> Html -> script('jquery.min.js'); ?>
<script>
    window.jQuery || document.write('<script src="jquery-1.7.1.js"><\/script>')
</script>
<!-- <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script> -->
<?php echo $this -> Html -> script('jquery-ui.min.js'); ?>
<script>
    window.jQuery.ui || document.write('<script src="jquery-ui-1.8.16.min.js"><\/script>')
</script>

<!-- scripts concatenated and minified via build script -->
<?php
echo $this -> Html -> script('libs/modernizr-2.0.6.min.js');
echo $this -> Html -> script('ckeditor/ckeditor');
echo $this -> Html -> script('plugins.js');
echo $this -> Html -> script('mylibs/jquery.ba-resize.js');
echo $this -> Html -> script('mylibs/jquery.easing.1.3.js');
echo $this -> Html -> script('mylibs/jquery.ui.touch-punch.js');
echo $this -> Html -> script('mylibs/jquery.chosen.js');
echo $this -> Html -> script('mylibs/jquery.validate.js');
echo $this -> Html -> script('mylibs/jquery.dataTables.js');
echo $this -> Html -> script('mylibs/jquery.prettyPhoto.js');
//echo $this -> Html -> script('mylibs/jquery.ui.timepicker.js');
echo $this -> Html -> script('mylibs/jquery-fallr-1.2.js');

echo $this -> Html -> script('script.js');
$date = new DateTime();
echo $this -> Html -> script('common.js?v'.$date->getTimestamp());

echo $this->fetch('script');
echo $this->fetch('scriptBottom');
?>

<script>
    $(window).load(function() {
        $('#accordion').accordion();
        $(window).resize();



        if($("#table-example").length>0){
            $("table#table-example tbody").sortable({
                items: 'tr'
            }).disableSelection();

            $( "table#table-example tbody" ).sortable({

                update: function( event, ui ) {

                    var result_arr = $(this).sortable('toArray');
                    var page = "<?php echo $page = isset($page)? $page : 1?>";
                    $.ajax({
                        url: "<?php echo $this->Html->url(array('action'=>'genericUpdateSortOrder'))?>",
                        type: "post",
                        dataType:'json',
                        data:{ position_arr : result_arr, page : page},
                        success: function(data){

                        },
                        error:function(){
                            alert("could not sort,please try again");

                        }
                    });
                }
            });

        }


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
