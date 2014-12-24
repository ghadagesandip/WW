<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <title><?php echo $title_for_layout; ?></title>
    <style>
        #content{margin: 0 auto;width: 98%;}
        body{font-family:Arial, Helvetica, sans-serif; margin:0px; padding:0px;}
        img{margin:5px;width: 100%}
        p{font-size:13px; margin:5px 0;}
        .publish-date{text-align: right;padding-right: 4px;color: #19110A;}
        .news-exprired{text-align: center;margin-top: 25px;}
    </style>
</head>
<body>
<div id="content">
<?php echo $this->fetch('content'); ?>
</div>
</body>
</html>