<?php
App::uses('LifestyleCollectionType', 'Model');

/**
 * LifestyleCollectionType Test Case
 *
 */
class LifestyleCollectionTypeTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.lifestyle_collection_type',
		'app.lifestyle_collection'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->LifestyleCollectionType = ClassRegistry::init('LifestyleCollectionType');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->LifestyleCollectionType);

		parent::tearDown();
	}

}
