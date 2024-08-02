--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Debian 15.6-1.pgdg120+2)
-- Dumped by pg_dump version 16.3 (Homebrew)

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
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: language; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.language (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.language OWNER TO audio_guide_api;

--
-- Name: language_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.language_id_seq OWNER TO audio_guide_api;

--
-- Name: language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.language_id_seq OWNED BY public.language.id;


--
-- Name: point; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point (
    id integer NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    address text NOT NULL,
    entry_price real,
    email text,
    phone text,
    point_type_id integer,
    should_contact boolean DEFAULT false,
    day1 character varying,
    day2 character varying,
    day3 character varying,
    day4 character varying,
    day5 character varying,
    day6 character varying,
    day7 character varying,
    accessible boolean DEFAULT false
);


ALTER TABLE public.point OWNER TO audio_guide_api;

--
-- Name: point_audio; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_audio (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    point_id integer NOT NULL,
    language character varying(30) NOT NULL,
    duration integer
);


ALTER TABLE public.point_audio OWNER TO audio_guide_api;

--
-- Name: point_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.point_id_seq OWNER TO audio_guide_api;

--
-- Name: point_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.point_id_seq OWNED BY public.point.id;


--
-- Name: point_image; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_image (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    point_id integer NOT NULL,
    credits text
);


ALTER TABLE public.point_image OWNER TO audio_guide_api;

--
-- Name: point_name; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_name (
    id integer NOT NULL,
    point_id integer NOT NULL,
    language character varying(30) NOT NULL,
    name character varying(100)
);


ALTER TABLE public.point_name OWNER TO audio_guide_api;

--
-- Name: point_name_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.point_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.point_name_id_seq OWNER TO audio_guide_api;

--
-- Name: point_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.point_name_id_seq OWNED BY public.point_name.id;


--
-- Name: point_tag; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_tag (
    id integer NOT NULL,
    point_id integer NOT NULL,
    tag_id integer
);


ALTER TABLE public.point_tag OWNER TO audio_guide_api;

--
-- Name: point_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.point_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.point_tag_id_seq OWNER TO audio_guide_api;

--
-- Name: point_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.point_tag_id_seq OWNED BY public.point_tag.id;


--
-- Name: point_transcript; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_transcript (
    id integer NOT NULL,
    point_id integer NOT NULL,
    language character varying(30) NOT NULL,
    text text NOT NULL,
    duration integer
);


ALTER TABLE public.point_transcript OWNER TO audio_guide_api;

--
-- Name: point_transcript_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.point_transcript_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.point_transcript_id_seq OWNER TO audio_guide_api;

--
-- Name: point_transcript_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.point_transcript_id_seq OWNED BY public.point_transcript.id;


--
-- Name: point_type; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_type (
    id integer NOT NULL
);


ALTER TABLE public.point_type OWNER TO audio_guide_api;

--
-- Name: point_type_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.point_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.point_type_id_seq OWNER TO audio_guide_api;

--
-- Name: point_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.point_type_id_seq OWNED BY public.point_type.id;


--
-- Name: point_type_language; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.point_type_language (
    id integer NOT NULL,
    point_type_id integer,
    language character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.point_type_language OWNER TO audio_guide_api;

--
-- Name: point_type_language_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.point_type_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.point_type_language_id_seq OWNER TO audio_guide_api;

--
-- Name: point_type_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.point_type_language_id_seq OWNED BY public.point_type_language.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    dirty boolean NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO audio_guide_api;

--
-- Name: tag; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.tag (
    id integer NOT NULL
);


ALTER TABLE public.tag OWNER TO audio_guide_api;

--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tag_id_seq OWNER TO audio_guide_api;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;


--
-- Name: tag_language; Type: TABLE; Schema: public; Owner: audio_guide_api
--

CREATE TABLE public.tag_language (
    id integer NOT NULL,
    tag_id integer NOT NULL,
    language character varying(30) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.tag_language OWNER TO audio_guide_api;

--
-- Name: tag_language_id_seq; Type: SEQUENCE; Schema: public; Owner: audio_guide_api
--

CREATE SEQUENCE public.tag_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tag_language_id_seq OWNER TO audio_guide_api;

--
-- Name: tag_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: audio_guide_api
--

ALTER SEQUENCE public.tag_language_id_seq OWNED BY public.tag_language.id;


--
-- Name: language id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.language ALTER COLUMN id SET DEFAULT nextval('public.language_id_seq'::regclass);


--
-- Name: point id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point ALTER COLUMN id SET DEFAULT nextval('public.point_id_seq'::regclass);


--
-- Name: point_name id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_name ALTER COLUMN id SET DEFAULT nextval('public.point_name_id_seq'::regclass);


--
-- Name: point_tag id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_tag ALTER COLUMN id SET DEFAULT nextval('public.point_tag_id_seq'::regclass);


--
-- Name: point_transcript id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_transcript ALTER COLUMN id SET DEFAULT nextval('public.point_transcript_id_seq'::regclass);


--
-- Name: point_type id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_type ALTER COLUMN id SET DEFAULT nextval('public.point_type_id_seq'::regclass);


--
-- Name: point_type_language id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_type_language ALTER COLUMN id SET DEFAULT nextval('public.point_type_language_id_seq'::regclass);


--
-- Name: tag id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);


--
-- Name: tag_language id; Type: DEFAULT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag_language ALTER COLUMN id SET DEFAULT nextval('public.tag_language_id_seq'::regclass);


--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.language (id, name) FROM stdin;
1	pt
\.


--
-- Data for Name: point; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point (id, latitude, longitude, address, entry_price, email, phone, point_type_id, should_contact, day1, day2, day3, day4, day5, day6, day7, accessible) FROM stdin;
101	-7.227095926	-35.878336371	Av. Dr. Elpídio de Almeida, 215 - Catolé, Campina Grande - PB, 58410-215	0	\N	\N	1	f	04:00-19:00	04:00-11:00,13:00-20:30	04:00-11:00,13:00-20:30	04:00-11:00,13:00-20:30	04:00-11:00,13:00-20:30	04:00-11:00,13:00-20:30	05:00-19:00	t
102	-7.223754731	-35.887578205	R. Sebastião Donato, S/N - Centro, Campina Grande - PB, 58400-355	0	\N	\N	1	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
103	-7.224161829	-35.878876402	R. Dr. Severino Cruz, s/n - Centro, Campina Grande - PB, 58400-258	0	\N	\N	2	f	14:00-19:00	\N	10:00-19:00	10:00-19:00	10:00-19:00	10:00-19:00	14:00-19:00	t
104	-7.228489262	-35.890455047	São José, Campina Grande - PB, 58416-450	0	\N	\N	4	f	\N	10:00-18:00	10:00-18:00	10:00-18:00	10:00-18:00	10:00-18:00	10:00-18:00	t
105	-7.22113847	-35.887743791	Av. Mal. Floriano Peixoto, S/N - Centro, Campina Grande - PB, 58400-165	-1	\N	\N	5	t	\N	\N	\N	\N	\N	\N	\N	t
106	-7.226057365	-35.884393343	R. Miguel Couto, 10 - Centro, Campina Grande - PB, 58400-273	10	\N	83981154894	2	f	10:00-16:00	09:00-18:00	09:00-18:00	09:00-18:00	09:00-18:00	09:00-18:00	10:00-16:00	t
107	-7.218253918	-35.881767242	Av. Mal. Floriano Peixoto, 825 - Centro, Campina Grande - PB, 58400-185	0	\N	8333228699	2	f	\N	\N	08:00-13:00	08:00-13:00	08:00-13:00	08:00-13:00	08:00-12:00	f
108	-7.229329069	-35.884661508	R. Benjamin Constant - Centro, Campina Grande - PB, 58410-003	0	\N	\N	2	f	\N	\N	07:00-13:00	07:00-13:00	07:00-13:00	07:00-13:00	07:00-12:00	t
109	-7.224794512	-35.877099327	R. João Florentino de Carvalho, 05 - José Pinheiro, Campina Grande - PB, 58400-312	0	\N	\N	6	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
110	-7.219914683	-35.877010588	R. Dr. Carlos Agra - Centro, Campina Grande - PB, 58400-204	0	\N	\N	4	f	\N	05:00-18:00	05:00-18:00	05:00-18:00	05:00-18:00	05:00-18:00	05:00-18:00	t
111	-7.219042926	-35.882508868	Av. Mal. Floriano Peixoto, 718 - Centro, Campina Grande - PB, 58400-180	0	\N	8333411947	2	f	\N	\N	08:00-17:00	08:00-17:00	08:00-17:00	08:00-17:00	\N	t
112	-7.224430906	-35.880120979	Centro, Campina Grande - PB, 58400-243	0	\N	\N	3	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
113	-7.225213125	-35.877394833	R. Paulo de Frontin, 483-499 - Centro, Campina Grande - PB	0	\N	\N	3	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
114	-7.221827092	-35.889344208	Av. Mal. Floriano Peixoto - Centro, Campina Grande - PB, 58400-170	0	\N	\N	1	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
115	-7.217125091	-35.909756492	R. Aprígio Veloso, 882 - Universitário, Campina Grande - PB, 58429-900	0	\N	\N	7	f	\N	6:00-22:00	6:00-22:00	6:00-22:00	6:00-22:00	6:00-22:00	6:00-18:00	t
116	-7.208787966	-35.917356406	R. Baraúnas, 351 - Universitário, Campina Grande - PB, 58429-500	0	\N	\N	7	f	\N	6:00-22:00	6:00-22:00	6:00-22:00	6:00-22:00	6:00-22:00	6:00-18:00	t
117	-7.217076211	-35.882854463	Praça Lauritzen, 07 - Centro, Campina Grande - PB, 58400-140	-1	\N	\N	4	t	\N	\N	\N	\N	\N	\N	\N	t
118	-7.227540541	-35.882200754	R. Paulo de Frontin, 1-199 - Centro, Campina Grande - PB, 58400-310	-1	\N	\N	3	f	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	t
119	-7.222864843	-35.877872448	R. Dr. Severino Cruz, 771 - Centro, Campina Grande - PB, 58045-010	-1	\N	8333224232	8	f	11:00-22:00	11:00-1:00	11:00-1:00	11:00-1:00	11:00-1:00	11:00-1:00	11:00-1:00	t
120	-7.211915762	-35.916097149	Av. Juvêncio Arruda, 1232-1310 - Bodocongó, Campina Grande - PB, 58430-800	-1	\N	\N	1	f	6:00-21:00	\N	6:00-21:00	6:00-21:00	6:00-21:00	6:00-21:00	6:00-21:00	t
121	-7.253976032	-35.880860073	R. Vig. Calixto, 3230 - Sandra Cavalcante, Campina Grande - PB, 58410-600	-1	\N	\N	9	t	\N	\N	\N	\N	\N	\N	\N	t
122	-7.236074152	-35.913246691	R. José Sebastião Silva, s/n - Dinamérica, Campina Grande - PB, 58416-605	-1	\N	\N	10	f	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	8:00-18:00	t
123	-7.122570258	-34.842451011	R. Abdias Gomes de Almeida, 800 - Tambauzinho, João Pessoa - PB, 58042-900	-1	\N	8332558707	5	t	\N	\N	\N	\N	\N	\N	\N	t
124	-7.213974497	-35.91533711	Av. Juvêncio Arruda, 1232-1310 - Bodocongó, Campina Grande - PB, 58430-800	0	\N	\N	6	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
125	-7.221269924	-35.895271833	R. Nilo Peçanha - Prata, Campina Grande - PB, 58400-515	0	\N	8333213445	11	f	\N	08:00-12:00,14:00-18:00	08:00-12:00,14:00-18:01	08:00-12:00,14:00-18:02	08:00-12:00,14:00-18:03	08:00-12:00,14:00-18:04	\N	t
126	-7.221389538	-35.886771801	R. Treze de Maio, 250 - Centro, Campina Grande - PB, 58400-290	0	\N	8333210682	11	f	\N	19:30-21:00	15:00-17:00	19:30-21:00	\N	19:30-21:00	09:00-11:30,18:00-20:30	t
127	-7.220217775	-35.883283142	Praça Clementino Procópio, 20 292 - Centro, Campina Grande - PB	0	\N	8333214641	11	t	\N	\N	\N	\N	\N	\N	\N	t
128	-7.218015968	-35.893595129	R. Antenor Navarro, 693 - Prata, Campina Grande - PB, 58400-520	0	\N	8333214803	11	f	19:00-21:00	\N	19:00-21:00	14:00-17:00,19:00-21:00	19:00-21:00	\N	09:00-11:30,18:00-20:00	t
129	-7.217410458	-35.885880523	R. Pres. João Pessoa, 2-8 - Centro, Campina Grande - PB, 58400-002	0	\N	\N	3	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	f
130	-7.220015691	-35.883938113	Av. Mal. Floriano Peixoto - Jardim Tavares, Campina Grande - PB, 58402-000	0	\N	\N	12	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
131	-7.218412711	-35.888156259	Av. Pres. Getúlio Vargas, 344 - Centro, Campina Grande - PB, 58400-052	-1	\N	8330655803	2	f	08:00-12:00,14:00-18:00	08:00-12:00,14:00-18:00	08:00-12:00,14:00-18:00	08:00-12:00,14:00-18:00	08:00-12:00,14:00-18:00	\N	\N	t
132	-7.21767584	-35.883939483	Centro, Campina Grande - PB, 58400-100	0	\N	\N	13	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
133	-7.217384289	-35.884401053	R. Maciel Pinheiro, 293 - Centro, Campina Grande - PB, 58400-100	-1	\N	\N	14	t	\N	\N	\N	\N	\N	\N	\N	f
134	-7.216503125	-35.886879109	Centro, Campina Grande - PB, 58400-048	-1	\N	\N	14	t	\N	\N	\N	\N	\N	\N	\N	f
135	-7.2172672	-35.8843201	R. Maciel Pinheiro, 276-288 - Centro, Campina Grande - PB, 58400-100	-1	\N	\N	14	t	\N	\N	\N	\N	\N	\N	\N	f
136	-7.218423753	-35.885216302	Rua Marquês do Herval, 39 - Centro, Campina Grande - PB, 58400-087	-1	\N	8333157300	15	f	07:00-18:00	07:00-18:00	07:00-18:00	07:00-18:00	07:00-18:00	\N	\N	t
137	-7.218624021	-35.8849538	Centro, Campina Grande - PB, 58400-087	0	\N	\N	13	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
138	-7.21853103	-35.885946818	R. Félix Araújo - Centro, Campina Grande - PB, 58400-078	0	\N	\N	16	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
139	-7.213277974	-35.930616994	Serrotão, Campina Grande - PB, 58437-075	0	\N	\N	3	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	\N	f
140	-7.226987364	-35.89451208	R. Zacarias de Souza do O - São José, Campina Grande - PB, 58400-426	-1	\N	\N	9	t	\N	\N	\N	\N	\N	\N	\N	t
141	-7.219540458	-35.8851593	Centro, Campina Grande - PB, 58400-087	0	\N	\N	12	f	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	00:00-23:59	t
142	-7.217276759	-35.885194817	R. Venâncio Neiva, 287 - Centro, Campina Grande - PB, 58400-103	-1	\N	\N	14	t	\N	\N	\N	\N	\N	\N	\N	t
\.


--
-- Data for Name: point_audio; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_audio (id, point_id, language, duration) FROM stdin;
fd0f94af-2ef7-490d-8923-e25addf2874e	101	pt	0
e882597c-6ee7-48a5-a050-4ba5feba8659	102	pt	0
4a808fc5-f887-448c-ba66-6ccf90b5ced3	103	pt	0
36becee8-97c5-4dee-8332-c4e1465708c4	104	pt	0
52b894c8-ea6d-44d5-93ed-0b40aadea4e3	105	pt	0
ec1e386b-78cb-48cb-9ad4-808aa8182f4e	106	pt	0
e80c621b-3b4f-4215-a2c2-b02575bfb822	107	pt	0
5875ca84-cd04-48eb-9b55-feb7774e404c	108	pt	0
f6b21290-52d3-4911-8a02-eeaa13d0c1ed	109	pt	0
2ab8fdc9-1da7-4f21-b8e5-5cea82f7e515	110	pt	0
a36f818f-33ec-43a8-beed-051dc23e581d	111	pt	0
47886970-8a3f-4a16-b1f5-7800bcd400e6	112	pt	0
99009207-68af-4207-8004-35b8274f2ffa	113	pt	0
6ee4b62f-b2da-4565-a87c-c2fcbaca4a84	114	pt	0
df0d9d49-f3a9-44e6-9620-3b762d5dea5a	115	pt	0
9e0ca3a6-56e1-40d3-be86-bbda2148b054	116	pt	0
2eb7b61d-6731-4669-b7c1-aa0e102570b1	117	pt	0
02df6fd8-4781-4fbc-833e-f5c394aea750	118	pt	0
94332b4e-75b2-4629-95f4-8c789c7001bf	119	pt	0
4bdf76b7-1f65-4fca-a55a-230612e08caa	120	pt	0
a553ff5b-963d-4056-a766-1460499fab23	121	pt	0
c6322654-1f09-4710-8940-b4008aabdd08	122	pt	0
5d55c9b4-0186-411a-a14e-d452543f8dfa	123	pt	0
049a4d09-57b3-4344-9c85-0c25f022d21c	124	pt	0
bc609984-d197-4dd7-acbe-da71fd28fb9b	125	pt	0
f34646a4-2615-426b-846f-e44c17d6495a	126	pt	0
792dc051-fca8-466e-b9c8-1399720084b2	127	pt	0
acd3e375-ee93-4754-bf47-30645c2575cf	128	pt	0
85c5555f-81fa-4cd9-8218-d93726c32dd3	129	pt	0
2dab5f4c-274a-406d-883e-08867951f079	130	pt	0
07b61dae-1d48-431e-b237-d366c72620b8	131	pt	0
afeec772-9ef0-4706-8e97-89faf46ea001	132	pt	0
75dc12a6-1db8-4015-9d44-98f213e62ee3	133	pt	0
dab7c861-b613-42e7-9206-77ff00265b24	134	pt	0
380b6c95-347b-4ad0-9b40-0c28ed54e3b5	135	pt	0
01487069-543d-47b0-b3d5-4c56a29863f6	136	pt	0
bafa7284-7efb-404f-a32e-70f8676fe071	137	pt	0
e4ebf11b-9ec5-4da1-99d5-ceb13d6e6e2b	138	pt	0
e7d63dd0-0bdc-46c4-8daa-b26e7c1a628d	139	pt	0
70079a66-f6f4-4b18-a8f7-f05ccdf00aaa	140	pt	0
c92eafc9-e54f-4075-8616-ed35ef90e56e	141	pt	0
3d82ca67-7c93-4b51-ae16-6f5098a19395	142	pt	0
\.


--
-- Data for Name: point_image; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_image (id, point_id, credits) FROM stdin;
7303b8c0-168e-4608-baf2-dd72937754f1	101	Clemilton S
17fd2c6d-6396-47af-9a29-ffaa68a84715	101	Clemilton S
0eb91096-4e24-4cbd-b6d9-f91208892a0a	101	Clemilton S
3c30cc5a-a95b-4ada-865d-799012d223b3	101	Clemilton S
04627266-d03d-4113-a6e1-8a306483f722	101	Clemilton S
1ca9fbcd-f10a-41d9-8040-771272dc717d	102	Leydson Jackson
71abcbc5-8825-4f8f-8a7c-aabc77e045c4	102	Leydson Jackson
fc4b7550-22e2-4a15-81ba-80509860049f	102	Leydson Jackson
f9c139b5-7c18-4067-aa45-de28c3813b62	102	PMCG
605e2bcf-16b0-40e8-86d1-63be3a4ef3bd	103	Thiago Japyassu
64003801-e64e-4d08-9182-df1c09b2f0d3	103	Cacio Murilo/Mtur
4e1f0a9f-996b-42a3-a6ab-18c24e7967eb	103	Victor Cayke
c922ab1e-e072-49f8-9c61-cdf12e91c98f	103	Cacio Murilo/Mtur
ebcb5239-69ee-418c-bb16-5087b4f078b7	103	Cacio Murilo/Mtur
20da54ee-7c40-410c-8be5-89ee517a42db	103	Cacio Murilo/Mtur
71de2906-a411-4a3e-92c5-0e9aafdb6153	104	Alberto Melo
2ccfff35-f54d-4352-b423-72831b9de6db	104	Edson Saiki
dc224d1d-7b47-4329-87e5-a2ca36f944f7	105	Diego M
8fefcf5e-b877-46fa-b626-80841cf7094a	106	Cacio Murilo/Mtur
1cfe53af-c9b0-4be0-85ed-32534f9d8a50	106	Cacio Murilo/Mtur
e4fb6177-da0f-4ce2-9732-3a1a91756f5e	106	Cacio Murilo/Mtur
0da50721-bb4a-4637-abf1-3973f289933f	107	Alberto Melo
5e9648e3-d1a5-4b34-a0e0-d0c9834e03ab	108	Cacio Murilo/Mtur
21263140-8231-4180-bd56-09eeb30583e1	108	Cacio Murilo/Mtur
311925d7-bc2c-4118-aa85-b5c853a8acc5	108	Cacio Murilo/Mtur
650a1c82-8eb4-49dc-868f-7e2d9dd46c3d	108	Cacio Murilo/Mtur
5677d103-0322-4eb2-9d2f-f238e24f7716	109	Cacio Murilo/Mtur
4ac07c06-d7f6-4c66-aa0c-baa6729c9c8b	109	Cacio Murilo/Mtur
d42b3eaf-aa36-4793-b479-2ce77731013d	109	Thiago Japyassu
76060a7c-b74e-44f9-8581-739d0fc10831	109	Thiago Japyassu
6510593b-98be-4d6b-861e-2de8214aa012	110	Cacio Murilo/Mtur
e7d5a2f8-e7dc-4bf8-a229-7b3982e53766	110	Cacio Murilo/Mtur
857ae47d-7ab9-4e49-8339-94e50e324cd2	111	Olavo Luiz
c043ab4d-47fd-4d44-83b0-9caad78a8d48	112	Gustavo Xavier/G1
f814b591-f411-4e0a-8a21-8e16230fada5	112	Imara Queiroz
7815996c-3a7b-4004-aea7-e84319b84d0e	113	Cacio Murilo/Mtur
4f4cb13f-25c9-46f5-ae44-f9a5c0b41f81	113	Cacio Murilo/Mtur
0e9f5fef-47e2-4e0e-a935-45f78aa9654e	114	rainha-da-borborema.blogspot.com
bc66c5dd-ba49-4842-b932-c39f07bdfa4c	115	UFCG
e6f807d0-5394-460f-8781-cde8e36c3d28	116	Acervo/Jornal Correio da Paraíba
e14bb4c7-968c-41b8-b301-4bf2d31fcdc0	117	www.coletivof8.com
074b6d62-7a8c-4856-ac23-966156df657d	118	Ana Raquel/minicutxi
6f4166f9-c772-4dd4-ae2d-cb39278a4b65	119	Tripadvisor
41e1c441-8da9-40ab-b735-af7447ce62bb	120	Cláudio Goes/ Secom
cc4363fe-17ad-4609-85cd-0e0e4364c93a	121	Joao da Paz/PBEsportes
78a77ac4-a7f4-42f4-94c2-b9b280b558d2	121	Cisco Nobre/GE
a1991fec-20bf-4e30-8579-7e68e3a6fe4f	122	BarroCE/Wikimapia
8439ab58-ff56-4362-971a-03200e0176d7	123	Max Brito/Funesc
553161ee-3634-4ca1-ad35-0ce550d0abb0	124	Brunosprak, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1856988
d8baf954-aea5-486b-8f57-45996fa68a6f	125	Acervo Paróquia do Rosário - Pascom
bff877b9-7a49-48c0-9c6a-3ff36116eb46	126	Bruno Coitinho Araújo - Wikimidia Commons
90273160-61b0-46a6-9d41-f89f5b944ec7	127	Lenildo Ferreira
423aa27c-3e88-4232-a5f8-552b5d18c67d	128	Casa Publicadora das Assembleias de Deus
a37b1518-83ed-44e1-8816-ea015addd6c8	129	Gustavo Xavier/G1/Arquivo
f58c51ce-b323-407a-af3f-3a77b97c9373	130	PBtur
206eff97-b2cd-4228-a399-fcf0e3b2912e	131	PBtur
c3ca2f54-fee2-4c6c-8010-922a1727156d	132	Jameson Ramos Campos - Diario de Bicicleta
53107cd6-2df8-4d77-851b-c2d0591e0644	133	Jameson Ramos Campos - Diario de Bicicleta
03c552b0-ea00-4036-8188-9352be01d84a	134	Adriano Araujo - cgretalhos
f39cdb20-6861-4886-8632-56f0cfce6d2e	135	Jameson Ramos Campos - Diario de Bicicleta
ae99ecf4-413f-44bd-9a15-2a8bbaaa899f	136	alfredodantas.com.br
c9e0f142-0dde-45a4-a06d-32ee2f4358d3	137	Bruno Coitinho Araújo - Wikimidia Commons
9cc0bd21-73f5-476f-b6d2-3304cc15e34c	138	Google Street View
f32515b1-9500-4ca8-8cf9-1f4a21337d03	139	Bruna Couto
6b58c4d8-a302-4f5d-a668-43af45822bfb	140	Rodenbusch Neto / Treze
cde79ddc-cede-4a56-aaa6-f010c07b00b3	141	Bruno Coitinho Araújo - Wikimidia Commons
605ad2cb-4efa-4922-9cbf-9b16403e074a	142	cgretalhos.blogspot.com
\.


--
-- Data for Name: point_name; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_name (id, point_id, language, name) FROM stdin;
94	101	pt	Parque da Criança
95	102	pt	Parque do Povo
96	103	pt	Museu de Arte Popular da Paraíba
97	104	pt	Vila do Artesão
98	105	pt	Teatro Municipal Severino Cabral
99	106	pt	SESI Museu Digital
100	107	pt	Museu Histórico e Geográfico de Campina Grande
101	108	pt	Museu de História e Tecnologia do Algodão
102	109	pt	Açude Velho
103	110	pt	Feira Central
104	111	pt	Museu de Artes Assis Chateaubriand
105	112	pt	Farra da Bodega
106	113	pt	Pioneiros da Borborema
107	114	pt	Parque Evaldo Cruz
108	115	pt	Universidade Federal de Campina Grande
109	116	pt	Unversidada Estadual da Paraíba
110	117	pt	Rodoviária Velha
112	119	pt	Bar do cuscuz
113	120	pt	Parque do Bodocongó
114	121	pt	Estádio Amigão
116	123	pt	Teatro Paulo Pontes
117	124	pt	Açude Bodocongó
118	125	pt	Igreja do Rosario
119	126	pt	Igreja Congregacional
120	127	pt	Primeira Igreja Batista
121	128	pt	Assembleia de Deus
122	129	pt	Monumento João Rique
123	130	pt	Praça Clementino Procópio
124	131	pt	Memorial Severino Cabral
125	132	pt	Rua Maciel Pinheiro
126	133	pt	Edifício do Livro
127	134	pt	Edifício do Abdallah - Rádio Borborema
128	135	pt	Sobrado dos Lauritzens
129	136	pt	Colégio Alfredo Dantas
130	137	pt	Rua Marquês do Herval
131	138	pt	Largo das Boninas
111	118	pt	Memorial a Bíblia
115	122	pt	O Meninão
132	139	pt	Capela do Avião
133	140	pt	Estádio Presidente Vargas
134	141	pt	Praça da Bandeira
135	142	pt	Fruteira de Seu Cristino
\.


--
-- Data for Name: point_tag; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_tag (id, point_id, tag_id) FROM stdin;
184	101	1
185	101	3
186	102	2
187	102	5
188	102	10
189	103	2
190	103	8
191	103	10
192	104	2
193	104	4
194	104	8
195	104	6
196	105	2
197	105	8
198	106	2
199	106	8
200	107	2
201	107	9
202	108	2
203	109	10
204	109	1
205	110	4
206	110	6
207	111	8
208	111	2
209	112	8
210	112	2
211	113	2
212	114	10
213	114	1
214	115	7
215	116	7
216	117	2
217	118	12
218	118	2
219	119	4
220	119	5
221	120	1
222	121	1
223	121	5
224	122	1
225	122	5
226	123	2
227	123	8
228	124	13
229	124	1
230	125	12
231	126	12
232	127	12
233	128	12
234	129	2
235	129	10
236	130	2
237	130	10
238	131	2
239	132	2
240	132	10
241	133	2
242	133	8
243	133	1
244	134	2
245	134	8
246	134	1
247	135	2
248	136	2
249	137	2
250	137	10
251	138	2
252	138	5
253	139	2
254	140	1
255	140	5
256	141	2
257	141	10
258	142	2
259	142	5
\.


--
-- Data for Name: point_transcript; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_transcript (id, point_id, language, text, duration) FROM stdin;
121	132	pt	A Rua Maciel Pinheiro foi a primeira rua a ser asfaltada em Campina Grande. Isso aconteceu em 1970, mas “Maciel Pinheiro” nem sempre foi o nome dessa rua. Observando a placa do logradouro, é possível verificar que a rua já foi a Antiga Rua Grande, Rua da Feira, Rua das Gameleiras, Rua da Independência, Rua Uruguaiana e Rua Seridó. Na verdade, Maciel Pinheiro nunca teve ligação com Campina Grande, ele era um herói da Guerra do Paraguai e alguns historiadores até defendem que a rua deveria na verdade se chamar “Alexandrino Cavalcante”, por conta da importância dele para a consolidação do comércio aqui nesta rua.	0
90	101	pt	O Parque da Criança, localizado em Campina Grande, Paraíba, é um espaço encantador dedicado ao entretenimento e desenvolvimento das crianças. Inaugurado em 12 de outubro de 1993, foi concebido para oferecer um ambiente seguro e lúdico onde os pequenos podem explorar, brincar e aprender de forma divertida. Situado no local do antigo curtume São José, fundado em 1942 durante o ciclo do couro, o parque transformou-se em uma vasta área ecológica de lazer e práticas esportivas.\nCom uma ampla área verde repleta de playgrounds, equipamentos recreativos e áreas de descanso. O parque também oferece quadras poliesportivas, pista de skate e outros espaços para atividades físicas. Com eventos especiais que incluem apresentações musicais, dança e ginástica, o parque se estabeleceu como um dos principais pontos de lazer da cidade, contribuindo para o desenvolvimento infantil e proporcionando momentos de diversão para toda a família.	0
91	102	pt	O Parque do Povo, localizado em Campina Grande, Paraíba, é um parque urbano conhecido por sediar o famoso evento "O Maior São João do Mundo". Inaugurado em 1986, teve sua origem ligada à iniciativa do ex-prefeito Enivaldo Ribeiro, que criou um "Palhoção" no local, posteriormente transformado em "Forródromo" por Ronaldo Cunha Lima. Desde então, o parque se tornou o epicentro das festividades juninas na cidade, atraindo grande atenção nacional e internacional. Com uma área de 42 mil e 500 metros quadrados, durante o São João, chega a receber uma média de 100 mil pessoas por noite. Apesar de enfrentar problemas estruturais ao longo dos anos, o Parque do Povo passou por revitalizações e hoje é considerado uma referência de qualidade, com modernas instalações e sistema de drenagem.	0
92	103	pt	O Museu de Arte Popular da Paraíba, em Campina Grande, inaugurado em 13 de dezembro de 2012, é um espaço cultural de grande importância dedicado à preservação, valorização e divulgação da rica cultura popular do estado.\nA última obra em vida do renomado arquiteto Oscar Niemeyer, o Museu de Arte Popular da Paraíba, destaca-se pela sua arquitetura moderna e simbólica que se integra às margens do Açude Velho. Este projeto reúne exposições de artesanato e artigos do cotidiano dos paraibanos, proporcionando um ambiente que harmoniza o tradicional e o contemporâneo.\nAlém de exposições permanentes de arte popular, incluindo esculturas, cerâmicas, rendas, bordados e arte em madeira que representam a identidade cultural paraibana, o museu realiza exposições temporárias, palestras e oficinas. É um verdadeiro tesouro cultural, onde o passado e o presente se encontram para encantar e inspirar todos os visitantes.	0
93	104	pt	A Vila do Artesão, fundada em dezembro do ano de 2010, na então administração do Prefeito Veneziano Vital do Rêgo, é um espaço cultural em Campina Grande que reúne mais de 200 artesãos em um único local. Com galpões de produção, 77 lojas, uma praça de alimentação, espaço para apresentações culturais, e um auditório com capacidade para 100 pessoas, a Vila também apresenta réplicas cenográficas de uma igrejinha e uma casa de taipa, que retratam a cultura e a história do povo nordestino, reproduzindo com precisão os adereços e costumes do cotidiano rural.\nO talento e a criatividade dos artesãos manifestam-se em diversas formas, utilizando uma variedade de materiais, técnicas e expressões. As peças, que incluem trabalhos em madeira, couro, cerâmica, metais, renda, fios, bordados e artesanato em algodão colorido, refletem histórias e o imaginário popular da nossa cultura.\nO pavilhão gastronômico, composto por 7 restaurantes, oferece comidas típicas nordestinas e bebidas em um ambiente belamente decorado. Além disso, o pavilhão é o palco do evento “Forró na Vila”, conforme a programação.	0
94	105	pt	Inaugurado em 30 de novembro de 1963, o Teatro Municipal Severino Cabral foi projetado pelo engenheiro Geraldino Duda, que idealizou uma das casas de teatro mais modernas do Brasil, com formato que lembra um apito, simbolizando o sopro da cultura da Serra da Borborema. Realização do então prefeito Severino Bezerra Cabral, o teatro rapidamente se tornou um centro cultural vibrante. Com uma área de 4.816 m², sua arquitetura moderna combina beleza estética com funcionalidade, incluindo uma plateia espaçosa, camarotes, e um palco de 400 m². O teatro também conta com uma galeria de arte, miniteatro, sanitários públicos e outras instalações que garantem conforto e acessibilidade aos visitantes.\nA construção do teatro trouxe a alta cultura para Campina Grande, democratizando o acesso à música clássica, balé e outras artes no interior do Nordeste. Dessa iniciativa, surgiram eventos como o Festival Internacional de Música de Campina Grande (FIMUS) e o Festival de Inverno.\nO Teatro Municipal Severino Cabral oferece uma programação diversificada ao longo do ano, com espetáculos teatrais, musicais, shows de dança e festivais de cinema. Além disso, abriga palestras, workshops e exposições, contribuindo para a formação cultural da comunidade. Nos anos 1990, uma escola de dança foi inaugurada dentro do teatro, oferecendo aulas de balé clássico para crianças carentes, revelando talentos locais e fortalecendo o cenário artístico de Campina Grande.\nMais do que um espaço de entretenimento, o teatro desempenha um papel crucial na valorização da produção cultural regional, com apresentações de companhias de teatro locais, nacionais e internacionais, disseminando a riqueza cultural da cidade para um público mais amplo.	0
95	106	pt	O Museu Digital de Campina Grande, inaugurado em novembro de 2017 pelo Departamento Regional do Serviço Social da Indústria (SESI/PB), é um espaço que apresenta uma leitura moderna da história da cidade, destacando seu desenvolvimento a partir do século XX. Esta pesquisa analisa o museu como um espaço de História Pública, onde diferentes discursos se entrelaçam para criar uma narrativa interdisciplinar. Ao explorar a interatividade oferecida por dispositivos tecnológicos como tablets, projeções mapeadas e realidade virtual, busca-se entender como a história é transmitida e como o público interage com ela. A proposta é problematizar as intencionalidades por trás dos documentos e da mensagem histórica, reconhecendo o potencial da interatividade para democratizar o acesso à cultura e ao conhecimento histórico.	0
96	107	pt	O Museu Histórico e Geográfico de Campina Grande, situado em um edifício de 1814, é um ponto turístico essencial para conhecer a rica história da cidade. Originalmente, o prédio abrigou a Cadeia Municipal e o Senado (Casa da Câmara). Na época, a cidade ainda era oficialmente conhecida como Vila Nova da Rainha, antes de ser elevada à categoria de cidade em 1864. Além dessas funções, o local foi a sede da Estação Telegráfica, desempenhando um papel crucial na comunicação regional. A inscrição "Telegrapho Nacional" ainda é visível na fachada.\nUm evento marcante foi a prisão do revolucionário Frei Caneca, líder da Confederação do Equador (um movimento republicano e separatista que eclodiu em Pernambuco), em dezembro de 1824. Preso no Ceará e levado ao Recife para julgamento, Frei Caneca passou por Campina Grande, onde recebeu ajuda de Manoel Alexandre, um homem negro e pobre que lhe levou roupas, lençóis, bolachas e vinho, gesto registrado pelo próprio revolucionário em seu diário, “Itinerário do Ceará”. Após sua prisão, Frei Caneca foi levado ao Recife, onde foi condenado à morte, mas devido à recusa dos carrascos em executá-lo, a sentença foi modificada para fuzilamento, ocorrido em 13 de janeiro de 1825.\nTransformado em museu em 28 de janeiro de 1983, o Museu Histórico e Geográfico de Campina Grande preserva a memória da cidade e da região circundante em um prédio histórico que abriga um vasto acervo de objetos, documentos, fotos e obras de arte que narram sua trajetória desde os primórdios. Surgido de iniciativas de preservação do patrimônio histórico no início do século XX por um grupo de intelectuais e pesquisadores, o museu evoluiu para um espaço dedicado à exposição e preservação desse acervo. Os visitantes podem conhecer a colonização, economia, tradições, personagens ilustres e eventos marcantes da cidade, além de participar de exposições temporárias, palestras, cursos e atividades educativas que envolvem a comunidade local e difundem o conhecimento histórico e cultural.\nO museu não só preserva o passado, mas também valoriza a identidade e a consciência histórica da população, fortalecendo a cultura local e fomentando o turismo cultural na região.	0
97	108	pt	A Estação Velha, inaugurada em 2 de outubro de 1907, marcou a chegada do trem a Campina Grande, impulsionando o desenvolvimento econômico e consolidando a cidade como um importante centro comercial e industrial. Durante o ciclo do algodão, Campina Grande se destacou mundialmente como um dos maiores exportadores do produto, com a Estação Velha desempenhando um papel crucial no transporte de algodão e outros produtos agrícolas.\nAtualmente, a Estação Velha abriga o Museu de História e Tecnologia do Algodão, oferecendo uma viagem no tempo que destaca a importância da indústria do algodão para Campina Grande e a Paraíba. O museu documenta o ciclo do algodão e as transformações tecnológicas e sociais ocorridas ao longo dos anos através de exposições interativas, acervos históricos, fotografias, documentos e objetos. Além disso, promove atividades educativas como palestras, workshops e visitas guiadas, disseminando conhecimento sobre a história regional.\nA arquitetura da Estação Velha, preservada em seu estilo do início do século XX, é um exemplo de patrimônio histórico da cidade. A primeira viagem de trem para Campina Grande, originada em Itabaiana, foi marcada por ameaças do cangaceiro Antônio Silvino, mas chegou são e salvo, iniciando uma nova era para a cidade. O distrito de Galante, que surgiu com a construção da estação, tornou-se um ponto turístico vibrante, especialmente durante o São João, com sua culinária regional e eventos como o Trem do Forró, fortalecendo a economia local e celebrando a cultura regional.	0
98	109	pt	O Açude Velho de Campina Grande, construído entre 1826 e 1830 para enfrentar uma das piores secas da região, tornou-se um ponto vital de abastecimento de água. Com o tempo, ele evoluiu para um espaço cultural e histórico, sendo palco de festas, eventos e até lutas de boxe no século XX. Ao redor do açude, há um verdadeiro museu a céu aberto, incluindo o Museu de Arte Popular da Paraíba e monumentos como "Os Pioneiros da Borborema", as estátuas de Luiz Gonzaga e Jackson do Pandeiro, e o "Monumento aos 150 anos", celebrando a história e os tropeiros da região.	0
99	110	pt	A Feira Central de Campina Grande, tombada como patrimônio cultural imaterial do Brasil pelo Ministério da Cultura em 2017, é um verdadeiro tesouro cultural e histórico da cidade.\nAté o final do século XIX, a localização da feira refletia o poder político da cidade. Se os liberais estavam no comando, a feira se situava em frente ao antigo mercado de Baltazar Luna, onde hoje funciona o Museu de Arte Assis Chateaubriand. Quando os conservadores estavam no poder, a feira se movia para a frente do mercado de Alexandrino Cavalcante. Esse vaivém continuou até 1892, quando comerciantes e feirantes se uniram em um abaixo-assinado para estabilizar a localização da feira. O chefe do Estado visitou a cidade e decidiu que a feira deveria permanecer em um local mais plano e estratégico, próximo à feira de gado e às principais saídas da cidade para o brejo e o sertão.\nA feira manteve-se nesse local até o início da década de 1940, quando foi transferida para onde hoje funciona o atual Mercado Central de Campina Grande. Este movimento consolidou a feira como o centro comercial mais importante da cidade, mantendo sua relevância até os dias atuais.\nA Feira Central de Campina Grande é famosa por sua diversidade e riqueza cultural. Celebrada por Gilberto Gil como um grande "Carrefour onde tudo está à venda", a feira é um reduto gastronômico, oferecendo uma vasta gama de especiarias, doces, queijos, frutas, hortaliças, flores e comidas típicas. É um lugar onde os aromas, sabores e cores se misturam, criando uma atmosfera única e envolvente.	0
100	111	pt	O Museu de Arte Assis Chateaubriand (MAAC) é um verdadeiro tesouro cultural da cidade. Fundado em 1967 por Francisco de Assis Chateaubriand Bandeira de Mello, mais conhecido como Assis Chateaubriand ou Chatô, o museu não apenas abriga uma vasta coleção de arte, mas também simboliza a rica história e contribuição de seu fundador para a cidade.\nAssis Chateaubriand, natural de Umbuzeiro, Paraíba, foi uma figura influente no Brasil entre as décadas de 1940 e 1960. Ele trouxe o primeiro aparelho de TV para Campina Grande em 1951, durante uma campanha para o Senado, e impressionou os campinenses ao transmitir seu discurso em um ato público. Esse evento marcou o início de uma relação profunda e duradoura entre Chateaubriand e a cidade.\nChateaubriand fez grandes investimentos em Campina Grande, incluindo a fundação da Rádio Borborema, do Jornal Diário da Borborema e da TV Borborema, a primeira estação de televisão da Paraíba. No entanto, uma de suas contribuições mais duradouras e valiosas foi o Museu de Arte que leva seu nome. O MAAC abriga um acervo impressionante de mais de 700 obras de arte de renomados artistas brasileiros, como Cândido Portinari, Pedro Américo, Di Cavalcanti, e Anita Malfatti. Através de pinturas, gravuras e desenhos, o museu oferece um panorama abrangente da rica produção artística nacional, desde o século XIX até as vanguardas dos anos 1960.\nA história de Chateaubriand com Campina Grande remonta à sua infância. Quando criança, ele sofria de gagueira e timidez, o que dificultava sua adaptação na escola. Em 1903, seu pai, Francisco Chateaubriand, conseguiu uma promessa de vaga para ele na Escola Naval do Recife, contanto que ele passasse no Exame de Admissão. Para isso, Francisco pediu ajuda ao tio e padrinho de Chatô, o Dr. Chateaubriand Bandeira de Melo, primeiro médico de Campina Grande, que acolheu o afilhado e assumiu sua educação formal, capacitando-o para o exame. Esse período em Campina Grande pode ter sido um fator que motivou Chatô a investir tanto na cidade.\nO MAAC está localizado no prédio histórico do antigo Grupo Escolar Solon de Lucena, construído em 1924, que foi a primeira escola estadual de Campina Grande. O edifício, projetado pelo arquiteto italiano Hermenegildo Di Lascio, é uma obra de arte por si só, com suas linhas modernistas e fachada em tons de branco e azul, destacando-se na paisagem urbana da cidade.\nO museu foi criado no contexto da campanha nacional de museus regionais, com o objetivo de descentralizar o foco das manifestações de arte do eixo Rio-São Paulo. Foram criados três museus nessa campanha, sendo o MAAC um deles. Em sua inauguração, o museu recebeu 120 obras doadas por diversos segmentos da sociedade brasileira, e ao longo dos anos seu acervo foi ampliado com doações de figuras como Jorge Amado, Banco Central do Brasil, Associação de Artistas Plásticos e Universidade de Guadalajara.\nAlém de ser um espaço de exposição, o MAAC se transformou em uma espécie de escola, oferecendo cursos e ateliês de formação para professores e pintores. O museu promove exposições temporárias, atividades educativas e eventos culturais, enriquecendo a vida cultural de Campina Grande e proporcionando aos visitantes uma experiência enriquecedora e inspiradora.	0
101	112	pt	Criada pelo artista campinense Joás Pereira Passos, esta obra em bronze foi inaugurada em 2003. Esta escultura não apenas celebra a vida e obra desses artistas, mas também oferece um espaço interativo para os visitantes.\nAlém das esculturas dos músicos, você encontrará uma mesa adornada com pratos típicos e representações de comidas regionais, bem como um banquinho onde os turistas adoram tirar fotos e interagir com a obra.\nMas quem são estes personagens aqui representados?\nO mestre Jackson do Pandeiro nasceu José, mas nos palcos e cabarés, foi apelidado de Jack, porque diziam que ele era a cara do ator de faroeste Jack Perrin. De Jack para Jackson foi um pulo. Sempre com seu pandeiro, ele ajudou a popularizar o som desse instrumento pelo Brasil.\nO 'Rei do Ritmo' fez sua estreia nos palcos do clube Ipiranga, localizado no bairro do Alto Branco. Ele aproveitou que o baterista tinha dado o cano e assumiu a bateria. O que muita gente não sabe é que, antes de tudo isso, ele foi padeiro e deu seus pulos como goleiro no time juvenil do Treze Futebol Clube.\nJá Luiz Gonzaga, natural de Exu, Pernambuco, nasceu em uma família de lavradores. Desde jovem, o Rei do Baião já demonstrava talento musical, tocando zabumba nas festas locais ao lado de seu pai. Após um período como corneteiro no exército cearense, ele deixou o serviço militar e partiu para o Rio de Janeiro.\nEm pouco tempo, Luiz Gonzaga se tornou Gonzagão, conquistando fama e reconhecimento. O ponto de virada veio com uma apresentação no programa de Ary Barroso, onde ele interpretou o instrumental de “Vira e Mexe”. Foi questão de tempo para ser considerado, no sudeste do Brasil, o maior representante da música nordestina.\nSua ascensão o levou a ser contratado pela Rádio Nacional do Rio de Janeiro, ampliando ainda mais seu alcance e destaque na cena musical brasileira. Suas canções tocavam os problemas e a vida do povo nordestino com pureza e simplicidade, conquistando o coração de milhões de ouvintes.	0
102	113	pt	O Monumento "Os Pioneiros da Borborema" em Campina Grande, Paraíba, foi inaugurado em 11 de outubro de 1964, como parte das celebrações do centenário da cidade. Localizado às margens do Açude Velho, o monumento é composto por três estátuas: um índio, uma catadora de algodão e um tropeiro. Cada figura representa aspectos importantes da história e do desenvolvimento de Campina Grande. O índio simboliza a origem primitiva da cidade, a catadora de algodão representa o papel da mulher no desenvolvimento industrial, enquanto o tropeiro personifica o comércio e a resistência do povo. As estátuas foram trazidas do Rio de Janeiro e levaram 10 dias para chegar à cidade. O monumento, posicionado de frente para o nascer do sol, é um ponto turístico importante e um marco para quem chega a Campina Grande, sendo iluminado de maneira especial ao pôr do sol e à noite.	0
103	114	pt	O Parque Açude Novo, construído em 1830, foi inicialmente uma reserva de água para a cidade de Campina Grande, Paraíba, durante períodos de seca. Com o tempo, tornou-se um espaço de lazer e convívio social. Sua área de quase 47 mil metros quadrados é composta por árvores, bancos e uma fonte central. O parque é um ponto histórico importante da cidade, testemunhando seu crescimento e desenvolvimento ao longo dos anos. É um lugar onde os moradores podem relaxar, fazer piqueniques e desfrutar da natureza.	0
104	115	pt	Com 17 instituições de ensino superior e uma proporção de doutores seis vezes maior que a média nacional, Campina Grande ostenta um título que vai além de seu forró contagiante: é um polo de tecnologia e inovação pulsante. Mas como essa história começou?\nNo início dos anos 50, quando o ciclo do algodão já dava sinais de fadiga, um grupo de jovens visionários, liderados por Lynaldo Cavalcanti de Albuquerque, fundou a Escola Politécnica da Paraíba em Campina Grande. Era a semente do que viria a ser a UFCG.\nEm 1967, o Professor Lynaldo, com muita determinação, partiu rumo à capital do estado para convencer o reitor da UFPB a investir em um computador para a Escola Politécnica. A resposta? Um sonoro "não", com a alegação de que, se a universidade adquirisse um computador algum dia, ele seria instalado no campus de João Pessoa. Mas Lynaldo não desistiu fácil.\nDe volta à Campina, ele mobilizou a comunidade e organizou uma rifa, com prêmios nada menos que um fusca e um "boi reprodutor holandês de alto valor", doado pelo Sr. Esaú Catão. A campanha foi um sucesso estrondoso, e em 1968, o primeiro computador de todo o Norte e Nordeste finalmente chegou à Escola Politécnica, instalado no prédio que hoje abriga a Pró-reitoria de Ensino da UFCG.\nEra o modelo IBM 1130, um gigante de metal que ocupava uma sala inteira. A aquisição do computador marcou o início da era da tecnologia em Campina Grande, impulsionando o desenvolvimento de cursos de graduação e pesquisa na área, e atraindo talentos de todo o país.\nAtualmente, a UFCG possui uma infraestrutura abrangente com vários campi espalhados pela Paraíba, com instalações modernas, incluindo laboratórios de ponta, bibliotecas, auditórios e centros de pesquisa. Reconhecida pela qualidade de seus cursos de graduação e pós-graduação em diversas áreas, como Engenharia, Ciências Exatas, Humanas e Saúde, a instituição se destaca pela produção científica, parcerias público-privadas e programas de extensão que beneficiam a comunidade local e regional. Além disso, a UFCG fomenta o empreendedorismo e a criação de startups, contribuindo significativamente para o avanço do conhecimento e para a solução de problemas socioeconômicos.	0
105	116	pt	A Universidade Estadual da Paraíba (UEPB) é uma instituição pública de ensino superior localizada em Campina Grande, Paraíba, com diversos campi espalhados pelo estado. Fundada em 1966 como URNe e estadualizada em 1987, destaca-se por sua contribuição para o desenvolvimento educacional e socioeconômico regional. Possui o Museu de Arte Popular da Paraíba (MAPP), projetado por Oscar Niemeyer. Oferece uma ampla variedade de cursos de graduação, pós-graduação e técnico em diferentes áreas. Cada campus tem foco específico, como Ciências Agrárias e Ambientais, Ciências Biológicas, Exatas e Humanas. Comprometida com pesquisa e extensão, a UEPB promove projetos que beneficiam a comunidade. Suas parcerias fortalecem sua posição como centro acadêmico de excelência na Paraíba.	0
106	117	pt	A Rodoviária Velha de Campina Grande, também conhecida como Terminal Rodoviário Argemiro de Figueiredo, é um marco histórico da cidade. Inaugurada em 1953, foi durante décadas o principal ponto de partida e chegada de ônibus intermunicipais e interestaduais na região. Sua arquitetura retrô, com traços característicos da época, é um símbolo da memória coletiva dos campinenses. No entanto, com o passar dos anos e a expansão da cidade, a rodoviária perdeu sua relevância, sendo substituída por um novo terminal. Atualmente, a apesar de a Rodoviária Velha estar desativada e aguardar projetos de revitalização e reutilização de seu espaço, ela segue sendo palco de um grande mercado abrigando vendedores ambulantes, cabelereiros, mercearias e outros empreendimentos.	0
107	118	pt	O Memorial em Homenagem à Bíblia em Campina Grande, Paraíba, foi inaugurado no final de 2011 como resultado de um voto feito pelo Vice-prefeito José Luis. Ele havia sido portador de um câncer sem cura pela medicina e o memorial é uma expressão de gratidão e fé. Localizado nas margens do Açude Velho, o monumento contém exemplares da Bíblia em vários idiomas, incluindo Grego, Hebraico, Português e Braille. O projeto visa incluir o máximo de impressões da Bíblia em outros idiomas, tornando-se um desafio contínuo para os idealizadores.	0
108	119	pt	O Bar do Cuscuz, fundado por Lia em Campina Grande, Paraíba, é um ponto de referência na tradição culinária nordestina. Inspirado no cuscuz de cabeça amarrada feito pela a avó de Lia (a fundadora), o restaurante oferece uma variedade de pratos típicos da região, com destaque para o cuscuz. Com seu ambiente rústico e acolhedor, o Bar do Cuscuz é conhecido por sua comida saborosa e mantém sua relevância cultural. O sucesso levou à expansão para outras cidades, incluindo João Pessoa e o Grande Recife, com o envolvimento do jogador de futebol Hulk no empreendimento, aumentando sua visibilidade e atratividade para os visitantes em busca das delícias tradicionais do Nordeste.	0
109	120	pt	O Parque de Bodocongó, inaugurado em 1978 no bairro Bodocongó de Campina Grande, Paraíba, é um marco histórico na comunidade local. Nomeado em homenagem ao próprio bairro, sua origem remete à cultura indígena e à riqueza natural da região. Ao longo dos anos, o parque passou por diversas transformações, tornando-se um espaço multifuncional com quadras esportivas, áreas de lazer e um anfiteatro para eventos culturais. Após um período de dois anos fechado, o parque foi reaberto em agosto de 2022, passando por um processo de revitalização que incluiu melhorias na infraestrutura, paisagismo e segurança. Com pistas de caminhada, ciclovias, playgrounds e uma Unidade de Polícia Solidária para garantir a segurança dos frequentadores, o Parque de Bodocongó continua a ser um ponto de encontro e lazer para a comunidade.	0
110	121	pt	Erguido em tempo recorde, em apenas 14 meses, o Estádio Governador Ernani Sátyro, mais conhecido como Amigão, é o maior monumento à paixão pelo futebol em Campina Grande.\nMais do que um nome no pórtico do estádio, Ernani Sátyro, foi um advogado, político e escritor paraibano. Conhecido por tratar pessoas próximas pela expressão "amigo velho”, ele governou a Paraíba entre 1971 e 1975.\nA ideia de construir o Estádio Amigão surgiu na década de 1970, um período marcado pela expansão das infraestruturas esportivas no Nordeste brasileiro. A imprensa paraibana, então, fomentou a necessidade do estado acompanhar os vizinhos, oferecendo modernas praças de esportes para os torcedores.\nEmbora o governo da Paraíba, liderado por Ernani Sátyro, tivesse recursos para construir apenas um estádio em João Pessoa, autoridades políticas, esportivas e a imprensa de Campina Grande, destacando o ex-atleta José Luiz e o prefeito, à época, Evaldo Cruz, fizeram apelos para prestigiar o futebol local. Inicialmente, cogitou-se construir o estádio no Distrito do Cajá, entre João Pessoa e Campina Grande, mas, ficou decidido que tanto João Pessoa quanto Campina Grande teriam seus próprios estádios.\nA construção do estádio começou em janeiro de 1974, em uma área que anteriormente era utilizada por pequenos agricultores. Apesar da resistência inicial dos moradores locais, a obra avançou rapidamente, e no dia 8 de março de 1975, o Amigão foi inaugurado. O primeiro jogo disputado no estádio foi entre o Campinense e o Botafogo do Rio de Janeiro comandado pelo lendário Zagallo, terminando em 0 a 0. \nPoucos dias depois, em 16 de março de 1975, ocorreu o primeiro clássico dos maiorais, onde o Campinense enfrentou o Treze, marcando o início de uma rica tradição esportiva no estádio. Aos 30 minutos do primeiro tempo, Pedrinho Cangula, do Campinense, marcou o primeiro gol no Amigão. A resposta do Treze veio aos 39 minutos do segundo tempo, com Fernando Canguru empatando o jogo em 1 a 1.\nCom mais de 45 anos de história, o Amigão segue imponente, símbolo da garra e do amor do povo campinense pelo futebol. Mais de 19 mil torcedores podem vibrar em suas arquibancadas, testemunhando grandes momentos do futebol paraibano e nacional. O estádio já recebeu jogos históricos incluindo amistosos internacionais, jogos da Copa do Brasil, finais da Copa do Nordeste e o campeonato paraibano.	0
111	122	pt	O Ginásio O Meninão, localizado em Campina Grande, Paraíba, desempenhou um papel central na vida esportiva da cidade ao longo de décadas. Como um espaço crucial para eventos esportivos e competições, tornou-se um ponto de referência na região. Sua reforma, iniciada no final de 2017 em parceria com a Secretaria de Esporte, Juventude e Lazer e o Ministério do Esporte, representa um investimento significativo de R$ 650 mil. Embora o prazo para conclusão não esteja definido, o ginásio continua a ser uma opção interessante para os amantes de esportes e aqueles que desejam acompanhar competições na região.	0
112	123	pt	O Teatro Paulo Pontes, localizado em João Pessoa, Paraíba, é um espaço cultural fundamental para a região. Fundado há quase quatro décadas em homenagem ao teatrólogo Vicente de Paula Holanda Pontes, o teatro tem uma história rica e diversificada. Após uma grande reforma estrutural em 2013, que durou cerca de dois anos, o teatro recebeu melhorias significativas, incluindo tratamento especial no palco, novas poltronas, renovação das coxias e rotundas, além de equipamentos de som e luz atualizados. A acessibilidade também foi priorizada, com a instalação de locais reservados para cadeirantes e poltronas para necessidades especiais. Com capacidade para 660 lugares, o Teatro Paulo Pontes recebe uma variedade de apresentações, incluindo espetáculos de teatro, música, dança, festivais e eventos corporativos. Vale ressaltar que o teatro oferece uma programação diversificada, com shows seguindo um cronograma específico, proporcionando opções de entretenimento para todos os gostos e interesses.	0
113	124	pt	A melodia de "Bodocongó" ecoa na alma de Campina Grande, tecendo um manto de nostalgia e afeto. Mas, será que essa canção, eternizada na voz de Elba Ramalho, guarda segredos que vão além da poesia? Mais do que um reservatório de água, o açude de Bodocongó é um marco na ciência brasileira, palco de descobertas pioneiras que moldaram a piscicultura e a limnologia no país.\nA história do Açude de Bodocongó como berço da ciência brasileira teve início em 1934, quando a Comissão Técnica de Piscicultura do Nordeste foi instalada em Campina Grande. Criada durante a Era Vargas pelo ministro paraibano José Américo de Almeida e sob a liderança do renomado cientista gaúcho Rodolpho Von Ihering, a comissão tinha como objetivo combater a fome na região através da produção em massa de peixes.\nFoi nas águas do Bodocongó que Ihering realizou sua obra-prima: a técnica da hipofisação. Através de injeções de extrato da glândula pituitária, ele conseguiu induzir a reprodução artificial em aquário de curimatãs, um peixe nativo de grande importância alimentar. Essa descoberta revolucionária marcou um antes e um depois na piscicultura brasileira, abrindo caminho para a produção em larga escala de diversas espécies.\nSimultaneamente à pesquisa pioneira de Ihering, o limnólogo norte-americano Stillman Wright também realizava estudos inovadores no Bodocongó. Mergulhando nas profundezas do açude, ele lançou as bases para a limnologia brasileira, a ciência que estuda os ecossistemas de água doce.\nEmbora a Comissão Técnica de Piscicultura do Nordeste tenha sido transferida para Fortaleza em 1935 e desativada em 1945, o legado do Bodocongó para a ciência brasileira permanece vivo. As descobertas realizadas em suas águas impulsionaram o desenvolvimento da piscicultura e da limnologia no país, contribuindo para a segurança alimentar.\n“Mas e a música ‘Bodocongó’?” Em 1950, antes mesmo de Elba Ramalho nascer, esta canção já navegava pelas ondas do sucesso. Composta pelo poeta Humberto Teixeira, o mesmo gênio por trás de "Asa Branca", a música ganhou vida na voz da cantora carioca Helena de Lima. Em 1966, foi a vez de Jackson do Pandeiro eternizar a melodia, consagrando-a como um clássico da música brasileira. A canção se tornou um símbolo da saudade da terra natal.\nTambém entre as décadas de 50 e 60, o Clube Aquático Campinense funcionou às margens do Bodocongó, servindo como ponto de encontro da elite da cidade. Lá, os membros do clube desfrutavam de passeios de lancha, praticavam esqui aquático e ostentavam seu status social. Naquele tempo, o açude era a "praia" particular da cidade, um refúgio de lazer e ostentação.	0
114	125	pt	A história da Igreja do Rosário se inicia em 1793, quando a Irmandade do Rosário se estabelece em Campina Grande. Movidos por fé e devoção, os membros da irmandade ergueram seu primeiro templo nas imediações do Cine Capitólio. Por mais de um século, a igreja foi um centro religioso e cultural para a comunidade.\nNo entanto, em 1940, a reforma urbanística liderada pelo então prefeito Vergniaud Wanderley decretou a demolição da igreja para a abertura da Avenida Floriano Peixoto. Um novo terreno foi doado pelo comerciante Raimundo Viana, um benfeitor local que também contribuiu para a construção do SENAI, do Colégio Estadual da Prata e da Feira da Prata.\nEm 1952, a nova Igreja do Rosário foi erguida no bairro da Prata, mas em 1956, um incêndio criminoso devastou seu interior. O incendiário foi preso sob acusação de furto, mas seu nome não foi registrado, e muitos acreditavam que ele era um vândalo, não um ladrão. A comunidade, porém, não se rendeu. Com união e força de vontade, famílias católicas doaram recursos e tempo, e em apenas três anos, a Igreja do Rosário ressurgiu das cinzas. Um relógio para a torre foi doado pelos empresários Rodão Mangueira e José Leme Medeiros Camboim, enquanto os belos vitrais, que hoje adornam a igreja, foram doações de diversas famílias católicas, cujos nomes estão gravados nas peças. Um verdadeiro museu de arte sacra e fé!	0
115	126	pt	A Igreja Congregacional, fundada em 15 de novembro de 1920, é a igreja evangélica mais antiga de Campina Grande. A sua origem remonta às primeiras reuniões realizadas na residência do casal Olinto e Rita Cordeiro.\nUma das histórias mais fascinantes associadas à Igreja Congregacional envolve Antônio Silvino, um dos cangaceiros mais temidos do Nordeste brasileiro. Antônio Silvino, cujo verdadeiro nome era Manoel Batista de Morais, entrou para o cangaço para vingar a morte de seu pai e, durante 20 anos, aterrorizou o interior da Paraíba e de Pernambuco. Em 1914, após um confronto com a polícia pernambucana na cidade de Itacoaritinga, ele foi baleado e capturado. Condenado a 239 anos de prisão, cumpriu apenas 23 anos devido a um indulto concedido por Getúlio Vargas.\nLiberto em 1937, Antônio Silvino se mudou para Campina Grande, onde passou a morar com sua prima Teodolina, em uma casa em frente à Praça Félix Araújo. Durante seus últimos anos de vida, ele frequentou regularmente esta igreja, onde se converteu ao evangelho, trocando seu rifle de ouro pela Bíblia Sagrada. Morou aqui até 1944, quando faleceu. A transformação de um temido cangaceiro em um devoto cristão é uma das muitas histórias que enriquecem o patrimônio cultural da igreja.	0
116	127	pt	Fundada em 5 de março de 1922, a Primeira Igreja Batista de Campina Grande é a segunda igreja evangélica mais antiga da cidade. Esta igreja tem uma conexão especial com o Açude Velho, onde os oito primeiros convertidos foram batizados. Durante a construção do seu belíssimo templo, os membros da congregação participaram de mutirões para carregar água do açude, demonstrando um forte espírito comunitário e de cooperação. Em 2022 a igreja marcou um século de dedicação e serviço à comunidade.	0
117	128	pt	A Assembleia de Deus, que recentemente completou 100 anos, é a terceira igreja evangélica mais antiga de Campina Grande. Seu primeiro templo foi situado na Rua das Areias, atual Rua João Pessoa, no prédio nº 655, onde funcionou até 1944. O pioneiro Manuel Francisco Dubu, natural de Campina Grande, é reconhecido como o primeiro homem a ser batizado com o Espírito Santo no Brasil, destacando a importância histórica da Assembleia de Deus na expansão do movimento pentecostal no país.	0
118	129	pt	A Praça João Rique, situada na confluência das ruas João Pessoa, João Suassuna, Sete de Setembro e Marquês do Herval, é um local emblemático de Campina Grande, cheio de história e mudanças ao longo do tempo. Originalmente conhecida como Praça do Algodão e, posteriormente, Praça João Pessoa e Praça do Relógio, a praça foi renomeada várias vezes. Na década de 1930, uma imponente coluna de 10 metros, conhecida como Coluna da Hora, foi erguida com um relógio de quatro faces no topo, fazendo desta praça um ponto central para os cidadãos de Campina Grande.\nEm 1945, a Coluna da Hora foi demolida para dar lugar ao Posto Central, um prédio triangular que abrigava um posto de gasolina, a primeira rodoviária da cidade e uma lanchonete que operava 24 horas, servindo como ponto de encontro para os boêmios. O famoso relógio da praça foi resgatado de uma sucata da prefeitura por um frade e, graças à doação de Elpídio de Almeida, agora se encontra na Torre do Convento São Francisco, onde continua funcionando pontualmente.\nA atual Praça João Rique está intrinsecamente ligada à história do Banco Industrial de Campina Grande (BICG), fundado pelo empreendedor João Rique Ferreira em 1927, durante o auge do ciclo do algodão. O banco, localizado no térreo do Edifício Rique, rapidamente se expandiu e passou a operar em treze estados, tornando-se um dos maiores bancos privados do país, perdendo em crescimento apenas para o Banco Bradesco. Em uma jogada de marketing ousada, Pelé foi contratado como diretor de relações públicas do banco. Em 1972, o BICG foi incorporado pelo Banco Mercantil de Minas Gerais por 126 milhões de Cruzeiros, mas seu legado continua vivo, sendo o primeiro banco da América Latina a oferecer o serviço de caixa eletrônico.\nNewton Rique, filho de João Rique e ex-prefeito de Campina Grande, explicou a venda do banco com as seguintes palavras: "Não fosse a mudança brusca nas regras do jogo, na formação dos grandes conglomerados, temos certeza de que teríamos resistido. Faltou-nos um pouco mais de tempo.”\nA praça guarda ainda algumas curiosidades: a estátua do presidente João Pessoa, que um dia esteve aqui, foi transferida para a Praça Coronel Antônio Pessoa. Já a estátua de João Rique, que antes olhava para a Rua João Pessoa, um dia deu a meia volta e passou a contemplar o edifício do seu antigo banco, mantendo viva a conexão entre o local e seu ilustre fundador.	0
119	130	pt	Inaugurada em 1936, a Praça Clementino Procópio rapidamente se tornou um ponto de encontro para os campinenses. No coração de Campina Grande, sob a sombra das árvores, famílias faziam piqueniques, crianças brincavam livremente e casais desfrutavam de momentos românticos. A praça é palco de eventos culturais, como feiras e shows.\nNa inauguração, o poeta Ronaldo Cunha Lima proferiu os versos: “Ajude a manter bonita a praça que é sua agora, pois aqui você medita, passeia, sonha ou namora”, que se encontram gravados em uma placa. Infelizmente, a praça está atualmente abandonada pelo poder público.\nA arquitetura da praça, com seus calçadões, bancos de ferro fundido e um coreto central, remete à sua época de construção. A estátua aqui presente é uma justa homenagem ao senador Argemiro de Figueiredo. Mas quem leva o nome da praça é Clementino Gomes Procópio, um dos maiores educadores da história de Campina Grande. Professor dedicado que foi aprovado em primeiro lugar em um concurso público em 1888 para lecionar no ensino primário. Também fundou o Colégio São José, uma escola particular destacada pela qualidade do ensino e acessibilidade, mantendo o mesmo valor da mensalidade por 48 anos.\nEm 1889, após a Proclamação da República, Clementino foi vítima de uma transferência arbitrária para São João do Rio do Peixe, imposta pelo então governador Álvaro Machado. Em um ato ousado, Clementino "transferiu" Machado para Sergipe, através de um decreto fictício. Revoltado, Machado cortou os salários do professor. Mais tarde, ao participar de uma solenidade em Campina Grande, Machado ouviu um brilhante discurso de Clementino e, arrependido, restituiu-lhe a cadeira e os salários.\nAlém de seu trabalho na educação, Clementino era extremamente caridoso e pacato. Acolhia órfãos e pobres em sua casa, criando, educando e casando várias jovens órfãs como se fossem suas filhas.	0
120	131	pt	Situada na Avenida Getúlio Vargas, 344, a casa do prefeito Severino Cabral, hoje Memorial Severino Cabral, é um dos pontos turísticos mais emblemáticos da cidade. Este local não só abrigou importantes figuras históricas, como também foi palco de decisões significativas para Campina Grande.\nSeverino Cabral, conhecido carinhosamente como "Seu Cabral", governou Campina Grande de 1960 a 1963 e deixou um legado profundo na história da cidade. A casa, que reflete a arquitetura da época, foi um verdadeiro centro de hospitalidade e generosidade. Seu Cabral era famoso por sua disposição em ajudar os necessitados, mantendo um fichário detalhado de todos os pedidos de ajuda que recebia e atendia. Os registros, cuidadosamente arquivados, revelam uma época em que a casa estava sempre de portas abertas para os pobres da cidade.\nA Mesa da Memória, amplamente decorada com fotografias e documentos importantes, é um destaque do memorial. Esta mesa não só guarda a memória de Campina Grande, mas também testemunhou momentos históricos, tendo recebido três presidentes da República: Juscelino Kubitschek, Jânio Quadros e Getúlio Vargas.\nAlém de seu papel como prefeito, Severino Cabral era conhecido por seus métodos pragmáticos e pelo ditado popular que ele parecia seguir à risca: “É dando que se recebe”. A casa funcionava como um verdadeiro centro comunitário, onde seus seguidores, munidos de carteirinhas, registravam favores recebidos, criando uma rede de apoio que perdurava principalmente em épocas de campanha política.\nA casa está aberta para visitação de segunda a sexta-feira pela manhã, oferecendo aos visitantes uma verdadeira viagem ao passado, onde podem explorar a rica história e as curiosidades da vida de Severino Cabral e de Campina Grande.	0
122	133	pt	O antigo Edifício do Livro, hoje transformado em uma loja de roupas, abrigava anteriormente a Livraria Pedrosa, uma das mais importantes do Nordeste, fundada por José Cavalcante Pedrosa em 16 de março de 1946.\nA Livraria Pedrosa foi muito mais que um simples ponto comercial; foi um centro cultural e intelectual. Inaugurada em 8 de maio de 1953, a livraria rapidamente se tornou um ponto de convergência para intelectuais, escritores e grandes mandatários do Nordeste. Figuras ilustres como Jorge Amado e Gilberto Freyre lançaram livros neste espaço. A livraria também tinha uma editora própria e um programa diário de rádio, "Faça do Livro o Seu Melhor Amigo," transmitido pela Rádio Borborema, apresentado pelos radialistas Gil Gonçalves e Hilton Motta. Além disso, a livraria oferecia um serviço de delivery de livros, uma inovação para a época.\nJosé Cavalcante Pedrosa, pernambucano de Timbaúba, era um visionário. Antes de fundar a Livraria Pedrosa, trabalhou na Livraria Moderna, de seu tio Yoyô Cavalcanti. Ele foi fundamental na promoção da leitura em Campina Grande, incentivando os campinenses a fazerem do livro o seu melhor amigo.\nA Livraria Pedrosa não só vendeu livros, mas também ajudou a gestar a ESCOLA POLITÉCNICA no interior do Edifício do Livro, contribuindo para a complementação do acervo de livros da biblioteca exigidos pelo MEC. O Edifício do Livro, com sua arquitetura marcante, tornou-se um marco na história de Campina Grande.\nInfelizmente, a Livraria Pedrosa fechou suas portas em 2001, mas sua história continua viva na memória da cidade. O edifício que uma vez foi um vibrante centro cultural agora abriga uma loja de roupas, mas a importância cultural e histórica do local permanece.	0
123	134	pt	Você sabia que Campina Grande já teve seu próprio super-herói? Nos anos 60, a cidade viu surgir Flama, um personagem que não deixava nada a desejar aos famosos super-heróis americanos. Estamos na época em que o rádio era o principal entretenimento de massa, e foi na Rádio Borborema, situada no prédio São Luís, que Flama nasceu. Criado pelo genial Deodato Borges, radialista, jornalista e quadrinista, Flama foi o primeiro super-herói do Norte e Nordeste a ganhar uma revista em quadrinhos.\nDeodato Borges colocou Campina Grande no mapa das histórias em quadrinhos nacionais. Flama foi um herói que, apesar de não ter superpoderes, ajudava a polícia a resolver casos misteriosos e protegia os indefesos. O sucesso foi estrondoso entre a garotada que acompanhava "A Hora do Flama" na Rádio Borborema e "As Aventuras do Flama" no Diário da Borborema, lançado em 1963.\nMike Deodato Jr., filho de Deodato Borges, descreve a importância do pai de forma emblemática: “Se meu pai tivesse nascido nos Estados Unidos e publicado As Aventuras do Flama durante o boom dos quadrinhos na década de 50 e 60, certamente estaríamos falando de uma referência internacionalmente reconhecida” (Jornal da Paraíba).\nO legado de Deodato Borges permanece vivo através do talento de seu filho, Mike Deodato Jr., que nasceu no edifício Abdallah, localizado na esquina da Rua João Suassuna com a Rua Padre Ibiapina, no Centro de Campina Grande. Mike ganhou fama mundial desenhando para a Marvel e DC Comics, ilustrando personagens icônicos como Homem-Aranha, Mulher-Maravilha e Batman.	0
124	135	pt	Há 100 anos, neste palacete localizado na Rua Maciel Pinheiro, faleceu Cristiano Lauritzen, um dinamarquês que adotou Campina Grande como sua pátria e transformou a cidade com suas realizações. Este lugar, conhecido como Sobrado dos Lauritzens, testemunhou momentos cruciais da história local e está sendo restaurado para abrigar um restaurante, preservando sua rica herança histórica.\nCristiano Lauritzen governou Campina Grande por 21 anos, dos quais 19 anos foram ininterruptos. Durante sua administração, ele trouxe o trem para a cidade em 1907, impulsionando o desenvolvimento econômico. Foi responsável pela construção do Açude de Bodocongó, garantindo a segurança hídrica, e pela instalação da energia elétrica, iluminando ruas e casas.\nLauritzen também foi pioneiro na educação ao fundar a primeira escola pública da cidade, o "Grêmio Campina-grandense de Instrução", que funcionava como escola, teatro e cinema. Ele financiou a obra com seu próprio salário, demonstrando seu compromisso com a educação e a cultura local.\nCristiano Lauritzen enfrentou muitos desafios durante sua administração. Além de adversários políticos, lidou com o cangaço de Antônio Silvino e enfrentou o surto de Peste Bubônica. Foi injustamente preso durante a Revolta do Rasga-Vales, mas absolvido por unanimidade em um júri popular, refletindo o reconhecimento da população por seus feitos.\nLauritzen era conhecido por seu senso de justiça. Ele garantiu a realização do primeiro culto evangélico na cidade, mesmo diante de ameaças de interrupção, convocando a polícia para assegurar a liberdade religiosa. Além disso, foi responsável pela compra do relógio da Catedral de Campina Grande, importado da Europa.\nO Sobrado dos Lauritzens, onde Cristiano morava e administrava sua "Casa Inglesa", está localizado na Rua Maciel Pinheiro. Este palacete, um dos marcos históricos da cidade, é um testemunho das decisões mais importantes tomadas para o desenvolvimento de Campina Grande.	0
125	136	pt	No final do Império e início da República, Cristiano Lauritzen, juntamente com outros intendentes, decidiu construir a primeira escola secundária de Campina Grande no local onde hoje funciona o Colégio Alfredo Dantas. Este marco educacional foi financiado com os próprios salários desses visionários administradores.\nAlém de servir como escola, o local também abrigou o primeiro teatro e cinema de Campina Grande. A escola era chamada de "Grêmio de Instrução Campina-grandense", um nome que deve alegrar os trezeanos, o mesmo gentílico que eles preferem se identificar.	0
126	137	pt	Caminhar pela Rua Marquês do Herval é como embarcar numa viagem aos tempos áureos de Campina Grande, onde a memória e a nostalgia se encontram a cada esquina. Esta rua é um marco na história da cidade, imortalizada na canção "Campina de Outrora" de João Gonçalves. Seus versos nos convidam a recordar e explorar os famosos bares que foram ponto de encontro e inspiração para muitos.\nOnde hoje funciona a farmácia Pague Menos, ficava o Bar Ponto Certo. Este estabelecimento, comandado pelo destemido Joaquim, um valentão que não dava sopa para a malandragem. Não muito longe dali, estava o Ponto Chic, famoso pela deliciosa macarronada do Joca, um prato que atraía frequentadores de toda a cidade.\nSeguindo pela rua, encontrava-se o Bar Macaíba, famoso pelos tira-gostos preparados pela cozinheira Júlia. O local também era conhecido pelas partidas de bilhar, onde Alonso Sapateiro encantava com suas tacadas precisas. Este bar, tão enraizado na cultura local, até inspirou um frevo, "Bate-bate Macaíba", trazendo ritmo e melodia à memória dos campinenses.\nA Rua Marquês do Herval é mais do que um simples endereço; é um retrato vivo da "Campina Grande de outrora", onde bares como Ponto Certo, Ponto Chic e Macaíba marcaram a história e deixaram uma herança de histórias e personagens inesquecíveis.	0
127	138	pt	Esta área histórica central, com suas edificações em estilo Art Déco, Art Noveau e Neoclássico, foi um marco pioneiro da industrialização da cidade, refletindo a riqueza e o dinamismo econômico daqueles tempos. No entanto, por trás da arquitetura imponente, escondem-se histórias pitorescas e curiosas que marcaram a vida social da época.\nA Rua Coronel Demóstenes Barbosa, localizada no Largo das Boninas, era conhecida por abrigar diversos prostíbulos durante o período áureo do ciclo do algodão, nas décadas de 1930 e 40. Um dos estabelecimentos mais notórios era a Unidade Moreninha. Curiosamente, o nome do prédio foi uma homenagem feita pelo comerciante e construtor Luís Soares à sua irmã, carinhosamente apelidada de “Moreninha”, que faleceu jovem. Luís Soares jamais imaginaria que, futuramente, o prédio se tornaria um famoso cabaré, ganhando um significado bem diferente, mas igualmente marcante na memória popular.\nNaquela época, era desaconselhável para moças e mulheres casadas caminhar pela calçada da Demóstenes Barbosa ao final da tarde. Os prostíbulos geralmente tinham bares ou restaurantes no piso térreo, anunciando um “Ambiente Familiar”, mas, após as 19 horas, o primeiro andar revelava um ambiente bem menos familiar. A fama de quem olhasse para o primeiro andar poderia ser facilmente comprometida, pois era onde “morava o pecado”.\nUm detalhe interessante é o Bar da Paz, localizado em frente à Unidade Moreninha. Apesar do nome pacífico, o bar era conhecido por ser o cenário de brigas frequentes, tornando-se um verdadeiro contrassenso em meio ao burburinho noturno de Campina Grande.	0
128	139	pt	No alto do bairro Serrotão, em Campina Grande, ergue-se uma pequena capela, silenciosa e solitária, guardiã de uma história trágica e de grande significado para a cidade. Quem passa por esta rua deserta talvez não saiba que, neste local, ocorreu o pior acidente aéreo da história da Paraíba.\nNo dia 5 de setembro de 1958, um avião da empresa Lóide Aéreo Nacional, que partira de Recife com destino a Fortaleza, fazia uma escala em Campina Grande quando encontrou seu destino fatídico. Ao se aproximar da cidade, a asa da aeronave colidiu com uma árvore, resultando em um terrível acidente. Dos 38 passageiros a bordo, 13 perderam a vida. Entre os sobreviventes estava Renato Aragão, que na época tinha apenas 23 anos e era um jovem estudante de Direito. Anos depois, ele se tornaria conhecido em todo o Brasil como o icônico Didi Mocó dos Trapalhões.\nO desastre não só chocou a cidade, mas também marcou profundamente sua história. O empresário Otto Muniz, outro dos 25 sobreviventes, relembra o impacto do acidente e os primeiros momentos de confusão e desespero. Infelizmente, as primeiras pessoas a chegarem ao local não foram movidas pela solidariedade, mas pela ganância, saqueando os pertences dos passageiros. No entanto, o caminho improvisado aberto pelos saqueadores acabou facilitando a chegada mais rápida dos bombeiros, salvando outras vidas.\nDevido à tragédia, o tradicional desfile de 7 de setembro daquele ano foi cancelado em sinal de luto. O evento foi postergado para o dia 14 de setembro, uma decisão que refletiu o pesar coletivo de uma cidade em choque.	0
129	140	pt	O Estádio Presidente Vargas, conhecido simplesmente por PV, é um estádio de futebol pertencente ao Treze Futebol Clube, que o utiliza como Centro de Treinamento e sede de seus jogos. O Treze é o único clube paraibano a ter um estádio próprio.\nA construção do Estádio Presidente Vargas teve início em 1938, em um terreno doado por Argemiro de Figueiredo. O estádio foi inaugurado em 17 de março de 1940. O nome Presidente Vargas foi uma sugestão do próprio Argemiro, amigo do então presidente Getúlio Vargas.\nA fundação do Treze Futebol Clube antecede a do estádio. Em 7 de setembro de 1925, Bioca se reuniu com mais doze desportistas em sua residência e fundou o novo clube de futebol. Durante essa reunião, Antônio Fernandes Bioca foi aclamado presidente interino, com o Dr. Luiz Gomes da Silva como orador e o Sr. Alberto Santos como secretário. Ficou decidido que uma nova reunião seria marcada em breve para definir outros detalhes do clube.\nNa segunda reunião, ocorrida em 20 de outubro de 1925 na residência de Bioca, foi discutido o nome do clube. A proposta aceita foi a do Sr. José Casado, que sugeriu o nome Treze Futebol Clube, em referência ao número de fundadores, que eram treze pessoas.\nAssim, o Treze Futebol Clube e o Estádio Presidente Vargas têm suas histórias entrelaçadas desde o início, com o clube crescendo e se desenvolvendo junto ao seu estádio, que se tornou um símbolo e um marco na cidade de Campina Grande.	0
130	141	pt	A Praça da Bandeira, localizada no coração de Campina Grande, é um local emblemático repleto de história e significado. Desde o período colonial, a praça foi concebida como um espaço público para encontros e eventos cívicos, desempenhando um papel central na vida social e cultural da cidade.\nUm evento marcante ocorreu em 9 de julho de 1950, quando um showmício com grandes lideranças e artistas nacionais, incluindo Luiz Gonzaga, atraiu uma multidão. O palanque, montado ao lado do atual abrigo Maringá, foi o palco de um trágico conflito político. Disparos de armas de fogo durante um discurso inflamado resultaram na morte de três pessoas e mais de vinte feridos, marcando profundamente a memória da cidade e servindo como um lembrete dos perigos das paixões políticas descontroladas.\nA praça também é conhecida por suas curiosidades e mistérios. Em 1985, a escultura "A Samaritana" do renomado escultor pernambucano Abelardo da Hora desapareceu misteriosamente, seguida pelo sumiço da estátua substituta do escultor campinense LABAS em 2016. Esses desaparecimentos sem explicações claras refletem uma relação complexa entre a arte pública e a gestão urbana.\nAlém disso, a Praça da Bandeira é um espaço de homenagem e memória. A estátua do ex-presidente Juscelino Kubitschek presta uma merecida homenagem a um dos líderes mais influentes do Brasil. Curiosamente, a praça só exibe bandeiras durante a Semana da Pátria, ressaltando o espírito cívico do local.\nAo longo do ano, a praça se transforma em um palco para diversas festividades e eventos culturais, como shows musicais, apresentações teatrais, feiras de artesanato e comemorações cívicas, reunindo moradores e visitantes em momentos de celebração e integração.	0
131	142	pt	Durante 25 anos, de 1928 a 1953, o edifício abrigou a famosa Fruteira de Seu Cristino Pimentel. Localizada na Rua Monsenhor Sales, 42 (Beco 31), onde hoje funcionam a Loja Lily Baby e a Rafaella Ótica, a fruteira era muito mais do que um simples ponto de venda de frutas. Na verdade, o local se transformou em um bar disfarçado, um ponto de encontro para intelectuais, professores, advogados, poetas, escritores e os populares "zébios" da cidade.\nA fruteira era conhecida pelo seu aperitivo oficial, o "primoroso", uma deliciosa mistura de cachaça, mel, limão e suco de maracujá. Este ambiente boêmio era um verdadeiro centro cultural, onde ideias e debates floresciam ao lado dos copos de aperitivos. Em 1953, Cristino Pimentel decidiu se dedicar exclusivamente à sua atividade literária, encerrando a fruteira de forma festiva. Ele organizou uma celebração onde a consumação foi gratuita e exigiu dos clientes, carinhosamente chamados de "abelhas", o compromisso de não deixar nada para trás. A festa começou num sábado à tarde e se estendeu até o domingo seguinte, culminando com a quebra de todas as taças e copos para que Cristino não pudesse se arrepender.	0
\.


--
-- Data for Name: point_type; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_type (id) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
\.


--
-- Data for Name: point_type_language; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.point_type_language (id, point_type_id, language, name) FROM stdin;
2	1	pt	Parque
3	2	pt	Museu
4	3	pt	Monumento
5	4	pt	Mercado
6	5	pt	Teatro
7	6	pt	Corpo d'água
8	7	pt	Universidade
9	8	pt	Restaurante
10	9	pt	Estádio
11	10	pt	Ginásio
12	11	pt	Igreja
13	12	pt	Praça
14	13	pt	Rua
15	14	pt	Prédio
16	15	pt	Escola
17	16	pt	Marco histórico
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.schema_migrations (version, dirty) FROM stdin;
20240726125330	f
\.


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.tag (id) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
\.


--
-- Data for Name: tag_language; Type: TABLE DATA; Schema: public; Owner: audio_guide_api
--

COPY public.tag_language (id, tag_id, language, name) FROM stdin;
1	1	pt	Lazer
2	2	pt	História e Cultura
3	3	pt	Natureza e Ecoturismo
4	4	pt	Gastronomia
5	5	pt	Entretenimento e Eventos
6	6	pt	Compras e Artesanato
7	7	pt	Educação e Aprendizado
8	8	pt	Arte
9	9	pt	Economia
10	10	pt	Arquitetura e Urbanismo
11	11	pt	Tecnologia e Inovação
12	12	pt	Religioso
13	13	pt	Ecoturismo
\.


--
-- Name: language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.language_id_seq', 1, true);


--
-- Name: point_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.point_id_seq', 142, true);


--
-- Name: point_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.point_name_id_seq', 135, true);


--
-- Name: point_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.point_tag_id_seq', 259, true);


--
-- Name: point_transcript_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.point_transcript_id_seq', 131, true);


--
-- Name: point_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.point_type_id_seq', 17, true);


--
-- Name: point_type_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.point_type_language_id_seq', 17, true);


--
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.tag_id_seq', 13, true);


--
-- Name: tag_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: audio_guide_api
--

SELECT pg_catalog.setval('public.tag_language_id_seq', 13, true);


--
-- Name: language language_name_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_name_key UNIQUE (name);


--
-- Name: language language_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);


--
-- Name: point_audio point_audio_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_audio
    ADD CONSTRAINT point_audio_pkey PRIMARY KEY (id);


--
-- Name: point_audio point_audio_point_id_language_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_audio
    ADD CONSTRAINT point_audio_point_id_language_key UNIQUE (point_id, language);


--
-- Name: point_image point_image_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_image
    ADD CONSTRAINT point_image_pkey PRIMARY KEY (id);


--
-- Name: point_name point_name_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_name
    ADD CONSTRAINT point_name_pkey PRIMARY KEY (id);


--
-- Name: point_name point_name_point_id_language_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_name
    ADD CONSTRAINT point_name_point_id_language_key UNIQUE (point_id, language);


--
-- Name: point point_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point
    ADD CONSTRAINT point_pkey PRIMARY KEY (id);


--
-- Name: point_tag point_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_tag
    ADD CONSTRAINT point_tag_pkey PRIMARY KEY (id);


--
-- Name: point_tag point_tag_point_id_tag_id_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_tag
    ADD CONSTRAINT point_tag_point_id_tag_id_key UNIQUE (point_id, tag_id);


--
-- Name: point_transcript point_transcript_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_transcript
    ADD CONSTRAINT point_transcript_pkey PRIMARY KEY (id);


--
-- Name: point_transcript point_transcript_point_id_language_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_transcript
    ADD CONSTRAINT point_transcript_point_id_language_key UNIQUE (point_id, language);


--
-- Name: point_type_language point_type_language_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_type_language
    ADD CONSTRAINT point_type_language_pkey PRIMARY KEY (id);


--
-- Name: point_type_language point_type_language_point_type_id_language_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_type_language
    ADD CONSTRAINT point_type_language_point_type_id_language_key UNIQUE (point_type_id, language);


--
-- Name: point_type point_type_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_type
    ADD CONSTRAINT point_type_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tag_language tag_language_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag_language
    ADD CONSTRAINT tag_language_pkey PRIMARY KEY (id);


--
-- Name: tag_language tag_language_tag_id_language_key; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag_language
    ADD CONSTRAINT tag_language_tag_id_language_key UNIQUE (tag_id, language);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: point_audio point_audio_language_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_audio
    ADD CONSTRAINT point_audio_language_fkey FOREIGN KEY (language) REFERENCES public.language(name);


--
-- Name: point_audio point_audio_point_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_audio
    ADD CONSTRAINT point_audio_point_id_fkey FOREIGN KEY (point_id) REFERENCES public.point(id);


--
-- Name: point_image point_image_point_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_image
    ADD CONSTRAINT point_image_point_id_fkey FOREIGN KEY (point_id) REFERENCES public.point(id);


--
-- Name: point_name point_name_language_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_name
    ADD CONSTRAINT point_name_language_fkey FOREIGN KEY (language) REFERENCES public.language(name);


--
-- Name: point_name point_name_point_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_name
    ADD CONSTRAINT point_name_point_id_fkey FOREIGN KEY (point_id) REFERENCES public.point(id);


--
-- Name: point point_point_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point
    ADD CONSTRAINT point_point_type_id_fkey FOREIGN KEY (point_type_id) REFERENCES public.point_type(id);


--
-- Name: point_tag point_tag_point_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_tag
    ADD CONSTRAINT point_tag_point_id_fkey FOREIGN KEY (point_id) REFERENCES public.point(id);


--
-- Name: point_tag point_tag_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_tag
    ADD CONSTRAINT point_tag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: point_transcript point_transcript_language_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_transcript
    ADD CONSTRAINT point_transcript_language_fkey FOREIGN KEY (language) REFERENCES public.language(name);


--
-- Name: point_transcript point_transcript_point_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_transcript
    ADD CONSTRAINT point_transcript_point_id_fkey FOREIGN KEY (point_id) REFERENCES public.point(id);


--
-- Name: point_type_language point_type_language_language_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.point_type_language
    ADD CONSTRAINT point_type_language_language_fkey FOREIGN KEY (language) REFERENCES public.language(name);


--
-- Name: tag_language tag_language_language_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag_language
    ADD CONSTRAINT tag_language_language_fkey FOREIGN KEY (language) REFERENCES public.language(name);


--
-- Name: tag_language tag_language_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: audio_guide_api
--

ALTER TABLE ONLY public.tag_language
    ADD CONSTRAINT tag_language_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

