--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

-- Started on 2023-11-14 15:18:22 CET

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
-- TOC entry 6 (class 2615 OID 16385)
-- Name: padelplanet; Type: SCHEMA; Schema: -; Owner: administrador
--

CREATE SCHEMA padelplanet;


ALTER SCHEMA padelplanet OWNER TO administrador;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16386)
-- Name: tbClubs; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbClubs" (
    "idClub" integer NOT NULL,
    "clubName" character varying(100) NOT NULL,
    address character varying(200) NOT NULL,
    comments character varying(200)
);


ALTER TABLE padelplanet."tbClubs" OWNER TO administrador;

--
-- TOC entry 217 (class 1259 OID 16391)
-- Name: tbClubs_idClub_seq; Type: SEQUENCE; Schema: padelplanet; Owner: administrador
--

ALTER TABLE padelplanet."tbClubs" ALTER COLUMN "idClub" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME padelplanet."tbClubs_idClub_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16392)
-- Name: tbCourts; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbCourts" (
    "idCourt" integer NOT NULL,
    "idClub" integer NOT NULL,
    "courtName" character varying(100) NOT NULL,
    "courtType" character varying(25) NOT NULL,
    "wallType" character varying(25) NOT NULL,
    "widthType" character varying(25) NOT NULL
);


ALTER TABLE padelplanet."tbCourts" OWNER TO administrador;

--
-- TOC entry 219 (class 1259 OID 16395)
-- Name: tbCourts_idCourt_seq; Type: SEQUENCE; Schema: padelplanet; Owner: administrador
--

ALTER TABLE padelplanet."tbCourts" ALTER COLUMN "idCourt" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME padelplanet."tbCourts_idCourt_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16396)
-- Name: tbGames; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbGames" (
    "idGameDetail" integer NOT NULL,
    "idCourt" integer NOT NULL,
    "idUser1Team1" integer NOT NULL,
    "idUser2Team1" integer NOT NULL,
    "idUser1Team2" integer NOT NULL,
    "idUser2Team2" integer NOT NULL,
    status character varying(25) NOT NULL,
    booking character varying(25) NOT NULL,
    set1result character varying(10),
    set2result character varying(10),
    set3result character varying(10),
    "typeOfGame" character varying(25)
);


ALTER TABLE padelplanet."tbGames" OWNER TO administrador;

--
-- TOC entry 221 (class 1259 OID 16399)
-- Name: tbOrderDetail; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbOrderDetail" (
    "idOrder" integer NOT NULL,
    "idProduct" integer NOT NULL,
    quantity integer NOT NULL,
    comments character varying(200)
);


ALTER TABLE padelplanet."tbOrderDetail" OWNER TO administrador;

--
-- TOC entry 222 (class 1259 OID 16402)
-- Name: tbOrders; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbOrders" (
    "idOrder" integer NOT NULL,
    "idUser" integer NOT NULL
);


ALTER TABLE padelplanet."tbOrders" OWNER TO administrador;

--
-- TOC entry 223 (class 1259 OID 16405)
-- Name: tbOrders_idOrder_seq; Type: SEQUENCE; Schema: padelplanet; Owner: administrador
--

ALTER TABLE padelplanet."tbOrders" ALTER COLUMN "idOrder" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME padelplanet."tbOrders_idOrder_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16406)
-- Name: tbProducts; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbProducts" (
    "idProduct" integer NOT NULL,
    "productName" character varying(200) NOT NULL,
    brand character varying(100) NOT NULL,
    image text,
    price integer,
    discount integer,
    "finalPrice" integer
);


ALTER TABLE padelplanet."tbProducts" OWNER TO administrador;

--
-- TOC entry 225 (class 1259 OID 16411)
-- Name: tbProductos_idProduct_seq; Type: SEQUENCE; Schema: padelplanet; Owner: administrador
--

ALTER TABLE padelplanet."tbProducts" ALTER COLUMN "idProduct" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME padelplanet."tbProductos_idProduct_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 16412)
-- Name: tbUsers; Type: TABLE; Schema: padelplanet; Owner: administrador
--

CREATE TABLE padelplanet."tbUsers" (
    "idUser" integer NOT NULL,
    "userName" character varying(100) NOT NULL,
    "userEmail" character varying(100) NOT NULL,
    level integer,
    "favHand" character varying(10),
    "courtPos" character varying(10),
    "gameType" character varying(10),
    "favSchedule" character varying(10),
    password character varying(100) NOT NULL
);


ALTER TABLE padelplanet."tbUsers" OWNER TO administrador;

--
-- TOC entry 227 (class 1259 OID 16415)
-- Name: tbUsersGames_idGameDetail_seq; Type: SEQUENCE; Schema: padelplanet; Owner: administrador
--

