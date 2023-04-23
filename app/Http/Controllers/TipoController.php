<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Controllers\Controller;
use App\Http\Requests\TipoRequest;
use App\Http\Resources\TipoResource;
use App\Models\Tipo;

class TipoController extends Controller
{
    public function index()
    {
        $modelo = TipoResource::collection(Tipo::all());
        return HelperCDASI::data($modelo);
    }

    public function store(TipoRequest $request)
    {
        $tipo = new Tipo();
        $tipo->nombre = $request->nomb;
        $tipo->observacion = $request->obs;
        $tipo->save();
        $modelo = new TipoResource($tipo);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Tipo $tipo)
    {
        $modelo = new TipoResource($tipo);
        return HelperCDASI::data($modelo);
    }

    public function update(TipoRequest $request, Tipo $tipo)
    {
        $tipo->nombre = $request->nomb;
        $tipo->observacion = $request->obs;
        $tipo->update();
        $modelo = new TipoResource($tipo);

        return HelperCDASI::data($modelo, true, 200);
    }

    public function destroy(Tipo $tipo)
    {
        $modelo = new TipoResource($tipo);
        $tipo->delete();
        return HelperCDASI::data($modelo);
    }
}