<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Application\Form\SoftwareForm;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;
use Application\Model\CategoriaDeSoftwareTable;
use Application\Model\LicencaTable;

class SoftwareController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Software';
    
    protected string $tableClass = 'Application\Model\SoftwareTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'software';

    protected ?CategoriaDeSoftwareTable $categoriaTable;

    protected ?LicencaTable $licencaTable;

    public function setCategoriaTable(CategoriaDeSoftwareTable $categoriaTable)
    {
        $this->categoriaTable = $categoriaTable;
    }

    public function setLicencaTable(LicencaTable $licencaTable)
    {
        $this->licencaTable = $licencaTable;
    }
    
    public function indexAction()
    {
        $filtern = $this->params('filtern');
        $filterv = $this->params('filterv');
        
        if ($filtern == ''){
            $filterv = $this->getRequest()->getPost('nome');
            if (!empty($filterv)){
                $filtern = 'nome';
            }
        }
        $view = parent::indexAction();
        $view->setVariables([
            'filtern' => $filtern,
            'filterv' => $filterv
        ]);
        return $view;
    }
    
    public function pageAction()
    {
        $params = [$this->pageArg => $this->params('key')];
        $filtern = $this->params('filtern');
        $filterv = $this->params('filterv');
        if (!empty($filtern)){
            $params['filtern'] = $filtern;
            $params['filterv'] = $filterv;
        }
        return $this->redirect()->toRoute($this->route, $params);
    }    
    
    public function getForm(bool $full = FALSE): Form
    {
        $softwareForm = new SoftwareForm();
        $options = [];
        $categorias = $this->categoriaTable->getModels(null,'nome');
        foreach($categorias as $categoria){
            $options[$categoria->codigo] = $categoria->nome;
        }
        $softwareForm->get('codigo_categoria')->setValueOptions($options);
        $options = [];
        $licencas = $this->licencaTable->getModels(null,'nome');
        foreach($licencas as $licenca){
            $options[$licenca->codigo] = $licenca->nome;
        }
        $softwareForm->get('codigo_licenca')->setValueOptions($options);
        return $softwareForm;
    }

    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Incluir ' : 'Alterar ') . 'Software';
    }
    
    protected function getSelect(): Select
    {
        $nome = $this->getRequest()->getPost('nome');
        
        if (empty($nome)){
            $nome = $this->params('filterv');
        }
        
        return empty($nome) ? $this->table->getSelect() : $this->table->getSelectByName($nome);
    }
}