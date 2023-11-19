PGDMP                  
    {            vallet    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    vallet    DATABASE     z   CREATE DATABASE vallet WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE vallet;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16406    Types    TABLE     ^   CREATE TABLE public."Types" (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public."Types";
       public         heap    postgres    false    4            �            1259    16405    Types_id_seq    SEQUENCE     �   ALTER TABLE public."Types" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Types_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218    4            �            1259    16398    Users    TABLE     �   CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying NOT NULL,
    login character varying NOT NULL,
    "Password" character varying NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false    4            �            1259    16397    users_id_seq    SEQUENCE     �   ALTER TABLE public."Users" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    216            �            1259    16414 
   userstypes    TABLE     v   CREATE TABLE public.userstypes (
    id integer NOT NULL,
    userid integer NOT NULL,
    typeid integer NOT NULL
);
    DROP TABLE public.userstypes;
       public         heap    postgres    false    4            �            1259    16413    userstypes_id_seq    SEQUENCE     �   ALTER TABLE public.userstypes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.userstypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220    4            �          0    16406    Types 
   TABLE DATA                 public          postgres    false    218   �       �          0    16398    Users 
   TABLE DATA                 public          postgres    false    216   �       �          0    16414 
   userstypes 
   TABLE DATA                 public          postgres    false    220   �       �           0    0    Types_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Types_id_seq"', 1, false);
          public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    215            �           0    0    userstypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.userstypes_id_seq', 1, false);
          public          postgres    false    219            '           2606    16412    Types types_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public."Types"
    ADD CONSTRAINT types_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Types" DROP CONSTRAINT types_pk;
       public            postgres    false    218            %           2606    16404    Users users_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT users_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Users" DROP CONSTRAINT users_pk;
       public            postgres    false    216            )           2606    16418    userstypes userstypes_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.userstypes
    ADD CONSTRAINT userstypes_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.userstypes DROP CONSTRAINT userstypes_pk;
       public            postgres    false    220            *           2606    16419    userstypes userstypes_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.userstypes
    ADD CONSTRAINT userstypes_fk FOREIGN KEY (userid) REFERENCES public."Users"(id);
 B   ALTER TABLE ONLY public.userstypes DROP CONSTRAINT userstypes_fk;
       public          postgres    false    216    4645    220            +           2606    16424    userstypes userstypes_fk_1    FK CONSTRAINT     z   ALTER TABLE ONLY public.userstypes
    ADD CONSTRAINT userstypes_fk_1 FOREIGN KEY (typeid) REFERENCES public."Types"(id);
 D   ALTER TABLE ONLY public.userstypes DROP CONSTRAINT userstypes_fk_1;
       public          postgres    false    4647    220    218            �   
   x���          �   
   x���          �   
   x���         