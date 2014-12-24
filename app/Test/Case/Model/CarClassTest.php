<?php
App::uses('CarClass', 'Model');

/**
 * CarClass Test Case
 *
 */
class CarClassTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.car_class',
		'app.car_model_category',
		'app.preowned_car'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->CarClass = ClassRegistry::init('CarClass');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->CarClass);

		parent::tearDown();
	}

}
