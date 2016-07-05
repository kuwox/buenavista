<div class="invoices view">
<h2><?php echo __('Invoice'); ?></h2>
	<dl>
		<dt><?php echo __('Factura N°'); ?></dt>
		<dd>
			
			<?php echo h($c['id']); ?>&nbsp;

			
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