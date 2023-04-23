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
        $marca = new Marca();
        $marca->nombre = $request->nomb;
        $marca->descripcion = $request->descrip;
        $marca->save();
        $modelo = new MarcaResource($marca);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Marca $marca)
    {
        $modelo = new MarcaResource($marca);
        return HelperCDASI::data($modelo);
    }

    public function update(MarcaRequest $request, Marca $marca)
    {
        $marca->nombre = $request->nomb;
        $marca->descripcion = $request->descrip;
        $marca->marca_id = $request->id_marca;
        $marca->update();
        $modelo = new MarcaResource($marca);

        return HelperCDASI::data($modelo, true, 200);
    }

    public function destroy(Marca $marca)
    {
        $modelo = new MarcaResource($marca);
        $marca->delete();
        return HelperCDASI::data($modelo);
    }
}