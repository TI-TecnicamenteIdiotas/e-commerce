--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg100+1)
-- Dumped by pg_dump version 13.4

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

DROP DATABASE IF EXISTS postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: postgres; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE postgres SET search_path TO 'public', 'heroku_2b0327cd37d414e', 'default_database';


\connect postgres

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
-- Name: mercadorias_digitais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mercadorias_digitais (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    imagem text
);


ALTER TABLE public.mercadorias_digitais OWNER TO postgres;

--
-- Name: mercadorias_digitais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mercadorias_digitais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mercadorias_digitais_id_seq OWNER TO postgres;

--
-- Name: mercadorias_digitais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mercadorias_digitais_id_seq OWNED BY public.mercadorias_digitais.id;


--
-- Name: mercadorias_fisicas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mercadorias_fisicas (
    id bigint NOT NULL,
    nome character varying(75) NOT NULL,
    descricao text NOT NULL,
    categoria character varying(25) NOT NULL,
    preco double precision,
    quantidade bigint NOT NULL,
    imagem text
);


ALTER TABLE public.mercadorias_fisicas OWNER TO postgres;

--
-- Name: produtos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produtos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produtos_id_seq OWNER TO postgres;

--
-- Name: produtos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produtos_id_seq OWNED BY public.mercadorias_fisicas.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    senha character varying(100) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: mercadorias_digitais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercadorias_digitais ALTER COLUMN id SET DEFAULT nextval('public.mercadorias_digitais_id_seq'::regclass);


