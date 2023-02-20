--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)

-- Started on 2023-02-19 22:49:48 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 16454)
-- Name: datos; Type: TABLE; Schema: public; Owner: apidesarrollo
--

CREATE TABLE public.datos (
    iddata integer NOT NULL,
    iduser integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone integer NOT NULL
);


ALTER TABLE public.datos OWNER TO apidesarrollo;

--
-- TOC entry 211 (class 1259 OID 16453)
-- Name: datos_iddata_seq; Type: SEQUENCE; Schema: public; Owner: apidesarrollo
--

CREATE SEQUENCE public.datos_iddata_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_iddata_seq OWNER TO apidesarrollo;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 211
-- Name: datos_iddata_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apidesarrollo
--

ALTER SEQUENCE public.datos_iddata_seq OWNED BY public.datos.iddata;


--
-- TOC entry 210 (class 1259 OID 16438)
-- Name: usuario; Type: TABLE; Schema: public; Owner: apidesarrollo
--

CREATE TABLE public.usuario (
    iduser integer NOT NULL,
    username character varying(20) NOT NULL,
    passwords character varying(30) NOT NULL
);


ALTER TABLE public.usuario OWNER TO apidesarrollo;

--
-- TOC entry 209 (class 1259 OID 16437)
-- Name: usuario_iduser_seq; Type: SEQUENCE; Schema: public; Owner: apidesarrollo
--

CREATE SEQUENCE public.usuario_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_iduser_seq OWNER TO apidesarrollo;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuario_iduser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apidesarrollo
--

ALTER SEQUENCE public.usuario_iduser_seq OWNED BY public.usuario.iduser;


--
-- TOC entry 3215 (class 2604 OID 16457)
-- Name: datos iddata; Type: DEFAULT; Schema: public; Owner: apidesarrollo
--

ALTER TABLE ONLY public.datos ALTER COLUMN iddata SET DEFAULT nextval('public.datos_iddata_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 16441)
-- Name: usuario iduser; Type: DEFAULT; Schema: public; Owner: apidesarrollo
--

ALTER TABLE ONLY public.usuario ALTER COLUMN iduser SET DEFAULT nextval('public.usuario_iduser_seq'::regclass);


--
-- TOC entry 3365 (class 0 OID 16454)
-- Dependencies: 212
-- Data for Name: datos; Type: TABLE DATA; Schema: public; Owner: apidesarrollo
--

COPY public.datos (iddata, iduser, name, email, phone) FROM stdin;
1	1	Andrey	correo@dominio.com	88888888
2	2	Jean Carlo	correo@dominio.com	88888888
3	3	Jimena	correo@dominio.com	88888888
4	4	Carlos	correo@dominio.com	88888888
5	5	Rachel	correo@dominio.com	88888888
6	6	Victor	correo@dominio.com	88888888
7	7	Mariana	correo@dominio.com	88888888
8	8	Ivan	correo@dominio.com	88888888
9	9	Carla	correo@dominio.com	88888888
10	10	Joseph	correo@dominio.com	88888888
\.


--
-- TOC entry 3363 (class 0 OID 16438)
-- Dependencies: 210
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: apidesarrollo
--

COPY public.usuario (iduser, username, passwords) FROM stdin;
1	Andrey	1234
2	Jean Carlo	1234
3	Jimena	1234
4	Carlos	1234
5	Rachel	1234
6	Victor	1234
7	Mariana	1234
8	Ivan	1234
9	Carla	1234
10	Joseph	1234
\.


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 211
-- Name: datos_iddata_seq; Type: SEQUENCE SET; Schema: public; Owner: apidesarrollo
--

SELECT pg_catalog.setval('public.datos_iddata_seq', 10, true);


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuario_iduser_seq; Type: SEQUENCE SET; Schema: public; Owner: apidesarrollo
--

SELECT pg_catalog.setval('public.usuario_iduser_seq', 12, true);


--
-- TOC entry 3221 (class 2606 OID 16459)
-- Name: datos datos_pkey; Type: CONSTRAINT; Schema: public; Owner: apidesarrollo
--

ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_pkey PRIMARY KEY (iddata);


--
-- TOC entry 3217 (class 2606 OID 16443)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: apidesarrollo
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (iduser);


--
-- TOC entry 3219 (class 2606 OID 16445)
-- Name: usuario usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: apidesarrollo
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- TOC entry 3222 (class 2606 OID 16460)
-- Name: datos datos_iduser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: apidesarrollo
--

ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.usuario(iduser);


-- Completed on 2023-02-19 22:49:48 CST

--
-- PostgreSQL database dump complete
--

