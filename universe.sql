--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    years integer,
    age_in_millions_of_years integer NOT NULL,
    year_of_discovery integer,
    distance_from_earth numeric,
    description text,
    has_life boolean
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
    name character varying NOT NULL,
    years integer,
    age_in_millions_of_years integer NOT NULL,
    year_of_discovery integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    planet_id integer
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
    name character varying NOT NULL,
    years integer,
    age_in_millions_of_years integer NOT NULL,
    year_of_discovery integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    star_id integer
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
    name character varying NOT NULL,
    years integer,
    age_in_millions_of_years integer NOT NULL,
    year_of_discovery integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagitario A*', 1);
INSERT INTO public.black_hole VALUES (2, 'M87*,', 2);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, 10000, 2500, 2.537, 'Nearest galaxy to the Milky Way', true);
INSERT INTO public.galaxy VALUES (2, 'Sombrero', NULL, 10000, 1767, 0.982, 'A spiral galaxy located in the constellation Virgo', false);
INSERT INTO public.galaxy VALUES (3, 'Triángulo', NULL, 3000, 1920, 3.14, 'One of the closest galaxies to the Milky Way', false);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', NULL, 13000, 10000, 0, 'The galaxy that contains our Solar System.', true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', NULL, 11000, 1773, 23.2, 'A classic spiral galaxy located in the constellation Canes Venatici.', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', NULL, 10000, 1781, 28.7, 'A spiral galaxy located in the constellation Virgo, notable for its bright nucleus.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, 5, 1969, 384400, 'The only natural satellite of Earth.', true, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', NULL, 5, 1877, 6000, 'The larger and closer of Mars', false, 2);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, 5, 1610, 628300, 'A moon of Jupiter known for its icy surface and potential subsurface ocean.', false, 3);
INSERT INTO public.moon VALUES (4, 'Europa', NULL, 5, 1610, 628300, 'A moon of Jupiter known for its icy surface and potential subsurface ocean.', false, 3);
INSERT INTO public.moon VALUES (5, 'Io', NULL, 5, 1610, 421800, 'A volcanically active moon of Jupiter.', false, 3);
INSERT INTO public.moon VALUES (6, 'Ganimedes', NULL, 5, 1610, 1070, 'The largest moon in the Solar System, also a moon of Jupiter.', false, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 5, 1610, 1880, 'A heavily cratered moon of Jupiter.', false, 3);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, 5, 1655, 1270, 'Saturns largest moon, known for its thick atmosphere.', true, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', NULL, 5, 1672, 527, 'A moon of Saturn known for its wispy rings.', false, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', NULL, 5, 1671, 3561, 'A moon of Saturn known for its two-tone coloration.', false, 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', NULL, 5, 1789, 238, 'A moon of Saturn with geysers that spew water vapor and ice.', true, 4);
INSERT INTO public.moon VALUES (12, 'Mimas', NULL, 5, 1789, 185, 'A small moon of Saturn, known for its large crater.', false, 4);
INSERT INTO public.moon VALUES (13, 'Phobos', NULL, 5, 1877, 6000, 'One of Mars two moons, known for its irregular shape.', false, 2);
INSERT INTO public.moon VALUES (14, 'Deimos', NULL, 5, 1877, 23460, 'The smaller and further moon of Mars.', false, 2);
INSERT INTO public.moon VALUES (15, 'Charon', NULL, 5, 1978, 1936, 'The largest moon of Pluto, known for its size relative to its planet.', false, 1);
INSERT INTO public.moon VALUES (16, 'Triton', NULL, 5, 1846, 354800, 'The largest moon of Neptune, known for its retrograde orbit.', false, 5);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, 5, 1787, 584, 'The second largest moon of Uranus.', false, 6);
INSERT INTO public.moon VALUES (18, 'Titania', NULL, 5, 1787, 436, 'The largest moon of Uranus, known for its large canyons.', false, 6);
INSERT INTO public.moon VALUES (19, 'Umbriel', NULL, 5, 1851, 266, 'A dark moon of Uranus with a heavily cratered surface.', false, 6);
INSERT INTO public.moon VALUES (20, 'Miranda', NULL, 5, 1948, 129, 'A moon of Uranus known for its extreme geological features.', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, 5, 2000, 0, 'The third planet from the Sun and the only known planet to support life.', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, 5, 1877, 227.9, 'The fourth planet from the Sun, known for its red color.', false, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', NULL, 4, 2016, 4.24, 'An exoplanet orbiting Proxima Centauri, potentially habitable.', true, 3);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, 5, 1960, 41.4, 'The second planet from the Sun, known for its thick, toxic atmosphere.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 5, 1610, 778.5, 'The largest planet in our solar system, known for its Great Red Spot.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 5, 1610, 1427, 'Known for its prominent ring system, Saturn is the sixth planet from the Sun.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 5, 1781, 2871, 'The third largest planet in the Solar System, known for its blue color and icy atmosphere.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 5, 1846, 4497.1, 'The eighth planet from the Sun, known for its strong winds and deep blue color.', false, 1);
INSERT INTO public.planet VALUES (9, 'Mercury', NULL, 5, 1970, 57.9, 'The closest planet to the Sun, known for its extreme temperature variations.', false, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', NULL, 4, 2011, 600, 'An exoplanet located in the habitable zone of its star.', true, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', NULL, 0, 1999, 150, 'An exoplanet known for its atmosphere and is located in the constellation Pegasus.', false, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', NULL, 1, 2010, 20.3, 'An exoplanet that is believed to be in the habitable zone of its star.', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', NULL, 200, 2000, 8.6, 'Brightest star in the night sky', false, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', NULL, 100, 1850, 642.5, 'Red supergiant star in Orion', false, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', NULL, 4, 1915, 4.24, 'Closest known star to the Sun', true, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', NULL, 5, 2016, 4.37, 'One of the three stars in the Alpha Centauri system.', true, 2);
INSERT INTO public.star VALUES (5, 'Vega', NULL, 455, 1850, 25.04, 'A bright star in the constellation Lyra, known for its blue-white hue.', false, 1);
INSERT INTO public.star VALUES (6, 'Rigel', NULL, 860, 1830, 860, 'A blue supergiant star in the constellation Orion.', false, 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

