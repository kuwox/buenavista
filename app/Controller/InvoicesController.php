<?php
App::uses('AppController', 'Controller');
/**
 * Invoices Controller
 *
 * @property Invoice $Invoice
 * @property PaginatorComponent $Paginator
 * @property FlashComponent $Flash
 * @property SessionComponent $Session
 */
class InvoicesController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Flash', 'Session', 'RequestHandler');
	

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Invoice->recursive = 0;
		$this->set('invoices', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Invoice->exists($id)) {
			throw new NotFoundException(__('Invalid invoice'));
		}
		$options = array('conditions' => array('Invoice.' . $this->Invoice->primaryKey => $id));
		$this->pdfConfig = array('download' => true,'filename' => 'cliente_' . $id .'.pdf');
		$this->set('invoice', $this->Invoice->find('first', $options));
		$this->set('invoices', $this->Paginator->paginate());


	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		$customers = $this->Invoice->Customer->find('list');
		$this->set(compact('customers'));
		if ($this->request->is('post')) {
			$this->Invoice->create();
			if ($this->Invoice->save($this->request->data)) {
				$this->Flash->success(__('The invoice has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The invoice could not be saved. Please, try again.'));
			}
		}
		/**$statuses = $this->Invoice->Status->find('list');*/

	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$customers = $this->Invoice->Customer->find('list');
		$this->set(compact('customers'));
		if (!$this->Invoice->exists($id)) {
			throw new NotFoundException(__('Invalid invoice'));
		}
		if ($this->request->is(array('post', 'put'))) {

			if ($this->Invoice->save($this->request->data)) {
				$this->Flash->success(__('The invoice has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The invoice could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Invoice.' . $this->Invoice->primaryKey => $id));
			$this->request->data = $this->Invoice->find('first', $options);
		}
		
		/**$customers = $this->Invoice->Customer->find('list');
		$statuses = $this->Invoice->Status->find('list');
		$this->set(compact('customers', 'statuses'));*/
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Invoice->id = $id;
		if (!$this->Invoice->exists()) {
			throw new NotFoundException(__('Invalid invoice'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Invoice->delete()) {
			$this->Flash->success(__('The invoice has been deleted.'));
		} else {
			$this->Flash->error(__('The invoice could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
