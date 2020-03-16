@extends('layouts.app')

@section('title', 'The Advocacy for Marginalized Communities & Refugees')

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
        Minority communities are prone to discrimination and human rights violations. Most of times, they do not receive just treatment because of their beliefs, ethnicity, or race. This makes them vulnerable to discrimination, which is why their rights must be protected. Aside from that, it is undeniable that refugees and asylum seekers are victim of wars, conflicts or persecution, and it is also inescapable that they are prone to violence and discrimination, especially with current status quo, where Indonesian Government has not ratified The 1951 Refugee Convention. Hence we are advocating the rights of the minorities and refugees in Indonesia and consistently encourage Indonesia to ratify the Convention.
      </p>
    </div>
  </div>
</div>
@endsection