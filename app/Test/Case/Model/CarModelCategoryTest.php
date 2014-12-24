<?php
App::uses('CarModelCategory', 'Model');

/**
 * CarModelCategory Test Case
 *
 */
class CarModelCategoryTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.car_model_category',
		'app.car_class',
		'app.preowned_car',
		'app.car_model_category_image',
		'app.car_model'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->CarModelCategory = ClassRegistry::init('CarModelCategory');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->CarModelCategory);

		parent::tearDown();
	}

}
