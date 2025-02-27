<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class MaiorOrgaoUsuarioController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Software';
    
    protected string $tableClass = 'Application\Model\SoftwareTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'maior-orgao-usuario';
  
    protected function getSelect(): Select
    {
        return $this->table->getSelectMaioresOrgaosUsuarios();
    }
 
    public function getForm(bool $full = false): Form
    {}
    public function getEditTitle($key): string
    {}   
}