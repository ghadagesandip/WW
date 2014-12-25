<?php if($msg = $this->Session->flash('success')){?>
    <div class="alert success">
        <span class="icon"></span><span class="hide">x</span><strong>Success</strong>
        <?php echo $msg;?>
    </div>
<?php }elseif($msg = $this->Session->flash('error')){ ?>
    <div class="alert error">
        <span class="icon"></span><span class="hide">x</span><strong>Error</strong>
        <?php echo $msg;?>
    </div>
<?php }?>

<div id="main_content">

    <h2 class="grid_12">
        Add Content Page
        <div style="float:right;margin-right:5%;">
            <?php echo $this->Html->link('Back',array('controller'=>'contents','action'=>'index'))?>
        </div>
    </h2>

    <div class="clean"></div>
    <center>
        <div class="grid_6" style="width:95%;">

            <div class="box">

                <div class="header">
                    <?php echo $this -> Html -> image('icons/packs/fugue/16x16/shadeless/application-form.png', array('width' => '16', 'height' => '16', 'alt' => 'user')); ?>

                    <h3>Add Content Page Details </h3>
                    <span></span>
                </div>
                <?php echo $this -> Form -> create('Content', array('class' => 'validate', 'type' => 'file')); ?>
                <?php echo $this -> Form -> input('id'); ?>
                <!-- <fieldset>
				<legend><?php echo __('Admin Add Vehicle'); ?></legend> -->
                <div class="content no-padding">
                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('page_title', 'Page Title'); ?> </label>
                        <div>
                            <?php echo $this -> Form -> input('page_title', array('label' => false, 'class' => 'required')); ?>
                        </div>
                    </div>

                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('page_slug', 'Page Slug'); ?> </label>
                        <div>
                            <?php echo $this -> Form -> input('page_slug', array('label' => false, 'class' => 'required')); ?>
                        </div>
                    </div>

                    <div class="section _100">

                        <label> <?php echo $this -> Form -> label('page_content', 'Page Content'); ?>  </label>
                        <div>
                            Add this div with its content from html : &lt;div class="leftCol"&gt;&lt;/div&gt;
                            <?php echo $this -> Form -> textarea('page_content', array('label' => false, 'class' => 'ckeditor')); ?>
                        </div>
                    </div>

                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('side_bar_content', 'Side Bar'); ?> </label>
                        <div>
                            Add this div with its content  from html : &lt;div class="benefits-block"&gt;&lt;/div&gt;
                            <?php echo $this -> Form -> textarea('side_bar_content', array('label' => false, 'class' => 'ckeditor')); ?>
                        </div>
                    </div>

                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('header_image', 'Header Image'); ?> </label>
                        <div>
                            <?php echo $this -> Form -> input('header_image', array('type' => 'file','label' => false, 'class' => '')); ?>
                        </div>
                    </div>

                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('seo_title', 'Seo Title'); ?> </label>
                        <div>
                            <?php echo $this -> Form -> input('seo_title', array('id' => 'seo_title', 'label' => false,)); ?>
                        </div>
                    </div>

                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('seo_keywords', 'Seo Keywords'); ?> </label>
                        <div>
                            <?php echo $this -> Form -> input('seo_keywords', array( 'id' => 'seo_keywords', 'label' => false)); ?>
                        </div>
                    </div>

                    <div class="section _100">
                        <label> <?php echo $this -> Form -> label('seo_description', 'Seo Description'); ?> </label>
                        <div>
                            <?php echo $this -> Form -> input('seo_description', array( 'id' => 'seo_description', 'label' => false)); ?>
                        </div>
                    </div>

<!--                    <div class="section _100">-->
<!--                        <label> --><?php //echo $this -> Form -> label('published', 'Published'); ?><!-- </label>-->
<!--                        <div>-->
<!--                            --><?php //echo $this -> Form -> input('published',array('label'=>false)); ?>
<!--                            <br/><br/><br/>-->
<!--                        </div>-->
<!--                    </div>-->


                    <div class="section _100"></div>
                    <div class="section _100"></div>
                    <div class="section _100"></div>
                    <div class="section _100"></div>
                    <div class="section _100"></div>

                </div>

                <!-- 	</fieldset> -->

                <div class="actions">

                    <div class="actions-right">
                        <?php echo $this -> Form -> end(__('Submit')); ?>
                    </div>

                    <div class="actions-right">
                        <a class="button" href="<?php echo $this->Html->url(array('action'=>'index','admin'=>true))?>" >Back</a>
                    </div>

                </div>
            </div>
        </div>
</div>

<?php $this->Html->scriptStart(array('block' => 'scriptBottom', 'inline' => false)); ?>
$('.datepicker').datepicker({
dateFormat:'yy-mm-dd'
});

/*$('#publish_date').datepicker({
dateFormat:'yy-mm-dd'
});

$('#publish_date').change(function(){
var publish_date = $(this).val();
console.log(publish_date);
$('#valid_till').datepicker({
dateFormat:'yy-mm-dd',
minDate:publish_date
});
});*/
<?php $this->Html->scriptEnd();?>






<!--<div class="contents form">-->
<?php //echo $this->Form->create('Content'); ?>
<!--	<fieldset>-->
<!--		<legend>--><?php //echo __('Add Content'); ?><!--</legend>-->
<!--	--><?php
//		echo $this->Form->input('page_name');
//		echo $this->Form->input('header_image');
//		echo $this->Form->input('page_content');
//		echo $this->Form->input('seo_title');
//		echo $this->Form->input('seo_keywords');
//		echo $this->Form->input('seo_description');
//		echo $this->Form->input('published');
//	?>
<!--	</fieldset>-->
<?php //echo $this->Form->end(__('Submit')); ?>
<!--</div>-->
<!--<div class="actions">-->
<!--	<h3>--><?php //echo __('Actions'); ?><!--</h3>-->
<!--	<ul>-->
<!---->
<!--		<li>--><?php //echo $this->Html->link(__('List Contents'), array('action' => 'index')); ?><!--</li>-->
<!--	</ul>-->
<!--</div>-->
