PGDMP         5            
    y         
   sietemares    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16722 
   sietemares    DATABASE     ?   CREATE DATABASE sietemares WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Uruguay.1252' LC_CTYPE = 'Spanish_Uruguay.1252';
    DROP DATABASE sietemares;
                postgres    false                       0    0    DATABASE sietemares    COMMENT     /   COMMENT ON DATABASE sietemares IS 'Productos';
                   postgres    false    2839            ?            1259    16878    contacto    TABLE     ?   CREATE TABLE public.contacto (
    id_usuario bigint NOT NULL,
    nombre character varying(250) NOT NULL,
    apellido character varying(250) NOT NULL,
    email character varying(250) NOT NULL,
    mensaje character varying(500) NOT NULL
);
    DROP TABLE public.contacto;
       public         heap    postgres    false            ?            1259    16876    contacto_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.contacto_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contacto_id_usuario_seq;
       public          postgres    false    205                       0    0    contacto_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contacto_id_usuario_seq OWNED BY public.contacto.id_usuario;
          public          postgres    false    204            ?
           2604    16881    contacto id_usuario    DEFAULT     z   ALTER TABLE ONLY public.contacto ALTER COLUMN id_usuario SET DEFAULT nextval('public.contacto_id_usuario_seq'::regclass);
 B   ALTER TABLE public.contacto ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    205    204    205                      0    16878    contacto 
   TABLE DATA           P   COPY public.contacto (id_usuario, nombre, apellido, email, mensaje) FROM stdin;
    public          postgres    false    205   w                  0    0    contacto_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contacto_id_usuario_seq', 1, false);
          public          postgres    false    204            ?
           2606    16888    contacto contacto_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT contacto_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.contacto DROP CONSTRAINT contacto_email_key;
       public            postgres    false    205            ?
           2606    16886    contacto contacto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT contacto_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.contacto DROP CONSTRAINT contacto_pkey;
       public            postgres    false    205                  x?????? ? ?     