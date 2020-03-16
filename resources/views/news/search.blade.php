@extends('layouts.app')

@section('title', 'News & Publication')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-10">
    <div class="flex items-center mb-1">
      <a href="{{ route('news') }}" class="text-gray-700 text-sm hover:text-gray-600">@yield('title')</a>
      <svg class="text-gray-700 h-5 w-5 mx-1" viewBox="0 0 20 20" fill="currentColor">
        <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"/>
      </svg>
      <span class="text-gray-700 text-sm capitalize">{{ $title }}</span>
    </div>
    <h1 class="text-2xl text-gray-800 font-bold md:text-3xl">
      Category for "<span class="text-2xl capitalize md:text-3xl">{{ $title }}</span>"</span>
    </h1>
  </div>

  <div class="max-w-5xl mx-auto px-6">
    <div class="-mx-8 flex flex-wrap items-start pb-16">
      <div class="w-full px-8 mb-4">
        @include('news.posts-list')
      </div>
    </div>
  </div>
</div>
@endsection