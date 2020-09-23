<?php

namespace FormBuilder;

use \OCFram\FormBuilder;
use \OCFram\StringField;
use \OCFram\TextField;
use \OCFram\MaxLengthValidator;
use \OCFram\NotNullValidator;

class CommentFormBuilder extends FormBuilder
{
    public function build()
    {
        $this->form->add(new StringField([
            'label' => 'Auteur',
            'name' => 'auteur',
            'maxLength' => 50,
            'validator' => [
                new MaxLengthValidator('L\'auteur spécifié et trop long (50 caractères max)', 50),
                new NotNullValidator('Merci de spécifier l\'auteur du commentaire'),
            ],
        ]))
        ->add(new TextField([
            'label' => 'Contenu',
            'name' => 'contenu',
            'rows' => 7,
            'cols' => 50,
            'validators' => [
                new NotNullValidator('Merci de spécifier votre commentaire'),
            ],
        ]));
    }
}


