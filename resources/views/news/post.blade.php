@extends('layouts.app')

@section('title', 'News & Publication')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-10">
    <div class="flex flex-wrap items-center">
      <a href="{{ route('news') }}" class="text-gray-700 text-sm hover:text-gray-600">@yield('title')</a>
      <svg class="text-gray-700 h-5 w-5 mx-1" viewBox="0 0 20 20" fill="currentColor">
        <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"/>
      </svg>
      <span class="text-gray-700 text-sm">{{ $post->title }}</span>
    </div>
    <div class="py-14 border-b border-gray-200">
      <h1 class="text-2xl text-gray-800 font-bold md:text-3xl text-center">
        {{ $post->title }}
      </h1>
      <div class="py-4 flex items-center justify-center -mx-2">
          <span class="flex flex-wrap items-center px-2 text-gray-600 text-xs uppercase">
            Posted By <span class="font-medium text-xs mx-1">{{ $post->author->name }}</span> On <span class="font-medium text-xs mx-1">{{ date('l, j F Y', strtotime($post->publish_date)) }}</span>
          </span>
      </div>
    </div>
  </div>

  <div class="max-w-4xl mx-auto px-6">
    <div class="-mx-8 flex flex-wrap items-start pb-16">
      <div class="w-full px-8 mb-4">
        <div class="mt-6 text-center blog-post">
          {!! $post->body !!}
        </div>
      </div>
    </div>
    <div class="mb-20 pt-12 border-t border-gray-300">
      <div id="disqus_thread"></div>
    </div>
  </div>
</div>
@endsection

@push('scripts')
<script type="text/javascript">
var disqus_config = function () {
  this.page.url = '{!! route('news.post', ['slug' => $post->slug]) !!}';  // Replace PAGE_URL with your page's canonical URL variable
  this.page.identifier = '{{ $post->id }}'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};

(function() { // DON'T EDIT BELOW THIS LINE
  var d = document, s = d.createElement('script');
  s.src = 'https://sandya-institute-org.disqus.com/embed.js';
  s.setAttribute('data-timestamp', +new Date());
  (d.head || d.body).appendChild(s);
})();
</script>
  
    
@endpush