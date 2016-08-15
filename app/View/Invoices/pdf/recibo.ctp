<div class="invoices view">
<h2><?php echo __('Recibo'); ?></h2>
<table width="100%" border="1">
  <tr>
    <th width="70%" align="left" valign="middle" scope="col">Nombre del Cliente: <?php echo h($invoice['Customer']['name']); ?></th>
    <th width="30%" align="left" valign="middle" scope="col">Recibo #:</th>
  </tr>
  <tr>
    <td width="70%">Cédula de Identidad: <?php echo h($invoice['Customer']['identification']); ?></td>
    <td width="30%" align="left" valign="middle">Fecha de pago: <?php echo h($invoice['Invoice']['invoice_date']); ?></td>
  </tr>
</table>
<table width="100%" border="1">
  <tr>
    <th width="80%" align="center" valign="middle" scope="col">Descripción</th>
    <th width="20%" align="center" valign="middle" scope="col">Monto</th>
  </tr>
  <tr>
    <td width="80%" align="left" valign="middle"><?php echo h($invoice['Invoice']['description']); ?>&nbsp;</td>
    <td width="20%" align="center" valign="middle"><?php echo h($invoice['Invoice']['amount']); ?>&nbsp;</td>
  </tr>
</table>
<p>INTERGUARO - Su servicio de Internet.</p>
</div>
