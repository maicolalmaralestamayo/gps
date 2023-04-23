<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Controllers\Controller;
use App\Http\Requests\MarcaRequest;
use App\Http\Resources\MarcaResource;
use App\Models\Marca;

class MarcaController extends Controller
{
    public function index()
    {
        $modelo = MarcaResource::collection(Marca::all());
        return HelperCDASI::data($modelo);
    }

    public function store(MarcaRequest $request)
    {
        $modelo = new Marca();
        $modelo->nombre = $request->nomb;
        $modelo->descripcion = $request->descrip;
        $modelo->save();
        $modelo = new MarcaResource($modelo);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Marca $marca)
    {
        $modelo = new MarcaResource($marca);
        return HelperCDASI::data($modelo);
    }

    public function update(MarcaRequest $request, Marca $model)
    {
        $model->nombre = $request->nomb;
        $model->descripcion = $request->descrip;
        $model->marca_id = $request->id_marca;
        $model->update();
        $modelo = new MarcaResource($model);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function destroy(Marca $model)
    {
        $modelo = new MarcaResource($model);
        $model->delete();
        return HelperCDASI::data($modelo);
    }
}