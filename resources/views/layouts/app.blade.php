<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <title>{{ env('APP_NAME') }} | @yield('title')</title>

  <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('img/favicon/apple-touch-icon.png') }}">
  <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('img/favicon/favicon-32x32.png') }}">
  <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('img/favicon/favicon-16x16.png') }}">
  <link rel="manifest" href="{{ asset('img/favicon/site.webmanifest') }}">

  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <link rel="stylesheet" href="{{ asset(mix('css/app.css')) }}">
  @stack('stylesheets')
</head>

<body>
  <div class="min-h-screen flex flex-col justify-between">
    @include('layouts.header') 
    <main class="flex-1">
      @yield('content')
    </main>
    @include('layouts.footer')
  </div>

  <script src="{{ asset(mix('js/app.js')) }}"></script>
  @stack('scripts')
</body>

</html>