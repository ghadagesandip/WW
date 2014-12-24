<?php
/**
 * CarModelFixture
 *
 */
class CarModelFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
		'name' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'car_model_category_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'index'),
		'description' => array('type' => 'text', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'cylinder_arrangement' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'displacement' => array('type' => 'integer', 'null' => false, 'default' => null),
		'rated_output' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'rated_torque' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'compration_ratio' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'acceleration' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'top_speed' => array('type' => 'integer', 'null' => false, 'default' => null),
		'total_displacement' => array('type' => 'integer', 'null' => false, 'default' => null),
		'rpm' => array('type' => 'integer', 'null' => false, 'default' => null),
		'max_torque' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'fuel' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'tank_capacity' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'mixture_preparation' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'drive_system' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'is_publish' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 4),
		'created_date' => array('type' => 'timestamp', 'null' => false, 'default' => 'CURRENT_TIMESTAMP'),
		'modified_date' => array('type' => 'timestamp', 'null' => false, 'default' => '0000-00-00 00:00:00'),
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
			'name' => 'Lorem ipsum dolor sit amet',
			'car_model_category_id' => 1,
			'description' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
			'cylinder_arrangement' => 'Lorem ipsum dolor sit amet',
			'displacement' => 1,
			'rated_output' => 'Lorem ipsum dolor sit amet',
			'rated_torque' => 'Lorem ipsum dolor sit amet',
			'compration_ratio' => 'Lorem ipsum dolor sit amet',
			'acceleration' => 'Lorem ipsum dolor sit amet',
			'top_speed' => 1,
			'total_displacement' => 1,
			'rpm' => 1,
			'max_torque' => 'Lorem ipsum dolor sit amet',
			'fuel' => 'Lorem ipsum dolor sit amet',
			'tank_capacity' => 'Lorem ipsum dolor sit amet',
			'mixture_preparation' => 'Lorem ipsum dolor sit amet',
			'drive_system' => 'Lorem ipsum dolor sit amet',
			'is_publish' => 1,
			'created_date' => 1415427795,
			'modified_date' => 1415427795
		),
	);

}
