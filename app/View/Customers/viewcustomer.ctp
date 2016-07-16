<div class="customers view">
<h2><?php echo __('Customer'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['name']); ?>
			&nbsp;
		</dd>
		<!--<dt><?php echo __('Lastname'); ?></dt>
		 <dd>
			<?php echo h($customer['Customer']['lastname']); ?>
			&nbsp;
		</dd> -->
		<dt><?php echo __('Identification'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['identification']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Email'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['email']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Package'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['package']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Price'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['price']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Device'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['device']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Cell Phone'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['cell_phone']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Address'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['address']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Mac Address'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['mac_address']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Observation'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['observation']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($customer['Customer']['modified']); ?>
			&nbsp;
		</dd>		
	</dl>
</br >

<h3>Facturas del Cliente</h3>
<?php if (empty($customer['Invoice'])): ?>
<p>No tiene Facturas asociadas</p>
<?php endif ?>

	
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('Factura N°'); ?></th>
			<th><?php echo $this->Paginator->sort('Fecha'); ?></th>
			<th><?php echo $this->Paginator->sort('Descripción'); ?></th>
			<th><?php echo $this->Paginator->sort('Monto'); ?></th>
			<th><?php echo $this->Paginator->sort('Status'); ?></th>
			<th><?php echo $this->Paginator->sort(''); ?></th>

	</tr>
	</thead>
	<tbody>
	<?php foreach ($customer['Invoice'] as $c): ?>
	<tr>
		<td><?php echo h($c['id']); ?>&nbsp;</td>
		<td><?php echo h($c['invoice_date']); ?>&nbsp;</td>
		<td><?php echo h($c['description']); ?>&nbsp;</td>
		<td><?php echo h($c['amount']); ?>&nbsp;</td>
		<td><?php echo h($c['statu_id']); ?>&nbsp;</td>
		<td class="actions"><?php echo $this->Html->link(__('Descargar Recibo'), array('controller' => 'invoices', 'action' => 'view', $c['id'], 'ext' => 'pdf')); ?></td>
				
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>
	<p>
	 <?php
	echo $this->Paginator->counter(array(
		'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Customer'), array('action' => 'edit', $customer['Customer']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Customer'), array('action' => 'delete', $customer['Customer']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $customer['Customer']['id']))); ?> </li>
		<li><?php echo $this->Html->link(__('List Customers'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Customer'), array('action' => 'add')); ?> </li>
	</ul>
</div>

