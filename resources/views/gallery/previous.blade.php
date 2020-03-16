@extends('layouts.app')

@section('title', 'Previous Sandya Events')

@push('stylesheets')
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
@endpush

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-10">
    <div class="flex items-center mb-1">
      <a href="{{ route('gallery') }}" class="text-gray-700 text-sm hover:text-gray-600">Gallery</a>
      <svg class="text-gray-700 h-5 w-5 mx-1" viewBox="0 0 20 20" fill="currentColor">
        <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"/>
      </svg>
      <span class="text-gray-700 text-sm">@yield('title')</span>
    </div>
    <h1 class="text-2xl text-gray-800 font-bold md:text-3xl">
      @yield('title')
    </h1>
  </div>
  <div class="pb-24">
    <div class="max-w-5xl mx-auto px-6">
      <div class="grid">
        <div class="grid-sizer"></div>
        @for ($i = 1; $i <= 17; $i++)
        <div class="grid-item">
          <a data-fancybox="gallery" href="{{ asset('img/gallery/previous/'.$i.'-min.jpg') }}">
            <img src="{{ asset('img/gallery/previous/'.$i.'-min.jpg') }}" />
          </a>
        </div>
        @endfor
      </div>
    </div>
  </div>
</div>
@endsection

@push('scripts')
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.js"></script>
<script type="text/javascript">
// external js: masonry.pkgd.js, imagesloaded.pkgd.js

// init Masonry
const grid = document.querySelector('.grid');

const msnry = new Masonry( grid, {
  itemSelector: '.grid-item',
  columnWidth: '.grid-sizer',
  percentPosition: true
});

imagesLoaded(grid).on( 'progress', function() {
  // layout Masonry after each image loads
  msnry.layout();
});
</script>
@endpush