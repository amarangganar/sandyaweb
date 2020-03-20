@extends('layouts.app')

@section('title', 'News & Publication')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-10">
    <h1 class="text-3xl text-gray-800 font-bold md:text-4xl">
      @yield('title')
    </h1>
  </div>

  <div class="max-w-5xl mx-auto px-6">
    <div class="-mx-8 flex flex-wrap items-start pb-16">
      <div class="w-full md:w-2/3 px-8 mb-4">
      @if(count($posts) > 0)
        @include('news.posts-list')
      @else
        <p class="text-gray-700 text-center">No news or publication</p>
       @endif
      </div>
      <div class="w-full md:w-1/3 lg:pr-0 px-8 mb-4">
        <div class="rounded-md overflow-hidden bg-gray-200 px-6 pt-5 pb-2">
          <h3 class="text-xs uppercase text-gray-900 font-bold tracking-wide">Latest News</h3>
        @if(count($news) > 0)
          @foreach ($news as $latest)
          <div class="py-5 border-b border-gray-500 last:border-b-0">
            <p class="text-gray-600 mb-1 text-xs">{{ date('l, j F Y', strtotime($latest->publish_date)) }}</p>
            <a href="{!! route('news.post', ['slug' => $latest->slug]) !!}" class="text-gray-900 hover:text-gray-700">
              {{ $latest->title }}
            </a>
          </div>
          @endforeach
        @else
          <p class="text-gray-700 text-center py-10">No latest news</p>
        @endif
        </div>
        <div class="mt-5 rounded-md overflow-hidden bg-gray-200 px-6 pt-5 pb-2">
          <h3 class="text-xs uppercase text-gray-900 font-bold tracking-wide">Latest Publication</h3>
        @if(count($publication) > 0)
          @foreach ($publication as $latest)
          <div class="py-5 border-b border-gray-500 last:border-b-0">
            <p class="text-gray-600 mb-1 text-xs">{{ date('l, j F Y', strtotime($latest->publish_date)) }}</p>
            <a href="{!! route('news.post', ['slug' => $latest->slug]) !!}" class="text-gray-900 hover:text-gray-700">
              {{ $latest->title }}
            </a>
          </div>
          @endforeach
        @else
          <p class="text-gray-700 text-center py-10">No latest publication</p>
        @endif
        </div>
      </div>
    </div>
  </div>
</div>
@endsection