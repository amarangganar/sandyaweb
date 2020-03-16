<nav x-data="{ open: false }" @keydown.window.escape="open = false" class="bg-white">
  <div class="max-w-5xl mx-auto px-4">
    <div class="flex items-center justify-between h-18">
      <div class="flex items-center">
        <div class="h-18 flex-shrink-0">
          <a href="{{ route('home') }}">
            <img class="h-18" src="{{ asset('img/logo.png') }}" alt="Sandya Institute" />
          </a>
        </div>
      </div>
      <div class="hidden md:block">
        <div class="flex items-center">
          <div @click.away="open = false" class="relative" x-data="{ open: false }">
            <div class="px-1 flex items-center">
              <button @click="open = !open"
                class="py-2 text-sm font-medium text-gray-600 hover:text-gray-900 focus:outline-none focus:text-gray-900 @if(Request::segment(1) === 'about') border-b-3 border-gold @endif">
                About
              </button>
              <svg class="ml-2 h-3 w-3 text-gray-600" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd" />
              </svg>
            </div>
            <div x-show="open" x-transition:enter="transition ease-out duration-100"
              x-transition:enter-start="transform opacity-0 scale-95"
              x-transition:enter-end="transform opacity-100 scale-100"
              x-transition:leave="transition ease-in duration-75"
              x-transition:leave-start="transform opacity-100 scale-100"
              x-transition:leave-end="transform opacity-0 scale-95"
              class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg z-20">
              <div class="py-1 rounded-md bg-white shadow-xs">
                <a href="{{ route('about') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'about') text-gold @endif">About
                  Us</a>
                <a href="{{ route('board') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'board') text-gold @endif">Board Members</a>
              </div>
            </div>
          </div>
          <div @click.away="open = false" class="ml-4 relative" x-data="{ open: false }">
            <div class="px-1 flex items-center">
              <button @click="open = !open"
                class="py-2 text-sm font-medium text-gray-600 hover:text-gray-900 focus:outline-none focus:text-gray-900 @if(Request::segment(1) === 'programs') border-b-3 border-gold @endif">
                Programs
              </button>
              <svg class="ml-2 h-3 w-3 text-gray-600" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd" />
              </svg>
            </div>
            <div x-show="open" x-transition:enter="transition ease-out duration-100"
              x-transition:enter-start="transform opacity-0 scale-95"
              x-transition:enter-end="transform opacity-100 scale-100"
              x-transition:leave="transition ease-in duration-75"
              x-transition:leave-start="transform opacity-100 scale-100"
              x-transition:leave-end="transform opacity-0 scale-95"
              class="origin-top-right absolute right-0 mt-2 w-64 rounded-md shadow-lg z-20">
              <div class="py-1 rounded-md bg-white shadow-xs">
                <a href="{{ route('programs.research') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.research') text-gold @endif">Research</a>
                <a href="{{ route('programs.books') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.books') text-gold @endif">Books</a>
                <a href="{{ route('programs.school') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.school') text-gold @endif">School of Peace and Human
                  Rights</a>
                <a href="{{ route('programs.sunrise') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.sunrise') text-gold @endif">Sunrise Refugee Learning
                  Center</a>
                <a href="{{ route('programs.advocacy') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.advocacy') text-gold @endif">The Advocacy for
                  Marginalized Communities &amp; Refugees</a>
                <a href="{{ route('programs.conference') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.conference') text-gold @endif">International Conference for
                  the Protection of Minority Rights</a>
                <a href="{{ route('programs.pancasila') }}" class="block px-4 py-2 text-sm text-gray-600 hover:bg-yellow-100 @if(Route::currentRouteName() === 'programs.pancasila') text-gold @endif">Pancasila Youth
                  Ambassador</a>
              </div>
            </div>
          </div>

          <div class="flex items-baseline">
            <div class="ml-4 px-1">
              <a href="{{ route('news') }}"
                class="py-2 text-sm font-medium text-gray-600 hover:text-gray-900 focus:outline-none focus:text-gray-900 @if(Request::segment(1) === 'news') border-b-3 border-gold @endif">News
                &amp; Publication</a>
            </div>
            <div class="ml-4 px-1">
              <a href="{{ route('gallery') }}"
                class="py-2 text-sm font-medium text-gray-600 hover:text-gray-900 focus:outline-none focus:text-gray-900 @if(Request::segment(1) === 'gallery') border-b-3 border-gold @endif">Gallery</a>
            </div>
            <div class="ml-4 px-1">
              <a href="{{ route('contact') }}"
                class="py-2 text-sm font-medium text-gray-600 hover:text-gray-900 focus:outline-none focus:text-gray-900 @if(Request::segment(1) === 'contact') border-b-3 border-gold @endif">Contact</a>
            </div>
          </div>
        </div>
      </div>
      <div class="-mr-2 flex md:hidden">
        <button @click="open = !open"
          class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:bg-gray-700 focus:text-white">
          <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
            <path :class="{'hidden': open, 'inline-flex': !open }" class="inline-flex" stroke-linecap="round"
              stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            <path :class="{'hidden': !open, 'inline-flex': open }" class="hidden" stroke-linecap="round"
              stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
    </div>
  </div>
  <div :class="{'block': open, 'hidden': !open}" class="hidden md:hidden">
    <div class="px-2 pt-2 pb-3 sm:px-3">
      <div
        class="block px-3 py-2 rounded-md text-base font-medium text-gray-600 focus:outline-none focus:text-gray-800">
        About
        <div class="ml-3">
          <a href="{{ route('about') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">About
            Us</a>
          <a href="{{ route('board') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Board
            Members</a>
        </div>
      </div>
      <div
        class="block px-3 py-2 rounded-md text-base font-medium text-gray-600 focus:outline-none focus:text-gray-800">
        Programs
        <div class="ml-3">
          <a href="{{ route('programs.research') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Research</a>
          <a href="{{ route('programs.books') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Books
          </a>
          <a href="{{ route('programs.school') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">School
            of Peace and Human Rights</a>
          <a href="{{ route('programs.sunrise') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Sunrise
            Refugee Learning Center</a>
          <a href="{{ route('programs.advocacy') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">The
            Advocacy for Marginalized Communities &amp; Refugees</a>
          <a href="{{ route('programs.conference') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">International
            Conference for the Protection of Minority Rights</a>
          <a href="{{ route('programs.pancasila') }}"
            class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Pancasila
            Youth Ambassador</a>
        </div>
      </div>
      <a href="{{ route('news') }}"
        class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">News
        &amp; Publication</a>
      <a href="{{ route('gallery') }}"
        class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Gallery</a>
      <a href="{{ route('contact') }}"
        class="mt-1 block px-3 py-2 text-base font-medium text-gray-600 hover:text-gray-800 focus:outline-none focus:text-gray-800">Contact</a>
    </div>
  </div>
</nav>