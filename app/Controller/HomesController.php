<?php
App::uses('AppController', 'Controller');
/**
 * Contents Controller
 *
 * @property Content $Content
 */
class HomesController extends AppController {


    public function beforeFilter(){
        parent::beforeFilter();
        $this->path = WWW_ROOT."uploads/header_images/";
        $this->Auth->allow('index');
    }

    public function index(){
        $this->set('title_for_layout','Home');
        $this->layout='home';
    }
}
