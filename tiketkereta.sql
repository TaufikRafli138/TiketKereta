PGDMP         )                u            smk_rpl_bisa    9.6.5    9.6.5     t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            v           1262    16394    smk_rpl_bisa    DATABASE     �   CREATE DATABASE smk_rpl_bisa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE smk_rpl_bisa;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            w           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            x           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16465    City    TABLE     u   CREATE TABLE "City" (
    "City_ID" integer NOT NULL,
    "City_Name" text NOT NULL,
    "Is_valid" text NOT NULL
);
    DROP TABLE public."City";
       public         smk_rpl    false    3            �            1259    16395    Customer    TABLE     �   CREATE TABLE "Customer" (
    "ID_Customer" integer NOT NULL,
    "Nama_Customer" text NOT NULL,
    "No_identitas" text NOT NULL,
    "Alamat Customer" text NOT NULL,
    "Email Customer" text NOT NULL,
    "No_telefon" text NOT NULL
);
    DROP TABLE public."Customer";
       public         smk_rpl    false    3            �            1259    16456    Master_Schedule    TABLE     m   CREATE TABLE "Master_Schedule" (
    "Schedule_ID" integer,
    "Route_ID" integer,
    "City_ID" integer
);
 %   DROP TABLE public."Master_Schedule";
       public         smk_rpl    false    3            �            1259    16449    Master_Schedule_detail     TABLE     �   CREATE TABLE "Master_Schedule_detail " (
    "Master_Schedule_detail_ID" integer NOT NULL,
    eta text NOT NULL,
    etd text NOT NULL,
    "Schedule_ID" integer NOT NULL,
    "Rails_ID" integer NOT NULL
);
 -   DROP TABLE public."Master_Schedule_detail ";
       public         smk_rpl    false    3            �            1259    16471    Rails    TABLE     x   CREATE TABLE "Rails" (
    "Rails_ID" integer NOT NULL,
    "Rails_Name" text NOT NULL,
    "Capacity" text NOT NULL
);
    DROP TABLE public."Rails";
       public         smk_rpl    false    3            �            1259    16459    Route    TABLE     x   CREATE TABLE "Route" (
    "Route_ID" integer NOT NULL,
    "Route_Name" text NOT NULL,
    "is_Valid" text NOT NULL
);
    DROP TABLE public."Route";
       public         smk_rpl    false    3            �            1259    16446    Ticket    TABLE     >   CREATE TABLE "Ticket" (
    "ID Customer" integer NOT NULL
);
    DROP TABLE public."Ticket";
       public         postgres    false    3            �            1259    16400    User    TABLE     z   CREATE TABLE "User" (
    "ID_User" integer NOT NULL,
    "Password" text NOT NULL,
    "ID_Customer" integer NOT NULL
);
    DROP TABLE public."User";
       public         postgres    false    3            p          0    16465    City 
   TABLE DATA               =   COPY "City" ("City_ID", "City_Name", "Is_valid") FROM stdin;
    public       smk_rpl    false    191   �       j          0    16395    Customer 
   TABLE DATA               �   COPY "Customer" ("ID_Customer", "Nama_Customer", "No_identitas", "Alamat Customer", "Email Customer", "No_telefon") FROM stdin;
    public       smk_rpl    false    185   �       n          0    16456    Master_Schedule 
   TABLE DATA               J   COPY "Master_Schedule" ("Schedule_ID", "Route_ID", "City_ID") FROM stdin;
    public       smk_rpl    false    189          m          0    16449    Master_Schedule_detail  
   TABLE DATA               n   COPY "Master_Schedule_detail " ("Master_Schedule_detail_ID", eta, etd, "Schedule_ID", "Rails_ID") FROM stdin;
    public       smk_rpl    false    188   +       q          0    16471    Rails 
   TABLE DATA               @   COPY "Rails" ("Rails_ID", "Rails_Name", "Capacity") FROM stdin;
    public       smk_rpl    false    192   H       o          0    16459    Route 
   TABLE DATA               @   COPY "Route" ("Route_ID", "Route_Name", "is_Valid") FROM stdin;
    public       smk_rpl    false    190   e       l          0    16446    Ticket 
   TABLE DATA               *   COPY "Ticket" ("ID Customer") FROM stdin;
    public       postgres    false    187   �       k          0    16400    User 
   TABLE DATA               ?   COPY "User" ("ID_User", "Password", "ID_Customer") FROM stdin;
    public       postgres    false    186   �       �           2606    16399    Customer Customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("ID_Customer");
 D   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "Customer_pkey";
       public         smk_rpl    false    185    185            �           2606    16407    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY "User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("ID_User");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public         postgres    false    186    186            p      x������ � �      j      x������ � �      n      x������ � �      m      x������ � �      q      x������ � �      o      x������ � �      l      x������ � �      k      x������ � �     