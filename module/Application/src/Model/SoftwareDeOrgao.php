<?php
namespace Application\Model;

use Fgsl\InputFilter\InputFilter;
use Laminas\Filter\ToInt;
use Fgsl\Model\AbstractActiveRecord;
use Laminas\Db\RowGateway\AbstractRowGateway;
use Laminas\InputFilter\InputFilterInterface;

class SoftwareDeOrgao extends AbstractActiveRecord
{
    protected $primaryKeyColumn = ['codigo_software','codigo_orgao'];

    public function getInputFilter(): InputFilterInterface
    {
        if ($this->inputFilter == null){
            $inputFilter = new InputFilter();
            $inputFilter->addFilter('codigo_software', new ToInt());
            $inputFilter->addFilter('codigo_orgao', new ToInt());
            $inputFilter->addChains();
            $this->inputFilter = $inputFilter;
        }
        return $this->inputFilter;
    }

    public function populate(array $rowData, $rowExistsInDatabase = false)
    {
        if (isset($rowData['submit'])) unset($rowData['submit']);
        $select = $this->sql->select()->where([
            'codigo_software' => $rowData['codigo_software'],
            'codigo_orgao' => $rowData['codigo_orgao']
        ]);
        $statement = $this->sql->prepareStatementForSqlObject($select);
        $result = $statement->execute();
        $rowExistsInDatabase = ($result->count() > 0);
        AbstractRowGateway::populate($rowData, $rowExistsInDatabase);
    }
}