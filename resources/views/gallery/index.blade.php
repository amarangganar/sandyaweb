@extends('layouts.app')

@section('title', 'Gallery')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-10">
    <h1 class="text-3xl text-gray-800 font-bold md:text-4xl">
      @yield('title')
    </h1>
  </div>
  <div class="pb-24">
    <div class="max-w-5xl mx-auto px-6">
      <div class="-mx-5 flex flex-wrap items-start pb-16">
        <a href="{{ route('gallery.kyr') }}" class="w-full sm:w-1/2 lg:w-1/3 px-5 mb-4 lg:mb-6">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-2/3">
              <img class="absolute h-full w-full object-cover object-center opacity-75" src="{{ asset('img/gallery/kyr/6-min.jpg') }}">
            </div>
            <div class="bg-gray-200 px-3 py-5">
              <h3 class="text-lg text-center font-semibold text-gray-800">Know Your Rights Launch</h3>
            </div>
          </div>
        </a>
        <a href="{{ route('gallery.unhcr') }}" class="w-full sm:w-1/2 lg:w-1/3 px-5 mb-4 lg:mb-6">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-2/3">
              <img class="absolute h-full w-full object-cover object-center opacity-75" src="{{ asset('img/gallery/unhcr/12-min.jpg') }}">
            </div>
            <div class="bg-gray-200 px-3 py-5">
              <h3 class="text-lg text-center font-semibold text-gray-800 truncate">Capacity Programme with UNHCR</h3>
            </div>
          </div>
        </a>
        <a href="{{ route('gallery.mun') }}" class="w-full sm:w-1/2 lg:w-1/3 px-5 mb-4 lg:mb-6">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-2/3">
              <img class="absolute h-full w-full object-cover object-center opacity-75" src="{{ asset('img/gallery/mun/11-min.jpg') }}">
            </div>
            <div class="bg-gray-200 px-3 py-5">
              <h3 class="text-lg text-center font-semibold text-gray-800">Model UN</h3>
            </div>
          </div>
        </a>
        <a href="{{ route('gallery.previous') }}" class="w-full sm:w-1/2 lg:w-1/3 px-5 mb-4 lg:mb-6">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-2/3">
              <img class="absolute h-full w-full object-cover object-center opacity-75" src="{{ asset('img/gallery/previous/12-min.jpg') }}">
            </div>
            <div class="bg-gray-200 px-3 py-5">
              <h3 class="text-lg text-center font-semibold text-gray-800">Previous Sandya Event</h3>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
@endsection