--
-- Name: mercadorias_fisicas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercadorias_fisicas ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: mercadorias_digitais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mercadorias_digitais (id, nome, imagem) FROM stdin;
1	Star Wars: Knights of the Old Republic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1tmz.jpg
2	Rainbow Sea	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wx9.jpg
3	Crazy! Laundry Game: Don’t Hit Mom With Dangerous	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3957.jpg
4	The Luffeltera Renovator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38qk.jpg
5	Cat Dog Adventure Casual RPG	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38dz.jpg
6	Zoeti	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38ya.jpg
7	The Use of Life	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38zm.jpg
8	Feeding My Fish: Make Aquarium	\N
9	Elderand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38xo.jpg
10	Run Die Run Again	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38xr.jpg
11	Necromance-chan	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38zn.jpg
12	Dearend	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391r.jpg
13	Buddha Go	\N
14	Opus: Echo of Starsong	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qne.jpg
15	Universal Enemies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391t.jpg
16	El Paso, Elsewhere	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co321v.jpg
17	The Soldat with Twin Arms	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co397i.jpg
18	Hamster Panic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3935.jpg
19	BattleSound	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co393v.jpg
20	iii: Revolving Wonderland	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3223.jpg
21	My Child New Beginnings	\N
23	Sengoku Block Bashi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37xf.jpg
24	Entertainment Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3974.jpg
25	Zombieeee!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3975.jpg
26	MagiCraze	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3978.jpg
27	Hello, Goodbye, Summer Girl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co394l.jpg
28	Re:Kuroi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co397b.jpg
29	Bigroom Escape	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co397d.jpg
30	Aznana	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co397e.jpg
31	Operation Steel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co397f.jpg
32	Understanding of the Abyss	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co394m.jpg
33	The Hundred Year Kingdom	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3940.jpg
34	Immortal Life	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co393x.jpg
35	Brave’s Rage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391v.jpg
36	The Knight of Nephiart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3943.jpg
37	Mekururi Witch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391z.jpg
38	RPGolf Legends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40e2.jpg
39	The Anacrusis	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3912.jpg
40	Planet of Lana	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3910.jpg
41	Scars Above	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3klu.jpg
42	The Chant	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co392r.jpg
43	Paranormal Detective: Escape from the 90's	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391d.jpg
44	Vampire: The Masquerade - Bloodhunt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a3g.jpg
45	Salt and Sacrifice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co392e.jpg
46	Crossfire: Legion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co392n.jpg
47	Nimoyd	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co393s.jpg
48	Ketchup and Mayonnaise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co393u.jpg
49	Tamarindos Freaking Dinner	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40h3.jpg
50	Survival Machine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3964.jpg
51	World War Z: Aftermath	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39v5.jpg
52	Bramble: The Mountain King	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co396j.jpg
53	The Dark Pictures Anthology: House of Ashes - Pazuzu Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co393j.jpg
54	Jurassic World Evolution 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3916.jpg
55	Metal Slug Tactics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3929.jpg
56	Tiny Tina's Wonderlands	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co390m.jpg
57	Project Altheia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391q.jpg
58	Douri Hazure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co323d.jpg
59	Alfred Hitchcock: Vertigo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391k.jpg
60	Command Heroes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38z0.jpg
61	Tuned Turtle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co376c.jpg
62	Blood Drop	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38qp.jpg
63	Dying Light 2: Stay Human - Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9h.jpg
64	Marsupilami: Hoobadventure - Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h87.jpg
65	The Poisoned Roots	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38su.jpg
66	Rollers of the Realm: Reunion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38ui.jpg
67	Project Ferocious	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39uw.jpg
68	Manafinder	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38y2.jpg
69	Dice and the Tower of the Reanimator: Glorious Princess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38zr.jpg
70	Frogun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38zq.jpg
71	CORPSE FACTORY	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbh.jpg
72	Predator and Wreck	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co392g.jpg
73	Disciples: Liberation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co396l.jpg
74	Dark Seeker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3947.jpg
75	W.T.	\N
76	Isometric World: Frame of Mind	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9t.jpg
77	Alas Astra	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lb1.jpg
78	Chick Invasion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n1s.jpg
79	The Curse Of Mantras	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co32xg.jpg
80	The Lost and The Wicked	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co33ee.jpg
81	Gate to Site 8	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co33f5.jpg
82	Temple Hunters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34jv.jpg
83	Warriors Heaven	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb8.jpg
84	R-Naught	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h4t.jpg
85	Le Frenchie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co35k1.jpg
86	Inglorious Aztecs	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34oa.jpg
87	A Tale for Anna	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kw9.jpg
88	Rabbit Hole	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3y7j.jpg
89	Fillit	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zo0.jpg
90	SCP: Forgotten Facility	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co330f.jpg
91	At Your Feet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lr6.jpg
92	Jetpack Jack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co33r8.jpg
93	Azrael	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38h5.jpg
94	ThrustLander	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8e.jpg
95	Shadow Dreams	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h84.jpg
96	Samurai Slaughter House	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39q9.jpg
97	Unnatural Disaster	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pdh.jpg
98	Chibits	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n1k.jpg
99	Two Point Campus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31nr.jpg
100	Overland Weekend	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qqi.jpg
101	Pokémon Brilliant Diamond and Pokémon Shining Pearl Double Pack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze5.jpg
102	Blacksmith Bay	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mc6.jpg
103	Blurred Weird Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9z.jpg
104	Advanced Intelligence Surveillance Agency	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3l0r.jpg
105	Wizard Of Walls	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nap.jpg
106	Vagabond Starship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ogt.jpg
107	Mulligans Golf Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9q.jpg
108	百合婚姻介紹所	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hax.jpg
109	Rogue Sweeper	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hab.jpg
110	The Legend of Tianding	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38qm.jpg
111	Mechanic 8230	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb4.jpg
112	The Death Into Trouble	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co35hk.jpg
113	Gaia 2: Ancient Mysteries	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co377l.jpg
114	Line Leader	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co375u.jpg
115	Urbek	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39zb.jpg
116	Reverie Knights Tactics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31x1.jpg
117	Steel Sword Story S	\N
118	Blight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31yd.jpg
119	No More Light	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3q75.jpg
120	Universe For Sale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pso.jpg
121	Palworld	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co321t.jpg
122	OU	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3220.jpg
123	Grow: Song of the Evertree	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38u1.jpg
124	3D Chess: Nocca Nocca	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co390i.jpg
125	The Chewllers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co320p.jpg
126	Space Cats Tactics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37el.jpg
127	Polychoron	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38u2.jpg
128	Poulet Poulet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h54.jpg
129	Flying Things	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h88.jpg
130	iCorp	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co33bv.jpg
131	Tandem: A Tale of Shadows	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u9x.jpg
132	Gunborg: Dark Matters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co331v.jpg
133	Monark	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h57.jpg
134	Biota	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31ro.jpg
135	Salt 2: Shores of Gold	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31sl.jpg
136	A Robot's Journey	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31so.jpg
137	Jennifer Wilde: Unlikely Revolutionaries	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34tu.jpg
138	Crashtest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nm6.jpg
139	The Gecko Gods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39c9.jpg
140	Kosmos Connections	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34p1.jpg
141	Dark North	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3go8.jpg
142	Buggos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3glq.jpg
143	Cycled	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbb.jpg
144	Adventurers of Tamora	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3l19.jpg
145	Zoxel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3baa.jpg
146	The Gap	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37lq.jpg
147	Core Keeper	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co396n.jpg
148	Audio Clash: Battle of the Bands	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co396o.jpg
149	Blacktail	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co396p.jpg
150	The Dark Pictures Anthology Triple Pack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aap.jpg
151	Dragon Question	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3btf.jpg
152	Rustica	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ab6.jpg
153	Project: New Light City	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9w.jpg
154	Heart of a Bird in a Cage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3abw.jpg
155	Grimstar: Crystals are the New Oil!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zm9.jpg
156	System Under Surveillance	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aai.jpg
157	Undeadly	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3abp.jpg
158	Escape Within	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3glp.jpg
159	Niflhel Survival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3acb.jpg
160	Riley Short: Sibling Circuitry	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb1.jpg
161	Church of the Midnight Sailor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3acj.jpg
162	Scarleth	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8c.jpg
163	Car Mechanic Simulator 2021	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3acn.jpg
164	Riftbound	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3abu.jpg
165	Schematic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a9e.jpg
166	Luminary	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a9d.jpg
167	Slenderman	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a96.jpg
168	Dodonpachi Resurrection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a1w.jpg
169	Edenbrawl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u66.jpg
170	Sheepy: A Short Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9v.jpg
171	The Seagull	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qi4.jpg
172	They Are Here: Alien Abduction Horror	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a5m.jpg
173	Train Travel Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h3q.jpg
174	Swooping Justice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ham.jpg
175	Nightmare Frames	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a5q.jpg
176	ScooterFlow	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8d.jpg
177	Trial of Two	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a5s.jpg
178	Crystal Plague	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8w.jpg
179	TimeShifters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h5f.jpg
180	Moonlight In Garland	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a62.jpg
181	A World of Little Legends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a69.jpg
182	Somniphobia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a6g.jpg
183	Made to be Crushed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3adu.jpg
184	Danganronpa V3: Killing Harmony - Anniversary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a27.jpg
185	Fate of Persephone	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ba2.jpg
186	Rhythm Towers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ae4.jpg
187	Faerie's Bargain: The Price of Business	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3agh.jpg
188	Gun Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3agm.jpg
189	Wasteland Vacation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3han.jpg
190	Dark Survival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ba1.jpg
191	The Dinosaurs Are Here	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ah2.jpg
192	Silver Blue	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbe.jpg
193	Bluravity	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb9.jpg
194	Tizahl's Quest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ah7.jpg
195	Wild Souls	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hae.jpg
196	Spaceship For Newbies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3c8q.jpg
197	Starsand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ai7.jpg
198	Anvil Saga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3an3.jpg
199	Sthell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aip.jpg
200	The Last Poem: The Trials of Poe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb6.jpg
201	Hidden Office	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z9n.jpg
202	Overhaul	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3w05.jpg
203	Cleithrophobia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h5g.jpg
204	Thousand Lives	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ag6.jpg
205	Stitched: Mother's Nightmare	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b9z.jpg
206	Sci-Fantasy Defence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yvr.jpg
207	Aquarium Travels	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hai.jpg
208	Broken Legends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aed.jpg
209	Umami Grove	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hba.jpg
210	Renown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3haj.jpg
211	NeJ	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h4s.jpg
212	Country of Cities	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aez.jpg
213	Vidora's Silence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3afb.jpg
214	Acorn City: Tropical!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3haa.jpg
215	Bulkhead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h0i.jpg
216	Push Me	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3afc.jpg
217	Koboo: The Tree Spirit	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aff.jpg
218	Whitehaven	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3afi.jpg
219	Comic Company Manager	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3afx.jpg
220	Zombie Hustle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bc1.jpg
221	Danganronpa 2: Goodbye Despair - Anniversary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a24.jpg
222	Danganronpa: Trigger Happy Havoc - Anniversary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a20.jpg
223	Fatal Frame: Maiden of Black Water	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdo.jpg
224	Trek to Yomi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3993.jpg
225	Wizard with a Gun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co398y.jpg
226	Devolver Tumble Time	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3994.jpg
227	Demon Throttle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39mc.jpg
228	Against	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qc.jpg
229	Unplugged: Air Guitar	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39sq.jpg
230	Avatar: Frontiers of Pandora	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39kz.jpg
231	Sushi Ben VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qg.jpg
232	A Plague Tale: Requiem	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qi.jpg
233	Slime Rancher 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39pt.jpg
234	Replaced	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39rf.jpg
235	Eiyuden Chronicle: Rising	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39py.jpg
236	Redfall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39po.jpg
237	Marvel's Guardians of the Galaxy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39pu.jpg
238	Nerf Ultimate Championship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39q1.jpg
239	Mario + Rabbids Sparks of Hope	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3d6z.jpg
240	Just Dance 2022	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co398r.jpg
241	Seasonspree	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39lt.jpg
242	OtherWordly	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co397h.jpg
243	Bullet Runner	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ba5.jpg
244	Archvale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co398e.jpg
245	Demon's Mirror	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co398g.jpg
246	Slime Heroes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co398h.jpg
247	Severed Steel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p7f.jpg
248	BATS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co398j.jpg
249	Raji: An Ancient Epic - Enhanced Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uq1.jpg
250	We Are OFK	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39bw.jpg
251	A Little To The Left	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co399a.jpg
252	Please Be Happy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39cj.jpg
253	Witchy Life Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39cn.jpg
254	Passpartout 2: The Lost Artist	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39dx.jpg
255	Dreamland Confectionery	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39jl.jpg
256	Cat Designer Mocha	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39l0.jpg
257	Stranger of Paradise: Final Fantasy Origin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wso.jpg
258	Next Space Rebels	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39tx.jpg
259	Wartales	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a3a.jpg
260	Ixion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39ra.jpg
261	Tom Clancy's Rainbow Six Extraction: Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gn1.jpg
262	Marsupilami: Hoobadventure - Tropical Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h86.jpg
263	Final Fantasy XIV: Endwalker - Collector's Edition	\N
264	Mario Party Superstars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ga8.jpg
265	Danganronpa: Decadence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a1y.jpg
266	Advance Wars 1+2: Re-Boot Camp	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a04.jpg
267	Game & Watch: The Legend of Zelda	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39zz.jpg
268	Danganronpa S: Ultimate Summer Camp	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9e.jpg
269	Power Pro Kun Pocket R	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39zp.jpg
270	Marvel's Guardians of the Galaxy: Cloud Version	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39zu.jpg
271	Super Robot Wars 30	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h59.jpg
272	Spirit of the Island	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a02.jpg
273	The Swordsmen X: Survival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a0g.jpg
274	Tales of Wild	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a0h.jpg
275	Mohism	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a0p.jpg
276	Tom Clancy's Rainbow Six Extraction: Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gmv.jpg
277	Ripout	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbi.jpg
278	Flowstone Saga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39xu.jpg
279	River City Girls 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39xl.jpg
280	FAR: Changing Tides	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qz.jpg
281	Lakeburg Legacies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39tz.jpg
282	Silt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39tu.jpg
283	Soulstice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39sa.jpg
284	Warhammer 40,000: Chaos Gate - Daemonhunters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39r6.jpg
285	Tinykin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39rc.jpg
286	SacriFire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39rk.jpg
287	Citizen Sleeper	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39u3.jpg
288	Project Warlock II	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39r9.jpg
289	Winter Survival Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39un.jpg
290	Conway: Disappearance at Dahlia View	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39v0.jpg
291	Immortality	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ai5.jpg
292	Fat 2 Fit!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39rz.jpg
293	QuietMansion1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39vu.jpg
294	Lust From Beyond: M Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39w3.jpg
295	BloodRayne Betrayal: Fresh Bites	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39xm.jpg
296	Juno	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ba9.jpg
297	Attack of the Karens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lrd.jpg
298	Lavalamp	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31wr.jpg
299	Hindsight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xvh.jpg
300	OlliOlli World	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xvs.jpg
301	Aztech Forgotten Gods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xvu.jpg
302	Oxenfree II: Lost Signals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391g.jpg
303	GetsuFumaDen: Undying Moon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xvj.jpg
304	THE HOUSE OF THE DEAD: Remake	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xvx.jpg
305	SH1-R0	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xsp.jpg
306	Lil Gator Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xwa.jpg
307	Intellivision Collection 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qfb.jpg
308	Blade & Soul 2	\N
309	Patient Zero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y0f.jpg
310	Lorn's Lure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y12.jpg
311	Spellstorm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y17.jpg
312	Spirit Swap: Lofi Beats to Match-3 To	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y14.jpg
313	TextSpaced	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xkk.jpg
314	WRC 10	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xrz.jpg
315	Dirge	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xoy.jpg
316	Andro Dunos II	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xk4.jpg
317	Anuchard	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wr0.jpg
318	Crystal	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wri.jpg
319	Arcade Spirits: The New Challengers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wsh.jpg
320	Brewmaster	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2x3f.jpg
321	Circle Empires Tactics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wtq.jpg
322	The Tower Between Us	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wtx.jpg
323	Dragoneila	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wub.jpg
324	Arcade Paradise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wvp.jpg
325	Ghoul Grind: Night of the Necromancer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wxy.jpg
326	AdventureQuest 8-Bit: Dungeons & DoomKnights	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wya.jpg
327	Hyper-5	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wzx.jpg
328	Zenith: The Last City	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aab.jpg
329	Ion Fury: Aftershock	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2x79.jpg
330	The Garden Path	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co36no.jpg
331	It's Mealtime!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3cup.jpg
332	Star Trek: Legends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y1p.jpg
333	Memories Off: Innocent Fille - Noelle Fullbloom	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wm7.jpg
334	After School Afterlife	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ydj.jpg
335	Shantae	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39y4.jpg
336	Let's Build a Zoo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yrn.jpg
337	Nyaruru Fishy Fight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ysp.jpg
338	Merek's Market	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zej.jpg
339	Space Mavericks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yy0.jpg
340	Search	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z0d.jpg
341	Operation Airsoft	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z2i.jpg
342	Exodus H	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yqe.jpg
343	THE NOMADS OF DRAGON STORMS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z4r.jpg
344	Ember Knights	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co395p.jpg
345	Shattered Ninja	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z4h.jpg
346	Black Somnia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z7h.jpg
347	Fi da Puti Samurai	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z7q.jpg
348	Expeditions: Rome	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ub5.jpg
349	Made in Abyss: Binary Star Falling into Darkness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zay.jpg
350	Voronica Cleans House: a Vore Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2z3l.jpg
351	BADA Space Station	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ypm.jpg
352	Laid-Back Camp: Have a nice day! - Limited Edition	\N
353	Laid-Back Camp: Have a nice day!	\N
354	NeoFlux Drift	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3g87.jpg
355	Samurai Warriors 5: Ikkitousen Box	\N
356	Game Director Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ybd.jpg
357	Project to Escape	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yd2.jpg
358	Damnview Stories: No Vacancy	\N
359	Farming Simulator 22	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b42.jpg
360	Vampire: The Masquerade – Coteries of New York & Shadows of New York	\N
361	Beholder 2: Big Brother Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ytg.jpg
362	In Sound Mind: Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ytm.jpg
363	Total War: WARHAMMER III - Limited Edition	\N
364	Worms Rumble: Fully Loaded Edition	\N
365	The Dungeon Of Naheulbeuk: The Amulet Of Chaos - Chicken Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b95.jpg
366	Dairoku: Agents Of Sakuratani	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ytu.jpg
367	Gord	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ygw.jpg
368	Recipe for Disaster	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ynl.jpg
369	Lonefarm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y6p.jpg
370	Elements	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wip.jpg
371	Lost Eidolons	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30ud.jpg
372	Iron Corbo: Kung Fu Janitor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wdo.jpg
373	Pokémon Legends: Arceus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3d03.jpg
374	Project Canopy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vfk.jpg
375	Dwarf Journey	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uc4.jpg
376	For a Vast Future	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2u87.jpg
377	Big Buck World	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h91.jpg
378	GangV: Battle Royale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ual.jpg
379	Pokémon Shining Pearl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b9s.jpg
380	Imp of the Sun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ucn.jpg
381	Dewdrop Dynasty	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uf1.jpg
382	/fit/ fantasy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uk1.jpg
383	Toasty: Ashes of Dusk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ugj.jpg
384	Space Warlord Organ Trading Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uii.jpg
385	Aeterna Noctis	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3129.jpg
386	Teenage Mutant Ninja Turtles: Shredder's Revenge	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2utm.jpg
387	Drivrooom	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ue4.jpg
388	Pokémon Brilliant Diamond	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b9t.jpg
389	Final Fantasy VII: Ever Crisis	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tz1.jpg
390	Final Fantasy VII: The First Soldier	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tyz.jpg
391	Sorrowself	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tnz.jpg
392	Terra Trilogy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yrx.jpg
393	Therefore	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tr3.jpg
394	Golden Hour	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tr8.jpg
395	Residual	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b2r.jpg
396	Scarlet Hood and the Wicked Wood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ts3.jpg
397	Ruffy and the Riverside	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tvj.jpg
398	Mayhem Brawler	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tu2.jpg
399	SciGirl: The Internship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tw6.jpg
400	Flow's Island	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tvm.jpg
401	Slow Damage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tv7.jpg
402	PUBG: NEW STATE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3952.jpg
403	Farlanders	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2txw.jpg
404	SIFU	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tyi.jpg
405	Grapple Dog	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tyl.jpg
406	A Musical Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2utt.jpg
407	Survival Quiz CITY	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2x4j.jpg
408	Apollo 3000: Wild Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uv1.jpg
409	Lila’s Sky Ark	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uyq.jpg
410	Re:Zero - The Forbidden Book and the Mysterious Spirit	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vqn.jpg
411	Chenso Club	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vr2.jpg
412	Summertime Madness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vve.jpg
413	Worship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vzc.jpg
414	Thymesia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2w5c.jpg
415	Caravan SandWitch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2w5i.jpg
416	Arctic Awakening	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2w6j.jpg
417	Shadow Tactics: Blades of the Shogun - Aiko’s Choice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p77.jpg
418	Asterix & Obelix: Slap Them All!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n2n.jpg
419	Epic Chef	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2weh.jpg
420	Moonglow Bay	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wa8.jpg
421	War Hospital	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2weu.jpg
422	Warhammer Age of Sigmar: Tempestfall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wf1.jpg
423	Soup Pot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co393g.jpg
424	Nobody Saves the World	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wcz.jpg
425	Puzzling Places	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vpk.jpg
426	Outer Wilds: Echoes of the Eye	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wbp.jpg
427	Kapital: Sparks of Revolution	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vma.jpg
428	Life is Strange: Before the Storm Remastered	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vfx.jpg
429	The Magnilo Case	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2v1f.jpg
430	Kandria	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2v4y.jpg
431	Dan-Ku-Ga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3haq.jpg
432	Assault Shell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2v94.jpg
433	Legends of Astravia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2v9v.jpg
434	Slaughter League	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vbv.jpg
435	A Shiba Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vbx.jpg
436	A Frog's Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vc7.jpg
437	Sephonie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vd6.jpg
438	Treasure Islands	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vda.jpg
439	CIPHERCELL	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vel.jpg
440	Goblin Stone	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vhm.jpg
441	Life is Strange Remastered Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vfr.jpg
442	Hitman Sniper: The Shadows	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39ti.jpg
443	Life is Strange Remastered	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vfw.jpg
444	Fish Tanks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vvm.jpg
445	Decision: Red Daze	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aje.jpg
446	Classic Racers Elite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gn4.jpg
447	Dreamless: The Madness from the Sea	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zjd.jpg
448	Biolum	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h0h.jpg
449	Survival Instinct	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xyy.jpg
450	Rogue Masters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ync.jpg
451	Durdanto	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p9r.jpg
452	Infraspace	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co385h.jpg
453	Farathan	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha7.jpg
454	Kisekimura	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co315y.jpg
455	The Great Hide n Seek Expawdition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co35o3.jpg
456	A Pretty Odd Bunny	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kvx.jpg
457	Univers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co342w.jpg
458	If Fusion Were That Easy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co32x0.jpg
459	Miko Adventures Puffball	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3od4.jpg
460	Block'Em!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a0x.jpg
461	Where's My Phone?!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n67.jpg
462	Journey for the Crown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8u.jpg
463	Adventure Light	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3l16.jpg
464	Grim Ember	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34o1.jpg
465	Bygone Dreams	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3moj.jpg
466	Junk Architect	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co36o6.jpg
467	Supa Birdie Boi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co33ix.jpg
468	Parkour Bot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3quo.jpg
469	Tsukisas Arena	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31lm.jpg
470	RU77	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9s.jpg
471	Spacebus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34z0.jpg
472	Zero-Point	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co336g.jpg
473	Technos Arcade 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co314q.jpg
474	Data East Arcade 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co314v.jpg
475	Gaelco Arcade 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co314y.jpg
476	Atari Arcade 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3156.jpg
477	Pair of Aces	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qrq.jpg
478	Paco	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbg.jpg
479	Sekrets of the Dungeon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3glt.jpg
480	Antumbra: Vile Shards	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lk8.jpg
481	Hauma	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co373r.jpg
482	Savage Steel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h3p.jpg
483	Uberlaufer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pau.jpg
484	Block Machine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mdt.jpg
485	Belle Boomerang	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31jt.jpg
486	Fast & Furious: Spy Racers Rise of Sh1ft3r	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3grr.jpg
487	My Singing Monsters Playground	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zeb.jpg
488	Made in Abyss: Binary Star Falling into Darkness - Collector's Edition	\N
489	Colossus Down: Destroy'em Up Editon	\N
490	Dying Light 2: Stay Human - Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9j.jpg
491	Nilspace	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31il.jpg
492	Crew Crew Blocks	\N
493	Neko Min	\N
494	Parasight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31nd.jpg
495	Black One Blood Brothers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb7.jpg
496	Wake out of Twilight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3har.jpg
497	Bounty Brawl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mio.jpg
498	The Ways of Uron	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co32yq.jpg
499	Reverse Defenders	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40oc.jpg
500	Captain of Industry	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31hc.jpg
501	Gross	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31iw.jpg
502	Think About Aliens!	\N
503	Fusion Relics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3haf.jpg
504	Vorlaw: Space Opera	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3os3.jpg
505	Solargene	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9k.jpg
506	Smart Fart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34po.jpg
507	Instruments of Destruction	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co35aj.jpg
508	Insula: Bounty Royale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co317l.jpg
509	The Smurfs: Mission Vileaf	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xwf.jpg
510	Dragon Quest X Offline	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co318t.jpg
511	Marsupilami: Hoobadventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31am.jpg
512	Sonic Rangers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31cw.jpg
513	Wizardry VA	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31a6.jpg
514	Metal Max Xeno Reborn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31ah.jpg
515	Cartagra: HD Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31bj.jpg
516	Punk Wars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40ff.jpg
517	Zodiac Legion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31ie.jpg
518	Nummels	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3q9b.jpg
519	Cardboard Invasion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gix.jpg
520	Broken Veil	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mlh.jpg
521	Tyrion Cuthbert: Attorney of the Arcane	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9r.jpg
522	Highrise City	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30b2.jpg
523	Epiphany City	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30ck.jpg
524	Kabaret	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30e3.jpg
525	Against the Storm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ghu.jpg
526	DREAMLANDER	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30f2.jpg
527	NeuroNet: Mendax Proxy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v7w.jpg
528	TrickShot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co330i.jpg
529	SilverStarChess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30py.jpg
530	Pandorex	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30iu.jpg
531	Next Door	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30m0.jpg
532	Adeona	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30ju.jpg
533	White Shirts Red Blood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n79.jpg
534	SnowRunner - Season 6: Haul & Hustle	\N
535	SnowRunner – Season 7: Complete & Conquer	\N
536	Fort Boyard: Nouvelle Edition - Toujours Plus Fort	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3w24.jpg
537	Few Nights More	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zn2.jpg
538	Dynopunk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30ao.jpg
539	Redemption of the Damned	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30a5.jpg
540	Tom Clancy’s The Division: Heartland	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zmm.jpg
541	Treasures of the Aegean	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2znm.jpg
542	Battle Spirits: Connected Battlers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zng.jpg
543	HATS Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zoj.jpg
544	Red Rust	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40g6.jpg
545	Tribes of Tis'te	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zuq.jpg
546	Intellivision Collection 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co316x.jpg
547	The Bitmap Brothers Collection 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zyn.jpg
548	Master of Magic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co300e.jpg
549	They Always Run	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zzo.jpg
550	Dark Deity	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3226.jpg
551	June	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3039.jpg
552	INTERASTRA	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co302n.jpg
553	Cards of the Dead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3099.jpg
554	The Past Within	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30a6.jpg
555	SnowRunner – Season 8: New Expansion	\N
556	Hexahedra	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30mt.jpg
557	Survivals Unknown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30p0.jpg
558	Agent 64: Spies Never Die	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30rq.jpg
559	Motor Town: Behind The Wheel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ped.jpg
560	Island and Factories	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wql.jpg
561	Bearable Nightmares	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m1g.jpg
562	Tavern Master	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dfr.jpg
563	Eternal Cycle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hak.jpg
564	Midautumn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nvc.jpg
565	A Museum of Self & Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kvm.jpg
566	Warcry: Challenges	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39v1.jpg
567	VanillaBeast: Ace in the Hole	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha4.jpg
568	Chaos Galaxy 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n03.jpg
569	Larcenauts	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qa.jpg
570	A Guidebook of Babel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co323o.jpg
571	Wild West Dynasty	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co396e.jpg
572	Acolyte	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kyz.jpg
573	The Bar Fight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38ka.jpg
574	Plugged	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vg8.jpg
575	Dipod: The Foot Legacy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zi8.jpg
576	The Man Came Around	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38ow.jpg
577	PolyCore Defense	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31gm.jpg
578	Bipgolf	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30qi.jpg
579	My Friend Peppa Pig	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3irs.jpg
580	Human Vs Evil	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37zg.jpg
581	Sol Cresta	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3j8n.jpg
582	Anguna: Scourge of the Goblin King	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30vc.jpg
583	Mighty DOOM	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30vh.jpg
584	Sophie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30xi.jpg
585	One More Island	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p7g.jpg
586	Wrath of the Mad King	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nfa.jpg
587	Eternity Guards	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hav.jpg
588	Star Matter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9m.jpg
589	Pj Masks: Heroes of The Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3grq.jpg
590	Bunny's Buddy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mni.jpg
591	Syndication Cyberpunk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gia.jpg
592	GunFu Fighter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hag.jpg
593	Mortal Sin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co311y.jpg
594	Janosik 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aji.jpg
595	Wildsilver	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ajj.jpg
596	Templar Castle Builder	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hah.jpg
597	Beyond A Steel Sky: Utopia Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zcr.jpg
598	Treasures of the Aegean: Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze9.jpg
599	Call of the Sea: Norah’s Diary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u8l.jpg
600	Prinny Presents: NIS Classics Vol 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ujg.jpg
601	Horizon Forbidden West: Collector's Edition	\N
602	Iron Harvest: Complete Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co409p.jpg
603	My Universe: My Baby - New Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdp.jpg
604	Crown Trick: Special Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zm8.jpg
605	Death's Gambit: Afterlife - Definitive Edition	\N
606	Call of Duty: Vanguard - Ultimate Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zf1.jpg
607	Nascar 21: Ignition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze0.jpg
608	Nascar 21: Ignition - Champion's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze1.jpg
609	Resident Evil 25th Episode Selection vol. 2	\N
610	Resident Evil 25th Episode Selection vol. 3	\N
611	Prinny Presents: NIS Classics Volume 2 - Deluxe Edition	\N
612	Tiny Tina's Wonderlands: Next Level Edition	\N
613	Courage: The Videogame	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3toz.jpg
614	Bassmaster Fishing 2022	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zg6.jpg
615	Sick	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3sxm.jpg
616	Tiny Tina's Wonderlands: Chaotic Great Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t2s.jpg
617	Saints Row: Platinum Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t3r.jpg
618	Saints Row: Gold Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t3s.jpg
619	Marvel's Guardians of the Galaxy: Digital Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t3u.jpg
620	Battlefield 2042: Ultimate Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t3w.jpg
621	Battlefield 2042: Gold Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t3v.jpg
622	My Universe: Doctors and Nurses	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3za6.jpg
623	My Universe: Interior Designer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdw.jpg
624	My Universe: Puppies and Kittens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdt.jpg
625	Dalruan: World of Magic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t5n.jpg
626	Hatch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t5t.jpg
627	The Lord of the Parties	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wy7.jpg
628	Timothy and the Tower of Mu	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3tld.jpg
629	RollMe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3tly.jpg
630	Resident Evil 25th Episode Selection vol. 1	\N
631	Uncharted: Legacy of Thieves Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3swl.jpg
632	Kemco RPG Selection Vol. 8	\N
633	SpellForce III: Reforced	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3tup.jpg
634	Sakura no Kumo: Scarlet no Koi - Complete Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zo5.jpg
635	Burn Me Alive 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ue6.jpg
636	Memories	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uec.jpg
637	Infinite Cube Defense	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uef.jpg
638	The Pioneers: Surviving Desolation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uho.jpg
639	Island of Winds	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uji.jpg
640	Yonder: The Cloud Catcher Chronicles - Enhanced Edition	\N
641	Alwa's Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zjq.jpg
642	DarkTimes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ulx.jpg
643	TRACHI: AUTONOMY	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3umf.jpg
644	Voice of Cards: The Isle Dragon Roars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wsp.jpg
645	Wild West Z	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uqb.jpg
646	Alchemistry	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uq9.jpg
647	Summoner's Mess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uqe.jpg
648	Eiga Sumikko Gurashi: Aoi Tsukiyo no Mahou no Ko - Game de Asobou! Eiga no Sekai	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ujl.jpg
649	The King Of Fighters XV: Day One Edition	\N
650	Halo Infinite: Steelbook Edition	\N
651	Beyond a Steel Sky: Beyond a Steel Book Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zcq.jpg
652	Shikon-X Astro Defense Fortress	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxs.jpg
653	Kuukiyomi 1 2 3+	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wx0.jpg
654	Citizens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uis.jpg
655	Barn Finders: Bid Wars	\N
656	Bubble Star Party	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u8u.jpg
657	Trains Continental	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u8v.jpg
658	Wuchang: Fallen Feathers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uds.jpg
659	Deathsmiles I & II: Gothic ha Mahou Otome Love Max Edition	\N
660	Sakura no Kumo: Scarlet no Koi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zo4.jpg
661	Forza Horizon 5: Deluxe Edition	\N
662	Forza Horizon 5: Premium Edition	\N
663	Nascar 21: Ignition - Day 1 Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze2.jpg
664	Assetto Corsa Competizione	\N
665	Assetto Corsa Competizione: Day One Edition	\N
666	Horizon Forbidden West: Launch Edition	\N
667	OneShot: Aftermath	\N
668	Uncharted: The Lost Legacy - Remaster	\N
669	Uncharted 4: A Thief's End - Remaster	\N
670	UniDuni	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxq.jpg
671	Campfire Tales	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rfx.jpg
672	Decent Into Sector 32	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qxo.jpg
673	Terebron	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qys.jpg
674	A.R.C: Alien raid combat	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qzh.jpg
675	KaraDedeler 1989	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qzj.jpg
676	Survival Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r1l.jpg
677	Quartet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qt7.jpg
678	Behind Glass: Aquarium Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r1y.jpg
679	Mega Monster Party	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r38.jpg
680	Earth Guard: Egypt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r5w.jpg
681	Destiny 2: The Witch Queen Deluxe + Bungie 30th Anniversary Bundle	\N
682	Angel's Tale: An extraordinary love story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r84.jpg
683	Incision	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r8d.jpg
684	Destiny 2: Bungie 30th Anniversary Pack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wa7.jpg
685	Monster Rancher 1 & 2 DX	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r2b.jpg
686	Butterfly Soup 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qbd.jpg
687	Forgive Me Father	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pmy.jpg
688	Minna no Radio Controlled GP + Variety Set	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3poc.jpg
689	Marvel's Midnight Suns	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ofr.jpg
690	Cult of the Lamb	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ofy.jpg
691	Park Beyond	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ogm.jpg
692	Jumanji: The Curse Returns	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ogb.jpg
693	Lineage W	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdy.jpg
694	Heavy Duty Challenge	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p7j.jpg
695	Heavy Cargo: The Truck Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pae.jpg
696	Ultimate Heroes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pak.jpg
697	Blasphemous: Wounds of Eventide	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p5h.jpg
698	The Serpent Rogue	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p5l.jpg
699	Oaken	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p5p.jpg
700	Project Relic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p6v.jpg
701	Scorchlands	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p5u.jpg
702	Absylon 7	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p5z.jpg
703	Pups & Purrs Animal Hospital	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pen.jpg
704	Grandmaster Chess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r8m.jpg
705	Smashing the Battle: Ghost Soul - Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rml.jpg
706	R.U.N	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rl3.jpg
707	Hellsweeper VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rjc.jpg
708	Lifing	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zd1.jpg
709	Magic Stone Guardians	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wyb.jpg
710	HyperViolent	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3sid.jpg
711	Slimefrog	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3sk7.jpg
712	Silo27: Crashlanded	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3slx.jpg
713	Awaken: Chaos Era	\N
714	Retro Classix: Fighter's History	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wpb.jpg
715	Star Wars Racer and Commando Combo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3sr6.jpg
716	Football Manager 2022	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zf6.jpg
717	Panic at Community	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ssv.jpg
718	Let's Sing 2022	\N
719	Saints Row: Notorious Edition	\N
720	Horizon Forbidden West: Special Edition	\N
721	Puzzle Light: Connect	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3stb.jpg
722	American Theft 80s	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3suq.jpg
723	Corpse Mansion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zbi.jpg
724	Yuoni: Sunset Edition	\N
725	Pizza Party	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3s6q.jpg
726	Zoey: My Hentai Sex Doll	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3s58.jpg
727	Gunvolt Chronicles: Luminous Avenger iX 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwv.jpg
728	Grim Tranquility	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rj9.jpg
729	Oshiri Tantei: Pupu Mirai no Meitantei Toujou!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rq5.jpg
730	Big Brain Academy: Brain vs. Brain	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zhw.jpg
731	Fursan al-Aqsa: The Knights of the Al-Aqsa Mosque	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3sqx.jpg
732	Chicken Defender	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rui.jpg
733	Three Kingdom: The Journey	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ruk.jpg
734	Theatre of War	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rv1.jpg
735	NeverDeath	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rwj.jpg
736	Kingdom of Atham: Crown of the Champions	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3spz.jpg
737	Fading Afternoon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co402f.jpg
738	Murder Diaries 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3s04.jpg
739	Warriors of the Nile 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wq1.jpg
740	Parfait Remake	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwu.jpg
741	Jigsaw Puzzle Dreams	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3sjr.jpg
742	Aebal	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3s6f.jpg
743	Saints Row	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ofs.jpg
744	Space Invaders Forever: Special Edition	\N
745	Dead by Daylight: 5th Anniversary Edition	\N
746	Castle of Shikigami 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co402d.jpg
747	Hyper Treasure: Macaronic Labyrinth	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xoe.jpg
748	Shikabane Kurai no Bouken Meshi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xzd.jpg
749	Dragon Quest X Offline: Deluxe Edition	\N
750	Echoes of Mana	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xp4.jpg
751	Disciples: Liberation - Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co408v.jpg
752	Kingslayers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xmp.jpg
753	The Monster Within	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xqc.jpg
754	Payload	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xrv.jpg
755	Coffin Mall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3y07.jpg
756	Get Stuffed!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yva.jpg
757	Black Widow: Recharged	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z5l.jpg
758	Toilet Flushing Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yvm.jpg
759	What Lies in the Multiverse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ywp.jpg
760	Tanhaji: The Lion Maratha Warrior of Ch. Shivaji	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z5n.jpg
761	AstroBike	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xmh.jpg
762	Criminal Russia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xm2.jpg
763	Choo-Choo Charles	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xez.jpg
764	Halloween Snowball Bubble	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zc9.jpg
765	Guardians of Greenheart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wzl.jpg
766	Hyper Bullet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wzy.jpg
767	Chill Corner	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xyt.jpg
768	Phantom Blade: Executioners	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x5r.jpg
769	Emote Farming Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x5q.jpg
770	River City Saga: Three Kingdoms	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x5t.jpg
771	Vengeance is Mine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x68.jpg
772	Red Goes Faster	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x69.jpg
773	Wanted: Dead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x65.jpg
774	Bassmaster Fishing 2022: Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co409n.jpg
775	Cape’s Escape Game 4th Room	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zds.jpg
776	Dreams Of Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3xzg.jpg
777	Virtual Hunter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x8p.jpg
778	TitTok 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x97.jpg
779	Tea for God	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yxy.jpg
780	Shadow Corridor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdk.jpg
781	Spider Tanks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yy0.jpg
782	Teki Paki	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yy8.jpg
783	Reminiscence in the Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co4097.jpg
784	Insomnious	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co406c.jpg
785	Pro Flight Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co409g.jpg
786	Minigolf Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co408w.jpg
787	Horror & Adventure Pinball	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co409l.jpg
788	Animal Crossing: New Horizons - Happy Home Paradise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40ai.jpg
789	Zumba Aqua	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co409j.jpg
790	Propnight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40af.jpg
791	ChefSquad	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40aj.jpg
792	Slap the Rocks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40fz.jpg
793	Angelic Waves	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40fv.jpg
794	Rayze	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40gy.jpg
795	Dead Event	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40hq.jpg
796	Peril	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40ht.jpg
797	Hope Despair Chaos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co409d.jpg
798	The Crust	\N
799	Necore Tower: Redux Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zwm.jpg
800	Teenage Mutant Ninja Turtles X Justice League Turbo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zff.jpg
801	Monomals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yzq.jpg
802	Howling Village: Echoes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yzp.jpg
803	The Sokoban	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yzn.jpg
804	Jigsaw Fun: Amazing Animals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yzk.jpg
805	Smoop Can't Sleep!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z09.jpg
806	Pui Pui Molcar Let’s! Molcar Party!	\N
807	The Sink Gods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z2p.jpg
808	Subway Midnight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z8h.jpg
809	MXGP 2021	\N
810	How I learned to Skate	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zam.jpg
811	Yurukill: The Calumniation Games - Deluxe Edition	\N
812	Star Melody: Yumemi Dreamer - Limited Edition	\N
813	Let's Sing 2022: French Version	\N
814	Cricket 22: The Official Game of The Ashes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co401a.jpg
815	Gedaria	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zf0.jpg
816	Beyond the Long Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yxz.jpg
817	Piratopia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wzf.jpg
818	Wind Boys!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wzj.jpg
819	Ragnador	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wzc.jpg
820	Thetan Arena	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vzp.jpg
821	Rewrite+	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vzq.jpg
822	The King Of Fighters XV: Deluxe Edition	\N
823	Resident Evil 4 VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zab.jpg
824	Kate: Collateral Damage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3w42.jpg
825	Gran Turismo 7: 25th Anniversary Edition	\N
826	Blades of The Three Kingdoms: Return	\N
827	Gran Turismo 7: Launch Edition	\N
828	Strawberry Nauts: Complete Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zst.jpg
829	Glass Hime to Kagami no Juusha	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wgz.jpg
830	Glass Hime to Kagami no Juusha: Complete Limited Edition	\N
831	Gear.Club Unlimited 2: Definitive Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zju.jpg
832	Gear.Club Unlimited 2: Ultimate Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zjs.jpg
833	Forgotten Chain	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wa5.jpg
834	Chorus: Day One Edition	\N
835	The Adventures of Bryan Scott	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vz9.jpg
836	Donkey Kong Country: The Trilogy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vx5.jpg
837	NightOUT	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vzh.jpg
838	The Revenant Protocol	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ut8.jpg
839	Quizee	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uyx.jpg
840	Endless Blue	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uuq.jpg
841	QField	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ux5.jpg
842	The Dark World: Karma	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wr2.jpg
843	Miss Kobayashi’s Dragon Maid: Burst Forth!! Choro-gon Breath	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v73.jpg
844	Disney Classic Games Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v7i.jpg
845	GeoBingo.io	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v89.jpg
846	Curse Crackers: For Whom the Belle Toils	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vby.jpg
847	Monster Hunter Rise: Sunbreak	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vl6.jpg
848	Chocobo GP	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vl9.jpg
849	Kirby and the Forgotten Land	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vlw.jpg
850	Disney Magical World 2: Enchanted Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vns.jpg
851	Dying Light 2: Stay Human - Cloud Version	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vnu.jpg
852	Touken Ranbu Warriors	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x6d.jpg
853	Road to Morrow	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wbi.jpg
854	Aspire: Ina's Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wbz.jpg
855	Underground Life	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wdr.jpg
856	PolyBoost	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wds.jpg
857	Cornmaze Craze	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwe.jpg
858	Cogen: Sword of Rewind - Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x6g.jpg
859	Uta no Prince-sama: All Star for Nintendo Switch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wx5.jpg
860	Cute Invaders	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxj.jpg
861	Xenocider	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wyc.jpg
862	Fallen City Brawl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wyi.jpg
863	Drifting: Weight of Feathers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wyj.jpg
864	Astlibra Revision	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wyo.jpg
865	Atelier Sophie 2: The Alchemist of the Mysterious Dream	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wyt.jpg
866	Blue Reflection: Second Light - Digital Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wz8.jpg
867	Dynasty Warriors 9: Empires - 20th Anniversary Box	\N
868	Atelier Sophie 2: The Alchemist of the Mysterious Dream - Premium Box	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wz5.jpg
869	Atelier Sophie 2: The Alchemist of the Mysterious Dream - Special Collection Box	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wz6.jpg
870	Atelier Sophie 2: The Alchemist of the Mysterious Dream - Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wz3.jpg
871	Touken Ranbu Warriors: Special Collection Box	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x6f.jpg
872	Abarenbo Tengu & Zombie Nation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wz2.jpg
873	Dusk Diver 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wrz.jpg
874	Relayer: Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wt2.jpg
875	Killer and Strawberry Plus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wub.jpg
876	Nobunaga’s Ambition: Shinsei	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x6h.jpg
877	Dislyte	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwz.jpg
878	Mahokenshi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3we4.jpg
879	Mercury Abbey	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wq2.jpg
880	Arise of Awakener	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wq4.jpg
881	Black Sheep	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wqk.jpg
882	Project-Blemmyes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wqm.jpg
883	Pathless Woods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ws9.jpg
884	Vapor World: Over the Mind	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwj.jpg
885	Magicians Dead: Force of the Soul	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwo.jpg
886	Star Melody: Yumemi Dreamer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wvj.jpg
887	HumanitZ	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3whk.jpg
888	Magatsu Barai	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wke.jpg
889	Frigid VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wp8.jpg
890	Eloquence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ws8.jpg
891	Sin Chronicle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wsf.jpg
892	Nihongo Quest: N5	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tmg.jpg
893	Onslaught 2D	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3o1f.jpg
894	Destiny 2: The Witch Queen - Collector’s Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nu4.jpg
895	Descent Vector: Space Runner	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b25.jpg
896	Lucid Soul	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ba0.jpg
897	Knockout Home Fitness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b5l.jpg
898	The Scorchfarer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b8g.jpg
899	Jail Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b91.jpg
900	Sucker Punch VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bd5.jpg
901	The Palace on the Hill	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b22.jpg
902	Shin Megami Tensei V: Steelbook Launch Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h82.jpg
903	Farming Simulator 22: Day One Edition	\N
904	Farming Simulator 22: Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8b.jpg
905	The Medium: Two Worlds Special Edition	\N
906	Danganronpa: Decadence - Collector's Edition	\N
907	Metroid Dread: Special Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co404n.jpg
908	Cotton Rock 'n' Roll	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dfx.jpg
909	Shin Megami Tensei V: Fall of Man Premium Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze3.jpg
910	Lost Nova	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z98.jpg
911	Mud and Blood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9n.jpg
912	Tag Hop	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zct.jpg
913	Indies' Lies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha0.jpg
914	Teabat!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aya.jpg
915	Little Martian	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ayx.jpg
916	Aquillanto	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ayz.jpg
917	Quantum Paradox	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8x.jpg
918	Jerry Wanker and the Quest to get Laid	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3az8.jpg
919	Hexcraft: Harlequin Fair	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3azb.jpg
920	Save Data	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b01.jpg
921	The Legend of Fjarri	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gmr.jpg
922	Cursed Weekend	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h3y.jpg
923	MakerKing	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vqd.jpg
924	Parakacuk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b11.jpg
925	Art of the Rail	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b14.jpg
926	Remote Knights Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha6.jpg
927	Tomb Rumble	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3on3.jpg
928	Cotton Rock 'n' Roll: 30th Anniversary Limited Edition	\N
929	Desktop Dinosaurs	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ggm.jpg
930	Melty Blood: Type Lumina - Melty Blood Archives	\N
931	AI: The Somnium Files - Nirvana Initiative	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hau.jpg
932	Robocop: Rogue City	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbs.jpg
933	Moonlight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3def.jpg
934	Blue Reflection: Second Light	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ww1.jpg
935	Blue Reflection Sun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ww0.jpg
936	Instant Sports Paradise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gla.jpg
937	Animal Kart Racer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8r.jpg
938	Clash: Artifacts of Chaos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h2h.jpg
939	Mictlan: An Ancient Mythical Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dhr.jpg
940	RWBY: Arrowfell	\N
941	Kowloon’s Rhizome: A Day of the Fire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dmr.jpg
942	Battle Life Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3doo.jpg
943	孙美琪疑案：雨儿胡同	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dqp.jpg
944	Banjo-Kazooie: Nostalgia 64	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lga.jpg
945	Arcane Walker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3llt.jpg
946	PEWPEW	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dp2.jpg
947	It Tolls for Thee	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ddd.jpg
948	Afterthought	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dda.jpg
949	F1 2021: Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3k46.jpg
950	Happenlance	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x12.jpg
951	The Epic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3cfo.jpg
952	Lone McLonegan : A Western Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdr.jpg
953	The Crackpet Show	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p65.jpg
954	Monster Outbreak	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p42.jpg
955	FrankenStorm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zxe.jpg
956	Shadowrun Trilogy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vnz.jpg
957	Office Life	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxn.jpg
958	Battle Ready	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wef.jpg
959	Astro Colony	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3d56.jpg
960	Reina & Jericho	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3d7a.jpg
961	AI: The Somnium Files - Nirvana Initiative - Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbk.jpg
962	Keiken Zero na Classmate: Premium Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h41.jpg
963	Keiken Zero na Classmate	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gri.jpg
964	Sakaagari Hurricane Portable: Complete Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h42.jpg
965	Twin Stones: The Journey of Bukka	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3c2s.jpg
966	Terminal Earth	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3axm.jpg
967	Airtight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hap.jpg
968	Reverse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3glo.jpg
969	B.I.O.T.A.	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3al9.jpg
970	Elementowers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ald.jpg
971	Daymare: 1994 Sandcastle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wy8.jpg
972	The Isle of Elanor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h7x.jpg
973	The Adventures of Captain Carrot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbf.jpg
974	Nightwalker 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gq4.jpg
975	Falafel Tycoon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9p.jpg
976	subROV	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3alv.jpg
977	Animal Express	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h89.jpg
978	Monochrome RPG Episode 1: The Maniacal Morning	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3anq.jpg
979	Edge of the Abyss Awaken	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3anr.jpg
980	Changes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aod.jpg
981	Bilkins' Folly	\N
982	Kochira, Haha Naru Hoshi Yori	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gj4.jpg
983	I Remember the Light	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha9.jpg
984	Sleepy Sunday	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3al6.jpg
985	Society's Paradigms	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3al5.jpg
986	Art of Destruction	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbc.jpg
987	The Court Of Wanderers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ajr.jpg
988	Steampunk Timer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ajx.jpg
989	Ergo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gji.jpg
990	Clock Overwhelmed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ak2.jpg
991	Guild Hall Adventures	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ak5.jpg
992	Lust for Speed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ak9.jpg
993	Matthew: Last Journey	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h81.jpg
994	Timeless Dual	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3haz.jpg
995	Bloody Merc	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3has.jpg
996	Cast Ashore	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aki.jpg
997	The ordinary case of Margaret Luoni	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h7w.jpg
998	Comrades and Barons: Gates of Freedom	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3akl.jpg
999	Dante's Hotel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3akn.jpg
1000	Wayfarers Edge	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hac.jpg
1001	Arcane Waters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3akp.jpg
1002	Peachleaf Valley: Seeds of Love	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aq4.jpg
1003	Genetic Fluff	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqa.jpg
1004	Generation Ship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqj.jpg
1005	Shakespeare? More like Thirstspeare, amirite?	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqi.jpg
1006	Marvel’s Guardians of the Galaxy: Cosmic Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3grj.jpg
1007	King's Bounty II: King Collector's Edition	\N
1008	Big Rumble Boxing: Creed Champions - Day One Edition	\N
1009	Repeat	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3at5.jpg
1010	Guild Project	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3at4.jpg
1011	6 in 1 Time Management Game Collection	\N
1012	Angry Alligator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z9x.jpg
1013	Tribes of Midgard: Deluxe Edition	\N
1014	Orpiment	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3auh.jpg
1015	Torakichi no Tora Kitchen	\N
1016	Zephon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p67.jpg
1017	Dexter Stardust: Adventures in Outer Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha8.jpg
1018	Absolute Zero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3auo.jpg
1019	The Weald	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3av5.jpg
1020	Zeta Bit Player Pack 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h5i.jpg
1021	Monark: Deluxe Edition	\N
1022	Dungeon Looter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p8v.jpg
1023	Axis Football 2021	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3asi.jpg
1024	Bloons TD Battles 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3as9.jpg
1025	Agent Roswell: Tactics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqn.jpg
1026	Lost End	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3arf.jpg
1027	Underwater	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqq.jpg
1028	Grapple	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqt.jpg
1029	Merge It	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3aqv.jpg
1030	tERRORbane	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxd.jpg
1031	Starship Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ar6.jpg
1032	Animal Defense Versus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h5h.jpg
1033	Animal Rivals: Up In The Air	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha3.jpg
1034	ALON	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3arq.jpg
1035	Word of mouth stories. vol 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha5.jpg
1036	Overdosed VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3arx.jpg
1037	Leave No One Behind: la Drang	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3as0.jpg
1038	Bio Crisis: Evil Hazard	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3as2.jpg
1039	Mindless	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h6a.jpg
1040	NecroBoy: Path to Evilship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h5e.jpg
1041	Time Bandit	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nw1.jpg
1042	Bowser's Dark Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dtf.jpg
1043	Full Kiss SS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dve.jpg
1044	SNK Fighting Legends: Collector's Edition	\N
1045	Gefragt Gejagt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qih.jpg
1046	Asatsugutori	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qi6.jpg
1047	L.O.L. Surprise! Movie Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qij.jpg
1048	Rolling Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jap.jpg
1049	Skye	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jhy.jpg
1050	Moons of Ardan	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ja2.jpg
1051	Draft Day Sports: Pro Basketball 2022	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lys.jpg
1052	Kings Gauntlet: Chess Revolution	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x6k.jpg
1053	Instant Sports Winter Games	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jq0.jpg
1054	The Godkiller: Chapter 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qio.jpg
1055	Haos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jw5.jpg
1056	Lila's Tale and the Hidden Forest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxr.jpg
1057	Dark Threads	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3o5k.jpg
1058	LumbearJack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jl8.jpg
1059	Repurpose	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3j9m.jpg
1060	Cat Leather Jackets	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3my5.jpg
1061	Dating Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3o6g.jpg
1062	dinopatch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3msn.jpg
1063	dinomod	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3msp.jpg
1064	Achilles: Legends Untold	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3i89.jpg
1065	Roniu's Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ia3.jpg
1066	Guild Wars 2: End of Dragons - Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qiz.jpg
1067	Disciples: Liberation - Digital Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qib.jpg
1068	Lapin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wqx.jpg
1069	Pollute & Conquer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ia9.jpg
1070	Moon Farming	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ib9.jpg
1071	Mini Maker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxo.jpg
1072	Cairo Stark: Crocs Hunter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40ga.jpg
1073	Frog Detective 3: Corruption at Cowboy County	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zz6.jpg
1074	Father	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zm2.jpg
1075	Strange Nightmares	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ilu.jpg
1076	Blackout	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3iqb.jpg
1077	Relentless Frontier	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kn9.jpg
1078	The Cartesian Project	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co408i.jpg
1079	Beyond Sunset	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3koc.jpg
1080	Madison	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mr1.jpg
1081	Vroom!	\N
1082	Model Debut 2: Nicola	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qif.jpg
1083	Valis: The Fantasm Soldier Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qj6.jpg
1084	Lucky Tower Ultimate	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mla.jpg
1085	Fall of Porcupine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mlj.jpg
1086	Turbo Shell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mt5.jpg
1087	Killer Bean	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m6f.jpg
1088	Fireside	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mtb.jpg
1089	Curses	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nno.jpg
1090	Lightsmith	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40nz.jpg
1091	Eversleep: Lunistice Gaiden	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mq7.jpg
1092	Rhythium	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mxi.jpg
1093	Echo of Ayllu	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nnq.jpg
1094	Destiny 2: The Witch Queen - Deluxe Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nu2.jpg
1095	Nura's Wish	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3njo.jpg
1096	Reverse Module	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3q3l.jpg
1097	The Elder Scrolls V: Skyrim Anniversary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lyu.jpg
1098	Kamigami no Asobi Ludere Deorum: Unite Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qj3.jpg
1099	Dead Ink	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3o8d.jpg
1100	Light Nite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v82.jpg
1101	XEL	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3l8v.jpg
1102	Call of Duty: Vanguard	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kq8.jpg
1103	Super Mario World Widescreen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kon.jpg
1104	Supplice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kn7.jpg
1105	Asterix & Obelix: Slap Them All! - Limited Edition	\N
1106	The Smurfs: Mission ViLeaf - Smurftastic Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdi.jpg
1107	The Smurfs: Mission ViLeaf - Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdj.jpg
1108	Tokyo 24-Ku: Inoru	\N
1109	Crossing Frontier	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zoy.jpg
1110	Fallen Evolution	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kuk.jpg
1111	Abandoned	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lh7.jpg
1112	Zombie Cure Lab	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m4k.jpg
1113	Koroshiya to Strawberry Plus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qiq.jpg
1114	To the Max	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3k0n.jpg
1115	Rescue Party: Live!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yg0.jpg
1116	Hypnagogia: Boundless Dreams	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hvx.jpg
1117	Fuyu Kiss: Complete Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qiu.jpg
1118	Hustle Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3f5r.jpg
1119	Wiz	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h0c.jpg
1120	Renovation Products Collection 1	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3fdu.jpg
1121	Sweet Dreams Alex	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hal.jpg
1122	Idle Wasteland: Pet Slot Bundle	\N
1123	Killing Stream	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co402j.jpg
1124	Space Dance	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3f5m.jpg
1125	Gearshifters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gps.jpg
1126	Countdown Final Zone	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3fjm.jpg
1127	Planet Hop	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3fmq.jpg
1128	Catie in MeowmeowLand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3my1.jpg
1129	My Personal Hilopet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3pjt.jpg
1130	Slimy Sextet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3fuo.jpg
1131	Blub Emporium	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3fv9.jpg
1132	Super Catboy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nmc.jpg
1133	Kayak VR: Mirage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3f5d.jpg
1134	Ikai	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3f21.jpg
1135	Usurper: Soulbound	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3euj.jpg
1136	Full Kiss SS Complete Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3grl.jpg
1137	Blue Reflection: Second Light - Special Collection Box	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h6l.jpg
1138	Blue Reflection: Second Light - Premium Box	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h6j.jpg
1139	Archetype Arcadia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h3u.jpg
1140	Among Us: Ejected Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v0h.jpg
1141	Among Us: Crewmate Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wwy.jpg
1142	Among Us: Impostor Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3v0i.jpg
1143	Super Robot Wars 30 Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h58.jpg
1144	When the Lying Petals Scatter Into the Wind	\N
1145	Car Physics Simulator: Trucks + Missions DLC	\N
1146	Effie: Galand's Edition	\N
1147	Medic: Pacific War	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nrr.jpg
1148	Who is He: Let Me Out	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxp.jpg
1149	Aveliana	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3eik.jpg
1150	Forest Grove	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gkx.jpg
1151	Climb Up the Down	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nbe.jpg
1152	24 Solar Terms	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wqj.jpg
1153	Cave Digger 2: Dig Harder	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3myr.jpg
1154	Lock 'n Load Tactical Digital: Red Gauntlet - Battlepack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3g2q.jpg
1155	Asterix & Obelix: Slap Them All! - Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qip.jpg
1156	Deflection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h3i.jpg
1157	Teraphobia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rn3.jpg
1158	Guild Wars 2: End of Dragons	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qiy.jpg
1159	Return to Yoshi's Island 64	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbq.jpg
1160	Fuyu Kiss	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qiv.jpg
1161	Blacksmith Legends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hpf.jpg
1162	Find The Invisible Cow	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hpd.jpg
1163	Spindle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nkv.jpg
1164	Torn Away	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mp0.jpg
1165	Sedomairi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hr8.jpg
1166	Blackwind	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mca.jpg
1167	Mars First Logistics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3npb.jpg
1168	Puzzle Cafe VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3y4q.jpg
1169	Parfait Remake: Complete Limited Edition	\N
1170	Dragon Quest X: Heroes of the Heavenly Stars Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h7z.jpg
1171	Insiders	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dtp.jpg
1172	Attack of the Petscii Robots	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h06.jpg
1173	Dead Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gup.jpg
1174	Bravers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co402e.jpg
1175	Space Moth: Lunar Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3g84.jpg
1176	Spirit of ARX	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3g7t.jpg
1177	Illmatic Envelope Swamp + Radirgy Swag	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3g7z.jpg
1178	Kyuukyoku Tiger Heli: Toaplan Arcade Garage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ggs.jpg
1179	Final Fantasy V: Pixel Remaster	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gbv.jpg
1180	Final Fantasy VI: Pixel Remaster	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gbw.jpg
1181	SunnySide	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gd1.jpg
1182	Beyond the Storm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gdb.jpg
1183	G-Darius HD	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gg8.jpg
1184	Gearshifters: Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h66.jpg
1185	The Hero We Need	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gi4.jpg
1186	Sadness of Valor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gpz.jpg
1187	2089: Space Divided	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gtz.jpg
1188	GRID: Legends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gvq.jpg
1189	Crypto Is Dead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gw2.jpg
1190	Bloodshore	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40oe.jpg
1191	9 Years of Shadows	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2thu.jpg
1192	Neon White	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tgh.jpg
1193	Hell Pie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m8d.jpg
1194	ASTERELIS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lpb.jpg
1195	Manta	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lbh.jpg
1196	Moo Lander	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wty.jpg
1197	ORX	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b9o.jpg
1198	art of rally	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gys.jpg
1199	MythBusters: The Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p75.jpg
1200	Selfloss	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34et.jpg
1201	Roadwarden	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lim.jpg
1202	Airhead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fty.jpg
1203	Pupperazzi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m9t.jpg
1204	Elden Ring	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391c.jpg
1205	Jumanji: The Video Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1s31.jpg
1206	BOOK OF HOURS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xuz.jpg
1207	Mori and the Whisper	\N
1208	Blackout: The Darkest Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p1t.jpg
1209	Birds With Feelings	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1l69.jpg
1210	Guilt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34qb.jpg
1211	Kingdom of Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sv0.jpg
1212	River City Girls	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2r5w.jpg
1213	Samael	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1l1n.jpg
1214	Hell Architect	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b3r.jpg
1215	Altered	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i2p.jpg
1216	Freshly Frosted	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wdh.jpg
1217	Peaky Blinders VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2opz.jpg
1218	SKYHILL: Black Mist	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xlq.jpg
1219	The Tale of Greenbrier	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m27.jpg
1220	Transformice Adventures	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xte.jpg
1221	Knights of the Silver Table	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20pu.jpg
1222	Project Witchstone	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1o1d.jpg
1223	Of Bird And Cage	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fbb.jpg
1224	Raid of Regions	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ha1.jpg
1225	Earth From Another Sun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j15.jpg
1226	Roguebook	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lsu.jpg
1227	XIII	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kgk.jpg
1228	Tom Clancy's Rainbow Six Extraction	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a3r.jpg
1229	LEGO Star Wars: The Skywalker Saga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28yb.jpg
1230	Jack Move	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2woq.jpg
1231	Unsweet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37z8.jpg
1232	Just Flip	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s9n.jpg
1233	Nitroneers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3q68.jpg
1234	Rest	\N
1235	Bendy and the Dark Revival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p1n.jpg
1236	Figment 2: Creed Valley	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m7p.jpg
1237	Story of Seasons: Friends of Mineral Town	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1mij.jpg
1238	Hill Agency: BARK & byte	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2orb.jpg
1239	60 Seconds! Reatomized	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t2j.jpg
1240	Arisen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pg4.jpg
1241	Super UFO Fighter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxi.jpg
1242	My Days with the Demoness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1rpm.jpg
1243	Anthology of Fear	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1r4q.jpg
1244	Short Fuse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ajy.jpg
1245	Svoboda 1945: Liberation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ybm.jpg
1246	Ninja JaJaMaru Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ng9.jpg
1247	Waifu Wars Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbj.jpg
1248	Crossfire X	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1t9i.jpg
1249	GhostWire: Tokyo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2a31.jpg
1250	Enter the Gungeon: House of the Gundead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lvs.jpg
1251	After the Fall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co235q.jpg
1252	Unexplored 2: The Wayfarer's Legacy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ed8.jpg
1253	Conan Chop Chop	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lx7.jpg
1254	Songs of Conquest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lwx.jpg
1255	Undying	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i4w.jpg
1256	Super Space Club	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2we0.jpg
1257	Circuit Superstars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lyo.jpg
1258	The Legend of Zelda: Breath of the Wild 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b2s.jpg
1259	Read Only Memories: Neurodiver	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29rn.jpg
1260	The Witcher 3: Wild Hunt - Complete Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1wyz.jpg
1261	Ava	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1m2j.jpg
1262	Lunark	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b9h.jpg
1263	Small Saga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lu0.jpg
1264	Urban Explorer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xw1.jpg
1265	HoloFist	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j18.jpg
1266	Paranoia: Happiness is Mandatory	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1s0j.jpg
1267	Ring of Fire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co247h.jpg
1268	Airborne Kingdom	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2566.jpg
1269	The Voice Inside	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1t0g.jpg
1270	Sail Forth	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1usz.jpg
1271	Night is Coming	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nna.jpg
1272	Lamentum	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fto.jpg
1273	Darkest Dungeon II	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j7d.jpg
1274	Tower Princess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtv.jpg
1275	Curious Expedition 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1jj2.jpg
1276	Summerford	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1y4d.jpg
1277	Unpacking	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1t45.jpg
1278	Apostatic: Revenge From Hell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oo9.jpg
1279	ProtoCorgi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fhm.jpg
1280	Neverdark	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtd.jpg
1281	The Burned Ground	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34sm.jpg
1282	Juro Janosik	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34hd.jpg
1283	A Grim Tale of Vices	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3c72.jpg
1284	Vault: Tomb of the King	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ibx.jpg
1285	Neon Blight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f39.jpg
1286	Totally Reliable Delivery Service	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uwi.jpg
1287	Country Desert Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nl7.jpg
1288	Post Apo Machines	\N
1289	The Captain	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3za5.jpg
1290	Kingshunt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j78.jpg
1291	DEEEER Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1whm.jpg
1292	Survival Journals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i61.jpg
1293	Trans-Siberian Railway Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ley.jpg
1294	Chernobylite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39vi.jpg
1295	Gulag	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h9l.jpg
1296	Lord Winklebottom Investigates	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m9b.jpg
1297	Bunny Beats	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2us2.jpg
1298	Rune Factory 5	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2goa.jpg
1299	Supreme Courtship	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1jbw.jpg
1300	CHROMATOSE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k1n.jpg
1301	Tokimeki Memorial Girl's Side 4th Heart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39zw.jpg
1302	Soulrun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2005.jpg
1303	Loop Craft	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb5.jpg
1304	Shores Unknown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xhm.jpg
1305	Feral Frontier	\N
1306	A Short Hike	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co26ee.jpg
1307	Little Witch Nobeta	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ave.jpg
1308	Lost and Hound	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iln.jpg
1309	Saturated Outer Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3851.jpg
1310	We Are The Caretakers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rv4.jpg
1311	Fling to the Finish	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2web.jpg
1312	Dreadful Bond	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oom.jpg
1313	ZOE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ab1.jpg
1314	Sapiens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xu0.jpg
1315	A.D. 2047	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kz9.jpg
1316	Chained Echoes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2n6x.jpg
1317	Embr	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1tzf.jpg
1318	Shelter 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xth.jpg
1319	Flippin Kaktus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co399l.jpg
1320	Playerless: One Button Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xsf.jpg
1321	Uragun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lp7.jpg
1322	Solar Ash	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tye.jpg
1323	Gunkid 99	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bjn.jpg
1324	Bushiden	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1jya.jpg
1325	Return to Nangrim	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rzf.jpg
1326	Hush: In Search of Dominic Ward	\N
1327	Eternal Threads	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wk1.jpg
1328	FABULAR: Once upon a Spacetime	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hso.jpg
1329	Ship Builder Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xr6.jpg
1330	Synergia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m7a.jpg
1331	The Wild at Heart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g18.jpg
1332	CONCLUSE 2	\N
1333	The Lord Of The Rings: Gollum	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wee.jpg
1334	FANTASIAN	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wem.jpg
1335	Shantae and the Seven Sirens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1qww.jpg
1336	Beyond a Steel Sky	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2d63.jpg
1337	Letters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m98.jpg
1338	Arcadia: The Crystal Wars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iuc.jpg
1339	Hundred Days	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wk0.jpg
1340	Monster Girl Fantasy 2: Exposed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mnx.jpg
1341	Lawmage Academy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jrz.jpg
1342	TFM: The First Men	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtt.jpg
1343	Red Frost	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2dlv.jpg
1344	Everwild	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ebv.jpg
1345	KartRider: Drift	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1t91.jpg
1346	Path of Exile 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1tf6.jpg
1347	Pyramid Plunge	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2y04.jpg
1348	Chinatown Detective Agency	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co23xt.jpg
1349	Chant	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yxq.jpg
1350	Labyrinth of Galleria: Coven of Dusk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qis.jpg
1351	Metal Mind	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31ks.jpg
1352	ParaLily	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2n6m.jpg
1353	Neko Ghost, Jump!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zm2.jpg
1354	Bus World	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xs3.jpg
1355	Crisp Cube	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nw5.jpg
1356	Low-Fi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2a9i.jpg
1357	Ultimate Admiral: Dreadnoughts	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xr8.jpg
1358	Hit N 'Rush	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sg7.jpg
1359	Terra Invicta	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxb.jpg
1360	Dusk Golem's Anthology of Horror	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xa5.jpg
1361	SteamDolls: Order Of Chaos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2709.jpg
1362	Wizards of Brandel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co24ct.jpg
1363	League of Legends: Wild Rift	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1s08.jpg
1364	Unsouled	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20p1.jpg
1365	This Dead Winter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2of3.jpg
1366	Vampire: The Masquerade - Swansong	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39va.jpg
1367	Arima	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20p0.jpg
1368	Winter Sports Games	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n9r.jpg
1369	The Miserable Crimson Hooded Girl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1slf.jpg
1370	Battlefield 2042	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38x1.jpg
1371	Mecha Knights: Nightmare	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m7r.jpg
1372	I.G.I. Origins	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m8y.jpg
1373	The Hive	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t8l.jpg
1374	Void Eclipse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i2c.jpg
1375	Project Haven	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g11.jpg
1376	Path of the Midnight Sun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uaw.jpg
1377	SAMUDRA	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hh6.jpg
1378	Canadian Robot Racing League	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mpd.jpg
1379	Book of Demons: HELLCARD	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xua.jpg
1380	Book of Aliens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvl.jpg
1381	Pathfinder: Wrath of the Righteous	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uq7.jpg
1382	Axiom Verge 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3k3x.jpg
1383	Sports Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t8g.jpg
1384	The Outlast Trials	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29og.jpg
1385	Ethereal: Clash Of Souls	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uua.jpg
1386	Weird West	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvx.jpg
1387	Ruined King: A League of Legends Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jtl.jpg
1388	Speak Lies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co341c.jpg
1389	Go Fight Fantastic!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kax.jpg
1390	一方灵田	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37rg.jpg
1391	Slender Threads	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mkx.jpg
1392	Ultimate Rivals: The Rink	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co325l.jpg
1393	Marvel's Spider-Man 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3swf.jpg
1394	The Rewinder	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtj.jpg
1395	BOC	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xta.jpg
1396	Grave Tower	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hat.jpg
1397	Last Joy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h0n.jpg
1398	Whateverland	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1y4x.jpg
1399	Twinora	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xbn.jpg
1400	Kaku Ancient Seal	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b97.jpg
1401	LAZR - A Clothformer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co271w.jpg
1402	Listeria Wars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i3n.jpg
1403	Pumpkin Jack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3r4x.jpg
1404	Cyberpunk Bar Sim	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m6y.jpg
1405	Airhack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2db8.jpg
1406	Exophobia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m7v.jpg
1407	The Looter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co38x5.jpg
1408	Project Grove	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t2d.jpg
1409	Pull Stay	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29rh.jpg
1410	The Aftermath: Unnatural Selection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co36hi.jpg
1411	Earthbreakers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1udm.jpg
1412	Winter Ember	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wqv.jpg
1413	Chorus: An Adventure Musical	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1rvt.jpg
1414	Scathe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28k1.jpg
1415	RoboCo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i5l.jpg
1416	Kerbal Space Program 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t9y.jpg
1417	Spacebase Startopia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1rpe.jpg
1418	Syberia: The World Before	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p76.jpg
1419	Dwerve	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fwy.jpg
1420	Knights of Honor II – Sovereign	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtc.jpg
1421	Breakers Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ops.jpg
1422	Hello Kitty AR Kawaii World	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2opx.jpg
1423	Skeleton Crew	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29rp.jpg
1424	Out There: Oceans of Time	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xu8.jpg
1425	Squirrel & Bear: Europe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1pwz.jpg
1426	Derpy Conga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bcy.jpg
1427	The Legend of Sword and Fairy 7	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t77.jpg
1428	Homeworld 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1q39.jpg
1429	Spirit of Midnight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3goc.jpg
1430	Curse of the Sea Rats	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nxy.jpg
1431	Crowns and Pawns: Kingdom of Deceit	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nwu.jpg
1432	Heavenly Bodies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1px6.jpg
1433	Will You Snail?	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ozt.jpg
1434	Alliance of the Sacred Suns	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39ws.jpg
1435	Back Then	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1msz.jpg
1436	DOGGONE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oog.jpg
1437	Builders Of Egypt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xhk.jpg
1438	Westwood Shadows	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n43.jpg
1439	Reverse Collapse: Code Name Bakery	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xuw.jpg
1440	Giants Uprising	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g4q.jpg
1441	Rune Fencer Illyia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hbv.jpg
1442	Wedding Designer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xv7.jpg
1443	Gatewalkers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtw.jpg
1444	Wind Runners	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3n9b.jpg
1445	TASOMACHI: Behind the Twilight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vtk.jpg
1446	The Last Spell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rmt.jpg
1447	Dark Envoy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xu1.jpg
1448	Exactamundo: World Trivia Tour	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gmt.jpg
1449	Onsen Master	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28z9.jpg
1450	Bleak Faith: Forsaken	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mcx.jpg
1451	Famicom Detective Club: The Missing Heir	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30df.jpg
1452	Coromon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k72.jpg
1453	Strawhart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co35qu.jpg
1454	Captain Bones	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xd0.jpg
1455	DREAMO VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3oyl.jpg
1456	OTHER: Her Loving Embrace	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sba.jpg
1457	TwilightStar: Heart of Eir	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co21tk.jpg
1458	The Slormancer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j12.jpg
1459	Airport Contraband	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28kf.jpg
1460	Wayward Strand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co246l.jpg
1461	Treehouse Riddle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j10.jpg
1462	Lost Viking: Kingdom of Women	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co331i.jpg
1463	Metal Max Xeno Reborn 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ruz.jpg
1464	Voidtrain	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3i8v.jpg
1465	Zoria: Age of Shattering	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co287j.jpg
1466	Taxi Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvk.jpg
1467	Surviving the Aftermath	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wsb.jpg
1468	DYSMANTLE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ixi.jpg
1469	Lethal Wedding	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2koe.jpg
1470	War of Ashird	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co23er.jpg
1471	Famicom Detective Club: The Girl Who Stands Behind	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30dh.jpg
1472	Hourglass	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3199.jpg
1473	Chrono Sword	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ohe.jpg
1474	Itorah	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2esy.jpg
1475	Yurukill: The Calumniation Games	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ws7.jpg
1476	Calico	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c9c.jpg
1477	HyperCore	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co34uu.jpg
1478	Trash Sailors	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29q4.jpg
1479	Die by the Blade	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hh4.jpg
1480	Divinum	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3oq7.jpg
1481	Humanity	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co235s.jpg
1482	Medal of Honor: Above and Beyond	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2frv.jpg
1483	Onirike	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hfl.jpg
1484	Kingdom Shell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o7n.jpg
1485	Broken Roads	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oob.jpg
1486	The Deep Deep	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2it3.jpg
1487	Unsung Warriors	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1j0f.jpg
1488	The Unliving	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28iu.jpg
1489	Beetle Elf	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zdq.jpg
1490	Keyboard Sports: Saving Qwerty	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uu7.jpg
1491	The Iron Oath	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29gt.jpg
1492	Steel Assault	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m0s.jpg
1493	Mongrel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2qq2.jpg
1494	Megaton Musashi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hhl.jpg
1495	Momentum Mod	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xuf.jpg
1496	Padria Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1wnp.jpg
1497	Clive 'N' Wrench	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co218x.jpg
1498	Natsuki Chronicles	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co205v.jpg
1499	Bloom: Memories	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lff.jpg
1500	Tank Warz!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m7b.jpg
1501	Heart Forth, Alicia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o23.jpg
1502	Chousenshi Densetsu: Assault from the Sea	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tba.jpg
1503	Memories Off #5: Togireta Film	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wlj.jpg
1504	Dragon Hills	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/l2ddy6sfq6wpmiteizsz.jpg
1505	Arenus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2maq.jpg
1506	Rubi: The Wayward Mira	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hh7.jpg
1507	Little Orpheus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2a1t.jpg
1508	Somerville	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39pf.jpg
1509	The Legend of Nayuta: Boundless Trails	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bb1.jpg
1510	Growbot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m88.jpg
1511	Evil Genius 2: World Domination	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2urs.jpg
1512	Super Meat Boy Forever	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nf7.jpg
1513	Mineko's Night Market	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mbt.jpg
1514	Koe (声)	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20ev.jpg
1515	Re:Legend	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wrw.jpg
1516	Grand Theft Auto VI	\N
1517	Jengo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1tre.jpg
1518	Grand Theft Auto: The Trilogy - The Definitive Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z8e.jpg
1519	Star Wars: Jedi Knight Collection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ze4.jpg
1520	Prehistoric Kingdom	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xv3.jpg
1521	Cosmoteer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xlv.jpg
1522	Age of Empires IV	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39tg.jpg
1523	Memories Off: Sorekara	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wl3.jpg
1524	ElectriX: Electro Mechanic Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co23za.jpg
1525	Rest in Jelly	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m9y.jpg
1526	Memories Off	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1pq0.jpg
1527	Ad Infinitum	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/e8y4thskrkwi6jchpmxq.jpg
1528	Wilmot's Warehouse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fe6.jpg
1529	Gungrave G.O.R.E.	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p6l.jpg
1530	The Legend of Heroes: Trails of Cold Steel IV	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31wc.jpg
1531	Memories Off 2nd	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1x8k.jpg
1532	Parfait: Chocolat Second Brew	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3dh6.jpg
1533	Bayonetta 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vl8.jpg
1534	Sable	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yzs.jpg
1535	Occupy Mars: The Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xal.jpg
1536	Villages	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rtb.jpg
1537	Mushrooms: Forest Walker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mf2.jpg
1538	Totem Teller	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1luv.jpg
1539	Unitystation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3psl.jpg
1540	Vulpine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xhy.jpg
1541	Blackout	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/gnkhhypxutlgqupzzypu.jpg
1542	Puzzle Girls: Galaxy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mb3.jpg
1543	Contraband Police	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1mle.jpg
1544	Ambition: A Minuet in Power	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/m3tna1deicvbohmovwai.jpg
1545	Liberator TD	\N
1546	Crazy Chicken Kart 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/bmfqgogyshexmhrz4rid.jpg
1547	Okinawa Rush	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lc0.jpg
1548	Phantom Brigade	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kkn.jpg
1549	Kick Bot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1t58.jpg
1550	AWAY: The Survival Series	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2uox.jpg
1551	Inazuma Eleven: Great Road of Heroes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1rcs.jpg
1552	8-Bit Adventures 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28rj.jpg
1553	Star Wars Jedi: Fallen Order	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1rbi.jpg
1554	Renaine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1zzl.jpg
1555	Harvest life	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co24xc.jpg
1556	Body of Evidence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ibd.jpg
1557	Dolmen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a3h.jpg
1558	Wytchwood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27gm.jpg
1559	ELYON	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ikp.jpg
1560	Omoide ni Kawaru Kimi: Memories Off	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wl4.jpg
1561	Bokube	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p1v.jpg
1562	Pathfinder: Kingmaker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29gf.jpg
1563	VirtuaVerse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1puy.jpg
1565	ASTRONEER	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1niz.jpg
1566	Praey for the Gods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co26cw.jpg
1567	Radio the Universe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27fn.jpg
1568	Dex	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gdn.jpg
1569	Cadence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wkq.jpg
1570	Outer Wilds	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wsm.jpg
1571	Ghost Song	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/e4gak35mvaztl7vkcgt9.jpg
1572	Squadron 42	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pap.jpg
1573	Underworld Ascendant	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co269h.jpg
1574	Ray's The Dead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xv2.jpg
1575	Scorn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1r6s.jpg
1576	World War Z	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i4r.jpg
1577	Jenny LeClue: Detectivu	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1qq3.jpg
1578	Arcadian Atlas	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o8h.jpg
1579	Gang Beasts	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co24is.jpg
1580	Danganronpa 2: Goodbye Despair	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2h6j.jpg
1581	Little Devil Inside	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jfa.jpg
1582	Grand Theft Auto V	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lbd.jpg
1583	Dodonpachi Resurrection	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ym9.jpg
1584	Cyberpunk 2077	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mjs.jpg
1585	Wreckfest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vof.jpg
1586	Plumbers Don't Wear Ties	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1p5l.jpg
1587	Memories Off: Yubikiri no Kioku	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2h3r.jpg
1588	Memories Off 6: T-wave	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/zbsnl6szlxncqixgx1oz.jpg
1589	Unturned	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t2v.jpg
1590	Shantae and the Pirate's Curse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co262l.jpg
1591	Gas Guzzlers Extreme	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2d29.jpg
1592	Corridor 7: Alien Invasion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gp3.jpg
1593	Operation Body Count	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gp2.jpg
1594	Dreaming Sarah	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cqy.jpg
1595	Subnautica	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1iqw.jpg
1596	Orcish Inn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/mvxourlziuvywuuift73.jpg
1597	Lost Soul Aside	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1jol.jpg
1598	Boundary	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1jom.jpg
1599	Granblue Fantasy: Relink	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2olj.jpg
1600	The Legend of Heroes: Trails from Zero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bb5.jpg
1601	Jidousha Shakai	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wud.jpg
1602	Röki	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1p8b.jpg
1603	Stoneshard	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xdb.jpg
1604	Mythlink	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mb1.jpg
1605	Love, Money, Rock'n'Roll	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pa1.jpg
1606	Pursuit of Power 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mby.jpg
1607	Sakura Nova	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2e87.jpg
1608	SHINRAI - Broken Beyond Despair	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co35nl.jpg
1609	Lord of Rigel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2maw.jpg
1610	Fractal Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2q6s.jpg
1611	Refactor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m9x.jpg
1612	Finding Paradise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co24h6.jpg
1613	The Last Crown: Blackenrock	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/ci6yoxetulrbgvoqp1vp.jpg
1614	Shantae: Risky's Revenge - Director's Cut	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co25ww.jpg
1615	Six Days in Fallujah	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/a16mobqlu7limdb16yso.jpg
1616	Tale of Ronin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co32jw.jpg
1617	The Six Dragons	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co28pd.jpg
1618	Ashes of Creation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pgs.jpg
1619	Where Cards Fall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j7e.jpg
1620	The Legend of Heroes: Trails to Azure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bfm.jpg
1621	No Place For Bravery	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27n7.jpg
1622	Eastward	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3tul.jpg
1623	DUSK	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wfw.jpg
1624	Undernauts: Labyrinth of Yomi	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3daf.jpg
1625	Dead Static Drive	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xtp.jpg
1626	LOST ARK	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1njp.jpg
1627	MechWarrior 5: Mercenaries	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1q7q.jpg
1628	Sacred Fire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2v79.jpg
1629	Lunacy: Saint Rhodes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ier.jpg
1630	Shin Megami Tensei V	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39zk.jpg
1631	Necrobarista	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co23xv.jpg
1632	Pillars of Eternity II: Deadfire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wuo.jpg
1633	The Crown Stones: Mirrah	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20r5.jpg
1634	Payday 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40j5.jpg
1635	Alaloth: Champions of the Four Kingdoms	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1hit.jpg
1636	Archaelund	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co4033.jpg
1637	Fractured Veil	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a09.jpg
1638	NeptuneGL	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b9x.jpg
1639	Carpathian Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mw7.jpg
1640	Fugue on the Battlefield	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1th5.jpg
1641	The Binding of Isaac: Repentance	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wsp.jpg
1642	Nighthawks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2l14.jpg
1643	Avernus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3lsp.jpg
1644	N1RV Ann-A: Cyberpunk Bartender Action	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvs.jpg
1645	Zoroastra	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3b9w.jpg
1646	Protocore	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1itc.jpg
1647	Ant Empire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ljz.jpg
1648	Ambulance Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2maf.jpg
1649	Endless Dungeon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mgb.jpg
1650	A Space for the Unbound	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b6l.jpg
1651	Aquamarine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1mf8.jpg
1653	Zombie Rollerz	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mc7.jpg
1654	Transmission	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20k1.jpg
1655	NeuroSlicers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1mp5.jpg
1656	Adome	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mao.jpg
1657	Neon Sword	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m9l.jpg
1658	Alchemic Cutie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lbu.jpg
1659	Trifox	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f5g.jpg
1660	Windjammers 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rvy.jpg
1661	Source of Madness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cbs.jpg
1662	The Settlers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1pam.jpg
1663	Damnview: Built From Nothing	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ik4.jpg
1664	Starflight 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/gl4tqpptzgwiykihageu.jpg
1665	Ultra Age	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t7e.jpg
1666	UnDungeon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xu7.jpg
1667	Tony Slopes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2889.jpg
1668	Nine Noir Lives	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2esz.jpg
1669	Summoners Fate	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20sd.jpg
1670	Solace State	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co246t.jpg
1671	Never Breakup	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co323r.jpg
1672	Stray	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hey.jpg
1673	Mythlands: Dragon Racing	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2swk.jpg
1674	Silent Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xus.jpg
1675	SuperHero in Training	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1mug.jpg
1676	God of War Ragnarök	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3swk.jpg
1677	Pangeon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co21zt.jpg
1678	3D Billiards: Pool & Snooker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zkf.jpg
1679	The King of Fighters XV	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ofu.jpg
1680	The Stanley Parable: Ultra Deluxe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t79.jpg
1681	Café International	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mor.jpg
1682	Horizon Forbidden West	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gvu.jpg
1683	Miracle Snack Shop	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2qpe.jpg
1684	Snowtopia: Ski Resort Tycoon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xv6.jpg
1685	Jack Axe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wlu.jpg
1686	Hayles Quest	\N
1687	Relayer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31cz.jpg
1688	Bright Memory: Infinite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvo.jpg
1689	The Faceless Double	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvz.jpg
1690	Hytale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1r65.jpg
1691	Resuffer: Down the Rabbit Hole	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2r4m.jpg
1692	Fury Unleashed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2dis.jpg
1693	Grand Mountain Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xj8.jpg
1694	Afarid	\N
1695	Supersolar	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1h1z.jpg
1696	Monster Safari	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xqy.jpg
1697	Exodus: Rising	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ooh.jpg
1698	Inkulinati	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wm1.jpg
1699	.Age	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3l4v.jpg
1700	Among Us	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uaf.jpg
1701	Split	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3x5v.jpg
1702	Hidden Deep	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oos.jpg
1703	Cosmic Collapse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gle.jpg
1704	Lumberhill	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i5t.jpg
1705	Sneaky Funk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gmu.jpg
1706	Tales of the Aswang VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3haw.jpg
1707	BALSA Model Flight Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xgw.jpg
1708	Realms Beyond: Ashes of the Fallen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1j7i.jpg
1709	RPG TIME: The Legend of Wright	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1lun.jpg
1710	Transiruby	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3222.jpg
1711	ANNO: Mutationem	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g10.jpg
1712	SCARF	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xt7.jpg
1713	Overlook Trail	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2avj.jpg
1714	Lunar Soil	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mb0.jpg
1715	Lab Rat	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fm3.jpg
1716	Math Workshop	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30a7.jpg
1717	Space Pioneer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rdd.jpg
1718	Wanderer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u61.jpg
1719	Afandas Survival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2map.jpg
1720	KEPLERTH	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wqq.jpg
1721	Bot Gaiden	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iag.jpg
1722	King of Peasants	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mbr.jpg
1723	Off Grid	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xsi.jpg
1724	Inked	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27og.jpg
1725	Record of Lodoss War: Deedlit in Wonder Labyrinth	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wt8.jpg
1726	Starfield	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39vv.jpg
1727	Shantae: Half-Genie Hero Ultimate Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rka.jpg
1728	The Last Friend	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kav.jpg
1729	Jetman	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3za1.jpg
1730	To The Rescue!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wkz.jpg
1731	Desolation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pwn.jpg
1732	Flashlight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kci.jpg
1733	Leif's Adventure: Netherworld Hero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fiy.jpg
1734	Defender	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31hq.jpg
1735	Once Upon A Time In Roswell	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31nk.jpg
1736	Frozen Flame	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mm7.jpg
1737	3 Minutes to Midnight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m6b.jpg
1738	The Last Hero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3god.jpg
1739	Poopdie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1wdy.jpg
1740	A Purrtato Tail: By the Light of the Elderstar	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hw9.jpg
1741	Carrion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2eau.jpg
1742	Patchman vs. Blue Squares	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2csi.jpg
1743	Unholy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mb8.jpg
1744	Space Mechanic Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xlj.jpg
1745	Martha is dead	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2or1.jpg
1746	The Horn of the Riches: The town where the incredible things live	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m7e.jpg
1747	Undead & Beyond	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cda.jpg
1748	A Perfect Day	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xm2.jpg
1749	22 Racing Series	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pco.jpg
1750	She Dreams Elsewhere	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gfb.jpg
1751	Halo Infinite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2dto.jpg
1752	Cuphead: The Delicious Last Course	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1rm2.jpg
1753	Morning Star	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2swg.jpg
1754	Football Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ny9.jpg
1755	One Hand Clapping	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tgp.jpg
1756	4Sight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/ltuidr3uaxpoaxtdz2sb.jpg
1757	Shironeko New Project	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/yakq1e6yeolsqq8wfg5w.jpg
1758	Reptiles: In Hunt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xls.jpg
1759	Digimon Survive	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t62.jpg
1760	Titan Arena	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mc1.jpg
1761	Endling	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co391j.jpg
1762	Rhythm of the Universe: Ionia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jrd.jpg
1763	Ragtag Crew	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xu4.jpg
1764	Bound By Blades	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xvi.jpg
1765	Transmogrify	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iaj.jpg
1766	Hitchhiker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m8t.jpg
1767	Dead Matter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p2i.jpg
1768	Dying Light 2: Stay Human	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31k4.jpg
1769	Spherakill	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2odf.jpg
1770	Plunder Panic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vgf.jpg
1771	Enchain	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nu4.jpg
1772	Mirror Layers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3q52.jpg
1773	N.U.T.Z.	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1u8n.jpg
1774	Spiral	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a0z.jpg
1775	Temtem	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1on0.jpg
1776	Forbidden Game	\N
1777	Gran Turismo 7	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g84.jpg
1778	John Mambo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co36h1.jpg
1779	SUMMER VACATION	\N
1780	S.T.A.L.K.E.R. 2: Heart of Chernobyl	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39rw.jpg
1781	Theropods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co311s.jpg
1782	Delphyq	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i9z.jpg
1783	Dinosaur Fossil Hunter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39sj.jpg
1784	A Tale Of Paper	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t5a.jpg
1785	Taiji	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37gu.jpg
1786	Civlands	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1uxl.jpg
1787	SUPER 3-D CRUNK BROS.	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1v3b.jpg
1788	War Yards	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i78.jpg
1789	Bots & Belts	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i7m.jpg
1790	Primateria	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i8m.jpg
1791	Stramedia: my_MISADVENTURE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i9t.jpg
1792	Death Blonde	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iac.jpg
1793	Tower of Samsara: Hidden Treasures	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ict.jpg
1794	Sky Squadron	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i74.jpg
1795	Catventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2icu.jpg
1796	Red Cap Zombie Hunter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2if2.jpg
1797	Zoo Economy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j0a.jpg
1798	Cramped Room of Death	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j0i.jpg
1799	KAPIA	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j0v.jpg
1800	Nienix	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j14.jpg
1801	ROGUE SHIFT	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j16.jpg
1802	Polter Pals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2icw.jpg
1803	Finders, Keepers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i5c.jpg
1804	SuchArt: Genius Artist Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i5b.jpg
1805	Rooftop Renegade	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ibc.jpg
1806	Hatsune Miku: Colorful Stage!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qx1.jpg
1807	ValiDate: Struggling Singles in your Area	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31c9.jpg
1808	Deathsmiles I & II	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2heg.jpg
1809	Spacelines from the Far Out	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3u6h.jpg
1810	Strings Theory	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hh1.jpg
1811	Shujinkou	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hha.jpg
1812	Skyseeker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hrc.jpg
1813	Shrine's Legacy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hu1.jpg
1814	Hexarchy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mm6.jpg
1815	Nyanroo The Supercat	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hzu.jpg
1816	Running Rogue	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jx4.jpg
1817	Aircraft Carrier Survival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hzt.jpg
1818	Darkest Valley	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i0x.jpg
1819	The Ground Division	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i2o.jpg
1820	Super Mombo Quest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i3o.jpg
1821	Stellar Wanderer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j1a.jpg
1822	Dynasty Warriors 9: Empires	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oqs.jpg
1823	Kargast	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j1f.jpg
1824	Zack 2: Celestine's Map	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jsq.jpg
1825	Riders Republic: Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gro.jpg
1826	Neversong: Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zgj.jpg
1827	Clive 'N' Wrench: Badge Edition	\N
1829	King Arthur: Knight's Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ij9.jpg
1830	Human: Fall Flat - Anniversary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qit.jpg
1831	Riders Republic: Gold Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3grn.jpg
1832	Marvel's Spider-Man: Miles Morales - Launch Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ujf.jpg
1833	Sakaagari Hurricane Portable	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iuq.jpg
1834	Ordem Paranormal: Enigma do Medo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iv0.jpg
1835	Gods of Sand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j1s.jpg
1836	A Long Journey to an Uncertain End	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p0e.jpg
1837	O.R.B. Offensive Rolling Bot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j5c.jpg
1838	Brawl Chess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j7a.jpg
1839	Phantom Breaker: Omnia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2isv.jpg
1840	VR Quiet Life	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2igt.jpg
1841	Cubia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jy0.jpg
1842	Slide	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jy2.jpg
1843	Tale Of A Wolf	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jsp.jpg
1844	Black Border	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2juv.jpg
1845	Tree House Survivors	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jum.jpg
1846	Brocula	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jug.jpg
1847	Domineon 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jv8.jpg
1848	Rise Against the Invaders	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jv7.jpg
1849	Crash The Core	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bbj.jpg
1850	Revita	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2u55.jpg
1851	Wildcat Gun Machine	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jxu.jpg
1852	Firing Vibes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jxe.jpg
1853	Hardest Harvest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2iil.jpg
1854	Rubber Bandits	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ixe.jpg
1855	The Singularity Trials	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ixg.jpg
1856	Line Dance Virtual	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jxc.jpg
1857	Lovely Overseer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j3s.jpg
1858	Twilight Memoria	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jsf.jpg
1859	Maglam Lord	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hef.jpg
1860	Quantum Maki	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hav.jpg
1861	Firework	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hah.jpg
1862	Conscript	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i5n.jpg
1863	Curved Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k7k.jpg
1864	Holomento	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2qcw.jpg
1865	VoxStory	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rto.jpg
1866	Free Royale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2q6x.jpg
1867	Party Animals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hth.jpg
1868	HyperStacks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xe8.jpg
1869	Totemic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fki.jpg
1870	Reavers of New Rome	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jv2.jpg
1871	Blood Bowl 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fpw.jpg
1872	Kingdoms of Amalur: Re-Reckoning - Fatesworn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2frk.jpg
1873	Sam & Max: This Time It's Virtual	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qd.jpg
1874	JUSTICE SUCKS: RECHARGED	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lt8.jpg
1875	Poker Club	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fsi.jpg
1876	The Stone of Madness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g4f.jpg
1877	Eiyuden Chronicle: Hundred Heroes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2u97.jpg
1878	Earth Defense Force 6	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hee.jpg
1879	Turrican Ultra Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vh7.jpg
1880	Gotham Knights	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3s9z.jpg
1881	Impulse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gxw.jpg
1882	Sonority	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nl0.jpg
1883	Monorail Stories	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fbs.jpg
1884	Date Night Bowling	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i6p.jpg
1885	Land of Screens	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fe3.jpg
1886	Knight Squad 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fei.jpg
1887	Externus: Path of the Solari	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ufd.jpg
1888	River City Girls Zero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39x9.jpg
1889	Cleo: A Pirate's Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o7s.jpg
1890	Broken Pieces	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fhn.jpg
1891	SCP Outer Site	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2opm.jpg
1892	Turrican Anthology Vol. 1	\N
1893	Turrican Anthology Vol. 2	\N
1894	Turrican Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vh1.jpg
1895	Pharaoh: A New Era	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lww.jpg
1896	White Shadows	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g8n.jpg
1897	Hyper Team Recon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lsg.jpg
1898	Sonzai	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m09.jpg
1899	Frustrain	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ggv.jpg
1900	Brutal Fate	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m99.jpg
1901	Grid Fight: Mask of the Goddess	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i55.jpg
1902	You Suck at Parking	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3prb.jpg
1903	The Invincible	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gvv.jpg
1904	Carnivores	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2za7.jpg
1905	World Wide Hack	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ozr.jpg
1906	Five Nights at Freddy's: Security Breach	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gm5.jpg
1907	Monster Hunter Rise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uzk.jpg
1908	Ori Collector's Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mnu.jpg
1909	Phoenix Point: Year One Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hwe.jpg
1910	GRAVEN	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2h3c.jpg
1911	Squirrel & Bear: Rascal's Escape	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gvz.jpg
1912	The Last Hour	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gyr.jpg
1913	Death Scream Land	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hfa.jpg
1914	Blind Fate: Edo no Yami	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gfp.jpg
1915	Akatori	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2si1.jpg
1916	Riders Republic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gkd.jpg
1917	Duru	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3z2e.jpg
1918	Ova Magica	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k81.jpg
1919	There Is No Light	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m22.jpg
1920	Dum Dum Dinos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jzc.jpg
1921	Midnight Fight Express	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3og0.jpg
1922	Healing Spree	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fys.jpg
1923	POSTAL: Brain Damaged	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lx9.jpg
1924	Prince of Persia: The Sands of Time Remake	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g7k.jpg
1925	Dragon Acres	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k1p.jpg
1926	Sunshine Manor	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30ff.jpg
1927	Yami	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uup.jpg
1928	Wacky Cartoon Racers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a4m.jpg
1929	Tormented Souls	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2txl.jpg
1930	Tropicalia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2n7a.jpg
1931	Dungeon Crusher Kiritan	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co37m4.jpg
1932	Sunday Rivals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2owm.jpg
1933	Chiaroscuro	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o5o.jpg
1934	Misc.	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f8f.jpg
1935	Crimzon Clover: World EXplosion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t5y.jpg
1936	My Time at Sandrock	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jcb.jpg
1937	Puzzle Quest 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ov5.jpg
1938	Kathy Rain: Director's Cut	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ova.jpg
1939	Pale Night	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oyu.jpg
1940	Genomon: Genetic Monsters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sp7.jpg
1941	ANVIL: Vault Breakers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p69.jpg
1942	Farlight 84	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p68.jpg
1943	Irena: Genesis Metal Fury	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ou0.jpg
1944	Robin Hood: Builders Of Sherwood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sp6.jpg
1945	Hegemony III: Isle of Giants	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p94.jpg
1946	Batora: Lost Haven	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p95.jpg
1947	The Day Before	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p8q.jpg
1948	Last Soul	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pdy.jpg
1949	The Many Pieces of Mr. Coo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ppr.jpg
1950	NIGHT/SHADE: You're The Drug	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ppu.jpg
1951	Cybel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39tf.jpg
1952	Resident Evil Re:Verse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2otq.jpg
1953	Kill the King	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sqt.jpg
1954	Farthest Frontier	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oqf.jpg
1955	A Fox Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2obf.jpg
1956	Astronite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2obk.jpg
1957	Demons of Asteborg	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oc4.jpg
1958	The Ranchers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oce.jpg
1959	Blu	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2odl.jpg
1960	Airoheart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2odm.jpg
1961	Classic Sport Driving	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oh0.jpg
1962	Harbin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oop.jpg
1963	Zecha Tactics	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oi9.jpg
1964	Lost Ruins	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oij.jpg
1965	Ninja Issen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oik.jpg
1966	Cogen: Sword of Rewind	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3www.jpg
1967	Demonblood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2okl.jpg
1968	Hole Punch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2okn.jpg
1969	Kingdom Gun	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2olw.jpg
1970	Surviving the Aftermath: Day One Edition	\N
1971	Kitsune Tails	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oaf.jpg
1972	Blazing Rangers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2r2q.jpg
1973	Definitely Not Fried Chicken	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rio.jpg
1974	The Signifier: Director's Cut	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sv7.jpg
1975	Gary Grigsby's War in the East 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3voj.jpg
1976	Frontier Hunter: Erza’s Wheel of Fortune	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sx6.jpg
1977	Reknum: Fantasy of Dreams	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sxp.jpg
1978	Six Days in Fallujah	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t22.jpg
1979	Full Circle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2thf.jpg
1980	RAILGRADE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2stz.jpg
1981	Marvel’s Avengers: Spider-Man - Untitled Operation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tbi.jpg
1982	Malice & Greed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3rnh.jpg
1983	Planet Crafter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tug.jpg
1984	Battle Dome	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tf2.jpg
1985	Zombies in Space	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tg2.jpg
1986	Triangle Strategy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3vno.jpg
1987	Star Wars: Hunters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3klt.jpg
1988	Instinction	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39qq.jpg
1989	Strawberry Nauts	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zss.jpg
1990	Eminus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sqm.jpg
1991	Dash Hale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sqi.jpg
1992	Mission in Snowdriftland	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sp2.jpg
1993	Total War: WARHAMMER III	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rze.jpg
1994	Race Condition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2rzq.jpg
1995	Sands of Aura	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s0v.jpg
1996	Mist Legacy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s0l.jpg
1997	Tomb Raider Reloaded	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tsm.jpg
1998	Squadron 51	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s1l.jpg
1999	SOUND VOLTEX EXCEED GEAR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s28.jpg
2000	Blind Drive	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s5m.jpg
2001	Final Fantasy XIV: Endwalker	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30hn.jpg
2002	The Kostka	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3iu0.jpg
2003	Project Space Hunter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s9m.jpg
2004	Cats and the Other Lives	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s9z.jpg
2005	Heart of Muriet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2spn.jpg
2006	Endocrisis	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sol.jpg
2007	Trophy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2r3f.jpg
2008	Teacup	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o9o.jpg
2009	Jessie Jaeger in Cleopatra's Curse	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o5m.jpg
2010	Project Atlas	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o7k.jpg
2011	Raptor Boyfriend: A High School Romance	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k7l.jpg
2012	Clid the Snail	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wx4.jpg
2013	Billie Bust Up	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p1q.jpg
2014	STASIS: BONE TOTEM	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k6k.jpg
2015	Time Loader	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k6s.jpg
2016	Wild Dose	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kbw.jpg
2017	At Eve's Wake	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ka6.jpg
2018	Atlas Rogues	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2keo.jpg
2019	Little Sim World	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lu5.jpg
2020	BROK the InvestiGator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2koj.jpg
2021	Fallen Leaf	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p2y.jpg
2022	Fraymakers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kp8.jpg
2023	Phantom Gear	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kq6.jpg
2024	The Meating	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kqg.jpg
2025	Astro Universe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kgx.jpg
2026	Deadlane	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kac.jpg
2027	Fashion Police Squad	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kah.jpg
2028	TailQuest: Defense	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kal.jpg
2029	Riders Republic: Ultimate Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3grp.jpg
2030	R-TYPE FINAL 2: Inaugural Flight Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ork.jpg
2031	Tree of Life: Oddria!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o7a.jpg
2032	Sclash	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jq3.jpg
2033	Super Lone Survivor	\N
2034	The Dark Pictures Anthology: House of Ashes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kj0.jpg
2035	Divinity Chronicles: Journey to the West	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p2h.jpg
2036	LUNARiA -Virtualized Moonchild-	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t3f.jpg
2037	Stella of The End	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3t4k.jpg
2038	FAIRYMM: the Insomniac Beauty	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jrr.jpg
2039	The Wandering Village	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jtt.jpg
2040	Little Ghost project	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k1d.jpg
2041	What The Duck	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k1o.jpg
2042	Good Knight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k9u.jpg
2043	Foxen Island	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kan.jpg
2044	Jinki Resurrection: Limited Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2or5.jpg
2045	MODERN WARSHIPS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2l1o.jpg
2046	Brain Meltdown - Into Despair	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2l4x.jpg
2047	Clockwork Aquario	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t5x.jpg
2048	One Lonely Outpost	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mni.jpg
2049	Romancelvania	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2n66.jpg
2050	Know by Heart	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nbw.jpg
2051	Eyra: The Crow Maiden	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nd7.jpg
2052	The Curse of Illmore Bay	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ndd.jpg
2053	Evertried	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wxf.jpg
2054	SATURNALIA	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nft.jpg
2055	Blood Bowl 3: Brutal Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oqp.jpg
2056	Peripeteia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nn0.jpg
2057	Zoo Strikers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nn4.jpg
2058	Vampire: Le Fruit Défendu	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nrt.jpg
2059	TideTurn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nv7.jpg
2060	Fallen Tear: The Ascension	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ny1.jpg
2061	Shattered Soul	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nyd.jpg
2062	A Rogue Escape	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o4p.jpg
2063	Happy Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30zy.jpg
2064	GlitchPoly	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jgv.jpg
2065	hexceed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mmp.jpg
2066	Capcom Arcade Stadium Pack 3: Arcade Evolution	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3k9x.jpg
2067	Mega Knockdown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lg3.jpg
2068	Slaves of Magic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ljg.jpg
2069	Drova: Forsaken Kin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mdr.jpg
2070	It's Fall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2qg1.jpg
2071	Forza Horizon 5	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ofx.jpg
2072	Stray Blade	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3p78.jpg
2073	Loop Hero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mfy.jpg
2074	Century: Age of Ashes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mg1.jpg
2075	The Callisto Protocol	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mi5.jpg
2076	Open Roads	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mfw.jpg
2077	Road 96	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mg9.jpg
2078	Evil Dead: The Game	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t8v.jpg
2079	Evil West	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mg7.jpg
2080	Capcom Arcade Stadium Pack 1: Dawn of the Arcade	\N
2081	Capcom Arcade Stadium Pack 2: Arcade Revolution	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3kbf.jpg
2082	Space Invaders: Invincible Collection - Special Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mmf.jpg
2083	Splatoon 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2twc.jpg
2084	Himig	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2zre.jpg
2085	Tracks of Thought	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f7x.jpg
2086	Skinwalker Hunt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m02.jpg
2087	Oakshade Acres	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lw6.jpg
2088	Horribunnies	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lsa.jpg
2089	Floppy Knights	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3m7q.jpg
2090	Frequency	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c1d.jpg
2091	KUR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jx9.jpg
2092	Forsaken Realm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lqo.jpg
2093	Raider Kid and the Ruby Chest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lxs.jpg
2094	War of Velana	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co25fm.jpg
2095	Mad Streets	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ia4.jpg
2096	Sayri: The Beginning	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f7p.jpg
2097	Noob RPG	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ydl.jpg
2098	Gran Saga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2h06.jpg
2099	Little Witch in the Woods	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xqo.jpg
2100	Alisa	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jtu.jpg
2101	Heat and Run	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c25.jpg
2102	Hellbound: the Awakening	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ls1.jpg
2103	Far Away	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lq5.jpg
2104	DORAIJIN	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lon.jpg
2105	Hellver	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m8e.jpg
2106	Climber: Sky is the limit	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lmw.jpg
2107	Moons Of Darsalon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lvd.jpg
2108	Darklin Wars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1yph.jpg
2109	UEDI: Shadow of the Citadel	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ys6.jpg
2110	Undead Eatery	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m2y.jpg
2111	Undead Reality	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m2z.jpg
2112	Chronicles of Galdurvale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lmg.jpg
2113	Celestial	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mbh.jpg
2114	MAX MOZART	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lul.jpg
2115	Dark Water	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ibw.jpg
2116	Ao no Kanata no Four Rhythm EXTRA2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p1e.jpg
2117	Gestalt: Steam & Cinder	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2w6d.jpg
2118	Your Story	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i7i.jpg
2119	Snacko	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co281r.jpg
2120	Let It Happen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ltz.jpg
2121	Death Carnival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2pvj.jpg
2122	Monospaced Lovers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lvb.jpg
2123	Demon Slayer: Kimetsu no Yaiba – Keppuu Kengeki Royale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2opu.jpg
2124	Divinoids	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co22lo.jpg
2125	Heaven Burns Red	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co22rf.jpg
2126	Aniquilation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wr1.jpg
2127	Dordogne	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co23f0.jpg
2128	Quantum Error	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29q3.jpg
2129	SiN: Reloaded	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2h2r.jpg
2130	Farm Your Friends	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zld.jpg
2131	The Night is Grey	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bci.jpg
2132	Flight Of Nova	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yqu.jpg
2133	Darkevo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gky.jpg
2134	The Song of the Fae	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j1z.jpg
2135	This Means Warp	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kaw.jpg
2136	Divisadero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cva.jpg
2137	Diplomacy is Not an Option	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3omx.jpg
2138	Sea of Stars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co215b.jpg
2139	Shadow Man Remastered	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2yqy.jpg
2140	Hazel Sky	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ftm.jpg
2141	Lasting Solstice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c23.jpg
2142	Extremely Realistic Siege Warfare Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3a0f.jpg
2143	REBORN: Survival	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ly1.jpg
2144	INVISIBLE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1zy8.jpg
2145	Klang 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wdy.jpg
2146	Rogue Lords	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3peb.jpg
2147	MOLC's Daily Life of S.P.R.I.T.E.S.	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1zzs.jpg
2148	ASTRALODE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lk9.jpg
2149	Kaiju Fishing	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lt9.jpg
2150	Car Thief Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lm0.jpg
2151	Last Slice	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co20ey.jpg
2152	All Must Fall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ljq.jpg
2153	Blade Runner: Enhanced Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co21dc.jpg
2154	B.ARK	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2phv.jpg
2155	Seablib	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t4g.jpg
2156	Gripper	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jss.jpg
2157	Nascence	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1yzx.jpg
2158	The DOCS: Department of Creatures	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1m.jpg
2159	The Whipper	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m2d.jpg
2160	Epifrog	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c24.jpg
2161	Gravity Escape	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lrl.jpg
2162	Shardhunters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lzo.jpg
2163	Abomi Nation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ljj.jpg
2164	Your little story: Valentine's Day	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1ww8.jpg
2165	Former Future	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lqn.jpg
2166	Love Me Forever	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lud.jpg
2167	Kingpin: Reloaded	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co21dy.jpg
2168	Screaming Chicken: Ultimate Showdown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hrv.jpg
2169	DISRUPTION	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xbq.jpg
2170	Helios	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co25fo.jpg
2171	Rotten Utopia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lz2.jpg
2172	Birds Are Real	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ll4.jpg
2173	Buried Alive: The Annihilation VR	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2llt.jpg
2174	Transmute	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xab.jpg
2175	Pawnshop Tycoon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lwp.jpg
2176	Deadness	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lo5.jpg
2177	The Mechanical World of Dr. Gearbox	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1t.jpg
2178	Corepunk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xcr.jpg
2179	Rackham's Shambala Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3hb0.jpg
2180	Samurai Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xuc.jpg
2181	Temple Of Snek	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i53.jpg
2182	The House In The Hollow	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m7f.jpg
2183	Once More	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ql2.jpg
2184	Joan of Arc: The Beginning	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3h8f.jpg
2185	Errand Boy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f7o.jpg
2186	Mahou Mating	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mny.jpg
2187	The Last Cube	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1we4.jpg
2188	My Work Is Not Yet Done	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co312g.jpg
2189	How To Hack In?	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lsd.jpg
2190	Birth to Death	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ll5.jpg
2191	Gun Miner	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lrv.jpg
2192	The Forgotten	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1q.jpg
2193	Tank Crew	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1c.jpg
2194	StressOut	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m0x.jpg
2195	Rosewater	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fho.jpg
2196	Theology	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1w.jpg
2197	Aurora: Weather Warfare	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lkb.jpg
2198	Frozen Memories	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lqu.jpg
2199	The Perfect Concept	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1x.jpg
2200	Defentures	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lob.jpg
2201	Finnish Army Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zov.jpg
2202	Doodle Alive	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lom.jpg
2203	Death of Rose	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2g90.jpg
2204	FIRST STAR DOWN	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3zpq.jpg
2205	Asterism Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lk8.jpg
2206	Ami	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lju.jpg
2207	Peasant Uprise	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lws.jpg
2208	CZAR: Decision	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jsg.jpg
2209	Hero Syndrome	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c1y.jpg
2210	Cyber Knights: Flashpoint	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m68.jpg
2211	Orbis Fugae	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lwe.jpg
2212	终回〇Murder Reservation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m5k.jpg
2213	The Outbound Ghost	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39jf.jpg
2214	Evolutis	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t8w.jpg
2215	Food Truck Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1xsk.jpg
2216	Split Signal	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m0m.jpg
2217	幽灵列车物语 TrainStory	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m4x.jpg
2218	Little Shop of Junk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lu4.jpg
2219	The Meldstorm	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m1u.jpg
2220	Rain Invasion	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c26.jpg
2221	Bonfire Peaks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i5d.jpg
2222	Sovereign's Will	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m0b.jpg
2223	Beglov Style	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co290m.jpg
2224	Ghost on the Shore	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co1y4e.jpg
2225	4th Super Industrial Revolution Wars	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ljh.jpg
2226	Protagonism	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3y2c.jpg
2227	Mira's Tale	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lv5.jpg
2228	Mall Craze	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2luk.jpg
2229	Norco	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nu3.jpg
2230	Everyday Life Edengrall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c1z.jpg
2231	Kindred Fates	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2qhv.jpg
2232	Pekoe	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f86.jpg
2233	Kainga	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3phm.jpg
2234	Linda & Joan	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cle.jpg
2235	LightDread City	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2or2.jpg
2236	ShopOfTentacles	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b9u.jpg
2237	Starstruck: Hands of Time	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2bw1.jpg
2238	Monken Crusher	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2bar.jpg
2239	Azure Striker GUNVOLT 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2bw9.jpg
2240	Mr. DRILLER DrillLand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2bzb.jpg
2241	furiko	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2b72.jpg
2242	Project MIKHAIL	\N
2243	Perfectly Perilous Provisions	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t44.jpg
2244	Shadow Warrior 3	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cdb.jpg
2245	Steelrising	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ctc.jpg
2246	Test Drive: Unlimited - Solar Crown	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ctb.jpg
2247	Another Crusade	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tah.jpg
2248	Dark Fracture	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wm7.jpg
2249	Inspector Javert and the Oath of Blood	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ca5.jpg
2250	Diorama Knight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mop.jpg
2251	Fallen Legion Revenants	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2nwd.jpg
2252	Escape from Asura	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2av0.jpg
2253	Truck Mechanic: Dangerous Paths	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29ma.jpg
2254	Grand Theft Auto V: Expanded and Enhanced	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2msd.jpg
2255	Grand Theft Auto Online	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jfp.jpg
2256	Just Die Already	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29rb.jpg
2257	Vampire: The Masquerade - Bloodlines 2 Collector’s Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2d7g.jpg
2258	Icarus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29oc.jpg
2259	Dustborn	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29q2.jpg
2260	Stagehands!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k9w.jpg
2261	Serial Cleaners	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29ps.jpg
2262	Destiny 2: The Witch Queen	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3nu1.jpg
2263	Destiny 2: Lightfall	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29qf.jpg
2264	Princess Farmer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wdx.jpg
2265	The Cabbage Effect	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3wl2.jpg
2266	Urban Strife	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3y0a.jpg
2267	EMUUROM	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cfu.jpg
2268	To Your Stations!	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cs8.jpg
2269	Pragmata	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29mb.jpg
2270	Her War	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2csc.jpg
2271	New Era	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3gi0.jpg
2272	Anomaly Hunter	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2emn.jpg
2273	Trouble Hunter Chronicles: The Stolen Creed	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2emo.jpg
2274	Braid: Anniversary Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t5g.jpg
2275	Stormrite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3i7w.jpg
2276	Oddinary Highway	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2evv.jpg
2277	Hogwarts Legacy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gn3.jpg
2278	Yakuza: Like a Dragon - Legendary Hero Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2emb.jpg
2279	Suicide Squad: Kill the Justice League	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40fu.jpg
2280	The Legend of Heroes: Trails into Reverie	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3bb2.jpg
2281	Bear & Breakfast	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f2n.jpg
2282	Card Shark	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f2o.jpg
2283	Black Myth: Wukong	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2faf.jpg
2284	Cupid Parasite	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qin.jpg
2285	GigaBash	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3mp7.jpg
2286	Aethernaut	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2eza.jpg
2287	Yakuza: Like a Dragon - Hero Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ema.jpg
2288	Skeletal Avenger	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gop.jpg
2289	The Outer Worlds: Murder on Eridanos	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xcy.jpg
2290	Korunu Kopia ~Fushigi no Sumu Machi~	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2oow.jpg
2291	Alba: A Wildlife Adventure	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3uyi.jpg
2292	APICO	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kz9.jpg
2293	Bomb Rush Cyberfunk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hdp.jpg
2294	ExoMecha	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t8x.jpg
2295	Echo Generation	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2e55.jpg
2296	Hello Neighbor 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2e66.jpg
2297	Warhammer 40,000: Darktide	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ego.jpg
2298	The Gunk	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2e56.jpg
2299	Shredders	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ef7.jpg
2300	Earthlock 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2m7p.jpg
2301	Walking Simulator A Month Club (Complete Edition)	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2e1i.jpg
2302	Sid Meier's Civilization VI: Platinum Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2koo.jpg
2303	Forever Ago	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ooo.jpg
2304	IGEO DX	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2eef.jpg
2305	Skyclimbers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2xlr.jpg
2306	Goodbye Volcano High	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29m3.jpg
2307	FORSPOKEN	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2vfv.jpg
2308	Blankos Block Party	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29me.jpg
2309	MicroWorks	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3ts9.jpg
2310	One Dreamer	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co26je.jpg
2311	Through the Nightmares	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j01.jpg
2312	Hand In Hand	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2tpz.jpg
2313	Helms of Fury	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2u4e.jpg
2314	Stride	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2465.jpg
2315	The Kingless Land	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co36wu.jpg
2316	Beyond The Veil	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2p1o.jpg
2317	BattleCakes	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f85.jpg
2318	Akurra	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3088.jpg
2319	Red Frontier 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i9r.jpg
2320	Ghosts and Bureaucracy	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2frp.jpg
2321	Ex-Zodiac	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ep3.jpg
2322	Orbitals	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qns.jpg
2323	RUMBLE	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yq7.jpg
2324	Run TavernQuest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3yrg.jpg
2325	Minimal Affect	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2opd.jpg
2326	Spies & Soldiers	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31er.jpg
2327	The Forest Cathedral	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2wdw.jpg
2328	In Plain Sight	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2cjv.jpg
2329	Please Hold Me	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2lpj.jpg
2330	Haiku, the Robot	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2n6s.jpg
2331	Ostrova Koshki	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3qox.jpg
2332	SCP: Pandemic	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2fb6.jpg
2333	Falling Frontier	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co39wr.jpg
2334	Toasty	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2k9t.jpg
2335	Frogsong	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2f80.jpg
2336	Sole Iron Tail	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2izz.jpg
2337	Visceratum	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3oti.jpg
2338	The Pope: Power & Sin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2hs3.jpg
2339	The Painted Forest	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jvd.jpg
2340	Iron Vulture	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ohg.jpg
2341	Ashina: The Red Witch	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2gyu.jpg
2342	The Mortuary Assistant	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3w1p.jpg
2343	Together in Battle	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2kar.jpg
2344	KILL YOUR FRIENDS	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2syr.jpg
2345	Roots of Pacha	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ma2.jpg
2346	Trollhunters: Defenders of Arcadia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2c3v.jpg
2347	Lords of Exile	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co26gu.jpg
2348	Vampire: The Masquerade - Bloodlines 2 First Blood Edition	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27kx.jpg
2349	PAC-MAN LIVE STUDIO	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27t0.jpg
2350	Sherlock Holmes: Chapter One	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co27vo.jpg
2351	Until Then	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2t6u.jpg
2352	Soul of Hero	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co31b9.jpg
2353	Tchia	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mgm.jpg
2354	Halcyon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mzj.jpg
2355	Mystiqa	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2o5p.jpg
2356	Drox Operative 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2924.jpg
2357	Kao the Kangaroo	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co292l.jpg
2358	Re:ZERO -Starting Life in Another World- The Prophecy of the Throne	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2mgk.jpg
2359	Metal: Hellsinger	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co29go.jpg
2360	Demon Turf	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40o4.jpg
2361	Spirit Hunter: Shibito Magire	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i8u.jpg
2362	Crowalt: Traces of the Lost Colony	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2j0z.jpg
2363	Among Ripples: Shallow Waters	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co402k.jpg
2364	Eville	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2q40.jpg
2365	Chorus	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co25ie.jpg
2366	Tidewoken	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co26du.jpg
2367	Moonray	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2efk.jpg
2368	Yacht Mechanic Simulator	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2i4z.jpg
2369	The Last Stand: Aftermath	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2s5g.jpg
2370	Fabled Lands	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jii.jpg
2371	Bzzzt	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2obi.jpg
2372	Paleo Pines	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co311m.jpg
2373	Creep	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ixq.jpg
2374	Dust Fleet	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co30hp.jpg
2375	1 Screen Platformer 2	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ifa.jpg
2376	Shovel Knight: Pocket Dungeon	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co3jlm.jpg
2377	Lords & Villeins	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2jsk.jpg
2378	Peglin	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2ixk.jpg
2379	Piroku	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2csh.jpg
2380	Remnants of the Precursors	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co2sqj.jpg
2381	Tower Offender	https://images.igdb.com/igdb/image/upload/t_cover_big_2x/co40o1.jpg
\.


