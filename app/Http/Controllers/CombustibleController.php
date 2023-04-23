<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Controllers\Controller;
use App\Http\Requests\CombustibleRequest;
use App\Http\Resources\CombustibleResource;
use App\Models\Combustible;

class CombustibleController extends Controller
{
    public function index()
    {
        $modelo = CombustibleResource::collection(Combustible::all());
        return HelperCDASI::data($modelo);
    }

    public function store(CombustibleRequest $request)
    {
        $combustible = new Combustible();
        $combustible->nombre = $request->nomb;
        $combustible->descripcion = $request->descrip;
        $combustible->save();
        $modelo = new CombustibleResource($combustible);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Combustible $combustible)
    {
        $modelo = new CombustibleResource($combustible);
        return HelperCDASI::data($modelo);
    }

    public function update(CombustibleRequest $request, Combustible $combustible)
    {
        $combustible->nombre = $request->nomb;
        $combustible->descripcion = $request->descrip;
        $combustible->update();
        $modelo = new CombustibleResource($combustible);

        return HelperCDASI::data($modelo, true, 200);
    }

    public function destroy(Combustible $combustible)
    {
        $modelo = new CombustibleResource($combustible);
        $combustible->delete();
        return HelperCDASI::data($modelo);
    }
}