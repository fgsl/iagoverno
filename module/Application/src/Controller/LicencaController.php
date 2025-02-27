<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Application\Form\LicencaForm;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class LicencaController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Licenca';
    
    protected string $tableClass = 'Application\Model\LicencaTable';
   
    protected string $pageArg = 'key';

    protected string $route = 'licenca';
    
    public function getForm(bool $full = false): Form
    {
        return new LicencaForm();
    }
    
    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Incluir ' : 'Alterar ') . 'Licença';
    }

    protected function getSelect(): Select
    {
        $nome = $this->getRequest()->getPost('nome');
        
        return empty($nome) ? $this->table->getSelect() : $this->table->getSelectByName($nome);
    }
}

