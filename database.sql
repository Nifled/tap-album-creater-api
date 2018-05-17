--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.4 (Ubuntu 10.4-1.pgdg16.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: albums_album; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.albums_album (
    id integer NOT NULL,
    artist character varying(50) NOT NULL,
    title character varying(200) NOT NULL,
    release integer NOT NULL,
    genre character varying(100) NOT NULL,
    cover_url text NOT NULL
);


ALTER TABLE public.albums_album OWNER TO piglyhpbmqstxi;

--
-- Name: albums_album_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.albums_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_album_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: albums_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.albums_album_id_seq OWNED BY public.albums_album.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO piglyhpbmqstxi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO piglyhpbmqstxi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO piglyhpbmqstxi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO piglyhpbmqstxi;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO piglyhpbmqstxi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO piglyhpbmqstxi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO piglyhpbmqstxi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO piglyhpbmqstxi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO piglyhpbmqstxi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO piglyhpbmqstxi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: piglyhpbmqstxi
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: piglyhpbmqstxi
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO piglyhpbmqstxi;

--
-- Name: albums_album id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.albums_album ALTER COLUMN id SET DEFAULT nextval('public.albums_album_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: albums_album; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.albums_album (id, artist, title, release, genre, cover_url) FROM stdin;
2	Madvillain	Madvillainy	2004	Hip Hop	https://i.ebayimg.com/images/g/S3wAAOSwMNxXZSbl/s-l500.jpg
8	Editors	Violence	2018	Alternative rock	https://upload.wikimedia.org/wikipedia/en/5/51/Editors_violence.jpg
10	Last Dinosaurs	Wellness	2015	Indie Rock	https://images-na.ssl-images-amazon.com/images/I/615qjnjzlL._SD500.jpg
11	Linkin Park	Meteora	2003	Nu Metal	https://upload.wikimedia.org/wikipedia/en/6/64/MeteoraLP.jpg
12	Arctic Monkeys	Tranquility Base Hotel + Casino	2018	Alternative rock	https://upload.wikimedia.org/wikipedia/en/1/1b/Tranquility_Base_Hotel_%26_Casino_%28AM%29.jpg
14	Brockhampton	Saturation 3	2017	hip hop	https://upload.wikimedia.org/wikipedia/en/9/93/Brockhampton_-_Saturation_III.png
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add album	7	add_album
20	Can change album	7	change_album
21	Can delete album	7	delete_album
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$Q2Z0duOYOQ1S$ccRdWdc8yh9z7b+p44t1Hx93oHs2d3dgs3lG4oOnTek=	2018-05-16 10:07:36.543256+00	t	admin			admin@mail.com	t	t	2018-05-16 01:13:29.578987+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-05-16 01:16:11.671384+00	1	DAMN - Kendrick Lamar	1	[{"added": {}}]	7	1
2	2018-05-16 05:40:34.797437+00	4	Era Vulgaris - Queens of the Stone Age	1	[{"added": {}}]	7	1
3	2018-05-16 05:41:42.635037+00	5	MM.. FOOD - MF DOOM	1	[{"added": {}}]	7	1
4	2018-05-16 08:24:33.314245+00	9	808's and Heartbreaks - Kanye Wets	3		7	1
5	2018-05-16 08:24:33.318019+00	6	Every Eye - Ivan Ave	3		7	1
6	2018-05-16 08:24:33.320498+00	4	Era Vulgaris - Queens of the Stone Age	3		7	1
7	2018-05-16 08:24:33.322915+00	3	Institutionalized - Suicidal Tendencies	3		7	1
8	2018-05-16 08:24:33.325363+00	1	DAMN - Kendrick Lamar	3		7	1
9	2018-05-16 08:24:45.141633+00	7	Lonerism - Tame Impala	3		7	1
10	2018-05-16 16:12:58.677986+00	12	Tranquility Base Hotel + Casino - Arctic Monkeys	1	[{"added": {}}]	7	1
11	2018-05-16 16:15:02.207442+00	14	Saturation 3 - Brockhampton	2	[{"changed": {"fields": ["title"]}}]	7	1
12	2018-05-16 16:15:20.680424+00	13	Saturattion 3 - Brockhampton	3		7	1
13	2018-05-16 16:15:20.691895+00	5	MM.. FOOD - MF DOOM	3		7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	albums	album
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-05-16 01:12:55.180582+00
2	auth	0001_initial	2018-05-16 01:12:55.328037+00
3	admin	0001_initial	2018-05-16 01:12:55.403935+00
4	admin	0002_logentry_remove_auto_add	2018-05-16 01:12:55.424366+00
5	albums	0001_initial	2018-05-16 01:12:55.445421+00
6	contenttypes	0002_remove_content_type_name	2018-05-16 01:12:55.488601+00
7	auth	0002_alter_permission_name_max_length	2018-05-16 01:12:55.502939+00
8	auth	0003_alter_user_email_max_length	2018-05-16 01:12:55.522567+00
9	auth	0004_alter_user_username_opts	2018-05-16 01:12:55.538314+00
10	auth	0005_alter_user_last_login_null	2018-05-16 01:12:55.560427+00
11	auth	0006_require_contenttypes_0002	2018-05-16 01:12:55.566432+00
12	auth	0007_alter_validators_add_error_messages	2018-05-16 01:12:55.589447+00
13	auth	0008_alter_user_username_max_length	2018-05-16 01:12:55.613937+00
14	auth	0009_alter_user_last_name_max_length	2018-05-16 01:12:55.636463+00
15	sessions	0001_initial	2018-05-16 01:12:55.666572+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: piglyhpbmqstxi
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
kjyy6930zihliz8uembk3bysaankh4kv	NGNhYjk4ZTVjNTY5OWVmM2ExMTA2NDcxNGYxNDQ0Y2Y2MGFmOTZlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDM1ZmQ5M2E1MjlkZTI1ODhjMmNmMjNhNjNmM2JjZWIwNDI5ZTNlIn0=	2018-05-30 01:14:09.832731+00
ugm7rudyp2qaydjr072h2rf31msegh8r	NGNhYjk4ZTVjNTY5OWVmM2ExMTA2NDcxNGYxNDQ0Y2Y2MGFmOTZlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDM1ZmQ5M2E1MjlkZTI1ODhjMmNmMjNhNjNmM2JjZWIwNDI5ZTNlIn0=	2018-05-30 01:17:15.979066+00
1qnl6dtn51qx93srtb5lxfqc9km0k0bj	NGNhYjk4ZTVjNTY5OWVmM2ExMTA2NDcxNGYxNDQ0Y2Y2MGFmOTZlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDM1ZmQ5M2E1MjlkZTI1ODhjMmNmMjNhNjNmM2JjZWIwNDI5ZTNlIn0=	2018-05-30 05:04:27.699491+00
8dys52np6z0o0b8ph59a4c0lyz2t4bw3	NGNhYjk4ZTVjNTY5OWVmM2ExMTA2NDcxNGYxNDQ0Y2Y2MGFmOTZlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDM1ZmQ5M2E1MjlkZTI1ODhjMmNmMjNhNjNmM2JjZWIwNDI5ZTNlIn0=	2018-05-30 10:07:36.638062+00
\.


--
-- Name: albums_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.albums_album_id_seq', 14, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 21, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: piglyhpbmqstxi
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 15, true);


--
-- Name: albums_album albums_album_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.albums_album
    ADD CONSTRAINT albums_album_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: piglyhpbmqstxi
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: piglyhpbmqstxi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO piglyhpbmqstxi;


--
-- PostgreSQL database dump complete
--

