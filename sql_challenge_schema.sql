--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-02-15 23:40:09

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
-- TOC entry 202 (class 1259 OID 16457)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16463)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no character varying NOT NULL,
    dept_no character varying NOT NULL,
    emp_start_date date NOT NULL,
    emp_end_date date NOT NULL
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16487)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dep_no character varying NOT NULL,
    emp_no character varying NOT NULL,
    mgr_from_date date NOT NULL,
    mgr_to_date date NOT NULL,
    manager_id integer NOT NULL
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16783)
-- Name: dept_manager_manager_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dept_manager_manager_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dept_manager_manager_id_seq OWNER TO postgres;

--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 210
-- Name: dept_manager_manager_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dept_manager_manager_id_seq OWNED BY public.dept_manager.manager_id;


--
-- TOC entry 206 (class 1259 OID 16481)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no character varying NOT NULL,
    birthdate date NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    gender character varying NOT NULL,
    hire_date date NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16475)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no character varying NOT NULL,
    salary integer NOT NULL,
    salary_start_date date NOT NULL,
    salary_end_date date NOT NULL,
    salary_id integer NOT NULL
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16747)
-- Name: salaries_salary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salaries_salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salaries_salary_id_seq OWNER TO postgres;

--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 209
-- Name: salaries_salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salaries_salary_id_seq OWNED BY public.salaries.salary_id;


--
-- TOC entry 204 (class 1259 OID 16469)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    emp_no character varying NOT NULL,
    title character varying NOT NULL,
    title_start_date date NOT NULL,
    title_end_date date NOT NULL,
    title_id integer NOT NULL
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16735)
-- Name: titles_title_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.titles_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titles_title_id_seq OWNER TO postgres;

--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 208
-- Name: titles_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.titles_title_id_seq OWNED BY public.titles.title_id;


--
-- TOC entry 2719 (class 2604 OID 16785)
-- Name: dept_manager manager_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager ALTER COLUMN manager_id SET DEFAULT nextval('public.dept_manager_manager_id_seq'::regclass);


--
-- TOC entry 2718 (class 2604 OID 16749)
-- Name: salaries salary_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries ALTER COLUMN salary_id SET DEFAULT nextval('public.salaries_salary_id_seq'::regclass);


--
-- TOC entry 2717 (class 2604 OID 16737)
-- Name: titles title_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles ALTER COLUMN title_id SET DEFAULT nextval('public.titles_title_id_seq'::regclass);


--
-- TOC entry 2858 (class 0 OID 16457)
-- Dependencies: 202
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (dept_no, dept_name) FROM stdin;
d001	Marketing
d002	Finance
d003	Human Resources
d004	Production
d005	Development
d006	Quality Management
d007	Sales
d008	Research
d009	Customer Service
\.


--
-- TOC entry 2859 (class 0 OID 16463)
-- Dependencies: 203
-- Data for Name: dept_emp; Type: TABLE DATA; Schema: public; Owner: postgres
--

--COPY public.dept_emp (emp_no, dept_no, emp_start_date, emp_end_date) FROM stdin;
--**Removed imported data due to large file size**



--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 210
-- Name: dept_manager_manager_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dept_manager_manager_id_seq', 24, true);


--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 209
-- Name: salaries_salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salaries_salary_id_seq', 300024, true);


--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 208
-- Name: titles_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.titles_title_id_seq', 443308, true);


--
-- TOC entry 2721 (class 2606 OID 16762)
-- Name: departments departments_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pk PRIMARY KEY (dept_no);


--
-- TOC entry 2723 (class 2606 OID 16782)
-- Name: dept_emp dept_emp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_pk PRIMARY KEY (dept_no, emp_no);


--
-- TOC entry 2731 (class 2606 OID 16787)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (manager_id);


--
-- TOC entry 2729 (class 2606 OID 16760)
-- Name: employees employees_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pk PRIMARY KEY (emp_no);


--
-- TOC entry 2727 (class 2606 OID 16751)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (salary_id);


--
-- TOC entry 2725 (class 2606 OID 16739)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


-- Completed on 2020-02-15 23:40:12

--
-- PostgreSQL database dump complete
--

