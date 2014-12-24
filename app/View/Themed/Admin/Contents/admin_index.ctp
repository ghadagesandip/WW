<style>
    .contact_tbl{
        width:100%;
        /*		padding:1px;*/
    }
    .contact_tbl td{
        padding:5px;
    }
</style>


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

<h2 class="grid_12">Contents
    <div style="float:right;margin-right:5%;">
        <?php echo $this->Html->link('Add', array('action' => 'add','admin'=>true)); ?>
    </div>
</h2>
<div class="clear"></div>
<div id="view_dialog"></div>

<div class="grid_12">
    <div class="box">
        <div class="header">
            <?php echo $this -> Html -> image('icons/packs/fugue/16x16/shadeless/table-excel.png', array('width' => '16', 'height' => '16', 'alt' => 'user')); ?>
            <h3>Locations</h3>

            <span></span>
        </div>
        <div class="content">


            <?php //echo form_open('admin/delete_multiple_products'); ?>
            <table id="table-example" class="table">
                <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th><?php echo 'Page Name'; ?></th>
                    <th><?php echo 'Published'; ?></th>
                    <th><?php echo 'Created Date'; ?></th>
                    <th><?php echo __('Actions'); ?></th>
                </tr>
                </thead>
                <tbody>
                <?php $i = 1;?>
                <?php if(!empty($contents)):?>
                    <?php foreach ($contents as $content): ?>
                        <tr id="<?php echo $content['Content']['id'];?>">
                            <td><?php echo $i++;?></td>
                            <td><?php echo h($content['Content']['page_name']); ?>&nbsp;</td>
                            <td><?php echo ($content['Content']['published']==1)?'Enable':'Disable'; ?>&nbsp;</td>
                            <td><?php echo h($content['Content']['created']); ?>&nbsp;</td>
                            <td>
                                <?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $content['Content']['id'])); ?>
                                <a href="javascript:void(0)" onclick="delete_locations(<?php echo $content['Content']['id'];?>)">Delete</a>
                            </td>

                        </tr>
                    <?php endforeach; ?>
                <?php else:?>

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
{"bSortable":false}
]
});
$(window).resize();
});

$('.view_contacts').click(function(){
var id = $(this).attr('id');
$('#view_'+id).dialog({
height:300,
width:500
});
});

function delete_locations(id)
{
var clicked = function(){
$.fallr('hide');
//alert(id);
//return true;
window.location = "<?php echo $this->html->url(array('controller'=>'Locations','action'=>'delete','admin'=>true))?>/"+id;
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
