<?php
/**
 * Invoice Fixture
 */
class InvoiceFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'length' => 10, 'unsigned' => true, 'key' => 'primary'),
		'customers_id' => array('type' => 'integer', 'null' => true, 'default' => null, 'unsigned' => false),
		'invoice_no' => array('type' => 'integer', 'null' => true, 'default' => null, 'unsigned' => false),
		'invoice_date' => array('type' => 'datetime', 'null' => true, 'default' => null),
		'amount' => array('type' => 'decimal', 'null' => false, 'default' => null, 'length' => '6,2', 'unsigned' => false),
		'pay_method' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 25, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'pay_reference' => array('type' => 'string', 'null' => true, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'status_id' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 7, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1)
		),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'customers_id' => 1,
			'invoice_no' => 1,
			'invoice_date' => '2015-12-25 20:32:31',
			'amount' => '',
			'pay_method' => 'Lorem ipsum dolor sit a',
			'pay_reference' => 'Lorem ipsum dolor sit amet',
			'status_id' => 'Lorem'
		),
	);

}
