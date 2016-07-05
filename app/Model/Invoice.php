<?php
App::uses('AppModel', 'Model');
/**
 * Invoice Model
 *
 * @property Customers $Customers
 * @property Status $Status
 */
class Invoice extends AppModel {


	// The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */


	public $belongsTo = array(
		'Customer' => array(
			'className' => 'Customer',
			'foreignKey' => 'customer_id',
			
		)
		/**,
		'Status' => array(
			'className' => 'Status',
			'foreignKey' => 'status_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)*/
	);
}