--
-- Data for Name: mercadorias_fisicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mercadorias_fisicas (id, nome, descricao, categoria, preco, quantidade, imagem) FROM stdin;
1	Processador AMD Ryzen 9 9950x	Min 3.4 Ghz Max 4.9 Ghz Am4	cpu	1839.9	300	https://images.kabum.com.br/produtos/fotos/129451/processador-amd-ryzen-9-5950x-cache-72mb-3-4ghz-4-9ghz-max-turbo-am4-100-100000065box_1602603581_gg.jpg
2	Nintendo Switch	32 GB Joycon Neon Azul	console	2500.99	150	https://images.kabum.com.br/produtos/fotos/135586/nintendo-switch-32gb-1x-joycon-neon-azul-vermelho-hbdskaba2_1610110214_g.jpg
3	Xiaomi Redmi Note 10 Pro	6 GB Ram 128 GB Cinza Versão Global	celular	3514.9	75	https://images8.kabum.com.br/produtos/fotos/sync_mirakl/174538/Xiaomi-Redmi-Note-10-Pro-6GB-RAM-128GB-Cinza-Vers-o-Global_1629485947_m.jpg
4	Ssd Kross Elegance	480 GB Sata 3 6 GBs 550 Mbs Leitura 500 Mbs Gravacao Preto	ssd	352.9	100	https://images.kabum.com.br/produtos/fotos/168989/ssd-kross-elegance-480gb-sata-iii-6gb-s-2-5-leitura-550mb-s-gravacao-500mb-s-preto-ke-ssdis48g_1624981694_gg.jpg
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nome, email, senha) FROM stdin;
8	test	test@email.com	test123
\.


--
-- Name: mercadorias_digitais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mercadorias_digitais_id_seq', 1, false);


--
-- Name: produtos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produtos_id_seq', 4, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 8, true);


--
-- Name: mercadorias_digitais mercadorias_digitais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercadorias_digitais
    ADD CONSTRAINT mercadorias_digitais_pkey PRIMARY KEY (id);


--
-- Name: mercadorias_fisicas produtos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercadorias_fisicas
    ADD CONSTRAINT produtos_pk PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pk PRIMARY KEY (id);


--
-- Name: produtos_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX produtos_id_uindex ON public.mercadorias_fisicas USING btree (id);


--
-- Name: produtos_imagem_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX produtos_imagem_uindex ON public.mercadorias_fisicas USING btree (imagem);


--
-- Name: produtos_nome_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX produtos_nome_uindex ON public.mercadorias_fisicas USING btree (nome);


--
-- Name: usuarios_email_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX usuarios_email_uindex ON public.usuarios USING btree (email);


--
-- Name: usuarios_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX usuarios_id_uindex ON public.usuarios USING btree (id);


--
-- PostgreSQL database dump complete
--

