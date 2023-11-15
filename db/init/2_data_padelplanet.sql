--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

-- Started on 2023-11-14 15:43:26 CET

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
-- TOC entry 3399 (class 0 OID 16386)
-- Dependencies: 216
-- Data for Name: tbClubs; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (1, 'Club Derio', 'Derio, Dirección del club en Derio', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (2, 'Club Barakaldo', 'Barakaldo, Dirección del club en Barakaldo', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (3, 'Club Zamudio', 'Zamudio, Dirección del club en Zamudio', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (4, 'Club Mungia', 'Mungia, Dirección del club en Mungia', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (5, 'Club Basauri', 'Basauri, Dirección del club en Basauri', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (6, 'Club Bilbao', 'Bilbao, Dirección del club en Bilbao', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (7, 'Club Castro-Urdiales', 'Castro-Urdiales, Dirección del club en Castro-Urdiales', NULL, 'clubnophoto.png');
INSERT INTO padelplanet."tbClubs" ("idClub", "clubName", address, comments, photo) OVERRIDING SYSTEM VALUE VALUES (8, 'Club Santurtzi', 'Santurtzi, Dirección del club en Santurtzi', NULL, 'clubnophoto.png');


--
-- TOC entry 3401 (class 0 OID 16392)
-- Dependencies: 218
-- Data for Name: tbCourts; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Pista 1', 'EXTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (2, 1, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (3, 1, 'Pista 3', 'EXTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (4, 1, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (5, 1, 'Pista 5', 'EXTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (6, 1, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (7, 2, 'Pista 1', 'EXTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (8, 2, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (9, 2, 'Pista 3', 'EXTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (10, 2, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (11, 2, 'Pista 5', 'EXTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (12, 2, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (13, 3, 'Pista 1', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (14, 3, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (15, 3, 'Pista 3', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (16, 3, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (17, 3, 'Pista 5', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (18, 3, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (19, 4, 'Pista 1', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (20, 4, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (21, 4, 'Pista 3', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (22, 4, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (23, 4, 'Pista 5', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (24, 4, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (25, 5, 'Pista 1', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (26, 5, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (27, 5, 'Pista 3', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (28, 5, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (29, 5, 'Pista 5', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (30, 5, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (31, 5, 'Pista 7', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (32, 5, 'Pista 8', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (33, 5, 'Pista 9', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (34, 5, 'Pista 10', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (35, 5, 'Pista 11', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (36, 5, 'Pista 12', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (37, 6, 'Pista 1', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (38, 6, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (39, 6, 'Pista 3', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (40, 6, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (41, 6, 'Pista 5', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (42, 6, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (43, 6, 'Pista 7', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (44, 6, 'Pista 8', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (45, 6, 'Pista 9', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (46, 6, 'Pista 10', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (47, 6, 'Pista 11', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (48, 6, 'Pista 12', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (49, 7, 'Pista 1', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (50, 7, 'Pista 2', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (51, 7, 'Pista 3', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (52, 7, 'Pista 4', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (53, 7, 'Pista 5', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (54, 7, 'Pista 6', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (55, 7, 'Pista 7', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (56, 8, 'Pista 1', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (57, 8, 'Pista 2', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (58, 8, 'Pista 3', 'INTERIOR', 'cristal', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (59, 8, 'Pista 4', 'INTERIOR', 'muro', 'DOBLES');
INSERT INTO padelplanet."tbCourts" ("idCourt", "idClub", "courtName", "courtType", "wallType", "widthType") OVERRIDING SYSTEM VALUE VALUES (60, 8, 'Pista 5', 'INTERIOR', 'cristal', 'DOBLES');


--
-- TOC entry 3409 (class 0 OID 16412)
-- Dependencies: 226
-- Data for Name: tbUsers; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (1, 'Alejandro García', 'alejandro@example.com', 1, 'Derecha', 'Derecha', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (2, 'María Rodríguez', 'maria@example.com', 2, 'Zurda', 'Revés', 'Amistoso', 'Noche', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (3, 'Javier López', 'javier@example.com', 1, 'Derecha', 'Revés', 'Competitivo', 'Tarde', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (4, 'Lucía Martínez', 'lucia@example.com', 3, 'Ambas', 'Derecha', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (5, 'Carlos Pérez', 'carlos@example.com', 2, 'Zurda', 'Revés', 'Amistoso', 'Noche', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (6, 'Laura Gutiérrez', 'laura@example.com', 1, 'Derecha', 'Revés', 'Competitivo', 'Tarde', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (7, 'Eduardo Sánchez', 'eduardo@example.com', 3, 'Derecha', 'Derecha', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (8, 'Sofía Hernández', 'sofia@example.com', 2, 'Zurda', 'Revés', 'Amistoso', 'Noche', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (9, 'Pablo Flores', 'pablo@example.com', 1, 'Derecha', 'Revés', 'Competitivo', 'Tarde', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (10, 'Elena Díaz', 'elena@example.com', 3, 'Derecha', 'Derecha', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (11, 'Laura López', 'laura@example.com', 2, 'Derecha', 'Revés', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (12, 'Pedro Martínez', 'pedro@example.com', 3, 'Zurda', 'Derecha', 'Amistoso', 'Tarde', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (13, 'Elena Rodríguez', 'elena2@example.com', 1, 'Ambas', 'Revés', 'Competitivo', 'Noche', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (14, 'Pablo Gómez', 'pablo2@example.com', 2, 'Derecha', 'Revés', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (15, 'María Sánchez', 'maria2@example.com', 1, 'Zurda', 'Revés', 'Amistoso', 'Tarde', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (16, 'Jorge Fernández', 'jorge@example.com', 3, 'Ambas', 'Derecha', 'Competitivo', 'Noche', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (17, 'Ana Pérez', 'ana2@example.com', 2, 'Derecha', 'Revés', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (18, 'Carlos García', 'carlos2@example.com', 1, 'Zurda', 'Revés', 'Amistoso', 'Tarde', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (19, 'Sara Martínez', 'sara2@example.com', 3, 'Ambas', 'Derecha', 'Competitivo', 'Noche', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');
INSERT INTO padelplanet."tbUsers" ("idUser", "userName", "userEmail", level, "favHand", "courtPos", "gameType", "favSchedule", password, photo) OVERRIDING SYSTEM VALUE VALUES (20, 'Javier López', 'javier2@example.com', 2, 'Derecha', 'Revés', 'Competitivo', 'Mañana', '$2b$10$dlVvqHBLDub/713Fjjdwp.ELesJjjOfaT7RHcvYazn7uF8M77iGTC', 'nophoto.png');


--
-- TOC entry 3403 (class 0 OID 16396)
-- Dependencies: 220
-- Data for Name: tbGames; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (31, 1, 1, 2, 3, 4, 'Finalizado', 'Reservado', '6-2', '6-4', '6-1', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (32, 2, 5, 6, 7, 8, 'Finalizado', 'Reservado', '3-6', '6-4', '7-5', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (33, 3, 9, 10, 11, 12, 'Finalizado', 'Reservado', '7-5', '5-7', '6-2', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (34, 4, 13, 14, 15, 16, 'Finalizado', 'Reservado', '6-1', '6-3', '7-5', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (35, 5, 17, 18, 19, 20, 'Finalizado', 'Reservado', '6-2', '6-4', '6-1', 'Amistoso');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (36, 6, 1, 2, 3, 4, 'Finalizado', 'Reservado', '3-6', '6-4', '7-5', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (37, 7, 5, 6, 7, 8, 'Finalizado', 'Reservado', '7-5', '5-7', '6-2', 'Amistoso');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (38, 8, 9, 10, 11, 12, 'Finalizado', 'Reservado', '6-1', '6-3', '7-5', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (39, 9, 13, 14, 15, 16, 'Finalizado', 'Reservado', '6-2', '6-4', '6-1', 'Competitivo');
INSERT INTO padelplanet."tbGames" ("idGameDetail", "idCourt", "idUser1Team1", "idUser2Team1", "idUser1Team2", "idUser2Team2", status, booking, set1result, set2result, set3result, "typeOfGame") OVERRIDING SYSTEM VALUE VALUES (40, 10, 17, 18, 19, 20, 'Finalizado', 'Reservado', '3-6', '6-4', '7-5', 'Competitivo');


--
-- TOC entry 3405 (class 0 OID 16402)
-- Dependencies: 222
-- Data for Name: tbOrders; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbOrders" ("idOrder", "idUser") OVERRIDING SYSTEM VALUE VALUES (1, 1);
INSERT INTO padelplanet."tbOrders" ("idOrder", "idUser") OVERRIDING SYSTEM VALUE VALUES (2, 2);
INSERT INTO padelplanet."tbOrders" ("idOrder", "idUser") OVERRIDING SYSTEM VALUE VALUES (3, 3);
INSERT INTO padelplanet."tbOrders" ("idOrder", "idUser") OVERRIDING SYSTEM VALUE VALUES (4, 4);
INSERT INTO padelplanet."tbOrders" ("idOrder", "idUser") OVERRIDING SYSTEM VALUE VALUES (5, 5);


--
-- TOC entry 3407 (class 0 OID 16406)
-- Dependencies: 224
-- Data for Name: tbProducts; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbProducts" ("idProduct", "productName", brand, image, price, discount, "finalPrice") OVERRIDING SYSTEM VALUE VALUES (1, 'Raqueta de Pádel Modelo Pro', 'MASQUEPADEL', 'url_imagen_1.jpg', 120, 10, 108);
INSERT INTO padelplanet."tbProducts" ("idProduct", "productName", brand, image, price, discount, "finalPrice") OVERRIDING SYSTEM VALUE VALUES (2, 'Pelotas de Pádel (3 unidades)', 'MASQUEPADEL', 'url_imagen_2.jpg', 15, 5, 14);
INSERT INTO padelplanet."tbProducts" ("idProduct", "productName", brand, image, price, discount, "finalPrice") OVERRIDING SYSTEM VALUE VALUES (3, 'Paletero MASQUEPADEL Serie Elite', 'MASQUEPADEL', 'url_imagen_3.jpg', 50, 20, 40);
INSERT INTO padelplanet."tbProducts" ("idProduct", "productName", brand, image, price, discount, "finalPrice") OVERRIDING SYSTEM VALUE VALUES (4, 'Camiseta Técnica de Pádel', 'MASQUEPADEL', 'url_imagen_4.jpg', 30, 15, 25);
INSERT INTO padelplanet."tbProducts" ("idProduct", "productName", brand, image, price, discount, "finalPrice") OVERRIDING SYSTEM VALUE VALUES (5, 'Overgrip Antideslizante (Pack de 3)', 'MASQUEPADEL', 'url_imagen_5.jpg', 10, 2, 8);


--
-- TOC entry 3404 (class 0 OID 16399)
-- Dependencies: 221
-- Data for Name: tbOrderDetail; Type: TABLE DATA; Schema: padelplanet; Owner: administrador
--

INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (1, 1, 2, 'Sin comentarios');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (1, 3, 1, 'Talla L');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (2, 2, 1, 'Con descuento aplicado');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (2, 4, 3, 'Pedido especial');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (3, 1, 1, 'Envío urgente');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (3, 5, 2, 'Regalo incluido');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (4, 2, 2, 'Producto agotado');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (4, 4, 1, 'Cambiar color');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (5, 3, 2, 'Empaquetado para regalo');
INSERT INTO padelplanet."tbOrderDetail" ("idOrder", "idProduct", quantity, comments) VALUES (5, 5, 1, 'Con tarjeta personalizada');


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 217
-- Name: tbClubs_idClub_seq; Type: SEQUENCE SET; Schema: padelplanet; Owner: administrador
--

SELECT pg_catalog.setval('padelplanet."tbClubs_idClub_seq"', 8, true);


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 219
-- Name: tbCourts_idCourt_seq; Type: SEQUENCE SET; Schema: padelplanet; Owner: administrador
--

SELECT pg_catalog.setval('padelplanet."tbCourts_idCourt_seq"', 60, true);


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbOrders_idOrder_seq; Type: SEQUENCE SET; Schema: padelplanet; Owner: administrador
--

SELECT pg_catalog.setval('padelplanet."tbOrders_idOrder_seq"', 5, true);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbProductos_idProduct_seq; Type: SEQUENCE SET; Schema: padelplanet; Owner: administrador
--

SELECT pg_catalog.setval('padelplanet."tbProductos_idProduct_seq"', 5, true);


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 227
-- Name: tbUsersGames_idGameDetail_seq; Type: SEQUENCE SET; Schema: padelplanet; Owner: administrador
--

SELECT pg_catalog.setval('padelplanet."tbUsersGames_idGameDetail_seq"', 40, true);


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbUsers_idUser_seq; Type: SEQUENCE SET; Schema: padelplanet; Owner: administrador
--

SELECT pg_catalog.setval('padelplanet."tbUsers_idUser_seq"', 20, true);


-- Completed on 2023-11-14 15:43:27 CET

--
-- PostgreSQL database dump complete
--

