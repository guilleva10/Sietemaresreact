PGDMP         6            
    y         
   sietemares    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16722 
   sietemares    DATABASE     ?   CREATE DATABASE sietemares WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Uruguay.1252' LC_CTYPE = 'Spanish_Uruguay.1252';
    DROP DATABASE sietemares;
                postgres    false                       0    0    DATABASE sietemares    COMMENT     /   COMMENT ON DATABASE sietemares IS 'Productos';
                   postgres    false    2834            ?            1259    16899    stock    TABLE     S   CREATE TABLE public.stock (
    id_producto integer NOT NULL,
    stock integer
);
    DROP TABLE public.stock;
       public         heap    postgres    false                      0    16899    stock 
   TABLE DATA           3   COPY public.stock (id_producto, stock) FROM stdin;
    public          postgres    false    208   5       ?
           2606    16902    stock stock_id_producto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 F   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_id_producto_fkey;
       public          postgres    false    208               <   x????0???aP.mh؅????aɲ|??R?,y????)*?I5???䒋?>b	?     