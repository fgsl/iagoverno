<?php
namespace Application\Controller;

use Application\Form\SoftwareDeOrgaoForm;
use Fgsl\Mvc\Controller\AbstractCrudController;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;
use Application\Model\SoftwareTable;
use Application\Model\OrgaoTable;

class SoftwareDeOrgaoController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Software';
    
    protected string $tableClass = 'Application\Model\SoftwareTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'software-de-orgao';

    private ?SoftwareTable $softwareTable;

    private ?OrgaoTable $orgaoTable;

    public function setSoftwareTable(SoftwareTable $softwareTable)
    {
        $this->softwareTable = $softwareTable;
    }

    public function setOrgaoTable(OrgaoTable $orgaoTable)
    {
        $this->orgaoTable = $orgaoTable;
    }
    
    public function indexAction()
    {
        $filtern = $this->params('filtern');
        $filterv = $this->params('filterv');
        
        if ($filtern == ''){
            $filterv = $this->getRequest()->getPost('software');
            if ($filterv == ''){
                $filterv = $this->getRequest()->getPost('orgao');
                if (!empty($filterv)){
                    $filtern = 'orgao';
                }
            } else {
                $filtern = 'software';
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
    
    public function getForm(bool $full = false): Form
    {
        $softwareDeOrgaoForm = new SoftwareDeOrgaoForm();
        $options = [];
        $softwares = $this->softwareTable->getModels(null, 'nome');
        foreach($softwares as $software){
            $options[$software->codigo] = $software->nome;
        }
        $softwareDeOrgaoForm->get('codigo_software')->setValueOptions($options);
        $options = [];
        $orgaos = $this->orgaoTable->getModels();
        foreach($orgaos as $orgao){
            $options[$orgao->codigo] = $orgao->nome;
        }
        $softwareDeOrgaoForm->get('codigo_orgao')->setValueOptions($options);
        return $softwareDeOrgaoForm;
    }

    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Associar ' : 'Alterar ') . 'Software';
    }
    
    protected function getSelect(): Select
    {
        $software = $this->getRequest()->getPost('software');
        $orgao = $this->getRequest()->getPost('orgao');
        
        $filtern = $this->params('filtern');
        $filterv = $this->params('filterv');
        
        if ($filtern == 'software'){
            $software = $filterv;
        }
        
        if ($filtern == 'orgao'){
            $orgao = $filterv;
        }        
        if (!empty($software)){
            $this->itemCountPerPage = 60;
            return $this->table->getSelectBySoftware($software);            
        }
        if (!empty($orgao)){
            $this->itemCountPerPage = 60;
            return $this->table->getSelectByOrgao($orgao);
        }            
        
        return $this->table->getSelect();
    }   
}