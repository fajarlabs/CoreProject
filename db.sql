PGDMP     *    !                v         	   sucofindo    9.6.8    9.6.8 B   |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    34116 	   sucofindo    DATABASE     �   CREATE DATABASE sucofindo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE sucofindo;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                        3079    34808    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                  false    4            �           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                       false    2            �            1259    34117    ALERT_SUBSCRIBER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."ALERT_SUBSCRIBER_ID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ALERT_SUBSCRIBER_ID_seq";
       public       postgres    false    4            �            1259    34253    ALERT_SUBSCRIBER    TABLE       CREATE TABLE public."ALERT_SUBSCRIBER" (
    "ALERT_SUBSCRIBER_ID" integer DEFAULT nextval('public."ALERT_SUBSCRIBER_ID_seq"'::regclass) NOT NULL,
    "USER_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "SUBSCRIBE" text,
    "LAST_SEND" timestamp(6) without time zone,
    "CLIENT_SITE_ID" integer
);
 &   DROP TABLE public."ALERT_SUBSCRIBER";
       public         postgres    false    186    4            �            1259    34119 &   APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"
    START WITH 59
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq";
       public       postgres    false    4            �            1259    34260    APP_CLIENT_ACCESS    TABLE     @  CREATE TABLE public."APP_CLIENT_ACCESS" (
    "ID" integer DEFAULT nextval('public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "READ_PRIV" integer DEFAULT 0,
    "EDIT_PRIV" integer DEFAULT 0,
    "DELETE_PRIV" integer DEFAULT 0,
    "ADD_PRIV" integer DEFAULT 0,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "MENU_ID" integer,
    "IS_DELETE" integer
);
 '   DROP TABLE public."APP_CLIENT_ACCESS";
       public         postgres    false    187    4            �            1259    34153 %   CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq";
       public       postgres    false    4                        1259    34271    APP_CLIENT_FORM_UPLOAD_DETAIL    TABLE     �  CREATE TABLE public."APP_CLIENT_FORM_UPLOAD_DETAIL" (
    "FILE_UPLOAD_DETAIL_ID" integer DEFAULT nextval('public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"'::regclass) NOT NULL,
    "PATH" text,
    "FILE_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "INFO_CLIENT_ID" integer
);
 3   DROP TABLE public."APP_CLIENT_FORM_UPLOAD_DETAIL";
       public         postgres    false    204    4            �            1259    34121 -   APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq";
       public       postgres    false    4                       1259    34278    APP_CLIENT_HEADER_ACCESS    TABLE     �  CREATE TABLE public."APP_CLIENT_HEADER_ACCESS" (
    "HEADER_ACCESS_ID" integer DEFAULT nextval('public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"'::regclass) NOT NULL,
    "CLIENT_SITE_ID" integer,
    "MENU_ID" integer,
    "CLIENT_TEMPLATE_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 .   DROP TABLE public."APP_CLIENT_HEADER_ACCESS";
       public         postgres    false    188    4            �            1259    34123 "   APP_CLIENT_MENU_CLIENT_MENU_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq";
       public       postgres    false    4                       1259    34285    APP_CLIENT_MENU    TABLE     x  CREATE TABLE public."APP_CLIENT_MENU" (
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
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 %   DROP TABLE public."APP_CLIENT_MENU";
       public         postgres    false    189    4            �            1259    34125    APP_CLIENT_SITE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_SITE_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."APP_CLIENT_SITE_ID_seq";
       public       postgres    false    4                       1259    34292    APP_CLIENT_SITE    TABLE       CREATE TABLE public."APP_CLIENT_SITE" (
    "CLIENT_SITE_ID" integer DEFAULT nextval('public."APP_CLIENT_SITE_ID_seq"'::regclass) NOT NULL,
    "CLIENT_SITE_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "CLIENT_LOGO" text,
    "CLIENT_LOGO_WIDTH" integer,
    "CLIENT_LOGO_HEIGHT" integer,
    "CLIENT_WALLPAPER" text
);
 %   DROP TABLE public."APP_CLIENT_SITE";
       public         postgres    false    190    4            �            1259    34127 *   APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq";
       public       postgres    false    4            �            1259    34129 7   APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"
    START WITH 50
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq";
       public       postgres    false    4            �            1259    34131 "   APP_CLIENT_USER_CLIENT_USER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_USER_CLIENT_USER_ID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."APP_CLIENT_USER_CLIENT_USER_ID_seq";
       public       postgres    false    4                       1259    34299    APP_CLIENT_USER    TABLE     �  CREATE TABLE public."APP_CLIENT_USER" (
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
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "PHONE" text,
    "PHOTO" text,
    "CLIENT_SITE_ID" integer
);
 %   DROP TABLE public."APP_CLIENT_USER";
       public         postgres    false    193    4            �            1259    34133 .   APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq";
       public       postgres    false    4                       1259    34306    APP_CLIENT_USER_GROUP    TABLE     �  CREATE TABLE public."APP_CLIENT_USER_GROUP" (
    "GROUP_ID" integer DEFAULT nextval('public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"'::regclass) NOT NULL,
    "GROUP_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 +   DROP TABLE public."APP_CLIENT_USER_GROUP";
       public         postgres    false    194    4            �            1259    34155    FILE_MANAGER_ID_seq    SEQUENCE        CREATE SEQUENCE public."FILE_MANAGER_ID_seq"
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."FILE_MANAGER_ID_seq";
       public       postgres    false    4                       1259    34313    APP_FILE_MANAGER    TABLE     �  CREATE TABLE public."APP_FILE_MANAGER" (
    "FILE_MANAGER_ID" integer DEFAULT nextval('public."FILE_MANAGER_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "SIZE" integer,
    "EXTENSION" text,
    "PATH" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "TITLE" text,
    "TYPE" text
);
 &   DROP TABLE public."APP_FILE_MANAGER";
       public         postgres    false    205    4                       1259    34320    APP_FUNCTION_ACCESS    TABLE     �  CREATE TABLE public."APP_FUNCTION_ACCESS" (
    "ID" integer NOT NULL,
    "NAME" text,
    "READ_PRIV" integer DEFAULT 0,
    "EDIT_PRIV" integer DEFAULT 0,
    "DELETE_PRIV" integer DEFAULT 0,
    "ADD_PRIV" integer DEFAULT 0,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "MENU_ID" integer,
    "IS_DELETE" integer
);
 )   DROP TABLE public."APP_FUNCTION_ACCESS";
       public         postgres    false    4            �            1259    34135    APP_FUNCTION_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_FUNCTION_ACCESS_ID_seq"
    START WITH 1548
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."APP_FUNCTION_ACCESS_ID_seq";
       public       postgres    false    263    4            �           0    0    APP_FUNCTION_ACCESS_ID_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."APP_FUNCTION_ACCESS_ID_seq" OWNED BY public."APP_FUNCTION_ACCESS"."ID";
            public       postgres    false    195            �            1259    34139    APP_LOG_LOG_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_LOG_LOG_ID_seq"
    START WITH 27295
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."APP_LOG_LOG_ID_seq";
       public       postgres    false    4                       1259    34331    APP_LOG    TABLE       CREATE TABLE public."APP_LOG" (
    "LOG_ID" integer DEFAULT nextval('public."APP_LOG_LOG_ID_seq"'::regclass) NOT NULL,
    "CREATE_TIME" timestamp(6) without time zone,
    "ACTIVITY" text,
    "IP" text,
    "DETAIL" text,
    "USERNAME" text,
    "METHOD" text
);
    DROP TABLE public."APP_LOG";
       public         postgres    false    197    4            �            1259    34137     APP_LOG_CLIENT_LOG_CLIENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"
    START WITH 5085
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq";
       public       postgres    false    4            	           1259    34338    APP_LOG_CLIENT    TABLE     =  CREATE TABLE public."APP_LOG_CLIENT" (
    "LOG_ID" integer DEFAULT nextval('public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"'::regclass) NOT NULL,
    "CREATE_TIME" timestamp(6) without time zone,
    "ACTIVITY" text,
    "IP" text,
    "DETAIL" text,
    "USERNAME" text,
    "CLIENT_SITE_NAME" text,
    "METHOD" text
);
 $   DROP TABLE public."APP_LOG_CLIENT";
       public         postgres    false    196    4            �            1259    34141    APP_MENU_MENU_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_MENU_MENU_ID_seq"
    START WITH 160
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."APP_MENU_MENU_ID_seq";
       public       postgres    false    4            
           1259    34345    APP_MENU    TABLE     c  CREATE TABLE public."APP_MENU" (
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
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
    DROP TABLE public."APP_MENU";
       public         postgres    false    198    4            �            1259    34143    APP_ROUTE_ROUTE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_ROUTE_ROUTE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."APP_ROUTE_ROUTE_ID_seq";
       public       postgres    false    4                       1259    34352 	   APP_ROUTE    TABLE     �  CREATE TABLE public."APP_ROUTE" (
    "ROUTE_ID" integer DEFAULT nextval('public."APP_ROUTE_ROUTE_ID_seq"'::regclass) NOT NULL,
    "SLUG" text,
    "CONTROLLER" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
    DROP TABLE public."APP_ROUTE";
       public         postgres    false    199    4            �            1259    34145    APP_SETTING_SETTING_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_SETTING_SETTING_ID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."APP_SETTING_SETTING_ID_seq";
       public       postgres    false    4                       1259    34359    APP_SETTING    TABLE     �   CREATE TABLE public."APP_SETTING" (
    "SETTING_ID" integer DEFAULT nextval('public."APP_SETTING_SETTING_ID_seq"'::regclass) NOT NULL,
    "SETTING_NAME" text,
    "SETTING_VALUE" text
);
 !   DROP TABLE public."APP_SETTING";
       public         postgres    false    200    4            �            1259    34147 *   APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"
    START WITH 69
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq";
       public       postgres    false    4            �            1259    34151    APP_USER_USER_ID_seq    SEQUENCE        CREATE SEQUENCE public."APP_USER_USER_ID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."APP_USER_USER_ID_seq";
       public       postgres    false    4                       1259    34366    APP_USER    TABLE     �  CREATE TABLE public."APP_USER" (
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
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "PHONE" text,
    "PHOTO" text
);
    DROP TABLE public."APP_USER";
       public         postgres    false    203    4            �            1259    34149    APP_USER_GROUP_GROUP_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."APP_USER_GROUP_GROUP_ID_seq"
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."APP_USER_GROUP_GROUP_ID_seq";
       public       postgres    false    4                       1259    34373    APP_USER_GROUP    TABLE     �  CREATE TABLE public."APP_USER_GROUP" (
    "GROUP_ID" integer DEFAULT nextval('public."APP_USER_GROUP_GROUP_ID_seq"'::regclass) NOT NULL,
    "GROUP_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "PHONE" text,
    "PHOTO" text
);
 $   DROP TABLE public."APP_USER_GROUP";
       public         postgres    false    202    4            B           1259    34867    ELEMENT_CONNECTION    TABLE     l  CREATE TABLE public."ELEMENT_CONNECTION" (
    "ID" text DEFAULT public.gen_random_uuid() NOT NULL,
    "NAME" text,
    "DATA" text,
    "PRODUCT_ID" integer,
    "INTERVENTION_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "ELEMENT_TIMELOG_ID" text,
    "ELEMENT_QUALITY_ID" text,
    "ELEMENT_FIELDS" text,
    "ELEMENT_JS" text,
    "ELEMENT_R1" text,
    "ELEMENT_R2" text,
    "ELEMENT_R3" text,
    "ELEMENT_R4" text
);
 (   DROP TABLE public."ELEMENT_CONNECTION";
       public         postgres    false    2    4    4            �            1259    34157    FORM_ENTRY_FIELD_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."FORM_ENTRY_FIELD_ID_seq"
    START WITH 50
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."FORM_ENTRY_FIELD_ID_seq";
       public       postgres    false    4                       1259    34386    FORM_ENTRY_FIELD    TABLE     ZN  CREATE TABLE public."FORM_ENTRY_FIELD" (
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
    "TIME_NOR" time(6) without time zone,
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
    "TIME_BERTHED" time(6) without time zone,
    "BL_START_DATE" date,
    "BL_START_TIME" time(6) without time zone,
    "DATE_ACCEPTED" date,
    "DATE_CONTRACT" date,
    "PORT_TERMINAL" text,
    "SAMPLE_SOURCE" text,
    "SELECT_CLIENT" text,
    "SFAL_TOV_BBLS" text,
    "SFAL_TOV_KL15" text,
    "ST_NOMINATION" text,
    "TIME_ACCEPTED" time(6) without time zone,
    "DATE_COMMENCED" date,
    "DATE_COMPLETED" date,
    "FWAL_METRICTON" text,
    "SELECT_PRODUCT" text,
    "SFAL_TOV_KLOBS" text,
    "SL_GSV_LONGTON" text,
    "TIME_COMMENCED" time(6) without time zone,
    "TIME_COMPLETED" time(6) without time zone,
    "DATE_ANCHORAGED" date,
    "REMARKS_BERTHED" text,
    "RN_LETTER_ISSUE" text,
    "RN_NOTICE_ISSUE" text,
    "TIME_ANCHORAGED" time(6) without time zone,
    "BL_QUANTITY_BBLS" text,
    "BL_QUANTITY_KL15" text,
    "DATE_KEY_MEETING" date,
    "DATE_OF_ANALYSIS" date,
    "REMARKS_ACCEPTED" text,
    "SF_QUANTITY_BBLS" text,
    "SF_QUANTITY_KL15" text,
    "SFAL_TOV_LONGTON" text,
    "SL_GSV_METRICTON" text,
    "TIME_KEY_MEETING" time(6) without time zone,
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
    "LOADING_START_TIME" time(6) without time zone,
    "OBQ_QUANTITY_KLOBS" text,
    "REMARKS_ANCHORAGED" text,
    "RN_STATEMENT_ISSUE" text,
    "SFAL_TOV_METRICTON" text,
    "SL_VS_BOL_R1_KLOBS" text,
    "TIME_VESSEL_SAILED" time(6) without time zone,
    "BL_QUANTITY_LONGTON" text,
    "BO_MDO_ON_DEPARTURE" text,
    "BO_MFO_ON_DEPARTURE" text,
    "CLIENT_SITE_ID_FORM" text,
    "DATE_HOSE_CONNECTED" date,
    "DATE_VESSEL_ARRIVED" date,
    "REMARKS_KEY_MEETING" text,
    "SELECT_INTERVENTION" integer,
    "SF_QUANTITY_LONGTON" text,
    "TIME_HOSE_CONNECTED" time(6) without time zone,
    "TIME_VESSEL_ARRIVED" time(6) without time zone,
    "DISCHARGE_START_DATE" date,
    "DISCHARGE_START_TIME" time(6) without time zone,
    "OBQ_QUANTITY_LONGTON" text,
    "SL_APPLIED_VEFL_BBLS" text,
    "SL_VS_BOL_R1_LONGTON" text,
    "BL_15_DERAJAT_CELCIUS" text,
    "BL_QUANTITY_METRICTON" text,
    "LOADING_COMPLETE_DATE" date,
    "LOADING_COMPLETE_TIME" time(6) without time zone,
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
    "TIME_DOCUMENTS_ONBOARD" time(6) without time zone,
    "TIME_LOADING_COMMENCED" time(6) without time zone,
    "TIME_LOADING_COMPLETED" time(6) without time zone,
    "TIME_SURVEYOR_ON_BOARD" time(6) without time zone,
    "DATE_SAMPLING_COMMENCED" date,
    "DATE_SAMPLING_COMPLETED" date,
    "DISCHARGE_COMPLETE_DATE" date,
    "DISCHARGE_COMPLETE_TIME" time(6) without time zone,
    "SC_ON_ARRIVAL_DRAFT_AFT" text,
    "SC_ON_ARRIVAL_DRAFT_FWD" text,
    "TIME_SAMPLING_COMMENCED" time(6) without time zone,
    "TIME_SAMPLING_COMPLETED" time(6) without time zone,
    "DATE_CONNECTED_COMMENCED" date,
    "DATE_CONNECTED_COMPLETED" date,
    "SC_ON_ARRIVAL_DRAFT_LIST" text,
    "TIME_CONNECTED_COMMENCED" time(6) without time zone,
    "TIME_CONNECTED_COMPLETED" time(6) without time zone,
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
    "TIME_MEASUREMENT_COMMENCED" time(6) without time zone,
    "TIME_MEASUREMENT_COMPLETED" time(6) without time zone,
    "REMARKS_CONNECTED_COMMENCED" text,
    "REMARKS_CONNECTED_COMPLETED" text,
    "SL_VEF_APPLIED_VS_BOL_KLOBS" text,
    "REMARKS_MEASUREMENT_COMMENCED" text,
    "REMARKS_MEASUREMENT_COMPLETED" text,
    "SL_VEF_APPLIED_VS_BOL_LONGTON" text,
    "SL_VEF_APPLIED_VS_BOL_METRICTON" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
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
    "TIME_DISCHARGE_COMMENCED" time(6) without time zone,
    "TIME_DISCHARGE_COMPLETED" time(6) without time zone,
    "TIME_INPECTION_COMMENCED" time(6) without time zone,
    "DATE_INSPECTION_COMPLETED" date,
    "REMARKS_HOSE_DISCONNECTED" text,
    "SL_APPLIED_VEFL_METRICTON" text,
    "TIME_INSPECTION_COMPLETED" time(6) without time zone,
    "SF_FREE_WATER_AL_METRICTON" text,
    "REMARKS_DISCHARGE_COMMENCED" text,
    "REMARKS_DISCHARGE_COMPLETED" text,
    "REMARKS_INPECTION_COMMENCED" text,
    "REMARKS_INSPECTION_COMPLETED" text,
    "DATE_HOSE_CONNECTED_COMMENCED" date,
    "DATE_HOSE_CONNECTED_COMPLETED" date,
    "SL_VEF_APPLIED_VS_BOL_R1_BBLS" text,
    "SL_VEF_APPLIED_VS_BOL_R1_KL15" text,
    "TIME_HOSE_CONNECTED_COMMENCED" time(6) without time zone,
    "TIME_HOSE_CONNECTED_COMPLETED" time(6) without time zone,
    "SL_VEF_APPLIED_VS_BOL_R1_KLOBS" text,
    "SF_SHORE_TANKS_NOMINATION_KLOBS" text,
    "DATE_CARGO_MEASUREMENT_COMMENCED" date,
    "DATE_CARGO_MEASUREMENT_COMPLETED" date,
    "REMARKS_HOSE_CONNECTED_COMMENCED" text,
    "REMARKS_HOSE_CONNECTED_COMPLETED" text,
    "SL_VEF_APPLIED_VS_BOL_R1_LONGTON" text,
    "TIME_CARGO_MEASUREMENT_COMMENCED" time(6) without time zone,
    "TIME_CARGO_MEASUREMENT_COMPLETED" time(6) without time zone,
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
    "TIME_POB" time(6) without time zone,
    "DATE_BERTHING" date,
    "TIME_BERTHING" time(6) without time zone,
    "DATE_SBD_COMMENCED" date,
    "DATE_SBD_COMPLETED" date,
    "TIME_SBD_COMMENCED" time(6) without time zone,
    "TIME_SBD_COMPLETED" time(6) without time zone,
    "DATE_DISCHARGE_COMMENCED" date,
    "DATE_TANKS_INS_COMMENCED" date,
    "TIME_TANKS_INS_COMMENCED" time(6) without time zone,
    "DATE_TANKS_INS_COMPLETED" date,
    "TIME_TANKS_INS_COMPLETED" time(6) without time zone,
    "DATE_SVY_LEFT_VESSEL" date,
    "TIME_SVY_LEFT_VESSEL" time(6) without time zone,
    "DATE_VESSEL_SAIL" date,
    "TIME_VESSEL_SAIL" time(6) without time zone,
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
    "SR_VS_BOL_METRICTON" text,
    "TYPE_LOCATION" text
);
 &   DROP TABLE public."FORM_ENTRY_FIELD";
       public         postgres    false    206    4            �            1259    34159    FORM_ENTRY_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."FORM_ENTRY_ID_seq"
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."FORM_ENTRY_ID_seq";
       public       postgres    false    4            �            1259    34161    HEADER_INFO_CLIENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."HEADER_INFO_CLIENT_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."HEADER_INFO_CLIENT_ID_seq";
       public       postgres    false    4                       1259    34398    HEADER_INFO_CLIENT    TABLE     *  CREATE TABLE public."HEADER_INFO_CLIENT" (
    "ID" integer DEFAULT nextval('public."HEADER_INFO_CLIENT_ID_seq"'::regclass) NOT NULL,
    "INTERVENTION_ID" text,
    "PRINCIPLE" text,
    "CONTRACT_ID" text,
    "PO" text,
    "RETAIL_REFERENCE" text,
    "PRODUCT_DETAIL" text,
    "FILE_ORDER" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "LOCATION_ID" integer
);
 (   DROP TABLE public."HEADER_INFO_CLIENT";
       public         postgres    false    208    4                       1259    34420    INFO_CLIENT    TABLE     �  CREATE TABLE public."INFO_CLIENT" (
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
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text,
    "HEADER_INFO_CLIENT_ID" integer
);
 !   DROP TABLE public."INFO_CLIENT";
       public         postgres    false    4            �            1259    34165    KOMPONEN_HTML_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."KOMPONEN_HTML_ID_seq"
    START WITH 22
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."KOMPONEN_HTML_ID_seq";
       public       postgres    false    4                       1259    34442    KOMPONEN_HTML    TABLE       CREATE TABLE public."KOMPONEN_HTML" (
    "ID" integer DEFAULT nextval('public."KOMPONEN_HTML_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "DATA" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 #   DROP TABLE public."KOMPONEN_HTML";
       public         postgres    false    210    4            �            1259    34167    KOMPONEN_JSON_ID_seq    SEQUENCE        CREATE SEQUENCE public."KOMPONEN_JSON_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."KOMPONEN_JSON_ID_seq";
       public       postgres    false    4                       1259    34451    KOMPONEN_JSON    TABLE     �  CREATE TABLE public."KOMPONEN_JSON" (
    "ID" integer DEFAULT nextval('public."KOMPONEN_JSON_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "DATA" jsonb,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 #   DROP TABLE public."KOMPONEN_JSON";
       public         postgres    false    211    4            �            1259    34169    MAP_POINT_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."MAP_POINT_ID_seq"
    START WITH 13
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MAP_POINT_ID_seq";
       public       postgres    false    4                       1259    34458 	   MAP_POINT    TABLE       CREATE TABLE public."MAP_POINT" (
    "ID" integer DEFAULT nextval('public."MAP_POINT_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "LATITUDE" double precision,
    "LONGITUDE" double precision,
    "TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "ICON_ID" integer,
    "SITE_ID" integer,
    "CABANG_ID" integer
);
    DROP TABLE public."MAP_POINT";
       public         postgres    false    212    4            A           1259    34855    MASTER_AREA    TABLE     v  CREATE TABLE public."MASTER_AREA" (
    "AREA_ID" text DEFAULT public.gen_random_uuid() NOT NULL,
    "AREA_NAME" text,
    "AREA_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 !   DROP TABLE public."MASTER_AREA";
       public         postgres    false    2    4    4            �            1259    34171    MASTER_BARGE_BARGE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_BARGE_BARGE_ID_seq"
    START WITH 13
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."MASTER_BARGE_BARGE_ID_seq";
       public       postgres    false    4                       1259    34465    MASTER_BARGE    TABLE     �  CREATE TABLE public."MASTER_BARGE" (
    "BARGE_ID" integer DEFAULT nextval('public."MASTER_BARGE_BARGE_ID_seq"'::regclass) NOT NULL,
    "BARGE_NAME" name,
    "BARGE_TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text
);
 "   DROP TABLE public."MASTER_BARGE";
       public         postgres    false    213    4            �            1259    34173    MASTER_BBM_BBM_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_BBM_BBM_ID_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."MASTER_BBM_BBM_ID_seq";
       public       postgres    false    4                       1259    34472 
   MASTER_BBM    TABLE     �  CREATE TABLE public."MASTER_BBM" (
    "BBM_ID" integer DEFAULT nextval('public."MASTER_BBM_BBM_ID_seq"'::regclass) NOT NULL,
    "BBM_NAME" text,
    "BBM_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
     DROP TABLE public."MASTER_BBM";
       public         postgres    false    214    4            �            1259    34175    MASTER_CABANG_CABANG_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CABANG_CABANG_ID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."MASTER_CABANG_CABANG_ID_seq";
       public       postgres    false    4                       1259    34479    MASTER_CABANG    TABLE     �  CREATE TABLE public."MASTER_CABANG" (
    "CABANG_ID" integer DEFAULT nextval('public."MASTER_CABANG_CABANG_ID_seq"'::regclass) NOT NULL,
    "BRANCH_NAME" text,
    "BRANCH_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "ADDRESS" character varying(255)
);
 #   DROP TABLE public."MASTER_CABANG";
       public         postgres    false    215    4            @           1259    34848    MASTER_CLIENT    TABLE     ~  CREATE TABLE public."MASTER_CLIENT" (
    "CLIENT_ID" text DEFAULT public.gen_random_uuid() NOT NULL,
    "CLIENT_NAME" text,
    "CLIENT_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 #   DROP TABLE public."MASTER_CLIENT";
       public         postgres    false    2    4    4            �            1259    34177    MASTER_CONTRACT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CONTRACT_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MASTER_CONTRACT_ID_seq";
       public       postgres    false    4                       1259    34486    MASTER_CONTRACT    TABLE     �  CREATE TABLE public."MASTER_CONTRACT" (
    "ID" integer DEFAULT nextval('public."MASTER_CONTRACT_ID_seq"'::regclass) NOT NULL,
    "CONTRACT" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 %   DROP TABLE public."MASTER_CONTRACT";
       public         postgres    false    216    4            �            1259    34187    MASTER_CV_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."MASTER_CV_ID_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MASTER_CV_ID_seq";
       public       postgres    false    4                       1259    34493 	   MASTER_CV    TABLE     �  CREATE TABLE public."MASTER_CV" (
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
    "EMAIL" character varying(150),
    "TYPE_LOCATION" smallint,
    "ID_SBU" integer,
    "ID_CABANG" integer
);
    DROP TABLE public."MASTER_CV";
       public         postgres    false    221    4            �           0    0    COLUMN "MASTER_CV"."GENDER"    COMMENT     I   COMMENT ON COLUMN public."MASTER_CV"."GENDER" IS 'L = Male, P = Female';
            public       postgres    false    284            �            1259    34179    MASTER_CV_CERTIFICATE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_CERTIFICATE_ID_seq"
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."MASTER_CV_CERTIFICATE_ID_seq";
       public       postgres    false    4                       1259    34500    MASTER_CV_CERTIFICATE    TABLE     A  CREATE TABLE public."MASTER_CV_CERTIFICATE" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_CERTIFICATE_ID_seq"'::regclass) NOT NULL,
    "ID_CV" integer,
    "CERTIFICATE_NAME" character varying(150),
    "CERITIFICATE_EXPIRED" date,
    "CERITIFICATE_FROM" character varying(100),
    "CERITIFICATE_FILE" text
);
 +   DROP TABLE public."MASTER_CV_CERTIFICATE";
       public         postgres    false    217    4            �            1259    34181    MASTER_CV_EDUCATION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_EDUCATION_ID_seq"
    START WITH 102
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MASTER_CV_EDUCATION_ID_seq";
       public       postgres    false    4                       1259    34507    MASTER_CV_EDUCATION    TABLE     �   CREATE TABLE public."MASTER_CV_EDUCATION" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_EDUCATION_ID_seq"'::regclass) NOT NULL,
    "ID_CV" integer,
    "ID_REF_EDUCATION" integer,
    "SCHOOL" character varying(150)
);
 )   DROP TABLE public."MASTER_CV_EDUCATION";
       public         postgres    false    218    4            �            1259    34183    MASTER_CV_EXPERIENCE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_EXPERIENCE_ID_seq"
    START WITH 81
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."MASTER_CV_EXPERIENCE_ID_seq";
       public       postgres    false    4                       1259    34511    MASTER_CV_EXPERIENCE    TABLE     �   CREATE TABLE public."MASTER_CV_EXPERIENCE" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_EXPERIENCE_ID_seq"'::regclass) NOT NULL,
    "ID_CV" integer,
    "ID_REF_EXPERIENCE" integer,
    "LEVEL" smallint
);
 *   DROP TABLE public."MASTER_CV_EXPERIENCE";
       public         postgres    false    219    4            �           0    0 %   COLUMN "MASTER_CV_EXPERIENCE"."LEVEL"    COMMENT     j   COMMENT ON COLUMN public."MASTER_CV_EXPERIENCE"."LEVEL" IS '1 = Beginner, 2 = Intermediate, 3 = Advance';
            public       postgres    false    287            �            1259    34185     MASTER_CV_HISTORY_OF_WORK_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_HISTORY_OF_WORK_ID_seq"
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."MASTER_CV_HISTORY_OF_WORK_ID_seq";
       public       postgres    false    4                        1259    34515    MASTER_CV_HISTORY_OF_WORK    TABLE     -  CREATE TABLE public."MASTER_CV_HISTORY_OF_WORK" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_HISTORY_OF_WORK_ID_seq"'::regclass),
    "COMPANY_NAME" character varying(150),
    "FROM" date,
    "END" date,
    "POSITION" character varying(100),
    "DESCRIPTION" text,
    "ID_CV" integer
);
 /   DROP TABLE public."MASTER_CV_HISTORY_OF_WORK";
       public         postgres    false    220    4            �            1259    34189    MASTER_CV_REGION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_CV_REGION_ID_seq"
    START WITH 80
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."MASTER_CV_REGION_ID_seq";
       public       postgres    false    4            !           1259    34522    MASTER_CV_REGION    TABLE     �   CREATE TABLE public."MASTER_CV_REGION" (
    "ID" integer DEFAULT nextval('public."MASTER_CV_REGION_ID_seq"'::regclass) NOT NULL,
    "ID_REF_REGION" integer,
    "ID_CV" integer
);
 &   DROP TABLE public."MASTER_CV_REGION";
       public         postgres    false    222    4            �            1259    34191    MASTER_ICON_MARKER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_ICON_MARKER_ID_seq"
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."MASTER_ICON_MARKER_ID_seq";
       public       postgres    false    4            "           1259    34526    MASTER_ICON_MARKER    TABLE     �  CREATE TABLE public."MASTER_ICON_MARKER" (
    "ID" integer DEFAULT nextval('public."MASTER_ICON_MARKER_ID_seq"'::regclass) NOT NULL,
    "NAMA" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 (   DROP TABLE public."MASTER_ICON_MARKER";
       public         postgres    false    223    4            �            1259    34193    MASTER_INTERVENTION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_INTERVENTION_ID_seq"
    START WITH 25
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MASTER_INTERVENTION_ID_seq";
       public       postgres    false    4            #           1259    34533    MASTER_INTERVENTION    TABLE     �  CREATE TABLE public."MASTER_INTERVENTION" (
    "ID" integer DEFAULT nextval('public."MASTER_INTERVENTION_ID_seq"'::regclass) NOT NULL,
    "INTERVENTION_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "FILE_SOURCE" text
);
 )   DROP TABLE public."MASTER_INTERVENTION";
       public         postgres    false    224    4            �            1259    34195    MASTER_LOCATION_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_LOCATION_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MASTER_LOCATION_ID_seq";
       public       postgres    false    4            $           1259    34540    MASTER_LOCATION    TABLE     �  CREATE TABLE public."MASTER_LOCATION" (
    "ID" integer DEFAULT nextval('public."MASTER_LOCATION_ID_seq"'::regclass) NOT NULL,
    "LOCATION_NAME" text,
    "LOCATION_DESCRIPTION" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 %   DROP TABLE public."MASTER_LOCATION";
       public         postgres    false    225    4            �            1259    34197    MASTER_PERSONIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_PERSONIL_ID_seq"
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MASTER_PERSONIL_ID_seq";
       public       postgres    false    4            %           1259    34547    MASTER_PERSONIL    TABLE     �  CREATE TABLE public."MASTER_PERSONIL" (
    "ID" integer DEFAULT nextval('public."MASTER_PERSONIL_ID_seq"'::regclass) NOT NULL,
    "POSISI" text,
    "NAMA" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone
);
 %   DROP TABLE public."MASTER_PERSONIL";
       public         postgres    false    226    4            �            1259    34199    MASTER_PORT_PORT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_PORT_PORT_ID_seq"
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."MASTER_PORT_PORT_ID_seq";
       public       postgres    false    4            &           1259    34554    MASTER_PORT    TABLE     �  CREATE TABLE public."MASTER_PORT" (
    "PORT_ID" integer DEFAULT nextval('public."MASTER_PORT_PORT_ID_seq"'::regclass) NOT NULL,
    "PORT_NAME" name,
    "PORT_TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text
);
 !   DROP TABLE public."MASTER_PORT";
       public         postgres    false    227    4            �            1259    34201    MASTER_PRODUCT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_PRODUCT_ID_seq"
    START WITH 14
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."MASTER_PRODUCT_ID_seq";
       public       postgres    false    4            '           1259    34561    MASTER_PRODUCT    TABLE     Z  CREATE TABLE public."MASTER_PRODUCT" (
    "PRODUCT_ID" integer DEFAULT nextval('public."MASTER_PRODUCT_ID_seq"'::regclass) NOT NULL,
    "PRODUCT_LEVEL" integer,
    "PRODUCT_REFERENCE" integer,
    "PRODUCT_NAME" text,
    "WEIGHT" integer,
    "SHOW" integer,
    "HIERARCHY" integer,
    "BASICHIERARCHY" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "INTERVENTION_REFERENCE" text
);
 $   DROP TABLE public."MASTER_PRODUCT";
       public         postgres    false    228    4            �            1259    34203    MASTER_SBU_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."MASTER_SBU_ID_seq"
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."MASTER_SBU_ID_seq";
       public       postgres    false    4            (           1259    34568 
   MASTER_SBU    TABLE     =  CREATE TABLE public."MASTER_SBU" (
    "ID" integer DEFAULT nextval('public."MASTER_SBU_ID_seq"'::regclass),
    "NAMA_SBU" character varying(150),
    "CREATED_DATE" timestamp without time zone,
    "UPDATE_DATE" timestamp without time zone,
    "SBU_DESCRIPTION" character varying(255),
    "IS_DELETE" smallint
);
     DROP TABLE public."MASTER_SBU";
       public         postgres    false    229    4            �            1259    34207    MASTER_STDREF_ID_seq    SEQUENCE        CREATE SEQUENCE public."MASTER_STDREF_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."MASTER_STDREF_ID_seq";
       public       postgres    false    4            )           1259    34572    MASTER_STDREF    TABLE     �  CREATE TABLE public."MASTER_STDREF" (
    "ID" integer DEFAULT nextval('public."MASTER_STDREF_ID_seq"'::regclass) NOT NULL,
    "STD_REF" text,
    "UPLOAD_FILE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "CONTENT_INFO" text
);
 #   DROP TABLE public."MASTER_STDREF";
       public         postgres    false    231    4            �            1259    34205    MASTER_STD_REF_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_STD_REF_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."MASTER_STD_REF_ID_seq";
       public       postgres    false    4            �            1259    34209    MASTER_TOOL_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."MASTER_TOOL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."MASTER_TOOL_ID_seq";
       public       postgres    false    4            *           1259    34579    MASTER_TOOL    TABLE     3  CREATE TABLE public."MASTER_TOOL" (
    "ID" integer DEFAULT nextval('public."MASTER_TOOL_ID_seq"'::regclass) NOT NULL,
    "JENIS" text,
    "NAMA" text,
    "JUMLAH" integer,
    "UPLOAD_SERTIFIKAT" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "ID_SBU" integer,
    "ID_CABANG" integer,
    "KONDISI" smallint,
    "TGL_END_KALIBRASI" date,
    "TYPE_LOCATION" smallint
);
 !   DROP TABLE public."MASTER_TOOL";
       public         postgres    false    232    4            �           0    0    COLUMN "MASTER_TOOL"."KONDISI"    COMMENT     r   COMMENT ON COLUMN public."MASTER_TOOL"."KONDISI" IS '1 = Sangat Baik 
2 = Baik 
3 = Buruk 
4 = Sangat Buruk ';
            public       postgres    false    298            �           0    0 $   COLUMN "MASTER_TOOL"."TYPE_LOCATION"    COMMENT     Z   COMMENT ON COLUMN public."MASTER_TOOL"."TYPE_LOCATION" IS '1 = Kantor Pusat, 2 = Cabang';
            public       postgres    false    298            �            1259    34211    MASTER_VESSEL_VESSEL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MASTER_VESSEL_VESSEL_ID_seq"
    START WITH 27
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."MASTER_VESSEL_VESSEL_ID_seq";
       public       postgres    false    4            +           1259    34586    MASTER_VESSEL    TABLE     �  CREATE TABLE public."MASTER_VESSEL" (
    "VESSEL_ID" integer DEFAULT nextval('public."MASTER_VESSEL_VESSEL_ID_seq"'::regclass) NOT NULL,
    "VESSEL_NAME" name,
    "VESSEL_TYPE" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "CLIENT_SITE_ID" integer,
    "CLIENT_SITE_NAME" text
);
 #   DROP TABLE public."MASTER_VESSEL";
       public         postgres    false    233    4            1           1259    34659    REF_EDUCATION    TABLE     }   CREATE TABLE public."REF_EDUCATION" (
    "ID_REF_EDUCATION" integer NOT NULL,
    "EDUCATION_TYPE" character varying(50)
);
 #   DROP TABLE public."REF_EDUCATION";
       public         postgres    false    4            �            1259    34225    REF_EXP_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."REF_EXP_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."REF_EXP_ID_seq";
       public       postgres    false    4            2           1259    34662    REF_EXP    TABLE     �   CREATE TABLE public."REF_EXP" (
    "ID_REF_EXP" integer DEFAULT nextval('public."REF_EXP_ID_seq"'::regclass) NOT NULL,
    "EXP_TYPE" character varying(50)
);
    DROP TABLE public."REF_EXP";
       public         postgres    false    240    4            �            1259    34227    REF_POSITION_ID_seq    SEQUENCE     ~   CREATE SEQUENCE public."REF_POSITION_ID_seq"
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."REF_POSITION_ID_seq";
       public       postgres    false    4            3           1259    34666    REF_POSITION    TABLE     �   CREATE TABLE public."REF_POSITION" (
    "ID_REF_POSITION" integer DEFAULT nextval('public."REF_POSITION_ID_seq"'::regclass) NOT NULL,
    "POSITION" character varying(100)
);
 "   DROP TABLE public."REF_POSITION";
       public         postgres    false    241    4            �            1259    34229    REF_REGION_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."REF_REGION_ID_seq"
    START WITH 32
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."REF_REGION_ID_seq";
       public       postgres    false    4            4           1259    34670 
   REF_REGION    TABLE     �   CREATE TABLE public."REF_REGION" (
    "ID_REF_REGION" integer DEFAULT nextval('public."REF_REGION_ID_seq"'::regclass),
    "REGION" character varying(100)
);
     DROP TABLE public."REF_REGION";
       public         postgres    false    242    4            �            1259    34231     RUNNING_TEXT_RUNNING_TEXT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."RUNNING_TEXT_RUNNING_TEXT_ID_seq"
    START WITH 87
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."RUNNING_TEXT_RUNNING_TEXT_ID_seq";
       public       postgres    false    4            5           1259    34674    RUNNING_TEXT    TABLE       CREATE TABLE public."RUNNING_TEXT" (
    "RUNNING_TEXT_ID" integer DEFAULT nextval('public."RUNNING_TEXT_RUNNING_TEXT_ID_seq"'::regclass) NOT NULL,
    "MESSAGE" text,
    "DISPLAY_START_TIME" timestamp(6) without time zone,
    "DISPLAY_STOP_TIME" timestamp(6) without time zone,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "CLIENT_SITE_ID" integer
);
 "   DROP TABLE public."RUNNING_TEXT";
       public         postgres    false    243    4            �            1259    34235 	   WA_ID_seq    SEQUENCE     u   CREATE SEQUENCE public."WA_ID_seq"
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public."WA_ID_seq";
       public       postgres    false    4            7           1259    34701    WA    TABLE     �   CREATE TABLE public."WA" (
    "ID" integer DEFAULT nextval('public."WA_ID_seq"'::regclass) NOT NULL,
    "CONTACT" character varying(255),
    "MESSAGE" character varying(255),
    "STATUS" integer DEFAULT 0
);
    DROP TABLE public."WA";
       public         postgres    false    245    4            �            1259    34239    WEBSITE_ARTICLE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_ARTICLE_ID_seq"
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."WEBSITE_ARTICLE_ID_seq";
       public       postgres    false    4            8           1259    34709    WEBSITE_ARTICLE    TABLE     �  CREATE TABLE public."WEBSITE_ARTICLE" (
    "ARTICLE_ID" integer DEFAULT nextval('public."WEBSITE_ARTICLE_ID_seq"'::regclass) NOT NULL,
    "ARTICLE_CATEGORY_ID" integer NOT NULL,
    "TITLE" text,
    "CONTENT" text,
    "STATUS" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 %   DROP TABLE public."WEBSITE_ARTICLE";
       public         postgres    false    247    4            �            1259    34237    WEBSITE_ARTICLE_CATEGORY_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_ARTICLE_CATEGORY_ID_seq"
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."WEBSITE_ARTICLE_CATEGORY_ID_seq";
       public       postgres    false    4            9           1259    34716    WEBSITE_ARTICLE_CATEGORY    TABLE     �  CREATE TABLE public."WEBSITE_ARTICLE_CATEGORY" (
    "ARTICLE_CATEGORY_ID" integer DEFAULT nextval('public."WEBSITE_ARTICLE_CATEGORY_ID_seq"'::regclass) NOT NULL,
    "CATEGORY_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 .   DROP TABLE public."WEBSITE_ARTICLE_CATEGORY";
       public         postgres    false    246    4            �            1259    34241    WEBSITE_MENU_MENU_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_MENU_MENU_ID_seq"
    START WITH 22
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."WEBSITE_MENU_MENU_ID_seq";
       public       postgres    false    4            :           1259    34723    WEBSITE_MENU    TABLE     k  CREATE TABLE public."WEBSITE_MENU" (
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
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 "   DROP TABLE public."WEBSITE_MENU";
       public         postgres    false    248    4            �            1259    34243    WEBSITE_PAGE_STATIC_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_PAGE_STATIC_ID_seq"
    START WITH 17
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."WEBSITE_PAGE_STATIC_ID_seq";
       public       postgres    false    4            ;           1259    34730    WEBSITE_PAGE_STATIC    TABLE     �  CREATE TABLE public."WEBSITE_PAGE_STATIC" (
    "PAGE_STATIC_ID" integer DEFAULT nextval('public."WEBSITE_PAGE_STATIC_ID_seq"'::regclass) NOT NULL,
    "TITLE" text,
    "CONTENT" text,
    "STATUS" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "URL" text,
    "SEO_TITLE" text
);
 )   DROP TABLE public."WEBSITE_PAGE_STATIC";
       public         postgres    false    249    4            �            1259    34247    WEBSITE_SLIDER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_SLIDER_ID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."WEBSITE_SLIDER_ID_seq";
       public       postgres    false    4            <           1259    34738    WEBSITE_SLIDER    TABLE     �  CREATE TABLE public."WEBSITE_SLIDER" (
    "SLIDER_ID" integer DEFAULT nextval('public."WEBSITE_SLIDER_ID_seq"'::regclass) NOT NULL,
    "NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "STATUS" text
);
 $   DROP TABLE public."WEBSITE_SLIDER";
       public         postgres    false    251    4            �            1259    34245    WEBSITE_SLIDER_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_SLIDER_DETAIL_ID_seq"
    START WITH 18
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."WEBSITE_SLIDER_DETAIL_ID_seq";
       public       postgres    false    4            =           1259    34745    WEBSITE_SLIDER_DETAIL    TABLE       CREATE TABLE public."WEBSITE_SLIDER_DETAIL" (
    "SLIDER_DETAIL_ID" integer DEFAULT nextval('public."WEBSITE_SLIDER_DETAIL_ID_seq"'::regclass) NOT NULL,
    "SLIDER_ID" integer,
    "TITLE" text,
    "CONTENT" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text,
    "PATH" text,
    "FILE_NAME" text,
    "STATUS" text
);
 +   DROP TABLE public."WEBSITE_SLIDER_DETAIL";
       public         postgres    false    250    4            �            1259    34251    WEBSITE_TAG_ID_seq    SEQUENCE     }   CREATE SEQUENCE public."WEBSITE_TAG_ID_seq"
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."WEBSITE_TAG_ID_seq";
       public       postgres    false    4            >           1259    34752    WEBSITE_TAG    TABLE     �  CREATE TABLE public."WEBSITE_TAG" (
    "TAG_ID" integer DEFAULT nextval('public."WEBSITE_TAG_ID_seq"'::regclass) NOT NULL,
    "TAG_NAME" text,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 !   DROP TABLE public."WEBSITE_TAG";
       public         postgres    false    253    4            �            1259    34249    WEBSITE_TAG_ARTICLE_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."WEBSITE_TAG_ARTICLE_ID_seq"
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."WEBSITE_TAG_ARTICLE_ID_seq";
       public       postgres    false    4            ?           1259    34759    WEBSITE_TAG_ARTICLE    TABLE     �  CREATE TABLE public."WEBSITE_TAG_ARTICLE" (
    "TAG_ARTICLE_ID" integer DEFAULT nextval('public."WEBSITE_TAG_ARTICLE_ID_seq"'::regclass) NOT NULL,
    "ARTICLE_ID" integer,
    "TAG_ID" integer,
    "IS_DELETE" integer,
    "CREATE_TIME" timestamp(6) without time zone,
    "CREATE_USER" text,
    "MODIFY_TIME" timestamp(6) without time zone,
    "MODIFY_USER" text,
    "DELETE_TIME" timestamp(6) without time zone,
    "DELETE_USER" text
);
 )   DROP TABLE public."WEBSITE_TAG_ARTICLE";
       public         postgres    false    252    4                       1259    34380    daemons    TABLE     U   CREATE TABLE public.daemons (
    "Start" text NOT NULL,
    "Info" text NOT NULL
);
    DROP TABLE public.daemons;
       public         postgres    false    4                       1259    34394    gammu    TABLE     U   CREATE TABLE public.gammu (
    "Version" smallint DEFAULT '0'::smallint NOT NULL
);
    DROP TABLE public.gammu;
       public         postgres    false    4                       1259    34405    inbox    TABLE       CREATE TABLE public.inbox (
    "UpdatedInDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "ReceivingDateTime" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "Text" text NOT NULL,
    "SenderNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Coding" character varying(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
    "UDH" text NOT NULL,
    "SMSCNumber" character varying(20) DEFAULT ''::character varying NOT NULL,
    "Class" integer DEFAULT '-1'::integer NOT NULL,
    "TextDecoded" text DEFAULT ''::text NOT NULL,
    "ID" integer NOT NULL,
    "RecipientID" text NOT NULL,
    "Processed" boolean DEFAULT false NOT NULL
);
    DROP TABLE public.inbox;
       public         postgres    false    4            �            1259    34163    inbox_ID_seq    SEQUENCE     x   CREATE SEQUENCE public."inbox_ID_seq"
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."inbox_ID_seq";
       public       postgres    false    4    275            �           0    0    inbox_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."inbox_ID_seq" OWNED BY public.inbox."ID";
            public       postgres    false    209            ,           1259    34593    outbox    TABLE     �  CREATE TABLE public.outbox (
    "UpdatedInDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "InsertIntoDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "SendingDateTime" timestamp(6) without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "SendBefore" time(6) without time zone DEFAULT '23:59:59'::time without time zone NOT NULL,
    "SendAfter" time(6) without time zone DEFAULT '00:00:00'::time without time zone NOT NULL,
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
    "SendingTimeOut" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "DeliveryReport" character varying(10) DEFAULT 'default'::character varying,
    "CreatorID" text NOT NULL,
    "Retries" integer DEFAULT 0,
    "Priority" integer DEFAULT 0,
    "Status" character varying(255) DEFAULT 'Reserved'::character varying NOT NULL,
    "StatusCode" integer DEFAULT '-1'::integer NOT NULL
);
    DROP TABLE public.outbox;
       public         postgres    false    4            �            1259    34213    outbox_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."outbox_ID_seq"
    START WITH 106
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."outbox_ID_seq";
       public       postgres    false    300    4            �           0    0    outbox_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."outbox_ID_seq" OWNED BY public.outbox."ID";
            public       postgres    false    234            -           1259    34617    outbox_multipart    TABLE     =  CREATE TABLE public.outbox_multipart (
    "Text" text,
    "Coding" character varying(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
    "UDH" text,
    "Class" integer DEFAULT '-1'::integer,
    "TextDecoded" text,
    "ID" integer NOT NULL,
    "SequencePosition" integer DEFAULT 1 NOT NULL
);
 $   DROP TABLE public.outbox_multipart;
       public         postgres    false    4            �            1259    34215    outbox_multipart_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."outbox_multipart_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."outbox_multipart_ID_seq";
       public       postgres    false    4    301            �           0    0    outbox_multipart_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."outbox_multipart_ID_seq" OWNED BY public.outbox_multipart."ID";
            public       postgres    false    235            .           1259    34627    pbk    TABLE     �   CREATE TABLE public.pbk (
    "ID" integer NOT NULL,
    "GroupID" integer DEFAULT '-1'::integer NOT NULL,
    "Name" text NOT NULL,
    "Number" text NOT NULL
);
    DROP TABLE public.pbk;
       public         postgres    false    4            �            1259    34219 
   pbk_ID_seq    SEQUENCE     u   CREATE SEQUENCE public."pbk_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."pbk_ID_seq";
       public       postgres    false    302    4            �           0    0 
   pbk_ID_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."pbk_ID_seq" OWNED BY public.pbk."ID";
            public       postgres    false    237            /           1259    34635 
   pbk_groups    TABLE     X   CREATE TABLE public.pbk_groups (
    "Name" text NOT NULL,
    "ID" integer NOT NULL
);
    DROP TABLE public.pbk_groups;
       public         postgres    false    4            �            1259    34217    pbk_groups_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."pbk_groups_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."pbk_groups_ID_seq";
       public       postgres    false    303    4            �           0    0    pbk_groups_ID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."pbk_groups_ID_seq" OWNED BY public.pbk_groups."ID";
            public       postgres    false    236            �            1259    34221    pelni_info_id_info_seq    SEQUENCE        CREATE SEQUENCE public.pelni_info_id_info_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pelni_info_id_info_seq;
       public       postgres    false    4            �            1259    34223    pelni_info_id_info_seq1    SEQUENCE     �   CREATE SEQUENCE public.pelni_info_id_info_seq1
    START WITH 81
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pelni_info_id_info_seq1;
       public       postgres    false    4    276            �           0    0    pelni_info_id_info_seq1    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pelni_info_id_info_seq1 OWNED BY public."INFO_CLIENT"."ID_INFO";
            public       postgres    false    239            0           1259    34642    phones    TABLE     k  CREATE TABLE public.phones (
    "ID" text NOT NULL,
    "UpdatedInDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "InsertIntoDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "TimeOut" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
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
       public         postgres    false    4            6           1259    34681 	   sentitems    TABLE     �  CREATE TABLE public.sentitems (
    "UpdatedInDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "InsertIntoDB" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "SendingDateTime" timestamp without time zone DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
    "DeliveryDateTime" timestamp without time zone,
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
    "CreatorID" text NOT NULL
);
    DROP TABLE public.sentitems;
       public         postgres    false    4            �            1259    34233    sentitems_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."sentitems_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."sentitems_ID_seq";
       public       postgres    false    4    310            �           0    0    sentitems_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."sentitems_ID_seq" OWNED BY public.sentitems."ID";
            public       postgres    false    244            �	           2604    34323    APP_FUNCTION_ACCESS ID    DEFAULT     �   ALTER TABLE ONLY public."APP_FUNCTION_ACCESS" ALTER COLUMN "ID" SET DEFAULT nextval('public."APP_FUNCTION_ACCESS_ID_seq"'::regclass);
 I   ALTER TABLE public."APP_FUNCTION_ACCESS" ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    195    263    263            �	           2604    34423    INFO_CLIENT ID_INFO    DEFAULT     ~   ALTER TABLE ONLY public."INFO_CLIENT" ALTER COLUMN "ID_INFO" SET DEFAULT nextval('public.pelni_info_id_info_seq1'::regclass);
 F   ALTER TABLE public."INFO_CLIENT" ALTER COLUMN "ID_INFO" DROP DEFAULT;
       public       postgres    false    239    276    276            �	           2604    34415    inbox ID    DEFAULT     h   ALTER TABLE ONLY public.inbox ALTER COLUMN "ID" SET DEFAULT nextval('public."inbox_ID_seq"'::regclass);
 9   ALTER TABLE public.inbox ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    275    209    275            
           2604    34605 	   outbox ID    DEFAULT     j   ALTER TABLE ONLY public.outbox ALTER COLUMN "ID" SET DEFAULT nextval('public."outbox_ID_seq"'::regclass);
 :   ALTER TABLE public.outbox ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    234    300    300            )
           2604    34622    outbox_multipart ID    DEFAULT     ~   ALTER TABLE ONLY public.outbox_multipart ALTER COLUMN "ID" SET DEFAULT nextval('public."outbox_multipart_ID_seq"'::regclass);
 D   ALTER TABLE public.outbox_multipart ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    301    235    301            +
           2604    34630    pbk ID    DEFAULT     d   ALTER TABLE ONLY public.pbk ALTER COLUMN "ID" SET DEFAULT nextval('public."pbk_ID_seq"'::regclass);
 7   ALTER TABLE public.pbk ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    237    302    302            -
           2604    34638    pbk_groups ID    DEFAULT     r   ALTER TABLE ONLY public.pbk_groups ALTER COLUMN "ID" SET DEFAULT nextval('public."pbk_groups_ID_seq"'::regclass);
 >   ALTER TABLE public.pbk_groups ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    303    236    303            E
           2604    34692    sentitems ID    DEFAULT     p   ALTER TABLE ONLY public.sentitems ALTER COLUMN "ID" SET DEFAULT nextval('public."sentitems_ID_seq"'::regclass);
 =   ALTER TABLE public.sentitems ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    244    310    310            5          0    34253    ALERT_SUBSCRIBER 
   TABLE DATA               �   COPY public."ALERT_SUBSCRIBER" ("ALERT_SUBSCRIBER_ID", "USER_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "SUBSCRIBE", "LAST_SEND", "CLIENT_SITE_ID") FROM stdin;
    public       postgres    false    254   R      �           0    0    ALERT_SUBSCRIBER_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ALERT_SUBSCRIBER_ID_seq"', 9, false);
            public       postgres    false    186            6          0    34260    APP_CLIENT_ACCESS 
   TABLE DATA               �   COPY public."APP_CLIENT_ACCESS" ("ID", "NAME", "READ_PRIV", "EDIT_PRIV", "DELETE_PRIV", "ADD_PRIV", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "MENU_ID", "IS_DELETE") FROM stdin;
    public       postgres    false    255   QR      �           0    0 &   APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"', 59, false);
            public       postgres    false    187            7          0    34271    APP_CLIENT_FORM_UPLOAD_DETAIL 
   TABLE DATA               �   COPY public."APP_CLIENT_FORM_UPLOAD_DETAIL" ("FILE_UPLOAD_DETAIL_ID", "PATH", "FILE_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "INFO_CLIENT_ID") FROM stdin;
    public       postgres    false    256   S      8          0    34278    APP_CLIENT_HEADER_ACCESS 
   TABLE DATA               �   COPY public."APP_CLIENT_HEADER_ACCESS" ("HEADER_ACCESS_ID", "CLIENT_SITE_ID", "MENU_ID", "CLIENT_TEMPLATE_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    257   T      �           0    0 -   APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"', 12, false);
            public       postgres    false    188            9          0    34285    APP_CLIENT_MENU 
   TABLE DATA                 COPY public."APP_CLIENT_MENU" ("MENU_ID", "MENU_LEVEL", "REFERENCE", "TITLE", "URL", "REMARK", "TARGET", "IMAGE", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    258   ?T      �           0    0 "   APP_CLIENT_MENU_CLIENT_MENU_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"', 7, false);
            public       postgres    false    189            :          0    34292    APP_CLIENT_SITE 
   TABLE DATA                 COPY public."APP_CLIENT_SITE" ("CLIENT_SITE_ID", "CLIENT_SITE_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "CLIENT_LOGO", "CLIENT_LOGO_WIDTH", "CLIENT_LOGO_HEIGHT", "CLIENT_WALLPAPER") FROM stdin;
    public       postgres    false    259   	U      �           0    0    APP_CLIENT_SITE_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."APP_CLIENT_SITE_ID_seq"', 5, false);
            public       postgres    false    190            �           0    0 *   APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"', 12, false);
            public       postgres    false    191            �           0    0 7   APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"', 50, false);
            public       postgres    false    192            ;          0    34299    APP_CLIENT_USER 
   TABLE DATA               T  COPY public."APP_CLIENT_USER" ("USER_ID", "USERNAME", "EMAIL", "FIRST_NAME", "LAST_NAME", "PASSWORD", "COUNTER", "STATUS", "REMARK", "CHANGE_PASSWORD", "FUNCTION_ACCESS", "INQUIRY_ACCESS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PHONE", "PHOTO", "CLIENT_SITE_ID") FROM stdin;
    public       postgres    false    260   $V      �           0    0 "   APP_CLIENT_USER_CLIENT_USER_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."APP_CLIENT_USER_CLIENT_USER_ID_seq"', 4, false);
            public       postgres    false    193            <          0    34306    APP_CLIENT_USER_GROUP 
   TABLE DATA               �   COPY public."APP_CLIENT_USER_GROUP" ("GROUP_ID", "GROUP_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    261   2W      �           0    0 .   APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"', 4, false);
            public       postgres    false    194            =          0    34313    APP_FILE_MANAGER 
   TABLE DATA               �   COPY public."APP_FILE_MANAGER" ("FILE_MANAGER_ID", "NAME", "SIZE", "EXTENSION", "PATH", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "TITLE", "TYPE") FROM stdin;
    public       postgres    false    262   {W      >          0    34320    APP_FUNCTION_ACCESS 
   TABLE DATA               �   COPY public."APP_FUNCTION_ACCESS" ("ID", "NAME", "READ_PRIV", "EDIT_PRIV", "DELETE_PRIV", "ADD_PRIV", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "MENU_ID", "IS_DELETE") FROM stdin;
    public       postgres    false    263   eX      �           0    0    APP_FUNCTION_ACCESS_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."APP_FUNCTION_ACCESS_ID_seq"', 1548, false);
            public       postgres    false    195            ?          0    34331    APP_LOG 
   TABLE DATA               n   COPY public."APP_LOG" ("LOG_ID", "CREATE_TIME", "ACTIVITY", "IP", "DETAIL", "USERNAME", "METHOD") FROM stdin;
    public       postgres    false    264   [      @          0    34338    APP_LOG_CLIENT 
   TABLE DATA               �   COPY public."APP_LOG_CLIENT" ("LOG_ID", "CREATE_TIME", "ACTIVITY", "IP", "DETAIL", "USERNAME", "CLIENT_SITE_NAME", "METHOD") FROM stdin;
    public       postgres    false    265   #[      �           0    0     APP_LOG_CLIENT_LOG_CLIENT_ID_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"', 5085, false);
            public       postgres    false    196            �           0    0    APP_LOG_LOG_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."APP_LOG_LOG_ID_seq"', 27295, false);
            public       postgres    false    197            A          0    34345    APP_MENU 
   TABLE DATA                 COPY public."APP_MENU" ("MENU_ID", "MENU_LEVEL", "REFERENCE", "TITLE", "URL", "REMARK", "TARGET", "IMAGE", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    266   @[      �           0    0    APP_MENU_MENU_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."APP_MENU_MENU_ID_seq"', 160, false);
            public       postgres    false    198            B          0    34352 	   APP_ROUTE 
   TABLE DATA               �   COPY public."APP_ROUTE" ("ROUTE_ID", "SLUG", "CONTROLLER", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    267   �_      �           0    0    APP_ROUTE_ROUTE_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."APP_ROUTE_ROUTE_ID_seq"', 1, false);
            public       postgres    false    199            C          0    34359    APP_SETTING 
   TABLE DATA               V   COPY public."APP_SETTING" ("SETTING_ID", "SETTING_NAME", "SETTING_VALUE") FROM stdin;
    public       postgres    false    268   `      �           0    0    APP_SETTING_SETTING_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."APP_SETTING_SETTING_ID_seq"', 10, true);
            public       postgres    false    200            �           0    0 *   APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"', 69, false);
            public       postgres    false    201            D          0    34366    APP_USER 
   TABLE DATA               ;  COPY public."APP_USER" ("USER_ID", "USERNAME", "EMAIL", "FIRST_NAME", "LAST_NAME", "PASSWORD", "COUNTER", "STATUS", "REMARK", "CHANGE_PASSWORD", "FUNCTION_ACCESS", "INQUIRY_ACCESS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PHONE", "PHOTO") FROM stdin;
    public       postgres    false    269   �`      E          0    34373    APP_USER_GROUP 
   TABLE DATA               �   COPY public."APP_USER_GROUP" ("GROUP_ID", "GROUP_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PHONE", "PHOTO") FROM stdin;
    public       postgres    false    270   �a      �           0    0    APP_USER_GROUP_GROUP_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."APP_USER_GROUP_GROUP_ID_seq"', 7, false);
            public       postgres    false    202            �           0    0    APP_USER_USER_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."APP_USER_USER_ID_seq"', 9, false);
            public       postgres    false    203            �           0    0 %   CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"', 9, false);
            public       postgres    false    204            y          0    34867    ELEMENT_CONNECTION 
   TABLE DATA               A  COPY public."ELEMENT_CONNECTION" ("ID", "NAME", "DATA", "PRODUCT_ID", "INTERVENTION_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "ELEMENT_TIMELOG_ID", "ELEMENT_QUALITY_ID", "ELEMENT_FIELDS", "ELEMENT_JS", "ELEMENT_R1", "ELEMENT_R2", "ELEMENT_R3", "ELEMENT_R4") FROM stdin;
    public       postgres    false    322   &b      �           0    0    FILE_MANAGER_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."FILE_MANAGER_ID_seq"', 12, false);
            public       postgres    false    205            G          0    34386    FORM_ENTRY_FIELD 
   TABLE DATA               7  COPY public."FORM_ENTRY_FIELD" ("ID", "SC", "IWO", "SPK", "VOY", "AREA", "SUPPLIER", "BUYER", "SELLER", "TRADER", "KONTRAK", "PRODUCT", "DATE_NOR", "TIME_NOR", "FWAL_BBLS", "FWAL_KL15", "FILE_ORDER", "FWAL_KLOBS", "REMARKS_NOR", "SELECT_PORT", "SHARING_FEE", "SL_GSV_BBLS", "SL_GSV_KL15", "DATE_BERTHED", "FWAL_LONGTON", "PRODUCT_TYPE", "SELECT_CARGO", "SL_GSV_KLOBS", "TIME_BERTHED", "BL_START_DATE", "BL_START_TIME", "DATE_ACCEPTED", "DATE_CONTRACT", "PORT_TERMINAL", "SAMPLE_SOURCE", "SELECT_CLIENT", "SFAL_TOV_BBLS", "SFAL_TOV_KL15", "ST_NOMINATION", "TIME_ACCEPTED", "DATE_COMMENCED", "DATE_COMPLETED", "FWAL_METRICTON", "SELECT_PRODUCT", "SFAL_TOV_KLOBS", "SL_GSV_LONGTON", "TIME_COMMENCED", "TIME_COMPLETED", "DATE_ANCHORAGED", "REMARKS_BERTHED", "RN_LETTER_ISSUE", "RN_NOTICE_ISSUE", "TIME_ANCHORAGED", "BL_QUANTITY_BBLS", "BL_QUANTITY_KL15", "DATE_KEY_MEETING", "DATE_OF_ANALYSIS", "REMARKS_ACCEPTED", "SF_QUANTITY_BBLS", "SF_QUANTITY_KL15", "SFAL_TOV_LONGTON", "SL_GSV_METRICTON", "TIME_KEY_MEETING", "VEF_LOADING_BBLS", "BL_QUANTITY_KLOBS", "BO_MDO_ON_ARRIVAL", "BO_MFO_ON_ARRIVAL", "OBQ_QUANTITY_BBLS", "OBQ_QUANTITY_KL15", "REMARKS_COMMENCED", "REMARKS_COMPLETED", "SF_QUANTITY_KLOBS", "SL_VS_BOL_R1_BBLS", "SL_VS_BOL_R1_KL15", "ACTIVITIES_REMARKS", "DATE_LOISPKPOWONOA", "DATE_VESSEL_SAILED", "LOADING_START_DATE", "LOADING_START_TIME", "OBQ_QUANTITY_KLOBS", "REMARKS_ANCHORAGED", "RN_STATEMENT_ISSUE", "SFAL_TOV_METRICTON", "SL_VS_BOL_R1_KLOBS", "TIME_VESSEL_SAILED", "BL_QUANTITY_LONGTON", "BO_MDO_ON_DEPARTURE", "BO_MFO_ON_DEPARTURE", "CLIENT_SITE_ID_FORM", "DATE_HOSE_CONNECTED", "DATE_VESSEL_ARRIVED", "REMARKS_KEY_MEETING", "SELECT_INTERVENTION", "SF_QUANTITY_LONGTON", "TIME_HOSE_CONNECTED", "TIME_VESSEL_ARRIVED", "DISCHARGE_START_DATE", "DISCHARGE_START_TIME", "OBQ_QUANTITY_LONGTON", "SL_APPLIED_VEFL_BBLS", "SL_VS_BOL_R1_LONGTON", "BL_15_DERAJAT_CELCIUS", "BL_QUANTITY_METRICTON", "LOADING_COMPLETE_DATE", "LOADING_COMPLETE_TIME", "REMARKS_VESSEL_SAILED", "DATE_DOCUMENTS_ONBOARD", "DATE_LOADING_COMMENCED", "DATE_LOADING_COMPLETED", "DATE_SURVEYOR_ON_BOARD", "OBQ_QUANTITY_METRICTON", "REMARKS_HOSE_CONNECTED", "REMARKS_VESSEL_ARRIVED", "SF_QUANTITY_METRICTON", "SL_VS_BOL_R1_METRICTON", "TIME_DOCUMENTS_ONBOARD", "TIME_LOADING_COMMENCED", "TIME_LOADING_COMPLETED", "TIME_SURVEYOR_ON_BOARD", "DATE_SAMPLING_COMMENCED", "DATE_SAMPLING_COMPLETED", "DISCHARGE_COMPLETE_DATE", "DISCHARGE_COMPLETE_TIME", "SC_ON_ARRIVAL_DRAFT_AFT", "SC_ON_ARRIVAL_DRAFT_FWD", "TIME_SAMPLING_COMMENCED", "TIME_SAMPLING_COMPLETED", "DATE_CONNECTED_COMMENCED", "DATE_CONNECTED_COMPLETED", "SC_ON_ARRIVAL_DRAFT_LIST", "TIME_CONNECTED_COMMENCED", "TIME_CONNECTED_COMPLETED", "REMARKS_DOCUMENTS_ONBOARD", "REMARKS_LOADING_COMMENCED", "REMARKS_LOADING_COMPLETED", "REMARKS_SURVEYOR_ON_BOARD", "SC_ON_DEPARTURE_DRAFT_AFT", "SC_ON_DEPARTURE_DRAFT_FWD", "DATE_MEASUREMENT_COMMENCED", "DATE_MEASUREMENT_COMPLETED", "REMARKS_SAMPLING_COMMENCED", "REMARKS_SAMPLING_COMPLETED", "SC_ON_DEPARTURE_DRAFT_LIST", "SL_VEF_APPLIED_VS_BOL_BBLS", "SL_VEF_APPLIED_VS_BOL_KL15", "TIME_MEASUREMENT_COMMENCED", "TIME_MEASUREMENT_COMPLETED", "REMARKS_CONNECTED_COMMENCED", "REMARKS_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_KLOBS", "REMARKS_MEASUREMENT_COMMENCED", "REMARKS_MEASUREMENT_COMPLETED", "SL_VEF_APPLIED_VS_BOL_LONGTON", "SL_VEF_APPLIED_VS_BOL_METRICTON", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "SF_GSV_KLOBS", "SF_NSV_KLOBS", "SF_FREE_WATER_AL_BBLS", "SF_FREE_WATER_AL_KL15", "SF_SFAL_TOV_METRICTON", "SL_APPLIED_VEFL_KLOBS", "DATE_HOSE_DISCONNECTED", "SF_FREE_WATER_AL_KLOBS", "DATE_DISCHARGE_COMPLETED", "DATE_INPECTION_COMMENCED", "SF_FREE_WATER_AL_LONGTON", "TIME_DISCHARGE_COMMENCED", "TIME_DISCHARGE_COMPLETED", "TIME_INPECTION_COMMENCED", "DATE_INSPECTION_COMPLETED", "REMARKS_HOSE_DISCONNECTED", "SL_APPLIED_VEFL_METRICTON", "TIME_INSPECTION_COMPLETED", "SF_FREE_WATER_AL_METRICTON", "REMARKS_DISCHARGE_COMMENCED", "REMARKS_DISCHARGE_COMPLETED", "REMARKS_INPECTION_COMMENCED", "REMARKS_INSPECTION_COMPLETED", "DATE_HOSE_CONNECTED_COMMENCED", "DATE_HOSE_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_BBLS", "SL_VEF_APPLIED_VS_BOL_R1_KL15", "TIME_HOSE_CONNECTED_COMMENCED", "TIME_HOSE_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_KLOBS", "SF_SHORE_TANKS_NOMINATION_KLOBS", "DATE_CARGO_MEASUREMENT_COMMENCED", "DATE_CARGO_MEASUREMENT_COMPLETED", "REMARKS_HOSE_CONNECTED_COMMENCED", "REMARKS_HOSE_CONNECTED_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_LONGTON", "TIME_CARGO_MEASUREMENT_COMMENCED", "TIME_CARGO_MEASUREMENT_COMPLETED", "SL_VEF_APPLIED_VS_BOL_R1_METRICTON", "REMARKS_CARGO_MEASUREMENT_COMMENCED", "REMARKS_CARGO_MEASUREMENT_COMPLETED", "BL_FLOW_METER", "BL_SHORE_TANK", "BL_SHIP_TANK", "FSOQ", "SURVEYOR_IN_CHARGE", "RN_NOTICE_ISSUE_DESCRIPTION", "RN_LETTER_ISSUE_DESCRIPTION", "RN_STATEMENT_ISSUE_DESCRIPTION", "DATE_A_AWEIGH", "TIME_A_AWEIGH", "DATE_POB", "TIME_POB", "DATE_BERTHING", "TIME_BERTHING", "DATE_SBD_COMMENCED", "DATE_SBD_COMPLETED", "TIME_SBD_COMMENCED", "TIME_SBD_COMPLETED", "DATE_DISCHARGE_COMMENCED", "DATE_TANKS_INS_COMMENCED", "TIME_TANKS_INS_COMMENCED", "DATE_TANKS_INS_COMPLETED", "TIME_TANKS_INS_COMPLETED", "DATE_SVY_LEFT_VESSEL", "TIME_SVY_LEFT_VESSEL", "DATE_VESSEL_SAIL", "TIME_VESSEL_SAIL", "TIME_HOSE_DISCONNECTED", "BL_SFAL_KL15", "BL_SFAL_BBLS", "BL_SFAL_METRICTON", "BL_SFAL_LONGTON", "SF_SFAL_KLOBS", "SF_SFAL_KL15", "SF_SFAL_BBLS", "SF_SFAL_METRICTON", "SF_SFAL_LONGTON", "SFBD_TOV_KLOBS", "SFBD_TOV_KL15", "SFBD_TOV_BBLS", "SFBD_TOV_METRICTON", "SFBD_TOV_LONGTON", "SFBD_GSV_KLOBS", "SFBD_GSV_BBLS", "SFBD_GSV_METRICTON", "SFBD_GSV_LONGTON", "ROBQ_KLOBS", "ROBQ_KL15", "ROBQ_BBLS", "ROBQ_METRICTON", "ROBQ_LONGTON", "BL_SFAL_KLOBS", "SFBD_GSV_KL15", "SLVS_BOL_R1_KLOBS", "SLVS_BOL_R1_KL15", "SLVS_BOL_R1_BBLS", "SLVS_BOL_R1_LONGTON", "SLVS_BOL_R1_METRICTON", "SFAL_VS_SFBD_R2_KLOBS", "SFAL_VS_SFBD_R2_KL15", "SFAL_VS_SFBD_R2_BBLS", "SFAL_VS_SFBD_R2_LONGTON", "SFAL_VS_SFBD_R2_METRICTON", "SFBD_VS_SR_R3_KLOBS", "SFBD_VS_SR_R3_KL15", "SFBD_VS_SR_R3_BBLS", "SFBD_VS_SR_R3_LONGTON", "SFBD_VS_SR_R3_METRICTON", "SR_VS_BOL_R4_KLOBS", "SR_VS_BOL_R4_KL15", "SR_VS_BOL_R4_BBLS", "SR_VS_BOL_R4_LONGTON", "SR_VS_BOL_R4_METRICTON", "VESSEL", "ALERT_PUSH", "CLIENTS", "BL_GSV_KLOBS", "BL_GSV_KL15", "BL_GSV_BBLS", "BL_GSV_LONGTON", "BL_GSV_METRICTON", "BL_NSV_KLOBS", "BL_NSV_KL15", "BL_NSV_BBLS", "BL_NSV_LONGTON", "BL_NSV_METRICTON", "SF_GSV_KL15", "SF_GSV_BBLS", "SF_GSV_LONGTON", "SF_GSV_METRICTON", "SF_NSV_KL15", "SF_NSV_BBLS", "SF_NSV_LONGTON", "SF_NSV_METRICTON", "SF_SFAL_TOV_KLOBS", "SF_SFAL_TOV_KL15", "SF_SFAL_TOV_BBLS", "SF_SFAL_TOV_LONGTON", "SFAL_GSV_KLOBS", "SFAL_GSV_KL15", "SFAL_GSV_BBLS", "SFAL_GSV_LONGTON", "SFAL_GSV_METRICTON", "SFAL_NSV_KLOBS", "SFAL_NSV_KL15", "SFAL_NSV_BBLS", "SFAL_NSV_LONGTON", "SFAL_NSV_METRICTON", "VEFL_KLOBS", "VEFL_KL15", "VEFL_BBLS", "VEFL_LONGTON", "VEFL_METRICTON", "SL_APPLIED_VEFL_KL15", "SL_APPLIED_VEFL_LONGTON", "REMARKS_POB", "REMARKS_A_AWEIGH", "REMARKS_BERTHING", "REMARKS_SBD_COMMENCED", "REMARKS_SBD_COMPLETED", "REMARKS_TANKS_INS_COMMENCED", "REMARKS_TANKS_INS_COMPLETED", "REMARKS_SVY_LEFT_VESSEL", "REMARKS_VESSEL_SAIL", "SFAL_KLOBS", "SFAL_KL15", "SFAL_BBLS", "SFAL_LONGTON", "SFAL_METRICTON", "SF_SQ_KLOBS", "SF_SQ_KL15", "SF_SQ_BBLS", "SF_SQ_LONGTON", "SF_SQ_METRICTON", "FREE_WATER_KLOBS", "FREE_WATER_KL15", "FREE_WATER_BBLS", "FREE_WATER_LONGTON", "FREE_WATER_METRICTON", "SFBD_NSV_KLOBS", "SFBD_NSV_KL15", "SFBD_NSV_BBLS", "SFBD_NSV_LONGTON", "SFBD_NSV_METRICTON", "TIME_LOADING_BARGE_ARRIVED", "DATE_LOADING_BARGE_ARRIVED", "REMARKS_LOADING_BARGE_ARRIVED", "TIME_LOADING_NOR_TENDERED", "DATE_LOADING_NOR_TENDERED", "REMARKS_LOADING_NOR_TENDERED", "TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE", "DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE", "REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE", "TIME_LOADING_KEY_MEETING", "DATE_LOADING_KEY_MEETING", "REMARKS_LOADING_KEY_MEETING", "TIME_LOADING_NOR_ACCEPTED", "DATE_LOADING_NOR_ACCEPTED", "REMARKS_LOADING_NOR_ACCEPTED", "TIME_LOADING_VALVE_SEEALED", "DATE_LOADING_VALVE_SEEALED", "REMARKS_LOADING_VALVE_SEEALED", "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION", "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION", "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION", "TIME_LOADING_HOST_CONNECTED", "DATE_LOADING_HOST_CONNECTED", "REMARKS_LOADING_HOST_CONNECTED", "TIME_LOADING_LOADING_COMMENCED", "DATE_LOADING_LOADING_COMMENCED", "REMARKS_LOADING_LOADING_COMMENCED", "TIME_LOADING_LOADING_COMPLETED", "DATE_LOADING_LOADING_COMPLETED", "REMARKS_LOADING_LOADING_COMPLETED", "TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT", "DATE_LOADING_HOSE_ARMS_DISCONNECT", "REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT", "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL", "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL", "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL", "TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD", "DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD", "REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD", "TIME_DISCHARGE_BARGE_ARRIVED", "DATE_DISCHARGE_BARGE_ARRIVED", "REMARKS_DISCHARGE_BARGE_ARRIVED", "TIME_DISCHARGE_NOR_TENDERED", "DATE_DISCHARGE_NOR_TENDERED", "REMARKS_DISCHARGE_NOR_TENDERED", "TIME_DISCHARGE_KEY_MEETING", "DATE_DISCHARGE_KEY_MEETING", "REMARKS_DISCHARGE_KEY_MEETING", "TIME_DISCHARGE_NOR_ACCEPTED", "DATE_DISCHARGE_NOR_ACCEPTED", "REMARKS_DISCHARGE_NOR_ACCEPTED", "TIME_DISCHARGE_VALVE_SEEALED", "DATE_DISCHARGE_VALVE_SEEALED", "REMARKS_DISCHARGE_VALVE_SEEALED", "TIME_DISCHARGE_TANK_INSPECT_MEASURE", "DATE_DISCHARGE_TANK_INSPECT_MEASURE", "REMARKS_DISCHARGE_TANK_INSPECT_MEASURE", "TIME_VISUAL_INSPECTION_SAMPLING", "DATE_VISUAL_INSPECTION_SAMPLING", "REMARKS_VISUAL_INSPECTION_SAMPLING", "TIME_DISCHARGE_HOST_CONNECTED", "DATE_DISCHARGE_HOST_CONNECTED", "REMARKS_DISCHARGE_HOST_CONNECTED", "TIME_DISCHARGE_BUNKER_COMMENCED", "DATE_DISCHARGE_BUNKER_COMMENCED", "REMARKS_DISCHARGE_BUNKER_COMMENCED", "TIME_DISCHARGE_BUNKER_COMPLETED", "DATE_DISCHARGE_BUNKER_COMPLETED", "REMARKS_DISCHARGE_BUNKER_COMPLETED", "TIME_DATE_DISCHARGE_HOSE_DISCONNECT", "DATE_DISCHARGE_HOSE_DISCONNECT", "REMARKS_DATE_DISCHARGE_HOSE_DISCONNECT", "TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL", "DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL", "REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL", "TIME_DISCHARGE_VISUAL_INSPECTION_SAMPLING", "DATE_DISCHARGE_VISUAL_INSPECTION_SAMPLING", "REMARKS_DISCHARGE_VISUAL_INSPECTION_SAMPLING", "TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD", "DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD", "REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD", "TIME_DISCHARGE_BARGE_LEAVE_SHIP", "DATE_DISCHARGE_BARGE_LEAVE_SHIP", "REMARKS_DISCHARGE_BARGE_LEAVE_SHIP", "INITIAL_READOUT_KLOBS", "INITIAL_READOUT_KL15", "INITIAL_READOUT_METRIC_TONS", "FINAL_READOUT_KLOBS", "FINAL_READOUT_KL15", "FINAL_READOUT_METRIC_TONS", "DIFFERENCE_KLOBS", "DIFFERENCE_KL15", "DIFFERENCE_METRIC_TONS", "METER_FACTOR_KLOBS", "CORD_VOL_DELIVERED_KLOBS", "CORD_VOL_DELIVERED_KL15", "CORD_VOL_DELIVERED_METRIC_TONS", "DENSITY15DEG_KLOBS", "SUPPLY_LOSS_KLOBS", "SUPPLY_LOSS_KL15", "SUPPLY_LOSS_METRIC_TONS", "TIME_LOADING_TANK_INSPECT_MEASURE", "DATE_LOADING_TANK_INSPECT_MEASURE", "REMARKS_LOADING_TANK_INSPECT_MEASURE", "TIME_LOADING_TANK_INSPECT_METER_VERF", "DATE_LOADING_TANK_INSPECT_METER_VERF", "REMARKS_LOADING_TANK_INSPECT_METER_VERF", "TIME_LOADING_VISUAL_INSPEC_SAMPL", "DATE_LOADING_VISUAL_INSPEC_SAMPL", "REMARKS_LOADING_VISUAL_INSPEC_SAMPL", "TIME_LOADING_TANK_INSPECT_MEASR_FINAL", "DATE_LOADING_TANK_INSPECT_MEASR_FINAL", "REMARKS_LOADING_TANK_INSPECT_MEASR_FINAL", "TIME_LOADING_TANK_INSPECT_METER_FINAL", "DATE_LOADING_TANK_INSPECT_METER_FINAL", "REMARKS_LOADING_TANK_INSPECT_METER_FINAL", "TIME_LOADING_BARGE_LEAVE_DEPOT", "DATE_LOADING_BARGE_LEAVE_DEPOT", "REMARKS_LOADING_BARGE_LEAVE_DEPOT", "TIME_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE", "DATE_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE", "REMARKS_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE", "TIME_DISCHARGE_TANK_INSPECT_METER_VERF", "DATE_DISCHARGE_TANK_INSPECT_METER_VERF", "REMARKS_DISCHARGE_TANK_INSPECT_METER_VERF", "TIME_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT", "DATE_DISCHARGE_HOSE_ARMS_DISCONNECT", "REMARKS_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT", "TIME_DISCHARGE_VISUAL_INSPEC_SAMPL", "DATE_DISCHARGE_VISUAL_INSPEC_SAMPL", "REMARKS_DISCHARGE_VISUAL_INSPEC_SAMPL", "TIME_DISCHARGE_TANK_INSPECT_METER_FINAL", "DATE_DISCHARGE_TANK_INSPECT_METER_FINAL", "REMARKS_DISCHARGE_TANK_INSPECT_METER_FINAL", "BARGE_BEFORE_LOADING_KLOBS", "BARGE_BEFORE_LOADING_KL15", "BARGE_BEFORE_LOADING_METRIC_TONS", "BARGE_AFTER_LOADING_KLOBS", "BARGE_AFTER_LOADING_KL15", "BARGE_AFTER_LOADING_METRIC_TONS", "BARGE_LOADED_KLOBS", "BARGE_LOADED_KL15", "BARGE_LOADED_METRIC_TONS", "BARGE_BEFORE_DISCHARGE_KLOBS", "BARGE_BEFORE_DISCHARGE_KL15", "BARGE_BEFORE_DISCHARGE_METRIC_TONS", "BARGE_AFTER_DISCHARGE_KLOBS", "BARGE_AFTER_DISCHARGE_KL15", "BARGE_AFTER_DISCHARGE_METRIC_TONS", "BARGE_DISCHARGE_KLOBS", "BARGE_DISCHARGE_KL15", "BARGE_DISCHARGE_METRIC_TONS", "BARGE_BEFORE_RECEIVE_KLOBS", "BARGE_BEFORE_RECEIVE_KL15", "BARGE_BEFORE_RECEIVE_METRIC_TONS", "BARGE_AFTER_RECEIVE_KLOBS", "BARGE_AFTER_RECEIVE_KL15", "BARGE_AFTER_RECEIVE_METRIC_TONS", "BARGE_RECEIVE_KLOBS", "BARGE_RECEIVE_KL15", "BARGE_RECEIVE_METRIC_TONS", "LOADING_LOSS_R1_KLOBS", "LOADING_LOSS_R1_KL15", "LOADING_LOSS_R1_METRIC_TONS", "TRANSPORTATION_LOSS_R2_KLOBS", "TRANSPORTATION_LOSS_R2_KL15", "TRANSPORTATION_LOSS_R2_METRIC_TONS", "DISCHARGE_LOSS_R3_KLOBS", "DISCHARGE_LOSS_R3_KL15", "DISCHARGE_LOSS_R3_METRIC_TONS", "SUPPLY_LOSS_R4_KLOBS", "SUPPLY_LOSS_R4_KL15", "SUPPLY_LOSS_R4_METRIC_TONS", "SF_QUANTITY_METRICTON	", "SF_SHORE_RECEIVED_KLOBS", "SF_SHORE_RECEIVED_KL15", "SF_SHORE_RECEIVED_BBLS", "SF_SHORE_RECEIVED_LONGTON", "SF_SHORE_RECEIVED_METRICTON", "SF_STU", "SF_DENSITY_15C", "SFAL_VS_SF_KLOBS", "SFAL_VS_SF_KL15", "SFAL_VS_SF_BBLS", "SFAL_VS_SF_LONGTON", "SFAL_VS_SF_METRICTON", "SFBD_VS_SR_KLOBS", "SFBD_VS_SR_KL15", "SFBD_VS_SR_BBLS", "SFBD_VS_SR_LONGTON", "SFBD_VS_SR_METRICTON", "SR_VS_BOL_KLOBS", "SR_VS_BOL_KL15", "SR_VS_BOL_BBLS", "SR_VS_BOL_LONGTON", "SR_VS_BOL_METRICTON", "TYPE_LOCATION") FROM stdin;
    public       postgres    false    272    k      �           0    0    FORM_ENTRY_FIELD_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."FORM_ENTRY_FIELD_ID_seq"', 59, true);
            public       postgres    false    206            �           0    0    FORM_ENTRY_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."FORM_ENTRY_ID_seq"', 7, false);
            public       postgres    false    207            I          0    34398    HEADER_INFO_CLIENT 
   TABLE DATA                 COPY public."HEADER_INFO_CLIENT" ("ID", "INTERVENTION_ID", "PRINCIPLE", "CONTRACT_ID", "PO", "RETAIL_REFERENCE", "PRODUCT_DETAIL", "FILE_ORDER", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "LOCATION_ID") FROM stdin;
    public       postgres    false    274   �y      �           0    0    HEADER_INFO_CLIENT_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."HEADER_INFO_CLIENT_ID_seq"', 5, false);
            public       postgres    false    208            K          0    34420    INFO_CLIENT 
   TABLE DATA               %  COPY public."INFO_CLIENT" ("ID_INFO", "VESSEL", "BARGE", "PORT", "DATE_LOADING_BARGE", "DATE_LOADING_CLIENT", "DEF_TERMINAL", "DEF_BARGE", "DEF_SHIP", "DELIV_ORDER_KL", "DELIV_ORDER_KL15", "OBQ_KL", "OBQ_KL15", "BAR_FIG_AFTERLOAD_KL", "BAR_FIG_AFTERLOAD_KL15", "BAR_FIG_BFDC_KL", "BAR_FIG_BFDC_KL15", "BAR_FIG_AFDC_KL", "BAR_FIG_AFDC_KL15", "SHIP_REC_KL", "SHIP_REC_KL15", "REMARKS", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "CLIENT_SITE_ID", "CLIENT_SITE_NAME", "HEADER_INFO_CLIENT_ID") FROM stdin;
    public       postgres    false    276   hz      L          0    34442    KOMPONEN_HTML 
   TABLE DATA               �   COPY public."KOMPONEN_HTML" ("ID", "NAME", "DATA", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    277   $�      �           0    0    KOMPONEN_HTML_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."KOMPONEN_HTML_ID_seq"', 37, true);
            public       postgres    false    210            M          0    34451    KOMPONEN_JSON 
   TABLE DATA               �   COPY public."KOMPONEN_JSON" ("ID", "NAME", "DATA", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    278   *�      �           0    0    KOMPONEN_JSON_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."KOMPONEN_JSON_ID_seq"', 5, false);
            public       postgres    false    211            N          0    34458 	   MAP_POINT 
   TABLE DATA               �   COPY public."MAP_POINT" ("ID", "NAME", "LATITUDE", "LONGITUDE", "TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "ICON_ID", "SITE_ID", "CABANG_ID") FROM stdin;
    public       postgres    false    279   ��      �           0    0    MAP_POINT_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."MAP_POINT_ID_seq"', 13, false);
            public       postgres    false    212            x          0    34855    MASTER_AREA 
   TABLE DATA               �   COPY public."MASTER_AREA" ("AREA_ID", "AREA_NAME", "AREA_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    321   �      O          0    34465    MASTER_BARGE 
   TABLE DATA               �   COPY public."MASTER_BARGE" ("BARGE_ID", "BARGE_NAME", "BARGE_TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "CLIENT_SITE_NAME") FROM stdin;
    public       postgres    false    280   �      �           0    0    MASTER_BARGE_BARGE_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."MASTER_BARGE_BARGE_ID_seq"', 13, false);
            public       postgres    false    213            P          0    34472 
   MASTER_BBM 
   TABLE DATA               �   COPY public."MASTER_BBM" ("BBM_ID", "BBM_NAME", "BBM_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    281   ��      �           0    0    MASTER_BBM_BBM_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_BBM_BBM_ID_seq"', 2, false);
            public       postgres    false    214            Q          0    34479    MASTER_CABANG 
   TABLE DATA               �   COPY public."MASTER_CABANG" ("CABANG_ID", "BRANCH_NAME", "BRANCH_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "ADDRESS") FROM stdin;
    public       postgres    false    282   �      �           0    0    MASTER_CABANG_CABANG_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."MASTER_CABANG_CABANG_ID_seq"', 4, false);
            public       postgres    false    215            w          0    34848    MASTER_CLIENT 
   TABLE DATA               �   COPY public."MASTER_CLIENT" ("CLIENT_ID", "CLIENT_NAME", "CLIENT_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    320   N�      R          0    34486    MASTER_CONTRACT 
   TABLE DATA               �   COPY public."MASTER_CONTRACT" ("ID", "CONTRACT", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    283   ��      �           0    0    MASTER_CONTRACT_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MASTER_CONTRACT_ID_seq"', 5, false);
            public       postgres    false    216            S          0    34493 	   MASTER_CV 
   TABLE DATA               <  COPY public."MASTER_CV" ("ID", "NAMA", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "POSISI", "CONTACT_1", "CONTACT_2", "ADDRESS", "BIRTHDATE", "PLACE_BIRTHDATE", "GENDER", "REGION", "PHOTO_FILE", "EMAIL", "TYPE_LOCATION", "ID_SBU", "ID_CABANG") FROM stdin;
    public       postgres    false    284   5�      T          0    34500    MASTER_CV_CERTIFICATE 
   TABLE DATA               �   COPY public."MASTER_CV_CERTIFICATE" ("ID", "ID_CV", "CERTIFICATE_NAME", "CERITIFICATE_EXPIRED", "CERITIFICATE_FROM", "CERITIFICATE_FILE") FROM stdin;
    public       postgres    false    285   �      �           0    0    MASTER_CV_CERTIFICATE_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."MASTER_CV_CERTIFICATE_ID_seq"', 15, false);
            public       postgres    false    217            U          0    34507    MASTER_CV_EDUCATION 
   TABLE DATA               \   COPY public."MASTER_CV_EDUCATION" ("ID", "ID_CV", "ID_REF_EDUCATION", "SCHOOL") FROM stdin;
    public       postgres    false    286   ��      �           0    0    MASTER_CV_EDUCATION_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."MASTER_CV_EDUCATION_ID_seq"', 102, false);
            public       postgres    false    218            V          0    34511    MASTER_CV_EXPERIENCE 
   TABLE DATA               ]   COPY public."MASTER_CV_EXPERIENCE" ("ID", "ID_CV", "ID_REF_EXPERIENCE", "LEVEL") FROM stdin;
    public       postgres    false    287   ��      �           0    0    MASTER_CV_EXPERIENCE_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."MASTER_CV_EXPERIENCE_ID_seq"', 81, false);
            public       postgres    false    219            W          0    34515    MASTER_CV_HISTORY_OF_WORK 
   TABLE DATA               ~   COPY public."MASTER_CV_HISTORY_OF_WORK" ("ID", "COMPANY_NAME", "FROM", "END", "POSITION", "DESCRIPTION", "ID_CV") FROM stdin;
    public       postgres    false    288   �      �           0    0     MASTER_CV_HISTORY_OF_WORK_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."MASTER_CV_HISTORY_OF_WORK_ID_seq"', 70, false);
            public       postgres    false    220            �           0    0    MASTER_CV_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MASTER_CV_ID_seq"', 2, true);
            public       postgres    false    221            X          0    34522    MASTER_CV_REGION 
   TABLE DATA               L   COPY public."MASTER_CV_REGION" ("ID", "ID_REF_REGION", "ID_CV") FROM stdin;
    public       postgres    false    289   ��      �           0    0    MASTER_CV_REGION_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."MASTER_CV_REGION_ID_seq"', 80, false);
            public       postgres    false    222            Y          0    34526    MASTER_ICON_MARKER 
   TABLE DATA               �   COPY public."MASTER_ICON_MARKER" ("ID", "NAMA", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    290   �      �           0    0    MASTER_ICON_MARKER_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."MASTER_ICON_MARKER_ID_seq"', 8, false);
            public       postgres    false    223            Z          0    34533    MASTER_INTERVENTION 
   TABLE DATA               �   COPY public."MASTER_INTERVENTION" ("ID", "INTERVENTION_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "FILE_SOURCE") FROM stdin;
    public       postgres    false    291   ��      �           0    0    MASTER_INTERVENTION_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."MASTER_INTERVENTION_ID_seq"', 25, false);
            public       postgres    false    224            [          0    34540    MASTER_LOCATION 
   TABLE DATA               �   COPY public."MASTER_LOCATION" ("ID", "LOCATION_NAME", "LOCATION_DESCRIPTION", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    292   O�      �           0    0    MASTER_LOCATION_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MASTER_LOCATION_ID_seq"', 5, false);
            public       postgres    false    225            \          0    34547    MASTER_PERSONIL 
   TABLE DATA               �   COPY public."MASTER_PERSONIL" ("ID", "POSISI", "NAMA", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME") FROM stdin;
    public       postgres    false    293   ��      �           0    0    MASTER_PERSONIL_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MASTER_PERSONIL_ID_seq"', 3, false);
            public       postgres    false    226            ]          0    34554    MASTER_PORT 
   TABLE DATA               �   COPY public."MASTER_PORT" ("PORT_ID", "PORT_NAME", "PORT_TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "CLIENT_SITE_NAME") FROM stdin;
    public       postgres    false    294   ��      �           0    0    MASTER_PORT_PORT_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."MASTER_PORT_PORT_ID_seq"', 12, true);
            public       postgres    false    227            ^          0    34561    MASTER_PRODUCT 
   TABLE DATA                  COPY public."MASTER_PRODUCT" ("PRODUCT_ID", "PRODUCT_LEVEL", "PRODUCT_REFERENCE", "PRODUCT_NAME", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "INTERVENTION_REFERENCE") FROM stdin;
    public       postgres    false    295   y�      �           0    0    MASTER_PRODUCT_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_PRODUCT_ID_seq"', 21, true);
            public       postgres    false    228            _          0    34568 
   MASTER_SBU 
   TABLE DATA               w   COPY public."MASTER_SBU" ("ID", "NAMA_SBU", "CREATED_DATE", "UPDATE_DATE", "SBU_DESCRIPTION", "IS_DELETE") FROM stdin;
    public       postgres    false    296   ;�      �           0    0    MASTER_SBU_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."MASTER_SBU_ID_seq"', 12, false);
            public       postgres    false    229            `          0    34572    MASTER_STDREF 
   TABLE DATA               �   COPY public."MASTER_STDREF" ("ID", "STD_REF", "UPLOAD_FILE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CONTENT_INFO") FROM stdin;
    public       postgres    false    297   ��      �           0    0    MASTER_STDREF_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."MASTER_STDREF_ID_seq"', 5, false);
            public       postgres    false    231            �           0    0    MASTER_STD_REF_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MASTER_STD_REF_ID_seq"', 1, false);
            public       postgres    false    230            a          0    34579    MASTER_TOOL 
   TABLE DATA               �   COPY public."MASTER_TOOL" ("ID", "JENIS", "NAMA", "JUMLAH", "UPLOAD_SERTIFIKAT", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "ID_SBU", "ID_CABANG", "KONDISI", "TGL_END_KALIBRASI", "TYPE_LOCATION") FROM stdin;
    public       postgres    false    298   ��      �           0    0    MASTER_TOOL_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."MASTER_TOOL_ID_seq"', 1, true);
            public       postgres    false    232            b          0    34586    MASTER_VESSEL 
   TABLE DATA               �   COPY public."MASTER_VESSEL" ("VESSEL_ID", "VESSEL_NAME", "VESSEL_TYPE", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID", "CLIENT_SITE_NAME") FROM stdin;
    public       postgres    false    299   ��      �           0    0    MASTER_VESSEL_VESSEL_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."MASTER_VESSEL_VESSEL_ID_seq"', 27, true);
            public       postgres    false    233            h          0    34659    REF_EDUCATION 
   TABLE DATA               O   COPY public."REF_EDUCATION" ("ID_REF_EDUCATION", "EDUCATION_TYPE") FROM stdin;
    public       postgres    false    305   ��      i          0    34662    REF_EXP 
   TABLE DATA               =   COPY public."REF_EXP" ("ID_REF_EXP", "EXP_TYPE") FROM stdin;
    public       postgres    false    306   �      �           0    0    REF_EXP_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."REF_EXP_ID_seq"', 5, false);
            public       postgres    false    240            j          0    34666    REF_POSITION 
   TABLE DATA               G   COPY public."REF_POSITION" ("ID_REF_POSITION", "POSITION") FROM stdin;
    public       postgres    false    307   `�      �           0    0    REF_POSITION_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."REF_POSITION_ID_seq"', 6, false);
            public       postgres    false    241            k          0    34670 
   REF_REGION 
   TABLE DATA               A   COPY public."REF_REGION" ("ID_REF_REGION", "REGION") FROM stdin;
    public       postgres    false    308   ��      �           0    0    REF_REGION_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."REF_REGION_ID_seq"', 32, false);
            public       postgres    false    242            l          0    34674    RUNNING_TEXT 
   TABLE DATA               �   COPY public."RUNNING_TEXT" ("RUNNING_TEXT_ID", "MESSAGE", "DISPLAY_START_TIME", "DISPLAY_STOP_TIME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "CLIENT_SITE_ID") FROM stdin;
    public       postgres    false    309   ��      �           0    0     RUNNING_TEXT_RUNNING_TEXT_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."RUNNING_TEXT_RUNNING_TEXT_ID_seq"', 87, false);
            public       postgres    false    243            n          0    34701    WA 
   TABLE DATA               D   COPY public."WA" ("ID", "CONTACT", "MESSAGE", "STATUS") FROM stdin;
    public       postgres    false    311   A�      �           0    0 	   WA_ID_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."WA_ID_seq"', 11, false);
            public       postgres    false    245            o          0    34709    WEBSITE_ARTICLE 
   TABLE DATA               �   COPY public."WEBSITE_ARTICLE" ("ARTICLE_ID", "ARTICLE_CATEGORY_ID", "TITLE", "CONTENT", "STATUS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    312   �      p          0    34716    WEBSITE_ARTICLE_CATEGORY 
   TABLE DATA               �   COPY public."WEBSITE_ARTICLE_CATEGORY" ("ARTICLE_CATEGORY_ID", "CATEGORY_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    313   ��      �           0    0    WEBSITE_ARTICLE_CATEGORY_ID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."WEBSITE_ARTICLE_CATEGORY_ID_seq"', 3, false);
            public       postgres    false    246            �           0    0    WEBSITE_ARTICLE_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."WEBSITE_ARTICLE_ID_seq"', 3, false);
            public       postgres    false    247            q          0    34723    WEBSITE_MENU 
   TABLE DATA                 COPY public."WEBSITE_MENU" ("MENU_ID", "MENU_LEVEL", "REFERENCE", "TITLE", "URL", "REMARK", "TARGET", "IMAGE", "WEIGHT", "SHOW", "HIERARCHY", "BASICHIERARCHY", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    314   ��      �           0    0    WEBSITE_MENU_MENU_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."WEBSITE_MENU_MENU_ID_seq"', 22, false);
            public       postgres    false    248            r          0    34730    WEBSITE_PAGE_STATIC 
   TABLE DATA               �   COPY public."WEBSITE_PAGE_STATIC" ("PAGE_STATIC_ID", "TITLE", "CONTENT", "STATUS", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "URL", "SEO_TITLE") FROM stdin;
    public       postgres    false    315    �      �           0    0    WEBSITE_PAGE_STATIC_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."WEBSITE_PAGE_STATIC_ID_seq"', 17, false);
            public       postgres    false    249            s          0    34738    WEBSITE_SLIDER 
   TABLE DATA               �   COPY public."WEBSITE_SLIDER" ("SLIDER_ID", "NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "STATUS") FROM stdin;
    public       postgres    false    316   ��      t          0    34745    WEBSITE_SLIDER_DETAIL 
   TABLE DATA               �   COPY public."WEBSITE_SLIDER_DETAIL" ("SLIDER_DETAIL_ID", "SLIDER_ID", "TITLE", "CONTENT", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER", "PATH", "FILE_NAME", "STATUS") FROM stdin;
    public       postgres    false    317   	�      �           0    0    WEBSITE_SLIDER_DETAIL_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."WEBSITE_SLIDER_DETAIL_ID_seq"', 18, false);
            public       postgres    false    250            �           0    0    WEBSITE_SLIDER_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."WEBSITE_SLIDER_ID_seq"', 4, false);
            public       postgres    false    251            u          0    34752    WEBSITE_TAG 
   TABLE DATA               �   COPY public."WEBSITE_TAG" ("TAG_ID", "TAG_NAME", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    318   ��      v          0    34759    WEBSITE_TAG_ARTICLE 
   TABLE DATA               �   COPY public."WEBSITE_TAG_ARTICLE" ("TAG_ARTICLE_ID", "ARTICLE_ID", "TAG_ID", "IS_DELETE", "CREATE_TIME", "CREATE_USER", "MODIFY_TIME", "MODIFY_USER", "DELETE_TIME", "DELETE_USER") FROM stdin;
    public       postgres    false    319   �      �           0    0    WEBSITE_TAG_ARTICLE_ID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."WEBSITE_TAG_ARTICLE_ID_seq"', 11, false);
            public       postgres    false    252            �           0    0    WEBSITE_TAG_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."WEBSITE_TAG_ID_seq"', 8, false);
            public       postgres    false    253            F          0    34380    daemons 
   TABLE DATA               2   COPY public.daemons ("Start", "Info") FROM stdin;
    public       postgres    false    271   J�      H          0    34394    gammu 
   TABLE DATA               *   COPY public.gammu ("Version") FROM stdin;
    public       postgres    false    273   g�      J          0    34405    inbox 
   TABLE DATA               �   COPY public.inbox ("UpdatedInDB", "ReceivingDateTime", "Text", "SenderNumber", "Coding", "UDH", "SMSCNumber", "Class", "TextDecoded", "ID", "RecipientID", "Processed") FROM stdin;
    public       postgres    false    275   ��      �           0    0    inbox_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."inbox_ID_seq"', 10, false);
            public       postgres    false    209            c          0    34593    outbox 
   TABLE DATA               F  COPY public.outbox ("UpdatedInDB", "InsertIntoDB", "SendingDateTime", "SendBefore", "SendAfter", "Text", "DestinationNumber", "Coding", "UDH", "Class", "TextDecoded", "ID", "MultiPart", "RelativeValidity", "SenderID", "SendingTimeOut", "DeliveryReport", "CreatorID", "Retries", "Priority", "Status", "StatusCode") FROM stdin;
    public       postgres    false    300   ��      �           0    0    outbox_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."outbox_ID_seq"', 106, false);
            public       postgres    false    234            d          0    34617    outbox_multipart 
   TABLE DATA               u   COPY public.outbox_multipart ("Text", "Coding", "UDH", "Class", "TextDecoded", "ID", "SequencePosition") FROM stdin;
    public       postgres    false    301   �      �           0    0    outbox_multipart_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."outbox_multipart_ID_seq"', 1, false);
            public       postgres    false    235            e          0    34627    pbk 
   TABLE DATA               @   COPY public.pbk ("ID", "GroupID", "Name", "Number") FROM stdin;
    public       postgres    false    302   ��      �           0    0 
   pbk_ID_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."pbk_ID_seq"', 1, false);
            public       postgres    false    237            f          0    34635 
   pbk_groups 
   TABLE DATA               2   COPY public.pbk_groups ("Name", "ID") FROM stdin;
    public       postgres    false    303   ��      �           0    0    pbk_groups_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."pbk_groups_ID_seq"', 1, false);
            public       postgres    false    236            �           0    0    pelni_info_id_info_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pelni_info_id_info_seq', 3, false);
            public       postgres    false    238            �           0    0    pelni_info_id_info_seq1    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pelni_info_id_info_seq1', 81, false);
            public       postgres    false    239            g          0    34642    phones 
   TABLE DATA               �   COPY public.phones ("ID", "UpdatedInDB", "InsertIntoDB", "TimeOut", "Send", "Receive", "IMEI", "NetCode", "NetName", "Client", "Battery", "Signal", "Sent", "Received") FROM stdin;
    public       postgres    false    304   ��      m          0    34681 	   sentitems 
   TABLE DATA               %  COPY public.sentitems ("UpdatedInDB", "InsertIntoDB", "SendingDateTime", "DeliveryDateTime", "Text", "DestinationNumber", "Coding", "UDH", "SMSCNumber", "Class", "TextDecoded", "ID", "SenderID", "SequencePosition", "Status", "StatusError", "TPMR", "RelativeValidity", "CreatorID") FROM stdin;
    public       postgres    false    310   ��      �           0    0    sentitems_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."sentitems_ID_seq"', 1, false);
            public       postgres    false    244            Y
           2606    34767 &   ALERT_SUBSCRIBER ALERT_SUBSCRIBER_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."ALERT_SUBSCRIBER"
    ADD CONSTRAINT "ALERT_SUBSCRIBER_pkey" PRIMARY KEY ("ALERT_SUBSCRIBER_ID");
 T   ALTER TABLE ONLY public."ALERT_SUBSCRIBER" DROP CONSTRAINT "ALERT_SUBSCRIBER_pkey";
       public         postgres    false    254    254            [
           2606    34769 (   APP_CLIENT_ACCESS APP_CLIENT_ACCESS_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."APP_CLIENT_ACCESS"
    ADD CONSTRAINT "APP_CLIENT_ACCESS_pkey" PRIMARY KEY ("ID");
 V   ALTER TABLE ONLY public."APP_CLIENT_ACCESS" DROP CONSTRAINT "APP_CLIENT_ACCESS_pkey";
       public         postgres    false    255    255            ]
           2606    34771 @   APP_CLIENT_FORM_UPLOAD_DETAIL APP_CLIENT_FORM_UPLOAD_DETAIL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."APP_CLIENT_FORM_UPLOAD_DETAIL"
    ADD CONSTRAINT "APP_CLIENT_FORM_UPLOAD_DETAIL_pkey" PRIMARY KEY ("FILE_UPLOAD_DETAIL_ID");
 n   ALTER TABLE ONLY public."APP_CLIENT_FORM_UPLOAD_DETAIL" DROP CONSTRAINT "APP_CLIENT_FORM_UPLOAD_DETAIL_pkey";
       public         postgres    false    256    256            _
           2606    34773 6   APP_CLIENT_HEADER_ACCESS APP_CLIENT_HEADER_ACCESS_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."APP_CLIENT_HEADER_ACCESS"
    ADD CONSTRAINT "APP_CLIENT_HEADER_ACCESS_pkey" PRIMARY KEY ("HEADER_ACCESS_ID");
 d   ALTER TABLE ONLY public."APP_CLIENT_HEADER_ACCESS" DROP CONSTRAINT "APP_CLIENT_HEADER_ACCESS_pkey";
       public         postgres    false    257    257            a
           2606    34775 $   APP_CLIENT_MENU APP_CLIENT_MENU_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."APP_CLIENT_MENU"
    ADD CONSTRAINT "APP_CLIENT_MENU_pkey" PRIMARY KEY ("MENU_ID");
 R   ALTER TABLE ONLY public."APP_CLIENT_MENU" DROP CONSTRAINT "APP_CLIENT_MENU_pkey";
       public         postgres    false    258    258            c
           2606    34777 $   APP_CLIENT_SITE APP_CLIENT_SITE_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."APP_CLIENT_SITE"
    ADD CONSTRAINT "APP_CLIENT_SITE_pkey" PRIMARY KEY ("CLIENT_SITE_ID");
 R   ALTER TABLE ONLY public."APP_CLIENT_SITE" DROP CONSTRAINT "APP_CLIENT_SITE_pkey";
       public         postgres    false    259    259            g
           2606    34781 0   APP_CLIENT_USER_GROUP APP_CLIENT_USER_GROUP_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."APP_CLIENT_USER_GROUP"
    ADD CONSTRAINT "APP_CLIENT_USER_GROUP_pkey" PRIMARY KEY ("GROUP_ID");
 ^   ALTER TABLE ONLY public."APP_CLIENT_USER_GROUP" DROP CONSTRAINT "APP_CLIENT_USER_GROUP_pkey";
       public         postgres    false    261    261            e
           2606    34779 $   APP_CLIENT_USER APP_CLIENT_USER_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."APP_CLIENT_USER"
    ADD CONSTRAINT "APP_CLIENT_USER_pkey" PRIMARY KEY ("USER_ID");
 R   ALTER TABLE ONLY public."APP_CLIENT_USER" DROP CONSTRAINT "APP_CLIENT_USER_pkey";
       public         postgres    false    260    260            i
           2606    34783 &   APP_FILE_MANAGER APP_FILE_MANAGER_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."APP_FILE_MANAGER"
    ADD CONSTRAINT "APP_FILE_MANAGER_pkey" PRIMARY KEY ("FILE_MANAGER_ID");
 T   ALTER TABLE ONLY public."APP_FILE_MANAGER" DROP CONSTRAINT "APP_FILE_MANAGER_pkey";
       public         postgres    false    262    262            k
           2606    34785 ,   APP_FUNCTION_ACCESS APP_FUNCTION_ACCESS_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."APP_FUNCTION_ACCESS"
    ADD CONSTRAINT "APP_FUNCTION_ACCESS_pkey" PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public."APP_FUNCTION_ACCESS" DROP CONSTRAINT "APP_FUNCTION_ACCESS_pkey";
       public         postgres    false    263    263            o
           2606    34789 "   APP_LOG_CLIENT APP_LOG_CLIENT_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."APP_LOG_CLIENT"
    ADD CONSTRAINT "APP_LOG_CLIENT_pkey" PRIMARY KEY ("LOG_ID");
 P   ALTER TABLE ONLY public."APP_LOG_CLIENT" DROP CONSTRAINT "APP_LOG_CLIENT_pkey";
       public         postgres    false    265    265            m
           2606    34787    APP_LOG APP_LOG_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."APP_LOG"
    ADD CONSTRAINT "APP_LOG_pkey" PRIMARY KEY ("LOG_ID");
 B   ALTER TABLE ONLY public."APP_LOG" DROP CONSTRAINT "APP_LOG_pkey";
       public         postgres    false    264    264            q
           2606    34791    APP_MENU APP_MENU_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."APP_MENU"
    ADD CONSTRAINT "APP_MENU_pkey" PRIMARY KEY ("MENU_ID");
 D   ALTER TABLE ONLY public."APP_MENU" DROP CONSTRAINT "APP_MENU_pkey";
       public         postgres    false    266    266            s
           2606    34793    APP_ROUTE APP_ROUTE_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."APP_ROUTE"
    ADD CONSTRAINT "APP_ROUTE_pkey" PRIMARY KEY ("ROUTE_ID");
 F   ALTER TABLE ONLY public."APP_ROUTE" DROP CONSTRAINT "APP_ROUTE_pkey";
       public         postgres    false    267    267            {
           2606    34875 *   ELEMENT_CONNECTION ELEMENT_CONNECTION_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ELEMENT_CONNECTION"
    ADD CONSTRAINT "ELEMENT_CONNECTION_pkey" PRIMARY KEY ("ID");
 X   ALTER TABLE ONLY public."ELEMENT_CONNECTION" DROP CONSTRAINT "ELEMENT_CONNECTION_pkey";
       public         postgres    false    322    322            u
           2606    34878     KOMPONEN_HTML KOMPONEN_HTML_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."KOMPONEN_HTML"
    ADD CONSTRAINT "KOMPONEN_HTML_pkey" PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."KOMPONEN_HTML" DROP CONSTRAINT "KOMPONEN_HTML_pkey";
       public         postgres    false    277    277            y
           2606    34865    MASTER_AREA MASTER_AREA_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."MASTER_AREA"
    ADD CONSTRAINT "MASTER_AREA_pkey" PRIMARY KEY ("AREA_ID");
 J   ALTER TABLE ONLY public."MASTER_AREA" DROP CONSTRAINT "MASTER_AREA_pkey";
       public         postgres    false    321    321            w
           2606    34863     MASTER_CLIENT MASTER_CLIENT_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MASTER_CLIENT"
    ADD CONSTRAINT "MASTER_CLIENT_pkey" PRIMARY KEY ("CLIENT_ID");
 N   ALTER TABLE ONLY public."MASTER_CLIENT" DROP CONSTRAINT "MASTER_CLIENT_pkey";
       public         postgres    false    320    320            5   <   x�3�4�4�420��50�50R04�25�26��CA� ˒�M������	.�1z\\\ Ȼ&      6   �   x���A
�0EדS��Iۮ�h����E`L���7E$i�d�����B�>�<���
����߇P	��U��;YX��M��FA�ݺxJFA,�p"TE�LIj�����mv[�JW��&�*Qp.��?<o����`��F娸Q稆��yY��uS��1;���õO{5I$��a9���2;�!����.      7   �   x����
�0F��w�lu�	�E�Q��R(c�t�-���o� �S!r_���FS�7�L�X�� [���8R-��3��i� a5_'[:aւ	(d ��l���PC�唱�9�߼W0�cw�+�����u�}n։�j�*)�w2x`/���]�\T�����d,ؔT��{C}`��ʐO��$��us�.��J� � Bu��I/���`�q�o%L��      8   *   x���4�4�4���D\�@9ܲ���xd�8Mq���qqq �t�      9   �   x���O�  �~
�}5ס�ڥ���<o�5�t�ߟ6s�������Q��ء�`:�eRp�.V޽�r٣B&��C��!��IYlE9m������k9u�so������y�G���\�Z0)�� �oi	���Y�G��9	�o�+#WL�@�?����; �iŭ �q�6"V?��ٻ�-����c�Ӑ~�      :     x����n�0E��+�f�P�ڥ��R�(�(YD�py�����*VYefW�ՙ��Ft�����!#�5񐅔!e������SYk �s.+�[�Լ�᳖��r�Kс�}�ԥv�*	��<�|ߊ��v�n�ts���VV���0��1�1���{vob���?k?�v�8sy2���+�h�1�����?�,U}��G�q�L��'��eo�����O�aj߲����i��}�zkX͵�������?/г �E��zz��:��	���      ;   �   x����j�0 ��}���έt���A/Z�f�c҄�����0(�dc>I���q!��|�6�6;��b���l� Oo��U
�R�B"ueǃ�}	���z�M�N�|���7:�y�A��S��m��Ͼb�p��3)�6��7?`J�������SmxS��P�R�U�`P�Og�v�mlC�d����Ս�1��IU]k�.�ʵTr���"�\g�_̪v��y_gn������bV���(ݚ�      <   9   x�3�H����4���CC\F@�����̼D��Ɯ>~XeL8��s��J��qqq ��M      =   �   x����J1�ϓ�������x�E����Ӧ�aw���9�-����?�?�	b
�9H ��2�s;R��	���o�����<�D��B��:�P{�5�t����<���Bk��Ô�<\L�W*�#�.e��(��ak���^)��:ؼ��hg��<���Ҵ�1EJ�C�L#q��gld���ʭZ�_oVK�L� ��K�i�k�R_���P      >   �  x���Kn1D��a�oH^"'�Ƌ|`;@���r[��@��5ɮ���v������$������{�ʩ��+�4�6����ԖT'T�RQ^)I�=e-1y����zRJ(�=���}���������i�I�E:�P�Ez���Cm�8�q/W��U<�i����4]�sx�-ҙb[�!�U��T��&�*T��PA��B#�,4�U����U��1�U�z&d(�j�U���5X���g���ׄ�{x�H���{���58�*���yl����n�4*u��l��ţ���������Dq�R�j���y>�PM�e�n�49�C5ُ�N�,S�ݍv6?T���v!Ue�Z�i�v�i׻5�ۡ��wjfi{��h7m�C5H�o� ���˟�4m�C5���ݚi��j�϶S3M��n��v;T�i��q��uXX`�` �t�<c�BW�P�T
v���|���NA�� ��l ��|=���L��]@j&ߚ$��1l-Ԍ!�f�5c�Ԍ�k�f�5#��fttM��h��L�R3����	L�R31��f�(5�������)7��Qj�����`(���cԌ�ifԌ��G���`(��q̣Q3�	7j�aƨG�F��ȑ�	�ѩ�����0����qn�873��f�ک��87�;��L\��˧���w�$�      ?      x������ � �      @      x������ � �      A   �  x��WmO�8�l~�Ň�ƹ�@�ݕ�[NHt���NB���m-R'�8����qhJ,A</��{�3�dHd!��jM"A�\��
eIfD�"_$-Jn����+~VTks����( ����O��q2L�&��h��oN��$ ��\��~�wmc�q����!oUXY)zU��V(ȸ0?cgBks��3ğ�tL�o�>��P��p����H+�<�-¸b� \G�%��.�ut����\�˭,��ɌgXG�:F�E)�Bf��"��2A�G�&���$=12�����[We,l�ag�f�܈�����u�6�!�DI؋Y�ݻ@�k�ׂ���//q�C�!<k��@'n?Ø|�b%�P� �4Z0�1abgF�J�-]4�)��݅s'�̻d1_P?-���qoe)0� s\�E��:���h��Β����sk�52�
D�����JCn�p��(H2켋Bo��u��Z����S����}%�R�VڕVV�l��禎���S��(�*У���E3d�١		�0�T6���zIز%߅��������ϑ� f���B2�[G%��x��tSJW��e>{`q�N���3�/7Z�=��g5w�|�j]��դ N����"b��{ʤ�vq]Т�Π�H��a��Y@ߋp���E���Jo�we!�vh��=��Zsu$kxTeBх˱�&>a����
�Lxڋ��%�����3�Suc�-��gnd�C��w�pu��0�7����}Wi��#~)�jj^}V�RX��6r����Sw=G9�4E�=\R���d�)|�/$T{
L��	.~���߈�$iS�h�����e���2	>�7�/,)"�J�pb�q����+h���e:��hj{]-0���M~���+(|΂2x#�"��il��꺔a!�����t~q�n��!�漦� ��:�=����Y�U��ٜ��m�S�������M���ЦA���ކ}Z�+:b�P/����c*]�RlH}5g�hp���FBx�KRG��ľ���/�gY����r�)^��Ѐ�1/ڮJ�;�:Q���Q� ^bt����^ �����}q�k	%�n�TP��6HoNg9��Ɖ��N�o��l�^�la�6v[�~%�nz�p�qS�`�J��q�Q���O������I      B      x������ � �      C   �   x��ͻ�0�ṽ)�ht�� 	��Ť��M��@�嫝H\t}���c�$,�!�TȺ�K	�:�8�
�qT{��,�h�0�I	��՝�؝�����,�l�޸���ā��a�]/���О��w2X�O��z���������H	�X�τ��I|��
Z����K�U.��~Aa�      D     x����n�0���)�EI���Vz�v�Q�J��hV�U{�֡ި��v)�O6Y���0^d=ڽ��)�/��%d�C�~���G�yJ�$FY�*��2r!y�](�
� �* pr��j�-+8�א)MZ��(�1#�ޙ7�2�������hs���׭ԍ�j!wG����:�39A�Z���YqS���pU���aP�x��O8�|��K|�&��Z5l2e�U�(4(�ڮ��f�euO@��G�� �U�Vh���'5X���]�}��~�K��      E      x�3�LL����4���Ê�b���� �w�      y   �  x��[ko�H���Q>�eּA;;���#k�Bp�53�V���VE����Q��R'��-νu)�tU=�=ϲͲ}_���v;s���2�f�:�;���/����K�|1?<՟�Ǐ�����C�˧�����������o��|���vO_���?��/����w�;���tr�p�wbL'��\e�|e�]�˿_�(FЊ�e�Q��hG A�;ȱe�ZA#��"��`�ޒ�pV�\Y�\��]ܤ	t���
�ޤ[���bT�Y�ݥ؀r��� C��*�p�O	Q.�$�k7܁�i0���"�s�A�$���,��U�
$v�x��!�
��",�����Y�S�vo�׭��0.���6���%�}�.�e�e�ͱS`��-��&��$H��4�FN�@rb�f���еku�a�VC=�)��SV�l���VG[w(����c�Ҏ9e���.�p
�Na r
M|���4��(T��De#l7h[.*�xh`�Qrn���N��'�%�Q�i�R[{Μ��ʐ*m#���%m6��A�,g��DP`�c�Ns|�%	9RH��!	�`Ԧ�Nm%��C�O��4p��2'�ڤ�T$ە9\a+���4�զ�Qm�9�Q�MJN���z�߂p�r���@���u�x�-c�(J���&�ө,Y؇|D�����{�pn�"By�w�^5�� ��my�3�m��b�W�&Wy5��YR|�w� �E�>����4G_���!�#_�9��/D��F�U�G6�e��[��Q��`��gB�C���H7LX���4�����!��"C���y�Qj"���3��YY:���}�В㞐�T�ɧ��ʅt�� �f��B0�����i\f�H΃���㈅�Q��w�#�E��PPJ�3>U4&�C�tu����\d���P`� CO1�=�O�2O�Y���T��o� ���,	|Q�y�FO_<�>������r��)���=6W`]�9Z���:C\O�C��r���]�͏X��%���D(EK)�()�
�L�e:��r�w�{~]�W�?X�纖�i�j_C�jZU���7{���p��5||iڋ�s�>�R�z�����3�-��7���K�s���K}Rp�g�M�"g*�sA��9_��񞰫d9r��G�~�?
���WR�Md�#Ul�Y-��)�P�:�UF�PUT!?�L�]�����5)��]�Rr��q_�s��I_�Y�3������v'���-�hs���R�oq�XF��t	G�pt�H��tbͯ����� �(�u_k�E!_��T����mt	G��t�(h���DI��Pȃu���\ID@���8l���pp���,F��b$��Ō�0R ��(�G��8�7Ie6?/���A�ύ@�����8��X�'�<�7h1��oBrܓ�㑈4)# ��P��|2><j������(1`F��H�������)������e즎�Vz�5�ci�t�Ӫv�k�iz�n�n�6��1{y��}�شOP\�;E
~C���=1��L-�5��Ԛ��j���k~eXZ�ZUm¡�sT�Y���������β�U����,G�5�j��omð����a}E������������RobX���v�yS���5���W2���6k�2͝�w,��q��r�x�qنYە�CzO�Z�ת�kkxL�z:u,���z��4�j�i:1E8M�nm՚i�S��uW��֪]��-�����S�����1��a*�=��\2���Ah��Z��ڦ������:��}�:������w�~��'+*}BR#� ���^r\|;�����^cuʛ���쒞�/��վ&���NJh_�޻l�����xxlPX�xX��U�x��`�˿\���+Q�%+�^��w�@�7�E/w�E���.w��$�M���KM��$�LXX^GT�r�cd�Ӛ�I����5�嬳�]���U���M��J�t��v�>���i�{��[v�)	�����I��Dk�{�2�\f��2�%�]��8o�8o�8o�x�["�Ѣ
n����?!l�PeK���):�[v	���x@\����r��*���|��]'"��?��x�]LD�D Nbq�_��mE��������v�@���.2���6�t�j�Hg9��$3U�H*n$P�K�r;	��%���TB@a_	`���T�K >�oW,���Ç 3�jZ      G   �  x��\[S�~^�
�瀥V������LrR)�rm��v]\��?ݒfF���.�S���4Ӻ�z$������f�w���7;>�\G�!��KqͿl)љ��{Y9������量�g���>L9tSI��>ǳ,:n�5�"g�I�T�B;R������wc���*�srB��;�$���.��O.��r�?�l��.r�1Y������V�i̭ӱ��n&�e�O���G�zߜ�۸i�n[l�������b��׏|̳�c!������1���q?���x$u��׿�1�����r��L�,�x��S(��o������Oo�_�W?� ����)%<��5�IoŎ��fB��qvqs~}�����
҂�!�}!���m�x�	,�x�����>��_Ri
$(Lu�VЉ������낕�u���W�X��ȟ�W���D8C$$�#�K�#v�0
�xe-����)	 ��m5�`T�+�Xe�H@�@�W��cj��+�.C�9T$9 ��Ka�K�������J�qZJ�K�%��%�Q^9���;b���c����__"��e�e�Toq�nO��c�A|�MT������2E�>��}�;N
�")�R��QZAۀ�v���+݈2`&�j��4���ٯ�����?.�������g��>ίϖ���/����rqr9���:����g[g��W4���^^m�2�`G��ͳ��/��>��?����۟�^����yN��(V����Ë�gr��'9u�������yx�:�yrtp9���yhp���֫�� ��|���goY!4�<�K�8�Ğ\eT�]_����qXP�*KLٽ��'0Q�@*��0��H�8�|(,�1����F��$q��IT����'�<I(�����U6n����~���uC\+�IQŵ"`?)G�k�=t���"���YQ�^0�lu�)P�q�/�ǝU&L�X���B3Q�-�|?{syzqvs1j�����0TA�Y5�T��Ty�>�i��6�&���z!x��']+!��#�RF:$,0@�$z者h��qD���3n�&Te�B�0ƆmZ�2����,�Da�P�R�0f�o!��4Ø�p��1D�]fѾQ��7?�̊Xf�������C��z`SD�P
�4/�o,3�bJ�	��iu�Y�Q�M%��P+���W�LwG�9�0� aְ��X��C}ġw�� �|��m��Z�/�|���×Ub;T60	�7��̀&#�������X�ɂ��8S˧���X��VQ5L������;B�PG�ԁ��P�2D���*�L��L5Ee�(�@�q��A�si�,�
m���5 #5%7G�
�Mxy��+Y�(�4�j�[q-FN�"G�UF8Z 3��2�x��72�{�2���� E�e���(iZMz,qb�ϰ��8�u@�1�CD�Б��i��.3�U�!K���A����@�TwŇE����3d_��u���k�K�}0�x�t]@�O0�)�d�����~#�9�P���e��j(�z򘋧���%>�Jh����?�uq!T-�����y���7���筧�_���'r�C��:�6>k��i`��9P��oD�ǔ��pam���С��:��Ɔ��݄}�i�x ��XN�e��i q9��@���޸���c��#���������r����|�\dN#=��Hg�B=��8=�!��C`ǇE�����T��_���8��Gz1�&?����V\��u���kݰ�6'�Q�l�>Z�՟W��i����kxKiS6U��Q[Wo�,���lPS����l�'��4��7��'�:�S�*:@���*��UK�^���K��� �=f�s����n�	*�gUO��/�γ�S�4�ǜ�U�+�Siإ׈�R.*H���V�v�8O`���h��4<E�ۏ{��:k�uO4Pa.�%J�҂�4
%,��@�T���ric���Dʊ|E��.=k��s Ұ��T
Ak4����#�34ko�Wh�=Z�vT����Z;�*���GCH_Ң ��#)9�腋-�^%g9T\xd͠h<�IO��V�*B:��Y �?]� QH�U�A��Y;mI�^ymP���²f�/)}D�g�L�8Yi��E�E���{t>-����䌲�k��4�����G��z���~�-f�>q$P:L�zcݸ�ν��,����h5S��L�V�[,oZ�hmMg4�5�4��ՄX9D�LV�'�M�:3̌���n�zp�K�yY�Z���V�C�X��;�]�r��-^JK꒗�4cC��� �i�1Y�u#].�����m�k���H8K��hGJR_F1B�R�����]A�t.��=k�s��mP4�==���NrU�g+���h#H8Rg.���mh�'�.JG�I�N�м�c��b�o(��v�oX+���f#���� �GC5��� ��[a�4��s�Deu0f�4UC�Y�{:�#p��͊g24����۸��.Cnf��)�f���]��:��v͕�>�Ȭ�l.g�=�'���@��-��Fd{�jb���yj���M��b
z��G�T����]B j:Z؛�͗L"��2�$С�m��sPG�/k`+c����J�6�c3kG�}|֖B���-��ƾ[K�fG�8��Tp�{l-�=Q���=����C�8�)�]�ت�ӵ���a���#��R� f���T�q*�T� THȫ��¦0�v�]�B��V�k��ϙ��&���6n�`9T��Ko4b��z�FY�Q��:L)Iwz��c�xmOaHCki�V� 0�s@�JZ��d�H��+�B�T넧��5I���5XJ���XJ��w��+:���N�����T�S9-XK�v�J5��*�����,:�=d��7e�J�V��4��T�J?�����-���w�kxԬ£�-�ÏǇU�e�)A)���c��ߘ�+n��x�\�*<#�yy����t��㵂��p�|D��48Ě��ˠ#��
�z��M��]^nqj��vʫ�3��v6f$SU#�ZR���+N__��{������pw�i���"�f甤 �{��t17eW:����Ԩ���#E�;�*j�G�9�-*�F=M�Hr���KTX�{kx7VJ���Q�%w�y��[m}��T�'�&Ds��y����j*�1x�ِ��tT�v!yq�,#�\2��D�Nh��$V�vR��T%y�ئ�O�[Q���V�mn�/�%&B=RIJ� ��=6�oIד�5$n��v֥�59���k����R�֍h���|���8M,@��!3��<�x_�tۅ$���h��6�]/�:C���W)V�-�����󲬸�VU��4����x���C��q�8�Ͱ�g�6n�ZǨ׎�a����i�M��sO�k+�~x��� �N�����8Bgo�g��U,�l��'�=��q
!w?VT����q�WT����k�/���2y�|��
����G���~#T���x*U$��Mw�9jZd��I�����Hz�t�5�C��Y?���|ys�5�*��^����m�0��=th��u����.���2�mO�+��ؚ��B	���h�Mj�0ŝ/����1u�Pr-�߶V�H/��`��ܓ�/*=�=yb���;|<�[�;�ۘ�����u�Oڧ�C�of7޸�{������G��	r�F      I   �   x�3�4�L��+)JL.�����700��V2S�Q2bCca��YP���Z�����c�W��R������h��D%K� �h�&� �lH����E��y��%�iE���F����F�� �)��m4@�Ј�](�4'Dc�:.F��� �5P�      K   �  x��Y�r�}��b~`Y�}�+��ˤ�JT�ʮ�\��>�49"���J^���	�q���� qС�|��M�2����i�T�0���cJqH�0�`1����r6�X�8F�CʣY,�9��d���c]��@>�?Χ������<��W�t�<Ȑ'PA���9���i��Q����5�˅�ih�$�z��������t��tX���|�����v!n�pK��jX���"_�2|�W6�N�*�J��,eWxC�׷T	(w�4.Ӵ<S̹�4���Y� aE�W��c@�cJ���+yyf����Z]٬�
.!��|��O�e�V· �?���3y�@Nc,������rsSH�v���զ���c�G�b�ޖ�,�6��զ���M�o��N.�ٕ��s�z�gb_gWݞ�9��$T�A�R�߱aM�
_�1e�<��:]x|�ۀ�� <�O�;acR�/�*�t�g�[+L~���[���j\�L�Y�y���1����O�v�/o�'�k'+�Af:J~{��QU��':��~Wb�c���z��l�� �˯�t�(?�C�2����9���2��K�F��|����z�vѮ������2l.��*��3�(3�9�R�����nS
:�����x�{d�����)����&�Z���&<��_`Wj^Q�nL�x���8�����qo��4��H�>q|����L3�Wu�'������_8�1I6�$��|��A�S�e���K��2�8���H�)Z��f��̧�`�>XNW�뗘6���_��K���B�/Ϙg|���"r�J�e�G�CYb`��[�6��M�&L����ɅOI�����7,��xi�1I����bJ�m%)�5���䙮���o���m��C���7��_�5�I�gI�����ÒC�$?�v��eD����=ns�d�-�]��@��@�]��%J��g^��OA��$�2�%q�%�8ϥ����ƶ�Q�ÐB-Z)��)^k�N�&Ng����!�8�<��;r	\�Q�ҙ�ٜK|���.b��@6T�df	�C�&z0�8q�y�W����ւ�8sd^���M'��m*���e��4���l y��C��I���1H���xt���/�-#�xV�ѳ2�����vά`���B:O���ge�v��$�Ӂ��m��=�������Ѫ`�zd��z�xc��[wv��|� ~�떄늜�u�;6�_l�jJfQr�i��!�#�%@����)����~H��0��p��&l7O܇��[��(m��sH�z�㔆�V�{7�Z�צ�P��`��\�^A������P'˪"��x'�A��U��>�􀋠<[S��Ta��
��sB�^��;���Х�[�܏Ka��q�0{E��z�Plܐbh��|!a^/ILc�4"���2�LR�[��|dT�nٹ
m���.���d��)�pe!Z�B�pe?��%5��0�9��n%Oݕg���I ��W�q�&m
*��dA��ӈ0W�Z����P�Ө�c?]�0��ab���k,��֠Ҋf<%$v}��|�'�3��*;���g��7�)R�6?6��ڌH`Z`L	�Y���#7Ie�B��}���M�����Z��,��/���aD�_�0O�,��'�e�%��ޞ�!��\C��'!"58D�]g�rQg>wg�Wq��})
KeOH�((m�{�H�Z@K�w�Z�[zw�+xw��5T�x����,j�[�!��%�T=g˪|����@AB����6	�B/B;d�Q�k����0V)��.Q%�	A}��(_3߇3��Ǵ).��
��-����!Nj���:4XQ��dW��BEaD\��Ұ書�� �+ߣ�v���+�>��__�� P�!ظ�k�����,o\H��~>�s��Hq�cZ��-���ju:��Z?2!�:¾�+m�k6������uy-�W�ۢ��������������j\4����Ԅ��2��4��e�I/?���i�O�����M����?�(�<�i�B�����秗�������������_�$����y�����V����`^�������-2A��N:Ǵ6����|������O�����<�ڡ<I~���������< �yH��ʀY�iݽZ�nY	�������1�Gp�r��E�[��H�G��H�������u��'N~����      L      x��}�rܶ���>O���g�\��-�r�qْ��:V��x���-g�#�"�$G�j��>�>��	� 	�@3��Mb�F��ï�����������n�x�]fn{� ���G���y�-B�I������k�ʮ�}�����q��e��&��9���/󫟤o�z�<������O'��`���r���� ��������?�?�B6��Pǟ�^x��?D�������eAv���A��fN}�ﶛ��l]f�Az����q��'�۠�2�������g4f_J1��0^���p�� �-!h��8���R䍟%��O(� � �b �o��,��_!��_t�LBS&�����S���E?�����"����:���~�Ɂs�[�)���N�o�O�_�OEE��1Z-2/�\�"?����|D?lڒ�OX��C�T�.�,����������\c����~ F���E���O/s�~�D+hwP�������νG��xG��_N{�*H��^r������Ӣ=�e�-ô-��v٧}�mf,����_���:o�#�s��ͫ�}��,��k/[�Ja �S.hm�e��K�8�5������)��/�����a�>��9��F�t�����8M�h�Yy�����_1���j�.C/M< @^!�_X��<��Y�gX�ļ,����� G i p���t Kt�?�'d�O�b��k
�WH�hU�s��w�^;�p��/{����I��/{���/{���$�#�^I�%	4{�$�DЅ�vRB
��(����K�{�HY,-�����+��)��>���A�`[<��l����m`�C��[]����!�z�w�o!�j�(�DRgK����R�z���{�������J��+��U��J�E���ҥ��/�{u�=V�2�{������1&���d���~�Z(,���d�LH����(�zW\-W�����fq5yZ:�0)����}�c��T���ֹ����:�;���i��ϳE��+��������猜�s���H�)���Z����X^gN)�ǚN�E�g%�a����cM?�O���PKo�S��:v�}z�b~�\r�, $��$r�%����, k'���A� �Dj`M���g*|��� �xT�q�K�;�%�nT�3�Z���Z��?��['X!	~�G����:���?�As��/w���K7k��d���&NP�3}N��Β��س�e���PO�����P�U�92^|���a���>@��y��R������k6s��>1�]��#���'�O�Y�W��B��Tx�������X�������0�)ԫ��Wp7S)�DPp����U�Ք�C�_����jn��T�;���N��S�o&�}!d�St{r~�s�'�-}獇�K���ʧ���=�����[]]��tE���z�M�?��R���)�7>����Gԕ��^�/���\���5v����`訮����+��;�.�/Ƶ*�/ŵ*F\�kmL�7w�'G$����@�H��7�F.콠�~;hD�v�}��xA�L��s�r���<WʵH�3��H@��A��K��x.�����H��om:Ȟ�XPWf)ؕYJ�we��e����+M)rz�W^pL����<�UV$-#~M����D��L�(Yp�J�,>c%
7�����6o0*:䔇6��aO
E=)��l���g���L��-qך�&]<,�i�� ��k@:��\�s^<D��������I
~oҫ�$��`�Tdd�|��; �O�B�&�"�$I�r��h�/�%��>5����H@xŐ�a����Bq�X�ft� �hw�C��LB�&��+yK�t��	�3�-�p��i�M�=4=�m��y��Q˹���9�~�~�eVXf�f�g�eQX�J�:]<c�uaJ��j���֐L�����]�7��{��rʔ�ĭܦ�y�N�vޖ.���#��ao�m�.��M�Y����/��D����I"�iC�K��"weGN}��S������n<d�X(&K�*�ve��jW�R�v�������Z��(��]��oҚ��Zt�F�[��������h4ҵ2d������ u�ld�C������$k� �΁�"���D		j`XP�Z�B�2��P4���ko~<x��3o����(>�&�ϳ	��,?�ұM����jϯ��J+�c>����P�Y�8`��,,�O���:08���ՙo�01&B�h��Ǡ	�~&�[�w�z������(�fG�x��(�hK�:��i�D�:5��W熝�V0�=�#B0H��( �VFP�bx¡R��c����;y���%($E(!)BI)B8�~w�N:�*�7B��8[r�j�����9!?Ϯ}��>=��i��~h�Xd�C�<),����'���nG^\EϜ�_g��������K4�$���;=?��y��������E����Gi5���9�;_'Ѝ?'�_���A�3�ye���Sgt�n�({��w�'C/]�s0�$l��,ر���$���I��$��� ��h ��3��XeVZ��3���x�|U ���e�T���o�#�9�8/Egn��W��q���c��uW�a���O�[/ܢO�OՑ嵿���������+�����b"�7���6�6��e_�^��(E�q~��a-N����!��񙋎��?��]���Wi������s��[}�&K�Q�;����q�ge���W�_���;�Wf�r�뉦`�m-U��d�(,�T�`�Y��Ǌ�*>^vVp�3�@�9P�l!%�ڥp!�~S��.�0_�*�����0t��L��_̨�ckO�8��e�?a����v؜�1\r�p��n(G8�\��m$?8�hS����
��ެ�������Pba���|�P�Ua\M^p���`&pPٰ��*^�eg�?=��Վ>;�7�LP��f��
�ҳ+x�;�7�LhT�p-$���j9�ew���X�8�2+�ߞ���E���Ք�xJFo�Y��.�9�!EC�ͣ��!�υ<�7G$>��e������a�0't�P��9+p�P�Q�I����@�1�0UH3��3;�?�^H���Sz��CƋfW�M��)�!�&˾�~�����a�G���4�y9-9�V&v�^���+̫��� �ԯ� :"�K>�҈^y�w��������~<X���<�C�c	��&X~�4�bp�'n��C�����,XK<L�k��Q���+4H�8��g'�`\'��ǃz�:`��YC�\d���9J��%�K��3�Ec�!���������>~��X{��;ڄ�O� ��u�+&^�BcN5�b���%ώN�_/������E�	�?lF����m��D�5 �Қ��Ãi���������\�^P��0�L��E� v��B17�ޠ����G�)�����_���ß�q�^�1	������+?��[�������џ*�����OJ��5_* ����B��aҬ㕥�O��@�����2[S�a"�����Qv8��Ŀ�o���KTc��R��������[t�K�M���B_�ap�'w�%�a��ח�;;�t�]�ڡ�����?@d�F+Tm<�VA��H�V�#���������K��e��(�/t�#y� ��dE�nR4����\�E�o�����\!��:[�q�Z,ݖfgZ�:+�Q<^뵟���]�-�ڗf\B�:ˊ��p�����}:ƿ�z��s9�x�r^�/���f�?(R�J���H�{� �p�x0�3��C�����"��V��39�e�e.i7����ºCp.����v�	8*�?K瑟í��sC$nª�H�q����_�����y�	��5��n��B=:r^���9:�:+S
����3�L�E�_�3���>��=>�Zh�fv��h	AI�dCV*��Y�@v.d�Α���Q�ln��Qz�^���x�������R�XurI +N.	j�ɅM\i��ék    9T�X�J�S�2���+򛳂��e5)�ο��PI��\#a�r��c=i��y�T��"}��i��O��e|�C�m��V(_ڼ����㳥�>��4���Ii+dl,�E�֫�jb�:Mto*�"���R�-��h�h��Il}U�?�$%�b��T��&B*,�	������o� �~���9o�9zy.�q��8�X/��<���\,�s���-$+zʙ�{�����f(e�f(ej8��ȁa'�r�MS<K�D�͈�$V��W���
��o �UW�E"UJ^�OQ�+پ>OӼ��֦yUHl$hN�ZH��y��|��G��|u�j�W7�|��I��K,�[��S�6�y`�[W���uUP���)��t�>aW�`��mܾ�۷q�6n���K��g�j���ӆ�女��{��|2�?��^m�Q{}�gY
(�����9�^xa���_=��{�|#��O��y�}�9OR)J����yI���9 U����
��@Nn,3B���X
]�ton�L-6��r!Z"?�}s��U�/����*�W����CA>=	^�f<C�OпG����rt�[�s'��̰����s*�z����|$�]V��V)V�����K�Z𳷽��̏HHOA)��ap9�*Tt�/�OG4d؏S.��gc��E�e~�h;�2�H�>�ؙ����- �'^������_��ǖ��M�&���1�t���P�}y�bO�PNe�
����k��?y�C�ݴ\��(�K^(��QVd �m��}({���On��t&������fQ9Y!��+�U b �t��1/ʢ�h^��j�U�B����],�9����+�k�����+��6�{o?����#k$�����j9*xH�#�>zͺ��F�̥�Μ6���:~�����?
5���?��U������~.K���p5_j���O�x}��+�.w���!b�]L�^��iୋ��-t:��,��h(�E��G�~0nKE?0�J<n�W�Y}���s4oM��}�`�����8C��˟;3��΂�y�uIh���:��ʅ�>A�'���r�aߠ��}��oP=��7(�oP��E|��V�g�Yi�>X�+�`����<Xiz�2�J�S�U��SDק?M�Fc_h�q��%b`�a��(3�f�=���Lo��^C~8&���_��s[agj_Y^�U�qgb��QaAz��9�q%w����g�qw��0�x���IS�q��Wc���m��Ǿ��vgљ�Y�uN�]rߑ�����{���oH��k�. A��8t��������-�K�t��q�ġ.�?�!ee�d��*
�MrS�������	5c���>id�L�}2G�i#�t���9�������҃��9��j��$��<�O�ޟM����ߑ�� >�'�i-���G�0O��~��!ÿ&Q���|W��$�=·m��&�M��W�>�������-P1;��i���-:5�ݓ3!ƀpi�-rV��oT���;Xi��M>.0%����O��6�j	t^�Z$XV�R"`N�R"lF�R���R�f���9��o�����F
�+V�^�fs���l*�vƢ[@m#+�eR�f$��(4A�7/A�D�;�2oOJ���ꙍ{���+.8[B��8��@Љ���NSVF��[�4|��Z	���I��nu��з�Z$$~�ou�Dp��s��qp5\\�;�-p��:e�M��Y�N�kp��i�7u���QN�VΜ���*����*���nJTĔ�w[S������[,G�y�ֽT,sG�^���/��!p�w��Ba���)ej��؅x?ʸN�O���U�sNuVa
���3*�
�����1�U;�VM�U�����Z	QYd�����j!Cy��B�wP�����|M�����A���RBL�jX�B�RՔ`m����<V>Z���@��
y����;0ۊ��glۊ��"���Zb+�ڊ��*��5���Ɵ����1�C����<���������ߨH�+�;���=��`g���[�[��\qb��y�D�,�M���(���rl�isc�p�^u3g��a"X��'A΅����T\a��M�$*�u��xN�6E~sK;_V�R�g  ���k$�Ĥ\#xr?-_�Sj�!V�}������ߨ!�/����e:��rw����(��li:me��8dl,��5���x�	h՚��N�[���U��W�H[v>Hb��$�-��(����` ��9|y.�}`CLl��0�9�N��;�a'��N�.<��ӗs˙F�<Kr��9�~Ibe�`x�ʽ��JU��y���:@q$��  �����Q�;,sE�#�W��y5૛W�Z��rʛ/��ߦ��AѼ�խ+�Zݺ*��v�m���g��o���%��ː%�[re"�����	r��ˬ�1ky���oy�����b�~K�7��o�����e�3�z:+��C�r|�������SJ�D�(�N�s�%�k �o=�����H+���[���~�c��"{w��?2��c��]��{��q���9Й�rL�UZ
tg�]F�����S� ����Y_[��]`)et���2�K,%�\*�����"j���"�E�25Ԍ������?�r�C��
\����
[�(����*�ʑ����+����CO�׌	�Cp
tN�uПC�9��x�����OS?t~�s�'�-}獇�	Κq�#��_W�gB �1(��	�����l� ���Oo���drF���A[�uݎ-_���-_~/����>�\���/‗�f�S�!����K��,I
��f9��sZ��rN-��rN-��rNTMM(���P��N{�ki��v�����Zک���[��S�0�vji����vj
+��N-���N-���N!�ѽ�Z����ki��v*M���Zک��
Cy�T�T��SK8��SK8���]�[©%��o�p:�{K8�,�N-ᔲm�[�%�Z©%����SK8�L��p��!�.���w[t�L��o�}���~��ɝs��������~��eň(d��J��RLo%79�1UA��^����w�r���,�B�=�o�K�LoZP4�&E�.Үl0_i[tq�vщ[��L�vh���7���m�p�:�`uV{�{��~�]ò���[�/%̸�Tu�{��)ǜ���^���s9b���ؓ�:�<p>���$�	o�D��q�*	�g�C:C�:ċ=�.(�����Q�ԗt�\�,����H��_�c�E)v���y^��b�u/:c�Sk�9�yY�L:GN1ea�>��|���u����T@P:�)��X҅ה���b�u���0�I� x���4DȖj{Z�
�3����!I�x��n�Z,��K�3�;hb�m`Umm��z�c�h=��X�j�/Q�I�&_�2�B��+�A���AW>(
��/�]ԅ��������l.���u�v���4]n�l�D�aɕ�voLy`\�9�匡o$I!֨[R���[R%]������0�!�z0��k��4��F����i����l�ɺr�
�%1��}�"6��i�&��`!W~�5.���*Wމ�-A�vU����5O�-pt/��+{y"�L?"I��z��x��Xe�ө6k�!E�NU��%D���2t��v�	�*=�j�4o���c��H�m���������DΫ�-�R��n�ǳ{麧|;=rNqJp��	�P~��i����4g�@�ۣ��-���9�Sj���E�����r+a���;�	e5�JC(�m*�R_��	��FoR%�nЄ��w�7{Ҩ��*�v�ݽ����W�o��l<��Hf>��H���~[W���E�uN��?_��.�x?X��yŜe��#�S\���2n�,�Ӂ_|Z�ȁo���C]ȯ�x��x����k?��҇?e���,SӠ��~�$��;C�ݪ:$��p���)�}Bѯ�Dt�+	LM2x���tBuj���TΐZ�q>|���Q�3)��=L,˞0--њ�])5�W1ư}*�0*��zJ)����яVQ�-�81ƈ]tXop@Xf{�1۫���dj�`)�۱�2�F�    �e�3J�߂0Μ��9�s"�s?ɮ�Y�B�n�1��Ø�²�J�b;L�W_�=V�|t�\�1�c+�e>�ˎ߱N7�Th�E)�C��a��a�)�ʇmr�ߡ�4.�V��LKYn�y.Zcl:���
���S:�������ک�����\�1���I�M���4xD�S8�~�ҍ_&2�V΅.8���[S9�Qc�\wYI3�ޣ�鰻Ѐ1�,`�Κ���)џB�A SND��	ڽ�������<�B� �be���J��7HLc��[�t/�a�<�J��'�l�a��8�v�"�^(��5�t.c�!�tX�w���=0������N�Q�t�[h��6�=^�Z�ؘ�y��n:�-4`Ls�on峛�ް�=��vsO��O�+:�9�~�"dc�ʹ��|��43�?�\�!.Y��g~s4p-�M�ͅ���q�Aܶ�N������S��ڹ�:^nx��)+�ܿ+Yn��"2�������fn9Њ��m�E
8Ń�J/�흋�YŘ1��^Z<)��42�8+��S/Piڒ4��c�^�4�*��e�:Ap�Rɷ%?c���ԫ��n��4��ӆ��gI�9�	�*�%i[��%i[��&�Z��%i[��%iK"i��P�v\�1#Sm�PQ#��U����P���Bw�J�Bu�O��=J�1�b��	�0bګ�AoS��w�.`����n�i@(ۖ��-P�h�R�fb�W��̛�#��0��`q��	3+�ӄ����4�Y/��e(��4��jvb>S
3p�SM��C`�8٤�����b����ԓ�l��u���΍�[$��2��M�3p�sh������f_��o�ð9ϡ�Ɵ4�iߙeq�)��v�?fN!��h���':{����=��g�Z����Y��n�Z����Y�����|�6+���Ǫ߄6����<NX��^�om>�}���|����M�݅��c��Xm>V�����6�Aƶ�X-���c��I�6+G�NS6i����c�����X�-��cU��Ӱ���c��aK���j������X�~����c��X�ѴO�4퟽�&b�%v��*���#jWA�W?xm�UQg������@��u�:c�[@KS!�N��Nv%�7+E	�~u��o�Ʃ�-  ��۽0�uΧ�	 ��J�n�s�2�3������7Nk'� I�%;c.�V@K݈��� ��쉉\\.�tC@R�\��%�? �k瓇F�#o��	�Z7^��Xt7�i^K���ֺ�3c��i����
8�aÞ��m2�$��E����6X�^��";�`��m�Ć�#V�Y�V�wf����hpI�����*�Z���XϺ�.V$�r��]X��������s��,�uk��F�[�z.	A�.7~�g�ݦY��s>&^���� ��+.4q��&nVjBD��.a�u�k�@sęPkWɄ�.���J���R��S4��X#�ī�nMV�h9�B�9�;�.u@��r��i�!��<W�*���W\7��5G�?�@��#�6�T>As�A&!���4:C;��͍C�|��I��}ez���NQ�t�Ig"O�a���iX�윧AXo� �5�QT�:7G�!cc��ԍ���u��s��^�a�385ԍ�o����1�e�i�V�V�}0b��)bp���zӲH��b"r��!�b���4r�Hp Ep��12��WE�h���@$W�'��r�h��s1��]�%δ�.~%��Ab\	��.�C��v	�r�Hp�Dxѽ11ƋSC�P��E�@g�ݻ�!=��[?���{�0���|�S�l|Ɉ��G0�a��Fs�)n���q#L�"f6�a�憃LF�2��`�~q$͏vc%U���n��0n���f�=7|=��x�Ɉ#��7J���.ŉ��\?ΔǊ�+��h������ύ�����~8M^�ȱ��c�:-Üv	G�*��	��GF�Hs$�坊%���~���'@�i~�b�f�n<�dĕ�M��u�b�f�n ��Ǘ��M��K��]�2�;�<qf��_k�Y뤺C�f35�4��fԺY���O�Ɯ	�/����M�gL�a�g�:�G�7vRǟ]$ەo��R�Xș�Af����$��30L̤�09�_@�^Q�cĎ.:�78 �Z@�Y��b�y%#�
,�ʴ(*c�$�FA�C� e`ȓ� '��&#���]���ы>���!�(4.j�t<��c�<��c�x��ʟ|��O:���1�Ȑq��=N�*��_���k$�"��+'<��:�/>t�7-,f~���~>̀��И�����U"9����f:�-0X�)���2�7�G4�lf	A!���zԯ�+B�1f�L���7XQ<��A�j��0��1մ�W��#p�4���ݰ�{L5ݦ��x�δ<ƹ�t�$�Q2����j�<��Q
& G ʗ fo[�u4"@���,�$)�^9(^��LDø��8��񽏿�lC����-���u��-���-�P�� �3t�*xj�!Ҿ ���}�f��c,��E�1d�rXl����\]������0�zl����ѡ'��_���E)�C��F��'���� ӎI�6b�N� �h�>���/\>�tཤ�8������d�sp�^~_���Df��VZvp�A�`[=�da"x@+�Ɩ���"�4�(����o2��H�|�>��j�j�~��Ǽ�yT7-��� R�L�h���M��'���ݒ����?��|-ϰP|s4p-�M�ͅ���%��aK��nڭ.!�%��)���@+�W���)P�U�E��s�7K��1��K�'�w�8��Lm��%(�Ƙ�W'��o������|!�;����	���*0��9�o����U���+*�E���Ng�>砍S�	���.Dq�f�8��ޯ�N���8ͻ;���y㥙��1���`���O�a讑p�R�qp�SԀA`(�i�L`�UUgL$Y�����IWg��.+�>��\ٌ/WN�f0-��I��?y��|�}Om�oՅ[,�Myƙ}@;�v��q~;ax�ns�~��M���'�:Xz��G�;������&�  �=��-qH%t�nT24B�������j�A d�?ʙ?�Y�0�����:�ho�t.�����' P�	�	���Y=��97�g�7�@X�O�� tn"�^�b�)��|��D�%�/j�6��1���g����A��ryD���/�_C�5V�80M���+�� s�Hád۰�S��9���l~ J����1�z���,��
bcF\Y�x�6�1/WD_�g���k�)�~z��3M[z`��)�zz�?����@Y�e�酉oc��5���O��=�`��x��?�=��"$(�Soe����f��q�3��Z1�7�&Y:�����E*W�@����1b��vA/ A�E� �S�@P���\4���*!aJxU�B��0|�: �����Ƨ���b�CZ+��¢��C��7�\��Oi�*jv4p�y� w�tǰ�4^MAä��ף�'5j��M|O��P�cڄd�c�/9~3zD8Q'�����j�et8��nv/)��U����iWV�KD�Ef�Kj�;+�g^Z���L�^[OܮE��[���W���x8�P7EBDɰ�&���߾��W����ī�2�x�6:~��m3[�l�qm�A��
f����`�o�I�`FVLRj�E!�32��a�с��Ւ����D{�l�$#|q����ǭ��"�y��=O|�O�PM��g^�^u�FE��n���J�|0nڎ����m���ܜ�=�.
�]��!&�����s����,ǁy3�����A�A1���OًZ1�5���d)���zL5-�����%M���$��a+��j�M=iͦ�\H|���G��M�3p�sh������4��	��as�C;�?i�Ӿ3[����G�+��~��)�c��4�r�i_Y~g�*8D-�o�~����c���:8���*`���:8F�h����%QH� �  ��IBI��Z8y�4%!6+���:�2?�����Y����g| �k�ت)"LK�$�jJo�[4���CsYD<�slєo�hJ��M��&���)���$=Gpw*�L��0.�:j�ˊ���:����LK&��AW�������f�x��	�(j�8���T���d+.M����%3�A�2d��i>F4��$�5x��w�8����$pӊo��ŷ����h6H`�F���6DU5b����*�c���s���j;@<[�k������c��V�	��J������q�AM���4~�P�[Ջ	�h��zT�U�z�)�[�k�R���5�SҪz85M��e*�CDMm���c)Z^��GOA!��Zj���e���1�b��A݅'=�
�<��������N&�ܲ�pBlu8�P��9����pC��:�yc�?���<L�~lo��������=B�a$����_����ê      M   �  x��]m��D���
+H��zw�)ɮ�!A$�ˁFޙ�]k��`{������z�1w3JKH$��U՝v=���O������jW���Z�y�I��'����&�̳������)K���Hf����Y#�\n�].V�l ��
���_�?"�JI���s{=z�_���hfR����"�̙]�L��a3F�kI��	�oܽ{���?��)zk��)`��k�� ����ؽ���{�STw���߹�[X0�/�����}q0�y�ʳ�M�0��������Dy�l!�y��q�`LU�#r�_�L���|g���������dk`��W8&�o�쾌��ʝ��Cr�F�A��@�vzE`Јf���AYV�̆������'/Mmb���ي�ƨl�B���#][�'U��	JM�|�A�PZj�@��yX-����Ձ�ı��� C{��#Xs��bzP��b�e��4���q�!�@4&bCk���탉뇌�]��@�(�PTrj�U\��&�:S��G)���Fz������p� #8cA����$z�C\��Է��ϥ���Tz� S���>���/?��=����zA��cnL e��ƹ��w�7�ߏI�W���.������vK����U��In�\����xjO7�e����p!(ן\�!0˷���>$�CI֓�ɋa8�9����&��������)�Q�x�� �tXPc;�.o(n�^eg�\��^�z��r��F�7�r�
�dE��scW%�$JzLf��aؔ��%��Q���DR�2��Lz2nl��G!��s)=W��ŪY؈��0���_�B�|�s��V_4�<^UW��V=�pWs�:���2`�/�W5,�6��Q�OK�H���Ϗdo]�7&l���|��(��yN��s���e�J�x�@��a;����7W�JK�+������e�9-�N��,0X/7����c��	;O����$�<���@���S�y
;Oa�)�<��;Oa�)�<;O_Ψ��>�7�j��\�7�nڥ�|8JZ`s$�.=�lE/��	炃ƚM���8a; ��sA�\����O��6.��yv[&ÅPFT�@�F��B�?�?b��0R/HV`N{dQV��4�g����YA�}�8=��11TG�QR{I���d��G�7��v��V�+���6Y����A"'�J���y^Ω����z�U��o�Z<N���f�Wg��[n̲g��C��T��L:<�(����$S����N���iY��D@3��u�v�`����?lgh\<�V���"	6��ha'֋Z�c�ee�M������-s����oU��67��g�t�O�y�$�(��wqEh�Z�xx�����h�$9�IF�M��NN�<���S�Q)�J0��L:�e5�r�(��t�i�L'��(��'�řH?�q&�Q'��R8��\j>ID��o�i�l�l��	7P��L���[�V��8|H�}�����[���lq��F���<V��ad�R(:65���$���ݕa$j�xH ��LP!�l��x�樰�m�Y)�Pi�(=%Uf�$;%֝II�"'�x�|�V=&ﴞ ��O,�x~-�$��YU��BL�ۤ˹mߗ̺S7	D/.�A���T�p����j�Q7�@����Z�m|$2h���0ǳ��J��xq�;���u�h?��_�+�)0[�hj|Xz?b��V�A��rYE�&$��b��0P����T�N��[/��Gk���\�����Kv �ƃew��}R�<��mMAw�LmJ�C�L�"��x(҈װ��Q��I��`j��!�?!L1Z!�T<ek* l۽���O6����R�W��	sdv�$����z�̂"�'yZ���w�4�D$���D%�<��6"�ϺyB�_4Od��D4O����I�3Y�M�/�|󸪊8+���h#��&*B�hT^w��U'���-F�Ε��t�����!f��b��A�"&�p�{����KL��=W�zL�)=&TQ�$]��X��L��
4Q�*E�qm+�˺k�\Â���LpD+�c�:	�k8):�T̉�G6�Y�3y����j�$��Ҽ<�+�W��2��"�ɟ���y�h�l��/8Th�7mi�G%{�-/��kR��_�kς�/�W�E��k{���º�
���U�\����;��xՂiq��q�"�@�U���*��0��Sxu�Px}x���K�:$Ub�%I�xz١-�Z1)M� =��W1���y�Cal�}��r�C"֎}�zFp�ĳ������!sQ��1i�y��V����U�/�f�P�6>2�d�<��*+��G�c�	�O�yj�O��O�.>~g;:~5��(5��w�
���Z9Mh��y-�iQ���:�y=zzW����
]<<��v\<��*;Dk�r�iO��A��~j_'F�#��S�,�LK�|��jM����G��O�r���ZOk���l���$�rv�ד� �_�U$���a�*Vh(Xu���;S�}���!��W2��nݟGE�E5�{i�NZGl���Go�y������f�������$�^sCzzh÷�÷�/���W�O�2��p��d>4��J��#��&��<��.����T|:b��d>4�?��̟5�
M�g��{�~w�>���;�g��;�Í2Y�g�b�I�膢E&צn���:;��֬y��O/����ܝ1_�G��[	����$ί����c�c���V�v���
Nu��H���AE�+<�T��[�뭺?�"-�����-��`�i&���ܴa��9R��Τ�T�k��X[9��pLi�z�s&��z$�	s�vyL8�O�S�pK9�L��o�W��0�ђ������e�P �Z�o�|�h�H8��lӏ�Ɋ�ɼ�u��(���	ENz*���gb�Fi�B�e�ᗏ�>}���_      N     x����N1�g�S��Ob;kG� 1u�pBUK[][�����ȑ%����l��M� %�V�2I͈�����[���x�ϰ~�ipX��f{lǶ���֘e/^3ir�b"��c:���(-�
�m��s���*��,���C���FR�_	�1�Vm��hɫZ�R��U뮉)吧���y��#x�N�nW;�KQ5UG�`Y�E]�3��-�^�m���P���V�FY<{���܂x�����o0R��0�K�~]
Şk�����G��u���{�      x   �   x�m��N�@���SDtK�߷�X��	�5{�ǲl���s�(����h�+-�A�H���@�$��,�D2�}��>�ס~�-=m����ޯ~���uӋ�[��<�W8��y���f�8�my�5�3����k�RVPi!�A��!�@QfQDA%;�+���_�N�q.�l3ht\�qlL(���{�m��'ؠ]"��в@a9�c�F�!4;�+�TG���OM�� �]�      O   �   x����
�0E�ӯ�/����FB}�q3�Pcۡ�-ҿ��R$B���=$��+��**]QSM��� ����&�[\�ұE!��g�_�N�Q����W���sb4g���m}��o��<�O���*W�:ˏ�Z�;UA\
0�p��.��kn�B����ֻ�\W�ag��H���.�(�� �       P   *   x�3���I,�)�s/JLIUp��/��4���CF\1z\\\ �
�      Q   2  x����J�@���)����4R
�^�h[B.�.1�Ð�R|{'*�=x���@?f�;�
�����u��� @	�"
���)(�������T^9�F�,��{9m�Ub�u_5��\)��������� �KaSl��,�v�찤 �~�#6&�#叼њ4��՝�X�VGs����F��A�H_6��D_�N�L��Â��M���mml_��tbm��}����2�{��)�چݒ����e? J���T
��O��V�L��`��+�_���q&vh���9U����l&��\x��d+�0      w   F  x���KK1�ϻ�B<x��d��� h��L^�P�ҭ�~#�R�ބ��̗�L$ǀ�����/ف��ԁɈ�!o��>N�t��Tv�-����.�_'c���9��4~�����������l
���[�s}#�ay�ژI�rlF���FB��-�͊luXM���ݼ�|L�����?	���N"��	GBh�R9[��;�_�;�,�5�aD[w�H'K�)7W/O��w׏x��Sr�H��@%Z�2�R"%����F�9D� ��:a5`�db1\R�p}��9���cހ��CRP?�O�PB&-��Ag�m�~8e�$      R   �   x���?�0�9�.I��%��.�M� �E���B���x��' rǠ�5��:�QE����GA��4�%_�M����}�_|�����t3�˔�$aR�Q^�I�結�P�I^k��z�q[�      S   �   x��Ͻ
�@�9}
_�r�K�u�"..��R?{�}}ۛ��T��$��a%��fG�V���E�(�_KAB��m�u�d:�6(H�_�AYC֠���l�.���̀�c���\E����O���s��=�X�ً���p!Ҳz����ѓ�����S.Gb$�C��uٸ�o�o󚁤.Z���!0>��/��A| j�i�      T   }   x�34�4�N-*�L��N,Qp�4202�50�52�K�K�/�Z��I��d���Ē�x���dK�4�����ĒҢ�xC���t.CST���&Z�L�@Mv"l���y�9�d#��1z\\\ N5C      U   6   x�340�4�4����S02�240�M9��=|����R\R�b���� �
�      V   %   x�3��4�4�4�0 2�8��,�cN#�=... G^$      W   a   x�3��Qp�420��50"(�H�Ȃ3<5I!�(?�(177���i�en ��Un��i�kh��Z�]�_��;���$5W�1/1��8��hF� {#      X   �   x�-̹�@ ��W��5��(R�������bs�|��oz"�_�����/}�K_�җ���/}�+_��W��|�+_��׾���}�k_��׾�o|����7��o}�[��ַ���o}�{|��9��N3      Y   �   x�}��
�0Eד���X�{ApQ�Bt�M���LH�ſ7����,�eΙ)�Р���Z.�>��w��ѷ�}�U��x�|P*�� |JS(������1��1��&�/_"S�
.�7;���L
k��(�����V6P�q��3�<�B�����2�i��؆i��?W焐/	�qG      Z   l   x�34���OL��K�4���CA9	.CSN����Ģ�TLU)0).#CN�Ҽ��"���,*c����9C�J�����7�'�gd��`Wc
�&,��85��=... @:�      [   F   x�3��/*QP60�)�ӵ�/��4���CF\�0EFx�p�%� U�)�Qh��X���GE� DI$�      \   H   x�3��J�N,*I�44�N.JM�+��/�O+�ύ720��50�54�74�55�52�+�K�4���CF\1z\\\ <��      ]   l   x�3�t�M���t��+)���4����D\�N�%�y��Ypz%f'�$Rh��TX�XDH��gpiQbRb%A39�Ss�	��4�?(��,L�X�>51z\\\ /�S�      ^   �   x�34�4����s�4�?2 P6qBT�i�*��*�3Rs��9�	(7*7��u�Gr�ehQ�K�bs�b�[B���� ��#؅�@��%E�ٙ�����ʏV24Q�Q24U��k�	Q���ꝋJSR�4a:JF� ���Ģ����l)�}1z\\\ ��t�      _   B  x�m�M��0���+洸P�$U�z�B��魗i�%��%5,����4 /�<��C�j{��*!�E/j>rx�Jt�Ρld�7���1B�!�BF�-S�Iidet�.�z�gƺ�Q�Q�=�Qle�<�ؠ�;(��6���n�h�41h��FbgOє0g6�+C�`�:5�C��RԪ�{	Z@�3��k#-���\@6��>J�0���P���F����w�ȋ�@�F~�-�_6)w~I�![�w��&/%F|�2��A�չ��*՟�8z6\��u��c�rf��zeq��kĞ�y��(qf�O��׹���������_���      `     x�u��n� ��U���v^ KIk����kBN#�t�Ə��-ے-!��{�C$ّ�|FOD��痢��/��vI�r��t�I��R�7TCY�4T��}2��Q]ٯ#m��m� ���z��mG����a���`���������bk\8��5=��z���8�8���0ഢ�p[��������s�F�r��<B�և����'���ʃ����u��+׃�����M����o$��z�
-ޝ����k@�u�R�w��I�n{��      a   �   x�}��j�@���S����m��P�В��f�e���î��wM�
�H��ӈ���,vpԆũO����K`����m�i�J�Vbݮ�Rmro@8��X����%*I5PV�nҳxt�/3x:������%D�cu�#T�-��7L_�_0%�	/Ӥ�A�K`q��J�/m��׉I��0A��禘���؇��1�I��*Te�!�?�b)�m�xγ,���Y�      b     x����n� ��~���tɱI�����[.���(f�(��p.U�I%�b}�����f,���8������Գ�Wλ�� ���rtN����>f��>e�n�H��y���"�f���W��%z���"۝1p�#w�BN�Y�y�e��GM�&R 2\M�o����'J|{�s�dףG��(�G,�=_����*����֞���PN�V�#b�]m,��:��V���*]e�����fƧ�寿�Y��	��|�[H�)�_�pW��'qR+�      h   <   x�3�v�2����	�2��}�L�o.SNc.3�`C.s�`#.�`c�=... 2�
      i   7   x�3�tI-�L�K-�2�(�O/J��r�92�K@܂�J.S����p� ��      j   @   x�3�IM���LN�Q��+.HM.�/R��2�.��e�C˄3�(?�W�M�KLO-����� T��      k     x�%��j�0�ϻO�cr)�����
!��z�e���R�l��]���������T\�;��UIG;��̕�	����dr�wt�O��S/~��ȇ���V�\��l4�c6f���U����Ҭ�h�;N�>S�9����H��i��]0"��+�z��}\`M�{�����
"<[C7��,k���0�Rq�B�\*����"e�[�������a�~�����s�����Z�C�xp���I�՗ ��4���(�>�� j3      l   j   x��0�)�s�I-*Q��/.��/��420��50"C++��	B̀3�qY�������Z�`lh���YR�Z���X�������s;LbX����� �*?      n   �   x���M�@�����}zSlQ'Q��l�TH��� ��i�yfx��,ѻZ��C���ŵ,�ŝq�bU�M?չF_���a��ḽ���LZI� pW$��昀�2 ����%R��b� >��9`��\�|$���K �1E���P�g6�鯄��̿A�l�x�.����k!�X���9=�      o   k   x�3�4�I-�JL�T(H�K.-�L�S��̫L�V04200P��Q Jf���$�%�*J�8m
�lRs�l�K������SҠ�F*f�R�_`��i�㇆�b���� ��'�      p   %   x�3�(M��L�4���CC\F�~�y
x��qqq ?R      q   N  x��R�N�0=O�"'n��
�8�tQՀ�T�L2N�8v��7KEQ%{���{3v1D0�Bo��n}:��w��h[���2U�V	�Y�D�����Ay�_�%�<<m�l>E��d�L1��P��� �(J<ia����
�.����~V
��'�w���n�2�U��YX��__|��O!y����������C����a�C�x���~2��cӸŞ�6+��O�
�3&��Xr��f�!\HL+����,�S4���ZV��otc5�R� ��.JfD��뜷,���n\�r��N�96���%�>4��-iO8�K8oz������      r   �  x��Zys�H����3;	.���m3��q�1x9v*;�r5�At�Բ�L��� q9Ǥv�R66�^_����ikŃw��K��s9�A�̉K܃zHǜy.�m�?����re����TMsӀ�s6�Z�8B>�����d��
�h��S�;��ܺ�V{��M����=���譏�'�P}�v��2���Aq_5����z^��'>R!�	�<�<��Z�b�A�}�W�J�B��,���Q�Z��+�r=��/���l���7a4��ބ���8lJBe�)������Ơ��|f/b�/X�6W@��@��$$� .�Q�Ƀ�bz�������[⎽��kĝ��'pEf$��>�	���\[Q��E��0M�T�D�z�)��I@����L��z*�-�Ź��󏏏���6E+9y��a�:#j��~>��*�t|+jf�V.+Z�R,U�R*Uʇ���e������b�Z;,�����rI���j�TT��Xb���W.�4U/�R�'ZAѐ��D_�>�\��q�VF��O��\� �9!�5�pi��FP�x��;,�d���1�V|А#M׫�T-	}<2�[B#���$�D��K� Hu�JTI#��=N"�����o��)�-�vK���xv��@=��l�Zq���d���I��M~��)�1��됬�1Y��pZԶww��N�Ap��8�-��3W�=�[�3r	�a��=��I�'��CbV�̙�}]���Ķ���q�aޏF6/>��8/	���,���|�1�%��ݡZ[�����4�9�&x�B�t'��,0&���RVi5ʢČ׭��f��V�ʭ����i����*�������6�>�w��nZ�F^�?��^�1��I1 o-��UM+��BQ��MGX�h�����̖�4˫?%�t���1.�}�����%j���ƥ���e����\�2��L
ZU���Z�M���@�{��;�ׂΰw�2:��~�\1�t��^%d��͞�o%�?�9o���m�J�R���(��(	�y/8�.p��4�ùѻ6{Pt���/Z��Es����6�m5��7{�la�6z4�R�ՍdeQל� �{ �`x.���ƯƎt��1(U�@�ms��^�nZ;BNm4<�i�R�|�96Z�3.����[���iw��U����Z�VZG�(Be���{��M�g z7� k�^k1�W}Ұ��$Q��V��Ȋ'�|6A�kZ���Z��Q/���`�{�P��7�x��~70z� �vZ�DG�3�r��l��BA�*�u�� $�F��4<a1�hu0�lE�^��y1 LZ�e�;��T�m����\¿6�<��|S���>�8�\`��^�����ԝΈ�Ή��Rj�9��~�:�w�/*��jB^:A�e�{�	��+��_�:ԉW���9@�%,-��-���,�m2?�(}�&��	0�.H~�웜䦥��f�1�M,�i��"8���/�-h�8L-�Ґ��St:Qq#&9(^�D0W+�y!u�8o��0p��N�Q�� �76�A�3�)\R�<�)�%(�m�)��la��ym������e�u [GJJ#�o2a@����Z�TV���.Q<&:�-8��3��p��2���m4h$��y�g2N�X.�DB��\.��Ds*�|4:�u�i���l�탊�� �߅n�}���8pF�Q<rFp�%֌���ʦ�w��Y4J&t�J8�H��G̤�������ɉ7�{$�2Br(D��"n�Ю��Bl�o��Js�"&-�`��Ωa�����z@ �)Pb�h2)�M�!��m�	�͕�������c6[(Bj�KE���X 8Y��F-/
Yb܉ I 2+7�s��g���p/`4�"fr�M6�1���G�⇐mch�[Yy�"��fY�)C����<Q)�V���Q�qR���eq��IB'�@���0r������q����Jx�D�W^����$ɌfN�lj����e �P���7��j&�6�l&e"�
D��j
[���q�||�K�q���Z\���y��v��������Dn|�e�	2G� ����>�y�|T>�#��<��[�qGv9R,������,����l�|&h�	ɡ�6������3�zt�� ���d
?�;���0㹢o���?�a3G�/�&�C�ǆ@��;�H\GJh3�6���&׫��꩏�,r�Lx��i+�ѕ�ItŃhSU ���Fȡ��"~C(����o��1��n��Eс��9ԋxf�s�������^���Q�!�����"�n��9���s3q�~x�U���Y؄��_����u�օ�W_��nNFX�$u�(���{I_�J0K��O�[p>��y�L�Hn�W��������9�"�ئ&�X.�OE��W��j��IK� Ɋ��R[Xl�^J�>��ZQ��S�,���c��y)Ӣ��#wd����3�_���(�hl�&G�f"��	��OI�L�
ʣ���/�X�`B߻�ɂ���g����q:Pȗ�1��w�[N��@S�, �^��t�O�]!�E~���\$�}�i<9|�ń�����J"��Er���C2X��'�7���ɮ�Ok��W̐�9��$�8d�cJ2��0_c�5Y��A��>ÂN�e��x���Q+C�.(�9A1��$n�Y2�/��~�eO	�ޜJ��q�{���s���w<�	vD�#�:>�'	/5C�R�مZ܈>)������.�Ǒ����Gƭ{���J2­�r'+S٣���[p�A�� #�G��z�uHMC����yϋN|<ɚ��x(��������^�mv�,�M��ܷ:o��]z�|�#f���Nu/P%�����
��v�hܿm��bě��뵣M���M�a�"Jw�+#X�|Q]�\k���%Q�T=�`Y�l�^�)�^���ǅ�      s   %   x�3�(�O��IU��LI-�4���CG�\1z\\\ 2      t   �  x��V�j1}��B�$`�^_℺���J��%`0��xW�V+tq(��;^_��I/yX�z%4:ҜsV��֫�ޟ]}��<�b?��e���Թ`�=����\OG����r�6t��:]����O��9ۿF����󌙡$h6G+�B�FPK�alYk��8��`3
�h��Mdm
�RO	��� ilf&�J�
����J
-������n�@%�خ��yPE3���kP�Af��K(�EJJ�`)'�v�6h$����B�,a�ϛ�Q��s���*;P�A�⾀����Kq��3-��=�c=�b����P�!k�"I=~o�A��|�(fT_��F��]�)2�m�#Y��LR�j>ԣ��x�)5Yde�S2k�����Ɛ?�D|9�$���tE8�[[��^a&�E�`68��
�$;u��C�kO@�d�hk�ILD��w�I�)�UM���ݩ1���t�ѠEͨ;?iM��I?"�0��F(izTi��5�״�Ѵ�*M��+(/8`�t��{I������Yt�
�o
�7[��y��`q~C�p�5��qnip�F$/L�:�����纻�[}?����״�ѴSݴ��ֿ�i��e����GUx׽��\�C��vU�q蝔��d��IU �����3����`���a�^�{?`      u   C   x�3����,���4���CC\Ɯ�yi�X�L8�Rˋ�J�r:��%'�%b�5�H���)�*���� �@#<      v   #   x�3���4��Dc�34��!���� U(�      F      x������ � �      H      x�34����� �      J      x������ � �      c   �   x�ŏ�
�PE�ǯ��}��N{��I� od�f��M�T͂����$D@P>��hM�)��a�'�0ݹG�.�2}fH <��O�	qEJp���=���_W�iU^j�4��LZ��t�o7Y:#M����Hwˋ���yY���$	e������{S�����<��/T�we~���C9Q����=ϻOţw      d      x������ � �      e      x������ � �      f      x������ � �      g   �   x�e��
�0Dϛ�X�ЄM�I�\DAPo^D�mł�o�Zf��0`HIZ�E�ɺ���,���"m,;߆�o ���qF�l����P�O��<��BV�4Kb��\�4�q����2�G�N�悆Q�d}b��s�������)RW#qUB�/�+�      m      x������ � �     