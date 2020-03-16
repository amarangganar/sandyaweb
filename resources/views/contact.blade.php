@extends('layouts.app')

@section('title', 'Contact')

@section('content')
<div class="bg-white">
  <div class="max-w-5xl mx-auto px-6 py-10">
    <h1 class="text-3xl text-gray-800 font-bold md:text-4xl">
      @yield('title')
    </h1>
  </div>
  <div class="pb-24">
    <div class="max-w-5xl mx-auto px-6">
      <div class="-mx-5 flex flex-wrap items-start justify-between pb-16">
        <div class="w-full sm:w-1/2 px-5 mb-4">
          <p class="text-gray-700 leading-6">
            If you have questions regarding Sandya Institute, you can submit them by filling the form below:

            <form class="mt-4" id="contact-form">
              <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
                  Name<span class="text-red-600 text-xs">*</span>
                </label>
                <input
                  class="h-10 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  id="name" name="name" type="text" placeholder="e.g. John Doe" required>
              </div>
              <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="email">
                  Email<span class="text-red-600 text-xs">*</span>
                </label>
                <input
                  class="h-10 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  id="email" name="email" type="text" placeholder="e.g. johndoe@mail.com" required>
              </div>
              <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="subject">
                  Subject
                </label>
                <input
                  class="h-10 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  id="subject" name="subject" type="text" placeholder="e.g. How to Contribute at Sandya Institute">
              </div>
              <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="message">
                  Message<span class="text-red-600 text-xs">*</span>
                </label>
                <textarea
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 h-32 leading-tight focus:outline-none focus:shadow-outline"
                  id="message" name="message" required></textarea>
              </div>
              <button
                class="bg-gold hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                type="submit">
                Send
              </button>
            </form>
          </p>
        </div>
        <div class="w-full sm:w-1/2 lg:w-1/3 lg:pr-0 px-5 mb-4">
          <div class="rounded-md overflow-hidden bg-gray-300 px-6 py-5">
            <h3 class="text-xs uppercase text-gray-900 font-semibold tracking-wide">Address</h3>
            <div class="mt-3">
              <p class="text-gray-800 font-semibold mb-1">Sandya Institute</p>
              <p class="text-gray-700">
                Rajawali Center, Jl. Rajawali Blok B 1 No.5
                Pasar Minggu, Jakarta Selatan 12520
                Indonesia
              </p>
            </div>
          </div>
          <div class="mt-5 rounded-md overflow-hidden bg-gray-300 px-6 py-5">
            <h3 class="text-xs uppercase text-gray-900 font-semibold tracking-wide">Phone</h3>
            <div class="mt-3">
              <p class="text-gray-700 mb-1">
                +6221 22780346
              </p>
              <p class="text-gray-700">
                +62821 12721490
              </p>
            </div>
          </div>
          <div class="mt-5 rounded-md overflow-hidden bg-gray-300 px-6 py-5">
            <h3 class="text-xs uppercase text-gray-900 font-semibold tracking-wide">Fax</h3>
            <div class="mt-3">
              <p class="text-gray-700 mb-1">
                +6221 22780346
              </p>
            </div>
          </div>
          <div class="mt-5 rounded-md overflow-hidden bg-gray-300 px-6 py-5">
            <h3 class="text-xs uppercase text-gray-900 font-semibold tracking-wide">Email</h3>
            <div class="mt-3">
              <a href="mailto:pr@sandya-institute.org" class="text-gray-700"
                style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">pr@sandya-institute.org</a>
            </div>
          </div>
          <div class="mt-5 rounded-md overflow-hidden bg-gray-300 px-6 py-5">
            <h3 class="text-xs uppercase text-gray-900 font-semibold tracking-wide">Website</h3>
            <div class="mt-3">
              <a href="mailto:pr@sandya-institute.org" class="text-gray-700"
                style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">www.sandya-institute.org</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection

@push('scripts')
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript">
  const regex = /^\w+([-+.'][^\s]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
 let request;

  $("#contact-form").submit(function (event) {
    event.preventDefault();

    if(!$("#name").val() || !$("#email").val() || !$("#message").val()) {
      return;
    } else {
      if(regex.test($("#email").val())) {
        /* 
        *
        * source: StackOverflow
        * 
        * @Author: Markus Ekwall
        * 
        * https://stackoverflow.com/questions/5004233/jquery-ajax-post-example-with-php/5004276#5004276
        * 
        * 
        */
    
        // Abort any pending request
        if (request) {
          request.abort();
        }

        // setup some local variables
        const $form = $(this);

			  // Let's select and cache all the fields
			  const $inputs = $form.find("input, select, button, textarea");

        // Serialize the data in the form
        const serializedData = $form.serialize();

        // Let's disable the inputs for the duration of the Ajax request.
        // Note: we disable elements AFTER the form data has been serialized.
        // Disabled form elements will not be serialized.
        $inputs.prop("disabled", true);

        // Fire off the request to /form.php
        request = $.ajax({
          url: "https://script.google.com/macros/s/AKfycbyqx7fhxxnEsXrlKLnwaIOmCkLNtZVlxQ05RFmxMolErm1zx9Px/exec",
          type: "post",
          data: serializedData
        });

        // Callback handler that will be called on success
        request.done(function (response, textStatus, jqXHR) {

          // Log a message to the console
          alert("Message sent");
          location.reload();

        });

        // Callback handler that will be called on failure
        request.fail(function (jqXHR, textStatus, errorThrown) {

          // Log the error to the console
          console.error(
            "The following error occurred: " +
            textStatus, errorThrown
          );
          alert("Try again");
          location.reload();

        });

        // Callback handler that will be called regardless
        // if the request failed or succeeded
        request.always(function () {

          // Reenable the inputs
          $inputs.prop("disabled", false);

        });

      } else {
        alert('Not a valid email address');
      }
    }
  });
</script>
@endpush