<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 * @property PaginatorComponent $Paginator
 */
class UsersController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

	public function beforeFilter(){
		parent::beforeFilter();
		//$this->Auth->allow();
	}


    /**
     * admin_index method
     *
     * @return void
     */
        public function admin_index() {
            $this->User->recursive = 0;
            $this->set('users', $this->Paginator->paginate());
        }

    /**
     * admin_view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
        public function admin_view($id = null) {
            if (!$this->User->exists($id)) {
                throw new NotFoundException(__('Invalid user'));
            }
            $options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
            $this->set('user', $this->User->find('first', $options));
        }

    /**
     * admin_add method
     *
     * @return void
     */
        public function admin_add() {
            if ($this->request->is('post')) {
                $this->User->create();
                if ($this->User->save($this->request->data)) {
                    $this->Session->setFlash(__('The user has been saved.'));
                    return $this->redirect(array('action' => 'index'));
                } else {
                    $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
                }
            }
        }

    /**
     * admin_edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
        public function admin_edit($id = null) {
            if (!$this->User->exists($id)) {
                throw new NotFoundException(__('Invalid user'));
            }
            if ($this->request->is('post') || $this->request->is('put')) {
                if ($this->User->save($this->request->data)) {
                    $this->Session->setFlash(__('The user has been saved.'));
                    return $this->redirect(array('action' => 'index'));
                } else {
                    $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
                }
            } else {
                $options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
                $this->request->data = $this->User->find('first', $options);
            }
        }

    /**
     * admin_delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
        public function admin_delete($id = null) {
            $this->User->id = $id;
            if (!$this->User->exists()) {
                throw new NotFoundException(__('Invalid user'));
            }
            $this->request->onlyAllow('post', 'delete');
            if ($this->User->delete()) {
                $this->Session->setFlash(__('The user has been deleted.'));
            } else {
                $this->Session->setFlash(__('The user could not be deleted. Please, try again.'));
            }
            return $this->redirect(array('action' => 'index'));
        }

        /**
         * admin_login
         *
         * admin login module
         * @param none
         * @return void
         */
        public function admin_login()
        {
            $this->layout = 'login';

            if($this->Auth->user()):
                //print_r($this->Auth->redirect());exit;
                $this->redirect($this->Auth->redirect());
            endif;

            // if we get the post information, try to authenticate
            if ($this->request->is('post')) {
                if ($this->Auth->login()) {
                    $this->Session->setFlash(__('Welcome, '. $this->Auth->user('username')));
                    $this->redirect($this->Auth->redirectUrl());
                } else {
                    $this->Session->setFlash(__('Invalid username or password'));
                }
            }
        }


        /**
         * admin_logout
         *
         * admin logout module
         * @param none
         * @return void
         */
        public function admin_logout() {
            return $this->redirect($this->Auth->logout());
        }
}