<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Requests\VehiculoRequest;
use App\Http\Resources\VehiculoResource;
use App\Models\Vehiculo;

class VehiculoController extends Controller
{
    public function index()
    {
        $modelo = VehiculoResource::collection(Vehiculo::all());
        return HelperCDASI::data($modelo);
    }
    
    public function index_paginado($cant)
    {
        $modelo = VehiculoResource::collection(Vehiculo::paginate($cant));
        return HelperCDASI::data($modelo);
    }

    public function show(Vehiculo $vehiculo)
    {
        $modelo = new VehiculoResource($vehiculo);
        return HelperCDASI::data($modelo);
    }

    public function show_matricula($matricula)
    {
        $modelo = new VehiculoResource(Vehiculo::where('matricula', $matricula)->first());
        return HelperCDASI::data($modelo);
    }

    public function store(VehiculoRequest $request)
    {
        $vehiculo = new Vehiculo();
        $vehiculo->matricula = $request->chapa;
        $vehiculo->capacidad = $request->tanque;
        $vehiculo->modelo_id = $request->id_modelo;
        $vehiculo->color_id = $request->id_color;
        $vehiculo->combustible_id = $request->id_combustible;
        $vehiculo->tipo_id = $request->id_tipo;
        $vehiculo->observacion = $request->obs;
        $vehiculo->save();
        $modelo = new VehiculoResource($vehiculo);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function update(VehiculoRequest $request,Vehiculo $vehiculo)
    {
        $vehiculo->matricula = $request->chapa;
        $vehiculo->capacidad = $request->tanque;
        $vehiculo->modelo_id = $request->id_modelo;
        $vehiculo->color_id = $request->id_color;
        $vehiculo->combustible_id = $request->id_combustible;
        $vehiculo->tipo_id = $request->id_tipo;
        $vehiculo->observacion = $request->obs;
        $vehiculo->update();
        $modelo = new VehiculoResource($vehiculo);

        return HelperCDASI::data($modelo, true, 200);
    }

    public function destroy(Vehiculo $vehiculo)
    {
        $modelo = new VehiculoResource($vehiculo);
        $vehiculo->delete();
        return HelperCDASI::data($modelo);
    }
}