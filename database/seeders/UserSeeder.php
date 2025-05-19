<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Laravolt\Avatar\Facade as Avatar;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $adminAvatar = $this->createAvatar('Admin');
        
        $admin = User::create([
            'avatar' => $adminAvatar,
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('1234567890'),
        ])->assignRole('admin');
    }

    protected function createAvatar($name)
    {
        $avatarImage = Avatar::create(strtoupper($name[0]))
            ->setBackground(sprintf('#%06X', mt_rand(0, 0xFFFFFF))) // Random background color
            ->setDimension(100, 100) // Avatar size
            ->getImageObject(); // Generates the image as a GD object

        $avatarName = Str::random(10) . '.png';
        $avatarPath = 'avatars/' . $avatarName;

        Storage::disk('public')->put($avatarPath, $avatarImage->encode('png'));

        return basename($avatarPath);
    }
}
