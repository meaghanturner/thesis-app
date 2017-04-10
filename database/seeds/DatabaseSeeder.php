<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        Model::unguard();

        DB::table('users')->delete();

        $users = array(
                ['name' => 'Meaghan Turner', 'email' => 'mturner@example.com', 'password' => Hash::make('secret')],
                ['name' => 'Chris Stell', 'email' => 'csteel@example.com', 'password' => Hash::make('secret')],
                ['name' => 'Holly Mann', 'email' => 'holly@example.com', 'password' => Hash::make('secret')],
                ['name' => 'Adin Kool', 'email' => 'adnan@example.com', 'password' => Hash::make('secret')],
        );


    foreach ($users as $user)
    {
    User::create($user);
    }

Model::reguard();
    }
}
