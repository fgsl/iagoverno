<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class SoftwareMaisUsadoController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Software';
    
    protected string $tableClass = 'Application\Model\SoftwareTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'software-mais-usado';
  
    protected function getSelect(): Select
    {
        return $this->table->getSelectTotalDeSoftwaresLivres();
    }
 
    public function getForm(bool $full = false): Form
    {}
    public function getEditTitle($key): string
    {}   
}