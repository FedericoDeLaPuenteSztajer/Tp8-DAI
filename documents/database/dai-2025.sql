--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2026-06-22 10:43:58

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4787 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16403)
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(75) NOT NULL,
    full_name character varying(75) NOT NULL,
    latitude double precision,
    longitude double precision,
    display_order integer
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16402)
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.provinces_id_seq OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;


--
-- TOC entry 4634 (class 2604 OID 16406)
-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);


--
-- TOC entry 4781 (class 0 OID 16403)
-- Dependencies: 216
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provinces VALUES (1, 'Chaco', 'Provincia de Chaco', -24.89508628845215, -59.93218994140625, 100);
INSERT INTO public.provinces VALUES (2, 'Córdova', 'Provincia de Córdova', -24.89508628845215, -59.93218994140625, 50);
INSERT INTO public.provinces VALUES (3, 'Chile', 'País de Chile', -24.89508628845215, -59.93218994140625, 25);
INSERT INTO public.provinces VALUES (4, 'Lima', 'Provincia de Lima', -24.89508628845215, -59.93218994140625, 12);
INSERT INTO public.provinces VALUES (5, 'Rosario', 'Provincia de Rosario', -24.89508628845215, -59.93218994140625, 6);


--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinces_id_seq', 5, true);


--
-- TOC entry 4636 (class 2606 OID 16408)
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


-- Completed on 2026-06-22 10:43:58

--
-- PostgreSQL database dump complete
--

