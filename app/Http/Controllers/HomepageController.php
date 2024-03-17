<?php

namespace App\Http\Controllers;

use App\Models\Post;

class HomepageController extends Controller
{
    public function home()
    {
        $posts = Post::all(); // ดึงข้อมูลทั้งหมดจากตาราง posts

        return view('home', ['posts' => $posts]); // ส่งข้อมูลไปยัง Blade view
    }
}
