<div class="invoices view">
<h2><?php echo __('Invoice'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Customers'); ?></dt>
		<dd>
			<?php echo $this->Html->link($invoice['Customer']['name'], array('controller' => 'customers', 'action' => 'view', $invoice['Customer']['id'])); ?>
			&nbsp;
		</dd>
		<!--  <dt><?php echo __('Invoice No'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['invoice_no']); ?>
			&nbsp;
		</dd> -->
		<dt><?php echo __('Invoice Date'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['invoice_date']); ?>
			&nbsp;
		</dd>

		<dt><?php echo __('Description'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['description']); ?>
			&nbsp;
		</dd>



		<dt><?php echo __('Amount'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['amount']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Pay Method'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['pay_method']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Pay Reference'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['pay_reference']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Status Id'); ?></dt>
		<dd>
			<?php echo h($invoice['Invoice']['statu_id']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Invoice'), array('action' => 'edit', $invoice['Invoice']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Invoice'), array('action' => 'delete', $invoice['Invoice']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $invoice['Invoice']['id']))); ?> </li>
		<li><?php echo $this->Html->link(__('List Invoices'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Invoice'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Customers'), array('controller' => 'customers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Customers'), array('controller' => 'customers', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('Descargar Recibo'), array('action' => 'view', $invoice['Invoice']['id'], 'ext' => 'pdf')); ?></li>
	</ul>
</div>
