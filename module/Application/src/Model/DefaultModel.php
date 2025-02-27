<?php
namespace Application\Model;

use Fgsl\InputFilter\InputFilter;
use Laminas\Filter\ToInt;
use Laminas\Filter\StringTrim;
use Laminas\Validator\StringLength;
use Fgsl\Model\AbstractActiveRecord;
use Laminas\InputFilter\InputFilterInterface;

class DefaultModel extends AbstractActiveRecord
{
    public function getInputFilter(): InputFilterInterface
    {
        if ($this->inputFilter == null){
            $inputFilter = new InputFilter();
            $inputFilter->addFilter('codigo', new ToInt());
            $inputFilter->addFilter('nome', new StringTrim());
            $inputFilter->addValidator('nome', new StringLength(['min'=>3,'max'=>80]));
            $inputFilter->addChains();
            $this->inputFilter = $inputFilter;
        }
        return $this->inputFilter;
    }
    
    public function getArrayCopy()
    {
        $data = $this->data;
   
        if (empty($this->data['codigo'])){
            unset($data['codigo']);
        }
        return $data;
    }
}