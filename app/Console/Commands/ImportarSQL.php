<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class ImportarSQL extends Command
{
    protected $signature = 'importar:sql';
    protected $description = 'Importar el archivo SQL desde /database/scripts';

    public function handle()
    {
        $path = database_path('scripts/ct_padel_2025.sql');

        if (!file_exists($path)) {
            $this->error("Archivo no encontrado: $path");
            return 1;
        }

        $this->info("Importando datos desde: $path");

        try {
            DB::unprepared(file_get_contents($path));
            $this->info("¡Importación completada con éxito!");
        } catch (\Exception $e) {
            $this->error("Error al importar: " . $e->getMessage());
        }

        return 0;
    }
}
