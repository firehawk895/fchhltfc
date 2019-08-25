--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Ubuntu 11.2-2.pgdg18.04+1)
-- Dumped by pg_dump version 11.5

-- Started on 2019-08-26 04:58:39 IST

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

DROP DATABASE fchhltfc;
--
-- TOC entry 4131 (class 1262 OID 19973)
-- Name: fchhltfc; Type: DATABASE; Schema: -; Owner: fchhltfc
--

CREATE DATABASE fchhltfc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE fchhltfc OWNER TO fchhltfc;

\connect fchhltfc

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
-- TOC entry 29 (class 2615 OID 38029)
-- Name: fchhltfc; Type: SCHEMA; Schema: -; Owner: fchhltfc
--

CREATE SCHEMA fchhltfc;


ALTER SCHEMA fchhltfc OWNER TO fchhltfc;

--
-- TOC entry 9 (class 3079 OID 17135)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 5 (class 3079 OID 17676)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 16 (class 3079 OID 16661)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 7 (class 3079 OID 17573)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 22 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 10 (class 3079 OID 17130)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 4 (class 3079 OID 18299)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 6 (class 3079 OID 17660)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 17 (class 3079 OID 16650)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 11 (class 3079 OID 17007)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16889)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 20 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 2 (class 3079 OID 18311)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- TOC entry 13 (class 3079 OID 16812)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 14 (class 3079 OID 16775)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 8 (class 3079 OID 17571)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 19 (class 3079 OID 16619)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 18 (class 3079 OID 16629)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 3 (class 3079 OID 18304)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 15 (class 3079 OID 16764)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 21 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


--
-- TOC entry 1462 (class 1247 OID 54688)
-- Name: address_info; Type: TYPE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TYPE fchhltfc.address_info AS (
	street text,
	suite text,
	city text,
	zipcode text,
	geo point
);


ALTER TYPE fchhltfc.address_info OWNER TO fchhltfc;

--
-- TOC entry 1476 (class 1247 OID 53048)
-- Name: addressinfo; Type: TYPE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TYPE fchhltfc.addressinfo AS (
	street text,
	suite text,
	city text,
	zipcode text,
	geo point
);


ALTER TYPE fchhltfc.addressinfo OWNER TO fchhltfc;

--
-- TOC entry 1465 (class 1247 OID 54691)
-- Name: company_info; Type: TYPE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TYPE fchhltfc.company_info AS (
	name text,
	catchphrase text,
	bs text
);


ALTER TYPE fchhltfc.company_info OWNER TO fchhltfc;

--
-- TOC entry 1479 (class 1247 OID 53051)
-- Name: companyinfo; Type: TYPE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TYPE fchhltfc.companyinfo AS (
	name text,
	catchphrase text,
	bs text
);


ALTER TYPE fchhltfc.companyinfo OWNER TO fchhltfc;

--
-- TOC entry 1470 (class 1247 OID 37620)
-- Name: address; Type: TYPE; Schema: public; Owner: fchhltfc
--

CREATE TYPE public.address AS (
	street text,
	suite text,
	city text,
	zipcode text,
	geo point
);


ALTER TYPE public.address OWNER TO fchhltfc;

--
-- TOC entry 1473 (class 1247 OID 37623)
-- Name: company; Type: TYPE; Schema: public; Owner: fchhltfc
--

CREATE TYPE public.company AS (
	name text,
	catchphrase text,
	bs text
);


ALTER TYPE public.company OWNER TO fchhltfc;

--
-- TOC entry 967 (class 1255 OID 38207)
-- Name: add_album(json); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.add_album(info json) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into fchhltfc.album(
		id,
		user_id,
		title
	)
	values(
		info ->> 'id',
		info ->> 'userId',
		info ->> 'title'
	);
	
end;
$$;


ALTER FUNCTION fchhltfc.add_album(info json) OWNER TO fchhltfc;

--
-- TOC entry 966 (class 1255 OID 38206)
-- Name: add_comment(json); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.add_comment(info json) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into fchhltfc.comments(
		id,
		post_id,
		name,
		email,
		body
	)
	values(
		info ->> 'id',
		info ->> 'postId',
		info ->> 'name',
		info ->> 'email',
		info ->> 'body'
	);
	
end;
$$;


ALTER FUNCTION fchhltfc.add_comment(info json) OWNER TO fchhltfc;

