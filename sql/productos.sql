PGDMP     5    5            
    y         
   sietemares    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16722 
   sietemares    DATABASE     ?   CREATE DATABASE sietemares WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Uruguay.1252' LC_CTYPE = 'Spanish_Uruguay.1252';
    DROP DATABASE sietemares;
                postgres    false                       0    0    DATABASE sietemares    COMMENT     /   COMMENT ON DATABASE sietemares IS 'Productos';
                   postgres    false    2837            ?            1259    16893 	   productos    TABLE     ?   CREATE TABLE public.productos (
    id_producto bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    categoria character varying(50) NOT NULL,
    temporada character varying(50) NOT NULL,
    precio integer NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            ?            1259    16891    productos_id_producto_seq    SEQUENCE     ?   CREATE SEQUENCE public.productos_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    207                       0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public          postgres    false    206            ?
           2604    16896    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    206    207    207                      0    16893 	   productos 
   TABLE DATA           V   COPY public.productos (id_producto, nombre, categoria, temporada, precio) FROM stdin;
    public          postgres    false    207   U                  0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 13, true);
          public          postgres    false    206            ?
           2606    16898    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    207               ?   x?u?MO?0D?????rl|??TD/\??"????P~=k!? ??͛?mqW\?P>C??????i?ƞ"?Lt.??7?????*u<?L-p?!??G??\???N????ίt??٦U?V?k<q?D8L!??C?ga?????1`/????-L?)[OK??W?m}?2W֨?k<L$?3??VT?????3v??)D+????"?w@ð;?R????H?]?Է^??R_@lu?     