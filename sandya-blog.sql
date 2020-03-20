--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: wink_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wink_authors (
    id uuid NOT NULL,
    slug character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    bio text NOT NULL,
    avatar character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    meta text
);


ALTER TABLE public.wink_authors OWNER TO postgres;

--
-- Name: wink_pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wink_pages (
    id uuid NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    meta text
);


ALTER TABLE public.wink_pages OWNER TO postgres;

--
-- Name: wink_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wink_posts (
    id uuid NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    excerpt text NOT NULL,
    body text NOT NULL,
    published boolean DEFAULT false NOT NULL,
    publish_date timestamp(0) without time zone DEFAULT '2018-10-10 00:00:00'::timestamp without time zone NOT NULL,
    featured_image character varying(255),
    featured_image_caption character varying(255) NOT NULL,
    author_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    meta text
);


ALTER TABLE public.wink_posts OWNER TO postgres;

--
-- Name: wink_posts_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wink_posts_tags (
    post_id uuid NOT NULL,
    tag_id uuid NOT NULL
);


ALTER TABLE public.wink_posts_tags OWNER TO postgres;

--
-- Name: wink_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wink_tags (
    id uuid NOT NULL,
    slug character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    meta text
);


ALTER TABLE public.wink_tags OWNER TO postgres;

--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2018_10_30_000000_create_tables	1
2	2018_11_16_000000_add_meta_fields	1
\.


--
-- Data for Name: wink_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wink_authors (id, slug, name, email, password, bio, avatar, remember_token, created_at, updated_at, meta) FROM stdin;
71312ba6-e972-4947-9e00-d154e9a25329	sandya-institute	Sandya Institute	blog@sandya-institute.org	$2y$10$IMb9m0Loo4GJcKJFo1V9UuF52dXaMo5v9EncrkF4yQw8vJ5n894T6	<p>Center for Peace and Human Rights</p>	/storage/wink/images/XUtZc3x4A2D3Exjuq3ORyaeLyBEl174eXLf2eXs8.png	B02JChGMEDGR0XTP78R7RhlWUEtwS7pRNOAdjk9HuJElhMRZBQgZwwiIPZDk	2020-02-27 13:59:16	2020-03-13 15:53:18	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null,"theme":"light"}
\.


--
-- Data for Name: wink_pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wink_pages (id, slug, title, body, created_at, updated_at, meta) FROM stdin;
\.


