<?php
App::uses('PreownedCarImage', 'Model');

/**
 * PreownedCarImage Test Case
 *
 */
class PreownedCarImageTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.preowned_car_image',
		'app.preowned_car'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->PreownedCarImage = ClassRegistry::init('PreownedCarImage');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->PreownedCarImage);

		parent::tearDown();
	}

}
