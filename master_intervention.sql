PGDMP     !                    v            postgres    9.6.8    9.6.8     �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �            1259    16714    MASTER_INTERVENTION    TABLE     �  CREATE TABLE public."MASTER_INTERVENTION" (
    "ID" integer DEFAULT nextval('public."MASTER_INTERVENTION_ID_seq"'::regclass) NOT NULL,
    "INTERVENTION_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "FILE_SOURCE" text
);
 )   DROP TABLE public."MASTER_INTERVENTION";
       public         postgres    false            �	          0    16714    MASTER_INTERVENTION 
   TABLE DATA               �   COPY public."MASTER_INTERVENTION" ("ID", "INTERVENTION_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "FILE_SOURCE") FROM stdin;
    public       postgres    false    246   *       V	           2606    17067 ,   MASTER_INTERVENTION MASTER_INTERVENTION_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."MASTER_INTERVENTION"
    ADD CONSTRAINT "MASTER_INTERVENTION_pkey" PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public."MASTER_INTERVENTION" DROP CONSTRAINT "MASTER_INTERVENTION_pkey";
       public         postgres    false    246    246            �	   l   x�34���OL��K�4���CA9	.CSN����Ģ�TLU)0).#cΐ���l����q� ��32rS�J��1�t*��N-R�,�bH�)LIXjqqjVE1z\\\ 4i:�     