--
-- TOC entry 969 (class 1255 OID 38208)
-- Name: add_photo(json); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.add_photo(info json) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into fchhltfc.photo(
		id,
		album_id,
		title,
		url,
		thumbnail_url
	)
	values(
		info ->> 'id',
		info ->> 'albumId',
		info ->> 'title',
		info ->> 'url',
		info ->> 'thumbnail_url'
	);
	
end;
$$;


ALTER FUNCTION fchhltfc.add_photo(info json) OWNER TO fchhltfc;

--
-- TOC entry 965 (class 1255 OID 38205)
-- Name: add_post(json); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.add_post(info json) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into fchhltfc.post(
		id,
		user_id,
		title,
		body
	)
	values(
		info ->> 'id',
		info ->> 'userId',
		info ->> 'title',
		info ->> 'body'
	);
	
end;
$$;


ALTER FUNCTION fchhltfc.add_post(info json) OWNER TO fchhltfc;

--
-- TOC entry 970 (class 1255 OID 38209)
-- Name: add_todo(json); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.add_todo(info json) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into fchhltfc.todo(
		id,
		user_id,
		title,
		completed
	)
	values(
		info ->> 'id',
		info ->> 'userId',
		info ->> 'title',
		info ->> 'completed'
	);
	
end;
$$;


ALTER FUNCTION fchhltfc.add_todo(info json) OWNER TO fchhltfc;

--
-- TOC entry 968 (class 1255 OID 38204)
-- Name: add_user(json); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.add_user(info json) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	comp_id integer ;
begin
	
	insert into fchhltfc.company(name,catch_phrase,bs) values(info -> 'company' ->> 'name',info -> 'company' ->> 'catchPhrase',info -> 'company' ->> 'bs');
	select max(id) into comp_id from fchhltfc.company;
	insert into fchhltfc.users(
		id,
		name,
		username,
		email,
		street,
		suite,
		city,
		zipcode,
		lat,
		lng,
		phone,
		website,
		company_id)
	values(
		info ->> 'id',
		info ->> 'name',
		info ->> 'username',
		info ->> 'email',
		info -> 'address' ->> 'street',
		info -> 'address' ->> 'suite',
		info -> 'address' ->> 'city',
		info -> 'address' ->> 'zipcode',
		info -> 'address' -> 'geo' ->> 'lat',
		info -> 'address' -> 'geo' ->> 'lng',
		info ->> 'phone',
		info ->> 'website',
		comp_id
	);
	
end;
$$;


ALTER FUNCTION fchhltfc.add_user(info json) OWNER TO fchhltfc;

