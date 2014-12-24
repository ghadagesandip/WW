<?php
App::uses('CarModel', 'Model');

/**
 * CarModel Test Case
 *
 */
class CarModelTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.car_model',
		'app.car_model_category',
		'app.car_class',
		'app.preowned_car',
		'app.car_model_category_image'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->CarModel = ClassRegistry::init('CarModel');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->CarModel);

		parent::tearDown();
	}

}
