<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Controllers\Controller;
use App\Http\Requests\ModeloRequest;
use App\Http\Resources\ModeloResource;
use App\Models\Modelo;
use Illuminate\Http\Request;

class ModeloController extends Controller
{
    public function index()
    {
        $modelo = ModeloResource::collection(Modelo::all());
        return HelperCDASI::data($modelo);
    }

    public function store(Request $request)
    {
        $modelo = new Modelo();
        $modelo->nombre = $request->nomb;
        $modelo->descripcion = $request->descrip;
        $modelo->marca_id = $request->id_marca;
        $modelo->save();
        $modelo = new ModeloResource($modelo);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Modelo $model)
    {
        $modelo = new ModeloResource($model);
        return HelperCDASI::data($modelo);
    }

    public function update(ModeloRequest $request, Modelo $modelo)
    {
        $modelo->nombre = $request->nomb;
        $modelo->descripcion = $request->descrip;
        $modelo->marca_id = $request->id_marca;
        $modelo->save();
        $modelo = new ModeloResource($modelo);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function destroy(Modelo $model)
    {
        $modelo = new ModeloResource($model);
        $model->delete();
        return HelperCDASI::data($modelo);
    }
}
