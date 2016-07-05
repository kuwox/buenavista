<?php
App::uses('customers', 'Model');

/**
 * customers Test Case
 */
class customersTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.customers'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->customers = ClassRegistry::init('customers');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->customers);

		parent::tearDown();
	}

}
