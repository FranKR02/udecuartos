PGDMP         6            	    y         
   udecuartos    13.2    13.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16686 
   udecuartos    DATABASE     i   CREATE DATABASE udecuartos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE udecuartos;
                postgres    false            �            1259    16687 	   Hospedaje    TABLE     X  CREATE TABLE public."Hospedaje" (
    titulo character varying(50) NOT NULL,
    tipo character varying(70),
    direccion character varying(50) NOT NULL,
    ubicacion character varying(70) NOT NULL,
    precio integer NOT NULL,
    servicios character varying(50),
    imagen character varying,
    id integer NOT NULL,
    iduser integer
);
    DROP TABLE public."Hospedaje";
       public         heap    postgres    false            �            1259    16705    User    TABLE       CREATE TABLE public."User" (
    nombre character varying(100) NOT NULL,
    cedula bigint NOT NULL,
    ubicacion character varying(70) NOT NULL,
    id integer NOT NULL,
    correo character varying(50),
    clave character varying(500),
    sal character varying(500)
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    16693    hospedaje_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hospedaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hospedaje_id_seq;
       public          postgres    false    200            �           0    0    hospedaje_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.hospedaje_id_seq OWNED BY public."Hospedaje".id;
          public          postgres    false    201            �            1259    16708    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    202            �           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."User".id;
          public          postgres    false    203            *           2604    16695    Hospedaje id    DEFAULT     n   ALTER TABLE ONLY public."Hospedaje" ALTER COLUMN id SET DEFAULT nextval('public.hospedaje_id_seq'::regclass);
 =   ALTER TABLE public."Hospedaje" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            +           2604    16710    User id    DEFAULT     d   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �          0    16687 	   Hospedaje 
   TABLE DATA           p   COPY public."Hospedaje" (titulo, tipo, direccion, ubicacion, precio, servicios, imagen, id, iduser) FROM stdin;
    public          postgres    false    200   =       �          0    16705    User 
   TABLE DATA           S   COPY public."User" (nombre, cedula, ubicacion, id, correo, clave, sal) FROM stdin;
    public          postgres    false    202   �       �           0    0    hospedaje_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hospedaje_id_seq', 4, true);
          public          postgres    false    201            �           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 4, true);
          public          postgres    false    203            -           2606    16697    Hospedaje hospedaje_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Hospedaje"
    ADD CONSTRAINT hospedaje_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Hospedaje" DROP CONSTRAINT hospedaje_pkey;
       public            postgres    false    200            /           2606    16712    User user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."User" DROP CONSTRAINT user_pkey;
       public            postgres    false    202            �   �   x���K�0Eǯ�p�� q�ĩqL-���?�Ջ��
�ܜ;:�@�w�.��Jw,�	�7h��1S[�;�z��P�{&�K+d�T��f~�4
�,I�4Ϗ1�ch�`�w��W�P��$İ'ů@[����6�0%\�r0Ϣn��C�n,�&yI	!_��      �   �   x�]�]O�0F��_����F�b����L&KЄ������BW��׃zCL��'��$Ft5��vB
+,�h��'���B$�o�+��=Im���[��yʾ&i}~ ��	\����E�2�.�s���*D�捑�~����=+l�,C|0_�wVת��������{������j���#m�u˩b��,b�;G�?��vx���c�~�BΪ '���]��	����T�     