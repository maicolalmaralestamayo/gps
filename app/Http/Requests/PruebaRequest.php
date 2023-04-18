<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PruebaRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'campo_1' => 'numeric',
        ];
    }

    public function attributes()
    {
        return [
            'campo_1' => '[campo 1]',
        ];
    }

    public function messages()
    {
        return [ 
            'numeric' => 'Identificador :attribute incorrecto.',
        ];
    }
}
