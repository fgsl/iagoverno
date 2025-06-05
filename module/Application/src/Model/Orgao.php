<?php
namespace Application\Model;

use Fgsl\InputFilter\InputFilter;
use Laminas\Filter\Boolean;
use Laminas\Filter\StringTrim;
use Laminas\Filter\ToInt;
use Laminas\I18n\Validator\IsInt;
use Laminas\Validator\NotEmpty;
use Laminas\Validator\StringLength;
use Fgsl\Model\AbstractActiveRecord;
use Laminas\InputFilter\InputFilterInterface;

class Orgao extends AbstractActiveRecord
{
    public function getInputFilter(): InputFilterInterface
    {
        if ($this->inputFilter == null){
            $inputFilter = new InputFilter();
            $inputFilter->addInput('nome');
            $inputFilter->addInput('tipo_orgao');
            $inputFilter->addInput('semresposta',false);
            $inputFilter->addInput('usaia',false);
            $inputFilter->addInput('houvemelhoria',false);
            $inputFilter->addInput('hapoliticainterna',false);
            $inputFilter->addInput('questoeseticas',false);
            $inputFilter->addInput('pesquisa',false);
            $inputFilter->addInput('aplica',false);
            $inputFilter->addInput('sigla',false);
            $inputFilter->addInput('pedidos');
            $inputFilter->addFilter('codigo', new ToInt());
            $inputFilter->addFilter('nome', new StringTrim());
            $inputFilter->addFilter('tipo_orgao', new ToInt());
            $inputFilter->addFilter('semresposta', new Boolean());
            $inputFilter->addFilter('usaia',new Boolean());
            $inputFilter->addFilter('houvemelhoria',new Boolean());
            $inputFilter->addFilter('hapoliticainterna',new Boolean());
            $inputFilter->addFilter('questoeseticas',new Boolean());
            $inputFilter->addFilter('pesquisa',new Boolean());
            $inputFilter->addFilter('aplica',new Boolean());
            $inputFilter->addFilter('sigla', new StringTrim());
            $inputFilter->addFilter('pedidos', new ToInt());
            $inputFilter->addValidator('nome', new StringLength(['min'=>3,'max'=>80]));
            $inputFilter->addValidator('tipo_orgao', new IsInt());
            $inputFilter->addValidator('semresposta', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('usaia', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('houvemelhoria', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('hapoliticainterna', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('questoeseticas', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('pesquisa', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('aplica', new NotEmpty(NotEmpty::NULL));
            $inputFilter->addValidator('pedidos', new IsInt());
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
    
    public function __get($name){
        switch ($name) {
            case 'naorespondeu'             :
            case 'usaia'                    :
            case 'houvemelhoria'            :
            case 'hapoliticainterna'        :
            case 'questoeseticas'           :
            case 'pesquisa'                 :
            case 'aplica'                   :
                return $this->data[$name];
            default: 
                return parent::__get($name);
        }
    }
}