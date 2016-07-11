<div class="customers index">
	<h2><?php echo __('Customers'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('name'); ?></th>
			<!-- <th><?php echo $this->Paginator->sort('lastname'); ?></th> -->
			<th><?php echo $this->Paginator->sort('identification'); ?></th>
			<!-- <th><?php echo $this->Paginator->sort('email'); ?></th> -->
			<th><?php echo $this->Paginator->sort('package'); ?></th>
			<th><?php echo $this->Paginator->sort('price'); ?></th>
			<!-- <th><?php echo $this->Paginator->sort('device'); ?></th> -->
			<th><?php echo $this->Paginator->sort('cell_phone'); ?></th>
			<!-- <th><?php echo $this->Paginator->sort('address'); ?></th> -->
			<!-- <th><?php echo $this->Paginator->sort('mac_address'); ?></th> -->
			<th><?php echo $this->Paginator->sort('observation'); ?></th>
			<!-- <th><?php echo $this->Paginator->sort('created'); ?></th> -->
			<!-- <th><?php echo $this->Paginator->sort('modified'); ?></th> -->
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($customers as $customer): ?>
	<tr>
		<td><?php echo h($customer['Customer']['id']); ?>&nbsp;</td>
		<td><?php echo $this->Html->link($customer['Customer']['name'], array('controller' => 'customers', 'action' => 'view', $customer['Customer']['id'])); ?></td>
		<!-- <td><?php echo h($customer['Customer']['name']); ?>&nbsp;</td> -->
		<!-- <td><?php echo h($customer['Customer']['lastname']); ?>&nbsp;</td> -->
		<td><?php echo h($customer['Customer']['identification']); ?>&nbsp;</td>
		<!-- <td><?php echo h($customer['Customer']['email']); ?>&nbsp;</td> -->
		<td><?php echo h($customer['Customer']['package']); ?>&nbsp;</td>
		<td><?php echo h($customer['Customer']['price']); ?>&nbsp;</td>
		<!-- <td><?php echo h($customer['Customer']['device']); ?>&nbsp;</td>-->
		<td><?php echo h($customer['Customer']['cell_phone']); ?>&nbsp;</td>
		<!-- <td><?php echo h($customer['Customer']['address']); ?>&nbsp;</td> -->
		<!-- <td><?php echo h($customer['Customer']['mac_address']); ?>&nbsp;</td>-->
		<td><?php echo h($customer['Customer']['observation']); ?>&nbsp;</td>
		<!-- <td><?php echo h($customer['Customer']['created']); ?>&nbsp;</td> -->
		<!-- <td><?php echo h($customer['Customer']['modified']); ?>&nbsp;</td> -->
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $customer['Customer']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $customer['Customer']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $customer['Customer']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $customer['Customer']['id']))); ?>
		</td>
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
		<li><?php echo $this->Html->link(__('New Customer'), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('New Invoice'), array('controller' => 'invoices', 'action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Invoices'), array('controller' => 'invoices', 'action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('Logout'), array('controller' => 'users', 'action' => 'logout')); ?></li>
	</ul>
</div>
