<div class="customers form">
<?php echo $this->Form->create('Customer'); ?>
	<fieldset>
		<legend><?php echo __('Add Customer'); ?></legend>
	<?php
		echo $this->Form->input('name');
		/**echo $this->Form->input('lastname');*/
		echo $this->Form->input('identification');
		echo $this->Form->input('email');
		echo $this->Form->input('package');
		echo $this->Form->input('price');
		echo $this->Form->input('device');
		echo $this->Form->input('cell_phone');
		echo $this->Form->input('address');
		echo $this->Form->input('mac_address');
		echo $this->Form->input('observation');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Customers'), array('action' => 'index')); ?></li>
	</ul>
</div>
