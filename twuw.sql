--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-09-23 09:57:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 191 (class 1259 OID 16465)
-- Name: City; Type: TABLE; Schema: public; Owner: smk_rpl
--

CREATE TABLE "City" (
    "City_ID" integer NOT NULL,
    "City_Name" text NOT NULL,
    "Is_valid" text NOT NULL
);


ALTER TABLE "City" OWNER TO smk_rpl;

--
-- TOC entry 185 (class 1259 OID 16395)
-- Name: Customer; Type: TABLE; Schema: public; Owner: smk_rpl
--

CREATE TABLE "Customer" (
    "ID_Customer" integer NOT NULL,
    "Nama_Customer" text NOT NULL,
    "No_identitas" text NOT NULL,
    "Alamat Customer" text NOT NULL,
    "Email Customer" text NOT NULL,
    "No_telefon" text NOT NULL
);


ALTER TABLE "Customer" OWNER TO smk_rpl;

--
-- TOC entry 189 (class 1259 OID 16456)
-- Name: Master_Schedule; Type: TABLE; Schema: public; Owner: smk_rpl
--

CREATE TABLE "Master_Schedule" (
    "Schedule_ID" integer,
    "Route_ID" integer,
    "City_ID" integer
);


ALTER TABLE "Master_Schedule" OWNER TO smk_rpl;

--
-- TOC entry 188 (class 1259 OID 16449)
-- Name: Master_Schedule_detail ; Type: TABLE; Schema: public; Owner: smk_rpl
--

CREATE TABLE "Master_Schedule_detail " (
    "Master_Schedule_detail_ID" integer NOT NULL,
    eta text NOT NULL,
    etd text NOT NULL,
    "Schedule_ID" integer NOT NULL,
    "Rails_ID" integer NOT NULL
);


ALTER TABLE "Master_Schedule_detail " OWNER TO smk_rpl;

--
-- TOC entry 192 (class 1259 OID 16471)
-- Name: Rails; Type: TABLE; Schema: public; Owner: smk_rpl
--

CREATE TABLE "Rails" (
    "Rails_ID" integer NOT NULL,
    "Rails_Name" text NOT NULL,
    "Capacity" text NOT NULL
);


ALTER TABLE "Rails" OWNER TO smk_rpl;

--
-- TOC entry 190 (class 1259 OID 16459)
-- Name: Route; Type: TABLE; Schema: public; Owner: smk_rpl
--

CREATE TABLE "Route" (
    "Route_ID" integer NOT NULL,
    "Route_Name" text NOT NULL,
    "is_Valid" text NOT NULL
);


ALTER TABLE "Route" OWNER TO smk_rpl;

--
-- TOC entry 187 (class 1259 OID 16446)
-- Name: Ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Ticket" (
    "ID Customer" integer NOT NULL
);


ALTER TABLE "Ticket" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16400)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "User" (
    "ID_User" integer NOT NULL,
    "Password" text NOT NULL,
    "ID_Customer" integer NOT NULL
);


ALTER TABLE "User" OWNER TO postgres;

--
-- TOC entry 2160 (class 0 OID 16465)
-- Dependencies: 191
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: smk_rpl
--

COPY "City" ("City_ID", "City_Name", "Is_valid") FROM stdin;
\.


--
-- TOC entry 2154 (class 0 OID 16395)
-- Dependencies: 185
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: smk_rpl
--

COPY "Customer" ("ID_Customer", "Nama_Customer", "No_identitas", "Alamat Customer", "Email Customer", "No_telefon") FROM stdin;
\.


--
-- TOC entry 2158 (class 0 OID 16456)
-- Dependencies: 189
-- Data for Name: Master_Schedule; Type: TABLE DATA; Schema: public; Owner: smk_rpl
--

COPY "Master_Schedule" ("Schedule_ID", "Route_ID", "City_ID") FROM stdin;
\.


--
-- TOC entry 2157 (class 0 OID 16449)
-- Dependencies: 188
-- Data for Name: Master_Schedule_detail ; Type: TABLE DATA; Schema: public; Owner: smk_rpl
--

COPY "Master_Schedule_detail " ("Master_Schedule_detail_ID", eta, etd, "Schedule_ID", "Rails_ID") FROM stdin;
\.


--
-- TOC entry 2161 (class 0 OID 16471)
-- Dependencies: 192
-- Data for Name: Rails; Type: TABLE DATA; Schema: public; Owner: smk_rpl
--

COPY "Rails" ("Rails_ID", "Rails_Name", "Capacity") FROM stdin;
\.


--
-- TOC entry 2159 (class 0 OID 16459)
-- Dependencies: 190
-- Data for Name: Route; Type: TABLE DATA; Schema: public; Owner: smk_rpl
--

COPY "Route" ("Route_ID", "Route_Name", "is_Valid") FROM stdin;
\.


--
-- TOC entry 2156 (class 0 OID 16446)
-- Dependencies: 187
-- Data for Name: Ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ticket" ("ID Customer") FROM stdin;
\.


--
-- TOC entry 2155 (class 0 OID 16400)
-- Dependencies: 186
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "User" ("ID_User", "Password", "ID_Customer") FROM stdin;
\.


--
-- TOC entry 2034 (class 2606 OID 16399)
-- Name: Customer Customer_pkey; Type: CONSTRAINT; Schema: public; Owner: smk_rpl
--

ALTER TABLE ONLY "Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("ID_Customer");


--
-- TOC entry 2036 (class 2606 OID 16407)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("ID_User");


-- Completed on 2017-09-23 09:57:18

--
-- PostgreSQL database dump complete
--

