<?php
App::uses('CarModelCategoryImage', 'Model');

/**
 * CarModelCategoryImage Test Case
 *
 */
class CarModelCategoryImageTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.car_model_category_image',
		'app.car_model_category',
		'app.car_class',
		'app.preowned_car',
		'app.car_model'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->CarModelCategoryImage = ClassRegistry::init('CarModelCategoryImage');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->CarModelCategoryImage);

		parent::tearDown();
	}

}
