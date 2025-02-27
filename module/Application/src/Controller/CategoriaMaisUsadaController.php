<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class CategoriaMaisUsadaController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Categoria';
    
    protected string $tableClass = 'Application\Model\CategoriaTable';
  
    protected string $pageArg = 'key';

    protected string $route = 'categoria-mais-usada';
  
    protected function getSelect(): Select
    {
        return $this->table->getSelectTotalDeCategorias();
    }
 
    public function getForm(bool $full = FALSE): Form
    {}
    public function getEditTitle($key): string
    {}   
}