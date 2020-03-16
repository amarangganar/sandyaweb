@extends('layouts.app')

@section('title', 'Sunrise Refugee Learning Center')

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
        We listened and discussed with the refugees and asylum-seekers community in Jakarta regarding their needs of
        education. They voiced their hope of being able to develop their English skills in order to prepare them for jobs
        when they are resettled to the third country. They also stated that they are eager to learn Indonesian. We believe
        that learning Indonesian is essential for them to interact and integrate with the local community. We believe by
        giving education to refugees and asylum seekers, we’re giving a chance for the refugees to have better lives for
        them in the present and in the future. Sunrise Refugee Learning Center is a program initiated by Sandya Institute
        to empower asylum seeker and refugee who reside in Jakarta through providing education.
      </p>
      <p class="mt-3 text-gray-700 leading-6">
        Indonesia is a non-signatory of the Refugee Convention 1951, therefore Indonesia is just a ‘transit country’ for
        asylum seekers who are on their way to their preferred destination countries. When arriving in Indonesia, asylum
        seekers cannot work or get an education. They are required to have an official document such as passports.
        According to the data in UNHCR, in 2016, there are 13.829 refugees and asylum seekers in Indonesia. They come from
        Afghanistan, Myanmar, Somalia, Sri Lanka, Palestine, Pakistan, Iraq and many other countries. Among the 13.829
        refugees and asylum seekers, only few successfully resettled to the third country. This means that the rest of the
        refugees and asylum seekers who are stuck in Indonesia and live at a bare minimum, without being able to obtain
        the rights of individuals under the law due to their lack of legal status. Their lack of legal status and the lack
        of obligation from the government of Indonesia have hampered the refugees and asylum seekers in getting their
        basic rights such as the right to work and the right of education.
      </p>
      <p class="mt-3 text-gray-700 leading-6">
        In Jakarta, there are refugees and asylum seekers live in community housings or under humanitarian organization’s
        care. There are some organizations who assist and facilitate the migrants in fulfilling their rights as human
        beings by providing them with shelter, food, giving psychosocial activities, etc. The refugees and asylum seekers'
        need for education is attempted to be fulfilled by organizations that have established learning centers. However,
        the existing learning centers are still not enough to accommodate the existing refugees and asylum seekers.
        Therefore, we see the need to establish another learning center in order to fulfill the needs of the refugees and
        asylum seekers for education and to help them live a more civilized life in the capital of this ‘transit country’.
      </p>
      <p class="mt-3 text-gray-700 leading-6">
        As of now, we have educated more than 100 refugees on English, Indonesian Language, soft skills as well as legal
        knowledge. Besides regular classes, with the help of our partner, Suaka, we also provide Information session for
        refugees on Refugee Status Determination to provide valuable knowledge and insight for preparation of interview
        and what to expect. There are also workshop sessions provided by our volunteers from International Relations
        students of University of Indonesia on Indonesian culture. There are 15 teaching volunteers in total who
        passionately dedicate their time and energy in the betterment of quality of education for refugees. The first term
        started on 1st September 2017, and each term comprises of 3 months.
      </p>
      <p class="mt-3 text-gray-700 leading-6">
        To ensure the safety of refugees and asylum seekers, we believe in coordination and partnership. This is reflected
        in the legal procedures followed to establish this Learning Center. We have coordinated with Indonesian Government
        and partnering with the United Nations High Commissioner for Refugees (UNHCR) to ensure the sustainability of our
        program.
      </p>

      <div class="py-16">
        <div>
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Open Admission to Prospective Students</h3>
          <p class="text-gray-700 leading-6">Our classes are open to all asylum seekers and refugees in Indonesia with
            various ethnicity, race, religion, gender, sexuality and nationality backgrounds.</p>
          <p class="mt-3 text-gray-700 leading-6">The classes are Indonesian Language, English, German and Soft skills
            (Legal Knowledge, Computer, Arts, Public Speaking, Gender, Cultural and Entrepreneurial Knowledge).</p>
          <p class="mt-3 text-gray-700 leading-6">We open our classes for prospective students throughout the year.
            Due to limitations, however, we are only able to accept limited students. Here are the steps that you have to go
            through to be a student in our center:
            <ol class="mt-3 mx-10 list-decimal">
              <li class="text-gray-700">Register yourself through our email <a href="mailto:sunrise@sandya-institute.org"
                  class="text-gray-700"
                  style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">sunrise@sandya-institute.org</a>
                or our Contact Person.
              </li>
              <li class="mt-2 text-gray-700">
                Verify your registration by coming to our center with your original UNHCR ID and one copy of your UNHCR ID. After verification, we will notify you if you are accepted or on our waiting list. We will not accept students with no UNHCR ID.
              </li>
              <li class="mt-2 text-gray-700">Placement test.</li>
            </ol>
          </p>
        </div>
        <div class="mt-14">
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Voluenteering</h3>
          <p class="text-gray-700 leading-6">
            Our volunteers who dedicate their time and energy towards the betterment of refugee education is vital to ensure this program’s success. Volunteering positions directly related to Sunrise Refugee Learning Center include Teaching Volunteers. You may send your application to <a href="mailto:sunrise@sandya-institute.org"
            class="text-gray-700"
            style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">sunrise@sandya-institute.org</a> at any time. We review it periodically and will contact you once your contribution is needed.
          </p>
        </div>
        <div class="mt-14">
          <h3 class="text-xl text-gray-800 font-bold md:text-2xl mb-3">Donation &amp; Partnership</h3>
          <p class="text-gray-700 leading-6">
            If you are interested in donating, you can contact us directly at  <a href="mailto:sunrise@sandya-institute.org"
            class="text-gray-700"
            style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">sunrise@sandya-institute.org</a> or  <a href="mailto:pr@sandya-institute.org"
            class="text-gray-700"
            style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">pr@sandya-institute.org</a>. We provide transparency of funds through periodically reporting our expenditures to ensure the donations are used to advance the cause, empowering refugees through education.
          </p>
          <p class="mt-3 text-gray-700 leading-6">
            Solving the challenge of education for refugees is a collaborative task. We would like various stakeholders to participate to ensure that a better tomorrow for refugees is possible. NGOS, businesses or individuals who want to establish partnership with Sunrise Refugee Learning Center can contact us directly at <a href="mailto:pr@sandya-institute.org"
            class="text-gray-700"
            style="background-image: linear-gradient(180deg, transparent 70%, rgba(200, 169, 57, .4) 0);">pr@sandya-institute.org</a>.
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection