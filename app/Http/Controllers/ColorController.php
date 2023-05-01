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
        $color = new Color();
        $color->nombre = $request->nomb;
        $color->observacion = $request->obs;
        $color->save();
        $modelo = new ColorResource($color);

        return HelperCDASI::data($modelo, true, 201);
    }

    public function show(Color $color)
    {
        $modelo = new ColorResource($color);
        return HelperCDASI::data($modelo);
    }

    public function update(ColorRequest $request, Color $color)
    {
        $color->nombre = $request->nomb;
        $color->observacion = $request->obs;
        $color->update();
        $modelo = new ColorResource($color);

        return HelperCDASI::data($modelo, true, 200);
    }

    public function destroy(Color $color)
    {
        $modelo = new ColorResource($color);
        $color->delete();
        return HelperCDASI::data($modelo);
    }
}