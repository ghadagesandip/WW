
<h2 class="grid_12">All Car Classes
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
            <h3>All Car Classes</h3>

            <span></span>
        </div>
        <div class="content">


            <?php //echo form_open('admin/delete_multiple_products'); ?>
            <table id="table-example" class="table">
                <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th><?php echo 'Name'; ?></th>
                    <th><?php echo 'Description'; ?></th>
                    <th><?php echo 'Image'; ?></th>
                    <th><?php echo 'Status'; ?></th>
                    <th><?php echo 'Created Date'; ?></th>
                    <th><?php echo 'Modified Date'; ?></th>
                    <th><?php echo __('Actions'); ?></th>
                </tr>
                </thead>
                <tbody>
                <?php $i = 1;?>
                <?php if(!empty($carClasses)):?>
                    <?php foreach ($carClasses as $carClass): ?>
                        <tr id="<?php echo $carClass['CarClass']['id']?>">
                            <td><?php echo $i++; ?></td>
                            <td><?php echo h($carClass['CarClass']['name']); ?>&nbsp;</td>
                            <td>
                                <a href="javascript:void(0)" id="<?php echo $carClass['CarClass']['id'];?>" class="view_desc">View</a>
                                <div class="dialog" id="view_desc_<?php echo $carClass['CarClass']['id'];?>" style="display:none;" title="<?php echo h($carClass['CarClass']['name']); ?>">
                                    <?php echo h($carClass['CarClass']['description']); ?>
                                </div>
                            </td>
                            <td><?php //echo h($carClass['CarClass']['image']); ?>&nbsp;
                                <a href="javascript:void(0)" id="<?php echo $carClass['CarClass']['id'];?>" class="view_image">View</a>
                                <div class="dialog" id="image_<?php echo $carClass['CarClass']['id'];?>" style="display:none;" title="Image">
                                    <?php if(!empty($carClass['CarClass']['image'])):?>
                                        <div style="width:200px;height:200px;padding:5px;"><?php echo $this->html->image('/uploads/car/car_classes/'.$carClass['CarClass']['image'],array('style'=>'max-width:100%;max-height:100%;'));?></div>
                                    <?php else:?>
                                        No Image
                                    <?php endif;?>
                                </div>
                            </td>
                            <td><?php echo ($carClass['CarClass']['is_publish']==1)?'Enable':'Disable'; ?>&nbsp;</td>
                            <td><?php echo date('d-M-Y',strtotime($carClass['CarClass']['created_date'])); ?>&nbsp;</td>
                            <td><?php echo date('d-M-Y',strtotime($carClass['CarClass']['modified_date'])); ?>&nbsp;</td>
                            <td>
                                <?php //echo $this->Html->link(__('View'), array('action' => 'view', $carClass['CarClass']['id'])); ?>
                                <?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $carClass['CarClass']['id'])); ?>
                                <?php //echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $carClass['CarClass']['id']), null, __('Are you sure you want to delete # %s?', $carClass['CarClass']['id'])); ?>

                                <a href="javascript:void(0)" onclick="delete_carclass(<?php echo $carClass['CarClass']['id'];?>)">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else:?>
                    <tr><td  colspan="8">No Records to show.</td></tr>
                <?php endif;?>
                </tbody>
            </table>

        </div></div></div>