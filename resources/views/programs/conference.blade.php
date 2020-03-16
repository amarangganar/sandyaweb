@extends('layouts.app')

@section('title', 'International Conference for the Protection of Minority Rights')

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
        Minority communities are prone to discrimination and human rights violations. Most of times, they are not receiving just and humane treatment because of their beliefs, ethnicity or race. Given the aforementioned facts, it is necessary for us to hold an international conference regarding the protection of minority communities. The conference aimed to optimize the role of youth in advocating the rights of minority groups. The conference will be held with invited Experts in the field of human rights, International Organizations, Representatives of Minority Communities and Ambassadors.
      </p>
    </div>
  </div>
</div>
@endsection