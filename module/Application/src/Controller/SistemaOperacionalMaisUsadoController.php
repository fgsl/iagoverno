<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class SistemaOperacionalMaisUsadoController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Software';
    
    protected string $tableClass = 'Application\Model\SoftwareTable';

    protected string $pageArg = 'key';

    protected string $route = 'sistema-operacional-mais-usado';
  
    protected function getSelect(): Select
    {
        return $this->table->getSelectSistemasOperacionaisMaisUsados();
    }
 
    public function getForm(bool $full = FALSE): Form
    {}
    public function getEditTitle($key): string
    {}   
}