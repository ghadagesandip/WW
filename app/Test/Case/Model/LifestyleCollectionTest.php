<?php
App::uses('LifestyleCollection', 'Model');

/**
 * LifestyleCollection Test Case
 *
 */
class LifestyleCollectionTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.lifestyle_collection',
		'app.lifestyle_collection_type',
		'app.lifestyle_collection_category'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->LifestyleCollection = ClassRegistry::init('LifestyleCollection');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->LifestyleCollection);

		parent::tearDown();
	}

}
