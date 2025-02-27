<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Application\Form\ProtocoloForm;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class ProtocoloController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Protocolo';
    
    protected string $tableClass = 'Application\Model\ProtocoloTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'protocolo';
    
    public function getForm(bool $full = false): Form
    {
        return new ProtocoloForm();
    }

    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Incluir ' : 'Alterar ') . 'Protocolo';
    }
    
    protected function getSelect(): Select
    {
        $nome = $this->getRequest()->getPost('nome');
        
        return empty($nome) ? $this->table->getSelect() : $this->table->getSelectByName($nome);
    }    
}