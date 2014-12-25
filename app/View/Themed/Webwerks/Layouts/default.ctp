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
    <!-- range slider css-->
    <?php echo $this->Html->css(array('jquery.nouislider.pips.min','jquery.nouislider','range-slider-style'))?>
</head>
<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<?php echo $this->element('cms-header-container')?>

<div class="page-title">
    <div class="wrapper clearfix">
        <div class="title"> <h1> <?php if(isset($content['Content']['page_title'])) echo $content['Content']['page_title'];?></h1></div>
        <div class="title-image">
            <?php if(isset($content['Content']['header_image']) && !empty($content['Content']['header_image'])) echo $this->Html->image('/uploads/header_images/'.$content['Content']['header_image']);?>
        </div>
    </div>
</div>
<div class="main-container innerbg">
    <div class="main clearfix">
        <section class="clearfix">
            <div class="wrapper">
                <?php if(isset($content['Content']['page_content'])) echo $content['Content']['page_content'];?>
                <div class="rightCol">
                    <div class="request-quote">

                        <h2 class="request-title">Request <span>Quote</span></h2>
                        <form action="/search" method="get">
                        <ul class="r-form">
                            <li><input type="text" name="username" placeholder="Your Name*" /></li>
                            <li><input type="text" name="email" placeholder="Your Email*" /></li>
                            <li><input type="text" name="mobile" placeholder="Mobile*" /></li>
                            <li><textarea name="message" placeholder="Messages"></textarea></li>
                            <li><label>Captcha*</label><input name="captcha" type="text" /></li>
                            <li class="r-submit"><input type="submit" value="Submit" /></li>
                        </ul>
                        </form>

                    </div>

                    <?php if(isset($content['Content']['side_bar_content'])) echo $content['Content']['side_bar_content'];?>

                </div>
            </div>
        </section>

        <section class="inner-btm6">
            <div class="wrapper clearfix">
                <div class="servicesTop clearfix" style="text-align: justify;">
                    <dl class="productbenefit icon1">
                        <dt class="tjs">Satisfaction<br> <span>Guaranteed</span></dt>
                        <dd>Your satisfaction is our priority, with over 18 years of experience and Rapid Action Customer Support Team, we’re confident that you’ll be delighted with our solutions. Satisfaction guarantee with 30 days money back guarantee.</dd>
                    </dl>
                    <dl class="productbenefit icon2 right">
                        <dt class="tjs">Reliable<br> <span>Infrastructure</span></dt>
                        <dd>Freedom to choose from 5 data centers (Mumbai, Navi Mumbai, Pune, Conshohocken and Philadelphia). These facilities are equipped with N+1 redundancy, Fire Suppression and excellent Physical Security.</dd>
                    </dl>
                    <dl class="productbenefit icon3 left">
                        <dt class="tjs">Top Notch <span><br>Hardware Configurations</span></dt>
                        <dd>To ensure no Hardware failures, we only use branded hardware from HP, IBM, Dell, SuperMicro and Intel with 2 Hours Hardware Replacement Guarantee.</dd>
                    </dl>
                    <dl class="productbenefit icon4 right">
                        <dt class="tjs">Industry <br><span>Leading Service</span></dt>
                        <dd>Our customer friendly; competent Rapid Action Support Team and Network Control Team is available 24/7 to assist you all year round.</dd>
                    </dl>
                    <dl class="productbenefit icon5 left">
                        <dt class="tjs">Locally <span>&amp; International Hosted</span></dt>
                        <dd>Our servers are hosted in India as well as abroad which gives you and your customer the flexibility to select from a wide range of web servers from multiple locations.</dd>
                    </dl>
                    <dl class="productbenefit icon6 right">
                        <dt class="tjs">Fast <span>and Reliable Network</span></dt>
                        <dd>Our data centers have high-speed multiple Internet connectivity from Tier 1 ISP in India including Tata, Reliance, Airtel, Vodafone and Sify. We are also connected to various IXP including NIXI.</dd>
                    </dl>
                </div>
            </div>
        </section>
    </div> <!-- #main -->
</div>

<!-- #main-container -->
<?php echo $this->element('footer-container')?>
<?php echo $this->Html->script('jquery.min')?>
<script>document.createElement('section');</script>
<!--[if lt IE 9]>
<?php echo $this->Html->script('html5')?>
<![endif]-->
<?php echo $this->Html->script(array('TweenMax.min','ScrollToPlugin.min','main','classie'))?>
</body>
</html>
