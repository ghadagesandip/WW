<div class="contents view">
<h2><?php  echo __('Content'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($content['Content']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Page title'); ?></dt>
		<dd>
			<?php echo h($content['Content']['page_title']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Header Image'); ?></dt>
		<dd>
			<?php echo h($content['Content']['header_image']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Page Content'); ?></dt>
		<dd>
			<?php echo h($content['Content']['page_content']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Seo Title'); ?></dt>
		<dd>
			<?php echo h($content['Content']['seo_title']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Seo Keywords'); ?></dt>
		<dd>
			<?php echo h($content['Content']['seo_keywords']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Seo Description'); ?></dt>
		<dd>
			<?php echo h($content['Content']['seo_description']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Published'); ?></dt>
		<dd>
			<?php echo h($content['Content']['published']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($content['Content']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($content['Content']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Content'), array('action' => 'edit', $content['Content']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Content'), array('action' => 'delete', $content['Content']['id']), null, __('Are you sure you want to delete # %s?', $content['Content']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Contents'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Content'), array('action' => 'add')); ?> </li>
	</ul>
</div>
