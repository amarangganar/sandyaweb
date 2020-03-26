@extends('layouts.app')

@section('title', 'Board Members')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-32">
    <h1 class="text-3xl text-gray-800 font-bold text-center md:text-4xl">
      @yield('title')
    </h1>
  </div>
  <div class="border-t border-gray-200 py-24">
    <div class="max-w-5xl mx-auto px-6">
      <div class="-mx-4 flex flex-wrap items-center pb-16">
        <div class="w-full sm:w-1/2 lg:w-1/3 px-4 mb-4">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-11/12">
              <img class="absolute h-full w-full object-cover object-center" src="{{ asset('img/boards/board-1.jpeg') }}">
            </div>
            <div class="bg-white px-4 py-5">
              <h3 class="text-lg font-semibold text-gray-800 text-center">Dominique Virgil</h3>
              <p class="text-sm text-gray-600 text-center">Executive Director</p>
            </div>
          </div>
        </div>
        <div class="w-full sm:w-1/2 lg:w-1/3 px-4 mb-4">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-11/12">
            <img class="absolute h-full w-full object-cover object-top" src="{{ asset('img/boards/board-2.png') }}">
            </div>
            <div class="bg-white px-4 py-5">
              <h3 class="text-lg font-semibold text-gray-800 text-center">Roberto</h3>
              <p class="text-sm text-gray-600 text-center">Vice Executive Director</p>
            </div>
          </div>
        </div>
        <div class="w-full sm:w-1/2 lg:w-1/3 px-4 mb-4">
          <div class="shadow-md rounded-md overflow-hidden">
            <div class="relative bg-gold pb-11/12">
              <img class="absolute h-full w-full object-cover object-bottom" src="{{ asset('img/boards/board-3.jpg') }}">
            </div>
            <div class="bg-white px-4 py-5">
              <h3 class="text-lg font-semibold text-gray-800 text-center">Matthew LoCastro</h3>
              <p class="text-sm text-gray-600 text-center">Advisor</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection