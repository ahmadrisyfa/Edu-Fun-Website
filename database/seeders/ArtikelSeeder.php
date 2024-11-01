<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class ArtikelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            DB::table('artikel')->insert([
                'judul' => $faker->sentence,
                'tanggal' => $faker->date,
                'gambar' => $faker->imageUrl(640, 480, 'abstract', true, 'Faker'),
                'deskripsi' => $faker->paragraph,
                'writers_id' => $faker->numberBetween(1, 10), // Sesuaikan dengan jumlah data di tabel writers
                'category' => $faker->randomElement(['Data Science', 'Software Engineering']),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
