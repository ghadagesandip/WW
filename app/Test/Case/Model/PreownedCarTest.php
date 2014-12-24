<?php
App::uses('PreownedCar', 'Model');

/**
 * PreownedCar Test Case
 *
 */
class PreownedCarTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.preowned_car',
		'app.car_class',
		'app.car_model_category',
		'app.car_model_category_image',
		'app.car_model',
		'app.preowned_car_image'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->PreownedCar = ClassRegistry::init('PreownedCar');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->PreownedCar);

		parent::tearDown();
	}

}
