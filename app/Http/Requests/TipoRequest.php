<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TipoRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'nomb' => 'nullable|string',
            'obs' => 'nullable|string'
        ];
    }

    public function attributes()
    {
        return [
            'nomb' => '[nombre del tipo]',
            'obs' => '[observación del tipo]'
        ];
    }

    public function messages()
    {
        return [ 
            'required' => 'El campo :attribute es obligatorio llenarlo.',
            
            'size' => 'El campo :attribute debe teer una longitud de :size. caracteres.',
            'max' => 'El campo :attribute debe teer una longitud máxima de :size. caracteres.',
            'min' => 'El campo :attribute debe teer una longitud mínima de :size. caracteres.',
            'unique' => 'El campo :attribute ya existe en la Base de Datos.',
            
            'regex' => 'El campo :attribute tiene problemas en su estructura.',
            
            'integer' => 'El campo :attribute debe ser un número entero.',
            'string' => 'El campo :attribute debe contener solo caracteres alafanuméricos.',
            'numeric' => 'El campo :attribute debe ser numérico.',
            'date' => 'El campo :attribute debe tener un formato de fecha.',
        ];
    }
}
