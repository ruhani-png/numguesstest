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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3, 1);
INSERT INTO public.games VALUES (2, 3, 3);
INSERT INTO public.games VALUES (3, 4, 344);
INSERT INTO public.games VALUES (4, 4, 952);
INSERT INTO public.games VALUES (5, 5, 215);
INSERT INTO public.games VALUES (6, 5, 186);
INSERT INTO public.games VALUES (7, 4, 458);
INSERT INTO public.games VALUES (8, 4, 621);
INSERT INTO public.games VALUES (9, 4, 840);
INSERT INTO public.games VALUES (10, 6, 858);
INSERT INTO public.games VALUES (11, 6, 229);
INSERT INTO public.games VALUES (12, 7, 476);
INSERT INTO public.games VALUES (13, 7, 340);
INSERT INTO public.games VALUES (14, 6, 43);
INSERT INTO public.games VALUES (15, 6, 530);
INSERT INTO public.games VALUES (16, 6, 364);
INSERT INTO public.games VALUES (17, 8, 78);
INSERT INTO public.games VALUES (18, 8, 301);
INSERT INTO public.games VALUES (19, 9, 917);
INSERT INTO public.games VALUES (20, 9, 713);
INSERT INTO public.games VALUES (21, 8, 612);
INSERT INTO public.games VALUES (22, 8, 117);
INSERT INTO public.games VALUES (23, 8, 161);
INSERT INTO public.games VALUES (24, 10, 918);
INSERT INTO public.games VALUES (25, 10, 801);
INSERT INTO public.games VALUES (26, 11, 231);
INSERT INTO public.games VALUES (27, 11, 351);
INSERT INTO public.games VALUES (28, 10, 150);
INSERT INTO public.games VALUES (29, 10, 988);
INSERT INTO public.games VALUES (30, 10, 602);
INSERT INTO public.games VALUES (31, 12, 989);
INSERT INTO public.games VALUES (32, 12, 356);
INSERT INTO public.games VALUES (33, 13, 654);
INSERT INTO public.games VALUES (34, 13, 480);
INSERT INTO public.games VALUES (35, 12, 347);
INSERT INTO public.games VALUES (36, 12, 800);
INSERT INTO public.games VALUES (37, 12, 167);
INSERT INTO public.games VALUES (38, 14, 841);
INSERT INTO public.games VALUES (39, 14, 504);
INSERT INTO public.games VALUES (40, 15, 915);
INSERT INTO public.games VALUES (41, 15, 129);
INSERT INTO public.games VALUES (42, 14, 586);
INSERT INTO public.games VALUES (43, 14, 807);
INSERT INTO public.games VALUES (44, 14, 49);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1721478680574');
INSERT INTO public.users VALUES (2, 'user_1721478680573');
INSERT INTO public.users VALUES (3, 'ruhani');
INSERT INTO public.users VALUES (4, 'user_1721479914004');
INSERT INTO public.users VALUES (5, 'user_1721479914003');
INSERT INTO public.users VALUES (6, 'user_1721480104246');
INSERT INTO public.users VALUES (7, 'user_1721480104245');
INSERT INTO public.users VALUES (8, 'user_1721480729859');
INSERT INTO public.users VALUES (9, 'user_1721480729858');
INSERT INTO public.users VALUES (10, 'user_1721480755490');
INSERT INTO public.users VALUES (11, 'user_1721480755489');
INSERT INTO public.users VALUES (12, 'user_1721480882496');
INSERT INTO public.users VALUES (13, 'user_1721480882495');
INSERT INTO public.users VALUES (14, 'user_1721480923642');
INSERT INTO public.users VALUES (15, 'user_1721480923641');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

