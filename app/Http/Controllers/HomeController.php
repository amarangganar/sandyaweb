<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Wink\WinkPost;

class HomeController extends Controller
{
    public function index() {
        $posts = WinkPost::with('tags')
            ->live()
            ->orderBy('publish_date', 'DESC')
            ->take(3)
            ->get();

        return view('home', [
            'posts' => $posts
        ]);
    }
}