ALTER TABLE padelplanet."tbGames" ALTER COLUMN "idGameDetail" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME padelplanet."tbUsersGames_idGameDetail_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16416)
-- Name: tbUsers_idUser_seq; Type: SEQUENCE; Schema: padelplanet; Owner: administrador
--

ALTER TABLE padelplanet."tbUsers" ALTER COLUMN "idUser" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME padelplanet."tbUsers_idUser_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3234 (class 2606 OID 16418)
-- Name: tbClubs tbClubs_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbClubs"
    ADD CONSTRAINT "tbClubs_pkey" PRIMARY KEY ("idClub");


--
-- TOC entry 3236 (class 2606 OID 16420)
-- Name: tbCourts tbCourts_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbCourts"
    ADD CONSTRAINT "tbCourts_pkey" PRIMARY KEY ("idCourt");


--
-- TOC entry 3240 (class 2606 OID 16422)
-- Name: tbOrderDetail tbOrderDetail_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbOrderDetail"
    ADD CONSTRAINT "tbOrderDetail_pkey" PRIMARY KEY ("idOrder", "idProduct");


--
-- TOC entry 3242 (class 2606 OID 16424)
-- Name: tbOrders tbOrders_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbOrders"
    ADD CONSTRAINT "tbOrders_pkey" PRIMARY KEY ("idOrder");


--
-- TOC entry 3244 (class 2606 OID 16426)
-- Name: tbProducts tbProductos_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbProducts"
    ADD CONSTRAINT "tbProductos_pkey" PRIMARY KEY ("idProduct");


--
-- TOC entry 3238 (class 2606 OID 16428)
-- Name: tbGames tbUsersGames_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbGames"
    ADD CONSTRAINT "tbUsersGames_pkey" PRIMARY KEY ("idGameDetail");


--
-- TOC entry 3246 (class 2606 OID 16430)
-- Name: tbUsers tbUsers_pkey; Type: CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbUsers"
    ADD CONSTRAINT "tbUsers_pkey" PRIMARY KEY ("idUser");


--
-- TOC entry 3247 (class 2606 OID 16431)
-- Name: tbCourts idClub; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbCourts"
    ADD CONSTRAINT "idClub" FOREIGN KEY ("idClub") REFERENCES padelplanet."tbClubs"("idClub") MATCH FULL;


--
-- TOC entry 3248 (class 2606 OID 16436)
-- Name: tbGames idCourt; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbGames"
    ADD CONSTRAINT "idCourt" FOREIGN KEY ("idCourt") REFERENCES padelplanet."tbCourts"("idCourt") MATCH FULL NOT VALID;


--
-- TOC entry 3253 (class 2606 OID 16441)
-- Name: tbOrderDetail idOrder; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbOrderDetail"
    ADD CONSTRAINT "idOrder" FOREIGN KEY ("idOrder") REFERENCES padelplanet."tbOrders"("idOrder");


--
-- TOC entry 3254 (class 2606 OID 16446)
-- Name: tbOrderDetail idProduct; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbOrderDetail"
    ADD CONSTRAINT "idProduct" FOREIGN KEY ("idProduct") REFERENCES padelplanet."tbProducts"("idProduct");


--
-- TOC entry 3255 (class 2606 OID 16451)
-- Name: tbOrders idUser; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbOrders"
    ADD CONSTRAINT "idUser" FOREIGN KEY ("idUser") REFERENCES padelplanet."tbUsers"("idUser") MATCH FULL;


--
-- TOC entry 3249 (class 2606 OID 16456)
-- Name: tbGames idUser1Team1; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbGames"
    ADD CONSTRAINT "idUser1Team1" FOREIGN KEY ("idUser1Team1") REFERENCES padelplanet."tbUsers"("idUser") MATCH FULL;


--
-- TOC entry 3250 (class 2606 OID 16461)
-- Name: tbGames idUser1Team2; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbGames"
    ADD CONSTRAINT "idUser1Team2" FOREIGN KEY ("idUser1Team2") REFERENCES padelplanet."tbUsers"("idUser");


--
-- TOC entry 3251 (class 2606 OID 16466)
-- Name: tbGames idUser2Team1; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbGames"
    ADD CONSTRAINT "idUser2Team1" FOREIGN KEY ("idUser2Team1") REFERENCES padelplanet."tbUsers"("idUser") MATCH FULL;


--
-- TOC entry 3252 (class 2606 OID 16471)
-- Name: tbGames idUser2Team2; Type: FK CONSTRAINT; Schema: padelplanet; Owner: administrador
--

ALTER TABLE ONLY padelplanet."tbGames"
    ADD CONSTRAINT "idUser2Team2" FOREIGN KEY ("idUser2Team2") REFERENCES padelplanet."tbUsers"("idUser");


-- Completed on 2023-11-14 15:18:22 CET

--
-- PostgreSQL database dump complete
--

