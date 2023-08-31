/*
##########################################################
This SQL script imports datasets and creates tables.
##########################################################
*/


-- Create Schema
DROP SCHEMA IF EXISTS olympics CASCADE;
CREATE SCHEMA olympics;


-- Create Table "olympic_history"
DROP TABLE IF EXISTS olympics.olympic_history;
CREATE TABLE olympics.olympic_history
(
	id		INTEGER,
	name 	VARCHAR,
	gender 	VARCHAR,
	born 	VARCHAR,
	died	VARCHAR,
	height 	VARCHAR,
	weight 	VARCHAR, 	
	team 	VARCHAR,
	game 	VARCHAR,
	noc 	VARCHAR,
	sport 	VARCHAR,
	event 	VARCHAR,
	medal 	VARCHAR
);


-- Create Table "athletes_roles"
DROP TABLE IF EXISTS olympics.athletes_roles;
CREATE TABLE olympics.athletes_roles
(
	id		INTEGER,
	name 	VARCHAR,
	roles 	VARCHAR
);


-- Create Table "host_cities"
DROP TABLE IF EXISTS olympics.host_cities;
CREATE TABLE olympics.host_cities
(
	year	INTEGER,
	season 	VARCHAR,
	game 	VARCHAR,
	host_city 	VARCHAR
);
