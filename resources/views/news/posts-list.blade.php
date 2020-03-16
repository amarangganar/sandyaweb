@foreach ($posts as $post)
<div class="border-b border-gray-200 md:flex md:items-start -mx-2 py-6">
  {{-- <div class="w-full md:w-56 h-32 flex-shrink-0 px-2 mb-3 md:mb-0">
            <img src="{{ $post->featured_image ? url(''.$post->featured_image.'') : url('img/img-placeholder.png') }}"
  alt="" class="object-cover object-center h-full w-full rounded-md">
</div> --}}

  <div class="px-2">
    <div class="mb-3 flex flex-wrap items-center -mx-1">
      @foreach ($post->tags as $tag)
      <div class="px-1">
        <a href="{!! route('news.tag', ['tag' => $tag->slug]) !!}"
          class="py-1 px-2 border border-gray-900 text-gray-900 hover:bg-gray-900 hover:text-white uppercase rounded-md" style="font-size: 11px;">
          {{ $tag->name }}
        </a>
      </div>
      @endforeach
    </div>
    <a href="{!! route('news.post', ['slug' => $post->slug]) !!}" class="text-xl font-semibold my-3 text-gray-900 hover:underline">
      {{ $post->title }}
    </a>
    <p class="mb-3 text-gray-700">
      {{ StringHelper::truncate(preg_replace('/([a-z])([A-Z])/s','$1 $2', preg_replace('/(&.+;)/i', ' ', preg_replace('/(<([^>]+)>)/i', '', $post->body))), 200) }}
    </p>
    <p class="text-gray-600">
      {{ date('l, j F Y', strtotime($post->publish_date)) }}
    </p>
  </div>
</div>
@endforeach
<div class="flex justify-between mt-6">
  <a href="{{ url(''.$posts->previousPageUrl().'') }}"
    class="uppercase text-gray-600 hover:text-gray-500 @if(($posts->hasMorePages() || !$posts->hasMorePages()) && $posts->currentPage() === 1) invisible @endif">Read
  Newer Posts</a>
  <a href="{{ url(''.$posts->nextPageUrl().'') }}"
    class="uppercase text-gray-600 hover:text-gray-500 @if(!$posts->hasMorePages()) invisible @endif">Read Older
    Posts</a>
</div>