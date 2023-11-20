PGDMP      2             
    {            Restaurante    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    Restaurante    DATABASE     �   CREATE DATABASE "Restaurante" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Restaurante";
                postgres    false            �            1259    16414    product    TABLE     �   CREATE TABLE public.product (
    id integer NOT NULL,
    productname character varying(100) NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16435    product_id_seq    SEQUENCE     �   ALTER TABLE public.product ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16429    sells    TABLE     �   CREATE TABLE public.sells (
    id integer NOT NULL,
    nombreproducto character varying(100) NOT NULL,
    unidad integer NOT NULL
);
    DROP TABLE public.sells;
       public         heap    postgres    false            �            1259    16434    sells_id_seq    SEQUENCE     �   ALTER TABLE public.sells ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sells_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16424    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    age integer NOT NULL,
    password character varying(100) NOT NULL,
    role character varying(100) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �          0    16414    product 
   TABLE DATA           9   COPY public.product (id, productname, price) FROM stdin;
    public          postgres    false    215          �          0    16429    sells 
   TABLE DATA           ;   COPY public.sells (id, nombreproducto, unidad) FROM stdin;
    public          postgres    false    217   �       �          0    16424    users 
   TABLE DATA           B   COPY public.users (id, username, age, password, role) FROM stdin;
    public          postgres    false    216   �       �           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 8, true);
          public          postgres    false    219            �           0    0    sells_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sells_id_seq', 4, true);
          public          postgres    false    218            $           2606    16418    product Product_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.product DROP CONSTRAINT "Product_pkey";
       public            postgres    false    215            (           2606    16433    sells sells_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sells
    ADD CONSTRAINT sells_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sells DROP CONSTRAINT sells_pkey;
       public            postgres    false    217            &           2606    16428    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �   `   x�3�tN,�K-VH�I�KN,�46 .S΀���Ĕ|ݒ̜Ă�DN#c��9g@bP�	H�g@~NN>��)�g��XT�_���YQ��i����� xfc      �   4   x�3�t�-H�KLI,�4�2�N�I��,H, �M�L8]�s��F\1z\\\ m-�      �   �   x�]��j�0D��)���^�B)���nD�`W���H.�8�s�03���0�=>BI>A�N,���S\��\:"M��}�?�쯰���6�T��y���
�����c�)�j;b�E������	��������r�-�7��PGjΘ�6��O]%\��'U�k��%l3��T������;�yX�     