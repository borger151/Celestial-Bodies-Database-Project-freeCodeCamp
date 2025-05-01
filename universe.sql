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
    name character varying(30),
    number_of_planets integer,
    number_of_stars integer,
    age numeric NOT NULL,
    discoverer text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    danger_earth boolean,
    danger_moon boolean,
    moon_id integer,
    discoverer text NOT NULL,
    age numeric NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    discoverer text NOT NULL,
    age numeric NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age numeric NOT NULL,
    discoverer text NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    discoverer text NOT NULL,
    age numeric NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Utopia', 21, 1132, 400000, 'Beaugarde');
INSERT INTO public.galaxy VALUES (2, 'Twotopia', 11, 11632, 404000, 'Janssen');
INSERT INTO public.galaxy VALUES (3, 'Zerosky', 61, 8732, 900000, 'Scully');
INSERT INTO public.galaxy VALUES (4, 'Yoki', 81, 11092, 6600000, 'Pantelic');
INSERT INTO public.galaxy VALUES (5, 'Freeza', 761, 89032, 9800000, 'Sergey');
INSERT INTO public.galaxy VALUES (6, 'Quanter', 121, 1335432, 12200000, 'Ngannou');


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, true, true, 1, 'Philips', 4000, 'Olive');
INSERT INTO public.meteor VALUES (2, false, false, 2, 'Morris', 10000, 'Yu');
INSERT INTO public.meteor VALUES (3, false, false, 3, 'Shenyen', 12000, 'Xuean');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Pennington', 'Raquel', 987000, 1);
INSERT INTO public.moon VALUES (2, 'Pena', 'Rowsey', 971000, 2);
INSERT INTO public.moon VALUES (3, 'Colby', 'Lawler', 45984000, 3);
INSERT INTO public.moon VALUES (4, 'Paddy', 'Pimblett', 8532388, 4);
INSERT INTO public.moon VALUES (5, 'Dvalishvili', 'Yan', 6640999, 5);
INSERT INTO public.moon VALUES (6, 'Dricus', 'Du Plessis', 7574888, 6);
INSERT INTO public.moon VALUES (7, 'Pereira', 'Chama', 8663999, 7);
INSERT INTO public.moon VALUES (8, 'Erceg', 'Stevenson', 8399900, 8);
INSERT INTO public.moon VALUES (9, 'Yadong', 'Song', 87474000, 9);
INSERT INTO public.moon VALUES (10, 'Kape', 'Manel', 8338800, 10);
INSERT INTO public.moon VALUES (11, 'Holloway', 'Max', 8445000, 11);
INSERT INTO public.moon VALUES (12, 'Lopes', 'Diego', 85774000, 12);
INSERT INTO public.moon VALUES (13, 'Sandhagen', 'Cory', 33113300, 1);
INSERT INTO public.moon VALUES (14, 'Dillashaw', 'Kara-France', 845333950, 2);
INSERT INTO public.moon VALUES (15, 'Brady', 'Thompson', 475600, 3);
INSERT INTO public.moon VALUES (16, 'Sean', 'Grant', 6595500, 4);
INSERT INTO public.moon VALUES (17, 'Dawson', 'Whittaker', 8313333930, 5);
INSERT INTO public.moon VALUES (18, 'De Ridder', 'Luque', 983377300, 6);
INSERT INTO public.moon VALUES (19, 'Reinier', 'Vincente', 8548800, 7);
INSERT INTO public.moon VALUES (20, 'Borralho', 'Hernandez', 75335610, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Quinton', 880000, 'Rashad', 1);
INSERT INTO public.planet VALUES (2, 'Jackson', 770000, 'Jason', 2);
INSERT INTO public.planet VALUES (3, 'Miller', 550000, 'May', 3);
INSERT INTO public.planet VALUES (4, 'Dana', 330000, 'Black', 4);
INSERT INTO public.planet VALUES (5, 'Brown', 434000, 'Joe', 5);
INSERT INTO public.planet VALUES (6, 'Taratino', 655000, 'Juliana', 6);
INSERT INTO public.planet VALUES (7, 'Marciano', 7704000, 'Marcus', 1);
INSERT INTO public.planet VALUES (8, 'Pacquiao', 644000, 'Manny', 2);
INSERT INTO public.planet VALUES (9, 'Topuria', 4365000, 'Ilia', 2);
INSERT INTO public.planet VALUES (10, 'Machachev', 576000, 'Nurmagomedov', 1);
INSERT INTO public.planet VALUES (11, 'Numidia', 663000, 'Rutte', 6);
INSERT INTO public.planet VALUES (12, 'Eisenhower', 6789000, 'Evans', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yulia', 'Covington', 345000, 1);
INSERT INTO public.star VALUES (2, 'Mitchell', 'Usman', 321000, 2);
INSERT INTO public.star VALUES (3, 'Bryce', 'Adesanya', 550000, 3);
INSERT INTO public.star VALUES (4, 'Alexander', 'Volkanovski', 660000, 4);
INSERT INTO public.star VALUES (5, 'Jon', 'Jones', 770000, 5);
INSERT INTO public.star VALUES (6, 'Conor', 'Pantoja', 880000, 6);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_discoverer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_discoverer_key UNIQUE (discoverer);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_age_key UNIQUE (age);


--
-- Name: meteor meteor_discoverer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_discoverer_key UNIQUE (discoverer);


--
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_discoverer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_discoverer_key UNIQUE (discoverer);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_discoverer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_discoverer_key UNIQUE (discoverer);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_discoverer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_discoverer_key UNIQUE (discoverer);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: meteor meteor_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

