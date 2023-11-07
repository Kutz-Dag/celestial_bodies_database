--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    type character varying(255),
    distance_from_earth integer,
    has_life boolean,
    star_id integer,
    unique_key_column numeric NOT NULL
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean,
    unique_key_column numeric NOT NULL
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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    planet_id integer,
    unique_key_column numeric NOT NULL
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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    type character varying(255),
    distance_from_earth integer,
    has_life boolean,
    star_id integer,
    unique_key_column numeric NOT NULL
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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    type character varying(255),
    distance_from_earth integer,
    has_life boolean,
    galaxy_id integer,
    unique_key_column numeric NOT NULL
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_dwarf_planet_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', 'The only dwarf planet in the Solar System', 4200, 'Rocky Planet', 600, false, 1, 1111);
INSERT INTO public.dwarf_planet VALUES (2, 'Hectron', 'This planet has valcanoes everywhere', 378, 'Magma Planet', 5900, false, 4, 2222);
INSERT INTO public.dwarf_planet VALUES (3, 'Lodeurn', 'Nothing much, looks like the moon of Earth', 2765, 'Rocky Planet', 5870, false, 4, 3333);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A spiral galaxy containing the solar system', 13000, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'A spiral galaxy nearest to the Milky Way', 10010, true, 2);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 'The first galaxy to be classified as a spiral galaxy', 400, true, 3);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'A spiral galaxy in an unusual hat-like shape', 13250, true, 4);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Another spiral galaxy. It was discovered in 1781 by Pierre Mechain', 13510, true, 5);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'This galaxy is known as a starbust galaxy', 13300, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'This is the only moon for Planet Earth', 2200, 45, false, 1, 11111);
INSERT INTO public.moon VALUES (2, 'Nebulora', 'A moon that only has self pollinating flowers on it', 310, 6245, true, 7, 22222);
INSERT INTO public.moon VALUES (3, 'Quasawey', 'A gas moon with a dense atmosphere', 305, 6230, false, 7, 33333);
INSERT INTO public.moon VALUES (4, 'Lunastride', 'A habitable moon where life forms are scarce', 301, 8580, true, 8, 44444);
INSERT INTO public.moon VALUES (5, 'Celestiscope', 'Part of the large moon system of Acute', 12, 8530, false, 8, 55555);
INSERT INTO public.moon VALUES (6, 'Starshard', 'Low gravity so galaxy members float in their spaceship', 10, 8403, true, 8, 66666);
INSERT INTO public.moon VALUES (7, 'Galaxara', 'A large moon nearly the same size as Leevun', 1200, 5925, false, 6, 77777);
INSERT INTO public.moon VALUES (8, 'Lunatrix', 'A rocky moon that reflects light strongly', 1190, 12002, false, 5, 88888);
INSERT INTO public.moon VALUES (9, 'Orbitelle', 'An icy moon, bzzzz', 49, 3180, false, 9, 99999);
INSERT INTO public.moon VALUES (10, 'Python', 'Prints the words on the moon', 2, 8380, false, 10, 11112);
INSERT INTO public.moon VALUES (11, 'Java', 'The mobile moon, haha', 2, 8368, false, 10, 11113);
INSERT INTO public.moon VALUES (12, 'Astraluna', 'A cold moon with a few water bodies', 391, 3205, false, 8, 11114);
INSERT INTO public.moon VALUES (13, 'Nobsflarem', 'The closest moon to Hitmuki', 12, 12748, false, 5, 11115);
INSERT INTO public.moon VALUES (14, 'Neovalan', 'Weak atmosphere with limited water sources', 44, 12701, true, 5, 11116);
INSERT INTO public.moon VALUES (15, 'Quasarion', 'A natural rocky moon that previously had life', 1229, 8437, false, 8, 11117);
INSERT INTO public.moon VALUES (16, 'Astraldream', 'A very strange gas moon', 3479, 3298, false, 9, 11118);
INSERT INTO public.moon VALUES (17, 'Cosmoglon', 'Home to a group of prehistoric creatures and plants', 5236, 8912, true, 8, 11119);
INSERT INTO public.moon VALUES (18, 'Titan', 'A possible habitable moon for the future', 4003, 465, false, 12, 22221);
INSERT INTO public.moon VALUES (19, 'Titania', 'A moon with loads of valleys and rough surface', 3650, 489, false, 11, 22223);
INSERT INTO public.moon VALUES (20, 'Mangold', 'A rocky moon much smaller than Mounbear', 625, 5543, false, 7, 22224);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our home', 4543, 'Terrestrial World', 0, true, 3, 111);
INSERT INTO public.planet VALUES (2, 'Mercury', 'Closest planet to the Sun and the first planet of the Solar System', 4500, 'Terrestrial World', 250, false, 3, 222);
INSERT INTO public.planet VALUES (3, 'Venus', 'Also known as the planet of love, for some reason', 3873, 'Terrestrial World', 290, false, 3, 333);
INSERT INTO public.planet VALUES (4, 'Mars', 'Elon Musk wants to live on this planet', 4890, 'Terrestrial World', 387, true, 3, 444);
INSERT INTO public.planet VALUES (5, 'Hitmuki', 'A planet that is completely covered in water', 45, 'Aquatic', 12756, false, 5, 555);
INSERT INTO public.planet VALUES (6, 'Leevun I', 'A gas planet with thick condensed gas', 476, 'Gas Giant', 6201, true, 4, 666);
INSERT INTO public.planet VALUES (7, 'Mounbear', 'Completely covered in rocky mountains', 780, 'Terrestrial World', 6253, true, 4, 777);
INSERT INTO public.planet VALUES (8, 'Acute', 'A gas giant with lots of moons', 5237, 'Gas Giant', 8600, false, 6, 888);
INSERT INTO public.planet VALUES (9, 'Pinned Ha', 'One of the coldest known planets', 3900, 'Ice Giant', 3200, false, 2, 999);
INSERT INTO public.planet VALUES (10, 'Hello World', 'A planet where the computer guys hang out', 1, 'Terrestrial World', 8350, true, 6, 211);
INSERT INTO public.planet VALUES (11, 'Uranus', 'One of the Ice Giants of the Solar System', 3900, 'Ice Giant', 500, false, 3, 322);
INSERT INTO public.planet VALUES (12, 'Saturn', 'A gas giant with beautiful rings made of rocks', 4601, 'Gas Giant', 470, false, 3, 433);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Achernar', 'The brightest star in the Eridanus Constellation', 923000, 'White dwarf', 389, false, 1, 11);
INSERT INTO public.star VALUES (2, 'Polarisae', 'This star is not visible from the planet Earth', 29800, 'Binary Star', 3000, false, 3, 22);
INSERT INTO public.star VALUES (3, 'Sun', 'The hot star in the center of the solar system', 4603, 'Super Red Giant', 93, false, 1, 33);
INSERT INTO public.star VALUES (4, 'Acrux', 'The only star that has a semi-ocean', 23, 'Unknown', 6389, true, 2, 44);
INSERT INTO public.star VALUES (5, 'Orange Mate', 'This star is the most orangest star of the orange-colored stars', 3290, 'Red Giant', 11234, false, 5, 55);
INSERT INTO public.star VALUES (6, 'Nanobirde', 'This star is one of the oldest known stars', 999899, 'Neutron Star', 8712, false, 4, 66);


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 3, true);


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
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


--
-- Name: dwarf_planet dwarf_planet_unique_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_unique_key_column_key UNIQUE (unique_key_column);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_key_column_key UNIQUE (unique_key_column);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_key_column_key UNIQUE (unique_key_column);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_key_column_key UNIQUE (unique_key_column);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_key_column_key UNIQUE (unique_key_column);


--
-- Name: dwarf_planet dwarf_planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

