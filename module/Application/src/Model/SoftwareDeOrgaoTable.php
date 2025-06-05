<?php
namespace Application\Model;

use Fgsl\Db\TableGateway\AbstractTableGateway;
use Laminas\Db\ResultSet\ResultSetInterface;
use Laminas\Db\Sql\Select;
use Laminas\Db\Sql\Where;
use Fgsl\Model\AbstractModel;
use Laminas\Db\Sql\Predicate\Predicate;
use Laminas\Db\Sql\Expression;
use Fgsl\Model\AbstractActiveRecord;

class SoftwareDeOrgaoTable extends AbstractTableGateway
{
    protected string $keyName = 'codigo_software,codigo_orgao';
    
    protected string $modelName = 'Application\Model\SoftwareDeOrgao';

    /**
     *
     * @param mixed $key
     * @return AbstractModel
     */
    public function getModel($key): AbstractActiveRecord
    {
        $tokens = explode('-',$key);
        if (count($tokens) < 2) {
            $tokens = [0,0];
        }
        $keyName = explode(',',$this->keyName);
        $models = $this->getModels([
            $keyName[0] => $tokens[0],
            $keyName[1] => $tokens[1]
        ]);
        if ($models->count() == 0 || $models->current() == null ){
            $model = $this->modelName;
            return new $model(
                $keyName,
                $this->tableGateway->getTable(),
                $this->tableGateway->getAdapter());
        }
        return $models->current();
    }
    
    /**
     *
     * @param string $where
     * @return ResultSetInterface
     */
    public function getModels($where = null, $order = null): ResultSetInterface
    {
        $select = $this->getSelect();
        if (!is_null($where)){
            $select->where($where);
        }
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet;
    }
    
    public function getSelect(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->join('software', 'software.codigo=software_orgao.codigo_software',['software' => 'nome']);
        $select->join('orgao', 'orgao.codigo=software_orgao.codigo_orgao',['orgao' => 'nome']);
        return $select;
    }
    
    public function getSelectBySoftware($name): Select
    {
        $select = $this->getSelect();
        $where = new Where();
        $where->like('software.nome', '%' . $name . '%');
        $select->where($where);
        $select->order('orgao.nome');
        return $select;
    }
    
    public function getSelectByOrgao($name): Select
    {
        $select = $this->getSelect();
        $where = new Where();
        $where->like('orgao.nome', '%' . $name . '%');
        $select->where($where);
        $select->order('software.nome');
        return $select;
    }
    
    public function getSelectTotalDeSoftwaresLivres(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(codigo_software)')]);
        $select->join('software', 'software.codigo=software_orgao.codigo_software',['software' => 'nome']);
        $select->join('licenca', 'licenca.codigo=software.codigo_licenca',['livre']);
        $select->where(['licenca.livre' => true]);
        $select->group('codigo_software');
        $select->order('total DESC');
        return $select;
    }
    
    public function getSelectTotalDeSoftwaresNaoLivres(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(codigo_software)')]);
        $select->join('software', 'software.codigo=software_orgao.codigo_software',['software' => 'nome']);
        $select->join('licenca', 'licenca.codigo=software.codigo_licenca',['livre']);
        $select->where(['licenca.livre' => false]);
        $select->group('codigo_software');
        $select->order('total DESC');
        return $select;
    }

    public function getSelectTotalDeSoftwares(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(codigo_software)')]);
        $select->join('software', 'software.codigo=software_orgao.codigo_software',['software' => 'nome']);
        $select->group('codigo_software');
        $select->order('total DESC');
        return $select;
    }

    public function getSelectTotalDeCategorias(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(categoria_software.codigo)')]);
        $select->join('software', 'software.codigo=software_orgao.codigo_software',[]);
        $select->join('licenca', 'licenca.codigo=software.codigo_licenca',['livre']);
        $select->join('categoria_software', 'software.codigo_categoria=categoria_software.codigo',['categoria' => 'nome']);
        $select->where(['licenca.livre' => true]);
        $select->group('categoria_software.codigo');
        $select->order('total DESC');
        return $select;
    }
    
    public function getSelectTotalDeLicencasLivres(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(codigo_licenca)')]);
        $select->join('software', 'software.codigo=software_orgao.codigo_software',[]);
        $select->join('licenca', 'licenca.codigo=software.codigo_licenca',['licenca' => 'nome','livre']);
        $select->where(['licenca.livre' => true]);
        $select->group('codigo_licenca');
        $select->order('total DESC');
        return $select;
    }
    
    public function getSelectMaioresOrgaosUsuarios(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(codigo_orgao)')]);
        $select->join('orgao', 'orgao.codigo=software_orgao.codigo_orgao',['orgao' => 'nome']);
        $select->join('software', 'software.codigo=software_orgao.codigo_software',[]);
        $select->group('codigo_orgao');
        $select->order('total DESC');
        return $select;
    }
    
    public function getSelectMaioresTiposDeOrgaosUsuarios(): Select
    {
        $subSelect = new Select($this->tableGateway->getTable());
        $subSelect->columns(['codigo_orgao' => new Expression('distinct software_orgao.codigo_orgao')]);
        $select = new Select();
        $select->from(['so' => $subSelect]);
        $select->columns(['total' => new Expression('count(tipo_orgao)')]);
        $select->join('orgao', 'orgao.codigo=so.codigo_orgao',[]);
        $select->join('tipo_orgao', 'tipo_orgao.codigo=orgao.tipo_orgao',['tipo' => 'nome']);
        $select->group('tipo');
        $select->order('total DESC');
        return $select;
    }
    
    public function getSelectSistemasOperacionaisMaisUsados(): Select
    {
        $select = new Select($this->tableGateway->getTable());
        $select->columns(['total' => new Expression('count(*)')]);
        $select->join('software', 'software_orgao.codigo_software=software.codigo',['software' => 'nome']);        
        $select->join('categoria_software', 'software.codigo_categoria=categoria_software.codigo',[]);
        $select->where(['categoria_software.nome' => str_pad('Sistemas Operacionais',80, ' ', STR_PAD_RIGHT)]);
        $select->group('software.codigo');
        $select->order('total DESC');
        return $select;
    }
    
    public function save(AbstractActiveRecord $model, $excludePrimaryKey = false)
    {
        $set = $model->getArrayCopy();
        try {
            $this->tableGateway->insert($set);
        } catch (\Exception $e) {
            error_log($e->getMessage());
        }
    }
    
    public function delete($key)
    {
        $tokens = explode('-',$key);
        
        $where = new Where();
        $predicate = new Predicate();
        $predicate->equalTo('codigo_software', $tokens[0]);
        $where->addPredicate($predicate);
        $predicate->equalTo('codigo_orgao', $tokens[1]);
        
        $this->tableGateway->delete($where);
    }
}