--
-- Data for Name: wink_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wink_posts (id, slug, title, excerpt, body, published, publish_date, featured_image, featured_image_caption, author_id, created_at, updated_at, meta) FROM stdin;
b6927326-8126-4e57-83d7-7b8bc84005e7	survey-on-labor-characteristics-links	Survey on Labor Characteristics (Links)		<p>Below are the access links for the "Survey on Refugee Labor Characteristics". Please complete the survey if you are currently a refugee or asylum seeker living in Indonesia.</p><p>These links contain the same questions but have been written in multiple languages. Please choose the option that best suits you.&nbsp;</p><p>Thank you for your cooperation</p><p><strong>English:</strong>&nbsp;<a href="https://survey.zohopublic.com/zs/RmBUW3" target="_blank">https://survey.zohopublic.com/zs/RmBUW3</a></p><p><strong>Farsi (فارسی):</strong>&nbsp;<a href="https://survey.zohopublic.com/zs/pZBUdP" target="_blank">https://survey.zohopublic.com/zs/pZBUdP</a></p><p><strong>Somali:</strong>&nbsp;<a href="https://survey.zohopublic.com/zs/q8BUMw" target="_blank">https://survey.zohopublic.com/zs/q8BUMw</a></p><p><strong>Tamil (தமிழ்):</strong>&nbsp;<a href="https://survey.zohopublic.com/zs/qhBUoy" target="_blank">https://survey.zohopublic.com/zs/qhBUoy</a></p><p><strong>Arabic (عربى):</strong>&nbsp;<a href="https://survey.zohopublic.com/zs/FNBUSD" target="_blank">https://survey.zohopublic.com/zs/FNBUSD</a></p>	t	2019-09-05 18:45:00	\N		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 14:59:21	2020-03-13 15:00:26	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
6ac7c7f1-1aaf-47a5-9323-e542099687dd	unlocking-the-economic-potentials-of-indonesias-refugee-community-a-survey-on-labour-characteristics	Unlocking the Economic Potentials of Indonesia's Refugee Community: A Survey on Labour Characteristics		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="" src="/storage/wink/images/JVGMoflr9P9ibQpoLbgJYvDfJ0suCCncErcQvQ5E.jpeg"></div><div class="embedded_image" contenteditable="false" data-layout="default"><img alt="" src="/storage/wink/images/rzbcSl5pncjups0BEsnB3lyguGVu9JA2RokZRRjI.jpeg"></div><p><br></p><p>On December 12, 2019 - Sandya Institute shared with the public their research concerning refugees and their economic impact in Indonesia.The outcomes were presented to the&nbsp;Ministry of Manpower, the International Organization for Migration, and other government, local, and international stakeholders.&nbsp;The research, led by Matthew LoCastro, conducted a survey on the demographic, economic, employment, and educational characteristics of refugees in Jakarta, Medan, and Makassar. The survey captured over 16% of the national working-aged refugee population and the outcomes are being targeted to be used to inform government policy recommendations concerning refugees.</p><p>The research&nbsp;occurred&nbsp;from September 2018 and was completed in November of 2019 with the sponsorship and endorsement&nbsp;of the&nbsp;United Nations High Commissioner for Refugees, the Jesuit Refugee Service, SUAKA, Refugee Learning Nest, Help for Refugees, and Hope Learning Center.</p><p>Below is an overview of the report. The full report can be found in English and Bahasa Indonesia by clicking on the below links.</p><h2 class="ql-align-center"><a href="https://drive.google.com/file/d/1Nn3g3dsJU4L5VlF7iY8k9OWSFLoqGxxS/view?usp=sharing" target="_blank" style="color: rgb(0, 0, 255);"><strong><em>[English] Sandya Institute Research Paper Series -&nbsp;Unlocking the Economic Potentials of Indonesia's Refugee Community: A Survey on Labour Characteristics</em></strong></a></h2><h2 class="ql-align-center"><a href="https://drive.google.com/file/d/1LlmhpM3Vum10WIRkFFQ3FKBnKquyaktU/view?usp=sharing" target="_blank" style="color: rgb(0, 0, 255);"><strong><em>[Bahasa Indonesia] Sandya Institute Seri Kajian Ilmiah - Menjelaskan Potensi Ekonomi Komunitas Pengungsi Indonesia: Survei Mengenai Karakteristik Ketenagakerjaan dan Penghidupan&nbsp;</em></strong></a></h2><hr><p>As of September 2019, Indonesia has been the unintentional home to approximately 13,657 refugees. Most of these individuals from Afghanistan and Somalia left their home countries in search of safety and to escape life-threatening circumstances with the intention of seeking asylum in elsewhere. However, geo-political circumstances have led to refugee communities forming in other unintended destinations. The population of refugees currently residing in Indonesia proves to be one of the smallest groups of refugees on a regional level. With a limited policy framework in place, the looming threat of a decline in international assistance, and the small population of refugees, now is the ideal time to form and enact policies that allow for temporary but sustaining livelihood opportunities for the refugee community in Indonesia as they wait, often for years, for resettlement. In order to create policy concerning temporary livelihood activities, substantive and data-driven research is required to inform recommendations concerning potential employment, entrepreneurial, and educational opportunities best suited for the refugee community without disrupting Indonesian economic and education systems. By conducting literature reviews and collecting survey information on the labour and educational characteristics of refugees, a framework of action has been proposed. The proposed framework, which focus on actions Indonesian policymakers can take to advance the development of temporary livelihood opportunities demonstrates that refugees can obtain an independent and humane living while supporting Indonesian institutions and economic growth.</p>	t	2019-12-13 13:15:00	/storage/wink/images/svCbx3Emt4dLwuITat0m9gcAedyy6HzrQKvyEz5S.jpeg		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 14:54:07	2020-03-16 10:25:01	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
97355262-9b24-43be-8b7b-2e86caeb1167	tempoco-press-release-pengungsi-dan-dampak-ekonominya-di-indonesia-diskusi-sandya-institute-di-ruang-dan-tempo	Tempo.Co Press Release: Pengungsi dan Dampak Ekonominya di Indonesia, Diskusi Sandya Institute di Ruang dan Tempo		<p><strong>INFO TEST</strong> - Sandya Institute, sebuah LSM yang bergerak di bidang hukum dan HAM, telah mengadakan sebuah diskusi dengan Jesuit Refugee Services (JRS) di Ruang dan Tempo, Jalan Palmerah Barat 8 Jakarta&nbsp;pada hari Kamis, 12 Desember 2019. Diskusi ini membahas penyebaran dan publikasi riset terbaru Sandya, <a href="https://sandya-institute.org/news/unlocking-the-economic-potentials-of-indonesias-refugee-community-a-survey-on-labour-characteristics" target="_blank">Unlocking the Economic Potentials of Indonesia’s Refugee Community: A Survey on Labour Characteristics</a>, dengan masyarakat, pemerintah dan LSM, beserta para pemangku kepentingan di tingkat lokal, nasional dan internasional.</p><p>Penelitian yang dipimpin oleh&nbsp;Matthew LoCastro-&nbsp;<em>Research Manager&nbsp;</em>Sandya Institute, berfokus pada pengungsi dan dampak ekonominya di Indonesia. Tim Sandya melaksanakan survey pada demografi, ekonomi, pekerjaan dan karakter pendidikan pengungsi di Jakarta, Medan dan Makassar. Survei ini berhasil menjangkau&nbsp;lebih dari 16% populasi pengungsi berusia produktif di tingkat nasional dan hasilnya diharapkan bisa digunakan untuk mendasari rekomendasi kebijakan pemerintah mengenai pengungsi. Data yang dikumpulkan memperluas informasi yang tersedia mengenai keadaan kehidupan pengungsi saat ini, seperti pendapatan dan pengeluaran, dan bagaimana cara menyediakan pekerjaan sementara dan kesempatan pendidikan yang sesuai dengan sejarah pekerjaan, kemampuan dan tingkat pendidikan.<strong>&nbsp;</strong></p><p>Riset dilakukan dari September 2018 dan diselesaikan pada November 2019 dengan dorongan dan bantuan dari&nbsp;<em>United Nations High Commissioner for Refugees, Jesuit Refugee Services</em>, SUAKA,&nbsp;<em>Refugee Learning Nest, Help for Refugees&nbsp;</em>dan&nbsp;<em>Hope Learning Center</em>.</p><p>Diskusi dan diseminasi riset Sandya dimulai dengan pidato dari Pak Beka Ulung Hapsara, Koordinator Subkomisi Pemajuan HAM/Komisioner Pendidikan &amp; Penyuluhan dan&nbsp;Heru Susetyo, ahli Hukum Pengungsi dari Universitas Indonesia. Kedua pembicara memberikan pandangan menyeluruh tentang keadaan pengunsi dan kebijakan pemerintah Indonesia mengenai komunitas pengungsi. Pidato ini kemudian dilanjutkan oleh presentasi LoCastro mengenai riset Sandya. Dalam presentasinya LoCastro menyatakan bahwa “ada kesempatan untuk menciptakan kebijakan yang dinamis yang menguntungkan ekonomi Indonesia serta memberikan kemampuan bagi pengungsi untuk menyokong diri mereka sendiri tanpa membebani pemerintah Indonesia dan masyarakatnya – riset ini juga membantu membangun rekomendasi kebijakan tersebut. Acara terakhir diisi oleh diskusi panel yang dimoderasi oleh Rizka Argadianti Rachmah, Sekjen SUAKA dengan Gading Gumilang Putra,&nbsp;<em>Senior Legal Officer</em>&nbsp;JRS, Ann Maymann, perwakilan UNHCR di Indonesia, Aden Ali Ahmed, perwakilan pengungsi, dan LoCastro.</p><p>Acara ini juga dihadiri oleh&nbsp;Kementrian Tenaga Kerja Indonesia,&nbsp;<em>International Organization for Migration</em>,&nbsp;<em>International Committee of the Red Cross,&nbsp;</em>Kedutaan Filipina,&nbsp;<em>University of Melbourne, International Global Network,&nbsp;</em>Pusat Kajian Hukum Internasional Fakultas Hukum Universitas Indonesia,&nbsp;<em>Roshan Learning Center</em>&nbsp;dan&nbsp;<em>Asian Law Students Association(ALSA) Indonesia</em>. (*)</p><p>Link:&nbsp;<a href="https://event.tempo.co/read/1284303/pengungsi-dan-dampak-ekonominya-di-indonesia-diskusi-sandya-institute-di-ruang-dan-tempo" target="_blank">https://event.tempo.co/read/1284303/pengungsi-dan-dampak-ekonominya-di-indonesia-diskusi-sandya-institute-di-ruang-dan-tempo</a></p>	t	2019-12-18 19:49:00	\N		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 14:46:20	2020-03-16 10:29:06	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
22d7a395-ef91-4859-940e-890fe14ebfa6	press-release-on-the-global-emerging-young-leaders-award-2018-by-united-states-department-of-state-in-washington-dc	Press Release on the Global Emerging Young Leaders Award 2018 By United States Department of State in Washington D.C.		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="" src="/storage/wink/images/9k4AFQNPdLAnWpmsPbk4Bi3mg2u1Ujk3GZ9mrpah.jpeg"></div><p>The Executive Director of Sandya Institute, Diovio Alfath is honored with the Emerging Young Leaders Award 2018, it is a prestigious award given by the United States (U.S) Department of State in Washington D.C for 10 global young leaders across the world who have shown courage and tenacity in promoting sustainable peace. The initiative was started under Obama administration in 2016. The award was given in a public ceremony at the Burns Auditorium, George C Marshall Conference Center, U.S Department of State, Washington, D.C.</p><p>The 2018 awardees are:</p><ol><li>Sara Abdullah Abdulrahman, Iraq</li><li>Diovio Alfath, Indonesia</li><li>Ece Çiftçi, Turkey</li><li>Tanzil Ferdous, Bangladesh</li><li>Zina Salim Hassan Hamu, Lithuania</li><li>Dania Hassan, Pakistan</li><li>Nancy Herz, Norway</li><li>Isasiphinkosi Mdingi, South Africa</li><li>José Rodríguez, Panama</li><li>Firuz Yogbekov, Tajikistan</li></ol><p>these 10 remarkable young people visit the United States for an intensive program, from April 29 to May 12 2018, specially designed to expand their leadership capacities, strengthen their knowledge of management strategies in the non-profit, government and private sectors, learn and share best practices, and broaden their networks of resources and support. The program provides skills training to set awardees on paths for increased collaboration on global issues affecting youth, particularly those involved in building peace, combating extremism, and&nbsp;empowering youth. Indonesia is honored to receive the award through its young leader named Diovio Alfath, after being nominated by the U.S Embassy in Jakarta.</p><p>Diovio Alfath is a 23 year-old young leader and human rights activist, he is the Founder and Executive Director of Sandya Institute, a non-government organization focuses on the protection and empowerment of minority groups and refugees in Indonesia through peacebuilding, counter-violent extremism and human rights advocacy. Its programs including School of Peace and Human Rights, a series of seminar and training for students and young professionals on pluralism and human rights issues, research of Know Your Rights Book - a research and writing of&nbsp;guiding books for minority of religion, race, ethnicity, sexuality and refugees, containing legal information and emergency contacts, and Sunrise Refugee Learning Center, a learning center for asylum seekers and refugees in Indonesia that teaches English, Indonesian, cultural and legal knowledge, it has been teaching more than 150 asylum seekers and refugees from Afghanistan, Ethiopia, Somalia, Pakistan, Syria, Vietnam, Iraq and Iran.</p><p>Diovio Alfath has been actively involved in leadership activities since a very young age. In 2014, he was invited to meet and discuss with the United Nations Secretary General, Ban Ki Moon and world leaders at the United Nations Alliance of Civilization Global Forum in Bali, he was inspired and later decided to create a&nbsp;youth platform to make the world a better place, to bring peace and harmony in Indonesia. As a young leader, Diovio idolizes KH Abdurrahman Wahid, the Father of Indonesian pluralism who teaches us respect and toleration for minority groups in Indonesia, that is what Diovio told the world in a talkshow led by the Assistant Secretary Marie Royce, in front of diplomats, ambassadors and hundreds of invitees from across the world. He also spoke that he was driven by the spirit to fight for justice because of seeing persecution happened to people around him. In that talkshow, Diovio also reminded us that Indonesia has seen a rise of religious extremism and amidst a global refugee crisis. Minorities in Indonesia continue to face persecution that mostly driven by exclusivity and superiority of a certain religious followers. As a transit country for refugees, Indonesia is now handling 13.800 refugees mostly from Middle East, North Africa, South Asia and Myanmar, since Indonesia is not the signatory of 1951 Refugee Convention, the rights of refugees in Indonesia are limited and they are now living under concerning situation.</p><p>&nbsp;</p><p>Public Relations Team</p><p>Sandya Institute for Peace and Human Rights</p><p>pr@sandya-institute.org</p>	t	2018-05-23 08:02:00	/storage/wink/images/ClnHrAePQ2ZWXBa2WyPVH0CrY7Q7L21kZck6CqXS.jpeg		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:03:05	2020-03-14 00:50:57	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
ed6fa1ed-ae90-4b9a-89c8-5cb69da7169b	sandya-institute-opens-refugee-learning-center-in-jakarta	Sandya Institute Opens Refugee Learning Center in Jakarta		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="Minorities in Indonesia continue to face discriminatory regulations and violent attacks! They need our help! Help us fighting injustice!" src="/storage/wink/images/GFYA4svIxeENRfJezGyIMKmpuKFSmDn4UpYvpGsX.jpeg"><p>Minorities in Indonesia continue to face discriminatory regulations and violent attacks! They need our help! Help us fighting injustice!</p></div><p>During the recent years, the world is experiencing what is known as the global refugee crises.&nbsp;Based on the data from United Nations High Commissioner for Refugees (UNHCR), in the year of 2014 there was 60 million refugees and internally displaced people (IDP) in the whole world. One of the main cause which highly increase the flow of migrants and refugees nowadays is the conflict in countries such as Syria, Afghanistan, Iraq, Somalia, Congo, Eritrea, poverty in Kosovo, etc.</p><p>One of the country which accept a lot of refugee but doesn’t ratify the Refugee Convention 1951 is Indonesia. Indonesia has been considered as a transit country for the asylum seekers. A lot of refugees come to Indonesia to get a refugee status and wait to be moved to a third country such as Australia. However, as a matter of fact, a lot of refugees also have to deal with the uncertainty of that status so they have to wait. During their waiting, they can’t always do the daily activity like normal people do and some of their basic rights can’t also be fulfilled.</p><p>According to the data in UNHCR (February 2016), there was 13.829 refugees and asylum seekers in Indonesia. Those refugees come from Afghanistan, Myanmar, Somalia, Sri Lanka, Iran, Palestina, Pakistan, Irak, and many others. There are 2.445 people identified who need a certain help and there was 3.114 interviews that was done individually to determine whether or not someone is worthy to get a refugee status. There was 3.216 individuals whose refugee status is finalized, but only 636 refugees who succeeded in being placed in third country and to resettle there. This showcases that a lot of asylum seekers or refugees who are stuck in Indonesia and live barely, without being able to obtain the rights of individuals under the law. They couldn’t work and get a formal education. Although, with or without refugee status they are still human beings who have the rights for education and a proper way of living.</p><p>Based on the situation, Sandya Institute as a non-governmental organization which focuses on peacebuilding and human rights advocacy has an intention to help refugees in Indonesia in obtaining their rights for education by building a refugee learning&nbsp;center. This program was initiated by Sandya Institute Refugee Community in Jakarta. It has become our intention to give an education and make the lives of the refugees and asylum seekers become better in the midst of the limitations. The activity will take Place at DKN Garda Bangsa, Jalan Tebet Barat VIII, No. 56 B, RT 05/RW 04,&nbsp;&nbsp;the time is 9AM – 1 PM, Monday to Friday, September-November 2017. It&nbsp;will be divided into 4 (four) classes :</p><p><strong>1. Bahasa Indonesia Classes</strong></p><p>In this session, refugees are going to be taught Bahasa Indonesia, so they will focus on their conversational ability that will also help the refugees in communicating throughout their daily lives.</p><p><strong>2. English Language Classes</strong></p><p>In this session, refugees are going to be taught English, so they will focus on their conversational ability that will also help the refugees in communicating throughout their daily lives. This will become very useful especially when the refugees will be resettled to a third country</p><p><strong>3. Computer Class</strong></p><p>In this session, refugees are going to be taught on basic computer skills. Basic computer skills is needed to access information through the internet and also to operate some software which will be useful for them when they will be able to work after they are resettled.</p><p><strong>4. Legal Knowledge</strong></p><p>The goal of this session is to give a basic legal knowledge especially about the rights of refugees according to the law, seeing that not a lot of refugees have known about their rights. Refugees also don’t know a lot about the law in Indonesia. Therefore, we intend to improve their knowledge on their rights as refugees in Indonesia. In this session, we also hope to give a brief description on the refugee status determination and how it is conducted.</p><p><br></p><p>Public Relations Team</p><p>Sandya Institute</p>	t	2018-03-01 21:49:00	/storage/wink/images/ywPQhO3pQTtAQy1adfRuousNsdnGQnH4Hm8Ja0h7.jpeg		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:05:57	2020-03-20 21:08:08	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
dbd982f3-4f54-442a-b41e-52fc15ea5124	press-release-diskusi-publik-perempuan-pengungsi-dan-kekerasan-berbasis-gender	Press Release Diskusi Publik Perempuan, Pengungsi dan Kekerasan Berbasis Gender		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="" src="/storage/wink/images/1uKmbM6x9DeX3VnnTWttfXe4ce6Q3Gcr6ZgLiHHk.jpeg"></div><p>Pada tanggal 05 Desember 2018, Sandya Institute bekerja sama dengan Komisi Nasional Anti Kekerasan terhadap Perempuan (Komnas Perempuan)&nbsp;mengadakan disksusi publik dengan topik “ Perempuan, Pengungsi dan Kekerasan Seksual ” acara ini diadakan dalam rangka kampanye 16 Hari Anti Kekerasan terhadap Perempuan (HaktP) yang merupakan bagian dari kampanye internasional untuk mendorong upaya-upaya penghapusan&nbsp;kekerasan terhadap perempuan&nbsp;di seluruh dunia</p><p>Acara ini diadakan untuk meningkatkan kesadaran publik akan pentingnya pemahaman terhadap isu kekerasan berbasis gender di kalangan pengungsi internasional (<em>refugee</em>), pengungsi internal (<em>internally displaced persons</em>) dan orang-orang tanpa kewarganegaraan (<em>stateless persons</em>). Hal ini dikarenakan permasalahan kekerasan berbasis gender yang mereka alami masih menjadi permasalahan serius di Indonesia, dengan status mereka tersebut, mereka menjadi sangat rentan terhadap praktik kekerasan berbasis gender, hal ini harus ditangani oleh para pemangku kepentingan secara lebih komprehensif.</p><p>Diskusi publik ini dimulai dengan pemaparan dari Dr. Adriana Venny Aryani, Komisioner Komnas Perempuan yang menjelaskan mengenai sejarah Komnas Perempuan, HaktP, konsep kekerasan berbasis gender dan instrumen hukumnya, serta temuan Komnas Perempuan mengenai kekerasan berbasis gender yang dialami pengungsi dan kelompok rentan. Pemaparan materi dilanjutkan oleh Ratih Widiarti, Perwakilan dari <em>United Nations High Commissioner for Refugees</em> (UNHCR) Indonesia yang menjelaskan mengenai mandat dari UNHCR dalam menangani permasalahan kepengungsian dan upaya UNHCR dalam menangani permasalahan kekerasan berbasis gender yang dialami oleh pengungsi internasional di Indonesia. Diovio Alfath, perwakilan dari Sandya Institute memaparkan materi terkait dengan peran Organisasi Masyarakat Sipil dalam membantu mengurangi beban pengungsi dan perlindungannya dari kekerasan berbasis gender. Pembicara terakhir dari panelis diskusi publik ini adalah Waheeda yang merupakan pengungsi Afganistan dari <em>Sunrise Refugee Learning Center</em>,&nbsp;beliau menjelaskan mengenai perspektifnya sebagai pengungsi terhadap permasalahan kekerasan berbasis gender yang dialami oleh pengungsi.</p><p><strong><em>Public Relations Team </em></strong></p><p><strong><em>Sandya Institute </em></strong></p><p><strong><em>pr@sandya-institute.org</em></strong></p>	t	2018-08-06 07:47:00	/storage/wink/images/VGz6cKII9Kh4ame6xrWZfuFpG1bUXLlVbdXy8F7R.jpeg		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:01:06	2020-03-14 00:47:52	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
05f64277-a240-45c1-afc4-4bd74c575ce9	call-for-volunteers	Call for Volunteers		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="Minorities in Indonesia continue to face discriminatory regulations and violent attacks! They need our help! Help us fighting injustice!" src="/storage/wink/images/oMivlfX9wI38nzX4zQNMpmyn83LigQT4IcCvG2GM.jpeg"><p>Minorities in Indonesia continue to face discriminatory regulations and violent attacks! They need our help! Help us fighting injustice!</p></div><p><br></p><p>We are calling for :</p><p><strong>1.</strong> <strong>Research Assistants</strong></p><p>Assisting our research (both desk and field research) related to peace and human rights issues as well as providing academic writings and/or policy recommendations.</p><p><strong>2. Project Assistants</strong></p><p>Assisting the implementation of Sandya Institute’s porjects; organizing conferences/seminars/trainings/workshops/advocating the rights of minorities.</p><p><strong>3. Campaign Coordinators</strong></p><p>Assisting our campaign efforts on raising the awareness of the importance of peace and human rights values.</p><p><strong>4. Teaching Volunteers</strong></p><p>Providing support to refugees or other minority groups in Indonesia with reading and writing in Bahasa Indonesia/English, and/or providing support with basic legal knowledge/entrepreneurial skills.</p><p><strong>Procedure :</strong></p><ol><li>Submit your Curriculum Vitae before 23.59 AM on 20 July 2017 to pr@sandya-intitute.org</li><li>Interview on 21-23 July 2017.</li><li>Selected volunteers will be announced on 24 July 2017.</li><li>Starting date and duration of volunteering program will depend on the interview result, we expect the volunteers to be able to work on august with minimum duration of one month.</li></ol><p><strong>Eligibility :</strong></p><p>We are seeking individuals who have strong commitment in promoting peace and human rights values as well as advocating the rights of minority groups, we welcome all individuals with diverse background of age, nationality, religion, ethnicity, race, gender and sexuality. Only project assistants and teaching volunteers are expected to reside in Jakarta Greater Area.</p><p><strong>Benefits:</strong></p><ol><li>Opportunity to work and to be mentored by Notable Experts and Practitioners in peacebuilding and human rights advocacy field.</li><li>Networking with Sandya Institute Networks from local or international NGO’s to Government Institutions.</li><li>Free books and certificate.</li><li>Possible placement or excursion to beautiful places in Indonesia and abroad.</li><li>This volunteering program doesn't provide remuneration.</li></ol><p><strong>Further inquiries:</strong></p><p>Diovio Alfath (+6282112721490)</p><p>pr@sandya-institute.org</p><p><a href="https://l.facebook.com/l.php?u=http%3A%2F%2Fwww.sandya-institute.org%2F&amp;h=ATN5HLU-EXMDGS9r1habDuwo4Nm0aYzOcAmE6lmriX2w5RPwDJ9z4tCPAtV8QH-CPVmocDmRNPOcK8FEMKdqqzFCZ6iNvLnsZTjczqy943aN3_3SjsQUZMJ6TX6Mp-21AvvWKAurDe3hxphtNsJqBg&amp;enc=AZMQVFSlSGpGEC13wSCSjxMn7z66a8u9MOQs_R5pi0_6U-QO6jlnH0XSEWAzAPFdjtZdLvCpeq7eyN4ctUiX5nV6EKq2A7hhFFu_j8vKGZL-pp8SaatQk7msYGPBpCVK2SUZODmn9STZEjiVk5w40M9oXb1jmDwuawwrQ_FweDxf102b4AxfQD4KcC-Svuz9cBD0gGWV3SpurQPZUPQY6HmC&amp;s=1" target="_blank">www.sandya-institute.org</a></p>	t	2018-03-01 21:47:00	/storage/wink/images/cHOp1ncY88bj3BMdFFxaLT7QSA30IPnlXbcnIn84.jpeg	Minorities in Indonesia continue to face discriminatory regulations and violent attacks! They need our help! Help us fighting injustice!	71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:11:15	2020-03-13 15:23:06	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
66992db8-839e-4bd3-b548-77a565f295ac	rohingya-their-plight-suu-kyis-neglect-and-aseans-effeminacy	Rohingya: Their Plight, Suu-Kyi’s Neglect, And Asean’s Effeminacy		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="Tomas Munita for The New York Times" src="/storage/wink/images/YrBfNH7SwN9Nqz7nelgMdseOYpxZKnSr9FHXlyJS.jpeg"><p>Tomas Munita for The New York Times</p></div><p>Rohingya is the most persecuted ethnic group in the 21<sup>st</sup>&nbsp;century. It’s massacre barely receives media attention while thousands are being exiled from their homes, imprisoned, killed by either Myanmar’s right wing Buddhist mob and even the police. In 1974, the government of Myanmar denied Rohingya people citizenship, restricting them access to basic human rights. Their persecution which began gaining attention after Myanmar’s turn from military junta towards democracy has put into question the current government’s credibility in protecting ethnic minorities. Even the Noble price winner and the leader of the current largest party in Myanmar, Aung Saan Suu Kyi has been deemed not doing enough to prevent further persecution and even regarded as silence by some.</p><p>The plight of the Rohingya have been heard less than the refugee crisis in the middle east, even though smaller in number, the scale of the displaced people compared to the whole Rohingya population has been large. Even with the scale of persecution this can be regarded as an ethnic cleansing. According to the UN Office for the coordination of humanitarian affairs (OCHA), there were over 250,000 internally displaced people in Myanmar, 150,000 of which are Rohingya Muslims from Rakhine State . Most of the Rohingya refugees fled to Bangladesh, Thailand, Malaysia, and Indonesia. In Bangladesh alone, there are up to a million Rohingya refuges In 2015 Rohingya crisis, thousands flee by boat through the help of smuggles, with hundreds died on the way. However, their condition in neighbouring country can still be said as inhumane. The refusal of both Myanmar and Bangladesh to recognise their citizenship also further complicates the issue as around a million Rohingya ended up being stateless.</p><p><strong>Brief History of Rohingya Muslim Persecution</strong></p><p>Rohingya refers to an ethnic group following Islam who lives in Arakan state (now called Rakhine), in north-western Burma, alongside with Buddhists and Muslims of other ethnic groups for hundreds of years. Although not all Muslims in Arakan (which numbers around 800,000) identify themselves as Rohingya, most do so. During the British colonial rule of India and Burma (Burma is the largest ethnic group in Myanmar, and was the name of the region and the country until 1989), tensions between Muslims and Buddhists began to arise due to the mass immigration from India encouraged by the British. When Japan occupied Burma, they armed the Buddhist and the British force used the Muslim forces. After the Burmese independence peace was temporarily achieved until the General Ne Win took control in 1962 after a military coup. Under his government, the Rohingya were regarded as illegal immigrants and stripped them from nationality and their official minority status. The discrimination that the Rohingya people faced serves as a background for the&nbsp;<em>Mujahid&nbsp;</em>separatists and Rohingya Islamist movements, which in turn further aggravating their plight&nbsp;(Oishi, 2016).</p><p>The year 1978 marks the first exodus of Rohingya people after they were stripped of citizenship in 1974. Around 200,000 to 250,000 fled to Bangladesh to avoid torture and atrocities carried out by the Burmese authority. Under the pressure from United Nations, UNHCR, Saudi Arabian and Indian government, and the World Muslim League, the Burmese and Bangladeshi government agreed on the repatriation of the 200,000 refugees to Arakan state. Nevertheless the Burmese government still failed to recognise their citizenship.</p><p>The second exodus occurred in 1991 to 1992 with 250,000 refugees fled to Bangladesh. After the failed democracy movement in 1988 which brought further military presence, the military backed the Buddhist community in Arakan during confrontations that led to pillage, rape, and murder against the Muslim community. The Bangladeshi government was half-hearted in helping the refugees, only to encourage them to return to Myanmar. The UNHCR made an agreement to the Burmese government to ensure their safety, yet the Rohingya people already distrusted the Myanmar government and led to many of them refused to return. Eventually under the assistance and monitoring of UNHCR and other NGOs, 200,000 people returned by 1996. Same as the previous return, they were only regarded as foreigners who are temporarily allowed to stay. Their movement was restricted and the government sponsored the Buddhist Arakanese to settle towns previously dominated by Rohingya people&nbsp;(Nemoto, 2005). Furthermore, reports also say that they faced population control, marriage restriction, ban on religious activities, etc.</p><p>In 2012, an alleged rape of a Buddhist woman by 3 Rohingya men triggered an unrest with mobs committing violence towards Muslims. The violence spread throughout the whole Rakhine state with both group fighting with each other. However, the state security forces didn’t prevent the violence to broke out but instead siding on Buddhist groups. Buddhist right-wing groups began to protest nationwide and called for the expulsion of ‘Bengalis’ from Myanmar. Most notably, the monk Ashin Wirathu, dubbed the Buddhist Bin Laden for his controversial speeches against Muslim. As the violence continued, the government responded by issuing emergency in the state and authorizing military control of the area, yet violence continued and displaced more than 100,000 people internally, forcing them to live in camps. Reports say that the government forces joined the persecution, committing rape, and arresting Rohingya people.&nbsp;(Allard K. Lowenstein International Human Rights Clinic, Yale Law School, 2015). The persecution is still ongoing with 130 Rohingya were killed and dozens of their buildings were torched in October 2016</p><p>The condition of Rohingya living in IDP camps are miserable, with food shortages, lack of sanitation, education, healthcare, etc. The military has made humanitarian aid more difficult to be distributed. Joblessness also the main feature of the refugee, unable to secure any job due to discrimination. As a result, a lot fled mostly to Bangladesh, Thailand, Malaysia, and Indonesia. UNHCR Refugee agency estimated that 25000 people fled by boat using smugglers help, with thousands died at sea in the first quarter of 2015 alone.</p><p><strong>Aung San Suu Kyi’s Silence, What Happened to the Nobel Peace Prize Winner, And Where is ASEAN?</strong></p><p>Aung San Suu Kyi is credited in bringing democracy in Myanmar, and was imprisoned several times during the military dictatorship. She was known for her non-violence approach in opposing the dictatorship. Thus, in 1990 she was awarded the Nobel Peace Prize. After the transition from authoritarianism to democracy, she again became the figure of openness towards the world and her party quickly became the largest party in Myanmar. Despite ineligible to run for presidency due to the nationality of his late husband, Michael Aris, she was given the title ‘State Councillor of Myanmar’, a position-equal to prime minister-created to give her greater power. Yet, as she gained power in the past few years, many began to question her role in the Rohingya crisis. She spoke only a little on the matter. Even in an interview by BBC she was reportedly angered by the fact that she was interviewed by a Muslim&nbsp;(Popham, 2016). Her indifference, which some regarded as a support, towards the genocide has prompted the notion of revoking her Nobel prize (1). Does she really support the genocide or is it just a careful approach to appease the right-wing Buddhists?</p><p>In the post-military government, nationalist Buddhist monks gained power in politics. They were credited in encouraging Buddhist vigilante towards Muslim shops and houses, and infamous for their Islamophobic views. They regarded the Rohingya as foreigners and they utilise crimes committed by Muslims to justify their views. With 90% of the population adheres to Buddhism, Buddhist monks have great political role. By supporting the Rohingya people, Aung San Suu Kyi can risk people’s support.</p><p>In the parliament, the military still have 25% seats, as mandated by the law. The military faction is known for siding with Buddhist nationalists and use them as the support base. During the dictatorship, the military had a bad relationship with the Buddhist monasteries, with many monks detained for voicing opposition. However, when it comes to persecuting minority groups, the monastic community is at ease with the military, and thus began the utilization of monastic support base by the military. Aung San Suu Kyi may be silent in order to prevent confrontation with the military, which could bring another rebellion&nbsp;(Peng, 2017).</p><p>Yet, her silence is unprecedented for a Nobel peace prize winner. Her appointment of the former military jailors for implementing the rule of law proves her fondness of the military regime’s remnants&nbsp;(Green, 2013). Her other political judgements also raise questions, such as when she approved the construction controversial copper mine in Yangon. It’s contrary to her past speeches which usually side on the ordinary citizen, but on this case, as Kate Hodal reported in 2013, she publicly defended the government’s decision to keep the construction going on with the reason of encouraging more foreign investment.</p><p>Another blamed the incapacity of Suu Kyi’s party, NLD (National League of Democracy) to bring change in Myanmar’s government. The party has yet to criticize Suu Kyi for her failure in protecting minority rights. Ronan Lee argued that this in part because of the Burman Buddhist upbringing of the party members, which gives moral burden to Suu Kyi since they helped her in her struggle.&nbsp;Furthermore, the prevalence of the old members in the party is not in line with half of Myanmar’s population which are under 27, making its way of thinking conservative. Besides imprisonment by the military regime, the party also suffered the consequences of the dictatorship which is the decades -long neglect of the education system that made their members lack in political and policy development skills, as noted by Eric Randolph (Lee, 2014). Clearly the party needs to secure people’s vote since it is their first time being on power.</p><p>As her image has turned from the champion of human rights into a mere politician, international community has been in conflict on Suu Kyi’s role in the democratic Myanmar. Furthermore, there are no other figure in Myanmar that can replace her role in championing human rights and democracy (her role in this matter is still relevant in other issues).</p><p><strong>Can ASEAN Offer a Solution?</strong></p><p>Suu Kyi’s neglect of the Rohingya people has consequences on the international community, especially the neighbouring countries. This brings us into ASEAN, the regional bloc in which Myanmar is a member. ASEAN is a regional bloc which is known for its quiet diplomacy and principled on non-intervention, known as the ASEAN way. This has led to many regard ASEAN as not doing enough to give pressure on the Myanmar government. ASEAN is known for its orientation economy and trade. However, the Rohingya crisis can be problematic to other member states as well, thus ASEAN needs to react.&nbsp;Besides the humanity and refugee problem, the ethnic cleansing in Myanmar can result in fragmenting the region along the ethno-religious line, posing a threat to ASEAN unity&nbsp;(Syed, 2017).</p><p>ASEAN member states supported the Responsibility to Protect (R2P) commitment in the 2005 UN World Summit. R2P stipulates that: (1) every state has the responsibility to protect its own populations from genocide, war crimes, ethnic cleansing and crimes against humanity; (2) the international community has the responsibility to help such state in performing such responsibility; and (3) the international community has the responsibility to intervene, even militarily if necessary, into a state if it fails to perform the above-mentioned responsibility&nbsp;(Oishi, 2016). However, R2P is hard to be implemented within ASEAN, as it has non-interference principle, state sovereignty, and non-use of force in conflict management.</p><p>Many ASEAN member states consider the Rohingya issue to be directly linked to Myanmar’s internal politics and therefore considered as too sensitive for other member states to intervene in more or less officially. While ASEAN succeeded in offering humanitarian aid during the Nargis Storm in Myanmar, they did not succeed in convincing Myanmar’s government to give humanitarian aid to the Rohingya refugees. Myanmar authorities recalcitrant attitude to international pressure is because the issue can be politicized easily.</p><p>ASEAN member states are differing in their treatment towards refugee, yet they are all in the same view that while emigration is regarded as a right, immigration is seen as a matter of national sovereignty and security. ASEAN also doesn’t have policies and frameworks in place for the protection of forced immigrants and has weak human rights system, unlike Europe. While ASEAN has pacts concerning human rights, this does not translate to national ratification, as the region itself is not taken seriously by the member states&nbsp;(Petcharamesree, 2015). ASEAN lacks authority to intervene national government on human rights issues (basically all issues). The lack of awareness amongst ASEAN member states that Rohingya people are part of ASEAN people also aggravated the neglect. ASEAN countries are all occupied by their own national identity.</p><p><strong>Conclusion</strong></p><p>With the end of Military dictatorship in Myanmar, human rights were expected to be more strongly uphold by the government. However, after the democratization, situation began to get worse for the Rohingya Muslims, creating a humanitarian crisis and is regarded as an modern-day obscure ethnic cleansing. The conflict between Buddhists and Muslims were utilised by the government of Myanmar to gain further support from the predominantly Buddhist population. Even Mrs. Aung San Suu Kyi the Nobel prize winner failed to address the humanitarian concern of the issue, which is utterly regrettable. International community is still preoccupied by the ongoing war in the middle east while ASEAN countries are busy with their own national agenda. ASEAN should play bigger role on the issue by setting up institutions to carry out their human rights agenda into practice. However, this needs willingness of the member states to put aside their sovereignty agenda for the common goal of bringing peace to Rakhine state, and recognizing Rohingya as their citizen.</p><p><strong>Bibliography</strong></p><p>Allard K. Lowenstein International Human Rights Clinic, Yale Law School. (2015). Persecution of the Rohingya Muslims: Is Genocide Occuring in Myanmar's Rakhine State? (A Legal Analysis).</p><p>Green, P. (2013). Islamophobia: Burma’s racist fault-line.&nbsp;<em>Race &amp; Class Vol. 55(20)</em>, 93-98.</p><p>Lee, R. (2014). A Politician, Not an Icon: Aung San Suu Kyi's Silence on Myanmar's Muslim Rohingya.&nbsp;<em>Islam and Christian–Muslim Relations Vol. 25, No. 3</em>, 321-333.</p><p>Nemoto, K. (2005). The Rohingya Issue: A Thorny Obstacle between Burma (Myanmar) and Bangladesh.</p><p>Oishi, M. (2016).&nbsp;<em>Can ASEAN Cope with “Human Insecurity” in Southeast Asia? In Search of a New ASEAN Way.</em>&nbsp;Singapore: Springer Nature.</p><p>Peng, D. (2017, February 21).&nbsp;<em>Understanding Aung San Suu Kyi’s Silence on the Rohingya</em>. Retrieved from Harvard Politics: http://harvardpolitics.com/world/understanding-aung-san-suu-kyis-silence-rohingya/</p><p>Petcharamesree, S. (2015). ASEAN and its approach to forced migration issues.&nbsp;<em>The International Journal of Human Rights</em>.</p><p>Popham, P. (2016, March 25).&nbsp;<em>Aung San Suu Kyi: What the 'interviewed by Muslim' BBC Today programme comment can tell us about her views</em>. Retrieved from The Independent: http://www.independent.co.uk/news/people/aung-san-suu-kyi-muslim-interview-bbc-today-programme-burma-nobel-peace-prize-a6952091.html</p><p>Sky News. (2016, April 5).&nbsp;<em>Suu Kyi consolidates power in parliament</em>. Retrieved from Sky News Australia: http://www.skynews.com.au/news/world/asiapacific/2016/04/05/suu-kyi-consolidates-power-in-parliament.html</p><p>Syed, M. K. (2017, February 1).&nbsp;<em>ASEAN and the Rohingya Crisis</em>. Retrieved from Project Syndicate: https://www.project-syndicate.org/commentary/myanmar-rohingya-asean-by-syed-munir-khasru-2017-02</p><p><br></p><p><strong>About the Writer&nbsp;</strong></p><p>Robert Ruddyanto is a final year student from Universitas Indonesia and Keio University, he is also an intern at Center for Strategic and International Studies, he was awarded as the Most Outstanding Delegate at National University of Singapore APEC Simulation last year, he is passionate about peace and human rights issues.</p>	t	2018-03-01 21:39:00	/storage/wink/images/gGLalQWxzVaoJShp8mdk37uUxbzhUp0FWKNc5xb3.jpeg		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:19:30	2020-03-20 21:34:25	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
b29ca85d-5944-4950-bb3c-ccb869ef8523	youth-involvement-in-peacebuilding	Youth Involvement in Peacebuilding		<blockquote><em>“Tell me and I’ll forget. Teach me and I’ll remember. Involve me, and I’ll learn” – Xin Kuang (818 AD)</em></blockquote><p>The 21<sup>st</sup>&nbsp;century inches ever farther from the previous millennia, after going through no less than 861 wars since the 1900s. Together, we saw the rise and fall of great powers, the rise and fall of boundaries and walls, as well as the rise and fall of generations of people.</p><p>And yet here we are today, inching both forwards and backwards despite observing all of the lessons that the past has bestowed upon us. As the youth, we are the pillars of the new society. As the youth, we are the ones to repair the broken columns and begin anew. Social, political and economic challenges continue to tear upon the social fabric and potential of youth development, but it is our duty to press forward and persist. Peace-building is not complex – it only requires our active moral support in strengthening bonds and solidifying peace to avoid backsliding into conflict.</p><p>As the youth, our goal in peace-building should prioritize establishing a Culture of Peace within our own notions. This culture of peace should then be extended towards other nations, creating integrative bonds and stronger relationships to solidify a strong foundation of peace. Most importantly, we must dispel the notion of youth apathy and instead, encourage youth involvement in policy and decision-making. Not only are the youths assets to the country’s future, but they are the key to solving security issues as well as the beneficiaries of economic progress as agents for economic recovery.</p><p>It is only through the establishment and understanding of a ‘<em>common humanity’</em>&nbsp;that progress towards creating a shift in change of our globe can arise. The youth must not only know what is true, but also know what is right.</p><p>It is time to encourage our generation to join in peace-building efforts.</p><p>We have nothing to lose and so much to gain.</p><p>Now is the year to begin again. No nation can fully achieve meaningful peace without standing in solidarity and union with her youth.</p><p>About the Writer</p><p><span style="color: rgb(0, 0, 0);">Dk. Siti Zulaikha Pg Hj Ishak (Ms.)&nbsp;</span>is from National Youth Advisor for Brunei Darussalam, she also involves in TUNZA South East Asia Youth Environment Network and United Nations Environment Programme.</p>	t	2018-03-01 21:44:00	\N		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:18:03	2020-03-13 15:18:46	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
3f535177-bd5d-42b5-933e-e98316a71ca5	book-launch-of-the-red-ribbon	Book Launch of The Red Ribbon		<p class="ql-align-justify"><strong>Press Release</strong></p><p class="ql-align-justify">Abdul Samad Haidari is a poet from Afghanistan, who is able to express his heartbreaking life experiences through his works. Marked as his first collection of poems, the Red Ribbon was written based on his experience when he escaped the conflict in Afghanistan and was forced to settle in Indonesia. The title of the book actually deciphered from a red strip of Haidari which was released from the hair of his sister who died while trying to escape from an attack targeted onto their village in Dahmarda, in the Arghandab locale in Zabul territory.&nbsp;</p><p class="ql-align-justify">The pain of being away from the country he was born in and losing his loved ones has been the thickest content of his book. Despite that, he still has hope of continuing with life and welcoming a better tomorrow. The poem does not only express the excruciating pain of escaping a home country with conflict but also tells the experience of many refugees who are forced to save themselves during a conflict situation – especially when it is a result of war and prosecution.&nbsp;</p><p class="ql-align-justify">Together with Abdul Samad’s mentor, Dr. Ross Dunn (Spouse to Ambassador Pam Dunn), they work with Sandya Institute and Gramedia to break the narrative about the unproductive life of refugees, or upon the issue of their whereabouts being merely about a recipient of aid. Needless to say, refugees are diverse individuals filled with their respective aspirations and expertise; however, the current legal and community structure in Indonesia greatly limits their mobility and productivity in contributing to society.&nbsp;</p><p class="ql-align-justify">Ambassador Faizullah Zaki stated, “As this book is very traumatic, very honest, very sincere, full of truth. It makes you feel the deep pain and sorrow and suffering. Haidari’s generation is not the only, I think, two generations have suffered the same.”&nbsp;</p><p class="ql-align-justify">Located at the Goethe-Institut, the book launch event was attended by other aspiring poets such as Ayu Utami, Edward (President of JFCC), Seetha G, Carissa Putriziandra, Janice Shyne Dah Mardah-e-Gulzar, and Ruby Astari. These poets also brought their own work, representing their response to the trauma faced by Abdul or their personal trauma to the context of the wider community. Compassion and togetherness while countering pain, is the common theme of the book launch of The Red Ribbon.&nbsp;</p><p><br></p>	t	2020-03-13 15:35:00	\N		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:50:14	2020-03-13 16:41:12	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
51bc3d6e-0a35-4b12-aab9-bd8aa793d218	romo-magnis-suseno-dan-para-aktivis-menyerukan-perdamaian-dan-penegakan-ham	Romo Magnis Suseno dan Para Aktivis Menyerukan Perdamaian dan Penegakan HAM		<div class="embedded_image" contenteditable="false" data-layout="default"><img alt="" src="/storage/wink/images/pJgQwcRtW4mWMVBiIpFcFWdkVuZBa5fbiGO0UcWy.jpeg"></div><p>Sabtu, 22 April 2017,&nbsp;<em>Sandya Institute</em>&nbsp;mengadakan pelatihan dan pembekalan ilmu mengenai perdamaian dan hak asasi manusia (HAM) kepada masyarakat yang aktif dalam mengadvokasikan perdamaian dan HAM di Tebet, Jakarta, pada acara&nbsp;<em>School of Peace and Human Rights</em>. Acara tersebut mengundang beberapa aktivis perdamaian dan pegiat HAM dari Sekolah Tinggi Filsafat Driyarkara dan seorang Pastor dari Je Suit Indonesia, Prof. Magnis Suseno, SJ (Romo Magnis), dari&nbsp;<em>Non-Governmental Organization&nbsp;</em>(NGO) seperti&nbsp;<em>Search For Common Ground</em>&nbsp;yang diwakili oleh Bapak Hardya Pranadipa yang juga merupakan Pemateri pada acara tersebut, serta Bapak Nur Kholim dari DKN Garda Bangsa sebagai fasilitator dan Artika Nuswaningrum dari&nbsp;<em>Sandya Institute</em>&nbsp;sebagai moderator.<span class="ql-cursor">﻿﻿﻿</span></p><p>Para peserta dari acara tersebut adalah perwakilan dari&nbsp;<em>United Nations (UN) Global Plus Jakarta</em>, Risalah Nahdlatul Ulama, IPRCA,&nbsp;Universitas Indonesia, Universitas Pertahanan Indonesia, Sekolah Tinggi Filsafat Islam Sadra Jakarta, Sekolah High Scope Indonesia dan SMA Negeri 2 Depok.</p><p>Pada sesi pertama Romo&nbsp;Magnis menjelaskan sejarah penegakkan HAM di Konstitusi&nbsp;Indonesia, dari perdebatan di Badan Penyelidik Usaha Persiapan Kemerdekaan Indonesia (BPUPKI) sampai dengan Amandemen IV Undang-Undang Dasar Republik Indonesia Tahun 1945 (UUD 1945), beliau mengingatkan bahwa HAM yang dijamin di dalam UUD 1945 adalah merupakan hasil jerih payah perjuangan Penegak HAM dan harus kita hargai. Beliau menekankan bahwa Konstitusi Indonesia sudah dengan sangat baik menjamin HAM di Indonesia, namun pada penerapannya masih banyak pelanggaran yang harus kita advokasikan demi tegaknya&nbsp;HAM sesuai Konstitusi.</p><p>Beliau melanjutkan dengan menjelaskan bahwa&nbsp;tegaknya HAM akan mewujudkan perdamaian, karena jika sesama warga negara saling menghargai dan mengamalkan hak dan kewajibannya masing-masing masyarakat akan menjadi lebih damai dan tentram, seperti&nbsp;rumusan pax et justitia bahwa tidak ada perdamaian tanpa keadilan.</p><p>Romo Magnis melanjutkan dengan mengingatkan bahwa Bangsa Indonesia adalah bangsa yang harus mengamalkan nilai persatuan dan menghargai perbedaan, seperti Para Pemuda Indonesia yang bersatu dan mendeklarasikan hal tersebut jauh sebelum Indonesia merdeka, yaitu pada Sumpah Pemuda 28 Oktober 1928, mereka terdiri dari berbagai macam etnis dan agama namun mereka dapat bersatu dan menggungcang dunia. Romo Magnis juga mengingatkan bahwa Islam di Indonesia merupakan Islam yang sangat toleran dan menghargai perbedaan karena mereka memiliki tradisi pluralisme yang kuat, terbukti dengan dihapusnya frasa “menjalankan syariat Islam bagi Pemeluk-Pemeluknya” dan dihapusnya frasa “beragama Islam” di dalam ketentuan menjadi Presiden dari Piagam Jakarta. Kita harus mengingat fakta bahwa Islam merupakan agama mayoritas, lebih dari 85% Warga Indonesia memeluk ajaran Islam, namun yang terjadi disini adalah&nbsp;justru mayoritas Muslim di Indonesia sangat menghargai kelompok minoritas, pada tanggal 18 Agustus 1945, Para Pendiri Bangsa sepakat menghapus hal tersebut demi persatuan dan penghargaan bagi seluruh rakyat Indonesia dengan tidak melihat latar belakang etnis maupun agama dan menjunjung tinggi Bhinneka Tunggal Ika.</p><p>Dalam situasi sekarang, populisme dan politik identitas merupakan hal yang mengkhawatirkan, karena Para Pendiri Bangsa telah berupaya dengan&nbsp;susah payah menyatukan Bangsa Indonesia dan upaya tersebut akan hancur ketika perpecahan terjadi. Nilai-nilai primordialisme yang mengunggulkan kelompok satu daripada lainnya merusak pluralisme dan tidak sesuai dengan semangat Para Pendiri Bangsa.</p><p>Dalam Pemilihan Kepala Daerah DKI Jakarta beberapa waktu lalu, sangat disayangkan bahwa nilai-nilai primordialisme menjadi acuan, bagi Kelompok Muslim Mayoritas mereka cenderung memilih Pemimpin Muslim karena nilai primordialisme, begitu pula pada Kelompok lainnya yang memilih Pemimpin yang identitasnya sama dengan mereka. Romo Magnis menekankan bahwa preferensi seseorang dalam memilih pemimpin yang sama identitasnya bukan berarti bahwa orang tersebut intoleran, karena di dalam demokrasi setiap individu bebas memilih sesuai dengan hati nuraninya, namun yang harus dipertanyakan adalah seberapa rasional pemilih memilih kandidat pemimpin tersebut, seharusnya di negara demokratis konstestasi yang terjadi adalah konstestasi ide-ide dan gagasan, bukan identitas, hal ini harus diterapkan oleh kelompok manapun, mengingat hal ini tidak hanya terjadi pada Kelompok Islam.</p><p>Sebelum menutup sesi tersebut, Romo Magnis juga membahas mengenai permasalahan Penistaan Agama, yang mana pada dasarnya beliau setuju dengan pengaturan yang terdapat di dalam Pasal 156&nbsp;Kitab Undang-Undang Pidana Indonesia (KUHP) untuk menghargai masyarakat Indonesia yang berpandangan bahwa agama memiliki peran yang sakral dan penting di dalam kehidupan, namun yang harus diperhatikan adalah niat dari apa yang disampaikan, jika terbukti bahwa niat tersebut memang untuk menodai ajaran agama yang sakral dengan merendahkan atau menyampaikan kebencian dan permusuhan, sudah sepantasnya dihukum, tetapi jika tidak terdapat niat yang bertujuan untuk menodai ajaran agama dan jika seseoarang hanya menyampaikan pendapatnya seharusnya tidak dihukum dan dilindungi HAM-nya.</p><p>Sesi selanjutnya disampaikan oleh Bapak Hardya Pranadipa dari&nbsp;<em>Search for Common Ground&nbsp;</em>(SFCG) sebuah NGO yang berasal dari Amerika Serikat yang bertujuan untuk menciptakan perdamaian dan transformasi konflik, dalam sesi tersebut beliau menjelaskan bahwa konflik itu sebenarnya netral,&nbsp;yang harus berubah adalah persepsi kita melihat konflik, dari yang sebelumnya negatif atau positif menjadi netral, karena konflik pada hakikatnya tidak bisa dihindari namun yang harus dihindari adalah respon negatif dari kita terhadap konflik dan kekerasan. Beliau berpandangan bahwa konflik yang terjadi di Jakarta dikarenakan PILAKADA memang tidak dapat dielakkan, karena masyarakat Jakarta sangat beragam dan keberagaman tersebut menimbulkan perbedaan pandangan dan perselisihan, beliau mengapresiasi tingkat kekerasan yang minim pada PILKADA tersebut, namun beliau mengundang seluruh masyarakat terutama Pemuda untuk mengubah persepsinya terhadap konflik yang terjadi selama PILKADA, bukan hanya sekedar menjadi ajang kemenangan atau kekalahan yang mutlak namun menjadi proses pendewasaan dan mengubah pandangan permusuhan menjadi penyelesaian secara berkerjasama karena pada akhirnya walaupun kita berbeda kita harus hidup berdampingan di Kota yang kita cintai ini agar terwujudnya Kota Jakarta yang beragam dan damai.</p><p>Public Relations Team</p><p>Sandya Institute</p>	t	2018-03-01 21:46:00	/storage/wink/images/DRRU1Ks4xnlcV2OjzoFT2S0ctcLcY4l4TbkRDSL6.jpeg		71312ba6-e972-4947-9e00-d154e9a25329	2020-03-13 15:15:32	2020-03-14 01:08:59	{"meta_description":null,"opengraph_title":null,"opengraph_description":null,"opengraph_image":null,"opengraph_image_width":null,"opengraph_image_height":null,"twitter_title":null,"twitter_description":null,"twitter_image":null}
\.


