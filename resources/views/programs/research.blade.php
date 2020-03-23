@extends('layouts.app')

@section('title', 'Research')

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
        Discrimination and persecution of minorities persistently occurs in Indonesia. Inequality and injustice need to be stopped. We believe through research, we could provide better understanding of the value of peace and humanity.
      </p>

      <div class="py-16">
        <div>
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Publication</h3>
          <ul>
            <li>
              <a href="https://drive.google.com/file/d/1Nn3g3dsJU4L5VlF7iY8k9OWSFLoqGxxS/view?usp=sharing" target="_blank" class="text-gray-700"
                style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">[English] Unlocking the Economic Potentials of Indonesia’s Refugee Community: A Survey on Labour Characteristics</a>
              </li>
            <li class="mt-3">
              <a href="https://drive.google.com/file/d/1LlmhpM3Vum10WIRkFFQ3FKBnKquyaktU/view?usp=sharing" target="_blank" class="text-gray-700"
                style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">[Bahasa Indonesia] Menjelaskan Potensi Ekonomi Komunitas Pengungsi Indonesia: Survei Mengenai Karakteristik Ketenagakerjaan dan Penghidupan</a>
              </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection