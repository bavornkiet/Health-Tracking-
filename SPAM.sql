--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Debian 13.9-0+deb11u1)
-- Dumped by pg_dump version 13.9 (Debian 13.9-0+deb11u1)

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
-- Name: goals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.goals (
    "goalID" integer NOT NULL,
    email text NOT NULL,
    "goalDataType" text,
    "goalMet" boolean,
    "goalValue" real
);


ALTER TABLE public.goals OWNER TO postgres;

--
-- Name: uploads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uploads (
    "metadata_emailAddress" text NOT NULL,
    "distanceWalkingRunning" text,
    "stepCount" text,
    "appleExcerciseTime" text,
    "basalEnergyBurned" text,
    "appleStandTime" text,
    "activeEnergyBurned" text,
    "environmentalAudioExposureAvg" text,
    "environmentalAudioExposureMin" text,
    "environmentalAudioExposureMax" text,
    "headphoneAudioExposureAvg" text,
    "headphoneAudioExposureMin" text,
    "headphoneAudioExposureMax" text,
    "heartRateAvg" text,
    "heartRateMin" text,
    "heartRateMax" text,
    "restingHeartRateMin" text,
    "restingHeartRateMax" text,
    "restingHeartRateAvg" text,
    "walkingHeartRateAverageAvg" text,
    "heartRateVariabilitySDNNAvg" text,
    "walkingSpeedMin" text,
    "walkingSpeedAvg" text,
    "walkingSpeedMax" text,
    "walkingStepLengthMin" text,
    "walkingStepLengthMax" text,
    "walkingStepLengthAvg" text,
    "walkingAsymmetryPercentageAvg" text,
    "walkingDoubleSupportPercentageAvg" text,
    metadata_period_hours text NOT NULL,
    metadata_timestamp text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.uploads OWNER TO postgres;

--
-- Name: uploads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uploads_id_seq OWNER TO postgres;

--
-- Name: uploads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uploads_id_seq OWNED BY public.uploads.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: user_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_table_id_seq OWNER TO postgres;

--
-- Name: user_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_table_id_seq OWNED BY public.users.userid;


--
-- Name: uploads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uploads ALTER COLUMN id SET DEFAULT nextval('public.uploads_id_seq'::regclass);


--
-- Name: users userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.user_table_id_seq'::regclass);


--
-- Data for Name: goals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.goals ("goalID", email, "goalDataType", "goalMet", "goalValue") FROM stdin;
\.


--
-- Data for Name: uploads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uploads ("metadata_emailAddress", "distanceWalkingRunning", "stepCount", "appleExcerciseTime", "basalEnergyBurned", "appleStandTime", "activeEnergyBurned", "environmentalAudioExposureAvg", "environmentalAudioExposureMin", "environmentalAudioExposureMax", "headphoneAudioExposureAvg", "headphoneAudioExposureMin", "headphoneAudioExposureMax", "heartRateAvg", "heartRateMin", "heartRateMax", "restingHeartRateMin", "restingHeartRateMax", "restingHeartRateAvg", "walkingHeartRateAverageAvg", "heartRateVariabilitySDNNAvg", "walkingSpeedMin", "walkingSpeedAvg", "walkingSpeedMax", "walkingStepLengthMin", "walkingStepLengthMax", "walkingStepLengthAvg", "walkingAsymmetryPercentageAvg", "walkingDoubleSupportPercentageAvg", metadata_period_hours, metadata_timestamp, id) FROM stdin;
rb2355@bath.ac.uk	1920.83 m	2291 count	5 min	1811.62 kcal	33 min	159.262 kcal	74.9269 dBASPL	32.9764 dBASPL	104.608 dBASPL	60.6684 dBASPL	36.3641 dBASPL	66.3488 dBASPL	1.33732 count/s	0.916667 count/s	1.91667 count/s	72 count/min	72 count/min	72 count/min	95.5 count/min	42.6262 ms	0.88 m/s	1.44385 m/s	1.74 m/s	0.58 m	0.91 m	0.801538 m	0 %	25.9154 %	24	133227923248413750	1
jb3522@bath.ac.uk	901.97 m	1366 count	\N	1908.51 kcal	\N	41.52 kcal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.75 m/s	1.15778 m/s	1.47 m/s	0.55 m	0.82 m	0.701111 m	3.25 %	28.1 %	24	133238175305381920	2
pc857@bath.ac.uk	1082.56 m	1516 count	\N	1733.81 kcal	\N	52.014 kcal	\N	\N	\N	67.7293 dBASPL	0 dBASPL	80.87 dBASPL	\N	\N	\N	\N	\N	\N	\N	\N	0.5 m/s	1.088 m/s	1.43 m/s	0.31 m	0.79 m	0.618 m	\N	27 %	24	133238178524871360	3
bc940@bath.ac.uk	1388.93 m	1947 count	\N	1663.64 kcal	\N	42.252 kcal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.98 m/s	1.12 m/s	1.32 m/s	0.53 m	0.69 m	0.615714 m	1.5 %	28.25 %	24	133238186110548640	4
sb3346@bath.ac.uk	7575.63 m	9521 count	1 min	1553.39 kcal	20 min	165.037 kcal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.69 m/s	1.19105 m/s	1.78 m/s	0.54 m	0.88 m	0.690263 m	9.34783 %	27.8939 %	24	133241290405083060	5
jb3522@bath.ac.uk	5061.35 m	6413 count	\N	1941.49 kcal	\N	279.619 kcal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.62 m/s	1.40147 m/s	1.85 m/s	0.42 m	0.94 m	0.784706 m	0.44 %	26.1875 %	24	133244903318739920	6
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (userid, email, password) FROM stdin;
1	jb3522@bath.ac.uk	$2y$10$sR13e85VdVq3/7xbpNotPeEIiJTthx7ebFEDxVg0aP8fTC6XAJGNW
2	rb2355@bath.ac.uk	$2y$10$sR13e85VdVq3/7xbpNotPeEIiJTthx7ebFEDxVg0aP8fTC6XAJGNW
3	pc857@bath.ac.uk	$2y$10$sR13e85VdVq3/7xbpNotPeEIiJTthx7ebFEDxVg0aP8fTC6XAJGNW
4	bc940@bath.ac.uk	$2y$10$sR13e85VdVq3/7xbpNotPeEIiJTthx7ebFEDxVg0aP8fTC6XAJGNW
5	sb3346@bath.ac.uk	$2y$10$sR13e85VdVq3/7xbpNotPeEIiJTthx7ebFEDxVg0aP8fTC6XAJGNW
\.


--
-- Name: uploads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uploads_id_seq', 6, true);


--
-- Name: user_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_table_id_seq', 5, true);


--
-- Name: goals goals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goals
    ADD CONSTRAINT goals_pkey PRIMARY KEY ("goalID");


--
-- Name: uploads uploads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uploads
    ADD CONSTRAINT uploads_pkey PRIMARY KEY (id);


--
-- Name: users user_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_table_pkey PRIMARY KEY (userid);


--
-- PostgreSQL database dump complete
--

--ammending pkay of goals to auto generate
CREATE SEQUENCE goal_id_seq START 1;
ALTER TABLE goals ALTER COLUMN "goalID" SET DEFAULT nextval('goal_id_seq');

