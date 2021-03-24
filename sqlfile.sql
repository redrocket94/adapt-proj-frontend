--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 13.2

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
-- Name: game_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_images (
    game_id integer NOT NULL,
    image character varying(255)
);


ALTER TABLE public.game_images OWNER TO postgres;

--
-- Name: game_reward_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_reward_images (
    game_reward_id integer NOT NULL,
    image character varying(255)
);


ALTER TABLE public.game_reward_images OWNER TO postgres;

--
-- Name: game_rewards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_rewards (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text,
    available_prices integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.game_rewards OWNER TO postgres;

--
-- Name: game_rewards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_rewards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_rewards_id_seq OWNER TO postgres;

--
-- Name: game_rewards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_rewards_id_seq OWNED BY public.game_rewards.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text,
    daily_prices integer DEFAULT 0 NOT NULL,
    winning_chance integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: games_rewards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_rewards (
    game_id integer NOT NULL,
    game_reward_id integer NOT NULL
);


ALTER TABLE public.games_rewards OWNER TO postgres;

--
-- Name: played_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.played_games (
    has_won boolean NOT NULL,
    player_id integer NOT NULL,
    game_id integer NOT NULL,
    game_reward_id integer NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.played_games OWNER TO postgres;

--
-- Name: game_rewards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_rewards ALTER COLUMN id SET DEFAULT nextval('public.game_rewards_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Data for Name: game_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game_images (game_id, image) FROM stdin;
1	https://cataas.com/cat
1	https://cataas.com/cat
2	https://cataas.com/cat
2	https://cataas.com/cat
3	https://cataas.com/cat
3	https://cataas.com/cat
4	https://cataas.com/cat
4	https://cataas.com/cat
\.


--
-- Data for Name: game_reward_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game_reward_images (game_reward_id, image) FROM stdin;
1	https://cataas.com/cat
1	https://cataas.com/cat
2	https://cataas.com/cat
3	https://cataas.com/cat
\.


--
-- Data for Name: game_rewards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game_rewards (id, title, body, available_prices) FROM stdin;
1	prices title	price body text	120
2	prices title	price body text	89
3	prices title	price body text	40
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, title, body, daily_prices, winning_chance) FROM stdin;
1	8ball	body thingyfdjvcd	100	5
2	8ball	body thingyfdjvcd	100	5
3	8ball	body thingyfdjvcd	100	5
4	nfjdnf	body thingyfdjvcd	100	5
\.


--
-- Data for Name: games_rewards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_rewards (game_id, game_reward_id) FROM stdin;
3	2
1	1
1	2
1	3
2	3
2	2
2	1
\.


--
-- Data for Name: played_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.played_games (has_won, player_id, game_id, game_reward_id, created) FROM stdin;
t	23284323	1	1	2021-02-26 12:32:09.983161
f	23284323	1	2	2021-02-26 12:32:15.127669
t	23284323	1	2	2021-02-26 12:32:17.489225
t	23284323	1	2	2021-02-26 12:32:52.535416
f	23284323	1	3	2021-02-26 12:32:53.837001
t	23284323	1	2	2021-02-26 12:32:55.960352
t	23284323	1	2	2021-02-26 12:32:57.396185
t	23284323	1	1	2021-02-26 12:32:58.514949
f	23284323	1	3	2021-02-26 12:33:00.557303
t	23284323	1	3	2021-02-26 12:33:02.165924
f	23284323	1	2	2021-03-02 11:04:31.985641
f	23284323	1	1	2021-03-02 11:04:34.182381
t	23284323	1	1	2021-03-02 11:13:26.389017
f	23284323	1	1	2021-03-05 10:43:45.124447
t	23284323	1	1	2021-03-10 14:52:55.163874
f	23284323	1	3	2021-03-10 14:52:57.490026
f	666	1	2	2021-03-10 14:53:16.110857
t	666	1	1	2021-03-10 14:53:20.033179
t	666	1	1	2021-03-10 14:54:15.025698
f	666	1	2	2021-03-10 14:56:16.727625
t	666	1	1	2021-03-10 14:56:24.356065
t	666	1	1	2021-03-10 14:57:24.072536
t	666	1	1	2021-03-10 14:57:24.980296
t	666	1	1	2021-03-10 14:57:25.184058
t	666	1	2	2021-03-10 15:08:05.699486
t	666	1	2	2021-03-10 15:13:27.378886
t	666	1	3	2021-03-24 08:19:55.397356
t	666	1	1	2021-03-24 08:20:17.555918
t	666	1	2	2021-03-24 08:27:40.407695
t	666	1	2	2021-03-24 08:28:45.763467
t	23284323	1	2	2021-03-24 08:32:18.916294
f	666	1	2	2021-03-24 08:32:45.586792
f	666	1	1	2021-03-24 08:35:34.631802
f	666	1	1	2021-03-24 08:35:55.385745
t	666	1	3	2021-03-24 08:36:25.637665
t	666	1	1	2021-03-24 10:42:21.722753
f	666	1	3	2021-03-24 10:44:03.029022
t	666	1	3	2021-03-24 10:47:19.425633
f	666	1	3	2021-03-24 10:47:48.204181
t	666	1	2	2021-03-24 11:35:02.07144
f	23284323	1	2	2021-03-24 11:41:05.711613
f	666	1	1	2021-03-24 12:03:26.434726
t	666	1	2	2021-03-24 12:08:11.982998
f	666	1	3	2021-03-24 12:10:16.092939
t	666	1	3	2021-03-24 12:10:54.482952
t	666	1	3	2021-03-24 12:11:02.987848
t	666	1	3	2021-03-24 12:11:12.589157
f	666	1	2	2021-03-24 12:14:02.727686
f	666	1	1	2021-03-24 12:16:40.085699
t	666	1	3	2021-03-24 12:16:40.116381
f	666	1	2	2021-03-24 12:17:58.526874
f	666	1	2	2021-03-24 12:17:58.555439
\.


--
-- Name: game_rewards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_rewards_id_seq', 3, true);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 4, true);


--
-- Name: game_rewards game_rewards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_rewards
    ADD CONSTRAINT game_rewards_pkey PRIMARY KEY (id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: game_images game_images_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_images
    ADD CONSTRAINT game_images_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(id);


--
-- Name: game_reward_images game_reward_images_game_reward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_reward_images
    ADD CONSTRAINT game_reward_images_game_reward_id_fkey FOREIGN KEY (game_reward_id) REFERENCES public.game_rewards(id);


--
-- Name: games_rewards games_rewards_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_rewards
    ADD CONSTRAINT games_rewards_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(id);


--
-- Name: games_rewards games_rewards_game_reward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_rewards
    ADD CONSTRAINT games_rewards_game_reward_id_fkey FOREIGN KEY (game_reward_id) REFERENCES public.game_rewards(id);


--
-- Name: played_games played_games_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.played_games
    ADD CONSTRAINT played_games_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(id);


--
-- Name: played_games played_games_game_reward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.played_games
    ADD CONSTRAINT played_games_game_reward_id_fkey FOREIGN KEY (game_reward_id) REFERENCES public.game_rewards(id);


--
-- PostgreSQL database dump complete
--

