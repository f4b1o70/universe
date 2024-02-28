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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Large spiral galaxy', true, false, 2540000, 10000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Our home galaxy', true, true, 0, 13000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy', true, false, 3000000, 500);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical galaxy with a supermassive black hole', true, false, 55000000, 10000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral galaxy with interacting companion', true, false, 2300000, 700);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral galaxy with a bright nucleus', true, false, 29000000, 900);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Galaxies with a spiral arm structure.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Galaxies with an elliptical shape and little or no apparent structure.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Galaxies that do not fit into the categories of spiral or elliptical, often with a chaotic appearance.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s natural satellite', true, false, 384.4, 5, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Martian moon', true, false, 9.378, 4, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Martian moon', true, false, 23.46, 5, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter''s moon with intense volcanic activity', true, false, 421.7, 5, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter''s moon with an ice-covered ocean', true, false, 671.1, 5, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system (Jupiter)', true, false, 1070, 5, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter''s moon with a heavily cratered surface', true, false, 1880, 5, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn''s largest moon with a thick atmosphere', true, false, 1200000, 5, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Saturn''s moon with geysers of water vapor', true, false, 238.1, 5, 6);
INSERT INTO public.moon VALUES (10, 'Miranda', 'Uranus'' moon with a varied and unusual surface', true, false, 129.9, 5, 7);
INSERT INTO public.moon VALUES (11, 'Triton', 'Neptune''s largest moon with active geysers', true, false, 354.8, 5, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 'Dwarf planet Pluto''s largest moon', true, false, 17530, 5, 9);
INSERT INTO public.moon VALUES (13, 'Dysnomia', 'Dwarf planet Eris'' moon', true, false, 37380, 5, 10);
INSERT INTO public.moon VALUES (14, 'Namaka', 'Dwarf planet Haumea''s moon', true, false, 25570, 5, 11);
INSERT INTO public.moon VALUES (15, 'Hi''iaka', 'Dwarf planet Haumea''s moon', true, false, 49120, 5, 11);
INSERT INTO public.moon VALUES (16, 'Weywot', 'Dwarf planet Makemake''s moon', true, false, 21560, 5, 12);
INSERT INTO public.moon VALUES (17, 'Albiorix', 'Dwarf planet Haumea''s moon', true, false, 20270, 5, 11);
INSERT INTO public.moon VALUES (18, 'Sycorax', 'Uranus'' moon with a highly inclined orbit', true, false, 121800, 5, 7);
INSERT INTO public.moon VALUES (19, 'Caliban', 'Uranus'' moon with a highly eccentric orbit', true, false, 7230000, 5, 7);
INSERT INTO public.moon VALUES (20, 'Ymir', 'Uranus'' irregular moon', true, false, 23290000, 5, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Rocky planet', true, false, 57.91, 5, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Rocky planet with thick atmosphere', true, false, 108.2, 5, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Blue planet with diverse ecosystems', true, true, 0, 5, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet with iron oxide surface', true, false, 227.9, 5, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant with prominent bands of clouds', false, false, 778.3, 5, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ringed planet with distinctive ring system', false, false, 1420, 5, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with a blue-green hue', false, false, 2870, 5, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice giant with a stormy atmosphere', false, false, 4500, 5, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet in the Kuiper Belt', true, false, 5910, 5, 3);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf planet in the scattered disc', true, false, 10500, 5, 3);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Dwarf planet in the Kuiper Belt', true, false, 6520, 5, 3);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf planet in the scattered disc', true, false, 6910, 5, 3);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Planets with solid surfaces, like Mercury, Venus, Earth, and Mars.');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Large planets primarily composed of hydrogen and helium, like Jupiter and Saturn.');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Giants planets composed mainly of heavier elements, like Uranus and Neptune.');
INSERT INTO public.planet_types VALUES (4, 'Dwarf Planet', 'Small celestial bodies that orbit the Sun but do not qualify as full-fledged planets.');
INSERT INTO public.planet_types VALUES (5, 'Exoplanet', 'Planets that orbit stars outside our solar system.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Main sequence star', true, false, 0, 5, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red dwarf star', true, false, 4.24, 5, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'Binary star system', false, false, 8.6, 0, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Binary star system', true, false, 4.37, 6, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Red supergiant star', true, false, 640, 9, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Main sequence star', true, false, 25, 0, 2);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: galaxy_types unique_galaxy_types; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT unique_galaxy_types UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: planet_types unique_planet_types; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT unique_planet_types UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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

