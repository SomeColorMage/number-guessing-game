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

DROP DATABASE guessing_game;
--
-- Name: guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guessing_game OWNER TO freecodecamp;

\connect guessing_game

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    play_count integer DEFAULT 0 NOT NULL,
    best_score integer DEFAULT 0
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (35, 'user_1730937034154', 0, 0);
INSERT INTO public.users VALUES (36, 'user_1730937034153', 0, 0);
INSERT INTO public.users VALUES (38, 'user_1730937631365', 0, 0);
INSERT INTO public.users VALUES (39, 'user_1730937631364', 0, 0);
INSERT INTO public.users VALUES (40, 'user_1730937671892', 0, 0);
INSERT INTO public.users VALUES (41, 'user_1730937671891', 0, 0);
INSERT INTO public.users VALUES (42, 'user_1730938105756', 0, 0);
INSERT INTO public.users VALUES (43, 'user_1730938105755', 0, 0);
INSERT INTO public.users VALUES (44, 'user_1730938136369', 0, 0);
INSERT INTO public.users VALUES (45, 'user_1730938136368', 0, 0);
INSERT INTO public.users VALUES (46, 'user_1730938304572', 0, 0);
INSERT INTO public.users VALUES (47, 'user_1730938304571', 0, 0);
INSERT INTO public.users VALUES (49, 'user_1730938798340', 2, 227);
INSERT INTO public.users VALUES (48, 'user_1730938798341', 5, 28);
INSERT INTO public.users VALUES (37, 'Test', 1, 10);
INSERT INTO public.users VALUES (51, 'user_1730938882961', 2, 106);
INSERT INTO public.users VALUES (50, 'user_1730938882962', 5, 145);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 51, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

