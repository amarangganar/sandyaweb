@extends('layouts.app')

@section('title', 'School of Peace and Human Rights')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-32">
    <h1 class="text-3xl text-gray-800 font-bold text-center md:text-4xl">
      @yield('title')
    </h1>
  </div>
  <div class="border-t border-gray-200 py-24">
    <div class="max-w-5xl mx-auto px-6 pb-16">
      <p class="text-gray-700 leading-6">
        Through a series of workshops and training aimed to promote and educate Indonesian on the importance of the values of peace and human rights, we hope to spread awareness on peace and humanity. We have educated and trained thousands of youth, human rights activists, young lawyers, public opinion leaders, and minority groups on the importance and advocacy of human rights values through seminars, workshops, trainings and focus group discussions.
      </p>
    </div>
  </div>
</div>
@endsection