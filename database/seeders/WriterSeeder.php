<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            DB::table('writers')->insert([
                'nama' => $faker->name,
                'posisi' => $faker->jobTitle,
                'gambar' => $faker->imageUrl(640, 480, 'people', true, 'Faker'),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
