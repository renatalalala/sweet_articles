--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category_id integer
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: articles_tags; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles_tags (
    id integer NOT NULL,
    article_id integer,
    tag_id integer
);


ALTER TABLE public.articles_tags OWNER TO apprentice;

--
-- Name: articles_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_tags_id_seq OWNER TO apprentice;

--
-- Name: articles_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_tags_id_seq OWNED BY articles_tags.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO apprentice;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO apprentice;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles_tags ALTER COLUMN id SET DEFAULT nextval('articles_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category_id) FROM stdin;
2	voluptas beatae deleniti	Sint voluptatem placeat eum. Et et molestiae sit vel. Perspiciatis consequuntur molestiae recusandae quo provident nobis. Illum qui doloribus possimus et laudantium quam tenetur. Saepe perspiciatis id atque.	articles/4/30/2013/voluptas-beatae-deleniti	2
3	voluptates aut non	Qui nihil quia. Odio ratione ut illum doloremque et. Qui dolor minus. Est nemo placeat numquam.	articles/4/30/2013/voluptates-aut-non	3
4	ipsa culpa vero	Velit dignissimos dolores eaque. Ut voluptate rerum quisquam. Doloribus aut corporis iste aut sint hic ea. Assumenda suscipit inventore illum.	articles/4/30/2013/ipsa-culpa-vero	1
5	esse perferendis ducimus	Autem ea nemo praesentium inventore quasi. Corrupti nostrum illo voluptate. Consequuntur dicta esse illo.	articles/4/30/2013/esse-perferendis-ducimus	4
6	maiores est vitae	Veniam rem aut. Minus excepturi libero. Tenetur sit consectetur deserunt et nemo. Earum qui nemo natus officiis impedit.	articles/4/30/2013/maiores-est-vitae	5
7	recusandae laboriosam voluptas	Ut hic perspiciatis voluptas. Omnis et harum autem quasi. Necessitatibus non commodi ut qui a sed perspiciatis. Reprehenderit accusantium minima cupiditate iste eos. Sunt dolorum sint neque qui autem.	articles/4/30/2013/recusandae-laboriosam-voluptas	6
8	id consequuntur aperiam	Dolores molestias enim excepturi. Quis iste hic dignissimos sit. Molestiae laboriosam nesciunt rerum et.	articles/4/30/2013/id-consequuntur-aperiam	1
9	architecto hic illo	Omnis natus consequuntur aut laborum maiores necessitatibus mollitia. Dolorem vitae nulla atque et aliquid. Non itaque voluptatum. Eum vel pariatur et nesciunt qui.	articles/4/30/2013/architecto-hic-illo	7
10	aut nostrum quas	Saepe aut omnis nostrum maiores repudiandae. Assumenda ab neque commodi tempora ut. Provident dolorum quia alias at expedita. Vel eum adipisci.	articles/4/30/2013/aut-nostrum-quas	8
11	fugit aut tenetur	Eveniet laborum molestiae et ea. Consequatur a veniam nulla. Sed libero quia eligendi qui ut.	articles/4/30/2013/fugit-aut-tenetur	4
12	sequi magnam rerum	Aliquid et cum harum enim. Sunt ut quia. Itaque nemo possimus labore recusandae. Architecto explicabo modi ut.	articles/4/30/2013/sequi-magnam-rerum	6
13	quod non odit	Error id velit. Aperiam adipisci cumque. Autem ea corporis recusandae provident aut. Voluptate itaque et est error quis consequatur aut. Occaecati error accusantium et.	articles/4/30/2013/quod-non-odit	2
14	dicta et non	Dolore dolorem aut nesciunt et placeat. Aut sapiente omnis totam omnis quis qui. Rem incidunt eos exercitationem consequatur quo ut. Dolores temporibus quia similique rerum.	articles/4/30/2013/dicta-et-non	1
15	totam assumenda et	Est quod sunt. Laudantium atque enim in aut. Nemo est non consequatur autem. Corrupti voluptas recusandae aliquid.	articles/4/30/2013/totam-assumenda-et	2
17	perspiciatis aspernatur excepturi	Dolor velit voluptas ex iste. Possimus illum provident doloribus debitis laudantium dignissimos quis. Omnis et libero in tempore qui rerum quia. Dolor iste pariatur reiciendis qui est dolorum. Natus reprehenderit dolorem debitis odit itaque enim.	articles/4/30/2013/perspiciatis-aspernatur-excepturi	2
18	sit doloremque dolorum	Sunt consequatur cumque. Iusto laboriosam voluptas aut quas perferendis. Consequatur consequatur aut qui est nam. Cupiditate deleniti eaque distinctio nisi ab voluptas. Natus vitae fugiat quis et possimus sunt.	articles/4/30/2013/sit-doloremque-dolorum	2
19	veniam earum facilis	Ut dicta recusandae quo dolorem distinctio. Beatae amet suscipit consequatur sapiente. Nisi neque autem voluptatem. Dolor est voluptatem est. Quos voluptas reprehenderit dolores mollitia.	articles/4/30/2013/veniam-earum-facilis	6
20	necessitatibus quae aperiam	Repellendus et sit eos. Natus non labore laboriosam non. Maxime minima atque rerum.	articles/4/30/2013/necessitatibus-quae-aperiam	4
21	odio facilis non	Quam architecto eveniet ea vitae. Reiciendis possimus unde. Natus numquam aut.	articles/4/30/2013/odio-facilis-non	3
22	debitis omnis illum	Quidem numquam voluptatem distinctio in corporis rerum. Et minus eos provident veniam sunt. Velit non ea. Nesciunt corrupti qui excepturi.	articles/4/30/2013/debitis-omnis-illum	3
23	et quo rerum	Ut rerum sit. Exercitationem distinctio ut iste omnis veniam id quia. Inventore ex aut non placeat. Omnis incidunt quas enim quibusdam corporis. Natus asperiores minima perspiciatis exercitationem impedit quia quod.	articles/4/30/2013/et-quo-rerum	7
24	illo deleniti in	Dolorem eum vero reiciendis optio aut. Quae eius sed voluptatem sed. Eos fugit neque. Velit sequi voluptatum omnis. Voluptatem doloribus ea a.	articles/4/30/2013/illo-deleniti-in	3
25	occaecati aspernatur consequatur	Voluptates porro expedita rerum laudantium. Atque occaecati velit id sit aut et ipsam. Eum quia eaque quia mollitia sint temporibus.	articles/4/30/2013/occaecati-aspernatur-consequatur	3
26	est est ipsam	Nostrum aut vitae consectetur error. Inventore error commodi quod. Sapiente aut similique consequatur et corrupti est quaerat. Ut quibusdam et iure adipisci nesciunt. Non magni tempore nam labore.	articles/4/30/2013/est-est-ipsam	2
27	et cupiditate eos	Ratione et maiores. Sed asperiores est recusandae eos id ut qui. Qui velit ut quae et.	articles/4/30/2013/et-cupiditate-eos	8
28	ut quibusdam asperiores	Vero repudiandae voluptatibus ducimus modi dolor repellendus. Et qui quam voluptatum quidem nihil dolore. Placeat quidem maxime tempora quos omnis perferendis. Adipisci accusantium unde libero placeat minima incidunt asperiores.	articles/4/30/2013/ut-quibusdam-asperiores	7
29	laboriosam accusantium dolore	Modi dolor consectetur explicabo commodi alias. Nam iste odit quasi ut mollitia nihil. Quaerat modi similique animi enim. Veniam numquam in nobis dicta culpa molestiae. Accusamus earum molestiae dicta doloremque magni voluptatibus totam.	articles/4/30/2013/laboriosam-accusantium-dolore	4
1	quo et ab	Maxime aut maiores nemo et enim perspiciatis. Sit deleniti numquam fuga dolor reiciendis natus. Maxime delectus ut consequuntur autem quasi. At in laboriosam cumque corporis assumenda nulla.	articles/4/30/2013/quo-et-ab	1
16	expedita quae beatae	Nihil voluptas sunt praesentium officia. Nisi ut occaecati. Ducimus perferendis enim est laborum. Enim enim quaerat dolores quia alias beatae numquam. Molestiae minima sed delectus accusantium vero vitae.	articles/4/30/2013/expedita-quae-beatae	5
30	enim et repudiandae	Minima libero deleniti molestiae provident voluptatem nostrum. Commodi in mollitia sapiente omnis. Excepturi hic corporis dolorem.	articles/4/30/2013/enim-et-repudiandae	7
31	cupiditate qui minus	Dolor aut ut. Tempora tenetur quas. Aut error ab voluptatem sed ipsam vitae. Enim nobis veniam nostrum ex minus accusamus.	articles/4/30/2013/cupiditate-qui-minus	6
32	et sit expedita	Fuga consequatur ex. Molestias cupiditate cum quia molestiae. Cum aut eveniet.	articles/4/30/2013/et-sit-expedita	7
33	quo minima consequuntur	Dolor fuga quis. Quis cum officia aut est dolores qui. Laudantium cupiditate accusamus voluptate omnis voluptates nemo. Odio totam corporis rerum facere ullam ex. Officia quo unde totam architecto libero ipsa.	articles/4/30/2013/quo-minima-consequuntur	1
34	voluptatum et quas	Cum molestiae ipsa. Qui hic perspiciatis enim qui. Sed consequatur consectetur aliquid repellendus qui similique ipsum. Animi qui voluptatum sapiente voluptatem.	articles/4/30/2013/voluptatum-et-quas	6
35	quo qui et	Quas dignissimos atque quia pariatur. Tenetur nobis ipsum commodi quis quibusdam officia. Rerum expedita cum iure aliquid amet. Placeat ut adipisci temporibus expedita.	articles/4/30/2013/quo-qui-et	4
36	voluptates minima voluptatum	Eius sed suscipit. Occaecati ut omnis eaque. Tenetur et modi autem vero.	articles/4/30/2013/voluptates-minima-voluptatum	3
37	dolor doloremque qui	Aliquam sunt atque qui ipsam hic. Aut perspiciatis magni. Accusantium voluptate soluta eum rerum commodi ut ullam. Itaque quia alias esse.	articles/4/30/2013/dolor-doloremque-qui	1
38	atque totam ut	Quia in consectetur fuga soluta. Quos cupiditate quisquam reprehenderit quia. Quaerat aut maiores dignissimos officiis voluptatem fugit. Et minus ab iure natus recusandae vel.	articles/4/30/2013/atque-totam-ut	5
39	impedit quam omnis	Velit nihil provident recusandae officia a rerum. Nam sint unde ut aut aliquid nisi qui. Deleniti perspiciatis ut repellat magnam eveniet aut. Consequatur ducimus quidem itaque ea.	articles/4/30/2013/impedit-quam-omnis	3
40	a nemo nostrum	Ducimus dolorum repellendus accusantium distinctio pariatur enim. Aut aut est mollitia qui. Distinctio possimus voluptates earum dolores nobis saepe. Molestiae ab debitis adipisci voluptatem rerum. Odio aut velit.	articles/4/30/2013/a-nemo-nostrum	4
41	occaecati voluptate eaque	Maxime dolor delectus tempore. Illum eum in rerum qui consequatur qui fugit. Suscipit qui ad accusamus ratione. Sapiente amet voluptas ad.	articles/4/30/2013/occaecati-voluptate-eaque	3
42	quis repellat rerum	Molestias eligendi pariatur voluptates. Neque similique ipsa doloremque rerum officiis asperiores. Repellat nulla tempora voluptas totam doloremque illo dolorem. Fuga consequatur dolore debitis nihil eveniet sequi. Dicta quibusdam ut ipsa culpa eum.	articles/4/30/2013/quis-repellat-rerum	3
43	laboriosam soluta in	In sint id molestiae magnam. Quo natus debitis inventore. Enim voluptas non enim ipsum in a. Perspiciatis nisi vero magnam tempore autem illo. Est et adipisci labore officia.	articles/4/30/2013/laboriosam-soluta-in	1
44	libero illum explicabo	Laboriosam iure dolor maiores. Nam blanditiis explicabo commodi adipisci animi eaque. Odit est eaque explicabo.	articles/4/30/2013/libero-illum-explicabo	4
45	quo quasi reiciendis	Eligendi sint rerum quasi adipisci. Dolorem sunt et. Nostrum eos est quos omnis. Vitae ea velit. Rerum magni laborum officia quaerat quisquam.	articles/4/30/2013/quo-quasi-reiciendis	7
46	nihil omnis impedit	Deserunt libero ipsum illo quaerat. Autem ea odio officia sed illo explicabo nam. Amet enim veniam. Voluptatibus labore ut laudantium et. Et fuga quis cum.	articles/4/30/2013/nihil-omnis-impedit	2
47	iusto et placeat	Officia delectus porro mollitia blanditiis reprehenderit. Exercitationem quis libero ut cupiditate ut eum. Commodi facere cupiditate neque. Aliquam dolores tenetur sit soluta explicabo ea tempora.	articles/4/30/2013/iusto-et-placeat	5
48	saepe minima non	Incidunt harum sint hic assumenda sunt at temporibus. Cupiditate et fugit qui delectus. Est ea est. Est sapiente saepe eos ea eveniet.	articles/4/30/2013/saepe-minima-non	3
49	nihil eos saepe	Ut numquam et ea delectus veniam. Voluptas facere porro molestiae quaerat. Nobis sint nostrum doloremque. Error nam non sunt inventore iste doloribus.	articles/4/30/2013/nihil-eos-saepe	6
50	vero dolores excepturi	Quae explicabo officia eaque. Reiciendis aut dolorem voluptas minima. Doloribus repellat reprehenderit voluptatem harum ipsam at beatae.	articles/4/30/2013/vero-dolores-excepturi	1
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: articles_tags; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles_tags (id, article_id, tag_id) FROM stdin;
2	1	2
3	2	3
4	3	4
5	4	5
6	5	6
7	6	7
8	7	8
9	8	9
10	9	10
11	10	11
12	11	12
13	12	13
14	13	14
15	14	15
16	15	16
17	16	17
18	17	18
19	18	19
20	19	20
21	20	21
22	21	22
23	22	23
24	23	24
25	24	25
26	25	26
27	26	27
28	27	28
29	28	29
30	29	30
31	30	31
32	31	32
33	32	33
34	33	34
35	34	35
36	35	36
37	36	37
38	37	38
39	38	39
40	39	40
41	40	41
42	41	42
43	42	43
44	43	44
45	44	45
46	45	46
47	46	47
48	47	48
49	48	49
50	49	50
51	50	51
52	1	52
53	1	53
54	3	54
55	3	55
56	3	56
57	4	52
58	5	57
59	5	58
60	5	59
61	10	59
62	10	54
63	11	53
64	12	59
65	12	60
66	12	59
67	13	61
68	14	62
69	14	53
70	14	60
71	15	53
72	15	57
73	16	56
74	16	59
75	16	60
76	17	59
77	17	63
78	18	59
79	18	55
80	19	52
81	19	61
82	20	61
83	20	57
84	21	55
85	21	58
86	21	63
87	22	54
88	23	58
89	24	63
90	26	53
91	26	63
92	26	54
93	27	61
94	27	57
95	28	54
96	28	62
97	29	55
98	29	62
99	31	58
100	31	54
101	32	55
102	32	57
103	33	54
104	34	64
105	34	59
106	34	63
107	36	63
108	36	52
109	36	60
110	37	64
111	38	52
112	38	59
113	39	60
114	39	53
115	39	65
116	40	52
117	40	57
118	42	63
119	43	54
120	44	58
121	44	57
122	45	65
123	45	59
124	45	56
125	47	54
126	48	58
127	49	59
128	50	55
129	50	61
130	50	58
\.


--
-- Name: articles_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_tags_id_seq', 130, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY categories (id, name, created_at, updated_at) FROM stdin;
1	Sports	2013-07-02 22:34:39.35633	2013-07-02 22:34:39.35633
2	programming	2013-07-02 22:35:15.579265	2013-07-02 22:35:15.579265
3	computer-world	2013-07-02 22:35:15.585289	2013-07-02 22:35:15.585289
4	HEALTH	2013-07-02 22:35:15.590038	2013-07-02 22:35:15.590038
5	business	2013-07-02 22:35:15.592837	2013-07-02 22:35:15.592837
6	sport	2013-07-02 22:35:15.595633	2013-07-02 22:35:15.595633
7	computer world	2013-07-02 22:35:15.600179	2013-07-02 22:35:15.600179
8	Business	2013-07-02 22:35:15.60304	2013-07-02 22:35:15.60304
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('categories_id_seq', 8, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
20130501004105
20130501004617
20130501010603
20130702183947
20130702190838
20130702223659
20130702225223
20130702230836
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY tags (id, name, created_at, updated_at) FROM stdin;
52	love	2013-07-02 23:00:14.767925	2013-07-02 23:00:14.767925
53	widget	2013-07-02 23:00:14.808252	2013-07-02 23:00:14.808252
54	jquery	2013-07-02 23:00:14.812603	2013-07-02 23:00:14.812603
55	computer	2013-07-02 23:00:14.816977	2013-07-02 23:00:14.816977
56	tech	2013-07-02 23:00:14.820639	2013-07-02 23:00:14.820639
57	music	2013-07-02 23:00:14.827452	2013-07-02 23:00:14.827452
58	random-tags	2013-07-02 23:00:14.831161	2013-07-02 23:00:14.831161
59	cloud	2013-07-02 23:00:14.834658	2013-07-02 23:00:14.834658
60	rails	2013-07-02 23:00:14.849148	2013-07-02 23:00:14.849148
61	ruby	2013-07-02 23:00:14.855194	2013-07-02 23:00:14.855194
62	medicine	2013-07-02 23:00:14.859098	2013-07-02 23:00:14.859098
63	art	2013-07-02 23:00:14.882376	2013-07-02 23:00:14.882376
64	hate	2013-07-02 23:00:14.947906	2013-07-02 23:00:14.947906
65	random	2013-07-02 23:00:14.976496	2013-07-02 23:00:14.976496
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('tags_id_seq', 65, true);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles_tags
    ADD CONSTRAINT articles_tags_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

