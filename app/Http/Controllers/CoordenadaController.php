<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Requests\CoordenadaRequest;
use App\Http\Resources\CoordenadaResource;
use App\Models\Coordenada;

class CoordenadaController extends Controller
{
    //obtener las posiciones de un vehículo en una misión (trayectoria, recorrido)
    public function index($mision)
    { 
        $modelo = CoordenadaResource::collection(Coordenada::where('mision_vehiculo_id', $mision)->get());
        return HelperCDASI::data($modelo);
    }

    //obtener las últimas posiciones de un vehículo en una misión (trayectoria)
    public function index_ult($mision, $cant)
    {
        return HelperCDASI::data(CoordenadaResource::collection(Coordenada::where('mision_vehiculo_id', $mision)->
        orderByDesc('tiempo')->take($cant)->get()));
    }

    //insertar una nueva posición de un vehúcilo en una misión (trayectoria)
    public function store(CoordenadaRequest $request, $Mision)
    {
        $modelo = new Coordenada;
        $modelo->tiempo = $request->datetime;
        $modelo->latitud = $request->lat;
        $modelo->longitud = $request->long;
        $modelo->mision_vehiculo_id = $Mision;
        $modelo->save();

        return HelperCDASI::data(new CoordenadaResource($modelo), true, 201);
    }

    //eliminar la trayectoria de un vehículo (es decir, por la misión)
    public function destroy($mision)
    {
        Coordenada::where('mision_vehiculo_id', $mision)->delete();
        return HelperCDASI::data(null,false, 200);
    }

    //eliminar una coordenada específica de un vehículo
    public function destroy_coordenada(Coordenada $coordenada)
    {
        $coordenada->delete();
        return HelperCDASI::data(new CoordenadaResource($coordenada));
    }
}