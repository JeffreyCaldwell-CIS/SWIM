--
-- PostgreSQL database dump
--

\restrict 87kmKI8roV9hfSzwgcFMVjMTQB2UoYKUrRpNYRb6NEkS8QKhc6vgfbTRi7HR5GW

-- Dumped from database version 18.1 (Postgres.app)
-- Dumped by pg_dump version 18.1 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: audit_logs; Type: TABLE; Schema: public; Owner: programmingtruckdriver
--

CREATE TABLE public.audit_logs (
    logs character varying(100) NOT NULL
);


ALTER TABLE public.audit_logs OWNER TO programmingtruckdriver;

--
-- Name: crac; Type: TABLE; Schema: public; Owner: programmingtruckdriver
--

CREATE TABLE public.crac (
    crac_id integer NOT NULL,
    zone character varying(25),
    server_id integer
);


ALTER TABLE public.crac OWNER TO programmingtruckdriver;

--
-- Name: crac_crac_id_seq; Type: SEQUENCE; Schema: public; Owner: programmingtruckdriver
--

CREATE SEQUENCE public.crac_crac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.crac_crac_id_seq OWNER TO programmingtruckdriver;

--
-- Name: crac_crac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: programmingtruckdriver
--

ALTER SEQUENCE public.crac_crac_id_seq OWNED BY public.crac.crac_id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: programmingtruckdriver
--

CREATE TABLE public.events (
    trigger character varying(100),
    observation character varying(100),
    sys_state character varying(10),
    response character varying(100),
    outcome character varying(100)
);


ALTER TABLE public.events OWNER TO programmingtruckdriver;

--
-- Name: rack; Type: TABLE; Schema: public; Owner: programmingtruckdriver
--

CREATE TABLE public.rack (
    rack_id integer NOT NULL,
    zone numeric
);


ALTER TABLE public.rack OWNER TO programmingtruckdriver;

--
-- Name: rack_rack_id_seq; Type: SEQUENCE; Schema: public; Owner: programmingtruckdriver
--

CREATE SEQUENCE public.rack_rack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rack_rack_id_seq OWNER TO programmingtruckdriver;

--
-- Name: rack_rack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: programmingtruckdriver
--

ALTER SEQUENCE public.rack_rack_id_seq OWNED BY public.rack.rack_id;


--
-- Name: sensor; Type: TABLE; Schema: public; Owner: programmingtruckdriver
--

CREATE TABLE public.sensor (
    sensor_id bigint NOT NULL,
    temp_hist character varying(100) NOT NULL
);


ALTER TABLE public.sensor OWNER TO programmingtruckdriver;

--
-- Name: sensor_sensor_id_seq; Type: SEQUENCE; Schema: public; Owner: programmingtruckdriver
--

CREATE SEQUENCE public.sensor_sensor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sensor_sensor_id_seq OWNER TO programmingtruckdriver;

--
-- Name: sensor_sensor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: programmingtruckdriver
--

ALTER SEQUENCE public.sensor_sensor_id_seq OWNED BY public.sensor.sensor_id;


--
-- Name: server; Type: TABLE; Schema: public; Owner: programmingtruckdriver
--

CREATE TABLE public.server (
    server_id bigint NOT NULL,
    rack character(25),
    "position" character(25)
);


ALTER TABLE public.server OWNER TO programmingtruckdriver;

--
-- Name: server_server_id_seq; Type: SEQUENCE; Schema: public; Owner: programmingtruckdriver
--

CREATE SEQUENCE public.server_server_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.server_server_id_seq OWNER TO programmingtruckdriver;

--
-- Name: server_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: programmingtruckdriver
--

ALTER SEQUENCE public.server_server_id_seq OWNED BY public.server.server_id;


--
-- Name: crac crac_id; Type: DEFAULT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.crac ALTER COLUMN crac_id SET DEFAULT nextval('public.crac_crac_id_seq'::regclass);


--
-- Name: rack rack_id; Type: DEFAULT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.rack ALTER COLUMN rack_id SET DEFAULT nextval('public.rack_rack_id_seq'::regclass);


--
-- Name: sensor sensor_id; Type: DEFAULT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.sensor ALTER COLUMN sensor_id SET DEFAULT nextval('public.sensor_sensor_id_seq'::regclass);


--
-- Name: server server_id; Type: DEFAULT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.server ALTER COLUMN server_id SET DEFAULT nextval('public.server_server_id_seq'::regclass);


--
-- Name: crac crac_pkey; Type: CONSTRAINT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.crac
    ADD CONSTRAINT crac_pkey PRIMARY KEY (crac_id);


--
-- Name: rack rack_pkey; Type: CONSTRAINT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.rack
    ADD CONSTRAINT rack_pkey PRIMARY KEY (rack_id);


--
-- Name: sensor sensor_pkey; Type: CONSTRAINT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.sensor
    ADD CONSTRAINT sensor_pkey PRIMARY KEY (sensor_id);


--
-- Name: server server_pkey; Type: CONSTRAINT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.server
    ADD CONSTRAINT server_pkey PRIMARY KEY (server_id);


--
-- Name: crac fk_servers; Type: FK CONSTRAINT; Schema: public; Owner: programmingtruckdriver
--

ALTER TABLE ONLY public.crac
    ADD CONSTRAINT fk_servers FOREIGN KEY (server_id) REFERENCES public.server(server_id);


--
-- PostgreSQL database dump complete
--

\unrestrict 87kmKI8roV9hfSzwgcFMVjMTQB2UoYKUrRpNYRb6NEkS8QKhc6vgfbTRi7HR5GW

