--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(40) NOT NULL,
    origin_type text
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellation_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_black_hole integer,
    galaxy_type text,
    mass_trillion numeric(20,10),
    luminosity_billion numeric(20,10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    clasification text,
    density_g_cm3 numeric(20,10),
    is_regular boolean,
    asso_planet character varying(40)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_moon integer,
    planet_type text,
    has_atmosphere boolean,
    ms numeric(20,10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    class text,
    luminosity_star double precision,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Orion', 'Greek');
INSERT INTO public.constellations VALUES (2, 'Ursa Major', 'Greek');
INSERT INTO public.constellations VALUES (3, 'Scorpius', 'Greek');
INSERT INTO public.constellations VALUES (4, 'Taurus', 'Babylonian');
INSERT INTO public.constellations VALUES (5, 'Leo', 'Babylonian');
INSERT INTO public.constellations VALUES (6, 'Canis Major', 'Mesopotamian');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4000000, 'Spiral', 1.5000000000, 20.0000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 'Spiral', 1.0000000000, 140.0000000000);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 2, 'Eliptical', 1.2000000000, 300.0000000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', NULL, 'Spiral', 1.0000000000, 160.0000000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 1, 'Spiral', 0.8000000000, 30.0000000000);
INSERT INTO public.galaxy VALUES (6, 'NGC 1300', 0, 'Barred Spiral Galaxy', 0.1200000000, 24.0000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Natural', 3.3400000000, true, 'Earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Natural', 1.8760000000, false, 'Mars');
INSERT INTO public.moon VALUES (4, 'Io', 'Galilean', 3.5300000000, true, 'Jupiter');
INSERT INTO public.moon VALUES (5, 'Europa', 'Galilean', 3.0100000000, true, 'Jupiter');
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Galilean', 3.0100000000, true, 'Jupiter');
INSERT INTO public.moon VALUES (8, 'Mimas', 'Cronian', 1.1500000000, true, 'Saturn');
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Cronian', 1.6100000000, true, 'Saturn');
INSERT INTO public.moon VALUES (10, 'Tethys', 'Cronian', 0.9800000000, true, 'Saturn');
INSERT INTO public.moon VALUES (11, 'Dione', 'Cronian', 1.4800000000, true, 'Saturn');
INSERT INTO public.moon VALUES (12, 'Rhea', 'Cronian', 1.2400000000, true, 'Saturn');
INSERT INTO public.moon VALUES (13, 'Titan', 'Cronian', 1.8800000000, true, 'Saturn');
INSERT INTO public.moon VALUES (14, 'Hyperion', 'Cronian', 0.5500000000, false, 'Saturn');
INSERT INTO public.moon VALUES (16, 'Ariel', 'Uranian', 1.5900000000, true, 'Uranus');
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Uranian', 1.3900000000, true, 'Uranus');
INSERT INTO public.moon VALUES (18, 'Titania', 'Uranian', 1.7100000000, true, 'Uranus');
INSERT INTO public.moon VALUES (19, 'Oberon', 'Uranian', 1.6300000000, true, 'Uranus');
INSERT INTO public.moon VALUES (20, 'Triton', 'Neptunian', 2.0600000000, true, 'Neptune');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Natural', 1.4710000000, false, 'Mars');
INSERT INTO public.moon VALUES (7, 'Callisto', 'Galilean', 1.8300000000, true, 'Jupiter');
INSERT INTO public.moon VALUES (15, 'Iapetus', 'Cronian', 1.0900000000, true, 'Saturn');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', true, 1.0000000000);
INSERT INTO public.planet VALUES (2, 'Jupiter', 79, 'Gas Giant', true, 317.8000000000);
INSERT INTO public.planet VALUES (3, 'Mars', 2, 'Terrestrial', true, 0.1070000000);
INSERT INTO public.planet VALUES (4, 'Saturn', 82, 'Gas Giant', true, 95.2000000000);
INSERT INTO public.planet VALUES (5, 'Venus', 0, 'Terrestrial', true, 0.8150000000);
INSERT INTO public.planet VALUES (6, 'Neptune', 14, 'Gas Giant', true, 17.1470000000);
INSERT INTO public.planet VALUES (7, 'Kepler-452b', 0, 'Terrestrial', true, NULL);
INSERT INTO public.planet VALUES (8, 'HD 189733b', 0, 'Gas Giant', true, NULL);
INSERT INTO public.planet VALUES (9, 'KELT-9b', 0, 'Gas Giant', true, NULL);
INSERT INTO public.planet VALUES (10, 'Gliese 436 b', 1, 'Ice Giant', true, NULL);
INSERT INTO public.planet VALUES (11, '55 Cancri e', 0, 'Terrestrial', true, NULL);
INSERT INTO public.planet VALUES (12, 'Uranus', 27, 'Ice Giant', true, 14.5000000000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'A1V', 25.4, NULL);
INSERT INTO public.star VALUES (2, 'Vega', 'A0Va', 40.12, NULL);
INSERT INTO public.star VALUES (3, 'Andromeda A', 'G2V', 1.76, NULL);
INSERT INTO public.star VALUES (4, 'Andromeda B', 'K5III', 16000, NULL);
INSERT INTO public.star VALUES (5, 'Alpha Cen', 'G2V', 1.519, NULL);
INSERT INTO public.star VALUES (6, 'Beta Cen', 'G2V', 0.573, NULL);


--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_asso_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_asso_planet_fkey FOREIGN KEY (asso_planet) REFERENCES public.planet(name);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

