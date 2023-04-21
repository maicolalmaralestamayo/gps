<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Requests\VehiculoRequest;
use App\Http\Resources\VehiculoResource;
use App\Models\Vehiculo;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class VehiculoController extends Controller
{
    //lista de todos los vehículos (sin paginar)
    public function index()
    {
        return HelperCDASI::data(VehiculoResource::collection(Vehiculo::all()));
    }
    
    //lista de todos los vehículos (paginado)
    public function index_paginado($cant)
    {
        return HelperCDASI::data(VehiculoResource::collection(Vehiculo::paginate($cant)));
    }

    //datos de un solo vehículo dado su identificador (id)
    public function show(Vehiculo $vehiculo)
    {
        return HelperCDASI::data(new VehiculoResource($vehiculo));
    }

    //datos de un solo vehículo dado su identificador (id)
    public function show_matricula($matricula)
    {
        $vehiculo = Vehiculo::where('matricula', $matricula)->first();
        return HelperCDASI::data(new VehiculoResource($vehiculo));
    }

    public function store(VehiculoRequest $request)
    {
        $modelo = new Vehiculo();
        $modelo->matricula = $request->chapa;
        $modelo->capacidad = $request->tanque;
        $modelo->modelo_id = $request->modelo;
        $modelo->color_id = $request->color;
        $modelo->combustible_id = $request->combustible;
        $modelo->tipo_id = $request->tipo;
        $modelo->save();

        return HelperCDASI::data(new VehiculoResource($modelo), true, 201);
    }

    //actualizar los datos de un vehiculo dado su identificador (id)
    public function update(VehiculoRequest $request,Vehiculo $vehiculo)
    {
        $vehiculo->matricula = $request->chapa;
        $vehiculo->capacidad = $request->tanque;
        $vehiculo->modelo_id = $request->modelo;
        $vehiculo->color_id = $request->color;
        $vehiculo->combustible_id = $request->combustible;
        $vehiculo->tipo_id = $request->tipo;
        $vehiculo->save();

        return HelperCDASI::data(new VehiculoResource($vehiculo), true, 201);
    }

    //eliminar un vehiculo
    public function destroy_vehiculo(Vehiculo $vehiculo)
    {
        $vehiculo->delete();
        return HelperCDASI::data(new VehiculoResource($vehiculo));
    }
}
