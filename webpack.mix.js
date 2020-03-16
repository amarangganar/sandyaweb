const mix = require('laravel-mix');
require('laravel-mix-purgecss');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.copyDirectory('resources/assets/img', 'public/img');

mix.js('resources/assets/js/app.js', 'public/js');

mix
  .postCss('resources/assets/css/app.css', 'public/css', [
    require('tailwindcss')('resources/assets/css/tailwind.config.js')
  ])
  .purgeCss();

if (mix.inProduction()) {
  mix.version();
}
