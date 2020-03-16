@extends('layouts.app')

@section('title', 'Books')

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
        Discrimination and persecution of minorities persistently occurs in Indonesia. Inequality and injustice need to
        be stopped. We believe through research, we could provide better understanding of the value of peace and
        humanity. We are working with human rights activists and experts to create books to protect the rights of
        religious, race, ethnicities, gender minorities, asylum seekers as well as refugees in Indonesia. The title of
        the book is “Know Your Rights!”. The book is used as a guideline for minorities and the general public on what
        rights are violated, the laws, and what can be done to prevent future violation.
      </p>

      <div class="py-16">
        <div>
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Publication</h3>
          <ul>
            <li>
              <a href="#" class="text-gray-700"
                style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">Know Your
                Rights!</a>
              </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection