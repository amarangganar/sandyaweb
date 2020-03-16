@extends('layouts.app')

@section('title', 'About Us')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-32">
    <h1 class="text-3xl text-gray-800 font-bold text-center md:text-4xl">
      @yield('title')
    </h1>
  </div>
  <div class="border-t border-gray-200 py-24">
    <div class="max-w-5xl mx-auto px-6">
      <p class="text-gray-700 leading-6">
        Sandya Institute is a registered non-profit organization in the Indonesian Ministry of Law and Human Rights that
        was established on 1<sup>st</sup> of October, 2014. Adhering to the value of humanity, Sandya Institute works on
        peacebuilding, counter violent extremism and human rights advocacy along with Its various partners from United
        Nations Agencies, Government Institutions, Non-Government Organizations and Civil Society.
      </p>

      <div class="py-16">
        <div>
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Vision</h3>
          <p class="text-gray-700 leading-6">
            Achieving a more humane society that lives harmoniously in peace.
          </p>
        </div>
        <div class="mt-14">
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Mission</h3>
          <p class="text-gray-700 leading-6">
            Optimizing and harmonizing the efforts of peacebuilding, counter violent extremism and human rights advocacy
            through our programs in research, education, advocacy and campaign.
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection