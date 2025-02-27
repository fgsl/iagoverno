<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Application\Form\CategoriaDeSoftwareForm;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class CategoriaDeSoftwareController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string  $modelClass = 'Application\Model\CategoriaDeSoftware';
   
    protected string $tableClass = 'Application\Model\CategoriaDeSoftwareTable';
    
    protected string $pageArg = 'key';
    
    protected string $route = 'categoria-de-software';

    public function getForm(bool $full = false): Form
    {
        return new CategoriaDeSoftwareForm();
    }
    
    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Incluir ' : 'Alterar ') . 'Categoria de Software';
    }
    
    protected function getSelect(): Select
    {
        $nome = $this->getRequest()->getPost('nome');
        
        return empty($nome) ? $this->table->getSelect() : $this->table->getSelectByName($nome);
    }
}

