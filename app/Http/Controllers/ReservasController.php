<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reserva;

class ReservasController extends Controller
{
    //
    public function cancelaReserva($reserva_id){
        //recogemos la reserva que nos viene por put en el frontend y la ponemos en true, pero sin 
        //insertar nada en los partidos, ya que la hemos cancelado
        $reserva= Reserva::find($reserva_id); 
        $reserva->reserva_finalizada=true; 
        $reserva->save(); 
        
        return response()->json([
            "mensaje"=> "Reserva cancelada correctamente", 
            "reserva"=> $reserva
        ]);
    }
}
