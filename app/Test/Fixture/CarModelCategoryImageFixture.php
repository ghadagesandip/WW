<?php
/**
 * CarModelCategoryImageFixture
 *
 */
class CarModelCategoryImageFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
		'image' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'type' => array('type' => 'integer', 'null' => false, 'default' => null, 'length' => 4, 'comment' => '1:interior;2:exterior'),
		'car_model_category_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'index'),
		'is_publish' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 4, 'comment' => '1:enable;0:disable'),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
			'car_model_category_id' => array('column' => 'car_model_category_id', 'unique' => 0)
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
			'image' => 'Lorem ipsum dolor sit amet',
			'type' => 1,
			'car_model_category_id' => 1,
			'is_publish' => 1
		),
	);

}
