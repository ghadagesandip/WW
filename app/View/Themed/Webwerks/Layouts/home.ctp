<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><?php echo $title_for_layout; ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php echo $this->Html->css(array('normalize.min','main'))?>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--[if lt IE 9]>
    <?php echo $this->Html->script('vendor/html5-3.6-respond-1.1.0.min');?>
    <![endif]-->
</head>
<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<?php echo $this->element('home-header-container'); ?>

<div class="slider">
    <div class=" slider-container">
        <div class="wrapper clearfix">
            <ul class="service_list">
                <li><?php echo $this->Html->image('slider-icon_04.png',array('alt'=>'Icon','width'=>'102','height'=>'109'))?></li>
                <li><?php echo $this->Html->image('slider-icon_06.png',array('alt'=>'Icon','width'=>'100','height'=>'117'))?></li>
                <li><?php echo $this->Html->image('slider-icon_08.png',array('alt'=>'Icon','width'=>'101','height'=>'110'))?></li>
            </ul>
        </div>
        <div class="s6-left slider-caption">
            <div class="text"> <span class="large">DATACENTER</span> <span class="large">BUSINESS</span> <span class="small">Since</span> </div>
        </div>
        <div class="s6-right slider-caption"> <?php echo $this->Html->image('1996.png',array('alt'=>'Year','width'=>'','height'=>''))?></div>
    </div>
