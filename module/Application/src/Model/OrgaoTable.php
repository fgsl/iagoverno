<?php
namespace Application\Model;

use Fgsl\Db\TableGateway\AbstractTableGateway;
use Laminas\Db\ResultSet\ResultSetInterface;
use Laminas\Db\Sql\Select;
use Laminas\Db\Sql\Where;
use Laminas\Db\Sql\Expression;

class OrgaoTable extends AbstractTableGateway
{
    protected string $keyName = 'codigo';
    
    protected string $modelName = 'Application\Model\Orgao';
    
    public function getModels($where = null, $order = null): ResultSetInterface
    {
        $select = $this->getSelect();
        if (!is_null($where)){
            $select->where(['orgao.codigo' => $where['codigo']]);
        }
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet;
    }
    
    public function getSelect(): Select
    {
        $select = new Select($this->tableGateway->getTable());        
        $select->join('tipo_orgao', 'orgao.tipo_orgao=tipo_orgao.codigo',['tipo' => 'nome']);
        $select->order('nome');
        return $select;
    }
    
    public function getSelectByName($name): Select
    {
        $select = $this->getSelect();
        $where = new Where();
        $where->like('orgao.nome', '%' . $name . '%');
        $select->where($where);
        return $select;
    }
    
    public function getSelectByAcronym($acronym): Select
    {
        $select = $this->getSelect();
        $where = new Where();
        $where->like('orgao.sigla', '%' . $acronym . '%');
        $select->where($where);
        return $select;
    }
    
    public function getTotalDeOrgaos(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_orgaos' => new Expression('count(*)')]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_orgaos;
    }
    
    public function getTotalUsaIA(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_usaia' => new Expression('count(usaia)')]);
        $select->where(['usaia' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_usaia;
    }
    
    public function getTotalHouveMelhoria(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_houvemelhoria' => new Expression('count(houvemelhoria)')]);
        $select->where(['houvemelhoria' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_houvemelhoria;
    }
    
    public function getTotalSemResposta(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_sem_resposta' => new Expression('count(semresposta)')]);
        $select->where(['semresposta' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_sem_resposta;
    }
    
    public function getTotalHaPoliticaInterna(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_hapoliticainterna' => new Expression('count(hapoliticainterna)')]);
        $select->where(['hapoliticainterna' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_hapoliticainterna;
    }
    
    public function getTotalQuestoesEticas(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_questoeseticas' => new Expression('count(questoeseticas)')]);
        $select->where(['questoeseticas' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_questoeseticas;
    }

    public function getTotalPesquisa(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_pesquisa' => new Expression('count(pesquisa)')]);
        $select->where(['pesquisa' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_pesquisa;
    }

    public function getTotalAplica(): int
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total_aplica' => new Expression('count(aplica)')]);
        $select->where(['aplica' => true]);
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current()->total_aplica;
    }
    
    public function getSelectPesquisadoresDeIA(): Select
    {
        $select = $this->getSelect();
        $select->where(['pesquisa' => true]);
        return $select;
    }

    public function getSelectAplicadoresDeIA(): Select
    {
        $select = $this->getSelect();
        $select->where(['aplica' => true]);
        return $select;
    }
}
