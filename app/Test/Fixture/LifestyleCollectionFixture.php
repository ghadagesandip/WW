<?php
/**
 * LifestyleCollectionFixture
 *
 */
class LifestyleCollectionFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
		'name' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'image' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'description' => array('type' => 'text', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'lifestyle_collection_type_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'index'),
		'lifestyle_collection_category_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'index'),
		'is_publish' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 4),
		'created_date' => array('type' => 'timestamp', 'null' => false, 'default' => 'CURRENT_TIMESTAMP'),
		'modified_date' => array('type' => 'timestamp', 'null' => false, 'default' => '0000-00-00 00:00:00'),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
			'lifestyle_collection_type_id' => array('column' => 'lifestyle_collection_type_id', 'unique' => 0),
			'lifestyle_collection_category_id' => array('column' => 'lifestyle_collection_category_id', 'unique' => 0)
		),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'name' => 'Lorem ipsum dolor sit amet',
			'image' => 'Lorem ipsum dolor sit amet',
			'description' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
			'lifestyle_collection_type_id' => 1,
			'lifestyle_collection_category_id' => 1,
			'is_publish' => 1,
			'created_date' => 1415428075,
			'modified_date' => 1415428075
		),
	);

}
