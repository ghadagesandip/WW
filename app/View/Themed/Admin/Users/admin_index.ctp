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

<h2 class="grid_12">Users
    <div style="float:right;margin-right:5%;">
        <?php echo $this->Html->link('Add', array('action' => 'add','admin'=>true)); ?>
        <?php //echo $this->Html->link('Back',array('controller'=>'vendors','admin'=>true)); ?>
        <?php //echo $this->Html->link(__('New State'), array('action' => 'add')); ?></div>
</h2>
<div class="clear"></div>
<div id="view_dialog"></div>

<div class="grid_12">
    <div class="box">
        <div class="header">
            <?php echo $this -> Html -> image('icons/packs/fugue/16x16/shadeless/table-excel.png', array('width' => '16', 'height' => '16', 'alt' => 'user')); ?>
            <h3>Alerts</h3>

            <span></span>
        </div>
        <div class="content">


            <?php //echo form_open('admin/delete_multiple_products'); ?>
            <table id="table-example" class="table">
                <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th><?php echo 'Username'; ?></th>
                    <th><?php echo 'Is Draft'; ?></th>
                    <th><?php echo 'Sent On'; ?></th>
                    <th><?php echo 'Created date'; ?></th>
                    <th><?php echo __('Actions'); ?></th>
                </tr>
                </thead>
                <tbody>
                <?php $i = 1;?>
                <?php if(!empty($alerts)):?>
                    <?php foreach ($alerts as $alert): ?>
                        <tr id="<?php echo $alert['Alert']['id'];?>">
                            <td><?php echo $i++; ?></td>
                            <td><?php echo $alert['Alert']['message'];?> </td>
                            <td><?php if($alert['Alert']['is_draft']==1) echo 'Yes'; else echo "No"; ?> </td>
                            <td><?php
                                if(trim($alert['Alert']['sent_on'])==='0000-00-00 00:00:00'){
                                    echo  '&nbsp;';
                                }else{
                                    echo $alert['Alert']['sent_on'];

                                }?>
                            </td>
                            <td><?php echo date('d-M-Y',strtotime($alert['Alert']['created'])); ?></td>
                            <td>
                                <?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $alert['Alert']['id'])); ?>
                                <a href="javascript:void(0)" onclick="delete_news(<?php echo $alert['Alert']['id'];?>)">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else:?>
                    <!-- 					<tr><td  colspan="8">No Records to show.</td></tr> -->
                <?php endif;?>
                </tbody>
            </table>

        </div></div></div>

<?php $this->Html->scriptStart(array('block' => 'scriptBottom', 'inline' => false)); ?>
$(window).load(function() {
$('#table-example').dataTable({
"aaSorting": [[ 0, "asc" ]],
"aoColumns": [
null,
null,
null,
null,
null,
{"bSortable":false}
]
});
$(window).resize();
});

$('.view_image').click(function(){
var id = $(this).attr('id');
$('#image_'+id).dialog();
});
$('.view_desc').click(function(){
var id = $(this).attr('id');
$('#view_desc_'+id).dialog();
});
function delete_news(id)
{
var clicked = function(){
$.fallr('hide');
//alert(id);
//return true;
window.location = "<?php echo $this->html->url(array('controller'=>'Alerts','action'=>'delete','admin'=>true))?>/"+id;
//alert('congrats, you\'ve deleted image');
};
$.fallr('show', {
buttons : {
button1 : {text: 'Yes', danger: true, onclick: clicked},
button2 : {text: 'Cancel', onclick: function(){$.fallr('hide')}}
},
content : '<p>Are you sure you want to delete?</p>',
icon    : 'error'
});

}
<?php $this->Html->scriptEnd();?>

