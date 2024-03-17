<?php

namespace App\Http\Controllers;

use App\Models\Post;

// ต้องเปลี่ยนเป็น namespace ของ Model ของคุณ

class MoviePageController extends Controller
{
    public function movie()
    {
        $posts = Post::all(); // ดึงข้อมูลทั้งหมดจากตาราง posts

        return view('movie', ['posts' => $posts]); // ส่งข้อมูลไปยัง Blade view
    }
}
