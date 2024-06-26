PGDMP                       |            logroshacks    16.2    16.2 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    logroshacks    DATABASE     �   CREATE DATABASE logroshacks WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE logroshacks;
                postgres    false            �            1259    16409    Logro    TABLE     �   CREATE TABLE public."Logro" (
    id integer NOT NULL,
    titulo character varying,
    "Fecha" timestamp without time zone,
    "Area" character varying,
    "Descripcion" character varying,
    foto bytea
);
    DROP TABLE public."Logro";
       public         heap    postgres    false            �            1259    16408    Logro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Logro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Logro_id_seq";
       public          postgres    false    216                       0    0    Logro_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Logro_id_seq" OWNED BY public."Logro".id;
          public          postgres    false    215            �            1259    16427    Usuaria    TABLE     �   CREATE TABLE public."Usuaria" (
    id integer NOT NULL,
    "Nombre" character varying,
    "Contraseña" character varying,
    "Fechanacimiento" timestamp with time zone,
    correo character varying,
    foto bytea,
    idlogros integer
);
    DROP TABLE public."Usuaria";
       public         heap    postgres    false            �            1259    16426    Usuaria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuaria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Usuaria_id_seq";
       public          postgres    false    218                       0    0    Usuaria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Usuaria_id_seq" OWNED BY public."Usuaria".id;
          public          postgres    false    217            �            1259    16441    like    TABLE     �   CREATE TABLE public."like" (
    id integer NOT NULL,
    "Cantidadlike" numeric,
    idusuaria integer,
    idlogro integer
);
    DROP TABLE public."like";
       public         heap    postgres    false            �            1259    16440    like_id_seq    SEQUENCE     �   CREATE SEQUENCE public.like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.like_id_seq;
       public          postgres    false    220                       0    0    like_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.like_id_seq OWNED BY public."like".id;
          public          postgres    false    219            �            1259    16523    login    TABLE     s   CREATE TABLE public.login (
    id integer NOT NULL,
    idusuaria integer,
    "Contraseña" character varying
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    16522    login_id_seq    SEQUENCE     �   CREATE SEQUENCE public.login_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.login_id_seq;
       public          postgres    false    222                       0    0    login_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.login_id_seq OWNED BY public.login.id;
          public          postgres    false    221            _           2604    16412    Logro id    DEFAULT     h   ALTER TABLE ONLY public."Logro" ALTER COLUMN id SET DEFAULT nextval('public."Logro_id_seq"'::regclass);
 9   ALTER TABLE public."Logro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            `           2604    16430 
   Usuaria id    DEFAULT     l   ALTER TABLE ONLY public."Usuaria" ALTER COLUMN id SET DEFAULT nextval('public."Usuaria_id_seq"'::regclass);
 ;   ALTER TABLE public."Usuaria" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            a           2604    16444    like id    DEFAULT     d   ALTER TABLE ONLY public."like" ALTER COLUMN id SET DEFAULT nextval('public.like_id_seq'::regclass);
 8   ALTER TABLE public."like" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            b           2604    16526    login id    DEFAULT     d   ALTER TABLE ONLY public.login ALTER COLUMN id SET DEFAULT nextval('public.login_id_seq'::regclass);
 7   ALTER TABLE public.login ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �          0    16409    Logro 
   TABLE DATA           S   COPY public."Logro" (id, titulo, "Fecha", "Area", "Descripcion", foto) FROM stdin;
    public          postgres    false    216   &                 0    16427    Usuaria 
   TABLE DATA           k   COPY public."Usuaria" (id, "Nombre", "Contraseña", "Fechanacimiento", correo, foto, idlogros) FROM stdin;
    public          postgres    false    218   /&                 0    16441    like 
   TABLE DATA           H   COPY public."like" (id, "Cantidadlike", idusuaria, idlogro) FROM stdin;
    public          postgres    false    220   L&                 0    16523    login 
   TABLE DATA           =   COPY public.login (id, idusuaria, "Contraseña") FROM stdin;
    public          postgres    false    222   i&                  0    0    Logro_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Logro_id_seq"', 1, false);
          public          postgres    false    215                       0    0    Usuaria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Usuaria_id_seq"', 1, false);
          public          postgres    false    217                       0    0    like_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.like_id_seq', 1, false);
          public          postgres    false    219                       0    0    login_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.login_id_seq', 1, false);
          public          postgres    false    221            h           2606    16448    like Pklike 
   CONSTRAINT     M   ALTER TABLE ONLY public."like"
    ADD CONSTRAINT "Pklike" PRIMARY KEY (id);
 9   ALTER TABLE ONLY public."like" DROP CONSTRAINT "Pklike";
       public            postgres    false    220            f           2606    16434    Usuaria Pkusuaria 
   CONSTRAINT     S   ALTER TABLE ONLY public."Usuaria"
    ADD CONSTRAINT "Pkusuaria" PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."Usuaria" DROP CONSTRAINT "Pkusuaria";
       public            postgres    false    218            d           2606    16416    Logro idlogros 
   CONSTRAINT     N   ALTER TABLE ONLY public."Logro"
    ADD CONSTRAINT idlogros PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Logro" DROP CONSTRAINT idlogros;
       public            postgres    false    216            j           2606    16530    login pklogin 
   CONSTRAINT     K   ALTER TABLE ONLY public.login
    ADD CONSTRAINT pklogin PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.login DROP CONSTRAINT pklogin;
       public            postgres    false    222            k           2606    16435    Usuaria FKlogro    FK CONSTRAINT     u   ALTER TABLE ONLY public."Usuaria"
    ADD CONSTRAINT "FKlogro" FOREIGN KEY (idlogros) REFERENCES public."Logro"(id);
 =   ALTER TABLE ONLY public."Usuaria" DROP CONSTRAINT "FKlogro";
       public          postgres    false    216    4708    218            l           2606    16454    like FKusuaria    FK CONSTRAINT     w   ALTER TABLE ONLY public."like"
    ADD CONSTRAINT "FKusuaria" FOREIGN KEY (idusuaria) REFERENCES public."Usuaria"(id);
 <   ALTER TABLE ONLY public."like" DROP CONSTRAINT "FKusuaria";
       public          postgres    false    4710    220    218            m           2606    16449    like Fklogro    FK CONSTRAINT     q   ALTER TABLE ONLY public."like"
    ADD CONSTRAINT "Fklogro" FOREIGN KEY (idlogro) REFERENCES public."Logro"(id);
 :   ALTER TABLE ONLY public."like" DROP CONSTRAINT "Fklogro";
       public          postgres    false    220    216    4708            n           2606    16531    login fk-usuaria    FK CONSTRAINT     w   ALTER TABLE ONLY public.login
    ADD CONSTRAINT "fk-usuaria" FOREIGN KEY (idusuaria) REFERENCES public."Usuaria"(id);
 <   ALTER TABLE ONLY public.login DROP CONSTRAINT "fk-usuaria";
       public          postgres    false    222    218    4710            �      x������ � �            x������ � �            x������ � �            x������ � �     