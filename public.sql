PGDMP     3    2                v            postgres    9.6.8    9.6.8 m   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    12401    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE postgres;
             postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2981                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            >           1255    16393    update_timestamp()    FUNCTION     �   CREATE FUNCTION public.update_timestamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  BEGIN
    NEW."UpdatedInDB" := LOCALTIMESTAMP(0);
    RETURN NEW;
  END;
$$;
 )   DROP FUNCTION public.update_timestamp();
       public       postgres    false    4    2            �            1259    16394    ALERT_SUBSCRIBER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."ALERT_SUBSCRIBER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ALERT_SUBSCRIBER_ID_seq";
       public       postgres    false    4            �            1259    16396    ALERT_SUBSCRIBER    TABLE     �  CREATE TABLE public."ALERT_SUBSCRIBER" (
    "ALERT_SUBSCRIBER_ID" integer DEFAULT nextval('public."ALERT_SUBSCRIBER_ID_seq"'::regclass) NOT NULL,
    "USER_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "SUBSCRIBE" text,
    "LAST_SEND" timestamp without time zone,
    "CLIENT_SITE_ID" integer
);
 &   DROP TABLE public."ALERT_SUBSCRIBER";
       public         postgres    false    186    4            �            1259    16403 &   APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq";
       public       postgres    false    4            �            1259    16405    APP_CLIENT_ACCESS    TABLE     7  CREATE TABLE public."APP_CLIENT_ACCESS" (
    "ID" integer DEFAULT nextval('public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "READ_PRIV" integer DEFAULT 0,
    "EDIT_PRIV" integer DEFAULT 0,
    "DELETE_PRIV" integer DEFAULT 0,
    "ADD_PRIV" integer DEFAULT 0,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "MENU_ID" integer,
    "IS_DELETE" integer
);
 '   DROP TABLE public."APP_CLIENT_ACCESS";
       public         postgres    false    188    4            �            1259    16416 %   CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq";
       public       postgres    false    4            �            1259    16418    APP_CLIENT_FORM_UPLOAD_DETAIL    TABLE     �  CREATE TABLE public."APP_CLIENT_FORM_UPLOAD_DETAIL" (
    "FILE_UPLOAD_DETAIL_ID" integer DEFAULT nextval('public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"'::regclass) NOT NULL,
    "PATH" text,
    "FILE_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "INFO_CLIENT_ID" integer
);
 3   DROP TABLE public."APP_CLIENT_FORM_UPLOAD_DETAIL";
       public         postgres    false    190    4            �            1259    16425 -   APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq";
       public       postgres    false    4            �            1259    16427    APP_CLIENT_HEADER_ACCESS    TABLE     �  CREATE TABLE public."APP_CLIENT_HEADER_ACCESS" (
    "HEADER_ACCESS_ID" integer DEFAULT nextval('public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"'::regclass) NOT NULL,
    "CLIENT_SITE_ID" integer,
    "MENU_ID" integer,
    "CLIENT_TEMPLATE_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 .   DROP TABLE public."APP_CLIENT_HEADER_ACCESS";
       public         postgres    false    192    4            �            1259    16434 "   APP_CLIENT_MENU_CLIENT_MENU_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq";
       public       postgres    false    4            �            1259    16436    APP_CLIENT_MENU    TABLE     o  CREATE TABLE public."APP_CLIENT_MENU" (
    "MENU_ID" integer DEFAULT nextval('public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"'::regclass) NOT NULL,
    "MENU_LEVEL" integer,
    "REFERENCE" integer,
    "TITLE" text,
    "URL" text,
    "REMARK" text,
    "TARGET" text,
    "IMAGE" text,
    "WEIGHT" integer,
    "SHOW" integer,
    "HIERARCHY" integer,
    "BASICHIERARCHY" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 %   DROP TABLE public."APP_CLIENT_MENU";
       public         postgres    false    194    4            �            1259    16443    APP_CLIENT_SITE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_SITE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."APP_CLIENT_SITE_ID_seq";
       public       postgres    false    4            �            1259    16445    APP_CLIENT_SITE    TABLE       CREATE TABLE public."APP_CLIENT_SITE" (
    "CLIENT_SITE_ID" integer DEFAULT nextval('public."APP_CLIENT_SITE_ID_seq"'::regclass) NOT NULL,
    "CLIENT_SITE_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "CLIENT_LOGO" text,
    "CLIENT_LOGO_WIDTH" integer,
    "CLIENT_LOGO_HEIGHT" integer,
    "CLIENT_WALLPAPER" text
);
 %   DROP TABLE public."APP_CLIENT_SITE";
       public         postgres    false    196    4            �            1259    16452 *   APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq";
       public       postgres    false    4            �            1259    16471 7   APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq";
       public       postgres    false    4            �            1259    16480 "   APP_CLIENT_USER_CLIENT_USER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_USER_CLIENT_USER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."APP_CLIENT_USER_CLIENT_USER_ID_seq";
       public       postgres    false    4            �            1259    16482    APP_CLIENT_USER    TABLE     �  CREATE TABLE public."APP_CLIENT_USER" (
    "USER_ID" integer DEFAULT nextval('public."APP_CLIENT_USER_CLIENT_USER_ID_seq"'::regclass) NOT NULL,
    "USERNAME" text,
    "EMAIL" text,
    "FIRST_NAME" text,
    "LAST_NAME" text,
    "PASSWORD" text,
    "COUNTER" integer,
    "STATUS" text,
    "REMARK" text,
    "CHANGE_PASSWORD" text,
    "FUNCTION_ACCESS" text,
    "INQUIRY_ACCESS" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "PHONE" text,
    "PHOTO" text,
    "CLIENT_SITE_ID" integer
);
 %   DROP TABLE public."APP_CLIENT_USER";
       public         postgres    false    201    4            �            1259    16489 .   APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq";
       public       postgres    false    4            �            1259    16491    APP_CLIENT_USER_GROUP    TABLE     �  CREATE TABLE public."APP_CLIENT_USER_GROUP" (
    "GROUP_ID" integer DEFAULT nextval('public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"'::regclass) NOT NULL,
    "GROUP_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 +   DROP TABLE public."APP_CLIENT_USER_GROUP";
       public         postgres    false    203    4            �            1259    16498    FILE_MANAGER_ID_seq    SEQUENCE     ~   CREATE SEQUENCE public."FILE_MANAGER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."FILE_MANAGER_ID_seq";
       public       postgres    false    4            �            1259    16500    APP_FILE_MANAGER    TABLE     �  CREATE TABLE public."APP_FILE_MANAGER" (
    "FILE_MANAGER_ID" integer DEFAULT nextval('public."FILE_MANAGER_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "SIZE" integer,
    "EXTENSION" text,
    "PATH" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "TITLE" text,
    "TYPE" text
);
 &   DROP TABLE public."APP_FILE_MANAGER";
       public         postgres    false    205    4            �            1259    16507    APP_FUNCTION_ACCESS    TABLE     �  CREATE TABLE public."APP_FUNCTION_ACCESS" (
    "ID" integer NOT NULL,
    "NAME" text,
    "READ_PRIV" integer DEFAULT 0,
    "EDIT_PRIV" integer DEFAULT 0,
    "DELETE_PRIV" integer DEFAULT 0,
    "ADD_PRIV" integer DEFAULT 0,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "MENU_ID" integer,
    "IS_DELETE" integer
);
 )   DROP TABLE public."APP_FUNCTION_ACCESS";
       public         postgres    false    4            �            1259    16517    APP_FUNCTION_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_FUNCTION_ACCESS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."APP_FUNCTION_ACCESS_ID_seq";
       public       postgres    false    4    207            �           0    0    APP_FUNCTION_ACCESS_ID_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."APP_FUNCTION_ACCESS_ID_seq" OWNED BY public."APP_FUNCTION_ACCESS"."ID";
            public       postgres    false    208            �            1259    16519    APP_LOG_LOG_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."APP_LOG_LOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."APP_LOG_LOG_ID_seq";
       public       postgres    false    4            �            1259    16521    APP_LOG    TABLE       CREATE TABLE public."APP_LOG" (
    "LOG_ID" integer DEFAULT nextval('public."APP_LOG_LOG_ID_seq"'::regclass) NOT NULL,
    "CREATE_TIME" timestamp without time zone,
    "ACTIVITY" text,
    "IP" text,
    "DETAIL" text,
    "USERNAME" text,
    "METHOD" text
);
    DROP TABLE public."APP_LOG";
       public         postgres    false    209    4            �            1259    16528     APP_LOG_CLIENT_LOG_CLIENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq";
       public       postgres    false    4            �            1259    16530    APP_LOG_CLIENT    TABLE     :  CREATE TABLE public."APP_LOG_CLIENT" (
    "LOG_ID" integer DEFAULT nextval('public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"'::regclass) NOT NULL,
    "CREATE_TIME" timestamp without time zone,
    "ACTIVITY" text,
    "IP" text,
    "DETAIL" text,
    "USERNAME" text,
    "CLIENT_SITE_NAME" text,
    "METHOD" text
);
 $   DROP TABLE public."APP_LOG_CLIENT";
       public         postgres    false    211    4            �            1259    16537    APP_MENU_MENU_ID_seq    SEQUENCE        CREATE SEQUENCE public."APP_MENU_MENU_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."APP_MENU_MENU_ID_seq";
       public       postgres    false    4            �            1259    16539    APP_MENU    TABLE     Z  CREATE TABLE public."APP_MENU" (
    "MENU_ID" integer DEFAULT nextval('public."APP_MENU_MENU_ID_seq"'::regclass) NOT NULL,
    "MENU_LEVEL" integer,
    "REFERENCE" integer,
    "TITLE" text,
    "URL" text,
    "REMARK" text,
    "TARGET" text,
    "IMAGE" text,
    "WEIGHT" integer,
    "SHOW" integer,
    "HIERARCHY" integer,
    "BASICHIERARCHY" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
    DROP TABLE public."APP_MENU";
       public         postgres    false    213    4            �            1259    16546    APP_ROUTE_ROUTE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_ROUTE_ROUTE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."APP_ROUTE_ROUTE_ID_seq";
       public       postgres    false    4            �            1259    16548 	   APP_ROUTE    TABLE     �  CREATE TABLE public."APP_ROUTE" (
    "ROUTE_ID" integer DEFAULT nextval('public."APP_ROUTE_ROUTE_ID_seq"'::regclass) NOT NULL,
    "SLUG" text,
    "CONTROLLER" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
    DROP TABLE public."APP_ROUTE";
       public         postgres    false    215    4            �            1259    16555    APP_SETTING_SETTING_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_SETTING_SETTING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."APP_SETTING_SETTING_ID_seq";
       public       postgres    false    4            �            1259    16557    APP_SETTING    TABLE     �   CREATE TABLE public."APP_SETTING" (
    "SETTING_ID" integer DEFAULT nextval('public."APP_SETTING_SETTING_ID_seq"'::regclass) NOT NULL,
    "SETTING_NAME" text,
    "SETTING_VALUE" text
);
 !   DROP TABLE public."APP_SETTING";
       public         postgres    false    217    4            �            1259    16461 *   APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq";
       public       postgres    false    4            �            1259    16564    APP_USER_USER_ID_seq    SEQUENCE        CREATE SEQUENCE public."APP_USER_USER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."APP_USER_USER_ID_seq";
       public       postgres    false    4            �            1259    16566    APP_USER    TABLE     �  CREATE TABLE public."APP_USER" (
    "USER_ID" integer DEFAULT nextval('public."APP_USER_USER_ID_seq"'::regclass) NOT NULL,
    "USERNAME" text,
    "EMAIL" text,
    "FIRST_NAME" text,
    "LAST_NAME" text,
    "PASSWORD" text,
    "COUNTER" integer,
    "STATUS" text,
    "REMARK" text,
    "CHANGE_PASSWORD" text,
    "FUNCTION_ACCESS" text,
    "INQUIRY_ACCESS" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "PHONE" text,
    "PHOTO" text
);
    DROP TABLE public."APP_USER";
       public         postgres    false    219    4            �            1259    16573    APP_USER_GROUP_GROUP_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_USER_GROUP_GROUP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."APP_USER_GROUP_GROUP_ID_seq";
       public       postgres    false    4            �            1259    16575    APP_USER_GROUP    TABLE     �  CREATE TABLE public."APP_USER_GROUP" (
    "GROUP_ID" integer DEFAULT nextval('public."APP_USER_GROUP_GROUP_ID_seq"'::regclass) NOT NULL,
    "GROUP_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "PHONE" text,
    "PHOTO" text
);
 $   DROP TABLE public."APP_USER_GROUP";
       public         postgres    false    221    4            �            1259    16591    FORM_ENTRY_FIELD_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."FORM_ENTRY_FIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."FORM_ENTRY_FIELD_ID_seq";
       public       postgres    false    4            �            1259    16593    FORM_ENTRY_FIELD    TABLE     �M  CREATE TABLE public."FORM_ENTRY_FIELD" (
    "ID" integer DEFAULT nextval('public."FORM_ENTRY_FIELD_ID_seq"'::regclass) NOT NULL,
    "SC" text,
    "IWO" text,
    "SPK" text,
    "VOY" text,
    "AREA" text,
    "SUPPLIER" text,
    "BUYER" text,
    "SELLER" text,
    "TRADER" text,
    "KONTRAK" text,
    "PRODUCT" text,
    "DATE_NOR" date,
    "TIME_NOR" time without time zone,
    "FWAL_BBLS" text,
    "FWAL_KL15" text,
    "FILE_ORDER" text,
    "FWAL_KLOBS" text,
    "REMARKS_NOR" text,
    "SELECT_PORT" text,
    "SHARING_FEE" text,
    "SL_GSV_BBLS" text,
    "SL_GSV_KL15" text,
    "DATE_BERTHED" date,
    "FWAL_LONGTON" text,
    "PRODUCT_TYPE" text,
    "SELECT_CARGO" text,
    "SL_GSV_KLOBS" text,
    "TIME_BERTHED" time without time zone,
    "BL_START_DATE" date,
    "BL_START_TIME" time without time zone,
    "DATE_ACCEPTED" date,
    "DATE_CONTRACT" date,
    "PORT_TERMINAL" text,
    "SAMPLE_SOURCE" text,
    "SELECT_CLIENT" text,
    "SFAL_TOV_BBLS" text,
    "SFAL_TOV_KL15" text,
    "ST_NOMINATION" text,
    "TIME_ACCEPTED" time without time zone,
    "DATE_COMMENCED" date,
    "DATE_COMPLETED" date,
    "FWAL_METRICTON" text,
    "SELECT_PRODUCT" text,
    "SFAL_TOV_KLOBS" text,
    "SL_GSV_LONGTON" text,
    "TIME_COMMENCED" time without time zone,
    "TIME_COMPLETED" time without time zone,
    "DATE_ANCHORAGED" date,
    "REMARKS_BERTHED" text,
    "RN_LETTER_ISSUE" text,
    "RN_NOTICE_ISSUE" text,
    "TIME_ANCHORAGED" time without time zone,
    "BL_QUANTITY_BBLS" text,
    "BL_QUANTITY_KL15" text,
    "DATE_KEY_MEETING" date,
    "DATE_OF_ANALYSIS" date,
    "REMARKS_ACCEPTED" text,
    "SF_QUANTITY_BBLS" text,
    "SF_QUANTITY_KL15" text,
    "SFAL_TOV_LONGTON" text,
    "SL_GSV_METRICTON" text,
    "TIME_KEY_MEETING" time without time zone,
    "VEF_LOADING_BBLS" text,
    "BL_QUANTITY_KLOBS" text,
    "BO_MDO_ON_ARRIVAL" text,
    "BO_MFO_ON_ARRIVAL" text,
    "OBQ_QUANTITY_BBLS" text,
    "OBQ_QUANTITY_KL15" text,
    "REMARKS_COMMENCED" text,
    "REMARKS_COMPLETED" text,
    "SF_QUANTITY_KLOBS" text,
    "SL_VS_BOL_R1_BBLS" text,
    "SL_VS_BOL_R1_KL15" text,
    "ACTIVITIES_REMARKS" text,
    "DATE_LOISPKPOWONOA" date,
    "DATE_VESSEL_SAILED" date,
    "LOADING_START_DATE" date,
    "LOADING_START_TIME" time without time zone,
    "OBQ_QUANTITY_KLOBS" text,
    "REMARKS_ANCHORAGED" text,
    "RN_STATEMENT_ISSUE" text,
    "SFAL_TOV_METRICTON" text,
    "SL_VS_BOL_R1_KLOBS" text,
    "TIME_VESSEL_SAILED" time without time zone,
    "BL_QUANTITY_LONGTON" text,
    "BO_MDO_ON_DEPARTURE" text,
    "BO_MFO_ON_DEPARTURE" text,
    "CLIENT_SITE_ID_FORM" text,
    "DATE_HOSE_CONNECTED" date,
    "DATE_VESSEL_ARRIVED" date,
    "REMARKS_KEY_MEETING" text,
    "SELECT_INTERVENTION" integer,
    "SF_QUANTITY_LONGTON" text,
    "TIME_HOSE_CONNECTED" time without time zone,
    "TIME_VESSEL_ARRIVED" time without time zone,
    "DISCHARGE_START_DATE" date,
    "DISCHARGE_START_TIME" time without time zone,
    "OBQ_QUANTITY_LONGTON" text,
    "SL_APPLIED_VEFL_BBLS" text,
    "SL_VS_BOL_R1_LONGTON" text,
    "BL_15_DERAJAT_CELCIUS" text,
    "BL_QUANTITY_METRICTON" text,
    "LOADING_COMPLETE_DATE" date,
    "LOADING_COMPLETE_TIME" time without time zone,
    "REMARKS_VESSEL_SAILED" text,
    "DATE_DOCUMENTS_ONBOARD" date,
    "DATE_LOADING_COMMENCED" date,
    "DATE_LOADING_COMPLETED" date,
    "DATE_SURVEYOR_ON_BOARD" date,
    "OBQ_QUANTITY_METRICTON" text,
    "REMARKS_HOSE_CONNECTED" text,
    "REMARKS_VESSEL_ARRIVED" text,
    "SF_QUANTITY_METRICTON" text,
    "SL_VS_BOL_R1_METRICTON" text,
    "TIME_DOCUMENTS_ONBOARD" time without time zone,
    "TIME_LOADING_COMMENCED" time without time zone,
    "TIME_LOADING_COMPLETED" time without time zone,
    "TIME_SURVEYOR_ON_BOARD" time without time zone,
    "DATE_SAMPLING_COMMENCED" date,
    "DATE_SAMPLING_COMPLETED" date,
    "DISCHARGE_COMPLETE_DATE" date,
    "DISCHARGE_COMPLETE_TIME" time without time zone,
    "SC_ON_ARRIVAL_DRAFT_AFT" text,
    "SC_ON_ARRIVAL_DRAFT_FWD" text,
    "TIME_SAMPLING_COMMENCED" time without time zone,
    "TIME_SAMPLING_COMPLETED" time without time zone,
    "DATE_CONNECTED_COMMENCED" date,
    "DATE_CONNECTED_COMPLETED" date,
    "SC_ON_ARRIVAL_DRAFT_LIST" text,
    "TIME_CONNECTED_COMMENCED" time without time zone,
    "TIME_CONNECTED_COMPLETED" time without time zone,
    "REMARKS_DOCUMENTS_ONBOARD" text,
    "REMARKS_LOADING_COMMENCED" text,
    "REMARKS_LOADING_COMPLETED" text,
    "REMARKS_SURVEYOR_ON_BOARD" text,
    "SC_ON_DEPARTURE_DRAFT_AFT" text,
    "SC_ON_DEPARTURE_DRAFT_FWD" text,
    "DATE_MEASUREMENT_COMMENCED" date,
    "DATE_MEASUREMENT_COMPLETED" date,
    "REMARKS_SAMPLING_COMMENCED" text,
    "REMARKS_SAMPLING_COMPLETED" text,
    "SC_ON_DEPARTURE_DRAFT_LIST" text,
    "SL_VEF_APPLIED_VS_BOL_BBLS" text,
    "SL_VEF_APPLIED_VS_BOL_KL15" text,
    "TIME_MEASUREMENT_COMMENCED" time without time zone,
    "TIME_MEASUREMENT_COMPLETED" time without time zone,
    "REMARKS_CONNECTED_COMMENCED" text,
    "REMARKS_CONNECTED_COMPLETED" text,
    "SL_VEF_APPLIED_VS_BOL_KLOBS" text,
    "REMARKS_MEASUREMENT_COMMENCED" text,
    "REMARKS_MEASUREMENT_COMPLETED" text,
    "SL_VEF_APPLIED_VS_BOL_LONGTON" text,
    "SL_VEF_APPLIED_VS_BOL_METRICTON" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "CLIENT_SITE_ID" integer,
    "SF_GSV_KLOBS" text,
    "SF_NSV_KLOBS" text,
    "SF_FREE_WATER_AL_BBLS" text,
    "SF_FREE_WATER_AL_KL15" text,
    "SF_SFAL_TOV_METRICTON" text,
    "SL_APPLIED_VEFL_KLOBS" text,
    "DATE_HOSE_DISCONNECTED" date,
    "SF_FREE_WATER_AL_KLOBS" text,
    "DATE_DISCHARGE_COMPLETED" date,
    "DATE_INPECTION_COMMENCED" date,
    "SF_FREE_WATER_AL_LONGTON" text,
    "TIME_DISCHARGE_COMMENCED" time without time zone,
    "TIME_DISCHARGE_COMPLETED" time without time zone,
    "TIME_INPECTION_COMMENCED" time without time zone,
    "DATE_INSPECTION_COMPLETED" date,
    "REMARKS_HOSE_DISCONNECTED" text,
    "SL_APPLIED_VEFL_METRICTON" text,
    "TIME_INSPECTION_COMPLETED" time without time zone,
    "SF_FREE_WATER_AL_METRICTON" text,
    "REMARKS_DISCHARGE_COMMENCED" text,
    "REMARKS_DISCHARGE_COMPLETED" text,
    "REMARKS_INPECTION_COMMENCED" text,
    "REMARKS_INSPECTION_COMPLETED" text,
    "DATE_HOSE_CONNECTED_COMMENCED" date,
    "DATE_HOSE_CONNECTED_COMPLETED" date,
    "SL_VEF_APPLIED_VS_BOL_R1_BBLS" text,
    "SL_VEF_APPLIED_VS_BOL_R1_KL15" text,
    "TIME_HOSE_CONNECTED_COMMENCED" time without time zone,
    "TIME_HOSE_CONNECTED_COMPLETED" time without time zone,
    "SL_VEF_APPLIED_VS_BOL_R1_KLOBS" text,
    "SF_SHORE_TANKS_NOMINATION_KLOBS" text,
    "DATE_CARGO_MEASUREMENT_COMMENCED" date,
    "DATE_CARGO_MEASUREMENT_COMPLETED" date,
    "REMARKS_HOSE_CONNECTED_COMMENCED" text,
    "REMARKS_HOSE_CONNECTED_COMPLETED" text,
    "SL_VEF_APPLIED_VS_BOL_R1_LONGTON" text,
    "TIME_CARGO_MEASUREMENT_COMMENCED" time without time zone,
    "TIME_CARGO_MEASUREMENT_COMPLETED" time without time zone,
    "SL_VEF_APPLIED_VS_BOL_R1_METRICTON" text,
    "REMARKS_CARGO_MEASUREMENT_COMMENCED" text,
    "REMARKS_CARGO_MEASUREMENT_COMPLETED" text,
    "BL_FLOW_METER" text,
    "BL_SHORE_TANK" text,
    "BL_SHIP_TANK" text,
    "FSOQ" text,
    "SURVEYOR_IN_CHARGE" text,
    "RN_NOTICE_ISSUE_DESCRIPTION" text,
    "RN_LETTER_ISSUE_DESCRIPTION" text,
    "RN_STATEMENT_ISSUE_DESCRIPTION" text,
    "DATE_A_AWEIGH" date,
    "TIME_A_AWEIGH" time(6) without time zone,
    "DATE_POB" date,
    "TIME_POB" time without time zone,
    "DATE_BERTHING" date,
    "TIME_BERTHING" time without time zone,
    "DATE_SBD_COMMENCED" date,
    "DATE_SBD_COMPLETED" date,
    "TIME_SBD_COMMENCED" time without time zone,
    "TIME_SBD_COMPLETED" time without time zone,
    "DATE_DISCHARGE_COMMENCED" date,
    "DATE_TANKS_INS_COMMENCED" date,
    "TIME_TANKS_INS_COMMENCED" time without time zone,
    "DATE_TANKS_INS_COMPLETED" date,
    "TIME_TANKS_INS_COMPLETED" time without time zone,
    "DATE_SVY_LEFT_VESSEL" date,
    "TIME_SVY_LEFT_VESSEL" time without time zone,
    "DATE_VESSEL_SAIL" date,
    "TIME_VESSEL_SAIL" time without time zone,
    "TIME_HOSE_DISCONNECTED" time(6) without time zone,
    "BL_SFAL_KL15" text,
    "BL_SFAL_BBLS" text,
    "BL_SFAL_METRICTON" text,
    "BL_SFAL_LONGTON" text,
    "SF_SFAL_KLOBS" text,
    "SF_SFAL_KL15" text,
    "SF_SFAL_BBLS" text,
    "SF_SFAL_METRICTON" text,
    "SF_SFAL_LONGTON" text,
    "SFBD_TOV_KLOBS" text,
    "SFBD_TOV_KL15" text,
    "SFBD_TOV_BBLS" text,
    "SFBD_TOV_METRICTON" text,
    "SFBD_TOV_LONGTON" text,
    "SFBD_GSV_KLOBS" text,
    "SFBD_GSV_BBLS" text,
    "SFBD_GSV_METRICTON" text,
    "SFBD_GSV_LONGTON" text,
    "ROBQ_KLOBS" text,
    "ROBQ_KL15" text,
    "ROBQ_BBLS" text,
    "ROBQ_METRICTON" text,
    "ROBQ_LONGTON" text,
    "BL_SFAL_KLOBS" text,
    "SFBD_GSV_KL15" text,
    "SLVS_BOL_R1_KLOBS" text,
    "SLVS_BOL_R1_KL15" text,
    "SLVS_BOL_R1_BBLS" text,
    "SLVS_BOL_R1_LONGTON" text,
    "SLVS_BOL_R1_METRICTON" text,
    "SFAL_VS_SFBD_R2_KLOBS" text,
    "SFAL_VS_SFBD_R2_KL15" text,
    "SFAL_VS_SFBD_R2_BBLS" text,
    "SFAL_VS_SFBD_R2_LONGTON" text,
    "SFAL_VS_SFBD_R2_METRICTON" text,
    "SFBD_VS_SR_R3_KLOBS" text,
    "SFBD_VS_SR_R3_KL15" text,
    "SFBD_VS_SR_R3_BBLS" text,
    "SFBD_VS_SR_R3_LONGTON" text,
    "SFBD_VS_SR_R3_METRICTON" text,
    "SR_VS_BOL_R4_KLOBS" text,
    "SR_VS_BOL_R4_KL15" text,
    "SR_VS_BOL_R4_BBLS" text,
    "SR_VS_BOL_R4_LONGTON" text,
    "SR_VS_BOL_R4_METRICTON" text,
    "VESSEL" text,
    "ALERT_PUSH" integer DEFAULT 0,
    "CLIENTS" text,
    "BL_GSV_KLOBS" text,
    "BL_GSV_KL15" text,
    "BL_GSV_BBLS" text,
    "BL_GSV_LONGTON" text,
    "BL_GSV_METRICTON" text,
    "BL_NSV_KLOBS" text,
    "BL_NSV_KL15" text,
    "BL_NSV_BBLS" text,
    "BL_NSV_LONGTON" text,
    "BL_NSV_METRICTON" text,
    "SF_GSV_KL15" text,
    "SF_GSV_BBLS" text,
    "SF_GSV_LONGTON" text,
    "SF_GSV_METRICTON" text,
    "SF_NSV_KL15" text,
    "SF_NSV_BBLS" text,
    "SF_NSV_LONGTON" text,
    "SF_NSV_METRICTON" text,
    "SF_SFAL_TOV_KLOBS" text,
    "SF_SFAL_TOV_KL15" text,
    "SF_SFAL_TOV_BBLS" text,
    "SF_SFAL_TOV_LONGTON" text,
    "SFAL_GSV_KLOBS" text,
    "SFAL_GSV_KL15" text,
    "SFAL_GSV_BBLS" text,
    "SFAL_GSV_LONGTON" text,
    "SFAL_GSV_METRICTON" text,
    "SFAL_NSV_KLOBS" text,
    "SFAL_NSV_KL15" text,
    "SFAL_NSV_BBLS" text,
    "SFAL_NSV_LONGTON" text,
    "SFAL_NSV_METRICTON" text,
    "VEFL_KLOBS" text,
    "VEFL_KL15" text,
    "VEFL_BBLS" text,
    "VEFL_LONGTON" text,
    "VEFL_METRICTON" text,
    "SL_APPLIED_VEFL_KL15" text,
    "SL_APPLIED_VEFL_LONGTON" text,
    "REMARKS_POB" text,
    "REMARKS_A_AWEIGH" text,
    "REMARKS_BERTHING" text,
    "REMARKS_SBD_COMMENCED" text,
    "REMARKS_SBD_COMPLETED" text,
    "REMARKS_TANKS_INS_COMMENCED" text,
    "REMARKS_TANKS_INS_COMPLETED" text,
    "REMARKS_SVY_LEFT_VESSEL" text,
    "REMARKS_VESSEL_SAIL" text,
    "SFAL_KLOBS" text,
    "SFAL_KL15" text,
    "SFAL_BBLS" text,
    "SFAL_LONGTON" text,
    "SFAL_METRICTON" text,
    "SF_SQ_KLOBS" text,
    "SF_SQ_KL15" text,
    "SF_SQ_BBLS" text,
    "SF_SQ_LONGTON" text,
    "SF_SQ_METRICTON" text,
    "FREE_WATER_KLOBS" text,
    "FREE_WATER_KL15" text,
    "FREE_WATER_BBLS" text,
    "FREE_WATER_LONGTON" text,
    "FREE_WATER_METRICTON" text,
    "SFBD_NSV_KLOBS" text,
    "SFBD_NSV_KL15" text,
    "SFBD_NSV_BBLS" text,
    "SFBD_NSV_LONGTON" text,
    "SFBD_NSV_METRICTON" text,
    "TIME_LOADING_BARGE_ARRIVED" text,
    "DATE_LOADING_BARGE_ARRIVED" text,
    "REMARKS_LOADING_BARGE_ARRIVED" text,
    "TIME_LOADING_NOR_TENDERED" text,
    "DATE_LOADING_NOR_TENDERED" text,
    "REMARKS_LOADING_NOR_TENDERED" text,
    "TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE" text,
    "DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE" text,
    "REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE" text,
    "TIME_LOADING_KEY_MEETING" text,
    "DATE_LOADING_KEY_MEETING" text,
    "REMARKS_LOADING_KEY_MEETING" text,
    "TIME_LOADING_NOR_ACCEPTED" text,
    "DATE_LOADING_NOR_ACCEPTED" text,
    "REMARKS_LOADING_NOR_ACCEPTED" text,
    "TIME_LOADING_VALVE_SEEALED" text,
    "DATE_LOADING_VALVE_SEEALED" text,
    "REMARKS_LOADING_VALVE_SEEALED" text,
    "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION" text,
    "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION" text,
    "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION" text,
    "TIME_LOADING_HOST_CONNECTED" text,
    "DATE_LOADING_HOST_CONNECTED" text,
    "REMARKS_LOADING_HOST_CONNECTED" text,
    "TIME_LOADING_LOADING_COMMENCED" text,
    "DATE_LOADING_LOADING_COMMENCED" text,
    "REMARKS_LOADING_LOADING_COMMENCED" text,
    "TIME_LOADING_LOADING_COMPLETED" text,
    "DATE_LOADING_LOADING_COMPLETED" text,
    "REMARKS_LOADING_LOADING_COMPLETED" text,
    "TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT" text,
    "DATE_LOADING_HOSE_ARMS_DISCONNECT" text,
    "REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT" text,
    "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text,
    "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text,
    "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text,
    "TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text,
    "DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text,
    "REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text,
    "TIME_DISCHARGE_BARGE_ARRIVED" text,
    "DATE_DISCHARGE_BARGE_ARRIVED" text,
    "REMARKS_DISCHARGE_BARGE_ARRIVED" text,
    "TIME_DISCHARGE_NOR_TENDERED" text,
    "DATE_DISCHARGE_NOR_TENDERED" text,
    "REMARKS_DISCHARGE_NOR_TENDERED" text,
    "TIME_DISCHARGE_KEY_MEETING" text,
    "DATE_DISCHARGE_KEY_MEETING" text,
    "REMARKS_DISCHARGE_KEY_MEETING" text,
    "TIME_DISCHARGE_NOR_ACCEPTED" text,
    "DATE_DISCHARGE_NOR_ACCEPTED" text,
    "REMARKS_DISCHARGE_NOR_ACCEPTED" text,
    "TIME_DISCHARGE_VALVE_SEEALED" text,
    "DATE_DISCHARGE_VALVE_SEEALED" text,
    "REMARKS_DISCHARGE_VALVE_SEEALED" text,
    "TIME_DISCHARGE_TANK_INSPECT_MEASURE" text,
    "DATE_DISCHARGE_TANK_INSPECT_MEASURE" text,
    "REMARKS_DISCHARGE_TANK_INSPECT_MEASURE" text,
    "TIME_VISUAL_INSPECTION_SAMPLING" text,
    "DATE_VISUAL_INSPECTION_SAMPLING" text,
    "REMARKS_VISUAL_INSPECTION_SAMPLING" text,
    "TIME_DISCHARGE_HOST_CONNECTED" text,
    "DATE_DISCHARGE_HOST_CONNECTED" text,
    "REMARKS_DISCHARGE_HOST_CONNECTED" text,
    "TIME_DISCHARGE_BUNKER_COMMENCED" text,
    "DATE_DISCHARGE_BUNKER_COMMENCED" text,
    "REMARKS_DISCHARGE_BUNKER_COMMENCED" text,
    "TIME_DISCHARGE_BUNKER_COMPLETED" text,
    "DATE_DISCHARGE_BUNKER_COMPLETED" text,
    "REMARKS_DISCHARGE_BUNKER_COMPLETED" text,
    "TIME_DATE_DISCHARGE_HOSE_DISCONNECT" text,
    "DATE_DISCHARGE_HOSE_DISCONNECT" text,
    "REMARKS_DATE_DISCHARGE_HOSE_DISCONNECT" text,
    "TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text,
    "DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text,
    "REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text,
    "TIME_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text,
    "DATE_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text,
    "REMARKS_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text,
    "TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text,
    "DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text,
    "REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text,
    "TIME_DISCHARGE_BARGE_LEAVE_SHIP" text,
    "DATE_DISCHARGE_BARGE_LEAVE_SHIP" text,
    "REMARKS_DISCHARGE_BARGE_LEAVE_SHIP" text,
    "INITIAL_READOUT_KLOBS" text,
    "INITIAL_READOUT_KL15" text,
    "INITIAL_READOUT_METRIC_TONS" text,
    "FINAL_READOUT_KLOBS" text,
    "FINAL_READOUT_KL15" text,
    "FINAL_READOUT_METRIC_TONS" text,
    "DIFFERENCE_KLOBS" text,
    "DIFFERENCE_KL15" text,
    "DIFFERENCE_METRIC_TONS" text,
    "METER_FACTOR_KLOBS" text,
    "CORD_VOL_DELIVERED_KLOBS" text,
    "CORD_VOL_DELIVERED_KL15" text,
    "CORD_VOL_DELIVERED_METRIC_TONS" text,
    "DENSITY15DEG_KLOBS" text,
    "SUPPLY_LOSS_KLOBS" text,
    "SUPPLY_LOSS_KL15" text,
    "SUPPLY_LOSS_METRIC_TONS" text,
    "TIME_LOADING_TANK_INSPECT_MEASURE" text,
    "DATE_LOADING_TANK_INSPECT_MEASURE" text,
    "REMARKS_LOADING_TANK_INSPECT_MEASURE" text,
    "TIME_LOADING_TANK_INSPECT_METER_VERF" text,
    "DATE_LOADING_TANK_INSPECT_METER_VERF" text,
    "REMARKS_LOADING_TANK_INSPECT_METER_VERF" text,
    "TIME_LOADING_VISUAL_INSPEC_SAMPL" text,
    "DATE_LOADING_VISUAL_INSPEC_SAMPL" text,
    "REMARKS_LOADING_VISUAL_INSPEC_SAMPL" text,
    "TIME_LOADING_TANK_INSPECT_MEASR_FINAL" text,
    "DATE_LOADING_TANK_INSPECT_MEASR_FINAL" text,
    "REMARKS_LOADING_TANK_INSPECT_MEASR_FINAL" text,
    "TIME_LOADING_TANK_INSPECT_METER_FINAL" text,
    "DATE_LOADING_TANK_INSPECT_METER_FINAL" text,
    "REMARKS_LOADING_TANK_INSPECT_METER_FINAL" text,
    "TIME_LOADING_BARGE_LEAVE_DEPOT" text,
    "DATE_LOADING_BARGE_LEAVE_DEPOT" text,
    "REMARKS_LOADING_BARGE_LEAVE_DEPOT" text,
    "TIME_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text,
    "DATE_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text,
    "REMARKS_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text,
    "TIME_DISCHARGE_TANK_INSPECT_METER_VERF" text,
    "DATE_DISCHARGE_TANK_INSPECT_METER_VERF" text,
    "REMARKS_DISCHARGE_TANK_INSPECT_METER_VERF" text,
    "TIME_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text,
    "DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text,
    "REMARKS_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text,
    "TIME_DISCHARGE_VISUAL_INSPEC_SAMPL" text,
    "DATE_DISCHARGE_VISUAL_INSPEC_SAMPL" text,
    "REMARKS_DISCHARGE_VISUAL_INSPEC_SAMPL" text,
    "TIME_DISCHARGE_TANK_INSPECT_METER_FINAL" text,
    "DATE_DISCHARGE_TANK_INSPECT_METER_FINAL" text,
    "REMARKS_DISCHARGE_TANK_INSPECT_METER_FINAL" text,
    "BARGE_BEFORE_LOADING_KLOBS" text,
    "BARGE_BEFORE_LOADING_KL15" text,
    "BARGE_BEFORE_LOADING_METRIC_TONS" text,
    "BARGE_AFTER_LOADING_KLOBS" text,
    "BARGE_AFTER_LOADING_KL15" text,
    "BARGE_AFTER_LOADING_METRIC_TONS" text,
    "BARGE_LOADED_KLOBS" text,
    "BARGE_LOADED_KL15" text,
    "BARGE_LOADED_METRIC_TONS" text,
    "BARGE_BEFORE_DISCHARGE_KLOBS" text,
    "BARGE_BEFORE_DISCHARGE_KL15" text,
    "BARGE_BEFORE_DISCHARGE_METRIC_TONS" text,
    "BARGE_AFTER_DISCHARGE_KLOBS" text,
    "BARGE_AFTER_DISCHARGE_KL15" text,
    "BARGE_AFTER_DISCHARGE_METRIC_TONS" text,
    "BARGE_DISCHARGE_KLOBS" text,
    "BARGE_DISCHARGE_KL15" text,
    "BARGE_DISCHARGE_METRIC_TONS" text,
    "BARGE_BEFORE_RECEIVE_KLOBS" text,
    "BARGE_BEFORE_RECEIVE_KL15" text,
    "BARGE_BEFORE_RECEIVE_METRIC_TONS" text,
    "BARGE_AFTER_RECEIVE_KLOBS" text,
    "BARGE_AFTER_RECEIVE_KL15" text,
    "BARGE_AFTER_RECEIVE_METRIC_TONS" text,
    "BARGE_RECEIVE_KLOBS" text,
    "BARGE_RECEIVE_KL15" text,
    "BARGE_RECEIVE_METRIC_TONS" text,
    "LOADING_LOSS_R1_KLOBS" text,
    "LOADING_LOSS_R1_KL15" text,
    "LOADING_LOSS_R1_METRIC_TONS" text,
    "TRANSPORTATION_LOSS_R2_KLOBS" text,
    "TRANSPORTATION_LOSS_R2_KL15" text,
    "TRANSPORTATION_LOSS_R2_METRIC_TONS" text,
    "DISCHARGE_LOSS_R3_KLOBS" text,
    "DISCHARGE_LOSS_R3_KL15" text,
    "DISCHARGE_LOSS_R3_METRIC_TONS" text,
    "SUPPLY_LOSS_R4_KLOBS" text,
    "SUPPLY_LOSS_R4_KL15" text,
    "SUPPLY_LOSS_R4_METRIC_TONS" text,
    "SF_QUANTITY_METRICTON	" text,
    "SF_SHORE_RECEIVED_KLOBS" text,
    "SF_SHORE_RECEIVED_KL15" text,
    "SF_SHORE_RECEIVED_BBLS" text,
    "SF_SHORE_RECEIVED_LONGTON" text,
    "SF_SHORE_RECEIVED_METRICTON" text,
    "SF_STU" text,
    "SF_DENSITY_15C" text,
    "SFAL_VS_SF_KLOBS" text,
    "SFAL_VS_SF_KL15" text,
    "SFAL_VS_SF_BBLS" text,
    "SFAL_VS_SF_LONGTON" text,
    "SFAL_VS_SF_METRICTON" text,
    "SFBD_VS_SR_KLOBS" text,
    "SFBD_VS_SR_KL15" text,
    "SFBD_VS_SR_BBLS" text,
    "SFBD_VS_SR_LONGTON" text,
    "SFBD_VS_SR_METRICTON" text,
    "SR_VS_BOL_KLOBS" text,
    "SR_VS_BOL_KL15" text,
    "SR_VS_BOL_BBLS" text,
    "SR_VS_BOL_LONGTON" text,
    "SR_VS_BOL_METRICTON" text
);
 &   DROP TABLE public."FORM_ENTRY_FIELD";
       public         postgres    false    224    4            �            1259    16582    FORM_ENTRY_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."FORM_ENTRY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."FORM_ENTRY_ID_seq";
       public       postgres    false    4            �            1259    16601    HEADER_INFO_CLIENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."HEADER_INFO_CLIENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."HEADER_INFO_CLIENT_ID_seq";
       public       postgres    false    4            �            1259    16603    HEADER_INFO_CLIENT    TABLE     !  CREATE TABLE public."HEADER_INFO_CLIENT" (
    "ID" integer DEFAULT nextval('public."HEADER_INFO_CLIENT_ID_seq"'::regclass) NOT NULL,
    "INTERVENTION_ID" text,
    "PRINCIPLE" text,
    "CONTRACT_ID" text,
    "PO" text,
    "RETAIL_REFERENCE" text,
    "PRODUCT_DETAIL" text,
    "FILE_ORDER" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "LOCATION_ID" integer
);
 (   DROP TABLE public."HEADER_INFO_CLIENT";
       public         postgres    false    226    4            �            1259    16610    INFO_CLIENT    TABLE     �  CREATE TABLE public."INFO_CLIENT" (
    "ID_INFO" integer NOT NULL,
    "VESSEL" integer DEFAULT 0 NOT NULL,
    "BARGE" integer DEFAULT 0 NOT NULL,
    "PORT" integer DEFAULT 0 NOT NULL,
    "DATE_LOADING_BARGE" date,
    "DATE_LOADING_CLIENT" date,
    "DEF_TERMINAL" date,
    "DEF_BARGE" date,
    "DEF_SHIP" date,
    "DELIV_ORDER_KL" numeric DEFAULT 0 NOT NULL,
    "DELIV_ORDER_KL15" numeric DEFAULT 0 NOT NULL,
    "OBQ_KL" numeric DEFAULT 0 NOT NULL,
    "OBQ_KL15" numeric DEFAULT 0 NOT NULL,
    "BAR_FIG_AFTERLOAD_KL" numeric DEFAULT 0 NOT NULL,
    "BAR_FIG_AFTERLOAD_KL15" numeric DEFAULT 0 NOT NULL,
    "BAR_FIG_BFDC_KL" numeric DEFAULT 0 NOT NULL,
    "BAR_FIG_BFDC_KL15" numeric DEFAULT 0 NOT NULL,
    "BAR_FIG_AFDC_KL" numeric DEFAULT 0 NOT NULL,
    "BAR_FIG_AFDC_KL15" numeric DEFAULT 0 NOT NULL,
    "SHIP_REC_KL" numeric DEFAULT 0 NOT NULL,
    "SHIP_REC_KL15" numeric DEFAULT 0 NOT NULL,
    "REMARKS" text,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text,
    "HEADER_INFO_CLIENT_ID" integer
);
 !   DROP TABLE public."INFO_CLIENT";
       public         postgres    false    4            �            1259    16631    KOMPONEN_HTML_ID_seq    SEQUENCE        CREATE SEQUENCE public."KOMPONEN_HTML_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."KOMPONEN_HTML_ID_seq";
       public       postgres    false    4            �            1259    16633    KOMPONEN_HTML    TABLE     v  CREATE TABLE public."KOMPONEN_HTML" (
    "ID" integer DEFAULT nextval('public."KOMPONEN_HTML_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "DATA" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 #   DROP TABLE public."KOMPONEN_HTML";
       public         postgres    false    229    4            �            1259    16640    KOMPONEN_JSON_ID_seq    SEQUENCE        CREATE SEQUENCE public."KOMPONEN_JSON_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."KOMPONEN_JSON_ID_seq";
       public       postgres    false    4            �            1259    16642    KOMPONEN_JSON    TABLE     w  CREATE TABLE public."KOMPONEN_JSON" (
    "ID" integer DEFAULT nextval('public."KOMPONEN_JSON_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "DATA" jsonb,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 #   DROP TABLE public."KOMPONEN_JSON";
       public         postgres    false    231    4            �            1259    16649    MAP_POINT_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."MAP_POINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MAP_POINT_ID_seq";
       public       postgres    false    4            �            1259    16651 	   MAP_POINT    TABLE     �  CREATE TABLE public."MAP_POINT" (
    "ID" integer DEFAULT nextval('public."MAP_POINT_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "LATITUDE" double precision,
    "LONGITUDE" double precision,
    "TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "ICON_ID" integer,
    "SITE_ID" integer,
    "CABANG_ID" integer
);
    DROP TABLE public."MAP_POINT";
       public         postgres    false    233    4            �            1259    16658    MASTER_BARGE_BARGE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_BARGE_BARGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."MASTER_BARGE_BARGE_ID_seq";
       public       postgres    false    4            �            1259    16660    MASTER_BARGE    TABLE     �  CREATE TABLE public."MASTER_BARGE" (
    "BARGE_ID" integer DEFAULT nextval('public."MASTER_BARGE_BARGE_ID_seq"'::regclass) NOT NULL,
    "BARGE_NAME" name,
    "BARGE_TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text
);
 "   DROP TABLE public."MASTER_BARGE";
       public         postgres    false    235    4            �            1259    16667    MASTER_BBM_BBM_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_BBM_BBM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."MASTER_BBM_BBM_ID_seq";
       public       postgres    false    4            �            1259    16669 
   MASTER_BBM    TABLE     �  CREATE TABLE public."MASTER_BBM" (
    "BBM_ID" integer DEFAULT nextval('public."MASTER_BBM_BBM_ID_seq"'::regclass) NOT NULL,
    "BBM_NAME" text,
    "BBM_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
     DROP TABLE public."MASTER_BBM";
       public         postgres    false    237    4            �            1259    16676    MASTER_CABANG_CABANG_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CABANG_CABANG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."MASTER_CABANG_CABANG_ID_seq";
       public       postgres    false    4            �            1259    16678    MASTER_CABANG    TABLE     �  CREATE TABLE public."MASTER_CABANG" (
    "CABANG_ID" integer DEFAULT nextval('public."MASTER_CABANG_CABANG_ID_seq"'::regclass) NOT NULL,
    "BRANCH_NAME" text,
    "BRANCH_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 #   DROP TABLE public."MASTER_CABANG";
       public         postgres    false    239    4            �            1259    16685    MASTER_CONTRACT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CONTRACT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MASTER_CONTRACT_ID_seq";
       public       postgres    false    4            �            1259    16687    MASTER_CONTRACT    TABLE     �  CREATE TABLE public."MASTER_CONTRACT" (
    "ID" integer DEFAULT nextval('public."MASTER_CONTRACT_ID_seq"'::regclass) NOT NULL,
    "CONTRACT" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 %   DROP TABLE public."MASTER_CONTRACT";
       public         postgres    false    241    4            �            1259    16694    MASTER_CV_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."MASTER_CV_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MASTER_CV_ID_seq";
       public       postgres    false    4            4           1259    33688 	   MASTER_CV    TABLE     �  CREATE TABLE public."MASTER_CV" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_ID_seq"'::regclass) NOT NULL,
    "NAMA" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "POSISI" integer,
    "CONTACT_1" character varying(30),
    "CONTACT_2" character varying(30),
    "ADDRESS" text,
    "BIRTHDATE" date,
    "PLACE_BIRTHDATE" character varying(100),
    "GENDER" character(1),
    "REGION" integer,
    "PHOTO_FILE" text,
    "EMAIL" character varying(150)
);
    DROP TABLE public."MASTER_CV";
       public         postgres    false    243    4            �           0    0    COLUMN "MASTER_CV"."GENDER"    COMMENT     I   COMMENT ON COLUMN public."MASTER_CV"."GENDER" IS 'L = Male, P = Female';
            public       postgres    false    308            ,           1259    33601    MASTER_CV_CERTIFICATE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_CERTIFICATE_ID_seq"
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."MASTER_CV_CERTIFICATE_ID_seq";
       public       postgres    false    4            5           1259    33695    MASTER_CV_CERTIFICATE    TABLE     A  CREATE TABLE public."MASTER_CV_CERTIFICATE" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_CERTIFICATE_ID_seq"'::regclass) NOT NULL,
    "ID_CV" integer,
    "CERTIFICATE_NAME" character varying(150),
    "CERITIFICATE_EXPIRED" date,
    "CERITIFICATE_FROM" character varying(100),
    "CERITIFICATE_FILE" text
);
 +   DROP TABLE public."MASTER_CV_CERTIFICATE";
       public         postgres    false    300    4            -           1259    33603    MASTER_CV_EDUCATION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_EDUCATION_ID_seq"
    START WITH 102
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MASTER_CV_EDUCATION_ID_seq";
       public       postgres    false    4            6           1259    33702    MASTER_CV_EDUCATION    TABLE     �   CREATE TABLE public."MASTER_CV_EDUCATION" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_EDUCATION_ID_seq"'::regclass) NOT NULL,
    "ID_CV" integer,
    "ID_REF_EDUCATION" integer,
    "SCHOOL" character varying(150)
);
 )   DROP TABLE public."MASTER_CV_EDUCATION";
       public         postgres    false    301    4            .           1259    33605    MASTER_CV_EXPERIENCE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_EXPERIENCE_ID_seq"
    START WITH 81
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."MASTER_CV_EXPERIENCE_ID_seq";
       public       postgres    false    4            7           1259    33706    MASTER_CV_EXPERIENCE    TABLE     �   CREATE TABLE public."MASTER_CV_EXPERIENCE" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_EXPERIENCE_ID_seq"'::regclass) NOT NULL,
    "ID_CV" integer,
    "ID_REF_EXPERIENCE" integer,
    "LEVEL" smallint
);
 *   DROP TABLE public."MASTER_CV_EXPERIENCE";
       public         postgres    false    302    4            �           0    0 %   COLUMN "MASTER_CV_EXPERIENCE"."LEVEL"    COMMENT     j   COMMENT ON COLUMN public."MASTER_CV_EXPERIENCE"."LEVEL" IS '1 = Beginner, 2 = Intermediate, 3 = Advance';
            public       postgres    false    311            /           1259    33607     MASTER_CV_HISTORY_OF_WORK_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_HISTORY_OF_WORK_ID_seq"
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."MASTER_CV_HISTORY_OF_WORK_ID_seq";
       public       postgres    false    4            8           1259    33710    MASTER_CV_HISTORY_OF_WORK    TABLE     -  CREATE TABLE public."MASTER_CV_HISTORY_OF_WORK" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_HISTORY_OF_WORK_ID_seq"'::regclass),
    "COMPANY_NAME" character varying(150),
    "FROM" date,
    "END" date,
    "POSITION" character varying(100),
    "DESCRIPTION" text,
    "ID_CV" integer
);
 /   DROP TABLE public."MASTER_CV_HISTORY_OF_WORK";
       public         postgres    false    303    4            0           1259    33641    MASTER_CV_REGION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_REGION_ID_seq"
    START WITH 80
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."MASTER_CV_REGION_ID_seq";
       public       postgres    false    4            9           1259    33717    MASTER_CV_REGION    TABLE     �   CREATE TABLE public."MASTER_CV_REGION" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_REGION_ID_seq"'::regclass) NOT NULL,
    "ID_REF_REGION" integer,
    "ID_CV" integer
);
 &   DROP TABLE public."MASTER_CV_REGION";
       public         postgres    false    304    4            �            1259    16703    MASTER_ICON_MARKER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_ICON_MARKER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."MASTER_ICON_MARKER_ID_seq";
       public       postgres    false    4            �            1259    16705    MASTER_ICON_MARKER    TABLE     �  CREATE TABLE public."MASTER_ICON_MARKER" (
    "ID" integer DEFAULT nextval('public."MASTER_ICON_MARKER_ID_seq"'::regclass) NOT NULL,
    "NAMA" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 (   DROP TABLE public."MASTER_ICON_MARKER";
       public         postgres    false    244    4            �            1259    16712    MASTER_INTERVENTION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_INTERVENTION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MASTER_INTERVENTION_ID_seq";
       public       postgres    false    4            �            1259    16714    MASTER_INTERVENTION    TABLE     �  CREATE TABLE public."MASTER_INTERVENTION" (
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
       public         postgres    false    246    4            �            1259    16721    MASTER_LOCATION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_LOCATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MASTER_LOCATION_ID_seq";
       public       postgres    false    4            �            1259    16723    MASTER_LOCATION    TABLE     �  CREATE TABLE public."MASTER_LOCATION" (
    "ID" integer DEFAULT nextval('public."MASTER_LOCATION_ID_seq"'::regclass) NOT NULL,
    "LOCATION_NAME" text,
    "LOCATION_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 %   DROP TABLE public."MASTER_LOCATION";
       public         postgres    false    248    4            �            1259    16730    MASTER_PERSONIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_PERSONIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MASTER_PERSONIL_ID_seq";
       public       postgres    false    4            �            1259    16732    MASTER_PERSONIL    TABLE     �  CREATE TABLE public."MASTER_PERSONIL" (
    "ID" integer DEFAULT nextval('public."MASTER_PERSONIL_ID_seq"'::regclass) NOT NULL,
    "POSISI" text,
    "NAMA" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 %   DROP TABLE public."MASTER_PERSONIL";
       public         postgres    false    250    4            �            1259    16739    MASTER_PORT_PORT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_PORT_PORT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."MASTER_PORT_PORT_ID_seq";
       public       postgres    false    4            �            1259    16741    MASTER_PORT    TABLE     �  CREATE TABLE public."MASTER_PORT" (
    "PORT_ID" integer DEFAULT nextval('public."MASTER_PORT_PORT_ID_seq"'::regclass) NOT NULL,
    "PORT_NAME" name,
    "PORT_TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text
);
 !   DROP TABLE public."MASTER_PORT";
       public         postgres    false    252    4            �            1259    16748    MASTER_PRODUCT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_PRODUCT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."MASTER_PRODUCT_ID_seq";
       public       postgres    false    4            �            1259    16750    MASTER_PRODUCT    TABLE     .  CREATE TABLE public."MASTER_PRODUCT" (
    "PRODUCT_ID" integer DEFAULT nextval('public."MASTER_PRODUCT_ID_seq"'::regclass) NOT NULL,
    "PRODUCT_LEVEL" integer,
    "PRODUCT_REFERENCE" integer,
    "PRODUCT_NAME" text,
    "WEIGHT" integer,
    "SHOW" integer,
    "HIERARCHY" integer,
    "BASICHIERARCHY" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 $   DROP TABLE public."MASTER_PRODUCT";
       public         postgres    false    254    4                        1259    16757    MASTER_STDREF_ID_seq    SEQUENCE        CREATE SEQUENCE public."MASTER_STDREF_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."MASTER_STDREF_ID_seq";
       public       postgres    false    4                       1259    16759    MASTER_STDREF    TABLE     �  CREATE TABLE public."MASTER_STDREF" (
    "ID" integer DEFAULT nextval('public."MASTER_STDREF_ID_seq"'::regclass) NOT NULL,
    "STD_REF" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "CONTENT_INFO" text
);
 #   DROP TABLE public."MASTER_STDREF";
       public         postgres    false    256    4                       1259    16766    MASTER_STD_REF_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_STD_REF_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."MASTER_STD_REF_ID_seq";
       public       postgres    false    4                       1259    16768    MASTER_TOOL_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."MASTER_TOOL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."MASTER_TOOL_ID_seq";
       public       postgres    false    4                       1259    16770    MASTER_TOOL    TABLE     �  CREATE TABLE public."MASTER_TOOL" (
    "ID" integer DEFAULT nextval('public."MASTER_TOOL_ID_seq"'::regclass) NOT NULL,
    "JENIS" text,
    "NAMA" text,
    "LOKASI" text,
    "JUMLAH" integer,
    "UPLOAD_SERTIFIKAT" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone
);
 !   DROP TABLE public."MASTER_TOOL";
       public         postgres    false    259    4                       1259    16777    MASTER_VESSEL_VESSEL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_VESSEL_VESSEL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."MASTER_VESSEL_VESSEL_ID_seq";
       public       postgres    false    4                       1259    16779    MASTER_VESSEL    TABLE     �  CREATE TABLE public."MASTER_VESSEL" (
    "VESSEL_ID" integer DEFAULT nextval('public."MASTER_VESSEL_VESSEL_ID_seq"'::regclass) NOT NULL,
    "VESSEL_NAME" name,
    "VESSEL_TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text
);
 #   DROP TABLE public."MASTER_VESSEL";
       public         postgres    false    261    4            :           1259    33721    REF_EDUCATION    TABLE     }   CREATE TABLE public."REF_EDUCATION" (
    "ID_REF_EDUCATION" integer NOT NULL,
    "EDUCATION_TYPE" character varying(50)
);
 #   DROP TABLE public."REF_EDUCATION";
       public         postgres    false    4            1           1259    33682    REF_EXP_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."REF_EXP_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."REF_EXP_ID_seq";
       public       postgres    false    4            ;           1259    33724    REF_EXP    TABLE     �   CREATE TABLE public."REF_EXP" (
    "ID_REF_EXP" integer DEFAULT nextval('public."REF_EXP_ID_seq"'::regclass) NOT NULL,
    "EXP_TYPE" character varying(50)
);
    DROP TABLE public."REF_EXP";
       public         postgres    false    305    4            2           1259    33684    REF_POSITION_ID_seq    SEQUENCE     ~   CREATE SEQUENCE public."REF_POSITION_ID_seq"
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."REF_POSITION_ID_seq";
       public       postgres    false    4            <           1259    33728    REF_POSITION    TABLE     �   CREATE TABLE public."REF_POSITION" (
    "ID_REF_POSITION" integer DEFAULT nextval('public."REF_POSITION_ID_seq"'::regclass) NOT NULL,
    "POSITION" character varying(100)
);
 "   DROP TABLE public."REF_POSITION";
       public         postgres    false    306    4            3           1259    33686    REF_REGION_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."REF_REGION_ID_seq"
    START WITH 32
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."REF_REGION_ID_seq";
       public       postgres    false    4            =           1259    33732 
   REF_REGION    TABLE     �   CREATE TABLE public."REF_REGION" (
    "ID_REF_REGION" integer DEFAULT nextval('public."REF_REGION_ID_seq"'::regclass),
    "REGION" character varying(100)
);
     DROP TABLE public."REF_REGION";
       public         postgres    false    307    4                       1259    16786     RUNNING_TEXT_RUNNING_TEXT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."RUNNING_TEXT_RUNNING_TEXT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."RUNNING_TEXT_RUNNING_TEXT_ID_seq";
       public       postgres    false    4                       1259    16788    RUNNING_TEXT    TABLE     	  CREATE TABLE public."RUNNING_TEXT" (
    "RUNNING_TEXT_ID" integer DEFAULT nextval('public."RUNNING_TEXT_RUNNING_TEXT_ID_seq"'::regclass) NOT NULL,
    "MESSAGE" text,
    "DISPLAY_START_TIME" timestamp without time zone,
    "DISPLAY_STOP_TIME" timestamp without time zone,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "CLIENT_SITE_ID" integer
);
 "   DROP TABLE public."RUNNING_TEXT";
       public         postgres    false    263    4            +           1259    33587 	   WA_ID_seq    SEQUENCE     t   CREATE SEQUENCE public."WA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public."WA_ID_seq";
       public       postgres    false    4            *           1259    33579    WA    TABLE     �   CREATE TABLE public."WA" (
    "ID" integer DEFAULT nextval('public."WA_ID_seq"'::regclass) NOT NULL,
    "CONTACT" character varying(255),
    "MESSAGE" character varying(255),
    "STATUS" integer DEFAULT 0
);
    DROP TABLE public."WA";
       public         postgres    false    299    4            	           1259    16795    WEBSITE_ARTICLE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_ARTICLE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."WEBSITE_ARTICLE_ID_seq";
       public       postgres    false    4            
           1259    16797    WEBSITE_ARTICLE    TABLE     �  CREATE TABLE public."WEBSITE_ARTICLE" (
    "ARTICLE_ID" integer DEFAULT nextval('public."WEBSITE_ARTICLE_ID_seq"'::regclass) NOT NULL,
    "ARTICLE_CATEGORY_ID" integer NOT NULL,
    "TITLE" text,
    "CONTENT" text,
    "STATUS" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 %   DROP TABLE public."WEBSITE_ARTICLE";
       public         postgres    false    265    4                       1259    16804    WEBSITE_ARTICLE_CATEGORY_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_ARTICLE_CATEGORY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."WEBSITE_ARTICLE_CATEGORY_ID_seq";
       public       postgres    false    4                       1259    16806    WEBSITE_ARTICLE_CATEGORY    TABLE     �  CREATE TABLE public."WEBSITE_ARTICLE_CATEGORY" (
    "ARTICLE_CATEGORY_ID" integer DEFAULT nextval('public."WEBSITE_ARTICLE_CATEGORY_ID_seq"'::regclass) NOT NULL,
    "CATEGORY_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 .   DROP TABLE public."WEBSITE_ARTICLE_CATEGORY";
       public         postgres    false    267    4                       1259    16813    WEBSITE_MENU_MENU_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_MENU_MENU_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."WEBSITE_MENU_MENU_ID_seq";
       public       postgres    false    4                       1259    16815    WEBSITE_MENU    TABLE     b  CREATE TABLE public."WEBSITE_MENU" (
    "MENU_ID" integer DEFAULT nextval('public."WEBSITE_MENU_MENU_ID_seq"'::regclass) NOT NULL,
    "MENU_LEVEL" integer,
    "REFERENCE" integer,
    "TITLE" text,
    "URL" text,
    "REMARK" text,
    "TARGET" text,
    "IMAGE" text,
    "WEIGHT" integer,
    "SHOW" integer,
    "HIERARCHY" integer,
    "BASICHIERARCHY" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 "   DROP TABLE public."WEBSITE_MENU";
       public         postgres    false    269    4                       1259    16822    WEBSITE_PAGE_STATIC_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_PAGE_STATIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."WEBSITE_PAGE_STATIC_ID_seq";
       public       postgres    false    4                       1259    16824    WEBSITE_PAGE_STATIC    TABLE     �  CREATE TABLE public."WEBSITE_PAGE_STATIC" (
    "PAGE_STATIC_ID" integer DEFAULT nextval('public."WEBSITE_PAGE_STATIC_ID_seq"'::regclass) NOT NULL,
    "TITLE" text,
    "CONTENT" text,
    "STATUS" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "URL" text,
    "SEO_TITLE" text
);
 )   DROP TABLE public."WEBSITE_PAGE_STATIC";
       public         postgres    false    271    4                       1259    16831    WEBSITE_SLIDER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_SLIDER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."WEBSITE_SLIDER_ID_seq";
       public       postgres    false    4                       1259    16833    WEBSITE_SLIDER    TABLE     �  CREATE TABLE public."WEBSITE_SLIDER" (
    "SLIDER_ID" integer DEFAULT nextval('public."WEBSITE_SLIDER_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "STATUS" text
);
 $   DROP TABLE public."WEBSITE_SLIDER";
       public         postgres    false    273    4                       1259    16840    WEBSITE_SLIDER_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_SLIDER_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."WEBSITE_SLIDER_DETAIL_ID_seq";
       public       postgres    false    4                       1259    16842    WEBSITE_SLIDER_DETAIL    TABLE       CREATE TABLE public."WEBSITE_SLIDER_DETAIL" (
    "SLIDER_DETAIL_ID" integer DEFAULT nextval('public."WEBSITE_SLIDER_DETAIL_ID_seq"'::regclass) NOT NULL,
    "SLIDER_ID" integer,
    "TITLE" text,
    "CONTENT" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text,
    "PATH" text,
    "FILE_NAME" text,
    "STATUS" text
);
 +   DROP TABLE public."WEBSITE_SLIDER_DETAIL";
       public         postgres    false    275    4                       1259    16849    WEBSITE_TAG_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."WEBSITE_TAG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."WEBSITE_TAG_ID_seq";
       public       postgres    false    4                       1259    16851    WEBSITE_TAG    TABLE     �  CREATE TABLE public."WEBSITE_TAG" (
    "TAG_ID" integer DEFAULT nextval('public."WEBSITE_TAG_ID_seq"'::regclass) NOT NULL,
    "TAG_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 !   DROP TABLE public."WEBSITE_TAG";
       public         postgres    false    277    4                       1259    16858    WEBSITE_TAG_ARTICLE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_TAG_ARTICLE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."WEBSITE_TAG_ARTICLE_ID_seq";
       public       postgres    false    4                       1259    16860    WEBSITE_TAG_ARTICLE    TABLE     �  CREATE TABLE public."WEBSITE_TAG_ARTICLE" (
    "TAG_ARTICLE_ID" integer DEFAULT nextval('public."WEBSITE_TAG_ARTICLE_ID_seq"'::regclass) NOT NULL,
    "ARTICLE_ID" integer,
    "TAG_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp without time zone,
    "DELETE_USER" text
);
 )   DROP TABLE public."WEBSITE_TAG_ARTICLE";
       public         postgres    false    279    4                       1259    16867    daemons    TABLE     U   CREATE TABLE public.daemons (
    "Start" text NOT NULL,
    "Info" text NOT NULL
);
    DROP TABLE public.daemons;
       public         postgres    false    4                       1259    16873    gammu    TABLE     U   CREATE TABLE public.gammu (
    "Version" smallint DEFAULT '0'::smallint NOT NULL
);
    DROP TABLE public.gammu;
       public         postgres    false    4                       1259    16877    inbox    TABLE     L  CREATE TABLE public.inbox (
    "UpdatedInDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "ReceivingDateTime" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "Text" text NOT NULL,
    "SenderNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Coding" character varying(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
    "UDH" text NOT NULL,
    "SMSCNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Class" integer DEFAULT '-1'::integer NOT NULL,
    "TextDecoded" text DEFAULT ''::text NOT NULL,
    "ID" integer NOT NULL,
    "RecipientID" text NOT NULL,
    "Processed" boolean DEFAULT false NOT NULL,
    CONSTRAINT "inbox_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text])))
);
    DROP TABLE public.inbox;
       public         postgres    false    4                       1259    16892    inbox_ID_seq    SEQUENCE     w   CREATE SEQUENCE public."inbox_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."inbox_ID_seq";
       public       postgres    false    4    283            �           0    0    inbox_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."inbox_ID_seq" OWNED BY public.inbox."ID";
            public       postgres    false    284                       1259    16894    outbox    TABLE     �	  CREATE TABLE public.outbox (
    "UpdatedInDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "InsertIntoDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "SendingDateTime" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "SendBefore" time without time zone DEFAULT '23:59:59'::time without time zone NOT NULL,
    "SendAfter" time without time zone DEFAULT '00:00:00'::time without time zone NOT NULL,
    "Text" text,
    "DestinationNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Coding" character varying(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
    "UDH" text,
    "Class" integer DEFAULT '-1'::integer,
    "TextDecoded" text DEFAULT ''::text NOT NULL,
    "ID" integer NOT NULL,
    "MultiPart" boolean DEFAULT false NOT NULL,
    "RelativeValidity" integer DEFAULT '-1'::integer,
    "SenderID" character varying(255),
    "SendingTimeOut" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "DeliveryReport" character varying(10) DEFAULT 'default'::character varying,
    "CreatorID" text NOT NULL,
    "Retries" integer DEFAULT 0,
    "Priority" integer DEFAULT 0,
    "Status" character varying(255) DEFAULT 'Reserved'::character varying NOT NULL,
    "StatusCode" integer DEFAULT '-1'::integer NOT NULL,
    CONSTRAINT "outbox_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text]))),
    CONSTRAINT "outbox_DeliveryReport_check" CHECK ((("DeliveryReport")::text = ANY (ARRAY[('default'::character varying)::text, ('yes'::character varying)::text, ('no'::character varying)::text]))),
    CONSTRAINT "outbox_Status_check" CHECK ((("Status")::text = ANY (ARRAY[('SendingOK'::character varying)::text, ('SendingOKNoReport'::character varying)::text, ('SendingError'::character varying)::text, ('DeliveryOK'::character varying)::text, ('DeliveryFailed'::character varying)::text, ('DeliveryPending'::character varying)::text, ('DeliveryUnknown'::character varying)::text, ('Error'::character varying)::text, ('Reserved'::character varying)::text])))
);
    DROP TABLE public.outbox;
       public         postgres    false    4                       1259    16920    outbox_ID_seq    SEQUENCE     x   CREATE SEQUENCE public."outbox_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."outbox_ID_seq";
       public       postgres    false    4    285            �           0    0    outbox_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."outbox_ID_seq" OWNED BY public.outbox."ID";
            public       postgres    false    286                       1259    16922    outbox_multipart    TABLE     �  CREATE TABLE public.outbox_multipart (
    "Text" text,
    "Coding" character varying(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
    "UDH" text,
    "Class" integer DEFAULT '-1'::integer,
    "TextDecoded" text,
    "ID" integer NOT NULL,
    "SequencePosition" integer DEFAULT 1 NOT NULL,
    CONSTRAINT "outbox_multipart_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text])))
);
 $   DROP TABLE public.outbox_multipart;
       public         postgres    false    4                        1259    16932    outbox_multipart_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."outbox_multipart_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."outbox_multipart_ID_seq";
       public       postgres    false    4    287            �           0    0    outbox_multipart_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."outbox_multipart_ID_seq" OWNED BY public.outbox_multipart."ID";
            public       postgres    false    288            !           1259    16934    pbk    TABLE     �   CREATE TABLE public.pbk (
    "ID" integer NOT NULL,
    "GroupID" integer DEFAULT '-1'::integer NOT NULL,
    "Name" text NOT NULL,
    "Number" text NOT NULL
);
    DROP TABLE public.pbk;
       public         postgres    false    4            "           1259    16941 
   pbk_ID_seq    SEQUENCE     u   CREATE SEQUENCE public."pbk_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."pbk_ID_seq";
       public       postgres    false    289    4            �           0    0 
   pbk_ID_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."pbk_ID_seq" OWNED BY public.pbk."ID";
            public       postgres    false    290            #           1259    16943 
   pbk_groups    TABLE     X   CREATE TABLE public.pbk_groups (
    "Name" text NOT NULL,
    "ID" integer NOT NULL
);
    DROP TABLE public.pbk_groups;
       public         postgres    false    4            $           1259    16949    pbk_groups_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."pbk_groups_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."pbk_groups_ID_seq";
       public       postgres    false    4    291            �           0    0    pbk_groups_ID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."pbk_groups_ID_seq" OWNED BY public.pbk_groups."ID";
            public       postgres    false    292            %           1259    16951    pelni_info_id_info_seq    SEQUENCE        CREATE SEQUENCE public.pelni_info_id_info_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pelni_info_id_info_seq;
       public       postgres    false    4            &           1259    16953    pelni_info_id_info_seq1    SEQUENCE     �   CREATE SEQUENCE public.pelni_info_id_info_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pelni_info_id_info_seq1;
       public       postgres    false    4    228            �           0    0    pelni_info_id_info_seq1    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pelni_info_id_info_seq1 OWNED BY public."INFO_CLIENT"."ID_INFO";
            public       postgres    false    294            '           1259    16955    phones    TABLE     t  CREATE TABLE public.phones (
    "ID" text NOT NULL,
    "UpdatedInDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "InsertIntoDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "TimeOut" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "Send" boolean DEFAULT false NOT NULL,
    "Receive" boolean DEFAULT false NOT NULL,
    "IMEI" character varying(35) NOT NULL,
    "NetCode" character varying(10) DEFAULT 'ERROR'::character varying,
    "NetName" character varying(35) DEFAULT 'ERROR'::character varying,
    "Client" text NOT NULL,
    "Battery" integer DEFAULT '-1'::integer NOT NULL,
    "Signal" integer DEFAULT '-1'::integer NOT NULL,
    "Sent" integer DEFAULT 0 NOT NULL,
    "Received" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.phones;
       public         postgres    false    4            (           1259    16972 	   sentitems    TABLE     �  CREATE TABLE public.sentitems (
    "UpdatedInDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "InsertIntoDB" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "SendingDateTime" timestamp(0) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "DeliveryDateTime" timestamp(0) without time zone,
    "Text" text NOT NULL,
    "DestinationNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Coding" character varying(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
    "UDH" text NOT NULL,
    "SMSCNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Class" integer DEFAULT '-1'::integer NOT NULL,
    "TextDecoded" text DEFAULT ''::text NOT NULL,
    "ID" integer NOT NULL,
    "SenderID" character varying(255) NOT NULL,
    "SequencePosition" integer DEFAULT 1 NOT NULL,
    "Status" character varying(255) DEFAULT 'SendingOK'::character varying NOT NULL,
    "StatusError" integer DEFAULT '-1'::integer NOT NULL,
    "TPMR" integer DEFAULT '-1'::integer NOT NULL,
    "RelativeValidity" integer DEFAULT '-1'::integer NOT NULL,
    "CreatorID" text NOT NULL,
    CONSTRAINT "sentitems_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text]))),
    CONSTRAINT "sentitems_Status_check" CHECK ((("Status")::text = ANY (ARRAY[('SendingOK'::character varying)::text, ('SendingOKNoReport'::character varying)::text, ('SendingError'::character varying)::text, ('DeliveryOK'::character varying)::text, ('DeliveryFailed'::character varying)::text, ('DeliveryPending'::character varying)::text, ('DeliveryUnknown'::character varying)::text, ('Error'::character varying)::text])))
);
    DROP TABLE public.sentitems;
       public         postgres    false    4            )           1259    16993    sentitems_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."sentitems_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."sentitems_ID_seq";
       public       postgres    false    4    296            �           0    0    sentitems_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."sentitems_ID_seq" OWNED BY public.sentitems."ID";
            public       postgres    false    297            �	           2604    16995    APP_FUNCTION_ACCESS ID    DEFAULT     �   ALTER TABLE ONLY public."APP_FUNCTION_ACCESS" ALTER COLUMN "ID" SET DEFAULT nextval('public."APP_FUNCTION_ACCESS_ID_seq"'::regclass);
 I   ALTER TABLE public."APP_FUNCTION_ACCESS" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    208    207            �	           2604    16996    INFO_CLIENT ID_INFO    DEFAULT     ~   ALTER TABLE ONLY public."INFO_CLIENT" ALTER COLUMN "ID_INFO" SET DEFAULT nextval('public.pelni_info_id_info_seq1'::regclass);
 F   ALTER TABLE public."INFO_CLIENT" ALTER COLUMN "ID_INFO" DROP DEFAULT;
       public       postgres    false    294    228            �	           2604    16997    inbox ID    DEFAULT     h   ALTER TABLE ONLY public.inbox ALTER COLUMN "ID" SET DEFAULT nextval('public."inbox_ID_seq"'::regclass);
 9   ALTER TABLE public.inbox ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    284    283            �	           2604    16998 	   outbox ID    DEFAULT     j   ALTER TABLE ONLY public.outbox ALTER COLUMN "ID" SET DEFAULT nextval('public."outbox_ID_seq"'::regclass);
 :   ALTER TABLE public.outbox ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    286    285            �	           2604    16999    outbox_multipart ID    DEFAULT     ~   ALTER TABLE ONLY public.outbox_multipart ALTER COLUMN "ID" SET DEFAULT nextval('public."outbox_multipart_ID_seq"'::regclass);
 D   ALTER TABLE public.outbox_multipart ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    288    287            �	           2604    17000    pbk ID    DEFAULT     d   ALTER TABLE ONLY public.pbk ALTER COLUMN "ID" SET DEFAULT nextval('public."pbk_ID_seq"'::regclass);
 7   ALTER TABLE public.pbk ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    290    289            �	           2604    17001    pbk_groups ID    DEFAULT     r   ALTER TABLE ONLY public.pbk_groups ALTER COLUMN "ID" SET DEFAULT nextval('public."pbk_groups_ID_seq"'::regclass);
 >   ALTER TABLE public.pbk_groups ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    292    291            
           2604    17002    sentitems ID    DEFAULT     p   ALTER TABLE ONLY public.sentitems ALTER COLUMN "ID" SET DEFAULT nextval('public."sentitems_ID_seq"'::regclass);
 =   ALTER TABLE public.sentitems ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    297    296                      0    16396    ALERT_SUBSCRIBER 
   TABLE DATA               �   COPY public."ALERT_SUBSCRIBER" ("ALERT_SUBSCRIBER_ID", "USER_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "SUBSCRIBE", "LAST_SEND", "CLIENT_SITE_ID") FROM stdin;
    public       postgres    false    187   ��      �           0    0    ALERT_SUBSCRIBER_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ALERT_SUBSCRIBER_ID_seq"', 9, true);
            public       postgres    false    186                      0    16405    APP_CLIENT_ACCESS 
   TABLE DATA               �   COPY public."APP_CLIENT_ACCESS" ("ID", "NAME", "READ_PRIV", "EDIT_PRIV", "DELETE_PRIV", "ADD_PRIV", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "MENU_ID", "IS_DELETE") FROM stdin;
    public       postgres    false    189   �      �           0    0 &   APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"', 59, true);
            public       postgres    false    188            !          0    16418    APP_CLIENT_FORM_UPLOAD_DETAIL 
   TABLE DATA               �   COPY public."APP_CLIENT_FORM_UPLOAD_DETAIL" ("FILE_UPLOAD_DETAIL_ID", "PATH", "FILE_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "INFO_CLIENT_ID") FROM stdin;
    public       postgres    false    191   ��      #          0    16427    APP_CLIENT_HEADER_ACCESS 
   TABLE DATA               �   COPY public."APP_CLIENT_HEADER_ACCESS" ("HEADER_ACCESS_ID", "CLIENT_SITE_ID", "MENU_ID", "CLIENT_TEMPLATE_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    193   ��      �           0    0 -   APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"', 12, true);
            public       postgres    false    192            %          0    16436    APP_CLIENT_MENU 
   TABLE DATA                 COPY public."APP_CLIENT_MENU" ("MENU_ID", "MENU_LEVEL", "REFERENCE", "TITLE", "URL", "REMARK", "TARGET", "IMAGE", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    195   ֎      �           0    0 "   APP_CLIENT_MENU_CLIENT_MENU_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"', 7, true);
            public       postgres    false    194            '          0    16445    APP_CLIENT_SITE 
   TABLE DATA                 COPY public."APP_CLIENT_SITE" ("CLIENT_SITE_ID", "CLIENT_SITE_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "CLIENT_LOGO", "CLIENT_LOGO_WIDTH", "CLIENT_LOGO_HEIGHT", "CLIENT_WALLPAPER") FROM stdin;
    public       postgres    false    197   ��      �           0    0    APP_CLIENT_SITE_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."APP_CLIENT_SITE_ID_seq"', 5, true);
            public       postgres    false    196            �           0    0 *   APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"', 12, true);
            public       postgres    false    198            �           0    0 7   APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"', 50, true);
            public       postgres    false    200            ,          0    16482    APP_CLIENT_USER 
   TABLE DATA               T  COPY public."APP_CLIENT_USER" ("USER_ID", "USERNAME", "EMAIL", "FIRST_NAME", "LAST_NAME", "PASSWORD", "COUNTER", "STATUS", "REMARK", "CHANGE_PASSWORD", "FUNCTION_ACCESS", "INQUIRY_ACCESS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PHONE", "PHOTO", "CLIENT_SITE_ID") FROM stdin;
    public       postgres    false    202   ��      �           0    0 "   APP_CLIENT_USER_CLIENT_USER_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."APP_CLIENT_USER_CLIENT_USER_ID_seq"', 4, true);
            public       postgres    false    201            .          0    16491    APP_CLIENT_USER_GROUP 
   TABLE DATA               �   COPY public."APP_CLIENT_USER_GROUP" ("GROUP_ID", "GROUP_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    204   Ƒ      �           0    0 .   APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"', 4, true);
            public       postgres    false    203            0          0    16500    APP_FILE_MANAGER 
   TABLE DATA               �   COPY public."APP_FILE_MANAGER" ("FILE_MANAGER_ID", "NAME", "SIZE", "EXTENSION", "PATH", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "TITLE", "TYPE") FROM stdin;
    public       postgres    false    206   �      1          0    16507    APP_FUNCTION_ACCESS 
   TABLE DATA               �   COPY public."APP_FUNCTION_ACCESS" ("ID", "NAME", "READ_PRIV", "EDIT_PRIV", "DELETE_PRIV", "ADD_PRIV", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "MENU_ID", "IS_DELETE") FROM stdin;
    public       postgres    false    207   ��      �           0    0    APP_FUNCTION_ACCESS_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."APP_FUNCTION_ACCESS_ID_seq"', 1346, true);
            public       postgres    false    208            4          0    16521    APP_LOG 
   TABLE DATA               n   COPY public."APP_LOG" ("LOG_ID", "CREATE_TIME", "ACTIVITY", "IP", "DETAIL", "USERNAME", "METHOD") FROM stdin;
    public       postgres    false    210   ��      6          0    16530    APP_LOG_CLIENT 
   TABLE DATA               �   COPY public."APP_LOG_CLIENT" ("LOG_ID", "CREATE_TIME", "ACTIVITY", "IP", "DETAIL", "USERNAME", "CLIENT_SITE_NAME", "METHOD") FROM stdin;
    public       postgres    false    212   ��      �           0    0     APP_LOG_CLIENT_LOG_CLIENT_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"', 5085, true);
            public       postgres    false    211            �           0    0    APP_LOG_LOG_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."APP_LOG_LOG_ID_seq"', 27295, true);
            public       postgres    false    209            8          0    16539    APP_MENU 
   TABLE DATA                 COPY public."APP_MENU" ("MENU_ID", "MENU_LEVEL", "REFERENCE", "TITLE", "URL", "REMARK", "TARGET", "IMAGE", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    214   Ǖ      �           0    0    APP_MENU_MENU_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."APP_MENU_MENU_ID_seq"', 155, true);
            public       postgres    false    213            :          0    16548 	   APP_ROUTE 
   TABLE DATA               �   COPY public."APP_ROUTE" ("ROUTE_ID", "SLUG", "CONTROLLER", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    216   �      �           0    0    APP_ROUTE_ROUTE_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."APP_ROUTE_ROUTE_ID_seq"', 1, false);
            public       postgres    false    215            <          0    16557    APP_SETTING 
   TABLE DATA               V   COPY public."APP_SETTING" ("SETTING_ID", "SETTING_NAME", "SETTING_VALUE") FROM stdin;
    public       postgres    false    218    �      �           0    0    APP_SETTING_SETTING_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."APP_SETTING_SETTING_ID_seq"', 9, true);
            public       postgres    false    217            �           0    0 *   APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"', 69, true);
            public       postgres    false    199            >          0    16566    APP_USER 
   TABLE DATA               ;  COPY public."APP_USER" ("USER_ID", "USERNAME", "EMAIL", "FIRST_NAME", "LAST_NAME", "PASSWORD", "COUNTER", "STATUS", "REMARK", "CHANGE_PASSWORD", "FUNCTION_ACCESS", "INQUIRY_ACCESS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PHONE", "PHOTO") FROM stdin;
    public       postgres    false    220         @          0    16575    APP_USER_GROUP 
   TABLE DATA               �   COPY public."APP_USER_GROUP" ("GROUP_ID", "GROUP_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PHONE", "PHOTO") FROM stdin;
    public       postgres    false    222   �      �           0    0    APP_USER_GROUP_GROUP_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."APP_USER_GROUP_GROUP_ID_seq"', 7, true);
            public       postgres    false    221            �           0    0    APP_USER_USER_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."APP_USER_USER_ID_seq"', 9, true);
            public       postgres    false    219            �           0    0 %   CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"', 9, true);
            public       postgres    false    190            �           0    0    FILE_MANAGER_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."FILE_MANAGER_ID_seq"', 12, true);
            public       postgres    false    205            C          0    16593    FORM_ENTRY_FIELD 
   TABLE DATA               �6  COPY public."FORM_ENTRY_FIELD" ("ID", "SC", "IWO", "SPK", "VOY", "AREA", "SUPPLIER", "BUYER", "SELLER", "TRADER", "KONTRAK", "PRODUCT", "DATE_NOR", "TIME_NOR", "FWAL_BBLS", "FWAL_KL15", "FILE_ORDER", "FWAL_KLOBS", "REMARKS_NOR", "SELECT_PORT", "SHARING_FEE", "SL_GSV_BBLS", "SL_GSV_KL15", "DATE_BERTHED", "FWAL_LONGTON", "PRODUCT_TYPE", "SELECT_CARGO", "SL_GSV_KLOBS", "TIME_BERTHED", "BL_START_DATE", "BL_START_TIME", "DATE_ACCEPTED", "DATE_CONTRACT", "PORT_TERMINAL", "SAMPLE_SOURCE", "SELECT_CLIENT", "SFAL_TOV_BBLS", "SFAL_TOV_KL15", "ST_NOMINATION", "TIME_ACCEPTED", "DATE_COMMENCED", "DATE_COMPLETED", "FWAL_METRICTON", "SELECT_PRODUCT", "SFAL_TOV_KLOBS", "SL_GSV_LONGTON", "TIME_COMMENCED", "TIME_COMPLETED", "DATE_ANCHORAGED", "REMARKS_BERTHED", "RN_LETTER_ISSUE", "RN_NOTICE_ISSUE", "TIME_ANCHORAGED", "BL_QUANTITY_BBLS", "BL_QUANTITY_KL15", "DATE_KEY_MEETING", "DATE_OF_ANALYSIS", "REMARKS_ACCEPTED", "SF_QUANTITY_BBLS", "SF_QUANTITY_KL15", "SFAL_TOV_LONGTON", "SL_GSV_METRICTON", "TIME_KEY_MEETING", "VEF_LOADING_BBLS", "BL_QUANTITY_KLOBS", "BO_MDO_ON_ARRIVAL", "BO_MFO_ON_ARRIVAL", "OBQ_QUANTITY_BBLS", "OBQ_QUANTITY_KL15", "REMARKS_COMMENCED", "REMARKS_COMPLETED", "SF_QUANTITY_KLOBS", "SL_VS_BOL_R1_BBLS", "SL_VS_BOL_R1_KL15", "ACTIVITIES_REMARKS", "DATE_LOISPKPOWONOA", "DATE_VESSEL_SAILED", "LOADING_START_DATE", "LOADING_START_TIME", "OBQ_QUANTITY_KLOBS", "REMARKS_ANCHORAGED", "RN_STATEMENT_ISSUE", "SFAL_TOV_METRICTON", "SL_VS_BOL_R1_KLOBS", "TIME_VESSEL_SAILED", "BL_QUANTITY_LONGTON", "BO_MDO_ON_DEPARTURE", "BO_MFO_ON_DEPARTURE", "CLIENT_SITE_ID_FORM", "DATE_HOSE_CONNECTED", "DATE_VESSEL_ARRIVED", "REMARKS_KEY_MEETING", "SELECT_INTERVENTION", "SF_QUANTITY_LONGTON", "TIME_HOSE_CONNECTED", "TIME_VESSEL_ARRIVED", "DISCHARGE_START_DATE", "DISCHARGE_START_TIME", "OBQ_QUANTITY_LONGTON", "SL_APPLIED_VEFL_BBLS", "SL_VS_BOL_R1_LONGTON", "BL_15_DERAJAT_CELCIUS", "BL_QUANTITY_METRICTON", "LOADING_COMPLETE_DATE", "LOADING_COMPLETE_TIME", "REMARKS_VESSEL_SAILED", "DATE_DOCUMENTS_ONBOARD", "DATE_LOADING_COMMENCED", "DATE_LOADING_COMPLETED", "DATE_SURVEYOR_ON_BOARD", "OBQ_QUANTITY_METRICTON", "REMARKS_HOSE_CONNECTED", "REMARKS_VESSEL_ARRIVED", "SF_QUANTITY_METRICTON", "SL_VS_BOL_R1_METRICTON", "TIME_DOCUMENTS_ONBOARD", "TIME_LOADING_COMMENCED", "TIME_LOADING_COMPLETED", "TIME_SURVEYOR_ON_BOARD", "DATE_SAMPLING_COMMENCED", "DATE_SAMPLING_COMPLETED", "DISCHARGE_COMPLETE_DATE", "DISCHARGE_COMPLETE_TIME", "SC_ON_ARRIVAL_DRAFT_AFT", "SC_ON_ARRIVAL_DRAFT_FWD", "TIME_SAMPLING_COMMENCED", "TIME_SAMPLING_COMPLETED", "DATE_CONNECTED_COMMENCED", "DATE_CONNECTED_COMPLETED", "SC_ON_ARRIVAL_DRAFT_LIST", "TIME_CONNECTED_COMMENCED", "TIME_CONNECTED_COMPLETED", "REMARKS_DOCUMENTS_ONBOARD", "REMARKS_LOADING_COMMENCED", "REMARKS_LOADING_COMPLETED", "REMARKS_SURVEYOR_ON_BOARD", "SC_ON_DEPARTURE_DRAFT_AFT", "SC_ON_DEPARTURE_DRAFT_FWD", "DATE_MEASUREMENT_COMMENCED", "DATE_MEASUREMENT_COMPLETED", "REMARKS_SAMPLING_COMMENCED", "REMARKS_SAMPLING_COMPLETED", "SC_ON_DEPARTURE_DRAFT_LIST", "SL_VEF_APPLIED_VS_BOL_BBLS", "SL_VEF_APPLIED_VS_BOL_KL15", "TIME_MEASUREMENT_COMMENCED", "TIME_MEASUREMENT_COMPLETED", "REMARKS_CONNECTED_COMMENCED", "REMARKS_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_KLOBS", "REMARKS_MEASUREMENT_COMMENCED", "REMARKS_MEASUREMENT_COMPLETED", "SL_VEF_APPLIED_VS_BOL_LONGTON", "SL_VEF_APPLIED_VS_BOL_METRICTON", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "SF_GSV_KLOBS", "SF_NSV_KLOBS", "SF_FREE_WATER_AL_BBLS", "SF_FREE_WATER_AL_KL15", "SF_SFAL_TOV_METRICTON", "SL_APPLIED_VEFL_KLOBS", "DATE_HOSE_DISCONNECTED", "SF_FREE_WATER_AL_KLOBS", "DATE_DISCHARGE_COMPLETED", "DATE_INPECTION_COMMENCED", "SF_FREE_WATER_AL_LONGTON", "TIME_DISCHARGE_COMMENCED", "TIME_DISCHARGE_COMPLETED", "TIME_INPECTION_COMMENCED", "DATE_INSPECTION_COMPLETED", "REMARKS_HOSE_DISCONNECTED", "SL_APPLIED_VEFL_METRICTON", "TIME_INSPECTION_COMPLETED", "SF_FREE_WATER_AL_METRICTON", "REMARKS_DISCHARGE_COMMENCED", "REMARKS_DISCHARGE_COMPLETED", "REMARKS_INPECTION_COMMENCED", "REMARKS_INSPECTION_COMPLETED", "DATE_HOSE_CONNECTED_COMMENCED", "DATE_HOSE_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_BBLS", "SL_VEF_APPLIED_VS_BOL_R1_KL15", "TIME_HOSE_CONNECTED_COMMENCED", "TIME_HOSE_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_KLOBS", "SF_SHORE_TANKS_NOMINATION_KLOBS", "DATE_CARGO_MEASUREMENT_COMMENCED", "DATE_CARGO_MEASUREMENT_COMPLETED", "REMARKS_HOSE_CONNECTED_COMMENCED", "REMARKS_HOSE_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_LONGTON", "TIME_CARGO_MEASUREMENT_COMMENCED", "TIME_CARGO_MEASUREMENT_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_METRICTON", "REMARKS_CARGO_MEASUREMENT_COMMENCED", "REMARKS_CARGO_MEASUREMENT_COMPLETED", "BL_FLOW_METER", "BL_SHORE_TANK", "BL_SHIP_TANK", "FSOQ", "SURVEYOR_IN_CHARGE", "RN_NOTICE_ISSUE_DESCRIPTION", "RN_LETTER_ISSUE_DESCRIPTION", "RN_STATEMENT_ISSUE_DESCRIPTION", "DATE_A_AWEIGH", "TIME_A_AWEIGH", "DATE_POB", "TIME_POB", "DATE_BERTHING", "TIME_BERTHING", "DATE_SBD_COMMENCED", "DATE_SBD_COMPLETED", "TIME_SBD_COMMENCED", "TIME_SBD_COMPLETED", "DATE_DISCHARGE_COMMENCED", "DATE_TANKS_INS_COMMENCED", "TIME_TANKS_INS_COMMENCED", "DATE_TANKS_INS_COMPLETED", "TIME_TANKS_INS_COMPLETED", "DATE_SVY_LEFT_VESSEL", "TIME_SVY_LEFT_VESSEL", "DATE_VESSEL_SAIL", "TIME_VESSEL_SAIL", "TIME_HOSE_DISCONNECTED", "BL_SFAL_KL15", "BL_SFAL_BBLS", "BL_SFAL_METRICTON", "BL_SFAL_LONGTON", "SF_SFAL_KLOBS", "SF_SFAL_KL15", "SF_SFAL_BBLS", "SF_SFAL_METRICTON", "SF_SFAL_LONGTON", "SFBD_TOV_KLOBS", "SFBD_TOV_KL15", "SFBD_TOV_BBLS", "SFBD_TOV_METRICTON", "SFBD_TOV_LONGTON", "SFBD_GSV_KLOBS", "SFBD_GSV_BBLS", "SFBD_GSV_METRICTON", "SFBD_GSV_LONGTON", "ROBQ_KLOBS", "ROBQ_KL15", "ROBQ_BBLS", "ROBQ_METRICTON", "ROBQ_LONGTON", "BL_SFAL_KLOBS", "SFBD_GSV_KL15", "SLVS_BOL_R1_KLOBS", "SLVS_BOL_R1_KL15", "SLVS_BOL_R1_BBLS", "SLVS_BOL_R1_LONGTON", "SLVS_BOL_R1_METRICTON", "SFAL_VS_SFBD_R2_KLOBS", "SFAL_VS_SFBD_R2_KL15", "SFAL_VS_SFBD_R2_BBLS", "SFAL_VS_SFBD_R2_LONGTON", "SFAL_VS_SFBD_R2_METRICTON", "SFBD_VS_SR_R3_KLOBS", "SFBD_VS_SR_R3_KL15", "SFBD_VS_SR_R3_BBLS", "SFBD_VS_SR_R3_LONGTON", "SFBD_VS_SR_R3_METRICTON", "SR_VS_BOL_R4_KLOBS", "SR_VS_BOL_R4_KL15", "SR_VS_BOL_R4_BBLS", "SR_VS_BOL_R4_LONGTON", "SR_VS_BOL_R4_METRICTON", "VESSEL", "ALERT_PUSH", "CLIENTS", "BL_GSV_KLOBS", "BL_GSV_KL15", "BL_GSV_BBLS", "BL_GSV_LONGTON", "BL_GSV_METRICTON", "BL_NSV_KLOBS", "BL_NSV_KL15", "BL_NSV_BBLS", "BL_NSV_LONGTON", "BL_NSV_METRICTON", "SF_GSV_KL15", "SF_GSV_BBLS", "SF_GSV_LONGTON", "SF_GSV_METRICTON", "SF_NSV_KL15", "SF_NSV_BBLS", "SF_NSV_LONGTON", "SF_NSV_METRICTON", "SF_SFAL_TOV_KLOBS", "SF_SFAL_TOV_KL15", "SF_SFAL_TOV_BBLS", "SF_SFAL_TOV_LONGTON", "SFAL_GSV_KLOBS", "SFAL_GSV_KL15", "SFAL_GSV_BBLS", "SFAL_GSV_LONGTON", "SFAL_GSV_METRICTON", "SFAL_NSV_KLOBS", "SFAL_NSV_KL15", "SFAL_NSV_BBLS", "SFAL_NSV_LONGTON", "SFAL_NSV_METRICTON", "VEFL_KLOBS", "VEFL_KL15", "VEFL_BBLS", "VEFL_LONGTON", "VEFL_METRICTON", "SL_APPLIED_VEFL_KL15", "SL_APPLIED_VEFL_LONGTON", "REMARKS_POB", "REMARKS_A_AWEIGH", "REMARKS_BERTHING", "REMARKS_SBD_COMMENCED", "REMARKS_SBD_COMPLETED", "REMARKS_TANKS_INS_COMMENCED", "REMARKS_TANKS_INS_COMPLETED", "REMARKS_SVY_LEFT_VESSEL", "REMARKS_VESSEL_SAIL", "SFAL_KLOBS", "SFAL_KL15", "SFAL_BBLS", "SFAL_LONGTON", "SFAL_METRICTON", "SF_SQ_KLOBS", "SF_SQ_KL15", "SF_SQ_BBLS", "SF_SQ_LONGTON", "SF_SQ_METRICTON", "FREE_WATER_KLOBS", "FREE_WATER_KL15", "FREE_WATER_BBLS", "FREE_WATER_LONGTON", "FREE_WATER_METRICTON", "SFBD_NSV_KLOBS", "SFBD_NSV_KL15", "SFBD_NSV_BBLS", "SFBD_NSV_LONGTON", "SFBD_NSV_METRICTON", "TIME_LOADING_BARGE_ARRIVED", "DATE_LOADING_BARGE_ARRIVED", "REMARKS_LOADING_BARGE_ARRIVED", "TIME_LOADING_NOR_TENDERED", "DATE_LOADING_NOR_TENDERED", "REMARKS_LOADING_NOR_TENDERED", "TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE", "DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE", "REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE", "TIME_LOADING_KEY_MEETING", "DATE_LOADING_KEY_MEETING", "REMARKS_LOADING_KEY_MEETING", "TIME_LOADING_NOR_ACCEPTED", "DATE_LOADING_NOR_ACCEPTED", "REMARKS_LOADING_NOR_ACCEPTED", "TIME_LOADING_VALVE_SEEALED", "DATE_LOADING_VALVE_SEEALED", "REMARKS_LOADING_VALVE_SEEALED", "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION", "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION", "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION", "TIME_LOADING_HOST_CONNECTED", "DATE_LOADING_HOST_CONNECTED", "REMARKS_LOADING_HOST_CONNECTED", "TIME_LOADING_LOADING_COMMENCED", "DATE_LOADING_LOADING_COMMENCED", "REMARKS_LOADING_LOADING_COMMENCED", "TIME_LOADING_LOADING_COMPLETED", "DATE_LOADING_LOADING_COMPLETED", "REMARKS_LOADING_LOADING_COMPLETED", "TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT", "DATE_LOADING_HOSE_ARMS_DISCONNECT", "REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT", "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL", "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL", "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL", "TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD", "DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD", "REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD", "TIME_DISCHARGE_BARGE_ARRIVED", "DATE_DISCHARGE_BARGE_ARRIVED", "REMARKS_DISCHARGE_BARGE_ARRIVED", "TIME_DISCHARGE_NOR_TENDERED", "DATE_DISCHARGE_NOR_TENDERED", "REMARKS_DISCHARGE_NOR_TENDERED", "TIME_DISCHARGE_KEY_MEETING", "DATE_DISCHARGE_KEY_MEETING", "REMARKS_DISCHARGE_KEY_MEETING", "TIME_DISCHARGE_NOR_ACCEPTED", "DATE_DISCHARGE_NOR_ACCEPTED", "REMARKS_DISCHARGE_NOR_ACCEPTED", "TIME_DISCHARGE_VALVE_SEEALED", "DATE_DISCHARGE_VALVE_SEEALED", "REMARKS_DISCHARGE_VALVE_SEEALED", "TIME_DISCHARGE_TANK_INSPECT_MEASURE", "DATE_DISCHARGE_TANK_INSPECT_MEASURE", "REMARKS_DISCHARGE_TANK_INSPECT_MEASURE", "TIME_VISUAL_INSPECTION_SAMPLING", "DATE_VISUAL_INSPECTION_SAMPLING", "REMARKS_VISUAL_INSPECTION_SAMPLING", "TIME_DISCHARGE_HOST_CONNECTED", "DATE_DISCHARGE_HOST_CONNECTED", "REMARKS_DISCHARGE_HOST_CONNECTED", "TIME_DISCHARGE_BUNKER_COMMENCED", "DATE_DISCHARGE_BUNKER_COMMENCED", "REMARKS_DISCHARGE_BUNKER_COMMENCED", "TIME_DISCHARGE_BUNKER_COMPLETED", "DATE_DISCHARGE_BUNKER_COMPLETED", "REMARKS_DISCHARGE_BUNKER_COMPLETED", "TIME_DATE_DISCHARGE_HOSE_DISCONNECT", "DATE_DISCHARGE_HOSE_DISCONNECT", "REMARKS_DATE_DISCHARGE_HOSE_DISCONNECT", "TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL", "DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL", "REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL", "TIME_DISCHARGE_VISUAL_INSPECTION_SAMPLING", "DATE_DISCHARGE_VISUAL_INSPECTION_SAMPLING", "REMARKS_DISCHARGE_VISUAL_INSPECTION_SAMPLING", "TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD", "DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD", "REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD", "TIME_DISCHARGE_BARGE_LEAVE_SHIP", "DATE_DISCHARGE_BARGE_LEAVE_SHIP", "REMARKS_DISCHARGE_BARGE_LEAVE_SHIP", "INITIAL_READOUT_KLOBS", "INITIAL_READOUT_KL15", "INITIAL_READOUT_METRIC_TONS", "FINAL_READOUT_KLOBS", "FINAL_READOUT_KL15", "FINAL_READOUT_METRIC_TONS", "DIFFERENCE_KLOBS", "DIFFERENCE_KL15", "DIFFERENCE_METRIC_TONS", "METER_FACTOR_KLOBS", "CORD_VOL_DELIVERED_KLOBS", "CORD_VOL_DELIVERED_KL15", "CORD_VOL_DELIVERED_METRIC_TONS", "DENSITY15DEG_KLOBS", "SUPPLY_LOSS_KLOBS", "SUPPLY_LOSS_KL15", "SUPPLY_LOSS_METRIC_TONS", "TIME_LOADING_TANK_INSPECT_MEASURE", "DATE_LOADING_TANK_INSPECT_MEASURE", "REMARKS_LOADING_TANK_INSPECT_MEASURE", "TIME_LOADING_TANK_INSPECT_METER_VERF", "DATE_LOADING_TANK_INSPECT_METER_VERF", "REMARKS_LOADING_TANK_INSPECT_METER_VERF", "TIME_LOADING_VISUAL_INSPEC_SAMPL", "DATE_LOADING_VISUAL_INSPEC_SAMPL", "REMARKS_LOADING_VISUAL_INSPEC_SAMPL", "TIME_LOADING_TANK_INSPECT_MEASR_FINAL", "DATE_LOADING_TANK_INSPECT_MEASR_FINAL", "REMARKS_LOADING_TANK_INSPECT_MEASR_FINAL", "TIME_LOADING_TANK_INSPECT_METER_FINAL", "DATE_LOADING_TANK_INSPECT_METER_FINAL", "REMARKS_LOADING_TANK_INSPECT_METER_FINAL", "TIME_LOADING_BARGE_LEAVE_DEPOT", "DATE_LOADING_BARGE_LEAVE_DEPOT", "REMARKS_LOADING_BARGE_LEAVE_DEPOT", "TIME_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE", "DATE_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE", "REMARKS_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE", "TIME_DISCHARGE_TANK_INSPECT_METER_VERF", "DATE_DISCHARGE_TANK_INSPECT_METER_VERF", "REMARKS_DISCHARGE_TANK_INSPECT_METER_VERF", "TIME_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT", "DATE_DISCHARGE_HOSE_ARMS_DISCONNECT", "REMARKS_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT", "TIME_DISCHARGE_VISUAL_INSPEC_SAMPL", "DATE_DISCHARGE_VISUAL_INSPEC_SAMPL", "REMARKS_DISCHARGE_VISUAL_INSPEC_SAMPL", "TIME_DISCHARGE_TANK_INSPECT_METER_FINAL", "DATE_DISCHARGE_TANK_INSPECT_METER_FINAL", "REMARKS_DISCHARGE_TANK_INSPECT_METER_FINAL", "BARGE_BEFORE_LOADING_KLOBS", "BARGE_BEFORE_LOADING_KL15", "BARGE_BEFORE_LOADING_METRIC_TONS", "BARGE_AFTER_LOADING_KLOBS", "BARGE_AFTER_LOADING_KL15", "BARGE_AFTER_LOADING_METRIC_TONS", "BARGE_LOADED_KLOBS", "BARGE_LOADED_KL15", "BARGE_LOADED_METRIC_TONS", "BARGE_BEFORE_DISCHARGE_KLOBS", "BARGE_BEFORE_DISCHARGE_KL15", "BARGE_BEFORE_DISCHARGE_METRIC_TONS", "BARGE_AFTER_DISCHARGE_KLOBS", "BARGE_AFTER_DISCHARGE_KL15", "BARGE_AFTER_DISCHARGE_METRIC_TONS", "BARGE_DISCHARGE_KLOBS", "BARGE_DISCHARGE_KL15", "BARGE_DISCHARGE_METRIC_TONS", "BARGE_BEFORE_RECEIVE_KLOBS", "BARGE_BEFORE_RECEIVE_KL15", "BARGE_BEFORE_RECEIVE_METRIC_TONS", "BARGE_AFTER_RECEIVE_KLOBS", "BARGE_AFTER_RECEIVE_KL15", "BARGE_AFTER_RECEIVE_METRIC_TONS", "BARGE_RECEIVE_KLOBS", "BARGE_RECEIVE_KL15", "BARGE_RECEIVE_METRIC_TONS", "LOADING_LOSS_R1_KLOBS", "LOADING_LOSS_R1_KL15", "LOADING_LOSS_R1_METRIC_TONS", "TRANSPORTATION_LOSS_R2_KLOBS", "TRANSPORTATION_LOSS_R2_KL15", "TRANSPORTATION_LOSS_R2_METRIC_TONS", "DISCHARGE_LOSS_R3_KLOBS", "DISCHARGE_LOSS_R3_KL15", "DISCHARGE_LOSS_R3_METRIC_TONS", "SUPPLY_LOSS_R4_KLOBS", "SUPPLY_LOSS_R4_KL15", "SUPPLY_LOSS_R4_METRIC_TONS", "SF_QUANTITY_METRICTON	", "SF_SHORE_RECEIVED_KLOBS", "SF_SHORE_RECEIVED_KL15", "SF_SHORE_RECEIVED_BBLS", "SF_SHORE_RECEIVED_LONGTON", "SF_SHORE_RECEIVED_METRICTON", "SF_STU", "SF_DENSITY_15C", "SFAL_VS_SF_KLOBS", "SFAL_VS_SF_KL15", "SFAL_VS_SF_BBLS", "SFAL_VS_SF_LONGTON", "SFAL_VS_SF_METRICTON", "SFBD_VS_SR_KLOBS", "SFBD_VS_SR_KL15", "SFBD_VS_SR_BBLS", "SFBD_VS_SR_LONGTON", "SFBD_VS_SR_METRICTON", "SR_VS_BOL_KLOBS", "SR_VS_BOL_KL15", "SR_VS_BOL_BBLS", "SR_VS_BOL_LONGTON", "SR_VS_BOL_METRICTON") FROM stdin;
    public       postgres    false    225   �      �           0    0    FORM_ENTRY_FIELD_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."FORM_ENTRY_FIELD_ID_seq"', 32, true);
            public       postgres    false    224            �           0    0    FORM_ENTRY_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."FORM_ENTRY_ID_seq"', 7, true);
            public       postgres    false    223            E          0    16603    HEADER_INFO_CLIENT 
   TABLE DATA                 COPY public."HEADER_INFO_CLIENT" ("ID", "INTERVENTION_ID", "PRINCIPLE", "CONTRACT_ID", "PO", "RETAIL_REFERENCE", "PRODUCT_DETAIL", "FILE_ORDER", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "LOCATION_ID") FROM stdin;
    public       postgres    false    227   ��      �           0    0    HEADER_INFO_CLIENT_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."HEADER_INFO_CLIENT_ID_seq"', 5, true);
            public       postgres    false    226            F          0    16610    INFO_CLIENT 
   TABLE DATA               %  COPY public."INFO_CLIENT" ("ID_INFO", "VESSEL", "BARGE", "PORT", "DATE_LOADING_BARGE", "DATE_LOADING_CLIENT", "DEF_TERMINAL", "DEF_BARGE", "DEF_SHIP", "DELIV_ORDER_KL", "DELIV_ORDER_KL15", "OBQ_KL", "OBQ_KL15", "BAR_FIG_AFTERLOAD_KL", "BAR_FIG_AFTERLOAD_KL15", "BAR_FIG_BFDC_KL", "BAR_FIG_BFDC_KL15", "BAR_FIG_AFDC_KL", "BAR_FIG_AFDC_KL15", "SHIP_REC_KL", "SHIP_REC_KL15", "REMARKS", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "CLIENT_SITE_ID", "CLIENT_SITE_NAME", "HEADER_INFO_CLIENT_ID") FROM stdin;
    public       postgres    false    228   Y�      H          0    16633    KOMPONEN_HTML 
   TABLE DATA               �   COPY public."KOMPONEN_HTML" ("ID", "NAME", "DATA", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    230   ,�      �           0    0    KOMPONEN_HTML_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."KOMPONEN_HTML_ID_seq"', 22, true);
            public       postgres    false    229            J          0    16642    KOMPONEN_JSON 
   TABLE DATA               �   COPY public."KOMPONEN_JSON" ("ID", "NAME", "DATA", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    232   x�      �           0    0    KOMPONEN_JSON_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."KOMPONEN_JSON_ID_seq"', 5, true);
            public       postgres    false    231            L          0    16651 	   MAP_POINT 
   TABLE DATA               �   COPY public."MAP_POINT" ("ID", "NAME", "LATITUDE", "LONGITUDE", "TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "ICON_ID", "SITE_ID", "CABANG_ID") FROM stdin;
    public       postgres    false    234   ��      �           0    0    MAP_POINT_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MAP_POINT_ID_seq"', 13, true);
            public       postgres    false    233            N          0    16660    MASTER_BARGE 
   TABLE DATA               �   COPY public."MASTER_BARGE" ("BARGE_ID", "BARGE_NAME", "BARGE_TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "CLIENT_SITE_NAME") FROM stdin;
    public       postgres    false    236   ��      �           0    0    MASTER_BARGE_BARGE_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."MASTER_BARGE_BARGE_ID_seq"', 13, true);
            public       postgres    false    235            P          0    16669 
   MASTER_BBM 
   TABLE DATA               �   COPY public."MASTER_BBM" ("BBM_ID", "BBM_NAME", "BBM_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    238   ��      �           0    0    MASTER_BBM_BBM_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."MASTER_BBM_BBM_ID_seq"', 2, true);
            public       postgres    false    237            R          0    16678    MASTER_CABANG 
   TABLE DATA               �   COPY public."MASTER_CABANG" ("CABANG_ID", "BRANCH_NAME", "BRANCH_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    240   
�      �           0    0    MASTER_CABANG_CABANG_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."MASTER_CABANG_CABANG_ID_seq"', 4, true);
            public       postgres    false    239            T          0    16687    MASTER_CONTRACT 
   TABLE DATA               �   COPY public."MASTER_CONTRACT" ("ID", "CONTRACT", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    242   Z�      �           0    0    MASTER_CONTRACT_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_CONTRACT_ID_seq"', 5, true);
            public       postgres    false    241            �          0    33688 	   MASTER_CV 
   TABLE DATA                 COPY public."MASTER_CV" ("ID", "NAMA", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "POSISI", "CONTACT_1", "CONTACT_2", "ADDRESS", "BIRTHDATE", "PLACE_BIRTHDATE", "GENDER", "REGION", "PHOTO_FILE", "EMAIL") FROM stdin;
    public       postgres    false    308   ��      �          0    33695    MASTER_CV_CERTIFICATE 
   TABLE DATA               �   COPY public."MASTER_CV_CERTIFICATE" ("ID", "ID_CV", "CERTIFICATE_NAME", "CERITIFICATE_EXPIRED", "CERITIFICATE_FROM", "CERITIFICATE_FILE") FROM stdin;
    public       postgres    false    309   ��      �           0    0    MASTER_CV_CERTIFICATE_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."MASTER_CV_CERTIFICATE_ID_seq"', 15, true);
            public       postgres    false    300            �          0    33702    MASTER_CV_EDUCATION 
   TABLE DATA               \   COPY public."MASTER_CV_EDUCATION" ("ID", "ID_CV", "ID_REF_EDUCATION", "SCHOOL") FROM stdin;
    public       postgres    false    310   �      �           0    0    MASTER_CV_EDUCATION_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."MASTER_CV_EDUCATION_ID_seq"', 102, true);
            public       postgres    false    301            �          0    33706    MASTER_CV_EXPERIENCE 
   TABLE DATA               ]   COPY public."MASTER_CV_EXPERIENCE" ("ID", "ID_CV", "ID_REF_EXPERIENCE", "LEVEL") FROM stdin;
    public       postgres    false    311   ]�      �           0    0    MASTER_CV_EXPERIENCE_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."MASTER_CV_EXPERIENCE_ID_seq"', 81, true);
            public       postgres    false    302            �          0    33710    MASTER_CV_HISTORY_OF_WORK 
   TABLE DATA               ~   COPY public."MASTER_CV_HISTORY_OF_WORK" ("ID", "COMPANY_NAME", "FROM", "END", "POSITION", "DESCRIPTION", "ID_CV") FROM stdin;
    public       postgres    false    312   ��      �           0    0     MASTER_CV_HISTORY_OF_WORK_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."MASTER_CV_HISTORY_OF_WORK_ID_seq"', 70, true);
            public       postgres    false    303            �           0    0    MASTER_CV_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MASTER_CV_ID_seq"', 2, true);
            public       postgres    false    243            �          0    33717    MASTER_CV_REGION 
   TABLE DATA               L   COPY public."MASTER_CV_REGION" ("ID", "ID_REF_REGION", "ID_CV") FROM stdin;
    public       postgres    false    313   ��      �           0    0    MASTER_CV_REGION_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."MASTER_CV_REGION_ID_seq"', 80, false);
            public       postgres    false    304            W          0    16705    MASTER_ICON_MARKER 
   TABLE DATA               �   COPY public."MASTER_ICON_MARKER" ("ID", "NAMA", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    245   ��      �           0    0    MASTER_ICON_MARKER_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."MASTER_ICON_MARKER_ID_seq"', 8, true);
            public       postgres    false    244            Y          0    16714    MASTER_INTERVENTION 
   TABLE DATA               �   COPY public."MASTER_INTERVENTION" ("ID", "INTERVENTION_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "FILE_SOURCE") FROM stdin;
    public       postgres    false    247   K�      �           0    0    MASTER_INTERVENTION_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."MASTER_INTERVENTION_ID_seq"', 25, true);
            public       postgres    false    246            [          0    16723    MASTER_LOCATION 
   TABLE DATA               �   COPY public."MASTER_LOCATION" ("ID", "LOCATION_NAME", "LOCATION_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    249   ��      �           0    0    MASTER_LOCATION_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_LOCATION_ID_seq"', 5, true);
            public       postgres    false    248            ]          0    16732    MASTER_PERSONIL 
   TABLE DATA               �   COPY public."MASTER_PERSONIL" ("ID", "POSISI", "NAMA", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    251   �      �           0    0    MASTER_PERSONIL_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_PERSONIL_ID_seq"', 3, true);
            public       postgres    false    250            _          0    16741    MASTER_PORT 
   TABLE DATA               �   COPY public."MASTER_PORT" ("PORT_ID", "PORT_NAME", "PORT_TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "CLIENT_SITE_NAME") FROM stdin;
    public       postgres    false    253   u�      �           0    0    MASTER_PORT_PORT_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."MASTER_PORT_PORT_ID_seq"', 11, true);
            public       postgres    false    252            a          0    16750    MASTER_PRODUCT 
   TABLE DATA                 COPY public."MASTER_PRODUCT" ("PRODUCT_ID", "PRODUCT_LEVEL", "PRODUCT_REFERENCE", "PRODUCT_NAME", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    255   ��      �           0    0    MASTER_PRODUCT_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_PRODUCT_ID_seq"', 14, true);
            public       postgres    false    254            c          0    16759    MASTER_STDREF 
   TABLE DATA               �   COPY public."MASTER_STDREF" ("ID", "STD_REF", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CONTENT_INFO") FROM stdin;
    public       postgres    false    257   |�      �           0    0    MASTER_STDREF_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."MASTER_STDREF_ID_seq"', 5, true);
            public       postgres    false    256            �           0    0    MASTER_STD_REF_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_STD_REF_ID_seq"', 1, false);
            public       postgres    false    258            f          0    16770    MASTER_TOOL 
   TABLE DATA               �   COPY public."MASTER_TOOL" ("ID", "JENIS", "NAMA", "LOKASI", "JUMLAH", "UPLOAD_SERTIFIKAT", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    260   ��      �           0    0    MASTER_TOOL_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."MASTER_TOOL_ID_seq"', 1, true);
            public       postgres    false    259            h          0    16779    MASTER_VESSEL 
   TABLE DATA               �   COPY public."MASTER_VESSEL" ("VESSEL_ID", "VESSEL_NAME", "VESSEL_TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "CLIENT_SITE_NAME") FROM stdin;
    public       postgres    false    262   �      �           0    0    MASTER_VESSEL_VESSEL_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."MASTER_VESSEL_VESSEL_ID_seq"', 27, true);
            public       postgres    false    261            �          0    33721    REF_EDUCATION 
   TABLE DATA               O   COPY public."REF_EDUCATION" ("ID_REF_EDUCATION", "EDUCATION_TYPE") FROM stdin;
    public       postgres    false    314   %�      �          0    33724    REF_EXP 
   TABLE DATA               =   COPY public."REF_EXP" ("ID_REF_EXP", "EXP_TYPE") FROM stdin;
    public       postgres    false    315   q�      �           0    0    REF_EXP_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."REF_EXP_ID_seq"', 5, true);
            public       postgres    false    305            �          0    33728    REF_POSITION 
   TABLE DATA               G   COPY public."REF_POSITION" ("ID_REF_POSITION", "POSITION") FROM stdin;
    public       postgres    false    316   ��      �           0    0    REF_POSITION_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."REF_POSITION_ID_seq"', 6, true);
            public       postgres    false    306            �          0    33732 
   REF_REGION 
   TABLE DATA               A   COPY public."REF_REGION" ("ID_REF_REGION", "REGION") FROM stdin;
    public       postgres    false    317   �      �           0    0    REF_REGION_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."REF_REGION_ID_seq"', 32, true);
            public       postgres    false    307            j          0    16788    RUNNING_TEXT 
   TABLE DATA               �   COPY public."RUNNING_TEXT" ("RUNNING_TEXT_ID", "MESSAGE", "DISPLAY_START_TIME", "DISPLAY_STOP_TIME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID") FROM stdin;
    public       postgres    false    264   �      �           0    0     RUNNING_TEXT_RUNNING_TEXT_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."RUNNING_TEXT_RUNNING_TEXT_ID_seq"', 87, true);
            public       postgres    false    263            �          0    33579    WA 
   TABLE DATA               D   COPY public."WA" ("ID", "CONTACT", "MESSAGE", "STATUS") FROM stdin;
    public       postgres    false    298   ��      �           0    0 	   WA_ID_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public."WA_ID_seq"', 11, true);
            public       postgres    false    299            l          0    16797    WEBSITE_ARTICLE 
   TABLE DATA               �   COPY public."WEBSITE_ARTICLE" ("ARTICLE_ID", "ARTICLE_CATEGORY_ID", "TITLE", "CONTENT", "STATUS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    266   k�      n          0    16806    WEBSITE_ARTICLE_CATEGORY 
   TABLE DATA               �   COPY public."WEBSITE_ARTICLE_CATEGORY" ("ARTICLE_CATEGORY_ID", "CATEGORY_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    268   ��      �           0    0    WEBSITE_ARTICLE_CATEGORY_ID_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."WEBSITE_ARTICLE_CATEGORY_ID_seq"', 3, true);
            public       postgres    false    267            �           0    0    WEBSITE_ARTICLE_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."WEBSITE_ARTICLE_ID_seq"', 3, true);
            public       postgres    false    265            p          0    16815    WEBSITE_MENU 
   TABLE DATA                 COPY public."WEBSITE_MENU" ("MENU_ID", "MENU_LEVEL", "REFERENCE", "TITLE", "URL", "REMARK", "TARGET", "IMAGE", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    270   �      �           0    0    WEBSITE_MENU_MENU_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."WEBSITE_MENU_MENU_ID_seq"', 22, true);
            public       postgres    false    269            r          0    16824    WEBSITE_PAGE_STATIC 
   TABLE DATA               �   COPY public."WEBSITE_PAGE_STATIC" ("PAGE_STATIC_ID", "TITLE", "CONTENT", "STATUS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "URL", "SEO_TITLE") FROM stdin;
    public       postgres    false    272   w�      �           0    0    WEBSITE_PAGE_STATIC_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."WEBSITE_PAGE_STATIC_ID_seq"', 17, true);
            public       postgres    false    271            t          0    16833    WEBSITE_SLIDER 
   TABLE DATA               �   COPY public."WEBSITE_SLIDER" ("SLIDER_ID", "NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "STATUS") FROM stdin;
    public       postgres    false    274   +�      v          0    16842    WEBSITE_SLIDER_DETAIL 
   TABLE DATA               �   COPY public."WEBSITE_SLIDER_DETAIL" ("SLIDER_DETAIL_ID", "SLIDER_ID", "TITLE", "CONTENT", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PATH", "FILE_NAME", "STATUS") FROM stdin;
    public       postgres    false    276   `�      �           0    0    WEBSITE_SLIDER_DETAIL_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."WEBSITE_SLIDER_DETAIL_ID_seq"', 18, true);
            public       postgres    false    275            �           0    0    WEBSITE_SLIDER_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."WEBSITE_SLIDER_ID_seq"', 4, true);
            public       postgres    false    273            x          0    16851    WEBSITE_TAG 
   TABLE DATA               �   COPY public."WEBSITE_TAG" ("TAG_ID", "TAG_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    278   ��      z          0    16860    WEBSITE_TAG_ARTICLE 
   TABLE DATA               �   COPY public."WEBSITE_TAG_ARTICLE" ("TAG_ARTICLE_ID", "ARTICLE_ID", "TAG_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    280   =�      �           0    0    WEBSITE_TAG_ARTICLE_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."WEBSITE_TAG_ARTICLE_ID_seq"', 11, true);
            public       postgres    false    279            �           0    0    WEBSITE_TAG_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."WEBSITE_TAG_ID_seq"', 8, true);
            public       postgres    false    277            {          0    16867    daemons 
   TABLE DATA               2   COPY public.daemons ("Start", "Info") FROM stdin;
    public       postgres    false    281   p�      |          0    16873    gammu 
   TABLE DATA               *   COPY public.gammu ("Version") FROM stdin;
    public       postgres    false    282   ��      }          0    16877    inbox 
   TABLE DATA               �   COPY public.inbox ("UpdatedInDB", "ReceivingDateTime", "Text", "SenderNumber", "Coding", "UDH", "SMSCNumber", "Class", "TextDecoded", "ID", "RecipientID", "Processed") FROM stdin;
    public       postgres    false    283   ��      �           0    0    inbox_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."inbox_ID_seq"', 10, true);
            public       postgres    false    284                      0    16894    outbox 
   TABLE DATA               F  COPY public.outbox ("UpdatedInDB", "InsertIntoDB", "SendingDateTime", "SendBefore", "SendAfter", "Text", "DestinationNumber", "Coding", "UDH", "Class", "TextDecoded", "ID", "MultiPart", "RelativeValidity", "SenderID", "SendingTimeOut", "DeliveryReport", "CreatorID", "Retries", "Priority", "Status", "StatusCode") FROM stdin;
    public       postgres    false    285   ��      �           0    0    outbox_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."outbox_ID_seq"', 106, true);
            public       postgres    false    286            �          0    16922    outbox_multipart 
   TABLE DATA               u   COPY public.outbox_multipart ("Text", "Coding", "UDH", "Class", "TextDecoded", "ID", "SequencePosition") FROM stdin;
    public       postgres    false    287   ��      �           0    0    outbox_multipart_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."outbox_multipart_ID_seq"', 1, false);
            public       postgres    false    288            �          0    16934    pbk 
   TABLE DATA               @   COPY public.pbk ("ID", "GroupID", "Name", "Number") FROM stdin;
    public       postgres    false    289   ��      �           0    0 
   pbk_ID_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."pbk_ID_seq"', 1, false);
            public       postgres    false    290            �          0    16943 
   pbk_groups 
   TABLE DATA               2   COPY public.pbk_groups ("Name", "ID") FROM stdin;
    public       postgres    false    291   ��      �           0    0    pbk_groups_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."pbk_groups_ID_seq"', 1, false);
            public       postgres    false    292            �           0    0    pelni_info_id_info_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pelni_info_id_info_seq', 3, false);
            public       postgres    false    293            �           0    0    pelni_info_id_info_seq1    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pelni_info_id_info_seq1', 81, true);
            public       postgres    false    294            �          0    16955    phones 
   TABLE DATA               �   COPY public.phones ("ID", "UpdatedInDB", "InsertIntoDB", "TimeOut", "Send", "Receive", "IMEI", "NetCode", "NetName", "Client", "Battery", "Signal", "Sent", "Received") FROM stdin;
    public       postgres    false    295   ��      �          0    16972 	   sentitems 
   TABLE DATA               %  COPY public.sentitems ("UpdatedInDB", "InsertIntoDB", "SendingDateTime", "DeliveryDateTime", "Text", "DestinationNumber", "Coding", "UDH", "SMSCNumber", "Class", "TextDecoded", "ID", "SenderID", "SequencePosition", "Status", "StatusError", "TPMR", "RelativeValidity", "CreatorID") FROM stdin;
    public       postgres    false    296   ��      �           0    0    sentitems_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."sentitems_ID_seq"', 1, false);
            public       postgres    false    297            &
           2606    17005 (   APP_CLIENT_ACCESS APP_CLIENT_ACCESS_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."APP_CLIENT_ACCESS"
    ADD CONSTRAINT "APP_CLIENT_ACCESS_pkey" PRIMARY KEY ("ID");
 V   ALTER TABLE ONLY public."APP_CLIENT_ACCESS" DROP CONSTRAINT "APP_CLIENT_ACCESS_pkey";
       public         postgres    false    189    189            ,
           2606    17007 $   APP_CLIENT_MENU APP_CLIENT_MENU_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."APP_CLIENT_MENU"
    ADD CONSTRAINT "APP_CLIENT_MENU_pkey" PRIMARY KEY ("MENU_ID");
 R   ALTER TABLE ONLY public."APP_CLIENT_MENU" DROP CONSTRAINT "APP_CLIENT_MENU_pkey";
       public         postgres    false    195    195            .
           2606    17009 $   APP_CLIENT_SITE APP_CLIENT_SITE_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."APP_CLIENT_SITE"
    ADD CONSTRAINT "APP_CLIENT_SITE_pkey" PRIMARY KEY ("CLIENT_SITE_ID");
 R   ALTER TABLE ONLY public."APP_CLIENT_SITE" DROP CONSTRAINT "APP_CLIENT_SITE_pkey";
       public         postgres    false    197    197            2
           2606    17015 0   APP_CLIENT_USER_GROUP APP_CLIENT_USER_GROUP_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."APP_CLIENT_USER_GROUP"
    ADD CONSTRAINT "APP_CLIENT_USER_GROUP_pkey" PRIMARY KEY ("GROUP_ID");
 ^   ALTER TABLE ONLY public."APP_CLIENT_USER_GROUP" DROP CONSTRAINT "APP_CLIENT_USER_GROUP_pkey";
       public         postgres    false    204    204            0
           2606    17017 $   APP_CLIENT_USER APP_CLIENT_USER_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."APP_CLIENT_USER"
    ADD CONSTRAINT "APP_CLIENT_USER_pkey" PRIMARY KEY ("USER_ID");
 R   ALTER TABLE ONLY public."APP_CLIENT_USER" DROP CONSTRAINT "APP_CLIENT_USER_pkey";
       public         postgres    false    202    202            6
           2606    17019 ,   APP_FUNCTION_ACCESS APP_FUNCTION_ACCESS_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."APP_FUNCTION_ACCESS"
    ADD CONSTRAINT "APP_FUNCTION_ACCESS_pkey" PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public."APP_FUNCTION_ACCESS" DROP CONSTRAINT "APP_FUNCTION_ACCESS_pkey";
       public         postgres    false    207    207            *
           2606    17021 /   APP_CLIENT_HEADER_ACCESS APP_HEADER_ACCESS_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."APP_CLIENT_HEADER_ACCESS"
    ADD CONSTRAINT "APP_HEADER_ACCESS_pkey" PRIMARY KEY ("HEADER_ACCESS_ID");
 ]   ALTER TABLE ONLY public."APP_CLIENT_HEADER_ACCESS" DROP CONSTRAINT "APP_HEADER_ACCESS_pkey";
       public         postgres    false    193    193            :
           2606    17023 "   APP_LOG_CLIENT APP_LOG_CLIENT_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."APP_LOG_CLIENT"
    ADD CONSTRAINT "APP_LOG_CLIENT_pkey" PRIMARY KEY ("LOG_ID");
 P   ALTER TABLE ONLY public."APP_LOG_CLIENT" DROP CONSTRAINT "APP_LOG_CLIENT_pkey";
       public         postgres    false    212    212            8
           2606    17025    APP_LOG APP_LOG_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."APP_LOG"
    ADD CONSTRAINT "APP_LOG_pkey" PRIMARY KEY ("LOG_ID");
 B   ALTER TABLE ONLY public."APP_LOG" DROP CONSTRAINT "APP_LOG_pkey";
       public         postgres    false    210    210            <
           2606    17027    APP_MENU APP_MENU_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."APP_MENU"
    ADD CONSTRAINT "APP_MENU_pkey" PRIMARY KEY ("MENU_ID");
 D   ALTER TABLE ONLY public."APP_MENU" DROP CONSTRAINT "APP_MENU_pkey";
       public         postgres    false    214    214            >
           2606    17029    APP_ROUTE APP_ROUTE_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."APP_ROUTE"
    ADD CONSTRAINT "APP_ROUTE_pkey" PRIMARY KEY ("ROUTE_ID");
 F   ALTER TABLE ONLY public."APP_ROUTE" DROP CONSTRAINT "APP_ROUTE_pkey";
       public         postgres    false    216    216            @
           2606    17031    APP_SETTING APP_SETTING_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."APP_SETTING"
    ADD CONSTRAINT "APP_SETTING_pkey" PRIMARY KEY ("SETTING_ID");
 J   ALTER TABLE ONLY public."APP_SETTING" DROP CONSTRAINT "APP_SETTING_pkey";
       public         postgres    false    218    218            D
           2606    17035 "   APP_USER_GROUP APP_USER_GROUP_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."APP_USER_GROUP"
    ADD CONSTRAINT "APP_USER_GROUP_pkey" PRIMARY KEY ("GROUP_ID");
 P   ALTER TABLE ONLY public."APP_USER_GROUP" DROP CONSTRAINT "APP_USER_GROUP_pkey";
       public         postgres    false    222    222            B
           2606    17037    APP_USER APP_USER_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."APP_USER"
    ADD CONSTRAINT "APP_USER_pkey" PRIMARY KEY ("USER_ID");
 D   ALTER TABLE ONLY public."APP_USER" DROP CONSTRAINT "APP_USER_pkey";
       public         postgres    false    220    220            (
           2606    17039 ?   APP_CLIENT_FORM_UPLOAD_DETAIL CLIENT_FILE_UPLOAD_DETAIL_ID_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."APP_CLIENT_FORM_UPLOAD_DETAIL"
    ADD CONSTRAINT "CLIENT_FILE_UPLOAD_DETAIL_ID_pkey" PRIMARY KEY ("FILE_UPLOAD_DETAIL_ID");
 m   ALTER TABLE ONLY public."APP_CLIENT_FORM_UPLOAD_DETAIL" DROP CONSTRAINT "CLIENT_FILE_UPLOAD_DETAIL_ID_pkey";
       public         postgres    false    191    191            4
           2606    17041 "   APP_FILE_MANAGER FILE_MANAGER_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."APP_FILE_MANAGER"
    ADD CONSTRAINT "FILE_MANAGER_pkey" PRIMARY KEY ("FILE_MANAGER_ID");
 P   ALTER TABLE ONLY public."APP_FILE_MANAGER" DROP CONSTRAINT "FILE_MANAGER_pkey";
       public         postgres    false    206    206            F
           2606    17043 &   FORM_ENTRY_FIELD FORM_ENTRY_FIELD_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."FORM_ENTRY_FIELD"
    ADD CONSTRAINT "FORM_ENTRY_FIELD_pkey" PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY public."FORM_ENTRY_FIELD" DROP CONSTRAINT "FORM_ENTRY_FIELD_pkey";
       public         postgres    false    225    225            H
           2606    17047 *   HEADER_INFO_CLIENT HEADER_INFO_CLIENT_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."HEADER_INFO_CLIENT"
    ADD CONSTRAINT "HEADER_INFO_CLIENT_pkey" PRIMARY KEY ("ID");
 X   ALTER TABLE ONLY public."HEADER_INFO_CLIENT" DROP CONSTRAINT "HEADER_INFO_CLIENT_pkey";
       public         postgres    false    227    227            L
           2606    17049     KOMPONEN_HTML KOMPONEN_HTML_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."KOMPONEN_HTML"
    ADD CONSTRAINT "KOMPONEN_HTML_pkey" PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."KOMPONEN_HTML" DROP CONSTRAINT "KOMPONEN_HTML_pkey";
       public         postgres    false    230    230            N
           2606    17051     KOMPONEN_JSON KOMPONEN_JSON_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."KOMPONEN_JSON"
    ADD CONSTRAINT "KOMPONEN_JSON_pkey" PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."KOMPONEN_JSON" DROP CONSTRAINT "KOMPONEN_JSON_pkey";
       public         postgres    false    232    232            P
           2606    17053    MAP_POINT MAP_POINT_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."MAP_POINT"
    ADD CONSTRAINT "MAP_POINT_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."MAP_POINT" DROP CONSTRAINT "MAP_POINT_pkey";
       public         postgres    false    234    234            R
           2606    17055    MASTER_BARGE MASTER_BARGE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MASTER_BARGE"
    ADD CONSTRAINT "MASTER_BARGE_pkey" PRIMARY KEY ("BARGE_ID");
 L   ALTER TABLE ONLY public."MASTER_BARGE" DROP CONSTRAINT "MASTER_BARGE_pkey";
       public         postgres    false    236    236            T
           2606    17057    MASTER_BBM MASTER_BBM_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."MASTER_BBM"
    ADD CONSTRAINT "MASTER_BBM_pkey" PRIMARY KEY ("BBM_ID");
 H   ALTER TABLE ONLY public."MASTER_BBM" DROP CONSTRAINT "MASTER_BBM_pkey";
       public         postgres    false    238    238            V
           2606    17059     MASTER_CABANG MASTER_CABANG_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MASTER_CABANG"
    ADD CONSTRAINT "MASTER_CABANG_pkey" PRIMARY KEY ("CABANG_ID");
 N   ALTER TABLE ONLY public."MASTER_CABANG" DROP CONSTRAINT "MASTER_CABANG_pkey";
       public         postgres    false    240    240            X
           2606    17061 $   MASTER_CONTRACT MASTER_CONTRACT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MASTER_CONTRACT"
    ADD CONSTRAINT "MASTER_CONTRACT_pkey" PRIMARY KEY ("ID");
 R   ALTER TABLE ONLY public."MASTER_CONTRACT" DROP CONSTRAINT "MASTER_CONTRACT_pkey";
       public         postgres    false    242    242            �
           2606    33739 0   MASTER_CV_CERTIFICATE MASTER_CV_CERTIFICATE_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."MASTER_CV_CERTIFICATE"
    ADD CONSTRAINT "MASTER_CV_CERTIFICATE_pkey" PRIMARY KEY ("ID");
 ^   ALTER TABLE ONLY public."MASTER_CV_CERTIFICATE" DROP CONSTRAINT "MASTER_CV_CERTIFICATE_pkey";
       public         postgres    false    309    309            �
           2606    33741 ,   MASTER_CV_EDUCATION MASTER_CV_EDUCATION_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."MASTER_CV_EDUCATION"
    ADD CONSTRAINT "MASTER_CV_EDUCATION_pkey" PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public."MASTER_CV_EDUCATION" DROP CONSTRAINT "MASTER_CV_EDUCATION_pkey";
       public         postgres    false    310    310            �
           2606    33743 .   MASTER_CV_EXPERIENCE MASTER_CV_EXPERIENCE_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."MASTER_CV_EXPERIENCE"
    ADD CONSTRAINT "MASTER_CV_EXPERIENCE_pkey" PRIMARY KEY ("ID");
 \   ALTER TABLE ONLY public."MASTER_CV_EXPERIENCE" DROP CONSTRAINT "MASTER_CV_EXPERIENCE_pkey";
       public         postgres    false    311    311            �
           2606    33745 &   MASTER_CV_REGION MASTER_CV_REGION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."MASTER_CV_REGION"
    ADD CONSTRAINT "MASTER_CV_REGION_pkey" PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY public."MASTER_CV_REGION" DROP CONSTRAINT "MASTER_CV_REGION_pkey";
       public         postgres    false    313    313            �
           2606    33737    MASTER_CV MASTER_CV_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."MASTER_CV"
    ADD CONSTRAINT "MASTER_CV_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."MASTER_CV" DROP CONSTRAINT "MASTER_CV_pkey";
       public         postgres    false    308    308            Z
           2606    17065 *   MASTER_ICON_MARKER MASTER_ICON_MARKER_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."MASTER_ICON_MARKER"
    ADD CONSTRAINT "MASTER_ICON_MARKER_pkey" PRIMARY KEY ("ID");
 X   ALTER TABLE ONLY public."MASTER_ICON_MARKER" DROP CONSTRAINT "MASTER_ICON_MARKER_pkey";
       public         postgres    false    245    245            \
           2606    17067 ,   MASTER_INTERVENTION MASTER_INTERVENTION_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."MASTER_INTERVENTION"
    ADD CONSTRAINT "MASTER_INTERVENTION_pkey" PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public."MASTER_INTERVENTION" DROP CONSTRAINT "MASTER_INTERVENTION_pkey";
       public         postgres    false    247    247            ^
           2606    17069 $   MASTER_LOCATION MASTER_LOCATION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MASTER_LOCATION"
    ADD CONSTRAINT "MASTER_LOCATION_pkey" PRIMARY KEY ("ID");
 R   ALTER TABLE ONLY public."MASTER_LOCATION" DROP CONSTRAINT "MASTER_LOCATION_pkey";
       public         postgres    false    249    249            `
           2606    17071 $   MASTER_PERSONIL MASTER_PERSONIL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MASTER_PERSONIL"
    ADD CONSTRAINT "MASTER_PERSONIL_pkey" PRIMARY KEY ("ID");
 R   ALTER TABLE ONLY public."MASTER_PERSONIL" DROP CONSTRAINT "MASTER_PERSONIL_pkey";
       public         postgres    false    251    251            b
           2606    17073    MASTER_PORT MASTER_PORT_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."MASTER_PORT"
    ADD CONSTRAINT "MASTER_PORT_pkey" PRIMARY KEY ("PORT_ID");
 J   ALTER TABLE ONLY public."MASTER_PORT" DROP CONSTRAINT "MASTER_PORT_pkey";
       public         postgres    false    253    253            d
           2606    17075 "   MASTER_PRODUCT MASTER_PRODUCT_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."MASTER_PRODUCT"
    ADD CONSTRAINT "MASTER_PRODUCT_pkey" PRIMARY KEY ("PRODUCT_ID");
 P   ALTER TABLE ONLY public."MASTER_PRODUCT" DROP CONSTRAINT "MASTER_PRODUCT_pkey";
       public         postgres    false    255    255            f
           2606    17077     MASTER_STDREF MASTER_STDREF_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."MASTER_STDREF"
    ADD CONSTRAINT "MASTER_STDREF_pkey" PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."MASTER_STDREF" DROP CONSTRAINT "MASTER_STDREF_pkey";
       public         postgres    false    257    257            h
           2606    17079    MASTER_TOOL MASTER_TOOL_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MASTER_TOOL"
    ADD CONSTRAINT "MASTER_TOOL_pkey" PRIMARY KEY ("ID");
 J   ALTER TABLE ONLY public."MASTER_TOOL" DROP CONSTRAINT "MASTER_TOOL_pkey";
       public         postgres    false    260    260            j
           2606    17081     MASTER_VESSEL MASTER_VESSEL_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MASTER_VESSEL"
    ADD CONSTRAINT "MASTER_VESSEL_pkey" PRIMARY KEY ("VESSEL_ID");
 N   ALTER TABLE ONLY public."MASTER_VESSEL" DROP CONSTRAINT "MASTER_VESSEL_pkey";
       public         postgres    false    262    262            �
           2606    33747     REF_EDUCATION REF_EDUCATION_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."REF_EDUCATION"
    ADD CONSTRAINT "REF_EDUCATION_pkey" PRIMARY KEY ("ID_REF_EDUCATION");
 N   ALTER TABLE ONLY public."REF_EDUCATION" DROP CONSTRAINT "REF_EDUCATION_pkey";
       public         postgres    false    314    314            �
           2606    33749    REF_EXP REF_EXP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."REF_EXP"
    ADD CONSTRAINT "REF_EXP_pkey" PRIMARY KEY ("ID_REF_EXP");
 B   ALTER TABLE ONLY public."REF_EXP" DROP CONSTRAINT "REF_EXP_pkey";
       public         postgres    false    315    315            �
           2606    33751    REF_POSITION REF_POSITION_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."REF_POSITION"
    ADD CONSTRAINT "REF_POSITION_pkey" PRIMARY KEY ("ID_REF_POSITION");
 L   ALTER TABLE ONLY public."REF_POSITION" DROP CONSTRAINT "REF_POSITION_pkey";
       public         postgres    false    316    316            l
           2606    17083    RUNNING_TEXT RUNNING_TEXT_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."RUNNING_TEXT"
    ADD CONSTRAINT "RUNNING_TEXT_pkey" PRIMARY KEY ("RUNNING_TEXT_ID");
 L   ALTER TABLE ONLY public."RUNNING_TEXT" DROP CONSTRAINT "RUNNING_TEXT_pkey";
       public         postgres    false    264    264            $
           2606    17085    ALERT_SUBSCRIBER SMS_ALERT_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."ALERT_SUBSCRIBER"
    ADD CONSTRAINT "SMS_ALERT_pkey" PRIMARY KEY ("ALERT_SUBSCRIBER_ID");
 M   ALTER TABLE ONLY public."ALERT_SUBSCRIBER" DROP CONSTRAINT "SMS_ALERT_pkey";
       public         postgres    false    187    187            �
           2606    33586 
   WA WA_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."WA"
    ADD CONSTRAINT "WA_pkey" PRIMARY KEY ("ID");
 8   ALTER TABLE ONLY public."WA" DROP CONSTRAINT "WA_pkey";
       public         postgres    false    298    298            p
           2606    17087 6   WEBSITE_ARTICLE_CATEGORY WEBSITE_ARTICLE_CATEGORY_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."WEBSITE_ARTICLE_CATEGORY"
    ADD CONSTRAINT "WEBSITE_ARTICLE_CATEGORY_pkey" PRIMARY KEY ("ARTICLE_CATEGORY_ID");
 d   ALTER TABLE ONLY public."WEBSITE_ARTICLE_CATEGORY" DROP CONSTRAINT "WEBSITE_ARTICLE_CATEGORY_pkey";
       public         postgres    false    268    268            n
           2606    17089 $   WEBSITE_ARTICLE WEBSITE_ARTICLE_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."WEBSITE_ARTICLE"
    ADD CONSTRAINT "WEBSITE_ARTICLE_pkey" PRIMARY KEY ("ARTICLE_CATEGORY_ID");
 R   ALTER TABLE ONLY public."WEBSITE_ARTICLE" DROP CONSTRAINT "WEBSITE_ARTICLE_pkey";
       public         postgres    false    266    266            r
           2606    17091    WEBSITE_MENU WEBSITE_MENU_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."WEBSITE_MENU"
    ADD CONSTRAINT "WEBSITE_MENU_pkey" PRIMARY KEY ("MENU_ID");
 L   ALTER TABLE ONLY public."WEBSITE_MENU" DROP CONSTRAINT "WEBSITE_MENU_pkey";
       public         postgres    false    270    270            t
           2606    17093 ,   WEBSITE_PAGE_STATIC WEBSITE_PAGE_STATIC_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."WEBSITE_PAGE_STATIC"
    ADD CONSTRAINT "WEBSITE_PAGE_STATIC_pkey" PRIMARY KEY ("PAGE_STATIC_ID");
 Z   ALTER TABLE ONLY public."WEBSITE_PAGE_STATIC" DROP CONSTRAINT "WEBSITE_PAGE_STATIC_pkey";
       public         postgres    false    272    272            x
           2606    17095 3   WEBSITE_SLIDER_DETAIL WEBSITE_SLIDER_DETAIL_ID_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."WEBSITE_SLIDER_DETAIL"
    ADD CONSTRAINT "WEBSITE_SLIDER_DETAIL_ID_pkey" PRIMARY KEY ("SLIDER_DETAIL_ID");
 a   ALTER TABLE ONLY public."WEBSITE_SLIDER_DETAIL" DROP CONSTRAINT "WEBSITE_SLIDER_DETAIL_ID_pkey";
       public         postgres    false    276    276            v
           2606    17097 "   WEBSITE_SLIDER WEBSITE_SLIDER_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."WEBSITE_SLIDER"
    ADD CONSTRAINT "WEBSITE_SLIDER_pkey" PRIMARY KEY ("SLIDER_ID");
 P   ALTER TABLE ONLY public."WEBSITE_SLIDER" DROP CONSTRAINT "WEBSITE_SLIDER_pkey";
       public         postgres    false    274    274            |
           2606    17099 ,   WEBSITE_TAG_ARTICLE WEBSITE_TAG_ARTICLE_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."WEBSITE_TAG_ARTICLE"
    ADD CONSTRAINT "WEBSITE_TAG_ARTICLE_pkey" PRIMARY KEY ("TAG_ARTICLE_ID");
 Z   ALTER TABLE ONLY public."WEBSITE_TAG_ARTICLE" DROP CONSTRAINT "WEBSITE_TAG_ARTICLE_pkey";
       public         postgres    false    280    280            z
           2606    17101    WEBSITE_TAG WEBSITE_TAG_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."WEBSITE_TAG"
    ADD CONSTRAINT "WEBSITE_TAG_pkey" PRIMARY KEY ("TAG_ID");
 J   ALTER TABLE ONLY public."WEBSITE_TAG" DROP CONSTRAINT "WEBSITE_TAG_pkey";
       public         postgres    false    278    278            ~
           2606    17103    inbox inbox_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.inbox
    ADD CONSTRAINT inbox_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.inbox DROP CONSTRAINT inbox_pkey;
       public         postgres    false    283    283            �
           2606    17105 &   outbox_multipart outbox_multipart_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.outbox_multipart
    ADD CONSTRAINT outbox_multipart_pkey PRIMARY KEY ("ID", "SequencePosition");
 P   ALTER TABLE ONLY public.outbox_multipart DROP CONSTRAINT outbox_multipart_pkey;
       public         postgres    false    287    287    287            �
           2606    17107    outbox outbox_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.outbox
    ADD CONSTRAINT outbox_pkey PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public.outbox DROP CONSTRAINT outbox_pkey;
       public         postgres    false    285    285            �
           2606    17109    pbk_groups pbk_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pbk_groups
    ADD CONSTRAINT pbk_groups_pkey PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public.pbk_groups DROP CONSTRAINT pbk_groups_pkey;
       public         postgres    false    291    291            �
           2606    17111    pbk pbk_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pbk
    ADD CONSTRAINT pbk_pkey PRIMARY KEY ("ID");
 6   ALTER TABLE ONLY public.pbk DROP CONSTRAINT pbk_pkey;
       public         postgres    false    289    289            J
           2606    17113    INFO_CLIENT pelni_info_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."INFO_CLIENT"
    ADD CONSTRAINT pelni_info_pkey PRIMARY KEY ("ID_INFO");
 G   ALTER TABLE ONLY public."INFO_CLIENT" DROP CONSTRAINT pelni_info_pkey;
       public         postgres    false    228    228            �
           2606    17115    phones phones_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY ("IMEI");
 <   ALTER TABLE ONLY public.phones DROP CONSTRAINT phones_pkey;
       public         postgres    false    295    295            �
           2606    17117    sentitems sentitems_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.sentitems
    ADD CONSTRAINT sentitems_pkey PRIMARY KEY ("ID", "SequencePosition");
 B   ALTER TABLE ONLY public.sentitems DROP CONSTRAINT sentitems_pkey;
       public         postgres    false    296    296    296            
           1259    17118    outbox_date    INDEX     ]   CREATE INDEX outbox_date ON public.outbox USING btree ("SendingDateTime", "SendingTimeOut");
    DROP INDEX public.outbox_date;
       public         postgres    false    285    285            �
           1259    17119    outbox_sender    INDEX     F   CREATE INDEX outbox_sender ON public.outbox USING btree ("SenderID");
 !   DROP INDEX public.outbox_sender;
       public         postgres    false    285            �
           1259    17120    sentitems_date    INDEX     R   CREATE INDEX sentitems_date ON public.sentitems USING btree ("DeliveryDateTime");
 "   DROP INDEX public.sentitems_date;
       public         postgres    false    296            �
           1259    17121    sentitems_dest    INDEX     S   CREATE INDEX sentitems_dest ON public.sentitems USING btree ("DestinationNumber");
 "   DROP INDEX public.sentitems_dest;
       public         postgres    false    296            �
           1259    17122    sentitems_sender    INDEX     L   CREATE INDEX sentitems_sender ON public.sentitems USING btree ("SenderID");
 $   DROP INDEX public.sentitems_sender;
       public         postgres    false    296            �
           1259    17123    sentitems_tpmr    INDEX     F   CREATE INDEX sentitems_tpmr ON public.sentitems USING btree ("TPMR");
 "   DROP INDEX public.sentitems_tpmr;
       public         postgres    false    296            �
           2620    17124    inbox update_timestamp    TRIGGER     x   CREATE TRIGGER update_timestamp BEFORE UPDATE ON public.inbox FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();
 /   DROP TRIGGER update_timestamp ON public.inbox;
       public       postgres    false    318    283            �
           2620    17125    phones update_timestamp    TRIGGER     y   CREATE TRIGGER update_timestamp BEFORE UPDATE ON public.phones FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();
 0   DROP TRIGGER update_timestamp ON public.phones;
       public       postgres    false    295    318            �
           2620    17126    sentitems update_timestamp    TRIGGER     |   CREATE TRIGGER update_timestamp BEFORE UPDATE ON public.sentitems FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();
 3   DROP TRIGGER update_timestamp ON public.sentitems;
       public       postgres    false    296    318            �
           2620    17127    outbox update_timestamp    TRIGGER     y   CREATE TRIGGER update_timestamp BEFORE UPDATE ON public.outbox FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();
 0   DROP TRIGGER update_timestamp ON public.outbox;
       public       postgres    false    285    318               <   x�3�4�4�420��50�50R04�25�26��CA� ˒�M������	.�1z\\\ Ȼ&         �   x���A
� E��)r����$�B�iC�MZ\S��ܿ��B�hdt����7�ϙ�Y�V�}��~B-�AVVdU`�����q[����Ⱥ$�j���F!�ݺxJkaQ��PE��*�4!��.��˳f�.s/�e�bI�rT�T�Y��mݜ�&�����}Hw�I$�t�9r6��g n�NB�'�.      !   �   x����
�0F��w�lu�	�E�Q��R(c�t�-���o� �S!r_���FS�7�L�X�� [���8R-��3��i� a5_'[:aւ	(d ��l���PC�唱�9�߼W0�cw�+�����u�}n։�j�*)�w2x`/���]�\T�����d,ؔT��{C}`��ʐO��$��us�.��J� � Bu��I/���`�q�o%L��      #   *   x���4�4�4���D\�@9ܲ���xd�8Mq���qqq �t�      %   �   x���O�  �~
�}ͭC��Kt��<oN�`:��O��A-�����~�
�������`Jr�;�J!#��9��%a
��g������Ϛ��ͼ�D�e	�<���:�{vHܐ*�޺�&�F��hm�u2���$��X7&��T�~� \�rփ��I@Q��j'S�ch��+��g�����~�      '     x��Ͻn�0��<E_��* li��T-�%C�������o_�*S��,�����='H�9�e�( �)Cʢ�Ӑ�8�^m�I�.���`a4R�r��F�C��DF**u�}�*�b$�8u���K��|Zhe��Ɯ�.`��J�\`D�K���T#k�[����K�L�����N����#W���k�ܡsK����2g�d�e���GW�����lg�-�|��~��Y����lh�>�]���,B�g�w���������:��      ,   �   x���Mj�0����@�~-{�U!5�J!�i��*�,���Wv�)�@O��FP�/\H�!�6�mӡo������������(�4J�B���%��ܕF�|�y`s�g+X�3�S4�.���s�+6����|>c|�nc�z�7ë=~c�˓��b�M�uf�V+�/I8T��lA����0��n����7J�Z�¸��i\P����L&_Ib!	�VRvA�]3}��Y��t��Lrc.H{J��њ�      .   9   x�3�t���O��4���CC\F��E%���y�X�9|���u��eb������ ��M      0   �   x����J1�ϓ�������x�E����Ӧ�aw���9�-����?�?�	b
�9H ��2�s;R��	���o�����<�D��B��:�P{�5�t����<���Bk��Ô�<\L�W*�#�.e��(��ak���^)��:ؼ��hg��<���Ҵ�1EJ�C�L#q��gld���ʭZ�_oVK�L� ��K�i�k�R_���P      1   �  x���Kn1Dף����%r��l�������(ۉE�w�lv�jb������ӏ��������M����v��󴥓״*��ˢ\C���=Զ�.��Euu^T\���z8<��r��
4��-�*O�I�*P�*Qc�n�~��_��AL�U�#�7����ȅ�]6�;�-��a-TJT7�BZ^1f����:?3K�W==Z��G�.�kF��5���qeù�����p�������IȲ��y��%��E��͘��!����Ĥf���jҰf����"s&�M� j4�=��Ω������xC��0Y窱+��zw��Mۡ��c�U�5�$fw�[4���A�I���	=k��\� ��L���S��\�l�&x>T�A͌��ݢ)U/�ˍݮ�j�ۡ�]�K��x-*�.4*�:63��E�S�CX���J�;����J�B�J&�W/BJ�zkJƀP(B�d�%c0\(�SS2�}�d��A���VJF1�R2
Õ�QL��L��(%���d����΀�q2����Dµ��	dm�2N�/�c4އ���~"EF(���1��P8n4�P��;kJ��H9%�qG��ȸ�s2X�d`������8_�+/���/�v�      4      x������ � �      6      x������ � �      8   ,  x��Wmk�8���
�����N�v���Qh����q�`d[IE�Hr���7�FN�&� X�"=�ѼH�'3��x��/:)���ώ���Fr5!��71���,�'�/ϕ���=�C��S���6$��1�[L�����nNV���i���H��*� ��@�qS�!�����نK��˶�T�����7R���$bHxA���ށc�F��pY�%濾9ev��xh6t��B7R����d��2~�	���S�0Y���ɝ�!}���R��׌��E��E�>���/�Fv�x'~(.1L[^ku �މ��x$�&����-���W
�����؛����L房�u70�]�N���g��vAI��[CE+�1հ����D��˜U]�Iq��Kp��4�,%QL�,4��)��*Q�bUv�<�r�����+��1�| �5�,	�k�9:p������"��5v��]]Ci�G�[ӛ�c��ed�&|�����*a�?HDۦa���OaY,�eH���!�����@�^:ĳe����ׄ &C���=�� �$��x�C<�Ç�9s�-�b�>�b�'�lʮФ��#�sͶ�n�Fn�_�6���[ڊ���I����3���NӯL
p�)���~h���K*O,����{EH^A���jŵ6כ'޻~xQ�F�wԈ���h)��K^���h�l���@Lc�&C��,K��wg�wӶ�p�D��
�c:�:r�ر=�k�pp[�f��z=q���ɹ;N2�"���_Q�n�z}3�j�:ь��d�7��9S܇|��$��l[-]u�*��M�bF���ļYC;�ԝ/FGW=��V����_�=��毪e-��9����I�%�?�k��(�#�ɽ���|��m+X}R_T�S2�r���I�k`Br}:�ŏMS)����$c�}����kW�2�J>�����ΎA�-<�K�p�S��^�k��'�����d����RlY�u]��p�/:e^��iC�ڇ��x"�4��q��G��0-�TpV��D/���F��ןggg�j�t      :      x������ � �      <   �   x�3�t��s�u�.M�O��K��2�;��8�qf��X����''�d�����'��e���&�%���'����g��e�s���p
r�s��p�t��45(��2E�t	��44��!�����i'��|�}1z\\\ IA      >     x��ѽn�0 ��x��@�m��-dh;1�D(R�|���}MQ6"ݝ��Ov����_�׭Ѝ_b�<[h��Q����I�](�
'�*8g�Aj�6���4��fꐩL��Q�i�$�v�(�w��]_mnS��4�Z4o�_✠W��o��	���r
]��nW���8:�Q�vo���0����!}?~��#�<�E��ӈ�	i�9���}��$fd�Q6���j�=}�c�ŗZ1�hU��%�mg�)���㻮w�=��Oئ�      @      x�3�LL����4���Ê�b���� �w�      C   �  x��[o�0ǟ�O��<�}|K򆺮c��j�
��jd�Px��q �p�Zz�݁?$�r�c[?9�b����s�Z�Q��n�{�S~���h�W�+�,��g5���g����I����|ziםZ�a��<��O�;m���\�E�8�R�l|����(N������n�5G{��56��]s+�-���hH���8���ǝd<7�T�u�nx3���7iK�N�ճ2�Y��RI�����2��\�����x|�ʺ�i�	��̢-/s���U �N9�"Z�� �B�x����.ƄZ��B��`�_!�F/���*ΡN[H�(+ mjP蠱v^�/7��	��m*��{9@�S����B�����4�����A�������:*�b�H2mN�����Ĳ닫�'y�ί�����Y\cdu�;�L˯���jM/��g��nꕉ~[��kn�����Qm��\��I�ln�%3�l���և��B�i*�,���w�!��y�!�<c4b0bE�Ah�f"#X*�"�1 �
sF�q�߹��^|�H���è%b��Ĳ�D,o@,"�v�G�B�B�B"m/�K{��&�����g�d)�/�/E-�v3�#~q�R�9����H��� �� ���Z-��dv�dD$ބd �4/��F��Ր޿<��R=T�1�����6��HA��p�Cz�Dg2$��� �3�����(��ꩌ�[�X�ŏel�Pѱ.��Nҝ�ɨ����6������QG�)k�m��~|;��3�ww?�Jƽ�`2��f`���vI�DG<��O�I搇\�B�*�Y5"��ңWD5$ғ�a���lM5+ƈk6��5*	:�!�!�!��YF1qqq�+r��Vat^C\C\C"=��v��?��3I      E   �   x�3�4�L��+)JL.�����700��V2S�Q2bCca��YP���Z�����c�W��R������h��D%K� �h�&� �lH����E��y��%�iE���F����F�� �)��m4@�Ј�](�4'Dc�:.F��� �5P�      F   �  x��Y]n��}vV1�!R"%e�EЗ�Hp4I�/)n��R��왉�h_�|�%˦��{���:Ѥ���.��BR�=�a!LZgJ	�hsg=�|�q��v	���_>:||ߟ�ߞ��3���4��������~��ŉ�r��yw�y�oS�yN)N��2IL��w�eL�,q��S�Y$M�fU<�d���1/:WL�������Ƿ__�/>���!B��Eٲ���	�2k��̔�~;J��ٟ)�͓ڜ��O%3�Khr��)�*�)Bɯ�/�/o�����p�'�L4�����6!�k
>�+��/��k����}|e������D;>a����$�.��$pO\5�T��并��f��e7Y�V�ը�@ː�WX�1��\�{���7�d�sIxN�#�JA��W�U��Hp<.G���w�A�|u^�W$����"�GCi�
w|4EX����{��>�qx�A���#�-G����)�;���P�������G]N����|��0ް�a����?��5���O;掏x_��ھ�j��9�b��g�� �c��% ��<I�5�d{��-''99��k�\��z�Ir\�_BN)�Dy�j����ԕ�m���>N�P��CA>�/�=�I�g�,��3�WԤ��	���?���Sd�z=~ix]Tz�o!��L��E2�tF�*���2��e��'^��T�XG�+z�E��"�]�V��W�A�j!��T�)&�g}g��^ñ������,�� ����wrSZN�Y��w6� ���
պF�ԡ~��i86�\�;]C�;��QC�5d+y?�S2����R��x����V�昣֫����M�����#=m7����(����Ŧ�/���:�Ŧ���M�o~�X5Wfu�m�\���6l�Y���9�j&�G��oY��e�� t����&�R��A��J@w����d�ܪO�T�6�g�
��\��X�9��=�#MN��Y,�M�sƈoȴd������Z$9��4��I}��|��xZ�/v䲴��;�
f���4�5�����A���e}L+4d|ĸ.�)��%� �A�rY�d�{*��"O�$�O^�Wn ɶ��E�ZT�����:1���h��[�U�AZ�Dk�/�z���������j���j}X�y���\[�U��B�\����x2]h�6���, cp��D��h��5����Z�[~�:�MP?�e��u�u�;6�_l�J�]��]I�I����
oI�m���t��h˞��N���grQ�����_<�-�c�#��ŝXb]e���G'�����P�t�����'�|W�J�Ql���.DVr�ˮ�4ys��so��ĸ@%��!	|!�a�8��LC�r��v�B�*�]�	�y��
\���� ���kDM���d� ��Vr��([�ݯ�P��WLw����ba�o�L��d���EܯQ4)���7�����#˓Ș}��ϟ�������ۯ����=��q�y@y }��"t|z{y�i�zi	Z8�x:���1�_Á;�"d�P��켠���;6s"t��/��������:�R�� TW���(W�����mn>G
�xVB[��XW3�b�K�I��b��}�zX�U����2)�o��g�˩�Ͼ�H�m�Gc��D0oBԧ��Լ(��Q�9����܎lnA��K�4*���e�"M�j&����c6[�=��f�2���F[Ck�>������]����x��o"j�C;n��!�%D�r�>v
�澮E����(���-�����śa��'T��N���W�Ep{��ũ�v����� Q�NJh�����@1�E��J'�$�-���
����![�b��_����V�.P;_�gȽ�Vx��y���[��P�v�����,��8m�p��vx��P�3\�ӭ=�?�T�rYz���e��'�cR�	!;e��A��B��(�����r�nB�e���N�%N+`X�AOZT2Ch�,\|��f&ZA�}�}RD����]�x�
ú�����u�~~������mxswv3.��і��q&k֭�P�� ��J��9TDs��r~����Lkg�H��'=?�|���^||>�}�%p�)����a�z7��R"p�����!�c,���%���m�?k�	U�xD~��$=��W������Ï���ß-:�      H      x��]�r۶��;}
�w�k�\ő�����u>��u㩓fgg�á$�fCQ*I9���;�g�O� 	� 	R �s()��m�/����s��1>y���4\�\{�E�;'�u�����3�]+�|���go�=���'�/ַ�b�c'��,Ù��K�wV��܊ܕ:��}����>��_}a�=Jڈ��7��2�N�o���[G�����o��!�c��+�zv��8&T�.?���I���;oe��nסk]��%��u�Skd}��(j����ֱ�>���˃;/^���T��$HV��"�����
��{4���xyo�����N�<8���Q@�gؘ����O��� v�ơ7� L^��<Q ���u��$�+����`؟)*mK�h��P�ˡ⒗�Eߩ}�݅�d;���b�3�5�F�����r�'*� �<D�&x��M u1v�O{�~~�>�F�)(��@1���9��@au�y��������` 6�9��A'6�Ծ<����;��ߌǜU�/�Y�>��Ǭԝ7S��II��.~�>�9~6Tf1�9���ɰW�V`�U�Wiej�U]���0W�~�oQ���4'v�u�.h���۟.�6����hnGs��p���<,"�yX\���CX�r2��������D��c����K�26:���C�����0���[��@��0Q)�0���`uQ��M�f����@q)�lk��������:�(r}�͗�zn0u��y��9g��7oG����;�UK �<D"'x�$N u���e�L��άCg��=�h�F�͠lt�ֱ��rS<W���t]���G���^���z���l����`u�Gօ���rn]���zܺH�g�>�'K������X��t��K	 _0�ܲ�C�uhX�Q�Wt�=������Ig&R����axȷ�¢y�C1�@���ԑ��5�%�o]�S׻����iw�MfI�C(�q�C�.o�ty�`�� H'uԖ��D*�.��3��L�ð�k�dy� �[��XЏa-��iI���˳�4z��;�ީ�7zdf1s�H?��ya�B��(>֑��YGdhL�?Kd�b<��*��h~M����& �#��+��uh_�����0�"��̔%�ExD� + ��`@����*�x� ܍j�nx�����n����DH		����##<!��z�ۿ�S ҕ 8��P��b�!M�M���T͙�9s0g�#�Й$аN *C=���f�~�h����=r/�..B��Vc� ���p�5 }h2�>4I�H`O�\e' �dN�'"{�2���,����g��ȧ����Ν~�,�p����ϴCnx`�;���˿u\i�-����~�QÎ��SÿU�I��3UoUE�ߩ�x�����g���G�0(�� �H�	K�$`:L2�ν���٢�=�mv�]ݍ�gn^�8>��?^��4%/��~�Fc|fA��������DVAF�[u	����;}G�O��6�L��L��8҄��9\F����qFsl|\��*���6M:D�jAD�q3���Tׅ�$a߹1*]��2M:D�jAĥ+~B���8TM����я�C?*I�!)�
�Te��K4�f�됤D��(�Ӛ���F���4�-�Qoa �zj�[9��N�U9�k�5�3��;m�u5�٣h���e�THŕ-��A!["utD��
�j�T���*�0*�����#1�K���R��x��K��M]d�D�N5��g���IK���W�d�:f׉�)Y����.M���7��Ӆ$}�\x�{W�Z�Ml9�Y�=�5;}�[�<����p�<e���j��_C�W��8J�V�T�Y��N����+;R�	� U�\�U�W�:N�U��k8R�	�D�I7�����ƿ�����A��k~��U�*��

����R>50A7pe�!���h�!A��]���Fg7:��ٍξ�:;��k�E�!������T��O�"�ʷ�W���$��j���"��8���E��L�@'ΓH�,��e"+�0�E���$��'���:�U��ܻK�h�7����s���8Ii������zwX����W�Gr!-W��q�����	.�HH.���hUt6U�հY�䠈6�D��&���`u�2��d�H4�rL*����o2�שQRi�袆�4�Z ���
)=�X"���kD��u�u�1Tސ���+m�k� ���V�P
���q@3�3�� �3�?�$xȦ��N�p�I��yl��GkG���z�v4D�v�5Z[�cW���(r}�͗�zn0u��y��P:W<����p�O�'��MJ	�;ϼ{r��e������{�Qi�<�ۣ\�-;H���Mx$C���ET�x���Ot_�$��E|�:3���]M>,?��]~����fg�}{��~���������8�9�����~$"\s�4:�z��ы���֏Ϟ��o5�zIĬ�!�h�4)��x�}=�v:����Oۚ,g�e"d�;;٨~�g�]��[�A���O�&�.��"�j�û�ԞI�M��zg�Ӑ��=�`�%]��k  �uP���
��Fw)�}9I��I
��b')P(�Nv���1�[G��D�٥-a�e�3��Z���lh_�)F�}.a����)b���RŔ��M��L����l)�%�ቪ6�e��s
y�{�yx^��I��w�w{gfO����2>���)�ٴu�褣&�
-n�)r�9v�5z|C�����z�8zQ�j��@ ����(
�aF6�Q����@P��h�E7�FS�tQ�����5L)e��5J�[}� �]��.�p�༄�-�N�KI��otO�e�<��`q7�?%,d(�7 ��^���W.tD��<�UpLV��q�]�F�w��3��<�o�9�]#�Hy��1�Ħ�{����; j�28��9&6��8kp`�#�J�Vu��7�G&� �9�;<<\2'�PD��"��\,5.�c%�|�a�i�?� ��B��ޗ�h�4�9tɏ��U�^��K�>�.<߷�s�m`���}��#{���p�c��#t\Ͳ �׬,@��)��U�ٖC��I�#��B�3���B0(�
� Y+�ۙ䷵��N/J�5�"X�8�bE��rN�|���|5���6�	�%@I��2N7�$��k2�T��8�C�E�����G]�����;#�w4_�'~y0�/���!��]y�O�S5���$�=0���r�؛{S:LWs�J����#䄷d�&�8^.��$�q��8�Q��U����āE�E��X��߿��.��OF��3���ĞOwxD���5wF+х���ӥϛ�1/5%r2e�1'�G'��������"�?7��Ũ���|L���% ��O�/�����1��n0;<`r��$~nn}�&�|~�	��/�/�k#�y=�|���җ�������wX�\�NJ�6O��l���g���W������ܓ�e��9��2���V|)�Y���#��Ҥ���L�����%/D�#~RW0E��c"�� >l�K�.��d���U阝g�$��#O���ɚx���Vn���i�M��޽>XWtw�__e!�/����F���]IRU�k1�m�_�Il�~%vmsT��F��Dq���FV���6����6j9�	��s|��,�բ�=O)��q;L����7�	P��Zm�Z��U
�L����fwN�`n��H3[���W�T3l^_{��������"�h	i:9L���ʹ��2��c�\�_���i��I��=OPT�V��R�9Xg_u�1u���}Ŵ�~N	�}���Y�>"���H�`C0[*�H&���E�2��[kC��>�fq�	Ngv�ΰ���[]N�x=�z���}q��6���:��߯W+�����[��O�Y#Н%�50�'`ʫ�!:�z����k`��N��	����P������u0�3�|;Y��h�F��4*f��Y���mLX���&͏d�I�?���-�OOd�עv��hTbu��ji�@��@,@�*���b 7  ��3��d�%כ�t�2�/��X�j�H(�\���A�5h� �%J�fA�VJj���kw�z�ف��/{E�%b5d�\�I���������?ز�?�o^�!Y~��P�4�ߕ� ^�[��e��ʠ���t�]�Z�E��&۔=B��"W�\j5��@~��|� ��(�u>a7����$j;$5)��R�r̛K{"�"���DƤ����d�O}�",�	9���x��n(�	��iɄ�E?5ob��(ĥ>Q0Q�K}���L�Nk��Wu��5.�U����#4O�NCFU��"��Ě�.xW�w��k;���I��Szm@�"�E���Ė̓D��C1�@8����5�%T�o.�N��o���F}�b��!ȗ7C��y0����+�����O{�-̤>۸�Ȗ�µ�u(�� ;�e7�W5�lL��	�7��&P�ʛ@y-��]����YC��}��qG��c:�y>�F>4��~��]e�{�
���z�� n�0��A]es�lR��l�M <,�`���]�	��,>ӤM �6����\~��c���Ϥ�~��U�Ψ8��C�=����Er>�����A���^�*_T8�z����?��ld��g���lc3�W�ں=IZ���Cˮ|��Y!��/�:�u�R~VK��=���S��.��b��z穦*��S�ѣ_~� ���CL	k��\4Ά�,�q�o%i��_4�MA͑ P�0�ɺ����NǤ�b|��0p2j��^}�r��>�|��'H��dj2;�ԧ*_��x�!�n�����O��̷HAe1�C��4�����_$3����(R�MYg��fn�w�dn���z<!�S�����l��*�3�a�0p���҂73=��yR��0�z\m(!���9�����%:�c};�/\q��Q�P2���f�t�m�
�9�ѩ�	A蝛:�`[q{�TI�U.?h�T�����;��pC�״����=�~O�N���vHi�w)L�2�ƞ	O��E?�taћV���s�8����fCr�~��r�e�ǿ�z����v�F��?Z����SR����biN`�9��)���[�W+�����hf 2�E�ox�Tb{K��]2Rl/���!i�:M�i/�lU:���)r�$3����L3G�i�롱��D��ʶ!H_1��G�~9g;��kBG��X��a�Nca�h�0�C�hN�]>t� ��4�ƒj-�}�gP�����_}  ���~')=Ze�m��6��}�B$CFcݘ.��I"�*�,�J�.'��[j�=�m̉-:�
�D�8�f�^mB��_�� ��m���&�K�5=;ZS�rz<7w�r�e���a����l�����7�����1�LN��0��Dk���8@�Q���&v��sÅ�[o���D��8u��Fe_9���)��f�� lPmL�F��r5'�/"�k��3��:L�Mʃ8��V�Ӫ����546&t@�� V9��"5���,iT�%U��{-ҭO��nx�@�ŋi��~���t������qʘԿ���kv4L�v*��:���j*N�|��L�V�n��%�L�7�RfJ��,3�/�g�ե4(O�a=+��O�э�G3�Dˢ�sh2D��*��:�6@�|������� ���� w��8�O�%�Ul;�ucTl�˵!eNvz$�눇�����#�Τ�ۓzn��X�ʦ����J�M�VN��1D]��pX��m��H��#��F���0H]��Ϫ#}ƶ�rHL�"[u���c�a�6�M`�� �A���{V�S�L�V��g%�nU7���V��TKS�~��T��L�Lݨ�D&�#���-�0u���۟B��%r�
S�R�)zٛ�s��~�j�Þ���>s V�8�A3����k˸[�V��~�
��  ���UW����5�Uk��W%�I*��B�)l����j
�)N�ռ��~� -r�����)1!rZB�p���0eX�=�k���4�i�{< �x (�����0����{�)6UYMUVS�5�Te5UY��zZ�N�' v�^M~��O�b���&=aIz����/�	�j��5ؐk��`��z���܂qq���d��1M�����q0�!�\ۑuc Dy���%�`��@�A=� +>�D��M#���v�n����lS��gd�#`d��rmS��O�X���j�0i�ЛxQq�T�"�z?�b����ͳ��v10���6�k��/<��L%��eebw��L2����	VrTms����I�A����J�Yz�����hҚ��o�k�sM�?,c��\\�\[Y�;�v��%%A�|�tV\+��8\~��cҫ�}��E�Ջl�U�%3��7��iU��̴*t�hK���:b����U�w�����M��Z��~���3%=�~�K�]�djp�COC��K�X�<0H(���l۽q�$���F�e^嗽%b5d���I1	���#���?�T��|C�6���� ����� ���]'��+خ2({|6��h�K�Ǎ�K1�R�sj1�'zk隄�A�+3Y;$5)k���F5�����v~В��:����~|`�A��O3!�%s�qgb&���m��d��Ac�[b�V���+��']�&X���,�^�E,ᔽ5�j<e��N6�g
8�|v��K	x�X����|\��˛�!_�<�r������g��&.�a�< ���A���E�`g�l�:�xϤ��)mRG��Q�_��Q&u�`����|���l=�m�d���{�q��w7�R����'?ھz��}q��봯���Ye�=2.�3���NL�J6Ѷ1[c^_�/x�֣ߩ����\٭��Y����tX>��-�&�~���fyT<�m��+tl9ζ�UO�ں�
&7���ߺ����6�=��4�
���-aK�+bK����9��4��P�<E��c��~v[�`���%] ���{(柝>�Н�B >;=.�;�!��v�_f�PY�9����8C����>�#������C�w�1-����(r�$�n���-���
��7oGM�0��Ҽw�ٵ�%z�del�?tV+ߣ9��G����d�Ԅ�PV��7~�Ə~/��3H���ґ���T�bҷ�
���	���	��u0�j|Q�<_T�j|Q�/��E-Xյ��Sa�i���]�j�Q�wT�j�Q��wT~b�;�qG�l�Q��[ʸ�wT�j�Q�;*��-a�;�f�k�Q�;�fX�j�Q�;�2��;�qG�5��ո�~}'��ո�6m&�����U3�qG5�m�)5��ո��/�;�qGͦhhwԛ��|����`��      J   N  x��]ێ�D}N�������l�@�H���w�g�Z�=؞�V���q�]�#v��"�f�T����]�����A��L�_��E�9��U�Ǜ$�z��ߏ6qe}�?WGS�&]�E�����ѣF�n~B��j]���_avqq������UrL�Ĵ�����I?����̤8[_�E|�3�L��a3F�kI��	�gܵ{���?��5ze��)`��k�� ���k�^��0�^���5pu�s�����~ܽzy(��6/Vy����µFp�RS�^��(Ϣ�-�5��ܮv�T��c�|�3i��󣹍~�]3��ng�50K�΄	zj��8�)��ro��된�l�>5Т��ьA6(�j�ِ��1����������&��1z��ha��V,���=ҵ���Q�����������	$�P���2��u�qJۀa�0W��gI9B�=7�-�'���.(6�v{L���Ϋ��X�1�Z�Dtnw&�o2�v�"��8CQɩ�qq�G���L)Z�40h4�M�>4�����9������> ы�ק�e��x.m�
S�QL����|��?~��=����zC��cnL e��ҹ��w�7��/I�W�_N�^G�n�d�������*~m��k�{���O��&���t��r�ɀ��Y�M��L?�!	J��w^Ù��1�$�6�E��?o�MIN���Â�ѻpyIq+w�]�s	${j�m��i�[�7^R���&���w�\��>Q�S2C,Gæ���,)<�2EM'���b��XH'fҋqcFp=:ђ�K�j�lV��FL6��LD��2:��Ȝc�������U��v��m�3
w7���ܕ��C=�aQ��Ѥ��|Z�G�=��}~"{��1����^�z����^�z����^�z�����ٌ��@�Bw_�8�S��Gl�I8d�K���T��*E�M�������9xws��B�D�i�6rX�����4������r#��m�_�m��*�d�ā�N8��I�Qx�ȭ��'�o�;�!<q�F҅��ot����D��� ��`>�@��),>���~��ҋ����5 W(�ak�iĪ���0F�g�\'JhH��r���,'�0�b�k%M��������R<Z㇀cY�H薭��^N�I�,�ivfk����$߮��Y��n�^�/2i��"���'�(�F�5��~�+O9��`�u��R���a@X�^?M�:$����GS)���V��52��z����D�LfA��<��ם��f���u1��$B��Q#�F��X�N��։L~����	�:��&k�졬����*�ܚ�:�'�"��DE��ʋN>���W��Ud�JO�O����V1K�ӭJ� ����Y�0Z��{ܭ�ǔ��cB�q_�Uz<�{&[b�(H���xf+�˺{�\Â��LpD;�c�:	�k8+:�T̉�G6�Y�x����j�$��Ҽ<�+�W��2��&�ɟq��k�<Z��ڭ=�2.P�AJ�4ң��z�BQ��jR��<aT~Y���Q�w|tFP��u�`	���
�DՁ�W +�T�S��`���^�"�@�U�D]�e�2̂��^^���+���I��vIR'�^���H�'t�����O��I����S
c��S7�[�>ӹ`��G�g`��zV���!u�##d.
<�?o����j��n�Uh�#SKȣ���B�~�:��p�Ԛ�v�T��4���Wq���Ws���P�?G��JQ�z�Ց�DQ�v��W�}��E����h�����U�*Ҟ*t��J�q�K�����զ=��I���U�}u�%�TϷN���o1-��yW�5��f~k?�]ګj=٬��ֳ�⻋x��T�'AP��HH��zU��*6P�"��_�ޫry�n�5�O�n-{��_��0ݾ좤�zG��?m��{�E��ݽKw�����j�U�K�]��?&%�Q�p���w�P�Q�� ��'�5��3]��T�_��[-�n�����G�*���s4%�ב���d��G�7/��?��U��s4E�M�1y�+��z%Ѕ��<59��O��z�U���Z<N����>��ĳk��'���/Rf0�������o��?�'-a��|P�`��z��̴��HM�lG�B�}����I$��P-��j��H���V�$��w����F��ov�5���mn@=E��CjW��5���
��5f��;�`<<�ߗ�ޱXC.`tM��l�ˣ7S7[$�h�`�i/�e����t�i�,=�6r�������8�8�������P��I"=~y��I�g�d��4�
�{�� ��7���n+C>&�!N���;�2P��jR���V�v��� ~���ʧ�MMm$ɩ�uwe<;e��� N�����͖�A��h�
{!(��^g�4\���*+K���N���B�3v�M>u��wZw��'Rܿ����l��|[!�x��.�}_2�NM�$M���{���Sq½�����G�D��o����������
�yu�_�x�^��*|�U��+и�W�;��9g�h��+���W�;�:����psV�4�g�����=��7<��K,���;[����%�t�7�J�����q�z����z�BOT�"T퓏��ߵ�x����:\�@����i"�?K����.`�U��-�ɶ|��ɿ��k�L�;�ڴa��9R��Τ�T�;A�&���qL��߉9�PD=�L��9��>�;ݱ�V���}+RN%�����U��>�*4��ƾ���Oĵ2>-~<�:��O¹x�gwʻ�mm�
���ެ�]��dj��-0L,46�1��|�����ɜ_      L     x����J1���S��#��k�DT<��C��Z˶���u=I+BB`H~�?�����؏� ##2R���<*iq�f"�Y����������"�<��m� 	kH���VDB.H���m����
ep�w}:w[	AEWd1wO�Jn#	�G�y�nէ�V<�ZH�_�j��BJ5�**)�m��E����<�Ng�[S5UG�ԬԦ.ՙŉnj��1�.��QTu%�g�,fn�ˑe����_�X@���{���F*s�=�֖'jf@�{�F��B�+�g��u��b�}/      N   �   x����
�0E�ӯ�/����FB}�q3�Pcۡ�-ҿ��R$B���=$��+��**]QSM��� ����&�[\�ұE!��g�_�N�Q����W���sb4g���m}��o��<�O���*W�:ˏ�Z�;UA\
0�p��.��kn�B����ֻ�\W�ag��H���.�(�� �       P   *   x�3���I,�)�s/JLIUp��/��4���CF\1z\\\ �
�      R   @   x�3�N�M,J�K�)�ӵ�/��4���CF\Ɯ��镉ىE%�x��p��'�Q���� �X      T   �   x���?�0�9�.I��%��.�M� �E���B���x��' rǠ�5��:�QE����GA��4�%_�M����}�_|�����t3�˔�$aR�Q^�I�結�P�I^k��z�q[�      �   �   x�U��
�@����S����̶ޢKѵ��L*fe+*=�)���A�4gW��z$�c���+��ZB�V�-c�e���� H������k������s��I�:-
g����{ZҿX�*�*�~���n��U�i0Ua����1      �   }   x�34�4�N-*�L��N,Qp�4202�50�52�K�K�/�Z��I��d���Ē�x���dK�4�����ĒҢ�xC���t.CST���&Z�L�@Mv"l���y�9�d#��1z\\\ N5C      �   6   x�340�4�4����S02�240�M9��=|����R\R�b���� �
�      �   %   x�3��4�4�4�0 2�8��,�cN#�=... G^$      �   [   x�3��Qp�420��50"(�H�Ȃ3<5I!�(?�(177����58$$�Ӕ�� ��	����D�Ќ�%�8�$� YgH��Pk� k��      �   �   x�-̹�@ ��W��5��(R�������bs�|��oz"�_�����/}�K_�җ���/}�+_��W��|�+_��׾���}�k_��׾�o|����7��o}�[��ַ���o}�{|��9��N3      W   �   x�}��
�0Eד���X�{ApQ�Bt�M���LH�ſ7����,�eΙ)�Р���Z.�>��w��ѷ�}�U��x�|P*�� |JS(������1��1��&�/_"S�
.�7;���L
k��(�����V6P�q��3�<�B�����2�i��؆i��?W焐/	�qG      Y   l   x�34���OL��K�4���CA9	.CSN����Ģ�TLU)0).#cΐ���l����q� ��32rS�J��1�t*��N-R�,�bH�)LIXjqqjVE1z\\\ 4i:�      [   F   x�3��/*QP60�)�ӵ�/��4���CF\&�!E�y�@��E
x�L3£Ȕ�;� 1��=... ~$�      ]   H   x�3��J�N,*I�44�N.JM�+��/�O+�ύ720��50�54�74�55�52�+�K�4���CF\1z\\\ <��      _   [   x�3�t�M���t��+)���4����D\�N�%�y��Ypz%f'�$Rh��TX�XDH��gpiQbRb%A39�Ss�	�3F��� �C&      a   �   x���4�4�H-)�����L�4
������������=����*C�!��>~�@Ex�B�������9#5Wd�1>��@�朞y%
E�)���`V횗Q�\��!搐���b0T�X�sQiJ*��m^� M�P�      c     x�u��j�0��U��X���Љ�4��W����4�����u��!�;o�$���d��y�b���A��$B�#O��RI�*��V-E5i;��)���'��<;�}�ן^�]�	73�Y�Ճq�w(t?_���;�GC�ݪ�Ȭ�Pm2P�q�-�d��n���Q7Ԓ�BM[~_�L���#�<�+\ȷ�4��g�e���7���E�u),�����<�Rd��I��p�m�o�� za���YSmF���kk2O�q^C����+���      f   Z   x�3��,HUp��K�MU�O�|�K2�� <C#cS����Լ��������x#Cs]K]�xi�kb�W���i�㇌�b���� ���      h     x����n� �s�y�*���u�zhWMJw��(YPQP��&�m�;)�D?C��t��9B8B����:~>����?z7 �&���f��G�;=���O�p���g�����"�M.9�l��p�*Z*xŠ�qV�=�4r�+�ԜU���u:clz4�Ep��)���~q���,��в$J|o�;��^n삫is*����ޞ���P^�V�#b�̓�6E/�v9���9��W�+(�}�	����/Y"�B����,O����ԕ �      �   <   x�3�v�2����	�2��}�L�o.SNc.3�`C.s�`#.�`c�=... 2�
      �   7   x�3�tI-�L�K-�2�(�O/J��r�92�K@܂�J.S����p� ��      �   @   x�3�IM���LN�Q��+.HM.�/R��2�.��e�C˄3�(?�W�M�KLO-����� T��      �     x�%��j�0�ϻO�cr)�����
!��z�e���R�l��]���������T\�;��UIG;��̕�	����dr�wt�O��S/~��ȇ���V�\��l4�c6f���U����Ҭ�h�;N�>S�9����H��i��]0"��+�z��}\`M�{�����
"<[C7��,k���0�Rq�B�\*����"e�[�������a�~�����s�����Z�C�xp���I�՗ ��4���(�>�� j3      j   j   x��0�)�s�I-*Q��/.��/��420��50"C++��	B̀3�qY�������Z�`lh���YR�Z���X�������s;LbX����� �*?      �   �   x���O�@�������8�آN�.!t�,j�2���	A$�������͌]T7�Tg�naq-�}qgܘ~	��k��m�����Y�w�*��:�OY��oAR ��,큃9&`��L���`�)GH1�Q ���0ND�G>DM�%a���"�T@(�3���O�V�R�!��	�Z��n��c��1o30�k��      l   k   x�3�4�I-�JL�T(H�K.-�L�S��̫L�V04200P��Q Jf���$�%�*J�8m
�lRs�l�K������SҠ�F*f�R�_`��i�㇆�b���� ��'�      n   %   x�3�(M��L�4���CC\F�~�y
x��qqq ?R      p   L  x��Q�N�0=O��'n��
�8�tQՀz��d�Zq�(v)�=n��
J���Y�{�DA]!��s#�.���m�^4j�� SRB��EظE��|�Pɿ��*)y%`�9dvt �Eֲ���\]y��Be�Im�[γ�Ġ���/Nu���J��'���v|���=T�S�mz�g}�n�1�OS�Y[?Pz8�Ou��t��@d6�N�h*A�!u��E-�d�Z�?�R�\t_K�3Cs!1�\�6t����ga4�W����f��s-�����EɍH^��A�����2֍�N��&sm�1�Uz�d�������߂�y���oK ��      r   �  x��Zys�H����3;	.���m3��q�1x9v*;�r5�At�Բ�L��� q9Ǥv�R66�^_����ikŃw��K��s9�A�̉K܃zHǜy.�m�?����re����TMsӀ�s6�Z�8B>�����d��
�h��S�;��ܺ�V{��M����=���譏�'�P}�v��2���Aq_5����z^��'>R!�	�<�<��Z�b�A�}�W�J�B��,���Q�Z��+�r=��/���l���7a4��ބ���8lJBe�)������Ơ��|f/b�/X�6W@��@��$$� .�Q�Ƀ�bz�������[⎽��kĝ��'pEf$��>�	���\[Q��E��0M�T�D�z�)��I@����L��z*�-�Ź��󏏏���6E+9y��a�:#j��~>��*�t|+jf�V.+Z�R,U�R*Uʇ���e������b�Z;,�����rI���j�TT��Xb���W.�4U/�R�'ZAѐ��D_�>�\��q�VF��O��\� �9!�5�pi��FP�x��;,�d���1�V|А#M׫�T-	}<2�[B#���$�D��K� Hu�JTI#��=N"�����o��)�-�vK���xv��@=��l�Zq���d���I��M~��)�1��됬�1Y��pZԶww��N�Ap��8�-��3W�=�[�3r	�a��=��I�'��CbV�̙�}]���Ķ���q�aޏF6/>��8/	���,���|�1�%��ݡZ[�����4�9�&x�B�t'��,0&���RVi5ʢČ׭��f��V�ʭ����i����*�������6�>�w��nZ�F^�?��^�1��I1 o-��UM+��BQ��MGX�h�����̖�4˫?%�t���1.�}�����%j���ƥ���e����\�2��L
ZU���Z�M���@�{��;�ׂΰw�2:��~�\1�t��^%d��͞�o%�?�9o���m�J�R���(��(	�y/8�.p��4�ùѻ6{Pt���/Z��Es����6�m5��7{�la�6z4�R�ՍdeQל� �{ �`x.���ƯƎt��1(U�@�ms��^�nZ;BNm4<�i�R�|�96Z�3.����[���iw��U����Z�VZG�(Be���{��M�g z7� k�^k1�W}Ұ��$Q��V��Ȋ'�|6A�kZ���Z��Q/���`�{�P��7�x��~70z� �vZ�DG�3�r��l��BA�*�u�� $�F��4<a1�hu0�lE�^��y1 LZ�e�;��T�m����\¿6�<��|S���>�8�\`��^�����ԝΈ�Ή��Rj�9��~�:�w�/*��jB^:A�e�{�	��+��_�:ԉW���9@�%,-��-���,�m2?�(}�&��	0�.H~�웜䦥��f�1�M,�i��"8���/�-h�8L-�Ґ��St:Qq#&9(^�D0W+�y!u�8o��0p��N�Q�� �76�A�3�)\R�<�)�%(�m�)��la��ym������e�u [GJJ#�o2a@����Z�TV���.Q<&:�-8��3��p��2���m4h$��y�g2N�X.�DB��\.��Ds*�|4:�u�i���l�탊�� �߅n�}���8pF�Q<rFp�%֌���ʦ�w��Y4J&t�J8�H��G̤�������ɉ7�{$�2Br(D��"n�Ю��Bl�o��Js�"&-�`��Ωa�����z@ �)Pb�h2)�M�!��m�	�͕�������c6[(Bj�KE���X 8Y��F-/
Yb܉ I 2+7�s��g���p/`4�"fr�M6�1���G�⇐mch�[Yy�"��fY�)C����<Q)�V���Q�qR���eq��IB'�@���0r������q����Jx�D�W^����$ɌfN�lj����e �P���7��j&�6�l&e"�
D��j
[���q�||�K�q���Z\���y��v��������Dn|�e�	2G� ����>�y�|T>�#��<��[�qGv9R,������,����l�|&h�	ɡ�6������3�zt�� ���d
?�;���0㹢o���?�a3G�/�&�C�ǆ@��;�H\GJh3�6���&׫��꩏�,r�Lx��i+�ѕ�ItŃhSU ���Fȡ��"~C(����o��1��n��Eс��9ԋxf�s�������^���Q�!�����"�n��9���s3q�~x�U���Y؄��_����u�օ�W_��nNFX�$u�(���{I_�J0K��O�[p>��y�L�Hn�W��������9�"�ئ&�X.�OE��W��j��IK� Ɋ��R[Xl�^J�>��ZQ��S�,���c��y)Ӣ��#wd����3�_���(�hl�&G�f"��	��OI�L�
ʣ���/�X�`B߻�ɂ���g����q:Pȗ�1��w�[N��@S�, �^��t�O�]!�E~���\$�}�i<9|�ń�����J"��Er���C2X��'�7���ɮ�Ok��W̐�9��$�8d�cJ2��0_c�5Y��A��>ÂN�e��x���Q+C�.(�9A1��$n�Y2�/��~�eO	�ޜJ��q�{���s���w<�	vD�#�:>�'	/5C�R�مZ܈>)������.�Ǒ����Gƭ{���J2­�r'+S٣���[p�A�� #�G��z�uHMC����yϋN|<ɚ��x(��������^�mv�,�M��ܷ:o��]z�|�#f���Nu/P%�����
��v�hܿm��bě��뵣M���M�a�"Jw�+#X�|Q]�\k���%Q�T=�`Y�l�^�)�^���ǅ�      t   %   x�3�(�O��IU��LI-�4���CG�\1z\\\ 2      v   z  x��]k�0���_����n���P(e�-�`
�>�O,�B-���;�X����c)>z-��#��Qoһ�?��|q��J����A��3k�A�Px#������W{s�L���e5f�D��IB�3P��>Eh"H����v}���"�Ȝn3���i�P��%���W�-J�0�B��)�$�ݚ�b��1��X7���i��0!`!Qh4`�P ��h
����原ײ��X��)8{���"��A8��0/�-��E0]LG+�I�J�a�W�W���%�$�s�qa�꺷"Q�$�U�r�r��{+[�cr�����2�kN���ŽJ�vu~�彌��6nS���:�?���=�a��?Et}7���X���w�Ƣ)�Y�M3�Mn�hhI{1�m��g��sif��
�A�r94)0b�=I�jЦ�}I�NŜ�I���l�#�Y`k<�L5��K�q:��@j�S�"S?)�@V��m��q�Pʔ�R?~�W�W �u�U�+�ڂ�	G��Y��׏��Dw%�7���o�?PڣlP<�H�HlH�gۚ�߶f�;1趭�۶&'�#:i"�t�d�q���1nܱ���d��M��������i{�G�~�'���h      x   C   x�3����,���4���CC\Ɯ�yi�X�L8�Rˋ�J�r:��%'�%b�5�H���)�*���� �@#<      z   #   x�3���4��Dc�34��!���� U(�      {      x������ � �      |      x�34����� �      }      x������ � �         �   x�ő�
�@E��+�%��j�ছ��P��h��wPWU�;I.�	��,p�9(l� �|�'��Qm�Q4����q&>�0=O0
=�������QS�Z�u��	�08�$��i���Ѓ
8,&*�+p*꺷�+|ׄ2��N�]�{�l�d������\F�C�Ed�Y*�!�{{ �ʗ�D��|s-��#(�w      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�e��
�0Dϛ�X�ЄM�I�\DAPo^D�mł�o�Zf��0`HIZ�E�ɺ���,���"m,;߆�o ���qF�l����P�O��<��BV�4Kb��\�4�q����2�G�N�悆Q�d}b��s�������)RW#qUB�/�+�      �      x������ � �     