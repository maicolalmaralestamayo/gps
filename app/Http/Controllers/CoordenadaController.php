<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Requests\CoordenadaRequest;
use App\Http\Resources\CoordenadaResource;
use App\Models\Coordenada;

class CoordenadaController extends Controller
{
    //obtener las todas las coordenadas de un vehiculo
    public function index_all($vehiculo)
    { 
        $modelo = CoordenadaResource::collection(Coordenada::where('vehiculo_id', $vehiculo)
                                                            ->orderByDesc('fechahora')->get());
        return HelperCDASI::data($modelo);
    }

    //obtener las todas las coordenadas de un vehiculo, pero paginado segun la cantidad
    public function index_all_paginado($vehiculo, $cant)
    { 
        $modelo = CoordenadaResource::collection(Coordenada::where('vehiculo_id', $vehiculo)
                                                            ->orderByDesc('fechahora')->paginate($cant));
        return HelperCDASI::data($modelo);
    }

    //obtener las últimas coordenadas de un vehículo
    public function index_cant($vehiculo, $cant)
    {
        $modelo = CoordenadaResource::collection(Coordenada::where('vehiculo_id', $vehiculo)
                                                            ->orderByDesc('fechahora')->take($cant)->get());
        return HelperCDASI::data($modelo);
    }

    public function index_dia($vehiculo, $dia)
    { 
        $modelo = CoordenadaResource::collection(Coordenada::where('vehiculo_id', $vehiculo)
                                                            ->whereBetween('fechahora', [$dia.' 00:00:00', $dia.' 23:59:59'])
                                                            ->orderByDesc('fechahora')->get());
        return HelperCDASI::data($modelo);
    }

    public function index_rango($vehiculo, $ini, $fin)
    { 
        $modelo = CoordenadaResource::collection(Coordenada::where('vehiculo_id', $vehiculo)
                                                            ->whereBetween('fechahora', [$ini, $fin])
                                                            ->orderByDesc('fechahora')->get());
        return HelperCDASI::data($modelo);
    }

    //insertar una nueva posición de un vehículo en una misión (trayectoria)
    public function store(CoordenadaRequest $request)
    {
        $modelo = new Coordenada;
        $modelo->fechahora = $request->fechora;
        $modelo->latitud = $request->lat;
        $modelo->longitud = $request->long;
        $modelo->estado = $request->est;
        $modelo->observacion = $request->obs;
        $modelo->vehiculo_id = $request->id_vehiculo;
        $modelo->save();
        $modelo = new CoordenadaResource($modelo);

        return HelperCDASI::data($modelo, true, 201);
    }

    //insertar varias posisiciones de un vehículo en una misión (trayectoria) cargadas de un fichero
    public function storeFile(CoordenadaRequest $request)
    {
        $fichero = fopen('..\resources\habana.gpx', 'r');
        $linea = fgets($fichero);//ignorar la primera línea

        while (!feof($fichero)) {
            $linea = fgets($fichero);
            $lineaFragmentada = explode('|', $linea, 3);
            $modelo = new Coordenada;
            $modelo->fechahora = $lineaFragmentada[2];
            $modelo->latitud = $lineaFragmentada[0];
            $modelo->longitud = $lineaFragmentada[1];
            $modelo->estado = true;
            $modelo->observacion = 'leído de fichero';
            $modelo->vehiculo_id = $request->id_vehiculo;
            $modelo->save();
        }
        fclose($fichero);
        return 'Fichero leído correctamente.';
    }

    //eliminar la trayectoria de un vehículo (es decir, por la misión)
    public function destroy_vehiculo($vehiculo)
    {
        Coordenada::where('vehiculo_id', $vehiculo)->delete();
        return 'coordenadas de vehiculo borradas';
        return HelperCDASI::data(null, false);
    }

    //eliminar una coordenada específica de un vehículo
    public function destroy_coordenada(Coordenada $coordenada)
    {
        $modelo = new CoordenadaResource($coordenada);
        $coordenada->delete();
        return HelperCDASI::data($modelo);
    }

    //obtener una coordenada específica por id de coordenada (no por vehiculo)
    public function show(Coordenada $coordenada)
    {
        $modelo = new CoordenadaResource($coordenada);
        return HelperCDASI::data($modelo);
    }
}