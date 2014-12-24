<?php
/**
 * PreownedCarImageFixture
 *
 */
class PreownedCarImageFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
		'image' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'preowned_car_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'index'),
		'is_publish' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 4),
		'created_date' => array('type' => 'timestamp', 'null' => false, 'default' => 'CURRENT_TIMESTAMP'),
		'modified_date' => array('type' => 'timestamp', 'null' => false, 'default' => '0000-00-00 00:00:00'),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
			'preowned_car_id' => array('column' => 'preowned_car_id', 'unique' => 0)
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
			'preowned_car_id' => 1,
			'is_publish' => 1,
			'created_date' => 1415428223,
			'modified_date' => 1415428223
		),
	);

}