--
-- Data for Name: wink_posts_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wink_posts_tags (post_id, tag_id) FROM stdin;
51bc3d6e-0a35-4b12-aab9-bd8aa793d218	866bcabe-4596-43ba-9d51-6018bff89e89
05f64277-a240-45c1-afc4-4bd74c575ce9	866bcabe-4596-43ba-9d51-6018bff89e89
ed6fa1ed-ae90-4b9a-89c8-5cb69da7169b	866bcabe-4596-43ba-9d51-6018bff89e89
22d7a395-ef91-4859-940e-890fe14ebfa6	866bcabe-4596-43ba-9d51-6018bff89e89
dbd982f3-4f54-442a-b41e-52fc15ea5124	866bcabe-4596-43ba-9d51-6018bff89e89
b6927326-8126-4e57-83d7-7b8bc84005e7	866bcabe-4596-43ba-9d51-6018bff89e89
97355262-9b24-43be-8b7b-2e86caeb1167	866bcabe-4596-43ba-9d51-6018bff89e89
66992db8-839e-4bd3-b548-77a565f295ac	2805e399-1254-4dc7-af95-923a5c11a0b5
b29ca85d-5944-4950-bb3c-ccb869ef8523	2805e399-1254-4dc7-af95-923a5c11a0b5
6ac7c7f1-1aaf-47a5-9323-e542099687dd	2805e399-1254-4dc7-af95-923a5c11a0b5
3f535177-bd5d-42b5-933e-e98316a71ca5	2805e399-1254-4dc7-af95-923a5c11a0b5
3f535177-bd5d-42b5-933e-e98316a71ca5	a418d17a-7670-4ac8-a3f4-82b5862d52c8
3f535177-bd5d-42b5-933e-e98316a71ca5	078c9ce9-82cd-452c-a40f-1ecb3580bf09
3f535177-bd5d-42b5-933e-e98316a71ca5	2fe75e0f-6d66-4001-a20b-9b14a1672cb9
6ac7c7f1-1aaf-47a5-9323-e542099687dd	866bcabe-4596-43ba-9d51-6018bff89e89
\.


