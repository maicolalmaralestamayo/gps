<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VehiculoRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'chapa' => 'nullable|size:7|string'
        ];
    }

    public function attributes()
    {
        return [
            'chapa' => '[matrícula]',
            'tanque' => '[capacidad en litros del tanque]'
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
