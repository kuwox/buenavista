<div class="invoices form">
<?php echo $this->Form->create('Invoice'); ?>
	<fieldset>
		<legend><?php echo __('Add Invoice'); ?></legend>
	<?php
		echo $this->Form->input('customer_id', array(
    		'type'    => 'select',
    		'options' => $customers,
    		/**'empty'   => false*/
			));
		/**echo $this->Form->input('invoice_no');*/
		echo $this->Form->input('invoice_date');
		echo $this->Form->input('description');
		echo $this->Form->input('amount');

		echo $this->Form->input('pay_method', array(
			'options' => array('Efectivo' => 'Efectivo', 'Transferencia-Depósito' => 'Transferencia-Depósito'),
			/**'empty' => '(Seleccione)'*/
			));
		/**echo $this->Form->input('pay_method');*/
		echo $this->Form->input('pay_reference');
		echo $this->Form->input('statu_id', array(
			'options' => array('Pagado' => 'Pagado', 'Pendiente' => 'Pendiente'),
			/**'empty' => '(Seleccione)'*/
			));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Invoices'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Customers'), array('controller' => 'customers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Customers'), array('controller' => 'customers', 'action' => 'add')); ?> </li>
	</ul>
</div>
