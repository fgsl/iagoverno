<?php
namespace Application\Form;

use Fgsl\Form\AbstractForm;

class OrgaoForm extends AbstractForm
{
    public function __construct()
    {
        parent::__construct('orgao');
        $this->addElement('nome', AbstractForm::TEXT,'Nome:',['autofocus'=>'autofocus','class'=>'form-control']);
        $this->addElement('tipo_orgao', AbstractForm::SELECT, 'Tipo:',['class'=>'form-control']);
        $this->addElement('sigla', AbstractForm::TEXT,'Sigla:',['class'=>'form-control']);
        $this->addElement('pedidos', AbstractForm::NUMBER, 'Pedidos:',['class'=>'form-control']);
        $this->addElement('semresposta', AbstractForm::CHECKBOX, 'Não respondeu:');
        $this->addElement('usaia', AbstractForm::CHECKBOX, 'Usa IA:');
        $this->addElement('houvemelhoria', AbstractForm::CHECKBOX, 'Houve melhoria:');
        $this->addElement('hapoliticainterna', AbstractForm::CHECKBOX, 'Há política interna:');
        $this->addElement('questoeseticas', AbstractForm::CHECKBOX, 'Aborda questões éticas:');
        $this->addElement('pesquisa', AbstractForm::CHECKBOX, 'Pesquisa IA:');
        $this->addElement('aplica', AbstractForm::CHECKBOX, 'Aplica IA:');
        $this->addElement('codigo', AbstractForm::HIDDEN);
        $this->addelement('submit',AbstractForm::SUBMIT,'gravar',['class'=>'form-control']);
    }
}