--
-- Data for Name: wink_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wink_tags (id, slug, name, created_at, updated_at, meta) FROM stdin;
866bcabe-4596-43ba-9d51-6018bff89e89	news	news	2020-03-13 15:44:57	2020-03-13 15:44:57	\N
2805e399-1254-4dc7-af95-923a5c11a0b5	publication	publication	2020-03-13 15:48:02	2020-03-13 15:48:02	\N
a418d17a-7670-4ac8-a3f4-82b5862d52c8	book-launch	book launch	2020-03-13 15:51:24	2020-03-13 15:51:24	\N
078c9ce9-82cd-452c-a40f-1ecb3580bf09	poem	poem	2020-03-13 15:51:24	2020-03-13 15:51:24	\N
2fe75e0f-6d66-4001-a20b-9b14a1672cb9	the-red-ribbon	the red ribbon	2020-03-13 15:51:24	2020-03-13 15:51:24	\N
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: wink_authors wink_authors_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_authors
    ADD CONSTRAINT wink_authors_email_unique UNIQUE (email);


--
-- Name: wink_authors wink_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_authors
    ADD CONSTRAINT wink_authors_pkey PRIMARY KEY (id);


--
-- Name: wink_authors wink_authors_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_authors
    ADD CONSTRAINT wink_authors_slug_unique UNIQUE (slug);


