<?php
namespace Application\Controller;

use Fgsl\Mvc\Controller\AbstractCrudController;
use Application\Form\OrgaoForm;
use Laminas\View\Model\ViewModel;
use Laminas\Form\Form;
use Laminas\Db\Sql\Select;

class OrgaoController extends AbstractCrudController
{
    protected int $itemCountPerPage = 10;
    
    protected string $modelClass = 'Application\Model\Orgao';
   
    protected string $tableClass = 'Application\Model\OrgaoTable';
    
    protected string $pageArg = 'key';

    protected string $route = 'orgao';
    
    public function getForm(bool $full = false): Form
    {
        $orgaoForm = new OrgaoForm();
        $options = [];
        $tipos = $this->parentTable->getModels(null,'nome');
        foreach($tipos as $tipo){
            $options[$tipo->codigo] = $tipo->nome;
        }
        $orgaoForm->get('tipo_orgao')->setValueOptions($options);
        return $orgaoForm;
    }
    
    public function getEditTitle($key): string
    {
        return (empty($key) ? 'Incluir ' : 'Alterar ') . 'Órgão';
    }
    
    protected function getPost(): \ArrayObject
    {
        $post = $this->getRequest()->getPost();
        $post['naorespondeu'] = (bool) $post['naorespondeu'];
        $post['usaia'] = (bool) $post['usaia'];
        $post['houvemelhoria'] = (bool) $post['houvemelhoria'];
        $post['hapoliticainterna'] = (bool) $post['hapoliticainterna'];
        $post['questoeseticas'] = (bool) $post['questoeseticas'];
        $post['pesquisa'] = (bool) $post['pesquisa'];
        $post['aplica'] = (bool) $post['aplica'];
        return $post;
    }
    
    protected function getSelect(): Select
    {
        $nome = $this->getRequest()->getPost('nome');
        
        return empty($nome) ? $this->table->getSelect() : $this->table->getSelectByName($nome);
    }
    
    /**
     * The default action - show the home page
     */
    public function siglaAction()
    {
        $view = $this->getListView($this->getSiglaPaginator());
        if ($view instanceof ViewModel){
            $view->setTemplate('application/orgao/index.phtml');
        }
        return $view;
    }
    
    protected function getSiglaPaginator()
    {
        $alternativeSelect = $this->table->getSelectByAcronym($this->getRequest()->getPost('sigla'));
        return $this->getPaginator($alternativeSelect);
    }
}
