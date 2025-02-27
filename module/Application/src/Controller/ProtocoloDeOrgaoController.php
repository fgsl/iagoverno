<?php
namespace Application\Controller;

use Application\Form\ProtocoloDeOrgaoForm;
use Fgsl\Mvc\Controller\AbstractCrudController;
use Laminas\Form\Form;
use Application\Model\ProtocoloTable;
use Application\Model\OrgaoTable;
use Laminas\Db\Sql\Select;

class ProtocoloDeOrgaoController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\ProtocoloDeOrgao';
    
    protected string $tableClass = 'Application\Model\ProtocoloDeOrgaoTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'protocolo-de-orgao';

    private ?ProtocoloTable $protocoloTable;

    private ?OrgaoTable $orgaoTable;

    public function setProtocoloTable(ProtocoloTable $protocoloTable)
    {
        $this->protocoloTable = $protocoloTable;
    }

    public function setOrgaoTable(OrgaoTable $orgaoTable)
    {
        $this->orgaoTable = $orgaoTable;
    }
    
    public function getForm(bool $full = false): Form
    {
        $protocoloDeOrgaoForm = new ProtocoloDeOrgaoForm();
        $options = [];
        $protocolos = $this->protocoloTable->getModels();
        foreach($protocolos as $protocolo){
            $options[$protocolo->codigo] = $protocolo->nome;
        }
        $protocoloDeOrgaoForm->get('codigo_protocolo')->setValueOptions($options);
        $options = [];
        $orgaos = $this->orgaoTable->getModels();
        foreach($orgaos as $orgao){
            $options[$orgao->codigo] = $orgao->nome;
        }
        $protocoloDeOrgaoForm->get('codigo_orgao')->setValueOptions($options);
        return $protocoloDeOrgaoForm;
    }

    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Incluir ' : 'Alterar ') . 'Protocolo';
    }
    
    protected function getSelect(): Select
    {
        $protocolo = $this->getRequest()->getPost('protocolo');
        $orgao = $this->getRequest()->getPost('orgao');
        
        if (!empty($protocolo)){
            return $this->table->getSelectByProtocolo($protocolo);
        }
        if (!empty($orgao)){
            return $this->table->getSelectByOrgao($orgao);
        }
        
        return $this->table->getSelect();
    }
}