--
-- Name: wink_pages wink_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_pages
    ADD CONSTRAINT wink_pages_pkey PRIMARY KEY (id);


--
-- Name: wink_pages wink_pages_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_pages
    ADD CONSTRAINT wink_pages_slug_unique UNIQUE (slug);


--
-- Name: wink_posts wink_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_posts
    ADD CONSTRAINT wink_posts_pkey PRIMARY KEY (id);


--
-- Name: wink_posts wink_posts_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_posts
    ADD CONSTRAINT wink_posts_slug_unique UNIQUE (slug);


--
-- Name: wink_posts_tags wink_posts_tags_post_id_tag_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_posts_tags
    ADD CONSTRAINT wink_posts_tags_post_id_tag_id_unique UNIQUE (post_id, tag_id);


--
-- Name: wink_tags wink_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_tags
    ADD CONSTRAINT wink_tags_pkey PRIMARY KEY (id);


--
-- Name: wink_tags wink_tags_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wink_tags
    ADD CONSTRAINT wink_tags_slug_unique UNIQUE (slug);


--
-- Name: wink_posts_author_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wink_posts_author_id_index ON public.wink_posts USING btree (author_id);


--
-- Name: wink_tags_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wink_tags_created_at_index ON public.wink_tags USING btree (created_at);


--
-- PostgreSQL database dump complete
--

