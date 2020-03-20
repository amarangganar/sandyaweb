@extends('layouts.app')

@section('title', 'Home')

@section('content')
<div class="pt-10 pb-14 md:pt-16 md:pb-24 px-8 bg-white relative">
  <div class="relative z-10">
    <h1 class="text-5xl text-gold text-center font-bold leading-tight md:text-6xl md:leading-normal">Sandya Institute
    </h1>
    <p class="text-xl text-gray-800 text-center font-light leading-loose md:text-2xl">Center for Peace and Human Rights
    </p>
    <div class="mt-12 flex justify-center">
      <a href="{{ route('about') }}" class="flex items-center h-14 px-8 text-lg bg-gold text-white font-semibold rounded focus:outline-none hover:bg-yellow-600">Learn More</a>
    </div>
  </div>
</div>

<div class="bg-white">
  <div class="border-t-2 border-gray-200 max-w-5xl mx-auto px-4 py-12 md:pt-16 md:pb-24">
    <h1 class="text-3xl text-gray-800 font-bold">Latest News &amp; Publication</h1>
  
    <div class="mt-10 -mx-4 flex flex-wrap items-center">
      @if(count($posts) > 0)
        @foreach ($posts as $latest)
        <a href="{!! route('news.post', ['slug' => $latest->slug]) !!}" class="w-full sm:w-1/2 lg:w-1/3 px-4 mb-4">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-2/3">
              <img src="{{ $latest->featured_image ? url(''.$latest->featured_image.'') : url('img/img-placeholder.png') }}"
    alt="" class="absolute object-cover object-center h-full w-full opacity-75">
            </div>
            <div class="bg-gray-200 px-4 py-5">
              <h3 class="text-lg font-semibold text-gray-800 truncate">{{ $latest->title }}</h3>
              <p class="text-xs text-gray-500">{{ date('l, j F Y', strtotime($latest->publish_date)) }}</p>
            </div>
          </div>
        </a>
        @endforeach
      @else
      <p class="text-gray-700 text-center w-full px-4 py-12">No latest news or publication</p>
      @endif
    </div>
  </div>
</div>
@endsection