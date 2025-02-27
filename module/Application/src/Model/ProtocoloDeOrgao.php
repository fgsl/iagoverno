<?php
namespace Application\Model;

use Fgsl\InputFilter\InputFilter;
use Laminas\Filter\ToInt;
use Fgsl\Model\AbstractActiveRecord;
use Laminas\InputFilter\InputFilterInterface;

class ProtocoloDeOrgao extends AbstractActiveRecord
{
    public function getInputFilter(): InputFilterInterface
    {
        if ($this->inputFilter == null){
            $inputFilter = new InputFilter();
            $inputFilter->addFilter('codigo_protocolo', new ToInt());
            $inputFilter->addFilter('codigo_orgao', new ToInt());
            $inputFilter->addChains();
            $this->inputFilter = $inputFilter;
        }
        return $this->inputFilter;
    }
}