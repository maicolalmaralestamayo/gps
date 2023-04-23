<?php

namespace App\Http\Controllers;

use App\Helpers\HelperCDASI;
use App\Http\Controllers\Controller;
use App\Http\Requests\ColorRequest;
use App\Http\Resources\ColorResource;
use App\Models\Color;

class ColorController extends Controller
{
    public function index()
    {
        $modelo = ColorResource::collection(Color::all());
        return HelperCDASI::data($modelo);
    }

    public function store(ColorRequest $request)
    {
        $modelo = new Color();
        $modelo->nombre = $request->nomb;
        $modelo->descripcion = $request->descrip;
        $modelo->save();
        $modelo = new ColorResource($modelo);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Color $marca)
    {
        $modelo = new ColorResource($marca);
        return HelperCDASI::data($modelo);
    }

    public function update(ColorRequest $request, Color $model)
    {
        $model->nombre = $request->nomb;
        $model->descripcion = $request->descrip;
        $model->marca_id = $request->id_marca;
        $model->update();
        $modelo = new ColorResource($model);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function destroy(Color $model)
    {
        $modelo = new ColorResource($model);
        $model->delete();
        return HelperCDASI::data($modelo);
    }
}