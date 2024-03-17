<?php

namespace App\Http\Controllers;

use App\Models\Post;

// ต้องเปลี่ยนเป็น namespace ของ Model ของคุณ

class SeriesPageController extends Controller
{
    public function series()
    {
        $posts = Post::all(); // ดึงข้อมูลทั้งหมดจากตาราง posts

        return view('series', ['posts' => $posts]); // ส่งข้อมูลไปยัง Blade view
    }
}