--
-- TOC entry 974 (class 1255 OID 38218)
-- Name: get_albums_of_a_user(character varying); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_albums_of_a_user(userid character varying) RETURNS TABLE(id character varying, user_id character varying, title character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
	id,
	user_id,
	title
		
	from fchhltfc.album
	where user_id=userId;
end;
$$;


ALTER FUNCTION fchhltfc.get_albums_of_a_user(userid character varying) OWNER TO fchhltfc;

--
-- TOC entry 977 (class 1255 OID 38213)
-- Name: get_all_albums(); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_all_albums() RETURNS TABLE(id character varying, user_id character varying, title character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
	id,
	user_id,
	title
		
	from fchhltfc.album;
end;
$$;


ALTER FUNCTION fchhltfc.get_all_albums() OWNER TO fchhltfc;

--
-- TOC entry 976 (class 1255 OID 38212)
-- Name: get_all_comments(); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_all_comments() RETURNS TABLE(id character varying, post_id character varying, name character varying, email character varying, body character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		post_id,
		name,
		email,
		body
		
	from fchhltfc.comments;
end;
$$;


ALTER FUNCTION fchhltfc.get_all_comments() OWNER TO fchhltfc;

--
-- TOC entry 978 (class 1255 OID 38214)
-- Name: get_all_photos(); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_all_photos() RETURNS TABLE(id character varying, album_id character varying, title character varying, url character varying, thumbnail_url character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		album_id,
		title,
		url,
		thumbnail_url
		
	from fchhltfc.photo;
end;
$$;


ALTER FUNCTION fchhltfc.get_all_photos() OWNER TO fchhltfc;

--
-- TOC entry 975 (class 1255 OID 38211)
-- Name: get_all_posts(); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_all_posts() RETURNS TABLE(id character varying, user_id character varying, title character varying, body character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		user_id,
		title,
		body 
		
	from fchhltfc.post;
end;
$$;


ALTER FUNCTION fchhltfc.get_all_posts() OWNER TO fchhltfc;

--
-- TOC entry 979 (class 1255 OID 38447)
-- Name: get_all_todos(); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_all_todos() RETURNS TABLE(id character varying, user_id character varying, title character varying, completed character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		user_id,
		title,
		completed
		
	from fchhltfc.todo;
end;
$$;


ALTER FUNCTION fchhltfc.get_all_todos() OWNER TO fchhltfc;

--
-- TOC entry 971 (class 1255 OID 38210)
-- Name: get_all_users(); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_all_users() RETURNS TABLE(id character varying, name character varying, username character varying, email character varying, street character varying, suite character varying, city character varying, zipcode character varying, lat character varying, lng character varying, phone character varying, website character varying, company_name character varying, catch_phrase character varying, bs character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		u.id,
		u.name,
		u.username,
		u.email,
		u.street,
		u.suite,
		u.city,
		u.zipcode,
		u.lat,
		u.lng,
		u.phone,
		u.website,
		c.name,
		c.catch_phrase,
		c.bs
		
	from fchhltfc.users u join fchhltfc.company c
	on u.company_id=c.id;
end;
$$;


ALTER FUNCTION fchhltfc.get_all_users() OWNER TO fchhltfc;

--
-- TOC entry 973 (class 1255 OID 38217)
-- Name: get_comments_on_a_post(character varying); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_comments_on_a_post(postid character varying) RETURNS TABLE(id character varying, post_id character varying, name character varying, email character varying, body character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		post_id,
		name,
		email,
		body
		
	from fchhltfc.comments
	where post_id=postId;
end;
$$;


ALTER FUNCTION fchhltfc.get_comments_on_a_post(postid character varying) OWNER TO fchhltfc;

--
-- TOC entry 980 (class 1255 OID 38219)
-- Name: get_photos_in_an_album(character varying); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_photos_in_an_album(albumid character varying) RETURNS TABLE(id character varying, album_id character varying, title character varying, url character varying, thumbnail_url character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		album_id,
		title,
		url,
		thumbnail_url
		
	from fchhltfc.photo
	where album_id=albumId;
end;
$$;


ALTER FUNCTION fchhltfc.get_photos_in_an_album(albumid character varying) OWNER TO fchhltfc;

--
-- TOC entry 982 (class 1255 OID 38221)
-- Name: get_photos_of_a_user(character varying); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_photos_of_a_user(userid character varying) RETURNS TABLE(id character varying, album_id character varying, title character varying, url character varying, thumbnail_url character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		p.id,
		p.album_id,
		p.title,
		p.url,
		p.thumbnail_url
		
	from fchhltfc.photo p 
		join fchhltfc.album a 
		on p.album_id=a.id
		join fchhltfc.users u
		on u.id=a.user_id
	where a.user_id=userId;
end;
$$;


ALTER FUNCTION fchhltfc.get_photos_of_a_user(userid character varying) OWNER TO fchhltfc;

--
-- TOC entry 972 (class 1255 OID 38216)
-- Name: get_posts_by_user(character varying); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_posts_by_user(userid character varying) RETURNS TABLE(id character varying, user_id character varying, title character varying, body character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		user_id,
		title,
		body 
		
	from fchhltfc.post
	where user_id=userId;
end;
$$;


ALTER FUNCTION fchhltfc.get_posts_by_user(userid character varying) OWNER TO fchhltfc;

--
-- TOC entry 981 (class 1255 OID 38220)
-- Name: get_todos_of_a_user(character varying); Type: FUNCTION; Schema: fchhltfc; Owner: fchhltfc
--

CREATE FUNCTION fchhltfc.get_todos_of_a_user(userid character varying) RETURNS TABLE(id character varying, user_id character varying, title character varying, completed boolean)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
		id,
		user_id,
		title,
		completed
		
	from fchhltfc.todo
	where user_id=userId;
end;
$$;


ALTER FUNCTION fchhltfc.get_todos_of_a_user(userid character varying) OWNER TO fchhltfc;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 239 (class 1259 OID 56683)
-- Name: albums; Type: TABLE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TABLE fchhltfc.albums (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    title text NOT NULL
);


ALTER TABLE fchhltfc.albums OWNER TO fchhltfc;

--
-- TOC entry 237 (class 1259 OID 56679)
-- Name: albums_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.albums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.albums_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 237
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.albums_id_seq OWNED BY fchhltfc.albums.id;


--
-- TOC entry 238 (class 1259 OID 56681)
-- Name: albums_userId_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc."albums_userId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc."albums_userId_seq" OWNER TO fchhltfc;

--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 238
-- Name: albums_userId_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc."albums_userId_seq" OWNED BY fchhltfc.albums."userId";


--
-- TOC entry 236 (class 1259 OID 56664)
-- Name: comments; Type: TABLE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TABLE fchhltfc.comments (
    id integer NOT NULL,
    "postId" integer NOT NULL,
    name text,
    email public.citext,
    body text
);


ALTER TABLE fchhltfc.comments OWNER TO fchhltfc;

--
-- TOC entry 242 (class 1259 OID 56702)
-- Name: photos; Type: TABLE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TABLE fchhltfc.photos (
    id integer NOT NULL,
    "albumId" integer NOT NULL,
    title text,
    url text,
    "thumbnailUrl" text
);


ALTER TABLE fchhltfc.photos OWNER TO fchhltfc;

--
-- TOC entry 241 (class 1259 OID 56700)
-- Name: photos_albumId_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc."photos_albumId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc."photos_albumId_seq" OWNER TO fchhltfc;

--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 241
-- Name: photos_albumId_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc."photos_albumId_seq" OWNED BY fchhltfc.photos."albumId";


--
-- TOC entry 240 (class 1259 OID 56698)
-- Name: photos_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.photos_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 240
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.photos_id_seq OWNED BY fchhltfc.photos.id;


--
-- TOC entry 233 (class 1259 OID 56645)
-- Name: posts; Type: TABLE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TABLE fchhltfc.posts (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    title text,
    body text
);


ALTER TABLE fchhltfc.posts OWNER TO fchhltfc;

--
-- TOC entry 231 (class 1259 OID 56641)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.posts_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 231
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.posts_id_seq OWNED BY fchhltfc.posts.id;


--
-- TOC entry 232 (class 1259 OID 56643)
-- Name: posts_user_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.posts_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.posts_user_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 232
-- Name: posts_user_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.posts_user_id_seq OWNED BY fchhltfc.posts."userId";


--
-- TOC entry 245 (class 1259 OID 56721)
-- Name: todos; Type: TABLE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TABLE fchhltfc.todos (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    title text,
    completed boolean DEFAULT false NOT NULL
);


ALTER TABLE fchhltfc.todos OWNER TO fchhltfc;

--
-- TOC entry 243 (class 1259 OID 56717)
-- Name: todos_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.todos_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 243
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.todos_id_seq OWNED BY fchhltfc.todos.id;


--
-- TOC entry 244 (class 1259 OID 56719)
-- Name: todos_userId_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc."todos_userId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc."todos_userId_seq" OWNER TO fchhltfc;

--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 244
-- Name: todos_userId_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc."todos_userId_seq" OWNED BY fchhltfc.todos."userId";


--
-- TOC entry 234 (class 1259 OID 56660)
-- Name: untitled_table_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.untitled_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.untitled_table_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 234
-- Name: untitled_table_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.untitled_table_id_seq OWNED BY fchhltfc.comments.id;


--
-- TOC entry 235 (class 1259 OID 56662)
-- Name: untitled_table_postId_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc."untitled_table_postId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc."untitled_table_postId_seq" OWNER TO fchhltfc;

--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 235
-- Name: untitled_table_postId_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc."untitled_table_postId_seq" OWNED BY fchhltfc.comments."postId";


--
-- TOC entry 230 (class 1259 OID 56628)
-- Name: users; Type: TABLE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE TABLE fchhltfc.users (
    id integer NOT NULL,
    name text NOT NULL,
    username text,
    email public.citext,
    address jsonb DEFAULT '{}'::jsonb,
    phone text DEFAULT 'NULL'::text,
    website text DEFAULT 'NULL'::text,
    company jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE fchhltfc.users OWNER TO fchhltfc;

--
-- TOC entry 229 (class 1259 OID 56626)
-- Name: users_id_seq; Type: SEQUENCE; Schema: fchhltfc; Owner: fchhltfc
--

CREATE SEQUENCE fchhltfc.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fchhltfc.users_id_seq OWNER TO fchhltfc;

--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: fchhltfc; Owner: fchhltfc
--

ALTER SEQUENCE fchhltfc.users_id_seq OWNED BY fchhltfc.users.id;


--
-- TOC entry 3976 (class 2604 OID 56686)
-- Name: albums id; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.albums ALTER COLUMN id SET DEFAULT nextval('fchhltfc.albums_id_seq'::regclass);


--
-- TOC entry 3977 (class 2604 OID 56687)
-- Name: albums userId; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.albums ALTER COLUMN "userId" SET DEFAULT nextval('fchhltfc."albums_userId_seq"'::regclass);


--
-- TOC entry 3974 (class 2604 OID 56667)
-- Name: comments id; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.comments ALTER COLUMN id SET DEFAULT nextval('fchhltfc.untitled_table_id_seq'::regclass);


--
-- TOC entry 3975 (class 2604 OID 56668)
-- Name: comments postId; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.comments ALTER COLUMN "postId" SET DEFAULT nextval('fchhltfc."untitled_table_postId_seq"'::regclass);


--
-- TOC entry 3978 (class 2604 OID 56705)
-- Name: photos id; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.photos ALTER COLUMN id SET DEFAULT nextval('fchhltfc.photos_id_seq'::regclass);


--
-- TOC entry 3979 (class 2604 OID 56706)
-- Name: photos albumId; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.photos ALTER COLUMN "albumId" SET DEFAULT nextval('fchhltfc."photos_albumId_seq"'::regclass);


--
-- TOC entry 3972 (class 2604 OID 56648)
-- Name: posts id; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.posts ALTER COLUMN id SET DEFAULT nextval('fchhltfc.posts_id_seq'::regclass);


--
-- TOC entry 3973 (class 2604 OID 56649)
-- Name: posts userId; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.posts ALTER COLUMN "userId" SET DEFAULT nextval('fchhltfc.posts_user_id_seq'::regclass);


--
-- TOC entry 3980 (class 2604 OID 56724)
-- Name: todos id; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.todos ALTER COLUMN id SET DEFAULT nextval('fchhltfc.todos_id_seq'::regclass);


--
-- TOC entry 3981 (class 2604 OID 56725)
-- Name: todos userId; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.todos ALTER COLUMN "userId" SET DEFAULT nextval('fchhltfc."todos_userId_seq"'::regclass);


--
-- TOC entry 3970 (class 2604 OID 56631)
-- Name: users id; Type: DEFAULT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.users ALTER COLUMN id SET DEFAULT nextval('fchhltfc.users_id_seq'::regclass);


--
-- TOC entry 3994 (class 2606 OID 56692)
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- TOC entry 3996 (class 2606 OID 56711)
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- TOC entry 3990 (class 2606 OID 56654)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 3998 (class 2606 OID 56731)
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- TOC entry 3992 (class 2606 OID 56673)
-- Name: comments untitled_table_pkey; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.comments
    ADD CONSTRAINT untitled_table_pkey PRIMARY KEY (id);


--
-- TOC entry 3984 (class 2606 OID 56640)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3986 (class 2606 OID 56636)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3988 (class 2606 OID 56638)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 4001 (class 2606 OID 56693)
-- Name: albums albums_userId_fkey; Type: FK CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.albums
    ADD CONSTRAINT "albums_userId_fkey" FOREIGN KEY ("userId") REFERENCES fchhltfc.users(id) ON DELETE CASCADE;


--
-- TOC entry 4002 (class 2606 OID 56712)
-- Name: photos photos_albumId_fkey; Type: FK CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.photos
    ADD CONSTRAINT "photos_albumId_fkey" FOREIGN KEY ("albumId") REFERENCES fchhltfc.albums(id) ON DELETE CASCADE;


--
-- TOC entry 3999 (class 2606 OID 56655)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY ("userId") REFERENCES fchhltfc.users(id) ON DELETE CASCADE;


--
-- TOC entry 4003 (class 2606 OID 56732)
-- Name: todos todos_userId_fkey; Type: FK CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.todos
    ADD CONSTRAINT "todos_userId_fkey" FOREIGN KEY ("userId") REFERENCES fchhltfc.users(id);


--
-- TOC entry 4000 (class 2606 OID 56674)
-- Name: comments untitled_table_postId_fkey; Type: FK CONSTRAINT; Schema: fchhltfc; Owner: fchhltfc
--

ALTER TABLE ONLY fchhltfc.comments
    ADD CONSTRAINT "untitled_table_postId_fkey" FOREIGN KEY ("postId") REFERENCES fchhltfc.posts(id) ON DELETE CASCADE;


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 4131
-- Name: DATABASE fchhltfc; Type: ACL; Schema: -; Owner: fchhltfc
--

REVOKE CONNECT,TEMPORARY ON DATABASE fchhltfc FROM PUBLIC;


-- Completed on 2019-08-26 05:05:26 IST

--
-- PostgreSQL database dump complete
--

