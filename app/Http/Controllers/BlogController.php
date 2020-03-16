<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Wink\WinkPost;

class BlogController extends Controller
{
    public function index()
    {
        $posts = WinkPost::with('tags')
            ->live()
            ->orderBy('publish_date', 'DESC')
            ->simplePaginate(5);

        $latestNews = WinkPost::with('tags')
            ->whereHas('tags', function ($query) {
                $query->where('name', '=', 'news');
            })
            ->orderBy('publish_date', 'DESC')
            ->take(3)->get();

        $latestPublications = WinkPost::with('tags')
            ->whereHas('tags', function ($query) {
                $query->where('name', '=', 'publication');
            })
            ->orderBy('publish_date', 'DESC')
            ->take(3)->get();

        return view('news.index', [
            'posts' => $posts,
            'news' => $latestNews,
            'publication' => $latestPublications
        ]);
    }

    public function postsByTag($tag) {
        $posts = WinkPost::with('tags')
            ->live()
            ->whereHas('tags', function ($query) use ($tag) {
                $query->where('slug', '=', $tag);
            })
            ->orderBy('publish_date', 'DESC')
            ->simplePaginate(5);
        
        $title = str_replace('-', ' ', $tag);

        if(sizeof($posts->all()) < 1) {
            abort(404);
        }

        return view('news.search', [
            'posts' => $posts,
            'title' => $title
        ]);
    }

    public function post($slug) {
        $post = WinkPost::with(['tags', 'author'])
            ->live()
            ->where('slug', $slug)
            ->first();

        if(!$post) {
            abort(404);
        }

        return view('news.post', [
            'post' => $post
        ]);
    }

}