</div>
<div class="main-container innerbg">
    <div class="main clearfix">
        <section class="section-1">
            <div class="wrapper clearfix">
                <!--Section 1-->
                <div class="home-box1">
                    <div class="text-center block-box">
                        <h3>Cloud<br>
                            <span>Hosting</span></h3>
                        <p>From Public Cloud Offerings to Private Cloud, we offer wide range of selection of cloud hosting setup at our state-of-the-art data centers to support from basic to Mission-critical applications to achieve 100% Server and Network Uptime.</p>
                    </div>
                </div>
                <!--Section 2-->
                <div class="home-box2">
                    <div class="text-center block-box">
                        <h3>Dedicated<br>
                            <span>Hosting</span></h3>
                        <p>Web Werks Servers are provisioned on Windows and Linux operating systems bundled with 24×7 Rapid Action support. Setup on Dell/HP Chasis with Hardware Replacement Guarantee. Scalable Servers at Unbeatable Prices.</p>
                    </div>
                </div>
                <!--Section 3-->
                <div class="home-box3">
                    <div class="text-center block-box">
                        <h3>Colocation<br>
                            <span>Hosting</span></h3>
                        <p>Unmanaged and Managed Colocation Services setup at our Redundant data center facilities in India and in the US. With six layered security deployment at our facilities assures security and protection against any external threats. </p>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-2">
            <div class="wrapper clearfix">
                <h2 class="section-title">Our customers <span>love us!</span></h2>
                <div class="testimonials-carousel">
                    <div data-token="eAGP7" class="owl-carousel testimonials-slider owl-theme" id="owl-testimonials-wco" style="opacity: 1; display: block;">
                        <div class="owl-wrapper-outer autoHeight" >
                            <div class="owl-wrapper" >
                                <ul  id="slides1">
                                    <li>
                                        <div class="owl-item" >
                                            <div class="testimonial-item">
                                                <div class="testi-img"><?php echo $this->Html->image('customer1.png',array('alt'=>'','width'=>'','height'=>''))?></div>
                                                <p class="testi-desc">"We have been very much impressed by Patti Studio. They grasped our needs and produced a stunning design. Needless to say we are extremely satisfied with the results. Thank you!”</p>
                                                <p><span class="testimonial-name">Elena Gonzales</span>, <span class="testimonial-position">Envato Team</span></p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="owl-item" >
                                            <div class="testimonial-item">
                                                <div class="testi-img"><?php echo $this->Html->image('customer1.png',array('alt'=>'','width'=>'','height'=>''))?></div>
                                                <p class="testi-desc">"We have been very much impressed by Patti Studio. They grasped our needs and produced a stunning design. Needless to say we are extremely satisfied with the results. Thank you!”</p>
                                                <p><span class="testimonial-name">Elena Gonzales</span>, <span class="testimonial-position">Envato Team</span></p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="owl-item" >
                                            <div class="testimonial-item">
                                                <div class="testi-img"><?php echo $this->Html->image('customer1.png',array('alt'=>'Year','width'=>'','height'=>''))?></div>
                                                <p class="testi-desc">"We have been very much impressed by Patti Studio. They grasped our needs and produced a stunning design. Needless to say we are extremely satisfied with the results. Thank you!”</p>
                                                <p><span class="testimonial-name">Elena Gonzales</span>, <span class="testimonial-position">Envato Team</span></p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-6">
            <h2>SSL <span>Certificate</span></h2>
            <div class="s6-left">
                <div class="s6-block1"> <?php echo $this->Html->image('ssl-tag.png',array('alt'=>'','width'=>'','height'=>''))?>
                    <ul class="s6-list">
                        <li>Dynamic and Powerful data encryption</li>
                        <li>Malware and Phishing Detection</li>
                        <li>Our SSL certificates come with a</li>
                        <li>genuine seal.</li>
                    </ul>
                    <div class="bottom-btn"> <a href="#" class="ssl-btn">Go to Secure your website</a> </div>
                </div>
            </div>
            <div class="s6-right">
                <div class="s6-block2"> <?php echo $this->Html->image('secure-img.png',array('alt'=>'Year','width'=>'','height'=>''))?><br>
                    <p>Secure your business today</p>
                </div>
            </div>
        </section>
        <section class="section-4 clearfix">
            <div class="wrapper">
                <h2 style="text-align: center;"><small class=""><span style="color: #3e0020;">World Brands Are Some Of</span> </small><br>
                    <span style="color: #3e0020;">Our Satisfied Clients</span></h2>
                <ul class="client">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </section>
        <section class="section-5 clearfix">
            <div class="wrapper">
                <h2 class="help-title">Need Help?</h2>
                <p class="help-subline">Here are some quick ways to reach us</p>
                <ul class="help-list">
                    <li>
                        <h2>Live chat</h2>
                        <p>Talk to our Technical Sales<br>
                            Representative now</p>
                    </li>
                    <li>
                        <h2>+91-22-40500647</h2>
                        <p>For any sales-related<br>
                            queries</p>
                    </li>
                    <li>
                        <h2>Instant Response Form</h2>
                        <p>Drop us email at<br>
                            <a href="mailto:sales@webwerks.com">sales@webwerks.com</a></p>
                    </li>
                </ul>
            </div>
        </section>
        <section class="section-3 parallax-bag">
            <div class="wrapper clearfix">
                <h2>Features</h2>
                <div class="section3-left">
                    <ul class="datacenter-features">
                        <li>TIER III DC Infrastructure</li>
                        <li>Carrier Neutral Facility</li>
                        <li>Redundant Power Supply</li>
                        <li>24x7 Rapid Action Team</li>
                        <li>24x7 Monitoring Team</li>
                        <li>Cisco Layered Security</li>
                        <li>99.99% Uptime Guarantee</li>
                    </ul>
                </div>
                <div class="video-wrapper"><?php echo $this->Html->image('video.jpg',array('alt'=>'','width'=>'','height'=>''))?></div>
            </div>
        </section>
    </div>
    <!-- #main -->
</div>
<!-- #main-container -->
<?php echo $this->element('footer-container');?>
<?php echo $this->Html->script('jquery.min');?>
<script>window.jQuery || document.write('<?php echo $this->Html->script('jquery.min');?>')</script>
<?php echo $this->Html->script(array('TweenMax.min','ScrollToPlugin.min','main','classie','jquery.slides.min'));?>
</body>
</html>