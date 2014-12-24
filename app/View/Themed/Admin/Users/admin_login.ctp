<?php echo $this->Form->create('User',array('class'=>'validate')); ?>
<?php //echo form_open('login/checklogin');?>
<div class="content no-padding">
	<?php if($msg = $this->Session->flash()):?>
	<div class="alert error">
		<span class="icon"></span><span class="hide">x</span>
			<?php echo $msg; ?>
	</div>
	<?php endif;?>
	<div class="section _100">
		<label>
			<?php echo $this->Form->label('username', 'Username'); ?>
		</label>
		<div>
			 <?php echo $this->Form->input('username',array('label'=>false,'class'=>'required')); ?>
		</div>
	</div>
	<div class="section _100">
		<label>
			<?php echo $this->Form->label('password', 'Password'); ?>
		</label>
		<div>
			<?php echo $this->Form->input('password',array('label'=>false,'class'=>'required')); ?>
		</div>
	</div>
</div>
<div class="actions">
	<div class="actions-right">
		<?php echo $this->Form->end(__('Login')); ?>
	</div>
</div>