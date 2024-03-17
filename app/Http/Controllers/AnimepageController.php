<?php

namespace App\Http\Controllers;

use App\Models\Post;

// ต้องเปลี่ยนเป็น namespace ของ Model ของคุณ

class AnimepageController extends Controller
{
    public function anime()
    {
        $posts = Post::all(); // ดึงข้อมูลทั้งหมดจากตาราง posts

        return view('anime', ['posts' => $posts]); // ส่งข้อมูลไปยัง Blade view
    }
}
