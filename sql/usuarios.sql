PGDMP     &    6            
    y         
   sietemares    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16722 
   sietemares    DATABASE     ?   CREATE DATABASE sietemares WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Uruguay.1252' LC_CTYPE = 'Spanish_Uruguay.1252';
    DROP DATABASE sietemares;
                postgres    false                       0    0    DATABASE sietemares    COMMENT     /   COMMENT ON DATABASE sietemares IS 'Productos';
                   postgres    false    2841            ?            1259    16863    usuarios    TABLE       CREATE TABLE public.usuarios (
    id_usuario bigint NOT NULL,
    nombre character varying(250) NOT NULL,
    apellido character varying(250) NOT NULL,
    email character varying(250) NOT NULL,
    celular character varying(250) NOT NULL,
    "contraseña" character(60)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            ?            1259    16861    usuarios_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    203                       0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    202            ?
           2604    16866    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    203    202    203                      0    16863    usuarios 
   TABLE DATA           _   COPY public.usuarios (id_usuario, nombre, apellido, email, celular, "contraseña") FROM stdin;
    public          postgres    false    203   ?                  0    0    usuarios_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, true);
          public          postgres    false    202            ?
           2606    16875    usuarios usuarios_celular_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_celular_key UNIQUE (celular);
 G   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_celular_key;
       public            postgres    false    203            ?
           2606    16873    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public            postgres    false    203            ?
           2606    16871    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    203               D   x?3?t/???I-???K?*,M??L/?0??s??s3s???s9-M?M-?-M93?s?\1z\\\ ?     