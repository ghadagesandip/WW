<?php
App::uses('LifestyleCollectionCategory', 'Model');

/**
 * LifestyleCollectionCategory Test Case
 *
 */
class LifestyleCollectionCategoryTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.lifestyle_collection_category',
		'app.lifestyle_collection'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->LifestyleCollectionCategory = ClassRegistry::init('LifestyleCollectionCategory');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->LifestyleCollectionCategory);

		parent::tearDown();
	}

}
