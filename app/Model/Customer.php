<?php
App::uses('AppModel', 'Model');
/**
 * Customer Model
 *
 */
class Customer extends AppModel {

	public $validate = array(
        'name' => array(
            'rule' => 'notBlank'
        ),
        'cell_phone' => array(
            'rule' => 'notBlank'
        )

        /**'email' => array(
            'rule' => array('email', false),
            'message' => 'Por favor escriba una dirección de correo válida.'
        )*/
        /**'email' => 'email',
        'born' => array(
            'rule' => 'date',
            'message' => 'Enter a valid date',
            'allowEmpty' => true
        )*/
    );

    public $hasMany = array(
        'Invoice' => array(
            'className' => 'Invoice',
            'foreignKey' => 'customer_id',
            'conditions' => '',
            'order' => 'Invoice.id DESC',
            'dependent' => false

            )
        );

}