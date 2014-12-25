<?php
App::uses('AppController', 'Controller');
/**
 * Contents Controller
 *
 * @property Content $Content
 */
class ContentsController extends AppController {


    public function beforeFilter(){
        parent::beforeFilter();
        $this->path = WWW_ROOT."uploads/header_images/";
        $this->Auth->allow('view');
    }

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Content->recursive = 0;
		$this->set('contents', $this->{$this->modelClass}->find('all'));
	}


/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
		$this->set('content', $this->Content->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {

            $filename = $this->FileUpload->uploadFile($this->request->data[$this->modelClass]['header_image'],$this->path);

            if($filename){
                $this->request->data[$this->modelClass]['header_image'] = $filename;
            }else{
                unset($this->request->data[$this->modelClass]['header_image']);
            }

			$this->Content->create();
			if ($this->Content->save($this->request->data)) {
				$this->Session->setFlash(__('The content has been saved'),'default',array(),'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The content could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {

            $image = $this->{$this->modelClass}->find('first',array('conditions'=>array($this->modelClass.'.id'=>$id),'fields'=>array('header_image')));

            $filename = $this->FileUpload->uploadFile($this->request->data[$this->modelClass]['header_image'],$this->path);
            if($filename){
                $this->request->data[$this->modelClass]['header_image'] = $filename;
                @unlink($this->path.$image[$this->modelClass]['header_image']);
            }else{
                unset($this->request->data[$this->modelClass]['header_image']);
            }

			if ($this->Content->save($this->request->data)) {
				$this->Session->setFlash(__('The content has been saved'),'default',array(),'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The content could not be saved. Please, try again.'),'default',array(),'error');
			}
		} else {
			$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
			$this->request->data = $this->Content->find('first', $options);
		}
        $this->render('admin_add');
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->Content->id = $id;
		if (!$this->Content->exists()) {
			throw new NotFoundException(__('Invalid content'));
		}

        $image = $this->{$this->modelClass}->find('first',array('conditions'=>array($this->modelClass.'.id'=>$id),'fields'=>array('header_image')));


		if ($this->Content->delete()) {
            @unlink($this->path.$image[$this->modelClass]['header_image']);
			$this->Session->setFlash(__('Content page deleted'),'default',array(),'success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Could not delete content page, try again.'),'default',array(),'error');
		$this->redirect(array('action' => 'index'));
	}



    public function search(){

    }



    public function view(){

        $content = $this->{$this->modelClass}->find('first',array(
            'conditions'=>array('page_slug'=>$this->request->params['slug'])
        ));
        if(empty($content)){
            throw new NotFoundException;
        }
        $this->set(compact('content'));
    }
}
