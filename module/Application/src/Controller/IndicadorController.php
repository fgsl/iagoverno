<?php
namespace Application\Controller;

use Laminas\Mvc\Controller\AbstractActionController;
use Application\Model\OrgaoTable;
use Application\Model\SoftwareTable;
use Laminas\View\Model\ViewModel;

class IndicadorController extends AbstractActionController
{
    private $orgaoTable;
    private $softwareTable;
    
    public function __construct(OrgaoTable $orgaoTable, SoftwareTable $softwareTable)
    {
        $this->orgaoTable = $orgaoTable;
        $this->softwareTable = $softwareTable;
    }
    
    public function indexAction()
    {
        $totais = [];
        $totais['total_orgaos'] = $this->orgaoTable->getTotalDeOrgaos();
        $totais['total_sem_resposta'] = $this->orgaoTable->getTotalSemResposta();
        $totais['total_usaia'] = $this->orgaoTable->getTotalUsaIA();
        $totais['total_houvemelhoria'] = $this->orgaoTable->getTotalHouveMelhoria();
        $totais['total_hapoliticainterna'] = $this->orgaoTable->getTotalHaPoliticaInterna();
        $totais['total_questoeseticas'] = $this->orgaoTable->getTotalQuestoesEticas();
        $totais['total_pesquisa'] = $this->orgaoTable->getTotalPesquisa();
        $totais['total_aplica'] = $this->orgaoTable->getTotalAplica();
        $totais['total_softwares_livres'] = $this->softwareTable->getTotalDeSoftwaresLivres();
        $totais['total_softwares_nao_livres'] = $this->softwareTable->getTotalDeSoftwaresNaoLivres();
        
        return new ViewModel($totais);
    }
}
