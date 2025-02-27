<?php
namespace Application\Model;

use Fgsl\InputFilter\InputFilter;
use Laminas\Filter\ToInt;
use Fgsl\Model\AbstractActiveRecord;
use Laminas\InputFilter\InputFilterInterface;

class SoftwareDeOrgao extends AbstractActiveRecord
{
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
}